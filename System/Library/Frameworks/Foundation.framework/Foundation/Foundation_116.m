void (*URLComponents.percentEncodedPath.modify(uint64_t *a1))(unint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v6 = v1[14];
  v4[5] = v6;
  if (v6)
  {
    v7 = v1[13];
    v8 = v6;
  }

  else if (*(v1 + 14) != 1 || v5 == 0)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    if (*(v5 + 168))
    {
      v10 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v10 = String.subscript.getter();
    }

    v7 = MEMORY[0x1865CAE80](v10);
    v8 = v11;
  }

  *v4 = v7;
  v4[1] = v8;

  return URLComponents.percentEncodedPath.modify;
}

void URLComponents.percentEncodedPath.modify(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = **a1;
  v5 = (*a1)[1];
  *(v3 + 8) = 0;
  *(v3 + 14) = 0;
  if ((a2 & 1) == 0)
  {
    if ((v5 & 0x1000000000000000) != 0)
    {
      v2[2] = v4;
      v2[3] = v5;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v18 = String._bridgeToObjectiveCImpl()();

      v19 = [v18 _fastCharacterContents];
      v20 = v18;
      if (v19)
      {
        v2[2] = v4;
        v2[3] = v5;
        StringProtocol._ephemeralString.getter();
        v21 = String._bridgeToObjectiveCImpl()();

        v22 = [v21 length];
        swift_unknownObjectRelease();
        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v19, v22, 0x10u, 1))
        {
          goto LABEL_30;
        }
      }

      else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v4, v5, 0x10u, 1) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(v5) & 0xF;
        v2[2] = v4;
        v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
        v8 = v2 + 2;
      }

      else if ((v4 & 0x1000000000000000) != 0)
      {
        v8 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v9 = v4 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = _StringObject.sharedUTF8.getter();
      }

      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v8, v9, 0x10u, 1))
      {
        goto LABEL_30;
      }
    }

    v12 = v2[4];

    *(v12 + 104) = v4;
    *(v12 + 112) = v5;
    goto LABEL_16;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v5) & 0xF;
      v2[2] = v4;
      v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
      v6 = v2 + 2;
    }

    else if ((v4 & 0x1000000000000000) != 0)
    {
      v6 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = _StringObject.sharedUTF8.getter();
    }

    v10 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v6, v7, 0x10u, 1);

    if (v10)
    {
      goto LABEL_12;
    }

LABEL_30:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v2[2] = v4;
  v2[3] = v5;
  lazy protocol witness table accessor for type String and conformance String();

  StringProtocol._ephemeralString.getter();
  v13 = String._bridgeToObjectiveCImpl()();

  v14 = [v13 _fastCharacterContents];
  v15 = v13;
  if (v14)
  {
    v2[2] = v4;
    v2[3] = v5;
    StringProtocol._ephemeralString.getter();
    v16 = String._bridgeToObjectiveCImpl()();

    v17 = [v16 length];
    swift_unknownObjectRelease();
    if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v14, v17, 0x10u, 1))
    {
      goto LABEL_30;
    }
  }

  else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v4, v5, 0x10u, 1) & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  v11 = v2[4];

  *(v11 + 104) = v4;
  *(v11 + 112) = v5;

LABEL_16:

  free(v2);
}

void (*URLComponents.percentEncodedQuery.modify(uint64_t *a1))(unint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v6 = *(v1 + 15);
  v8 = v1[15];
  v7 = v1[16];
  v4[5] = v7;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v7;
  if (!v7 && (v6 & 1) != 0)
  {
    if (v5 && (*(v5 + 192) & 1) == 0)
    {
      v11 = String.subscript.getter();
      v9 = MEMORY[0x1865CAE80](v11);
      v10 = v12;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  *v4 = v9;
  v4[1] = v10;

  return URLComponents.percentEncodedQuery.modify;
}

void URLComponents.percentEncodedQuery.modify(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = **a1;
  v5 = (*a1)[1];
  *(v3 + 8) = 0;
  *(v3 + 15) = 0;
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v2[2] = v4;
        v2[3] = v5;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol._ephemeralString.getter();
        v18 = String._bridgeToObjectiveCImpl()();

        v19 = [v18 _fastCharacterContents];
        v20 = v18;
        if (v19)
        {
          v2[2] = v4;
          v2[3] = v5;
          StringProtocol._ephemeralString.getter();
          v21 = String._bridgeToObjectiveCImpl()();

          v22 = [v21 length];
          swift_unknownObjectRelease();
          if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v19, v22, 0x40u, 1))
          {
            goto LABEL_32;
          }
        }

        else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v4, v5, 0x40u, 1) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v9 = HIBYTE(v5) & 0xF;
          v2[2] = v4;
          v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
          v8 = v2 + 2;
        }

        else if ((v4 & 0x1000000000000000) != 0)
        {
          v8 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v9 = v4 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = _StringObject.sharedUTF8.getter();
        }

        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v8, v9, 0x40u, 1))
        {
          goto LABEL_32;
        }
      }
    }

    v12 = v2[4];

    *(v12 + 120) = v4;
    *(v12 + 128) = v5;
    goto LABEL_18;
  }

  if (v5)
  {
    if ((v5 & 0x1000000000000000) == 0)
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v5) & 0xF;
        v2[2] = v4;
        v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
        v6 = v2 + 2;
      }

      else if ((v4 & 0x1000000000000000) != 0)
      {
        v6 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = v4 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v6 = _StringObject.sharedUTF8.getter();
      }

      v10 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v6, v7, 0x40u, 1);

      if (v10)
      {
        goto LABEL_14;
      }

LABEL_32:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v2[2] = v4;
    v2[3] = v5;
    lazy protocol witness table accessor for type String and conformance String();

    StringProtocol._ephemeralString.getter();
    v13 = String._bridgeToObjectiveCImpl()();

    v14 = [v13 _fastCharacterContents];
    v15 = v13;
    if (v14)
    {
      v2[2] = v4;
      v2[3] = v5;
      StringProtocol._ephemeralString.getter();
      v16 = String._bridgeToObjectiveCImpl()();

      v17 = [v16 length];
      swift_unknownObjectRelease();
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v14, v17, 0x40u, 1))
      {
        goto LABEL_32;
      }
    }

    else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v4, v5, 0x40u, 1) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_14:
  v11 = v2[4];

  *(v11 + 120) = v4;
  *(v11 + 128) = v5;

LABEL_18:

  free(v2);
}

uint64_t URLComponents.percentEncodedFragment.getter()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v2 = 0;
  }

  if (!v1 && (*(v0 + 16) & 1) != 0)
  {
    if (*v0 && (*(*v0 + 216) & 1) == 0)
    {
      v3 = String.subscript.getter();
      v2 = MEMORY[0x1865CAE80](v3);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t URLComponents.percentEncodedFragment.setter(unint64_t a1, unint64_t a2)
{
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  if (!a2)
  {
LABEL_8:

    *(v2 + 136) = a1;
    *(v2 + 144) = a2;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = v2;
    v15 = a1;
    v16 = a2;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v9 = String._bridgeToObjectiveCImpl()();

    v10 = [v9 _fastCharacterContents];
    v11 = v9;
    if (v10)
    {
      v15 = a1;
      v16 = a2;
      StringProtocol._ephemeralString.getter();
      v12 = String._bridgeToObjectiveCImpl()();

      v13 = [v12 length];
      swift_unknownObjectRelease();
      v14 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v10, v13, 0x40u, 1);
    }

    else
    {
      v14 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(a1, a2, 0x40u, 1);
    }

    v2 = v8;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a2) & 0xF;
      v15 = a1;
      v16 = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = &v15;
    }

    else if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = _StringObject.sharedUTF8.getter();
    }

    if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v5, v6, 0x40u, 1))
    {
      goto LABEL_8;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*URLComponents.percentEncodedFragment.modify(uint64_t *a1))(unint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v6 = *(v1 + 16);
  v8 = v1[17];
  v7 = v1[18];
  v4[5] = v7;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v7;
  if (!v7 && (v6 & 1) != 0)
  {
    if (v5 && (*(v5 + 216) & 1) == 0)
    {
      v11 = String.subscript.getter();
      v9 = MEMORY[0x1865CAE80](v11);
      v10 = v12;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  *v4 = v9;
  v4[1] = v10;

  return URLComponents.percentEncodedFragment.modify;
}

void URLComponents.percentEncodedFragment.modify(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = **a1;
  v5 = (*a1)[1];
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v2[2] = v4;
        v2[3] = v5;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol._ephemeralString.getter();
        v18 = String._bridgeToObjectiveCImpl()();

        v19 = [v18 _fastCharacterContents];
        v20 = v18;
        if (v19)
        {
          v2[2] = v4;
          v2[3] = v5;
          StringProtocol._ephemeralString.getter();
          v21 = String._bridgeToObjectiveCImpl()();

          v22 = [v21 length];
          swift_unknownObjectRelease();
          if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v19, v22, 0x40u, 1))
          {
            goto LABEL_32;
          }
        }

        else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v4, v5, 0x40u, 1) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v9 = HIBYTE(v5) & 0xF;
          v2[2] = v4;
          v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
          v8 = v2 + 2;
        }

        else if ((v4 & 0x1000000000000000) != 0)
        {
          v8 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v9 = v4 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = _StringObject.sharedUTF8.getter();
        }

        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v8, v9, 0x40u, 1))
        {
          goto LABEL_32;
        }
      }
    }

    v12 = v2[4];

    *(v12 + 136) = v4;
    *(v12 + 144) = v5;
    goto LABEL_18;
  }

  if (v5)
  {
    if ((v5 & 0x1000000000000000) == 0)
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v5) & 0xF;
        v2[2] = v4;
        v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
        v6 = v2 + 2;
      }

      else if ((v4 & 0x1000000000000000) != 0)
      {
        v6 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = v4 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v6 = _StringObject.sharedUTF8.getter();
      }

      v10 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v6, v7, 0x40u, 1);

      if (v10)
      {
        goto LABEL_14;
      }

LABEL_32:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v2[2] = v4;
    v2[3] = v5;
    lazy protocol witness table accessor for type String and conformance String();

    StringProtocol._ephemeralString.getter();
    v13 = String._bridgeToObjectiveCImpl()();

    v14 = [v13 _fastCharacterContents];
    v15 = v13;
    if (v14)
    {
      v2[2] = v4;
      v2[3] = v5;
      StringProtocol._ephemeralString.getter();
      v16 = String._bridgeToObjectiveCImpl()();

      v17 = [v16 length];
      swift_unknownObjectRelease();
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v14, v17, 0x40u, 1))
      {
        goto LABEL_32;
      }
    }

    else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v4, v5, 0x40u, 1) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_14:
  v11 = v2[4];

  *(v11 + 136) = v4;
  *(v11 + 144) = v5;

LABEL_18:

  free(v2);
}

uint64_t URLComponents.rangeOfScheme.getter()
{
  if (*v0)
  {
    if (v0[1])
    {
      return *(*v0 + 32);
    }
  }

  else if (v0[1])
  {
    return 0;
  }

  v2 = URLComponents._URLComponents.computedString.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v2, v3, 1, 0);

  result = v4;
  if (v4)
  {
    v5 = *(v4 + 32);

    return v5;
  }

  return result;
}

uint64_t URLComponents.rangeOfUser.getter()
{
  if (*v0)
  {
    if (v0[1])
    {
      return *(*v0 + 56);
    }
  }

  else if (v0[1])
  {
    return 0;
  }

  v2 = URLComponents._URLComponents.computedString.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v2, v3, 1, 0);

  result = v4;
  if (v4)
  {
    v5 = *(v4 + 56);

    return v5;
  }

  return result;
}

uint64_t URLComponents.rangeOfPassword.getter()
{
  if (*v0)
  {
    if (v0[1])
    {
      return *(*v0 + 80);
    }
  }

  else if (v0[1])
  {
    return 0;
  }

  v2 = URLComponents._URLComponents.computedString.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v2, v3, 1, 0);

  result = v4;
  if (v4)
  {
    v5 = *(v4 + 80);

    return v5;
  }

  return result;
}

uint64_t URLComponents.rangeOfHost.getter()
{
  if (*v0)
  {
    if (v0[1])
    {
      return *(*v0 + 104);
    }
  }

  else if (v0[1])
  {
    return 0;
  }

  v2 = URLComponents._URLComponents.computedString.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v2, v3, 1, 0);

  result = v4;
  if (v4)
  {
    v5 = *(v4 + 104);

    return v5;
  }

  return result;
}

uint64_t URLComponents.rangeOfPort.getter()
{
  if (*v0)
  {
    if (v0[1])
    {
      return *(*v0 + 128);
    }
  }

  else if (v0[1])
  {
    return 0;
  }

  v2 = URLComponents._URLComponents.computedString.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v2, v3, 1, 0);

  result = v4;
  if (v4)
  {
    v5 = *(v4 + 128);

    return v5;
  }

  return result;
}

uint64_t URLComponents.rangeOfPath.getter()
{
  if (*v0)
  {
    if (v0[1])
    {
      return *(*v0 + 152);
    }
  }

  else if (v0[1])
  {
    return 0;
  }

  v2 = URLComponents._URLComponents.computedString.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v2, v3, 1, 0);

  result = v4;
  if (v4)
  {
    v5 = *(v4 + 152);

    return v5;
  }

  return result;
}

uint64_t URLComponents.rangeOfQuery.getter()
{
  if (*v0)
  {
    if (v0[1])
    {
      return *(*v0 + 176);
    }
  }

  else if (v0[1])
  {
    return 0;
  }

  v2 = URLComponents._URLComponents.computedString.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v2, v3, 1, 0);

  result = v4;
  if (v4)
  {
    v5 = *(v4 + 176);

    return v5;
  }

  return result;
}

uint64_t URLComponents.rangeOfFragment.getter()
{
  if (*v0)
  {
    if (v0[1])
    {
      return *(*v0 + 200);
    }
  }

  else if (v0[1])
  {
    return 0;
  }

  v2 = URLComponents._URLComponents.computedString.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v2, v3, 1, 0);

  result = v4;
  if (v4)
  {
    v5 = *(v4 + 200);

    return v5;
  }

  return result;
}

uint64_t URLComponents.percentEncodedQueryItems.setter(uint64_t a1)
{
  *(v1 + 8) = 0;
  *(v1 + 15) = 0;
  if (!a1)
  {

    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
    return result;
  }

  v2 = a1;
  v3 = *(a1 + 16);
  if (!v3)
  {

    *(v1 + 120) = xmmword_1812476D0;
    return result;
  }

  v76 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = 0;
  v5 = v76;
  v69 = v2 + 32;
  v70 = v3;
  v71 = v2;
LABEL_4:
  if (v4 >= *(v2 + 16))
  {
    __break(1u);
    goto LABEL_188;
  }

  v6 = (v69 + 32 * v4);
  v8 = *v6;
  v7 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  if ((v7 & 0x1000000000000000) == 0)
  {
    if ((v7 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v7) & 0xF;
      v74 = v8;
      v75 = v7 & 0xFFFFFFFFFFFFFFLL;
      if (!v20)
      {
LABEL_107:
        v28 = 1;
        goto LABEL_108;
      }

      v21 = 0;
      v22 = &v74;
      while (2)
      {
        if (*v22 < 0)
        {
LABEL_70:
          v28 = 0;
          goto LABEL_108;
        }

        v23 = *v22;
        if ((v23 - 39) < 9)
        {
          goto LABEL_46;
        }

        if (*v22 > 0x24u)
        {
          if (v23 != 37)
          {
            if (v23 == 38)
            {
              goto LABEL_70;
            }

            goto LABEL_62;
          }

          if (v21)
          {
            goto LABEL_70;
          }

          v21 = 2;
        }

        else
        {
          if (v23 == 33 || v23 == 36)
          {
            goto LABEL_46;
          }

LABEL_62:
          v27 = v23 - 58;
          if ((v23 - 58) <= 0xFFFFFFF5)
          {
            if (v27 <= 6)
            {
              if (((1 << v27) & 0x63) != 0)
              {
                goto LABEL_46;
              }

              if (v23 == 61)
              {
                goto LABEL_70;
              }
            }

            if (v23 != 95 && (v23 - 65) >= 0x1A && v23 != 126 && (v23 - 97) >= 0x1A)
            {
              goto LABEL_70;
            }
          }

LABEL_46:
          v15 = v21-- < 1;
          if (v15)
          {
            v21 = 0;
          }

          else if ((v23 - 58) <= 0xFFFFFFF5)
          {
            v24 = v23 - 65;
            v15 = v24 > 0x25;
            v25 = (1 << v24) & 0x3F0000003FLL;
            if (v15 || v25 == 0)
            {
              goto LABEL_70;
            }
          }
        }

        ++v22;
        if (!--v20)
        {
          v29 = v21 == 0;
          goto LABEL_73;
        }

        continue;
      }
    }

    if ((v8 & 0x1000000000000000) != 0)
    {
      v11 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v12 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = _StringObject.sharedUTF8.getter();
      if (!v11)
      {
        goto LABEL_107;
      }
    }

    if (!v12)
    {
      goto LABEL_107;
    }

    v13 = 0;
    while (1)
    {
      if (*v11 < 0)
      {
LABEL_190:

        goto LABEL_191;
      }

      v14 = *v11;
      if ((v14 - 39) < 9)
      {
        goto LABEL_15;
      }

      if (*v11 <= 0x24u)
      {
        break;
      }

      if (v14 != 37)
      {
        if (v14 == 38)
        {
          goto LABEL_190;
        }

LABEL_31:
        v19 = v14 - 58;
        if ((v14 - 58) <= 0xFFFFFFF5)
        {
          if (v19 > 6)
          {
LABEL_35:
            if (v14 != 95 && (v14 - 65) >= 0x1A && v14 != 126 && (v14 - 97) >= 0x1A)
            {
              goto LABEL_190;
            }
          }

          else if (((1 << v19) & 0x63) == 0)
          {
            if (v14 == 61)
            {
              goto LABEL_190;
            }

            goto LABEL_35;
          }
        }

LABEL_15:
        v15 = v13-- < 1;
        if (v15)
        {
          v13 = 0;
        }

        else if ((v14 - 58) <= 0xFFFFFFF5)
        {
          v16 = v14 - 65;
          v15 = v16 > 0x25;
          v17 = (1 << v16) & 0x3F0000003FLL;
          if (v15 || v17 == 0)
          {
            goto LABEL_190;
          }
        }

        goto LABEL_12;
      }

      if (v13)
      {
        goto LABEL_190;
      }

      v13 = 2;
LABEL_12:
      ++v11;
      if (!--v12)
      {
        v29 = v13 == 0;
LABEL_73:
        v28 = v29;
LABEL_108:

        if ((v28 & 1) == 0)
        {
          goto LABEL_191;
        }

LABEL_109:
        v74 = v8;
        v75 = v7;
        if (!v9)
        {

          goto LABEL_179;
        }

        if ((v9 & 0x1000000000000000) != 0)
        {
          v72 = v10;
          v73 = v9;
          lazy protocol witness table accessor for type String and conformance String();

          StringProtocol._ephemeralString.getter();
          v55 = String._bridgeToObjectiveCImpl()();

          v56 = [v55 _fastCharacterContents];
          v57 = v55;
          if (v56)
          {
            v72 = v10;
            v73 = v9;
            StringProtocol._ephemeralString.getter();
            v58 = String._bridgeToObjectiveCImpl()();

            v59 = [v58 length];
            swift_unknownObjectRelease();
            if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v56, v59, 0x40u, 1))
            {
              goto LABEL_178;
            }
          }

          else if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v10, v9, 0x40u, 1))
          {
            goto LABEL_178;
          }

LABEL_189:

          swift_bridgeObjectRelease_n();
          goto LABEL_192;
        }

        if ((v9 & 0x2000000000000000) == 0)
        {
          if ((v10 & 0x1000000000000000) != 0)
          {
            v40 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v41 = v10 & 0xFFFFFFFFFFFFLL;
            goto LABEL_114;
          }

          v40 = _StringObject.sharedUTF8.getter();
          if (!v40)
          {
LABEL_177:

            goto LABEL_178;
          }

LABEL_114:
          if (!v41)
          {
            goto LABEL_177;
          }

          if ((*v40 & 0x80000000) == 0)
          {
            v42 = 0;
            v43 = *v40;
            v44 = v40 + 1;
            v45 = v41 - 1;
            while (1)
            {
              if ((v43 - 38) < 0xA || v43 == 33 || v43 == 36)
              {
                goto LABEL_121;
              }

              if (v43 != 37)
              {
                break;
              }

              if (v42 || !v45)
              {
                goto LABEL_188;
              }

              v42 = 2;
LABEL_119:
              v46 = *v44++;
              v43 = v46;
              --v45;
              if (v46 < 0)
              {
                goto LABEL_188;
              }
            }

            v48 = v43 - 58;
            if ((v43 - 58) <= 0xFFFFFFF5 && (v48 > 6 || ((1 << v48) & 0x6B) == 0) && v43 != 95 && (v43 - 65) >= 0x1A && v43 != 126 && (v43 - 97) >= 0x1A)
            {
              goto LABEL_188;
            }

LABEL_121:
            v15 = v42-- < 1;
            if (v15)
            {
              v42 = 0;
            }

            else if ((v43 - 58) <= 0xFFFFFFF5)
            {
              v47 = v43 - 65;
              if (v47 > 0x25 || ((1 << v47) & 0x3F0000003FLL) == 0)
              {
                goto LABEL_188;
              }
            }

            if (!v45)
            {
              goto LABEL_167;
            }

            goto LABEL_119;
          }

LABEL_188:

          goto LABEL_189;
        }

        v49 = HIBYTE(v9) & 0xF;
        v72 = v10;
        v73 = v9 & 0xFFFFFFFFFFFFFFLL;
        if (!v49)
        {
          goto LABEL_177;
        }

        if (v72 < 0)
        {
          goto LABEL_188;
        }

        v42 = 0;
        v50 = v72;
        v51 = 1;
        while (2)
        {
          if ((v50 - 38) >= 0xA && v50 != 33 && v50 != 36)
          {
            if (v50 == 37)
            {
              if (v42 || v49 == v51)
              {
                goto LABEL_188;
              }

              v42 = 2;
              goto LABEL_146;
            }

            v54 = v50 - 58;
            if ((v50 - 58) <= 0xFFFFFFF5 && (v54 > 6 || ((1 << v54) & 0x6B) == 0) && v50 != 95 && (v50 - 65) >= 0x1A && v50 != 126 && (v50 - 97) >= 0x1A)
            {
              goto LABEL_188;
            }
          }

          v15 = v42-- < 1;
          if (v15)
          {
            v42 = 0;
          }

          else if ((v50 - 58) <= 0xFFFFFFF5)
          {
            v53 = v50 - 65;
            if (v53 > 0x25 || ((1 << v53) & 0x3F0000003FLL) == 0)
            {
              goto LABEL_188;
            }
          }

          if (v49 != v51)
          {
LABEL_146:
            v52 = *(&v72 + v51);
            v50 = *(&v72 + v51++);
            if (v52 < 0)
            {
              goto LABEL_188;
            }

            continue;
          }

          break;
        }

LABEL_167:

        if (v42)
        {
          goto LABEL_189;
        }

