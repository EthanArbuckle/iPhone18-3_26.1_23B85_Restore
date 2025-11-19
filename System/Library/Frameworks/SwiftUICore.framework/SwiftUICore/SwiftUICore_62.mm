void sub_18D3AE910(uint64_t a1, void **a2)
{
  v3 = *a2;
  v4 = ShaderVectorData.updating(rbShader:)(*a2);

  *a2 = v4;
}

uint64_t sub_18D3AE9E4()
{
  type metadata accessor for CheckedContinuation<(), Error>();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t _s7SwiftUI13GraphicsImageV8ContentsOwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of GraphicsImage.Contents(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_18D3AEAE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3AEB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18D3AEC00()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AECA8()
{

  return swift_deallocObject();
}

double sub_18D3AECE0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 48);
  *a2 = result;
  return result;
}

double *sub_18D3AECF4(double *result, uint64_t a2)
{
  v2 = *result;
  if (*(*a2 + 48) != v2)
  {
    result = GraphicsContext.copyOnWrite()();
    *(*a2 + 48) = v2;
  }

  return result;
}

int *sub_18D3AED50(int *result, uint64_t a2)
{
  v2 = *result;
  if (*(*a2 + 52) != *result)
  {
    result = GraphicsContext.copyOnWrite()();
    *(*a2 + 52) = v2;
  }

  return result;
}

double sub_18D3AED90@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  GraphicsContext._shapeRenderingMode.getter(*a1, &v4);
  result = v5;
  *a2 = v4;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_18D3AEDD4(int *a1)
{
  v1 = *(a1 + 1);
  v3 = *a1;
  v4 = v1;
  return GraphicsContext._shapeRenderingMode.setter(&v3);
}

uint64_t sub_18D3AEE14@<X0>(_DWORD *a1@<X8>)
{
  result = RBDrawingStateGetIdentifier();
  *a1 = result;
  return result;
}

uint64_t sub_18D3AEE44()
{
  GraphicsContext.copyOnWrite()();

  return RBDrawingStateSetIdentifier();
}

double sub_18D3AEE94@<D0>(_OWORD *a1@<X8>)
{
  RBDrawingStateGetCTM();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t _s7SwiftUI15GraphicsContextV14ResolvedSymbolVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  return a1;
}

unint64_t sub_18D3AF000@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v17 = 0;
    while (1)
    {
      result = *(a1 + 24);
      if (result)
      {
        v22 = *(a1 + 32);
        if (v5 < v22)
        {
          goto LABEL_15;
        }

        if (v22 < v5)
        {
          goto LABEL_4;
        }

        *(a1 + 24) = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
      }

      if (result < 8)
      {
        goto LABEL_4;
      }

LABEL_15:
      v23 = result >> 3;
      v24 = result & 7;
      if (result >> 3 == 1)
      {
        if (v24 != 2)
        {
          goto LABEL_4;
        }

        v42 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
        }

        v3 = *(v42 + 2);
        v43 = *(v42 + 3);
        if (v3 >= v43 >> 1)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v3 + 1, 1, v42);
        }

        *(v42 + 2) = v3 + 1;
        *&v42[8 * v3 + 32] = v6;
        *(a1 + 40) = v42;
        v44 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (v44 < 0)
        {
          goto LABEL_86;
        }

        v45 = *(a1 + 8) + v44;
        if (v6 < v45)
        {
          goto LABEL_4;
        }

        *(a1 + 16) = v45;
        specialized _ScaleEffect.init(from:)(a1);
        v19 = *(a1 + 40);
        if (!*(v19 + 16))
        {
          goto LABEL_88;
        }

        v13 = v46;
        v14 = v47;
        v15 = v48;
        v17 = v49;
        v3 = 0;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v20 = *(v19 + 16);
          if (!v20)
          {
            goto LABEL_91;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          v19 = result;
          v20 = *(result + 16);
          if (!v20)
          {
            goto LABEL_91;
          }
        }

        v16 = 0;
LABEL_7:
        v21 = v20 - 1;
        v6 = *(v19 + 8 * v21 + 32);
        *(v19 + 16) = v21;
        *(a1 + 40) = v19;
        *(a1 + 16) = v6;
        goto LABEL_8;
      }

      if (v23 == 2)
      {
        if (v24 != 2)
        {
          goto LABEL_4;
        }

        v34 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
        }

        v3 = *(v34 + 2);
        v35 = *(v34 + 3);
        if (v3 >= v35 >> 1)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v3 + 1, 1, v34);
        }

        *(v34 + 2) = v3 + 1;
        *&v34[8 * v3 + 32] = v6;
        *(a1 + 40) = v34;
        v36 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (v36 < 0)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          __break(1u);
LABEL_93:
          __break(1u);
          do
          {
            __break(1u);
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v51 = *(v3 + 16);
            if (v51)
            {
              goto LABEL_83;
            }

            __break(1u);
            v3 = *(a1 + 40);
            if (!*(v3 + 16))
            {
              goto LABEL_93;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v51 = *(v3 + 16);
              if (v51)
              {
                goto LABEL_83;
              }
            }

            else
            {
              v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v51 = *(v3 + 16);
              if (v51)
              {
                goto LABEL_83;
              }
            }

            __break(1u);
            v3 = *(a1 + 40);
          }

          while (!*(v3 + 16));
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v51 = *(v3 + 16);
            if (v51)
            {
              goto LABEL_83;
            }

LABEL_99:
            __break(1u);
            JUMPOUT(0x18D3AF648);
          }

          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
          v51 = *(v3 + 16);
          if (!v51)
          {
            goto LABEL_99;
          }

LABEL_83:
          v52 = v51 - 1;
          v53 = *(v3 + 8 * v52 + 32);
          *(v3 + 16) = v52;

          *(a1 + 40) = v3;
          *(a1 + 16) = v53;
          return result;
        }

        v37 = *(a1 + 8) + v36;
        if (v6 < v37)
        {
          goto LABEL_4;
        }

        *(a1 + 16) = v37;
        specialized _ScaleEffect.init(from:)(a1);
        v19 = *(a1 + 40);
        if (!*(v19 + 16))
        {
          goto LABEL_87;
        }

        v8 = v38;
        v9 = v39;
        v11 = v40;
        v12 = v41;
        v3 = 0;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v20 = *(v19 + 16);
          if (!v20)
          {
            goto LABEL_90;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          v19 = result;
          v20 = *(result + 16);
          if (!v20)
          {
            goto LABEL_90;
          }
        }

        v10 = 0;
        goto LABEL_7;
      }

      if (v23 == 3)
      {
        if (v24 != 2)
        {
          goto LABEL_4;
        }

        v25 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
        }

        v3 = *(v25 + 2);
        v26 = *(v25 + 3);
        if (v3 >= v26 >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v3 + 1, 1, v25);
        }

        *(v25 + 2) = v3 + 1;
        *&v25[8 * v3 + 32] = v6;
        *(a1 + 40) = v25;
        v27 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (v27 < 0)
        {
          goto LABEL_85;
        }

        v28 = *(a1 + 8) + v27;
        if (v6 < v28)
        {
          goto LABEL_4;
        }

        *(a1 + 16) = v28;
        v29 = specialized CodableAnimation.init(from:)(a1);
        v30 = *(a1 + 40);
        if (!*(v30 + 2))
        {
          goto LABEL_89;
        }

        v31 = v29;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v32 = *(v30 + 2);
          if (!v32)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
          v32 = *(v30 + 2);
          if (!v32)
          {
LABEL_72:
            __break(1u);
          }
        }

        v33 = v32 - 1;
        v6 = *&v30[8 * v33 + 32];
        *(v30 + 2) = v33;

        *(a1 + 40) = v30;
        *(a1 + 16) = v6;
        v7 = v31;
        goto LABEL_8;
      }

      if ((result & 7) > 1)
      {
        if (v24 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_92;
          }

          v50 = *(a1 + 8) + result;
          if (v6 < v50)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v24 != 5)
          {
            goto LABEL_4;
          }

          v50 = *(a1 + 8) + 4;
          if (v6 < v50)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          goto LABEL_8;
        }

        if (v24 != 1)
        {
          goto LABEL_4;
        }

        v50 = *(a1 + 8) + 8;
        if (v6 < v50)
        {
          goto LABEL_4;
        }
      }

      *(a1 + 8) = v50;
LABEL_8:
      v5 = *(a1 + 8);
      if (v5 >= v6)
      {
        *(a1 + 24) = 0;
        if (((v16 | v10) & 1) == 0 && v7)
        {
          *a2 = v13;
          a2[1] = v14;
          a2[2] = v15;
          a2[3] = v17;
          a2[4] = v8;
          a2[5] = v9;
          a2[6] = v11;
          a2[7] = v12;
          a2[8] = v7;
          return result;
        }

        goto LABEL_4;
      }
    }
  }

  *(a1 + 24) = 0;
LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

uint64_t sub_18D3AF6D8()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AF710()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AF748()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AF790()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AF7DC()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AF908(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18D3AF93C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3AF9D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18D3AFA78()
{
  type metadata accessor for ReferenceDateModifier(255);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3AFD20()
{
  v1 = type metadata accessor for Text.Style(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  if (*(v0 + v3) >= 2uLL)
  {
  }

  outlined consume of Gradient.ProviderTag(*(v4 + 16));

  if ((*(v4 + 88) - 1) >= 2)
  {
  }

  if ((*(v4 + 104) - 1) >= 2)
  {
  }

  if (*(v4 + 176) != 1)
  {
  }

  if (*(v4 + 248) != 1)
  {
  }

  if (*(v4 + 288) >= 2uLL)
  {
    outlined consume of Text.Storage(*(v4 + 264), *(v4 + 272), *(v4 + 280));
  }

  v5 = v1[21];
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  if (!(*(*(v6 - 8) + 48))(v4 + v5, 2, v6))
  {
    v7 = type metadata accessor for Locale.Language();
    (*(*(v7 - 8) + 8))(v4 + v5, v7);
  }

  v8 = v1[23];
  v9 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v11 = v1[24];
  v12 = type metadata accessor for AttributedString.TextAlignment();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v11, 1, v12))
  {
    (*(v13 + 8))(v4 + v11, v12);
  }

  v14 = v1[26];
  v15 = type metadata accessor for AttributedString.LineHeight();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v4 + v14, 1, v15))
  {
    (*(v16 + 8))(v4 + v14, v15);
  }

  return swift_deallocObject();
}

uint64_t sub_18D3B0124@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute.inheritedByAddedText;
  return result;
}

uint64_t sub_18D3B0170(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute.inheritedByAddedText = v1;
  return result;
}

uint64_t sub_18D3B01B8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for AttributeScopes.AccessibilityAttributes();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 100)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AttributeScopes.FoundationAttributes();
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 104)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_18D3B02D4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for AttributeScopes.AccessibilityAttributes();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 100)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AttributeScopes.FoundationAttributes();
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 104)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_18D3B0410()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B046C()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B04AC@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = *a1;
  result = EnvironmentValues.accessibilitySettingsDefinition.getter(v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3B04F8(unsigned __int8 *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return EnvironmentValues.accessibilitySettingsDefinition.setter(v3);
}

void sub_18D3B0538()
{
  if (MEMORY[0x1E69E7D58])
  {
    type metadata accessor for [AccessibilityEnabledTechnology](0, &lazy cache variable for type metadata for Mutex<PlatformAccessibilitySettingsDefinition.Storage>, &unk_1F007B2B0, MEMORY[0x1E69E8300]);
  }
}

uint64_t _s7SwiftUI39PlatformAccessibilitySettingsDefinitionC5Entry33_DD012B99EE4F6885B033D7D23FEF69C0LLVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = v3;
  return a1;
}

float sub_18D3B05D8@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_18D3B05E4(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_18D3B05F0@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = result;
  return result;
}

float sub_18D3B05FC(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 4) = *a1;
  return result;
}

float sub_18D3B0608@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

float sub_18D3B0614(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

void sub_18D3B0620(float *a1@<X0>, float *a2@<X8>)
{
  v2 = *a1;
  v3 = -*a1;
  if (*a1 > 0.0)
  {
    v3 = *a1;
  }

  if (v3 <= 0.0031308)
  {
    v4 = v3 * 12.92;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v6 = powf(v3, 0.41667);
      a2 = v5;
      v4 = (v6 * 1.055) + -0.055;
    }
  }

  v7 = -v4;
  if (v2 > 0.0)
  {
    v7 = v4;
  }

  *a2 = v7;
}

void sub_18D3B06D0(float *a1, float *a2)
{
  v2 = *a1;
  if (*a1 <= 0.0)
  {
    v3 = -*a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v3 <= 0.04045)
  {
    v4 = v3 * 0.077399;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v4 = powf((v3 * 0.94787) + 0.052133, 2.4);
      a2 = v5;
    }
  }

  if (v2 <= 0.0)
  {
    v4 = -v4;
  }

  *a2 = v4;
}

void sub_18D3B0780(uint64_t a1@<X0>, float *a2@<X8>)
{
  v2 = *(a1 + 4);
  v3 = -v2;
  if (v2 > 0.0)
  {
    v3 = *(a1 + 4);
  }

  if (v3 <= 0.0031308)
  {
    v4 = v3 * 12.92;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v6 = powf(v3, 0.41667);
      a2 = v5;
      v4 = (v6 * 1.055) + -0.055;
    }
  }

  v7 = -v4;
  if (v2 > 0.0)
  {
    v7 = v4;
  }

  *a2 = v7;
}

void sub_18D3B0830(float *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 <= 0.0)
  {
    v3 = -*a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v3 <= 0.04045)
  {
    v4 = v3 * 0.077399;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v4 = powf((v3 * 0.94787) + 0.052133, 2.4);
      a2 = v5;
    }
  }

  if (v2 <= 0.0)
  {
    v4 = -v4;
  }

  *(a2 + 4) = v4;
}

