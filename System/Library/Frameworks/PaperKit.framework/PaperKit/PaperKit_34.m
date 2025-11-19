uint64_t AsyncCache.__deallocating_deinit()
{
  AsyncCache.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata completion function for AsyncCache.CacheState()
{
  type metadata accessor for UUID();
  type metadata accessor for Optional();
  type metadata accessor for CheckedContinuation();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  result = type metadata accessor for Dictionary();
  if (v1 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsyncCache.CacheState(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = 8;
  if (((*(*(*(a3 + 24) - 8) + 80) + 8) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64) > 8)
  {
    v3 = ((*(*(*(a3 + 24) - 8) + 80) + 8) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void storeEnumTagSinglePayload for AsyncCache.CacheState(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 24) - 8) + 80) + 8) & ~*(*(*(a4 + 24) - 8) + 80)) + *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

void specialized AppearanceStreamViewSupport.updateAppearanceStreamView()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - v4;
  v6 = *&v0[direct field offset for ShapeView.appearanceStreamView];
  if (v6)
  {
    v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
    swift_beginAccess();
    v42 = *(v3 + 16);
    v8 = v42(v5, &v0[v7], v2);
    MEMORY[0x1EEE9AC00](v8);
    v41 = type metadata accessor for Shape(0);
    *(&v37 - 4) = v41;
    v40 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
    *(&v37 - 3) = v40;
    *(&v37 - 2) = &protocol witness table for Shape;
    swift_getKeyPath();
    v9 = v6;
    Capsule.subscript.getter();

    v10 = *(v3 + 8);
    v10(v5, v2);
    if ((LOBYTE(v43) & 0x20) != 0)
    {
      v39 = v10;
      Strong = swift_unknownObjectWeakLoadStrong();
      v38 = v9;
      if (Strong)
      {
        v12 = Strong;
        [Strong bounds];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;

        v46.origin.x = v14;
        v46.origin.y = v16;
        v46.size.width = v18;
        v46.size.height = v20;
        v47 = CGRectIntegral(v46);
      }

      else
      {
        [v9 frame];
      }

      width = v47.size.width;
      height = v47.size.height;
      type metadata accessor for ShapeView();
      v23 = protocol witness for AppearanceStreamViewSupport.appearanceStreamOffset.getter in conformance ShapeView();
      v25 = v24;
      v26 = v42;
      v27 = v42(v5, &v1[v7], v2);
      MEMORY[0x1EEE9AC00](v27);
      v28 = v41;
      v37 = v7;
      v29 = v40;
      *(&v37 - 4) = v41;
      *(&v37 - 3) = v29;
      *(&v37 - 2) = &protocol witness table for Shape;
      swift_getKeyPath();
      Capsule.subscript.getter();

      v30 = v39;
      v39(v5, v2);
      v31 = v45 - height - v25;
      v32 = v26(v5, &v1[v37], v2);
      MEMORY[0x1EEE9AC00](v32);
      *(&v37 - 4) = v28;
      *(&v37 - 3) = v29;
      *(&v37 - 2) = &protocol witness table for Shape;
      swift_getKeyPath();
      Capsule.subscript.getter();

      v30(v5, v2);
      v33 = v43;
      v34 = v44;
      [v1 frame];
      v9 = v38;
      [v38 setFrame_];
    }

    else
    {
      [v9 removeFromSuperview];
      ShapeView.appearanceStreamView.setter(0);
    }
  }
}

id specialized CanvasElementView.modelCoordinateSpace.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit7TextBoxVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for TextBox(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for LoupeElement(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for Image(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for GraphElement(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for Link(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for Signature(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for Paper(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for PaperDocumentPage(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for UnknownCanvasElement(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  v10 = swift_endAccess();
  v11 = (*((*v8 & *v2) + 0x90))(v10);
  if (v11)
  {
    v12 = v11;
    (*(v5 + 16))(v7, &v2[v9], v4);
    v19[0] = 4;
    v13 = *((*v8 & *v12) + 0x7D8);
    v14 = type metadata accessor for Shape(0);
    v15 = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
    v13(v7, v19, v14, v15);
    v19[0] = 4;
    (*((*v8 & *v12) + 0x7B0))(v19);

    v11 = (*(v5 + 8))(v7, v4);
  }

  (*((*v8 & *v2) + 0x268))(v11);
  return [v2 setNeedsLayout];
}

uint64_t specialized CanvasElementView.accessibilityDescription()()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v44._object = 0x80000001D408AFE0;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._object = 0x80000001D408AFC0;
  v44._countAndFlagsBits = 0xD000000000000040;
  v3._countAndFlagsBits = 0xD000000000000016;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, paperKitBundle, v4, v44);
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x2A0);
  v6(v38, v5._countAndFlagsBits, v5._object);
  CGAffineTransform.decompose(initialRotation:)(&v40, 0.0);
  v7 = v40;
  v8 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D405C990;
  v10 = MEMORY[0x1E69E7DE0];
  *(v9 + 56) = MEMORY[0x1E69E7DE0];
  v11 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  *(v9 + 64) = v11;
  *(v9 + 32) = v7;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = v8;
  v35 = static String.localizedStringWithFormat(_:_:)();
  v36 = v12;

  v13._countAndFlagsBits = 0xD000000000000012;
  v45._object = 0x80000001D408B050;
  v13._object = 0x80000001D408B030;
  v45._countAndFlagsBits = 0xD00000000000003CLL;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, isa, v15, v45);
  (v6)(v39);
  CGAffineTransform.decompose(initialRotation:)(&v40, 0.0);
  v16 = v40;
  v17 = v41;
  v18 = v42;
  v19 = v43;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D405C990;
  v47.origin.x = v16;
  v47.origin.y = v17;
  v47.size.width = v18;
  v47.size.height = v19;
  Width = CGRectGetWidth(v47);
  *(v20 + 56) = v10;
  *(v20 + 64) = v11;
  *(v20 + 32) = Width;
  v48.origin.x = v16;
  v48.origin.y = v17;
  v48.size.width = v18;
  v48.size.height = v19;
  Height = CGRectGetHeight(v48);
  *(v20 + 96) = v10;
  *(v20 + 104) = v11;
  *(v20 + 72) = Height;
  v23 = static String.localizedStringWithFormat(_:_:)();
  v25 = v24;

  v46._object = 0x80000001D408B0B0;
  v26._object = 0x80000001D408B090;
  v46._countAndFlagsBits = 0xD000000000000040;
  v26._countAndFlagsBits = 0xD000000000000016;
  v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v27.value._object = 0xEB00000000656C62;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, isa, v28, v46);
  (v6)(&v40);
  CGAffineTransform.decompose(initialRotation:)(v37, 0.0);
  v29 = *&v37[4] / 3.14159265 * 180.0;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D4058CF0;
  *(v30 + 56) = MEMORY[0x1E69E7DE0];
  *(v30 + 64) = v11;
  *(v30 + 32) = v29;
  v31 = static String.localizedStringWithFormat(_:_:)();
  v33 = v32;

  v37[0] = v35;
  v37[1] = v36;
  MEMORY[0x1DA6CD010](8236, 0xE200000000000000);
  MEMORY[0x1DA6CD010](v23, v25);

  MEMORY[0x1DA6CD010](8236, 0xE200000000000000);
  MEMORY[0x1DA6CD010](v31, v33);

  return v37[0];
}

id ShapeView.shapeLayer.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id ShapeView.groupLayer.getter()
{
  v1 = direct field offset for ShapeView.$__lazy_storage_$_groupLayer;
  v2 = *(v0 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer);
  if (v2)
  {
    v3 = *(v0 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer);
  }

  else
  {
    v4 = ShapeView.startLineEndLayer.getter();
    v5 = *MEMORY[0x1E69797F8];
    [v4 setFillRule_];

    v6 = ShapeView.endLineEndLayer.getter();
    [v6 setFillRule_];

    v7 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    v8 = ShapeView.shapeLayer.getter();
    [v7 addSublayer_];

    [v7 addSublayer_];
    [v7 addSublayer_];
    v9 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t ShapeView.controlPoints.getter()
{
  v1 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v8], v4);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v5 + 8))(v7, v4);
  ShapeType.any.getter(v13);
  _s8PaperKit5ColorVWOhTm_2(v3, type metadata accessor for ShapeType);
  v9 = v14;
  v10 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v11 = (*(v10 + 16))(v9, v10);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v11;
}

double ShapeView.subscript.getter(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22[-v14];
  v16 = *a1;
  v17 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x3F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, &v4[v17], v12);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v13 + 8))(v15, v12);
  ShapeType.any.getter(v24);
  _s8PaperKit5ColorVWOhTm_2(v11, type metadata accessor for ShapeType);
  v18 = v25;
  v19 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v23 = v16;
  v20 = (*(v19 + 24))(&v23, a2, a3, a4 & 1, v18, v19);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v20;
}

uint64_t ShapeView.subscript.setter(char *a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  v7 = v6;
  v26 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v17 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x3F0);
  swift_beginAccess();
  (*(v14 + 16))(v16, &v7[v21], v13);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v14 + 8))(v16, v13);
  ShapeType.any.getter(&v29);
  v22 = v30;
  v23 = v31;
  __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
  v28 = v20;
  (*(v23 + 32))(&v28, a2, v26, a4 & 1, v22, v23, a5, a6);
  ShapeType.any.setter(&v29);
  v27 = v19;
  swift_beginAccess();
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  specialized CanvasElementView.commit()();
  [v7 setNeedsLayout];
  return _s8PaperKit5ColorVWOhTm_2(v19, type metadata accessor for ShapeType);
}

uint64_t closure #1 in ShapeView.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  _s8PaperKit9ShapeTypeOWOcTm_1(a2, v5, type metadata accessor for ShapeType);
  return Capsule.Ref.subscript.setter();
}

void *ShapeView.init(frame:canvasElement:canvas:parentCanvasElement:)(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v15 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v56 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v54 - v23;
  *(v7 + direct field offset for ShapeView.$__lazy_storage_$_shapeLayer) = 0;
  *(v7 + direct field offset for ShapeView.$__lazy_storage_$_endLineEndLayer) = 0;
  *(v7 + direct field offset for ShapeView.$__lazy_storage_$_startLineEndLayer) = 0;
  *(v7 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer) = 0;
  *(v7 + direct field offset for ShapeView.showsSignaturePopover) = 0;
  *(v7 + direct field offset for ShapeView.analytics_inputSource) = 68;
  *(v7 + direct field offset for ShapeView.analytics_documentType) = 68;
  *(v7 + direct field offset for ShapeView._textBoxView) = 0;
  *(v7 + direct field offset for ShapeView.appearanceStreamView) = 0;
  v25 = *(v18 + 16);
  v59 = a1;
  v25(&v54 - v23, a1, v17, v22);
  v26 = MEMORY[0x1E69E7D40];
  (*(v18 + 56))(v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x3F8), 1, 1, v17);
  *(v7 + *((*v26 & *v7) + 0x400)) = 0;
  *(v7 + *((*v26 & *v7) + 0x408)) = 0;
  *(v7 + *((*v26 & *v7) + 0x410)) = 0;
  *(v7 + *((*v26 & *v7) + 0x418)) = 0;
  *(v7 + *((*v26 & *v7) + 0x420)) = 0;
  (v25)(v7 + *((*v26 & *v7) + 0x3F0), v24, v17);
  v58 = a3;
  v57 = a2;
  v27 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(a2, a3, a4, a5, a6, a7);
  specialized CanvasElementView.setupAccessibility()();
  if (a2)
  {
    v28 = v17;
    (*((*v26 & *v27) + 0x520))();
  }

  else
  {
    v28 = v17;
  }

  v29 = *(v18 + 8);
  v30 = v24;
  v31 = v28;
  v29(v30, v28);
  v32 = v27;
  specialized AppearanceStreamViewSupport.setupAppearanceStreamIfNeeded()();
  v33 = *((*v26 & *v32) + 0x3F0);
  swift_beginAccess();
  v34 = v32 + v33;
  v35 = v29;
  v36 = v31;
  (v25)(v20, v34, v31);
  v37 = specialized Capsule<>.isTextBox.getter();

  v29(v20, v31);
  if (v37)
  {
    v35(v59, v31);
  }

  else
  {
    v55 = v35;
    [v32 setIsAccessibilityElement_];
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v63._object = 0x80000001D40850C0;
    v38._countAndFlagsBits = 0x4025206570616853;
    v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v39.value._object = 0xEB00000000656C62;
    v38._object = 0xE800000000000000;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    v63._countAndFlagsBits = 0xD00000000000005FLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, paperKitBundle, v40, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1D4058CF0;
    swift_getKeyPath();
    v42 = v56;
    v43 = v59;
    Capsule.subscript.getter();

    ShapeType.any.getter(v60);
    _s8PaperKit5ColorVWOhTm_2(v42, type metadata accessor for ShapeType);
    v44 = v61;
    v45 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v46 = (*(v45 + 48))(v44, v45);
    v48 = v47;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v41 + 32) = v46;
    *(v41 + 40) = v48;
    __swift_destroy_boxed_opaque_existential_0(v60);
    v49 = static String.localizedStringWithFormat(_:_:)();
    v51 = v50;

    v52 = MEMORY[0x1DA6CCED0](v49, v51);

    [v32 setAccessibilityLabel_];

    v55(v43, v36);
  }

  return v32;
}

uint64_t ShapeView.modifiableProperties.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - v3;
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v5], v1);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v2 + 8))(v4, v1);
  v6 = 13;
  if ((v9 & 0x80) == 0)
  {
    v6 = 15;
  }

  v7 = 5;
  if ((v9 & 0x80) == 0)
  {
    v7 = 7;
  }

  if ((v9 & 0x10) != 0)
  {
    v6 = v7;
  }

  if ((v9 & 4) != 0)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

double ShapeView.modelCoordinateSpace.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
  swift_beginAccess();
  (*(v4 + 16))(v6, &v1[v7], v3);
  v11[0] = type metadata accessor for Shape(0);
  v11[1] = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  v11[2] = &protocol witness table for Shape;
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v4 + 8))(v6, v3);
  result = *&v12;
  v9 = v13;
  v10 = v14;
  *a1 = v12;
  a1[1] = v9;
  a1[2] = v10;
  return result;
}

void ShapeView.modelCoordinateSpace.setter(uint64_t a1)
{
  specialized CanvasElementView.modelCoordinateSpace.setter(a1);

  ShapeView.updateShapeLayer()();
}

void (*ShapeView.modelCoordinateSpace.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xE8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 216) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v7 = *(v6 - 8);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v6 - 8) + 64));
  }

  v9 = v8;
  *(v5 + 224) = v8;
  v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
  swift_beginAccess();
  v11 = (*(v7 + 16))(v9, &v1[v10], v6);
  MEMORY[0x1EEE9AC00](v11);
  type metadata accessor for Shape(0);
  lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v7 + 8))(v9, v6);
  *(v5 + 96) = *(v5 + 144);
  v12 = (v5 + 96);
  v13 = v12[5];
  v12[1] = v12[4];
  v12[2] = v13;
  return ShapeView.modelCoordinateSpace.modify;
}

void ShapeView.modelCoordinateSpace.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 224);
  if (a2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = (*a1 + 48);
  }

  v5 = v2[7];
  *v4 = v2[6];
  v4[1] = v5;
  v4[2] = v2[8];
  specialized CanvasElementView.modelCoordinateSpace.setter(v4);
  ShapeView.updateShapeLayer()();
  free(v3);

  free(v2);
}

CGPathRef ShapeView.modelHitTestPath.getter()
{
  v1 = v0;
  v113 = *MEMORY[0x1E69E9840];
  v98 = type metadata accessor for CGPathFillRule();
  v102 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v92 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v97 = &v88 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v101 = &v88 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v88 - v8;
  v95 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v88 - v11;
  v99 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v99);
  v93 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v88 - v18;
  v20 = MEMORY[0x1E69E7D40];
  v21 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
  swift_beginAccess();
  v22 = *(v14 + 16);
  v103 = v19;
  v22(v19, &v1[v21], v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    AnyCanvasElementView.paperBoundsTransform()(&v109);
    a = v109.a;
    b = v109.b;
  }

  else
  {
    b = 0.0;
    a = 1.0;
  }

  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27 && (v28 = v27, v29 = (*((*v20 & *v27) + 0x90))(), v28, v29))
  {
    v30 = (*((*v20 & *v29) + 0x450))();

    v31 = v103;
    if (v30)
    {
      [v30 zoomScale];
    }
  }

  else
  {
    v31 = v103;
  }

  swift_getKeyPath();
  Capsule.subscript.getter();

  v32 = transform.a;
  v22(v16, &v1[v21], v13);
  v33 = specialized Capsule<>.isTextBox.getter();
  v34 = v14 + 8;
  v35 = *(v14 + 8);
  v35(v16, v13);
  if (v33)
  {
    v36 = *&v1[direct field offset for ShapeView._textBoxView];
    if (v36)
    {
      v37 = v36;
      specialized TextBoxView.selectionCoordinateSpace.getter(&transform);
      v114.origin.x = 0.0;
      v114.origin.y = 0.0;
      v114.size.width = 1.0;
      v114.size.height = 1.0;
      v38 = CGPathCreateWithRect(v114, &transform);

      v35(v31, v13);
      return v38;
    }
  }

  v39 = sqrt(a * a + b * b);
  v40 = round(v39 * v32);
  v41 = v93;
  Capsule.root.getter();
  v42 = (v22)(v16, &v1[v21], v13);
  MEMORY[0x1EEE9AC00](v42);
  *(&v88 - 4) = v99;
  *(&v88 - 3) = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  *(&v88 - 2) = &protocol witness table for Shape;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v99 = v35;
  v35(v16, v13);
  v110 = transform;
  Shape.pathAndLineEnds(in:scale:)(&v110, &transform, v39);
  v43 = transform.a;
  v44 = transform.b;
  c = transform.c;
  d = transform.d;
  tx = transform.tx;
  ty = transform.ty;
  v47 = v106;
  v48 = v107;
  v49 = v108;
  v50 = v41;
  v51 = v103;
  _s8PaperKit5ColorVWOhTm_2(v50, type metadata accessor for Shape);
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  transform.ty = 0.0;
  transform.tx = 0.0;
  v52 = *&v43;
  v53 = CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)();

  swift_getKeyPath();
  v54 = v94;
  Capsule.subscript.getter();

  v55 = v54;
  v56 = v96;
  outlined init with take of ShapeType(v55, v96, type metadata accessor for ShapeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v58 = MEMORY[0x1E695EEB8];
  v59 = MEMORY[0x1E695EEB0];
  v100 = v34;
  v93 = v53;
  if (EnumCaseMultiPayload == 2)
  {

    v38 = v53;
    v60 = v98;
    v61 = v97;
    goto LABEL_16;
  }

  _s8PaperKit5ColorVWOhTm_2(v56, type metadata accessor for ShapeType);
  v62 = *v58;
  v63 = v102;
  v64 = *(v102 + 104);
  v65 = v91;
  v66 = v53;
  v60 = v98;
  v64(v91, v62, v98);
  v67 = v101;
  v64(v101, *v59, v60);
  lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type CGPathFillRule and conformance CGPathFillRule, MEMORY[0x1E695EEC8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v68 = *(v63 + 8);
  v68(v67, v60);
  result = CGPathCreateCopyByUnioningPath(v52, v66, v111 == v104);
  v61 = v97;
  if (result)
  {
    v38 = result;
    v68(v65, v60);

    v51 = v103;
LABEL_16:
    swift_getKeyPath();
    Capsule.subscript.getter();

    if (v112)
    {
      v70 = 1;
    }

    else
    {
      v70 = v111;
      if (!v111)
      {
        goto LABEL_22;
      }
    }

    LOBYTE(v104) = v70;
    v71 = LineEnd.path(from:to:strokeWidth:)(v44, c, ty, v47, v40);
    if (v71)
    {
      v72 = v71;
      v73 = v102;
      v74 = *(v102 + 104);
      v74(v61, *MEMORY[0x1E695EEB8], v60);
      v75 = v101;
      v74(v101, *MEMORY[0x1E695EEB0], v60);
      lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type CGPathFillRule and conformance CGPathFillRule, MEMORY[0x1E695EEC8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v76 = *(v73 + 8);
      v76(v75, v60);
      result = CGPathCreateCopyByUnioningPath(v38, v72, v111 == v104);
      if (!result)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v77 = result;
      v76(v61, v60);

      v38 = v77;
      v51 = v103;
    }

LABEL_22:
    v78 = v99;
    swift_getKeyPath();
    Capsule.subscript.getter();

    if (v112)
    {
      v79 = 1;
    }

    else
    {
      v79 = v111;
      if (!v111)
      {
        goto LABEL_28;
      }
    }

    LOBYTE(v104) = v79;
    v80 = LineEnd.path(from:to:strokeWidth:)(d, tx, v48, v49, v40);
    if (v80)
    {
      v81 = v80;
      v82 = v102;
      v83 = *(v102 + 104);
      v84 = v92;
      v83(v92, *MEMORY[0x1E695EEB8], v60);
      v85 = v101;
      v83(v101, *MEMORY[0x1E695EEB0], v60);
      lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type CGPathFillRule and conformance CGPathFillRule, MEMORY[0x1E695EEC8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v86 = *(v82 + 8);
      v86(v85, v60);
      result = CGPathCreateCopyByUnioningPath(v38, v81, v111 == v104);
      if (result)
      {
        v87 = result;

        v86(v84, v60);
        v99(v103, v13);
        return v87;
      }

      goto LABEL_31;
    }

LABEL_28:
    v78(v51, v13);

    return v38;
  }

LABEL_32:
  __break(1u);
  return result;
}

BOOL ShapeView.hasLiveEditModification.getter()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x418));
  if (v1)
  {
    v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x418));
  }

  else
  {
    v2 = ShapeView.modelHitTestPath.getter();
    v1 = 0;
  }

  v3 = v1;
  v4 = ShapeView.modelHitTestPath.getter();
  type metadata accessor for CGPathRef(0);
  lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type CGPathRef and conformance CGPathRef, type metadata accessor for CGPathRef);
  v5 = static _CFObject.== infix(_:_:)();

  return (v5 & 1) == 0;
}

