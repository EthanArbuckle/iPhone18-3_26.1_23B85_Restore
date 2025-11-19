int64_t closure #1 in GraphicsImage.encode(to:)(uint64_t a1, uint64_t a2)
{
  ProtobufEncoder.encodeVarint(_:)(0x42uLL);
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v4;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    *(a2 + 24) = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
    *(a2 + 24) = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + 8 * v7 + 32) = v3;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(a2 + 8) = v3 + 1;
    Color.ResolvedHDR.encode(to:)(a2);
    return ProtobufEncoder.endLengthDelimited()();
  }

  return result;
}

id ResolvedVectorGlyph.location.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return outlined copy of Image.Location(v2);
}

uint64_t ResolvedVectorGlyph.init(glyph:value:flipsRightToLeft:in:at:catalog:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a5;
  v14 = *(a4 + 16);
  if (v14)
  {
    if ((a2 & 0x100000000) != 0)
    {
      v15 = INFINITY;
    }

    else
    {
      v15 = *&a2;
    }

    v16 = v14;
    v17 = ImageResolutionContext.willUpdateVectorGlyph(to:variableValue:)(a1, v15);
  }

  else
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E69C7108]) init];
    [v16 setAnchorPoint_];
    v17 = 0;
    if ((a2 & 0x100000000) != 0)
    {
      v15 = INFINITY;
    }

    else
    {
      v15 = *&a2;
    }
  }

  [v16 setGlyph_];
  [v16 setVariableValue_];
  [v16 setFlipsRightToLeft_];
  ImageResolutionContext.updateSymbolAnimator(_:)(v16);
  v18 = *a4;
  if (*(a4 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v18, &v24);

    v19 = v24;
  }

  else
  {
    v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(*a4);
    if (v20)
    {
      v19 = *(v20 + 72);
    }

    else
    {
      v19 = 0;
    }
  }

  v21 = [v16 version];

  v22 = *(a4 + *(type metadata accessor for ImageResolutionContext() + 40));
  result = outlined destroy of (GraphicsImage.WeakContents, GraphicsImage.WeakContents)(a4, type metadata accessor for ImageResolutionContext);
  *a7 = v16;
  *(a7 + 8) = v19;
  *(a7 + 16) = v13;
  *(a7 + 24) = v21;
  *(a7 + 28) = v17 & 1;
  *(a7 + 29) = (v22 & 0x10) != 0;
  *(a7 + 32) = a6;
  return result;
}

id ResolvedVectorGlyph.glyph.getter()
{
  v1 = [*v0 glyph];

  return v1;
}

unint64_t ResolvedVectorGlyph.value.getter()
{
  [*v0 variableValue];
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v3 = 0;
  }

  else
  {
    *&v2 = v1;
    v3 = v2;
  }

  return v3 | (((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) << 32);
}

id ResolvedVectorGlyph.renderingMode.getter@<X0>(char *a1@<X8>)
{
  result = [*v1 renderingMode];
  if (result == 130)
  {
    v4 = 7;
  }

  else
  {
    v4 = 8;
  }

  if (result == 129)
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  if (result == 128)
  {
    v6 = 5;
  }

  else
  {
    v6 = 8;
  }

  if (result == 4)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  if (result <= 128)
  {
    v5 = v7;
  }

  if (result == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = 8;
  }

  if (result == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (result == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 8;
  }

  if (!result)
  {
    v10 = 4;
  }

  if (result > 1)
  {
    v10 = v9;
  }

  if (result > 3)
  {
    v10 = v5;
  }

  *a1 = v10;
  return result;
}

void ResolvedVectorGlyph.resolvedRenderingMode.getter(char *a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 renderingMode];
  v5 = 8;
  if (v4 > 3)
  {
    if (v4 > 128)
    {
      if (v4 == 129)
      {
        v5 = 6;
      }

      else if (v4 == 130)
      {
        v5 = 7;
      }
    }

    else if (v4 == 4)
    {
      v5 = 3;
    }

    else if (v4 == 128)
    {
      v5 = 5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = [v3 glyph];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 preferredRenderingMode];

      if (v8 == 2)
      {
        v5 = 1;
      }

      else
      {
        v5 = 8;
      }

      if (v8 == 3)
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 4;
    }
  }

  *a1 = v5;
}

uint64_t outlined init with take of WeakBox<VectorImageContents>(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for WeakBox<VectorImageContents>(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of WeakBox<VectorImageContents>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for WeakBox<VectorImageContents>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for WeakBox<VectorImageContents>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for WeakBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

BOOL specialized static GraphicsImage.WeakContents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of GraphicsImage.WeakContents(a1, v12);
  outlined init with copy of GraphicsImage.WeakContents(a2, &v14);
  if (v13)
  {
    if (v13 == 1)
    {
      outlined init with copy of GraphicsImage.WeakContents(v12, v11);
      if (v15 == 1)
      {
        outlined init with take of WeakBox<VectorImageContents>(v11, v10, &lazy cache variable for type metadata for WeakBox<IOSurfaceRef>, type metadata accessor for IOSurfaceRef);
        outlined init with take of WeakBox<VectorImageContents>(&v14, &v9, &lazy cache variable for type metadata for WeakBox<IOSurfaceRef>, type metadata accessor for IOSurfaceRef);
        Strong = swift_unknownObjectWeakLoadStrong();
        v4 = swift_unknownObjectWeakLoadStrong();
        outlined destroy of WeakBox<VectorImageContents>(&v9, &lazy cache variable for type metadata for WeakBox<IOSurfaceRef>, type metadata accessor for IOSurfaceRef);
        outlined destroy of WeakBox<VectorImageContents>(v10, &lazy cache variable for type metadata for WeakBox<IOSurfaceRef>, type metadata accessor for IOSurfaceRef);
        if (Strong)
        {
          if (v4)
          {
LABEL_6:

LABEL_13:
            v7 = Strong == v4;
LABEL_26:
            outlined destroy of GraphicsImage.WeakContents(v12);
            return v7;
          }

          goto LABEL_19;
        }

LABEL_20:
        if (v4)
        {

          goto LABEL_25;
        }

LABEL_23:
        v7 = 1;
        goto LABEL_26;
      }

      v5 = &lazy cache variable for type metadata for WeakBox<IOSurfaceRef>;
      v6 = type metadata accessor for IOSurfaceRef;
    }

    else
    {
      outlined init with copy of GraphicsImage.WeakContents(v12, v11);
      if (v15 == 2)
      {
        outlined init with take of WeakBox<VectorImageContents>(v11, v10, &lazy cache variable for type metadata for WeakBox<VectorImageContents>, type metadata accessor for VectorImageContents);
        outlined init with take of WeakBox<VectorImageContents>(&v14, &v9, &lazy cache variable for type metadata for WeakBox<VectorImageContents>, type metadata accessor for VectorImageContents);
        Strong = swift_weakLoadStrong();
        v4 = swift_weakLoadStrong();
        outlined destroy of WeakBox<VectorImageContents>(&v9, &lazy cache variable for type metadata for WeakBox<VectorImageContents>, type metadata accessor for VectorImageContents);
        outlined destroy of WeakBox<VectorImageContents>(v10, &lazy cache variable for type metadata for WeakBox<VectorImageContents>, type metadata accessor for VectorImageContents);
        if (Strong)
        {
          if (v4)
          {

            goto LABEL_13;
          }
        }

        else if (!v4)
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      v5 = &lazy cache variable for type metadata for WeakBox<VectorImageContents>;
      v6 = type metadata accessor for VectorImageContents;
    }
  }

  else
  {
    outlined init with copy of GraphicsImage.WeakContents(v12, v11);
    if (!v15)
    {
      outlined init with take of WeakBox<VectorImageContents>(v11, v10, &lazy cache variable for type metadata for WeakBox<CGImageRef>, type metadata accessor for CGImageRef);
      outlined init with take of WeakBox<VectorImageContents>(&v14, &v9, &lazy cache variable for type metadata for WeakBox<CGImageRef>, type metadata accessor for CGImageRef);
      Strong = swift_unknownObjectWeakLoadStrong();
      v4 = swift_unknownObjectWeakLoadStrong();
      outlined destroy of WeakBox<VectorImageContents>(&v9, &lazy cache variable for type metadata for WeakBox<CGImageRef>, type metadata accessor for CGImageRef);
      outlined destroy of WeakBox<VectorImageContents>(v10, &lazy cache variable for type metadata for WeakBox<CGImageRef>, type metadata accessor for CGImageRef);
      if (Strong)
      {
        if (v4)
        {
          goto LABEL_6;
        }

LABEL_19:

LABEL_25:
        v7 = 0;
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    v5 = &lazy cache variable for type metadata for WeakBox<CGImageRef>;
    v6 = type metadata accessor for CGImageRef;
  }

  outlined destroy of WeakBox<VectorImageContents>(v11, v5, v6);
  outlined destroy of (GraphicsImage.WeakContents, GraphicsImage.WeakContents)(v12, type metadata accessor for (GraphicsImage.WeakContents, GraphicsImage.WeakContents));
  return 0;
}

uint64_t outlined init with copy of NamedImage.Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NamedImage.Key(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (GraphicsImage.WeakContents, GraphicsImage.WeakContents)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t assignWithCopy for GraphicsImage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 255)
  {
    if (v4 == 255)
    {
      v10 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v10;
    }

    else
    {
      v8 = *a2;
      outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
      *a1 = v8;
      *(a1 + 8) = v4;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of GraphicsImage.Contents(a1);
    v9 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v9;
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    v6 = *a1;
    *a1 = v5;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    outlined consume of GraphicsImage.Contents(v6, v7);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v11 = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 44) = v11;
  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v13;
  *(a1 + 72) = v12;
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  return a1;
}

__n128 assignWithTake for GraphicsImage(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v4 = *(a2 + 8);
    if (v4 == 255)
    {
      v7 = a1;
      outlined destroy of GraphicsImage.Contents(a1);
      a1 = v7;
      *v7 = *a2;
      *(v7 + 8) = *(a2 + 8);
    }

    else
    {
      v5 = *a1;
      *a1 = *a2;
      *(a1 + 8) = v4;
      v6 = a1;
      outlined consume of GraphicsImage.Contents(v5, v3);
      a1 = v6;
    }
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  return result;
}

uint64_t getEnumTagSinglePayload for GraphicsImage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 108))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 105);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphicsImage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 108) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 108) = 0;
    }

    if (a2)
    {
      *(result + 105) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for GraphicsImage.Contents(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of GraphicsImage.Contents(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of GraphicsImage.Contents(v5, v6);
  return a1;
}

uint64_t assignWithTake for GraphicsImage.Contents(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  outlined consume of GraphicsImage.Contents(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsImage.Contents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphicsImage.Contents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t destroy for GraphicsImage.WeakContents(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 3)
  {
    v1 = *a1 + 3;
  }

  if (v1 != 2)
  {
    JUMPOUT(0x193AC4950);
  }

  return swift_weakDestroy();
}

uint64_t assignWithCopy for GraphicsImage.WeakContents(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 == 2)
    {
      swift_weakDestroy();
    }

    else
    {
      MEMORY[0x193AC4950](a1);
    }

    v5 = *(a2 + 8);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      swift_weakCopyInit();
      v6 = 2;
    }

    else if (v5 == 1)
    {
      swift_unknownObjectWeakCopyInit();
      v6 = 1;
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

uint64_t initializeWithCopy for GraphicsImage.WeakContents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *(a2 + 8);
  if (v5 >= 3)
  {
    v5 = *a2 + 3;
  }

  if (v5 == 2)
  {
    result = a5(a1, a2);
    v7 = 2;
  }

  else if (v5 == 1)
  {
    result = a4(a1, a2);
    v7 = 1;
  }

  else
  {
    result = a4(a1, a2);
    v7 = 0;
  }

  *(result + 8) = v7;
  return result;
}

uint64_t assignWithTake for GraphicsImage.WeakContents(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 == 2)
    {
      swift_weakDestroy();
    }

    else
    {
      MEMORY[0x193AC4950](a1);
    }

    v5 = *(a2 + 8);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      swift_weakTakeInit();
      v6 = 2;
    }

    else if (v5 == 1)
    {
      swift_unknownObjectWeakTakeInit();
      v6 = 1;
    }

    else
    {
      swift_unknownObjectWeakTakeInit();
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsImage.WeakContents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GraphicsImage.WeakContents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t getEnumTag for GraphicsImage.WeakContents(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for GraphicsImage.WeakContents(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *result = 0;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t assignWithCopy for ResolvedVectorGlyph(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7 >= 2)
  {
    if (v8 >= 2)
    {
      *(a1 + 16) = v8;
      v10 = v8;

      goto LABEL_8;
    }

    v8 = *(a2 + 16);
    goto LABEL_6;
  }

  if (v8 < 2)
  {
LABEL_6:
    *(a1 + 16) = v8;
    goto LABEL_8;
  }

  *(a1 + 16) = v8;
  v9 = v8;
LABEL_8:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 29) = *(a2 + 29);
  v11 = *(a2 + 32);
  v12 = *(a1 + 32);
  *(a1 + 32) = v11;
  v13 = v11;

  return a1;
}

uint64_t assignWithTake for ResolvedVectorGlyph(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 >= 2)
  {
    if (v6 >= 2)
    {
      *(a1 + 16) = v6;

      goto LABEL_6;
    }
  }

  *(a1 + 16) = v6;
LABEL_6:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 29) = *(a2 + 29);
  v7 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void type metadata accessor for (GraphicsImage.WeakContents, GraphicsImage.WeakContents)()
{
  if (!lazy cache variable for type metadata for (GraphicsImage.WeakContents, GraphicsImage.WeakContents))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (GraphicsImage.WeakContents, GraphicsImage.WeakContents));
    }
  }
}

SwiftUI::DiffResult::Move __swiftcall DiffResult.Move.init(remove:insert:)(Swift::Int remove, Swift::Int insert)
{
  *v2 = remove;
  v2[1] = insert;
  result.insert = insert;
  result.remove = remove;
  return result;
}

uint64_t DiffResult.Move.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x193AC11A0](*v0);
  return MEMORY[0x193AC11A0](v1);
}

Swift::Int DiffResult.Move.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

uint64_t DiffResult.removes.setter(uint64_t a1)
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DiffResult.moves.getter()
{
  type metadata accessor for DiffResult(0);
}

uint64_t DiffResult.moves.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DiffResult(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DiffResult.inserts.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DiffResult(0) + 24);
  v4 = type metadata accessor for IndexSet();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DiffResult.init(removes:moves:inserts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for IndexSet();
  v12 = *(*(v8 - 8) + 32);
  (v12)((v8 - 8), a4, a1, v8);
  v9 = type metadata accessor for DiffResult(0);
  *(a4 + *(v9 + 20)) = a2;
  v10 = a4 + *(v9 + 24);

  return v12(v10, a3, v8);
}

uint64_t DiffResult.isEmpty.getter()
{
  if ((IndexSet.isEmpty.getter() & 1) != 0 && !*(*(v0 + *(type metadata accessor for DiffResult(0) + 20)) + 16))
  {
    return IndexSet.isEmpty.getter() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t static DiffResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x193ABDD70]())
  {
    v4 = type metadata accessor for DiffResult(0);
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI10DiffResultV4MoveV_Tt1g5(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))))
    {

      JUMPOUT(0x193ABDD70);
    }
  }

  return 0;
}

uint64_t DiffResult.hash(into:)()
{
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = *(v0 + *(type metadata accessor for DiffResult(0) + 20));
  MEMORY[0x193AC11A0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      MEMORY[0x193AC11A0](*(v3 - 1));
      MEMORY[0x193AC11A0](v4);
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int DiffResult.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = *(v0 + *(type metadata accessor for DiffResult(0) + 20));
  MEMORY[0x193AC11A0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      MEMORY[0x193AC11A0](*(v3 - 1));
      MEMORY[0x193AC11A0](v4);
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DiffResult()
{
  Hasher.init(_seed:)();
  DiffResult.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DiffResult.Move and conformance DiffResult.Move()
{
  result = lazy protocol witness table cache variable for type DiffResult.Move and conformance DiffResult.Move;
  if (!lazy protocol witness table cache variable for type DiffResult.Move and conformance DiffResult.Move)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DiffResult.Move and conformance DiffResult.Move);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DiffResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x193ABDD70]() & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI10DiffResultV4MoveV_Tt1g5(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))))
  {

    JUMPOUT(0x193ABDD70);
  }

  return 0;
}

uint64_t *initializeBufferWithCopyOfBuffer for DiffResult(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for IndexSet();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v9 = *(a3 + 20);
    v10 = *(a3 + 24);
    *(a1 + v9) = *(a2 + v9);

    v8((a1 + v10), (a2 + v10), v7);
  }

  return a1;
}

uint64_t initializeWithCopy for DiffResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = *(a3 + 24);
  *(a1 + v8) = *(a2 + v8);

  v7(a1 + v9, a2 + v9, v6);
  return a1;
}

uint64_t assignWithCopy for DiffResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t initializeWithTake for DiffResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v8 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v7(a1 + v8, a2 + v8, v6);
  return a1;
}

uint64_t assignWithTake for DiffResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  v7(a1 + *(a3 + 24), a2 + *(a3 + 24), v6);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for IndexSetBuilder(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for IndexSet();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = a1 + v8;
    v10 = a2 + v8;
    *v9 = *v10;
    v9[16] = v10[16];
  }

  return a1;
}

uint64_t destroy for IndexSetBuilder(uint64_t a1)
{
  v2 = type metadata accessor for IndexSet();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t assignWithCopy for IndexSetBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  return a1;
}

uint64_t initializeWithTake for IndexSetBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 16) = *(v9 + 16);
  return a1;
}

uint64_t assignWithTake for IndexSetBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 16) = *(v9 + 16);
  return a1;
}

uint64_t HeterogeneousCollection.differenceWithDuplicates(to:)@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v78 = a2;
  v89 = type metadata accessor for IndexSetBuilder(0);
  MEMORY[0x1EEE9AC00](v89);
  v81 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v70 - v6;
  v77 = type metadata accessor for IndexSet();
  v80 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v70 - v9;
  type metadata accessor for CollectionDifference<AnyHashable2>(0, &lazy cache variable for type metadata for CollectionDifference<AnyHashable2>, MEMORY[0x1E69E6EF0]);
  v11 = v10;
  v93 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  v17 = type metadata accessor for DiffResultBuilder(0);
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70 - v20;
  v22 = *(a1 + 2);
  v23 = *(a1 + 3);
  v24 = v2[1];
  v96 = *v2;
  v97 = v24;
  v25 = HeterogeneousCollection.asAnyHashable2()();
  v96 = *a1;
  *&v97 = v22;
  *(&v97 + 1) = v23;
  v26 = HeterogeneousCollection.asAnyHashable2()();
  IndexSet.init()();
  v27 = v89;
  v28 = &v21[*(v89 + 20)];
  *v28 = 0;
  *(v28 + 1) = 0;
  v79 = v28;
  v28[16] = 1;
  v85 = v17;
  v29 = *(v17 + 24);
  v92 = v21;
  v30 = &v21[v29];
  IndexSet.init()();
  v31 = *(v27 + 20);
  v70 = v30;
  v32 = &v30[v31];
  *v32 = 0;
  *(v32 + 1) = 0;
  v71 = v32;
  v91 = 1;
  v32[16] = 1;
  v73 = v26;
  v95 = v25;
  *&v96 = v26;
  v74 = v25;
  type metadata accessor for CollectionDifference<AnyHashable2>(0, &lazy cache variable for type metadata for [AnyHashable2], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AnyHashable2] and conformance [A]();
  lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2();
  BidirectionalCollection<>.difference<A>(from:)();
  lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2();
  CollectionDifference<A>.inferringMoves()();
  v33 = *(v93 + 8);
  v93 += 8;
  v72 = v33;
  v33(v13, v11);
  v86 = v16;
  v87 = v11;
  v34 = CollectionDifference.removals.getter();
  v35 = 0;
  v88 = 0;
  v36 = 0;
  v94 = *(v34 + 16);
  v82 = v34 + 57;
  v37 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v90 = v36;
    if (v35 == v94)
    {
      break;
    }

    v38 = (v82 + 32 * v35);
    while (1)
    {
      if (v35 >= *(v34 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (*v38 != 1)
      {
        goto LABEL_60;
      }

      v39 = *(v38 - 25);
      if (*(v38 - 1))
      {
        break;
      }

      v40 = *(v38 - 9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
      }

      v42 = *(v37 + 2);
      v41 = *(v37 + 3);
      if (v42 >= v41 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v37);
      }

      ++v35;
      outlined consume of BodyInputElement();
      *(v37 + 2) = v42 + 1;
      v43 = &v37[16 * v42];
      *(v43 + 4) = v39;
      *(v43 + 5) = v40;
      v38 += 32;
      if (v94 == v35)
      {
        goto LABEL_24;
      }
    }

    if (v91)
    {
      v36 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_52;
      }

      if (v36 < v39)
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_23:
      v91 = 0;
      ++v35;
      v88 = v39;
      continue;
    }

    if (v90 != v39)
    {
      IndexSet.insert(integersIn:)();
      v36 = v39 + 1;
      if (!__OFADD__(v39, 1))
      {
        if (v36 >= v39)
        {
          goto LABEL_23;
        }

        goto LABEL_57;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v36 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      goto LABEL_48;
    }

    v91 = 0;
    ++v35;
    if (v36 < v88)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

LABEL_24:

  *&v92[*(v85 + 20)] = v37;
  v44 = v79;
  v45 = v90;
  *v79 = v88;
  *(v44 + 1) = v45;
  v44[16] = v91 & 1;
  v46 = CollectionDifference.insertions.getter();
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = *(v46 + 16);
  v51 = 1;
  v53 = v80;
  v52 = v81;
  v54 = v89;
  while (2)
  {
    while (2)
    {
      v55 = 32 * v47;
      do
      {
        if (v50 == v47)
        {

          v61 = v83;
          outlined init with copy of DiffResultBuilder(v92, v83);
          v62 = v75;
          outlined init with take of IndexSetBuilder(v61, v75);
          if ((*(v62 + *(v54 + 20) + 16) & 1) == 0)
          {
            IndexSet.insert(integersIn:)();
          }

          v63 = *(v53 + 32);
          v64 = v77;
          v63(v84, v62, v77);
          v65 = *(v83 + *(v85 + 20));
          outlined init with take of IndexSetBuilder(v83 + *(v85 + 24), v52);
          if ((*(v52 + *(v54 + 20) + 16) & 1) == 0)
          {
            IndexSet.insert(integersIn:)();
          }

          v72(v86, v87);
          v66 = v76;
          v63(v76, v52, v64);
          v67 = v78;
          v63(v78, v84, v64);
          v68 = type metadata accessor for DiffResult(0);
          *&v67[*(v68 + 20)] = v65;
          v63(&v67[*(v68 + 24)], v66, v64);
          return outlined destroy of DiffResultBuilder(v92);
        }

        if (v47 >= *(v46 + 16))
        {
          goto LABEL_47;
        }

        v56 = v46 + v55;
        if (*(v46 + v55 + 57))
        {
          goto LABEL_60;
        }

        v55 += 32;
        ++v47;
      }

      while ((*(v56 + 56) & 1) == 0);
      v57 = *(v46 + v55);
      if (v51)
      {
        v49 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_54;
        }

        if (v49 >= v57)
        {
          goto LABEL_40;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v49 == v57)
      {
        if (__OFADD__(v49++, 1))
        {
          goto LABEL_50;
        }

        if (v49 >= v48)
        {
          v51 = 0;
          v59 = v71;
          *v71 = v48;
          *(v59 + 1) = v49;
          v59[16] = 0;
          continue;
        }

LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      break;
    }

    IndexSet.insert(integersIn:)();
    v49 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_58;
    }

    if (v49 >= v57)
    {
LABEL_40:
      v51 = 0;
      v60 = v71;
      *v71 = v57;
      *(v60 + 1) = v49;
      v48 = v57;
      v60[16] = 0;
      continue;
    }

    break;
  }

LABEL_59:
  __break(1u);
LABEL_60:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void type metadata accessor for CollectionDifference<AnyHashable2>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for AnyHashable2);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [AnyHashable2] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AnyHashable2] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AnyHashable2] and conformance [A])
  {
    type metadata accessor for CollectionDifference<AnyHashable2>(255, &lazy cache variable for type metadata for [AnyHashable2], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AnyHashable2] and conformance [A]);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DiffResultBuilder(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v19 = *a2;
    *a1 = *a2;
    a1 = (v19 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for IndexSet();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v9 = type metadata accessor for IndexSetBuilder(0);
    v10 = *(v9 + 20);
    v11 = a1 + v10;
    v12 = a2 + v10;
    *v11 = *v12;
    v11[16] = v12[16];
    v13 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    v14 = a1 + v13;
    v15 = a2 + v13;

    v8(v14, v15, v7);
    v16 = *(v9 + 20);
    v17 = &v14[v16];
    v18 = &v15[v16];
    *v17 = *v18;
    v17[16] = v18[16];
  }

  return a1;
}