void sub_18D3B08E0(uint64_t a1@<X0>, float *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = -v2;
  if (v2 > 0.0)
  {
    v3 = *(a1 + 8);
  }

  if (v3 <= 0.0031308)
  {
    v4 = v3 * 12.92;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v6 = powf(v3, 0.41667);
      a2 = v5;
      v4 = (v6 * 1.055) + -0.055;
    }
  }

  v7 = -v4;
  if (v2 > 0.0)
  {
    v7 = v4;
  }

  *a2 = v7;
}

void sub_18D3B0990(float *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 <= 0.0)
  {
    v3 = -*a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v3 <= 0.04045)
  {
    v4 = v3 * 0.077399;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v4 = powf((v3 * 0.94787) + 0.052133, 2.4);
      a2 = v5;
    }
  }

  if (v2 <= 0.0)
  {
    v4 = -v4;
  }

  *(a2 + 8) = v4;
}

float sub_18D3B0A40@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 12);
  *a2 = result;
  return result;
}

float sub_18D3B0A4C(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 12) = *a1;
  return result;
}

uint64_t sub_18D3B0A58@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 16);
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_18D3B0A78(uint64_t result, uint64_t a2)
{
  v2 = *result;
  if (*(result + 4))
  {
    v2 = NAN;
  }

  *(a2 + 16) = v2;
  return result;
}

float sub_18D3B0A98@<S0>(float32x4_t *a1@<X8>)
{
  Color.ResolvedHDR.animatableData.getter(&v3);
  result = v4;
  *a1 = v3;
  a1[1].f32[0] = result;
  return result;
}

float sub_18D3B0ADC(float32x4_t *a1)
{
  v1 = a1[1].i32[0];
  v3 = *a1;
  v4 = v1;
  Color.ResolvedHDR.animatableData.setter(&v3);
  return result;
}

uint64_t sub_18D3B0B1C()
{
  type metadata accessor for PlatformItemTraitWriter();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B0BD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_18D3B0BE4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3B0C34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

_OWORD *_s7SwiftUI29_BackgroundPreferenceModifierVwta_0(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t _s7SwiftUI21HeadroomColorProviderVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);

  return a1;
}

uint64_t sub_18D3B0E28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA06ZIndexdJ0V_Tt0B5(*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_18D3B0E80()
{
  type metadata accessor for _TraitWritingModifier<ZIndexTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ZIndexTraitKey>, &type metadata for ZIndexTraitKey, &protocol witness table for ZIndexTraitKey, type metadata accessor for _TraitWritingModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B0F28()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B0F84@<X0>(uint64_t a1@<X1>, __int16 a2@<W2>, uint64_t *a3@<X8>)
{
  if (*(a1 + 16))
  {
    v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v23 = v6;
    v7 = 2;
    v24 = 2;
    v8 = *(a1 + 16);

    if (v8)
    {
      v20 = a3;
      v9 = 0;
      v10 = *MEMORY[0x1E698D3F8];
      a3 = &lazy cache variable for type metadata for ColorBox<UIKitPlatformColorProvider>;
      v11 = (a1 + 32);
      while (1)
      {
        if (a2)
        {
          if (v9 >= v8)
          {
            goto LABEL_29;
          }

          v14 = (a1 + 32 + 12 * v9);
        }

        else
        {
          v14 = v11;
          if (v9 >= v8)
          {
            goto LABEL_30;
          }
        }

        if (v9 >= v8)
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (*v14 == v10)
        {
          InputValue = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            InputValue = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          InputValue = AGGraphGetInputValue();
        }

        v16 = *InputValue;
        v17 = one-time initialization token for lockAssertionsAreEnabled;

        if (v17 != -1)
        {
          swift_once();
        }

        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            break;
          }
        }

        ++v9;
        (*(*v16 + 112))(&v22);

        v12 = v22;
        v13 = v24;
        if (v24 == 2)
        {
          v13 = HIBYTE(a2) & 1;
        }

        v24 = v13;
        LOBYTE(v22) = v13 & 1;
        AbsoluteEdge.Set.init(_:layoutDirection:)(&v22, &v21);
        v22 = v12;

        Spacing.incorporate(_:of:)(&v21, &v22);

        v8 = *(a1 + 16);
        v11 += 2;
        if (v9 == v8)
        {
          v6 = v23;
          v7 = v24;
          a3 = v20;
          goto LABEL_23;
        }
      }

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_23:

      *a3 = v6;
      *(a3 + 8) = v7;
    }
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
LABEL_31:
      swift_once();
    }

    v19 = byte_1ED52A120;
    *a3 = static ViewSpacing.zero;
    *(a3 + 8) = v19;
  }

  return result;
}

unint64_t _s7SwiftUI14LayoutSubviewsVSkAASk5index_8offsetBy07limitedG05IndexQzSgAH_SiAHtFTW_0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_18D3B1340@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = (result + 8);
  v4 = (result + 16);
  if (!*a2)
  {
    v4 = result;
  }

  v5 = *v4;
  if (*a2)
  {
    v3 = (result + 24);
  }

  v6 = *v3;
  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_18D3B1370(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result + 8);
  v4 = 16;
  if (!*a3)
  {
    v4 = 0;
  }

  v5 = 8;
  if (*a3)
  {
    v5 = 24;
  }

  *(a2 + v4) = *result;
  *(a2 + v5) = v3;
  return result;
}

_BYTE *sub_18D3B13C0(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 2048;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFF7FF | v2;
  return result;
}

_BYTE *sub_18D3B13F4(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 2048;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFF7FF | v2;
  return result;
}

uint64_t sub_18D3B1418()
{
  type metadata accessor for _LayoutTrait();
  swift_getWitnessTable();
  type metadata accessor for _TraitWritingModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t _s7SwiftUI14LayoutSubviewsV7Storage33_57DDCF0A00C1B77B475771403C904EF9LLOwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

__n128 sub_18D3B150C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3B1518()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B1560()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B1598()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B1650()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B16B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_15:

    return v9(v10, a2, v8);
  }

  if (a2 == 252)
  {
    v11 = *(a1 + a3[5] + 16);
    if (v11 <= 3)
    {
      v12 = 3;
    }

    else
    {
      v12 = *(a1 + a3[5] + 16);
    }

    v13 = v12 - 3;
    if (v11 >= 3)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  v15 = type metadata accessor for Calendar();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v16 = *(v15 - 8);
    v17 = a3[6];
LABEL_14:
    v9 = *(v16 + 48);
    v10 = a1 + v17;
    goto LABEL_15;
  }

  v18 = type metadata accessor for Locale();
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v16 = *(v18 - 8);
    v17 = a3[7];
    goto LABEL_14;
  }

  v19 = type metadata accessor for TimeZone();
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[8];

  return v20(v21, a2, v19);
}

uint64_t sub_18D3B1874(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 252)
  {
    *(a1 + a4[5] + 16) = a2 + 3;
    return result;
  }

  v13 = type metadata accessor for Calendar();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for Locale();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v17 = type metadata accessor for TimeZone();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_18D3B1A38()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Text.WritingMode>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B1AFC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3B1BCC@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.lineSpacing.getter();
  *a1 = v3;
  return result;
}

void *sub_18D3B1CE0@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_18D3B1D78@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3B1DB4@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  result = EnvironmentValues.truncationMode.getter(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_18D3B1F54()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Text.Case?>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B1FE4@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static PlatformScrollEdgeEffectTagDefinition.definition;
  return result;
}

uint64_t sub_18D3B2030(void **a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static PlatformScrollEdgeEffectTagDefinition.definition = v1;
  return result;
}

uint64_t sub_18D3B20DC()
{

  return swift_deallocObject();
}

double sub_18D3B2114@<D0>(uint64_t a1@<X8>)
{
  ResolvedShadowStyle.animatableData.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

__n128 sub_18D3B2214(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3B223C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

double sub_18D3B2254(uint64_t a1, void *a2)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  a2[2] = v3;
  a2[4] = v4;
  return result;
}

uint64_t sub_18D3B22CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureFailureReason();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3B2338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GestureFailureReason();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18D3B23A8()
{
  type metadata accessor for GestureComponentAttachmentModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B241C()
{
  type metadata accessor for GestureComponentAttachmentModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

void *sub_18D3B24AC@<X0>(void *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

void *sub_18D3B2564@<X0>(void *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

__n128 sub_18D3B26A8@<Q0>(__n128 *a1@<X8>)
{
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  result = *Value;
  *a1 = *Value;
  return result;
}

uint64_t sub_18D3B2778@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();

  return outlined init with copy of CoordinateSpace(Value, a1);
}

uint64_t sub_18D3B27C0(uint64_t a1)
{

  return key path setter for ContentShapePath.coordinateSpace : ContentShapePath(a1);
}

uint64_t sub_18D3B2830@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 20);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3B2858(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *(a2 + 20) = *v2;
  return result;
}

uint64_t _s7SwiftUI20ContentShapePathDataVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_18D3B28C8()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B2918()
{
  v1 = type metadata accessor for Locale.Language();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 17) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18D3B29A0()
{
  v1 = *(type metadata accessor for TypesettingLanguage(0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720]);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 2, v3))
  {
    v4 = type metadata accessor for Locale.Language();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_18D3B2AD4()
{
  type metadata accessor for Locale.LanguageCode?(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<TypesettingConfiguration>, type metadata accessor for TypesettingConfiguration, type metadata accessor for _EnvironmentKeyTransformModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

void *sub_18D3B2B8C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void *sub_18D3B2C60@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V031ScrollContentAdjustmentBehaviorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(*a1, &v4);
  *a2 = v4;
  return result;
}

uint64_t sub_18D3B2DA4()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Int?>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B2E78()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B2EB0()
{
  v1 = *(type metadata accessor for ResolvableStringResolutionContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_18D3B2FF4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Text.Style(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18D3B30A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Text.Style(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18D3B3144()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B317C()
{
  v1 = type metadata accessor for Text.Style(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  if (*(v0 + v3) >= 2uLL)
  {
  }

  outlined consume of Gradient.ProviderTag(*(v4 + 16));

  if ((*(v4 + 88) - 1) >= 2)
  {
  }

  if ((*(v4 + 104) - 1) >= 2)
  {
  }

  if (*(v4 + 176) != 1)
  {
  }

  if (*(v4 + 248) != 1)
  {
  }

  if (*(v4 + 288) >= 2uLL)
  {
    outlined consume of Text.Storage(*(v4 + 264), *(v4 + 272), *(v4 + 280));
  }

  v5 = v1[21];
  _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720]);
  if (!(*(*(v6 - 8) + 48))(v4 + v5, 2, v6))
  {
    v7 = type metadata accessor for Locale.Language();
    (*(*(v7 - 8) + 8))(v4 + v5, v7);
  }

  v8 = v1[23];
  v9 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v11 = v1[24];
  v12 = type metadata accessor for AttributedString.TextAlignment();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v11, 1, v12))
  {
    (*(v13 + 8))(v4 + v11, v12);
  }

  v14 = v1[26];
  v15 = type metadata accessor for AttributedString.LineHeight();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v4 + v14, 1, v15))
  {
    (*(v16 + 8))(v4 + v14, v15);
  }

  return swift_deallocObject();
}

uint64_t sub_18D3B3570()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B35FC()
{
  type metadata accessor for _EnvironmentKeyTransformModifier<TypesettingConfiguration>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<TypesettingConfiguration>, type metadata accessor for TypesettingConfiguration, type metadata accessor for _EnvironmentKeyTransformModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B3698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Locale();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18D3B3744(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Locale();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18D3B37E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Locale();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18D3B3894(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Locale();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s7SwiftUI5ImageV12ResolvedUUIDVwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = v3;
  return a1;
}

uint64_t sub_18D3B3970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
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

uint64_t sub_18D3B3A3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = a2;
  }

  return result;
}

uint64_t _s7SwiftUI12_ViewList_IDV17ElementCollectionVSkAASk5index_8offsetBy07limitedJ05IndexQzSgAJ_SiAJtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_18D3B3B74(void *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK010UnaryChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK29IgnoresAutomaticPaddingLayout33_47C1BD8C61550BB60F4F3D12F752D53DLLVGTt1g5Tm(a1, a2, specialized UnaryChildGeometry.value.getter);
}

uint64_t sub_18D3B3BE0()
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI6AnchorVySo6CGRectVG_AK011GlassEffectH008_3DF70D9M23D7473F4D189A049B764CFEFLLVTt1g5Tm();
}

uint64_t sub_18D3B3C38(void *a1, uint64_t a2)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK010UnaryChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK29IgnoresAutomaticPaddingLayout33_47C1BD8C61550BB60F4F3D12F752D53DLLVGTt1g5Tm(a1, a2, specialized UnaryChildGeometry.value.getter);
}

uint64_t sub_18D3B3CA4(uint64_t *a1)
{

  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK023UnaryPositionAwareChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK30_SafeAreaRegionsIgnoringLayoutVGTt1g5Tm(a1);
}

uint64_t sub_18D3B3D98@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 64);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3B3DC0(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *(a2 + 64) = *v2;
  return result;
}

uint64_t sub_18D3B3DE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of _ViewListInputs(a1, v5);
  Strong = swift_weakLoadStrong();
  result = outlined destroy of _ViewListInputs(v5);
  *a2 = Strong;
  return result;
}

_BYTE *sub_18D3B3E4C(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t sub_18D3B3F18()
{
  v3 = *(v0 + 256);
  v4 = *(v0 + 272);
  v2 = *(v0 + 224);
  outlined consume of ArrayWith2Inline<GestureDebug.Data>.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), v2, *(&v2 + 1), *(v0 + 240), *(v0 + 248), v3, *(&v3 + 1), v4, *(&v4 + 1), *(v0 + 288), *(v0 + 296), *(v0 + 304));

  return swift_deallocObject();
}