Swift::Void __swiftcall ShapeView.updateShapeLayer()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v324 = &v296 - v3;
  v325 = type metadata accessor for Shadow();
  v323 = *(v325 - 8);
  MEMORY[0x1EEE9AC00](v325);
  v318 = (&v296 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v336 = type metadata accessor for StrokeStyle(0);
  v341 = *(v336 - 8);
  MEMORY[0x1EEE9AC00](v336);
  v6 = &v296 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v332);
  *&v333 = &v296 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v331 = &v296 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v321 = &v296 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v330 = &v296 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v296 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v296 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v316 = &v296 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v312 = &v296 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v327 = &v296 - v25;
  v342 = type metadata accessor for Color(0);
  v344 = *(v342 - 8);
  MEMORY[0x1EEE9AC00](v342);
  v317 = &v296 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v313 = (&v296 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v335 = &v296 - v30;
  v343 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v343);
  v32 = &v296 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v319 = &v296 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v315 = &v296 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v311 = &v296 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v337 = (&v296 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v334 = &v296 - v42;
  *&v43 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd));
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v296 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v296 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v322 = &v296 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v320 = &v296 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v314 = &v296 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v304 = &v296 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v303 = &v296 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v310 = &v296 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v329 = &v296 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v328 = &v296 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v326 = &v296 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v338 = &v296 - v69;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v302 = v6;
    v299 = v46;
    v300 = v32;
    v70 = objc_opt_self();
    [v70 begin];
    [v70 setDisableActions_];
    v71 = ShapeView.groupLayer.getter();
    [v71 setAllowsGroupOpacity_];

    v72 = swift_unknownObjectWeakLoadStrong();
    v301 = v16;
    v305 = v70;
    v306 = v19;
    v307 = v49;
    if (v72)
    {
      v73 = v72;
      v74 = *&v43;
      AnyCanvasElementView.paperBoundsTransform()(&v358);
      v309 = *&v358.c;
      v339 = *&v358.a;
      tx = v358.tx;
      ty = v358.ty;
    }

    else
    {
      v74 = *&v43;
      v309 = xmmword_1D4059310;
      v339 = xmmword_1D4059320;
      tx = 0.0;
      ty = 0.0;
    }

    v77 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
    swift_beginAccess();
    v78 = *(v44 + 16);
    v349 = v77;
    v350 = v78;
    v79 = v338;
    v80 = (v78)(v338, &v1[v77], *&v74);
    MEMORY[0x1EEE9AC00](v80);
    *(&v296 - 4) = v343;
    *(&v296 - 3) = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
    *(&v296 - 2) = &protocol witness table for Shape;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v81 = *(v44 + 8);
    v81(v79, *&v74);
    *&t2.c = v309;
    *&t2.a = v339;
    t2.tx = tx;
    t2.ty = ty;
    CGAffineTransformConcat(&v357, &v353, &t2);
    v82 = v357.tx;
    v83 = v357.ty;
    v308 = *&v357.c;
    v309 = *&v357.a;
    v345 = v1;
    [v1 frame];
    CGAffineTransformMakeTranslation(&v353, -v84, -v85);
    v86 = *&v353.a;
    v87 = *&v353.c;
    v88 = *&v353.tx;
    *&v353.a = v309;
    *&v353.c = v308;
    v353.tx = v82;
    v353.ty = v83;
    *&v357.a = v86;
    *&v357.c = v87;
    *&v357.tx = v88;
    CGAffineTransformConcat(&t2, &v353, &v357);
    v89 = v350;
    (v350)(v79, &v1[v77], *&v74);
    v90 = v334;
    Capsule.root.getter();
    v81(v79, *&v74);
    v91 = sqrt(vaddvq_f64(vmulq_f64(v339, v339)));
    Shape.pathAndLineEnds(in:scale:)(&t2, &v353, v91);
    *&v309 = v353.a;
    b = v353.b;
    *&v308 = v353.c;
    d = v353.d;
    v94 = v353.tx;
    v297 = v354;
    v298 = v353.ty;
    v95 = v355;
    v96 = v356;
    v97 = v90;
    v98 = v345;
    _s8PaperKit5ColorVWOhTm_2(v97, type metadata accessor for Shape);
    v99 = v326;
    v346 = v44 + 16;
    v89(v326, &v98[v349], *&v74);
    v100 = v89;
    v101 = v337;
    Capsule.root.getter();
    v347 = v44 + 8;
    v348 = v81;
    v81(v99, *&v74);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    v103 = v327;
    CRRegister.wrappedValue.getter();
    _s8PaperKit5ColorVWOhTm_2(v101, type metadata accessor for Shape);
    v104 = *(v344 + 48);
    v344 += 48;
    v337 = v104;
    v105 = v104(v103, 1, v342);
    v106 = &selRef_pointyBitPoint;
    v334 = v102;
    if (v105 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v103, &_s8PaperKit5ColorVSgMd);
      v107 = ShapeView.shapeLayer.getter();
      [v107 setFillColor_];
    }

    else
    {
      v108 = outlined init with take of ShapeType(v103, v335, type metadata accessor for Color);
      v109 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x220))(v108);
      v110 = Color.cgColorWithHeadroom(_:)(v109);
      v111 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

      v112 = [v98 traitCollection];
      [v112 userInterfaceStyle];

      v113 = static PKInkingTool.convertColor(_:from:to:)();
      if (AnyCanvas.isHDRActive.getter())
      {
        swift_getKeyPath();
        v114 = Strong;
        *&v353.a = Strong;
        lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v115 = *(v114 + OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR);
        v106 = &selRef_pointyBitPoint;
        if (v115 == 1)
        {
          v116 = ShapeView.shapeLayer.getter();
          v117 = [v113 CGColor];
          v118 = CGColorRef.isHDR.getter();

          v119 = MEMORY[0x1E69792A0];
          v120 = (v118 & 1) == 0;
          v106 = &selRef_pointyBitPoint;
          v98 = v345;
          if (v120)
          {
            v119 = MEMORY[0x1E69792A8];
          }

          v121 = *v119;
          [v116 setPreferredDynamicRange_];
        }
      }

      v122 = ShapeView.shapeLayer.getter();
      v123 = [v113 CGColor];
      [v122 v106[226]];

      _s8PaperKit5ColorVWOhTm_2(v335, type metadata accessor for Color);
      v100 = v350;
    }

    v124 = v349;
    v125 = v338;
    v100(v338, &v98[v349], *&v74);
    swift_getKeyPath();
    v126 = v100;
    Capsule.subscript.getter();

    v348(v125, *&v74);
    v127 = v91 * v353.a;
    v128 = ShapeView.shapeLayer.getter();
    [v128 setLineWidth_];

    v129 = ShapeView.startLineEndLayer.getter();
    [v129 setLineWidth_];

    v130 = ShapeView.endLineEndLayer.getter();
    [v130 setLineWidth_];

    v100(v125, &v98[v124], *&v74);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v131 = v98;
    v132 = v348;
    v348(v125, *&v74);
    a = v353.a;
    v326 = direct field offset for ShapeView.$__lazy_storage_$_startLineEndLayer;
    v134 = *&v131[direct field offset for ShapeView.$__lazy_storage_$_startLineEndLayer];
    v126(v125, &v131[v124], *&v74);
    swift_getKeyPath();
    v135 = v134;
    Capsule.subscript.getter();

    v136 = v132;
    v132(v125, *&v74);
    v357.a = v353.a;
    LOBYTE(v357.b) = LOBYTE(v353.b);
    v351 = 0;
    v352 = 0;
    lazy protocol witness table accessor for type LineEnd and conformance LineEnd();
    [v135 setHidden_];

    v327 = direct field offset for ShapeView.$__lazy_storage_$_endLineEndLayer;
    v137 = *&v345[direct field offset for ShapeView.$__lazy_storage_$_endLineEndLayer];
    (v350)(v125, &v345[v349], *&v74);
    swift_getKeyPath();
    v138 = v137;
    Capsule.subscript.getter();
    v139 = v345;

    v136(v125, *&v74);
    v357.a = v353.a;
    LOBYTE(v357.b) = LOBYTE(v353.b);
    v351 = 0;
    v352 = 0;
    [v138 setHidden_];

    v335 = direct field offset for ShapeView.$__lazy_storage_$_shapeLayer;
    v140 = *&v139[direct field offset for ShapeView.$__lazy_storage_$_shapeLayer];
    v141 = v328;
    (v350)(v328, &v139[v349], *&v74);
    swift_getKeyPath();
    v142 = v140;
    v143 = v330;
    Capsule.subscript.getter();

    v136(v141, *&v74);
    v144 = v341 + 48;
    v328 = *(v341 + 48);
    v145 = (v328)(v143, 1, v336);
    v341 = v144;
    if (v145 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v143, &_s8PaperKit11StrokeStyleOSgMd);
      v146 = *MEMORY[0x1E6979E70];
    }

    else
    {
      v146 = StrokeStyle.caLineCap.getter();
      _s8PaperKit5ColorVWOhTm_2(v143, type metadata accessor for StrokeStyle);
    }

    [v142 setLineCap_];

    v147 = v349;
    v148 = &v139[v349];
    v149 = v329;
    v150 = v139;
    v151 = v350;
    (v350)(v329, v148, *&v74);
    swift_getKeyPath();
    v152 = v331;
    Capsule.subscript.getter();

    v153 = v348;
    v348(v149, *&v74);
    v154 = *&v333;
    outlined init with take of ShapeType(v152, *&v333, type metadata accessor for ShapeType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v339.f64[0] = v74;
    if (EnumCaseMultiPayload != 2)
    {
      v157 = v150;
      _s8PaperKit5ColorVWOhTm_2(v154, type metadata accessor for ShapeType);
      v162 = v151;
LABEL_21:
      v163 = v349;
      v164 = v314;
      v162(v314, &v157[v349], *&v74);
      v165 = v315;
      Capsule.root.getter();
      v348(v164, *&v74);
      v166 = v316;
      CRRegister.wrappedValue.getter();
      _s8PaperKit5ColorVWOhTm_2(v165, type metadata accessor for Shape);
      if (v337(v166, 1, v342) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v166, &_s8PaperKit5ColorVSgMd);
        [*&v335[v157] setStrokeColor_];
      }

      else
      {
        v167 = outlined init with take of ShapeType(v166, v317, type metadata accessor for Color);
        v168 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x220))(v167);
        v169 = Color.cgColorWithHeadroom(_:)(v168);
        v170 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

        v171 = [v157 traitCollection];
        [v171 userInterfaceStyle];

        v172 = static PKInkingTool.convertColor(_:from:to:)();
        if (AnyCanvas.isHDRActive.getter())
        {
          swift_getKeyPath();
          v173 = Strong;
          *&v353.a = Strong;
          lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v173 + OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR) == 1)
          {
            v174 = *&v335[v157];
            v175 = [v174 preferredDynamicRange];
            v176 = *MEMORY[0x1E69792A0];
            v177 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v179 = v178;
            if (v177 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v179 == v180)
            {
            }

            else
            {
              v197 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v197 & 1) == 0)
              {
                v198 = [v172 CGColor];
                v199 = CGColorRef.isHDR.getter();

                if ((v199 & 1) == 0)
                {
                  v176 = *MEMORY[0x1E69792A8];
                }
              }
            }

            v200 = v176;
            [v174 setPreferredDynamicRange_];

            v157 = v345;
          }
        }

        v201 = *&v335[v157];
        v202 = [v172 CGColor];
        [v201 setStrokeColor_];

        _s8PaperKit5ColorVWOhTm_2(v317, type metadata accessor for Color);
        v163 = v349;
        v162 = v350;
      }

LABEL_61:
      v236 = v157;
      v237 = &v157[v163];
      v238 = v320;
      v239 = v339.f64[0];
      v162(v320, v237, *&v339.f64[0]);
      swift_getKeyPath();
      v240 = v321;
      Capsule.subscript.getter();

      v241 = v238;
      v242 = v348;
      v348(v241, *&v239);
      v243 = v242;
      if ((v328)(v240, 1, v336) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v240, &_s8PaperKit11StrokeStyleOSgMd);
      }

      else
      {
        v245 = v302;
        _s8PaperKit9ShapeTypeOWOcTm_1(v240, v302, type metadata accessor for StrokeStyle);
        v246 = swift_getEnumCaseMultiPayload();
        v244 = v350;
        if (v246)
        {
          _s8PaperKit5ColorVWOhTm_2(v245, type metadata accessor for StrokeStyle);
          _s8PaperKit5ColorVWOhTm_2(v240, type metadata accessor for StrokeStyle);
          goto LABEL_66;
        }

        v265 = *v245;
        v266 = *(v245 + 8);
        _s8PaperKit5ColorVWOhTm_2(v240, type metadata accessor for StrokeStyle);
        if (!*(v266 + 16))
        {

          v163 = v349;
          goto LABEL_66;
        }

        v267 = v335;
        [*&v335[v236] setLineDashPhase_];
        v268 = *&v236[v267];
        v269 = *(v266 + 16);
        if (v269)
        {
          *&v353.a = MEMORY[0x1E69E7CC0];
          v270 = v268;
          specialized ContiguousArray.reserveCapacity(_:)();
          v271 = 32;
          do
          {
            CGFloat._bridgeToObjectiveC()();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v271 += 8;
            --v269;
          }

          while (v269);

          v236 = v345;
        }

        else
        {
          v270 = v268;
        }

        v243 = v348;
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v270 setLineDashPattern_];

        v163 = v349;
      }

      v244 = v350;
LABEL_66:
      v247 = v236;
      v248 = &v236[v163];
      v249 = v322;
      v250 = v339.f64[0];
      v244(v322, v248, *&v339.f64[0]);
      swift_getKeyPath();
      v251 = v324;
      Capsule.subscript.getter();

      v243(v249, *&v250);
      v252 = v325;
      if ((*(v323 + 48))(v251, 1, v325) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v251, &_s8PaperKit6ShadowVSgMd);
        v157 = v307;
        v253 = v247;
        v254 = v339.f64[0];
        goto LABEL_79;
      }

      v255 = v251;
      v256 = v318;
      outlined init with take of ShapeType(v255, v318, type metadata accessor for Shadow);
      v257 = direct field offset for ShapeView.$__lazy_storage_$_groupLayer;
      [*&v247[direct field offset for ShapeView.$__lazy_storage_$_groupLayer] setShadowOffset_];
      v258 = v256[2];
      v259 = *&v247[v257];
      v260 = [v247 window];
      v253 = v247;
      if (v260)
      {
        v261 = v260;
        v262 = [v260 screen];

        [v262 scale];
        v264 = v263;

        v256 = v318;
      }

      else
      {
        v264 = 1.0;
      }

      v254 = v339.f64[0];
      [v259 setShadowRadius_];

      v220 = *(v256 + *(v252 + 24));
      v222 = *&v247[v257];
      v272 = CGColorRef.components.getter();
      if (v272)
      {
        v157 = v307;
        if (*(v272 + 16) >= 4uLL)
        {
          v273 = *(v272 + 56);

          *&v274 = v273;
          [v222 setShadowOpacity_];

          _s8PaperKit5ColorVWOhTm_2(v256, type metadata accessor for Shadow);
LABEL_79:
          v275 = direct field offset for ShapeView.$__lazy_storage_$_groupLayer;
          v276 = [*&v253[direct field offset for ShapeView.$__lazy_storage_$_groupLayer] superlayer];
          v277 = [v253 layer];
          v278 = v277;
          if (v276)
          {
            if (v277)
            {
              type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for CALayer);
              v279 = static NSObject.== infix(_:_:)();

              if (v279)
              {
                goto LABEL_88;
              }

              goto LABEL_87;
            }

            v278 = v276;
          }

          else if (!v277)
          {
            goto LABEL_88;
          }

LABEL_87:
          v280 = [v253 layer];
          [v280 addSublayer_];

LABEL_88:
          v341 = v275;
          (v350)(v157, &v253[v349], *&v254);
          v281 = v319;
          Capsule.root.getter();
          v348(v157, *&v254);
          v282 = v306;
          CRRegister.wrappedValue.getter();
          _s8PaperKit5ColorVWOhTm_2(v281, type metadata accessor for Shape);
          v157 = v253;
          v283 = v342;
          v284 = v337(v282, 1, v342);
          outlined destroy of StocksKitCurrencyCache.Provider?(v282, &_s8PaperKit5ColorVSgMd);
          if (v284 != 1 || (v286 = v299, (v350)(v299, &v157[v349], *&v254), v287 = v300, Capsule.root.getter(), v348(v286, *&v254), v288 = v301, CRRegister.wrappedValue.getter(), _s8PaperKit5ColorVWOhTm_2(v287, type metadata accessor for Shape), LODWORD(v286) = v337(v288, 1, v283), outlined destroy of StocksKitCurrencyCache.Provider?(v288, &_s8PaperKit5ColorVSgMd), v286 != 1) || (v289 = v338, (v350)(v338, &v157[v349], *&v254), v290 = specialized Capsule<>.isTextBox.getter(), v348(v289, *&v254), (v290 & 1) != 0))
          {
            *&v285 = a;
            [*&v157[v341] setOpacity_];
            v291 = v305;
            v292 = v309;
            v222 = v335;
LABEL_92:
            [*&v222[v157] setPath_];
            [v291 commit];

            return;
          }

          v222 = v335;
          v293 = one-time initialization token for resizeInvisibleShapeBorderColor;
          v220 = *&v335[v157];
          if (v293 == -1)
          {
LABEL_95:
            [v220 setStrokeColor_];

            [*&v222[v157] setLineWidth_];
            LODWORD(v294) = 1.0;
            [*&v157[v341] setOpacity_];
            v291 = v305;
            v292 = v309;
            goto LABEL_92;
          }

LABEL_103:
          swift_once();
          goto LABEL_95;
        }

        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      __break(1u);
LABEL_105:
      __break(1u);
      return;
    }

    v156 = &v150[v147];
    v157 = v150;
    v158 = v310;
    v151(v310, v156, *&v74);
    v159 = v311;
    Capsule.root.getter();
    v153(v158, *&v74);
    v160 = v312;
    CRRegister.wrappedValue.getter();
    v161 = v160;
    _s8PaperKit5ColorVWOhTm_2(v159, type metadata accessor for Shape);
    if (v337(v160, 1, v342) == 1)
    {
      v162 = v151;
      outlined destroy of StocksKitCurrencyCache.Provider?(v161, &_s8PaperKit5ColorVSgMd);
      goto LABEL_21;
    }

    v181 = outlined init with take of ShapeType(v160, v313, type metadata accessor for Color);
    v182 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x220))(v181);
    v183 = Color.cgColorWithHeadroom(_:)(v182);
    v184 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

    v185 = [v150 traitCollection];
    [v185 userInterfaceStyle];

    v332 = v184;
    v331 = static PKInkingTool.convertColor(_:from:to:)();
    v186 = [v331 CGColor];
    CopyWithAlpha = CGColorCreateCopyWithAlpha(v186, 1.0);

    v188 = AnyCanvas.isHDRActive.getter();
    v163 = v349;
    if (!v188 || (swift_getKeyPath(), v189 = Strong, *&v353.a = Strong, lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v189 + OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR) != 1))
    {
LABEL_50:
      v333 = v91;
      [*&v335[v157] setStrokeColor_];
      v218 = v326;
      [*&v326[v157] setFillColor_];
      v219 = v327;
      [*&v327[v157] setFillColor_];
      v220 = *v313;
      v221 = CGColorRef.components.getter();
      if (!v221)
      {
        goto LABEL_105;
      }

      v222 = v350;
      if (*(v221 + 16) < 4uLL)
      {
        goto LABEL_102;
      }

      v223 = a;
      v224 = *(v221 + 56);

      v225 = *&v218[v157];
      v226 = v303;
      (v222)(v303, &v157[v163], *&v74);
      swift_getKeyPath();
      v227 = v225;
      Capsule.subscript.getter();

      v348(v226, *&v74);
      if (LOBYTE(v353.b))
      {
        a_low = 1;
      }

      else
      {
        a_low = LOBYTE(v353.a);
        if (!LOBYTE(v353.a))
        {
          v229 = 0;
LABEL_56:
          v230 = v350;
          [v227 setPath_];

          v231 = *&v219[v345];
          v232 = v304;
          v230(v304, &v345[v163], *&v74);
          swift_getKeyPath();
          v233 = v231;
          Capsule.subscript.getter();

          v348(v232, *&v74);
          if (LOBYTE(v353.b))
          {
            v234 = 1;
          }

          else
          {
            v234 = LOBYTE(v353.a);
            if (!LOBYTE(v353.a))
            {
              v235 = 0;
              goto LABEL_60;
            }
          }

          LOBYTE(v357.a) = v234;
          v235 = LineEnd.path(from:to:strokeWidth:)(d, v94, v95, v96, v127);
LABEL_60:
          v162 = v350;
          a = v223 * v224;
          [v233 setPath_];

          _s8PaperKit5ColorVWOhTm_2(v313, type metadata accessor for Color);
          v157 = v345;
          v91 = v333;
          goto LABEL_61;
        }
      }

      LOBYTE(v357.a) = a_low;
      v229 = LineEnd.path(from:to:strokeWidth:)(b, *&v308, v298, v297, v127);
      goto LABEL_56;
    }

    v190 = v335;
    v191 = [*&v335[v157] preferredDynamicRange];
    v192 = *MEMORY[0x1E69792A0];
    v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v195 = v194;
    if (v193 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v195 == v196)
    {

LABEL_39:
      v157 = v345;
      v204 = *&v345[v190];
      v205 = 1;
      v206 = v192;
LABEL_46:
      v209 = v206;
      v210 = v204;
      [v210 setPreferredDynamicRange_];

      v211 = *&v326[v157];
      if (v205)
      {
        v212 = v192;
      }

      else
      {
        v212 = *MEMORY[0x1E69792A8];
      }

      v213 = v212;
      v214 = v211;
      [v214 setPreferredDynamicRange_];

      v215 = *&v327[v157];
      v216 = v212;
      v217 = v215;
      [v217 setPreferredDynamicRange_];

      v163 = v349;
      goto LABEL_50;
    }

    v203 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v203)
    {
      goto LABEL_39;
    }

    if (CopyWithAlpha)
    {
      v207 = CopyWithAlpha;
      v208 = CGColorRef.isHDR.getter();

      v204 = *&v345[v190];
      if (v208)
      {
        v205 = 1;
        v206 = v192;
LABEL_45:
        v157 = v345;
        goto LABEL_46;
      }
    }

    else
    {
      v204 = *&v345[v190];
    }

    v205 = 0;
    v206 = *MEMORY[0x1E69792A8];
    goto LABEL_45;
  }
}

void @objc ShapeView.layoutSubviews()(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for ShapeView();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  ShapeView.updateShapeLayer()();
  v2 = *&v1[direct field offset for ShapeView._textBoxView];
  if (v2)
  {
    [v2 layoutSubviews];
  }

  specialized AppearanceStreamViewSupport.updateAppearanceStreamView()();
}

void @objc ShapeView.setNeedsDisplay()(char *a1)
{
  v2 = *&a1[direct field offset for ShapeView._textBoxView];
  v3 = a1;
  if (v2)
  {
    [v2 setNeedsDisplay];
  }

  v4.receiver = a1;
  v4.super_class = type metadata accessor for ShapeView();
  objc_msgSendSuper2(&v4, sel_setNeedsDisplay);
}