uint64_t assignWithCopy for DiffResultBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  v8 = type metadata accessor for IndexSetBuilder(0);
  v9 = *(v8 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v12;
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  v13 = *(a3 + 24);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v7(a1 + v13, v15, v6);
  v16 = *(v8 + 20);
  v17 = v14 + v16;
  v18 = v15 + v16;
  v19 = *(v18 + 16);
  *v17 = *v18;
  *(v17 + 16) = v19;
  return a1;
}

uint64_t initializeWithTake for DiffResultBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v8 = type metadata accessor for IndexSetBuilder(0);
  v9 = *(v8 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 16) = *(v11 + 16);
  v12 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v13 = a1 + v12;
  v14 = a2 + v12;
  v7(a1 + v12, v14, v6);
  v15 = *(v8 + 20);
  v16 = v13 + v15;
  v17 = v14 + v15;
  *v16 = *v17;
  *(v16 + 16) = *(v17 + 16);
  return a1;
}

uint64_t assignWithTake for DiffResultBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v8 = type metadata accessor for IndexSetBuilder(0);
  v9 = *(v8 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 16) = *(v11 + 16);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  v12 = *(a3 + 24);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v7(a1 + v12, v14, v6);
  v15 = *(v8 + 20);
  v16 = v13 + v15;
  v17 = v14 + v15;
  *v16 = *v17;
  *(v16 + 16) = *(v17 + 16);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for DiffResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for Date.ComponentsFormatStyle.Field() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x193AC03C0](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t Array<A>.synthesizedPlacement(of:in:avoiding:distance:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, double (*a3)(uint64_t, double, double, double, double, double, double, double, double)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  result = Array<A>.motionVectors(closestTo:in:avoiding:distance:)(a1, a4, a3, a2, &v24, a6, a7, a8, a9);
  if (v27)
  {
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 1;
    return result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v13 = v25;
  v14 = v26;
  v15 = a2 + 80 * a1;
  *v23 = *(v15 + 49);
  *&v23[3] = *(v15 + 52);
  *v22 = *(v15 + 65);
  *&v22[15] = *(v15 + 80);
  v21 = vaddq_f64(v24, *(v15 + 88));
  result = _LazyLayout_PlacedSubview.size.getter();
  v18 = v13 * v17;
  v19 = v17 == 0.0;
  v20 = 0.0;
  if (v19)
  {
    v18 = 0.0;
  }

  *a5 = v18;
  if (v16 != 0.0)
  {
    v20 = v14 * v16;
  }

  *(a5 + 8) = 0;
  *(a5 + 9) = *v23;
  *(a5 + 12) = *&v23[3];
  *(a5 + 16) = v20;
  *(a5 + 24) = 0;
  *(a5 + 25) = *v22;
  *(a5 + 40) = *&v22[15];
  *(a5 + 48) = v21;
  *(a5 + 64) = 0;
  return result;
}

BOOL Array<A>.externalPlacement(of:avoiding:in:)@<W0>(_BOOL8 result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > result)
  {
    v13 = a3 + 80 * result;
    v14 = *(v13 + 40);
    v15 = *(v13 + 48);
    *v42 = *(v13 + 49);
    *&v42[3] = *(v13 + 52);
    v17 = *(v13 + 56);
    v18 = *(v13 + 64);
    *v41 = *(v13 + 65);
    *&v41[3] = *(v13 + 68);
    v19 = *(v13 + 80);
    v20 = *(v13 + 96);
    v39 = *(v13 + 88);
    v40 = *(v13 + 72);
    v21 = 0.0;
    v22 = 0.0;
    if (!CGRectIsNull(*&a5))
    {
      if (a2)
      {
        v23 = a8;
      }

      else
      {
        v23 = a7;
      }

      if (a2)
      {
        v24 = a6;
      }

      else
      {
        v24 = a5;
      }

      v25 = v24 + v23;
      if (v25 >= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v25;
      }

      if (v24 > v25)
      {
        v25 = v24;
      }

      if (v26 <= v25)
      {
        v22 = v25;
      }
    }

    v43.origin.x = a5;
    v43.origin.y = a6;
    v43.size.width = a7;
    v43.size.height = a8;
    result = CGRectIsNull(v43);
    if (!result)
    {
      if (a2)
      {
        v27 = a8;
      }

      else
      {
        v27 = a7;
      }

      if (a2)
      {
        v28 = a6;
      }

      else
      {
        v28 = a5;
      }

      v29 = v28 + v27;
      if (v29 >= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      if (v28 > v29)
      {
        v29 = v28;
      }

      if (v30 > v29)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v29 - v30;
      }
    }

    if (v15)
    {
      v31 = 10.0;
    }

    else
    {
      v31 = v14;
    }

    if (v18)
    {
      v32 = 10.0;
    }

    else
    {
      v32 = v17;
    }

    v33 = v19 * v32;
    if ((a2 & 1) == 0)
    {
      v33 = v40 * v31;
    }

    v34 = v22 + v21 + v33;
    if (v18)
    {
      v35 = v39;
      if ((a2 & 1) == 0)
      {
        v36 = v39 + v31;
        if (v34 <= v36)
        {
          v34 = v36;
        }

        goto LABEL_57;
      }

      if (v34 <= v20 + 10.0)
      {
        v34 = v20 + 10.0;
      }
    }

    else
    {
      v35 = v39;
      if (a2)
      {
        v37 = v20;
      }

      else
      {
        v37 = v39;
      }

      if (a2)
      {
        v31 = v17;
      }

      v38 = v37 + v31;
      if (v34 <= v38)
      {
        v34 = v38;
      }

      if ((a2 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    v20 = v34;
    v34 = v35;
LABEL_57:
    *a4 = v14;
    *(a4 + 8) = v15;
    *(a4 + 9) = *v42;
    *(a4 + 12) = *&v42[3];
    *(a4 + 16) = v17;
    *(a4 + 24) = v18;
    *(a4 + 25) = *v41;
    *(a4 + 28) = *&v41[3];
    *(a4 + 32) = v40;
    *(a4 + 40) = v19;
    *(a4 + 48) = v34;
    *(a4 + 56) = v20;
    return result;
  }

  __break(1u);
  return result;
}

SwiftUI::Spacing __swiftcall LazyLayoutComputer.Engine.spacing()()
{
  result.minima._rawValue = AGGraphWithUpdate();
  __break(1u);
  return result;
}

uint64_t closure #1 in LazyLayoutComputer.Engine.spacing()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v20 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v19 - v7;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LazyLayoutComputer.Engine();
  v14 = *(v13 + 36);
  v15 = *(v13 + 40);
  v16 = *(a1 + v14);

  LazyLayoutViewCache.subviews(context:)(v16, v24);

  (*(v9 + 16))(v12, a1, a2);
  v23 = *(a1 + v14);
  v17 = *(**(a1 + v15) + 400);

  v17(AssociatedTypeWitness, AssociatedTypeWitness);

  (*(v20 + 56))(v24, &v23, v8, a2);
  (*(v21 + 8))(v8, AssociatedTypeWitness);
  (*(v9 + 8))(v12, a2);
  return outlined destroy of _LazyLayout_Subviews(v24);
}

uint64_t PositionState.mainID<A>(subviews:context:layout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = *(a2 + 104);
  v8 = *(a2 + 136);
  v26 = *(a2 + 120);
  v27 = v8;
  v28 = *(a2 + 152);
  v9 = *(a2 + 72);
  v22 = *(a2 + 56);
  v23 = v9;
  v24 = *(a2 + 88);
  v25 = v7;
  v10 = *(a2 + 200);
  v11 = *(a2 + 208);
  v12 = *(a2 + 280);
  v13 = *(a2 + 288);
  v14 = *(a2 + 296);
  (*(a4 + 32))(v21, a3, a4);
  v15 = v21[0];
  if (v14 == 1)
  {
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v13, v12));
  }

  v16 = swift_allocObject();
  v17 = v28;
  *(v16 + 16) = v27;
  *(v16 + 32) = v17;
  if (v15)
  {
    *(v16 + 32) = v11;
  }

  if ((v15 & 2) != 0)
  {
    *(v16 + 40) = v10;
  }

  *&v21[0] = a1;
  _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_LazyLayout_PlacedSubview] and conformance [A]();
  Sequence.min(by:)();
  v21[2] = v24;
  v21[3] = v25;
  v21[4] = v26;
  v21[0] = v22;
  v21[1] = v23;
  v18 = MEMORY[0x1E69E6720];
  _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(0, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6720]);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #2 in PositionState.mainID<A>(subviews:context:layout:), 0, MEMORY[0x1E69E73E0], &type metadata for _ViewList_ID, v19, a5);
  _s7SwiftUI25_LazyLayout_PlacedSubviewVSgWOhTm_0(&v22, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, v18);
}

uint64_t Array<A>.pinSectionHeadersAndFooters(in:headerAxes:footerAxes:)(_OWORD *a1, unint64_t a2, int a3)
{
  v4 = v3;
  v7 = a1[5];
  v94[4] = a1[4];
  v94[5] = v7;
  v94[6] = a1[6];
  v8 = a1[1];
  v94[0] = *a1;
  v94[1] = v8;
  v9 = a1[3];
  v94[2] = a1[2];
  v94[3] = v9;
  v10 = *v3;
  v11 = *(*v3 + 16);
  if (v11)
  {
    v12 = 0;
    *&v84[8] = 0;
    *v84 = *MEMORY[0x1E698D3F8];
    v13 = v10 + 32;
    v14 = MEMORY[0x1E69E7CC8];
    while (2)
    {
      v15 = (v13 + 80 * v12);
      v16 = v12;
      while (1)
      {
        if (v16 >= *(v10 + 16))
        {
          goto LABEL_71;
        }

        v89[0] = *v15;
        v17 = v15[1];
        v18 = v15[2];
        v19 = v15[4];
        v89[3] = v15[3];
        v89[4] = v19;
        v89[1] = v17;
        v89[2] = v18;
        v12 = v16 + 1;
        memmove(&__dst, v15, 0x50uLL);
        v20 = __dst;
        if (*(__dst + 172) != 1)
        {
          break;
        }

        outlined init with copy of _LazyLayout_PlacedSubview(v89, &v85);
        outlined destroy of _LazyLayout_PlacedSubview(&__dst);
        v15 += 5;
        ++v16;
        if (v11 == v12)
        {
          goto LABEL_59;
        }
      }

      v81 = *(__dst + 168);
      v76 = *(__dst + 173);
      v77 = *(__dst + 174);
      v80 = v4;
      v78 = a2;
      v79 = a3;
      if (*(__dst + 44) == *v84)
      {
        outlined init with copy of _LazyLayout_PlacedSubview(v89, &v85);
        Value = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          Value = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        outlined init with copy of _LazyLayout_PlacedSubview(v89, &v85);
        Value = AGGraphGetValue();
      }

      v22 = *Value;
      v23 = v91;
      v82 = *(&v91 + 1);
      v83 = *(&__dst + 1);
      v24 = v92[0];
      v25 = *&v92[8];
      v26 = *&v92[16];
      v27 = *&v92[24];
      v28 = v93;
      v29 = one-time initialization token for lockAssertionsAreEnabled;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = lockAssertionsAreEnabled;
      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_74;
        }
      }

      v85 = v83;
      v86 = v23;
      v87 = v82;
      v88 = v24;
      v31 = (*(*v22 + 120))(&v85);
      v33 = v32;

      if (*(v20 + 44) == *v84)
      {
        v34 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v34 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v34 = AGGraphGetValue();
      }

      v35 = *v34;
      if (v30)
      {
        v36 = one-time initialization token for _lock;

        if (v36 != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_74;
        }
      }

      else
      {
      }

      v85 = v83;
      v86 = v23;
      v87 = v82;
      v88 = v24;
      v37 = (*(*v35 + 120))(&v85);
      v39 = v38;

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*&v84[4]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v14;
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v81);
      v43 = *(v14 + 16);
      v44 = (v41 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_72;
      }

      v46 = v41;
      if (*(v14 + 24) >= v45)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v49 = v42 << 6;
          if (v41)
          {
            goto LABEL_37;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v14 = v85;
          v49 = v42 << 6;
          if (v46)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, isUniquelyReferenced_nonNull_native);
        v14 = v85;
        v47 = specialized __RawDictionaryStorage.find<A>(_:)(v81);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_75;
        }

        v42 = v47;
        v49 = v47 << 6;
        if (v46)
        {
          goto LABEL_37;
        }
      }

      LOBYTE(v85) = 1;
      v95 = 1;
      *(v14 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      *(*(v14 + 48) + 4 * v42) = v81;
      v50 = *(v14 + 56) + v49;
      *v50 = xmmword_18DDAB4F0;
      *(v50 + 16) = xmmword_18DDAB4F0;
      *(v50 + 32) = 0;
      *(v50 + 40) = 1;
      *(v50 + 48) = 0;
      *(v50 + 56) = 1;
      v51 = *(v14 + 16);
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_73;
      }

      *(v14 + 16) = v53;
LABEL_37:
      v54 = v27 - v25 * v31;
      v55 = v28 - v26 * v33;
      v56 = *(v14 + 56) + v49;
      v4 = v80;
      a2 = v78;
      a3 = v79;
      if (v76)
      {
        v57 = *(v56 + 32);
        if (*(v56 + 40))
        {
          v57 = v16;
        }

        *(v56 + 32) = v57;
        *(v56 + 40) = 0;
        if (!v77)
        {
LABEL_41:
          v58 = *(v56 + 8);
          v96.origin.x = v54;
          v96.origin.y = v55;
          v96.size.width = v37;
          v96.size.height = v39;
          MaxX = CGRectGetMaxX(v96);
          if (v58 > MaxX)
          {
            MaxX = v58;
          }

          *(v56 + 8) = MaxX;
          v60 = *(v56 + 24);
          v97.origin.x = v54;
          v97.origin.y = v55;
          v97.size.width = v37;
          v97.size.height = v39;
          MaxY = CGRectGetMaxY(v97);
          if (v60 > MaxY)
          {
            MaxY = v60;
          }

          *(v56 + 24) = MaxY;
          goto LABEL_54;
        }
      }

      else
      {
        v62 = *v56;
        v98.origin.x = v54;
        v98.origin.y = v55;
        v98.size.width = v37;
        v98.size.height = v39;
        MinX = CGRectGetMinX(v98);
        if (MinX >= v62)
        {
          MinX = v62;
        }

        *v56 = MinX;
        v64 = *(v56 + 16);
        v99.origin.x = v54;
        v99.origin.y = v55;
        v99.size.width = v37;
        v99.size.height = v39;
        MinY = CGRectGetMinY(v99);
        if (MinY >= v64)
        {
          MinY = v64;
        }

        *(v56 + 16) = MinY;
        if (!v77)
        {
          goto LABEL_41;
        }
      }

      v66 = *(v56 + 48);
      if (*(v56 + 56))
      {
        v66 = v16;
      }

      *(v56 + 48) = v66;
      *(v56 + 56) = 0;
LABEL_54:
      outlined destroy of _LazyLayout_PlacedSubview(&__dst);
      *&v84[4] = specialized thunk for @callee_guaranteed () -> (@unowned PinnedSection);
      v13 = v10 + 32;
      if (v11 - 1 != v16)
      {
        continue;
      }

      goto LABEL_59;
    }
  }

  *&v84[4] = 0;
  v14 = MEMORY[0x1E69E7CC8];
LABEL_59:
  v67 = 0;
  v68 = 1 << *(v14 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(v14 + 64);
  v71 = (v68 + 63) >> 6;
  while (v70)
  {
    v72 = v67;
LABEL_67:
    v73 = __clz(__rbit64(v70));
    v70 &= v70 - 1;
    v74 = (*(v14 + 56) + ((v72 << 12) | (v73 << 6)));
    __dst = *v74;
    v91 = v74[1];
    *v92 = v74[2];
    *&v92[9] = *(v74 + 41);
    commitSection #1 <A>(_:) in Array<A>.pinSectionHeadersAndFooters(in:headerAxes:footerAxes:)(&__dst, a2, v4, v94, a3);
  }

  while (1)
  {
    v72 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v72 >= v71)
    {

      return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*&v84[4]);
    }

    v70 = *(v14 + 64 + 8 * v72);
    ++v67;
    if (v70)
    {
      v67 = v72;
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_75:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

BOOL PositionState.dispatchContainerSizeChange(context:axes:allowedAxes:)(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 12);
  v6 = *(v2 + 104);
  v5 = *(v2 + 112);
  v7 = 0.0;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 0.0;
  v14.size.height = 0.0;
  if (CGRectEqualToRect(*(v2 + 72), v14))
  {
    return 0;
  }

  v9 = 0.0;
  if (v4 != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v7 = *Value;
    v9 = Value[1];
  }

  v11 = vabdd_f64(v7, v6);
  if (v11 >= 0.1 && Axis.Set.contains(_:)(SwiftUI_Axis_horizontal))
  {
    *a2 |= 1u;
  }

  v12 = vabdd_f64(v9, v5);
  result = v12 >= 0.1;
  if (v12 >= 0.1)
  {
    v13 = Axis.Set.contains(_:)(SwiftUI_Axis_vertical);
    result = 1;
    if (v13)
    {
      *a2 |= 2u;
    }
  }

  if (v11 >= 0.1)
  {
    return 1;
  }

  return result;
}

BOOL PositionState.dispatchViewSizeChange(context:axes:allowedAxes:)(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v2 + 136);
  v6 = *(v2 + 144);
  if (v5 == 0.0 && v6 == 0.0 || v3 == 0.0 && v4 == 0.0)
  {
    return 0;
  }

  v8 = vabdd_f64(v3, v5);
  if (v8 >= 0.01)
  {
    v9 = a2;
    v10 = Axis.Set.contains(_:)(SwiftUI_Axis_horizontal);
    a2 = v9;
    if (v10)
    {
      *v9 |= 1u;
    }
  }

  v11 = vabdd_f64(v4, v6);
  result = v11 >= 0.01;
  if (v11 >= 0.01)
  {
    v12 = a2;
    v13 = Axis.Set.contains(_:)(SwiftUI_Axis_vertical);
    result = 1;
    if (v13)
    {
      *v12 |= 2u;
    }
  }

  if (v8 >= 0.01)
  {
    return 1;
  }

  return result;
}