LABEL_178:
        v72 = 61;
        v73 = 0xE100000000000000;
        MEMORY[0x1865CB0E0](v10, v9);
        MEMORY[0x1865CB0E0](v72, v73);

        v8 = v74;
        v7 = v75;
LABEL_179:
        v76 = v5;
        v61 = *(v5 + 16);
        v60 = *(v5 + 24);
        if (v61 >= v60 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
          v5 = v76;
        }

        ++v4;
        *(v5 + 16) = v61 + 1;
        v62 = v5 + 16 * v61;
        *(v62 + 32) = v8;
        *(v62 + 40) = v7;
        v2 = v71;
        if (v4 == v70)
        {
          v74 = v5;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
          v63 = BidirectionalCollection<>.joined(separator:)();
          v65 = v64;

          *(v68 + 120) = v63;
          *(v68 + 128) = v65;
          return result;
        }

        goto LABEL_4;
      }
    }

    if (v14 != 33 && v14 != 36)
    {
      goto LABEL_31;
    }

    goto LABEL_15;
  }

  v74 = *v6;
  v75 = v7;
  lazy protocol witness table accessor for type String and conformance String();

  StringProtocol._ephemeralString.getter();
  v30 = String._bridgeToObjectiveCImpl()();

  v31 = [v30 _fastCharacterContents];
  v32 = v30;
  if (v31)
  {
    v67 = v31;
    v74 = v8;
    v75 = v7;
    StringProtocol._ephemeralString.getter();
    v33 = String._bridgeToObjectiveCImpl()();

    v34 = [v33 length];
    swift_unknownObjectRelease();
    if (!v34)
    {
      goto LABEL_109;
    }

    v35 = *v67;
    if (v35 > 0x7F)
    {
      goto LABEL_191;
    }

    v36 = 0;
    v37 = v67 + 1;
    v38 = 2 * v34 - 2;
    while (2)
    {
      if (v35 == 37)
      {
        if (v36 || !v38)
        {
          goto LABEL_191;
        }

        v36 = 2;
LABEL_82:
        v39 = *v37++;
        LOWORD(v35) = v39;
        v38 -= 2;
        if (v39 >= 0x80)
        {
          goto LABEL_191;
        }

        continue;
      }

      break;
    }

    if (v35 - 39 >= 9 && v35 != 33 && v35 != 36)
    {
      if (v35 == 38)
      {
        goto LABEL_191;
      }

      if ((v35 - 58) <= 0xF5u)
      {
        if (v35 - 58 > 6)
        {
LABEL_101:
          if (v35 != 95 && (v35 - 65) >= 0x1Au && v35 != 126 && (v35 - 97) >= 0x1Au)
          {
            goto LABEL_191;
          }
        }

        else if (((1 << (v35 - 58)) & 0x63) == 0)
        {
          if (v35 == 61)
          {
            goto LABEL_191;
          }

          goto LABEL_101;
        }
      }
    }

    v15 = v36-- < 1;
    if (v15)
    {
      v36 = 0;
    }

    else if ((v35 - 58) <= 0xF5u && (v35 - 71) <= 0xF9u && (v35 <= 0x60u || v35 >= 0x67u))
    {
      goto LABEL_191;
    }

    if (!v38)
    {
      if (!v36)
      {
        goto LABEL_109;
      }

      goto LABEL_191;
    }

    goto LABEL_82;
  }

  if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v8, v7, 0x80u, 1))
  {
    goto LABEL_109;
  }

LABEL_191:

LABEL_192:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*URLComponents.percentEncodedQueryItems.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xD0uLL);
  }

  *a1 = v3;
  *(v3 + 200) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[5];
  *(v3 + 64) = v1[4];
  *(v3 + 80) = v7;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  *(v3 + 138) = *(v1 + 138);
  *(v3 + 112) = v9;
  *(v3 + 128) = v10;
  *(v3 + 96) = v8;
  *(v3 + 160) = *(v1 + 120);
  *(v3 + 192) = URLComponents._URLComponents.queryItems(percentEncoded:)(1);
  return URLComponents.percentEncodedQueryItems.modify;
}

void URLComponents.percentEncodedQueryItems.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 192);
  v4 = *(*a1 + 200);
  *(v4 + 8) = 0;
  *(v4 + 15) = 0;
  v108 = v3;
  v104 = v2;
  if ((a2 & 1) == 0)
  {
    if (!v3)
    {
      v98 = v2[25];
      outlined destroy of TermOfAddress?((v2 + 20), &_sSSSgMd);
      *(v98 + 120) = 0;
      *(v98 + 128) = 0;
      goto LABEL_210;
    }

    v48 = *(v3 + 16);
    if (!v48)
    {
      v100 = v2[25];

      outlined destroy of TermOfAddress?((v2 + 20), &_sSSSgMd);
      *(v100 + 120) = xmmword_1812476D0;
      goto LABEL_210;
    }

    v110 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 0);
    v49 = 0;
    v107 = v3 + 32;
    v105 = v48;
LABEL_107:
    if (v49 >= *(v3 + 16))
    {
      goto LABEL_213;
    }

    v50 = (v107 + 32 * v49);
    v52 = *v50;
    v51 = v50[1];
    v54 = v50[2];
    v53 = v50[3];
    if ((v51 & 0x1000000000000000) != 0)
    {
      v2[22] = v52;
      v2[23] = v51;
      lazy protocol witness table accessor for type String and conformance String();

      StringProtocol._ephemeralString.getter();
      v73 = String._bridgeToObjectiveCImpl()();

      v74 = [v73 _fastCharacterContents];
      v75 = v73;
      if (v74)
      {
        v2[22] = v52;
        v2[23] = v51;
        v102 = v74;
        StringProtocol._ephemeralString.getter();
        v76 = String._bridgeToObjectiveCImpl()();

        v77 = [v76 length];
        swift_unknownObjectRelease();
        if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v102, v77, 0x80u, 1))
        {
          goto LABEL_185;
        }
      }

      else if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v52, v51, 0x80u, 1))
      {
        goto LABEL_185;
      }

      goto LABEL_215;
    }

    if ((v51 & 0x2000000000000000) == 0)
    {
      if ((v52 & 0x1000000000000000) != 0)
      {
        v55 = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v56 = v52 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = _StringObject.sharedUTF8.getter();
        if (!v55)
        {
          goto LABEL_183;
        }
      }

      if (v56)
      {
        v57 = 0;
        while (1)
        {
          if (*v55 < 0)
          {
            goto LABEL_214;
          }

          v58 = *v55;
          if ((v58 - 39) < 9)
          {
            goto LABEL_118;
          }

          if (*v55 <= 0x24u)
          {
            break;
          }

          if (v58 != 37)
          {
            if (v58 == 38)
            {
              goto LABEL_214;
            }

LABEL_134:
            v62 = v58 - 58;
            if ((v58 - 58) <= 0xFFFFFFF5)
            {
              if (v62 > 6)
              {
LABEL_138:
                if (v58 != 95 && (v58 - 65) >= 0x1A && v58 != 126 && (v58 - 97) >= 0x1A)
                {
                  goto LABEL_214;
                }
              }

              else if (((1 << v62) & 0x63) == 0)
              {
                if (v58 == 61)
                {
                  goto LABEL_214;
                }

                goto LABEL_138;
              }
            }

LABEL_118:
            v17 = v57-- < 1;
            if (v17)
            {
              v57 = 0;
            }

            else if ((v58 - 58) <= 0xFFFFFFF5)
            {
              v59 = v58 - 65;
              v17 = v59 > 0x25;
              v60 = (1 << v59) & 0x3F0000003FLL;
              if (v17 || v60 == 0)
              {
                goto LABEL_214;
              }
            }

            goto LABEL_115;
          }

          if (v57)
          {
            goto LABEL_214;
          }

          v57 = 2;
LABEL_115:
          ++v55;
          if (!--v56)
          {
            v72 = v57 == 0;
LABEL_176:
            v71 = v72;
LABEL_184:

            if (v71)
            {
LABEL_185:
              if (v53)
              {
                if ((v53 & 0x1000000000000000) != 0)
                {
                  v2[22] = v54;
                  v2[23] = v53;
                  lazy protocol witness table accessor for type String and conformance String();

                  StringProtocol._ephemeralString.getter();
                  v84 = String._bridgeToObjectiveCImpl()();

                  v85 = [v84 _fastCharacterContents];
                  v86 = v84;
                  if (v85)
                  {
                    v2[22] = v54;
                    v2[23] = v53;
                    v103 = v85;
                    StringProtocol._ephemeralString.getter();
                    v87 = String._bridgeToObjectiveCImpl()();

                    v88 = [v87 length];
                    swift_unknownObjectRelease();
                    if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v103, v88, 0x40u, 1))
                    {
                      goto LABEL_205;
                    }
                  }

                  else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v54, v53, 0x40u, 1) & 1) == 0)
                  {
                    goto LABEL_205;
                  }
                }

                else
                {
                  if ((v53 & 0x2000000000000000) != 0)
                  {
                    v79 = HIBYTE(v53) & 0xF;
                    v2[22] = v54;
                    v2[23] = v53 & 0xFFFFFFFFFFFFFFLL;
                    v78 = v2 + 22;
                  }

                  else if ((v54 & 0x1000000000000000) != 0)
                  {
                    v78 = ((v53 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v79 = v54 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v78 = _StringObject.sharedUTF8.getter();
                  }

                  v80 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v78, v79, 0x40u, 1);

                  if (!v80)
                  {
                    goto LABEL_205;
                  }
                }

                v112 = 61;
                v113 = 0xE100000000000000;
                MEMORY[0x1865CB0E0](v54, v53);
                MEMORY[0x1865CB0E0](v112, v113);
              }

              else
              {
              }

              v82 = *(v110 + 16);
              v81 = *(v110 + 24);
              if (v82 >= v81 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1);
              }

              ++v49;
              *(v110 + 16) = v82 + 1;
              v83 = v110 + 16 * v82;
              *(v83 + 32) = v52;
              *(v83 + 40) = v51;
              v3 = v108;
              if (v49 == v105)
              {
                v93 = v2[25];
                v2[22] = v110;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
                lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
                v94 = BidirectionalCollection<>.joined(separator:)();
                v96 = v95;

                outlined destroy of TermOfAddress?((v2 + 20), &_sSSSgMd);
                *(v93 + 120) = v94;
                *(v93 + 128) = v96;
LABEL_210:
                free(v2);
                return;
              }

              goto LABEL_107;
            }

LABEL_215:

            goto LABEL_216;
          }
        }

        if (v58 != 33 && v58 != 36)
        {
          goto LABEL_134;
        }

        goto LABEL_118;
      }

LABEL_183:
      v71 = 1;
      goto LABEL_184;
    }

    v63 = HIBYTE(v51) & 0xF;
    v112 = v52;
    v113 = v51 & 0xFFFFFFFFFFFFFFLL;
    if (!v63)
    {
      goto LABEL_183;
    }

    v64 = 0;
    v65 = &v112;
    while (1)
    {
      if (*v65 < 0)
      {
LABEL_173:
        v71 = 0;
        goto LABEL_184;
      }

      v66 = *v65;
      if ((v66 - 39) < 9)
      {
        goto LABEL_149;
      }

      if (*v65 > 0x24u)
      {
        if (v66 == 37)
        {
          if (v64)
          {
            goto LABEL_173;
          }

          v64 = 2;
          goto LABEL_146;
        }

        if (v66 == 38)
        {
          goto LABEL_173;
        }
      }

      else if (v66 == 33 || v66 == 36)
      {
        goto LABEL_149;
      }

      v70 = v66 - 58;
      if ((v66 - 58) > 0xFFFFFFF5)
      {
        goto LABEL_149;
      }

      if (v70 <= 6)
      {
        if (((1 << v70) & 0x63) != 0)
        {
          goto LABEL_149;
        }

        if (v66 == 61)
        {
          goto LABEL_173;
        }
      }

      if (v66 != 95 && (v66 - 65) >= 0x1A && v66 != 126 && (v66 - 97) >= 0x1A)
      {
        goto LABEL_173;
      }

LABEL_149:
      v17 = v64-- < 1;
      if (v17)
      {
        v64 = 0;
      }

      else if ((v66 - 58) <= 0xFFFFFFF5)
      {
        v67 = v66 - 65;
        v17 = v67 > 0x25;
        v68 = (1 << v67) & 0x3F0000003FLL;
        if (v17 || v68 == 0)
        {
          goto LABEL_173;
        }
      }

LABEL_146:
      v65 = (v65 + 1);
      if (!--v63)
      {
        v72 = v64 == 0;
        goto LABEL_176;
      }
    }
  }

  if (!v3)
  {
    v97 = v2[25];
    outlined destroy of TermOfAddress?((v2 + 20), &_sSSSgMd);
    *(v97 + 120) = 0;
    *(v97 + 128) = 0;
LABEL_209:

    goto LABEL_210;
  }

  v5 = *(v3 + 16);
  if (!v5)
  {
    v99 = v2[25];
    outlined destroy of TermOfAddress?((v2 + 20), &_sSSSgMd);
    *(v99 + 120) = xmmword_1812476D0;
    goto LABEL_209;
  }

  v109 = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = 0;
  v106 = v3 + 32;
  while (1)
  {
    if (v6 >= *(v3 + 16))
    {
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:

      goto LABEL_215;
    }

    v7 = v5;
    v8 = (v106 + 32 * v6);
    v10 = *v8;
    v9 = v8[1];
    v12 = v8[2];
    v11 = v8[3];
    if ((v9 & 0x1000000000000000) != 0)
    {
      v104[22] = v10;
      v104[23] = v9;
      lazy protocol witness table accessor for type String and conformance String();

      StringProtocol._ephemeralString.getter();
      v32 = String._bridgeToObjectiveCImpl()();

      v33 = [v32 _fastCharacterContents];
      v34 = v32;
      if (v33)
      {
        v104[22] = v10;
        v104[23] = v9;
        v101 = v33;
        StringProtocol._ephemeralString.getter();
        v35 = String._bridgeToObjectiveCImpl()();

        v36 = [v35 length];
        swift_unknownObjectRelease();
        if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v101, v36, 0x80u, 1))
        {
          goto LABEL_83;
        }
      }

      else if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v10, v9, 0x80u, 1))
      {
        goto LABEL_83;
      }

      goto LABEL_215;
    }

    if ((v9 & 0x2000000000000000) == 0)
    {
      if ((v10 & 0x1000000000000000) != 0)
      {
        v13 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v14 = v10 & 0xFFFFFFFFFFFFLL;
        goto LABEL_10;
      }

      v13 = _StringObject.sharedUTF8.getter();
      if (!v13)
      {
LABEL_81:
        v30 = 1;
        goto LABEL_82;
      }

LABEL_10:
      if (!v14)
      {
        goto LABEL_81;
      }

      v15 = 0;
      while (2)
      {
        if (*v13 < 0)
        {
          goto LABEL_214;
        }

        v16 = *v13;
        if ((v16 - 39) < 9)
        {
          goto LABEL_16;
        }

        if (*v13 > 0x24u)
        {
          if (v16 != 37)
          {
            if (v16 == 38)
            {
              goto LABEL_214;
            }

            goto LABEL_32;
          }

          if (v15)
          {
            goto LABEL_214;
          }

          v15 = 2;
        }

        else
        {
          if (v16 == 33 || v16 == 36)
          {
            goto LABEL_16;
          }

LABEL_32:
          v21 = v16 - 58;
          if ((v16 - 58) <= 0xFFFFFFF5)
          {
            if (v21 <= 6)
            {
              if (((1 << v21) & 0x63) != 0)
              {
                goto LABEL_16;
              }

              if (v16 == 61)
              {
                goto LABEL_214;
              }
            }

            if (v16 != 95 && (v16 - 65) >= 0x1A && v16 != 126 && (v16 - 97) >= 0x1A)
            {
              goto LABEL_214;
            }
          }

LABEL_16:
          v17 = v15-- < 1;
          if (v17)
          {
            v15 = 0;
          }

          else if ((v16 - 58) <= 0xFFFFFFF5)
          {
            v18 = v16 - 65;
            v17 = v18 > 0x25;
            v19 = (1 << v18) & 0x3F0000003FLL;
            if (v17 || v19 == 0)
            {
              goto LABEL_214;
            }
          }
        }

        ++v13;
        if (!--v14)
        {
          v31 = v15 == 0;
          goto LABEL_74;
        }

        continue;
      }
    }

    v22 = HIBYTE(v9) & 0xF;
    v112 = v10;
    v113 = v9 & 0xFFFFFFFFFFFFFFLL;
    if (!v22)
    {
      goto LABEL_81;
    }

    v23 = 0;
    v24 = &v112;
    do
    {
      if (*v24 < 0)
      {
LABEL_71:
        v30 = 0;
        goto LABEL_82;
      }

      v25 = *v24;
      if ((v25 - 39) < 9)
      {
        goto LABEL_47;
      }

      if (*v24 > 0x24u)
      {
        if (v25 == 37)
        {
          if (v23)
          {
            goto LABEL_71;
          }

          v23 = 2;
          goto LABEL_44;
        }

        if (v25 == 38)
        {
          goto LABEL_71;
        }
      }

      else if (v25 == 33 || v25 == 36)
      {
        goto LABEL_47;
      }

      v29 = v25 - 58;
      if ((v25 - 58) > 0xFFFFFFF5)
      {
        goto LABEL_47;
      }

      if (v29 <= 6)
      {
        if (((1 << v29) & 0x63) != 0)
        {
          goto LABEL_47;
        }

        if (v25 == 61)
        {
          goto LABEL_71;
        }
      }

      if (v25 != 95 && (v25 - 65) >= 0x1A && v25 != 126 && (v25 - 97) >= 0x1A)
      {
        goto LABEL_71;
      }

LABEL_47:
      v17 = v23-- < 1;
      if (v17)
      {
        v23 = 0;
      }

      else if ((v25 - 58) <= 0xFFFFFFF5)
      {
        v26 = v25 - 65;
        v17 = v26 > 0x25;
        v27 = (1 << v26) & 0x3F0000003FLL;
        if (v17 || v27 == 0)
        {
          goto LABEL_71;
        }
      }

LABEL_44:
      v24 = (v24 + 1);
      --v22;
    }

    while (v22);
    v31 = v23 == 0;
LABEL_74:
    v30 = v31;
LABEL_82:

    if (!v30)
    {
      goto LABEL_215;
    }

LABEL_83:
    v111 = v10;
    if (!v11)
    {

      goto LABEL_92;
    }

    if ((v11 & 0x1000000000000000) != 0)
    {
      break;
    }

    if ((v11 & 0x2000000000000000) != 0)
    {
      v38 = HIBYTE(v11) & 0xF;
      v104[22] = v12;
      v104[23] = v11 & 0xFFFFFFFFFFFFFFLL;
      v37 = v104 + 22;
    }

    else if ((v12 & 0x1000000000000000) != 0)
    {
      v37 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v38 = v12 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v37 = _StringObject.sharedUTF8.getter();
    }

    v39 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v37, v38, 0x40u, 1);

    if (!v39)
    {
      goto LABEL_205;
    }

LABEL_91:
    v112 = 61;
    v113 = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v12, v11);
    MEMORY[0x1865CB0E0](v112, v113);

    v10 = v111;
LABEL_92:
    v41 = *(v109 + 16);
    v40 = *(v109 + 24);
    if (v41 >= v40 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
    }

    ++v6;
    *(v109 + 16) = v41 + 1;
    v42 = v109 + 16 * v41;
    *(v42 + 32) = v10;
    *(v42 + 40) = v9;
    v5 = v7;
    v3 = v108;
    if (v6 == v7)
    {
      v2 = v104;
      v89 = v104[25];
      v104[22] = v109;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
      v90 = BidirectionalCollection<>.joined(separator:)();
      v92 = v91;

      outlined destroy of TermOfAddress?((v104 + 20), &_sSSSgMd);
      *(v89 + 120) = v90;
      *(v89 + 128) = v92;
      goto LABEL_209;
    }
  }

  v104[22] = v12;
  v104[23] = v11;
  lazy protocol witness table accessor for type String and conformance String();

  StringProtocol._ephemeralString.getter();
  v43 = String._bridgeToObjectiveCImpl()();

  v44 = [v43 _fastCharacterContents];
  v45 = v43;
  if (v44)
  {
    v104[22] = v12;
    v104[23] = v11;
    StringProtocol._ephemeralString.getter();
    v46 = String._bridgeToObjectiveCImpl()();

    v47 = [v46 length];
    swift_unknownObjectRelease();
    if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v44, v47, 0x40u, 1))
    {
      goto LABEL_91;
    }
  }

  else if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v12, v11, 0x40u, 1))
  {
    goto LABEL_91;
  }

LABEL_205:
  swift_bridgeObjectRelease_n();
LABEL_216:

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void URLComponents.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 64);
  v3 = *(v0 + 112);
  v16 = *(v0 + 11);
  v17 = *(v0 + 14);
  v18 = *(v0 + 15);
  v19 = *(v0 + 16);
  v14 = *(v0 + 128);
  v15 = *(v0 + 144);
  if (*(v0 + 32))
  {
    goto LABEL_2;
  }

  if ((*(v0 + 9) & 1) != 0 && v1 && (v1[48] & 1) == 0)
  {
    v10 = String.subscript.getter();
    MEMORY[0x1865CAE80](v10);

LABEL_2:
    Hasher._combine(_:)(1u);

    String.hash(into:)();

    goto LABEL_7;
  }

  Hasher._combine(_:)(0);
LABEL_7:
  URLComponents._URLComponents.percentEncodedUser.getter();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v2)
  {
    goto LABEL_11;
  }

  if ((v16 & 1) != 0 && v1 && (v1[96] & 1) == 0)
  {
    v11 = String.subscript.getter();
    MEMORY[0x1865CAE80](v11);

LABEL_11:
    Hasher._combine(_:)(1u);

    String.hash(into:)();

    goto LABEL_16;
  }

  Hasher._combine(_:)(0);
LABEL_16:
  URLComponents.encodedHost.getter();
  if (v5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = URLComponents.port.getter();
  if (v7)
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v8 = v6;
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v8);
    if (v3)
    {
      goto LABEL_31;
    }
  }

  if ((v17 & 1) != 0 && v1)
  {
    if (v1[168])
    {
      v9 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v9 = String.subscript.getter();
    }

    MEMORY[0x1865CAE80](v9);
  }

LABEL_31:

  String.hash(into:)();

  if (v14)
  {
    goto LABEL_32;
  }

  if ((v18 & 1) != 0 && v1 && (v1[192] & 1) == 0)
  {
    v12 = String.subscript.getter();
    MEMORY[0x1865CAE80](v12);

LABEL_32:
    Hasher._combine(_:)(1u);

    String.hash(into:)();

    if (v15)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

  Hasher._combine(_:)(0);
  if (v15)
  {
    goto LABEL_44;
  }

LABEL_38:
  if (v19 & 1) == 0 || !v1 || (v1[216])
  {
    Hasher._combine(_:)(0);
    return;
  }

  v13 = String.subscript.getter();
  MEMORY[0x1865CAE80](v13);

LABEL_44:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int URLComponents.hashValue.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 9);
  v4 = *(v1 + 11);
  v19 = *(v1 + 14);
  v20 = *(v1 + 15);
  v21 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 64);
  v22 = *(v1 + 128);
  v7 = *(v1 + 144);
  Hasher.init(_seed:)();
  if (v5)
  {
    goto LABEL_2;
  }

  if ((v3 & 1) != 0 && v2 && (v2[48] & 1) == 0)
  {
    v9 = String.subscript.getter();
    MEMORY[0x1865CAE80](v9);

LABEL_2:
    Hasher._combine(_:)(1u);

    String.hash(into:)();

    goto LABEL_7;
  }

  Hasher._combine(_:)(0);