void __swiftcall ShapeView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v4 = v3;
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v7 = type metadata accessor for CGPathFillRule();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v45 - v12;
  v50 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v50);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v22 = ShapeView.shapeLayer.getter();
  v23 = [v22 path];

  v55 = v23;
  if (v23)
  {
    v48 = v8;
    v24 = *(v4 + direct field offset for ShapeView._textBoxView);
    if (v24)
    {
      v25 = v24;
      [v4 convertPoint:v25 toView:{x, y}];
      v26 = [v25 hitTest:isa withEvent:?];

      if (v26)
      {

        return;
      }
    }

    v47 = v7;
    v27 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x3F0);
    swift_beginAccess();
    isa = *(v16 + 16);
    (isa)(v21, v4 + v27, v15);
    v28 = specialized Capsule<>.isTextBox.getter();
    v29 = *(v16 + 8);
    v29(v21, v15);
    if (v28)
    {
      [v4 bounds];
      v62.x = x;
      v62.y = y;
      if (CGRectContainsPoint(v63, v62))
      {

LABEL_12:
        v39 = v4;
        return;
      }
    }

    (isa)(v18, v4 + v27, v15);
    Capsule.root.getter();
    v46 = v29;
    v29(v18, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
    v30 = v49;
    CRRegister.wrappedValue.getter();
    v31 = v52;
    outlined init with take of ShapeType(v30, v52, type metadata accessor for ShapeType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      _s8PaperKit5ColorVWOhTm_2(v14, type metadata accessor for Shape);
      goto LABEL_11;
    }

    _s8PaperKit5ColorVWOhTm_2(v31, type metadata accessor for ShapeType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
    CRRegister.wrappedValue.getter();
    v32 = v56;
    _s8PaperKit5ColorVWOhTm_2(v14, type metadata accessor for Shape);
    if (v32)
    {
LABEL_11:
      v56 = 0x3FF0000000000000;
      v57 = 0;
      v58 = 0;
      v59 = 0x3FF0000000000000;
      v60 = 0;
      v61 = 0;
      v33 = v55;
      v34 = CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)();
      v35 = v47;
      v36 = v48;
      v37 = v53;
      (*(v48 + 104))(v53, *MEMORY[0x1E695EEB8], v47);
      v38 = CGPathRef.contains(_:using:transform:)();

      (*(v36 + 8))(v37, v35);
      if ((v38 & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    (isa)(v21, v4 + v27, v15);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v46(v21, v15);
    v40 = v47;
    v41 = v48;
    v42 = v53;
    (*(v48 + 104))(v53, *MEMORY[0x1E695EEB8], v47);
    v56 = 0x3FF0000000000000;
    v57 = 0;
    v58 = 0;
    v59 = 0x3FF0000000000000;
    v60 = 0;
    v61 = 0;
    v43 = v55;
    v44 = CGPathRef.contains(_:using:transform:)();

    (*(v41 + 8))(v42, v40);
    if (v44)
    {
      goto LABEL_12;
    }
  }
}

id @objc ShapeView.hitTest(_:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v16.value.super.isa = a5;
  ShapeView.hitTest(_:with:)(v11, __PAIR128__(*&a3, *&a2), v16);
  v13 = v12;

  return v13;
}

Swift::Bool __swiftcall ShapeView.intersects(_:canvasBounds:)(__C::CGRect _, __C::CGRect canvasBounds)
{
  height = _.size.height;
  width = _.size.width;
  y = _.origin.y;
  x = _.origin.x;
  v7 = type metadata accessor for CGPathFillRule();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  *&v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v13);
  *&ty = &v64 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v57 = swift_unknownObjectWeakLoadStrong();
    if (!v57)
    {
      [v2 bounds];
      v91.origin.x = x;
      v91.origin.y = y;
      v91.size.width = width;
      v91.size.height = height;
      LOBYTE(CopyOfLineByIntersectingPath) = CGRectIntersectsRect(v88, v91);
      return CopyOfLineByIntersectingPath;
    }

    ShapeView.selectionCoordinateSpace.getter(&aBlock);
    a = aBlock.a;
    b = aBlock.b;
    c = aBlock.c;
    d = aBlock.d;
    v79 = aBlock;
    tx = aBlock.tx;
    ty = aBlock.ty;
    v84.origin.x = 0.0;
    v84.origin.y = 0.0;
    v84.size.width = 1.0;
    v84.size.height = 1.0;
    v85 = CGRectApplyAffineTransform(v84, &v79);
    v89.origin.x = x;
    v89.origin.y = y;
    v89.size.width = width;
    v89.size.height = height;
    if (CGRectIntersectsRect(v85, v89))
    {
      v79.a = a;
      v79.b = b;
      v79.c = c;
      v79.d = d;
      v79.tx = tx;
      v79.ty = ty;
      CGAffineTransformInvert(&v78, &v79);
      v79 = v78;
      v86.origin.x = x;
      v86.origin.y = y;
      v86.size.width = width;
      v86.size.height = height;
      v87 = CGRectApplyAffineTransform(v86, &v79);
      v90.origin.x = 0.0;
      v90.origin.y = 0.0;
      v90.size.width = 1.0;
      v90.size.height = 1.0;
      LOBYTE(CopyOfLineByIntersectingPath) = CGRectIntersectsRect(v87, v90);
      return CopyOfLineByIntersectingPath;
    }

LABEL_31:
    LOBYTE(CopyOfLineByIntersectingPath) = 0;
    return CopyOfLineByIntersectingPath;
  }

  [v2 frame];
  CGAffineTransformMakeTranslation(&aBlock, -v16, -v17);
  v81.origin.x = x;
  v81.origin.y = y;
  v81.size.width = width;
  v81.size.height = height;
  v82 = CGRectApplyAffineTransform(v81, &aBlock);
  v18 = v82.origin.x;
  v19 = v82.origin.y;
  v20 = v82.size.width;
  v21 = v82.size.height;
  v22 = ShapeView.shapeLayer.getter();
  v23 = [v22 path];

  if (!v23)
  {
    goto LABEL_31;
  }

  v73 = v7;
  v83.origin.x = v18;
  v83.origin.y = v19;
  v83.size.width = v20;
  v83.size.height = v21;
  v74 = CGPathCreateWithRect(v83, 0);
  v77[4] = v23;
  v24 = COERCE_DOUBLE(v23);
  v25 = ShapeView.startLineEndLayer.getter();
  v26 = [v25 path];

  v77[5] = v26;
  v27 = ShapeView.endLineEndLayer.getter();
  v28 = [v27 path];

  v29 = 0;
  v77[6] = v28;
  v30 = MEMORY[0x1E69E7CC0];
  *&aBlock.a = MEMORY[0x1E69E7CC0];
LABEL_4:
  if (v29 <= 3)
  {
    v31 = 3;
  }

  else
  {
    v31 = v29;
  }

  while (v29 != 3)
  {
    if (v31 == v29)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v34 = __CocoaSet.count.getter();
      if (!v34)
      {
        goto LABEL_41;
      }

LABEL_15:
      v64 = v24;
      v35 = v8;
      v8 = 0;
      v36 = *&v30 & 0xC000000000000001;
      v72 = *&v30 & 0xFFFFFFFFFFFFFF8;
      p_c = &aBlock.c;
      v70 = *MEMORY[0x1E695EEB8];
      v69 = (v35 + 104);
      v68 = *MEMORY[0x1E695EEB0];
      v37 = (v35 + 8);
      v65 = *&v30 & 0xC000000000000001;
      v67 = v34;
      while (1)
      {
        if (v36)
        {
          v44 = MEMORY[0x1DA6CE0C0](v8, *&v30);
        }

        else
        {
          if (v8 >= *(v72 + 16))
          {
            goto LABEL_38;
          }

          v44 = *(*&v30 + 8 * v8 + 32);
        }

        v45 = v44;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_37;
        }

        *&tx = v8 + 1;
        v24 = v30;
        v30 = v10;
        LOBYTE(v79.a) = 0;
        v46 = swift_allocObject();
        *(v46 + 16) = &v79;
        v10 = COERCE_DOUBLE(swift_allocObject());
        *(*&v10 + 16) = partial apply for closure #1 in CGPathRef.isClosed.getter;
        *(*&v10 + 24) = v46;
        *&aBlock.tx = partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
        aBlock.ty = v10;
        *&aBlock.a = MEMORY[0x1E69E9820];
        *&aBlock.b = 1107296256;
        *&aBlock.c = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
        *&aBlock.d = &block_descriptor_42;
        v47 = _Block_copy(&aBlock);

        CGPathApplyWithBlock(v45, v47);
        _Block_release(v47);
        LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

        if (v47)
        {
          goto LABEL_39;
        }

        a_low = LOBYTE(v79.a);

        v49 = *v69;
        if (a_low)
        {
          v38 = ty;
          v39 = v73;
          v49(*&ty, v70, v73);
          v40 = v66;
          v49(v66, v68, v39);
          lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type CGPathFillRule and conformance CGPathFillRule, MEMORY[0x1E695EEC8]);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v41 = *v37;
          (*v37)(v40, v39);
          v42 = CGPathIntersectsPath(v45, v74, *&aBlock.a == *&v79.a);

          v43 = v39;
          v36 = v65;
          v41(*&v38, v43);
          v10 = v30;
          v30 = v24;
          if (v42)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v10 = v30;
          v50 = v30;
          v51 = v73;
          v49(*&v50, v70, v73);
          v52 = ty;
          v49(*&ty, v68, v51);
          lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type CGPathFillRule and conformance CGPathFillRule, MEMORY[0x1E695EEC8]);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v53 = *v37;
          (*v37)(COERCE_CGFLOAT(*&v52), v51);
          CopyOfLineByIntersectingPath = CGPathCreateCopyOfLineByIntersectingPath(v45, v74, *&aBlock.a == *&v79.a);
          if (!CopyOfLineByIntersectingPath)
          {
            __break(1u);
            return CopyOfLineByIntersectingPath;
          }

          v55 = CopyOfLineByIntersectingPath;
          v53(*&v10, v51);
          IsEmpty = CGPathIsEmpty(v55);

          v30 = v24;
          if (!IsEmpty)
          {
LABEL_33:
            v62 = 1;
LABEL_35:
            v24 = v64;
            goto LABEL_42;
          }
        }

        ++v8;
        if (*&tx == v67)
        {
          v62 = 0;
          goto LABEL_35;
        }
      }
    }

    v32 = v77[v29++ + 4];
    if (v32)
    {
      v33 = v32;
      MEMORY[0x1DA6CD190]();
      if (*((*&aBlock.a & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&aBlock.a & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v30 = aBlock.a;
      goto LABEL_4;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9CGPathRefaSgMd);
  swift_arrayDestroy();
  if (*&v30 >> 62)
  {
    goto LABEL_40;
  }

  v34 = *((*&v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v34)
  {
    goto LABEL_15;
  }

LABEL_41:
  v62 = 0;
LABEL_42:

  LOBYTE(CopyOfLineByIntersectingPath) = v62;
  return CopyOfLineByIntersectingPath;
}

Swift::Void __swiftcall ShapeView.updateUI()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    ShapeView.updateShapeLayer()();
    v5 = v2;
    ShapeView.setupTextBoxIfNeeded(canvas:)(v2);

    v3 = *(v0 + direct field offset for ShapeView._textBoxView);
    if (v3)
    {
      v4 = v3;
      specialized TextBoxView.updateUI()();
    }

    specialized AppearanceStreamViewSupport.updateAppearanceStreamView()();
    specialized CanvasElementView.updateUI()();
  }
}

void ShapeView.isSelected.didset()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    ShapeView.updateShapeLayer()();
    v4 = v3;
    ShapeView.setupTextBoxIfNeeded(canvas:)(v3);

    v5 = *&v0[direct field offset for ShapeView._textBoxView];
    if (v5)
    {
      v6 = v5;
      specialized TextBoxView.updateUI()();
    }

    specialized AppearanceStreamViewSupport.updateAppearanceStreamView()();
    specialized CanvasElementView.updateUI()();
  }

  v7 = *&v1[direct field offset for ShapeView._textBoxView];
  if (v7)
  {
    v8 = v7;
    specialized TextBoxView.updateSelected()();
  }

  if (v1[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isSelected] == 1 && v1[direct field offset for ShapeView.showsSignaturePopover] == 1)
  {

    [v1 becomeFirstResponder];
  }
}

void ShapeView.isSelected.setter(char a1)
{
  *(v1 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isSelected) = a1;
  specialized CanvasElementView.isSelected.didset();

  ShapeView.isSelected.didset();
}

uint64_t ShapeView.uneditedModelCoordinateSpace.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  v13 = *(v7 + 16);
  v13(v11, &v2[v12], v6);
  v14 = specialized Capsule<>.isTextBox.getter();
  v29 = *(v7 + 8);
  result = v29(v11, v6);
  if ((v14 & 1) != 0 && (v16 = *&v2[direct field offset for ShapeView._textBoxView]) != 0 && (v17 = (v16 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_liveUneditedModelCoordinateSpace), (v17[3] & 1) == 0))
  {
    v26 = *(v17 + 4);
    v25 = *(v17 + 5);
    v24 = *v17;
    v23 = v17[1];
  }

  else
  {
    v18 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F8);
    swift_beginAccess();
    outlined init with copy of Capsule<Shape>?(&v2[v18], v5);
    v19 = *(v7 + 48);
    if (v19(v5, 1, v6) == 1)
    {
      v20 = &v2[v12];
      v21 = v30;
      v13(v30, v20, v6);
      v22 = v19(v5, 1, v6);
      if (v22 != 1)
      {
        v22 = outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
      }
    }

    else
    {
      v21 = v30;
      v22 = (*(v7 + 32))(v30, v5, v6);
    }

    MEMORY[0x1EEE9AC00](v22);
    *(&v28 - 4) = type metadata accessor for Shape(0);
    *(&v28 - 3) = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
    *(&v28 - 2) = &protocol witness table for Shape;
    swift_getKeyPath();
    Capsule.subscript.getter();

    result = v29(v21, v6);
    v24 = v32;
    v23 = v33;
    v26 = v34;
    v25 = v35;
  }

  v27 = v31;
  *v31 = v24;
  v27[1] = v23;
  *(v27 + 4) = v26;
  *(v27 + 5) = v25;
  return result;
}

void ShapeView.selectionCoordinateSpace.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = COERCE_DOUBLE(type metadata accessor for ShapeType(0));
  MEMORY[0x1EEE9AC00](*&v57);
  v5 = (&v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  *&v56 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
  swift_beginAccess();
  *&v60 = *(v9 + 16);
  (v60)(v14, v2 + v15, v8);
  v16 = specialized Capsule<>.isTextBox.getter();
  v17 = *(v9 + 8);
  *&v55 = v14;
  *&v59 = v9 + 8;
  v58 = *&v17;
  v17(v14, v8);
  if ((v16 & 1) != 0 && (v18 = *(v2 + direct field offset for ShapeView._textBoxView)) != 0)
  {
    v19 = v18;
    specialized TextBoxView.selectionCoordinateSpace.getter(&transform);
    v60 = *&transform.c;
    v59 = *&transform.a;
    tx = transform.tx;
    ty = transform.ty;

    v22 = v59;
    v23 = v60;
  }

  else
  {
    v54 = a1;
    (v60)(v11, v2 + v15, v8);
    swift_getKeyPath();
    v24 = v56;
    Capsule.subscript.getter();

    v25 = v58;
    (*&v58)(v11, v8);
    outlined init with take of ShapeType(v24, v5, type metadata accessor for ShapeType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v26 = *v5;
      v27 = v5[1];
      v28 = v5[2];
      v29 = v5[3];
      v30 = v5[4];
      v31 = v5[5];
      v32 = v55;
      v33 = (v60)(v55, v2 + v15, v8);
      MEMORY[0x1EEE9AC00](v33);
      *(&v53 - 4) = type metadata accessor for Shape(0);
      *(&v53 - 3) = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
      *(&v53 - 2) = &protocol witness table for Shape;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*&v25)(v32, v8);
      transform = t1;
      Mutable = CGPathCreateMutable();
      CGMutablePathRef.move(to:transform:)(__PAIR128__(*&v27, *&v26), &transform);
      CGMutablePathRef.addQuadCurve(to:control:transform:)(__PAIR128__(*&v31, *&v30), __PAIR128__(v29 - v27 * 0.25 - v31 * 0.25 + v29 - v27 * 0.25 - v31 * 0.25, v28 - v26 * 0.25 - v30 * 0.25 + v28 - v26 * 0.25 - v30 * 0.25), &transform);
      PathBoundingBox = CGPathGetPathBoundingBox(Mutable);
      x = PathBoundingBox.origin.x;
      y = PathBoundingBox.origin.y;
      height = PathBoundingBox.size.height;
      v58 = PathBoundingBox.size.height;
      *&v60 = PathBoundingBox.origin.x - PathBoundingBox.size.width * 0.0;
      *&v59 = PathBoundingBox.origin.y - PathBoundingBox.size.height * 0.0;
      width = PathBoundingBox.size.width;
      v57 = PathBoundingBox.size.width;
      MidX = CGRectGetMidX(PathBoundingBox);
      v66.origin.x = x;
      v66.origin.y = y;
      v66.size.width = width;
      v66.size.height = height;
      MidY = CGRectGetMidY(v66);
      CGAffineTransformMakeRotation(&t1, 0.0);
      v41 = t1.tx;
      v42 = t1.ty;
      v56 = *&t1.a;
      v55 = *&t1.c;
      CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
      a = t1.a;
      b = t1.b;
      c = t1.c;
      d = t1.d;
      v46 = t1.tx;
      v48 = t1.ty;
      *&t2.c = v55;
      *&t2.a = v56;
      t2.tx = v41;
      t2.ty = v42;
      CGAffineTransformConcat(&v61, &t1, &t2);
      v49 = v61.tx;
      v50 = v61.ty;
      v56 = *&v61.a;
      v55 = *&v61.c;
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v46;
      t1.ty = v48;
      CGAffineTransformInvert(&t2, &t1);
      *&t1.c = v55;
      *&t1.a = v56;
      t1.tx = v49;
      t1.ty = v50;
      CGAffineTransformConcat(&v61, &t1, &t2);
      t1.a = v57;
      t1.c = 0.0;
      t1.b = 0.0;
      t1.d = v58;
      *&t1.tx = v60;
      *&t1.ty = v59;
      t2 = v61;
      CGAffineTransformConcat(&v61, &t1, &t2);
      v60 = *&v61.c;
      v59 = *&v61.a;
      tx = v61.tx;
      ty = v61.ty;

      v22 = v59;
      v23 = v60;
    }

    else
    {
      _s8PaperKit5ColorVWOhTm_2(v5, type metadata accessor for ShapeType);
      v51 = v55;
      v52 = (v60)(v55, v2 + v15, v8);
      MEMORY[0x1EEE9AC00](v52);
      *(&v53 - 4) = type metadata accessor for Shape(0);
      *(&v53 - 3) = lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
      *(&v53 - 2) = &protocol witness table for Shape;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*&v25)(v51, v8);
      v22 = *&transform.a;
      v23 = *&transform.c;
      tx = transform.tx;
      ty = transform.ty;
    }

    a1 = v54;
  }

  *a1 = v22;
  *(a1 + 16) = v23;
  *(a1 + 32) = tx;
  *(a1 + 40) = ty;
}

BOOL ShapeView.wantsRectangularSelection.getter()
{
  v1 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  (*(v8 + 16))(v10, &v0[v11], v7);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v8 + 8))(v10, v7);
  outlined init with take of ShapeType(v6, v3, type metadata accessor for ShapeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    _s8PaperKit5ColorVWOhTm_2(v3, type metadata accessor for ShapeType);
  }

  return EnumCaseMultiPayload != 2;
}

void *ShapeView.canvasElementImage.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v65 = &v60 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v5 = *(v4 - 8);
  v66 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  v62 = &v60 - v9;
  v11 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  v64 = v5;
  v12 = v5[2];
  v12(v10, &v0[v11], v4);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v13 = v5[1];
  v13(v10, v4);
  v14 = v71;
  v63 = v11;
  v12(v7, &v0[v11], v4);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v13(v7, v4);
  x = v70.origin.x;
  y = v70.origin.y;
  width = v70.size.width;
  height = v70.size.height;
  MidX = CGRectGetMidX(v70);
  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  MidY = CGRectGetMidY(v72);
  CGAffineTransformMakeRotation(&t1, v14);
  tx = t1.tx;
  ty = t1.ty;
  v61 = *&t1.a;
  v60 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v27 = t1.tx;
  v28 = t1.ty;
  *&t2.c = v60;
  *&t2.a = v61;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v67, &t1, &t2);
  v29 = v67.tx;
  v30 = v67.ty;
  v61 = *&v67.a;
  v60 = *&v67.c;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v27;
  t1.ty = v28;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.c = v60;
  *&t1.a = v61;
  t1.tx = v29;
  t1.ty = v30;
  CGAffineTransformConcat(&v67, &t1, &t2);
  v31 = v67.tx;
  v32 = v67.ty;
  v61 = *&v67.a;
  v60 = *&v67.c;
  v33 = v62;
  v12(v62, &v1[v11], v4);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v34 = v33;
  v13(v33, v4);
  v73.origin.x = t2.a;
  v73.origin.y = t2.b;
  v73.size.width = t2.c;
  v73.size.height = t2.d;
  *&t1.c = v60;
  *&t1.a = v61;
  t1.tx = v31;
  t1.ty = v32;
  v74 = CGRectApplyAffineTransform(v73, &t1);
  v35 = v74.origin.x;
  v36 = v74.origin.y;
  v37 = v74.size.width;
  v38 = v74.size.height;
  v39 = [objc_opt_self() mainScreen];
  [v39 scale];
  v41 = v40;

  type metadata accessor for ImageRenderer();
  v42 = swift_allocObject();
  *(v42 + 16) = 1;
  *(v42 + 24) = v37;
  *(v42 + 32) = v38;
  *(v42 + 40) = v41;
  *(v42 + 48) = 0;
  *(v42 + 56) = 0;
  *(v42 + 64) = 1;
  *(v42 + 72) = 0;
  *(v42 + 80) = 1;
  type metadata accessor for CanvasElementImageRenderer();
  v43 = swift_allocObject();
  v44 = specialized CanvasElementImageRenderer.init(renderer:)(v42, v43);
  *&v61 = dispatch_semaphore_create(0);
  type metadata accessor for SendableImage #1 in ShapeView.canvasElementImage.getter();
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  v46 = v65;
  static TaskPriority.userInitiated.getter();
  v47 = type metadata accessor for TaskPriority();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  v48 = v34;
  v12(v34, &v1[v63], v4);
  v49 = v64;
  v50 = (*(v64 + 80) + 48) & ~*(v64 + 80);
  v51 = (v66 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + 39) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 2) = 0;
  *(v53 + 3) = 0;
  *(v53 + 4) = v45;
  *(v53 + 5) = v44;
  (v49[4])(&v53[v50], v48, v4);
  v54 = &v53[v51];
  *v54 = v35;
  v54[1] = v36;
  v54[2] = v37;
  v54[3] = v38;
  v55 = v61;
  *&v53[v52] = v61;

  v56 = v55;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v46, &async function pointer to partial apply for closure #1 in ShapeView.canvasElementImage.getter, v53);

  outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_sScPSgMd);
  OS_dispatch_semaphore.wait()();

  v57 = *(v45 + 16);
  v58 = v57;

  return v57;
}

uint64_t closure #1 in ShapeView.canvasElementImage.getter(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 72) = a11;
  *(v11 + 56) = a3;
  *(v11 + 64) = a4;
  *(v11 + 40) = a1;
  *(v11 + 48) = a2;
  *(v11 + 24) = a9;
  *(v11 + 32) = a10;
  *(v11 + 16) = a8;
  type metadata accessor for Shape(0);
  *(v11 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ShapeView.canvasElementImage.getter, 0, 0);
}

uint64_t closure #1 in ShapeView.canvasElementImage.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  Capsule.root.getter();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = closure #1 in ShapeView.canvasElementImage.getter;
  v2 = v0[10];
  v3.n128_u64[0] = v0[7];
  v4.n128_u64[0] = v0[8];
  v5.n128_u64[0] = v0[5];
  v6.n128_u64[0] = v0[6];
  v7 = v0[4];

  return (specialized CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:))(v2, v7, 0, 0, 0, v5, v6, v3, v4);
}