uint64_t sub_18D3B3FB4()
{

  return swift_deallocObject();
}

__n128 sub_18D3B3FFC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18D3B4020()
{
  outlined consume of ContentTransition.Storage(*(v0 + 16), *(v0 + 24) | (*(v0 + 28) << 32), *(v0 + 29));

  return swift_deallocObject();
}

uint64_t sub_18D3B4070()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI24ForEachSubviewCollectionVyxGSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI24ForEachSubviewCollectionVyxGSlAASl5index_8offsetBy07limitedI05IndexQzSgAI_SiAItFTW_0()
{
  swift_getWitnessTable();

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s7SwiftUI24ForEachSubviewCollectionVyxGSlAASl8distance4from2toSi5IndexQz_AItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_18D3B425C()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B4304()
{
  type metadata accessor for AttributedString.LineHeight?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AttributedString.LineHeight?>, type metadata accessor for AttributedString.LineHeight?, type metadata accessor for _EnvironmentKeyWritingModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B43DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA14MaterialEffectV_Tt3g5Tm(a1, a2, a3, a4, a5);
}

double protocol witness for static AdditiveArithmetic.zero.getter in conformance Edge.Corner.Style.AnimatableData@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_18D3B444C()
{
  type metadata accessor for _GlassEffectContainer();
  type metadata accessor for StaticIf();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B44FC()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B454C()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B45D4()
{
  type metadata accessor for [BackgroundContext](255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Int>, MEMORY[0x1E69E6530], type metadata accessor for _EnvironmentKeyTransformModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B4664()
{
  type metadata accessor for _EnvironmentBackgroundStyleModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B47E0()
{
  type metadata accessor for _ForegroundStyleModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B4850()
{
  type metadata accessor for _ForegroundStyleModifier2();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B48D0()
{
  type metadata accessor for _ForegroundStyleModifier3();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t _s7SwiftUI012_ShapeStyle_C0V6ResultOwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of _ShapeStyle_Shape.Result(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

__n128 sub_18D3B4A68(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3B4AD4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18D3B4B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, v3);
}

uint64_t sub_18D3B4C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a4 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v6;
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

uint64_t sub_18D3B4DA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConstraintAttributeContainerProxyBase();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3B4E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConstraintAttributeContainerProxyBase();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18D3B4F8C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AttributedTextFormatting.EmptyDefinition();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B5074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributeContainer();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_18D3B51D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributeContainer();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    type metadata accessor for DiscontiguousSlice<AttributedTextFormatting.Constraints>(0, &lazy cache variable for type metadata for DiscontiguousSlice<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, &type metadata for AttributedTextFormatting.Constraints, MEMORY[0x1E69E6E20]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_18D3B5344()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18D3B5388()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18D3B53C0()
{

  return swift_deallocObject();
}

__n128 sub_18D3B54BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3B54C8()
{
  type metadata accessor for _StrokedShape();

  return swift_getWitnessTable();
}

uint64_t sub_18D3B5684@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result & 1;
  return result;
}

__n128 sub_18D3B5748(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

double sub_18D3B5754@<D0>(double *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v3 = a1 + 1;
  if (!*a2)
  {
    v3 = a1;
  }

  result = *v3;
  *a3 = *v3;
  return result;
}

void *sub_18D3B5770(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = 8;
  if (!*a3)
  {
    v3 = 0;
  }

  *(a2 + v3) = *result;
  return result;
}

float64x2_t sub_18D3B579C@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  result = vmulq_f64(*a1, vdupq_n_s64(0x4060000000000000uLL));
  *a2 = result;
  return result;
}

float64x2_t sub_18D3B57B4(float64x2_t *a1, float64x2_t *a2)
{
  result = vmulq_f64(*a1, vdupq_n_s64(0x3F80000000000000uLL));
  *a2 = result;
  return result;
}

uint64_t sub_18D3B57E0()
{
  type metadata accessor for _PreferenceTransformModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

unint64_t sub_18D3B5854@<X0>(unint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(result + 36);
  if ((v3 & 0x20) != 0)
  {
    result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(result + 48));
    v4 = (v3 & 0x2000) == 0;
    if ((result & 1) == 0)
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

_BYTE *sub_18D3B58A4(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x2000;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFDFFF | v2;
  return result;
}

uint64_t sub_18D3B58C8@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2g5(*a1, &v4);
  *a2 = v4;
  return result;
}

_BYTE *sub_18D3B5934(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x2000;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFDFFF | v2;
  return result;
}

uint64_t sub_18D3B5958@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2g5(*a1, &v4);
  *a2 = v4;
  return result;
}

unint64_t *_s7SwiftUI17ScrapeableContentV0D0Owcp_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of ScrapeableContent.Content(*a2);
  *a1 = v3;
  return a1;
}

uint64_t sub_18D3B5A40@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 12);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3B5A68(uint64_t result, uint64_t a2)
{
  v2 = MEMORY[0x1E698D3F8];
  if (!*(result + 4))
  {
    v2 = result;
  }

  *(a2 + 12) = *v2;
  v3 = *(a2 + 8);
  if ((v3 & 0x80) == 0)
  {
    *(a2 + 8) = v3 | 0x80;
  }

  return result;
}

uint64_t sub_18D3B5AD8()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for TruePreferenceWritingGestureModifier();
  swift_getWitnessTable();
  type metadata accessor for ModifierGesture();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B5B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3B5C00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18D3B5D30@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t _s7SwiftUI20_IntelligenceSupportO22AnimatingSummarySymbolVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t sub_18D3B5E1C()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B5E58()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_18D3B5F28()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for TranslationKickModifier() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  v4 = *(*(v1 - 8) + 8);
  v4(v3, v1);
  v4(v3 + v2[11], v1);

  return swift_deallocObject();
}

uint64_t sub_18D3B603C()
{
  type metadata accessor for TranslationKickModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ScheduledAnimationModifier();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type KickModifier and conformance KickModifier();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B6158@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static CoreTesting.isRunning;
  return result;
}

uint64_t sub_18D3B61A4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static CoreTesting.isRunning = v1;
  return result;
}

uint64_t sub_18D3B61EC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static CoreTesting.needsRender;
  return result;
}

uint64_t sub_18D3B6238(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static CoreTesting.needsRender = v1;
  return result;
}

uint64_t sub_18D3B6280()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B62C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed EventType) -> (@unowned Bool);
  a2[1] = v5;
}

uint64_t sub_18D3B6350()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B6388()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI29GlassEffectGroupConfigurationVwta_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sub_18D3B6490()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18D3B6518()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B6560@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_18D3B656C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3B65BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3B65CC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static EnableLazyLayoutReuseLoggingAlways.cachedValue;
  return result;
}

uint64_t sub_18D3B6618(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static EnableLazyLayoutReuseLoggingAlways.cachedValue = v1;
  return result;
}

uint64_t _s7SwiftUI31_LazyLayout_EstimatedPlacementsVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_18D3B66A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3B6714@<X0>(uint64_t a1@<X8>)
{
  result = Duration.UnitsFormatStyle.maximumUnitCount.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_18D3B67A4()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Map2Gesture();
  swift_getWitnessTable();
  type metadata accessor for ModifierGesture();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B6868()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Map2Gesture();
  swift_getWitnessTable();
  type metadata accessor for ModifierGesture();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B696C()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Map2Gesture();
  swift_getWitnessTable();
  type metadata accessor for ModifierGesture();
  return swift_getWitnessTable();
}

__n128 sub_18D3B6A38(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18D3B6A4C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:);
  a2[1] = v5;
}

uint64_t sub_18D3B6AE4()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B6B2C()
{

  return swift_deallocObject();
}

__n128 sub_18D3B6B70@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_18D3B6B7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_18D3B6B88@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3B6B94(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18D3B6BA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 64);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18D3B6BF8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
  result = swift_unknownObjectWeakAssign();
  *(v3 + 96) = 1;
  return result;
}

uint64_t sub_18D3B6CC0()
{
  type metadata accessor for RendererVisualEffect<CAFilterEffect>();
  lazy protocol witness table accessor for type RendererVisualEffect<CAFilterEffect> and conformance RendererVisualEffect<A>();
  type metadata accessor for CombinedVisualEffect();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B6D34()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double protocol witness for InsettableShape.inset(by:) in conformance ContainerRelativeShape._Inset@<D0>(double *a1@<X8>, double a2@<D0>)
{
  result = *v2 + a2;
  *a1 = result;
  return result;
}

double sub_18D3B6DB0@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3B6DBC(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3B6DC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

double sub_18D3B6DDC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 24) = result;
  return result;
}

double sub_18D3B6DF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 40);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = result;
  return result;
}