LABEL_7:
  URLComponents._URLComponents.percentEncodedUser.getter();
  if (v8)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();

    if (v6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v6)
    {
      goto LABEL_17;
    }
  }

  if (v4 & 1) == 0 || !v2 || (v2[96])
  {
    Hasher._combine(_:)(0);
    goto LABEL_18;
  }

  v10 = String.subscript.getter();
  MEMORY[0x1865CAE80](v10);

LABEL_17:
  Hasher._combine(_:)(1u);

  String.hash(into:)();

LABEL_18:
  URLComponents._URLComponents.encodedHost.getter();
  if (v11)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v12 = URLComponents._URLComponents.port.getter();
  if (v13)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v14 = v12;
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v14);
  }

  v24 = *(v1 + 104);
  if (!*(&v24 + 1) && (v19 & 1) != 0 && v2)
  {
    if (v2[168])
    {
      v15 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v15 = String.subscript.getter();
    }

    MEMORY[0x1865CAE80](v15);
  }

  outlined init with copy of FloatingPointRoundingRule?(&v24, v23, &_sSSSgMd);
  String.hash(into:)();

  if (v22)
  {
LABEL_32:
    Hasher._combine(_:)(1u);

    String.hash(into:)();

    if (!v7)
    {
      goto LABEL_38;
    }

LABEL_44:
    Hasher._combine(_:)(1u);

    String.hash(into:)();

    return Hasher._finalize()();
  }

  if ((v20 & 1) != 0 && v2 && (v2[192] & 1) == 0)
  {
    v16 = String.subscript.getter();
    MEMORY[0x1865CAE80](v16);

    goto LABEL_32;
  }

  Hasher._combine(_:)(0);
  if (v7)
  {
    goto LABEL_44;
  }

LABEL_38:
  if ((v21 & 1) != 0 && v2 && (v2[216] & 1) == 0)
  {
    v17 = String.subscript.getter();
    MEMORY[0x1865CAE80](v17);

    goto LABEL_44;
  }

  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URLComponents()
{
  Hasher.init(_seed:)();
  URLComponents.scheme.getter();
  if (v0)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  URLComponents._URLComponents.percentEncodedUser.getter();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  URLComponents.percentEncodedPassword.getter();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  URLComponents._URLComponents.encodedHost.getter();
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = URLComponents._URLComponents.port.getter();
  if (v5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = v4;
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v6);
  }

  URLComponents.percentEncodedPath.getter();
  String.hash(into:)();

  URLComponents.percentEncodedQuery.getter();
  if (v7)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  URLComponents.percentEncodedFragment.getter();
  if (v8)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t URLComponents.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v151 = *MEMORY[0x1E69E9840];
  v127 = type metadata accessor for Mirror.AncestorRepresentation();
  v125 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v4 = v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v126 = v122 - v6;
  v7 = v1[7];
  v8 = v1[5];
  v148 = v1[6];
  v149 = v7;
  v9 = v1[7];
  v150[0] = v1[8];
  *(v150 + 10) = *(v1 + 138);
  v10 = v1[3];
  v11 = v1[1];
  v144 = v1[2];
  v145 = v10;
  v12 = v1[3];
  v13 = v1[5];
  v146 = v1[4];
  v147 = v13;
  v14 = v1[1];
  v142 = *v1;
  v143 = v14;
  v140[8] = v148;
  v140[9] = v9;
  v141[0] = v1[8];
  *(v141 + 10) = *(v1 + 138);
  v140[4] = v144;
  v140[5] = v12;
  v140[6] = v146;
  v140[7] = v8;
  v140[2] = v142;
  v140[3] = v11;
  v15 = v142;
  if (v144)
  {
    v16 = *(&v143 + 1);
    v17 = v144;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
    if (BYTE9(v142) != 1 || !v142 || (*(v142 + 48) & 1) != 0)
    {
      goto LABEL_6;
    }

    v41 = String.subscript.getter();
    v16 = MEMORY[0x1865CAE80](v41);
    v17 = v42;
  }

  *(&v129[0] + 1) = MEMORY[0x1E69E6158];
  *&v128 = v16;
  *(&v128 + 1) = v17;
  v132 = xmmword_1812DB960;
  outlined init with take of Any(&v128, &v133);

  v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
  }

  v18[2] = v20 + 1;
  v21 = &v18[6 * v20];
  v22 = v132;
  v23 = v134;
  v21[3] = v133;
  v21[4] = v23;
  v21[2] = v22;
LABEL_6:
  v138 = v148;
  v139 = v149;
  v140[0] = v150[0];
  *(v140 + 10) = *(v150 + 10);
  v134 = v144;
  v135 = v145;
  v136 = v146;
  v137 = v147;
  v132 = v142;
  v133 = v143;
  v24 = URLComponents.user.getter();
  if (v25)
  {
    *(&v129[0] + 1) = MEMORY[0x1E69E6158];
    *&v128 = v24;
    *(&v128 + 1) = v25;
    v132 = xmmword_1812DB970;
    outlined init with take of Any(&v128, &v133);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    }

    v27 = v18[2];
    v26 = v18[3];
    if (v27 >= v26 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v18);
    }

    v18[2] = v27 + 1;
    v28 = &v18[6 * v27];
    v29 = v132;
    v30 = v134;
    v28[3] = v133;
    v28[4] = v30;
    v28[2] = v29;
  }

  v138 = v148;
  v139 = v149;
  v140[0] = v150[0];
  *(v140 + 10) = *(v150 + 10);
  v134 = v144;
  v135 = v145;
  v136 = v146;
  v137 = v147;
  v132 = v142;
  v133 = v143;
  v31 = URLComponents.password.getter();
  if (v32)
  {
    *(&v129[0] + 1) = MEMORY[0x1E69E6158];
    *&v128 = v31;
    *(&v128 + 1) = v32;
    v132 = xmmword_1812DB980;
    outlined init with take of Any(&v128, &v133);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    }

    v34 = v18[2];
    v33 = v18[3];
    if (v34 >= v33 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v18);
    }

    v18[2] = v34 + 1;
    v35 = &v18[6 * v34];
    v36 = v132;
    v37 = v134;
    v35[3] = v133;
    v35[4] = v37;
    v35[2] = v36;
  }

  v38 = v147;
  v123 = v4;
  v124 = a1;
  if (v147)
  {
    v39 = *(&v146 + 1);
    v40 = v147;
  }

  else
  {
    if (BYTE12(v142) == 1 && v15 && (*(v15 + 120) & 1) == 0)
    {
      v45 = String.subscript.getter();
      v39 = MEMORY[0x1865CAE80](v45);
      v40 = v46;
    }

    else
    {
      URLComponents._URLComponents.port.getter();
      if (v43)
      {
        URLComponents._URLComponents.percentEncodedUser.getter();
        if (!v44)
        {
LABEL_50:
          v59 = URLComponents._URLComponents.port.getter();
          if ((v60 & 1) == 0)
          {
            *(&v129[0] + 1) = MEMORY[0x1E69E6530];
            *&v128 = v59;
            v132 = xmmword_1812DB9A0;
            outlined init with take of Any(&v128, &v133);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
            }

            v62 = v18[2];
            v61 = v18[3];
            if (v62 >= v61 >> 1)
            {
              v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v18);
            }

            v18[2] = v62 + 1;
            v63 = &v18[6 * v62];
            v64 = v132;
            v65 = v134;
            v63[3] = v133;
            v63[4] = v65;
            v63[2] = v64;
          }

          v138 = v148;
          v139 = v149;
          v140[0] = v150[0];
          *(v140 + 10) = *(v150 + 10);
          v134 = v144;
          v135 = v145;
          v136 = v146;
          v137 = v147;
          v132 = v142;
          v133 = v143;
          v66 = URLComponents.path.getter();
          v131 = MEMORY[0x1E69E6158];
          *&v130 = v66;
          *(&v130 + 1) = v67;
          v128 = xmmword_1812DB9B0;
          outlined init with take of Any(&v130, v129);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
          }

          v69 = v18[2];
          v68 = v18[3];
          if (v69 >= v68 >> 1)
          {
            v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v18);
          }

          v18[2] = v69 + 1;
          v70 = &v18[6 * v69];
          v71 = v128;
          v72 = v129[1];
          v70[3] = v129[0];
          v70[4] = v72;
          v70[2] = v71;
          v73 = URLComponents._URLComponents.queryItems(percentEncoded:)(0);
          if (v73)
          {
            v74 = v73;
            *(&v129[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12URLQueryItemVGMd);
            *&v128 = v74;
            v132 = xmmword_1812DB9C0;
            outlined init with take of Any(&v128, &v133);
            v76 = v18[2];
            v75 = v18[3];
            if (v76 >= v75 >> 1)
            {
              v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v18);
            }

            v18[2] = v76 + 1;
            v77 = &v18[6 * v76];
            v78 = v132;
            v79 = v134;
            v77[3] = v133;
            v77[4] = v79;
            v77[2] = v78;
          }

          v138 = v148;
          v139 = v149;
          v140[0] = v150[0];
          *(v140 + 10) = *(v150 + 10);
          v134 = v144;
          v135 = v145;
          v136 = v146;
          v137 = v147;
          v132 = v142;
          v133 = v143;
          v80 = URLComponents.fragment.getter();
          if (v81)
          {
            *(&v129[0] + 1) = MEMORY[0x1E69E6158];
            *&v128 = v80;
            *(&v128 + 1) = v81;
            v132 = xmmword_1812DB9D0;
            outlined init with take of Any(&v128, &v133);
            v83 = v18[2];
            v82 = v18[3];
            if (v83 >= v82 >> 1)
            {
              v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v18);
            }

            v18[2] = v83 + 1;
            v84 = &v18[6 * v83];
            v85 = v132;
            v86 = v134;
            v84[3] = v133;
            v84[4] = v86;
            v84[2] = v85;
          }

          v138 = v148;
          v139 = v149;
          v140[0] = v150[0];
          *(v140 + 10) = *(v150 + 10);
          v134 = v144;
          v135 = v145;
          v136 = v146;
          v137 = v147;
          v132 = v142;
          v133 = v143;
          *&v130 = v18;
          v87 = *MEMORY[0x1E69E75B8];
          v88 = type metadata accessor for Mirror.DisplayStyle();
          v89 = *(v88 - 8);
          v90 = v126;
          (*(v89 + 104))(v126, v87, v88);
          (*(v89 + 56))(v90, 0, 1, v88);
          (*(v125 + 104))(v4, *MEMORY[0x1E69E75D8], v127);
          outlined init with copy of URLComponents(&v142, &v128);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [(label: String?, value: Any)] and conformance [A], &_sSaySSSg5label_yp5valuetGMd);
          return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
        }
      }

      v39 = 0;
      v40 = 0xE000000000000000;
    }

    v38 = 0;
  }

  v47 = v39 & 0xFFFFFFFFFFFFLL;
  if ((v40 & 0x2000000000000000) != 0)
  {
    v48 = HIBYTE(v40) & 0xF;
  }

  else
  {
    v48 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48)
  {

    v52 = 0;
    v53 = 0xE000000000000000;
    v4 = v123;
    goto LABEL_45;
  }

  if (BYTE8(v150[1]))
  {
    *&v132 = v39;
    *(&v132 + 1) = v40;
    MEMORY[0x1EEE9AC00](v38);
    v49 = MEMORY[0x1E69E7CD0];
    v122[-4] = &v132;
    v122[-3] = v49;
    v122[-2] = 4;

    v50 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v122[-6], v39, v40);
    if (v51 == 1)
    {
      v50 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v39, v40, MEMORY[0x1E69E7CD0], 4);
    }

    v52 = v50;
    v53 = v51;
    goto LABEL_41;
  }

  if ((v40 & 0x1000000000000000) != 0)
  {

    goto LABEL_76;
  }

  if ((v40 & 0x2000000000000000) != 0)
  {
    *&v132 = v39;
    *(&v132 + 1) = v40 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v38);
    LOBYTE(v122[-2]) = 0;
    MEMORY[0x1EEE9AC00](v95);
    v122[-2] = &v132;
    v122[-1] = HIBYTE(v40) & 0xF;

    v52 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v132, HIBYTE(v40) & 0xF, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, &v122[-4], closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v53 = v96;
    if (v96 == 1)
    {
      goto LABEL_76;
    }

LABEL_41:
    swift_bridgeObjectRelease_n();
    goto LABEL_42;
  }

  if ((v39 & 0x1000000000000000) != 0)
  {
    v92 = (v40 & 0xFFFFFFFFFFFFFFFLL) + 32;
    goto LABEL_73;
  }

  v114 = v38;
  v115 = _StringObject.sharedUTF8.getter();
  if (!v115)
  {
    v121 = one-time initialization token for idnaTranscoder;

    if (v121 != -1)
    {
      swift_once();
    }

    if ((byte_1ED436DC0 & 1) == 0)
    {
      if (swift_stdlib_isStackAllocationSafe())
      {
        __break(1u);
      }

      swift_slowAlloc();
      __break(1u);
      goto LABEL_102;
    }

    v53 = 0;
    v52 = 0;
    goto LABEL_41;
  }

  v92 = v115;
  v47 = v116;
  v38 = v114;
LABEL_73:
  v122[1] = v122;
  MEMORY[0x1EEE9AC00](v38);
  LOBYTE(v122[-2]) = 0;
  MEMORY[0x1EEE9AC00](v93);
  v122[-2] = v92;
  v122[-1] = v47;

  v52 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v92, v47, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, &v122[-4], closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
  v53 = v94;
  if (v94 != 1)
  {
    goto LABEL_41;
  }

LABEL_76:
  *&v132 = v39;
  *(&v132 + 1) = v40;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v97 = String._bridgeToObjectiveCImpl()();

  v98 = [v97 _fastCharacterContents];
  v99 = v97;
  if (v98)
  {
    *&v132 = v39;
    *(&v132 + 1) = v40;
    StringProtocol._ephemeralString.getter();
    v100 = String._bridgeToObjectiveCImpl()();

    v101 = [v100 length];
    v102 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v102);
    LOBYTE(v122[-2]) = 0;
    MEMORY[0x1EEE9AC00](v103);
    v122[-2] = v98;
    v122[-1] = v101;
    v52 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v98);
    v53 = v104;
    swift_bridgeObjectRelease_n();
LABEL_42:
    v4 = v123;
    if (!v53)
    {
      goto LABEL_50;
    }

LABEL_45:
    *(&v129[0] + 1) = MEMORY[0x1E69E6158];
    *&v128 = v52;
    *(&v128 + 1) = v53;
    v132 = xmmword_1812DB990;
    outlined init with take of Any(&v128, &v133);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    }

    v55 = v18[2];
    v54 = v18[3];
    if (v55 >= v54 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v18);
    }

    v18[2] = v55 + 1;
    v56 = &v18[6 * v55];
    v57 = v132;
    v58 = v134;
    v56[3] = v133;
    v56[4] = v58;
    v56[2] = v57;
    goto LABEL_50;
  }

  *&v132 = v39;
  *(&v132 + 1) = v40;

  v105 = String.init<A>(_:)();
  v107 = v105;
  v108 = v106;
  if ((v106 & 0x1000000000000000) == 0)
  {
    v4 = v123;
    if ((v106 & 0x2000000000000000) == 0)
    {
      goto LABEL_80;
    }

LABEL_87:
    *&v132 = v107;
    *(&v132 + 1) = v108 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v105);
    LOBYTE(v122[-2]) = 0;
    MEMORY[0x1EEE9AC00](v119);
    v122[-2] = &v132;
    v122[-1] = v112;
    v111 = &v132;
LABEL_88:
    v52 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v111, v112, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v113, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v53 = v120;

    swift_bridgeObjectRelease_n();
    if (!v53)
    {
      goto LABEL_50;
    }

    goto LABEL_45;
  }

  v107 = static String._copying(_:)();
  v118 = v117;

  v108 = v118;
  v4 = v123;
  if ((v118 & 0x2000000000000000) != 0)
  {
    goto LABEL_87;
  }

LABEL_80:
  if ((v107 & 0x1000000000000000) != 0)
  {
    v109 = (v108 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_82:
    MEMORY[0x1EEE9AC00](v109);
    LOBYTE(v122[-2]) = 0;
    MEMORY[0x1EEE9AC00](v110);
    v122[-2] = v111;
    v122[-1] = v112;
    goto LABEL_88;
  }

  v109 = _StringObject.sharedUTF8.getter();
  if (v109)
  {
    goto LABEL_82;
  }

  if (one-time initialization token for idnaTranscoder != -1)
  {
    swift_once();
  }

  if (byte_1ED436DC0)
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_50;
  }

LABEL_102:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}

uint64_t URLComponents.description.getter()
{
  v0 = type metadata accessor for Mirror();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.url.getter(v18);
  if (*&v18[0])
  {
    v4 = *(&v18[0] + 1);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 416))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    URLComponents.customMirror.getter(v3);
    v7 = Mirror.children.getter();
    (*(v1 + 8))(v3, v0);
    v20 = 0;
    v21 = 0xE000000000000000;
    dispatch thunk of _AnySequenceBox._makeIterator()();
    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (*(&v19 + 1))
    {
      v11[1] = v7;
      do
      {
        v17[0] = v18[0];
        v17[1] = v18[1];
        v17[2] = v19;
        v15 = 0;
        v16 = 0xE000000000000000;
        outlined init with copy of FloatingPointRoundingRule?(v17, &v12, &_sSSSg5label_yp5valuetMd);
        if (v13)
        {
          v8 = v12;
        }

        else
        {
          v8 = 0;
        }

        if (v13)
        {
          v9 = v13;
        }

        else
        {
          v9 = 0xE000000000000000;
        }

        __swift_destroy_boxed_opaque_existential_1(&v14);
        MEMORY[0x1865CB0E0](v8, v9);

        MEMORY[0x1865CB0E0](8250, 0xE200000000000000);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](32, 0xE100000000000000);
        MEMORY[0x1865CB0E0](v15, v16);

        outlined destroy of TermOfAddress?(v17, &_sSSSg5label_yp5valuetMd);
        dispatch thunk of _AnyIteratorBoxBase.next()();
      }

      while (*(&v19 + 1));
      v6 = v20;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t static URLComponents._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, _OWORD *a2)
{
  v318 = *MEMORY[0x1E69E9840];
  v4 = a2[7];
  v316[6] = a2[6];
  v316[7] = v4;
  v317[0] = a2[8];
  *(v317 + 10) = *(a2 + 138);
  v5 = a2[3];
  v316[2] = a2[2];
  v316[3] = v5;
  v6 = a2[5];
  v316[4] = a2[4];
  v316[5] = v6;
  v7 = a2[1];
  v316[0] = *a2;
  v316[1] = v7;
  outlined destroy of TermOfAddress?(v316, &_s10Foundation13URLComponentsVSgMd);
  type metadata accessor for _NSSwiftURLComponents();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____NSSwiftURLComponents_lock);
    v10 = a1;
    os_unfair_lock_lock((v9 + 172));
    v11 = *(v9 + 128);
    v304 = *(v9 + 112);
    v305 = v11;
    v306[0] = *(v9 + 144);
    *(v306 + 10) = *(v9 + 154);
    v12 = *(v9 + 64);
    v300 = *(v9 + 48);
    v301 = v12;
    v13 = *(v9 + 96);
    v302 = *(v9 + 80);
    v303 = v13;
    v14 = *(v9 + 32);
    v298 = *(v9 + 16);
    v299 = v14;
    outlined init with copy of URLComponents(&v298, &v307);
    os_unfair_lock_unlock((v9 + 172));

    v313 = v304;
    v314 = v305;
    v315[0] = v306[0];
    *(v315 + 10) = *(v306 + 10);
    v309 = v300;
    v310 = v301;
    v311 = v302;
    v312 = v303;
    v307 = v298;
    v308 = v299;
    _NSBundleDeallocatingImmortalBundle(&v307, v15);
    v16 = v314;
    a2[6] = v313;
    a2[7] = v16;
    a2[8] = v315[0];
    *(a2 + 138) = *(v315 + 10);
    v17 = v310;
    a2[2] = v309;
    a2[3] = v17;
    v18 = v312;
    a2[4] = v311;
    a2[5] = v18;
    v19 = v307;
    v20 = v308;
LABEL_299:
    *a2 = v19;
    a2[1] = v20;
    return 1;
  }

  v295 = 0uLL;
  v296[0] = 0;
  memset(&v296[8], 0, 72);
  LOBYTE(v297[0]) = 1;
  *(v297 + 8) = 0u;
  *(&v297[1] + 8) = 0u;
  *(&v297[2] + 8) = 0u;
  WORD4(v297[3]) = 0;
  v281 = a1;
  v21 = [a1 scheme];
  if (!v21)
  {
    v28 = 0;
    v30 = 0;
    v27 = 0;
    WORD4(v295) = 0;
    goto LABEL_32;
  }

  v22 = v21;
  isTaggedPointer = _objc_isTaggedPointer(v21);
  v24 = v22;
  v25 = v24;
  if (!isTaggedPointer)
  {
    goto LABEL_9;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v24);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_17;
    case 0x16:
      v34 = [v25 UTF8String];
      if (!v34)
      {
        __break(1u);
        goto LABEL_335;
      }

      v35 = String.init(utf8String:)(v34);
      if (v36)
      {
        goto LABEL_18;
      }

      __break(1u);
LABEL_17:
      LOWORD(v286) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v35 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v36)
      {
        [v25 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v30 = *(&v298 + 1);
        v28 = v298;
        goto LABEL_22;
      }

LABEL_18:
      v28 = v35;
      v30 = v36;

LABEL_22:
      v27 = 0;
      goto LABEL_24;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v278 = v25;
      v27 = 0;
      v28 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v30 = v29;

      goto LABEL_24;
  }

LABEL_9:
  LOBYTE(v298) = 0;
  *&v307 = 0;
  LOBYTE(v286) = 0;
  LOBYTE(v282) = 0;
  if (__CFStringIsCF())
  {
    v27 = v307;

    v28 = 0;
    v30 = 0xE000000000000000;
  }

  else
  {
    v31 = v25;
    v32 = String.init(_nativeStorage:)();
    if (v33)
    {
      v28 = v32;
      v30 = v33;

      v27 = 0;
    }

    else
    {
      *&v307 = [v31 length];
      if (v307)
      {
        v27 = 0;
        v28 = String.init(_cocoaString:)();
        v30 = v37;
      }

      else
      {

        v28 = 0;
        v27 = 0;
        v30 = 0xE000000000000000;
      }
    }
  }