{
  v1 = v0[12];
  if (v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[2];
  _s8PaperKit5ColorVWOhTm_2(v0[10], type metadata accessor for Shape);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  OS_dispatch_semaphore.signal()();

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in ShapeView.canvasElementImage.getter(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in ShapeView.canvasElementImage.getter, 0, 0);
}

Swift::OpaquePointer_optional __swiftcall ShapeView.pasteboardRepresentation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v39 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34 - v3;
  v41 = type metadata accessor for UTType();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v11 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  v37 = *(v8 + 16);
  v37(v10, &v0[v11], v7);
  v12 = specialized Capsule<>.isTextBox.getter();
  v38 = *(v8 + 8);
  v38(v10, v7);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    inited = swift_initStackObject();
    v36 = v2;
    v14 = inited;
    *(inited + 16) = xmmword_1D4058CF0;
    static UTType.plainText.getter();
    v15 = UTType.identifier.getter();
    v35 = v4;
    v17 = v16;
    (*(v40 + 8))(v6, v41);
    *(v14 + 32) = v15;
    v18 = v14 + 32;
    *(v14 + 40) = v17;
    v37(v10, &v1[v11], v7);
    swift_getKeyPath();
    v19 = v35;
    Capsule.subscript.getter();

    v38(v10, v7);
    v20 = v36;
    v21 = CRAttributedString.attributedString.getter();
    (*(v39 + 8))(v19, v20);
    v22 = [v21 string];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(v14 + 72) = MEMORY[0x1E69E6158];
    *(v14 + 48) = v23;
    *(v14 + 56) = v25;
LABEL_5:
    v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v14);
    swift_setDeallocating();
    outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_sSS_yptMd);
    goto LABEL_6;
  }

  v26 = v40;
  v27 = v41;
  v29 = ShapeView.canvasElementImage.getter();
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_1D4058CF0;
    static UTType.png.getter();
    v30 = UTType.identifier.getter();
    v32 = v31;
    (*(v26 + 8))(v6, v27);
    *(v14 + 32) = v30;
    v18 = v14 + 32;
    *(v14 + 40) = v32;
    *(v14 + 72) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIImage);
    *(v14 + 48) = v29;
    goto LABEL_5;
  }

LABEL_6:
  v33 = v29;
  result.value._rawValue = v33;
  result.is_nil = v28;
  return result;
}

uint64_t key path getter for Shape.text : Shape@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for Shape(0) + 52);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t key path setter for Shape.text : Shape(uint64_t a1)
{
  v2 = Shape.text.modify(v7);
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  (*(*(v5 - 8) + 24))(v4, a1, v5);
  return (v2)(v7, 0);
}

id @objc ShapeView.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = specialized ShapeView.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)();

  return v9;
}

id ShapeView.dragInteractionPreviewForLifting(item:session:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - v4;
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v6], v2);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v3 + 8))(v5, v2);
  v7 = v40;
  [v1 bounds];
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  MidX = CGRectGetMidX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MidY = CGRectGetMidY(v42);
  CGAffineTransformMakeRotation(&t1, v7);
  tx = t1.tx;
  ty = t1.ty;
  v36 = *&t1.a;
  v35 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v20 = t1.tx;
  v21 = t1.ty;
  *&t2.a = v36;
  *&t2.c = v35;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v37, &t1, &t2);
  v22 = v37.tx;
  v23 = v37.ty;
  v36 = *&v37.a;
  v35 = *&v37.c;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v20;
  t1.ty = v21;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v36;
  *&t1.c = v35;
  t1.tx = v22;
  t1.ty = v23;
  CGAffineTransformConcat(&v37, &t1, &t2);
  v24 = v37.tx;
  v25 = v37.ty;
  v36 = *&v37.a;
  v35 = *&v37.c;
  [v1 bounds];
  *&t1.a = v36;
  *&t1.c = v35;
  t1.tx = v24;
  t1.ty = v25;
  v44 = CGRectApplyAffineTransform(v43, &t1);
  v26 = v44.origin.x;
  v27 = v44.origin.y;
  v28 = v44.size.width;
  v29 = v44.size.height;
  v30 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
  v31 = [objc_opt_self() bezierPathWithRoundedRect:v26 cornerRadius:{v27, v28, v29, 20.0}];
  [v30 setVisiblePath_];

  v32 = [v1 window];
  if (v32)
  {

    v33 = [objc_allocWithZone(MEMORY[0x1E69DD068]) initWithView:v1 parameters:v30];
  }

  else
  {

    return 0;
  }

  return v33;
}

Swift::String_optional __swiftcall ShapeView.accessibilityDescription()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v53 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  v11 = specialized CanvasElementView.accessibilityDescription()();
  if (v12)
  {
    v57 = v7;
    v61 = v3;
    v62 = v12;
    v63 = *&v11;
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v13.value._object = 0xEB00000000656C62;
    v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v66.super.isa = paperKitBundle.super.isa;
    v70._object = 0x80000001D408AE60;
    v14._countAndFlagsBits = 0x3A7974696361704FLL;
    v14._object = 0xEE002566302E2520;
    v70._countAndFlagsBits = 0xD00000000000004CLL;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, paperKitBundle, v15, v70);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v17 = swift_allocObject();
    v67 = xmmword_1D4058CF0;
    *(v17 + 16) = xmmword_1D4058CF0;
    v54 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
    v18 = v54;
    swift_beginAccess();
    v65 = *(v5 + 16);
    v65(v10, &v0[v18], v4);
    swift_getKeyPath();
    v64 = v0;
    Capsule.subscript.getter();

    v53 = *(v5 + 8);
    v53(v10, v4);
    v19 = v68 * 100.0;
    *(v17 + 56) = MEMORY[0x1E69E7DE0];
    v56 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v17 + 64) = v56;
    *(v17 + 32) = v19;
    v58 = static String.localizedStringWithFormat(_:_:)();
    v59 = v20;

    v21._countAndFlagsBits = 0xD000000000000012;
    v71._object = 0x80000001D408AED0;
    v21._object = 0x80000001D408AEB0;
    v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v22.value._object = 0xEB00000000656C62;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v71._countAndFlagsBits = 0xD000000000000044;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v66, v23, v71);
    v60 = v16;
    v24 = swift_allocObject();
    *(v24 + 16) = v67;
    v25 = v54;
    v65(v10, &v64[v54], v4);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v26 = v10;
    v27 = v53;
    v53(v26, v4);
    v28 = v68;
    v29 = v56;
    *(v24 + 56) = MEMORY[0x1E69E7DE0];
    *(v24 + 64) = v29;
    *(v24 + 32) = v28;
    v30 = static String.localizedStringWithFormat(_:_:)();
    v55 = v31;
    v56 = v30;

    v32._countAndFlagsBits = 0xD000000000000010;
    v72._object = 0x80000001D408AF40;
    v32._object = 0x80000001D408AF20;
    v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v33.value._object = 0xEB00000000656C62;
    isa = v66.super.isa;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v72._countAndFlagsBits = 0xD000000000000044;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v66, v35, v72);
    v36 = v57;
    v65(v57, &v64[v25], v4);
    swift_getKeyPath();
    v37 = v61;
    Capsule.subscript.getter();

    v27(v36, v4);
    v38 = type metadata accessor for Color(0);
    if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s8PaperKit5ColorVSgMd);
      v73._countAndFlagsBits = 0xD000000000000020;
      v73._object = 0x80000001D408AF90;
      v39._countAndFlagsBits = 0x726F6C6F63206F4ELL;
      v39._object = 0xE800000000000000;
      v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v40.value._object = 0xEB00000000656C62;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, isa, v41, v73);
      countAndFlagsBits = v42._countAndFlagsBits;
      object = v42._object;
    }

    else
    {
      v45 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      _s8PaperKit5ColorVWOhTm_2(v37, type metadata accessor for Color);
      v46 = [v45 accessibilityName];

      countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      object = v47;
    }

    v48 = swift_allocObject();
    *(v48 + 16) = v67;
    *(v48 + 56) = MEMORY[0x1E69E6158];
    *(v48 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v48 + 32) = countAndFlagsBits;
    *(v48 + 40) = object;
    v49 = static String.localizedStringWithFormat(_:_:)();
    v51 = v50;

    v68 = v63;
    v69 = v62;
    MEMORY[0x1DA6CD010](8236, 0xE200000000000000);
    MEMORY[0x1DA6CD010](v58, v59);

    MEMORY[0x1DA6CD010](8236, 0xE200000000000000);
    MEMORY[0x1DA6CD010](v56, v55);

    MEMORY[0x1DA6CD010](8236, 0xE200000000000000);
    MEMORY[0x1DA6CD010](v49, v51);

    v11 = *&v68;
    v12 = v69;
  }

  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

void *ShapeView.textBoxView.getter()
{
  v1 = *(v0 + direct field offset for ShapeView._textBoxView);
  v2 = v1;
  return v1;
}

id ShapeView.isElementFirstResponder.getter()
{
  v1 = *&v0[direct field offset for ShapeView._textBoxView];
  if (v1 && (v0 = *(v1 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView)) == 0)
  {
    return 0;
  }

  else
  {
    return [v0 isFirstResponder];
  }
}

uint64_t ShapeView.resizeHandles.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
  swift_beginAccess();
  v21 = *(v3 + 16);
  v21(v8, &v1[v9], v2);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v10 = *(v3 + 8);
  v10(v8, v2);
  if ((v22 & 4) != 0 || (v22 & 0x80) != 0)
  {
    v11 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8PaperKit16ResizeHandleTypeO_SayAFGTt0g5Tf4g_n(&outlined read-only object #0 of static ResizeHandleType.handles(for:));
  }

  v12 = *&v1[direct field offset for ShapeView._textBoxView];
  if (v12)
  {
    v13 = v5;
    v14 = *&v12[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
    if (v14)
    {
      v20 = v12;
      if ([v14 isFirstResponder])
      {

        return MEMORY[0x1E69E7CD0];
      }
    }

    else
    {
      v15 = v12;
    }

    v16 = &v1[v9];
    v17 = v13;
    v21(v13, v16, v2);
    v18 = specialized Capsule<>.isTextBox.getter();
    v10(v17, v2);
    if (v18)
    {

      v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC8PaperKit16ResizeHandleTypeO_Tt0g5Tf4g_n(&outlined read-only object #0 of ShapeView.resizeHandles.getter);
    }
  }

  return v11;
}

Swift::Void __swiftcall ShapeView.updateFrame()()
{
  specialized CanvasElementView.updateFrame()();
  v1 = *(v0 + direct field offset for ShapeView._textBoxView);
  if (v1)
  {

    [v1 setNeedsLayout];
  }
}

id ShapeView.didZoom(in:)()
{
  result = *(v0 + direct field offset for ShapeView._textBoxView);
  if (result)
  {
    return [result setNeedsLayout];
  }

  return result;
}

Swift::Void __swiftcall ShapeView.beginLiveEdit()()
{
  v1 = *(v0 + direct field offset for ShapeView._textBoxView);
  if (v1)
  {
    v2 = v1;
    specialized TextBoxView.beginLiveEdit()();
  }

  specialized CanvasElementView.beginLiveEdit()();
}

Swift::Void __swiftcall ShapeView.endLiveEdit(undoable:discard:)(Swift::Bool undoable, Swift::Bool discard)
{
  v5 = *(v2 + direct field offset for ShapeView._textBoxView);
  if (v5)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x1B8);
      v8 = Strong;
      v9 = v5;
      LOBYTE(v7) = v7();

      if (v7)
      {
        v10 = &v9[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_liveUneditedModelCoordinateSpace];
        *(v10 + 1) = 0u;
        *(v10 + 2) = 0u;
        *v10 = 0u;
        v10[48] = 1;
      }
    }
  }

  specialized CanvasElementView.endLiveEdit(undoable:discard:)(undoable, discard);
}

void ShapeView.appearanceStreamView.setter(void *a1)
{
  v2 = direct field offset for ShapeView.appearanceStreamView;
  v3 = *(v1 + direct field offset for ShapeView.appearanceStreamView);
  *(v1 + direct field offset for ShapeView.appearanceStreamView) = a1;
  v8 = a1;

  v4 = ShapeView.groupLayer.getter();
  [v4 setHidden_];

  v5 = *(v1 + direct field offset for ShapeView._textBoxView);
  if (v5)
  {
    v6 = *(v1 + v2) != 0;
    v7 = v5;
    [v7 setHidden_];
  }
}

uint64_t key path getter for Shape.appearanceStreamOffset : Shape@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Shape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd);
  CRRegister.wrappedValue.getter();
  result = v5;
  if (v5)
  {

    v3 = v4;
  }

  else
  {
    v3 = 0uLL;
  }

  *a1 = v3;
  return result;
}

void ShapeView.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for ShapeView.appearanceStreamView);
}

id ShapeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShapeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void @objc ShapeView.__ivar_destroyer(uint64_t a1)
{
  v2 = *(a1 + direct field offset for ShapeView.appearanceStreamView);
}

uint64_t type metadata accessor for ShapeView()
{
  result = type metadata singleton initialization cache for ShapeView;
  if (!type metadata singleton initialization cache for ShapeView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double protocol witness for AppearanceStreamViewSupport.appearanceStreamOffset.getter in conformance ShapeView()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v5], v1);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v2 + 8))(v4, v1);
  return *&v7[1];
}

uint64_t specialized closure #1 in CanvasElementView.modelCoordinateSpace.setter()
{
  type metadata accessor for TextBox(0);
  lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

{
  type metadata accessor for LoupeElement(0);
  lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

{
  type metadata accessor for Image(0);
  lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

{
  type metadata accessor for GraphElement(0);
  lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement);
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

{
  type metadata accessor for Link(0);
  lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link);
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

{
  type metadata accessor for Signature(0);
  lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

{
  type metadata accessor for Paper(0);
  lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

{
  type metadata accessor for PaperDocumentPage(0);
  lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

{
  type metadata accessor for UnknownCanvasElement(0);
  lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement);
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

{
  type metadata accessor for Shape(0);
  lazy protocol witness table accessor for type Shape and conformance Shape(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  swift_getKeyPath();
  return Capsule.Ref.subscript.setter();
}

uint64_t outlined init with copy of Capsule<Shape>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for specialized closure #1 in CanvasElementView.modelCoordinateSpace.setter()
{
  return specialized closure #1 in CanvasElementView.modelCoordinateSpace.setter();
}

{
  return specialized closure #1 in CanvasElementView.modelCoordinateSpace.setter();
}

{
  return specialized closure #1 in CanvasElementView.modelCoordinateSpace.setter();
}

{
  return specialized closure #1 in CanvasElementView.modelCoordinateSpace.setter();
}

{
  return specialized closure #1 in CanvasElementView.modelCoordinateSpace.setter();
}

{
  return specialized closure #1 in CanvasElementView.modelCoordinateSpace.setter();
}

{
  return specialized closure #1 in CanvasElementView.modelCoordinateSpace.setter();
}

{
  return specialized closure #1 in CanvasElementView.modelCoordinateSpace.setter();
}

{
  return specialized closure #1 in CanvasElementView.modelCoordinateSpace.setter();
}

{
  return specialized closure #1 in CanvasElementView.modelCoordinateSpace.setter();
}

uint64_t partial apply for closure #1 in ShapeView.canvasElementImage.getter(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = (v1 + v7);
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  v17 = v13[3];
  v18 = *(v1 + v8);
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in ShapeView.canvasElementImage.getter(v14, v15, v16, v17, a1, v9, v10, v11, v12, v1 + v6, v18);
}

uint64_t _s8PaperKit9ShapeTypeOWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8PaperKit5ColorVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ShapeType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void specialized ShapeView.init(coder:)()
{
  *(v0 + direct field offset for ShapeView.$__lazy_storage_$_shapeLayer) = 0;
  *(v0 + direct field offset for ShapeView.$__lazy_storage_$_endLineEndLayer) = 0;
  *(v0 + direct field offset for ShapeView.$__lazy_storage_$_startLineEndLayer) = 0;
  *(v0 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer) = 0;
  *(v0 + direct field offset for ShapeView.showsSignaturePopover) = 0;
  *(v0 + direct field offset for ShapeView.analytics_inputSource) = 68;
  *(v0 + direct field offset for ShapeView.analytics_documentType) = 68;
  *(v0 + direct field offset for ShapeView._textBoxView) = 0;
  *(v0 + direct field offset for ShapeView.appearanceStreamView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id specialized ShapeView.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v36 - v5;
  v7 = [v1 window];
  if (!v7)
  {
    return 0;
  }

  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v8, v2);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v3 + 8))(v6, v2);
  v9 = v41;
  [v1 bounds];
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MidY = CGRectGetMidY(v43);
  CGAffineTransformMakeRotation(&t1, v9);
  tx = t1.tx;
  ty = t1.ty;
  v37 = *&t1.a;
  v36 = *&t1.c;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v22 = t1.tx;
  v23 = t1.ty;
  *&t2.a = v37;
  *&t2.c = v36;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v38, &t1, &t2);
  v24 = v38.tx;
  v25 = v38.ty;
  v37 = *&v38.a;
  v36 = *&v38.c;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v22;
  t1.ty = v23;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v24;
  t1.ty = v25;
  CGAffineTransformConcat(&v38, &t1, &t2);
  v26 = v38.tx;
  v27 = v38.ty;
  v37 = *&v38.a;
  v36 = *&v38.c;
  [v1 bounds];
  *&t1.a = v37;
  *&t1.c = v36;
  t1.tx = v26;
  t1.ty = v27;
  v45 = CGRectApplyAffineTransform(v44, &t1);
  v28 = v45.origin.x;
  v29 = v45.origin.y;
  v30 = v45.size.width;
  v31 = v45.size.height;
  v32 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
  v33 = [objc_opt_self() bezierPathWithRoundedRect:v28 cornerRadius:{v29, v30, v31, 20.0}];
  [v32 setVisiblePath_];

  v34 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:v1 parameters:v32];
  return v34;
}

uint64_t lazy protocol witness table accessor for type Shape and conformance Shape(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent()
{
  result = type metadata singleton initialization cache for MagicPaperUsageHandwritingSynthesisEvent;
  if (!type metadata singleton initialization cache for MagicPaperUsageHandwritingSynthesisEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MagicPaperUsageHandwritingSynthesisEvent()
{
  type metadata accessor for String?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t MagicPaperUsageHandwritingSynthesisEvent.CodingKeys.rawValue.getter(char a1)
{
  result = 0x6C69636E65507369;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 0x79636E6574616CLL;
      break;
    case 3:
      result = 0x6874616D5F6D756ELL;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6F7274735F6D756ELL;
      break;
    case 7:
      result = 0x747865745F6D756ELL;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 1868852853;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1DA6CE810](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x1DA6CE810](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1DA6CE810](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase and conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase and conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase and conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase and conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase and conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase and conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase and conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase and conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase and conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase and conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys(char *a1, char *a2)
{
  v2 = *a2;
  v3 = MagicPaperUsageHandwritingSynthesisEvent.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MagicPaperUsageHandwritingSynthesisEvent.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MagicPaperUsageHandwritingSynthesisEvent.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys()
{
  MagicPaperUsageHandwritingSynthesisEvent.CodingKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MagicPaperUsageHandwritingSynthesisEvent.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageHandwritingSynthesisEvent.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = MagicPaperUsageHandwritingSynthesisEvent.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageHandwritingSynthesisEvent.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Void __swiftcall MagicPaperUsageHandwritingSynthesisEvent.finalize()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent();
  if ((*(v1 + *(v12 + 72)) & 1) == 0)
  {
    v13 = v12;
    v27 = *(v12 + 72);
    v28 = v6;
    Strong = swift_unknownObjectWeakLoadStrong();
    v15 = [objc_opt_self() activePencil];
    v16 = [v15 isConnected];

    *v1 = v16;
    v29 = static Locale.preferredLanguages.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v17 = BidirectionalCollection<>.joined(separator:)();
    v19 = v18;

    *(v1 + 8) = v17;
    *(v1 + 16) = v19;
    if (Strong)
    {
      v20 = Strong;
      specialized MagicPaperUsageAnalyticsEvent.countGroups(in:)(v20);
    }

    outlined init with copy of Date?(v1 + *(v13 + 68), v4);
    v21 = v28;
    if ((*(v28 + 48))(v4, 1, v5) == 1)
    {
      outlined destroy of Date?(v4);
    }

    else
    {
      (*(v21 + 32))(v11, v4, v5);
      Date.init()();
      Date.timeIntervalSince(_:)();
      v23 = v22;
      v24 = *(v21 + 8);
      v24(v8, v5);
      v24(v11, v5);
      v25 = v23 * 1000.0;
      *(v1 + 28) = v25;
    }

    *(v1 + v27) = 1;
  }
}

uint64_t MagicPaperUsageHandwritingSynthesisEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit05MagicD30UsageHandwritingSynthesisEventV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[8] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[7] = *(v3 + 24);
    v10[6] = 8;
    lazy protocol witness table accessor for type MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase and conformance MagicPaperUsageHandwritingSynthesisEvent.SynthesisUsecase();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[5] = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[4] = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[3] = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[2] = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for AnalyticsEvent.undoEvent() in conformance MagicPaperUsageHandwritingSynthesisEvent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 25) == 1)
  {
    v9 = *(v5 + 56);

    return v9(a2, 1, 1, a1, v6);
  }

  else
  {
    v15 = v5;
    result = outlined init with copy of MagicPaperUsageHandwritingSynthesisEvent(v2, v8);
    v8[*(a1 + 72)] = 0;
    v8[25] = 1;
    v11 = *(v2 + 32);
    v12 = __OFSUB__(0, v11);
    v13 = -v11;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      *(v8 + 4) = v13;
      outlined init with take of MagicPaperUsageHandwritingSynthesisEvent(v8, a2);
      return (*(v15 + 56))(a2, 0, 1, a1);
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for MagicPaperUsageHandwritingSynthesisEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MagicPaperUsageHandwritingSynthesisEvent and conformance MagicPaperUsageHandwritingSynthesisEvent(&lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent and conformance MagicPaperUsageHandwritingSynthesisEvent);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type MagicPaperUsageHandwritingSynthesisEvent and conformance MagicPaperUsageHandwritingSynthesisEvent(&lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent and conformance MagicPaperUsageHandwritingSynthesisEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type MagicPaperUsageHandwritingSynthesisEvent and conformance MagicPaperUsageHandwritingSynthesisEvent(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of MagicPaperUsageHandwritingSynthesisEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of MagicPaperUsageHandwritingSynthesisEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagicPaperUsageHandwritingSynthesisEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageHandwritingSynthesisEvent.CodingKeys and conformance MagicPaperUsageHandwritingSynthesisEvent.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MagicPaperUsageHandwritingSynthesisEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MagicPaperUsageHandwritingSynthesisEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t specialized MagicPaperUsageHandwritingSynthesisEvent.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MagicPaperUsageHandwritingSynthesisEvent.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

Swift::Void __swiftcall InlineDrawingTextAttachmentView.didMoveToWindow()()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for InlineDrawingTextAttachmentView();
  objc_msgSendSuper2(&v7, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    v2 = OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropInteraction;
    if (*&v0[OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropInteraction])
    {
      return;
    }

    v3 = [objc_allocWithZone(MEMORY[0x1E69DC9B8]) initWithDelegate_];
    v4 = *&v0[v2];
    *&v0[v2] = v3;
    v5 = v3;

    if (!v5)
    {
      __break(1u);
      return;
    }

    [v0 addInteraction_];
  }

  else
  {
    v6 = OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropInteraction;
    if (!*&v0[OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropInteraction])
    {
      return;
    }

    [v0 removeInteraction_];
    v5 = *&v0[v6];
    *&v0[v6] = 0;
  }
}

uint64_t InlineDrawingTextAttachmentView.acceptedDropLayouts.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView____lazy_storage___acceptedDropLayouts;
  if (*(v0 + OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView____lazy_storage___acceptedDropLayouts))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView____lazy_storage___acceptedDropLayouts);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit6Layout_pXpGMd);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D405C110;
    *(v2 + 32) = type metadata accessor for PaperLayout();
    *(v2 + 40) = &protocol witness table for PaperLayout;
    *(v2 + 48) = type metadata accessor for ImageLayout();
    *(v2 + 56) = &protocol witness table for ImageLayout;
    *(v2 + 64) = type metadata accessor for LinkLayout();
    *(v2 + 72) = &protocol witness table for LinkLayout;
    *(v2 + 80) = type metadata accessor for TextBoxLayout();
    *(v2 + 88) = &protocol witness table for TextBoxLayout;
    *(v0 + v1) = v2;
  }

  return v2;
}

void closure #1 in InlineDrawingTextAttachmentView.dropInteraction(_:performDrop:)(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = InlineDrawingTextAttachmentView.acceptedDropLayouts.getter();
  v4 = (v3 + 40);
  v5 = -*(v3 + 16);
  v6 = -1;
  while (1)
  {
    if (v5 + v6 == -1)
    {

      v11 = 0;
      goto LABEL_7;
    }

    if (++v6 >= *(v3 + 16))
    {
      break;
    }

    v7 = v4 + 2;
    v8 = *v4;
    v9 = [v2 itemProvider];
    v10 = (*(v8 + 32))();

    v4 = v7;
    if (v10)
    {

      v11 = [v2 itemProvider];
LABEL_7:
      *a2 = v11;
      return;
    }
  }

  __break(1u);
}

id InlineDrawingTextAttachmentView.init(frame:drawing:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  *&v6[OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropInteraction] = 0;
  v6[OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropSessionType] = 3;
  *&v6[OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView____lazy_storage___acceptedDropLayouts] = 0;
  outlined init with copy of PKDrawing?(a1, &v23 - v13);
  v15 = type metadata accessor for PKDrawing();
  v16 = *(v15 - 8);
  v18 = 0;
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    PKDrawing._bridgeToObjectiveC()(v17);
    v18 = v19;
    (*(v16 + 8))(v14, v15);
  }

  v20 = type metadata accessor for InlineDrawingTextAttachmentView();
  v23.receiver = v6;
  v23.super_class = v20;
  v21 = objc_msgSendSuper2(&v23, sel_initWithFrame_drawing_, v18, a2, a3, a4, a5);

  outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9PencilKit9PKDrawingVSgMd);
  return v21;
}

id InlineDrawingTextAttachmentView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropInteraction] = 0;
  v1[OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropSessionType] = 3;
  *&v1[OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView____lazy_storage___acceptedDropLayouts] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InlineDrawingTextAttachmentView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id InlineDrawingTextAttachmentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InlineDrawingTextAttachmentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL specialized InlineDrawingTextAttachmentView.selectionInteraction(_:canPerformAction:withSender:inAttachment:)()
{
  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v0 = [objc_opt_self() generalPasteboard];
  v1 = [v0 itemProviders];

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSItemProvider);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v18 = v2;
  if (!v3)
  {
LABEL_24:
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  while (1)
  {
    v4 = 0;
    v19 = v2 & 0xFFFFFFFFFFFFFF8;
    v20 = v2 & 0xC000000000000001;
    v5 = v2 + 32;
    v6 = MEMORY[0x1E69E7CC0];
LABEL_6:
    if (v20)
    {
      v7 = MEMORY[0x1DA6CE0C0](v4, v18);
    }

    else
    {
      if (v4 >= *(v19 + 16))
      {
        goto LABEL_22;
      }

      v7 = *(v5 + 8 * v4);
    }

    v8 = v7;
    if (!__OFADD__(v4++, 1))
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v3 = __CocoaSet.count.getter();
    v18 = v2;
    if (!v3)
    {
      goto LABEL_24;
    }
  }

  v10 = InlineDrawingTextAttachmentView.acceptedDropLayouts.getter();
  v11 = v10 + 40;
  v2 = -*(v10 + 16);
  v12 = -1;
  do
  {
    if (v2 + v12 == -1)
    {

      if (v4 == v3)
      {
        goto LABEL_25;
      }

      goto LABEL_6;
    }

    if (++v12 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v13 = v11 + 16;
    v14 = (*(*v11 + 32))(v8);
    v11 = v13;
  }

  while ((v14 & 1) == 0);

  MEMORY[0x1DA6CD190](v15);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v2 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v6 = v21;
  if (v4 != v3)
  {
    goto LABEL_6;
  }

LABEL_25:

  if (v6 >> 62)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v17 != 0;
}

void specialized InlineDrawingTextAttachmentView.selectionInteractionDidPaste(_:at:in:)(double a1, double a2)
{
  v5 = [objc_opt_self() generalPasteboard];
  v6 = [v5 itemProviders];

  isa = v6;
  if (!v6)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSItemProvider);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSItemProvider);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v7 >> 62)
  {
    v14 = __CocoaSet.count.getter();

    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v8)
    {
      goto LABEL_14;
    }
  }

  v9 = [v2 superview];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    do
    {
      if (v11)
      {

        goto LABEL_13;
      }

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v13 = v10;
      }

      v12 = [v10 superview];

      v10 = v12;
    }

    while (v12);
    if (!v11)
    {
      goto LABEL_14;
    }