uint64_t LazySubviewPlacements.placedAnchorTranslation(axes:placementContext:placements:)(unsigned int a1, void *a2, __int128 *a3)
{
  v6 = a3[3];
  v87 = a3[2];
  v88 = v6;
  v89 = *(a3 + 64);
  v7 = *a3;
  v86 = a3[1];
  v85 = v7;
  v8 = *(v3 + 12);
  v9 = v3[3];
  v79 = v3[2];
  v80 = v9;
  v10 = v3[5];
  v81 = v3[4];
  v82 = v10;
  v11 = v3[1];
  v77 = *v3;
  v78 = v11;
  v83 = v8;
  memcpy(v84, v3 + 104, sizeof(v84));
  LazySubviewPlacements.placedSubviewAnchor(subviews:frame:)(&v90);
  v12 = v90;
  v98 = v91;
  v99 = v92;
  if (v90 == 0.0)
  {
    return 0;
  }

  v60 = *(v8 + 16);
  if (!v60)
  {
LABEL_28:
    outlined destroy of Logger?(&v90, &lazy cache variable for type metadata for (_LazyLayout_PlacedSubview, Int)?, type metadata accessor for (_LazyLayout_PlacedSubview, Int));
    return 0;
  }

  v55 = v3;
  __src = a2;
  v57 = a1;
  v13 = 0;
  v14 = v93;
  v15 = v94;
  v16 = v95;
  v17 = v96;
  v18 = v8 + 32;
  v54 = v97;
  v61 = v90;
  v19 = v8;
  v20 = *(v8 + 16);
  v58 = v8 + 32;
  v59 = v8;
  while (1)
  {
    v21 = (v18 + 80 * v13);
    v76[0] = *v21;
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[4];
    v76[3] = v21[3];
    v76[4] = v24;
    v76[1] = v22;
    v76[2] = v23;
    if ((*(*&v76[0] + 173) & 1) == 0 && (*(*&v76[0] + 174) & 1) == 0 && *(*&v76[0] + 144) == *(*&v12 + 144) && *(*&v76[0] + 148) == *(*&v12 + 148))
    {
      break;
    }

LABEL_25:
    if (++v13 == v20)
    {
      goto LABEL_28;
    }

    if (v13 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  v25 = *(*&v76[0] + 152);
  v26 = *(*&v12 + 152);
  v27 = *(v25 + 16);
  if (v27 != *(v26 + 16))
  {

LABEL_24:

    v12 = v61;
    goto LABEL_25;
  }

  if (v27)
  {
    v28 = v25 == v26;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {

LABEL_31:

    v40 = v55[3];
    v79 = v55[2];
    v80 = v40;
    v41 = v55[5];
    v81 = v55[4];
    v82 = v41;
    v42 = v55[1];
    v77 = *v55;
    v78 = v42;
    v83 = v19;
    memcpy(v84, v55 + 104, sizeof(v84));
    v74[0] = *v21;
    v43 = v21[4];
    v45 = v21[1];
    v44 = v21[2];
    v74[3] = v21[3];
    v74[4] = v43;
    v74[1] = v45;
    v74[2] = v44;
    v46 = v21[3];
    v71 = v21[2];
    v72 = v46;
    v73 = v21[4];
    v47 = v21[1];
    v69 = *v21;
    v70 = v47;
    outlined init with copy of _LazyLayout_PlacedSubview(v74, v75);
    _LazyLayout_PlacedSubview.size.getter();
    *&__dst[1] = v98;
    v50 = v16 - v14 * v48;
    v51 = v17 - v15 * v49;
    __dst[0] = v61;
    *&__dst[3] = v99;
    __dst[5] = v14;
    __dst[6] = v15;
    __dst[7] = v16;
    __dst[8] = v17;
    __dst[9] = v54;
    _LazyLayout_PlacedSubview.size.getter();
    memcpy(__dst, __src, 0x129uLL);
    LazySubviewPlacements.makeAnchorTranslation(oldSubview:oldIndex:newFrame:axes:context:)(v50, v51, &v69, v13, v57, __dst);
    v53 = v52;
    outlined destroy of Logger?(&v90, &lazy cache variable for type metadata for (_LazyLayout_PlacedSubview, Int)?, type metadata accessor for (_LazyLayout_PlacedSubview, Int));
    v75[2] = v71;
    v75[3] = v72;
    v75[4] = v73;
    v75[0] = v69;
    v75[1] = v70;
    outlined destroy of _LazyLayout_PlacedSubview(v75);
    return v53;
  }

  else
  {
    outlined init with copy of _LazyLayout_PlacedSubview(v76, &v77);

    v30 = 0;
    v62 = v25;
    while (v27)
    {
      v32 = *(v25 + v30 + 32);
      v31 = *(v25 + v30 + 40);
      v33 = *(v25 + v30 + 48);
      v34 = *(v25 + v30 + 52);
      v35 = *(v26 + v30 + 40);
      v36 = *(v26 + v30 + 48);
      v37 = *(v26 + v30 + 52);
      if (v32 != *(v26 + v30 + 32) && (v38 = *(*v32 + 112), v66 = v33, v67 = v34, v65 = *(v26 + v30 + 52), v64 = v31, v63 = *(v26 + v30 + 48), , v39 = , LOBYTE(v38) = v38(v39), , result = , v36 = v63, v31 = v64, v37 = v65, v33 = v66, v34 = v67, (v38 & 1) == 0) || v31 != v35 || v33 != v36 || (v25 = v62, v34 != v37))
      {
        outlined destroy of _LazyLayout_PlacedSubview(v76);

        v19 = v59;
        v20 = v60;
        v18 = v58;
        goto LABEL_24;
      }

      v30 += 24;
      if (!--v27)
      {
        outlined destroy of _LazyLayout_PlacedSubview(v76);

        v19 = v59;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t (*implicit closure #1 in LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:)(void *__src, uint64_t a2, uint64_t a3))@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, 0x1D9uLL);
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  memcpy(v6 + 4, __src, 0x1D9uLL);
  v7 = type metadata accessor for LazySubviewPlacements();
  (*(*(v7 - 8) + 16))(&v9, __dst, v7);
  return partial apply for implicit closure #2 in implicit closure #1 in LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:);
}

unint64_t implicit closure #2 in implicit closure #1 in LazySubviewPlacements.makeAnchorTranslationIfNeeded(placements:context:newSize:reason:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 0uLL;
  if (*(*a2 + 173) & 1) != 0 || (*(*a2 + 174))
  {
    v5 = 1;
    v6 = 0uLL;
LABEL_7:
    *a4 = v4;
    *(a4 + 16) = v6;
    *(a4 + 32) = v5;
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a3 + 104);
    if (*(v7 + 16) > result)
    {
      v5 = 0;
      v8 = v7 + 32 * result;
      v4 = *(v8 + 32);
      v6 = *(v8 + 48);
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t LazySubviewPlacements.placedSubviewAnchor(subviews:frame:)@<X0>(uint64_t a1@<X8>)
{
  _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  v3 = v2;
  v4 = lazy protocol witness table accessor for type [_LazyLayout_PlacedSubview] and conformance [A]();
  MEMORY[0x193ABEF60](v10, v3, v4);
  type metadata accessor for EnumeratedSequence<[_LazyLayout_PlacedSubview]>();
  lazy protocol witness table accessor for type EnumeratedSequence<[_LazyLayout_PlacedSubview]> and conformance EnumeratedSequence<A>();
  Sequence.min(by:)();

  v6 = v11;
  if (v11)
  {
    v7 = v10[1];
    v8 = v12;
    *(a1 + 24) = v13;
    v9 = v15;
    *(a1 + 40) = v14;
    *(a1 + 56) = v9;
    *(a1 + 72) = v16;
    *(a1 + 8) = v8;
  }

  else
  {
    v7 = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
  }

  *a1 = v6;
  *(a1 + 80) = v7;
  return result;
}

uint64_t LazySubviewPlacements.placedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:)(uint64_t *a1, unint64_t a2, unsigned int a3, const void *a4, uint64_t *a5)
{
  v5 = *a5;
  v6 = *(*a5 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  v10 = *a1;
  result = (a1 + 1);
  v9 = v10;
  v42 = result;
  v11 = v5 + 32;
  while (1)
  {
    if (v7 >= *(v5 + 16))
    {
      __break(1u);
      __break(1u);
      return result;
    }

    v12 = (v11 + 80 * v7);
    v63 = *v12;
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[4];
    v66 = v12[3];
    *v67 = v15;
    v64 = v13;
    v65 = v14;
    if (*(v9 + 173) != 1 && *(v9 + 174) != 1 && *(v9 + 144) == *(v63 + 144) && *(v9 + 148) == *(v63 + 148))
    {
      v16 = *(v9 + 152);
      v17 = *(v63 + 152);
      v18 = *(v16 + 16);
      if (v18 == *(v17 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v6)
    {
      return 0;
    }
  }

  if (!v18 || v16 == v17)
  {
    outlined init with copy of _LazyLayout_PlacedSubview(&v63, __dst);
  }

  else
  {
    v48 = v5;
    v49 = v9;
    v46 = v11;
    v47 = v6;
    outlined init with copy of _LazyLayout_PlacedSubview(&v63, __dst);

    v19 = 0;
    do
    {
      v21 = *(v16 + v19 + 32);
      v20 = *(v16 + v19 + 40);
      v22 = *(v16 + v19 + 48);
      v23 = *(v16 + v19 + 52);
      v24 = *(v17 + v19 + 40);
      v25 = *(v17 + v19 + 48);
      v26 = *(v17 + v19 + 52);
      if (v21 != *(v17 + v19 + 32) && (v27 = *(*v21 + 112), v53 = *(v16 + v19 + 48), v54 = *(v16 + v19 + 52), v52 = *(v17 + v19 + 52), v51 = *(v16 + v19 + 40), v50 = *(v17 + v19 + 48), , v28 = , LOBYTE(v27) = v27(v28), , , v25 = v50, v20 = v51, v26 = v52, v22 = v53, v23 = v54, (v27 & 1) == 0) || v20 != v24 || v22 != v25 || v23 != v26)
      {

        result = outlined destroy of _LazyLayout_PlacedSubview(&v63);
        v6 = v47;
        v5 = v48;
        v11 = v46;
        v9 = v49;
        goto LABEL_4;
      }

      v19 += 24;
      --v18;
    }

    while (v18);

    v9 = v49;
  }

  memcpy(__dst, __src, 0x1D9uLL);
  v29 = *v42;
  v58 = *(v42 + 16);
  v30 = *(v42 + 48);
  v59 = *(v42 + 32);
  v60 = v30;
  v31 = *(v42 + 64);
  v56 = v9;
  v61 = v31;
  v57 = v29;
  v32 = *(&v65 + 1);
  v34 = v66;
  v33 = v67[0];
  _LazyLayout_PlacedSubview.size.getter();
  v37 = *(&v34 + 1) - v32 * v35;
  v38 = v33 - *&v34 * v36;
  v55[2] = v65;
  v55[3] = v66;
  v55[4] = *v67;
  v55[0] = v63;
  v55[1] = v64;
  _LazyLayout_PlacedSubview.size.getter();
  memcpy(v55, a4, 0x129uLL);
  LazySubviewPlacements.makeAnchorTranslation(oldSubview:oldIndex:newFrame:axes:context:)(v37, v38, &v56, a2, a3, v55);
  v40 = v39;
  outlined destroy of _LazyLayout_PlacedSubview(&v63);
  return v40;
}

uint64_t LazySubviewPlacements.notPlacedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:)(__int128 *a1, unint64_t a2, unsigned int a3, const void *a4, uint64_t a5, uint64_t a6)
{
  v38 = a2;
  v11 = *(a6 + 16);
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v42 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = v36 - v17;
  v19 = a1[3];
  v55 = a1[2];
  v56 = v19;
  v57 = a1[4];
  v20 = *a1;
  v54 = a1[1];
  v53 = v20;
  memcpy(v58, a4, sizeof(v58));
  v39 = *v6;
  v60 = *(v6 + 1);
  v21 = v6[5];
  memcpy(v59, v6 + 6, sizeof(v59));
  type metadata accessor for LazyLayoutViewCache();
  v22 = *(*AGGraphGetValue() + 280);
  result = AGGraphGetValue();
  if ((v22 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v37 = a3;
  v24 = *(*result + 288);
  v49 = 0;
  v50 = 1;
  v25 = 3;
  if (v22 > 3)
  {
    v25 = v22;
  }

  v48 = v25 - 3;
  v47 = v25 - 3;
  v26 = v24 + 3;
  if (__OFADD__(v24, 3))
  {
    __break(1u);
    goto LABEL_13;
  }

  v36[1] = a6;
  AGGraphGetValue();
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v27 = result;

  LazyLayoutViewCache.subviews(context:)(v27, v46);

  MEMORY[0x1EEE9AC00](v28);
  v36[-4] = &v47;
  v36[-3] = &v53;
  v36[-2] = &v49;
  v36[-1] = v26;
  v45[0] = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(&v48, v45, partial apply for closure #1 in LazySubviewPlacements.notPlacedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:), &v36[-6]);
  if (v50)
  {
LABEL_9:
    outlined destroy of _LazyLayout_Subviews(v46);
    return 0;
  }

  v36[0] = v49;
  v29 = *(**AGGraphGetValue() + 400);

  v30 = v42;
  v29(v42, v42);

  v31 = v39;
  Value = AGGraphGetValue();
  v33 = v40;
  (*(v40 + 16))(v13, Value, v11);
  memcpy(v45, v58, 0x129uLL);
  (*(v15 + 112))(v51, v36[0], v46, v45, v18, v11, v15);
  (*(v33 + 8))(v13, v11);
  if (v52)
  {
    (*(v41 + 8))(v18, v30);
    goto LABEL_9;
  }

  LODWORD(v45[0]) = v31;
  *(v45 + 4) = v60;
  HIDWORD(v45[2]) = v21;
  memcpy(&v45[3], v59, 0x1C1uLL);
  v44[2] = v55;
  v44[3] = v56;
  v44[4] = v57;
  v44[0] = v53;
  v44[1] = v54;
  memcpy(v43, v58, 0x129uLL);
  LazySubviewPlacements.makeAnchorTranslation(oldSubview:oldIndex:newFrame:axes:context:)(v51[0], v51[1], v44, v38, v37, v43);
  v35 = v34;
  (*(v41 + 8))(v18, v30);
  outlined destroy of _LazyLayout_Subviews(v46);
  return v35;
}

uint64_t closure #1 in LazySubviewPlacements.notPlacedAnchorTranslation(oldSubview:oldIndex:axes:placementContext:placements:)(uint64_t result, _BYTE *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(result + 64) == *(*a4 + 144) && *(result + 68) == *(*a4 + 148))
  {
    v11 = *(*a4 + 152);
    v12 = *(result + 72);

    v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(v12, v11);

    if (v13)
    {
      *a5 = *a3;
      *(a5 + 8) = 0;
      *a2 = 1;
    }
  }

  v14 = *a3;
  if (*a3 >= a6)
  {
    *a2 = 1;
  }

  *a3 = v14 + 1;
  return result;
}

void LazySubviewPlacements.makeAnchorTranslation(oldSubview:oldIndex:newFrame:axes:context:)(double a1, double a2, uint64_t a3, unint64_t a4, uint64_t a5, double *a6)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v6 + 104);
  if (*(v7 + 16) <= a4)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v8 = v7 + 32 * a4;
  v9 = a1 - a6[31] - (*(v8 + 32) - *(v6 + 272)) - (a6[2] - *(v6 + 384));
  v10 = a2 - a6[32] - (*(v8 + 40) - *(v6 + 280)) - (a6[3] - *(v6 + 392));
  if (!Axis.Set.contains(_:)(SwiftUI_Axis_horizontal))
  {
    v9 = 0.0;
  }

  if (!Axis.Set.contains(_:)(SwiftUI_Axis_vertical))
  {
    v10 = 0.0;
  }

  if (v9 != 0.0 || v10 != 0.0)
  {
    LazySubviewPlacements.allowsContentOffsetAdjustments.getter();
  }
}

unint64_t closure #1 in LazySubviewPlacements.placedAnchorTranslation(axes:placementContext:placements:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*a2 + 16) > result)
  {
    v4 = (*a2 + 80 * result);
    v6 = v4[5];
    v5 = v4[6];
    v7 = v4[3];
    v29 = v4[4];
    v30 = v6;
    v31 = v5;
    v27 = v4[2];
    v28 = v7;
    v8 = *(&v29 + 1);
    v10 = v6;
    v9 = *&v5;
    v11 = v4[5];
    v24 = v4[4];
    v25 = v11;
    v26 = v4[6];
    v12 = v4[3];
    v22 = v4[2];
    v23 = v12;
    outlined init with copy of _LazyLayout_PlacedSubview(&v27, &v21);
    _LazyLayout_PlacedSubview.size.getter();
    v15 = *(&v10 + 1) - v8 * v13;
    v16 = v9 - *&v10 * v14;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v22 = v27;
    v23 = v28;
    _LazyLayout_PlacedSubview.size.getter();
    v18 = v17;
    v20 = v19;
    result = outlined destroy of _LazyLayout_PlacedSubview(&v27);
    *a3 = v15;
    *(a3 + 8) = v16;
    *(a3 + 16) = v18;
    *(a3 + 24) = v20;
    *(a3 + 32) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in LazySubviewPlacements.placedSubviewAnchor(subviews:frame:)(uint64_t *a1, uint64_t *a2, void (*a3)(float64x2_t *__return_ptr, uint64_t, __int128 *))
{
  v5 = *a1;
  v6 = *(a1 + 3);
  v7 = *(a1 + 7);
  v18 = *(a1 + 5);
  v19 = v7;
  v20 = *(a1 + 9);
  v16 = *(a1 + 1);
  v17 = v6;
  v8 = *a2;
  a3(v21, v5, &v16);
  if (v22 & 1) != 0 || (v9 = *(a2 + 3), v10 = *(a2 + 7), v18 = *(a2 + 5), v19 = v10, v20 = *(a2 + 9), v11 = *(a2 + 1), v17 = v9, v15 = v21[0], v16 = v11, a3(v23, v8, &v16), (v24))
  {
    v12 = 0;
  }

  else
  {
    v13 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v15, v15), vmulq_f64(v23[0], v23[0])));
    v12 = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v13, 1), v13)).u8[0];
  }

  return v12 & 1;
}

BOOL closure #1 in PositionState.mainID<A>(subviews:context:layout:)(double *a1, double *a2, uint64_t a3)
{
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = *a2;
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  if ((*(*a1 + 173) & 1) != 0 || *(*a1 + 174) == 1)
  {
    v13 = INFINITY;
    if (*(*&v8 + 173))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v43 = a2[8];
    v44 = a2[7];
    v45 = a2[6];
    v46 = a2[5];
    _LazyLayout_PlacedSubview.size.getter();
    v16 = v6 - v4 * v14;
    v17 = v7 - v5 * v15;
    _LazyLayout_PlacedSubview.size.getter();
    v19 = v18;
    v21 = v20;
    swift_beginAccess();
    v48.origin.x = v16;
    v48.origin.y = v17;
    v48.size.width = v19;
    v48.size.height = v21;
    v49 = CGRectIntersection(v48, *(a3 + 16));
    if (CGRectIsEmpty(v49))
    {
      _LazyLayout_PlacedSubview.size.getter();
      v24 = v6 - v4 * v22;
      v25 = v7 - v5 * v23;
      _LazyLayout_PlacedSubview.size.getter();
      v13 = sqrt(v24 * v24 + v25 * v25);
    }

    else
    {
      v13 = INFINITY;
    }

    v9 = v46;
    v11 = v44;
    v10 = v45;
    v12 = v43;
    if (*(*&v8 + 173))
    {
      goto LABEL_10;
    }
  }

  if (*(*&v8 + 174) == 1)
  {
LABEL_10:
    v26 = INFINITY;
    return v13 < v26;
  }

  v27 = v11;
  v28 = v12;
  _LazyLayout_PlacedSubview.size.getter();
  v31 = v27 - v9 * v29;
  v32 = v28 - v10 * v30;
  _LazyLayout_PlacedSubview.size.getter();
  v47 = v9;
  v34 = v33;
  v35 = v10;
  v37 = v36;
  swift_beginAccess();
  v50.origin.x = v31;
  v50.origin.y = v32;
  v50.size.width = v34;
  v50.size.height = v37;
  v51 = CGRectIntersection(v50, *(a3 + 16));
  if (CGRectIsEmpty(v51))
  {
    _LazyLayout_PlacedSubview.size.getter();
    v40 = v27 - v47 * v38;
    v41 = v28 - v35 * v39;
    _LazyLayout_PlacedSubview.size.getter();
    v26 = sqrt(v40 * v40 + v41 * v41);
  }

  else
  {
    v26 = INFINITY;
  }

  return v13 < v26;
}

uint64_t closure #2 in PositionState.mainID<A>(subviews:context:layout:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  *a2 = *(v2 + 144);
  a2[1] = v3;
}

uint64_t commitSection #1 <A>(_:) in Array<A>.pinSectionHeadersAndFooters(in:headerAxes:footerAxes:)(uint64_t result, unint64_t a2, uint64_t *a3, CGFloat *a4, char a5)
{
  v15 = result;
  if (!a2 || (*(result + 40) & 1) != 0)
  {
    goto LABEL_26;
  }

  v7 = *(result + 32);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_55;
  }

  if (v7 >= *(*a3 + 16))
  {
    goto LABEL_56;
  }

  v6 = a2;
  v16 = *a3 + 80 * v7;
  v38 = *(v16 + 40);
  v39 = *(v16 + 56);
  v8 = *(v16 + 72);
  v9 = *(v16 + 80);
  v10 = *(v16 + 88);
  v11 = *(v16 + 96);
  _LazyLayout_PlacedSubview.size.getter();
  v18 = v17;
  v20 = v19;
  if (Axis.Set.contains(_:)(SwiftUI_Axis_horizontal) && (*(v15 + 8) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v21 = *(v15 + 8) - (1.0 - v8) * v18;
    v42.origin.x = *a4;
    v42.origin.y = a4[1];
    v42.size.width = a4[8];
    v42.size.height = a4[9];
    v22 = v8 * v18 + CGRectGetMinX(v42);
    if (v22 >= v21)
    {
      v22 = v21;
    }

    if (v22 <= v10)
    {
      v22 = v10;
    }

    if (v21 >= v22)
    {
      v10 = v22;
    }

    else
    {
      v10 = v21;
    }
  }

  if (Axis.Set.contains(_:)(SwiftUI_Axis_vertical) && (*(v15 + 24) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v23 = *(v15 + 24) - (1.0 - v9) * v20;
    v43.origin.x = *a4;
    v43.origin.y = a4[1];
    v43.size.width = a4[8];
    v43.size.height = a4[9];
    v24 = v9 * v20 + CGRectGetMinY(v43);
    if (v24 >= v23)
    {
      v24 = v23;
    }

    if (v24 <= v11)
    {
      v24 = v11;
    }

    if (v23 >= v24)
    {
      v11 = v24;
    }

    else
    {
      v11 = v23;
    }
  }

  v5 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_58;
  }

  while (1)
  {
    if (v7 >= *(v5 + 16))
    {
      __break(1u);
LABEL_60:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      v5 = result;
      *a3 = result;
      goto LABEL_51;
    }

    v25 = v5 + 80 * v7;
    *(v25 + 40) = v38;
    *(v25 + 56) = v39;
    *(v25 + 72) = v8;
    *(v25 + 80) = v9;
    *(v25 + 88) = v10;
    *(v25 + 96) = v11;
LABEL_26:
    if (!a5 || (*(v15 + 56) & 1) != 0)
    {
      return result;
    }

    v6 = *(v15 + 48);
    if ((v6 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *a3 = result;
  }

  if (v6 >= *(*a3 + 16))
  {
    goto LABEL_57;
  }

  v26 = *a3 + 80 * v6;
  v40 = *(v26 + 40);
  v41 = *(v26 + 56);
  v8 = *(v26 + 72);
  v9 = *(v26 + 80);
  v10 = *(v26 + 88);
  v11 = *(v26 + 96);
  _LazyLayout_PlacedSubview.size.getter();
  v28 = v27;
  v30 = v29;
  if (Axis.Set.contains(_:)(SwiftUI_Axis_horizontal) && (*v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v31 = v8 * v28 + *v15;
    v44.origin.x = *a4;
    v44.origin.y = a4[1];
    v44.size.width = a4[8];
    v44.size.height = a4[9];
    v32 = CGRectGetMaxX(v44) - (1.0 - v8) * v28;
    if (v31 > v32)
    {
      v32 = v31;
    }

    if (v31 > v10)
    {
      v33 = v31;
    }

    else
    {
      v33 = v10;
    }

    if (v32 >= v33)
    {
      v10 = v33;
    }

    else
    {
      v10 = v32;
    }
  }

  if (Axis.Set.contains(_:)(SwiftUI_Axis_vertical) && (*(v15 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v34 = v9 * v30 + *(v15 + 16);
    v45.origin.x = *a4;
    v45.origin.y = a4[1];
    v45.size.width = a4[8];
    v45.size.height = a4[9];
    v35 = CGRectGetMaxY(v45) - (1.0 - v9) * v30;
    if (v34 > v35)
    {
      v35 = v34;
    }

    if (v34 > v11)
    {
      v36 = v34;
    }

    else
    {
      v36 = v11;
    }

    if (v35 >= v36)
    {
      v11 = v36;
    }

    else
    {
      v11 = v35;
    }
  }

  v5 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_51:
  if (v6 >= *(v5 + 16))
  {
    __break(1u);
  }

  else
  {
    v37 = v5 + 80 * v6;
    *(v37 + 40) = v40;
    *(v37 + 56) = v41;
    *(v37 + 72) = v8;
    *(v37 + 80) = v9;
    *(v37 + 88) = v10;
    *(v37 + 96) = v11;
  }

  return result;
}

double specialized thunk for @callee_guaranteed () -> (@unowned PinnedSection)@<D0>(uint64_t a1@<X8>)
{
  result = INFINITY;
  *a1 = xmmword_18DDAB4F0;
  *(a1 + 16) = xmmword_18DDAB4F0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return result;
}

uint64_t specialized LazySubviewPlacements.logAnchorTranslation(_:)()
{
  _s2os6LoggerVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  if (one-time initialization token for scroll != -1)
  {
    v15 = v1;
    swift_once();
    v1 = v15;
  }

  v4 = __swift_project_value_buffer(v1, static Log.scroll);
  outlined init with copy of Logger?(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return outlined destroy of Logger?(v3, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = StaticString.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_18D018000, v8, v9, "Attempting anchor translation (%s).", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x193AC4820](v11, -1, -1);
    MEMORY[0x193AC4820](v10, -1, -1);
  }

  return (*(v6 + 8))(v3, v5);
}

uint64_t specialized LazySubviewPlacements.logTranslation(_:reason:)(unsigned __int8 a1, double a2, double a3)
{
  _s2os6LoggerVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  if (one-time initialization token for scroll != -1)
  {
    v25 = v7;
    swift_once();
    v7 = v25;
  }

  v10 = __swift_project_value_buffer(v7, static Log.scroll);
  outlined init with copy of Logger?(v10, v9);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    return outlined destroy of Logger?(v9, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 134218498;
    *(v16 + 4) = a2;
    *(v16 + 12) = 2048;
    *(v16 + 14) = a3;
    v18 = 0xD000000000000013;
    *(v16 + 22) = 2080;
    v19 = 0x800000018DD759D0;
    if (a1 == 3)
    {
      v19 = 0x800000018DD759F0;
    }

    else
    {
      v18 = 0xD000000000000015;
    }

    if (a1 == 2)
    {
      v18 = 0x7377656976627573;
      v19 = 0xEF65676E61686320;
    }

    v20 = 0xD000000000000013;
    v21 = 0x800000018DD75A30;
    if (a1)
    {
      v20 = 0xD00000000000001CLL;
      v21 = 0x800000018DD75A10;
    }

    if (a1 <= 1u)
    {
      v22 = v20;
    }

    else
    {
      v22 = v18;
    }

    if (a1 <= 1u)
    {
      v23 = v21;
    }

    else
    {
      v23 = v19;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_18D018000, v14, v15, "Adjusting content offset by %f, %f for reason: %s.", v16, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x193AC4820](v17, -1, -1);
    MEMORY[0x193AC4820](v16, -1, -1);
  }

  return (*(v12 + 8))(v9, v11);
}

uint64_t outlined init with copy of Scrollable?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Scrollable?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Scrollable?()
{
  if (!lazy cache variable for type metadata for Scrollable?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for Scrollable);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Scrollable?);
    }
  }
}

void type metadata accessor for (_LazyLayout_PlacedSubview, Int)()
{
  if (!lazy cache variable for type metadata for (_LazyLayout_PlacedSubview, Int))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_LazyLayout_PlacedSubview, Int));
    }
  }
}

void type metadata accessor for EnumeratedSequence<[_LazyLayout_PlacedSubview]>()
{
  if (!lazy cache variable for type metadata for EnumeratedSequence<[_LazyLayout_PlacedSubview]>)
  {
    _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(255, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [_LazyLayout_PlacedSubview] and conformance [A]();
    v0 = type metadata accessor for EnumeratedSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnumeratedSequence<[_LazyLayout_PlacedSubview]>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnumeratedSequence<[_LazyLayout_PlacedSubview]> and conformance EnumeratedSequence<A>()
{
  result = lazy protocol witness table cache variable for type EnumeratedSequence<[_LazyLayout_PlacedSubview]> and conformance EnumeratedSequence<A>;
  if (!lazy protocol witness table cache variable for type EnumeratedSequence<[_LazyLayout_PlacedSubview]> and conformance EnumeratedSequence<A>)
  {
    type metadata accessor for EnumeratedSequence<[_LazyLayout_PlacedSubview]>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnumeratedSequence<[_LazyLayout_PlacedSubview]> and conformance EnumeratedSequence<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PinnedSection(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PinnedSection(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

uint64_t initializeWithCopy for PlacementState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  v6 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v6;
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t assignWithCopy for PlacementState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithTake for PlacementState(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  v6 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v6;
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlacementState(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 116))
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

uint64_t storeEnumTagSinglePayload for PlacementState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 116) = 1;
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

    *(result + 116) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for PositionState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);

  return a1;
}

uint64_t assignWithCopy for PositionState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);

  v4 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v4;
  return a1;
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t assignWithTake for PositionState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t getEnumTagSinglePayload for PositionState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 185))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 160);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for PositionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 184) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 160) = a2;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for LazyLayoutComputer.Engine(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 161 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v11 = ((a2 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    *v10 = *v11;
    v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v15;
    v16 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(v17 + 32);
    v19 = *v17;
    *(v16 + 16) = *(v17 + 16);
    *(v16 + 32) = v18;
    *v16 = v19;
    v20 = *(v17 + 96);
    v22 = *(v17 + 48);
    v21 = *(v17 + 64);
    *(v16 + 80) = *(v17 + 80);
    *(v16 + 96) = v20;
    *(v16 + 48) = v22;
    *(v16 + 64) = v21;
    v24 = *(v17 + 128);
    v23 = *(v17 + 144);
    v25 = *(v17 + 112);
    *(v16 + 160) = *(v17 + 160);
    *(v16 + 128) = v24;
    *(v16 + 144) = v23;
    *(v16 + 112) = v25;
  }

  return v3;
}

uint64_t assignWithCopy for LazyLayoutComputer.Engine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v7 += 23;
  v8 += 23;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v7 & 0xFFFFFFFFFFFFFFF8) = *(v8 & 0xFFFFFFFFFFFFFFF8);
  v10 = (v7 & 0xFFFFFFFFFFFFFFF8) + 15;

  v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
  *v11 = *(v9 & 0xFFFFFFFFFFFFFFF8);
  v11[1] = *((v9 & 0xFFFFFFFFFFFFFFF8) + 8);
  v12 = ((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = ((v9 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  v15 = *(v13 + 16);
  v16 = *(v13 + 32);
  *(v12 + 48) = *(v13 + 48);
  *(v12 + 16) = v15;
  *(v12 + 32) = v16;
  *v12 = v14;
  v17 = *(v13 + 56);
  v18 = *(v13 + 72);
  v19 = *(v13 + 88);
  *(v12 + 104) = *(v13 + 104);
  *(v12 + 88) = v19;
  *(v12 + 72) = v18;
  *(v12 + 56) = v17;
  v20 = *(v13 + 112);
  v21 = *(v13 + 128);
  v22 = *(v13 + 144);
  *(v12 + 160) = *(v13 + 160);
  *(v12 + 128) = v21;
  *(v12 + 144) = v22;
  *(v12 + 112) = v20;
  return a1;
}

uint64_t initializeWithTake for LazyLayoutComputer.Engine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 32);
  v16 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *(v13 + 32) = v15;
  *v13 = v16;
  v17 = *(v14 + 96);
  v19 = *(v14 + 48);
  v18 = *(v14 + 64);
  *(v13 + 80) = *(v14 + 80);
  *(v13 + 96) = v17;
  *(v13 + 48) = v19;
  *(v13 + 64) = v18;
  v21 = *(v14 + 128);
  v20 = *(v14 + 144);
  v22 = *(v14 + 112);
  *(v13 + 160) = *(v14 + 160);
  *(v13 + 128) = v21;
  *(v13 + 144) = v20;
  *(v13 + 112) = v22;
  return a1;
}

uint64_t assignWithTake for LazyLayoutComputer.Engine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  *(v7 + 4) = v8[1];
  *(v7 + 8) = v8[2];
  *(v7 + 12) = v8[3];
  v7 += 23;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  v9 += 15;
  *(v7 & 0xFFFFFFFFFFFFFFF8) = v10;
  v11 = (v7 & 0xFFFFFFFFFFFFFFF8) + 15;

  v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
  *v12 = *(v9 & 0xFFFFFFFFFFFFFFF8);
  v12[1] = *((v9 & 0xFFFFFFFFFFFFFFF8) + 8);
  v13 = ((v11 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = ((v9 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  v16 = *(v14 + 16);
  v17 = *(v14 + 32);
  *(v13 + 48) = *(v14 + 48);
  *(v13 + 16) = v16;
  *(v13 + 32) = v17;
  *v13 = v15;
  v18 = *(v14 + 56);
  v19 = *(v14 + 72);
  v20 = *(v14 + 88);
  *(v13 + 104) = *(v14 + 104);
  *(v13 + 88) = v20;
  *(v13 + 72) = v19;
  *(v13 + 56) = v18;
  v21 = *(v14 + 112);
  v22 = *(v14 + 128);
  v23 = *(v14 + 144);
  *(v13 + 160) = *(v14 + 160);
  *(v13 + 128) = v22;
  *(v13 + 144) = v23;
  *(v13 + 112) = v21;
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyLayoutComputer.Engine(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 161;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((&a1[v6 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * (((((((((v6 + 3) & 0xFC) + 23) & 0xF8) + 15) & 0xF8) + 23) & 0xF8) - 95));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for LazyLayoutComputer.Engine(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((((((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 161;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (((&a1[v9 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((((((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 161);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t assignWithCopy for LazySubviewPlacements(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 249) = *(a2 + 249);
  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 420) = *(a2 + 420);
  *(a1 + 424) = *(a2 + 424);

  v4 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 432) = v4;
  *(a1 + 452) = *(a2 + 452);
  v5 = *(a2 + 456);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 456) = v5;
  return a1;
}

uint64_t assignWithTake for LazySubviewPlacements(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  v5 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v5;
  v6 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v6;
  v7 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v7;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 249) = *(a2 + 249);
  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);
  v8 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v8;
  v9 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v9;
  v10 = *(a2 + 352);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = v10;
  v11 = *(a2 + 384);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = v11;
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);

  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 472) = *(a2 + 472);
  return a1;
}

uint64_t getEnumTagSinglePayload for LazySubviewPlacements(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 473))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LazySubviewPlacements(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 472) = 0;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 473) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 473) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for SizingState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for SizingState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for SizingState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for SizingState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SizingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t GraphicsContext._shapeRenderingMode.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = fabs(*(result + 56));
  v3 = *(result + 56);
  v4 = (~v3 & 0x7FF0000000000000) != 0;
  if ((v3 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v4 = 1;
  }

  if (v3 >= 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (!v4)
  {
    v5 = 0;
  }

  v6 = 0.0;
  if (v4)
  {
    v6 = v2;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t GraphicsContext._shapeRenderingMode.setter(uint64_t result)
{
  v2 = *(result + 8);
  if (*result == 3)
  {
    if (v2 > 0.0)
    {
      v3 = -v2;
    }

    else
    {
      v3 = -0.0;
    }

LABEL_9:
    if (*(*v1 + 56) == v3)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (*result == 2)
  {
    if (v2 > 0.0)
    {
      v3 = *(result + 8);
    }

    else
    {
      v3 = 0.0;
    }

    goto LABEL_9;
  }

  v3 = NAN;
LABEL_12:
  result = GraphicsContext.copyOnWrite()();
  *(*v1 + 56) = v3;
  return result;
}

uint64_t GraphicsContext.opacity.setter(double a1)
{
  v2 = a1;
  if (*(*v1 + 48) != v2)
  {
    result = GraphicsContext.copyOnWrite()();
    *(*v1 + 48) = v2;
  }

  return result;
}

uint64_t GraphicsContext.fill(_:with:style:)(double *a1, __int128 *a2, __int16 a3, uint64_t a4)
{
  v5 = a3 & 0x101;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  return GraphicsContext.draw(_:with:style:)(a1, a2, &v5, a4);
}

_BYTE *static GraphicsContext.Shading.color(_:white:opacity:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v5;
  if (*result)
  {
    if (*result != 1)
    {
      if (v5 <= 0.0)
      {
        v9 = -v5;
      }

      else
      {
        v9 = v5;
      }

      if (v9 <= 0.04045)
      {
        v10 = v9 * 0.077399;
        v12 = -(v9 * 0.077399);
        v11 = v5 <= 0.0;
      }

      else
      {
        v10 = 1.0;
        if (v9 == 1.0)
        {
          v11 = v5 <= 0.0;
          v12 = -1.0;
        }

        else
        {
          v13 = v5;
          v10 = powf((v9 * 0.94787) + 0.052133, 2.4);
          v5 = v13;
          v12 = -v10;
          v11 = v13 <= 0.0;
        }
      }

      if (!v11)
      {
        v12 = v10;
      }

      if (v5 <= 0.0)
      {
        v14 = -v10;
      }

      else
      {
        v14 = v10;
      }

      Color.Resolved.displayP3Components.getter((v12 * 1.2249) + (v12 * -0.2247), (v12 * 1.0419) + (v12 * -0.042), ((v12 * -0.0786) + (v12 * -0.0197)) + (v14 * 1.0979));
    }

    result = RBColorFromLinear();
  }

  *a2 = v5;
  *(a2 + 4) = v7;
  *(a2 + 8) = v8;
  *(a2 + 12) = v6;
  *(a2 + 72) = 2;
  return result;
}

uint64_t GraphicsContext.clipToLayer(opacity:options:content:)(uint64_t a1, void (*a2)(void))
{
  GraphicsContext.copyOnWrite()();
  v4 = *v2;
  v5 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v6 = swift_allocObject();
  *(v6 + 32) = xmmword_18DD85500;
  *(v6 + 48) = 1065353216;
  *(v6 + 56) = 0x7FF8000000000000;
  v7 = v4[2];
  v8 = *(v7 + 64);
  if (v8 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v6 + 16) = v7;
  }

  else
  {
    v14 = a2;
    v9 = RBDrawingStateGetDisplayList();
    v10 = v4[4];
    v11 = v10;
    v12 = v4[5];
    if (v10 == 1)
    {
      v11 = *(v7 + 48);
      v12 = *(v7 + 56);
    }

    v15[0] = v11;
    v15[1] = v12;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v10);
    *(v6 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v9, v15);
    a2 = v14;
  }

  *(v6 + 24) = v5;
  *(v6 + 64) = 0;
  v15[0] = v6;

  a2(v15);

  RBDrawingStateClipLayer();
}

uint64_t specialized GraphicsContext.drawLayer(flags:content:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a3;
  v7 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v8 = swift_allocObject();
  *(v8 + 32) = xmmword_18DD85500;
  *(v8 + 48) = 1065353216;
  *(v8 + 56) = 0x7FF8000000000000;
  v9 = *(a2 + 16);
  v10 = *(v9 + 64);
  if (v10 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v8 + 16) = v9;
  }

  else
  {
    v17 = a4;
    v16 = RBDrawingStateGetDisplayList();
    v11 = *(a2 + 32);
    v12 = v11;
    v13 = *(a2 + 40);
    if (v11 == 1)
    {
      v12 = *(v9 + 48);
      v13 = *(v9 + 56);
    }

    v18[0] = v12;
    v18[1] = v13;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v11);
    *(v8 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v16, v18);
    a4 = v17;
  }

  *(v8 + 24) = v7;
  *(v8 + 64) = 0;
  if ((a1 & 0x20) != 0)
  {
    *(v8 + 48) = *(a2 + 48);
    *(v8 + 52) = *(a2 + 52);
  }

  v18[0] = v8;

  static SDFStyle.Group.drawElements(_:in:sdf:)(v14, v18, a4);

  RBDrawingStateDrawLayer();
}

{
  return sub_18D3AEC80(a1, a2, a3, a4);
}

uint64_t specialized GraphicsContext.drawLayer(flags:content:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v7 = swift_allocObject();
  *(v7 + 32) = xmmword_18DD85500;
  *(v7 + 48) = 1065353216;
  *(v7 + 56) = 0x7FF8000000000000;
  v8 = *(a2 + 16);
  v9 = *(v8 + 64);
  if (v9 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v7 + 16) = v8;
  }

  else
  {
    v16 = RBDrawingStateGetDisplayList();
    v10 = *(a2 + 32);
    v11 = v10;
    v12 = *(a2 + 40);
    if (v10 == 1)
    {
      v11 = *(v8 + 48);
      v12 = *(v8 + 56);
    }

    v17[0] = v11;
    v17[1] = v12;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v10);
    *(v7 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v16, v17);
  }

  *(v7 + 24) = v6;
  *(v7 + 64) = 0;
  if ((a1 & 0x20) != 0)
  {
    *(v7 + 48) = *(a2 + 48);
    *(v7 + 52) = *(a2 + 52);
  }

  v17[0] = v7;
  v13 = *(a3 + 56);
  if (v13)
  {
    v18 = v7;
    swift_retain_n();
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v13);
    v13(&v18);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v13);
  }

  else
  {
  }

  *(a3 + 74) = 1;

  static SDFStyle.Group.drawElements(_:in:sdf:)(v14, v17, a3);

  RBDrawingStateDrawLayer();
}

uint64_t specialized GraphicsContext.drawLayer(flags:content:)(char a1, uint64_t a2, double a3, double a4)
{
  v9 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v10 = swift_allocObject();
  *(v10 + 32) = xmmword_18DD85500;
  *(v10 + 48) = 1065353216;
  *(v10 + 56) = 0x7FF8000000000000;
  v11 = *(a2 + 16);
  v12 = *(v11 + 64);
  if (v12 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v10 + 16) = v11;
  }

  else
  {
    v18[5] = v4;
    v17 = RBDrawingStateGetDisplayList();
    v13 = *(a2 + 32);
    v14 = v13;
    v15 = *(a2 + 40);
    if (v13 == 1)
    {
      v14 = *(v11 + 48);
      v15 = *(v11 + 56);
    }

    v18[0] = v14;
    v18[1] = v15;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v13);
    *(v10 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v17, v18);
  }

  *(v10 + 24) = v9;
  *(v10 + 64) = 0;
  if ((a1 & 0x20) != 0)
  {
    *(v10 + 48) = *(a2 + 48);
    *(v10 + 52) = *(a2 + 52);
  }

  GraphicsContext.renderMissingPlatformView(size:)(__PAIR128__(*&a4, *&a3));

  RBDrawingStateDrawLayer();
}

{
  return sub_18D3AEC68(a1, a2, a3, a4);
}

Swift::Void __swiftcall GraphicsContext.concatenate(_:)(CGAffineTransform *a1)
{
  a = a1->a;
  b = a1->b;
  c = a1->c;
  d = a1->d;
  tx = a1->tx;
  ty = a1->ty;
  v7.a = a1->a;
  v7.b = b;
  v7.c = c;
  v7.d = d;
  v7.tx = tx;
  v7.ty = ty;
  if (!CGAffineTransformIsIdentity(&v7))
  {
    GraphicsContext.copyOnWrite()();
    v7.a = a;
    v7.b = b;
    v7.c = c;
    v7.d = d;
    v7.tx = tx;
    v7.ty = ty;
    RBDrawingStateConcatCTM();
  }
}

__n128 static GraphicsContext.Filter.projectionTransform(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  *(a2 + 64) = v2;
  *(a2 + 80) = 0;
  return result;
}

void static GraphicsContext.Shading.backdrop.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2143289344;
  *(a1 + 72) = 0;
}

void GraphicsContext._addAnimation(_:id:)(uint64_t a1)
{
  GraphicsContext.copyOnWrite()();
  if (a1)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69C7098]) init];
    (*(*a1 + 96))(&v10);
    v6 = v10;
    v7 = v11;
    v8 = v12;
    v9 = v13;
    Animation.Function.apply(to:)(v5, *&v10, *&v11, v2, v3, v4);
    outlined consume of Animation.Function(v6, *(&v6 + 1), v7, *(&v7 + 1), v8, v9);
  }

  else
  {
    v5 = 0;
  }

  RBDrawingStateAddAnimationStyle();
}

uint64_t static GraphicsContext.Shading.color(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 72) = 1;
}

uint64_t GraphicsContext.stroke(_:with:lineWidth:)(uint64_t a1, uint64_t *a2, double *a3, double a4)
{
  v7 = a4;
  v8 = xmmword_18DDAB920;
  v5 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v10 = 0;
  v11 = 1;
  GraphicsContext.draw(_:with:style:)(a1, a2, &v7, a3);

  return outlined consume of PathDrawingStyle(*&a4, 0, 0x4024000000000000, v5, 0, 1);
}

uint64_t GraphicsContext.init(displayList:environment:)(void *a1, uint64_t *a2)
{
  v3 = specialized GraphicsContext.init(displayList:environment:)(a1, a2);

  return v3;
}

uint64_t static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(float **))
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v9 = *(a2 + 8);
  v27 = 0;
  v28 = 1.0;
  v11 = MEMORY[0x193AC3360](a1, &v28, &v27);
  if (v11)
  {
    v12 = v11;
    type metadata accessor for GraphicsContext.Storage();
    v13 = swift_allocObject();
    *(v13 + 32) = xmmword_18DD85500;
    *(v13 + 48) = 1065353216;
    *(v13 + 56) = 0x7FF8000000000000;
    v14 = RBDrawingStateGetDisplayList();
    v29 = v10;
    v30 = v9;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v15 = GraphicsContext.Storage.Shared.init(list:environment:)(v14, &v29);
    v16 = 0;
    *(v13 + 16) = v15;
    *(v13 + 24) = v12;
    *(v13 + 64) = 0;
    v29 = v13;
    v17 = v28;
    if (v28 != 1.0)
    {
      GraphicsContext.copyOnWrite()();
      v18 = v29;
      v29[12] = v17;
      v16 = *(v18 + 52);
    }

    v19 = v27;
    if (v16 != v27)
    {
      GraphicsContext.copyOnWrite()();
      *(v29 + 13) = v19;
    }

    a5(&v29);
  }

  else
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v20 setProfile_];
    [v20 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v20 setContentRect_];
    if (a4)
    {
      if (v9)
      {

        v21 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10);

        v22 = v21;
      }

      else
      {
        v26 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v10);
        if (v26)
        {
          v22 = v26[9];
        }

        else
        {
          v22 = 1.0;
        }
      }
    }

    else
    {
      v22 = *&a3;
    }

    [v20 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v23 = swift_allocObject();
    *(v23 + 32) = xmmword_18DD85500;
    *(v23 + 48) = 1065353216;
    *(v23 + 56) = 0x7FF8000000000000;
    v29 = v10;
    v30 = v9;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v24 = v20;

    *(v23 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v24, &v29);
    *(v23 + 24) = RBDisplayListGetState();
    *(v23 + 64) = 0;
    v29 = v23;
    a5(&v29);
    [v24 renderInContext:a1 options:0];
  }
}