double sub_18D3B6E04(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_18D3B6EFC()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_18D3B6FCC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = (result + 40);
  v4 = (result + 32);
  if (*a2 != 2)
  {
    v4 = (result + 48);
    v3 = (result + 56);
  }

  v5 = (result + 24);
  v6 = (result + 16);
  if (!*a2)
  {
    v6 = result;
    v5 = (result + 8);
  }

  if (*a2 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (*a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v3;
  }

  v9 = *v8;
  *a3 = *v7;
  *(a3 + 8) = v9;
  return result;
}

uint64_t sub_18D3B7024(uint64_t result, void *a2, _BYTE *a3)
{
  v3 = *(result + 8);
  v4 = 8;
  v5 = a2 + 4;
  v6 = 40;
  if (*a3 != 2)
  {
    v5 = a2 + 6;
    v6 = 56;
  }

  v7 = a2 + 2;
  if (*a3)
  {
    v4 = 24;
  }

  else
  {
    v7 = a2;
  }

  if (*a3 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (*a3 > 1u)
  {
    v4 = v6;
  }

  *v8 = *result;
  *(a2 + v4) = v3;
  return result;
}

double sub_18D3B708C@<D0>(double *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v3 = a1 + 1;
  v4 = a1 + 2;
  if (*a2 != 2)
  {
    v4 = a1 + 3;
  }

  if (!*a2)
  {
    v3 = a1;
  }

  if (*a2 > 1u)
  {
    v3 = v4;
  }

  result = *v3;
  *a3 = *v3;
  return result;
}

void *sub_18D3B70C0(void *result, void *a2, _BYTE *a3)
{
  v3 = a2 + 2;
  if (*a3 != 2)
  {
    v3 = a2 + 3;
  }

  v4 = a2 + 1;
  if (!*a3)
  {
    v4 = a2;
  }

  if (*a3 <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  *v5 = *result;
  return result;
}

double sub_18D3B7104@<D0>(double *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v3 = a1 + 1;
  v4 = a1 + 2;
  if (a2[1])
  {
    v4 = a1;
  }

  else
  {
    v3 = a1 + 3;
  }

  if (*a2)
  {
    v3 = v4;
  }

  result = *v3;
  *a3 = *v3;
  return result;
}

void *sub_18D3B7138(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = 16;
  if (a3[1])
  {
    v3 = 0;
  }

  v4 = 24;
  if (a3[1])
  {
    v4 = 8;
  }

  if (*a3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  *(a2 + v5) = *result;
  return result;
}

__n128 sub_18D3B717C@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3B7188(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18D3B71CC()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_18D3B72B8()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 64) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18D3B7350@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_18D3B735C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3B73AC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18D3B73D0()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B7408()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B7468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 2) = v5;
  *(v8 + 3) = v7;
  *(v8 + 4) = v6;
  *a4 = _sSo11AGAttributea14AttributeGraphE10mutateBody2as12invalidating_yxm_SbyxzXEtlFySvXEfU_TA_0;
  a4[1] = v8;
}

uint64_t sub_18D3B74FC()
{
  type metadata accessor for _EnvironmentKeyTransformModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B756C()
{

  return swift_deallocObject();
}

__n128 sub_18D3B75D4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18D3B7644()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B767C()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_18D3B76E8()
{

  return swift_deallocObject();
}

uint64_t _sSb7SwiftUI18AccessibilityValueA2aBP20localizedDescriptionSSSgvgTW_0()
{
  if (*v0)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t _sSS7SwiftUI18AccessibilityValueA2aBP20localizedDescriptionSSSgvgTW_0()
{
  v1 = *v0;

  return v1;
}

id _s7SwiftUI26AccessibilityBoundedNumberVAA0C5ValueA2aDP03minF008PlatformF0QzSgvgTW_0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

id _s7SwiftUI26AccessibilityBoundedNumberVAA0C5ValueA2aDP03maxF008PlatformF0QzSgvgTW_0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

id _s7SwiftUI26AccessibilityBoundedNumberVAA0C5ValueA2aDP4step08PlatformF0QzSgvgTW_0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return v2;
}

uint64_t sub_18D3B7818@<X0>(uint64_t *a1@<X8>)
{
  result = AccessibilityValueStorage.valueDescription.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3B7844(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 40) = v3;
  return result;
}

void _s7SwiftUI26AccessibilityBoundedNumberVwxx_0(uint64_t a1)
{
  v2 = *(a1 + 24);
}

uint64_t sub_18D3B78E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18D3B7918()
{
  type metadata accessor for PreferenceVisualEffectModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

__n128 sub_18D3B79F0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_18D3B7D8C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_18D3B7E48@<D0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  result = *Value;
  *a1 = *Value;
  return result;
}

_DWORD *sub_18D3B7F84@<X0>(_DWORD *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t sub_18D3B803C@<X0>(void *a1@<X8>)
{
  *a1 = *AGGraphGetValue();
}

uint64_t sub_18D3B8104@<X0>(void *a1@<X8>)
{
  *a1 = *AGGraphGetValue();
}

_DWORD *sub_18D3B81CC@<X0>(_DWORD *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

_DWORD *sub_18D3B8284@<X0>(_DWORD *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t sub_18D3B833C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 169);
  return result;
}

void sub_18D3B8384(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 169) = v2;
  GraphHost.updateRemovedState()();
}

uint64_t sub_18D3B83D0()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B8428()
{

  swift_weakDestroy();
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3B8470()
{
  swift_weakDestroy();
  swift_weakDestroy();

  return swift_deallocObject();
}

void _s7SwiftUI16SVGImageContents33_FD14FB6A78229243CA216236680C9BDDLLCfE_0()
{
  v1 = *(v0 + 56);
}

uint64_t sub_18D3B85B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA018IsAuxiliaryContentdJ0V_Tt0B5(0, *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D3B8614()
{
  type metadata accessor for _TraitWritingModifier<IsAuxiliaryContentTraitKey>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B8680()
{
  type metadata accessor for TagValueTraitKey();
  swift_getWitnessTable();
  type metadata accessor for _TraitWritingModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B8728()
{
  type metadata accessor for TagValueTraitKey();
  swift_getWitnessTable();
  type metadata accessor for _TraitWritingModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  type metadata accessor for TagValueTraitKey();
  swift_getWitnessTable();
  type metadata accessor for _TraitWritingModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B8894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 8);
  v4 = type metadata accessor for _Velocity();
  return _Velocity<>.animatableData.getter(v4, v3);
}

uint64_t sub_18D3B88E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for _Velocity();
  return specialized _Velocity<>.animatableData.setter(a1, v6, v5);
}

__n128 sub_18D3B893C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_18D3B8988()
{
  type metadata accessor for [DynamicTypeSize](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<DynamicTypeSize>, type metadata accessor for _EnvironmentKeyWritingModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B8A10()
{
  type metadata accessor for [DynamicTypeSize](255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<DynamicTypeSize>, type metadata accessor for _EnvironmentKeyTransformModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B8A9C()
{
  outlined consume of Animation.Function(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

__n128 sub_18D3B8B38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3B8B94()
{
  type metadata accessor for _ScrollClipEffect();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

void *_s10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLOwcp_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of AttributedString.AnyAttribute(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_18D3B8E10()
{

  return swift_deallocObject();
}

__n128 sub_18D3B8F30(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18D3B91C8@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  result = EnvironmentValues.sizeCategory.getter(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_18D3B9478()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Text.WritingDirectionStrategy>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

BOOL sub_18D3B964C(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 != 2)
  {
    return a2 != 2 && ((a2 ^ a1) & 1) == 0;
  }

  return a2 == 2;
}

uint64_t sub_18D3B9688()
{

  return protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance OpenURLActionKey();
}

uint64_t _s7SwiftUI24AllowsVibrantBlendingKeyVAA011EnvironmentF0A2aDP12_valuesEqualySb5ValueQz_AHtFZTW_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v2 ^ v4 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

uint64_t sub_18D3B9724()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B975C()
{

  return swift_deallocObject();
}

__n128 sub_18D3B97D0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_18D3B97E8()
{
  type metadata accessor for _AnchorWritingModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B985C()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B98A8()
{

  return swift_deallocObject();
}

uint64_t sub_18D3B9928@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3B996C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3B99B0()
{
  lazy protocol witness table accessor for type GloballySimultaneousGestureCombiner and conformance GloballySimultaneousGestureCombiner();
  type metadata accessor for AddGestureModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3B9A88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 64))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_18D3B9ADC@<X0>(uint64_t *a1@<X8>)
{
  result = ResolvedStyledText.gesture.getter();
  *a1 = result;
  return result;
}

_OWORD *_s7SwiftUI15SubviewsGesture33_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLVwcp_0(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_18D3B9B3C()
{
  v3 = *(v0 + 256);
  v4 = *(v0 + 272);
  v2 = *(v0 + 224);
  outlined consume of ArrayWith2Inline<GestureDebug.Data>.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), v2, *(&v2 + 1), *(v0 + 240), *(v0 + 248), v3, *(&v3 + 1), v4, *(&v4 + 1), *(v0 + 288), *(v0 + 296), *(v0 + 304));

  return swift_deallocObject();
}

uint64_t sub_18D3B9D94(uint64_t *a1)
{

  return protocol witness for static PlatformItemsStrategy.makeContent(from:) in conformance UnaryPassthroughPlatformItemsStrategy(a1);
}

void _s7SwiftUI37MultiPassthroughPlatformItemsStrategyVAA0efG0A2aDP12defaultValue7ContentQzvgZTW_0(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
}

unint64_t _s7SwiftUI37MultiPassthroughPlatformItemsStrategyVAA0efG0A2aDP11makeContent4from14AttributeGraph08OptionalK0Vy0I0QzGAA12_ViewOutputsV_tFZTW_0(uint64_t *a1)
{
  result = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5(*a1);
  if ((result & 0x100000000) != 0)
  {
    return *MEMORY[0x1E698D3F8];
  }

  else
  {
    return result;
  }
}

void _s7SwiftUI4TextV6LayoutV4LineVSkAASk5index_8offsetBy07limitedH05IndexQzSgAL_SiALtFTW_0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = v5;
  *(a4 + 8) = v6 & 1;
}

void _s7SwiftUI4TextV6LayoutV3RunVSkAASk5index_8offsetBy07limitedH05IndexQzSgAL_SiALtFTW_0(CFIndex *a1@<X0>, uint64_t a2@<X1>, CFIndex *a3@<X2>, uint64_t a4@<X8>)
{
  specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = v5;
  *(a4 + 8) = v6 & 1;
}

uint64_t _s7SwiftUI4TextV6LayoutV8RunSliceVSkAASk5index_8offsetBy07limitedI05IndexQzSgAL_SiALtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

unint64_t _s7SwiftUI4TextV6LayoutVSkAASk5index_8offsetBy07limitedG05IndexQzSgAJ_SiAJtFTW_0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

unint64_t _s7SwiftUI4TextV6LayoutVAAE11DecorationsV7SegmentVSkAASk5index_8offsetBy07limitedI05IndexQzSgAN_SiANtFTW_0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t _s7SwiftUI4TextV6LayoutVAAE11DecorationsVSkAASk5index_8offsetBy07limitedH05IndexQzSgAL_SiALtFTW_0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t _s7SwiftUI4TextV6LayoutVAAE7ClusterVSkAASk5index_8offsetBy07limitedH05IndexQzSgAL_SiALtFTW_0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_18D3BA110()
{
  type metadata accessor for _EnvironmentKeyTransformModifier<Text.Scale?>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BA17C()
{
  outlined consume of _Glass.Variant.Role(v0[2], v0[3]);
  outlined consume of _Glass.Variant.Role(v0[4], v0[5]);

  return swift_deallocObject();
}

uint64_t *_s7SwiftUI6_GlassV7VariantVwcp_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of _Glass.Variant.Role(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t *_s7SwiftUI6_GlassV7VariantVwta_0(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  outlined consume of _Glass.Variant.Role(v3, v4);
  return a1;
}

uint64_t _s7SwiftUI6_GlassV7VariantV2IDOwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_18D3BA2A4()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18D3BA338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContinuousClock.Instant();
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

uint64_t sub_18D3BA3F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContinuousClock.Instant();
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

uint64_t sub_18D3BA4AC()
{

  return swift_deallocObject();
}

__n128 protocol witness for PlatformItemRule.config.getter in conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  result = *(v1 + 36);
  *(a1 + 28) = result;
  return result;
}

__n128 protocol witness for PlatformItemRule.config.setter in conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v2;
  result = *(a1 + 28);
  *(v1 + 36) = result;
  return result;
}

uint64_t sub_18D3BA5C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

_DWORD *sub_18D3BA608@<X0>(_DWORD *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t sub_18D3BA6C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 28);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3BA6E8(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *(a2 + 28) = *v2;
  return result;
}

uint64_t sub_18D3BA70C()
{
  type metadata accessor for ChildrenPlatformItemModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BA77C()
{
  v1 = (type metadata accessor for PlatformItemsGenerator() - 8);
  v2 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));

  v3 = v1[19];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v2 + v3, AssociatedTypeWitness);
  return swift_deallocObject();
}

uint64_t sub_18D3BA8B8()
{
  type metadata accessor for _ContentShapeModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

float sub_18D3BA984@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = result;
  return result;
}

float sub_18D3BA998(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_18D3BA9AC@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  result = EnvironmentValues.materialEffectContainerTintConfiguration.getter(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_18D3BA9F0(uint64_t *a1)
{
  v2 = *a1;

  return EnvironmentValues.materialEffectContainerTintConfiguration.setter(&v2);
}

uint64_t sub_18D3BAA2C()
{
  type metadata accessor for _ContentShapeKindModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

_DWORD *sub_18D3BAAA4@<X0>(_DWORD *a1@<X8>)
{
  result = AnimatableAttributeHelper.phase.getter(&v3);
  *a1 = v3;
  return result;
}

__n128 sub_18D3BAB24(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3BAB30@<X0>(_DWORD *a1@<X8>)
{
  result = AnimatableAttributeHelper.$phase.getter();
  *a1 = result;
  return result;
}

double sub_18D3BAB90@<D0>(double *a1@<X8>)
{
  AnimatableAttributeHelper.time.getter(&v3);
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_18D3BAC10@<X0>(_DWORD *a1@<X8>)
{
  result = AnimatableAttributeHelper.$time.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3BAC84@<X0>(_DWORD *a1@<X8>)
{
  result = AnimatableAttributeHelper.$transaction.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3BACF8()
{
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BAD84()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVs18AdditiveArithmeticAAsAFP2peoiyyxz_xtFZTW_0(_OWORD *a1)
{
  v1 = a1[5];
  v6[4] = a1[4];
  v6[5] = v1;
  v2 = a1[7];
  v6[6] = a1[6];
  v6[7] = v2;
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return static ConcentricRectangle.Uniformity.+ infix(_:_:)(v6);
}

uint64_t _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVs18AdditiveArithmeticAAsAFP2seoiyyxz_xtFZTW_0(_OWORD *a1)
{
  v1 = a1[5];
  v6[4] = a1[4];
  v6[5] = v1;
  v2 = a1[7];
  v6[6] = a1[6];
  v6[7] = v2;
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return static ConcentricRectangle.Uniformity.- infix(_:_:)(v6);
}

__n128 sub_18D3BAE88@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v12 = a1[20];
  v13 = a1[21];
  v14 = a1[22];
  v15 = a1[23];
  v8 = a1[16];
  v9 = a1[17];
  v10 = a1[18];
  v11 = a1[19];
  RoundedRectangularShapeCorners.animatableData.getter(v16);
  v3 = v16[5];
  a2[12] = v16[4];
  a2[13] = v3;
  v4 = v16[7];
  a2[14] = v16[6];
  a2[15] = v4;
  v5 = v16[1];
  a2[8] = v16[0];
  a2[9] = v5;
  v6 = v16[3];
  a2[10] = v16[2];
  a2[11] = v6;
  a2[4] = v12;
  a2[5] = v13;
  a2[6] = v14;
  a2[7] = v15;
  *a2 = v8;
  a2[1] = v9;
  result = v10;
  a2[2] = v10;
  a2[3] = v11;
  return result;
}

double *sub_18D3BAF28(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 80);
  a2[20] = *(a1 + 64);
  a2[21] = v2;
  v3 = *(a1 + 112);
  a2[22] = *(a1 + 96);
  a2[23] = v3;
  v4 = *(a1 + 16);
  a2[16] = *a1;
  a2[17] = v4;
  v5 = *(a1 + 48);
  a2[18] = *(a1 + 32);
  a2[19] = v5;
  return RoundedRectangularShapeCorners.animatableData.setter((a1 + 128));
}

double sub_18D3BAF70@<D0>(_OWORD *a1@<X8>)
{
  RoundedRectangularShapeCorners.animatableData.getter(v7);
  v2 = v11;
  a1[4] = v10;
  a1[5] = v2;
  v3 = v13;
  a1[6] = v12;
  a1[7] = v3;
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

uint64_t _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

uint64_t sub_18D3BB054()
{
  type metadata accessor for _ContainerRoundedRectangularShapeModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BB110@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

_DWORD *sub_18D3BB18C(_DWORD *result, uint64_t a2)
{
  *(a2 + 24) = *result;
  v2 = *(a2 + 32);
  if ((v2 & 0x40) == 0)
  {
    *(a2 + 32) = v2 | 0x40;
  }

  return result;
}

double _s7SwiftUI19CustomColorProviderVyxGAA0dE0A2aEP10resolveHDR2inAA0D0VAAE08ResolvedG0VAA17EnvironmentValuesV_tFTW_0@<D0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  ColorProvider.resolveHDR(in:)(a1, a2, &v5);
  result = *&v5;
  *a3 = v5;
  *(a3 + 16) = v6;
  return result;
}

__n128 sub_18D3BB294(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3BB2A0()
{
  type metadata accessor for _BindingActionModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BB310()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18D3BB3CC()
{

  return swift_deallocObject();
}

__n128 sub_18D3BB520(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3BB684()
{
  type metadata accessor for _ValueActionModifier2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BB758()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for _ValueActionModifier3() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v1 - 8);
  v6 = *(v5 + 8);
  v7 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v6(v0 + v3, v1);

  v6(v0 + v7, v1);

  return swift_deallocObject();
}

uint64_t sub_18D3BB894()
{

  return swift_deallocObject();
}

uint64_t sub_18D3BB8E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(*a1);
  if (result)
  {
  }

  *a2 = result;
  return result;
}

void *sub_18D3BB924@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(*a1);
  if (result)
  {
    v4 = *(result + 72);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *sub_18D3BB98C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D3BBA44@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

__n128 sub_18D3BBB10(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18D3BBB1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = Array<A>.animatableData.getter(*a1, *(a2 + a3 - 16), *(a2 + a3 - 8), &v6);
  *a4 = v6;
  return result;
}

__n128 sub_18D3BBB70(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_18D3BBBE4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3BBD38()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ScalePulseModifier() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  v4 = *(*(v1 - 8) + 8);
  v4(v3, v1);
  v4(v3 + v2[11], v1);

  return swift_deallocObject();
}

uint64_t sub_18D3BBE4C()
{
  type metadata accessor for ScalePulseModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ScheduledAnimationModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t _s7SwiftUI7AnyViewVAA07DynamicD0A2aDP6makeID0G0QzyFZTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = AGMakeUniqueID();
  *a1 = result;
  return result;
}

uint64_t _s7SwiftUI15DynamicViewList031_3FB6ABB0477B815AB3C89DD5EDC9F0M0LLV10WrappedIDsVyx_GSlAASl5index_8offsetBy5IndexQzAK_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI15DynamicViewList031_3FB6ABB0477B815AB3C89DD5EDC9F0M0LLV10WrappedIDsVyx_GSlAASl5index_8offsetBy07limitedR05IndexQzSgAL_SiALtFTW_0()
{
  swift_getWitnessTable();

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s7SwiftUI15DynamicViewList031_3FB6ABB0477B815AB3C89DD5EDC9F0M0LLV10WrappedIDsVyx_GSlAASl8distance4from2toSi5IndexQz_ALtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_18D3BC1EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3BC224@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18D3BC274(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18D3BC2CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18D3BC31C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18D3BC374()
{

  return swift_deallocObject();
}

__n128 sub_18D3BC3C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3BC3CC()
{

  return swift_deallocObject();
}

double sub_18D3BC408@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3BC43C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_18D3BC470@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_18D3BC4A4@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = (a1 + 16);
  if (*a2)
  {
    v3 = (a1 + 40);
  }

  result = *v3;
  v5 = vdup_n_s32(*a2);
  v6.i64[0] = v5.u32[0];
  v6.i64[1] = v5.u32[1];
  *a3 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v6, 0x3FuLL)), *(a1 + 24), *a1);
  *(a3 + 16) = result;
  return result;
}

void *sub_18D3BC4E4(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = *a3 == 0;
  v6 = 24;
  if (!*a3)
  {
    v6 = 0;
  }

  v7 = 8;
  if (*a3)
  {
    v7 = 32;
  }

  *(a2 + v6) = *result;
  v8 = 40;
  if (v5)
  {
    v8 = 16;
  }

  *(a2 + v7) = v3;
  *(a2 + v8) = v4;
  return result;
}

double sub_18D3BC534@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  v3 = *(a1 + 32);
  *a2 = result;
  *(a2 + 8) = v3;
  return result;
}

double sub_18D3BC56C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 24);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

double sub_18D3BC5A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 16);
  v3 = *(a1 + 40);
  *a2 = result;
  *(a2 + 8) = v3;
  return result;
}

_BYTE *sub_18D3BC5F8(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 4096;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFEFFF | v2;
  return result;
}

_BYTE *sub_18D3BC62C(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 4096;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFEFFF | v2;
  return result;
}

uint64_t sub_18D3BC6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_18D3BC7A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_18D3BC888()
{
  outlined consume of ResolvableCLKTextProvider.FontStorage(*(v0 + 32), *(v0 + 40));
  outlined consume of ResolvableCLKTextProvider.FontStorage(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

__n128 sub_18D3BC8EC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3BC8F8()
{
  type metadata accessor for LayoutGestureModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BC968()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3BC9A0()
{

  return swift_deallocObject();
}

uint64_t sub_18D3BC9D8()
{

  return swift_deallocObject();
}

uint64_t sub_18D3BCA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Text.Style(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 40);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18D3BCAE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Text.Style(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 40) = (a2 - 1);
  }

  return result;
}

unint64_t *_s7SwiftUI4TextV5StyleV0cD5ColorOwcp_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of Text.Style.TextStyleColor(*a2);
  *a1 = v3;
  return a1;
}

uint64_t sub_18D3BCBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Text.Style(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18D3BCC94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Text.Style(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18D3BCD50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for ResolvableTimer();
  *a2 = *(a1 + *(result + 28));
  return result;
}

uint64_t sub_18D3BCD88(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ResolvableTimer();
  *(a2 + *(result + 28)) = v3;
  return result;
}

uint64_t sub_18D3BCDBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[6]);
    if (v11 >= 2)
    {
      return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = type metadata accessor for Calendar();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for Locale();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = type metadata accessor for TimeZone();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_18D3BCF84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for DateInterval();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v13 = type metadata accessor for Calendar();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for Locale();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = type metadata accessor for TimeZone();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t _s7SwiftUI30LazyPreferencePrefetchSubviews33_EB2336F1CBB87914F55D10FF4F9B475ALLVwta_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

unint64_t _s7SwiftUI15LazyTransaction33_EB2336F1CBB87914F55D10FF4F9B475ALLVAA18RemovableAttributeAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LazyTransaction and conformance LazyTransaction();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s7SwiftUI22LazyDisplayListWrapper33_EB2336F1CBB87914F55D10FF4F9B475ALLVAA18RemovableAttributeAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LazyDisplayListWrapper and conformance LazyDisplayListWrapper();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18D3BD218(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18D3BD2A0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

double sub_18D3BD368@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3BD374(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3BD380@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  CornerMaskingConfiguration.animatableData.getter(v8);
  *a2 = v3;
  v4 = v8[3];
  *(a2 + 40) = v8[2];
  *(a2 + 56) = v4;
  v5 = v8[5];
  *(a2 + 72) = v8[4];
  *(a2 + 88) = v5;
  result = *v8;
  v7 = v8[1];
  *(a2 + 8) = v8[0];
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_18D3BD3E8(double *a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + 8) = *a1;
  *a2 = v2 == 1.0;
  return CornerMaskingConfiguration.animatableData.setter(a1 + 1);
}

double sub_18D3BD42C@<D0>(_OWORD *a1@<X8>)
{
  CornerMaskingConfiguration.animatableData.getter(v6);
  v2 = v6[3];
  a1[2] = v6[2];
  a1[3] = v2;
  v3 = v6[5];
  a1[4] = v6[4];
  a1[5] = v3;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  a1[1] = v5;
  return result;
}

double *sub_18D3BD4A0(double *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = *(result + 2);
  *(a2 + 16) = *result;
  *(a2 + 24) = v3;
  *(a2 + 48) = v4;
  v5 = v2;
  if (v3 == 1.0)
  {
    v5 = 0.0;
  }

  *a2 = v5;
  *(a2 + 8) = v3 == 1.0;
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_18D3BD568(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_18D3BD5AC()
{
  type metadata accessor for _CornerConfigurationToRoundedRectangularShape();
  swift_getWitnessTable();
  type metadata accessor for _ContainerRoundedRectangularShapeModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BD724()
{
  type metadata accessor for PhaseAnimator.EmptyPhasesView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PhaseAnimator.StateTransitioningContainer();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BD82C()
{
  type metadata accessor for PhaseAnimator();
  swift_getWitnessTable();
  type metadata accessor for CustomModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BD8EC()
{
  type metadata accessor for PhaseAnimator();
  swift_getWitnessTable();
  type metadata accessor for CustomModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BD9AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3BD9E4()
{

  return swift_deallocObject();
}

uint64_t sub_18D3BDA24()
{

  return swift_deallocObject();
}

uint64_t sub_18D3BDA5C()
{

  return swift_deallocObject();
}

uint64_t sub_18D3BDA98()
{

  return swift_deallocObject();
}

unint64_t _s7SwiftUI23LayoutGestureChildProxyVSkAASk5index_8offsetBy07limitedI05IndexQzSgAH_SiAHtFTW_0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t _s7SwiftUI23LayoutGestureChildProxyVSlAASl5countSivgTW_0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 160) + 16);
}

uint64_t sub_18D3BDB9C()
{
  v3 = *(v0 + 256);
  v4 = *(v0 + 272);
  v2 = *(v0 + 224);
  outlined consume of ArrayWith2Inline<GestureDebug.Data>.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), v2, *(&v2 + 1), *(v0 + 240), *(v0 + 248), v3, *(&v3 + 1), v4, *(&v4 + 1), *(v0 + 288), *(v0 + 296), *(v0 + 304));

  return swift_deallocObject();
}

uint64_t sub_18D3BDCAC()
{
  type metadata accessor for EventFilter();
  type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>();
  lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>);
  type metadata accessor for Map2Gesture();
  type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>();
  lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>);
  type metadata accessor for Map2Gesture();
  type metadata accessor for DependentGesture();
  type metadata accessor for MapGesture();
  type metadata accessor for EventListener();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ModifierGesture();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ModifierGesture();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ModifierGesture();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ModifierGesture();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ModifierGesture();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BDF38()
{

  return swift_deallocObject();
}

uint64_t sub_18D3BE068()
{
  type metadata accessor for ArrayKeyframeTrackContent();

  return swift_getWitnessTable();
}

uint64_t sub_18D3BE108()
{
  type metadata accessor for EmptyKeyframeTrackContent();

  return swift_getWitnessTable();
}

uint64_t sub_18D3BE170@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE033ContentShapeAccessibilityProviderF033_8830DB57DA6E30576C7025120AC232CCLLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3BE1B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE033ContentShapeAccessibilityProviderF033_8830DB57DA6E30576C7025120AC232CCLLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3BE210()
{
  type metadata accessor for _EnvironmentKeyTransformModifier<ParagraphTypesetting>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BE27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ClosedRange<Date>();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_18D3BE348(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for ClosedRange<Date>();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }
}

uint64_t sub_18D3BE400(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Calendar();
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

  v14 = type metadata accessor for Locale();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for TimeZone();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_18D3BE588(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Calendar();
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

  v16 = type metadata accessor for Locale();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for TimeZone();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_18D3BE71C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = type metadata accessor for Calendar();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Locale();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for TimeZone();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_18D3BE880(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  v8 = type metadata accessor for Calendar();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Locale();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for TimeZone();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_18D3BE9F0()
{
  type metadata accessor for _TraitWritingModifier<LayoutPriorityTraitKey>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BEA5C@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v7 = a1[2];
  v3 = v7;
  *a2 = v6[0];
  a2[1] = v2;
  a2[2] = v3;
  return outlined init with copy of _GraphInputs(v6, &v5);
}

double sub_18D3BEA9C(__int128 *a1, _OWORD *a2)
{
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  v10 = a1[2];
  v4 = a2[1];
  v11[0] = *a2;
  v11[1] = v4;
  v11[2] = a2[2];
  outlined init with copy of DSLGraphInputs(&v8, &v7);
  outlined destroy of _GraphInputs(v11);
  v5 = v9;
  *a2 = v8;
  a2[1] = v5;
  result = *&v10;
  a2[2] = v10;
  return result;
}

uint64_t sub_18D3BEB08@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_18D3BEB54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE026ImageAccessibilityProviderF033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3BEB98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE026ImageAccessibilityProviderF033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3BEBDC@<X0>(uint64_t *a1@<X8>)
{
  result = specialized EnvironmentValues.subscript.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3BEC3C()
{
  type metadata accessor for Optional();
  type metadata accessor for _EnvironmentKeyWritingModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

__n128 sub_18D3BED34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_18D3BEDBC()
{
  type metadata accessor for _PreferenceActionModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BEE30()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_18D3BEF4C()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Prominence>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<HeaderProminenceKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<HeaderProminenceKey>, &protocol witness table for HeaderProminenceKey, type metadata accessor for _TraitWritingModifier);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BF02C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ScheduledAnimationModifier() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  v4 = *(*(v1 - 8) + 8);
  v4(v3, v1);
  v4(v3 + v2[11], v1);

  return swift_deallocObject();
}

uint64_t sub_18D3BF158()
{
  v1 = *(v0 + 32);
  v2 = (type metadata accessor for ScheduledAnimationModifier() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  swift_unknownObjectRelease();
  v4 = *(*(v1 - 8) + 8);
  v4(v0 + v3, v1);
  v4(v0 + v3 + v2[11], v1);

  return swift_deallocObject();
}

uint64_t sub_18D3BF28C()
{
  type metadata accessor for ScheduledAnimationModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for _ValueActionModifier2();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3BF354@<X0>(_DWORD *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static _ViewDebug.properties;
  return result;
}

uint64_t sub_18D3BF3A0(int *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static _ViewDebug.properties = v1;
  return result;
}

uint64_t sub_18D3BF3E8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static _ViewDebug.isInitialized;
  return result;
}

uint64_t sub_18D3BF434(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static _ViewDebug.isInitialized = v1;
  return result;
}

uint64_t sub_18D3BF47C()
{

  return swift_deallocObject();
}

__n128 sub_18D3BF520(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3BF594()
{
  type metadata accessor for _BackdropEffect();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

__n128 sub_18D3BF640(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_18D3BF6B8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18D3BF718(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = type metadata accessor for AnimationContext();
  return AnimationContext.finishingDefinition.setter(v1, v2, v3);
}

__n128 sub_18D3BF770(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_18D3BF7F8@<S0>(float32x4_t *a1@<X8>)
{
  MeshGradient._Paint.animatableData.getter(v4);
  result = v5;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  a1[2].f32[0] = result;
  return result;
}

uint64_t sub_18D3BF84C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(*a1);
  if (result)
  {
    v4 = *(result + 72);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_18D3BF8B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(*a1);
  if (result)
  {
    v4 = *(result + 72);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_18D3BF91C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(*a1);
  if (result)
  {
    v4 = *(result + 72);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_18D3BF984@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA28DisableNavigationDestinationV_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D3BF9F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA28DisableNavigationDestinationV_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D3BFA64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA28DisableNavigationDestinationV_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D3BFC2C()
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ScrollPositionKey();
}

__n128 sub_18D3BFD3C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3BFE50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  v6 = type metadata accessor for ModifiedContent();
  return ModifiedContent<>.animatableData.getter(v6, v4, v5, a3);
}

uint64_t sub_18D3BFEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for ModifiedContent();
  return specialized ModifiedContent<>.animatableData.setter(a1, v7, v5, v6);
}

__n128 sub_18D3BFF00(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void *sub_18D3BFF24@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAC022MaxAllowedDynamicRangeG0V_Tt0B5(*a1, *(a1 + 8), &v4);
  *a2 = v4;
  return result;
}

uint64_t sub_18D3BFFAC()
{
  type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C0078()
{
  type metadata accessor for AppearanceAnimationView.NormalBody_WithAnimation();
  type metadata accessor for AppearanceAnimationView.NormalBody_AnimationValue();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C0158()
{
  type metadata accessor for AppearanceAnimationView.AnimationEffect();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C0228()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18D3C0260()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C0298()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C02D0()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C0310()
{
  type metadata accessor for _AnimationModifier<Bool>();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for IDView();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C03E4()
{
  type metadata accessor for IDView();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C0484()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C0514()
{
  type metadata accessor for _BackgroundStyleModifier<BackgroundStyle>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<BackgroundStyle>, &type metadata for BackgroundStyle, &protocol witness table for BackgroundStyle, type metadata accessor for _BackgroundStyleModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C064C(CC_SHA1_CTX *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *v1;
  return CC_SHA1_Update(a1, v3, 8u);
}

uint64_t sub_18D3C06A8(CC_SHA1_CTX *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  data = *v1;
  return CC_SHA1_Update(a1, &data, 2u);
}

uint64_t sub_18D3C0704(CC_SHA1_CTX *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  data = *v1;
  return CC_SHA1_Update(a1, &data, 4u);
}

uint64_t sub_18D3C0760()
{
  type metadata accessor for ContentShapeSecondaryViewModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C07E0()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C0820()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C0858()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C0898()
{

  return swift_deallocObject();
}

__n128 sub_18D3C0958(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3C0964@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return outlined copy of Material?(v3, v2);
}

uint64_t sub_18D3C0974(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  outlined copy of Material?(*a1, v4);
  result = outlined consume of Material?(v5, v6);
  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3C09FC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_18D3C0A40@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_18D3C0A54(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 48) = *result;
  *(a2 + 56) = v2;
  return result;
}

__n128 sub_18D3C0A80@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

__n128 sub_18D3C0A8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[4] = *a1;
  return result;
}

uint64_t sub_18D3C0AB0()
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C0BE8()
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C0D1C()
{
  type metadata accessor for _GlassEffectContainer();

  return swift_getWitnessTable();
}

uint64_t sub_18D3C0ED0@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static _TestApp.renderOptions;
  return result;
}

uint64_t sub_18D3C0F1C(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static _TestApp.renderOptions = v1;
  return result;
}

uint64_t sub_18D3C0F64@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = static _TestApp.environmentOverride;
  v3 = unk_1EAB26AF0;
  *a1 = static _TestApp.environmentOverride;
  a1[1] = v3;
  return outlined copy of EnvironmentValues?(v2);
}

uint64_t _s7SwiftUI23ResettableListContainer33_6EC83A31B57F45269398E452A4758CA7LLV10WrappedIDsVyx_GSlAASl5index_8offsetBy5IndexQzAK_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI23ResettableListContainer33_6EC83A31B57F45269398E452A4758CA7LLV10WrappedIDsVyx_GSlAASl5index_8offsetBy07limitedQ05IndexQzSgAL_SiALtFTW_0()
{
  swift_getWitnessTable();

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s7SwiftUI23ResettableListContainer33_6EC83A31B57F45269398E452A4758CA7LLV10WrappedIDsVyx_GSlAASl8distance4from2toSi5IndexQz_ALtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_18D3C1144@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ResettableLazyLayoutsFeature.isEnabledForTesting;
  return result;
}

uint64_t sub_18D3C1190(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ResettableLazyLayoutsFeature.isEnabledForTesting = v1;
  return result;
}

uint64_t sub_18D3C1210()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18D3C1250()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for DependentGesture();
  swift_getWitnessTable();
  type metadata accessor for ModifierGesture();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C12FC()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C1344()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C13B0()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C13F0()
{
  type metadata accessor for FilteredTransition();

  return swift_getWitnessTable();
}

uint64_t sub_18D3C1460@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[3];
  v9 = a1[2];
  v10 = v2;
  v11 = a1[4];
  v3 = v11;
  v4 = a1[1];
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  a2[2] = v9;
  a2[3] = v2;
  a2[4] = v3;
  *a2 = v5;
  a2[1] = v4;
  return outlined init with copy of _LazyLayout_PlacedSubview(v8, &v7);
}

uint64_t sub_18D3C14F4@<X0>(uint64_t *a1@<X8>)
{
  result = _LazyLayout_Placements_V1.subviews.getter();
  *a1 = result;
  return result;
}

__n128 sub_18D3C154C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_18D3C155C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_18D3C156C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_18D3C1580(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_18D3C159C@<X0>(uint64_t *a1@<X8>)
{
  result = _LazyLayout_EstimatedPlacements_V1.subviews.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3C1614@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 16);
  if (*(result + 8))
  {
    v2 = 10.0;
  }

  if (*(result + 24))
  {
    v3 = 10.0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

void *sub_18D3C1640(void *result, uint64_t a2)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = v2;
  *(a2 + 24) = 0;
  return result;
}

__n128 sub_18D3C1658@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[2];
  *a2 = result;
  return result;
}

__n128 sub_18D3C1664(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[2] = *a1;
  return result;
}

__n128 sub_18D3C1670@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[3];
  *a2 = result;
  return result;
}

__n128 sub_18D3C167C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[3] = *a1;
  return result;
}

uint64_t sub_18D3C16A0()
{
  type metadata accessor for LazyLayoutReuseIdleModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C1710()
{
  type metadata accessor for _LazyLayout_Subview_V1?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<LazySubviewMinorSizingConfiguration>, &type metadata for LazySubviewMinorSizingConfiguration, type metadata accessor for _EnvironmentKeyWritingModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C17EC()
{
  outlined consume of ContentTransition.Storage(*(v0 + 16), *(v0 + 24) | (*(v0 + 28) << 32), *(v0 + 29));

  return swift_deallocObject();
}

float sub_18D3C1840@<S0>(uint64_t a1@<X0>, float *a2@<X8>, unsigned int a3@<S0>)
{
  LOBYTE(a3) = *(a1 + 7);
  result = a3 * 0.0083333;
  *a2 = result;
  return result;
}

uint64_t sub_18D3C1860(float *a1, uint64_t a2)
{
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(*a1 * 120.0);
  *(a2 + 7) = result;
  return result;
}

float sub_18D3C1898@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = vcvts_n_f32_u32(*(a1 + 8), 7uLL);
  *a2 = result;
  return result;
}

uint64_t sub_18D3C18A8(float *a1, uint64_t a2)
{
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(*a1 * 128.0);
  *(a2 + 8) = result;
  return result;
}

float sub_18D3C18DC@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = vcvts_n_f32_u32(*(a1 + 9), 2uLL);
  *a2 = result;
  return result;
}

uint64_t sub_18D3C18EC(float *a1, uint64_t a2)
{
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(*a1 * 4.0);
  *(a2 + 9) = result;
  if ((*(a2 + 6) & 2) != 0)
  {
    *(a2 + 6) &= ~2u;
  }

  return result;
}

float sub_18D3C1930@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = vcvts_n_f32_u32(*(a1 + 9), 7uLL);
  *a2 = result;
  return result;
}

uint64_t sub_18D3C1940(float *a1, uint64_t a2)
{
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(*a1 * 128.0);
  *(a2 + 9) = result;
  if ((*(a2 + 6) & 2) == 0)
  {
    *(a2 + 6) |= 2u;
  }

  return result;
}

float sub_18D3C1984@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = vcvts_n_f32_s32(*(a1 + 10), 5uLL);
  *a2 = result;
  return result;
}

uint64_t sub_18D3C1994(float *a1, uint64_t a2)
{
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs4Int8V_SfTt1g5(*a1 * 32.0);
  *(a2 + 10) = result;
  return result;
}

uint64_t sub_18D3C19C8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = *(result + 12);
  if (*(result + 13))
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_18D3C19F0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *a1;
  result = EnvironmentValues.contentTransition.getter(&v7);
  v4 = v8;
  v5 = v9;
  v6 = v10;
  *a2 = v7;
  *(a2 + 12) = v5;
  *(a2 + 8) = v4;
  *(a2 + 14) = v6;
  return result;
}

uint64_t sub_18D3C1A90()
{

  specialized EnvironmentValues.contentTransitionAnimation.setter(v0);
}

uint64_t sub_18D3C1AD4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.contentTransitionAddsDrawingGroup.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18D3C1BA0()
{
  outlined consume of Animation.Function(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_18D3C1F38@<X0>(uint64_t *a1@<X8>)
{
  result = Duration.UnitsFormatStyle.allowedUnits.getter();
  *a1 = result;
  return result;
}

uint64_t _s7SwiftUI019_Transition_ContentC0V6ResultOwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of _Transition_ContentTransition.Result(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_18D3C1FDC()
{
  type metadata accessor for ApplyTransitionModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C2054()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C208C()
{
  type metadata accessor for VisualEffectModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C2134()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI23SubviewsCollectionSliceVSkAASk5index_8offsetBy07limitedH05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

__n128 sub_18D3C21E4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18D3C21F8@<X0>(_DWORD *a1@<X8>)
{
  result = ImageRenderer.seed.getter();
  *a1 = result;
  return result;
}

__n128 sub_18D3C2258(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3C2354@<X0>(_BYTE *a1@<X8>)
{
  result = ImageRenderer.isOpaque.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18D3C24B8@<X0>(_BYTE *a1@<X8>)
{
  result = ImageRenderer.isObservationEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18D3C2708()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3C2774@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3C2780(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3C27F0()
{
  type metadata accessor for RendererVisualEffect<_SaturationEffect>();
  lazy protocol witness table accessor for type RendererVisualEffect<_SaturationEffect> and conformance RendererVisualEffect<A>();
  type metadata accessor for CombinedVisualEffect();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C2860@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAA4TextVAAE17AlignmentStrategyV0cG0V_Tt0B5(*a1, a1[1], &v4);
  *a2 = v4;
  return result;
}

uint64_t sub_18D3C28D8()
{
  type metadata accessor for [TextAlignment](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.AlignmentStrategy>, &type metadata for Text.AlignmentStrategy, type metadata accessor for _EnvironmentKeyWritingModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

double sub_18D3C296C@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 * 57.2957795;
  *a2 = result;
  return result;
}

double sub_18D3C2984(double *a1, double *a2)
{
  result = *a1 * 0.0174532925;
  *a2 = result;
  return result;
}

double sub_18D3C299C@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 * 128.0;
  *a2 = result;
  return result;
}

double sub_18D3C29B4(double *a1, double *a2)
{
  result = *a1 * 0.0078125;
  *a2 = result;
  return result;
}

double sub_18D3C2A24@<D0>(_OWORD *a1@<X8>)
{
  GlassContainer.DisplayMaterial.id.getter(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_18D3C2AA8()
{

  outlined consume of Environment<String?>.Content(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_18D3C2B64()
{
  outlined consume of _Glass.Variant.Role(v0[2], v0[3]);

  if (v0[15] != 1)
  {
    outlined consume of _Glass.Variant.Role(v0[12], v0[13]);
  }

  if (v0[21] != 1)
  {
    outlined consume of _Glass.Variant.Role(v0[18], v0[19]);
  }

  return swift_deallocObject();
}

uint64_t sub_18D3C2C1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3C2C54()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C2DE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3C2E28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *sub_18D3C30F8@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.dividerThickness.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_18D3C34DC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.allowsVibrantBlending.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18D3C35F0()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Font?>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C365C()
{
  type metadata accessor for _ContiguousArrayStorage<(NSAttributedStringKey, Any)>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<[AnyFontModifier]>, type metadata accessor for [AnyFontModifier], type metadata accessor for _EnvironmentKeyTransformModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C37AC()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C37FC()
{
  outlined consume of GlassContainer.Entry.ModelID(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  outlined consume of _Glass.Variant.Role(*(v0 + 56), *(v0 + 64));

  outlined consume of _Glass.Variant.Role(*(v0 + 160), *(v0 + 168));

  if (*(v0 + 264) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(v0 + 240), *(v0 + 248));
  }

  if (*(v0 + 312) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(v0 + 288), *(v0 + 296));
  }

  return swift_deallocObject();
}

uint64_t sub_18D3C38B8@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v3 = byte_1EAB273F0;
  *a1 = static GraphReuseOptions.overrideValue;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_18D3C390C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  result = swift_beginAccess();
  static GraphReuseOptions.overrideValue = v1;
  byte_1EAB273F0 = v2;
  return result;
}

uint64_t sub_18D3C3964()
{
  v4 = *(v0 + 16);
  v1 = *(type metadata accessor for ForEach() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);

  (*(*(v4 - 8) + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t _s7SwiftUI12ForEachStateC22StaticViewIDCollection33_1A3DD35AB7F6976908CD7AF959F34D1FLLVyxq_q0__GSlAASl5index_8offsetBy5IndexQzAK_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI12ForEachStateC22StaticViewIDCollection33_1A3DD35AB7F6976908CD7AF959F34D1FLLVyxq_q0__GSlAASl5index_8offsetBy07limitedS05IndexQzSgAL_SiALtFTW_0()
{
  swift_getWitnessTable();

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s7SwiftUI12ForEachStateC22StaticViewIDCollection33_1A3DD35AB7F6976908CD7AF959F34D1FLLVyxq_q0__GSlAASl8distance4from2toSi5IndexQz_ALtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI12ForEachStateC0cD16ViewIDCollection33_1A3DD35AB7F6976908CD7AF959F34D1FLLVyxq_q0__GSlAASl5index_8offsetBy5IndexQzAK_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI12ForEachStateC0cD16ViewIDCollection33_1A3DD35AB7F6976908CD7AF959F34D1FLLVyxq_q0__GSlAASl5index_8offsetBy07limitedR05IndexQzSgAL_SiALtFTW_0()
{
  swift_getWitnessTable();

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s7SwiftUI12ForEachStateC0cD16ViewIDCollection33_1A3DD35AB7F6976908CD7AF959F34D1FLLVyxq_q0__GSlAASl8distance4from2toSi5IndexQz_ALtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_18D3C3E18()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

__n128 sub_18D3C3EFC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3C40A4()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

void sub_18D3C4110(uint64_t a1@<X8>)
{
  *a1 = _ColorMultiplyEffect._Resolved.animatableData.getter();
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
}

__n128 sub_18D3C41F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3C423C@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for Canvas();
  result = Canvas.colorMode.getter(v2, &v4);
  *a1 = v4;
  return result;
}

_BYTE *sub_18D3C4288(char *a1)
{
  v3 = *a1;
  v1 = type metadata accessor for Canvas();
  return Canvas.colorMode.setter(&v3, v1);
}

uint64_t sub_18D3C43D0()
{

  return swift_deallocObject();
}

float sub_18D3C4438(float32x4_t *a1)
{
  v1 = a1[1].i32[0];
  v3 = *a1;
  v4 = v1;
  Color.ResolvedHDR.animatableData.setter(&v3);
  return result;
}

uint64_t sub_18D3C448C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE025TextAccessibilityProviderF033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3C44D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE025TextAccessibilityProviderF033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

__n128 sub_18D3C4548(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_18D3C455C()
{
  type metadata accessor for _AnchorTransformModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

double _s7SwiftUI33ExperimentalGlassMaterialProviderVAA0eF0A2aDP22resolveForegroundStyle5level2inAA0E0VAAE0hI0VSgSi_AjAE7ContextVtFTW_0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 84) = -256;
  return result;
}

uint64_t sub_18D3C4620()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C4670()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C46E8()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C4730@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  a2[1] = 0;
}

uint64_t sub_18D3C4740(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_18D3C478C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.systemMaterialDefinition.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t *_s7SwiftUI8MaterialVAAE5LayerV8SDFLayerV05GroupD0V5BlendOwcp_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  *a1 = v3;
  return a1;
}

uint64_t _s7SwiftUI8MaterialVAAE5LayerV6FilterV8ContentsO12VariableBlurV4MaskOwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Material.Layer.Filter.Contents.VariableBlur.Mask(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

__n128 sub_18D3C4984(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3C4990()
{
  type metadata accessor for _ClipEffect();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C4A58()
{
  type metadata accessor for _ClipEffect();
  swift_getWitnessTable();
  type metadata accessor for RendererVisualEffect();
  swift_getWitnessTable();
  type metadata accessor for CombinedVisualEffect();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C4B7C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:);
  a2[1] = v5;
}

uint64_t sub_18D3C4BF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(*a1);
}

uint64_t sub_18D3C4C4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(*a1);
}

uint64_t sub_18D3C4D10()
{
  type metadata accessor for CustomModifier();
  type metadata accessor for _PushPopTransactionModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t _s7SwiftUI4FontV27PrivateSystemDesignProviderVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  v4 = v3;
  return a1;
}

double _s7SwiftUI9RectangleV6_InsetVAA4ViewA2aFP4body4BodyQzvgTW_0@<D0>(uint64_t a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  *(a1 + 8) = 256;
  return result;
}

__n128 sub_18D3C5024(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18D3C567C()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for TruePreferenceWritingGestureModifier();
  swift_getWitnessTable();
  type metadata accessor for ModifierGesture();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C5738()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C58D0()
{
  type metadata accessor for Renderer();
  swift_getWitnessTable();
  type metadata accessor for TextRenderer_V2ViewModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

BOOL sub_18D3C5978@<W0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isVibrantColorStyleEnabled.getter();
  *a1 = result;
  return result;
}

uint64_t *sub_18D3C59C4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (result[1])
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v2 = *result;
    v3 = result[2];
    if (result[3])
    {
      v2 = 0;
      v3 = 0;
    }

    v4 = (result[3] & 1) != 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t *sub_18D3C5A08(uint64_t *result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = *result;
    v4 = result[1];
  }

  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v2;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  return result;
}

uint64_t sub_18D3C5A40@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 56))
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v2 = *(result + 48);
    v3 = *(result + 64);
    if (*(result + 72))
    {
      v2 = 0;
      v3 = 0;
    }

    v4 = (*(result + 72) & 1) != 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t *sub_18D3C5A84(uint64_t *result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = *result;
    v4 = result[1];
  }

  *(a2 + 48) = v3;
  *(a2 + 56) = v2;
  *(a2 + 64) = v4;
  *(a2 + 72) = v2;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  return result;
}

uint64_t sub_18D3C5ABC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 104))
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v2 = *(result + 96);
    v3 = *(result + 112);
    if (*(result + 120))
    {
      v2 = 0;
      v3 = 0;
    }

    v4 = (*(result + 120) & 1) != 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t *sub_18D3C5B00(uint64_t *result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = *result;
    v4 = result[1];
  }

  *(a2 + 96) = v3;
  *(a2 + 104) = v2;
  *(a2 + 112) = v4;
  *(a2 + 120) = v2;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  return result;
}

uint64_t sub_18D3C5B38()
{
  outlined consume of Gradient.ProviderTag(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t _s7SwiftUI8GradientVAAE06EitherC10DefinitionOAA12CodableProxyA2aFP4base4BaseQzvgTW_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return outlined copy of EitherGradient(v2, v3);
}

uint64_t sub_18D3C61B8()
{
  _ss7KeyPathCy7SwiftUI17EnvironmentValuesVAC15LayoutDirectionOGMaTm_1(255, &lazy cache variable for type metadata for ModifiedContent<_PaddingLayout, _SafeAreaInsetsModifier>, &type metadata for _PaddingLayout, &type metadata for _SafeAreaInsetsModifier, type metadata accessor for ModifiedContent);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ModifiedContent<_PaddingLayout, _SafeAreaInsetsModifier> and conformance <> ModifiedContent<A, B>();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C6260@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  result = EnvironmentValues.colorScheme.getter(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_18D3C6484()
{
  type metadata accessor for [ColorScheme](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ColorScheme>, &type metadata for ColorScheme, type metadata accessor for _EnvironmentKeyWritingModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

id sub_18D3C6584@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 swiftUI_viewTestProperties];
  *a2 = result;
  return result;
}

uint64_t sub_18D3C65CC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_18D3C6664()
{
  type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C66D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

void *sub_18D3C67A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18D3C6868()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C68B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3C68E8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

double sub_18D3C69C0@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3C69CC(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3C69D8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_18D3C69E4(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

__n128 sub_18D3C69F8@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3C6A04(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3C6A70@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = vmulq_f64(*(a1 + 16), vdupq_n_s64(0x4060000000000000uLL));
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3C6A88(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = vmulq_f64(*(a1 + 16), vdupq_n_s64(0x3F80000000000000uLL));
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18D3C6B04()
{
  type metadata accessor for TransitionBox<ScaleTransition>(255, &lazy cache variable for type metadata for GeometryVisualEffect<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for GeometryVisualEffect);
  lazy protocol witness table accessor for type GeometryVisualEffect<_ScaleEffect> and conformance GeometryVisualEffect<A>();
  type metadata accessor for CombinedVisualEffect();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C6BBC()
{
  type metadata accessor for _InsetViewModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C6C30()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C6C88()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<TintAdjustmentMode?>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C6CF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18D3C6D2C()
{
  type metadata accessor for SectionsRoot();
  type metadata accessor for _VariadicView.Tree();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C6DB4()
{

  return swift_deallocObject();
}

void *_s7SwiftUI12SectionsRootV5ChildVwcp_0(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  a1[1] = v3;
  v4 = v3;
  return a1;
}

uint64_t sub_18D3C6E28(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v5 = *a3;
  v6 = v3;
  return DynamicLayoutMap.subscript.setter(&v6, &v5);
}

uint64_t sub_18D3C6E78@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

double sub_18D3C6EE8@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3C6EF4(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3C6F00@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

double sub_18D3C6F0C(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 24) = *a1;
  return result;
}

double sub_18D3C6F18@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_18D3C6F24(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 16) = *a1;
  return result;
}

double sub_18D3C6F30@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_18D3C6F3C(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

__n128 sub_18D3C6F48@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3C6F54(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

double sub_18D3C6F60@<D0>(double *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v3 = a1 + 3;
  if (*a2 != 2)
  {
    v3 = a1 + 2;
  }

  v4 = a1 + 1;
  if (!*a2)
  {
    v4 = a1;
  }

  if (*a2 <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  result = *v5;
  *a3 = *v5;
  return result;
}

void *sub_18D3C6F94(void *result, void *a2, _BYTE *a3)
{
  v3 = a2 + 3;
  if (*a3 != 2)
  {
    v3 = a2 + 2;
  }

  v4 = a2 + 1;
  if (!*a3)
  {
    v4 = a2;
  }

  if (*a3 <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  *v5 = *result;
  return result;
}

uint64_t sub_18D3C6FD8()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t _s7SwiftUI4EdgeOAAE6CornerOs28CustomDebugStringConvertibleAAsAFP16debugDescriptionSSvgTW_0()
{
  if (*v0)
  {
    v1 = 0x69617254706F742ELL;
  }

  else
  {
    v1 = 0x6461654C706F742ELL;
  }

  if (*v0 - 2 >= 2)
  {
    return v1;
  }

  else
  {
    return 0x4C6D6F74746F622ELL;
  }
}

uint64_t *sub_18D3C70EC(uint64_t *result, void *a2, unsigned __int8 *a3)
{
  v3 = *result;
  if (*a3 <= 1u)
  {
    if (!*a3)
    {
      if (a3[1])
      {
LABEL_4:
        *a2 = v3;
        return result;
      }

      goto LABEL_7;
    }

    if (a3[1])
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (*a3 == 2)
  {
    if ((a3[1] & 1) == 0)
    {
LABEL_7:
      a2[1] = v3;
      return result;
    }

    goto LABEL_11;
  }

  if (a3[1])
  {
LABEL_11:
    a2[2] = v3;
    return result;
  }

LABEL_12:
  a2[3] = v3;
  return result;
}

__n128 sub_18D3C7154@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v2 = *(a1 + 56);
  a2->n128_u64[0] = *(a1 + 16);
  a2->n128_u64[1] = v2;
  result = *(a1 + 24);
  a2[1] = result;
  return result;
}

double *sub_18D3C716C(double *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 1);
  v4 = result[2];
  v5 = result[3];
  *(a2 + 16) = *result;
  *(a2 + 24) = v4;
  *(a2 + 56) = v3;
  v6 = v5 == 1.0;
  if (v4 != 1.0)
  {
    v6 = *&v2;
  }

  *a2 = v6;
  *(a2 + 8) = v4 == 1.0;
  *(a2 + 32) = v5;
  *(a2 + 40) = v3;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_18D3C71C0()
{
  v1 = *(v0 + 24);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, v1))
  {
    (*(v4 + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18D3C72E0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3C730C()
{

  EnvironmentValues.mapKitTintColor.setter(v0);
}

uint64_t sub_18D3C73A0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3C73F4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3C7430()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<AnyShapeStyle?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle?>, &lazy cache variable for type metadata for AnyShapeStyle?);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C74B8()
{
  type metadata accessor for _EnvironmentKeyTransformModifier<[TintPlacement : AnyShapeStyle]>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C7528()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<AnyShapeStyle?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C75CC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static ReuseTrace.recorder;
}

void *sub_18D3C7638@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityF033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

void sub_18D3C76C0()
{
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.SuperscriptAttribute and conformance AttributeScopes.SwiftUIAttributes.SuperscriptAttribute();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t _s7SwiftUI17SystemFormatStyleO5TimerVAA026ContentTransitionProvidingdE0AAWI_0(uint64_t a1)
{
  result = _s10Foundation4DateVACSLAAWlTm_4(&lazy protocol witness table cache variable for type SystemFormatStyle.Timer and conformance SystemFormatStyle.Timer, type metadata accessor for SystemFormatStyle.Timer);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s7SwiftUI17SystemFormatStyleO5TimerVAA026SafelySerializableDiscretedE0AAWI_0(uint64_t a1)
{
  result = _s10Foundation4DateVACSLAAWlTm_4(&lazy protocol witness table cache variable for type SystemFormatStyle.Timer and conformance SystemFormatStyle.Timer, type metadata accessor for SystemFormatStyle.Timer);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_18D3C7820(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3C782C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Locale();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[12];
    goto LABEL_7;
  }

  v11 = type metadata accessor for FormatStyleCapitalizationContext();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[15];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[17]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_18D3C7988(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for Locale();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[12];
    }

    else
    {
      result = type metadata accessor for FormatStyleCapitalizationContext();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[17]) = a2;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[15];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_18D3C7AF4@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.accessibility.getter();
  result = type metadata accessor for AttributeScopes.AccessibilityAttributes();
  *a1 = result;
  return result;
}

uint64_t _s7SwiftUI17SystemFormatStyleO9StopwatchVAA026SafelySerializableDiscretedE0AAWI_0(uint64_t a1)
{
  result = _s10Foundation4DateVACSLAAWlTm_5(&lazy protocol witness table cache variable for type SystemFormatStyle.Stopwatch and conformance SystemFormatStyle.Stopwatch, type metadata accessor for SystemFormatStyle.Stopwatch);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s7SwiftUI17SystemFormatStyleO9StopwatchVAA024UpdateFrequencyDependentdE0AAWI_0(uint64_t a1)
{
  result = _s10Foundation4DateVACSLAAWlTm_5(&lazy protocol witness table cache variable for type SystemFormatStyle.Stopwatch and conformance SystemFormatStyle.Stopwatch, type metadata accessor for SystemFormatStyle.Stopwatch);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18D3C7BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemFormatStyle.Timer();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3C7C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemFormatStyle.Timer();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_18D3C7CB0(os_unfair_lock_s **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 4);
  os_unfair_lock_opaque = v3[6]._os_unfair_lock_opaque;
  v5 = v3[7]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v3 + 4);
  *a2 = os_unfair_lock_opaque;
  *(a2 + 4) = v5;
}

uint64_t _s7SwiftUI21MaterialBackdropProxyV7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_18D3C7D48()
{
  if (*(v0 + 40))
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

    if (*(v0 + 136))
    {
      if (*(v0 + 96))
      {
        outlined consume of Text.Storage(*(v0 + 72), *(v0 + 80), *(v0 + 88));
      }

      if (*(v0 + 128))
      {
        outlined consume of Text.Storage(*(v0 + 104), *(v0 + 112), *(v0 + 120));
      }
    }

    if (*(v0 + 264))
    {
      if (*(v0 + 224))
      {
        outlined consume of Text.Storage(*(v0 + 200), *(v0 + 208), *(v0 + 216));
      }

      if (*(v0 + 256))
      {
        outlined consume of Text.Storage(*(v0 + 232), *(v0 + 240), *(v0 + 248));
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18D3C7E54()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18D3C7E98()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C7EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessibilityNodeAttachment.Storage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18D3C7FBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessibilityNodeAttachment.Storage(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_18D3C8074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_18D3C813C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_18D3C81F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_18D3C82C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_18D3C837C()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3C83E8@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 * 128.0;
  *a2 = result;
  return result;
}

double sub_18D3C8400(double *a1, double *a2)
{
  result = *a1 * 0.0078125;
  *a2 = result;
  return result;
}

uint64_t sub_18D3C847C()
{
  type metadata accessor for RendererVisualEffect<_HueRotationEffect>();
  lazy protocol witness table accessor for type RendererVisualEffect<_HueRotationEffect> and conformance RendererVisualEffect<A>();
  type metadata accessor for CombinedVisualEffect();
  return swift_getWitnessTable();
}

uint64_t _s7SwiftUI18SectionAccumulatorV6RowIDsVSkAASk5index_8offsetBy07limitedI05IndexQzSgAJ_SiAJtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_18D3C8538()
{
  type metadata accessor for AnchorGeometryTransformModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18D3C85A8()
{

  return swift_deallocObject();
}

uint64_t sub_18D3C85F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = ViewRendererHost.centersRootView.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

__n128 sub_18D3C866C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3C8874@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 208);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18D3C88C4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 208) = v2;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_18D3C89B4@<Q0>(__n128 *a1@<X8>)
{
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  result = *Value;
  *a1 = *Value;
  return result;
}

__n128 sub_18D3C8A94@<Q0>(_OWORD *a1@<X8>)
{
  Value = AGGraphGetValue();
  result = *Value;
  v4 = *(Value + 16);
  *a1 = *Value;
  a1[1] = v4;
  return result;
}

__n128 sub_18D3C8BEC@<Q0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 32);
  result = *Value;
  v5 = *(Value + 16);
  *a1 = *Value;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_18D3C8CC8@<X0>(__int128 *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[3];
  v5 = *Value;
  v4 = Value[1];
  v10[2] = Value[2];
  v10[3] = v3;
  v10[0] = v5;
  v10[1] = v4;
  v6 = Value[1];
  *a1 = *Value;
  a1[1] = v6;
  v7 = Value[3];
  a1[2] = Value[2];
  a1[3] = v7;
  return outlined init with copy of ViewGeometry(v10, &v9);
}

uint64_t sub_18D3C8DC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 300);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3C8DF0(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *(*a2 + 300) = *v2;
  return result;
}

uint64_t sub_18D3C8E14@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 304);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3C8E40(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *(*a2 + 304) = *v2;
  return result;
}

uint64_t sub_18D3C8E64@<X0>(void *a1@<X8>)
{
  *a1 = *AGGraphGetValue();
}

uint64_t sub_18D3C8F3C@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;
}

uint64_t sub_18D3C9018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 361);
  return result;
}

uint64_t sub_18D3C9064@<X0>(uint64_t *a1@<X8>)
{
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

int *sub_18D3C90C0@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result == *MEMORY[0x1E698D3F8];
  if (*result == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3C90E8(uint64_t result, _DWORD *a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *a2 = *v2;
  return result;
}

__n128 sub_18D3C9108@<Q0>(_OWORD *a1@<X8>)
{
  Value = AGGraphGetValue();
  result = *Value;
  v4 = *(Value + 16);
  *a1 = *Value;
  a1[1] = v4;
  return result;
}

uint64_t sub_18D3C91C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3C91EC(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *(a2 + 8) = *v2;
  return result;
}

uint64_t sub_18D3C920C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 12);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3C9234(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *(a2 + 12) = *v2;
  return result;
}

uint64_t sub_18D3C9254@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA013CanTransitiondJ0V_Tt0B5(0, *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D3C92B0()
{
  type metadata accessor for _TraitWritingModifier<TransitionTraitKey>();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AutomaticPaddingViewModifier.PaddingLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AutomaticPaddingViewModifier.PaddingLayout(uint64_t result, int a2, int a3)
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

  *(result + 12) = v3;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance DisplayList.Properties(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *a2 & *v2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance DisplayList.Properties@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result & *v2;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance DisplayList.Properties@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *result;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t getEnumTagSinglePayload for DisplayList.Index(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DisplayList.Index(uint64_t result, int a2, int a3)
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

  *(result + 17) = v3;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance DisplayList.Index.RestoreOptions(_BYTE *a1, unsigned __int8 *a2)
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

unsigned __int8 *protocol witness for SetAlgebra.remove(_:) in conformance DisplayList.Index.RestoreOptions@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
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

unsigned __int8 *protocol witness for SetAlgebra.update(with:) in conformance DisplayList.Index.RestoreOptions@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

void *assignWithCopy for ScrollEdgeEffectTag.ID(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for PathSet(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance CoreViewRepresentableLayoutOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result & *v2;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance CoreViewRepresentableLayoutOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *result;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t getEnumTagSinglePayload for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t assignWithTake for LeafLayoutEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void *assignWithTake for ClosestFitCache(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for Image.LayoutMetrics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Image.LayoutMetrics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance CodableBoxCodingKeys@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

double protocol witness for ContentResponder.contentPath(size:kind:) in conformance ColorView@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  specialized ContentResponder.contentPath(size:kind:)(*a1, v7, a3, a4);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t storeEnumTagSinglePayload for GlassEffectItemInit(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

void **assignWithCopy for CodableAttributedString(void **a1, void **a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v5 = v3;

  return a1;
}

void **assignWithTake for CodableAttributedString(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Font.Weight@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Alignment@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id protocol witness for CodableByProxy.codingProxy.getter in conformance NSAttributedStringKey@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

double protocol witness for static Rule.initialValue.getter in conformance AutomaticPaddingViewModifier.PaddingLayout@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t storeEnumTagSinglePayload for SizeFittingTextCache.Variants.Index(uint64_t result, int a2, int a3)
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

uint64_t storeEnumTagSinglePayload for PlatformArchivedDisplayList(uint64_t result, int a2, int a3)
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

double protocol witness for static Rule.initialValue.getter in conformance ScrollGeometryTransformProvider@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

_OWORD *assignWithTake for _CALayerView(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t TextVariantsStorage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance DisplayList.Options(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *v2;
  v4 = *a2;
  if ((v4 & v3) != v4)
  {
    *v2 = v4 | v3;
  }

  *a1 = v4;
  return (v4 & v3) != v4;
}

unsigned __int8 *protocol witness for SetAlgebra.remove(_:) in conformance DisplayList.Options@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  v4 = *result;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v3 & ~v4;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *protocol witness for SetAlgebra.update(with:) in conformance DisplayList.Options@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  v4 = *result;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance MatchedFrame@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TextJustification.Storage.NoneCodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t assignWithTake for _ForegroundLayerLevelColorMatrixEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t getEnumTag for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance CollectionChanges<A, B>(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void protocol witness for static StatefulRule.initialValue.getter in conformance _ShaderFilterEffect.ResolvedEffect(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 1;
  *(a1 + 24) = 0;
}

uint64_t initializeWithCopy for DynamicTextViewFactory(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for LayoutSubviews.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

id protocol witness for static UserDefaultKeyedFeature.defaults.getter in conformance TapGestureUsesGesturesFrameworkFeature()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

void *assignWithCopy for IndirectOptional(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

double protocol witness for ContentResponder.contentPath(size:kind:) in conformance _CALayerView<A>@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  ContentResponder.contentPath(size:kind:)(a1, a2, a3, v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

uint64_t ScrollStateRequest.updateScrollable(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return _ViewInputs.base.modify(a2, a3);
}

{
  return _ViewInputs.base.modify(a2, a3);
}

double protocol witness for static StatefulRule.initialValue.getter in conformance GlassEffectItemMaterial@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18DDB6AC0;
  return result;
}

uint64_t assignWithTake for TimeDataFormattingContainer(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void *assignWithTake for OpacityResponderFilter(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t assignWithTake for Image.SymbolRenderingOptionsProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

void *assignWithTake for ScrollEdgeEffectTag.ID(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *_CorePlatformImageMakeKitImage(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (CorePlatformImageClass_once != -1)
  {
    _CorePlatformImageMakeKitImage_cold_1();
  }

  if ((CorePlatformImageClass_isValid & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"Invalid image class" format:&stru_1F00C2360];
  }

  v7 = [[CorePlatformImageClass_imageClass alloc] initWithCGImage:a3 scale:a4 orientation:a1];
  if ([v7 renderingMode] == 2)
  {
    v8 = [v7 imageWithRenderingMode:2];

    v7 = v8;
  }

  [v7 baselineOffsetFromBottom];
  if (v9 > 0.0)
  {
    [v7 baselineOffsetFromBottom];
    v10 = [v7 imageWithBaselineOffsetFromBottom:?];

    return v10;
  }

  return v7;
}

uint64_t _CorePlatformImageGetCGImage(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 CGImage];
  }

  else
  {
    return 0;
  }
}

double _CorePlatformImageGetSize(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  Width = *MEMORY[0x1E695F060];
  if (v2)
  {
    v5 = [v2 CGImage];
    if (v5)
    {
      v6 = v5;
      CGImageGetHeight(v5);
      Width = CGImageGetWidth(v6);
    }
  }

  return Width;
}

Class __CorePlatformImageClass_block_invoke()
{
  result = NSClassFromString(&cfstr_Uiimage.isa);
  CorePlatformImageClass_imageClass = result;
  CorePlatformImageClass_isValid = result != 0;
  return result;
}

uint64_t _CUIDefaultWatchOSSubtype()
{
  if (_CUIDefaultWatchOSSubtype_onceToken != -1)
  {
    _CUIDefaultWatchOSSubtype_cold_1();
  }

  return _CUIDefaultWatchOSSubtype_watchSubtype;
}

id _CAFilterGetInput(void *a1, int a2)
{
  v3 = a1;
  v4 = _CAFilterInputKey(a2);
  v5 = [v3 valueForKey:v4];

  return v5;
}

uint64_t _CACompositingFilterGetRBBlendMode(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:*MEMORY[0x1E6979CA8]])
    {
      v3 = 1;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979D18]])
    {
      v3 = 2;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979CD0]])
    {
      v3 = 3;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E69798C0]])
    {
      v3 = 4;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979C30]])
    {
      v3 = 5;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979860]])
    {
      v3 = 6;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979850]])
    {
      v3 = 7;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979D20]])
    {
      v3 = 8;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979940]])
    {
      v3 = 9;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E69798F8]])
    {
      v3 = 10;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979920]])
    {
      v3 = 11;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979948]])
    {
      v3 = 12;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979D10]])
    {
      v3 = 13;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979840]])
    {
      v3 = 14;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979C78]])
    {
      v3 = 15;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979830]])
    {
      v3 = 16;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E69798A8]])
    {
      v3 = 17;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979D30]])
    {
      v3 = 18;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979D38]])
    {
      v3 = 19;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979D28]])
    {
      v3 = 20;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E69798F0]])
    {
      v3 = 21;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E69798E0]])
    {
      v3 = 22;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E69798E8]])
    {
      v3 = 23;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E69798D8]])
    {
      v3 = 24;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979D98]])
    {
      v3 = 25;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979CE8]])
    {
      v3 = 26;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979CF8]])
    {
      v3 = 27;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979C58]])
    {
      v3 = 1000;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979C50]])
    {
      v3 = 1001;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979C60]])
    {
      v3 = 1002;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979CE0]])
    {
      v3 = 1003;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979D48]])
    {
      v3 = 1004;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979908]])
    {
      v3 = 1005;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979C88]])
    {
      v3 = 1006;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E69798C8]])
    {
      v3 = 1010;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E6979C38]])
    {
      v3 = 1011;
    }

    else
    {
      v3 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}