LABEL_13:
    [v11 _upgradeDrawingAtCharacterIndex_itemProviders_insertionLocationInDrawing_];
  }

LABEL_14:
}

uint64_t specialized InlineDrawingTextAttachmentView.dropInteraction(_:canHandle:)(void *a1)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D4058CF0;
  *(v3 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v3 + 40) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  LOBYTE(v3) = [a1 hasItemsConformingToTypeIdentifiers_];

  if (v3)
  {
    return 0;
  }

  result = [v1 superview];
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  do
  {
    if (v8)
    {

      goto LABEL_10;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v10 = v7;
    }

    v9 = [v7 superview];

    v7 = v9;
  }

  while (v9);
  if (!v8)
  {
    return 0;
  }

LABEL_10:
  if (![v8 _canSelectDrawing])
  {
LABEL_27:

    return 0;
  }

  v11 = [a1 localDragSession];
  if (!v11)
  {
    v20 = 0u;
    v21 = 0u;
LABEL_20:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v20, &_sypSgMd);
    goto LABEL_21;
  }

  v12 = [v11 localContext];
  swift_unknownObjectRelease();
  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {

    if (v18 == v1)
    {
      goto LABEL_27;
    }
  }

LABEL_21:
  result = InlineDrawingTextAttachmentView.acceptedDropLayouts.getter();
  v13 = result;
  v14 = result + 40;
  v15 = -*(result + 16);
  v16 = -1;
  while (1)
  {
    if (v15 + v16 == -1)
    {

      goto LABEL_27;
    }

    if (++v16 >= *(v13 + 16))
    {
      break;
    }

    v17 = v14 + 16;
    result = (*(*v14 + 24))(a1);
    v14 = v17;
    if (result)
    {

      return 1;
    }
  }

  __break(1u);
  return result;
}

id specialized InlineDrawingTextAttachmentView.dropInteraction(_:sessionDidUpdate:)(void *a1)
{
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [a1 locationInView_];
  v25.x = v11;
  v25.y = v12;
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  if (CGRectContainsPoint(v26, v25))
  {
    v13 = OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropSessionType;
    *(v1 + OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropSessionType) = 0;
    v14 = [a1 localDragSession];
    if (v14)
    {
      v15 = [v14 localContext];
      swift_unknownObjectRelease();
      if (v15)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      v22 = v20;
      v23 = v21;
      if (*(&v21 + 1))
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
        if (swift_dynamicCast())
        {
          v18 = [v1 isDescendantOfView_];

          if (v18)
          {
            *(v1 + v13) = 2;
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(&v22, &_sypSgMd);
LABEL_15:
    if (*(v1 + v13))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    return [objc_allocWithZone(MEMORY[0x1E69DC9C0]) initWithDropOperation_];
  }

  v16 = objc_allocWithZone(MEMORY[0x1E69DC9C0]);

  return [v16 initWithDropOperation_];
}

void specialized InlineDrawingTextAttachmentView.dropInteraction(_:performDrop:)(void *a1)
{
  v2 = v1;
  v4 = [v2 superview];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      if (v6)
      {

        goto LABEL_9;
      }

      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v8 = v5;
      }

      v7 = [v5 superview];

      v5 = v7;
    }

    while (v7);
    if (!v6)
    {
      return;
    }

LABEL_9:
    [a1 locationInView_];
    v10 = v9;
    v12 = v11;
    [v2 drawingTransform];
    CGAffineTransformInvert(&v31, &aBlock);
    aBlock = v31;
    v33.x = v10;
    v33.y = v12;
    v13 = CGPointApplyAffineTransform(v33, &aBlock);
    v14 = [a1 items];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&aBlock.a = MEMORY[0x1E69E7CC0];
    if (v15 >> 62)
    {
      goto LABEL_24;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v2; v16; i = v2)
    {
      v2 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1DA6CE0C0](v2, v15);
        }

        else
        {
          if (v2 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v17 = *(v15 + 8 * v2 + 32);
        }

        v18 = v17;
        v19 = (v2 + 1);
        if (__OFADD__(v2, 1))
        {
          break;
        }

        *&v31.a = v17;
        closure #1 in InlineDrawingTextAttachmentView.dropInteraction(_:performDrop:)(&v31, &v30);

        if (v30)
        {
          MEMORY[0x1DA6CD190]();
          if (*((*&aBlock.a & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&aBlock.a & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        ++v2;
        if (v19 == v16)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v16 = __CocoaSet.count.getter();
    }

LABEL_25:

    v20 = [i _characterIndex];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSItemProvider);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v6 _upgradeDrawingAtCharacterIndex_itemProviders_insertionLocationInDrawing_];

    v22 = OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropSessionType;
    v23 = i[OBJC_IVAR____TtC8PaperKit31InlineDrawingTextAttachmentView_dropSessionType];
    if (v23 == 3)
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for Analytics();
      inited = swift_initStaticObject();

      v25 = swift_allocObject();
      *(v25 + 16) = inited;
      *(v25 + 24) = v23;
      v26 = MEMORY[0x1DA6CCED0](0xD00000000000001ELL, 0x80000001D4080710);
      v27 = swift_allocObject();
      *(v27 + 16) = partial apply for implicit closure #1 in Analytics.recordDragAndDropEvent(type:);
      *(v27 + 24) = v25;
      *&aBlock.tx = partial apply for closure #1 in Analytics.sendEventLazy(key:payload:);
      *&aBlock.ty = v27;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
      *&aBlock.d = &block_descriptor_43;
      v28 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v28);

      i[v22] = 3;
    }
  }
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence3RefVyAF10CRRegisterVy8PaperKit12TaggedStrokeOGGG_AF04WeakE0VyANGs5NeverOTg503_s8g76Kit13CanvasMembersV5allInAC9Coherence7CapsuleVyxG_tcAE4CRDTRzAA09ContainerC7b9RzlufcAE7ke6VyAE10f6VyAA12iJ18OGGAE0M0VyAQGXEfU_Tf1cn_n(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = v33 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v7 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v9 = v33 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v41 = v9;
  v33[1] = v1;
  v52 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v52;
  v12 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v14 = result;
  v15 = 0;
  v42 = v7;
  v43 = v3;
  v38 = v3 + 8;
  v39 = v3 + 16;
  v36 = a1;
  v37 = v7 + 32;
  v34 = a1 + 64;
  v35 = v10;
  v40 = a1 + 56;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v50 = 1 << v14;
    v51 = v14 >> 6;
    v17 = *(a1 + 36);
    v48 = v15;
    v49 = v17;
    v18 = *(a1 + 48);
    v19 = v43;
    v20 = *(v43 + 16);
    v21 = v45;
    v22 = v47;
    v20(v45, v18 + *(v43 + 72) * v14, v47);
    v20(v46, v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    v23 = v41;
    WeakRef.init<A>(_:)();
    (*(v19 + 8))(v21, v22);
    v52 = v11;
    v25 = *(v11 + 16);
    v24 = *(v11 + 24);
    if (v25 >= v24 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
      v11 = v52;
    }

    *(v11 + 16) = v25 + 1;
    result = (*(v42 + 32))(v11 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v25, v23, v44);
    a1 = v36;
    v16 = 1 << *(v36 + 32);
    v12 = v40;
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v26 = *(v40 + 8 * v51);
    if ((v26 & v50) == 0)
    {
      goto LABEL_23;
    }

    if (v49 != *(v36 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v14 & 0x3F));
    if (v27)
    {
      v16 = __clz(__rbit64(v27)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v51 << 6;
      v29 = v51 + 1;
      v30 = (v34 + 8 * v51);
      while (v29 < (v16 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v14, v49, 0);
          v16 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v14, v49, 0);
    }

LABEL_4:
    v15 = v48 + 1;
    v14 = v16;
    if (v48 + 1 == v35)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void PKStroke.collectVisibleLeafStrokes(in:leafStrokes:)(uint64_t a1, void **a2)
{
  v5 = type metadata accessor for PKStroke();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v31 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = *(v6 + 16);
  v13(v31 - v14, v2, v5);
  type metadata accessor for PKStrokeCoherenceSubstrokes(0);
  if (swift_dynamicCast())
  {
    v33 = v13;
    v15 = a1;
    v16 = a2;
    v17 = v35;
    v18 = v15;
    v19 = [v35 _substrokesInDrawing_];
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = *(v20 + 16);
    if (v21)
    {
      v31[1] = v20;
      v32 = v17;
      v22 = v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v34 = *(v6 + 72);
      v23 = (v6 + 8);
      v24 = v33;
      do
      {
        v24(v12, v22, v5);
        PKStroke.collectVisibleLeafStrokes(in:leafStrokes:)(v18, v16);
        (*v23)(v12, v5);
        v22 += v34;
        --v21;
      }

      while (v21);
    }

    else
    {
    }
  }

  else
  {
    isa = PKStroke._bridgeToObjectiveC()().super.isa;
    v26 = [(objc_class *)isa _isHidden];

    if ((v26 & 1) == 0)
    {
      v13(v9, v2, v5);
      v27 = *a2;
      v28 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v27);
      }

      v27[2] = v30 + 1;
      (*(v28 + 32))(v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v30, v9, v5);
      *a2 = v27;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CanvasSelectionType(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t WeakTagged_10<>.init(from:)(uint64_t a1)
{
  v2 = type metadata accessor for CRCodingError();
  _s9Coherence13CRCodingErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198]);
  swift_allocError();
  *v3 = 0xD000000000000024;
  v3[1] = 0x80000001D408B1D0;
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E6995188], v2);
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Decodable.init(from:) in conformance <> WeakTagged_10<A>(uint64_t a1)
{
  v2 = type metadata accessor for CRCodingError();
  _s9Coherence13CRCodingErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198]);
  swift_allocError();
  *v3 = 0xD000000000000024;
  v3[1] = 0x80000001D408B1D0;
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E6995188], v2);
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CanvasMembers(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for CanvasMembers(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CanvasMembers.CodingKeys()
{
  if (*v0)
  {
    return 0x73656B6F727473;
  }

  else
  {
    return 0x6C457361766E6163;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CanvasMembers.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C457361766E6163 && a2 == 0xEE0073746E656D65;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656B6F727473 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for static IntCaseIterable.intCases.getter in conformance CanvasMembers.CodingKeys(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys();
  v5 = lazy protocol witness table accessor for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys();

  return MEMORY[0x1EEDF56F8](a1, a2, v4, v5);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CanvasMembers.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CanvasMembers.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t closure #2 in CanvasMembers.init<A>(allIn:)(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, a1, v3, v5);
  WeakTagged_10.tag.getter();
  v9 = v11;
  v10 = v12;
  MEMORY[0x1DA6CB7A0](v3);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  WeakTagged_10.init(_:id:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t CanvasMembers.singleImageSelected()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  if (*(a1 + 16) == 1 && !*(a2 + 16))
  {
    specialized Collection.first.getter(a1, v8);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
      return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
    }

    else
    {
      WeakTagged_10.tagged2.getter();
      return (*(v13 + 8))(v8, v12);
    }
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
    v10 = *(*(v9 - 8) + 56);

    return v10(a3, 1, 1, v9);
  }
}

uint64_t closure #1 in CanvasMembers.strokeArray(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = (&v25 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  v16 = *(v10 + 16);
  v28 = a1;
  v26 = v16;
  v16(v13, a1, v9);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  WeakRef.init<A>(_:)();
  type metadata accessor for PKDrawingStruct(0);
  _s9Coherence13CRCodingErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
  WeakRef.subscript.getter();
  (*(v10 + 8))(v15, v9);
  v18 = 1;
  v19 = (*(*(v17 - 8) + 48))(v8, 1, v17);
  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  v20 = v19 == 1;
  v21 = v31;
  if (!v20)
  {
    v26(v13, v28, v9);
    v22 = v27;
    Ref.init<A>(_:)();
    _s8PaperKit21PKStrokeCoherenceBaseC10initStroke13strokeNodeRef2in06PencilB00C0V0D00J0VyAJ10CRRegisterVyAA06TaggedG0OGG_AJ7CapsuleVyxGtAJ4CRDTRzlFZAA15PKDrawingStructV_Tt2g5(v22, v32, v21);
    (*(v29 + 8))(v22, v30);
    v18 = 0;
  }

  v23 = type metadata accessor for PKStroke();
  return (*(*(v23 - 8) + 56))(v21, v18, 1, v23);
}

uint64_t _s8PaperKit21PKStrokeCoherenceBaseC10initStroke13strokeNodeRef2in06PencilB00C0V0D00J0VyAJ10CRRegisterVyAA06TaggedG0OGG_AJ7CapsuleVyxGtAJ4CRDTRzlFZAA15PKDrawingStructV_Tt2g5@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v94 = v83 - v6;
  v90 = type metadata accessor for CRKeyPath();
  v93 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v92 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v95 = *(v8 - 8);
  v96 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v99 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v106 = v83 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v100 = v83 - v13;
  v88 = type metadata accessor for TaggedStroke(0);
  v14 = MEMORY[0x1EEE9AC00](v88);
  v89 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v87 = v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v86 = v83 - v18;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v109 = *(v101 - 8);
  v19 = MEMORY[0x1EEE9AC00](v101);
  v98 = v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v91 = v83 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v102 = v83 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v104 = *(v24 - 8);
  v105 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v83 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = v83 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v107 = *(v31 - 8);
  v108 = v31;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v85 = v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = v83 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = v83 - v37;
  v39 = type metadata accessor for PKDrawingStruct(0);
  v40 = _s9Coherence13CRCodingErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
  Ref.subscript.getter();
  (*(v28 + 16))(v30, a1, v27);
  (*(v104 + 16))(v26, a2, v105);
  v41 = _s8PaperKit17PKStrokeCoherenceC13strokeNodeRef2inACSg0D00G0VyAG10CRRegisterVyAA12TaggedStrokeOGG_AG7CapsuleVyxGtcAG4CRDTRzlufCAA15PKDrawingStructV_Tt1g5(v30, v26);
  if (v41)
  {
    v42 = v41;
    static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

    return (*(v107 + 8))(v38, v108);
  }

  v83[1] = v40;
  v83[2] = v39;
  v104 = v27;
  v44 = v86;
  v97 = v36;
  v45 = v90;
  v105 = a1;
  v46 = v100;
  v47 = v87;
  CRRegister.value.getter();
  v48 = v89;
  _s8PaperKit12TaggedStrokeOWObTm_0(v47, v89, type metadata accessor for TaggedStroke);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v84 = v38;
  if (EnumCaseMultiPayload == 1)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
    v51 = *(v50 - 8);
    v52 = v44;
    (*(v51 + 32))(v44, v48, v50);
    (*(v51 + 56))(v44, 0, 1, v50);
  }

  else
  {
    _s8PaperKit12TaggedStrokeOWOhTm_0(v48, type metadata accessor for TaggedStroke);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
    v52 = v44;
    (*(*(v53 - 8) + 56))(v44, 1, 1, v53);
  }

  v54 = v45;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd);
  v56 = *(v55 - 8);
  v57 = (*(v56 + 48))(v52, 1, v55);
  v59 = v91;
  v58 = v92;
  if (v57 == 1)
  {
    goto LABEL_11;
  }

  Ref.subscript.getter();
  (*(v56 + 8))(v52, v55);
  v60 = v109;
  v61 = v101;
  v62 = v102;
  (*(v109 + 32))(v102, v59, v101);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  Reference.identity.getter();
  v63 = v58;
  v64 = v94;
  CRKeyPath.uuid.getter();
  (*(v93 + 8))(v63, v54);
  v66 = v95;
  v65 = v96;
  if ((*(v95 + 48))(v64, 1, v96) == 1)
  {
    __break(1u);
LABEL_11:
    outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  (*(v66 + 32))(v46, v64, v65);
  v105 = *(v66 + 16);
  v105(v106, v46, v65);
  v67 = *(v60 + 16);
  v68 = v98;
  v67(v98, v62, v61);
  v69 = v108;
  v70 = *(v107 + 16);
  v70(v97, v84, v108);
  v71 = objc_allocWithZone(type metadata accessor for PKStrokeCoherenceSubstrokes(0));
  v72 = v61;
  v73 = v71;
  v67(&v71[OBJC_IVAR___PKStrokeCoherenceSubstrokes_substrokes], v68, v72);
  v74 = v99;
  v75 = v105;
  v105(v99, v106, v65);
  v76 = v85;
  v70(v85, v97, v69);
  v75(&v73[OBJC_IVAR___PKStrokeCoherenceBase_identity], v74, v65);
  v70(&v73[OBJC_IVAR___PKStrokeCoherenceBase_strokeNode], v76, v69);
  v77 = type metadata accessor for PKStrokeCoherenceBase(0);
  v110.receiver = v73;
  v110.super_class = v77;
  v78 = objc_msgSendSuper2(&v110, sel_init);
  v79 = *(v107 + 8);
  v79(v97, v69);
  v80 = *(v109 + 8);
  v109 += 8;
  v81 = v101;
  v80(v98, v101);
  v82 = *(v66 + 8);
  v82(v106, v65);
  v79(v76, v69);
  v82(v99, v65);
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  v82(v100, v65);
  v80(v102, v81);
  return (v79)(v84, v69);
}

uint64_t CanvasMembers.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit13CanvasMembersV10CodingKeysOGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGGMd);
  lazy protocol witness table accessor for type Set<WeakTagged_10<TaggedCanvasElement>> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<WeakTagged_10<TaggedCanvasElement>> and conformance <> Set<A>, &lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    lazy protocol witness table accessor for type Set<WeakRef<CRRegister<TaggedStroke>>> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<WeakRef<CRRegister<TaggedStroke>>> and conformance <> Set<A>, &lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CanvasMembers(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (_sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(*a1, *a2) & 1) != 0 && (_sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v2, v5))
  {
    if (v4)
    {
      if (v7)
      {
        return 1;
      }
    }

    else
    {
      if (v3 == v6)
      {
        v9 = v7;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t protocol witness for Decodable.init(from:) in conformance CanvasMembers@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized CanvasMembers.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t protocol witness for CRType.copy(renamingReferences:) in conformance CanvasMembers@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CanvasMembers()
{
  lazy protocol witness table accessor for type CanvasMembers and conformance CanvasMembers();
  lazy protocol witness table accessor for type CanvasMembers and conformance CanvasMembers();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance CanvasMembers(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CanvasMembers and conformance CanvasMembers();

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

unint64_t lazy protocol witness table accessor for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys;
  if (!lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys;
  if (!lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys;
  if (!lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys;
  if (!lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys;
  if (!lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys;
  if (!lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys;
  if (!lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys);
  }

  return result;
}

uint64_t _s8PaperKit17PKStrokeCoherenceC13strokeNodeRef2inACSg0D00G0VyAG10CRRegisterVyAA12TaggedStrokeOGG_AG7CapsuleVyxGtcAG4CRDTRzlufCAA15PKDrawingStructV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v119 = a1;
  v120 = a2;
  v102 = type metadata accessor for UUID();
  v115 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v89 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v114 = &v87 - v4;
  v101 = type metadata accessor for CRKeyPath();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PKStrokePathStruct(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v106 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for PKStrokeProperties(0);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit18PKStrokePathStructVGMd);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v94 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v87 - v11;
  v88 = type metadata accessor for PKStrokeInheritedProperties(0);
  v13 = MEMORY[0x1EEE9AC00](v88);
  v105 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v104 = &v87 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v87 - v17;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v118 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v87 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v91 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v93 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v87 - v23;
  v121 = type metadata accessor for TaggedStroke(0);
  v24 = MEMORY[0x1EEE9AC00](v121);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v87 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v87 - v30;
  v92 = type metadata accessor for PKStrokeStruct(0);
  v32 = MEMORY[0x1EEE9AC00](v92);
  v111 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v90 = &v87 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v117 = &v87 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v112 = *(v37 - 8);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v87 = &v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v109 = &v87 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v87 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v45 = type metadata accessor for PKDrawingStruct(0);
  v46 = _s9Coherence13CRCodingErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
  v116 = v44;
  v108 = v45;
  v107 = v46;
  Ref.subscript.getter();
  v113 = v37;
  v110 = v43;
  CRRegister.value.getter();
  _s8PaperKit12TaggedStrokeOWObTm_0(v28, v26, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload())
  {
    _s8PaperKit12TaggedStrokeOWOhTm_0(v26, type metadata accessor for TaggedStroke);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    (*(*(v47 - 8) + 56))(v31, 1, 1, v47);
  }

  else
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
    v49 = *(v48 - 8);
    (*(v49 + 32))(v31, v26, v48);
    (*(v49 + 56))(v31, 0, 1, v48);
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v31, 1, v50) == 1)
  {
    (*(v118 + 8))(v120, v123);
    (*(*(v116 - 8) + 8))(v119);
    (*(v112 + 8))(v110, v113);
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
    return 0;
  }

  else
  {
    v53 = v90;
    v54 = v120;
    Ref.subscript.getter();
    (*(v51 + 8))(v31, v50);
    _s8PaperKit12TaggedStrokeOWObTm_0(v53, v117, type metadata accessor for PKStrokeStruct);
    (*(v118 + 16))(v122, v54, v123);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
    v56 = v103;
    v90 = v55;
    CRRegister.wrappedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<PKDrawingStruct> and conformance Capsule<A>, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
    v57 = (v91 + 48);
    v121 = (v91 + 8);
    for (i = (v91 + 32); ; (*i)(v56, v12, v20))
    {
      Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
      CRRegister.wrappedValue.getter();
      _s8PaperKit12TaggedStrokeOWOhTm_0(v18, type metadata accessor for PKStrokeInheritedProperties);
      if ((*v57)(v12, 1, v20) == 1)
      {
        break;
      }

      (*v121)(v56, v20);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
    v59 = *(v118 + 8);
    v60 = v122;
    v118 += 8;
    v122 = v59;
    (v59)(v60, v123);
    outlined init with copy of PKStrokeStruct(v117, v111, type metadata accessor for PKStrokeStruct);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18PKStrokePropertiesVGMd);
    v61 = v96;
    CRRegister.wrappedValue.getter();
    v62 = v97;
    v63 = v94;
    v64 = v98;
    (*(v97 + 16))(v94, v61 + *(v95 + 32), v98);
    _s8PaperKit12TaggedStrokeOWOhTm_0(v61, type metadata accessor for PKStrokeProperties);
    v65 = v106;
    Ref.subscript.getter();
    (*(v62 + 8))(v63, v64);
    v66 = v104;
    Ref.subscript.getter();
    v67 = v93;
    CRRegister.wrappedValue.getter();
    v68 = v105;
    Ref.subscript.getter();
    v69 = *v121;
    (*v121)(v67, v20);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    v70 = v99;
    Reference.identity.getter();
    v71 = v114;
    CRKeyPath.uuid.getter();
    (*(v100 + 8))(v70, v101);
    v72 = v102;
    result = (*(v115 + 48))(v71, 1, v102);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v107 = *(v112 + 16);
      v101 = v112 + 16;
      v107(v109, v110, v113);
      v73 = objc_allocWithZone(type metadata accessor for PKStrokeCoherence(0));
      outlined init with copy of PKStrokeStruct(v111, &v73[OBJC_IVAR___PKStrokeCoherence_model], type metadata accessor for PKStrokeStruct);
      outlined init with copy of PKStrokeStruct(v65, &v73[OBJC_IVAR___PKStrokeCoherence__path], type metadata accessor for PKStrokePathStruct);
      outlined init with copy of PKStrokeStruct(v66, &v73[OBJC_IVAR___PKStrokeCoherence_resolvedProperties], type metadata accessor for PKStrokeInheritedProperties);
      outlined init with copy of PKStrokeStruct(v68, &v73[OBJC_IVAR___PKStrokeCoherence_inheritedProperties], type metadata accessor for PKStrokeInheritedProperties);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd);
      CRRegister.wrappedValue.getter();
      v74 = v125;
      swift_endAccess();
      v108 = v69;
      if (v74)
      {
      }

      else
      {
        if (one-time initialization token for defaultInk != -1)
        {
          swift_once();
        }

        v75 = static PKStrokeCoherence.defaultInk;
        swift_beginAccess();
        v125 = v75;
        v76 = v75;
        CRRegister.wrappedValue.setter();
        swift_endAccess();
        v72 = v102;
      }

      v77 = *(v115 + 16);
      v78 = v89;
      v77(v89, v114, v72);
      v79 = v87;
      v80 = v113;
      v81 = v107;
      v107(v87, v109, v113);
      v77(&v73[OBJC_IVAR___PKStrokeCoherenceBase_identity], v78, v72);
      v81(&v73[OBJC_IVAR___PKStrokeCoherenceBase_strokeNode], v79, v80);
      v82 = type metadata accessor for PKStrokeCoherenceBase(0);
      v124.receiver = v73;
      v124.super_class = v82;
      v83 = objc_msgSendSuper2(&v124, sel_init);
      (v122)(v120, v123);
      (*(*(v116 - 8) + 8))(v119);
      v84 = *(v112 + 8);
      v84(v79, v80);
      v85 = v72;
      v86 = *(v115 + 8);
      v86(v78, v85);
      v84(v109, v80);
      _s8PaperKit12TaggedStrokeOWOhTm_0(v105, type metadata accessor for PKStrokeInheritedProperties);
      _s8PaperKit12TaggedStrokeOWOhTm_0(v104, type metadata accessor for PKStrokeInheritedProperties);
      _s8PaperKit12TaggedStrokeOWOhTm_0(v106, type metadata accessor for PKStrokePathStruct);
      _s8PaperKit12TaggedStrokeOWOhTm_0(v111, type metadata accessor for PKStrokeStruct);
      v108(v103, v20);
      _s8PaperKit12TaggedStrokeOWOhTm_0(v117, type metadata accessor for PKStrokeStruct);
      v84(v110, v80);
      v86(v114, v85);
      return v83;
    }
  }

  return result;
}

void *specialized CanvasMembers.leafStrokes(in:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKStroke();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-v10];
  v12 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  (*(v9 + 16))(v11, a1 + v12, v8);
  v24 = v11;
  v13 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in CanvasMembers.strokeArray(in:), v23, a2);
  (*(v9 + 8))(v11, v8);
  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2], 0, MEMORY[0x1E69E7CC0]);
  v25 = v14;
  v15 = v13[2];
  if (v15)
  {
    v18 = *(v5 + 16);
    v16 = v5 + 16;
    v17 = v18;
    v19 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v20 = *(v16 + 56);
    do
    {
      v17(v7, v19, v4);
      PKStroke.collectVisibleLeafStrokes(in:leafStrokes:)(a1, &v25);
      (*(v16 - 8))(v7, v4);
      v19 += v20;
      --v15;
    }

    while (v15);

    return v25;
  }

  else
  {
    v22 = v14;

    return v22;
  }
}