uint64_t static GraphicsContext.Filter.alphaThreshold(min:max:color:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (a3 >= a4)
  {
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD7B960);
    Double.write<A>(to:)();
    MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
    Double.write<A>(to:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = a3;
    v6 = a4;
    *a2 = v5;
    *(a2 + 4) = v6;
    *(a2 + 8) = a1;
    *(a2 + 80) = 2550136832;
  }

  return result;
}

uint64_t static GraphicsContext.Filter.layerShader(_:maxSampleOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = a3;
  *(a2 + 48) = a4;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 80) = 3221225472;
  v9 = v4;
}

uint64_t static GraphicsContext.Filter.colorShader(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32) | 2;
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 80) = 3221225472;
  v7 = v2;
}

uint64_t GraphicsContext.environment.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  v4 = v3;
  v5 = a1[5];
  if (v3 == 1)
  {
    v6 = a1[2];
    v4 = *(v6 + 48);
    v5 = *(v6 + 56);
  }

  *a2 = v4;
  a2[1] = v5;

  return outlined copy of EnvironmentValues?(v3);
}

uint64_t GraphicsContext.addFilter(shader:maxSampleOffset:maxLayerSampleOffset:options:content:)(uint64_t a1, double a2, double a3, uint64_t a4, void (*a5)(void))
{
  v6 = v5;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v32 = *(a1 + 32);
  v13 = *v5;
  v14 = *(*v5 + 4);
  v15 = v14;
  v16 = *(v13 + 5);
  if (v14 == 1)
  {
    v17 = *(v13 + 2);
    v15 = *(v17 + 48);
    v16 = *(v17 + 56);
    v31 = *(a1 + 16);

    v12 = v31;
  }

  v34 = v10;
  v35 = v11;
  v36 = v12;
  v37 = v32;
  v33[0] = v15;
  v33[1] = v16;
  outlined copy of EnvironmentValues?(v14);
  v18 = Shader.makeRBShader(in:)(v33);
  result = outlined consume of EnvironmentValues?(v33[0]);
  if (v18)
  {
    v20 = v18;
    GraphicsContext.copyOnWrite()();
    v21 = *v6;
    v22 = RBDrawingStateBeginLayer();
    type metadata accessor for GraphicsContext.Storage();
    v23 = swift_allocObject();
    *(v23 + 32) = xmmword_18DD85500;
    *(v23 + 48) = 1065353216;
    *(v23 + 56) = 0x7FF8000000000000;
    v24 = *(v21 + 2);
    v25 = *(v24 + 64);
    if (v25 == RBDrawingStateGetDefaultColorSpace())
    {
      *(v23 + 16) = v24;
    }

    else
    {
      v30 = a5;
      v26 = RBDrawingStateGetDisplayList();
      v27 = *(v21 + 4);
      v28 = v27;
      v29 = v21[5];
      if (v27 == 1)
      {
        v28 = *(v24 + 48);
        v29 = *(v24 + 56);
      }

      v34 = v28;
      v35 = v29;
      type metadata accessor for GraphicsContext.Storage.Shared();
      swift_allocObject();
      outlined copy of EnvironmentValues?(v27);
      *(v23 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v26, &v34);
      a5 = v30;
    }

    *(v23 + 24) = v22;
    *(v23 + 64) = 0;
    v33[0] = v23;

    a5(v33);
    v34 = v18;
    v35 = a2;
    *&v36 = a3;
    DWORD2(v36) = v32;
    Shader.ResolvedShader.rbFilterFlags.getter();
    RBDrawingStateAddShaderFilterLayer();
  }

  return result;
}

Swift::Void __swiftcall GraphicsContext.fillWithBackdrop()()
{
  RBDrawingStateBeginLayer();

  RBDrawingStateDrawLayer();
}