LABEL_24:
  WORD4(v295) = 0;
  v38 = specialized Collection.first.getter(v28, v30);
  if ((v38 & 0x100) == 0 && v38 >= 0x41u)
  {
    if ((v30 & 0x1000000000000000) != 0)
    {
      v280 = 0;
      *&v307 = v28;
      *(&v307 + 1) = v30;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v240 = String._bridgeToObjectiveCImpl()();

      v241 = [v240 _fastCharacterContents];
      v242 = v240;
      v243 = v241;
      v244 = v242;
      if (v243)
      {
        *&v307 = v28;
        *(&v307 + 1) = v30;
        StringProtocol._ephemeralString.getter();
        v245 = String._bridgeToObjectiveCImpl()();

        v246 = [v245 length];
        swift_unknownObjectRelease();
        v247 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v243, v246, 1u, 0);
        v27 = v280;
        if (v247)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v27 = v280;
        if (specialized Sequence.allSatisfy(_:)(v28, v30, 1))
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if ((v30 & 0x2000000000000000) != 0)
      {
        v40 = HIBYTE(v30) & 0xF;
        *&v307 = v28;
        *(&v307 + 1) = v30 & 0xFFFFFFFFFFFFFFLL;
        v39 = &v307;
      }

      else if ((v28 & 0x1000000000000000) != 0)
      {
        v39 = ((v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v40 = v28 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = _StringObject.sharedUTF8.getter();
      }

      if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v39, v40, 1u, 0))
      {
LABEL_32:
        *&v296[8] = v28;
        *&v296[16] = v30;

        v313 = v297[0];
        v314 = v297[1];
        v315[0] = v297[2];
        *(v315 + 10) = *(&v297[2] + 10);
        v309 = *&v296[16];
        v310 = *&v296[32];
        v311 = *&v296[48];
        v312 = *&v296[64];
        v307 = v295;
        v308 = *v296;
        v41 = v281;
        if (!*&v296[64])
        {
          if ((BYTE12(v307) & 1) != 0 && v307 && (*(v307 + 120) & 1) == 0)
          {
            v68 = String.subscript.getter();
            MEMORY[0x1865CAE80](v68);
          }

          else
          {
            URLComponents._URLComponents.port.getter();
            if (v42)
            {
              URLComponents._URLComponents.percentEncodedUser.getter();
              if (!v43)
              {
                goto LABEL_62;
              }
            }
          }
        }

        v304 = v297[0];
        v305 = v297[1];
        v306[0] = v297[2];
        *(v306 + 10) = *(&v297[2] + 10);
        v300 = *&v296[16];
        v301 = *&v296[32];
        v302 = *&v296[48];
        v303 = *&v296[64];
        v298 = v295;
        v299 = *v296;
        v44 = URLComponents._URLComponents.encodedHost.getter();
        v46 = v44;
        if (v45)
        {
          v47 = v45;
          v48 = HIBYTE(v45) & 0xF;
          if ((v45 & 0x2000000000000000) == 0)
          {
            v48 = v44 & 0xFFFFFFFFFFFFLL;
          }

          if (!v48)
          {

            v46 = 0;
            v45 = 0xE000000000000000;
            goto LABEL_61;
          }

          if (BYTE8(v306[1]))
          {
            *&v286 = v44;
            *(&v286 + 1) = v45;
            MEMORY[0x1EEE9AC00](v44);
            v276 = &v286;
            v277 = MEMORY[0x1E69E7CD0];
            v278 = 4;
            v49 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v274, v46, v47);
            if (v50 == 1)
            {
              v46 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v46, v47, MEMORY[0x1E69E7CD0], 4);
              v52 = v51;

              v45 = v52;
            }

            else
            {
              v64 = v49;
              v65 = v50;

              v45 = v65;
              v46 = v64;
            }

            goto LABEL_61;
          }

          v53 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(v46, v47);
          v280 = v27;
          if (v54 != 1)
          {
            v66 = v53;
            v67 = v54;
            swift_bridgeObjectRelease_n();
            v45 = v67;
            v46 = v66;
            goto LABEL_61;
          }

          *&v286 = v46;
          *(&v286 + 1) = v47;
          lazy protocol witness table accessor for type String and conformance String();
          StringProtocol._ephemeralString.getter();
          v55 = String._bridgeToObjectiveCImpl()();

          v56 = [v55 _fastCharacterContents];
          v57 = v55;
          if (v56)
          {
            *&v286 = v46;
            *(&v286 + 1) = v47;
            StringProtocol._ephemeralString.getter();
            v58 = String._bridgeToObjectiveCImpl()();

            v59 = [v58 length];
            v60 = swift_unknownObjectRelease();
            MEMORY[0x1EEE9AC00](v60);
            LOBYTE(v278) = 0;
            MEMORY[0x1EEE9AC00](v61);
            v274 = v56;
            v275 = v59;
            v46 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v56);
            v63 = v62;
            swift_bridgeObjectRelease_n();
            v45 = v63;
            goto LABEL_60;
          }

          *&v286 = v46;
          *(&v286 + 1) = v47;

          v69 = String.init<A>(_:)();
          v71 = v69;
          v72 = v70;
          if ((v70 & 0x1000000000000000) != 0)
          {
            v71 = static String._copying(_:)();
            v268 = v267;

            v72 = v268;
            v41 = v281;
            if ((v268 & 0x2000000000000000) == 0)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v41 = v281;
            if ((v70 & 0x2000000000000000) == 0)
            {
LABEL_56:
              if ((v71 & 0x1000000000000000) != 0)
              {
                v73 = (v72 & 0xFFFFFFFFFFFFFFFLL) + 32;
              }

              else
              {
                v73 = _StringObject.sharedUTF8.getter();
                if (!v73)
                {
                  if (one-time initialization token for idnaTranscoder != -1)
                  {
                    goto LABEL_340;
                  }

                  goto LABEL_332;
                }
              }

              MEMORY[0x1EEE9AC00](v73);
              LOBYTE(v278) = 0;
              MEMORY[0x1EEE9AC00](v74);
              v274 = v75;
              v275 = v76;
              v46 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v75, v76, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v77, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
              v79 = v78;
              goto LABEL_59;
            }
          }

          *&v286 = v71;
          *(&v286 + 1) = v72 & 0xFFFFFFFFFFFFFFLL;
          MEMORY[0x1EEE9AC00](v69);
          LOBYTE(v278) = 0;
          MEMORY[0x1EEE9AC00](v269);
          v274 = &v286;
          v275 = v270;
          v46 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v286, v270, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v271, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
          v273 = v272;

          swift_bridgeObjectRelease_n();
          v45 = v273;
          goto LABEL_61;
        }

        while (1)
        {
LABEL_61:
          URLComponents._URLComponents.host.setter(v46, v45);
LABEL_62:

          v80 = [v41 percentEncodedUser];
          if (!v80)
          {
            v86 = 0;
            v88 = 0;
            BYTE8(v295) = 0;
            BYTE10(v295) = 0;
            goto LABEL_106;
          }

          v81 = v80;
          v82 = _objc_isTaggedPointer(v80);
          v83 = v81;
          v84 = v83;
          if (!v82)
          {
            goto LABEL_68;
          }

          v85 = _objc_getTaggedPointerTag(v83);
          if (!v85)
          {
            goto LABEL_80;
          }

          if (v85 != 22)
          {
            if (v85 == 2)
            {
              MEMORY[0x1EEE9AC00](v85);
              v278 = v84;
              v86 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v88 = v87;

              goto LABEL_100;
            }

LABEL_68:
            LOBYTE(v282) = 0;
            *&v286 = 0;
            LOBYTE(v284) = 0;
            v285 = 0;
            IsCF = __CFStringIsCF();
            if (!IsCF)
            {
              v90 = v84;
              v91 = String.init(_nativeStorage:)();
              if (v92)
              {
                v86 = v91;
                v88 = v92;

                goto LABEL_100;
              }

              *&v286 = [v90 length];
              if (!v286)
              {

                v86 = 0;
                v88 = 0xE000000000000000;
                goto LABEL_100;
              }

LABEL_97:
              v96 = String.init(_cocoaString:)();
LABEL_98:
              v86 = v96;
              v88 = v97;
              goto LABEL_99;
            }

            v86 = v286;
            if (!v286)
            {

              v88 = 0xE000000000000000;
              goto LABEL_100;
            }

            if (v285 == 1)
            {
              if (v282)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v96 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_98;
            }

            if ((v284 & 1) == 0)
            {
              goto LABEL_97;
            }

            if (v282 == 1)
            {
              MEMORY[0x1EEE9AC00](IsCF);
              v276 = v84;
              v277 = &v286;
              LODWORD(v278) = 1536;
              v279 = v86;
            }

            else
            {
              v98 = [v84 lengthOfBytesUsingEncoding_];
              MEMORY[0x1EEE9AC00](v98);
              v276 = v84;
              v277 = &v286;
              LODWORD(v278) = 134217984;
              v279 = v99;
            }

            v100 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v88 = v101;
            v102 = HIBYTE(v101) & 0xF;
            if ((v101 & 0x2000000000000000) == 0)
            {
              v102 = v100 & 0xFFFFFFFFFFFFLL;
            }

            if (!v102)
            {

              goto LABEL_97;
            }

            v86 = v100;
            goto LABEL_82;
          }

          v93 = [v84 UTF8String];
          if (!v93)
          {
LABEL_335:
            __break(1u);
LABEL_336:
            __break(1u);
LABEL_337:
            __break(1u);
LABEL_338:
            __break(1u);
            goto LABEL_339;
          }

          v94 = String.init(utf8String:)(v93);
          if (!v95)
          {
            break;
          }

LABEL_81:
          v86 = v94;
          v88 = v95;
LABEL_82:

LABEL_99:
LABEL_100:
          BYTE8(v295) = 0;
          BYTE10(v295) = 0;
          if ((v88 & 0x1000000000000000) != 0)
          {
            *&v286 = v86;
            *(&v286 + 1) = v88;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol._ephemeralString.getter();
            v248 = String._bridgeToObjectiveCImpl()();

            v249 = [v248 _fastCharacterContents];
            v250 = v248;
            if (v249)
            {
              *&v286 = v86;
              *(&v286 + 1) = v88;
              StringProtocol._ephemeralString.getter();
              v251 = String._bridgeToObjectiveCImpl()();

              v252 = [v251 length];
              swift_unknownObjectRelease();
              v253 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v249, v252, 2u, 1);
            }

            else
            {
              v253 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v86, v88, 2u, 1);
            }

            v41 = v281;
            if ((v253 & 1) == 0)
            {
LABEL_319:
              LODWORD(v279) = 0;
              v202 = 914;
              goto LABEL_320;
            }
          }

          else
          {
            if ((v88 & 0x2000000000000000) != 0)
            {
              v104 = HIBYTE(v88) & 0xF;
              *&v286 = v86;
              *(&v286 + 1) = v88 & 0xFFFFFFFFFFFFFFLL;
              v103 = &v286;
            }

            else if ((v86 & 0x1000000000000000) != 0)
            {
              v103 = ((v88 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v104 = v86 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v103 = _StringObject.sharedUTF8.getter();
            }

            if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v103, v104, 2u, 1))
            {
              goto LABEL_319;
            }
          }

LABEL_106:

          *&v296[24] = v86;
          *&v296[32] = v88;
          v105 = [v41 percentEncodedPassword];
          if (v105)
          {
            v106 = v105;
            v107 = _objc_isTaggedPointer(v105);
            v108 = v106;
            v109 = v108;
            if (!v107)
            {
              goto LABEL_112;
            }

            v110 = _objc_getTaggedPointerTag(v108);
            if (!v110)
            {
              goto LABEL_124;
            }

            if (v110 != 22)
            {
              if (v110 == 2)
              {
                MEMORY[0x1EEE9AC00](v110);
                v278 = v109;
                v111 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v113 = v112;

                goto LABEL_144;
              }

LABEL_112:
              LOBYTE(v282) = 0;
              *&v286 = 0;
              LOBYTE(v284) = 0;
              v285 = 0;
              v114 = __CFStringIsCF();
              if (v114)
              {
                v111 = v286;
                if (!v286)
                {

                  v113 = 0xE000000000000000;
                  goto LABEL_144;
                }

                if (v285 == 1)
                {
                  if (v282)
                  {
                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                  }

                  else
                  {
                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                  }

                  v121 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_142:
                  v111 = v121;
                  v113 = v122;
LABEL_143:

LABEL_144:
                  BYTE8(v295) = 0;
                  BYTE11(v295) = 0;
                  if ((v113 & 0x1000000000000000) != 0)
                  {
                    *&v286 = v111;
                    *(&v286 + 1) = v113;
                    lazy protocol witness table accessor for type String and conformance String();
                    StringProtocol._ephemeralString.getter();
                    v254 = String._bridgeToObjectiveCImpl()();

                    v255 = [v254 _fastCharacterContents];
                    v256 = v254;
                    if (v255)
                    {
                      *&v286 = v111;
                      *(&v286 + 1) = v113;
                      StringProtocol._ephemeralString.getter();
                      v257 = String._bridgeToObjectiveCImpl()();

                      v258 = [v257 length];
                      swift_unknownObjectRelease();
                      v259 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v255, v258, 2u, 1);
                    }

                    else
                    {
                      v259 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v111, v113, 2u, 1);
                    }

                    v41 = v281;
                    if ((v259 & 1) == 0)
                    {
LABEL_323:
                      LODWORD(v279) = 0;
                      v266 = 935;
LABEL_342:
                      v278 = v266;
                      goto LABEL_343;
                    }
                  }

                  else
                  {
                    if ((v113 & 0x2000000000000000) != 0)
                    {
                      v129 = HIBYTE(v113) & 0xF;
                      *&v286 = v111;
                      *(&v286 + 1) = v113 & 0xFFFFFFFFFFFFFFLL;
                      v128 = &v286;
                    }

                    else if ((v111 & 0x1000000000000000) != 0)
                    {
                      v128 = ((v113 & 0xFFFFFFFFFFFFFFFLL) + 32);
                      v129 = v111 & 0xFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v128 = _StringObject.sharedUTF8.getter();
                    }

                    if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v128, v129, 2u, 1))
                    {
                      goto LABEL_323;
                    }
                  }

                  goto LABEL_150;
                }

                if (v284)
                {
                  if (v282 == 1)
                  {
                    MEMORY[0x1EEE9AC00](v114);
                    v276 = v109;
                    v277 = &v286;
                    LODWORD(v278) = 1536;
                    v279 = v111;
                  }

                  else
                  {
                    v123 = [v109 lengthOfBytesUsingEncoding_];
                    MEMORY[0x1EEE9AC00](v123);
                    v276 = v109;
                    v277 = &v286;
                    LODWORD(v278) = 134217984;
                    v279 = v124;
                  }

                  v125 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v113 = v126;
                  v127 = HIBYTE(v126) & 0xF;
                  if ((v126 & 0x2000000000000000) == 0)
                  {
                    v127 = v125 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v127)
                  {
                    v111 = v125;
                    goto LABEL_126;
                  }
                }
              }

              else
              {
                v115 = v109;
                v116 = String.init(_nativeStorage:)();
                if (v117)
                {
                  v111 = v116;
                  v113 = v117;

                  goto LABEL_144;
                }

                *&v286 = [v115 length];
                if (!v286)
                {

                  v111 = 0;
                  v113 = 0xE000000000000000;
                  goto LABEL_144;
                }
              }

              v121 = String.init(_cocoaString:)();
              goto LABEL_142;
            }

            v118 = [v109 UTF8String];
            if (!v118)
            {
              goto LABEL_336;
            }

            v119 = String.init(utf8String:)(v118);
            if (!v120)
            {
              __break(1u);
LABEL_124:
              v284 = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v119 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v120)
              {
                [v109 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v111 = v282;
                v113 = v283;
                goto LABEL_143;
              }
            }

            v111 = v119;
            v113 = v120;
LABEL_126:

            goto LABEL_143;
          }

          v111 = 0;
          v113 = 0;
          BYTE8(v295) = 0;
          BYTE11(v295) = 0;
LABEL_150:

          *&v296[40] = v111;
          *&v296[48] = v113;
          v130 = [v41 encodedHost];
          if (!v130)
          {
            BYTE8(v295) = 0;
            BYTE12(v295) = 0;
            WORD4(v297[3]) = 0;

            *&v296[56] = 0;
            *&v296[64] = 0;
            goto LABEL_192;
          }

          v131 = v130;
          v132 = _objc_isTaggedPointer(v130);
          v133 = v131;
          v134 = v133;
          if (!v132)
          {
            goto LABEL_156;
          }

          v135 = _objc_getTaggedPointerTag(v133);
          switch(v135)
          {
            case 0:
              goto LABEL_169;
            case 0x16:
              v144 = [v134 UTF8String];
              if (!v144)
              {
                goto LABEL_337;
              }

              v145 = String.init(utf8String:)(v144);
              if (v146)
              {
                goto LABEL_170;
              }

              __break(1u);
LABEL_169:
              v284 = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v145 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (v146)
              {
LABEL_170:
                v136 = v145;
                v138 = v146;
                goto LABEL_171;
              }

              [v134 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v136 = v282;
              v138 = v283;
LABEL_188:

              break;
            case 2:
              MEMORY[0x1EEE9AC00](v135);
              v278 = v134;
              v136 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v138 = v137;

              break;
            default:
LABEL_156:
              LOBYTE(v282) = 0;
              *&v286 = 0;
              LOBYTE(v284) = 0;
              v285 = 0;
              v139 = __CFStringIsCF();
              if (v139)
              {
                v140 = v286;
                if (v286)
                {
                  if (v285 == 1)
                  {
                    if (v282)
                    {
                      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                    }

                    else
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    }

                    v147 = String.init<A>(_immortalCocoaString:count:encoding:)();
                  }

                  else
                  {
                    if (v284)
                    {
                      if (v282 == 1)
                      {
                        MEMORY[0x1EEE9AC00](v139);
                        v276 = v134;
                        v277 = &v286;
                        LODWORD(v278) = 1536;
                        v279 = v140;
                      }

                      else
                      {
                        v149 = [v134 lengthOfBytesUsingEncoding_];
                        MEMORY[0x1EEE9AC00](v149);
                        v276 = v134;
                        v277 = &v286;
                        LODWORD(v278) = 134217984;
                        v279 = v150;
                      }

                      v151 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v138 = v152;
                      v153 = HIBYTE(v152) & 0xF;
                      if ((v152 & 0x2000000000000000) == 0)
                      {
                        v153 = v151 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v153)
                      {
                        v136 = v151;
LABEL_171:

                        goto LABEL_188;
                      }
                    }

LABEL_186:
                    v147 = String.init(_cocoaString:)();
                  }

                  v136 = v147;
                  v138 = v148;
                  goto LABEL_188;
                }

                goto LABEL_165;
              }

              v141 = v134;
              v142 = String.init(_nativeStorage:)();
              if (!v143)
              {
                *&v286 = [v141 length];
                if (v286)
                {
                  goto LABEL_186;
                }

LABEL_165:
                v136 = 0;
                v138 = 0xE000000000000000;
                break;
              }

              v136 = v142;
              v138 = v143;

              break;
          }

          BYTE8(v295) = 0;
          BYTE12(v295) = 0;
          BYTE9(v297[3]) = 0;
          if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v136, v138))
          {
            if ((_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v136, v138) & 1) == 0)
            {
              goto LABEL_213;
            }
          }

          else if ((v138 & 0x1000000000000000) != 0)
          {
            *&v286 = v136;
            *(&v286 + 1) = v138;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol._ephemeralString.getter();
            v260 = String._bridgeToObjectiveCImpl()();

            v261 = [v260 _fastCharacterContents];
            v262 = v260;
            if (v261)
            {
              *&v286 = v136;
              *(&v286 + 1) = v138;
              StringProtocol._ephemeralString.getter();
              v263 = String._bridgeToObjectiveCImpl()();

              v264 = [v263 length];
              swift_unknownObjectRelease();
              v265 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v261, v264, 4u, 1);
            }

            else
            {
              v265 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v136, v138, 4u, 1);
            }

            v41 = v281;
            if ((v265 & 1) == 0)
            {
LABEL_213:
              LODWORD(v279) = 0;
              v159 = 980;
              goto LABEL_305;
            }
          }

          else
          {
            if ((v138 & 0x2000000000000000) != 0)
            {
              v171 = HIBYTE(v138) & 0xF;
              *&v286 = v136;
              *(&v286 + 1) = v138 & 0xFFFFFFFFFFFFFFLL;
              v170 = &v286;
            }

            else if ((v136 & 0x1000000000000000) != 0)
            {
              v170 = ((v138 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v171 = v136 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v170 = _StringObject.sharedUTF8.getter();
            }

            if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v170, v171, 4u, 1))
            {
              goto LABEL_213;
            }
          }

          *&v296[56] = v136;
          *&v296[64] = v138;
          LOBYTE(v286) = 37;
          MEMORY[0x1EEE9AC00](v154);
          v278 = &v286;
          v155 = specialized Sequence.contains(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, &v276, v136, v138);

          BYTE8(v297[3]) = v155 & 1;
LABEL_192:
          v156 = [v41 port];
          v157 = v156;
          if (v156)
          {
            v158 = [v156 integerValue];

            BYTE8(v295) = 0;
            BYTE13(v295) = 0;
            if ((v158 & 0x8000000000000000) != 0)
            {
              LODWORD(v279) = 0;
              v159 = 868;
              goto LABEL_305;
            }
          }

          else
          {
            v158 = 0;
            BYTE8(v295) = 0;
            BYTE13(v295) = 0;
          }

          *&v296[72] = v158;
          LOBYTE(v297[0]) = v157 == 0;
          v160 = [v41 percentEncodedPath];
          if (!v160)
          {
            goto LABEL_228;
          }

          v161 = v160;
          v162 = _objc_isTaggedPointer(v160);
          v163 = v161;
          v164 = v163;
          if (!v162)
          {
            goto LABEL_202;
          }

          v165 = _objc_getTaggedPointerTag(v163);
          if (!v165)
          {
            goto LABEL_220;
          }

          if (v165 != 22)
          {
            if (v165 == 2)
            {
              MEMORY[0x1EEE9AC00](v165);
              v278 = v164;
              v166 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v168 = v167;

              goto LABEL_241;
            }

LABEL_202:
            LOBYTE(v282) = 0;
            *&v286 = 0;
            LOBYTE(v284) = 0;
            v285 = 0;
            v169 = __CFStringIsCF();
            if (!v169)
            {
              v172 = v164;
              v173 = String.init(_nativeStorage:)();
              if (v174)
              {
                v166 = v173;
                v168 = v174;

                goto LABEL_241;
              }

              *&v286 = [v172 length];
              if (!v286)
              {

LABEL_228:
                v166 = 0;
                v168 = 0xE000000000000000;
                goto LABEL_241;
              }

LABEL_238:
              v178 = String.init(_cocoaString:)();
LABEL_239:
              v166 = v178;
              v168 = v179;
              goto LABEL_240;
            }

            v166 = v286;
            if (!v286)
            {

              v168 = 0xE000000000000000;
              goto LABEL_241;
            }

            if (v285 == 1)
            {
              if (v282)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v178 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_239;
            }

            if ((v284 & 1) == 0)
            {
              goto LABEL_238;
            }

            if (v282 == 1)
            {
              MEMORY[0x1EEE9AC00](v169);
              v276 = v164;
              v277 = &v286;
              LODWORD(v278) = 1536;
              v279 = v166;
            }

            else
            {
              v180 = [v164 lengthOfBytesUsingEncoding_];
              MEMORY[0x1EEE9AC00](v180);
              v276 = v164;
              v277 = &v286;
              LODWORD(v278) = 134217984;
              v279 = v181;
            }

            v182 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v168 = v183;
            v184 = HIBYTE(v183) & 0xF;
            if ((v183 & 0x2000000000000000) == 0)
            {
              v184 = v182 & 0xFFFFFFFFFFFFLL;
            }

            if (!v184)
            {

              goto LABEL_238;
            }

            v166 = v182;
            goto LABEL_222;
          }

          v175 = [v164 UTF8String];
          if (!v175)
          {
            goto LABEL_338;
          }

          v176 = String.init(utf8String:)(v175);
          if (!v177)
          {
            __break(1u);
LABEL_220:
            v284 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v176 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v177)
            {
              [v164 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v166 = v282;
              v168 = v283;
              goto LABEL_240;
            }
          }

          v166 = v176;
          v168 = v177;