uint64_t specialized CanvasMembers.views(in:)(void *a1, uint64_t a2)
{
  v41 = a1;
  v40 = type metadata accessor for CRKeyPath();
  v3 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v43);
  v8 = &v33 - v7;
  v34 = MEMORY[0x1E69E7CC0];
  v44 = MEMORY[0x1E69E7CC0];
  v9 = a2 + 56;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v36 = (v3 + 8);
  v37 = v6 + 16;
  v39 = v6;
  v35 = (v6 + 8);
  v42 = a2;

  v15 = 0;
  for (i = a2 + 56; v12; v34 = v44)
  {
LABEL_10:
    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v8;
      v19 = v8;
      v20 = v43;
      v21 = (*(v39 + 16))(v18, *(v42 + 48) + *(v39 + 72) * (v17 | (v15 << 6)), v43);
      v22 = (*((*MEMORY[0x1E69E7D40] & *v41) + 0x440))(v21);
      v24 = v23;
      ObjectType = swift_getObjectType();
      v26 = v20;
      v8 = v19;
      MEMORY[0x1DA6CB5C0](v26);
      v27 = (*(v24 + 40))(ObjectType, v24);

      if (*(v27 + 16))
      {
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
        if (v29)
        {
          break;
        }
      }

      (*v36)(v5, v40);
      result = (*v35)(v19, v43);
      v9 = i;
      if (!v12)
      {
        goto LABEL_6;
      }
    }

    v30 = *v36;
    v31 = *(*(v27 + 56) + 8 * v28);
    v30(v5, v40);
    (*v35)(v19, v43);

    MEMORY[0x1DA6CD190](v32);
    v9 = i;
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

LABEL_6:
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return v34;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized CanvasMembers.init(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  AnyCanvasElementView.weakCanvasElement.getter(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);

    return MEMORY[0x1E69E7CD0];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence13WeakTagged_10Vy8PaperKit0F13CanvasElementVGGMd);
    v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D4058CF0;
    (*(v6 + 16))(v11 + v10, v8, v5);
    v12 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9Coherence13WeakTagged_10Vy8PaperKit0G13CanvasElementVG_Tt0g5Tf4g_n(v11);
    swift_setDeallocating();
    v13 = *(v6 + 8);
    v13(v11 + v10, v5);
    swift_deallocClassInstance();

    v13(v8, v5);
    return v12;
  }
}

uint64_t specialized CanvasMembers.containsLoupe.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v17[1] = v6 + 16;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      (*(v6 + 16))(v8, *(a1 + 48) + *(v6 + 72) * (__clz(__rbit64(v11)) | (v15 << 6)), v5);
      WeakTagged_10.tagged10.getter();
      (*(v6 + 8))(v8, v5);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGMd);
      if ((*(*(v16 - 8) + 48))(v4, 1, v16) != 1)
      {
        break;
      }

      v11 &= v11 - 1;
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd);
      v14 = v15;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence7WeakRefVy8PaperKit12LoupeElementVGSgMd);
    return 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {

        return 0;
      }

      v11 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized CanvasMembers.init<A>(allIn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  v30 = a2;
  v31 = a3;
  v27 = a4;
  v32 = a4;
  swift_getKeyPath();
  type metadata accessor for Capsule();
  Capsule.subscript.getter();

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    v19 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    Ref.subscript.getter();
    (*(v18 + 8))(v16, v17);
    v19 = PKDrawingStruct.allStrokes<A>(in:)(a1, a2, a3);
    _s8PaperKit12TaggedStrokeOWOhTm_0(v13, type metadata accessor for PKDrawingStruct);
  }

  v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence3RefVyAF10CRRegisterVy8PaperKit12TaggedStrokeOGGG_AF04WeakE0VyANGs5NeverOTg503_s8g76Kit13CanvasMembersV5allInAC9Coherence7CapsuleVyxG_tcAE4CRDTRzAA09ContainerC7b9RzlufcAE7ke6VyAE10f6VyAA12iJ18OGGAE0M0VyAQGXEfU_Tf1cn_n(v19);

  MEMORY[0x1EEE9AC00](v21);
  *(&v26 - 4) = a2;
  *(&v26 - 3) = a3;
  *(&v26 - 2) = v27;
  swift_getKeyPath();
  Capsule.subscript.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v22 = v29;
  v23 = CROrderedSet.map<A>(_:)();
  (*(v28 + 8))(v10, v22);
  v24 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v23);

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v20);

  return v24;
}

uint64_t specialized CanvasMembers.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit13CanvasMembersV10CodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  lazy protocol witness table accessor for type CanvasMembers.CodingKeys and conformance CanvasMembers.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGGMd);
    HIBYTE(v9) = 0;
    lazy protocol witness table accessor for type Set<WeakTagged_10<TaggedCanvasElement>> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<WeakTagged_10<TaggedCanvasElement>> and conformance <> Set<A>, &lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance <> WeakTagged_10<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    HIBYTE(v9) = 1;
    lazy protocol witness table accessor for type Set<WeakRef<CRRegister<TaggedStroke>>> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<WeakRef<CRRegister<TaggedStroke>>> and conformance <> Set<A>, &lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t lazy protocol witness table accessor for type Set<WeakTagged_10<TaggedCanvasElement>> and conformance <> Set<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(a2, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Set<WeakRef<CRRegister<TaggedStroke>>> and conformance <> Set<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(a2, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s9Coherence13CRCodingErrorOACs0C0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of PKStrokeStruct(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8PaperKit12TaggedStrokeOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Capsule<>.isTextBox.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  Capsule<>.sharedCanvasElement.getter(a1, a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
    goto LABEL_7;
  }

  SharedTagged_10.subscript.getter();
  (*(v8 + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CanvasElement_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12ShapeTextBox_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_7;
  }

  if (!*(&v14 + 1))
  {
LABEL_7:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v13, &_s8PaperKit12ShapeTextBox_pSgMd);
    v11 = 0;
    return v11 & 1;
  }

  outlined init with take of PaperKitHashable(&v13, v16);
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v11 = (*(v10 + 80))(v9, v10);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v11 & 1;
}

uint64_t Capsule<>.isFormField.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  Capsule<>.sharedCanvasElement.getter(a1, a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
    goto LABEL_7;
  }

  SharedTagged_10.subscript.getter();
  (*(v8 + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CanvasElement_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12ShapeTextBox_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_7;
  }

  if (!*(&v14 + 1))
  {
LABEL_7:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v13, &_s8PaperKit12ShapeTextBox_pSgMd);
    v11 = 0;
    return v11 & 1;
  }

  outlined init with take of PaperKitHashable(&v13, v16);
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v11 = (*(v10 + 72))(v9, v10);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v11 & 1;
}

uint64_t Capsule<>.isFixedWidth.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  Capsule<>.sharedCanvasElement.getter(a1, a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
    goto LABEL_7;
  }

  SharedTagged_10.subscript.getter();
  (*(v8 + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CanvasElement_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit12ShapeTextBox_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_7;
  }

  if (!*(&v14 + 1))
  {
LABEL_7:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v13, &_s8PaperKit12ShapeTextBox_pSgMd);
    v11 = 0;
    return v11 & 1;
  }

  outlined init with take of PaperKitHashable(&v13, v16);
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v11 = (*(v10 + 64))(v9, v10);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v11 & 1;
}

__C::CGRect __swiftcall CGRect.position(in:anchor:)(__C::CGRect in, PaperKit::LayoutAnchor anchor)
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  v10 = *anchor;
  if (v10 > 3)
  {
    if (*anchor <= 5u)
    {
      recta = in.size.height;
      x = in.origin.x;
      y = in.origin.y;
      width = in.size.width;
      if (v10 == 4)
      {
        MaxX = CGRectGetMaxX(in);
        v47.origin.x = v9;
        v47.origin.y = v8;
        v47.size.width = v7;
        v47.size.height = v6;
        v28 = MaxX - CGRectGetWidth(v47);
        if (v28 > 0.0)
        {
          v13 = v28;
        }

        else
        {
          v13 = 0.0;
        }

        v48.origin.x = x;
        v48.origin.y = y;
        v48.size.width = width;
        v48.size.height = recta;
        MidY = CGRectGetMidY(v48);
        v49.origin.x = v9;
        v49.origin.y = v8;
        v49.size.width = v7;
        v49.size.height = v6;
        v30 = MidY + CGRectGetHeight(v49) * -0.5;
        goto LABEL_34;
      }

      v35 = CGRectGetMaxX(in);
      v53.origin.x = v9;
      v53.origin.y = v8;
      v53.size.width = v7;
      v53.size.height = v6;
      v32 = v35 - CGRectGetWidth(v53);
    }

    else
    {
      if (v10 != 6)
      {
        if (v10 == 7)
        {
          MaxY = CGRectGetMaxY(in);
          v42.origin.x = v9;
          v42.origin.y = v8;
          v42.size.width = v7;
          v42.size.height = v6;
          v12 = MaxY - CGRectGetHeight(v42);
        }

        else
        {
          v34 = CGRectGetMidY(in);
          v52.origin.x = v9;
          v52.origin.y = v8;
          v52.size.width = v7;
          v52.size.height = v6;
          v12 = v34 + CGRectGetHeight(v52) * -0.5;
        }

        v13 = 0.0;
        if (v12 > 0.0)
        {
          v14 = v12;
        }

        else
        {
          v14 = 0.0;
        }

        goto LABEL_37;
      }

      x = in.origin.x;
      y = in.origin.y;
      width = in.size.width;
      recta = in.size.height;
      MidX = CGRectGetMidX(in);
      v50.origin.x = v9;
      v50.origin.y = v8;
      v50.size.width = v7;
      v50.size.height = v6;
      v32 = MidX + CGRectGetWidth(v50) * -0.5;
    }

    if (v32 > 0.0)
    {
      v13 = v32;
    }

    else
    {
      v13 = 0.0;
    }

    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = recta;
    v20 = CGRectGetMaxY(v54);
    v55.origin.x = v9;
    v55.origin.y = v8;
    v55.size.width = v7;
    v55.size.height = v6;
    Height = CGRectGetHeight(v55);
LABEL_33:
    v30 = v20 - Height;
LABEL_34:
    if (v30 > 0.0)
    {
      v14 = v30;
    }

    else
    {
      v14 = 0.0;
    }

    goto LABEL_37;
  }

  if (*anchor <= 1u)
  {
    v13 = 0.0;
    v14 = 0.0;
    if (*anchor)
    {
      goto LABEL_37;
    }

    v15 = in.origin.x;
    v16 = in.origin.y;
    v17 = in.size.width;
    rect = in.size.height;
    v18 = CGRectGetMidX(in);
    v43.origin.x = v9;
    v43.origin.y = v8;
    v43.size.width = v7;
    v43.size.height = v6;
    v19 = v18 - CGRectGetWidth(v43) * 0.5;
    if (v19 > 0.0)
    {
      v13 = v19;
    }

    else
    {
      v13 = 0.0;
    }

    v44.origin.x = v15;
    v44.origin.y = v16;
    v44.size.width = v17;
    v44.size.height = rect;
    v20 = CGRectGetMidY(v44);
    v45.origin.x = v9;
    v45.origin.y = v8;
    v45.size.width = v7;
    v45.size.height = v6;
    Height = CGRectGetHeight(v45) * 0.5;
    goto LABEL_33;
  }

  if (v10 == 2)
  {
    v22 = CGRectGetMidX(in);
    v46.origin.x = v9;
    v46.origin.y = v8;
    v46.size.width = v7;
    v46.size.height = v6;
    v23 = v22 + CGRectGetWidth(v46) * -0.5;
  }

  else
  {
    v33 = CGRectGetMaxX(in);
    v51.origin.x = v9;
    v51.origin.y = v8;
    v51.size.width = v7;
    v51.size.height = v6;
    v23 = v33 - CGRectGetWidth(v51);
  }

  v14 = 0.0;
  if (v23 > 0.0)
  {
    v13 = v23;
  }

  else
  {
    v13 = 0.0;
  }

LABEL_37:
  v36 = v13;
  v37 = v14;
  v38 = v7;
  v39 = v6;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