uint64_t Path.applying(_:)(uint64_t *a1)
{
  v2 = *a1;
  if (a1[5])
  {
    v3 = a1[4];
    v4 = a1[3];
    v5 = a1[2];
    v6 = a1[1];
    v13[0] = *a1;
    v13[1] = v6;
    v13[2] = v5;
    v13[3] = v4;
    v13[4] = v3;
    v7 = *(v1 + 16);
    v14[0] = *v1;
    v14[1] = v7;
    v15 = *(v1 + 32);
    Path.strokedPath(_:)(v13, v11);
    outlined destroy of Path(v14);
    LOBYTE(v2) = 0;
    v8 = v11[1];
    *v1 = v11[0];
    *(v1 + 16) = v8;
    *(v1 + 32) = v12;
    v9 = 256;
  }

  else
  {
    v9 = v2 & 0x100;
  }

  return v9 | (v2 & 1);
}

BOOL specialized ShapeStyle.isMultiLevel(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[27] = 0;
  *&v9 = 0;
  v8 = 0uLL;
  BYTE8(v9) = 5;
  *&v10 = 0;
  BYTE8(v10) = 5;
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v12 = 0u;
  memset(v13, 0, 24);
  v13[24] = 1;
  *&v13[25] = 768;
  v3 = *(*a3 + 80);

  v3(&v8);
  v4 = BYTE8(v10) == 4 && (v10 & 1) != 0;
  v6[4] = v12;
  v7[0] = *v13;
  *(v7 + 12) = *&v13[12];
  v6[0] = v8;
  v6[1] = v9;
  v6[2] = v10;
  v6[3] = v11;
  outlined destroy of _ShapeStyle_Shape(v6);
  return v4;
}

void GraphicsImage.withRBImage(image:color:)(void (*a1)(uint64_t), uint64_t a2, void (*a3)(void))
{
  v5 = v3[5];
  v35 = v3[4];
  v36[0] = v5;
  *(v36 + 12) = *(v3 + 92);
  v6 = v3[1];
  v31 = *v3;
  v32 = v6;
  v7 = v3[3];
  v33 = v3[2];
  v34 = v7;
  v8 = v31;
  if (BYTE8(v31) <= 3u)
  {
    if (!BYTE8(v31))
    {
      outlined init with copy of GraphicsImage(&v31, &v25);
      outlined init with copy of GraphicsImage(&v31, &v25);
      goto LABEL_18;
    }

    if (BYTE8(v31) == 1)
    {
      IOSurface = RBImageMakeIOSurface();
      a1(IOSurface);
      return;
    }

LABEL_7:
    v10 = a3;
    v11 = v3[5];
    v29 = v3[4];
    v30[0] = v11;
    *(v30 + 12) = *(v3 + 92);
    v12 = v3[1];
    v25 = *v3;
    v26 = v12;
    v13 = v3[3];
    v14 = 0.0;
    v27 = v3[2];
    v28 = v13;
    v15 = 0.0;
    if (*&v32 != 0.0)
    {
      v16 = *(&v32 + 1);
      if (BYTE8(v33) <= 3u)
      {
        v17 = *&v33;
      }

      else
      {
        v17 = *(&v32 + 1);
      }

      if (BYTE8(v33) > 3u)
      {
        v16 = *&v33;
      }

      v14 = 1.0 / *&v32 * v16;
      v15 = 1.0 / *&v32 * v17;
    }

    v18.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(*&v15, *&v14), 0).value;
    a3 = v10;
    if (v18.value)
    {
      v8 = v18.value;
LABEL_18:
      CGImage = RBImageMakeCGImage();
      a1(CGImage);

      return;
    }

    goto LABEL_16;
  }

  if (BYTE8(v31) == 4)
  {
    v21 = *(v31 + 28);
    v20 = *(v31 + 32);
    if (v35)
    {
      v22 = *(v31 + 16);
      v23 = *(v31 + 20);
      v24 = *(v31 + 24);
    }

    else
    {
      v23 = v34;
      v24 = DWORD1(v34);
      v22 = HIDWORD(v33);
      v21 = v21 * *(&v34 + 2);
    }

    *&v25 = __PAIR64__(v23, v22);
    *(&v25 + 1) = __PAIR64__(LODWORD(v21), v24);
    LODWORD(v26) = v20;
    goto LABEL_23;
  }

  if (BYTE8(v31) != 255)
  {
    goto LABEL_7;
  }

LABEL_16:
  v25 = 0uLL;
  LODWORD(v26) = 2143289344;
LABEL_23:
  a3(&v25);
}

uint64_t one-time initialization function for _textDrawingContext()
{
  type metadata accessor for TextDrawingContext();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
  [v1 setWrapsForTruncationMode_];
  [v1 setWantsBaselineOffset_];
  [v1 setWantsScaledLineHeight_];
  [v1 setWantsScaledBaselineOffset_];
  [v1 setCachesLayout_];
  type metadata accessor for Text.Style?(0, &lazy cache variable for type metadata for AtomicBuffer<NSStringDrawingContext>, type metadata accessor for NSStringDrawingContext, type metadata accessor for AtomicBuffer);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  *(v0 + 16) = result;
  static GraphicsContext.Storage.Shared._textDrawingContext = v0;
  return result;
}

void *GraphicsContext.Storage.Shared.resolvedForeground(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*a1 == 1)
  {
    v5 = *(v2 + 192);
    v6 = *(v2 + 224);
    v81 = *(v2 + 208);
    v82 = v6;
    v7 = *(v2 + 128);
    v8 = *(v2 + 160);
    v77 = *(v2 + 144);
    v78 = v8;
    v9 = *(v2 + 160);
    v10 = *(v2 + 192);
    v79 = *(v2 + 176);
    v80 = v10;
    v11 = *(v2 + 96);
    v73 = *(v2 + 80);
    v74 = v11;
    v12 = *(v2 + 128);
    v14 = *(v2 + 80);
    v13 = *(v2 + 96);
    v75 = *(v2 + 112);
    v76 = v12;
    v15 = *(v2 + 224);
    v92 = v81;
    v93 = v15;
    v88 = v77;
    v89 = v9;
    v90 = v79;
    v91 = v5;
    v84 = v14;
    v85 = v13;
    v83 = *(v2 + 240);
    v94 = *(v2 + 240);
    v86 = v75;
    v87 = v7;
    if (_s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOg(&v84) != 1)
    {
      v36 = v93;
      *(a2 + 128) = v92;
      *(a2 + 144) = v36;
      *(a2 + 160) = v94;
      v37 = v89;
      *(a2 + 64) = v88;
      *(a2 + 80) = v37;
      v38 = v91;
      *(a2 + 96) = v90;
      *(a2 + 112) = v38;
      v39 = v85;
      *a2 = v84;
      *(a2 + 16) = v39;
      v40 = v87;
      *(a2 + 32) = v86;
      *(a2 + 48) = v40;
      v61 = v81;
      v62 = v82;
      v63 = v83;
      v57 = v77;
      v58 = v78;
      v59 = v79;
      v60 = v80;
      v53 = v73;
      v54 = v74;
      v55 = v75;
      v56 = v76;
      return outlined init with copy of GraphicsContext.ResolvedShading(&v53, &v42);
    }

    v16 = *(v2 + 48);
    v17 = *(v2 + 56);
  }

  else
  {
    v16 = *a1;
    v17 = a1[1];
  }

  v72[27] = 0;
  v67 = 0uLL;
  *&v68 = 1;
  BYTE8(v68) = 1;
  *&v69 = 0;
  BYTE8(v69) = 5;
  *&v70 = v16;
  *(&v70 + 1) = v17;
  v71 = 0u;
  memset(v72, 0, 24);
  v72[24] = 1;
  *&v72[25] = 256;
  outlined copy of EnvironmentValues?(v4);
  specialized ForegroundStyle._apply(to:)(&v67);
  if (BYTE8(v69) == 1)
  {
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v66 = v18;
  LOBYTE(v84) = 0;
  _ShapeStyle_Pack.subscript.getter(&v84, 0, &v73);

  GraphicsContext.ResolvedShading.init(_:)(&v73, &v84);
  v64[3] = v70;
  v64[4] = v71;
  v65[0] = *v72;
  *(v65 + 12) = *&v72[12];
  v64[0] = v67;
  v64[1] = v68;
  v64[2] = v69;
  result = outlined destroy of _ShapeStyle_Shape(v64);
  v81 = v92;
  v82 = v93;
  v83 = v94;
  v77 = v88;
  v78 = v89;
  v79 = v90;
  v80 = v91;
  v73 = v84;
  v74 = v85;
  v75 = v86;
  v76 = v87;
  if (v4 == 1)
  {
    v50 = v92;
    v51 = v93;
    v52 = v94;
    v46 = v88;
    v47 = v89;
    v48 = v90;
    v49 = v91;
    v42 = v84;
    v43 = v85;
    v44 = v86;
    v45 = v87;
    _ViewInputs.base.modify(&v42, v20);
    v21 = *(v2 + 224);
    v61 = *(v2 + 208);
    v62 = v21;
    v63 = *(v2 + 240);
    v22 = *(v2 + 160);
    v57 = *(v2 + 144);
    v58 = v22;
    v23 = *(v2 + 192);
    v59 = *(v2 + 176);
    v60 = v23;
    v24 = *(v2 + 96);
    v53 = *(v2 + 80);
    v54 = v24;
    v25 = *(v2 + 128);
    v55 = *(v2 + 112);
    v56 = v25;
    v26 = v51;
    *(v2 + 208) = v50;
    *(v2 + 224) = v26;
    *(v2 + 240) = v52;
    v27 = v47;
    *(v2 + 144) = v46;
    *(v2 + 160) = v27;
    v28 = v49;
    *(v2 + 176) = v48;
    *(v2 + 192) = v28;
    v29 = v43;
    *(v2 + 80) = v42;
    *(v2 + 96) = v29;
    v30 = v45;
    *(v2 + 112) = v44;
    *(v2 + 128) = v30;
    outlined init with copy of GraphicsContext.ResolvedShading(&v73, v41);
    result = outlined destroy of GraphicsContext.Shading?(&v53, &lazy cache variable for type metadata for GraphicsContext.ResolvedShading?, &type metadata for GraphicsContext.ResolvedShading);
  }

  v31 = v82;
  *(a2 + 128) = v81;
  *(a2 + 144) = v31;
  *(a2 + 160) = v83;
  v32 = v78;
  *(a2 + 64) = v77;
  *(a2 + 80) = v32;
  v33 = v80;
  *(a2 + 96) = v79;
  *(a2 + 112) = v33;
  v34 = v74;
  *a2 = v73;
  *(a2 + 16) = v34;
  v35 = v76;
  *(a2 + 32) = v75;
  *(a2 + 48) = v35;
  return result;
}

uint64_t GraphicsContext.Storage.deinit()
{
  if (*(v0 + 64) == 1)
  {
    RBDrawingStateDestroy();
  }

  outlined consume of EnvironmentValues?(*(v0 + 32));
  return v0;
}

uint64_t GraphicsContext.init(drawingState:environment:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  type metadata accessor for GraphicsContext.Storage();
  v5 = swift_allocObject();
  *(v5 + 32) = xmmword_18DD85500;
  *(v5 + 48) = 1065353216;
  *(v5 + 56) = 0x7FF8000000000000;
  v6 = RBDrawingStateGetDisplayList();
  v8[0] = v3;
  v8[1] = v4;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();
  *(v5 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v6, v8);
  *(v5 + 24) = a1;
  *(v5 + 64) = 0;
  return v5;
}

double GraphicsContext.transform.getter@<D0>(_OWORD *a1@<X8>)
{
  RBDrawingStateGetCTM();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t (*GraphicsContext.opacity.modify(uint64_t a1))(uint64_t result)
{
  v2 = *v1;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *a1 = *(v2 + 48);
  return GraphicsContext.opacity.modify;
}

uint64_t GraphicsContext.opacity.modify(uint64_t result)
{
  v1 = *result;
  if (*(*(result + 16) + 48) != v1)
  {
    v2 = *(result + 8);
    result = GraphicsContext.copyOnWrite()();
    *(*v2 + 48) = v1;
  }

  return result;
}

uint64_t (*GraphicsContext.blendMode.modify(uint64_t a1))(uint64_t result)
{
  v2 = *v1;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v2 + 52);
  return GraphicsContext.blendMode.modify;
}

uint64_t GraphicsContext.blendMode.modify(uint64_t result)
{
  v1 = *(result + 16);
  if (*(*(result + 8) + 52) != v1)
  {
    v2 = *result;
    result = GraphicsContext.copyOnWrite()();
    *(*v2 + 52) = v1;
  }

  return result;
}

uint64_t GraphicsContext._ShapeRenderingMode.hash(into:)()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x193AC11E0](*&v2);
}

Swift::Int GraphicsContext._ShapeRenderingMode.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x193AC11E0](*&v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GraphicsContext._ShapeRenderingMode()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x193AC11E0](*&v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GraphicsContext._ShapeRenderingMode()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x193AC11E0](*&v2);
  return Hasher._finalize()();
}

uint64_t (*GraphicsContext._shapeRenderingMode.modify(uint64_t a1))(uint64_t result)
{
  v2 = *v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v3 = fabs(*(v2 + 56));
  v4 = *(v2 + 56);
  v5 = (~v4 & 0x7FF0000000000000) != 0;
  if ((v4 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v5 = 1;
  }

  if (v4 >= 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  if (!v5)
  {
    v6 = 0;
  }

  v7 = 0.0;
  if (v5)
  {
    v7 = v3;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  return GraphicsContext._shapeRenderingMode.modify;
}

uint64_t GraphicsContext._shapeRenderingMode.modify(uint64_t result)
{
  v1 = *(result + 8);
  if (*result == 3)
  {
    if (v1 > 0.0)
    {
      v2 = -v1;
    }

    else
    {
      v2 = -0.0;
    }

LABEL_9:
    if (*(*(result + 24) + 56) == v2)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (*result == 2)
  {
    if (v1 > 0.0)
    {
      v2 = *(result + 8);
    }

    else
    {
      v2 = 0.0;
    }

    goto LABEL_9;
  }

  v2 = NAN;
LABEL_12:
  v3 = *(result + 16);
  result = GraphicsContext.copyOnWrite()();
  *(*v3 + 56) = v2;
  return result;
}

uint64_t (*GraphicsContext.identifier.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = RBDrawingStateGetIdentifier();
  return GraphicsContext.identifier.modify;
}

uint64_t GraphicsContext.identifier.modify()
{
  GraphicsContext.copyOnWrite()();

  return RBDrawingStateSetIdentifier();
}

uint64_t GraphicsContext.setIdentifier(_:in:)()
{
  UUID.uuid.getter();
  GraphicsContext.copyOnWrite()();

  return RBDrawingStateSetIdentifier2();
}

void GraphicsContext.addAnimation(_:id:)(uint64_t a1)
{
  UUID.uuid.getter();

  GraphicsContext._addAnimation(_:id:)(a1);
}

uint64_t key path getter for GraphicsContext.environment : GraphicsContext@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 32);
  v4 = v3;
  v5 = *(*a1 + 40);
  if (v3 == 1)
  {
    v6 = *(*a1 + 16);
    v4 = *(v6 + 48);
    v5 = *(v6 + 56);
  }

  *a2 = v4;
  a2[1] = v5;

  return outlined copy of EnvironmentValues?(v3);
}

uint64_t key path setter for GraphicsContext.environment : GraphicsContext(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 32);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;

  return outlined consume of EnvironmentValues?(v5);
}

uint64_t GraphicsContext.environment.setter(_OWORD *a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 32) = *a1;
  return outlined consume of EnvironmentValues?(v2);
}

uint64_t (*GraphicsContext.environment.modify(uint64_t *a1))(void *a1, char a2)
{
  v3 = *v1;
  a1[2] = *v1;
  v4 = v3[4];
  v5 = v4;
  v6 = v3[5];
  if (v4 == 1)
  {
    v7 = v3[2];
    v5 = *(v7 + 48);
    v6 = *(v7 + 56);
  }

  *a1 = v5;
  a1[1] = v6;
  outlined copy of EnvironmentValues?(v4);
  return GraphicsContext.environment.modify;
}

uint64_t GraphicsContext.environment.modify(void *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(v2 + 32);
  *(v2 + 32) = *a1;
  *(v2 + 40) = v3;
  if (a2)
  {

    outlined consume of EnvironmentValues?(v4);
  }

  else
  {

    return outlined consume of EnvironmentValues?(v4);
  }
}

uint64_t key path setter for GraphicsContext.transform : GraphicsContext()
{
  RBDrawingStateGetCTM();
  result = static CGAffineTransform.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    GraphicsContext.copyOnWrite()();
    return RBDrawingStateSetCTM();
  }

  return result;
}

void (*GraphicsContext.transform.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x130uLL);
  }

  *a1 = v3;
  *(v3 + 288) = v1;
  *(v3 + 296) = *v1;
  RBDrawingStateGetCTM();
  return GraphicsContext.transform.modify;
}

void GraphicsContext.transform.modify(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v7 = v2[13];
    v8 = v2[12];
    v2[6] = v8;
    v2[7] = v7;
    v9 = v2[13];
    v10 = v8;
    v2[8] = v2[14];
    v5 = *(v2 + 28);
    v6 = *(v2 + 29);
    RBDrawingStateGetCTM();
    if (static CGAffineTransform.== infix(_:_:)())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = v2[13];
  v4 = v2[12];
  *v2 = v4;
  v2[1] = v3;
  v9 = v2[13];
  v10 = v4;
  v2[2] = v2[14];
  v5 = *(v2 + 28);
  v6 = *(v2 + 29);
  RBDrawingStateGetCTM();
  if ((static CGAffineTransform.== infix(_:_:)() & 1) == 0)
  {
LABEL_5:
    GraphicsContext.copyOnWrite()();
    v2[15] = v10;
    v2[16] = v9;
    *(v2 + 34) = v5;
    *(v2 + 35) = v6;
    RBDrawingStateSetCTM();
  }

LABEL_6:

  free(v2);
}

uint64_t GraphicsContext.scaleBy(x:y:)(double a1, double a2)
{
  if (a1 != 1.0 || a2 != 1.0)
  {
    GraphicsContext.copyOnWrite()();

    return RBDrawingStateScaleCTM();
  }

  return result;
}

Swift::Void __swiftcall GraphicsContext.rotate(by:)(SwiftUI::Angle by)
{
  if (by.radians != 0.0)
  {
    GraphicsContext.copyOnWrite()();
    v3 = *(*v1 + 24);
    v4.n128_u64[0] = *&by.radians;

    MEMORY[0x1EEE32450](v3, v4);
  }
}

uint64_t GraphicsContext.clip(to:opacity:style:options:)(double *a1, char a2)
{
  GraphicsContext.copyOnWrite()();
  v5 = *(*v2 + 56);
  v6 = *(*(*v2 + 16) + 32);
  RBShape.setPath(_:style:shapeDistance:)(a1, a2 & 1, v5);

  return RBDrawingStateClipShape2();
}

uint64_t static GraphicsContext.Filter.shadow(color:radius:x:y:blendMode:options:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  *a4 = a1;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a7;
  *(a4 + 32) = a2 | (a3 << 32);
  *(a4 + 80) = 402653184;
}

uint64_t static GraphicsContext.Filter.pathProjection(startPoint:endPoint:path:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v6 = *(a1 + 32);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  v7 = *(a1 + 16);
  *(a2 + 32) = *a1;
  *(a2 + 48) = v7;
  *(a2 + 64) = v6;
  *(a2 + 80) = 671088640;
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  v12 = v6;
  return outlined init with copy of Path.Storage(v11, v10);
}

uint64_t static GraphicsContext.Filter.colorMultiply(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[10] = 805306368;
}

uint64_t static GraphicsContext.Filter.alphaMultiply(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[10] = 0x40000000;
}

double static GraphicsContext.Filter.colorMatrix(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized _ColorMatrix.init(_:)(a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v3;
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  result = *&v7;
  *(a2 + 64) = v7;
  *(a2 + 80) = 1342177280;
  return result;
}

double static GraphicsContext.Filter.colorMatrix(_:isPremultiplied:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  specialized _ColorMatrix.init(_:)(a1, v8);
  v5 = v8[1];
  *a3 = v8[0];
  *(a3 + 16) = v5;
  v6 = v8[3];
  *(a3 + 32) = v8[2];
  *(a3 + 48) = v6;
  result = *&v9;
  *(a3 + 64) = v9;
  *(a3 + 80) = a2 & 1 | 0x50000000;
  return result;
}

float static GraphicsContext.Filter.saturation(_:)@<S0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2;
  *a1 = result;
  *(a1 + 80) = 1610612736;
  return result;
}

float static GraphicsContext.Filter.brightness(_:)@<S0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2;
  *a1 = result;
  *(a1 + 80) = 1744830464;
  return result;
}

float static GraphicsContext.Filter.contrast(_:)@<S0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2;
  *a1 = result;
  *(a1 + 80) = 1879048192;
  return result;
}

float static GraphicsContext.Filter.colorInvert(_:)@<S0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2;
  *a1 = result;
  *(a1 + 80) = 2013265920;
  return result;
}

float static GraphicsContext.Filter.grayscale(_:)@<S0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2;
  *a1 = result;
  *(a1 + 80) = 0x80000000;
  return result;
}

double static GraphicsContext.Filter.luminanceToAlpha.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 3355443200;
  return result;
}

uint64_t static GraphicsContext.Filter.blur(radius:options:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = result & 1;
  v4 = 8;
  if (result)
  {
    v4 = 9;
  }

  if ((result & 2) != 0)
  {
    v3 = v4;
  }

  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 80) = 2281701376;
  return result;
}

uint64_t static GraphicsContext.Filter.variableBlur(maxRadius:mask:options:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *&v17[9] = *(a1 + 57);
  v4 = a1[1];
  v14 = *a1;
  v15 = v4;
  v5 = a1[3];
  v16 = a1[2];
  *v17 = v5;
  v6 = (a2 & 1) << 32;
  v7 = 0x900000000;
  if ((a2 & 1) == 0)
  {
    v7 = 0x800000000;
  }

  if ((a2 & 2) != 0)
  {
    v6 = v7;
  }

  v8 = *&v17[16];
  v9 = v6 & 0xFFFFFFFFFFFFFFF0 | v17[24] & 0xF | 0x90000000;
  *a3 = a4;
  v10 = v15;
  *(a3 + 8) = v14;
  *(a3 + 24) = v10;
  v11 = *v17;
  *(a3 + 40) = v16;
  *(a3 + 56) = v11;
  *(a3 + 72) = v8;
  *(a3 + 80) = v9;
  return outlined init with copy of GraphicsContext.Shading(&v14, &v13);
}

uint64_t static GraphicsContext.Filter.alphaGradient(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 80) = 2684354560;
}

{
  *a2 = a1;
  *(a2 + 8) = 1;
  *(a2 + 80) = 2684354560;
}

uint64_t static GraphicsContext.Filter.distortionShader(_:maxSampleOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32) | 4;
  *a2 = *a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = a3;
  *(a2 + 48) = a4;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 80) = 3221225472;
  v9 = v4;
}