LABEL_222:

LABEL_240:
LABEL_241:
          BYTE8(v295) = 0;
          BYTE14(v295) = 0;
          v185 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(v166, v168, 16, 1);
          if (v185 == 2)
          {
            *&v286 = v166;
            *(&v286 + 1) = v168;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol._ephemeralString.getter();
            v186 = String._bridgeToObjectiveCImpl()();

            v187 = [v186 _fastCharacterContents];
            v188 = v186;
            if (!v187)
            {
              v201 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v166, v168, 0x10u, 1);
              v41 = v281;
              if ((v201 & 1) == 0)
              {
LABEL_258:
                LODWORD(v279) = 0;
                v202 = 1001;
LABEL_320:
                v278 = v202;
                goto LABEL_343;
              }

              goto LABEL_245;
            }

            *&v286 = v166;
            *(&v286 + 1) = v168;
            StringProtocol._ephemeralString.getter();
            v189 = String._bridgeToObjectiveCImpl()();

            v190 = [v189 length];
            swift_unknownObjectRelease();
            v185 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v187, v190, 0x10u, 1);
            v41 = v281;
          }

          if ((v185 & 1) == 0)
          {
            goto LABEL_258;
          }

LABEL_245:

          *(&v297[0] + 1) = v166;
          *&v297[1] = v168;
          v191 = [v41 percentEncodedQuery];
          if (!v191)
          {
            v197 = 0;
            v199 = 0;
            BYTE8(v295) = 0;
            HIBYTE(v295) = 0;
            goto LABEL_290;
          }

          v192 = v191;
          v193 = _objc_isTaggedPointer(v191);
          v194 = v192;
          v195 = v194;
          if (!v193)
          {
            goto LABEL_251;
          }

          v196 = _objc_getTaggedPointerTag(v194);
          if (!v196)
          {
            goto LABEL_265;
          }

          if (v196 != 22)
          {
            if (v196 == 2)
            {
              MEMORY[0x1EEE9AC00](v196);
              v278 = v195;
              v197 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v199 = v198;

              goto LABEL_285;
            }

LABEL_251:
            LOBYTE(v282) = 0;
            *&v286 = 0;
            LOBYTE(v284) = 0;
            v285 = 0;
            v200 = __CFStringIsCF();
            if (v200)
            {
              v197 = v286;
              if (!v286)
              {

                v199 = 0xE000000000000000;
                goto LABEL_285;
              }

              if (v285 == 1)
              {
                if (v282)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                v209 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_283:
                v197 = v209;
                v199 = v210;
LABEL_284:

LABEL_285:
                BYTE8(v295) = 0;
                HIBYTE(v295) = 0;
                v216 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(v197, v199, 64, 1);
                if (v216 == 2)
                {
                  *&v286 = v197;
                  *(&v286 + 1) = v199;
                  lazy protocol witness table accessor for type String and conformance String();
                  StringProtocol._ephemeralString.getter();
                  v217 = String._bridgeToObjectiveCImpl()();

                  v218 = [v217 _fastCharacterContents];
                  v219 = v217;
                  if (v218)
                  {
                    *&v286 = v197;
                    *(&v286 + 1) = v199;
                    StringProtocol._ephemeralString.getter();
                    v220 = String._bridgeToObjectiveCImpl()();

                    v221 = [v220 length];
                    swift_unknownObjectRelease();
                    v222 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v218, v221, 0x40u, 1);
                    v41 = v281;
                    if (!v222)
                    {
LABEL_301:
                      LODWORD(v279) = 0;
                      v278 = 1022;
                      goto LABEL_343;
                    }
                  }

                  else
                  {
                    v239 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v197, v199, 0x40u, 1);
                    v41 = v281;
                    if ((v239 & 1) == 0)
                    {
                      goto LABEL_301;
                    }
                  }
                }

                else if ((v216 & 1) == 0)
                {
                  goto LABEL_301;
                }

LABEL_290:

                *(&v297[1] + 1) = v197;
                *&v297[2] = v199;
                v223 = [v41 percentEncodedFragment];
                if (v223)
                {
                  v224 = v223;
                  v225 = static String._unconditionallyBridgeFromObjectiveC(_:)(v223);
                  v227 = v226;

                  BYTE8(v295) = 0;
                  v296[0] = 0;
                  v228 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(v225, v227, 64, 1);
                  if (v228 != 2)
                  {
                    goto LABEL_294;
                  }

                  *&v286 = v225;
                  *(&v286 + 1) = v227;
                  lazy protocol witness table accessor for type String and conformance String();
                  StringProtocol._ephemeralString.getter();
                  v229 = String._bridgeToObjectiveCImpl()();

                  v230 = [v229 _fastCharacterContents];
                  v231 = v229;
                  if (v230)
                  {
                    *&v286 = v225;
                    *(&v286 + 1) = v227;
                    StringProtocol._ephemeralString.getter();
                    v232 = String._bridgeToObjectiveCImpl()();

                    v233 = [v232 length];
                    swift_unknownObjectRelease();
                    v228 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v230, v233, 0x40u, 1);
LABEL_294:
                    if ((v228 & 1) == 0)
                    {
LABEL_341:
                      LODWORD(v279) = 0;
                      v266 = 1043;
                      goto LABEL_342;
                    }
                  }

                  else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v225, v227, 0x40u, 1) & 1) == 0)
                  {
                    goto LABEL_341;
                  }
                }

                else
                {
                  v225 = 0;
                  v227 = 0;
                  BYTE8(v295) = 0;
                  v296[0] = 0;
                }

                *(&v297[2] + 1) = v225;
                *&v297[3] = v227;
                v292 = v297[0];
                v293 = v297[1];
                v288 = *&v296[16];
                v289 = *&v296[32];
                v290 = *&v296[48];
                v291 = *&v296[64];
                v286 = v295;
                v287 = *v296;
                v294[0] = v297[2];
                *(v294 + 10) = *(&v297[2] + 10);
                _NSBundleDeallocatingImmortalBundle(&v286, v234);
                v235 = v293;
                a2[6] = v292;
                a2[7] = v235;
                a2[8] = v294[0];
                *(a2 + 138) = *(v294 + 10);
                v236 = v289;
                a2[2] = v288;
                a2[3] = v236;
                v237 = v291;
                a2[4] = v290;
                a2[5] = v237;
                v19 = v286;
                v20 = v287;
                goto LABEL_299;
              }

              if (v284)
              {
                if (v282 == 1)
                {
                  MEMORY[0x1EEE9AC00](v200);
                  v276 = v195;
                  v277 = &v286;
                  LODWORD(v278) = 1536;
                  v279 = v197;
                }

                else
                {
                  v211 = [v195 lengthOfBytesUsingEncoding_];
                  MEMORY[0x1EEE9AC00](v211);
                  v276 = v195;
                  v277 = &v286;
                  LODWORD(v278) = 134217984;
                  v279 = v212;
                }

                v213 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v199 = v214;
                v215 = HIBYTE(v214) & 0xF;
                if ((v214 & 0x2000000000000000) == 0)
                {
                  v215 = v213 & 0xFFFFFFFFFFFFLL;
                }

                if (v215)
                {
                  v197 = v213;
                  goto LABEL_267;
                }
              }
            }

            else
            {
              v203 = v195;
              v204 = String.init(_nativeStorage:)();
              if (v205)
              {
                v197 = v204;
                v199 = v205;

                goto LABEL_285;
              }

              *&v286 = [v203 length];
              if (!v286)
              {

                v197 = 0;
                v199 = 0xE000000000000000;
                goto LABEL_285;
              }
            }

            v209 = String.init(_cocoaString:)();
            goto LABEL_283;
          }

          v206 = [v195 UTF8String];
          if (v206)
          {
            v207 = String.init(utf8String:)(v206);
            if (!v208)
            {
              __break(1u);
LABEL_265:
              v284 = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v207 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v208)
              {
                [v195 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v197 = v282;
                v199 = v283;
                goto LABEL_284;
              }
            }

            v197 = v207;
            v199 = v208;
LABEL_267:

            goto LABEL_284;
          }

LABEL_339:
          __break(1u);
LABEL_340:
          swift_once();
LABEL_332:
          if (byte_1ED436DC0 != 1)
          {
            goto LABEL_344;
          }

          v46 = 0;
          v79 = 0;
LABEL_59:
          swift_bridgeObjectRelease_n();

          v45 = v79;
LABEL_60:
          v41 = v281;
        }

        __break(1u);
LABEL_80:
        v284 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v94 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v95)
        {
          [v84 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v86 = v282;
          v88 = v283;
          goto LABEL_99;
        }

        goto LABEL_81;
      }
    }
  }

  LODWORD(v279) = 0;
  v159 = 813;
LABEL_305:
  v278 = v159;
LABEL_343:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_344:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}

void static URLComponents._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v24 = 0uLL;
    v25[0] = 0;
    memset(&v25[8], 0, 72);
    LOBYTE(v26[0]) = 1;
    memset(v26 + 8, 0, 50);
    _NSBundleDeallocatingImmortalBundle(&v24, a2);
    v21 = v26[0];
    v22 = v26[1];
    v23[0] = v26[2];
    *(v23 + 10) = *(&v26[2] + 10);
    v17 = *&v25[16];
    v18 = *&v25[32];
    v19 = *&v25[48];
    v20 = *&v25[64];
    v15 = v24;
    v16 = *v25;
    v5 = a1;
    static URLComponents._conditionallyBridgeFromObjectiveC(_:result:)(v5, &v15);
    v33 = v21;
    v34 = v22;
    v35[0] = v23[0];
    *(v35 + 10) = *(v23 + 10);
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v27 = v15;
    v28 = v16;
    if (_s10Foundation13URLComponentsV01_B0VSgWOg(&v27) == 1)
    {
      __break(1u);
    }

    else
    {
      v11[6] = v21;
      v11[7] = v22;
      v12[0] = v23[0];
      *(v12 + 10) = *(v23 + 10);
      v11[2] = v17;
      v11[3] = v18;
      v11[4] = v19;
      v11[5] = v20;
      v11[0] = v15;
      v11[1] = v16;
      v13[6] = v21;
      v13[7] = v22;
      v14[0] = v23[0];
      *(v14 + 10) = *(v23 + 10);
      v13[2] = v17;
      v13[3] = v18;
      v13[4] = v19;
      v13[5] = v20;
      v13[0] = v15;
      v13[1] = v16;
      outlined init with copy of URLComponents(v13, &v10);
      outlined destroy of TermOfAddress?(v11, &_s10Foundation13URLComponentsVSgMd);

      v6 = v34;
      *(a3 + 96) = v33;
      *(a3 + 112) = v6;
      *(a3 + 128) = v35[0];
      *(a3 + 138) = *(v35 + 10);
      v7 = v30;
      *(a3 + 32) = v29;
      *(a3 + 48) = v7;
      v8 = v32;
      *(a3 + 64) = v31;
      *(a3 + 80) = v8;
      v9 = v28;
      *a3 = v27;
      *(a3 + 16) = v9;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0;
    *(a3 + 96) = 1;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 152) = 0;
  }
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance URLComponents()
{
  v1 = v0[7];
  v21 = v0[6];
  v22 = v1;
  v23[0] = v0[8];
  *(v23 + 10) = *(v0 + 138);
  v2 = v0[3];
  v17 = v0[2];
  v18 = v2;
  v3 = v0[5];
  v19 = v0[4];
  v20 = v3;
  v4 = v0[1];
  v15 = *v0;
  v16 = v4;
  v5 = type metadata accessor for _NSSwiftURLComponents();
  v6 = objc_allocWithZone(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation13URLComponentsVSo16os_unfair_lock_sVGMd);
  v7 = swift_allocObject();
  *(v7 + 172) = 0;
  v8 = v22;
  *(v7 + 112) = v21;
  *(v7 + 128) = v8;
  *(v7 + 144) = v23[0];
  *(v7 + 154) = *(v23 + 10);
  v9 = v18;
  *(v7 + 48) = v17;
  *(v7 + 64) = v9;
  v10 = v20;
  *(v7 + 80) = v19;
  *(v7 + 96) = v10;
  v11 = v16;
  *(v7 + 16) = v15;
  *(v7 + 32) = v11;
  *&v6[OBJC_IVAR____NSSwiftURLComponents_lock] = v7;
  outlined init with copy of URLComponents(&v15, v14);
  v13.receiver = v6;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t NSURLComponents._toCustomAnyHashable()(uint64_t a1, uint64_t a2)
{
  v20 = 0uLL;
  v21[0] = 0;
  memset(&v21[8], 0, 72);
  LOBYTE(v22[0]) = 1;
  memset(v22 + 8, 0, 50);
  _NSBundleDeallocatingImmortalBundle(&v20, a2);
  v17 = v22[0];
  v18 = v22[1];
  v19[0] = v22[2];
  *(v19 + 10) = *(&v22[2] + 10);
  v13 = *&v21[16];
  v14 = *&v21[32];
  v15 = *&v21[48];
  v16 = *&v21[64];
  v11 = v20;
  v12 = *v21;
  v3 = v2;
  static URLComponents._conditionallyBridgeFromObjectiveC(_:result:)(v3, &v11);
  v29 = v17;
  v30 = v18;
  v31[0] = v19[0];
  *(v31 + 10) = *(v19 + 10);
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v23 = v11;
  v24 = v12;
  result = _s10Foundation13URLComponentsV01_B0VSgWOg(&v23);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7[6] = v17;
    v7[7] = v18;
    v8[0] = v19[0];
    *(v8 + 10) = *(v19 + 10);
    v7[2] = v13;
    v7[3] = v14;
    v7[4] = v15;
    v7[5] = v16;
    v7[0] = v11;
    v7[1] = v12;
    v9[6] = v17;
    v9[7] = v18;
    v10[0] = v19[0];
    *(v10 + 10) = *(v19 + 10);
    v9[2] = v13;
    v9[3] = v14;
    v9[4] = v15;
    v9[5] = v16;
    v9[0] = v11;
    v9[1] = v12;
    outlined init with copy of URLComponents(v9, v5);
    outlined destroy of TermOfAddress?(v7, &_s10Foundation13URLComponentsVSgMd);

    v5[6] = v29;
    v5[7] = v30;
    v6[0] = v31[0];
    *(v6 + 10) = *(v31 + 10);
    v5[2] = v25;
    v5[3] = v26;
    v5[4] = v27;
    v5[5] = v28;
    v5[0] = v23;
    v5[1] = v24;
    lazy protocol witness table accessor for type URLComponents and conformance URLComponents();
    return AnyHashable.init<A>(_:)();
  }

  return result;
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLComponents(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  NSURLComponents._toCustomAnyHashable()(*v2, a2);
}

uint64_t URLQueryItem.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t URLQueryItem.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void URLQueryItem.hash(into:)()
{
  v1 = *(v0 + 24);
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t static URLQueryItem.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    result = (v3 | v5) == 0;
    if (v3 && v5 != 0)
    {
      if (v2 == v4 && v3 == v5)
      {
        return 1;
      }

      else
      {

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

  return result;
}

Swift::Int URLQueryItem.hashValue.getter()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URLQueryItem()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance URLQueryItem()
{
  v1 = *(v0 + 24);
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URLQueryItem()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance URLQueryItem(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    result = (v3 | v5) == 0;
    if (v3 && v5 != 0)
    {
      if (v2 == v4 && v3 == v5)
      {
        return 1;
      }

      else
      {

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

  return result;
}

uint64_t URLQueryItem.description.getter()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    v5 = *v0;

    MEMORY[0x1865CB0E0](61, 0xE100000000000000);
    MEMORY[0x1865CB0E0](v3, v2);
    return v5;
  }

  else
  {
  }

  return v1;
}

uint64_t URLQueryItem.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v17 - v6;
  v9 = *v0;
  v8 = v0[1];
  v11 = v0[2];
  v10 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSg5label_yp5valuetGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_181215ED0;
  *(v12 + 32) = xmmword_1812DB9E0;
  *(v12 + 72) = MEMORY[0x1E69E6158];
  *(v12 + 48) = v9;
  *(v12 + 56) = v8;
  *(v12 + 80) = xmmword_18121BFD0;
  *(v12 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  *(v12 + 96) = v11;
  *(v12 + 104) = v10;
  v17[2] = v9;
  v17[3] = v8;
  v17[4] = v11;
  v17[5] = v10;
  v17[1] = v12;
  v13 = *MEMORY[0x1E69E75B8];
  v14 = type metadata accessor for Mirror.DisplayStyle();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v7, v13, v14);
  (*(v15 + 56))(v7, 0, 1, v14);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [(label: String?, value: Any)] and conformance [A], &_sSaySSSg5label_yp5valuetGMd);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

NSURLQueryItem __swiftcall URLQueryItem._bridgeToObjectiveC()()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for _NSSwiftURLQueryItem();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____NSSwiftURLQueryItem_queryItem];
  *v7 = v1;
  *(v7 + 1) = v2;
  *(v7 + 2) = v4;
  *(v7 + 3) = v3;
  v8 = String._bridgeToObjectiveCImpl()();
  if (v3)
  {
    v9 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v9 = 0;
  }

  v14.receiver = v6;
  v14.super_class = v5;

  v10 = objc_msgSendSuper2(&v14, sel_initWithName_value_, v8, v9);
  swift_unknownObjectRelease();

  v13 = v10;
  result._value = v12;
  result._name = v11;
  result.super.isa = v13;
  return result;
}

void static URLQueryItem._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    __break(1u);
  }

  v4 = [a1 name];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  isTaggedPointer = _objc_isTaggedPointer(v4);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
LABEL_8:
    LOBYTE(v36) = 0;
    if (__CFStringIsCF())
    {
      v10 = 0;

      v12 = 0xE000000000000000;
      goto LABEL_23;
    }

    v13 = v8;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v10 = v14;
      v12 = v15;

      goto LABEL_23;
    }

    if (![v13 length])
    {

LABEL_19:
      v10 = 0;
      v12 = 0xE000000000000000;
      goto LABEL_23;
    }

    v10 = String.init(_cocoaString:)();
    v12 = v19;
LABEL_22:

    goto LABEL_23;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    goto LABEL_15;
  }

  if (TaggedPointerTag == 22)
  {
    v16 = [v8 UTF8String];
    if (!v16)
    {
      __break(1u);
      goto LABEL_48;
    }

    v17 = String.init(utf8String:)(v16);
    if (v18)
    {
LABEL_16:
      v10 = v17;
      v12 = v18;

      goto LABEL_22;
    }

    __break(1u);
LABEL_15:
    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v10 = v36;
      v12 = v38;
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_8;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v12 = v11;

LABEL_23:
  v20 = [a1 value];
  if (!v20)
  {
    v26 = 0;
    v28 = 0;
    goto LABEL_45;
  }

  v21 = v20;
  v22 = _objc_isTaggedPointer(v20);
  v23 = v21;
  v24 = v23;
  if (!v22)
  {
    goto LABEL_29;
  }

  v25 = _objc_getTaggedPointerTag(v23);
  if (!v25)
  {
    goto LABEL_38;
  }

  if (v25 != 22)
  {
    if (v25 == 2)
    {
      MEMORY[0x1EEE9AC00](v25);
      v26 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v28 = v27;

LABEL_45:
      *a2 = v10;
      a2[1] = v12;
      a2[2] = v26;
      a2[3] = v28;
      return;
    }

LABEL_29:
    if (__CFStringIsCF())
    {

LABEL_34:
      v26 = 0;
      v28 = 0xE000000000000000;
      goto LABEL_45;
    }

    v29 = v24;
    v30 = String.init(_nativeStorage:)();
    if (v31)
    {
      v26 = v30;
      v28 = v31;

      goto LABEL_45;
    }

    if (![v29 length])
    {

      goto LABEL_34;
    }

    v26 = String.init(_cocoaString:)();
    v28 = v35;
LABEL_44:

    goto LABEL_45;
  }

  v32 = [v24 UTF8String];
  if (v32)
  {
    v33 = String.init(utf8String:)(v32);
    if (v34)
    {
LABEL_39:
      v26 = v33;
      v28 = v34;

      goto LABEL_44;
    }

    __break(1u);
LABEL_38:
    _CFIndirectTaggedPointerStringGetContents();
    v33 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v34)
    {
      [v24 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v26 = v37;
      v28 = v38;
      goto LABEL_44;
    }

    goto LABEL_39;
  }

LABEL_48:
  __break(1u);
}

uint64_t NSURLQueryItem._toCustomAnyHashable()()
{
  static URLQueryItem._unconditionallyBridgeFromObjectiveC(_:)(v0, &v2);
  lazy protocol witness table accessor for type URLQueryItem and conformance URLQueryItem();
  return AnyHashable.init<A>(_:)();
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLQueryItem()
{
  v1 = *v0;
  static URLQueryItem._unconditionallyBridgeFromObjectiveC(_:)(v1, &v2);
  lazy protocol witness table accessor for type URLQueryItem and conformance URLQueryItem();
  AnyHashable.init<A>(_:)();
}

unint64_t protocol witness for CodingKey.init(intValue:) in conformance URLComponents.CodingKeys@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Duration.UnitsFormatStyle.Unit._Unit.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URLComponents.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URLComponents.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t URLComponents.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v169 = a2;
  v178 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation13URLComponentsV10CodingKeys33_B5B4F7D37EB01AEFDA851AD2BCAB8395LLOGMd);
  v170 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v167 - v5);
  v175 = 0uLL;
  LOBYTE(v176[0]) = 0;
  *(v176 + 8) = 0u;
  *(&v176[1] + 8) = 0u;
  *(&v176[2] + 8) = 0u;
  *(&v176[3] + 8) = 0u;
  *(&v176[4] + 1) = 0;
  LOBYTE(v177[0]) = 1;
  *(v177 + 8) = 0u;
  *(&v177[1] + 8) = 0u;
  *(&v177[2] + 8) = 0u;
  WORD4(v177[3]) = 0;
  v7 = a1[3];
  v171 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v7);
  lazy protocol witness table accessor for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v173[6] = v177[0];
    v173[7] = v177[1];
    v174[0] = v177[2];
    *(v174 + 10) = *(&v177[2] + 10);
    v173[2] = v176[1];
    v173[3] = v176[2];
    v173[4] = v176[3];
    v173[5] = v176[4];
    v173[0] = v175;
    v173[1] = v176[0];
    outlined destroy of URLComponents(v173);
    return __swift_destroy_boxed_opaque_existential_1(v171);
  }

  v172 = 0;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v8;
  v12 = v9;
  WORD4(v175) = 0;
  if (v9)
  {
    v13 = specialized Collection.first.getter(v8, v9);
    if ((v13 & 0x100) == 0 && v13 >= 0x41u)
    {
      if ((v12 & 0x1000000000000000) != 0)
      {
        v168 = v6;
        *&v173[0] = v11;
        *(&v173[0] + 1) = v12;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol._ephemeralString.getter();
        v62 = String._bridgeToObjectiveCImpl()();

        v63 = [v62 _fastCharacterContents];
        v64 = v62;
        if (v63)
        {
          *&v173[0] = v11;
          *(&v173[0] + 1) = v12;
          StringProtocol._ephemeralString.getter();
          v65 = String._bridgeToObjectiveCImpl()();

          v66 = [v65 length];
          swift_unknownObjectRelease();
          v67 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v63, v66, 1u, 0);
          v6 = v168;
          if (v67)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v68 = specialized Sequence.allSatisfy(_:)(v11, v12, 1);
          v6 = v168;
          if (v68)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        if ((v12 & 0x2000000000000000) != 0)
        {
          v15 = HIBYTE(v12) & 0xF;
          *&v173[0] = v11;
          *(&v173[0] + 1) = v12 & 0xFFFFFFFFFFFFFFLL;
          v14 = v173;
        }

        else if ((v11 & 0x1000000000000000) != 0)
        {
          v14 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v15 = v11 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = _StringObject.sharedUTF8.getter();
        }

        if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v14, v15, 1u, 0))
        {
          goto LABEL_15;
        }
      }
    }

    LODWORD(v166) = 0;
    v165 = 813;
    goto LABEL_167;
  }