uint64_t CGImagePropertyOrientation.transform.getter@<X0>(uint64_t result@<X0>, __int128 *a2@<X8>)
{
  if (result > 4)
  {
    if (result > 6)
    {
      if (result == 7)
      {
        v7 = 1.57079633;
        goto LABEL_15;
      }

      if (result != 8)
      {
        goto LABEL_21;
      }
    }

    else if (result != 5)
    {
      v6 = 1.57079633;
LABEL_18:
      result = CGAffineTransformMakeRotation(&v9, v6);
      goto LABEL_19;
    }

    v6 = -1.57079633;
    goto LABEL_18;
  }

  if (result > 2)
  {
    if (result == 3)
    {
      v6 = 3.14159265;
      goto LABEL_18;
    }

    v7 = 3.14159265;
LABEL_15:
    CGAffineTransformMakeRotation(&v9, v7);
    result = CGAffineTransformScale(&v8, &v9, -1.0, 1.0);
    v4 = *&v8.a;
    v3 = *&v8.c;
    v5 = *&v8.tx;
    goto LABEL_20;
  }

  if (result == 1)
  {
    v3 = xmmword_1D4059310;
    v4 = xmmword_1D4059320;
    v5 = 0uLL;
LABEL_20:
    *a2 = v4;
    a2[1] = v3;
    a2[2] = v5;
    return result;
  }

  if (result == 2)
  {
    result = CGAffineTransformMakeScale(&v9, -1.0, 1.0);
LABEL_19:
    v4 = *&v9.a;
    v3 = *&v9.c;
    v5 = *&v9.tx;
    goto LABEL_20;
  }

LABEL_21:
  type metadata accessor for CGImagePropertyOrientation(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

BOOL CGRect.isFinite.getter(double a1, double a2, double a3, double a4)
{
  v4 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  return (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v4;
}

double CGAffineTransform.decompose(initialRotation:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v44 = v10;
  v45 = v9;
  v11 = sqrt(v6 * v6 + v5 * v5);
  v12 = sqrt(v7 * v7 + v8 * v8);
  v13 = *v2 * v8;
  v14 = v5 * v7;
  v15 = v7;
  v42 = v8;
  v43 = v7;
  v16 = *v2 < v8;
  v17 = v8;
  v18 = -v12;
  v19 = -v11;
  if (v16)
  {
    v18 = v12;
  }

  if (!v16)
  {
    v19 = v11;
  }

  v20 = v13 < v14;
  if (v13 < v14)
  {
    v21 = v18;
  }

  else
  {
    v21 = v12;
  }

  if (v20)
  {
    v22 = v19;
  }

  else
  {
    v22 = v11;
  }

  v48 = v22;
  v49 = v21;
  v23 = v2[1];
  v46 = v23;
  v24 = atan2(v5 / v22, v6 / v22);
  t1.a = v6;
  t1.b = v23;
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v24 = a2;
  }

  v47 = v24;
  v25 = -v24;
  t1.c = v15;
  t1.d = v17;
  t1.tx = v9;
  t1.ty = v10;
  v53.x = 0.5;
  v53.y = 0.5;
  v26 = CGPointApplyAffineTransform(v53, &t1);
  CGAffineTransformMakeRotation(&t1, v25);
  ty = t1.ty;
  tx = t1.tx;
  v36 = *&t1.c;
  v38 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -v26.x, -v26.y);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v33 = t1.tx;
  v32 = t1.ty;
  *&t2.a = v38;
  *&t2.c = v36;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v50, &t1, &t2);
  v34 = v50.tx;
  v41 = v50.ty;
  v37 = *&v50.c;
  v39 = *&v50.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v33;
  t1.ty = v32;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.c = v37;
  *&t1.a = v39;
  t1.tx = v34;
  t1.ty = v41;
  CGAffineTransformConcat(&v50, &t1, &t2);
  t1.a = v6;
  t1.b = v46;
  t1.c = v43;
  t1.d = v42;
  t1.tx = v45;
  t1.ty = v44;
  t2 = v50;
  CGAffineTransformConcat(&v50, &t1, &t2);
  *a1 = *&v50.tx;
  *(a1 + 16) = v48;
  *(a1 + 24) = v49;
  result = v47;
  *(a1 + 32) = v47;
  return result;
}

BOOL CGRect.almostEqual(_:threshold:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  v28.origin.x = a6;
  v28.origin.y = a7;
  v28.size.width = a8;
  v28.size.height = a9;
  IsNull = CGRectIsNull(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v25 = CGRectIsNull(v29);
  if (IsNull && (v25 & 1) != 0)
  {
    return 1;
  }

  if (IsNull == v25 && vabdd_f64(a6, a1) < a5 && vabdd_f64(a7, a2) < a5 && vabdd_f64(a8, a3) < a5)
  {
    return vabdd_f64(a9, a4) < a5;
  }

  return 0;
}

void __swiftcall Quad.init(topLeft:topRight:bottomLeft:bottomRight:)(PaperKit::Quad *__return_ptr retstr, CGPoint topLeft, CGPoint topRight, CGPoint bottomLeft, CGPoint bottomRight)
{
  retstr->topLeft.x = topLeft.x;
  retstr->topLeft.y = topLeft.y;
  retstr->topRight.x = topRight.x;
  retstr->topRight.y = topRight.y;
  retstr->bottomLeft.x = bottomLeft.x;
  retstr->bottomLeft.y = bottomLeft.y;
  retstr->bottomRight.x = bottomRight.x;
  retstr->bottomRight.y = bottomRight.y;
}

void __swiftcall CGImagePropertyOrientation.originAlignedTransform(_:)(CGAffineTransform *__return_ptr retstr, __C::CGRect a2)
{
  if (v2 <= 4)
  {
    v4 = xmmword_1D4059320;
    v5 = 0.0;
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        x = a2.origin.x;
        y = a2.origin.y;
        width = a2.size.width;
        height = a2.size.height;
        v7 = x + x + CGRectGetWidth(a2);
        v19.origin.x = x;
        v19.origin.y = y;
        v19.size.width = width;
        v19.size.height = height;
        v5 = y + y + CGRectGetHeight(v19);
        v6 = xmmword_1D406A570;
        v4 = xmmword_1D405A660;
      }

      else
      {
        v5 = a2.origin.y + a2.origin.y + CGRectGetHeight(a2);
        v6 = xmmword_1D406A570;
        v7 = 0.0;
        v4 = xmmword_1D4059320;
      }

      goto LABEL_19;
    }

    v6 = xmmword_1D4059310;
    if (v2 == 1)
    {
      v7 = 0.0;
LABEL_19:
      *&retstr->a = v4;
      *&retstr->c = v6;
      retstr->tx = v7;
      retstr->ty = v5;
      return;
    }

    if (v2 == 2)
    {
      v7 = a2.origin.x + a2.origin.x + CGRectGetWidth(a2);
      v4 = xmmword_1D405A660;
      v6 = xmmword_1D4059310;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v2 <= 6)
  {
    if (v2 != 5)
    {
      v16 = a2.origin.x;
      v17 = a2.origin.y;
      v7 = CGRectGetHeight(a2) + a2.origin.y + a2.origin.x;
      v5 = v17 - v16;
      v6 = xmmword_1D405A660;
      v4 = xmmword_1D4059310;
      goto LABEL_19;
    }

    v8 = a2.origin.x;
    v9 = a2.origin.y;
    v10 = a2.size.width;
    v11 = a2.size.height;
    v7 = CGRectGetHeight(a2) + a2.origin.y + a2.origin.x;
    v18.origin.x = v8;
    v18.origin.y = v9;
    v18.size.width = v10;
    v18.size.height = v11;
    v5 = CGRectGetWidth(v18) + v8 + v9;
    v6 = xmmword_1D405A660;
LABEL_18:
    v4 = xmmword_1D406A570;
    goto LABEL_19;
  }

  if (v2 == 7)
  {
    v7 = a2.origin.x - a2.origin.y;
    v5 = a2.origin.y - a2.origin.x;
    v6 = xmmword_1D4059320;
    v4 = xmmword_1D4059310;
    goto LABEL_19;
  }

  if (v2 == 8)
  {
    v7 = a2.origin.x - a2.origin.y;
    v5 = CGRectGetWidth(a2) + a2.origin.y + a2.origin.x;
    v6 = xmmword_1D4059320;
    goto LABEL_18;
  }

LABEL_20:
  type metadata accessor for CGImagePropertyOrientation(0);
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

__C::CGRect __swiftcall CGRect.closestRect(in:)(__C::CGRect in)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v34 = v4;
  rect = v1;
  v38.origin.x = v1;
  v9 = v2;
  v38.origin.y = v2;
  v10 = v3;
  v38.size.width = v3;
  v38.size.height = v4;
  v11 = CGRectGetWidth(v38);
  rect_8 = x;
  rect_16 = y;
  v39.origin.x = x;
  v33 = y;
  v39.origin.y = y;
  v12 = width;
  v39.size.width = width;
  v13 = height;
  v39.size.height = height;
  if (CGRectGetWidth(v39) >= v11)
  {
    v15 = v9;
    v42.origin.y = v9;
    v42.size.width = v10;
    v17 = v34;
    v42.origin.x = rect;
    v42.size.height = v34;
    MinX = CGRectGetMinX(v42);
    v43.origin.x = x;
    v43.origin.y = rect_16;
    v16 = v12;
    v18 = v10;
    v43.size.width = v16;
    v43.size.height = v13;
    if (MinX >= CGRectGetMinX(v43))
    {
      x = rect;
      v44.origin.x = rect;
      v44.origin.y = v15;
      v44.size.width = v10;
      v44.size.height = v34;
      MaxX = CGRectGetMaxX(v44);
      v45.origin.x = rect_8;
      v45.origin.y = rect_16;
      v45.size.width = v16;
      v45.size.height = v13;
      if (CGRectGetMaxX(v45) < MaxX)
      {
        v46.origin.x = rect_8;
        v46.origin.y = rect_16;
        v46.size.width = v16;
        v46.size.height = v13;
        v21 = CGRectGetMaxX(v46);
        v47.origin.x = rect;
        v47.origin.y = v15;
        v47.size.width = v10;
        v47.size.height = v34;
        x = v21 - CGRectGetWidth(v47);
      }
    }
  }

  else
  {
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = v12;
    v40.size.height = height;
    MidX = CGRectGetMidX(v40);
    v15 = v9;
    v41.origin.y = v9;
    v16 = v12;
    v41.size.width = v10;
    v17 = v34;
    v41.origin.x = rect;
    v18 = v10;
    v41.size.height = v34;
    x = MidX + CGRectGetWidth(v41) * -0.5;
  }

  v48.origin.x = x;
  v48.origin.y = v15;
  v48.size.width = v18;
  v48.size.height = v17;
  v22 = CGRectGetHeight(v48);
  v49.origin.x = rect_8;
  v49.origin.y = rect_16;
  v49.size.width = v16;
  v49.size.height = v13;
  if (CGRectGetHeight(v49) >= v22)
  {
    v52.origin.x = x;
    v52.origin.y = v15;
    v52.size.width = v18;
    v52.size.height = v17;
    MinY = CGRectGetMinY(v52);
    v53.origin.x = rect_8;
    v53.origin.y = rect_16;
    v53.size.width = v16;
    v53.size.height = v13;
    v26 = CGRectGetMinY(v53);
    v24 = v33;
    if (MinY >= v26)
    {
      v54.origin.x = x;
      v54.origin.y = v15;
      v54.size.width = v18;
      v54.size.height = v17;
      MaxY = CGRectGetMaxY(v54);
      v55.origin.x = rect_8;
      v55.origin.y = rect_16;
      v55.size.width = v16;
      v55.size.height = v13;
      v28 = CGRectGetMaxY(v55);
      v24 = v15;
      if (v28 < MaxY)
      {
        v56.origin.x = rect_8;
        v56.origin.y = rect_16;
        v56.size.width = v16;
        v56.size.height = v13;
        v29 = CGRectGetMaxY(v56);
        v57.origin.x = x;
        v57.origin.y = v15;
        v57.size.width = v18;
        v57.size.height = v17;
        v24 = v29 - CGRectGetHeight(v57);
      }
    }
  }

  else
  {
    v50.origin.x = rect_8;
    v50.origin.y = rect_16;
    v50.size.width = v16;
    v50.size.height = v13;
    MidY = CGRectGetMidY(v50);
    v51.origin.x = x;
    v51.origin.y = v15;
    v51.size.width = v18;
    v51.size.height = v17;
    v24 = MidY + CGRectGetHeight(v51) * -0.5;
  }

  v30 = x;
  v31 = v18;
  v32 = v17;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v24;
  result.origin.x = v30;
  return result;
}

double static Quad.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double CGRect.rounded(scale:)(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = a2;
  if (a1 != 0.0)
  {
    v11.origin.x = a2;
    v11.origin.y = a3;
    v11.size.width = a4;
    v11.size.height = a5;
    if (!CGRectIsNull(v11))
    {
      v8.f64[0] = a1 * v6 + a1 * a4;
      v8.f64[1] = a1 * v6;
      v9 = vrndmq_f64(v8);
      return COERCE_DOUBLE(vbslq_s8(vcgeq_f64(vsubq_f64(v8, v9), vdupq_n_s64(0x3FDF5C28F5C28F5CuLL)), vrndpq_f64(v8), *&v9).i64[1]) / a1;
    }
  }

  return v6;
}

float64_t Quad.perspectiveCorrectedSize.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v1.f64[1] = *(v0 + 16);
  v3 = vsubq_f64(vdupq_lane_s64(*v0, 0), v1);
  v2.f64[1] = *(v0 + 24);
  v4 = vsubq_f64(vdupq_lane_s64(*(v0 + 8), 0), v2);
  v5 = vsqrtq_f64(vaddq_f64(vmulq_f64(v3, v3), vmulq_f64(v4, v4)));
  v6 = vsubq_f64(vdupq_lane_s64(*(v0 + 48), 0), v1);
  v7 = vsubq_f64(vdupq_lane_s64(*(v0 + 56), 0), v2);
  v8 = vsqrtq_f64(vaddq_f64(vmulq_f64(v6, v6), vmulq_f64(v7, v7)));
  v9 = vextq_s8(v8, v8, 8uLL);
  v10 = vdivq_f64(v5, v9);
  __asm { FMOV            V3.2D, #1.0 }

  v16 = vbslq_s8(vcgtq_f64(v10, _Q3), v10, vdivq_f64(_Q3, v10));
  v17 = v16.f64[1];
  if (v16.f64[0] > v16.f64[1])
  {
    v17 = v16.f64[0];
  }

  if (v17 > 2.0)
  {
    v16 = vmulq_n_f64(v16, 2.0 / v17);
  }

  return vmulq_f64(vbslq_s8(vcgeq_f64(v9, v5), *&v9, *&v5), vextq_s8(*&v16, *&v16, 8uLL)).f64[1];
}

Swift::Int LayoutAnchor.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

__C::CGRect __swiftcall CGRect.withSafeArea(insets:in:)(UIEdgeInsets insets, __C::CGRect in)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  MinX = CGRectGetMinX(in);
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = height;
  rect_24 = CGRectGetMinY(v70);
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  v9 = CGRectGetWidth(v71) - (left + right);
  if (v9 > 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v59 = y;
  v72.origin.x = x;
  v72.origin.y = y;
  v60 = width;
  v61 = height;
  v72.size.width = width;
  v72.size.height = height;
  v11 = CGRectGetHeight(v72) - (top + bottom);
  if (v11 > 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = rect_24 + bottom;
  v73.origin.x = v66;
  v73.origin.y = v67;
  v73.size.width = v68;
  v73.size.height = v69;
  rect_16a = CGRectGetWidth(v73);
  v74.origin.x = MinX + left;
  v74.origin.y = rect_24 + bottom;
  v74.size.width = v10;
  v74.size.height = v12;
  rect_8 = CGRectGetWidth(v74);
  v75.origin.x = v66;
  v75.origin.y = v67;
  v75.size.width = v68;
  v75.size.height = v69;
  rect_24a = CGRectGetHeight(v75);
  rect = MinX + left;
  v76.origin.x = MinX + left;
  v14 = v13;
  v76.origin.y = v13;
  v63 = v10;
  v65 = v12;
  v76.size.width = v10;
  v76.size.height = v12;
  v15 = CGRectGetHeight(v76);
  if (rect_16a >= rect_8)
  {
    v37 = x;
    v16 = v59;
    v85.origin.x = x;
    v85.origin.y = v59;
    v17 = v60;
    v85.size.width = v60;
    v85.size.height = v61;
    rect_16 = CGRectGetMidX(v85);
    v86.origin.x = x;
    v86.origin.y = v59;
    v86.size.width = v60;
    v86.size.height = v61;
    CGRectGetMidY(v86);
    v48 = rect_24a < v15;
    v38 = v68;
    v18 = v69;
    v39 = v69;
    v40 = v67;
    v41 = v66;
    v42 = v61;
    if (v48)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v16 = v59;
    v17 = v60;
    v18 = v69;
    if (rect_24a < v15)
    {
      v77.origin.x = v66;
      v77.origin.y = v67;
      v19 = v68;
      v77.size.width = v68;
      v77.size.height = v69;
      v20 = CGRectGetMinX(v77);
      v78.origin.x = rect;
      v78.origin.y = v14;
      v78.size.width = v63;
      v78.size.height = v12;
      v21 = CGRectGetMinX(v78);
      if (v20 > v21)
      {
        v21 = v20;
      }

      v22 = v67;
      v23 = v68;
      v24 = v69;
      MaxX = CGRectGetMaxX(*&v21);
      v79.origin.x = rect;
      v79.origin.y = v14;
      v79.size.width = v63;
      v79.size.height = v12;
      v26 = CGRectGetMaxX(v79);
      if (v26 < MaxX)
      {
        MaxX = v26;
      }

      v80.origin.x = v66;
      v80.origin.y = v67;
      v80.size.width = v68;
      v80.size.height = v69;
      v27 = MaxX - CGRectGetWidth(v80);
      v81.origin.x = v27;
      v81.origin.y = v67;
      v81.size.width = v68;
      v81.size.height = v69;
      MinY = CGRectGetMinY(v81);
      v82.origin.x = rect;
      v82.origin.y = v14;
      v82.size.width = v63;
      v82.size.height = v12;
      v29 = CGRectGetMinY(v82);
      if (MinY > v29)
      {
        v30 = MinY;
      }

      else
      {
        v30 = v29;
      }

      v31 = v27;
      v32 = v68;
      v33 = v69;
      MaxY = CGRectGetMaxY(*(&v30 - 1));
      v83.origin.x = rect;
      v83.origin.y = v14;
      v83.size.width = v63;
      v83.size.height = v12;
      v35 = CGRectGetMaxY(v83);
      if (v35 < MaxY)
      {
        MaxY = v35;
      }

      v84.origin.y = v67;
      v84.origin.x = v66;
      v84.size.width = v68;
      v84.size.height = v69;
      v36 = MaxY - CGRectGetHeight(v84);
      v18 = v69;
      goto LABEL_33;
    }

    v87.origin.x = v66;
    v87.origin.y = v67;
    v87.size.width = v68;
    v87.size.height = v69;
    rect_16 = CGRectGetMidX(v87);
    v88.origin.x = v66;
    v88.origin.y = v67;
    v88.size.width = v68;
    v88.size.height = v69;
    CGRectGetMidY(v88);
    v42 = v61;
    v37 = x;
  }

  v41 = v37;
  v40 = v16;
  v38 = v17;
  v39 = v42;
LABEL_24:
  v43 = v41;
  v44 = v38;
  v45 = v40;
  v46 = v39;
  CGRectGetMidX(*(&v40 - 1));
  v89.origin.x = v41;
  v89.origin.y = v45;
  v89.size.width = v38;
  v89.size.height = v39;
  MidY = CGRectGetMidY(v89);
  v19 = v68;
  v48 = v63 < v68 || v65 < v18;
  if (v48)
  {
    v49 = v63 / v68;
    if (v65 / v18 < v63 / v68)
    {
      v49 = v65 / v18;
    }

    v19 = v49 * v68;
    v18 = v49 * v18;
  }

  v27 = rect_16 - v19 * 0.5;
  v36 = MidY - v18 * 0.5;
LABEL_33:
  v50 = v27;
  v51 = v19;
  v52 = v18;
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v36;
  result.origin.x = v50;
  return result;
}

double CGRect.rotated(by:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v8 = a2;
  if (a1 != 0.0)
  {
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    v10 = -(CGRectGetWidth(v29) * 0.5 + v8);
    v30.origin.x = v8;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    Height = CGRectGetHeight(v30);
    CGAffineTransformMakeTranslation(&t1, v10, -(Height * 0.5 + a3));
    tx = t1.tx;
    ty = t1.ty;
    v24 = *&t1.c;
    v25 = *&t1.a;
    CGAffineTransformMakeRotation(&t1, a1);
    v14 = *&t1.a;
    v15 = *&t1.c;
    v16 = *&t1.tx;
    *&t1.a = v25;
    *&t1.c = v24;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v14;
    *&t2.c = v15;
    *&t2.tx = v16;
    CGAffineTransformConcat(&v26, &t1, &t2);
    t1 = v26;
    v31.origin.x = v8;
    v31.origin.y = a3;
    v31.size.width = a4;
    v31.size.height = a5;
    v32 = CGRectApplyAffineTransform(v31, &t1);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    v20 = v32.size.height;
    v21 = CGRectGetWidth(v32) * 0.5 + v8;
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = v20;
    v22 = CGRectGetHeight(v33);
    CGAffineTransformMakeTranslation(&t1, v21, v22 * 0.5 + a3);
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = v20;
    *&v8 = CGRectApplyAffineTransform(v34, &t1);
  }

  return v8;
}

void CGSize.integral.getter(double a1, double a2)
{
  v2 = round(a1);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = round(a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
  }
}

void CGAffineTransform.withFrameRounded(toScale:allowZeroDimensions:)(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *v3;
  v5 = *(v3 + 1);
  v7 = v3[4];
  v8 = v3[5];
  if (a3 > 0.0)
  {
    v53 = *v3;
    rect = *(v3 + 1);
    CGAffineTransform.decompose(initialRotation:)(&t1, 0.0);
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v11 = vnegq_f64(v10);
    v12 = vdupq_n_s64(0x7FF0000000000000uLL);
    v13 = vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgeq_s64(vandq_s8(*&t1.a, v11), v12), vcgeq_s64(vandq_s8(*&t1.c, v11), v12))));
    v6 = v53;
    v5 = rect;
    if ((v13 & 1) == 0)
    {
      tx = t1.tx;
      v15 = floor(a3 * t1.a);
      v16 = ceil(a3 * t1.a);
      if (a3 * t1.a - v15 < 0.49)
      {
        v16 = v15;
      }

      v17 = vmuld_lane_f64(a3, *&t1.a, 1);
      v18 = floor(v17);
      v19 = v17 - v18;
      v20 = ceil(v17);
      if (v19 < 0.49)
      {
        v20 = v18;
      }

      v21 = vmulq_n_f64(*&t1.c, a3);
      v22 = vrndmq_f64(v21);
      v23 = v16 / a3;
      v24 = v20 / a3;
      v25 = vdivq_f64(vbslq_s8(vcgeq_f64(vsubq_f64(v21, v22), vdupq_n_s64(0x3FDF5C28F5C28F5CuLL)), vrndpq_f64(v21), v22), vdupq_lane_s64(*&a3, 0));
      if ((a1 & 1) == 0)
      {
        v26 = 1.0 / a3;
        v27 = fabs(v25.f64[0]);
        v28 = t1.c < 0.0 ? -(1.0 / a3) : 1.0 / a3;
        v29 = v27 >= v26 ? v25.f64[0] : v28;
        v25.f64[0] = v29;
        if (fabs(v25.f64[1]) < v26)
        {
          if (t1.d < 0.0)
          {
            v30 = -(1.0 / a3);
          }

          else
          {
            v30 = 1.0 / a3;
          }

          v25.f64[1] = v30;
        }
      }

      recta = v25;
      v31 = v25.f64[1];
      v54 = v23 - 0.0 * v25.f64[0];
      v52 = v24 - vmuld_lane_f64(0.0, v25, 1);
      v32 = v23;
      v33 = v24;
      v34 = v25.f64[1];
      MidX = CGRectGetMidX(*(&v25 - 1));
      v60.origin.x = v23;
      v60.origin.y = v24;
      v60.size.width = recta.f64[0];
      v60.size.height = v31;
      MidY = CGRectGetMidY(v60);
      CGAffineTransformMakeRotation(&t1, tx);
      v37 = t1.tx;
      ty = t1.ty;
      v47 = *&t1.c;
      v49 = *&t1.a;
      CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
      a = t1.a;
      b = t1.b;
      c = t1.c;
      d = t1.d;
      v43 = t1.tx;
      v44 = t1.ty;
      *&t2.a = v49;
      *&t2.c = v47;
      t2.tx = v37;
      t2.ty = ty;
      CGAffineTransformConcat(&v57, &t1, &t2);
      v45 = v57.tx;
      v46 = v57.ty;
      v48 = *&v57.c;
      v50 = *&v57.a;
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v43;
      t1.ty = v44;
      CGAffineTransformInvert(&t2, &t1);
      *&t1.a = v50;
      *&t1.c = v48;
      t1.tx = v45;
      t1.ty = v46;
      CGAffineTransformConcat(&v57, &t1, &t2);
      t1.d = recta.f64[1];
      t1.a = recta.f64[0];
      t1.b = 0.0;
      t1.c = 0.0;
      t1.tx = v54;
      t1.ty = v52;
      t2 = v57;
      CGAffineTransformConcat(&v57, &t1, &t2);
      v6 = *&v57.a;
      v5 = *&v57.c;
      v7 = v57.tx;
      v8 = v57.ty;
    }
  }

  *a2 = v6;
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Quad()
{
  Hasher.init(_seed:)();
  v0 = Quad.rawValue.getter();
  v2 = v1;
  Data.hash(into:)();
  outlined consume of Data._Representation(v0, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Quad()
{
  v0 = Quad.rawValue.getter();
  v2 = v1;
  Data.hash(into:)();

  return outlined consume of Data._Representation(v0, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Quad()
{
  Hasher.init(_seed:)();
  v0 = Quad.rawValue.getter();
  v2 = v1;
  Data.hash(into:)();
  outlined consume of Data._Representation(v0, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Quad()
{
  v0 = Quad.rawValue.getter();
  v2 = v1;
  v3 = Quad.rawValue.getter();
  v5 = v4;
  v6 = specialized static Data.== infix(_:_:)(v0, v2, v3, v4);
  outlined consume of Data._Representation(v3, v5);
  outlined consume of Data._Representation(v0, v2);
  return v6 & 1;
}

Swift::Void __swiftcall CGImagePropertyOrientation.rotate(clockwise:)(Swift::Bool clockwise)
{
  v2 = *v1 - 1;
  if (clockwise)
  {
    if (v2 < 8)
    {
      v3 = &unk_1D406A6D0;
LABEL_6:
      *v1 = v3[v2];
      return;
    }
  }

  else if (v2 < 8)
  {
    v3 = &unk_1D406A6F0;
    goto LABEL_6;
  }

  type metadata accessor for CGImagePropertyOrientation(0);
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type LayoutAnchor and conformance LayoutAnchor()
{
  result = lazy protocol witness table cache variable for type LayoutAnchor and conformance LayoutAnchor;
  if (!lazy protocol witness table cache variable for type LayoutAnchor and conformance LayoutAnchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutAnchor and conformance LayoutAnchor);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Quad(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Quad(uint64_t result, int a2, int a3)
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

Swift::Void __swiftcall CGImagePropertyOrientation.flip(horizontal:)(Swift::Bool horizontal)
{
  v2 = *v1 - 1;
  if (horizontal)
  {
    if (v2 < 8)
    {
      v3 = &unk_1D406A710;
LABEL_6:
      *v1 = v3[v2];
      return;
    }
  }

  else if (v2 < 8)
  {
    v3 = &unk_1D406A730;
    goto LABEL_6;
  }

  type metadata accessor for CGImagePropertyOrientation(0);
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

uint64_t specialized CGImagePropertyOrientation.init(rotationAngle:)(double a1)
{
  v1 = round((a1 + a1) / 3.14159265);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return dword_1D406A580[v1 & 3];
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for TypesetViewController()
{
  result = type metadata singleton initialization cache for TypesetViewController;
  if (!type metadata singleton initialization cache for TypesetViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

size_t _s8PaperKit13CanvasMembersV14canvasElements11strokeUUIDsACx_q_tcSTRzSTR_9Coherence13WeakTagged_10VyAA0kC7ElementVG0L0Rtz10Foundation4UUIDVALRt_r0_lufCSayAKG_SayAPGTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v6 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v39 - v10;
  v52 = type metadata accessor for UUID();
  v11 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v39 - v16;
  v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(a1);

  v17 = *(a2 + 16);
  v56 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
  v19 = v56;
  v42 = a2;
  if (v17)
  {
    v20 = 0;
    v21 = *(a2 + 16);
    v49 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v50 = v21;
    v47 = v17;
    v48 = v11 + 16;
    v45 = v6 + 32;
    v46 = v11 + 8;
    v22 = v53;
    while (v50 != v20)
    {
      v23 = v49 + *(v11 + 72) * v20;
      v24 = v8;
      v25 = *(v11 + 16);
      v26 = v11;
      v27 = v52;
      v25(v22, v23, v52);
      v25(v51, v22, v27);
      CRKeyPath.init(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      lazy protocol witness table accessor for type CRRegister<TaggedStroke> and conformance CRRegister<A>();
      WeakRef.init(id:)();
      v28 = v26;
      (*(v26 + 8))(v22, v27);
      v56 = v19;
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
        v19 = v56;
      }

      ++v20;
      *(v19 + 16) = v30 + 1;
      result = (*(v6 + 32))(v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30, v24, v54);
      v17 = v47;
      v8 = v24;
      v11 = v28;
      if (v47 == v20)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v31 = v42;
    v32 = *(v42 + 16);
    if (v17 == v32)
    {
LABEL_8:

      _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v19);

      return v41;
    }

    v50 = v11 + 8;
    v51 = (v11 + 16);
    v49 = v6 + 32;
    v33 = v40;
    v43 = v6;
    v34 = v44;
    while (v17 < v32)
    {
      v35 = *(v11 + 16);
      v36 = v52;
      v35(v34, v31 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v17, v52);
      v35(v53, v34, v36);
      CRKeyPath.init(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      lazy protocol witness table accessor for type CRRegister<TaggedStroke> and conformance CRRegister<A>();
      WeakRef.init(id:)();
      (*(v11 + 8))(v34, v36);
      v56 = v19;
      v38 = *(v19 + 16);
      v37 = *(v19 + 24);
      if (v38 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1);
        v19 = v56;
      }

      ++v17;
      *(v19 + 16) = v38 + 1;
      result = (*(v43 + 32))(v19 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v38, v33, v54);
      v32 = *(v31 + 16);
      if (v17 == v32)
      {
        goto LABEL_8;
      }
    }
  }

  __break(1u);
  return result;
}

id @objc TypesetViewController.init(coder:)(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for TypesetViewController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id TypesetViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TypesetViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *vtable thunk for UIHostingController.__allocating_init(coder:rootView:) dispatching to TypesetViewController.__allocating_init(coder:rootView:)()
{
  v0 = objc_allocWithZone(type metadata accessor for TypesetViewController());

  v1 = UIHostingController.init(coder:rootView:)();
  v2 = v1;

  if (v1)
  {
  }

  return v1;
}

char *MathRecognitionViewControllerDelegate.init(canvas:view:recognitionController:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController] = 0;
  v9 = [a3 mathRecognitionController];
  *&v4[OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_controller] = v9;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v18, sel_init);
  swift_unknownObjectWeakAssign();
  v11 = *&v10[OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_controller];
  v12 = objc_allocWithZone(MEMORY[0x1E69784A8]);
  v13 = v10;
  v14 = v11;
  v15 = [v12 initWithController:v14 view:a2 delegate:v13];

  v16 = *&v13[OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController];
  *&v13[OBJC_IVAR____TtC8PaperKit37MathRecognitionViewControllerDelegate_viewController] = v15;

  return v13;
}

uint64_t MathRecognitionViewControllerDelegate.mathViewControllerDrawing(_:)@<X0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))(), v6 = v5, v3, ObjectType = swift_getObjectType(), v8 = (*(v6 + 16))(ObjectType, v6), v4, v8))
  {
    v9 = [v8 drawing];

    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = type metadata accessor for PKDrawing();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v10, 1, v11);
}

void specialized MathRecognitionViewControllerDelegate.mathViewControllerDrawingTransform(_:)(__int128 *a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = xmmword_1D4059310;
  v4 = xmmword_1D4059320;
  v5 = 0uLL;
  if (Strong)
  {
    v6 = Strong;
    v7 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
    v9 = v8;

    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 16))(ObjectType, v9);

    v5 = 0uLL;
    v4 = xmmword_1D4059320;
    v3 = xmmword_1D4059310;
    if (v11)
    {
      [v11 drawingTransform];
      v13 = v15;
      v14 = v16;
      v12 = v17;

      v5 = v12;
      v4 = v13;
      v3 = v14;
    }
  }

  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
}

double specialized MathRecognitionViewControllerDelegate.mathViewControllerLatestEnd(ofStrokeTimestamp:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = 0.0;
  if (Strong)
  {
    v2 = Strong;
    v3 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
    v5 = v4;

    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 16))(ObjectType, v5);

    if (v7)
    {
      v1 = *&v7[OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_latestEndOfStrokeTimestamp];
    }
  }

  return v1;
}

void specialized MathRecognitionViewControllerDelegate.mathViewControllerUpdateFrame(forContainer:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
    v4 = v3;

    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 16))(ObjectType, v4);

    [v6 updateFrameForTextContainer];
  }
}