uint64_t GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(uint64_t result, uint64_t a2, double a3)
{
  v4 = a3;
  v5 = *result;
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = *(result + 24);
  v9 = *(result + 32);
  v10 = *(result + 40);
  v12 = *(result + 48);
  v11 = *(result + 56);
  v13 = *(result + 64);
  v14 = *(result + 72);
  if (v14 > 7)
  {
    if (v14 == 8)
    {
      if (*(v5 + 16))
      {
        v34 = a2;
        v35 = *(v5 + 48);
        v36 = *(v5 + 80);
        v58 = *(v5 + 64);
        *v59 = v36;
        *&v59[9] = *(v5 + 89);
        v56 = *(v5 + 32);
        v57 = v35;
        v37 = *(v5 + 80);
        v48 = *(v5 + 64);
        *v49 = v37;
        *&v49[9] = *(v5 + 89);
        v38 = *(v5 + 48);
        v46 = *(v5 + 32);
        v47 = v38;
        outlined init with copy of GraphicsContext.Shading(&v56, &v75);
        GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(&v46, v34, v4);
        v77 = v48;
        *v78 = *v49;
        *&v78[9] = *&v49[9];
        v75 = v46;
        v76 = v47;
        return outlined destroy of GraphicsContext.Shading(&v75);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    if (v14 != 9)
    {
      if (v14 == 10 && !(v6 | v5 | v7 | v8 | v9 | v10 | v12 | v11 | v13))
      {
        v15 = a2;
        v16 = *v3;
        v17 = *(*v3 + 16);
        v18 = *(v16 + 32);
        v19 = v18;
        v20 = *(v16 + 40);
        if (v18 == 1)
        {
          v19 = *(v17 + 48);
          v20 = *(v17 + 56);
        }

        *&v75 = v19;
        *(&v75 + 1) = v20;
        outlined copy of EnvironmentValues?(v18);
        GraphicsContext.Storage.Shared.resolvedForeground(in:)(&v75, &v56);
        outlined consume of EnvironmentValues?(v75);
        GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(&v56, v15, v4);
        v82 = v63;
        v83 = v64;
        v84 = v65;
        *&v78[16] = *&v59[16];
        v79 = v60;
        v80 = v61;
        v81 = v62;
        v75 = v56;
        v76 = v57;
        v77 = v58;
        *v78 = *v59;
        return outlined destroy of GraphicsContext.ResolvedShading(&v75);
      }

      goto LABEL_15;
    }

    v39 = *(v5 + 144);
    v81 = *(v5 + 128);
    v82 = v39;
    v83 = *(v5 + 160);
    v84 = *(v5 + 176);
    v40 = *(v5 + 80);
    *v78 = *(v5 + 64);
    *&v78[16] = v40;
    v41 = *(v5 + 112);
    v79 = *(v5 + 96);
    v80 = v41;
    v42 = *(v5 + 32);
    v75 = *(v5 + 16);
    v76 = v42;
    v77 = *(v5 + 48);
    v43 = &v75;
    return GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(v43, a2, a3);
  }

  if (!*(result + 72))
  {
    *&v75 = *result;
    *(&v75 + 1) = v6;
    LODWORD(v76) = v7;
    v44 = a2;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v75);
    v63 = v82;
    v64 = v83;
    v65 = v84;
    *&v59[16] = *&v78[16];
    v60 = v79;
    v61 = v80;
    v62 = v81;
    v56 = v75;
    v57 = v76;
    v58 = v77;
    *v59 = *v78;
    v43 = &v56;
    a3 = v4;
    a2 = v44;
    return GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(v43, a2, a3);
  }

  if (v14 != 4)
  {
LABEL_15:
    v45 = *(result + 16);
    GraphicsContext.copyOnWrite()();
    v29 = *v3;
    v30 = *(*v3 + 16);
    *&v75 = v5;
    *(&v75 + 1) = v6;
    *&v76 = v45;
    *(&v76 + 1) = v8;
    *&v77 = v9;
    *(&v77 + 1) = v10;
    *v78 = v12;
    *&v78[8] = v11;
    *&v78[16] = v13;
    v78[24] = v14;
    v31 = *(v29 + 32);
    v32 = v31;
    v33 = *(v29 + 40);
    if (v31 == 1)
    {
      v32 = *(v30 + 48);
      v33 = *(v30 + 56);
    }

    *&v56 = v32;
    *(&v56 + 1) = v33;

    outlined copy of EnvironmentValues?(v31);
    GraphicsContext.Storage.Shared.setShading(_:in:)(&v75, &v56);

    return RBDrawingStateAddVariableBlurFilter();
  }

  v21 = a2;
  v22 = *v3;
  v23 = *(*v3 + 32);
  v24 = v23;
  v25 = *(v22 + 40);
  if (v23 == 1)
  {
    v26 = *(v22 + 16);
    v24 = *(v26 + 48);
    v25 = *(v26 + 56);
  }

  v74[27] = 0;
  v69 = 0uLL;
  *&v70 = 1;
  BYTE8(v70) = 1;
  *&v71 = 0;
  BYTE8(v71) = 5;
  *&v72 = v24;
  *(&v72 + 1) = v25;
  v73 = 0u;
  memset(v74, 0, 24);
  v74[24] = 1;
  *&v74[25] = 256;
  v27 = *(*v5 + 80);
  outlined copy of EnvironmentValues?(v23);
  v27(&v69);
  if (BYTE8(v71) == 1)
  {
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v68 = v28;
  LOBYTE(v75) = 0;
  _ShapeStyle_Pack.subscript.getter(&v75, 0, &v56);

  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi3_(&v56);
  v53 = v63;
  v54 = v64;
  v55 = v65;
  *&v49[16] = *&v59[16];
  v50 = v60;
  v51 = v61;
  v52 = v62;
  v46 = v56;
  v47 = v57;
  v48 = v58;
  *v49 = *v59;
  GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(&v46, v21, v4);
  v82 = v53;
  v83 = v54;
  v84 = v55;
  *&v78[16] = *&v49[16];
  v79 = v50;
  v80 = v51;
  v81 = v52;
  v75 = v46;
  v76 = v47;
  v77 = v48;
  *v78 = *v49;
  outlined destroy of GraphicsContext.ResolvedShading(&v75);
  v66[4] = v73;
  v67[0] = *v74;
  *(v67 + 12) = *&v74[12];
  v66[0] = v69;
  v66[1] = v70;
  v66[2] = v71;
  v66[3] = v72;
  return outlined destroy of _ShapeStyle_Shape(v66);
}

void specialized withGradient(_:in:colorSpace:do:)(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, int a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v56 = a4;
  v57 = a5;
  v8 = *a1;
  v10 = *a2;
  v9 = a2[1];
  if (*(a1 + 8))
  {
    v65 = *a2;
    v66 = v9;
    (*(*v8 + 112))(&v58, &v65);
    v65 = v58;
    LOBYTE(v66) = BYTE8(v58);
    HIDWORD(v66) = HIDWORD(v58);
    LOBYTE(v67) = v59;
    specialized withGradient(_:in:do:)(&v65, a3, a4, a5);

    return;
  }

  v53 = 0.0;
  v54 = 1;
  MEMORY[0x1EEE9AC00](a1);
  v43[2] = v8;
  v43[3] = v10;
  v43[4] = v11;
  v44 = a3;
  v45 = &v53;
  MEMORY[0x1EEE9AC00](v12);
  v42[2] = partial apply for closure #3 in GraphicsContext.addFilter(_:options:);
  v42[3] = &v55;
  v42[4] = v14;
  v42[5] = v15;
  if (v14)
  {
    if (!(v14 >> 59))
    {
      v52 = a3;
      v50 = a4;
      v16 = v14;
      if ((16 * v14) >= 1025)
      {
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v40 = swift_slowAlloc();
          closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v40, v16, v16, 1, closure #1 in withGradient(_:in:colorSpace:do:)partial apply, v43, closure #2 in withGradient(_:in:colorSpace:do:)partial apply, v42);
          MEMORY[0x193AC4820](v40, -1, -1);
          return;
        }
      }

      v51 = v46;
      v49 = v42;
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v19 = v42 - v18;
      if (v20 >= 0x81)
      {
        v17 = swift_stdlib_isStackAllocationSafe();
        if ((v17 & 1) == 0)
        {
          v41 = swift_slowAlloc();
          closure #1 in closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v41, v16, v16, closure #1 in withGradient(_:in:colorSpace:do:)partial apply, v43, v19, v16, 1, closure #2 in withGradient(_:in:colorSpace:do:)partial apply);
          MEMORY[0x193AC4820](v41, -1, -1);
          return;
        }
      }

      MEMORY[0x1EEE9AC00](v17);
      v24 = v42 - v23;
      if (v25 <= v8[2])
      {
        v46[1] = v21;
        v48 = a5;
        v26 = 0;
        v27 = v8 + 5;
        v47 = v19;
        v28 = v19 + 8;
        do
        {
          v29 = *(v27 - 1);
          v30 = v10;
          *&v58 = v10;
          *(&v58 + 1) = v22;
          v31 = v22;
          v32 = *(*v29 + 120);

          v32(&v65, &v58);

          v34 = HIDWORD(v65);
          v33 = v65;
          v36 = HIDWORD(v66);
          v35 = v66;
          if (v52 != 2)
          {
            RBColorFromLinear();
          }

          *(v28 - 2) = v33;
          *(v28 - 1) = v34;
          *v28 = v35;
          v28[1] = v36;
          v37 = v67;
          v22 = v31;
          if (v54)
          {
            v10 = v30;
          }

          else
          {
            v10 = v30;
            if (v53 > v67)
            {
              v37 = v53;
            }
          }

          v53 = v37;
          v54 = 0;
          v38 = *v27;
          v27 += 2;
          *&v24[8 * v26] = v38;
          v28 += 4;
          ++v26;
        }

        while (v16 != v26);
        v39 = *(*(*v50 + 16) + 64);
        LOBYTE(v58) = 3;
        *(&v58 + 4) = 0x3F80000000000000;
        v59 = v16;
        v60 = v47;
        v61 = v39;
        v62 = v53;
        v63 = v24;
        v64 = (v48 & 1) << 6;
        RBDrawingStateAddStyle();
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void GraphicsContext.addShaderFilter(_:size:)(id *a1)
{
  if (*a1)
  {
    v1 = *a1;
    GraphicsContext.copyOnWrite()();
    Shader.ResolvedShader.rbFilterFlags.getter();
    RBDrawingStateAddShaderFilter();
  }
}

uint64_t GraphicsContext.Shading.storage.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 57);
  v3 = *(v10 + 9);
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of GraphicsContext.Shading.Storage(v8, &v7);
}

__n128 GraphicsContext.Shading.storage.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 57);
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  outlined destroy of GraphicsContext.Shading(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  *(v1 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

double static GraphicsContext.Shading.foreground.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 10;
  return result;
}

uint64_t static GraphicsContext.Shading.palette(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    *a2 = a1;
    *(a2 + 72) = 8;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

_BYTE *static GraphicsContext.Shading.color(_:red:green:blue:opacity:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = a6;
  if (*result)
  {
    if (*result != 1)
    {
      if (v7 <= 0.0)
      {
        v11 = -v7;
      }

      else
      {
        v11 = v7;
      }

      v12 = v7;
      if (v11 <= 0.04045)
      {
        v13 = v11 * 0.077399;
      }

      else
      {
        v13 = 1.0;
        if (v11 != 1.0)
        {
          v14 = v8;
          v15 = v9;
          v16 = powf((v11 * 0.94787) + 0.052133, 2.4);
          v8 = v14;
          v9 = v15;
          v13 = v16;
          v7 = v12;
        }
      }

      if (v7 <= 0.0)
      {
        v17 = -v13;
      }

      else
      {
        v17 = v13;
      }

      if (v8 <= 0.0)
      {
        v18 = -v8;
      }

      else
      {
        v18 = v8;
      }

      if (v18 <= 0.04045)
      {
        v19 = v18 * 0.077399;
      }

      else
      {
        v19 = 1.0;
        if (v18 != 1.0)
        {
          v20 = v8;
          v21 = v9;
          v19 = powf((v18 * 0.94787) + 0.052133, 2.4);
          v8 = v20;
          v9 = v21;
        }
      }

      if (v8 <= 0.0)
      {
        v22 = -v19;
      }

      else
      {
        v22 = v19;
      }

      if (v9 <= 0.0)
      {
        v23 = -v9;
      }

      else
      {
        v23 = v9;
      }

      if (v23 <= 0.04045)
      {
        v24 = v23 * 0.077399;
      }

      else
      {
        v24 = 1.0;
        if (v23 != 1.0)
        {
          v25 = v9;
          v24 = powf((v23 * 0.94787) + 0.052133, 2.4);
          v9 = v25;
        }
      }

      if (v9 <= 0.0)
      {
        v26 = -v24;
      }

      else
      {
        v26 = v24;
      }

      Color.Resolved.displayP3Components.getter((v17 * 1.2249) + (v22 * -0.2247), (v22 * 1.0419) + (v17 * -0.042), ((v17 * -0.0197) + (v22 * -0.0786)) + (v26 * 1.0979));
    }

    result = RBColorFromLinear();
    v10 = v27;
  }

  *a2 = v7;
  *(a2 + 4) = v8;
  *(a2 + 8) = v9;
  *(a2 + 12) = v10;
  *(a2 + 72) = 2;
  return result;
}

uint64_t static GraphicsContext.Shading.shader(_:bounds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = a3;
  *(a2 + 48) = a4;
  *(a2 + 56) = a5;
  *(a2 + 64) = a6;
  *(a2 + 72) = 3;
  v11 = v6;
}

uint64_t static GraphicsContext.Shading.meshGradient(_:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v8[0] = *a1;
  v2 = v8[0];
  v8[1] = v3;
  v9[0] = a1[2];
  v4 = v9[0];
  *(v9 + 10) = *(a1 + 42);
  *&v10[10] = *(v9 + 10);
  v9[3] = v3;
  *v10 = v4;
  v9[2] = v8[0];
  *(a2 + 64) = v11;
  *a2 = v2;
  *(a2 + 16) = v3;
  v5 = *&v10[16];
  *(a2 + 32) = *v10;
  *(a2 + 48) = v5;
  *(a2 + 72) = 6;
  return outlined init with copy of MeshGradient(v8, &v7);
}

uint64_t static GraphicsContext.Shading.linearGradient(_:startPoint:endPoint:options:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 68) = a2;
  *(a3 + 72) = 5;
}

{
  *a3 = a1;
  *(a3 + 8) = 1;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 68) = a2;
  *(a3 + 72) = 5;
}

uint64_t static GraphicsContext.Shading.radialGradient(_:startCenter:startRadius:endCenter:endRadius:options:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  *a3 = a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = a8;
  *(a3 + 56) = a9;
  *(a3 + 64) = 2;
  *(a3 + 68) = a2;
  *(a3 + 72) = 5;
}

{
  *a3 = a1;
  *(a3 + 8) = 1;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = a8;
  *(a3 + 56) = a9;
  *(a3 + 64) = 2;
  *(a3 + 68) = a2;
  *(a3 + 72) = 5;
}

uint64_t static GraphicsContext.Shading.conicGradient(_:center:angle:options:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0;
  *(a3 + 64) = 4;
  *(a3 + 68) = a2;
  *(a3 + 72) = 5;
}

{
  *a3 = a1;
  *(a3 + 8) = 1;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0;
  *(a3 + 64) = 4;
  *(a3 + 68) = a2;
  *(a3 + 72) = 5;
}

uint64_t static GraphicsContext.Shading.angularGradient(_:center:startAngle:endAngle:options:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  return static GraphicsContext.Shading.radialGradient(_:center:startRadius:endRadius:options:)(a1, a2, 5, a3, a4, a5, a6, a7);
}

{
  return static GraphicsContext.Shading.radialGradient(_:center:startRadius:endRadius:options:)(a1, a2, 5, a3, a4, a5, a6, a7);
}

uint64_t static GraphicsContext.Shading.tiledImage(_:origin:sourceRect:scale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>)
{
  *a2 = a1;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  *(a2 + 48) = a8;
  *(a2 + 56) = a9;
  *(a2 + 72) = 7;
}

uint64_t GraphicsContext.fill(_:material:content:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v56 = *(a2 + 12);
  v10 = a5[4];
  v11 = v10;
  v12 = a5[5];
  if (v10 == 1)
  {
    v13 = a5[2];
    v14 = *(v13 + 48);
    v12 = *(v13 + 56);

    v11 = v14;
  }

  *&v79 = v11;
  *(&v79 + 1) = v12;
  *&v62 = v8;
  BYTE8(v62) = v9;
  HIDWORD(v62) = v56;
  v15 = v11;
  outlined copy of EnvironmentValues?(v10);
  v16 = EnvironmentValues.materialProvider(for:)(&v62);
  if (v16)
  {
    v17 = v16;
    v18 = v15;
    v54 = a3;
    v19 = *a1;
    v21 = *(a1 + 8);
    v20 = *(a1 + 16);
    v22 = *(a1 + 24);
    v23 = *(a1 + 32);
    if (v23 > 2)
    {
      v24 = v12;
      if (v23 == 5)
      {
        if (*(*&v19 + 16))
        {
          if (*(*&v19 + 16) == 1)
          {
            outlined copy of Material.ID(v8, v9);
            outlined init with copy of Path(a1, &v79);
            RBPathGetBoundingRect();
          }

          else
          {
            outlined copy of Material.ID(v8, v9);
            outlined init with copy of Path(a1, &v79);
            v27 = MEMORY[0x193AC3640](*&v19 + 24);
          }

          x = v27;
          y = v28;
          width = v29;
          height = v30;
        }

        else
        {
          v39 = *(*&v19 + 24);
          if (!v39)
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v40 = v39;
          outlined copy of Material.ID(v8, v9);
          outlined init with copy of Path(a1, &v79);
          PathBoundingBox = CGPathGetPathBoundingBox(v40);
          x = PathBoundingBox.origin.x;
          y = PathBoundingBox.origin.y;
          width = PathBoundingBox.size.width;
          height = PathBoundingBox.size.height;
        }

        outlined destroy of Path(a1);
      }

      else
      {
        if (v23 != 6)
        {
LABEL_45:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        if (v19 == 0.0 && v21 == 0.0 && v20 == 0.0 && v22 == 0.0)
        {
          outlined copy of Material.ID(v8, v9);
          goto LABEL_37;
        }

        x = *MEMORY[0x1E695F050];
        y = *(MEMORY[0x1E695F050] + 8);
        width = *(MEMORY[0x1E695F050] + 16);
        height = *(MEMORY[0x1E695F050] + 24);
        outlined copy of Material.ID(v8, v9);
      }

      v93.origin.x = x;
      v93.origin.y = y;
      v93.size.width = width;
      v93.size.height = height;
      if (CGRectIsNull(v93))
      {
        goto LABEL_37;
      }

      v25 = fabs(width);
      v26 = fabs(height);
    }

    else
    {
      v24 = v12;
      if (v23 < 2)
      {
        outlined copy of Material.ID(v8, v9);
        v90.origin.x = v19;
        v90.origin.y = v21;
        v90.size.width = v20;
        v90.size.height = v22;
        if (!CGRectIsNull(v90))
        {
          v25 = fabs(v20);
          v26 = fabs(v22);
          goto LABEL_30;
        }

LABEL_37:
        v42 = 0.0;
        v41 = 0.0;
LABEL_38:
        v61 = 0;
        v60 = 0;
        *&v72 = v18;
        *(&v72 + 1) = v24;
        LOWORD(v73) = 259;
        *(&v73 + 1) = v41;
        *&v74 = v42;
        BYTE8(v74) = 0;
        *v75 = v41;
        *&v75[8] = v41;
        *&v75[16] = v42;
        v75[24] = 0;
        *&v58[32] = v74;
        v59[0] = *v75;
        *(v59 + 9) = *&v75[9];
        *v58 = v72;
        *&v58[16] = v73;
        v43 = v24;
        v44 = *(*v17 + 80);
        v45 = v9;
        v46 = v8;
        outlined init with copy of Material.Context(&v72, v57);
        v44(v57, v58);

        v64 = *&v58[32];
        *v65 = v59[0];
        *&v65[9] = *(v59 + 9);
        v62 = *v58;
        v63 = *&v58[16];
        outlined destroy of Material.Context(&v62);
        *&v79 = v18;
        *(&v79 + 1) = v43;
        LOWORD(v80) = 259;
        *(&v80 + 1) = v41;
        *&v81 = v42;
        BYTE8(v81) = 0;
        *&v82 = v41;
        *(&v82 + 1) = v41;
        *&v83 = v42;
        BYTE8(v83) = 0;
        outlined destroy of Material.Context(&v79);
        v8 = v57[0];
        outlined consume of Material.ID(v46, v45);
        outlined copy of Material.ID(v8, 2u);
        outlined consume of Material.ID(v8, 2u);
        a3 = v54;
        goto LABEL_39;
      }

      v31 = *(*&v19 + 16);
      v32 = *(*&v19 + 24);
      v33 = *(*&v19 + 32);
      v34 = *(*&v19 + 40);
      outlined copy of Material.ID(v8, v9);
      v91.origin.x = v31;
      v91.origin.y = v32;
      v91.size.width = v33;
      v91.size.height = v34;
      if (CGRectIsNull(v91))
      {
        goto LABEL_37;
      }

      v25 = fabs(v33);
      v26 = fabs(v34);
    }

LABEL_30:
    if (v26 >= v25)
    {
      v41 = v25;
    }

    else
    {
      v41 = v26;
    }

    if (v25 > v26)
    {
      v42 = v25;
    }

    else
    {
      v42 = v26;
    }

    if (v41 <= v42)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  *&v79 = v15;
  *(&v79 + 1) = v12;
  v56 |= specialized Material.ResolvedMaterial.Flags.init(environment:)(&v79);
  outlined copy of Material.ID(v8, v9);
  if (v9 != 2)
  {
    goto LABEL_41;
  }

LABEL_39:
  *&v62 = v8;
  Material.Layers.singletonSDFLayer.getter(&v79);
  v47 = v79;
  if ((~v79 & 0xF000000000000007) == 0)
  {
    LOBYTE(v9) = 2;
LABEL_41:
    *&v72 = v8;
    BYTE8(v72) = v9;
    HIDWORD(v72) = v56;
    BYTE5(v76) = 3;
    DWORD2(v76) = 1065353216;
    *&v77 = 0;
    BYTE8(v77) = -1;
    v78 = MEMORY[0x1E69E7CC0];
    *&v86 = MEMORY[0x1E69E7CC0];
    v81 = v74;
    v82 = *v75;
    v83 = *&v75[16];
    v84 = v76;
    v85 = v77;
    v79 = v72;
    v80 = v73;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi3_(&v79);
    v69 = v87;
    v70 = v88;
    v71 = v89;
    *&v65[16] = v83;
    v66 = v84;
    v67 = v85;
    v68 = v86;
    v62 = v79;
    v63 = v80;
    v64 = v81;
    *v65 = v82;
    *v58 = 256;
    memset(&v58[8], 0, 33);
    outlined copy of Material.ID(v8, v9);
    GraphicsContext.draw(_:with:style:)(a1, &v62, v58, a5);
    outlined destroy of _ShapeStyle_Pack.Style(&v72);
    *&v62 = a5;

    a3(&v62);
    outlined consume of Material.ID(v8, v9);
  }

  v49 = swift_allocObject();
  *(v49 + 16) = a3;
  *(v49 + 24) = a4;
  *&v72 = a5;
  type metadata accessor for GraphicsContext.Shading?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PathSet.Element>, &type metadata for PathSet.Element, MEMORY[0x1E69E6F90]);
  v50 = swift_allocObject();
  v51 = *a1;
  v52 = *(a1 + 16);
  *(v50 + 16) = xmmword_18DDA6EB0;
  *(v50 + 32) = v51;
  *(v50 + 48) = v52;
  *(v50 + 64) = *(a1 + 32);
  *(v50 + 72) = 0;
  *(v50 + 80) = 0;
  *(v50 + 84) = 0;
  v79 = 0u;
  v80 = 0u;
  LOBYTE(v81) = 1;
  outlined init with copy of Path(a1, &v62);

  specialized GraphicsContext.drawSDFStyle<A>(_:ovalization:renderer:bounds:content:)(v47, v50, partial apply for specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:), v49, &v72, &v79, v50, 0.0, 0.0);

  swift_bridgeObjectRelease_n();
  outlined consume of Material.ID(v8, 2u);
  outlined consume of SDFStyle?(v47);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_44;
  }

  return result;
}

uint64_t GraphicsContext.stroke(_:with:style:)(uint64_t a1, uint64_t *a2, uint64_t *a3, double *a4)
{
  v7 = a3[2];
  v8 = a3[3];
  v9 = a3[4];
  v11 = a3[1];
  v13[0] = *a3;
  v10 = v13[0];
  v13[1] = v11;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v14 = 1;

  GraphicsContext.draw(_:with:style:)(a1, a2, v13, a4);

  return outlined consume of PathDrawingStyle(v10, v11, v7, v8, v9, 1);
}

double GraphicsContext.ResolvedImage.size.getter()
{
  v1 = *(v0 + 16);
  result = 0.0;
  if (v1 != 0.0)
  {
    v3 = *(v0 + 24);
    if (*(v0 + 40) > 3u)
    {
      v3 = *(v0 + 32);
    }

    return 1.0 / v1 * v3;
  }

  return result;
}

uint64_t GraphicsContext.ResolvedImage.shading.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v9 = *(v1 + 152);
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 177);
  v4 = *(v10 + 9);
  v8[0] = *(v1 + 120);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  *(a1 + 57) = v4;
  *a1 = v5;
  a1[1] = v2;
  return outlined init with copy of GraphicsContext.Shading?(v8, &v7);
}