LABEL_15:
  *(&v176[0] + 1) = v11;
  *&v176[1] = v12;

  if (!*&v176[4])
  {
    if ((BYTE12(v175) & 1) != 0 && v175 && (*(v175 + 120) & 1) == 0)
    {
      v18 = String.subscript.getter();
      MEMORY[0x1865CAE80](v18);
    }

    else
    {
      URLComponents._URLComponents.port.getter();
      if (v16)
      {
        URLComponents._URLComponents.percentEncodedUser.getter();
        if (!v17)
        {
          goto LABEL_67;
        }
      }
    }
  }

  v19 = BYTE8(v177[3]);
  v20 = URLComponents._URLComponents.encodedHost.getter();
  v22 = v20;
  if (!v21)
  {
    v32 = 0;
LABEL_66:
    URLComponents._URLComponents.host.setter(v22, v32);
LABEL_67:

    v172 = 1;
    v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v79 = v77;
    v80 = v78;
    BYTE8(v175) = 0;
    BYTE10(v175) = 0;
    if (!v78)
    {
      goto LABEL_82;
    }

    if ((v78 & 0x1000000000000000) != 0)
    {
      v168 = v6;
      *&v173[0] = v77;
      *(&v173[0] + 1) = v78;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v139 = String._bridgeToObjectiveCImpl()();

      v140 = [v139 _fastCharacterContents];
      v141 = v139;
      if (v140)
      {
        *&v173[0] = v79;
        *(&v173[0] + 1) = v80;
        StringProtocol._ephemeralString.getter();
        v142 = String._bridgeToObjectiveCImpl()();

        v143 = [v142 length];
        swift_unknownObjectRelease();
        v83 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v140, v143, 2u, 0);
      }

      else
      {
        v83 = specialized Sequence.allSatisfy(_:)(v79, v80, 2);
      }

      v6 = v168;
      if (v83)
      {
        goto LABEL_82;
      }
    }

    else
    {
      if ((v78 & 0x2000000000000000) != 0)
      {
        v82 = HIBYTE(v78) & 0xF;
        *&v173[0] = v77;
        *(&v173[0] + 1) = v80 & 0xFFFFFFFFFFFFFFLL;
        v81 = v173;
      }

      else if ((v77 & 0x1000000000000000) != 0)
      {
        v81 = ((v78 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v82 = v79 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v81 = _StringObject.sharedUTF8.getter();
      }

      v83 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v81, v82, 2u, 0);
      if (v83)
      {
        goto LABEL_82;
      }
    }

    v84 = HIBYTE(v80) & 0xF;
    if ((v80 & 0x2000000000000000) == 0)
    {
      v84 = v79 & 0xFFFFFFFFFFFFLL;
    }

    if (v84)
    {
      v168 = &v167;
      *&v173[0] = v79;
      *(&v173[0] + 1) = v80;
      MEMORY[0x1EEE9AC00](v83);
      v165 = v173;
      LOWORD(v166) = 2;

      v85 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, (&v167 - 4), v79, v80);
      if (v86)
      {
        v87 = v85;
        v88 = v86;
        swift_bridgeObjectRelease_n();
        v79 = v87;
      }

      else
      {
        v79 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v79, v80, 2u, 0);
        v88 = v89;
        swift_bridgeObjectRelease_n();
      }

      v80 = v88;
    }

    else
    {

      v79 = 0;
      v80 = 0xE000000000000000;
    }

LABEL_82:

    *(&v176[1] + 1) = v79;
    *&v176[2] = v80;
    v172 = 2;
    v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v92 = v90;
    v93 = v91;
    BYTE8(v175) = 0;
    BYTE11(v175) = 0;
    if (!v91)
    {
      goto LABEL_97;
    }

    if ((v91 & 0x1000000000000000) != 0)
    {
      v168 = v6;
      *&v173[0] = v90;
      *(&v173[0] + 1) = v91;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v150 = String._bridgeToObjectiveCImpl()();

      v151 = [v150 _fastCharacterContents];
      v152 = v150;
      if (v151)
      {
        *&v173[0] = v92;
        *(&v173[0] + 1) = v93;
        StringProtocol._ephemeralString.getter();
        v153 = String._bridgeToObjectiveCImpl()();

        v154 = [v153 length];
        swift_unknownObjectRelease();
        v96 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v151, v154, 2u, 0);
      }

      else
      {
        v96 = specialized Sequence.allSatisfy(_:)(v92, v93, 2);
      }

      v6 = v168;
      if (v96)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if ((v91 & 0x2000000000000000) != 0)
      {
        v95 = HIBYTE(v91) & 0xF;
        *&v173[0] = v90;
        *(&v173[0] + 1) = v93 & 0xFFFFFFFFFFFFFFLL;
        v94 = v173;
      }

      else if ((v90 & 0x1000000000000000) != 0)
      {
        v94 = ((v91 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v95 = v92 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v94 = _StringObject.sharedUTF8.getter();
      }

      v96 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v94, v95, 2u, 0);
      if (v96)
      {
        goto LABEL_97;
      }
    }

    v97 = HIBYTE(v93) & 0xF;
    if ((v93 & 0x2000000000000000) == 0)
    {
      v97 = v92 & 0xFFFFFFFFFFFFLL;
    }

    if (v97)
    {
      v168 = &v167;
      *&v173[0] = v92;
      *(&v173[0] + 1) = v93;
      MEMORY[0x1EEE9AC00](v96);
      v165 = v173;
      LOWORD(v166) = 2;

      v98 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, (&v167 - 4), v92, v93);
      if (v99)
      {
        v100 = v98;
        v101 = v99;
        swift_bridgeObjectRelease_n();
        v92 = v100;
      }

      else
      {
        v92 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v92, v93, 2u, 0);
        v101 = v102;
        swift_bridgeObjectRelease_n();
      }

      v93 = v101;
    }

    else
    {

      v92 = 0;
      v93 = 0xE000000000000000;
    }

LABEL_97:

    *(&v176[2] + 1) = v92;
    *&v176[3] = v93;
    v172 = 3;
    v103 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    URLComponents._URLComponents.host.setter(v103, v104);
    v172 = 4;
    v105 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    BYTE8(v175) = 0;
    BYTE13(v175) = 0;
    if ((v106 & 1) == 0 && v105 < 0)
    {
      while (1)
      {
        LODWORD(v166) = 0;
        v165 = 868;
LABEL_167:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_168:
        if (swift_stdlib_isStackAllocationSafe())
        {
          __break(1u);
        }

        swift_slowAlloc();
        __break(1u);
      }
    }

    *(&v176[4] + 1) = v105;
    LOBYTE(v177[0]) = v106 & 1;
    v172 = 5;
    v107 = KeyedDecodingContainer.decode(_:forKey:)();
    BYTE8(v175) = 0;
    BYTE14(v175) = 0;
    v109 = HIBYTE(v108) & 0xF;
    if ((v108 & 0x2000000000000000) == 0)
    {
      v109 = v107 & 0xFFFFFFFFFFFFLL;
    }

    if (v109)
    {
      v110 = _s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSS_Tt1g5(v107, v108, 0);
      v112 = v111;
    }

    else
    {

      v110 = 0;
      v112 = 0xE000000000000000;
    }

    *(&v177[0] + 1) = v110;
    *&v177[1] = v112;
    v172 = 6;
    v113 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v115 = v113;
    v116 = v114;
    BYTE8(v175) = 0;
    HIBYTE(v175) = 0;
    if (v114)
    {
      if ((v114 & 0x1000000000000000) != 0)
      {
        v168 = v6;
        *&v173[0] = v113;
        *(&v173[0] + 1) = v114;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol._ephemeralString.getter();
        v155 = String._bridgeToObjectiveCImpl()();

        v156 = [v155 _fastCharacterContents];
        v157 = v155;
        if (v156)
        {
          *&v173[0] = v115;
          *(&v173[0] + 1) = v116;
          StringProtocol._ephemeralString.getter();
          v158 = String._bridgeToObjectiveCImpl()();

          v159 = [v158 length];
          swift_unknownObjectRelease();
          v119 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v156, v159, 0x40u, 0);
        }

        else
        {
          v119 = specialized Sequence.allSatisfy(_:)(v115, v116, 64);
        }

        v6 = v168;
        if (v119)
        {
          goto LABEL_119;
        }
      }

      else
      {
        if ((v114 & 0x2000000000000000) != 0)
        {
          v118 = HIBYTE(v114) & 0xF;
          *&v173[0] = v113;
          *(&v173[0] + 1) = v116 & 0xFFFFFFFFFFFFFFLL;
          v117 = v173;
        }

        else if ((v113 & 0x1000000000000000) != 0)
        {
          v117 = ((v114 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v118 = v115 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v117 = _StringObject.sharedUTF8.getter();
        }

        v119 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v117, v118, 0x40u, 0);
        if (v119)
        {
          goto LABEL_119;
        }
      }

      v120 = HIBYTE(v116) & 0xF;
      if ((v116 & 0x2000000000000000) == 0)
      {
        v120 = v115 & 0xFFFFFFFFFFFFLL;
      }

      if (v120)
      {
        *&v173[0] = v115;
        *(&v173[0] + 1) = v116;
        MEMORY[0x1EEE9AC00](v119);
        v165 = v173;
        LOWORD(v166) = 64;

        v121 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, (&v167 - 4), v115, v116);
        if (v122)
        {
          v123 = v121;
          v124 = v122;
          swift_bridgeObjectRelease_n();
          v115 = v123;
        }

        else
        {
          v115 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v115, v116, 0x40u, 0);
          v124 = v125;
          swift_bridgeObjectRelease_n();
        }

        v116 = v124;
      }

      else
      {

        v115 = 0;
        v116 = 0xE000000000000000;
      }
    }

LABEL_119:

    *(&v177[1] + 1) = v115;
    *&v177[2] = v116;
    v172 = 7;
    v126 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v128 = v126;
    v129 = v127;
    BYTE8(v175) = 0;
    LOBYTE(v176[0]) = 0;
    if (!v127)
    {
      v132 = v170;
LABEL_138:
      v145 = v169;
      (*(v132 + 8))(v6, v4);

      *(&v177[2] + 1) = v128;
      *&v177[3] = v129;
      v146 = v177[1];
      v145[6] = v177[0];
      v145[7] = v146;
      v147 = v176[2];
      v145[2] = v176[1];
      v145[3] = v147;
      v148 = v176[4];
      v145[4] = v176[3];
      v145[5] = v148;
      v149 = v176[0];
      *v145 = v175;
      v145[1] = v149;
      v145[8] = v177[2];
      *(v145 + 138) = *(&v177[2] + 10);
      return __swift_destroy_boxed_opaque_existential_1(v171);
    }

    v168 = v4;
    if ((v127 & 0x1000000000000000) == 0)
    {
      if ((v127 & 0x2000000000000000) != 0)
      {
        v131 = HIBYTE(v127) & 0xF;
        *&v173[0] = v126;
        *(&v173[0] + 1) = v129 & 0xFFFFFFFFFFFFFFLL;
        v130 = v173;
      }

      else if ((v126 & 0x1000000000000000) != 0)
      {
        v130 = ((v127 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v131 = v128 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v130 = _StringObject.sharedUTF8.getter();
      }

      v133 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v130, v131, 0x40u, 0);
      if ((v133 & 1) == 0)
      {
        goto LABEL_127;
      }

LABEL_137:
      v132 = v170;
      v4 = v168;
      goto LABEL_138;
    }

    *&v173[0] = v126;
    *(&v173[0] + 1) = v127;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v160 = String._bridgeToObjectiveCImpl()();

    v161 = [v160 _fastCharacterContents];
    v162 = v160;
    if (v161)
    {
      *&v173[0] = v128;
      *(&v173[0] + 1) = v129;
      StringProtocol._ephemeralString.getter();
      v163 = String._bridgeToObjectiveCImpl()();

      v164 = [v163 length];
      swift_unknownObjectRelease();
      v133 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v161, v164, 0x40u, 0);
      if (v133)
      {
        goto LABEL_137;
      }
    }

    else
    {
      v133 = specialized Sequence.allSatisfy(_:)(v128, v129, 64);
      if (v133)
      {
        goto LABEL_137;
      }
    }

LABEL_127:
    v134 = HIBYTE(v129) & 0xF;
    if ((v129 & 0x2000000000000000) == 0)
    {
      v134 = v128 & 0xFFFFFFFFFFFFLL;
    }

    if (v134)
    {
      *&v173[0] = v128;
      *(&v173[0] + 1) = v129;
      MEMORY[0x1EEE9AC00](v133);
      v165 = v173;
      LOWORD(v166) = 64;

      v135 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, (&v167 - 4), v128, v129);
      if (v136)
      {
        v137 = v135;
        v138 = v136;
        swift_bridgeObjectRelease_n();
        v128 = v137;
      }

      else
      {
        v128 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v128, v129, 0x40u, 0);
        v138 = v144;
        swift_bridgeObjectRelease_n();
      }

      v129 = v138;
    }

    else
    {

      v128 = 0;
      v129 = 0xE000000000000000;
    }

    goto LABEL_137;
  }

  v23 = (v21 >> 56) & 0xF;
  v24 = v20 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = (v21 >> 56) & 0xF;
  }

  else
  {
    v25 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    v22 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_66;
  }

  if (v19)
  {
    v168 = &v167;
    *&v173[0] = v20;
    *(&v173[0] + 1) = v21;
    MEMORY[0x1EEE9AC00](v20);
    v27 = v26;
    v28 = MEMORY[0x1E69E7CD0];
    *(&v167 - 4) = v173;
    *(&v167 - 3) = v28;
    v165 = 4;
    v29 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, (&v167 - 6), v22, v26);
    if (v30 == 1)
    {
      v22 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v22, v27, MEMORY[0x1E69E7CD0], 4);
      v32 = v31;
    }

    else
    {
      v37 = v29;
      v32 = v30;

      v22 = v37;
    }

    goto LABEL_66;
  }

  v168 = v21;
  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v167 = &v167;
      *&v173[0] = v20;
      *(&v173[0] + 1) = v21 & 0xFFFFFFFFFFFFFFLL;
      MEMORY[0x1EEE9AC00](v20);
      MEMORY[0x1EEE9AC00](v38);
      v165 = v173;
      v166 = v23;

      v35 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v173, v23, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, (&v167 - 4), closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v32 = v39;
    }

    else
    {
      if ((v20 & 0x1000000000000000) != 0)
      {
        v33 = (v21 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v20 = _StringObject.sharedUTF8.getter();
        if (!v20)
        {
          v76 = one-time initialization token for idnaTranscoder;

          if (v76 != -1)
          {
            swift_once();
          }

          if ((byte_1ED436DC0 & 1) == 0)
          {
            goto LABEL_168;
          }

          v32 = 0;
          v35 = 0;
          goto LABEL_65;
        }

        v24 = v69;
        v33 = v20;
      }

      v167 = &v167;
      MEMORY[0x1EEE9AC00](v20);
      MEMORY[0x1EEE9AC00](v34);
      v165 = v33;
      v166 = v24;

      v35 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v33, v24, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, (&v167 - 4), closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v32 = v36;
    }

    v40 = v168;
    if (v32 == 1)
    {
      goto LABEL_42;
    }

LABEL_65:
    swift_bridgeObjectRelease_n();
    v22 = v35;
    goto LABEL_66;
  }

  v40 = v168;