void *specialized MathRecognitionViewControllerDelegate.mathViewController(_:expressionIdentifiersForCompatibleGraphNearLocation:expressionUUID:)(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for CalculateExpression.GraphableType();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PKDrawing();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v50 = v7;
    Strong = a1;
    v19 = (*((*MEMORY[0x1E69E7D40] & *result) + 0x440))();
    v21 = v20;
    ObjectType = swift_getObjectType();
    v23 = (*(v21 + 16))(ObjectType, v21);

    if (!v23)
    {
LABEL_19:

      return 0;
    }

    v24 = [v23 drawing];

    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v11 + 32))(v16, v13, v10);
    PKDrawing._bridgeToObjectiveC()(v25);
    v27 = v26;
    v28 = [v26 uuid];

    v53 = &unk_1F4FC4E80;
    v29 = swift_dynamicCastObjCProtocolConditional();
    if (v29 && (v30 = v29, swift_getObjectType(), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject), swift_dynamicCastMetatype()))
    {
      v31 = one-time initialization token for controllers;
      swift_unknownObjectRetain();
      if (v31 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v32 = static CalculateDocumentController.controllers;
      if (!*(static CalculateDocumentController.controllers + 2) || (v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30), (v34 & 1) == 0))
      {
        swift_endAccess();
        swift_unknownObjectRelease();
        (*(v11 + 8))(v16, v10);
LABEL_18:
        swift_unknownObjectRelease();
        goto LABEL_19;
      }

      v35 = *(v32[7] + 8 * v33);
      swift_endAccess();
      v36 = v35;
      swift_unknownObjectRelease();
      v37 = &v36[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v49 = v36;
        v38 = *(v37 + 1);
        v39 = swift_getObjectType();
        v40 = (*(v38 + 48))(Strong, v39, v38);
        swift_unknownObjectRelease();
        if (v40)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          v41 = *(v37 + 1);
          CalculateExpression.graphableType.getter();
          v42 = v50;
          v43 = (*(v50 + 88))(v9, v6);
          if (v43 == *MEMORY[0x1E69920E0])
          {
            v44 = *(CalculateExpression.graphableVariables.getter() + 16);

            if (!v44)
            {
LABEL_29:
              v46 = 0;
              goto LABEL_30;
            }

            CalculateExpression.graphableVariable.getter();
            if (v45)
            {

              goto LABEL_29;
            }
          }

          else if (v43 != *MEMORY[0x1E69920D0])
          {
            if (v43 != *MEMORY[0x1E69920D8])
            {
              (*(v42 + 8))(v9, v6);
              goto LABEL_29;
            }

            v46 = 2;
LABEL_30:
            v52[0] = v46;
            v47 = (*((*MEMORY[0x1E69E7D40] & *v18) + 0xA20))(Strong, v41, v52, a2, a3);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            (*(v11 + 8))(v16, v10);
            return v47;
          }

          v46 = 1;
          goto LABEL_30;
        }

        (*(v11 + 8))(v16, v10);

        goto LABEL_18;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v11 + 8))(v16, v10);
    return 0;
  }

  return result;
}

void specialized MathRecognitionViewControllerDelegate.mathViewController(_:addGraphForExpression:variable:range:identifier:expressionLocation:addToExisting:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v94 = a7;
  v107 = a6;
  v108 = a3;
  v109 = a5;
  v110 = a1;
  v105 = a4;
  v111 = a2;
  v97 = type metadata accessor for CalculateExpression.GraphableType();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v93[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = type metadata accessor for PKDrawing();
  v101 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v93[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v100 = &v93[-v22];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v103);
  v24 = &v93[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v93[-v26];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v93[-v29];
  v31 = type metadata accessor for GraphableExpression(0);
  v32 = v31 - 8;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v93[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v106 = &v93[-v36];
  v37 = type metadata accessor for Color(0);
  v38 = *(*(v37 - 8) + 56);
  v38(v30, 1, 1, v37);
  v112 = 0;
  v113 = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  v102 = *(v32 + 28);
  v112 = 0;
  v113 = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  v38(v27, 1, 1, v37);
  outlined init with copy of Color?(v27, v24);
  lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s8PaperKit5ColorVSgMd);
  v112 = 0;
  v113 = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  v112 = v110;
  v113 = v111;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  CRRegister.wrappedValue.setter();
  v112 = v109;
  v113 = v107;

  CRRegister.wrappedValue.setter();
  outlined init with copy of Color?(v30, v27);
  outlined init with copy of Color?(v27, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  CRRegister.wrappedValue.setter();
  v39 = v27;
  v40 = v105;
  outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s8PaperKit5ColorVSgMd);
  if (v40)
  {
    v41 = v108;
    v112 = v108;
    v113 = v40;

    CRRegister.wrappedValue.setter();
    outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s8PaperKit5ColorVSgMd);
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s8PaperKit5ColorVSgMd);
    v41 = v108;
  }

  v42 = v106;
  outlined init with take of GraphableExpression(v34, v106);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v44 = Strong;
    v45 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
    v47 = v46;
    ObjectType = swift_getObjectType();
    v49 = (*(v47 + 16))(ObjectType, v47);

    if (!v49)
    {
      outlined destroy of GraphableExpression(v42);

      return;
    }

    v50 = [v49 drawing];

    v51 = v98;
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = v99;
    (*(v101 + 32))(v100, v51, v99);
    PKDrawing._bridgeToObjectiveC()(v53);
    v55 = v54;
    v56 = [v54 uuid];

    v114 = &unk_1F4FC4E80;
    v57 = swift_dynamicCastObjCProtocolConditional();
    if (v57 && (v58 = v57, swift_getObjectType(), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject), swift_dynamicCastMetatype()))
    {
      v59 = one-time initialization token for controllers;
      swift_unknownObjectRetain();
      if (v59 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v60 = static CalculateDocumentController.controllers;
      if (*(static CalculateDocumentController.controllers + 2) && (v61 = specialized __RawDictionaryStorage.find<A>(_:)(v58), (v62 & 1) != 0))
      {
        v63 = *(v60[7] + 8 * v61);
        swift_endAccess();
        v64 = v63;
        swift_unknownObjectRelease();
        v104 = v64;
        v65 = &v64[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v66 = *(v65 + 1);
          v67 = swift_getObjectType();
          v68 = CanvasCalculateDocument.expressionForAnyGraphable(_:)(v42, v67, v66);
          swift_unknownObjectRelease();
          if (v68)
          {
            v102 = v65;
            v103 = v68;
            if (v40)
            {
              v69 = v41;
            }

            else
            {
              v69 = 0;
            }

            if (v40)
            {
              v70 = v40;
            }

            else
            {
              v70 = 0xE000000000000000;
            }

            v71 = one-time initialization token for mathLogger;

            if (v71 != -1)
            {
              swift_once();
            }

            v72 = type metadata accessor for Logger();
            __swift_project_value_buffer(v72, mathLogger);
            v73 = v111;

            v74 = Logger.logObject.getter();
            v75 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              v112 = v77;
              *v76 = 136380931;
              *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v73, &v112);
              *(v76 + 12) = 2081;
              v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v112);

              *(v76 + 14) = v78;
              _os_log_impl(&dword_1D38C4000, v74, v75, "MathRecognitionViewControllerDelegate addGraph: %{private}s, variable: %{private}s", v76, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1DA6D0660](v77, -1, -1);
              v79 = v76;
              v40 = v105;
              MEMORY[0x1DA6D0660](v79, -1, -1);
            }

            else
            {
            }

            v81 = v102;
            v82 = swift_unknownObjectWeakLoadStrong();
            v83 = *(v81 + 1);
            v84 = v95;
            CalculateExpression.graphableType.getter();
            v85 = (*(v96 + 88))(v84, v97);
            v86 = v106;
            if (v85 != *MEMORY[0x1E69920E0])
            {
              v91 = v111;
              v88 = MEMORY[0x1E69E7D40];
              if (v85 == *MEMORY[0x1E69920D0])
              {
                v90 = 1;
              }

              else if (v85 == *MEMORY[0x1E69920D8])
              {
                v90 = 2;
              }

              else
              {
                v92 = v111;
                (*(v96 + 8))(v95, v97);
                v91 = v92;
                v90 = 0;
              }

              goto LABEL_44;
            }

            v87 = *(CalculateExpression.graphableVariables.getter() + 16);

            v88 = MEMORY[0x1E69E7D40];
            if (v87)
            {
              CalculateExpression.graphableVariable.getter();
              if (!v89)
              {
                v90 = 1;
                goto LABEL_43;
              }
            }

            v90 = 0;
LABEL_43:
            v91 = v111;
LABEL_44:
            LOBYTE(v112) = v90;
            (*((*v88 & *v44) + 0xA18))(v110, v91, v108, v40, v109, v107, v94 & 1, v82, a8, a9, a10, a11, a12, a13, v83, &v112);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            (*(v101 + 8))(v100, v52);
            v80 = v86;
            goto LABEL_30;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();

        swift_unknownObjectRelease_n();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v101 + 8))(v100, v52);
  }

  v80 = v42;
LABEL_30:
  outlined destroy of GraphableExpression(v80);
}

void specialized MathRecognitionViewControllerDelegate.mathViewController(_:didUpdateExpressions:newExpressions:removedExpressions:mathItems:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v38 = a4;
  v7 = type metadata accessor for PKDrawing();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for mathLogger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, mathLogger);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D38C4000, v12, v13, "MathRecognitionViewControllerDelegate didUpdateExpressions", v14, 2u);
    MEMORY[0x1DA6D0660](v14, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = a1;
    v16 = MEMORY[0x1E69E7D40];
    v17 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x9F8);
    v39 = Strong;
    v18 = v17();
    if (v18)
    {
      v20 = v18;
      v21 = v19;
      v22 = (*((*v16 & *v39) + 0x440))();
      v24 = v23;
      ObjectType = swift_getObjectType();
      v26 = (*(v24 + 16))(ObjectType, v24);

      if (v26)
      {
        v27 = [v26 drawing];

        static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
        PKDrawing._bridgeToObjectiveC()(v28);
        v30 = v29;
        v31 = [v29 uuid];

        (*(v8 + 8))(v10, v7);
        v40 = &unk_1F4FC4E80;
        v32 = swift_dynamicCastObjCProtocolConditional();
        if (v32 && (v33 = v32, swift_getObjectType(), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject), swift_dynamicCastMetatype()))
        {
          v34 = specialized static CalculateDocumentController.controllerForDrawingUUID(_:document:observer:)(v33, v20, v21, v39);
          v35 = specialized _arrayForceCast<A, B>(_:)(v38);
          CalculateDocumentController.mathDidUpdateExpressions(_:newExpressions:removedExpressions:mathItems:)(v37, a2, a3, v35);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
        }

        return;
      }

      swift_unknownObjectRelease();
    }

    v36 = v39;
  }
}

void specialized MathRecognitionViewControllerDelegate.mathViewController(_:replace:with:)()
{
  v0 = type metadata accessor for PKDrawing();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = MEMORY[0x1E69E7D40];
    v27[0] = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))();

    if (v27[0])
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10 && (v11 = v10, v12 = (*((*v9 & *v10) + 0x440))(), v14 = v13, v11, ObjectType = swift_getObjectType(), v16 = (*(v14 + 16))(ObjectType, v14), v12, v16))
      {
        v17 = [v16 drawing];

        static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v1 + 32))(v6, v3, v0);
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKDrawing);
        swift_dynamicCast();
        v18 = v28;
        [v28 copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v19 = v27[1];
          type metadata accessor for PKStroke();
          isa = Array._bridgeToObjectiveC()().super.isa;
          v21 = Array._bridgeToObjectiveC()().super.isa;
          v22 = [v19 undoableAddNewStrokes:isa replacingOldStrokes:v21];

          if (v22)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
            v23 = swift_allocObject();
            *(v23 + 16) = xmmword_1D405CEB0;
            *(v23 + 32) = v22;
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKUndoCommand);
            v24 = v22;
            v25 = Array._bridgeToObjectiveC()().super.isa;

            [v27[0] registerUndoCommands:v25 andChangeToDrawing:v19];
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
        v26 = v27[0];
      }
    }
  }
}

uint64_t specialized MathRecognitionViewControllerDelegate.mathViewController(_:createTypesetViewControllerForExpression:latex:fontSize:)(uint64_t a1, double a2, uint64_t a3, char a4)
{
  v20[1] = a1;
  v6 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for CalculateExpression.Base();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12CalculateKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  v13 = *MEMORY[0x1E6992250];
  *(inited + 32) = *MEMORY[0x1E6992250];
  *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber);
  *(inited + 40) = v11;

  v14 = v13;
  v15 = v11;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo12CalculateKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo12CalculateKeya_yptMd);
  (*(v8 + 104))(v10, *MEMORY[0x1E6992100], v7);
  UUID.init()();
  type metadata accessor for CalculateExpression();
  swift_allocObject();
  CalculateExpression.init(_:options:base:id:)();
  v16 = MEMORY[0x1DA6C89B0](a2);
  v17 = objc_allocWithZone(type metadata accessor for TypesetViewController());
  v20[2] = v16;

  v18 = UIHostingController.init(rootView:)();

  return v18;
}

uint64_t specialized MathRecognitionViewControllerDelegate.mathViewController(_:createTypesetImageForExpression:latex:fontSize:)(uint64_t a1, double a2, uint64_t a3, char a4)
{
  v24 = a1;
  v6 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for CalculateExpression.Base();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v12 = [v11 initWithUnsignedInteger_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12CalculateKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  v14 = *MEMORY[0x1E6992250];
  *(inited + 32) = *MEMORY[0x1E6992250];
  *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber);
  *(inited + 40) = v12;

  v15 = v14;
  v16 = v12;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo12CalculateKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo12CalculateKeya_yptMd);
  (*(v8 + 104))(v10, *MEMORY[0x1E6992100], v7);
  UUID.init()();
  type metadata accessor for CalculateExpression();
  swift_allocObject();
  CalculateExpression.init(_:options:base:id:)();
  v25 = MEMORY[0x1DA6C89B0](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13ImageRendererCyAA0C0VGMd);
  swift_allocObject();

  MEMORY[0x1DA6C98B0](&v25);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = [Strong window];

    if (v19)
    {
      v20 = [v19 screen];

      [v20 scale];
    }
  }

  v21 = ImageRenderer.scale.setter();
  v22 = MEMORY[0x1DA6C9890](v21);

  return v22;
}