__n128 GraphicsContext.ResolvedImage.shading.setter(__int128 *a1)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v8[2] = *(v1 + 152);
  v9[0] = v4;
  *(v9 + 9) = *(v1 + 177);
  v8[0] = *(v1 + 120);
  v8[1] = v3;
  outlined destroy of GraphicsContext.Shading?(v8, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
  v5 = *a1;
  *(v1 + 136) = a1[1];
  v6 = a1[3];
  *(v1 + 152) = a1[2];
  *(v1 + 168) = v6;
  result = *(a1 + 57);
  *(v1 + 177) = result;
  *(v1 + 120) = v5;
  return result;
}

double GraphicsContext.resolve(_:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  type metadata accessor for Text.Style?(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a2[4];
  v11 = a2[5];
  v13 = v12;
  v35 = v11;
  if (v12 == 1)
  {
    v14 = a2[2];
    v13 = *(v14 + 48);
    v11 = *(v14 + 56);
  }

  v32 = v11;
  v33 = v13;
  v15 = type metadata accessor for Text.Style(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v7, 1, 1, v15);
  v34 = *MEMORY[0x1E698D3F8];
  v10[2] = 0;
  v17 = v8[6];
  v16(v10 + v17, 1, 1, v15);
  v18 = v8[7];
  v19 = v10 + v8[8];
  *v19 = 520;
  v19[2] = 2;
  *(v10 + v8[9]) = 3;
  v20 = v8[10];
  *(v10 + v20) = 1;
  v21 = v32;
  *v10 = v33;
  v10[1] = v21;
  outlined copy of EnvironmentValues?(v12);
  outlined assign with take of Text.Style?(v7, v10 + v17);
  *(v10 + v18) = v34;
  *(v10 + v20) = 0;
  (*(*v36 + 80))(&v46, v10);
  v44 = v50;
  v45[0] = v51[0];
  *(v45 + 12) = *(v51 + 12);
  v40 = v46;
  v41 = v47;
  v22 = 0.0;
  v42 = v48;
  v43 = v49;
  v23 = 0.0;
  if (*&v47 != 0.0)
  {
    if (BYTE8(v48) > 3u)
    {
      v24 = *(&v47 + 1);
    }

    else
    {
      v24 = *&v48;
    }

    v23 = 1.0 / *&v47 * v24;
  }

  if (v52)
  {
    v22 = *(v52 + 16);
  }

  v25 = v50;
  outlined init with copy of GraphicsImage(&v46, v37);
  outlined destroy of Image.Resolved(&v46);
  _s7SwiftUI16_ShapeStyle_PackV3KeyV3key_AC0D0V5styletWOhTm_0(v10, type metadata accessor for ImageResolutionContext);
  v26 = -1;
  if ((v25 & 1) == 0)
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    v39 = -1;
    outlined destroy of GraphicsContext.Shading?(v37, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
    v26 = 10;
  }

  v27 = v45[0];
  *(a3 + 64) = v44;
  *(a3 + 80) = v27;
  *(a3 + 96) = v45[1];
  v28 = v41;
  *a3 = v40;
  *(a3 + 16) = v28;
  v29 = v43;
  *(a3 + 32) = v42;
  *(a3 + 48) = v29;
  *(a3 + 112) = v23 - v22;
  result = 0.0;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0;
  *(a3 + 192) = v26;
  return result;
}

uint64_t GraphicsContext.draw(_:in:style:)(__int128 *a1, __int16 a2, uint64_t a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v14 = a1[5];
  v27[4] = a1[4];
  v28[0] = v14;
  *(v28 + 12) = *(a1 + 92);
  v15 = a1[1];
  v27[0] = *a1;
  v27[1] = v15;
  v16 = a1[3];
  v27[2] = a1[2];
  v27[3] = v16;
  v17 = *(a1 + 120);
  v18 = *(a1 + 136);
  v19 = *(a1 + 152);
  *(v30 + 9) = *(a1 + 177);
  v20 = *(a1 + 168);
  v29[2] = v19;
  v30[0] = v20;
  v29[0] = v17;
  v29[1] = v18;
  outlined init with copy of GraphicsImage(v27, v33);
  outlined init with copy of GraphicsContext.Shading?(v29, v33);
  GraphicsContext.draw(_:in:style:shading:)(a1, a4, a5, a6, a7, a2 & 0x101, (a1 + 120), a3);
  v21 = *(a1 + 136);
  v22 = *(a1 + 168);
  v31[2] = *(a1 + 152);
  v32[0] = v22;
  *(v32 + 9) = *(a1 + 177);
  v31[0] = *(a1 + 120);
  v31[1] = v21;
  outlined destroy of GraphicsContext.Shading?(v31, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
  v23 = a1[5];
  v33[4] = a1[4];
  v34[0] = v23;
  *(v34 + 12) = *(a1 + 92);
  v24 = a1[1];
  v33[0] = *a1;
  v33[1] = v24;
  v25 = a1[3];
  v33[2] = a1[2];
  v33[3] = v25;
  return outlined destroy of GraphicsImage(v33);
}

uint64_t GraphicsContext.draw(_:at:anchor:)(__int128 *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v8 = a1[5];
  v35 = a1[4];
  v36[0] = v8;
  *(v36 + 12) = *(a1 + 92);
  v9 = a1[1];
  v31 = *a1;
  v32 = v9;
  v10 = a1[3];
  v33 = a1[2];
  v34 = v10;
  v11 = *(a1 + 120);
  v12 = *(a1 + 136);
  v13 = *(a1 + 152);
  v14 = *(a1 + 168);
  *&v38[9] = *(a1 + 177);
  v37[2] = v13;
  *v38 = v14;
  v15 = 0.0;
  v16 = 0.0;
  v37[0] = v11;
  v37[1] = v12;
  if (*&v32 != 0.0)
  {
    v17 = *(&v32 + 1);
    if (BYTE8(v33) <= 3u)
    {
      v18 = *&v33;
    }

    else
    {
      v18 = *(&v32 + 1);
    }

    if (BYTE8(v33) > 3u)
    {
      v17 = *&v33;
    }

    v15 = 1.0 / *&v32 * v17;
    v16 = 1.0 / *&v32 * v18;
  }

  v19 = a3 - v15 * a5;
  v20 = a4 - v16 * a6;
  outlined init with copy of GraphicsImage(&v31, v29);
  outlined init with copy of GraphicsContext.Shading?(v37, v29);
  GraphicsContext.draw(_:in:style:shading:)(a1, v19, v20, v15, v16, 256, (a1 + 120), a2);
  v21 = *(a1 + 136);
  v22 = *(a1 + 168);
  v27[2] = *(a1 + 152);
  v28[0] = v22;
  *(v28 + 9) = *(a1 + 177);
  v27[0] = *(a1 + 120);
  v27[1] = v21;
  outlined destroy of GraphicsContext.Shading?(v27, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
  v23 = a1[5];
  v29[4] = a1[4];
  v30[0] = v23;
  *(v30 + 12) = *(a1 + 92);
  v24 = a1[1];
  v29[0] = *a1;
  v29[1] = v24;
  v25 = a1[3];
  v29[2] = a1[2];
  v29[3] = v25;
  return outlined destroy of GraphicsImage(v29);
}

uint64_t GraphicsContext.draw(_:in:style:)(uint64_t a1, __int16 a2, void *a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  GraphicsContext.resolve(_:)(a1, a3, v24);
  v22 = v24[4];
  v23[0] = v25[0];
  *(v23 + 12) = *(v25 + 12);
  v18 = v24[0];
  v19 = v24[1];
  v20 = v24[2];
  v21 = v24[3];
  v16 = v26[2];
  v17[0] = v27[0];
  *(v17 + 9) = *(v27 + 9);
  v14 = v26[0];
  v15 = v26[1];
  outlined init with copy of GraphicsImage(v24, v30);
  outlined init with copy of GraphicsContext.Shading?(v26, v30);
  GraphicsContext.draw(_:in:style:shading:)(&v18, a4, a5, a6, a7, a2 & 0x101, &v14, a3);
  outlined destroy of GraphicsContext.ResolvedImage(v24);
  v28[2] = v16;
  v29[0] = v17[0];
  *(v29 + 9) = *(v17 + 9);
  v28[0] = v14;
  v28[1] = v15;
  outlined destroy of GraphicsContext.Shading?(v28, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
  v30[4] = v22;
  v31[0] = v23[0];
  *(v31 + 12) = *(v23 + 12);
  v30[0] = v18;
  v30[1] = v19;
  v30[2] = v20;
  v30[3] = v21;
  return outlined destroy of GraphicsImage(v30);
}

uint64_t GraphicsContext.draw(_:at:anchor:)(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  GraphicsContext.resolve(_:)(a1, a2, v12);
  GraphicsContext.draw(_:at:anchor:)(v12, a2, a3, a4, a5, a6);
  v14[10] = v12[10];
  v14[11] = v12[11];
  v15 = v13;
  v14[6] = v12[6];
  v14[7] = v12[7];
  v14[8] = v12[8];
  v14[9] = v12[9];
  v14[2] = v12[2];
  v14[3] = v12[3];
  v14[4] = v12[4];
  v14[5] = v12[5];
  v14[0] = v12[0];
  v14[1] = v12[1];
  return outlined destroy of GraphicsContext.ResolvedImage(v14);
}

uint64_t GraphicsContext.ResolvedText.shading.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 73);
  v3 = *(v10 + 9);
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of GraphicsContext.Shading(v8, &v7);
}

__n128 GraphicsContext.ResolvedText.shading.setter(uint64_t a1)
{
  v3 = v1[4];
  v7[2] = v1[3];
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 73);
  v4 = v1[2];
  v7[0] = v1[1];
  v7[1] = v4;
  outlined destroy of GraphicsContext.Shading(v7);
  v5 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v5;
  *(v1 + 73) = *(a1 + 57);
  result = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = result;
  return result;
}

CGSize __swiftcall GraphicsContext.ResolvedText.measure(in:)(CGSize in)
{
  v2 = *v1;
  if (one-time initialization token for _textDrawingContext != -1)
  {
    swift_once();
  }

  (*(*v2 + 272))(static GraphicsContext.Storage.Shared._textDrawingContext);
  result.height = v4;
  result.width = v3;
  return result;
}

uint64_t GraphicsContext.ResolvedText.firstBaseline(in:)()
{
  v1 = *v0;
  if (one-time initialization token for firstTextBaseline != -1)
  {
    swift_once();
  }

  return (*(*v1 + 280))(static VerticalAlignment.firstTextBaseline);
}

uint64_t GraphicsContext.ResolvedText.lastBaseline(in:)()
{
  v1 = *v0;
  if (one-time initialization token for lastTextBaseline != -1)
  {
    swift_once();
  }

  return (*(*v1 + 280))(static VerticalAlignment.lastTextBaseline);
}

uint64_t GraphicsContext.resolve(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a5[4];
  v13 = v12;
  v14 = a5[5];
  if (v12 == 1)
  {
    v15 = a5[2];
    v13 = *(v15 + 48);
    v14 = *(v15 + 56);
  }

  *v127 = v13;
  *&v127[8] = v14;
  *&v113 = 2;
  *v125 = 0uLL;
  outlined copy of EnvironmentValues?(v12);
  v16 = Text.resolveAttributedStringAndProperties(in:includeDefaultAttributes:options:idiom:)(v137, v127, 1, &v113, v125, a1, a2, a3 & 1, a4);

  v17 = a5[4];
  v18 = v17;
  v19 = a5[5];
  if (v17 == 1)
  {
    v20 = a5[2];
    v18 = *(v20 + 48);
    v19 = *(v20 + 56);
  }

  v96 = a5;
  v97 = v19;
  v21 = *(a4 + 16);
  if (v21)
  {
    v22 = (a4 + 40);
    while (1)
    {
      v23 = *v22;
      v22 += 16;
      if ((v23 & 0xE0) == 0xC0)
      {
        type metadata accessor for CollapsibleTextModifier();
        if (swift_dynamicCastClass())
        {
          break;
        }
      }

      if (!--v21)
      {
        goto LABEL_11;
      }
    }

    v24 = 1;
  }

  else
  {
LABEL_11:
    v24 = 0;
  }

  v98 = v138;
  v94 = v139;
  v95 = v140;
  v25 = v141;
  if (v97)
  {
    v26 = v16;
    outlined copy of EnvironmentValues?(v17);

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA20TextLayoutPropertiesV0J033_641995D812913A47B866B20B88782376LLVG_Tt1g5(v18, v127);
  }

  else
  {
    *v125 = v18;
    v27 = v16;
    outlined copy of EnvironmentValues?(v17);

    TextLayoutProperties.init(from:)(v125, v127);
  }

  *v125 = *v127;
  *&v125[10] = *&v127[10];
  v28 = v128;
  v29 = v136;
  if (v25 != 3)
  {
    v28 = v25;
  }

  v125[26] = v28;
  *&v125[91] = v133;
  *&v125[107] = v134;
  *&v125[123] = *v135;
  *&v125[136] = *&v135[13];
  *&v125[27] = v129;
  *&v125[43] = v130;
  *&v125[59] = v131;
  *&v125[75] = v132;
  v126 = v136 & 0xFD;
  if ((BYTE6(v132) & 1) != 0 || (v98 & 0xD8) != 0 || v125[120] != 2)
  {
    type metadata accessor for ResolvedStyledText.TextLayoutManager();
    v30 = swift_allocObject();
    v32 = MEMORY[0x1E69E7CC0];
    *(v30 + 416) = MEMORY[0x1E69E7CC0];
    *(v30 + 424) = 0u;
    *(v30 + 440) = 0u;
    *(v30 + 456) = 0u;
    *(v30 + 472) = 0u;
    *(v30 + 488) = 512;
    if ((v125[8] & 1) != 0 || *v125 != 1)
    {
      if (v16)
      {
        v34 = NSAttributedString.replacingLineBreakModes(_:)(0);
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      v33 = v16;
      v34 = v16;
    }

    v62 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
    v63 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
    [v62 setDelegate_];
    [v62 setUsesFontLeading_];
    v64 = v34;
    v65 = v62;
    ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v65, v34, v123);
    v66 = v123[3];
    *(v30 + 528) = v123[2];
    *(v30 + 544) = v66;
    *(v30 + 560) = v123[4];
    v67 = v123[1];
    *(v30 + 496) = v123[0];
    *(v30 + 512) = v67;
    *(v30 + 576) = v63;
    *(v30 + 352) = 0u;
    *(v30 + 368) = 0u;
    *(v30 + 384) = 0;
    *(v30 + 392) = 0x8000000000000000;
    *(v30 + 400) = 0;
    *(v30 + 408) = v32;
    *(v30 + 200) = 0;
    *(v30 + 208) = 1;
    v124 = 1;
    *(v30 + 280) = 0u;
    *(v30 + 296) = 0u;
    *(v30 + 312) = 0u;
    *(v30 + 328) = 0u;
    *(v30 + 344) = 1;
    *(v30 + 216) = v34;
    *(v30 + 224) = 0u;
    *(v30 + 240) = 0u;
    *(v30 + 256) = 768;
    *(v30 + 258) = v24;
    *(v30 + 260) = v98;
    *(v30 + 264) = v94;
    *(v30 + 272) = v95;
    v68 = *&v125[16];
    *(v30 + 16) = *v125;
    *(v30 + 32) = v68;
    v69 = *&v125[32];
    v70 = *&v125[48];
    v71 = *&v125[80];
    *(v30 + 80) = *&v125[64];
    *(v30 + 96) = v71;
    *(v30 + 48) = v69;
    *(v30 + 64) = v70;
    v72 = *&v125[96];
    v73 = *&v125[112];
    v74 = *&v125[128];
    *(v30 + 160) = v126;
    *(v30 + 128) = v73;
    *(v30 + 144) = v74;
    *(v30 + 112) = v72;
    if (v34)
    {
      v110 = 0uLL;
      v111 = 0uLL;
      v108 = 0uLL;
      v109 = 0uLL;
      v112 = 1;
      v106 = v125[104];
      v107 = *&v125[112];
      v119 = *&v125[96];
      v120 = *&v125[112];
      v121 = *&v125[128];
      v122 = v126;
      v115 = *&v125[32];
      v116 = *&v125[48];
      v117 = *&v125[64];
      v118 = *&v125[80];
      v113 = *v125;
      v114 = *&v125[16];
      outlined init with copy of TextLayoutProperties(v125, v105);
      v75 = v64;
      outlined init with copy of TextLayoutProperties(v125, v105);
      v76 = v63;

      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v75, &v108, &v113);
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v84 = v83;

      v85 = v111;
      *(v30 + 312) = v110;
      *(v30 + 328) = v85;
      *(v30 + 344) = v112;
      v86 = v109;
      *(v30 + 280) = v108;
      *(v30 + 296) = v86;
      *(v30 + 168) = v78;
      *(v30 + 176) = v80;
      *(v30 + 184) = v82;
      *(v30 + 192) = v84;
    }

    else
    {
      *(v30 + 344) = 1;
      *(v30 + 168) = 0uLL;
      *(v30 + 184) = 0uLL;
      outlined init with copy of TextLayoutProperties(v125, &v113);
      v87 = v63;
    }

    v88 = v96;
    swift_beginAccess();
    v89 = *(v30 + 97);

    v90 = _TextContainer(v89);
    [v90 setLineFragmentPadding_];
    [v65 setTextContainer_];
    if ((v98 & 0xC0) != 0)
    {
      _NSTextLayoutManagerRequiresCTLine(v65);
    }

    outlined destroy of Text.ResolvedProperties(v137);

    outlined destroy of TextLayoutProperties(v125);
  }

  else
  {
    type metadata accessor for ResolvedStyledText.StringDrawing();
    v30 = swift_allocObject();
    v31 = v29 & 1;
    if ((v29 & 1) != 0 || !v16)
    {
      outlined init with copy of TextLayoutProperties(v125, &v113);
    }

    else
    {
      outlined init with copy of TextLayoutProperties(v125, &v113);
      NSAttributedString.isDynamic.getter();
    }

    v35 = *v125;
    v36 = v125[8];
    v37 = *&v125[16];
    v38 = v125[24];
    v39 = *&v125[88];
    v40 = v16;
    v41 = *&v125[32];
    v42 = *&v125[72];
    if (!v16)
    {
      v93 = *&v125[88];
      if (one-time initialization token for emptyString != -1)
      {
        swift_once();
      }

      v40 = static NSAttributedString.emptyString;
      v39 = v93;
    }

    v106 = v36;
    v124 = v38;
    *(v30 + 352) = 0;
    *(v30 + 360) = v40;
    *(v30 + 368) = v35;
    *(v30 + 376) = v36;
    *(v30 + 384) = v37;
    *(v30 + 392) = v38;
    *(v30 + 400) = v41;
    *(v30 + 408) = v39;
    *(v30 + 424) = v31;
    *(v30 + 425) = v42 != 0.0;
    *(v30 + 426) = v24;
    *(v30 + 432) = MEMORY[0x1E69E7CC0];
    *(v30 + 200) = 0;
    *(v30 + 208) = 1;
    v43 = (v30 + 280);
    v104 = 1;
    *(v30 + 312) = 0u;
    *(v30 + 328) = 0u;
    *(v30 + 280) = 0u;
    *(v30 + 296) = 0u;
    *(v30 + 344) = 1;
    *(v30 + 216) = v16;
    *(v30 + 224) = 0u;
    *(v30 + 240) = 0u;
    *(v30 + 256) = 768;
    *(v30 + 258) = v24;
    *(v30 + 260) = v98;
    *(v30 + 264) = v94;
    *(v30 + 272) = v95;
    v44 = *&v125[16];
    *(v30 + 16) = *v125;
    *(v30 + 32) = v44;
    v45 = *&v125[32];
    v46 = *&v125[48];
    v47 = *&v125[80];
    *(v30 + 80) = *&v125[64];
    *(v30 + 96) = v47;
    *(v30 + 48) = v45;
    *(v30 + 64) = v46;
    v48 = *&v125[96];
    v49 = *&v125[112];
    v50 = *&v125[128];
    *(v30 + 160) = v126;
    *(v30 + 128) = v49;
    *(v30 + 144) = v50;
    *(v30 + 112) = v48;
    if (v16)
    {
      v101 = 0uLL;
      v102 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v103 = 1;
      LOBYTE(v123[0]) = v125[104];
      *(&v123[0] + 1) = *&v125[112];
      v119 = *&v125[96];
      v120 = *&v125[112];
      v121 = *&v125[128];
      v122 = v126;
      v115 = *&v125[32];
      v116 = *&v125[48];
      v117 = *&v125[64];
      v118 = *&v125[80];
      v113 = *v125;
      v114 = *&v125[16];
      v51 = v16;
      outlined init with copy of TextLayoutProperties(v125, v105);
      v16 = v51;
      outlined init with copy of TextLayoutProperties(v125, v105);

      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v16, &v99, &v113);
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v59 = v58;

      outlined destroy of TextLayoutProperties(v125);
      outlined destroy of Text.ResolvedProperties(v137);

      outlined destroy of TextLayoutProperties(v125);
      v60 = v102;
      *(v30 + 312) = v101;
      *(v30 + 328) = v60;
      *(v30 + 344) = v103;
      v61 = v100;
      *v43 = v99;
      *(v30 + 296) = v61;
      *(v30 + 168) = v53;
      *(v30 + 176) = v55;
      *(v30 + 184) = v57;
      *(v30 + 192) = v59;
    }

    else
    {
      outlined init with copy of TextLayoutProperties(v125, &v113);

      outlined destroy of Text.ResolvedProperties(v137);

      outlined destroy of TextLayoutProperties(v125);
      outlined destroy of TextLayoutProperties(v125);
      *v43 = 0u;
      *(v30 + 296) = 0u;
      *(v30 + 312) = 0u;
      *(v30 + 328) = 0u;
      *(v30 + 344) = 1;
      *(v30 + 168) = 0u;
      *(v30 + 184) = 0u;
    }

    v88 = v96;
  }

  v91 = v88[2];
  *a6 = v30;
  *(a6 + 8) = v91;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0;
  *(a6 + 88) = 10;
}