LABEL_42:
  *&v173[0] = v22;
  *(&v173[0] + 1) = v40;
  v41 = v40;
  v167 = lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v42 = String._bridgeToObjectiveCImpl()();

  v43 = [v42 _fastCharacterContents];
  v44 = v42;
  v45 = v43;
  v46 = v44;
  if (v45)
  {
    *&v173[0] = v22;
    *(&v173[0] + 1) = v41;
    StringProtocol._ephemeralString.getter();
    v47 = String._bridgeToObjectiveCImpl()();

    v48 = [v47 length];
    v49 = swift_unknownObjectRelease();
    v168 = &v167;
    MEMORY[0x1EEE9AC00](v49);
    MEMORY[0x1EEE9AC00](v50);
    v165 = v45;
    v166 = v48;
    v22 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v45);
    v32 = v51;
    swift_bridgeObjectRelease_n();
    goto LABEL_66;
  }

  *&v173[0] = v22;
  *(&v173[0] + 1) = v41;

  v52 = String.init<A>(_:)();
  v54 = v52;
  v55 = v53;
  if ((v53 & 0x1000000000000000) == 0)
  {
    if ((v53 & 0x2000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_60:
    v167 = &v167;
    *&v173[0] = v54;
    *(&v173[0] + 1) = v55 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v52);
    MEMORY[0x1EEE9AC00](v72);
    v165 = v173;
    v166 = v73;
    v22 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v173, v73, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v74, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v32 = v75;

    swift_bridgeObjectRelease_n();
    goto LABEL_66;
  }

  v54 = static String._copying(_:)();
  v71 = v70;

  v55 = v71;
  if ((v71 & 0x2000000000000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_46:
  if ((v54 & 0x1000000000000000) != 0)
  {
    v56 = (v55 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_48:
    v167 = &v167;
    MEMORY[0x1EEE9AC00](v56);
    MEMORY[0x1EEE9AC00](v57);
    v165 = v58;
    v166 = v59;
    v22 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v58, v59, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v60, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v32 = v61;
LABEL_49:
    swift_bridgeObjectRelease_n();

    goto LABEL_66;
  }

  v56 = _StringObject.sharedUTF8.getter();
  if (v56)
  {
    goto LABEL_48;
  }

  if (one-time initialization token for idnaTranscoder != -1)
  {
    swift_once();
  }

  if (byte_1ED436DC0 == 1)
  {
    v22 = 0;
    v32 = 0;
    goto LABEL_49;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}

uint64_t URLComponents.encode(to:)(void *a1)
{
  v2 = v1;
  v144 = *MEMORY[0x1E69E9840];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation13URLComponentsV10CodingKeys33_B5B4F7D37EB01AEFDA851AD2BCAB8395LLOGMd);
  v95 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v5 = &v89 - v4;
  v6 = *v2;
  v7 = *(v2 + 8);
  v97 = *(v2 + 9);
  v102 = *(v2 + 5);
  v103 = v7;
  v104 = *(v2 + 12);
  v107[0] = *(v2 + 13);
  *(v107 + 7) = *(v2 + 5);
  v8 = v2[3];
  v98 = v2[4];
  v99 = v6;
  v9 = *(v2 + 7);
  v142 = *(v2 + 5);
  v143 = v9;
  v10 = v2[9];
  v11 = v2[10];
  v12 = *(v2 + 11);
  v13 = *(v2 + 13);
  v14 = *(v2 + 17);
  v140 = *(v2 + 15);
  v141 = v14;
  v138 = v12;
  v139 = v13;
  LODWORD(v93) = *(v2 + 152);
  v105 = v93;
  v100 = *(v2 + 153);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URLComponents.CodingKeys and conformance URLComponents.CodingKeys();
  v96 = v5;
  v15 = v99;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v122 = v15;
  v123 = v103;
  v16 = v97;
  v124 = v97;
  v125 = v102;
  v126 = v104;
  *v127 = *(v2 + 13);
  *&v127[7] = *(v2 + 5);
  *&v127[11] = v8;
  *&v127[19] = v98;
  v128 = *(v2 + 5);
  v129 = *(v2 + 7);
  v91 = v10;
  v92 = v11;
  v130 = v10;
  v131 = v11;
  v17 = *(v2 + 11);
  v18 = *(v2 + 13);
  v19 = *(v2 + 15);
  v135 = *(v2 + 17);
  v134 = v19;
  v133 = v18;
  v132 = v17;
  v136 = v93;
  v93 = v8;
  v20 = v98;
  v137 = v100;
  if (!v98 && (v97 & 1) != 0 && v15 && (*(v15 + 48) & 1) == 0)
  {
    v32 = String.subscript.getter();
    MEMORY[0x1865CAE80](v32);
  }

  LOBYTE(v108) = 0;

  v21 = v101;
  v22 = v96;
  v23 = v94;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v23)
  {
    (*(v95 + 8))(v22, v21);
  }

  v112 = v142;
  v113 = v143;
  v116 = v138;
  v117 = v139;
  v118 = v140;
  v108 = v15;
  LOBYTE(v109) = v103;
  BYTE1(v109) = v16;
  WORD1(v109) = v102;
  BYTE4(v109) = v104;
  *(&v109 + 5) = v107[0];
  HIDWORD(v109) = *(v107 + 7);
  v24 = v20;
  v25 = v93;
  v110 = v93;
  v111 = v24;
  v114 = v91;
  v115 = v92;
  v119 = v141;
  v26 = v105;
  v120 = v105;
  v27 = v100;
  v121 = v100;
  URLComponents.user.getter();
  v106 = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

  v112 = v142;
  v113 = v143;
  v116 = v138;
  v117 = v139;
  v118 = v140;
  v108 = v99;
  LOBYTE(v109) = v103;
  BYTE1(v109) = v97;
  WORD1(v109) = v102;
  BYTE4(v109) = v104;
  *(&v109 + 5) = v107[0];
  HIDWORD(v109) = *(v107 + 7);
  v110 = v25;
  v111 = v98;
  v29 = v91;
  v30 = v92;
  v114 = v91;
  v115 = v92;
  v119 = v141;
  v120 = v26;
  v121 = v27;
  URLComponents.password.getter();
  v106 = 2;
  v31 = v101;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v94 = 0;

  if (v30)
  {
    v34 = v29;
    v35 = v30;
    v36 = v99;
  }

  else
  {
    v36 = v99;
    if ((v104 & 1) != 0 && v99 && (*(v99 + 120) & 1) == 0)
    {
      v39 = String.subscript.getter();
      v34 = MEMORY[0x1865CAE80](v39);
      v35 = v40;
    }

    else
    {
      v33 = URLComponents._URLComponents.port.getter();
      if (v37)
      {
        URLComponents._URLComponents.percentEncodedUser.getter();
        if (!v38)
        {
          v46 = v22;
          goto LABEL_58;
        }
      }

      v34 = 0;
      v35 = 0xE000000000000000;
    }
  }

  v41 = v34 & 0xFFFFFFFFFFFFLL;
  if ((v35 & 0x2000000000000000) != 0)
  {
    v42 = HIBYTE(v35) & 0xF;
  }

  else
  {
    v42 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {

    v46 = v96;
    goto LABEL_58;
  }

  if (v105)
  {
    v108 = v34;
    *&v109 = v35;
    MEMORY[0x1EEE9AC00](v30);
    v43 = MEMORY[0x1E69E7CD0];
    *(&v89 - 4) = &v108;
    *(&v89 - 3) = v43;
    *(&v89 - 2) = 4;

    v44 = v94;
    specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, (&v89 - 6), v34, v35);
    v94 = v44;
    if (v45 == 1)
    {
      _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v34, v35, MEMORY[0x1E69E7CD0], 4);
    }

    swift_bridgeObjectRelease_n();
    goto LABEL_29;
  }

  v90 = v35;
  if ((v35 & 0x1000000000000000) == 0)
  {
    if ((v35 & 0x2000000000000000) != 0)
    {
      v108 = v34;
      *&v109 = v35 & 0xFFFFFFFFFFFFFFLL;
      MEMORY[0x1EEE9AC00](v33);
      *(&v89 - 16) = 0;
      MEMORY[0x1EEE9AC00](v52);
      *(&v89 - 2) = &v108;
      *(&v89 - 1) = HIBYTE(v35) & 0xF;

      _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v108, HIBYTE(v35) & 0xF, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, (&v89 - 4), closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v51 = v53;
    }

    else
    {
      if ((v34 & 0x1000000000000000) != 0)
      {
        v47 = (v35 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v33 = _StringObject.sharedUTF8.getter();
        if (!v33)
        {
          v78 = one-time initialization token for idnaTranscoder;

          if (v78 != -1)
          {
            swift_once();
          }

          if ((byte_1ED436DC0 & 1) == 0)
          {
            if (swift_stdlib_isStackAllocationSafe())
            {
              __break(1u);
            }

            swift_slowAlloc();
            __break(1u);
            goto LABEL_71;
          }

          v31 = v101;
          v30 = v92;
          goto LABEL_56;
        }

        v47 = v33;
        v41 = v72;
      }

      MEMORY[0x1EEE9AC00](v33);
      *(&v89 - 16) = 0;
      MEMORY[0x1EEE9AC00](v48);
      *(&v89 - 2) = v47;
      *(&v89 - 1) = v41;
      v49 = v92;

      _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v47, v41, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, (&v89 - 4), closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v51 = v50;
      v30 = v49;
      v31 = v101;
    }

    v54 = v90;
    if (v51 == 1)
    {
      goto LABEL_38;
    }

LABEL_56:
    swift_bridgeObjectRelease_n();
    goto LABEL_57;
  }

  v54 = v90;
LABEL_38:
  v108 = v34;
  *&v109 = v54;
  v55 = v54;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v56 = String._bridgeToObjectiveCImpl()();

  v57 = [v56 _fastCharacterContents];
  v58 = v56;
  if (v57)
  {
    v108 = v34;
    *&v109 = v55;
    StringProtocol._ephemeralString.getter();
    v59 = String._bridgeToObjectiveCImpl()();

    v60 = [v59 length];
    v61 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v61);
    *(&v89 - 16) = 0;
    MEMORY[0x1EEE9AC00](v62);
    *(&v89 - 2) = v57;
    *(&v89 - 1) = v60;
    _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v57);
    swift_bridgeObjectRelease_n();
    v30 = v92;
    v31 = v101;
LABEL_57:
    v46 = v96;
    v36 = v99;
    goto LABEL_58;
  }

  v108 = v34;
  *&v109 = v55;

  v63 = String.init<A>(_:)();
  v65 = v63;
  v66 = v64;
  if ((v64 & 0x1000000000000000) != 0)
  {
    v65 = static String._copying(_:)();
    v74 = v73;

    v66 = v74;
    v36 = v99;
    if ((v74 & 0x2000000000000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_51:
    v108 = v65;
    *&v109 = v66 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v63);
    *(&v89 - 16) = 0;
    MEMORY[0x1EEE9AC00](v75);
    *(&v89 - 2) = &v108;
    *(&v89 - 1) = v76;
    _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v108, v76, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v77, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v30 = v92;
    v31 = v101;

    swift_bridgeObjectRelease_n();
    v46 = v96;
    goto LABEL_58;
  }

  v36 = v99;
  if ((v64 & 0x2000000000000000) != 0)
  {
    goto LABEL_51;
  }

LABEL_42:
  if ((v65 & 0x1000000000000000) != 0)
  {
    v67 = (v66 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_44:
    MEMORY[0x1EEE9AC00](v67);
    *(&v89 - 16) = 0;
    MEMORY[0x1EEE9AC00](v68);
    *(&v89 - 2) = v69;
    *(&v89 - 1) = v70;
    _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v69, v70, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v71, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
LABEL_45:
    swift_bridgeObjectRelease_n();

LABEL_29:
    v31 = v101;
    v46 = v96;
    v30 = v92;
LABEL_58:
    LOBYTE(v108) = 3;
    v79 = v94;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    if (v79 || (, v112 = v142, v113 = v143, v116 = v138, v117 = v139, v118 = v140, v108 = v36, v80 = v103, v81 = v104, LOBYTE(v109) = v103, BYTE1(v109) = v97, v82 = v30, v83 = v102, WORD1(v109) = v102, BYTE4(v109) = v104, *(&v109 + 5) = v107[0], HIDWORD(v109) = *(v107 + 7), v84 = v93, v110 = v93, v111 = v98, v114 = v91, v115 = v82, v119 = v141, LODWORD(v96) = v105, v120 = v105, v121 = v100, URLComponents.port.getter(), v106 = 4, KeyedEncodingContainer.encodeIfPresent(_:forKey:)(), v112 = v142, v113 = v143, v116 = v138, v117 = v139, v118 = v140, v85 = v98, v108 = v99, LOBYTE(v109) = v80, v86 = v97, BYTE1(v109) = v97, WORD1(v109) = v83, BYTE4(v109) = v81, *(&v109 + 5) = v107[0], HIDWORD(v109) = *(v107 + 7), v110 = v84, v111 = v98, v87 = v91, v114 = v91, v115 = v92, v119 = v141, v120 = v96, v121 = v100, v94 = 0, URLComponents.path.getter(), v106 = 5, v88 = v94, KeyedEncodingContainer.encode(_:forKey:)(), v88))
    {
      (*(v95 + 8))(v46, v31);
    }

    else
    {

      URLComponents._URLComponents.query.getter();
      LOBYTE(v108) = 6;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

      v112 = v142;
      v113 = v143;
      v116 = v138;
      v117 = v139;
      v118 = v140;
      v108 = v99;
      LOBYTE(v109) = v103;
      BYTE1(v109) = v86;
      WORD1(v109) = v102;
      BYTE4(v109) = v104;
      *(&v109 + 5) = v107[0];
      HIDWORD(v109) = *(v107 + 7);
      v110 = v93;
      v111 = v85;
      v114 = v87;
      v115 = v92;
      v119 = v141;
      v120 = v105;
      v121 = v100;
      URLComponents.fragment.getter();
      v106 = 7;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      (*(v95 + 8))(v46, v31);
    }
  }

  v67 = _StringObject.sharedUTF8.getter();
  if (v67)
  {
    v36 = v99;
    goto LABEL_44;
  }

  if (one-time initialization token for idnaTranscoder != -1)
  {
    swift_once();
  }

  if (byte_1ED436DC0 == 1)
  {
    v36 = v99;
    goto LABEL_45;
  }

LABEL_71:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}

unint64_t _s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSs_Tt1g5(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v5 = a1 >> 14;
  v6 = a2 >> 14;
  if (a1 >> 14 == a2 >> 14)
  {
    return 0;
  }

  result = specialized Collection<>.firstIndex(of:)(47, a1, a2, a3, a4);
  if (v13)
  {
    v58 = a1;
    v59 = a2;
    v60 = a3;
    v61 = a4;
    MEMORY[0x1EEE9AC00](result);
    v46 = &v58;
    v47 = 32;
    v14 = a5 & 1;
    v48 = v14;

    v15 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(partial apply for specialized closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:), v45, a1, a2, a3, a4);
    v17 = v16;

    if (!v17)
    {

      v18 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(a1, a2, a3, a4, 0x20u, v14);

      return v18;
    }

    return v15;
  }

  if (result >> 14 == v5)
  {
    v58 = a1;
    v59 = a2;
    v60 = a3;
    v61 = a4;
    MEMORY[0x1EEE9AC00](result);
    v46 = &v58;
    v47 = 16;
    v19 = a5 & 1;
    v48 = v19;

    v15 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v45, a1, a2, a3, a4);
    v21 = v20;

    if (!v21)
    {

      v15 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(a1, a2, a3, a4, 0x10u, v19);
    }

    return v15;
  }

  v57 = a5;
  v55 = result >> 14;
  if (result >> 14 < v5)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = Substring.subscript.getter();
  v24 = v23;
  v26 = v25;
  v52 = v27;
  v53 = &v49;
  v58 = v22;
  v59 = v23;
  v60 = v27;
  v61 = v25;
  MEMORY[0x1EEE9AC00](v22);
  v46 = &v58;
  v47 = 32;
  v54 = v57 & 1;
  v48 = v57 & 1;

  v49 = v24;
  v50 = v22;
  v28 = v24;
  v29 = v52;
  v56 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v45, v22, v28, v52, v26);
  v31 = v30;
  v51 = 0;

  if (v31)
  {

    v32 = v54;
  }

  else
  {

    v32 = v54;
    v56 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v50, v49, v29, v26, 0x20u, v54);
    v31 = v33;
    result = swift_bridgeObjectRelease_n();
  }

  if (v6 < v55)
  {
    goto LABEL_20;
  }

  v34 = Substring.subscript.getter();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v58 = v34;
  v59 = v35;
  v60 = v37;
  v61 = v39;
  MEMORY[0x1EEE9AC00](v34);
  *&v45[-16] = &v58;
  v45[-8] = 16;
  v45[-7] = v32;

  v41 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, &v45[-32], v34, v36, v38, v40);
  v43 = v42;

  if (v43)
  {
  }

  else
  {

    v41 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v34, v36, v38, v40, 0x10u, v57 & 1);
    v43 = v44;
    swift_bridgeObjectRelease_n();
  }

  v58 = v56;
  v59 = v31;

  MEMORY[0x1865CB0E0](v41, v43);

  return v58;
}

unint64_t _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA46450LL6buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(unint64_t a1, unint64_t a2, unsigned __int8 a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v16 = specialized Sequence.allSatisfy(_:)(a1, a2, a3);
    return v16 & 1;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v16 = 1;
    return v16 & 1;
  }

  v8 = 0;
  v9 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v17 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v18 = a2 & 0xFFFFFFFFFFFFFFLL;
  v11 = 15;
  while (1)
  {
    v12 = v11 & 0xC;
    result = v11;
    if (v12 == v10)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a1, a2);
    }

    v14 = result >> 16;
    if (result >> 16 >= v7)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      LOBYTE(v14) = result;
      if (v12 == v10)
      {
        goto LABEL_19;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v19[0] = a1;
      v19[1] = v18;
      LOBYTE(v14) = *(v19 + v14);
      if (v12 == v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      result = v17;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
      }

      LOBYTE(v14) = *(result + v14);
      if (v12 == v10)
      {
LABEL_19:
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a1, a2);
        v11 = result;
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
LABEL_20:
      if (v7 <= v11 >> 16)
      {
        goto LABEL_43;
      }

      v11 = String.UTF8View._foreignIndex(after:)();
      LODWORD(v14) = v14;
      if (v14 < 0)
      {
LABEL_38:
        v16 = 0;
        return v16 & 1;
      }

      goto LABEL_26;
    }

LABEL_25:
    v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65540;
    LODWORD(v14) = v14;
    if (v14 < 0)
    {
      goto LABEL_38;
    }

LABEL_26:
    if (v14 == 37)
    {
      if (v8)
      {
        goto LABEL_38;
      }

      v8 = 2;
    }

    else
    {
      if ((UInt8.allowedURLComponents.getter(v14) & a3) == 0)
      {
        goto LABEL_38;
      }

      if (v8-- < 1)
      {
        v8 = 0;
      }

      else if ((v14 - 58) <= 0xF5u)
      {
        v16 = 0;
        if (v14 - 65 > 0x25 || ((1 << (v14 - 65)) & 0x3F0000003FLL) == 0)
        {
          return v16 & 1;
        }
      }
    }

    if (4 * v7 == v11 >> 14)
    {
      v16 = v8 == 0;
      return v16 & 1;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

unint64_t _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA46450LL6buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int8 a5, char a6)
{
  v8 = a1;
  v9 = a2 >> 14;
  v10 = a1 >> 14;
  if ((a6 & 1) == 0)
  {
    v12 = (a3 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v12) = 1;
    }

    v13 = 4 << v12;
    v32 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v34 = a4 & 0xFFFFFFFFFFFFFFLL;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v14 = a3 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v15 = v8 >> 14;
      v11 = v8 >> 14 == v9;
      if (v8 >> 14 == v9)
      {
        return v11;
      }

      v16 = v8 & 0xC;
      result = v8;
      if (v16 == v13)
      {
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(v8, a3, a4);
        v15 = result >> 14;
        if (result >> 14 < v10)
        {
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          return result;
        }
      }

      else if (v15 < v10)
      {
        goto LABEL_70;
      }

      if (v15 >= v9)
      {
        goto LABEL_70;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UTF8View._foreignSubscript(position:)();
        v19 = result;
        if (v16 != v13)
        {
          goto LABEL_22;
        }
      }

      else if ((a4 & 0x2000000000000000) != 0)
      {
        v37 = a3;
        v38 = v34;
        v19 = *(&v37 + (result >> 16));
        if (v16 != v13)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v18 = v32;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v21 = result;
          v18 = _StringObject.sharedUTF8.getter();
          result = v21;
        }

        v19 = *(v18 + (result >> 16));
        if (v16 != v13)
        {
LABEL_22:
          if ((a4 & 0x1000000000000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_29;
        }
      }

      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v8, a3, a4);
      v8 = result;
      if ((a4 & 0x1000000000000000) == 0)
      {
LABEL_23:
        if (v19 < 0)
        {
          return v11;
        }

        v8 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_10;
      }

LABEL_29:
      if (v14 <= v8 >> 16)
      {
        goto LABEL_71;
      }

      v20 = String.UTF8View._foreignIndex(after:)();
      if (v19 < 0)
      {
        return v11;
      }

      v8 = v20;
LABEL_10:
      if ((UInt8.allowedURLComponents.getter(v19) & a5) == 0)
      {
        return v11;
      }
    }
  }

  if (v10 != v9)
  {
    v22 = 0;
    v23 = (a3 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v23) = 1;
    }

    v24 = 4 << v23;
    v31 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v33 = a4 & 0xFFFFFFFFFFFFFFLL;
    v25 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v25 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v25;
    while (1)
    {
      v26 = v8 & 0xC;
      result = v8;
      if (v26 == v24)
      {
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(v8, a3, a4);
      }

      if (result >> 14 < v10 || result >> 14 >= v9)
      {
        goto LABEL_72;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UTF8View._foreignSubscript(position:)();
        v28 = result;
        if (v26 != v24)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v27 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v37 = a3;
          v38 = v33;
          v28 = *(&v37 + v27);
          if (v26 != v24)
          {
            goto LABEL_50;
          }
        }

        else
        {
          result = v31;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = _StringObject.sharedUTF8.getter();
          }

          v28 = *(result + v27);
          if (v26 != v24)
          {
LABEL_50:
            if ((a4 & 0x1000000000000000) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_51;
          }
        }
      }

      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v8, a3, a4);
      v8 = result;
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_55:
        if (v35 <= v8 >> 16)
        {
          goto LABEL_73;
        }

        v8 = String.UTF8View._foreignIndex(after:)();
        v29 = v28;
        if (v28 < 0)
        {
          return 0;
        }

        goto LABEL_57;
      }

LABEL_51:
      v8 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
      v29 = v28;
      if (v28 < 0)
      {
        return 0;
      }

LABEL_57:
      if (v29 == 37)
      {
        if (v22)
        {
          return 0;
        }

        v22 = 2;
        if (v9 == v8 >> 14)
        {
          return v22 == 0;
        }
      }

      else
      {
        if ((UInt8.allowedURLComponents.getter(v29) & a5) == 0)
        {
          return 0;
        }

        if (v22-- < 1)
        {
          v22 = 0;
        }

        else if ((v29 - 58) <= 0xF5u)
        {
          v11 = 0;
          if (v29 - 65 > 0x25 || ((1 << (v29 - 65)) & 0x3F0000003FLL) == 0)
          {
            return v11;
          }
        }

        if (v9 == v8 >> 14)
        {
          return v22 == 0;
        }
      }
    }
  }

  return 1;
}

unint64_t _s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(uint64_t a1, unint64_t a2)
{
  v8 = a1;
  result = specialized Collection.first.getter(a1, a2);
  if ((result & 0x100) != 0)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  if (result != 91)
  {
    __break(1u);
    goto LABEL_82;
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_82:
    result = String.UTF8View._foreignCount()();
    if (__OFSUB__(result, 1))
    {
LABEL_163:
      __break(1u);
      return result;
    }

    v6 = 4 << ((v8 & 0x800000000000000) != 0);
    result = MEMORY[0x1865CB180](15, result - 1, v8, a2);
LABEL_8:
    if ((result & 0xC) != v6)
    {
      goto LABEL_9;
    }

    goto LABEL_85;
  }

  v10 = v8 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  if (v10)
  {
    result = (v10 << 16) - 65532;
    v6 = 8;
    goto LABEL_8;
  }

  __break(1u);
LABEL_85:
  result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, v8, a2);
LABEL_9:
  if ((a2 & 0x2000000000000000) != 0)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v12 = result >> 16;
  if (result >> 16 >= v11)
  {
    __break(1u);
    goto LABEL_87;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v98 = v8;
      v99 = a2 & 0xFFFFFFFFFFFFFFLL;
      v14 = *(&v98 + v12);
    }

    else
    {
      if ((v8 & 0x1000000000000000) == 0)
      {
        goto LABEL_93;
      }

      v13 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_17:
      v14 = *(v13 + v12);
    }

    if (v14 == 93)
    {
      v12 = 65540;
      v16 = (v11 << 16) - 65532;
      goto LABEL_24;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (String.UTF8View._foreignSubscript(position:)() != 93)
  {
    goto LABEL_87;
  }

  v12 = String.UTF8View._foreignIndex(after:)();
  v15 = String.UTF8View._foreignCount()();
  if (__OFSUB__(v15, 1))
  {
LABEL_90:
    __break(1u);
LABEL_91:
    v22 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, v8, a2);
    goto LABEL_33;
  }

  v16 = MEMORY[0x1865CB180](15, v15 - 1, v8, a2);
LABEL_24:
  if (v16 >> 14 < v12 >> 14)
  {
    goto LABEL_88;
  }

  v3 = String.subscript.getter();
  v4 = v17;
  v19 = v18;
  v21 = v20;
  v22 = specialized Collection<>.firstIndex(of:)(37, v8, a2);
  if (v24)
  {
    v25 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v3, v4, v19, v21, 2u, 0);
    if (v25 != 2)
    {
LABEL_30:
      v36 = v25;
LABEL_31:

      return v36 & 1;
    }

    v98 = v3;
    v99 = v4;
    v100 = v19;
    v101 = v21;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v8 = v26;
    v27 = String._bridgeToObjectiveCImpl()();

    v28 = [v27 _fastCharacterContents];
    v29 = v27;
    if (v28)
    {
      v98 = v3;
      v99 = v4;
      v100 = v19;
      v101 = v21;
      StringProtocol._ephemeralString.getter();
      v30 = String._bridgeToObjectiveCImpl()();

      v31 = [v30 length];
      swift_unknownObjectRelease();
      v32 = v28;
      v33 = v31;
      v34 = 2;
      v35 = 0;
LABEL_29:
      v25 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v32, v33, v34, v35);
      goto LABEL_30;
    }

    v4 >>= 14;
    v42 = (v19 >> 59) & 1;
    if ((v21 & 0x1000000000000000) == 0)
    {
      LOBYTE(v42) = 1;
    }

    v5 = 4 << v42;
    v6 = v3 >> 14;
    v11 = v19;
    if ((v21 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(v21) & 0xF;
    }

    else
    {
      v12 = v19 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v43 = v3 >> 14;
      if (v3 >> 14 == v4)
      {

        v36 = 1;
        return v36 & 1;
      }

      v44 = v3 & 0xC;
      v45 = v3;
      if (v44 == v5)
      {
        v45 = _StringGuts._slowEnsureMatchingEncoding(_:)(v3, v11, v21);
        v43 = v45 >> 14;
        if (v45 >> 14 < v6)
        {
          goto LABEL_89;
        }
      }

      else if (v43 < v6)
      {
        goto LABEL_89;
      }

      if (v43 >= v4)
      {
        goto LABEL_89;
      }

      if ((v21 & 0x1000000000000000) != 0)
      {
        v8 = String.UTF8View._foreignSubscript(position:)();
        if (v44 == v5)
        {
          goto LABEL_62;
        }
      }

      else if ((v21 & 0x2000000000000000) != 0)
      {
        v98 = v11;
        v99 = v21 & 0xFFFFFFFFFFFFFFLL;
        v8 = *(&v98 + (v45 >> 16));
        if (v44 == v5)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v46 = (v21 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v11 & 0x1000000000000000) == 0)
        {
          v48 = v45;
          v46 = _StringObject.sharedUTF8.getter();
          v45 = v48;
        }

        v8 = *(v46 + (v45 >> 16));
        if (v44 == v5)
        {
LABEL_62:
          v3 = _StringGuts._slowEnsureMatchingEncoding(_:)(v3, v11, v21);
          if ((v21 & 0x1000000000000000) == 0)
          {
            goto LABEL_68;
          }

          goto LABEL_63;
        }
      }

      if ((v21 & 0x1000000000000000) == 0)
      {
LABEL_68:
        if ((v8 & 0x80) != 0)
        {
          goto LABEL_144;
        }

        v3 = (v3 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_52;
      }

LABEL_63:
      if (v12 <= v3 >> 16)
      {
        __break(1u);
LABEL_93:
        v13 = _StringObject.sharedUTF8.getter();
        goto LABEL_17;
      }

      v47 = String.UTF8View._foreignIndex(after:)();
      if ((v8 & 0x80) != 0)
      {
        goto LABEL_144;
      }

      v3 = v47;
LABEL_52:
      if ((UInt8.allowedURLComponents.getter(v8) & 2) == 0)
      {
        goto LABEL_144;
      }
    }
  }

  v12 = v22;
  if ((v22 & 0xC) == v6)
  {
    goto LABEL_91;
  }

LABEL_33:
  v97 = v4;
  if ((a2 & 0x1000000000000000) != 0)
  {
    if (v11 <= v22 >> 16)
    {
      __break(1u);
LABEL_95:
      v49 = v23;
      v37 = _StringGuts._slowEnsureMatchingEncoding(_:)(v5, v8, a2);
      v23 = v49;
      goto LABEL_39;
    }

    v5 = String.UTF8View._foreignIndex(after:)();
  }

  else
  {
    v5 = (v22 & 0xFFFFFFFFFFFF0000) + 65540;
  }

  v4 = 4 * v11;
  if (4 * v11 == v5 >> 14)
  {
    goto LABEL_144;
  }

  v23 = v5 & 0xC;
  v37 = v5;
  if (v23 == v6)
  {
    goto LABEL_95;
  }

LABEL_39:
  v38 = v37 >> 16;
  if (v37 >> 16 >= v11)
  {
    __break(1u);
    goto LABEL_97;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v41 = v23;
    v40 = String.UTF8View._foreignSubscript(position:)();
    v23 = v41;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v98 = v8;
    v99 = a2 & 0xFFFFFFFFFFFFFFLL;
    v40 = *(&v98 + v38);
  }

  else
  {
    if ((v8 & 0x1000000000000000) != 0)
    {
      v39 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v96 = v23;
      v39 = _StringObject.sharedUTF8.getter();
      v23 = v96;
    }

    v40 = *(v39 + v38);
  }

  if (v40 == 50)
  {
    if (v23 != v6)
    {
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_98;
    }

LABEL_97:
    v5 = _StringGuts._slowEnsureMatchingEncoding(_:)(v5, v8, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_78:
      v5 = (v5 & 0xFFFFFFFFFFFF0000) + 65540;
      if (v4 == v5 >> 14)
      {
        goto LABEL_144;
      }

      goto LABEL_100;
    }

LABEL_98:
    if (v11 <= v5 >> 16)
    {
      __break(1u);
LABEL_155:
      v50 = _StringGuts._slowEnsureMatchingEncoding(_:)(v5, v8, a2);
LABEL_101:
      v51 = v50 >> 16;
      if (v50 >> 16 >= v11)
      {
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v53 = String.UTF8View._foreignSubscript(position:)();
        goto LABEL_109;
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v98 = v8;
        v99 = a2 & 0xFFFFFFFFFFFFFFLL;
        v53 = *(&v98 + v51);
        goto LABEL_109;
      }

      if ((v8 & 0x1000000000000000) == 0)
      {
        goto LABEL_160;
      }

      for (i = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32; ; i = _StringObject.sharedUTF8.getter())
      {
        v53 = *(i + v51);
LABEL_109:
        if (v53 != 53)
        {
          goto LABEL_144;
        }

        if (v12 >> 14 >= v3 >> 14)
        {
          break;
        }

LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        ;
      }

      v54 = Substring.subscript.getter();
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v61 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v54, v55, v57, v59, 2u, 0);
      if (v61 != 2)
      {
        v68 = v61;

        if ((v68 & 1) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_147;
      }

      v98 = v54;
      v99 = v56;
      v100 = v58;
      v101 = v60;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v62 = String._bridgeToObjectiveCImpl()();

      v63 = [v62 _fastCharacterContents];
      v64 = v62;
      if (v63)
      {
        v98 = v54;
        v99 = v56;
        v100 = v58;
        v101 = v60;
        v65 = v63;
        StringProtocol._ephemeralString.getter();
        v66 = String._bridgeToObjectiveCImpl()();

        v67 = [v66 length];
        swift_unknownObjectRelease();
        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v65, v67, 2u, 0))
        {
          goto LABEL_144;
        }

LABEL_147:
        result = Substring.index(after:)();
        if (v97 >> 14 >= result >> 14)
        {
          v81 = Substring.subscript.getter();
          v83 = v82;
          v85 = v84;
          v87 = v86;
          v88 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v81, v82, v84, v86, 8u, 1);
          if (v88 == 2)
          {
            v98 = v81;
            v99 = v83;
            v100 = v85;
            v101 = v87;
            lazy protocol witness table accessor for type Substring and conformance Substring();
            StringProtocol._ephemeralString.getter();
            v89 = String._bridgeToObjectiveCImpl()();

            v90 = [v89 _fastCharacterContents];
            v91 = v89;
            if (v90)
            {
              v98 = v81;
              v99 = v83;
              v100 = v85;
              v101 = v87;
              StringProtocol._ephemeralString.getter();
              v92 = String._bridgeToObjectiveCImpl()();

              v93 = [v92 length];
              swift_unknownObjectRelease();
              v32 = v90;
              v33 = v93;
              v34 = 8;
              v35 = 1;
              goto LABEL_29;
            }

            v88 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v81, v83, v85, v87, 8u, 1);
          }

          v36 = v88;

          goto LABEL_31;
        }

        __break(1u);
        goto LABEL_162;
      }

      v69 = v56 >> 14;
      v70 = (v58 >> 59) & 1;
      if ((v60 & 0x1000000000000000) == 0)
      {
        LOBYTE(v70) = 1;
      }

      v12 = 4 << v70;
      v95 = v54 >> 14;
      v71 = HIBYTE(v60) & 0xF;
      v72 = v58;
      if ((v60 & 0x2000000000000000) == 0)
      {
        v71 = v58 & 0xFFFFFFFFFFFFLL;
      }

      v94 = v71;
      while (1)
      {
        v73 = v54 >> 14;
        if (v54 >> 14 == v69)
        {

          goto LABEL_147;
        }

        v51 = v54 & 0xC;
        v74 = v54;
        if (v51 == v12)
        {
          v74 = _StringGuts._slowEnsureMatchingEncoding(_:)(v54, v72, v60);
          v73 = v74 >> 14;
        }

        if (v73 < v95 || v73 >= v69)
        {
          goto LABEL_157;
        }

        if ((v60 & 0x1000000000000000) != 0)
        {
          v80 = String.UTF8View._foreignSubscript(position:)();
          v76 = v72;
          v78 = v80;
          if (v51 == v12)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v75 = v74 >> 16;
          v76 = v72;
          if ((v60 & 0x2000000000000000) != 0)
          {
            v98 = v72;
            v99 = v60 & 0xFFFFFFFFFFFFFFLL;
            v78 = *(&v98 + v75);
            if (v51 == v12)
            {
              goto LABEL_133;
            }
          }

          else
          {
            v77 = (v60 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v72 & 0x1000000000000000) == 0)
            {
              v77 = _StringObject.sharedUTF8.getter();
              v76 = v72;
            }

            v78 = *(v77 + v75);
            if (v51 == v12)
            {
LABEL_133:
              v54 = _StringGuts._slowEnsureMatchingEncoding(_:)(v54, v76, v60);
              if ((v60 & 0x1000000000000000) == 0)
              {
                goto LABEL_139;
              }

              goto LABEL_134;
            }
          }
        }

        if ((v60 & 0x1000000000000000) == 0)
        {
LABEL_139:
          if (v78 < 0)
          {
            goto LABEL_143;
          }

          v54 = (v54 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_122;
        }

LABEL_134:
        if (v94 <= v54 >> 16)
        {
          goto LABEL_159;
        }

        v79 = String.UTF8View._foreignIndex(after:)();
        if (v78 < 0)
        {
LABEL_143:

          goto LABEL_144;
        }

        v54 = v79;
LABEL_122:
        if ((UInt8.allowedURLComponents.getter(v78) & 2) == 0)
        {
          goto LABEL_143;
        }
      }
    }

    v5 = String.UTF8View._foreignIndex(after:)();
    if (v4 == v5 >> 14)
    {
      goto LABEL_144;
    }

LABEL_100:
    v50 = v5;
    if ((v5 & 0xC) != v6)
    {
      goto LABEL_101;
    }

    goto LABEL_155;
  }

LABEL_144:

  v36 = 0;
  return v36 & 1;
}

uint64_t _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA46450LL10utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int8 a5, char a6)
{
  v20[1] = *MEMORY[0x1E69E9840];
  isStackAllocationSafe = Substring.UTF8View.distance(from:to:)();
  v13 = 3 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 3) >> 64 == (3 * isStackAllocationSafe) >> 63)
  {
    if (v13 < 0)
    {
      __break(1u);
    }

    if (v13 < 1025)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v16 = swift_slowAlloc();
    v17 = a6 & 1;
    v18 = v16;
    v19 = specialized closure #1 in StringProtocol.addingPercentEncoding<A>(utf8Buffer:component:skipAlreadyEncoded:)(v16, a1, a2, a3, a4, a5, v17, 0x25u);
    MEMORY[0x1865D2690](v18, -1, -1);
    return v19;
  }

LABEL_4:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  return specialized closure #1 in StringProtocol.addingPercentEncoding<A>(utf8Buffer:component:skipAlreadyEncoded:)(v20 - v14, a1, a2, a3, a4, a5, a6 & 1, 0x25u);
}

unint64_t _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA46450LL10utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(Swift::Int isStackAllocationSafe, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = isStackAllocationSafe;
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = isStackAllocationSafe;
  v15[1] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    isStackAllocationSafe = String.UTF8View._foreignCount()();
    v8 = isStackAllocationSafe;
    if (isStackAllocationSafe < 0)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = isStackAllocationSafe & 0xFFFFFFFFFFFFLL;
  }

  if (v8 < 1025)
  {
LABEL_6:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    return specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(&v15[-1] - v9, v10, v7, a2, a3, a4);
  }

LABEL_9:
  v12 = v8;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_6;
  }

  v13 = swift_slowAlloc();
  specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(v13, v12, v15, a3, a4, v16);
  MEMORY[0x1865D2690](v13, -1, -1);
  return v16[0];
}

unint64_t _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA46450LL10utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[1] = *MEMORY[0x1E69E9840];
  isStackAllocationSafe = Substring.UTF8View.distance(from:to:)();
  if (isStackAllocationSafe < 0)
  {
    __break(1u);
  }

  v13 = isStackAllocationSafe;
  if (isStackAllocationSafe < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    return specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(v18 - v14, v13, a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v16 = swift_slowAlloc();
    v17 = specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(v16, v13, a1, a2, a3, a4, a5, a6);
    MEMORY[0x1865D2690](v16, -1, -1);
    return v17;
  }
}

unint64_t specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(char *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = 0;
  v53 = 0;
  v9 = 0;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v60 = 4 * v10;
  v11 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v54 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v55 = a4 & 0xFFFFFFFFFFFFFFLL;
  v56 = a5 + 56;
  result = 15;
  while (v60 != result >> 14)
  {
    v14 = result & 0xC;
    v15 = result;
    if (v14 == v12)
    {
      v19 = result;
      v15 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
      result = v19;
    }

    v16 = v15 >> 16;
    if (v15 >> 16 >= v10)
    {
      goto LABEL_90;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v49 = result;
      v18 = String.UTF8View._foreignSubscript(position:)();
      result = v49;
      if (v14 != v12)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v58 = a3;
        v59 = v55;
        v17 = &v58;
      }

      else
      {
        v17 = v54;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v48 = result;
          v17 = _StringObject.sharedUTF8.getter();
          result = v48;
        }
      }

      v18 = *(v17 + v16);
      if (v14 != v12)
      {
LABEL_17:
        if ((a4 & 0x1000000000000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_21;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_18:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_23;
    }

LABEL_21:
    if (v10 <= result >> 16)
    {
      goto LABEL_92;
    }

    result = String.UTF8View._foreignIndex(after:)();
LABEL_23:
    if (v18 != 37)
    {
      if (v9 > 0)
      {
        v26 = result;
        goto LABEL_65;
      }

      while (2)
      {
        a1[v8] = v18;
        v27 = __OFADD__(v8++, 1);
        if (v27)
        {
          goto LABEL_91;
        }

        if (v60 == result >> 14)
        {
          goto LABEL_84;
        }

        v28 = result & 0xC;
        v29 = result;
        if (v28 == v12)
        {
          v33 = result;
          v29 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
          result = v33;
        }

        v30 = v29 >> 16;
        if (v29 >> 16 >= v10)
        {
          goto LABEL_90;
        }

        if ((a4 & 0x1000000000000000) != 0)
        {
          v34 = result;
          v18 = String.UTF8View._foreignSubscript(position:)();
          result = v34;
          if (v28 != v12)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if ((a4 & 0x2000000000000000) != 0)
          {
            v58 = a3;
            v59 = v55;
            v31 = &v58;
          }

          else
          {
            v31 = v54;
            if ((a3 & 0x1000000000000000) == 0)
            {
              v32 = result;
              v31 = _StringObject.sharedUTF8.getter();
              result = v32;
            }
          }

          v18 = *(v31 + v30);
          if (v28 != v12)
          {
LABEL_48:
            if ((a4 & 0x1000000000000000) != 0)
            {
              goto LABEL_49;
            }

LABEL_35:
            result = (result & 0xFFFFFFFFFFFF0000) + 65540;
            goto LABEL_36;
          }
        }

        result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
        if ((a4 & 0x1000000000000000) == 0)
        {
          goto LABEL_35;
        }

LABEL_49:
        if (v10 <= result >> 16)
        {
          goto LABEL_92;
        }

        result = String.UTF8View._foreignIndex(after:)();
LABEL_36:
        if (v18 == 37)
        {
          v20 = 0;
          goto LABEL_25;
        }

        continue;
      }
    }

    v20 = 0;
    if (v9)
    {
      return v20;
    }

LABEL_25:
    if (result >> 14 == v60)
    {
      return v20;
    }

    v21 = result & 0xC;
    v22 = result;
    if (v21 == v12)
    {
      v36 = result;
      v22 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
      result = v36;
    }

    v23 = v22 >> 16;
    if (v22 >> 16 >= v10)
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v37 = result;
      v18 = String.UTF8View._foreignSubscript(position:)();
      result = v37;
      if (v21 != v12)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v58 = a3;
        v59 = v55;
        v24 = &v58;
      }

      else
      {
        v24 = v54;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v25 = result;
          v24 = _StringObject.sharedUTF8.getter();
          result = v25;
        }
      }

      v18 = *(v24 + v23);
      if (v21 != v12)
      {
LABEL_56:
        if ((a4 & 0x1000000000000000) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_61;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_57:
      v35 = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_63;
    }

LABEL_61:
    if (v10 <= result >> 16)
    {
      goto LABEL_92;
    }

    v35 = String.UTF8View._foreignIndex(after:)();
LABEL_63:
    if (v18 == 37)
    {
      return 0;
    }

    v26 = v35;
    v9 = 2;
LABEL_65:
    v38 = asciiToHex(_:)(v18);
    if ((v38 & 0x100) != 0)
    {
      return 0;
    }

    v39 = v38;
    result = v26;
    if (v9 == 2)
    {
      v53 = 16 * v39;
      goto LABEL_68;
    }

    v40 = v53 + v39;
    if (((v53 + v39) & 0x100) != 0)
    {
      goto LABEL_93;
    }

    if (*(a5 + 16) && (v53 += v39, v41 = MEMORY[0x1865CD020](*(a5 + 40), v40, 1), v40 = v53, v42 = v41, result = v26, v43 = -1 << *(a5 + 32), v44 = v42 & ~v43, ((*(v56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) != 0))
    {
      v45 = ~v43;
      while (*(*(a5 + 48) + v44) != v53)
      {
        v44 = (v44 + 1) & v45;
        if (((*(v56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
        {
          goto LABEL_75;
        }
      }

      if (__OFADD__(v8, 2))
      {
        goto LABEL_95;
      }

      if (v8 + 2 <= v8)
      {
LABEL_96:
        __break(1u);
        __break(1u);
        goto LABEL_97;
      }

      v46 = byte_1812DB9F0[v53 >> 4];
      v47 = &a1[v8];
      if (!a1)
      {
        v47 = 0;
      }

      *v47 = 37;
      v47[1] = v46;
      v47[2] = v18;
      v27 = __OFADD__(v8, 3);
      v8 += 3;
      if (v27)
      {
        __break(1u);
        goto LABEL_84;
      }

LABEL_68:
      --v9;
    }

    else
    {
LABEL_75:
      a1[v8] = v40;
      v27 = __OFADD__(v8++, 1);
      if (v27)
      {
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v53 = 0;
      --v9;
    }
  }

  if (v9)
  {
    return 0;
  }

LABEL_84:
  if ((v8 & 0x8000000000000000) == 0)
  {
    return _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCs5SliceVySryAHGG_Tt1B5(0, v8, a1, a2, a6);
  }

LABEL_97:
  __break(1u);
  return result;
}

unint64_t specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(char *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = a4 >> 14;
  v50 = a3 >> 14;
  if (a3 >> 14 == a4 >> 14)
  {
    v10 = 0;
    return _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCs5SliceVySryAHGG_Tt1B5(0, v10, a1, v8, a8);
  }

  v13 = a3;
  v40 = a8;
  v10 = 0;
  v14 = 0;
  v15 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v15) = 1;
  }

  v16 = 4 << v15;
  v44 = a6 & 0xFFFFFFFFFFFFFFLL;
  v45 = 0;
  v43 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v17 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v46 = v17;
  v41 = a7 + 56;
  do
  {
    v18 = v13 & 0xC;
    result = v13;
    if (v18 == v16)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a5, a6);
    }

    if (result >> 14 < v50 || result >> 14 >= v9)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    if ((a6 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v21 = result;
      if (v18 != v16)
      {
        goto LABEL_21;
      }
    }

    else if ((a6 & 0x2000000000000000) != 0)
    {
      v48 = a5;
      v49 = v44;
      v21 = *(&v48 + (result >> 16));
      if (v18 != v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v20 = v43;
      if ((a5 & 0x1000000000000000) == 0)
      {
        v37 = result;
        v20 = _StringObject.sharedUTF8.getter();
        result = v37;
      }

      v21 = *(v20 + (result >> 16));
      if (v18 != v16)
      {
LABEL_21:
        if ((a6 & 0x1000000000000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_25;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a5, a6);
    v13 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_22:
      v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_27;
    }

LABEL_25:
    if (v46 <= v13 >> 16)
    {
      goto LABEL_99;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v13 = result;
LABEL_27:
    if (v21 != 37)
    {
      if (v14 > 0)
      {
        goto LABEL_73;
      }

      a1[v10] = v21;
      v25 = __OFADD__(v10++, 1);
      if (!v25)
      {
        if (v9 == v13 >> 14)
        {
          goto LABEL_91;
        }

        while (1)
        {
          v26 = v13 & 0xC;
          result = v13;
          if (v26 == v16)
          {
            result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a5, a6);
          }

          if (result >> 14 < v50 || result >> 14 >= v9)
          {
            goto LABEL_97;
          }

          if ((a6 & 0x1000000000000000) != 0)
          {
            result = String.UTF8View._foreignSubscript(position:)();
            v28 = result;
            if (v26 != v16)
            {
              goto LABEL_54;
            }
          }

          else if ((a6 & 0x2000000000000000) != 0)
          {
            v48 = a5;
            v49 = v44;
            v28 = *(&v48 + (result >> 16));
            if (v26 != v16)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v27 = v43;
            if ((a5 & 0x1000000000000000) == 0)
            {
              v30 = result;
              v27 = _StringObject.sharedUTF8.getter();
              result = v30;
            }

            v28 = *(v27 + (result >> 16));
            if (v26 != v16)
            {
LABEL_54:
              if ((a6 & 0x1000000000000000) == 0)
              {
                goto LABEL_55;
              }

              goto LABEL_58;
            }
          }

          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a5, a6);
          v13 = result;
          if ((a6 & 0x1000000000000000) == 0)
          {
LABEL_55:
            v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
            goto LABEL_60;
          }

LABEL_58:
          if (v46 <= v13 >> 16)
          {
            goto LABEL_99;
          }

          result = String.UTF8View._foreignIndex(after:)();
          v13 = result;
LABEL_60:
          if (v28 == 37)
          {
            result = 0;
            goto LABEL_29;
          }

          a1[v10] = v28;
          v29 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          ++v10;
          if (v9 == v13 >> 14)
          {
            v10 = v29;
            goto LABEL_91;
          }
        }
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    result = 0;
    if (v14)
    {
      return result;
    }

LABEL_29:
    v22 = v13 >> 14;
    if (v13 >> 14 == v9)
    {
      return result;
    }

    v23 = v13 & 0xC;
    result = v13;
    if (v23 == v16)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a5, a6);
      v22 = result >> 14;
    }

    if (v22 < v50 || v22 >= v9)
    {
      goto LABEL_97;
    }

    if ((a6 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v21 = result;
      if (v23 != v16)
      {
        goto LABEL_65;
      }
    }

    else if ((a6 & 0x2000000000000000) != 0)
    {
      v48 = a5;
      v49 = v44;
      v21 = *(&v48 + (result >> 16));
      if (v23 != v16)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v24 = v43;
      if ((a5 & 0x1000000000000000) == 0)
      {
        v38 = result;
        v24 = _StringObject.sharedUTF8.getter();
        result = v38;
      }

      v21 = *(v24 + (result >> 16));
      if (v23 != v16)
      {
LABEL_65:
        if ((a6 & 0x1000000000000000) != 0)
        {
          goto LABEL_69;
        }

        goto LABEL_66;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a5, a6);
    v13 = result;
    if ((a6 & 0x1000000000000000) != 0)
    {
LABEL_69:
      if (v46 <= v13 >> 16)
      {
        goto LABEL_99;
      }

      v13 = String.UTF8View._foreignIndex(after:)();
      goto LABEL_71;
    }

LABEL_66:
    v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_71:
    if (v21 == 37)
    {
      return 0;
    }

    v14 = 2;
LABEL_73:
    result = asciiToHex(_:)(v21);
    if ((result & 0x100) != 0)
    {
      return 0;
    }

    if (v14 == 2)
    {
      v45 = 16 * result;
    }

    else
    {
      v31 = v45 + result;
      if (((v45 + result) & 0x100) != 0)
      {
        goto LABEL_101;
      }

      if (*(a7 + 16) && (v45 += result, result = MEMORY[0x1865CD020](*(a7 + 40), v31, 1), v31 = v45, v32 = -1 << *(a7 + 32), v33 = result & ~v32, ((*(v41 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
      {
        v34 = ~v32;
        while (*(*(a7 + 48) + v33) != v45)
        {
          v33 = (v33 + 1) & v34;
          if (((*(v41 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_81;
          }
        }

        if (__OFADD__(v10, 2))
        {
          goto LABEL_103;
        }

        if (v10 + 2 <= v10)
        {
          goto LABEL_104;
        }

        v35 = byte_1812DB9F0[v45 >> 4];
        v36 = &a1[v10];
        if (!a1)
        {
          v36 = 0;
        }

        *v36 = 37;
        v36[1] = v35;
        v36[2] = v21;
        v25 = __OFADD__(v10, 3);
        v10 += 3;
        if (v25)
        {
          goto LABEL_105;
        }
      }

      else
      {
LABEL_81:
        a1[v10] = v31;
        v25 = __OFADD__(v10++, 1);
        if (v25)
        {
          goto LABEL_102;
        }

        v45 = 0;
      }
    }

    --v14;
  }

  while (v9 != v13 >> 14);
  if (v14)
  {
    return 0;
  }

LABEL_91:
  v8 = a2;
  a8 = v40;
  if ((v10 & 0x8000000000000000) == 0)
  {
    return _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCs5SliceVySryAHGG_Tt1B5(0, v10, a1, v8, a8);
  }

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
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}