uint64_t GraphicsContext.resolve(_:layoutProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, __int128 *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = a5[7];
  *&v171[16] = a5[6];
  v172 = v12;
  v173 = a5[8];
  v174 = *(a5 + 144);
  v13 = a5[3];
  v168 = a5[2];
  v169 = v13;
  v14 = a5[5];
  v170 = a5[4];
  *v171 = v14;
  v15 = a5[1];
  v166 = *a5;
  v167 = v15;
  v16 = a6[4];
  v17 = v16;
  v18 = a6[5];
  v19 = a6[2];
  if (v16 == 1)
  {
    v17 = v19[6];
    v18 = v19[7];
  }

  *&v165 = v17;
  *(&v165 + 1) = v18;
  if (v19[9])
  {
    result = outlined copy of EnvironmentValues?(v16);
  }

  else
  {
    if (v18)
    {
      outlined copy of EnvironmentValues?(v16);

      _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA20TextLayoutPropertiesV0J033_641995D812913A47B866B20B88782376LLVG_Tt1g5(v17, v163);
    }

    else
    {
      v144 = v17;
      outlined copy of EnvironmentValues?(v16);

      TextLayoutProperties.init(from:)(&v144, v163);
    }

    v21 = swift_allocObject();
    v22 = v163[7];
    *(v21 + 112) = v163[6];
    *(v21 + 128) = v22;
    *(v21 + 144) = v163[8];
    *(v21 + 160) = v164;
    v23 = v163[3];
    *(v21 + 48) = v163[2];
    *(v21 + 64) = v23;
    v24 = v163[5];
    *(v21 + 80) = v163[4];
    *(v21 + 96) = v24;
    v25 = v163[1];
    *(v21 + 16) = v163[0];
    *(v21 + 32) = v25;
    v19[9] = v21;
  }

  v159 = *&v171[16];
  v160 = v172;
  v161 = v173;
  v162 = v174;
  v155 = v168;
  v156 = v169;
  v157 = v170;
  v158 = *v171;
  v153 = v166;
  v154 = v167;
  v113 = v19;
  v26 = v19[9];
  if (v26)
  {
    v27 = *(v26 + 128);
    v140[6] = *(v26 + 112);
    v140[7] = v27;
    v140[8] = *(v26 + 144);
    v141 = *(v26 + 160);
    v28 = *(v26 + 64);
    v140[2] = *(v26 + 48);
    v140[3] = v28;
    v29 = *(v26 + 96);
    v140[4] = *(v26 + 80);
    v140[5] = v29;
    v30 = *(v26 + 32);
    v140[0] = *(v26 + 16);
    v140[1] = v30;
    v31 = *(v26 + 128);
    v150 = *(v26 + 112);
    v151 = v31;
    *v152 = *(v26 + 144);
    v152[16] = *(v26 + 160);
    v32 = *(v26 + 64);
    v146 = *(v26 + 48);
    v147 = v32;
    v33 = *(v26 + 96);
    v148 = *(v26 + 80);
    v149 = v33;
    v34 = *(v26 + 32);
    v144 = *(v26 + 16);
    v145 = v34;
    outlined init with copy of TextLayoutProperties(v140, &v131);
    TextLayoutProperties.update(_:from:)(&v165, &v144);
    v142[6] = v150;
    v142[7] = v151;
    v142[8] = *v152;
    v143 = v152[16];
    v142[2] = v146;
    v142[3] = v147;
    v142[4] = v148;
    v142[5] = v149;
    v142[0] = v144;
    v142[1] = v145;
    outlined destroy of TextLayoutProperties(v142);
    v144 = v165;
    *&v129[0] = 2;
    v121[0] = 0;
    v121[1] = 0;

    v35 = Text.resolveAttributedStringAndProperties(in:includeDefaultAttributes:options:idiom:)(&v131, &v144, 1, v129, v121, a1, a2, a3 & 1, a4);

    v150 = v137;
    v151 = v138;
    *v152 = *v139;
    *&v152[9] = *&v139[9];
    v147 = v134;
    v148 = v135;
    v149 = v136;
    v144 = v131;
    v145 = v132;
    v146 = v133;
    v36 = *(a4 + 16);
    if (v36)
    {
      v37 = (a4 + 40);
      while (1)
      {
        v38 = *v37;
        v37 += 16;
        if ((v38 & 0xE0) == 0xC0)
        {
          type metadata accessor for CollapsibleTextModifier();
          if (swift_dynamicCastClass())
          {
            break;
          }
        }

        if (!--v36)
        {
          goto LABEL_16;
        }
      }

      v112 = 1;
    }

    else
    {
LABEL_16:
      v112 = 0;
    }

    v114 = v146;
    v39 = *(&v146 + 1);
    v40 = v147;
    if ((v171[1] & 1) != 0 || (v146 & 0xD8) != 0 || BYTE8(v172) != 2)
    {
      type metadata accessor for ResolvedStyledText.TextLayoutManager();
      v41 = swift_allocObject();
      v45 = MEMORY[0x1E69E7CC0];
      *(v41 + 416) = MEMORY[0x1E69E7CC0];
      *(v41 + 424) = 0u;
      *(v41 + 440) = 0u;
      *(v41 + 456) = 0u;
      *(v41 + 472) = 0u;
      *(v41 + 488) = 512;
      v46 = BYTE8(v166);
      v47 = v166;
      v48 = v35;
      v111 = v35;
      if ((v46 & 1) != 0 || v47 != 1)
      {
        if (v35)
        {
          v50 = NSAttributedString.replacingLineBreakModes(_:)(0);
        }

        else
        {
          v50 = 0;
        }
      }

      else
      {
        v49 = v48;
        v50 = v35;
      }

      v80 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
      v81 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
      [v80 setDelegate_];
      [v80 setUsesFontLeading_];
      v82 = v50;
      v83 = v80;
      ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v83, v50, v129);
      v84 = v129[3];
      *(v41 + 528) = v129[2];
      *(v41 + 544) = v84;
      *(v41 + 560) = v129[4];
      v85 = v129[1];
      *(v41 + 496) = v129[0];
      *(v41 + 512) = v85;
      *(v41 + 576) = v81;
      *(v41 + 352) = 0u;
      *(v41 + 368) = 0u;
      *(v41 + 384) = 0;
      *(v41 + 392) = 0x8000000000000000;
      *(v41 + 400) = 0;
      *(v41 + 408) = v45;
      *(v41 + 200) = 0;
      *(v41 + 208) = 1;
      v130 = 1;
      *(v41 + 280) = 0u;
      *(v41 + 296) = 0u;
      *(v41 + 312) = 0u;
      *(v41 + 328) = 0u;
      *(v41 + 344) = 1;
      *(v41 + 216) = v50;
      *(v41 + 224) = 0u;
      *(v41 + 240) = 0u;
      *(v41 + 256) = 768;
      *(v41 + 258) = v112;
      *(v41 + 260) = v114;
      *(v41 + 264) = v39;
      *(v41 + 272) = v40;
      v86 = v167;
      *(v41 + 16) = v166;
      *(v41 + 32) = v86;
      v87 = v168;
      v88 = v169;
      v89 = *v171;
      *(v41 + 80) = v170;
      *(v41 + 96) = v89;
      *(v41 + 48) = v87;
      *(v41 + 64) = v88;
      v90 = *&v171[16];
      v91 = v172;
      v92 = v173;
      *(v41 + 160) = v174;
      *(v41 + 128) = v91;
      *(v41 + 144) = v92;
      *(v41 + 112) = v90;
      if (v50)
      {
        v126 = 0uLL;
        v127 = 0uLL;
        v124 = 0uLL;
        v125 = 0uLL;
        v128 = 1;
        v122 = v171[24];
        v123 = v172;
        v137 = *&v171[16];
        v138 = v172;
        *v139 = v173;
        v139[16] = v174;
        v133 = v168;
        v134 = v169;
        v135 = v170;
        v136 = *v171;
        v131 = v166;
        v132 = v167;
        outlined init with copy of TextLayoutProperties(&v166, v121);
        v93 = v82;
        outlined init with copy of TextLayoutProperties(&v166, v121);
        v94 = v81;

        Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v93, &v124, &v131);
        v96 = v95;
        v98 = v97;
        v100 = v99;
        v102 = v101;

        v103 = v127;
        *(v41 + 312) = v126;
        *(v41 + 328) = v103;
        *(v41 + 344) = v128;
        v104 = v125;
        *(v41 + 280) = v124;
        *(v41 + 296) = v104;
        *(v41 + 168) = v96;
        *(v41 + 176) = v98;
        *(v41 + 184) = v100;
        *(v41 + 192) = v102;
      }

      else
      {
        *(v41 + 344) = 1;
        *(v41 + 168) = 0uLL;
        *(v41 + 184) = 0uLL;
        outlined init with copy of TextLayoutProperties(&v166, &v131);
        v105 = v81;
      }

      v79 = v113;
      swift_beginAccess();
      v106 = *(v41 + 97);

      v107 = _TextContainer(v106);
      [v107 setLineFragmentPadding_];
      [v83 setTextContainer_];
      if ((v114 & 0xC0) != 0)
      {
        _NSTextLayoutManagerRequiresCTLine(v83);
      }

      outlined destroy of Text.ResolvedProperties(&v144);
    }

    else
    {
      type metadata accessor for ResolvedStyledText.StringDrawing();
      v41 = swift_allocObject();
      v42 = v174;
      v109 = v174 & 1;
      v43 = v35;
      v110 = v40;
      if ((v42 & 1) != 0 || !v35)
      {
        v44 = v35;
        outlined init with copy of TextLayoutProperties(&v166, &v131);
      }

      else
      {
        v44 = v35;
        outlined init with copy of TextLayoutProperties(&v166, &v131);
        NSAttributedString.isDynamic.getter();
      }

      v51 = v166;
      v52 = BYTE8(v166);
      v53 = v167;
      v54 = BYTE8(v167);
      v55 = *&v171[8];
      v56 = v44;
      v57 = v168;
      v58 = *(&v170 + 1);
      if (!v44)
      {
        v108 = *&v171[8];
        if (one-time initialization token for emptyString != -1)
        {
          swift_once();
        }

        v56 = static NSAttributedString.emptyString;
        v55 = v108;
      }

      v122 = v52;
      v130 = v54;
      *(v41 + 352) = 0;
      *(v41 + 360) = v56;
      *(v41 + 368) = v51;
      *(v41 + 376) = v52;
      *(v41 + 384) = v53;
      *(v41 + 392) = v54;
      *(v41 + 400) = v57;
      *(v41 + 408) = v55;
      *(v41 + 424) = v109;
      *(v41 + 425) = v58 != 0.0;
      *(v41 + 426) = v112;
      *(v41 + 432) = MEMORY[0x1E69E7CC0];
      *(v41 + 200) = 0;
      *(v41 + 208) = 1;
      v59 = (v41 + 280);
      v120 = 1;
      *(v41 + 312) = 0u;
      *(v41 + 328) = 0u;
      *(v41 + 280) = 0u;
      *(v41 + 296) = 0u;
      *(v41 + 344) = 1;
      *(v41 + 216) = v44;
      *(v41 + 224) = 0u;
      *(v41 + 240) = 0u;
      *(v41 + 256) = 768;
      *(v41 + 258) = v112;
      *(v41 + 260) = v114;
      *(v41 + 264) = v39;
      *(v41 + 272) = v110;
      v60 = v167;
      *(v41 + 16) = v166;
      *(v41 + 32) = v60;
      v61 = v168;
      v62 = v169;
      v63 = *v171;
      *(v41 + 80) = v170;
      *(v41 + 96) = v63;
      *(v41 + 48) = v61;
      *(v41 + 64) = v62;
      v64 = *&v171[16];
      v65 = v172;
      v66 = v173;
      *(v41 + 160) = v174;
      *(v41 + 128) = v65;
      *(v41 + 144) = v66;
      *(v41 + 112) = v64;
      if (v44)
      {
        v117 = 0uLL;
        v118 = 0uLL;
        v115 = 0uLL;
        v116 = 0uLL;
        v119 = 1;
        LOBYTE(v129[0]) = v171[24];
        *(&v129[0] + 1) = v172;
        v137 = *&v171[16];
        v138 = v172;
        *v139 = v173;
        v139[16] = v174;
        v133 = v168;
        v134 = v169;
        v135 = v170;
        v136 = *v171;
        v131 = v166;
        v132 = v167;
        v67 = v44;
        outlined init with copy of TextLayoutProperties(&v166, v121);
        v68 = v67;
        outlined init with copy of TextLayoutProperties(&v166, v121);

        Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v68, &v115, &v131);
        v70 = v69;
        v72 = v71;
        v74 = v73;
        v76 = v75;
        outlined destroy of Text.ResolvedProperties(&v144);

        outlined destroy of TextLayoutProperties(&v166);
        v77 = v118;
        *(v41 + 312) = v117;
        *(v41 + 328) = v77;
        *(v41 + 344) = v119;
        v78 = v116;
        *v59 = v115;
        *(v41 + 296) = v78;
        *(v41 + 168) = v70;
        *(v41 + 176) = v72;
        *(v41 + 184) = v74;
        *(v41 + 192) = v76;
      }

      else
      {

        outlined destroy of Text.ResolvedProperties(&v144);

        *(v41 + 312) = 0u;
        *(v41 + 328) = 0u;
        *v59 = 0u;
        *(v41 + 296) = 0u;
        *(v41 + 344) = 1;
        *(v41 + 168) = 0u;
        *(v41 + 184) = 0u;
      }

      v79 = v113;
    }

    *a7 = v41;
    *(a7 + 8) = v79;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *(a7 + 48) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 80) = 0;
    *(a7 + 88) = 10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void GraphicsContext.draw(_:in:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = *a1;
  v12 = *(a1 + 64);
  v46[2] = *(a1 + 48);
  v47[0] = v12;
  *(v47 + 9) = *(a1 + 73);
  v13 = *(a1 + 32);
  v46[0] = *(a1 + 16);
  v46[1] = v13;
  if (*(v11 + 260))
  {
    v18 = *(a1 + 48);
    *v19 = *(a1 + 64);
    *&v19[9] = *(a1 + 73);
    v16 = *(a1 + 16);
    v17 = *(a1 + 32);
    outlined init with copy of GraphicsContext.Shading(v46, &v20);
    GraphicsContext.Shading.resolve(in:levels:)(a2, 1, &v20);
    v31[2] = v18;
    v32[0] = *v19;
    *(v32 + 9) = *&v19[9];
    v31[0] = v16;
    v31[1] = v17;
    outlined destroy of GraphicsContext.Shading(v31);
    v33[8] = v28;
    v33[9] = v29;
    v33[4] = v24;
    v33[5] = v25;
    v33[6] = v26;
    v33[7] = v27;
    v33[0] = v20;
    v33[1] = v21;
    v33[2] = v22;
    v33[3] = v23;
    v43 = v28;
    v44 = v29;
    v39 = v24;
    v40 = v25;
    v41 = v26;
    v42 = v27;
    v35 = v20;
    v36 = v21;
    v34 = v30;
    v45 = v30;
    v37 = v22;
    v38 = v23;
    if (_s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOg(&v35) != 1)
    {
      v28 = v43;
      v29 = v44;
      v30 = v45;
      v24 = v39;
      v25 = v40;
      v26 = v41;
      v27 = v42;
      v20 = v35;
      v21 = v36;
      v22 = v37;
      v23 = v38;
      GraphicsContext.draw(_:in:shading:)(v11, &v20, a2, a3, a4, a5, a6);
      outlined destroy of GraphicsContext.Shading?(v33, &lazy cache variable for type metadata for GraphicsContext.ResolvedShading?, &type metadata for GraphicsContext.ResolvedShading);
    }
  }

  else
  {

    c = RBDrawingStateBeginCGContext();
    v14 = *(a2 + 52);
    if (v14)
    {
      CGContextSetBlendMode(c, v14);
    }

    specialized closure #1 in GraphicsContext.withPlatformContext(content:)(c, a2, v11, a3, a4, a5, a6);

    RBDrawingStateEndCGContext();
  }
}

void GraphicsContext.draw(_:in:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{

  c = RBDrawingStateBeginCGContext();
  v12 = *(a2 + 52);
  if (v12)
  {
    CGContextSetBlendMode(c, v12);
  }

  specialized closure #1 in GraphicsContext.withPlatformContext(content:)(c, a2, a1, a3, a4, a5, a6);

  RBDrawingStateEndCGContext();
}

void GraphicsContext.draw(_:in:shading:)(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v10 = *(a2 + 112);
  v11 = *(a2 + 144);
  v125 = *(a2 + 128);
  v126 = v11;
  v12 = *(a2 + 48);
  v13 = *(a2 + 80);
  v121 = *(a2 + 64);
  v122 = v13;
  v14 = *(a2 + 80);
  v15 = *(a2 + 112);
  v123 = *(a2 + 96);
  v124 = v15;
  v16 = *(a2 + 16);
  v117 = *a2;
  v118 = v16;
  v17 = *(a2 + 48);
  v19 = *a2;
  v18 = *(a2 + 16);
  v119 = *(a2 + 32);
  v120 = v17;
  v20 = *(a2 + 144);
  v128[8] = v125;
  v128[9] = v20;
  v128[4] = v121;
  v128[5] = v14;
  v128[6] = v123;
  v128[7] = v10;
  v128[0] = v19;
  v128[1] = v18;
  v127 = *(a2 + 160);
  v129 = *(a2 + 160);
  v128[2] = v119;
  v128[3] = v12;
  v21 = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOg(v128);
  if (v21 == 2)
  {
    v30 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v128);
    v23 = *v30;
    v25 = v30[1];
    v27 = v30[2];
    v29 = v30[3];
    goto LABEL_5;
  }

  if (v21 == 1)
  {
    destructiveProjectEnumData for GraphicsContext.ResolvedShading(v128);
    RBColorFromLinear();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
LABEL_5:
    GraphicsContext.draw(_:in:sRGBColor:)(a1, a3, a4, a5, a6, a7, v23, v25, v27, v29);
    return;
  }

  v31 = &property descriptor for SizingPreferences.size2D;
  v32 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  [v32 setDefaultColorSpace_];
  [v32 setDeviceScale_];
  LODWORD(v33) = 1.0;
  v34 = [v32 beginCGContextWithAlpha:0 flags:v33];
  v35 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
  [v35 push];
  if (one-time initialization token for _textDrawingContext != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v36 = static GraphicsContext.Storage.Shared._textDrawingContext;
    if (*(a1 + 216))
    {
      v37 = NSAttributedString.isDynamic.getter();
    }

    else
    {
      v37 = 0;
    }

    (*(*a1 + 296))(0, v37, v36, 0, a4, a5, a6, a7, a6, a7);
    [v35 pop];

    [v32 endCGContext];
    v96 = [v32 moveContents];
    v38 = a3[2];
    v39 = *(v38 + 256);
    if (v39)
    {
      v34 = v39;
      [v34 removeAll];
    }

    else
    {
      v40 = [objc_allocWithZone(MEMORY[0x1E69C70B8]) v31[463]];
      v41 = *(v38 + 256);
      *(v38 + 256) = v40;
      v34 = v40;
    }

    v35 = a3[3];
    RBDrawingStateBeginLayer();
    if (one-time initialization token for keyColorAnyAlpha != -1)
    {
      swift_once();
    }

    LODWORD(v43) = HIDWORD(static RBColor.keyColorAnyAlpha);
    LODWORD(v42) = static RBColor.keyColorAnyAlpha;
    LODWORD(v44) = dword_1ED566B58;
    LODWORD(v45) = unk_1ED566B5C;
    [v34 addConditionWithFillColor:2 colorSpace:{v42, v43, v44, v45, v93, v94}];
    [v34 setInvertsResult_];
    [v34 copyFilteredDisplayList_];
    RBDrawingStateDrawDisplayList();
    swift_unknownObjectRelease();
    [v34 setInvertsResult_];
    v46 = *(v38 + 264);
    v93 = v35;
    v94 = v32;
    if (v46)
    {
      v95 = v46;
      [v95 removeAll];
    }

    else
    {
      v47 = [objc_allocWithZone(MEMORY[0x1E69C70C0]) v31[463]];
      v48 = *(v38 + 264);
      *(v38 + 264) = v47;
      v95 = v47;
    }

    v49 = *(a1 + 264);
    v32 = *(v49 + 16);
    if (!v32)
    {
      break;
    }

    v50 = 0;
    v51 = 0;
    v52 = *MEMORY[0x1E69C7138];
    v53 = *MEMORY[0x1E69C7128];
    v54 = *(MEMORY[0x1E69C7128] + 4);
    v56 = *(MEMORY[0x1E69C7128] + 8);
    v55 = *(MEMORY[0x1E69C7128] + 12);
    a1 = v49 + 120 * v32 - 88;
    while (1)
    {
      if (!v50)
      {
        v51 = *(v49 + 16);
      }

      if (__OFSUB__(v51--, 1))
      {
        break;
      }

      if (v32 > *(v49 + 16))
      {
        goto LABEL_29;
      }

      --v32;
      v58 = *a1;
      v59 = *(a1 + 16);
      v60 = *(a1 + 48);
      v102[2] = *(a1 + 32);
      v102[3] = v60;
      v102[0] = v58;
      v102[1] = v59;
      v61 = *(a1 + 64);
      v62 = *(a1 + 80);
      v63 = *(a1 + 96);
      v103 = *(a1 + 112);
      v102[5] = v62;
      v102[6] = v63;
      v102[4] = v61;
      memmove(__dst, a1, 0x78uLL);
      v110 = __dst[4];
      v111 = __dst[5];
      v112 = __dst[6];
      *&v113 = v105;
      v106 = __dst[0];
      v107 = __dst[1];
      v108 = __dst[2];
      v109 = __dst[3];
      _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi3_(&v106);
      v64 = vcvts_n_f32_s64(v51, 0xAuLL);
      outlined init with copy of _ShapeStyle_Pack.Style(v102, v100);
      v31 = RBDrawingStateInit();
      RBDrawingStateBeginLayer();
      LODWORD(v65) = -1.0;
      LODWORD(v66) = -1.0;
      *&v67 = v64;
      LODWORD(v68) = v52;
      LODWORD(v69) = v53;
      LODWORD(v70) = v54;
      LODWORD(v71) = v56;
      LODWORD(v72) = v55;
      [v95 addColorReplacementFrom:2 to:v65 colorSpace:{v66, v67, v68, v69, v70, v71, v72}];
      RBDrawingStateAddTransformStyle();
      [v34 removeAll];
      LODWORD(v73) = -1.0;
      LODWORD(v74) = -1.0;
      *&v75 = v64;
      LODWORD(v76) = v52;
      [v34 addConditionWithFillColor:2 colorSpace:{v73, v74, v75, v76}];
      v35 = [v34 copyFilteredDisplayList_];
      RBDrawingStateDrawDisplayList();
      swift_unknownObjectRelease();
      RBDrawingStateClipLayer();
      v100[8] = v114;
      v100[9] = v115;
      v101 = v116;
      v100[4] = v110;
      v100[5] = v111;
      v100[6] = v112;
      v100[7] = v113;
      v100[0] = v106;
      v100[1] = v107;
      v100[2] = v108;
      v100[3] = v109;
      GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(v100, v31, 0, a3, a4, a5, a6, a7, 1.0);
      RBDrawingStateDestroy();
      outlined destroy of _ShapeStyle_Pack.Style(__dst);
      a1 -= 120;
      ++v50;
      if (!v32)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

LABEL_25:
  if (one-time initialization token for foregroundKeyColorAnyAlpha != -1)
  {
    swift_once();
  }

  v77 = static RBColor.foregroundKeyColorAnyAlpha;
  v78 = dword_1ED566B70;
  v79 = dword_1ED566B74;
  v80 = RBDrawingStateInit();
  RBDrawingStateBeginLayer();
  LODWORD(v81) = *MEMORY[0x1E69C7128];
  LODWORD(v82) = *(MEMORY[0x1E69C7128] + 4);
  LODWORD(v83) = *(MEMORY[0x1E69C7128] + 8);
  LODWORD(v84) = *(MEMORY[0x1E69C7128] + 12);
  LODWORD(v86) = HIDWORD(v77);
  LODWORD(v85) = v77;
  LODWORD(v87) = v78;
  LODWORD(v88) = v79;
  [v95 addColorReplacementFrom:2 to:v85 colorSpace:{v86, v87, v88, v81, v82, v83, v84}];
  RBDrawingStateAddTransformStyle();
  [v34 removeAll];
  LODWORD(v90) = HIDWORD(v77);
  LODWORD(v89) = v77;
  LODWORD(v91) = v78;
  LODWORD(v92) = v79;
  [v34 addConditionWithFillColor:2 colorSpace:{v89, v90, v91, v92}];
  [v34 copyFilteredDisplayList_];
  RBDrawingStateDrawDisplayList();
  swift_unknownObjectRelease();
  RBDrawingStateClipLayer();
  v114 = v125;
  v115 = v126;
  v116 = v127;
  v110 = v121;
  v111 = v122;
  v112 = v123;
  v113 = v124;
  v106 = v117;
  v107 = v118;
  v108 = v119;
  v109 = v120;
  GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(&v106, v80, 0, a3, a4, a5, a6, a7, 1.0);
  RBDrawingStateDestroy();
  RBDrawingStateDrawLayer();

  swift_unknownObjectRelease();
}