__n128 GraphicsImage.init(contents:scale:unrotatedPixelSize:orientation:isTemplate:resizingInfo:antialiased:interpolation:)@<Q0>(uint64_t *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>)
{
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a4 + 32);
  v21 = *a6;
  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  *a7 = v18;
  v22 = 0x3F8000003F800000;
  if ((a3 & 1) == 0)
  {
    v22 = 0;
  }

  *(a7 + 8) = v19;
  if (a3)
  {
    v23 = 2143289344;
  }

  else
  {
    v23 = 0;
  }

  *(a7 + 16) = a8;
  *(a7 + 24) = a9;
  *(a7 + 32) = a10;
  *(a7 + 40) = a2;
  *(a7 + 44) = v22;
  *(a7 + 52) = v22;
  *(a7 + 60) = v23;
  *(a7 + 64) = (a3 & 1) == 0;
  result = *a4;
  *(a7 + 88) = *(a4 + 16);
  *(a7 + 72) = result;
  *(a7 + 104) = v20;
  *(a7 + 105) = a5;
  *(a7 + 106) = v21;
  *(a7 + 107) = 0;
  return result;
}

void ImageResolutionContext.effectiveAllowedDynamicRange(for:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (!*(a1 + 8))
  {
    v4 = *a1;
    outlined copy of GraphicsImage.Contents(*a1, 0);
    v5 = CGImageGetColorSpace(v4);
    if (v5)
    {
      v6 = v5;
      v7 = CGColorSpaceUsesITUR_2100TF(v5);
      outlined consume of GraphicsImage.Contents?(v4, 0);

      if (v7)
      {
        v8 = v2[1];
        v10 = *v2;
        v11 = v8;
        v9 = *(v2 + *(type metadata accessor for ImageResolutionContext() + 36));

        EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v9, a2);

        return;
      }
    }

    else
    {
      outlined consume of GraphicsImage.Contents?(v4, 0);
    }
  }

  *a2 = 0;
}

uint64_t EnvironmentValues.shouldRedactContent.getter()
{
  v1 = *v0;
  if (v0[1])
  {

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v1);
  }

  else
  {
    v4[0] = *v0;
    v4[1] = 0;

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = specialized static ShouldRedactContentKey.value(in:)(v4);
  }

  return ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 & 1;
}

__n128 Image.Resolved.init(image:decorative:label:basePlatformItemImage:backgroundShape:backgroundCornerRadius:)@<Q0>(_OWORD *a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, double a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v13 = a1[5];
  v48 = a1[4];
  v49[0] = v13;
  *(v49 + 12) = *(a1 + 92);
  v14 = a1[1];
  v45[0] = *a1;
  v45[1] = v14;
  v15 = a1[3];
  v46 = a1[2];
  v47 = v15;
  v34 = a3[1];
  v33 = *a3;
  v16 = *a5;
  v40 = v14;
  v41 = v46;
  v39 = v45[0];
  *(v44 + 12) = *(v49 + 12);
  v43 = v48;
  v44[0] = v13;
  v42 = v15;
  outlined init with copy of GraphicsImage(v45, &v36);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  if (BYTE8(v45[0]) == 255)
  {
    v22 = 0;
    goto LABEL_7;
  }

  if (BYTE8(v45[0]) != 2)
  {
    v22 = (v48 & 1) == 0;
LABEL_7:
    outlined destroy of GraphicsImage(v45);
    v21 = 0;
    v23 = 0;
    if (v16 != 3)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v17 = *(*&v45[0] + 32);
  v18 = *(*&v45[0] + 48);
  v19 = *(*&v45[0] + 16);
  outlined copy of Image.Location(v17);
  v20 = v18;
  outlined copy of Image.Location(v17);
  v35 = v17;
  _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v19 styleMask], &v35, &v36);

  outlined consume of Image.Location(v17);
  outlined destroy of GraphicsImage(v45);
  v21 = v36;
  v22 = v37;
  v23 = v38;
  if (v16 != 3)
  {
LABEL_4:
    v24 = v23 | 2;
    goto LABEL_9;
  }

LABEL_8:
  v24 = v23 & 0xFD;
LABEL_9:
  v25 = a6;
  v26 = v25;
  v27 = v42;
  v28 = v44[0];
  v29 = v44[1];
  *(a8 + 64) = v43;
  *(a8 + 80) = v28;
  v30 = v40;
  v31 = v41;
  *a8 = v39;
  *(a8 + 16) = v30;
  *(a8 + 32) = v31;
  *(a8 + 48) = v27;
  if (a7)
  {
    v26 = 0.0;
  }

  result = v34;
  *(a8 + 96) = v29;
  *(a8 + 112) = v33;
  *(a8 + 128) = v34;
  *(a8 + 144) = a4;
  *(a8 + 152) = 0;
  *(a8 + 160) = a2 & 1;
  *(a8 + 161) = v16;
  *(a8 + 164) = v26;
  *(a8 + 168) = a7 & 1;
  *(a8 + 176) = v21;
  *(a8 + 184) = v22;
  *(a8 + 186) = v24;
  return result;
}

uint64_t CGSize.scaledToFill(_:)()
{
  if (one-time initialization token for unspecified != -1)
  {
    return swift_once();
  }

  return result;
}

void _CGImagePrepareCALayerContents(void *a1, CGColorSpace *a2, char a3)
{
  if ((a3 & 2) == 0 && ((a3 & 1) == 0 || (CGImageIsSubimage() & 1) == 0))
  {
    if (!a2)
    {
      {
        _CGImagePrepareCALayerContents::srgb = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      }

      a2 = _CGImagePrepareCALayerContents::srgb;
    }

    if (!CGImageGetProperty())
    {
      v5 = [[_SwiftUIProxyImage alloc] initWithCGImage:a1 colorSpace:a2];
      CGImageSetProperty();
      [(_SwiftUIProxyImage *)v5 schedule];
    }
  }
}

void ShapeStyle._apply(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v14 - v8;
  if (v10 != MEMORY[0x1E69E73E0])
  {
    v11 = *(a1 + 56);
    v14[0] = *(a1 + 48);
    v14[1] = v11;
    v12 = *(a3 + 48);

    v12(v14, a2, a3);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v7 + 8))(v9, AssociatedTypeWitness);
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Image(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return 1;
  }

  else
  {
    return (*(**a1 + 96))() & 1;
  }
}

id _CGImageGetCALayerContents(id a1, char a2)
{
  if ((a2 & 2) == 0 && ((a2 & 1) == 0 || (CGImageIsSubimage() & 1) == 0))
  {
    Property = CGImageGetProperty();
    if (Property)
    {
      a1 = Property;
    }
  }

  return a1;
}

void ImageLayer.update(image:size:)(__int128 *a1, double a2, double a3)
{
  v4 = v3;
  v7 = a1[5];
  v56 = a1[4];
  *v57 = v7;
  *&v57[12] = *(a1 + 92);
  v8 = a1[1];
  v53 = *a1;
  v54 = v8;
  v9 = a1[3];
  *v55 = a1[2];
  *&v55[16] = v9;
  value = v53;
  if (BYTE8(v53) <= 3u)
  {
    if (!BYTE8(v53))
    {
      v15 = v57[24] != 2 && (v57[24] & 1) == 0;
      v14.value = _CGImageGetCALayerContents(v53, v15);
      goto LABEL_13;
    }

    if (BYTE8(v53) == 1)
    {
      outlined init with copy of GraphicsImage(&v53, &v43);
LABEL_14:
      [v3 setContents_];
      v16 = 0;
      v17 = value == 0;
      goto LABEL_15;
    }

LABEL_8:
    v11 = a1[5];
    v47 = a1[4];
    *v48 = v11;
    *&v48[12] = *(a1 + 92);
    v12 = a1[1];
    v43 = *a1;
    v44 = v12;
    v13 = a1[3];
    v45 = a1[2];
    v46 = v13;
    v14.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(*&a3, *&a2), (v56 & 1) == 0).value;
LABEL_13:
    value = v14.value;
    goto LABEL_14;
  }

  if (BYTE8(v53) != 4)
  {
    if (BYTE8(v53) == 255)
    {
      value = 0;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v27 = *(v53 + 32);
  v41 = *(v53 + 16);
  [v3 setContents_];
  v51 = v41;
  v52 = v27;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v16 = specialized ObjectCache.subscript.getter(&v51);
  v17 = 1;
LABEL_15:
  [v4 setBackgroundColor_];

  [v4 setAllowsEdgeAntialiasing_];
  if (v17)
  {
    return;
  }

  [v4 setContentsScale_];
  v18 = *&v55[12];
  v19 = *&v55[20];
  v20 = *&v55[28];
  v21 = v56;
  _CALayerSetSplatsContentsAlpha(v4, (v56 ^ 1u));
  if (v21)
  {
    [v4 setContentsMultiplyColor_];
  }

  else
  {
    v49[0] = v18;
    v49[1] = v19;
    v50 = v20;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v22 = specialized ObjectCache.subscript.getter(v49);
    [v4 setContentsMultiplyColor_];
  }

  v47 = v56;
  *v48 = *v57;
  *&v48[12] = *&v57[12];
  v43 = v53;
  v44 = v54;
  v45 = *v55;
  v46 = *&v55[16];
  GraphicsImage.layerStretchInPixels(size:)(v42, a2, a3);
  [v4 setContentsCenter_];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = MEMORY[0x193ABEC20](v23);

  [v4 setContentsScaling_];

  if (v57[26] - 1 < 2)
  {
    v25 = MEMORY[0x1E6979C48];
LABEL_25:
    v26 = *v25;
    [v4 setMinificationFilter_];
    goto LABEL_30;
  }

  if (!v57[26])
  {
    v25 = MEMORY[0x1E6979CB8];
    goto LABEL_25;
  }

  [v4 setMinificationFilter_];
  v26 = *MEMORY[0x1E6979C48];
LABEL_30:
  [v4 setMagnificationFilter_];
  v28 = v57[27];
  if (v57[27])
  {
    v47 = v56;
    *v48 = *v57;
    *&v48[12] = *&v57[12];
    v43 = v53;
    v44 = v54;
    v45 = *v55;
    v46 = *&v55[16];
    v29 = GraphicsImage.headroom.getter();
    v30 = MEMORY[0x1E69792A8];
    v31 = MEMORY[0x1E6979298];
    if (v28 == 2)
    {
      v31 = MEMORY[0x1E69792A0];
    }

    if (v29 > 1.0)
    {
      v30 = v31;
    }

    v28 = v29 > 1.0;
  }

  else
  {
    v30 = MEMORY[0x1E69792A8];
  }

  v32 = *v30;
  [v4 contentsEDRStrength];
  v34 = v33;
  [v4 contentsCDRStrength];
  v36 = v35;
  [v4 setPreferredDynamicRange_];
  [v4 contentsEDRStrength];
  v38 = v37;
  [v4 contentsCDRStrength];
  v40 = v39;
  if (v38 != v34)
  {
    CALayer.animateEDRProperty(_:interval:)(0xD000000000000013, 0x800000018DD7DBC0, v38 - v34);
    if (v40 == v36)
    {
      goto LABEL_39;
    }

LABEL_42:
    CALayer.animateEDRProperty(_:interval:)(0xD000000000000013, 0x800000018DD7DBE0, v40 - v36);
    goto LABEL_39;
  }

  if (v39 != v36)
  {
    goto LABEL_42;
  }

LABEL_39:
  [v4 setWantsExtendedDynamicRangeContent_];
  swift_unknownObjectRelease();
}

uint64_t _CALayerSetSplatsContentsAlpha(void *a1, const char *a2)
{
  v2 = MEMORY[0x1E6979E30];
  if (!a2)
  {
    v2 = MEMORY[0x1E6979E38];
  }

  return [a1 setContentsSwizzle:*v2];
}

uint64_t GraphicsImage.layerStretchInPixels(size:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = *(v3 + 40);
  v10 = *(v3 + 9);
  v11 = *(v3 + 10);
  v12 = *(v3 + 11);
  v13 = *(v3 + 12);
  v14 = *(v3 + 104);
  v16 = (v3 + 105);
  v15 = *(v3 + 105);
  v53 = *v3;
  v54 = v6;
  v55 = v7;
  v56 = v8;
  v57 = v9;
  *v58 = *(v3 + 41);
  *&v58[15] = *(v3 + 56);
  v59 = v10;
  v60 = v11;
  v61 = v12;
  v62 = v13;
  v63 = v14;
  v64 = v15;
  v65 = *(v3 + 107);
  if (GraphicsImage.bitmapOrientation.getter() > 3u)
  {
    v17 = a2;
  }

  else
  {
    v17 = a3;
    a3 = a2;
  }

  v53 = *v3;
  v54 = v6;
  v55 = v7;
  v56 = v8;
  v57 = v9;
  *v58 = *(v3 + 41);
  *&v58[15] = *(v3 + 56);
  v59 = v10;
  v60 = v11;
  v61 = v12;
  v62 = v13;
  v64 = *v16;
  v65 = *(v3 + 107);
  v63 = v14;
  result = GraphicsImage.slicesAndTiles(at:)(*&a3, v17, 0, v52);
  v19 = 1.0;
  if (v52[32] != 2)
  {
    v53 = *v3;
    v54 = v6;
    v55 = v7;
    v56 = v8;
    v57 = v9;
    *v58 = *(v3 + 41);
    *&v58[15] = *(v3 + 56);
    v59 = v10;
    v60 = v11;
    v61 = v12;
    v62 = v13;
    v63 = v14;
    v64 = *v16;
    v65 = *(v3 + 107);
    v24 = GraphicsImage.isTiledWhenStretchedToSize(_:)(a3, v17);
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    if (v14 != 2)
    {
      v25 = v10;
      v26 = v11;
      v27 = v12;
      v28 = v13;
    }

    v50 = v24;
    v29 = v8;
    v30 = v7;
    if (v9 > 3)
    {
      v29 = v7;
      v30 = v8;
      if (v9 > 5)
      {
        if (v9 == 6)
        {
          goto LABEL_14;
        }
      }

      else if (v9 == 4)
      {
        goto LABEL_14;
      }

      v29 = v7;
      v30 = v8;
    }

LABEL_14:
    v31 = CGRect.inset(by:)(v6 * v25, v6 * v26, v6 * v27, v6 * v28, 0.0, 0.0, v30, v29);
    v32 = v8;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v53 = *v3;
    v54 = v6;
    v55 = v7;
    v39 = v32;
    v56 = v32;
    v57 = v9;
    *v58 = *(v3 + 41);
    *&v58[15] = *(v3 + 56);
    v59 = v10;
    v60 = v11;
    v61 = v12;
    v62 = v13;
    v63 = v14;
    v64 = *v16;
    v65 = *(v3 + 107);
    v40 = GraphicsImage.bitmapOrientation.getter();
    v66.origin.x = CGRect.unapply(_:in:)(v40, v30, v29, v31, v34, v36, v38);
    x = v66.origin.x;
    y = v66.origin.y;
    width = v66.size.width;
    height = v66.size.height;
    result = CGRectIsNull(v66);
    v45 = 0.0;
    v46 = 0.0;
    v22 = 0.0;
    v21 = 0.0;
    v20 = v50;
    if ((result & 1) == 0 && (v45 = height, v46 = width, v22 = y, v21 = x, x != 0.0) || (v23 = 1.0, v46 != v7))
    {
      if (v50)
      {
        v21 = v21 / v7;
      }

      else
      {
        v47 = v46 + -1.0;
        v48 = v46 + -1.0 < 0.0;
        v46 = 0.0;
        if (!v48)
        {
          v46 = v47;
        }

        v21 = (v21 + 0.5) / v7;
        if (v46 <= 1.0)
        {
          v21 = v21 + -0.01 / v7;
          v23 = 0.02 / v7;
          if (v22 == 0.0 && v45 == v39)
          {
            v20 = 0;
            v19 = 1.0;
            goto LABEL_36;
          }

          goto LABEL_31;
        }
      }

      v23 = v46 / v7;
    }

    if (v22 == 0.0 && v45 == v39)
    {
      v19 = 1.0;
      goto LABEL_36;
    }

    if (v50)
    {
      v22 = v22 / v39;
LABEL_34:
      v19 = v45 / v39;
      goto LABEL_36;
    }

LABEL_31:
    v49 = v45 + -1.0;
    v48 = v45 + -1.0 < 0.0;
    v45 = 0.0;
    if (!v48)
    {
      v45 = v49;
    }

    v22 = (v22 + 0.5) / v39;
    if (v45 <= 1.0)
    {
      v20 = 0;
      v22 = v22 + -0.01 / v39;
      v19 = 0.02 / v39;
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v20 = 0;
  v21 = 0.0;
  v22 = 0.0;
  v23 = 1.0;
LABEL_36:
  *a1 = v21;
  *(a1 + 8) = v22;
  *(a1 + 16) = v23;
  *(a1 + 24) = v19;
  *(a1 + 32) = v20;
  return result;
}

uint64_t GraphicsImage.slicesAndTiles(at:)@<X0>(uint64_t result@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(v4 + 16);
  v6 = 0.0;
  v7 = 0.0;
  if (v5 != 0.0)
  {
    v8 = *(v4 + 24);
    if (*(v4 + 40) <= 3u)
    {
      v9 = *(v4 + 32);
    }

    else
    {
      v9 = *(v4 + 24);
    }

    if (*(v4 + 40) > 3u)
    {
      v8 = *(v4 + 32);
    }

    v10 = 1.0 / v5;
    v6 = v10 * v8;
    v7 = v10 * v9;
  }

  v11 = *(v4 + 72);
  v12 = *(v4 + 80);
  v13 = *(v4 + 88);
  v14 = *(v4 + 96);
  v15 = *(v4 + 104);
  if ((a3 & 1) != 0 || v6 != *&result)
  {
    if (v15 == 2)
    {
LABEL_30:
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 2;
      return result;
    }
  }

  else if (v7 == a2 || v15 == 2)
  {
    goto LABEL_30;
  }

  result = v14 & 0x7FFFFFFFFFFFFFFFLL;
  v19 = (v11 & 0x7FFFFFFFFFFFFFFFLL) == 0 && (v12 & 0x7FFFFFFFFFFFFFFFLL) == 0 && (v13 & 0x7FFFFFFFFFFFFFFFLL) == 0 && result == 0;
  if (v19 && (v15 & 1) != 0 || *(v4 + 8) == 4)
  {
    goto LABEL_30;
  }

  *a4 = v11;
  *(a4 + 8) = v12;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15 & 1;
  return result;
}

CGFloat CGAffineTransform.apply(_:in:)(unsigned __int8 a1, CGFloat result, double a3)
{
  if (a1 > 3u)
  {
    v4 = result * 0.5;
    v5 = a3 * 0.5;
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v7 = xmmword_18DDAB500;
      }

      else
      {
        v7 = xmmword_18DDBA6A0;
      }

      v6 = vnegq_f64(xmmword_18DDAA020);
    }

    else
    {
      v6 = xmmword_18DDAA020;
      if (a1 == 4)
      {
        v7 = xmmword_18DDBA6A0;
      }

      else
      {
        v7 = xmmword_18DDAB500;
      }
    }

    v8 = result * 0.5;
    v9 = v5;
  }

  else
  {
    if (a1 > 1u)
    {
      v4 = result * 0.5;
      v5 = a3 * 0.5;
      if (a1 == 2)
      {
        v7 = xmmword_18DDBA6B0;
      }

      else
      {
        v7 = xmmword_18DDAA020;
      }

      v6 = vnegq_f64(xmmword_18DDAB500);
    }

    else
    {
      if (!a1)
      {
        return result;
      }

      v4 = result * 0.5;
      v5 = a3 * 0.5;
      v6 = xmmword_18DDAB500;
      v7 = xmmword_18DDBA6B0;
    }

    v8 = v5;
    v9 = v4;
  }

  *&t1.a = v7;
  *&t1.c = v6;
  t1.tx = v4;
  t1.ty = v5;
  CGAffineTransformTranslate(&t2, &t1, -v9, -v8);
  t1 = t2;
  v10 = v3[1];
  *&t2.a = *v3;
  *&t2.c = v10;
  *&t2.tx = v3[2];
  CGAffineTransformConcat(&v13, &t1, &t2);
  result = v13.a;
  v11 = *&v13.c;
  v12 = *&v13.tx;
  *v3 = *&v13.a;
  v3[1] = v11;
  v3[2] = v12;
  return result;
}

uint64_t GraphicsImage.bitmapOrientation.getter()
{
  v1 = v0[40];
  if (v0[8] == 2)
  {
    if ([*(*v0 + 16) flipsRightToLeft])
    {
      return (0x405060702030001uLL >> (8 * v1));
    }

    else
    {
      return v1;
    }
  }

  return v1;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance LayoutSubviews(unint64_t *result, unint64_t *a2)
{
  v3 = *(*(v2 + 8) + 16);
  if (*result > v3)
  {
    __break(1u);
  }

  else if (*a2 <= v3)
  {
    return (*a2 - *result);
  }

  __break(1u);
  return result;
}

uint64_t Path.append(to:)(uint64_t result)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(v1 + 32);
  if (v3 <= 2)
  {
    v5 = *(v1 + 8);
    v4 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (*(v1 + 32))
    {
      if (v3 == 1)
      {
        *&v11 = *v1;
        *(&v11 + 1) = v5;
        *&v12 = v4;
        *(&v12 + 1) = v6;
        v7 = 7;
      }

      else
      {
        v8 = *(v2 + 64);
        v9 = *(v2 + 32);
        v11 = *(v2 + 16);
        v12 = v9;
        v13 = *(v2 + 48);
        if (v8)
        {
          v7 = 9;
        }

        else
        {
          v7 = 8;
        }
      }
    }

    else
    {
      *&v11 = *v1;
      *(&v11 + 1) = v5;
      *&v12 = v4;
      *(&v12 + 1) = v6;
      v7 = 5;
    }

    return MEMORY[0x193AC35E0](result, v7, &v11, 0);
  }

  if (v3 != 5)
  {
    if (v3 == 6)
    {
      return result;
    }

    goto LABEL_24;
  }

  if (!*(v2 + 16))
  {
    if (*(v2 + 24))
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_24:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (*(v2 + 16) != 1)
  {
    v10 = one-time initialization token for bufferCallbacks;

    if (v10 != -1)
    {
      swift_once();
    }

    goto LABEL_20;
  }

LABEL_8:

LABEL_20:
  RBPathStorageAppendPath();

  return outlined destroy of Path(v1);
}

double protocol witness for Shape.path(in:) in conformance Circle@<D0>(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  specialized Circle.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

BOOL specialized Circle.path(in:)@<W0>(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D1>, double Height@<D2>, double a5@<D3>)
{
  v8 = a2;
  if (CGRectIsNull(*&a2) || (v14.origin.x = v8, v14.origin.y = a3, v14.size.width = Height, v14.size.height = a5, CGRectIsInfinite(v14)))
  {
    v15.origin.x = v8;
    v15.origin.y = a3;
    v15.size.width = Height;
    v15.size.height = a5;
    result = CGRectIsNull(v15);
    if (result)
    {
      v8 = 0.0;
      a3 = 0.0;
      Height = 0.0;
      a5 = 0.0;
      v11 = 6;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v16.origin.x = v8;
    v16.origin.y = a3;
    v16.size.width = Height;
    v16.size.height = a5;
    Width = CGRectGetWidth(v16);
    v17.origin.x = v8;
    v17.origin.y = a3;
    v17.size.width = Height;
    v17.size.height = a5;
    v13 = Width - CGRectGetHeight(v17);
    if (v13 <= 0.0)
    {
      if (v13 < 0.0)
      {
        a3 = a3 + v13 * -0.5;
        v19.origin.x = v8;
        v19.origin.y = a3;
        v19.size.width = Height;
        v19.size.height = a5;
        a5 = CGRectGetWidth(v19);
      }
    }

    else
    {
      v8 = v13 * 0.5 + v8;
      v18.origin.x = v8;
      v18.origin.y = a3;
      v18.size.width = Height;
      v18.size.height = a5;
      Height = CGRectGetHeight(v18);
    }

    v20.origin.x = v8;
    v20.origin.y = a3;
    v20.size.width = Height;
    v20.size.height = a5;
    result = CGRectIsNull(v20);
    if (result)
    {
      v11 = 6;
      v8 = 0.0;
      a3 = 0.0;
      Height = 0.0;
      a5 = 0.0;
    }

    else
    {
      v21.origin.x = v8;
      v21.origin.y = a3;
      v21.size.width = Height;
      v21.size.height = a5;
      result = CGRectIsInfinite(v21);
      v11 = !result;
    }
  }

  *a1 = v8;
  *(a1 + 8) = a3;
  *(a1 + 16) = Height;
  *(a1 + 24) = a5;
  *(a1 + 32) = v11;
  return result;
}

double one-time initialization function for bufferCallbacks()
{
  v0 = swift_slowAlloc();
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 8) = @objc closure #1 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  *(v0 + 16) = @objc closure #2 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  *(v0 + 24) = @objc closure #3 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  *(v0 + 32) = @objc closure #4 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  *(v0 + 40) = @objc closure #5 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  *(v0 + 48) = @objc closure #6 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  *(v0 + 56) = @objc closure #7 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  *(v0 + 64) = @objc closure #8 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks;
  static Path.PathBox.bufferCallbacks = v0;
  return result;
}

uint64_t ImageRendererHost.proposedSize.didset(uint64_t result, char a2, uint64_t a3, char a4)
{
  v5 = *v4;
  v6 = (v4 + *(*v4 + 248));
  if (v6[1])
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((a2 & 1) != 0 || *v6 != *&result)
  {
    goto LABEL_12;
  }

  if (v6[3])
  {
    if (a4)
    {
      return result;
    }
  }

  else if ((a4 & 1) == 0 && v6[2] == *&a3)
  {
    return result;
  }

LABEL_12:
  ImageRendererHost.updateSizeThatFitsObserver()();

  *&result = COERCE_DOUBLE(ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)(8u, 1, v5, &protocol witness table for ImageRendererHost<A>));
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  for (i = 0; ; i += 48)
  {
    v4 = 0;
    v5 = a1 + i;
    v6 = a2 + i;
    if ((vminv_u16(vmovn_s32(vceqq_f32(*(a1 + i + 32), *(a2 + i + 32)))) & 1) == 0 || *(v5 + 48) != *(v6 + 48))
    {
      break;
    }

    if (*(v5 + 72))
    {
      if ((*(v6 + 72) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v6 + 72))
      {
        return 0;
      }

      v7 = *(v5 + 56);
      v8 = *(v5 + 64);
      v9 = *(v6 + 64);
      v10 = *&v7 == COERCE_FLOAT(*(v6 + 56)) && *(&v7 + 1) == COERCE_FLOAT(HIDWORD(*(v6 + 56)));
      v11 = v10 && *&v8 == *&v9;
      if (!v11 || *(&v8 + 1) != *(&v9 + 1))
      {
        return 0;
      }
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return v4;
}

uint64_t DynamicViewList.Item.invalidate()()
{
  swift_beginAccess();
  type metadata accessor for Unmanaged();
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.firstIndex(where:)();

  if (v1 != 1)
  {
    swift_beginAccess();
    Array.remove(at:)();
    return swift_endAccess();
  }

  return result;
}

void *assignWithCopy for LinearGradient(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1;
}

uint64_t type metadata completion function for _BackgroundShapeModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t AnimatedShape.Init.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, a2);
  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = v9[1];
  (*(v5 + 32))(a3, v7, a2);
  result = type metadata accessor for AnimatedShape();
  v13 = (a3 + *(result + 36));
  *v13 = v10;
  v13[1] = v11;
  return result;
}

double AnimatedShape.shape(in:)(uint64_t a1, uint64_t a2, double a3)
{
  Shape.effectivePath(in:)(*(a2 + 16), *(a2 + 24), v14, a3);
  v6 = v15;
  v7 = (v3 + *(a2 + 36));
  v8 = *v7;
  LODWORD(v7) = v7[1];
  v9 = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = v9;
  v10 = v7 == 0;
  v11 = 0x10000;
  if (v10)
  {
    v11 = 0;
  }

  v10 = v8 == 0;
  v12 = 256;
  if (v10)
  {
    v12 = 0;
  }

  *(a1 + 32) = v12 | v6 | v11;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  return 0.0;
}

uint64_t initializeWithCopy for _ClipEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *(*(v5 + 48) + a1) = *(*(v5 + 48) + a2);
  return a1;
}

void ShapeType.initFromFilled(type:shape:)(int a1, uint64_t a2)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a1 == 6)
  {
    if (RBPathIsEmpty())
    {
      v28 = *(*&v2 + 48);
      *&v52.tx = *(*&v2 + 32);
      v53 = v28;
      v54 = *(*&v2 + 64);
      v55 = *(*&v2 + 80);
      v29 = *(*&v2 + 16);
      *&v52.a = **&v2;
      *&v52.c = v29;
      outlined destroy of ShapeType(&v52);
      **&v2 = 0u;
      *(*&v2 + 16) = 0u;
      *(*&v2 + 32) = 0u;
      *(*&v2 + 48) = 0u;
      *(*&v2 + 64) = 0u;
      v30 = 3;
    }

    else
    {
      v31 = *(a2 + 48);
      if (v31 < 0)
      {
        __break(1u);
      }

      v32 = *(a2 + 16);
      v33 = *(a2 + 24);
      v34 = *(a2 + 28);
      v36 = *(a2 + 32);
      v35 = *(a2 + 40);
      if (v31)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v38 = 0;
        v39 = *(v37 + 2);
        do
        {
          v40 = *(*(a2 + 56) + 8 * v38);
          v41 = *(v37 + 3);
          if (v39 >= v41 >> 1)
          {
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v39 + 1, 1, v37);
          }

          ++v38;
          *(v37 + 2) = v39 + 1;
          *&v37[8 * v39++ + 32] = v40;
        }

        while (v31 != v38);
      }

      else
      {
        v37 = MEMORY[0x1E69E7CC0];
      }

      v52.a = v2;
      v52.b = v32;
      *&v52.c = __PAIR64__(v34, v33);
      v52.d = v36;
      *&v52.tx = v37;
      v52.ty = v35;

      RBPathApplyShape();

      if (*(*&v2 + 80) != 3 || **&v2 != 1 || (v42 = vorrq_s8(vorrq_s8(*(*&v2 + 16), *(*&v2 + 48)), vorrq_s8(*(*&v2 + 32), *(*&v2 + 64))), *&vorr_s8(*v42.i8, *&vextq_s8(v42, v42, 8uLL)) | *(*&v2 + 8)))
      {

        return;
      }

      v43 = *(*&v2 + 48);
      *&v52.tx = *(*&v2 + 32);
      v53 = v43;
      v54 = *(*&v2 + 64);
      v55 = *(*&v2 + 80);
      v44 = *(*&v2 + 16);
      *&v52.a = **&v2;
      *&v52.c = v44;
      outlined destroy of ShapeType(&v52);
      v45 = RBPathRetain();
      v47 = v46;
      type metadata accessor for Path.PathBox();
      v48 = swift_allocObject();
      *(v48 + 40) = 0u;
      *(v48 + 56) = 0u;
      *(v48 + 72) = 0u;
      *(v48 + 88) = 0u;
      *(v48 + 104) = 0u;
      *(v48 + 16) = 1;
      *(v48 + 24) = v45;
      *(v48 + 32) = v47;
      **&v2 = v48;
      *(*&v2 + 8) = 0;
      *(*&v2 + 16) = 0;
      *(*&v2 + 24) = 0;
      *(*&v2 + 32) = 5;
      *(*&v2 + 40) = v32;
      *(*&v2 + 48) = v33;
      *(*&v2 + 52) = v34;
      *(*&v2 + 56) = v36;
      *(*&v2 + 64) = v37;
      *(*&v2 + 72) = v35;
      v30 = 2;
    }

    *(*&v2 + 80) = v30;
    return;
  }

  if (a1 == 3)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
    v12 = *(a2 + 40);
    v13 = *(a2 + 96);
    v14 = *(a2 + 48);
    v15 = *(a2 + 56);
    v16 = *(a2 + 64);
    v17 = *(a2 + 72);
    if (v8 == 0.0 && v9 == 0.0 || v7 == 0.0 && v10 == 0.0)
    {
      v18 = *(a2 + 80);
      v19 = *(a2 + 88);
      v52.a = *a2;
      v52.b = v8;
      v52.c = v9;
      v52.d = v10;
      v52.tx = v11;
      v52.ty = v12;
      v58 = CGRectApplyAffineTransform(*&v14, &v52);
      x = v58.origin.x;
      y = v58.origin.y;
      height = v58.size.height;
      width = v58.size.width;
      v52.a = v7;
      v52.b = v8;
      v52.c = v9;
      v52.d = v10;
      v52.tx = v11;
      v52.ty = v12;
      v58.origin.x = v18;
      v58.origin.y = v19;
      v22 = CGSizeApplyAffineTransform(v58.origin, &v52);
      if (v22.width == v22.height || vabdd_f64(v22.width, v22.height) < 0.001)
      {
        v23 = *(*&v2 + 48);
        *&v52.tx = *(*&v2 + 32);
        v53 = v23;
        v54 = *(*&v2 + 64);
        v55 = *(*&v2 + 80);
        v24 = *(*&v2 + 16);
        *&v52.a = **&v2;
        *&v52.c = v24;
        outlined destroy of ShapeType(&v52);
        v59.origin.x = x;
        v59.origin.y = y;
        v59.size.width = width;
        v59.size.height = height;
        v25 = CGRectGetWidth(v59);
        v60.origin.x = x;
        v60.origin.y = y;
        v60.size.width = width;
        v60.size.height = height;
        v26 = CGRectGetHeight(v60);
        if (v26 >= v25)
        {
          v26 = v25;
        }

        v27 = v26 * 0.5;
        **&v2 = x;
        *(*&v2 + 8) = y;
        if (v27 >= v22.width)
        {
          v27 = v22.width;
        }

        *(*&v2 + 16) = width;
        *(*&v2 + 24) = height;
        *(*&v2 + 32) = v27;
        *(*&v2 + 40) = v13 == 1;
        *(*&v2 + 80) = 0;
      }
    }
  }

  else if (!a1 && (*(a2 + 8) == 0.0 && *(a2 + 16) == 0.0 || *a2 == 0.0 && *(a2 + 24) == 0.0))
  {
    v4 = *(*&v2 + 48);
    *&v52.tx = *(*&v2 + 32);
    v53 = v4;
    v54 = *(*&v2 + 64);
    v55 = *(*&v2 + 80);
    v5 = *(*&v2 + 16);
    *&v52.a = **&v2;
    *&v52.c = v5;
    outlined destroy of ShapeType(&v52);
    v57 = *(a2 + 48);
    v6 = *(a2 + 16);
    *&v51.a = *a2;
    *&v51.c = v6;
    *&v51.tx = *(a2 + 32);
    **&v2 = CGRectApplyAffineTransform(v57, &v51);
    *(*&v2 + 32) = 0;
    *(*&v2 + 40) = 0;
    *(*&v2 + 80) = 0;
  }
}

unsigned int *storeEnumTagSinglePayload for _ClipEffect(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 2;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        if (a2 > 0xFE)
        {
          *(result + v8) = a2 - 255;
        }

        else
        {
          *(result + v8) = a2 + 1;
        }
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 2);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -2)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_43;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t closure #2 in static _ShapeView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for _ShapeView();
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

uint64_t closure #3 in static _ShapeView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v6 = type metadata accessor for _ShapeView();
  v7 = *(v6 + 56);
  v11[2] = v6;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, &type metadata for FillStyle, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12;
}

uint64_t type metadata completion function for AnimatedShape()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnimatedShape<A>.Init()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for AnimatedShape<A>.Init(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

BOOL ValueCycleDetector.dispatch(value:label:isDebug:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  AGGraphClearUpdate();
  v11 = *(a5 + 16);
  v12 = *AGGraphGetValue();
  AGGraphSetUpdate();
  if (*(v6 + 4) != v12)
  {
    *(v6 + 4) = v12;
    v13 = *(a5 + 44);
    v14 = type metadata accessor for Stack3();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
    Stack3.init()(v11, v6 + v13);
  }

  v15 = type metadata accessor for Stack3();
  v16 = Stack3.contains(_:)(a1, v15);
  if (v16)
  {
    if ((*(v6 + 8) & 1) == 0)
    {
      if ((a4 & 1) == 0)
      {
        _StringGuts.grow(_:)(39);
        v19 = a2(v17, v18);
        v21 = v20;

        MEMORY[0x193ABEDD0](0xD000000000000025, 0x800000018DD78BF0);
        specialized static Log.externalWarning(_:)(v19, v21);
      }

      *(v6 + 8) = 1;
    }
  }

  else
  {
    Stack3.push(_:)(a1, v15);
  }

  return (v16 & 1) == 0;
}

uint64_t type metadata completion function for Stack3()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v3 = &v2;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t Stack3.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v102 = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v101 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v118 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v100 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v97 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v97 - v14;
  v120 = *(v8 - 8);
  v16 = v120;
  MEMORY[0x1EEE9AC00](v17);
  v97 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v97 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v97 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v97 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v123 = &v97 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v97 - v28;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v116 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v122 = &v97 - v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v97 - v36;
  v39 = *(v38 + 16);
  v113 = v38 + 16;
  v114 = v3;
  v125 = v40;
  v108 = v39;
  (v39)(&v97 - v36, v3, v35);
  v41 = v6[2];
  v115 = a1;
  v110 = v6 + 2;
  v107 = v41;
  v41(v29, a1, v5);
  v42 = v6[7];
  v109 = v6 + 7;
  v106 = v42;
  v42(v29, 0, 1, v5);
  v124 = TupleTypeMetadata2;
  v43 = *(TupleTypeMetadata2 + 48);
  v121 = v16;
  v45 = v16 + 16;
  v44 = *(v16 + 16);
  v44(v15, v37, v8);
  v44(&v15[v43], v29, v8);
  v119 = v6;
  v48 = v6[6];
  v46 = v6 + 6;
  v47 = v48;
  v49 = v48(v15, 1, v5);
  v111 = v48;
  v112 = v45;
  v117 = v44;
  if (v49 != 1)
  {
    v44(v123, v15, v8);
    if (v47(&v15[v43], 1, v5) != 1)
    {
      v53 = v119;
      v54 = v101;
      (v119[4])(v101, &v15[v43], v5);
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      v98 = v46;
      v55 = v53[1];
      v55(v54, v5);
      v50 = *(v120 + 8);
      v50(v29, v8);
      v55(v123, v5);
      v46 = v98;
      v50(v15, v8);
      goto LABEL_8;
    }

    v50 = *(v120 + 8);
    v50(v29, v8);
    (v119[1])(v123, v5);
LABEL_6:
    v52 = v124;
    (*(v118 + 8))(v15, v124);
    v51 = 0;
    goto LABEL_9;
  }

  v50 = *(v120 + 8);
  v50(v29, v8);
  if (v47(&v15[v43], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  v50(v15, v8);
  v51 = 1;
LABEL_8:
  v52 = v124;
LABEL_9:
  v56 = v125;
  v57 = *(v125 + 48);
  v58 = v121 + 8;
  v50(&v37[*(v125 + 64)], v8);
  v50(&v37[v57], v8);
  v50(v37, v8);
  if ((v51 & 1) == 0)
  {
    v121 = v58;
    v60 = v122;
    v108(v122, v114, v56);
    v61 = &v60[*(v56 + 48)];
    v62 = v52;
    v63 = v105;
    v107(v105, v115, v5);
    v106(v63, 0, 1, v5);
    v64 = *(v62 + 48);
    v65 = v104;
    v123 = v61;
    v66 = v117;
    v117(v104, v61, v8);
    v66(&v65[v64], v63, v8);
    v67 = v111;
    if (v111(v65, 1, v5) == 1)
    {
      v50(v63, v8);
      v68 = v67(&v65[v64], 1, v5);
      v69 = v116;
      if (v68 == 1)
      {
        v50(v65, v8);
        v70 = v122;
        v71 = v123;
        v72 = &v122[*(v125 + 64)];
        v59 = 1;
LABEL_27:
        v50(v72, v8);
        v50(v71, v8);
        v50(v70, v8);
        return v59 & 1;
      }
    }

    else
    {
      v73 = v99;
      v66(v99, v65, v8);
      if (v67(&v65[v64], 1, v5) != 1)
      {
        v98 = v46;
        v85 = v119;
        v86 = v101;
        (v119[4])(v101, &v65[v64], v5);
        LODWORD(v120) = dispatch thunk of static Equatable.== infix(_:_:)();
        v87 = v65;
        v88 = v85[1];
        v89 = v86;
        v78 = v66;
        v88(v89, v5);
        v50(v105, v8);
        v88(v99, v5);
        v74 = v124;
        v50(v87, v8);
        v75 = v125;
        v90 = v122;
        v50(&v122[*(v125 + 64)], v8);
        v50(v123, v8);
        v50(v90, v8);
        v77 = v116;
        if (v120)
        {
          goto LABEL_10;
        }

LABEL_17:
        v108(v77, v114, v75);
        v79 = &v77[*(v75 + 64)];
        v80 = v103;
        v107(v103, v115, v5);
        v106(v80, 0, 1, v5);
        v81 = *(v74 + 48);
        v82 = v100;
        v123 = v79;
        v78(v100, v79, v8);
        v78(&v82[v81], v80, v8);
        v83 = v111;
        if (v111(v82, 1, v5) == 1)
        {
          v50(v80, v8);
          if (v83(&v82[v81], 1, v5) == 1)
          {
            v50(v82, v8);
            v59 = 1;
            v70 = v116;
LABEL_26:
            v71 = &v70[*(v125 + 48)];
            v72 = v123;
            goto LABEL_27;
          }
        }

        else
        {
          v84 = v97;
          v117(v97, v82, v8);
          if (v83(&v82[v81], 1, v5) != 1)
          {
            v91 = v84;
            v92 = v119;
            v93 = v101;
            (v119[4])(v101, &v82[v81], v5);
            v59 = dispatch thunk of static Equatable.== infix(_:_:)();
            v94 = v92[1];
            v95 = v116;
            v94(v93, v5);
            v50(v103, v8);
            v94(v91, v5);
            v70 = v95;
            v50(v100, v8);
            goto LABEL_26;
          }

          v50(v103, v8);
          (v119[1])(v84, v5);
        }

        (*(v118 + 8))(v82, v124);
        v59 = 0;
        v70 = v116;
        goto LABEL_26;
      }

      v50(v105, v8);
      (v119[1])(v73, v5);
      v69 = v116;
    }

    v98 = v46;
    v74 = v124;
    (*(v118 + 8))(v65, v124);
    v75 = v125;
    v76 = v122;
    v50(&v122[*(v125 + 64)], v8);
    v50(v123, v8);
    v50(v76, v8);
    v77 = v69;
    v78 = v117;
    goto LABEL_17;
  }

LABEL_10:
  v59 = 1;
  return v59 & 1;
}

uint64_t Stack3.push(_:)(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v3 = *(a2 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v26 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = *(TupleTypeMetadata3 + 64);
  v32 = v2;
  v13 = v2 + v12;
  v34 = *(v5 + 16);
  v34(v11, v2 + v12, v4);
  v14 = *(v3 - 8);
  v33 = *(v14 + 48);
  v15 = v33(v11, 1, v3);
  v28 = v5;
  v16 = *(v5 + 8);
  v16(v11, v4);
  if (v15 == 1)
  {
    v17 = v13;
  }

  else
  {
    v27 = v13;
    v18 = v31;
    v19 = v32;
    TupleTypeMetadata3 = v32 + *(TupleTypeMetadata3 + 48);
    (v34)(v31);
    v20 = v33(v18, 1, v3);
    v16(v18, v4);
    if (v20 == 1)
    {
      v17 = TupleTypeMetadata3;
    }

    else
    {
      v17 = v19;
      v22 = v29;
      v21 = TupleTypeMetadata3;
      v34(v29, v17, v4);
      v23 = v33(v22, 1, v3);
      v16(v22, v4);
      if (v23 != 1)
      {
        v24 = *(v28 + 24);
        v24(v27, v21, v4);
        v24(v21, v17, v4);
      }
    }
  }

  v16(v17, v4);
  (*(v14 + 16))(v17, v35, v3);
  return (*(v14 + 56))(v17, 0, 1, v3);
}

CGPathRef Path.cgPath.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if (v2 <= 2)
  {
    if (*(v0 + 32))
    {
      if (v2 != 1)
      {
        return FixedRoundedRect.cgPath.getter();
      }

      v3 = *v0;
      v4 = *(v0 + 8);
      v5 = *(v0 + 16);
      v6 = *(v0 + 24);

      return CGPathCreateWithEllipseInRect(*&v3, 0);
    }

    v8 = *v0;
    v9 = *(v0 + 8);
    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
    goto LABEL_15;
  }

  if (v2 != 5)
  {
    if (v2 == 6)
    {
      v8 = *MEMORY[0x1E695F050];
      v9 = *(MEMORY[0x1E695F050] + 8);
      v10 = *(MEMORY[0x1E695F050] + 16);
      v11 = *(MEMORY[0x1E695F050] + 24);
LABEL_15:

      return CGPathCreateWithRect(*&v8, 0);
    }

LABEL_26:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
    }

    else
    {
      v13 = one-time initialization token for bufferCallbacks;

      if (v13 != -1)
      {
        swift_once();
      }
    }

    v14 = RBPathCopyCGPath();
    outlined destroy of Path(v0);
    return v14;
  }

  v12 = *(v1 + 24);
  if (!v12)
  {
    __break(1u);
    goto LABEL_26;
  }

  return v12;
}

uint64_t instantiation function for generic protocol witness table for Color.Resolved(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t specialized AttributeInvalidatingSubscriber.receive(_:)()
{
  swift_beginAccess();
  v1 = type metadata accessor for AttributeInvalidatingSubscriber.StateType();
  v2 = *(v1 - 8);
  (*(v2 + 16))(v5, v0 + 32, v1);
  v3 = v5[3];
  (*(v2 + 8))(v5, v1);
  if (v3 >= 2)
  {
    AttributeInvalidatingSubscriber.invalidateAttribute()();
  }

  return static Subscribers.Demand.none.getter();
}

uint64_t AttributeInvalidatingSubscriber.invalidateAttribute()()
{
  if (!pthread_main_np())
  {
    static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    goto LABEL_16;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock) || static Update.dispatchDepth >= static Update.depth)
  {
LABEL_16:
    v2 = 0;
    goto LABEL_17;
  }

  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v1 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_25:
    static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    goto LABEL_28;
  }

  if (static Semantics.forced >= v1)
  {
    goto LABEL_25;
  }

LABEL_28:
  v2 = 1;
LABEL_17:
  Strong = swift_weakLoadStrong();
  v4 = *(v0 + 24);
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v5 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  if (Strong)
  {
    v6 = _threadTransactionData();
    if (v6)
    {
      type metadata accessor for PropertyList.Element();
      swift_unknownObjectRetain();
      v6 = swift_dynamicCastClassUnconditional();
    }

    v7 = _threadTransactionID();
    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(v6, v7, v4, v2, 1);
  }

  static Update.end()();
  _MovableLockUnlock(v5);
}

double protocol witness for Shape.sizeThatFits(_:) in conformance Circle(uint64_t a1, char a2, uint64_t a3, char a4)
{
  result = *&a3;
  v5 = 10.0;
  if ((a4 & 1) == 0)
  {
    v5 = *&a3;
  }

  if (*&a3 >= *&a1)
  {
    result = *&a1;
  }

  if (a4)
  {
    result = *&a1;
  }

  if (a2)
  {
    return v5;
  }

  return result;
}

void sub_18D242DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _SwiftUIProxyImage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t Transaction.addAnimationListener(_:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, uint64_t, _BYTE *))
{
  if (one-time initialization token for pendingListeners != -1)
  {
    swift_once();
  }

  v7 = static Transaction.pendingListeners;
  v8 = *(type metadata accessor for Transaction.PendingListeners(0) - 8);
  v9 = (*(v8 + 80) + 20) & ~*(v8 + 80);
  os_unfair_lock_lock(v7 + 4);
  closure #1 in static Transaction.addPendingListener(_:)(v7 + v9);
  os_unfair_lock_unlock(v7 + 4);
  v10 = a2(*v3);
  if (v10 && (v11 = *(v10 + 72)) != 0)
  {
    type metadata accessor for ListenerPair();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    swift_retain_n();

    a3(v3, v12, v14);
  }

  else
  {

    a3(v3, a1, v15);
  }
}

uint64_t closure #1 in DynamicContainerInfo.tryRemovingItem(at:disableTransitions:)(uint64_t result)
{
  v1 = *(result + 32) - 1;
  *(result + 32) = v1;
  if (!v1)
  {
    v2 = result;
    result = swift_weakLoadStrong();
    if (result)
    {
      specialized GraphHost.continueTransaction<A>(_:)(*(v2 + 24));
    }
  }

  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<DisplayList.ViewUpdater.ViewCache.Key>, lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewCache.Key, MEMORY[0x1E69E6A10]);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v32 = v1;
    v5 = 0;
    v33 = (v2 + 56);
    v34 = v2;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    v35 = v3;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v36 = (v8 - 1) & v8;
LABEL_15:
      v17 = *(v2 + 48) + 20 * (v13 | (v5 << 6));
      v19 = *v17;
      v18 = *(v17 + 4);
      v20 = *(v17 + 8);
      v21 = *(v17 + 12);
      v22 = *(v17 + 16);
      v23 = *(v17 + 17);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v18);
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      result = Hasher._finalize()();
      v4 = v35;
      v24 = -1 << *(v35 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v10 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v10 + 8 * v26);
          if (v30 != -1)
          {
            v11 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v25) & ~*(v10 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v35 + 48) + 20 * v11;
      *v12 = v19;
      *(v12 + 4) = v18;
      *(v12 + 8) = v20;
      *(v12 + 12) = v21;
      *(v12 + 16) = v22;
      *(v12 + 17) = v23;
      ++*(v35 + 16);
      v2 = v34;
      v8 = v36;
    }

    v14 = v5;
    result = v33;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v9)
      {
        break;
      }

      v16 = v33[v5];
      ++v14;
      if (v16)
      {
        v13 = __clz(__rbit64(v16));
        v36 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v2 + 32);
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    v1 = v32;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for _SetStorage<AnyHashable2>(0, &lazy cache variable for type metadata for _SetStorage<Subview.ID>, lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID, &type metadata for Subview.ID, MEMORY[0x1E69E6A10]);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v34 = v1;
    v35 = (v2 + 56);
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    v36 = v2;
    v37 = v3;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v39 = (v8 - 1) & v8;
LABEL_15:
      v17 = *(v2 + 48) + 16 * (v13 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 4);
      v20 = *(v17 + 8);
      Hasher.init(_seed:)();
      v38 = v18;
      Hasher._combine(_:)(v18);
      Hasher._combine(_:)(v19);
      v40 = v20;
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = (v20 + 48);
        do
        {
          v23 = *(v22 - 2);
          v24 = *v22;
          v22 += 6;
          v25 = *(*v23 + 120);

          v25(v41);
          Hasher._combine(_:)(v24);

          --v21;
        }

        while (v21);
      }

      result = Hasher._finalize()();
      v4 = v37;
      v26 = -1 << *(v37 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v10 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v10 + 8 * v28);
          if (v32 != -1)
          {
            v11 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v27) & ~*(v10 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v2 = v36;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v37 + 48) + 16 * v11;
      *v12 = v38;
      *(v12 + 4) = v19;
      v8 = v39;
      *(v12 + 8) = v40;
      ++*(v37 + 16);
    }

    v14 = v5;
    result = v35;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v9)
      {
        break;
      }

      v16 = v35[v5];
      ++v14;
      if (v16)
      {
        v13 = __clz(__rbit64(v16));
        v39 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v2 + 32);
    if (v33 >= 64)
    {
      bzero(v35, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v35 = -1 << v33;
    }

    v1 = v34;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t specialized closure #1 in GraphHost.continueTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = _threadTransactionID();
  result = a3(0, v5, a2, 1, 1);
  if (one-time initialization token for enabledCategories != -1)
  {
    v7 = result;
    swift_once();
    result = v7;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 116) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20052;
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in GraphHost.continueTransaction<A>(_:)()
{
  return specialized closure #1 in GraphHost.continueTransaction<A>(_:)(*(v0 + 16), *(v0 + 24), specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:));
}

{
  return specialized closure #1 in GraphHost.continueTransaction<A>(_:)(*(v0 + 16), *(v0 + 24), specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:));
}

void specialized DynamicContainerInfo.eraseItem(at:)(unint64_t a1)
{
  v5 = v1[17];
  v6 = (v5 + 8 * a1);
  v7 = v5 & 0xC000000000000001;
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v2 = v6[4];

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_25;
  }

  v2 = MEMORY[0x193AC03C0](a1, v1[17]);
LABEL_5:
  swift_beginAccess();
  v8 = v2[84];

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_28;
    }

    --v1[20];
    v3 = v1[21];
    if (v7)
    {
LABEL_8:
      v2 = *(MEMORY[0x193AC03C0](a1, v5) + 16);
      swift_unknownObjectRelease();
      v9 = MEMORY[0x193AC03C0](a1, v5);
      v10 = v9;
      if ((v3 & 0x8000000000000000) == 0)
      {
LABEL_9:
        v11 = MEMORY[0x1EEE9AC00](v9);
        v12(partial apply for closure #1 in DynamicLayoutViewAdaptor.removeItemLayout(uniqueId:itemLayout:), v11);
        if (*(v10 + 56))
        {
          swift_weakAssign();
        }

        specialized Array.remove(at:)(a1);

        AGSubgraphRef.willInvalidate(isInserted:)(1);
        AGSubgraphInvalidate();
        goto LABEL_21;
      }

LABEL_17:
      v6 = v1;
      specialized Array.remove(at:)(a1);

      *(v10 + 72) = 0;
      ++*(v10 + 80);
      swift_beginAccess();
      *(v10 + 84) = 3;
      if (*(v10 + 56))
      {
        swift_weakAssign();
      }

      *(v10 + 56) = 0;

      MEMORY[0x193ABF170](v13);
      if (*((v1[17] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v1[17] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (v8 != 1)
    {
      goto LABEL_28;
    }

    v3 = v1[21];
    if (v7)
    {
      goto LABEL_8;
    }
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_20:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v6[21] = v3 + 1;
    AGSubgraphApply();
    AGSubgraphRemoveChild();
LABEL_21:

    return;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v10 = v6[4];
    v2 = *(v10 + 16);

    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_28:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall DynamicLayoutMap.remove(uniqueId:)(Swift::UInt32 uniqueId)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return;
  }

  v5 = 0;
  v6 = *(*v1 + 16);
  do
  {
    v7 = v6 >> 1;
    v8 = v5 + (v6 >> 1);
    if (__OFADD__(v5, v6 >> 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v8 >= v3)
    {
      goto LABEL_22;
    }

    v9 = (v2 + 32 + 16 * v8);
    if (*v9 < uniqueId || *v9 == uniqueId && (v9[1] & 0x80000000) != 0)
    {
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_23;
      }

      v7 = v6 + ~v7;
    }

    v6 = v7;
  }

  while (v7 > 0);
  if (v5 == v3)
  {
    return;
  }

  if (v3 < v5)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = (v2 + 16 * v5 + 32);
  v11 = v5;
  while (1)
  {
    v12 = *v10;
    v10 += 4;
    if (v12 != uniqueId)
    {
      break;
    }

    if (v3 == ++v11)
    {
      v11 = *(*v1 + 16);
      break;
    }
  }

  if (v11 >= v5)
  {
    specialized Array.replaceSubrange<A>(_:with:)(v5, v11);
    v1[4] = 0;
    return;
  }

LABEL_26:
  __break(1u);
}

uint64_t closure #1 in AGSubgraphRef.willInvalidate(isInserted:)(uint64_t a1, char a2)
{
  v4 = *AGGraphGetAttributeInfo();
  result = static InvalidatableAttributeDescriptor.cachedConformance(of:)(v4, v6);
  if (v6[0])
  {
    return (*(v6[1] + 16))(a1);
  }

  if (a2)
  {
    result = static RemovableAttributeDescriptor.cachedConformance(of:)(v4, v6);
    if (v6[0])
    {
      return (*(v6[1] + 16))(a1);
    }
  }

  return result;
}

uint64_t static InvalidatableAttributeDescriptor.cachedConformance(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    if (one-time initialization token for typeCache != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = static InvalidatableAttributeDescriptor.typeCache;
    if (*(static InvalidatableAttributeDescriptor.typeCache + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
    {
      v10 = *(v4[7] + 16 * v5);
      result = swift_endAccess();
      *a2 = v10;
    }

    else
    {
      swift_endAccess();
      _invalidatableAttributeProtocolDescriptor();
      result = swift_conformsToProtocol();
      if (result)
      {
        v8 = result;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = static InvalidatableAttributeDescriptor.typeCache;
        static InvalidatableAttributeDescriptor.typeCache = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v8, a1, isUniquelyReferenced_nonNull_native);
        static InvalidatableAttributeDescriptor.typeCache = v11;
        result = swift_endAccess();
        *a2 = a1;
        *(a2 + 8) = v8;
      }

      else
      {
        *a2 = 0;
        *(a2 + 8) = 0;
      }
    }
  }

  return result;
}

uint64_t DynamicAnimationListener.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

Class once_init()
{
  result = NSClassFromString(&cfstr_Uiview.isa);
  _uiViewClass = result;
  return result;
}

uint64_t CoreViewSubviewAtIndex(uint64_t result, void *a2, uint64_t a3, char *a4)
{
  if (result == 1)
  {
    v7 = [objc_msgSend(objc_msgSend(a2 "layer")];

    return CoreViewLayerView(1, v7, a4);
  }

  else if (!result)
  {
    *a4 = 0;
    v6 = [a2 sublayers];

    return [v6 objectAtIndexedSubscript:a3];
  }

  return result;
}

uint64_t CoreViewLayerView(int a1, uint64_t a2, char *a3)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  Delegate = CALayerGetDelegate();
  if (a1 != 1)
  {
    goto LABEL_7;
  }

  v7 = Delegate;
  if (_once != -1)
  {
    CoreViewLayerView_cold_1();
  }

  if (objc_opt_isKindOfClass())
  {
    v8 = 1;
    a2 = v7;
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  *a3 = v8;
  return a2;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, unint64_t a2, unint64_t a3, __int16 a4)
{
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v11 = a4 & 0x100;
  v12 = *v4;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(HIBYTE(a4) & 1);
  v13 = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = *(v12 + 48) + 20 * v15;
      v18 = *v17 == a2 && *(v17 + 4) == v9;
      v19 = v18 && *(v17 + 8) == a3;
      if (v19 && *(v17 + 12) == v10 && *(v17 + 16) == a4)
      {
        v21 = *(v17 + 17);
        if ((((v11 != 0) ^ v21) & 1) == 0)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    result = 0;
    *a1 = a2;
    *(a1 + 4) = v9;
    *(a1 + 8) = a3;
    *(a1 + 12) = v10;
    *(a1 + 16) = a4;
    *(a1 + 17) = v21;
  }

  else
  {
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v24;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4 & 0x1FF, v15, isUniquelyReferenced_nonNull_native);
    *v24 = v25;
    *a1 = a2;
    *(a1 + 4) = v9;
    *(a1 + 8) = a3;
    *(a1 + 12) = v10;
    *(a1 + 16) = a4;
    *(a1 + 17) = BYTE1(v11);
    return 1;
  }

  return result;
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, __int16 a3, unint64_t a4, char a5)
{
  v6 = a3;
  v7 = a2;
  v8 = result;
  v9 = HIDWORD(result);
  v10 = HIDWORD(a2);
  v11 = a3 & 0x100;
  v12 = *(*v5 + 16);
  v13 = *(*v5 + 24);
  v14 = v11 >> 8;
  if (v13 > v12 && (a5 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a5)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v13 > v12)
    {
      v15 = a4;
      result = specialized _NativeSet.copy()();
      a4 = v15;
      goto LABEL_25;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v16 = *v5;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(BYTE1(v11));
  result = Hasher._finalize()();
  v17 = -1 << *(v16 + 32);
  a4 = result & ~v17;
  if ((*(v16 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v18 = ~v17;
    while (1)
    {
      v19 = *(v16 + 48) + 20 * a4;
      v20 = *v19 == v8 && *(v19 + 4) == v9;
      v21 = v20 && *(v19 + 8) == v7;
      v22 = v21 && *(v19 + 12) == v10;
      if (v22 && *(v19 + 16) == v6 && (((v11 != 0) ^ *(v19 + 17)) & 1) == 0)
      {
        break;
      }

      a4 = (a4 + 1) & v18;
      if (((*(v16 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_25:
  v23 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v24 = *(v23 + 48) + 20 * a4;
  *v24 = v8;
  *(v24 + 4) = v9;
  *(v24 + 8) = v7;
  *(v24 + 12) = v10;
  *(v24 + 16) = v6;
  *(v24 + 17) = v14;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }

  return result;
}

uint64_t CoreViewRemoveFromSuperview(int a1, void *a2)
{
  if (a1)
  {
    return [a2 removeFromSuperview];
  }

  else
  {
    return [a2 removeFromSuperlayer];
  }
}

unint64_t specialized MutableCollection.swapAt(_:_:)(unint64_t result, unint64_t a2, uint64_t (*a3)(unint64_t))
{
  if (result != a2)
  {
    v7 = result;
    v8 = *v3;
    if ((*v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x193AC03C0](result, *v3);
      v10 = MEMORY[0x193AC03C0](a2, v8);
      goto LABEL_7;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 > result)
      {
        if (v9 > a2)
        {
          v4 = *(v8 + 32 + 8 * result);
          v10 = *(v8 + 32 + 8 * a2);

LABEL_7:
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
          {
            v8 = a3(v8);
            v11 = (v8 >> 62) & 1;
          }

          else
          {
            LODWORD(v11) = 0;
          }

          v12 = v8 & 0xFFFFFFFFFFFFFF8;
          *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v10;

          if ((v8 & 0x8000000000000000) == 0 && !v11)
          {
            if ((a2 & 0x8000000000000000) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_23;
          }

LABEL_22:
          result = a3(v8);
          v8 = result;
          v12 = result & 0xFFFFFFFFFFFFFF8;
          if ((a2 & 0x8000000000000000) == 0)
          {
LABEL_15:
            if (*(v12 + 16) > a2)
            {
              *(v12 + 8 * a2 + 32) = v4;

              *v3 = v8;
              return result;
            }

LABEL_24:
            __break(1u);
            return result;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t specialized DynamicContainerInfo.tryRemovingItem(at:disableTransitions:)(unint64_t a1, char a2)
{
  v5 = *(v2 + 136);
  v6 = v5 + 8 * a1;
  v7 = v5 & 0xC000000000000001;
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v8 = *(v6 + 32);

      goto LABEL_5;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v8 = MEMORY[0x193AC03C0](a1, *(v2 + 136));
LABEL_5:
  swift_beginAccess();
  v9 = *(v8 + 84);

  if (v9 > 2)
  {
    return 0;
  }

  if (v9 == 1)
  {
    if (a2)
    {
      goto LABEL_22;
    }

    if (v7)
    {
      v10 = *(MEMORY[0x193AC03C0](a1, v5) + 48);
      swift_unknownObjectRelease();
      if (v10)
      {
        v11 = *(v2 + 188);
        if ((v11 + 1) > 1)
        {
          v12 = v11 + 1;
        }

        else
        {
          v12 = 1;
        }

        *(v2 + 188) = v12;
        v13 = MEMORY[0x193AC03C0](a1, v5);
LABEL_31:
        *(v13 + 72) = v12;

        ++*(v2 + 160);
        if (v7)
        {
          v19 = MEMORY[0x193AC03C0](a1, v5);
LABEL_36:
          swift_beginAccess();
          *(v19 + 84) = 2;

          if (v7)
          {
            if (!*(MEMORY[0x193AC03C0](a1, v5) + 56))
            {
              goto LABEL_39;
            }

            goto LABEL_38;
          }

          if ((a1 & 0x8000000000000000) == 0)
          {
            if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
            {
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            v23 = *(v6 + 32);

            if (!*(v23 + 56))
            {
              goto LABEL_39;
            }

LABEL_38:

            swift_weakAssign();
LABEL_39:

            specialized static GraphHost.currentHost.getter();
            AGGraphGetCurrentAttribute();
            v20 = AGCreateWeakAttribute();
            type metadata accessor for ViewGraph();
            swift_dynamicCastClassUnconditional();
            type metadata accessor for DynamicAnimationListener();
            v21 = swift_allocObject();
            swift_weakInit();
            *(v21 + 32) = 0;
            swift_weakAssign();

            *(v21 + 24) = v20;
            if (v7)
            {
              v22 = MEMORY[0x193AC03C0](a1, v5);
LABEL_48:
              *(v22 + 56) = v21;

              ++*(v21 + 32);
              v24 = 17;

              static Update.enqueueAction(reason:_:)(&v24, partial apply for closure #1 in DynamicContainerInfo.tryRemovingItem(at:disableTransitions:), v21);

              return 0;
            }

            if ((a1 & 0x8000000000000000) == 0)
            {
              if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
              {
                v22 = *(v6 + 32);

                goto LABEL_48;
              }

              goto LABEL_64;
            }

            goto LABEL_62;
          }

          goto LABEL_59;
        }

        if ((a1 & 0x8000000000000000) == 0)
        {
          if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
          {
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v19 = *(v6 + 32);

          goto LABEL_36;
        }

LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      goto LABEL_22;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        if (*(*(v5 + 32 + 8 * a1) + 48))
        {
          v18 = *(v2 + 188);
          if ((v18 + 1) > 1)
          {
            v12 = v18 + 1;
          }

          else
          {
            v12 = 1;
          }

          *(v2 + 188) = v12;
          if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
          {
            goto LABEL_60;
          }

          goto LABEL_31;
        }

LABEL_22:
        specialized DynamicContainerInfo.eraseItem(at:)(a1);
        return 1;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v9 != 2)
  {
LABEL_66:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v7)
  {
    v14 = MEMORY[0x193AC03C0](a1, v5);
    goto LABEL_20;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_54;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v14 = *(v6 + 32);

LABEL_20:
  v15 = *(v14 + 56);

  if (!v15)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v16 = *(v15 + 32);

  if (!v16)
  {
    goto LABEL_22;
  }

  return 0;
}

uint64_t specialized Array.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = *v6;
  v13 = *v6 >> 62;
  if (!v13)
  {
    result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= a5)
    {
      goto LABEL_3;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  result = __CocoaSet.count.getter();
  if (result < a5)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (a5 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v13)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a6)
  {
    goto LABEL_30;
  }

  if ((a6 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v12 & 0xC000000000000001) == 0)
  {
LABEL_12:

    goto LABEL_16;
  }

  if (a6 < a5)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a5 == a6)
  {
    goto LABEL_12;
  }

  if (a5 >= a6)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  type metadata accessor for DynamicContainer.ItemInfo();

  v15 = a5;
  do
  {
    v16 = v15 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v15);
    v15 = v16;
  }

  while (a6 != v16);
LABEL_16:

  if (v13)
  {
    _CocoaArrayWrapper.subscript.getter();
    v17 = v19;
    v18 = v20;
    result = swift_unknownObjectRelease();
  }

  else
  {
    v17 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
    v18 = a5;
  }

  if (v17 + 8 * v18 == a2 + 8 * a3)
  {
    if ((a4 >> 1) >= a3)
    {
      if (a5 == a3 && a4 >> 1 == a6)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_33;
  }

LABEL_20:

  return specialized Array.replaceSubrange<A>(_:with:)(a5, a6, a1, a2, a3, a4);
}

uint64_t StoredLocationBase.BeginUpdate.combine<A>(with:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v10 + 16))(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = 0;
    v23 = 1;
    v16 = type metadata accessor for Optional();
    (*(*(v16 - 8) + 8))(&v22, v16);
    return 0;
  }

  v23 = 0;
  v11 = *(a2 - 8);
  (*(v11 + 32))(v24, &v22, a2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_8:
    (*(v11 + 8))(v24, a2);
    return 0;
  }

  v13 = Strong;
  v14 = swift_weakLoadStrong();
  if (!v14)
  {

    goto LABEL_8;
  }

  v15 = v14;

  if (v15 == v13)
  {
    swift_beginAccess();
    v18 = *(v13 + 16);
    v19 = type metadata accessor for StoredLocationBase.Data();
    v20 = (*(*(v19 - 8) + 80) + 20) & ~*(*(v19 - 8) + 80);
    v21 = v19;

    os_unfair_lock_lock(v18 + 4);
    type metadata accessor for Array();
    swift_getWitnessTable();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.removeLast()();
    (*(v4 + 8))(v6, v3);
    $defer #1 <A>() in AtomicBox.wrappedValue.getter(&v18[4], v18, v21);

    (*(v11 + 8))(v24, a2);

    return 1;
  }

  (*(v11 + 8))(v24, a2);

  return 0;
}

uint64_t outlined init with take of ClosedRange<Date>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL closure #2 in closure #1 in static Transaction.dispatchPending()()
{
  type metadata accessor for DispatchTime();
  type metadata accessor for Transaction.PendingListeners.WeakListener(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchTime and conformance DispatchTime, MEMORY[0x1E69E7FF8]);
  return (dispatch thunk of static Comparable.> infix(_:_:)() & 1) == 0;
}

uint64_t specialized DynamicLayoutComputer.updateValue()()
{
  AGGraphGetValue();
  result = *(v0 + 8);
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 4);
    Value = AGGraphGetValue();
    v4 = *(Value + 8);
    v5 = *(Value + 32);
    v6 = *(Value + 40);
    v7 = *(Value + 44);
    v9[0] = *Value;
    v9[1] = v4;
    v10 = *(Value + 16);
    v11 = v5;
    v12 = v6;
    v13 = v7;

    v8 = specialized DynamicLayoutMap.attributes(info:)(v9);

    specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v2, v8);
  }

  return result;
}

{
  result = AGGraphGetValue();
  v2 = *(result + 16);
  v18[0] = *result;
  v18[1] = v2;
  v4 = *(result + 48);
  v3 = *(result + 64);
  v5 = *(result + 80);
  v18[2] = *(result + 32);
  v19 = v5;
  v18[3] = v4;
  v18[4] = v3;
  if (*(v0 + 8) == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 4);
    outlined init with copy of GlassEffectLayout(v18, v13);
    Value = AGGraphGetValue();
    v8 = *(Value + 8);
    v9 = *(Value + 32);
    v10 = *(Value + 40);
    v11 = *(Value + 44);
    v13[0] = *Value;
    v13[1] = v8;
    v14 = *(Value + 16);
    v15 = v9;
    v16 = v10;
    v17 = v11;

    v12 = specialized DynamicLayoutMap.attributes(info:)(v13);

    specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v18, v6, v12);

    return outlined destroy of GlassEffectLayout(v18);
  }

  return result;
}

{
  Value = AGGraphGetValue();
  result = *(v0 + 8);
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 4);
    v4 = *Value;
    v5 = AGGraphGetValue();
    v6 = *(v5 + 8);
    v7 = *(v5 + 32);
    v8 = *(v5 + 40);
    v9 = *(v5 + 44);
    v11[0] = *v5;
    v11[1] = v6;
    v12 = *(v5 + 16);
    v13 = v7;
    v14 = v8;
    v15 = v9;

    v10 = specialized DynamicLayoutMap.attributes(info:)(v11);

    specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v4, v3, v10);
  }

  return result;
}

uint64_t closure #1 in ValueActionDispatcher.updateValue()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v18 = a1;
  v19 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *(a3 + 24);
  v14(a2, a3, v11);
  (v14)(a2, a3);
  swift_getAssociatedConformanceWitness();
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v7 + 8);
  v16(v9, AssociatedTypeWitness);
  result = (v16)(v13, AssociatedTypeWitness);
  *v19 = (v15 & 1) == 0;
  return result;
}

uint64_t closure #1 in AnimationBox.isEqual(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2;
  v5 = *(*a2 + 160);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v14 = *(v6 + 16);
  (v14)(&v17 - v11, *v13 + *(**v13 + 176), v5, v10);
  v14(v8, v3 + *(*v3 + 176), v5);
  LOBYTE(v3) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v6 + 8);
  v15(v8, v5);
  result = (v15)(v12, v5);
  *a3 = v3 & 1;
  return result;
}

uint64_t AnimationBox.isEqual(to:)()
{
  type metadata accessor for AnimationBox();
  if (swift_dynamicCastClass())
  {
  }

  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in AnimationBox.isEqual(to:), v0, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v1, &v3);

  return v3 & 1;
}

uint64_t static _AnimationModifier.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *(**a1 + 104);

      v5 = v3(v4);

      if (v5)
      {
        goto LABEL_4;
      }
    }
  }

  else if (!v2)
  {
LABEL_4:
    type metadata accessor for _AnimationModifier();
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t AsyncTransaction.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = (v3 + 16);
  v14 = *(v3 + 16);
  v15 = v14[2];
  if (!v15)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
    v14 = result;
  }

  if (v15 > v14[2])
  {
    __break(1u);
    return result;
  }

  v17 = &v14[5 * v15];
  v18 = v17[2];
  v19 = v17[3];
  __swift_mutable_project_boxed_opaque_existential_1((v17 - 1), v18);
  result = (*(v19 + 16))(a1, a2, v25, v18, v19);
  *v13 = v14;
  if ((result & 1) == 0)
  {
LABEL_6:
    v20 = *(v6 + 16);
    v20(v12, a1, a2, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
      *v13 = v14;
    }

    v23 = v14[2];
    v22 = v14[3];
    if (v23 >= v22 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v14);
      *v13 = v14;
    }

    (v20)(v8, v12, a2);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v23, v8, v13, a2, v25);
    result = (*(v6 + 8))(v12, a2);
    *v13 = v14;
  }

  return result;
}

void Image.Resolved.modifyTransition(state:to:)(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v23[4] = a2[4];
  v24[0] = v4;
  *(v24 + 12) = *(a2 + 92);
  v5 = a2[1];
  v23[0] = *a2;
  v23[1] = v5;
  v6 = a2[3];
  v23[2] = a2[2];
  v23[3] = v6;
  v7 = v2[1];
  v25[0] = *v2;
  v25[1] = v7;
  v8 = v2[2];
  v9 = v2[3];
  *(v26 + 12) = *(v2 + 92);
  v10 = v2[5];
  v25[4] = v2[4];
  v26[0] = v10;
  v25[2] = v8;
  v25[3] = v9;
  v11 = *&v25[0];
  v12 = BYTE8(v25[0]);
  v13 = *&v23[0];
  v14 = BYTE8(v23[0]);
  if (BYTE8(v25[0]) <= 1u)
  {
    if (BYTE8(v25[0]))
    {
      if (BYTE8(v25[0]) != 1)
      {
        goto LABEL_17;
      }

      if (BYTE8(v23[0]) != 1)
      {
        outlined init with copy of GraphicsImage(v23, v22);
        outlined init with copy of GraphicsImage(v25, v22);
        v15 = 1;
        goto LABEL_20;
      }
    }

    else if (BYTE8(v23[0]))
    {
      outlined init with copy of GraphicsImage(v23, v22);
      outlined init with copy of GraphicsImage(v25, v22);
      v15 = 0;
      goto LABEL_20;
    }

    v16 = *&v25[0] == *&v23[0];
  }

  else
  {
    if (BYTE8(v25[0]) == 2)
    {
      if (BYTE8(v23[0]) == 2)
      {
        if (*(*&v23[0] + 44) != 1)
        {
          v17 = 0x8000000001;
          v19 = *a1;
          v20 = *(a1 + 8) | (*(a1 + 12) << 32);
          v21 = *(a1 + 13);
          outlined init with copy of GraphicsImage(v23, v22);
          outlined init with copy of GraphicsImage(v25, v22);
          outlined consume of ContentTransition.Storage(v19, v20, v21);
          outlined consume of GraphicsImage.Contents?(v11, 2u);
          outlined consume of GraphicsImage.Contents?(v13, 2u);
LABEL_23:
          *a1 = v17;
          *(a1 + 12) = 3;
          *(a1 + 8) = 0x2000000;
          return;
        }

        outlined init with copy of GraphicsImage(v23, v22);
        outlined init with copy of GraphicsImage(v25, v22);
        v15 = 2;
        v14 = 2;
      }

      else
      {
        outlined init with copy of GraphicsImage(v23, v22);
        outlined init with copy of GraphicsImage(v25, v22);
        v15 = 2;
      }

      goto LABEL_20;
    }

    if (BYTE8(v25[0]) != 3)
    {
      if (BYTE8(v25[0]) == 255)
      {
        outlined init with copy of GraphicsImage(v23, v22);
        v15 = -1;
LABEL_20:
        outlined consume of GraphicsImage.Contents?(v11, v15);
        outlined consume of GraphicsImage.Contents?(v13, v14);
LABEL_21:
        if ((*(a1 + 24) & 2) != 0)
        {
          return;
        }

        outlined consume of ContentTransition.Storage(*a1, *(a1 + 8) | (*(a1 + 12) << 32), *(a1 + 13));
        v17 = 0x8000000002;
        goto LABEL_23;
      }

LABEL_17:
      outlined init with copy of GraphicsImage(v23, v22);
      outlined init with copy of GraphicsImage(v25, v22);
      v15 = v12;
      goto LABEL_20;
    }

    if (BYTE8(v23[0]) != 3)
    {
      outlined init with copy of GraphicsImage(v23, v22);
      outlined init with copy of GraphicsImage(v25, v22);
      v15 = 3;
      goto LABEL_20;
    }

    v16 = *(*&v25[0] + 16) == *(*&v23[0] + 16);
  }

  v18 = v16;
  outlined init with copy of GraphicsImage(v23, v22);
  outlined init with copy of GraphicsImage(v25, v22);
  outlined consume of GraphicsImage.Contents?(v11, v12);
  outlined consume of GraphicsImage.Contents?(v13, v14);
  if ((v18 & 1) == 0)
  {
    goto LABEL_21;
  }
}

uint64_t assignWithCopy for ModifierGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((*(v6 + 40) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 40) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

void *assignWithCopy for ClosestFitCache(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t DisplayList.ViewUpdater.ViewCache.removeChildren(platform:container:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v4 = a2;
  v54 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *a1 & 3;
  result = CoreViewSubviewsCount(v6, a2);
  if (result < 0)
  {
    goto LABEL_27;
  }

  v8 = result;
  if (result)
  {
    v9 = result;
    v42 = v6;
    v41 = result;
    while (v8 >= v9)
    {
      --v9;
      LOBYTE(v46) = v6;
      v11 = CoreViewSubviewAtIndex(v6, v4, v9, &v46);
      v10 = v5;
      if (v46 != v6)
      {
        if (one-time initialization token for caLayer != -1)
        {
          swift_once();
        }

        v10 = static DisplayList.ViewUpdater.Platform.caLayer;
      }

      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v13)
      {
        v43 = v10;
        v14 = v5;
        v15 = v4;
        v16 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v3[1];
        *&v46 = v18;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v18 = v46;
        }

        v19 = v16;
        v20 = *(v18 + 56) + 20 * v16;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 17);
        specialized _NativeDictionary._delete(at:)(v19, v18);
        v3[1] = v18;
        if (v24)
        {
          v25 = 256;
        }

        else
        {
          v25 = 0;
        }

        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22, v25 | v23);
        v4 = v15;
        v5 = v14;
        v6 = v42;
        v8 = v41;
        v10 = v43;
        if (v27)
        {
          v28 = v26;
          v29 = swift_isUniquelyReferenced_nonNull_native();
          v30 = *v3;
          v45 = *v3;
          if (!v29)
          {
            specialized _NativeDictionary.copy()();
            v30 = v45;
          }

          v31 = (*(v30 + 56) + (v28 << 7));
          v33 = v31[2];
          v32 = v31[3];
          v34 = v31[1];
          v46 = *v31;
          v47 = v34;
          v48 = v33;
          v49 = v32;
          v35 = v31[4];
          v36 = v31[5];
          v37 = v31[7];
          v52 = v31[6];
          v53 = v37;
          v50 = v35;
          v51 = v36;
          specialized _NativeDictionary._delete(at:)(v28, v30);
          *v3 = v30;
          v38 = v50;
          if (v50 <= 0x12u && ((1 << v50) & 0x57C21) != 0)
          {
            v39 = v46;
            v44 = v46;
            DisplayList.ViewUpdater.ViewCache.removeChildren(platform:container:)(&v44, *(&v47 + 1));
            if (v38 == 14)
            {
              v40 = CoreViewMaskView(v39 & 3, *(&v46 + 1));
              if (v40)
              {
                v44 = v39;
                DisplayList.ViewUpdater.ViewCache.removeChildren(platform:container:)(&v44, v40);
                swift_unknownObjectRelease();
              }
            }
          }

          outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v46);
          v10 = v43;
        }
      }

      CoreViewRemoveFromSuperview(v10 & 3, v11);
      result = swift_unknownObjectRelease();
      if (!v9)
      {
        return result;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

id ResolvedStyledText.makeRBDisplayList(for:renderer:deviceScale:)(uint64_t a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  [v9 setDefaultColorSpace_];
  [v9 setDeviceScale_];
  LODWORD(v10) = 1.0;
  v11 = [v9 beginCGContextWithAlpha_];
  v12 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
  [v12 push];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static TextDrawingContext.shared;
  if (v4[27])
  {
    v14 = NSAttributedString.isDynamic.getter();
  }

  else
  {
    v14 = 0;
  }

  (*(*v4 + 296))(1, v14, v13, a1, 0.0, 0.0, a2, a3, a2, a3);
  [v12 pop];

  [v9 endCGContext];
  v15 = [v9 moveContents];

  return v15;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance BezierAnimation(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v4 = *(a1 + 24);
  v8[0] = *(a1 + 8);
  v8[1] = v4;
  v8[2] = *(a1 + 40);
  v5 = *(a2 + 24);
  v7[0] = *(a2 + 8);
  v7[1] = v5;
  v7[2] = *(a2 + 40);
  return specialized static GlassContainer.TransitionSettings.== infix(_:_:)(v8, v7);
}

BOOL specialized static GlassContainer.TransitionSettings.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0])
  {
    return a1[2].f64[1] == a2[2].f64[1];
  }

  return result;
}

uint64_t assignWithCopy for AddGestureModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  *((v7 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue()@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v32 = a4;
  v31 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v29 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _EnvironmentKeyWritingModifier();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v26 - v12;
  v30 = a1;
  v34 = *a1;
  v14 = *(v10 + 16);
  v28 = a2;
  v14(v26 - v12, a2, TupleTypeMetadata2, v11);
  v15 = *v13;
  v16 = *(v8 - 8);
  v17 = *(v16 + 8);
  v18 = v16 + 8;

  v26[1] = v18;
  v27 = v17;
  v17(v13, v8);
  v33 = v15;
  type metadata accessor for WritableKeyPath();
  LOBYTE(v18) = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v18)
  {
    v20 = *(v8 + 28);
    (v14)(v13, v28, TupleTypeMetadata2);
    v21 = v31;
    v22 = v29;
    (*(v31 + 16))(v29, &v13[*(v8 + 28)], a3);
    v23 = v27(v13, v8);
    MEMORY[0x1EEE9AC00](v23);
    v26[-4] = a3;
    v26[-3] = v22;
    LODWORD(v26[-2]) = 2;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v30 + v20, partial apply for closure #1 in compareValues<A>(_:_:options:), &v26[-6], a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v24);
    LOBYTE(v20) = v34;
    result = (*(v21 + 8))(v22, a3);
    v25 = v20 ^ 1;
  }

  else
  {
    v25 = 1;
  }

  *v32 = v25 & 1;
  return result;
}

uint64_t key path getter for EnvironmentValues.backgroundMaterial : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v3, v7);

    v5 = v7[0];
    v6 = v7[1];
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
      v6 = *(result + 80);
      result = outlined copy of Material?(v5, v6);
    }

    else
    {
      v5 = 0;
      v6 = 255;
    }
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t closure #2 in KeyPath.makeGetFunction()(uint64_t a1, void *a2)
{
  v2 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, v4);
  swift_getAtKeyPath();
  return (*(v3 + 8))(v6, v2);
}

BOOL _s7SwiftUI16IndirectOptionalOAASQRzlE2eeoiySbACyxG_AEtFZAA5ImageVAAE13LayoutMetricsV_Tt1B5(float64x2_t *a1, float64x2_t *a2)
{
  if (a1)
  {
    if (!a2 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[1], a2[1]), vceqq_f64(a1[2], a2[2])))) & 1) == 0)
    {
      return 0;
    }

    if (a1[3].f64[0] != a2[3].f64[0] || a1[3].f64[1] != a2[3].f64[1])
    {
      return 0;
    }

    return a1[4].f64[0] == a2[4].f64[0] && a1[4].f64[1] == a2[4].f64[1];
  }

  return !a2;
}

BOOL specialized static _ShapeStyle_ResolverMode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 10);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 10);
  if (!*a1)
  {
    if (v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = v3 == v6;
    }

    if (v12)
    {
      return v4 == v7;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for NSBundle();
  v8 = v5;
  v9 = v2;
  v10 = static NSObject.== infix(_:_:)();

  result = 0;
  if ((v10 & 1) != 0 && v3 == v6)
  {
    return v4 == v7;
  }

  return result;
}

void specialized _ColorMatrix.init(_:premultiplied:)(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a1[4];
  v6 = a1[6];
  v59 = a1[5];
  v60[0] = v6;
  *(v60 + 12) = *(a1 + 108);
  v7 = a1[1];
  v55[0] = *a1;
  v55[1] = v7;
  v8 = a1[3];
  v56 = a1[2];
  v57 = v8;
  v58 = v5;
  v61[2] = v56;
  v61[3] = v8;
  v61[0] = v55[0];
  v61[1] = v7;
  *(v62 + 12) = *(v60 + 12);
  v61[5] = v59;
  v62[0] = v6;
  v61[4] = v5;
  switch(_s7SwiftUI14GraphicsFilterOWOg(v61))
  {
    case 1u:
    case 2u:
    case 3u:
    case 0x12u:
    case 0x15u:
    case 0x16u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      outlined destroy of GraphicsFilter(v55);
      goto LABEL_4;
    case 6u:
      v25 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      if (*(v25 + 80) != (a2 & 1))
      {
        goto LABEL_4;
      }

      v14 = *v25;
      v21 = *(v25 + 4);
      v9 = *(v25 + 12);
      v15 = *(v25 + 16);
      v10 = *(v25 + 20);
      v16 = *(v25 + 24);
      v22 = *(v25 + 28);
      v18 = *(v25 + 36);
      v23 = *(v25 + 40);
      v19 = *(v25 + 48);
      v11 = *(v25 + 52);
      v20 = *(v25 + 56);
      v13 = *(v25 + 60);
      v12 = *(v25 + 76);
      v17 = 0;
      break;
    case 7u:
      v24 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      specialized _ColorMatrix.init(colorMultiply:premultiplied:)(a2 & 1, &v41, *v24, v24[1], v24[2], v24[3]);
      goto LABEL_31;
    case 8u:
      v26 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      specialized _ColorMatrix.init(alphaMultiply:premultiplied:)(a2 & 1, &v41, *v26, v26[1], v26[2], v26[3]);
      goto LABEL_31;
    case 9u:
      v29 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      if (a2)
      {
        goto LABEL_4;
      }

      specialized _ColorMatrix.init(hueRotation:)(&v41, *v29);
      goto LABEL_31;
    case 0xAu:
      v37 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      if (a2)
      {
        goto LABEL_4;
      }

      v9 = 0;
      v11 = 0;
      v12 = 0;
      v38 = *v37;
      if (*v37 <= 0.0)
      {
        v38 = 0.0;
      }

      v39 = v38;
      v14 = (v39 * 0.7873) + 0.2126;
      v21 = vsub_f32(0x3D93DD983F371759, vmul_n_f32(0x3D93DD983F371759, v39));
      v16 = (v39 * 0.2848) + 0.7152;
      v19 = (v39 * 0.9278) + 0.0722;
      v23 = vdup_lane_s32(v21, 0);
      *v23.i32 = 0.2126 - (v39 * 0.2126);
      v13 = xmmword_18DD85540;
      v10 = *v23.i32;
      v22 = vzip2_s32(v21, 0);
      v15 = 0.0;
      v18 = 0.0;
      v20 = 0.0;
      v17 = 0;
      break;
    case 0xBu:
      v27 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      if (a2)
      {
        goto LABEL_4;
      }

      v9 = 0;
      v10 = 0.0;
      v11 = 0;
      v12 = 0;
      v13 = xmmword_18DD85540;
      v21 = 0;
      v15 = *v27;
      v14 = 1.0;
      v16 = 1.0;
      v18 = v15;
      v19 = 1.0;
      goto LABEL_18;
    case 0xCu:
      v28 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      if (a2)
      {
        goto LABEL_4;
      }

      v9 = 0;
      v10 = 0.0;
      v11 = 0;
      v12 = 0;
      v13 = xmmword_18DD85540;
      v14 = *v28;
      v15 = (1.0 - v14) * 0.5;
      v21 = 0;
      v16 = v14;
      v18 = v15;
      v19 = v14;
LABEL_18:
      v20 = v15;
      goto LABEL_19;
    case 0xDu:
      v30 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      if (a2)
      {
        goto LABEL_4;
      }

      v31 = *v30;
      v32 = 1.0;
      v33 = 1.0;
      v34 = 1.0;
      v35 = 1.0;
      v36 = 0.0;
      goto LABEL_30;
    case 0xEu:
      v40 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      if (a2)
      {
        goto LABEL_4;
      }

      v31 = *(v40 + 20);
      v36 = *(v40 + 24);
      v34 = *(v40 + 8);
      v35 = *(v40 + 12);
      v32 = *v40;
      v33 = *(v40 + 4);
LABEL_30:
      specialized _ColorMatrix.init(colorMonochrome:amount:bias:)(&v41, v32, v33, v34, v35, v31, v36);
LABEL_31:
      v14 = v41;
      v21 = v42;
      v9 = v43;
      v15 = v44;
      v10 = v45;
      v16 = v46;
      v22 = v47;
      v18 = v48;
      v23 = v49;
      v19 = v50;
      v11 = v51;
      v20 = v52;
      v13 = v53;
      v12 = v54;
      v17 = 0;
      break;
    case 0x17u:
      goto LABEL_4;
    case 0x18u:
      if (a2)
      {
        goto LABEL_4;
      }

      v9 = 0;
      v10 = 0.0;
      v11 = 0;
      v12 = 0;
      v13 = xmmword_18DE0AF20;
      v21 = 0;
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      goto LABEL_19;
    case 0x19u:
      if (a2)
      {
        goto LABEL_4;
      }

      v9 = 0;
      v10 = 0.0;
      v11 = 0;
      v12 = 0;
      v13 = xmmword_18DD85540;
      v21 = 0;
      v15 = 1.0;
      v14 = -1.0;
      v16 = -1.0;
      v18 = 1.0;
      v19 = -1.0;
      v20 = 1.0;
LABEL_19:
      v22 = 0;
      v23 = 0;
      v17 = 0;
      break;
    default:
      _s7SwiftUI14GraphicsFilterOWOj6_(v61);
LABEL_4:
      v9 = 0;
      v10 = 0.0;
      v11 = 0;
      v12 = 0;
      v13 = 0uLL;
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 1;
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      break;
  }

  *a3 = v14;
  *(a3 + 4) = v21;
  *(a3 + 12) = v9;
  *(a3 + 16) = v15;
  *(a3 + 20) = v10;
  *(a3 + 24) = v16;
  *(a3 + 28) = v22;
  *(a3 + 36) = v18;
  *(a3 + 40) = v23;
  *(a3 + 48) = v19;
  *(a3 + 52) = v11;
  *(a3 + 56) = v20;
  *(a3 + 60) = v13;
  *(a3 + 76) = v12;
  *(a3 + 80) = v17;
}

uint64_t ImageResolutionContext.willUpdateVectorGlyph(to:variableValue:)(id a1, double a2)
{
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 1;
  }

  v6 = type metadata accessor for ImageResolutionContext();
  if ((*(v2 + *(v6 + 40)) & 8) != 0 || *(v2 + *(v6 + 28)) == *MEMORY[0x1E698D3F8])
  {
    return 1;
  }

  v8 = v3;
  v9 = [v8 glyph];
  if (!v9 || (v10 = v9, v9, v10 != a1))
  {
    AGGraphClearUpdate();
    v11 = *AGGraphGetValue();

    AGGraphSetUpdate();
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v11);
    if (v12 && (v12[9] & 1) != 0)
    {
      goto LABEL_9;
    }

    v13 = *v2;
    if (*(v2 + 8))
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v13, &aBlock);

      v14 = aBlock;
      v15 = DWORD2(aBlock) | (BYTE12(aBlock) << 32);
      v16 = BYTE13(aBlock);
      v17 = BYTE14(aBlock);
      v18 = v104;
    }

    else
    {
      v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v13);
      if (v20)
      {
        v14 = v20[9];
        v21 = *(v20 + 84);
        v22 = *(v20 + 20);
        v15 = v22 | (v21 << 32);
        v16 = *(v20 + 85);
        v17 = *(v20 + 86);
        v23 = v20[11];
        *&aBlock = v14;
        BYTE12(aBlock) = v21;
        DWORD2(aBlock) = v22;
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v14 = static ContentTransition.State.defaultValue;
        v15 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
        v16 = BYTE13(static ContentTransition.State.defaultValue);
        v17 = BYTE14(static ContentTransition.State.defaultValue);
        v23 = off_1ED536620;
        *&aBlock = static ContentTransition.State.defaultValue;
        BYTE12(aBlock) = BYTE12(static ContentTransition.State.defaultValue);
        DWORD2(aBlock) = DWORD2(static ContentTransition.State.defaultValue);
      }

      outlined copy of ContentTransition.Storage(v14, v15, v16);
      v18 = v23;
    }

    v102 = v16;
    v99 = v17;
    if (v16)
    {
      outlined copy of ContentTransition.Storage(v14, v15, v16);
      v28 = v14;
      v29 = v15;
      if (v16 != 2)
      {
        goto LABEL_32;
      }

LABEL_26:
      v30 = [v8 glyph];
      if (!v30)
      {
LABEL_29:
        LOBYTE(v16) = 2;
        goto LABEL_32;
      }

      v31 = v30;
      if ([v30 canBeInterpolatedWith_])
      {

        goto LABEL_29;
      }

      v101 = v15;
      outlined consume of ContentTransition.Storage(v28, v29, 2);
      v59 = *MEMORY[0x1E69C7250];
      *(&v104 + 1) = MEMORY[0x1E69E7668];
      LODWORD(aBlock) = v28;
      outlined init with take of Any(&aBlock, &v108);
      v60 = MEMORY[0x1E69E7CC8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v60;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v108, v59, isUniquelyReferenced_nonNull_native);
      v62 = v107;
      v63 = *MEMORY[0x1E69C7218];
      *(&v104 + 1) = MEMORY[0x1E69E6370];
      LOBYTE(aBlock) = BYTE4(v28) & 1;
      outlined init with take of Any(&aBlock, &v108);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v62;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v108, v63, v64);
      v65 = v107;
      v66 = *MEMORY[0x1E69C7260];
      *(&v104 + 1) = MEMORY[0x1E69E6448];
      LODWORD(aBlock) = v29;
      outlined init with take of Any(&aBlock, &v108);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v65;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v108, v66, v67);
      v68 = v107;
      if (v18)
      {
        v69 = v18;
      }

      else
      {
        v90 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v11);
        if (!v90 || (v69 = v90[9]) == 0)
        {
LABEL_66:
          v77 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v11);
          if (v77)
          {
            v78 = v77[9];
          }

          else
          {
            v78 = 0;
          }

          v91 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v11);
          if (v91)
          {
            v92 = v91[9];
          }

          else
          {
            v92 = 0;
          }

          if (v78 | v92)
          {
            v93 = swift_allocObject();
            *(v93 + 16) = v78;
            *(v93 + 24) = v92;
            v105 = closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:)partial apply;
            v106 = v93;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v104 = thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned UInt32) -> ();
            *(&v104 + 1) = &block_descriptor_42;
            v94 = _Block_copy(&aBlock);

            v100 = *MEMORY[0x1E69C7230];
            *(&v104 + 1) = swift_getObjectType();
            *&aBlock = v94;
            outlined init with take of Any(&aBlock, &v108);
            _Block_copy(v94);
            v95 = swift_isUniquelyReferenced_nonNull_native();
            v107 = v68;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v108, v100, v95);
            _Block_release(v94);
          }

          type metadata accessor for RBSymbolAnimationOptionKey(0);
          lazy protocol witness table accessor for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v97 = [v8 addAnimation:6 options:isa];

          if (v97)
          {
            if (v78)
            {
              v98 = (*(*v78 + 88))();
            }

            if (v92)
            {
              (*(*v92 + 88))(v98);
            }
          }

          else
          {
          }

          goto LABEL_54;
        }
      }

      v70 = *MEMORY[0x1E69C7268];
      v71 = objc_allocWithZone(MEMORY[0x1E69C7098]);

      v72 = [v71 init];
      (*(*v69 + 96))(&aBlock);
      v108 = aBlock;
      v109 = v104;
      v110 = v105;
      v111 = v106;
      Animation.Function.apply(to:)(v72, *&aBlock, *&v104, v73, v74, v75);
      outlined consume of Animation.Function(v108, *(&v108 + 1), v109, *(&v109 + 1), v110, v111);
      *(&v104 + 1) = type metadata accessor for RBAnimation();
      *&aBlock = v72;
      outlined init with take of Any(&aBlock, &v108);
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v68;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v108, v70, v76);

      v68 = v107;
      goto LABEL_66;
    }

    if (((v14 >> 38) & 3) <= 1)
    {
      goto LABEL_31;
    }

    if (v14 > 0x8000000001)
    {
      v32 = v18;
      outlined copy of ContentTransition.Storage(v14, v15, 0);
      LOBYTE(v16) = 0;
      v29 = v15;
      v28 = v14;
      if (v18)
      {
        goto LABEL_33;
      }

      goto LABEL_59;
    }

    if (v14 ^ 0x8000000000 | v15 & 0xFFFFFF)
    {
LABEL_31:
      outlined copy of ContentTransition.Storage(v14, v15, 0);
      LOBYTE(v16) = 0;
      v29 = v15;
      v28 = v14;
      goto LABEL_32;
    }

    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v79 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
LABEL_75:
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        v80 = &static ContentTransition.identity;
        goto LABEL_111;
      }
    }

    else if (static Semantics.forced < v79)
    {
      goto LABEL_75;
    }

    if (one-time initialization token for interpolate != -1)
    {
      swift_once();
    }

    v80 = &static ContentTransition.interpolate;
LABEL_111:
    v99 = *(v80 + 14);
    v16 = *(v80 + 13);
    v29 = *(v80 + 2) | (*(v80 + 12) << 32);
    v28 = *v80;
    outlined copy of ContentTransition.Storage(*v80, v29, *(v80 + 13));
    if (v16 == 2)
    {
      goto LABEL_26;
    }

LABEL_32:
    v32 = v18;
    if (v18)
    {
LABEL_33:
      v101 = v15;
      v33 = v32;
      goto LABEL_34;
    }

LABEL_59:
    v58 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v11);
    if (!v58 || (v33 = v58[9]) == 0)
    {

      outlined consume of ContentTransition.Storage(v14, v15, v102);
      outlined consume of ContentTransition.Storage(v28, v29, v16);
      return 0;
    }

    v101 = v15;

LABEL_34:
    v34 = *MEMORY[0x1E69C7268];
    v35 = objc_allocWithZone(MEMORY[0x1E69C7098]);

    v36 = [v35 init];
    (*(*v33 + 96))(&aBlock);
    v108 = aBlock;
    v109 = v104;
    v110 = v105;
    v111 = v106;
    Animation.Function.apply(to:)(v36, *&aBlock, *&v104, v37, v38, v39);
    outlined consume of Animation.Function(v108, *(&v108 + 1), v109, *(&v109 + 1), v110, v111);
    *(&v104 + 1) = type metadata accessor for RBAnimation();
    *&aBlock = v36;
    outlined init with take of Any(&aBlock, &v108);
    v40 = MEMORY[0x1E69E7CC8];
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v40;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v108, v34, v41);
    v42 = v107;
    if (one-time initialization token for interpolate != -1)
    {
      swift_once();
    }

    v43 = byte_1ED5280EE;
    *&aBlock = v28;
    BYTE12(aBlock) = BYTE4(v29);
    DWORD2(aBlock) = v29;
    BYTE13(aBlock) = v16;
    *&v108 = static ContentTransition.interpolate;
    WORD6(v108) = word_1ED5280EC;
    DWORD2(v108) = dword_1ED5280E8;
    outlined copy of ContentTransition.Storage(static ContentTransition.interpolate, dword_1ED5280E8 | (word_1ED5280EC << 32), SHIBYTE(word_1ED5280EC));
    v44 = specialized static ContentTransition.Storage.== infix(_:_:)(&aBlock, &v108);
    outlined consume of ContentTransition.Storage(v108, DWORD2(v108) | (BYTE12(v108) << 32), SBYTE13(v108));
    outlined consume of ContentTransition.Storage(aBlock, DWORD2(aBlock) | (BYTE12(aBlock) << 32), SBYTE13(aBlock));
    if (v44 & 1) == 0 || ((v99 ^ v43))
    {
      v45 = *MEMORY[0x1E69C7228];
      *(&v104 + 1) = MEMORY[0x1E69E7668];
      LODWORD(aBlock) = 1;
      outlined init with take of Any(&aBlock, &v108);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v42;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v108, v45, v46);
      v42 = v107;
    }

    v47 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v11);
    if (v47)
    {
      v48 = v47[9];
    }

    else
    {
      v48 = 0;
    }

    v49 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v11);
    if (v49)
    {
      v50 = v49[9];

      if (!(v48 | v50))
      {
        goto LABEL_45;
      }
    }

    else
    {
      v50 = 0;
      if (!v48)
      {
LABEL_45:
        type metadata accessor for RBSymbolAnimationOptionKey(0);
        lazy protocol witness table accessor for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey();
        v55 = Dictionary._bridgeToObjectiveC()().super.isa;

        v56 = [v8 addAnimation:7 options:v55];

        if (v56)
        {
          if (v48)
          {
            v57 = (*(*v48 + 88))();
          }

          if (v50)
          {
            (*(*v50 + 88))(v57);
          }
        }

        else
        {
        }

LABEL_54:

        outlined consume of ContentTransition.Storage(v14, v101, v102);

LABEL_55:

        return 0;
      }
    }

    v51 = swift_allocObject();
    *(v51 + 16) = v48;
    *(v51 + 24) = v50;
    v105 = partial apply for closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:);
    v106 = v51;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v104 = thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned UInt32) -> ();
    *(&v104 + 1) = &block_descriptor_7;
    v52 = _Block_copy(&aBlock);

    v53 = *MEMORY[0x1E69C7230];
    *(&v104 + 1) = swift_getObjectType();
    *&aBlock = v52;
    outlined init with take of Any(&aBlock, &v108);
    _Block_copy(v52);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v42;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v108, v53, v54);
    _Block_release(v52);
    goto LABEL_45;
  }

  [v8 variableValue];
  if (v19 == a2)
  {
    goto LABEL_13;
  }

  AGGraphClearUpdate();
  v24 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v25 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v24);
  if (!v25 || (v25[9] & 1) == 0)
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26RBSymbolAnimationOptionKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v26 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v24);
    if (v26)
    {
      v27 = v26[9];
    }

    else
    {
      v27 = 0;
    }

    v81 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v24);
    if (v81)
    {
      v82 = v81[9];
    }

    else
    {
      v82 = 0;
    }

    if (v27 | v82)
    {
      v83 = swift_allocObject();
      *(v83 + 16) = v27;
      *(v83 + 24) = v82;
      v105 = closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:)partial apply;
      v106 = v83;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v104 = thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned UInt32) -> ();
      *(&v104 + 1) = &block_descriptor_49;
      v84 = _Block_copy(&aBlock);

      v85 = *MEMORY[0x1E69C7230];
      *(&v104 + 1) = swift_getObjectType();
      *&aBlock = v84;
      outlined init with take of Any(&aBlock, &v108);
      _Block_copy(v84);
      v86 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v108, v85, v86);
      _Block_release(v84);
    }

    type metadata accessor for RBSymbolAnimationOptionKey(0);
    lazy protocol witness table accessor for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey();
    v87 = Dictionary._bridgeToObjectiveC()().super.isa;

    v88 = [v8 addAnimation:0 options:v87];

    if (v88)
    {
      if (v27)
      {
        v89 = (*(*v27 + 88))();
      }

      if (v82)
      {
        (*(*v82 + 88))(v89);
      }
    }

    else
    {
    }

    goto LABEL_55;
  }

LABEL_9:

LABEL_13:

  return 0;
}

uint64_t assignWithCopy for Image.Resolved(uint64_t a1, uint64_t a2)
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
  v14 = *(a2 + 128);
  v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 128) >> 1 == 0xFFFFFFFFLL)
  {
    if (v15 == 0x1FFFFFFFELL)
    {
      v16 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v16;
    }

    else
    {
      v18 = *(a2 + 112);
      v19 = *(a2 + 120);
      v20 = *(a2 + 136);
      outlined copy of AccessibilityImageLabel(v18, v19, *(a2 + 128));
      *(a1 + 112) = v18;
      *(a1 + 120) = v19;
      *(a1 + 128) = v14;
      *(a1 + 136) = v20;
    }
  }

  else if (v15 == 0x1FFFFFFFELL)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 112);
    v17 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v17;
  }

  else
  {
    v21 = *(a2 + 112);
    v22 = *(a2 + 120);
    v23 = *(a2 + 136);
    outlined copy of AccessibilityImageLabel(v21, v22, *(a2 + 128));
    v24 = *(a1 + 112);
    v25 = *(a1 + 120);
    v26 = *(a1 + 128);
    *(a1 + 112) = v21;
    *(a1 + 120) = v22;
    *(a1 + 128) = v14;
    *(a1 + 136) = v23;
    outlined consume of AccessibilityImageLabel(v24, v25, v26);
  }

  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  v27 = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 164) = v27;
  v28 = *(a1 + 176);
  v29 = *(a2 + 176);
  *(a1 + 176) = v29;
  v30 = v29;

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 186) = *(a2 + 186);
  return a1;
}

uint64_t HomogenousDiscontiguousIndexLookupTable.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL specialized static Image.Resolved.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v64 = a1[4];
  v65[0] = v3;
  *(v65 + 12) = *(a1 + 92);
  v4 = a1[1];
  v61[0] = *a1;
  v61[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v62 = a1[2];
  v63 = v5;
  v8 = a2[3];
  v9 = a2[5];
  v69 = a2[4];
  v70[0] = v9;
  *(v70 + 12) = *(a2 + 92);
  v10 = a2[1];
  v66[0] = *a2;
  v66[1] = v10;
  v11 = a2[3];
  v13 = *a2;
  v12 = a2[1];
  v67 = a2[2];
  v68 = v11;
  v14 = a1[5];
  v59 = v64;
  v60[0] = v14;
  *(v60 + 12) = *(a1 + 92);
  v55 = v7;
  v56 = v6;
  v16 = *(a1 + 14);
  v15 = *(a1 + 15);
  v18 = *(a1 + 16);
  v17 = *(a1 + 17);
  v48 = *(a1 + 18);
  v46 = *(a1 + 19);
  v44 = *(a1 + 160);
  v42 = *(a1 + 161);
  v57 = v62;
  v58 = v2;
  v19 = a2[5];
  v53 = v69;
  v54[0] = v19;
  *(v54 + 12) = *(a2 + 92);
  v20 = *(a1 + 41);
  v38 = *(a1 + 22);
  v36 = *(a1 + 186);
  v37 = *(a1 + 92);
  v22 = *(a2 + 14);
  v21 = *(a2 + 15);
  v24 = *(a2 + 16);
  v23 = *(a2 + 17);
  v47 = *(a2 + 18);
  v45 = *(a2 + 19);
  v43 = *(a2 + 160);
  v40 = *(a1 + 168);
  v41 = *(a2 + 161);
  v49 = v13;
  v50 = v12;
  v25 = *(a2 + 41);
  v39 = *(a2 + 168);
  v35 = *(a2 + 22);
  v33 = *(a2 + 186);
  v34 = *(a2 + 92);
  v51 = v67;
  v52 = v8;
  outlined init with copy of GraphicsImage(v61, v73);
  outlined init with copy of GraphicsImage(v66, v73);
  v26 = specialized static GraphicsImage.== infix(_:_:)(&v55, &v49);
  v71[4] = v53;
  v72[0] = v54[0];
  *(v72 + 12) = *(v54 + 12);
  v71[0] = v49;
  v71[1] = v50;
  v71[2] = v51;
  v71[3] = v52;
  outlined destroy of GraphicsImage(v71);
  v73[4] = v59;
  v74[0] = v60[0];
  *(v74 + 12) = *(v60 + 12);
  v73[0] = v55;
  v73[1] = v56;
  v73[2] = v57;
  v73[3] = v58;
  outlined destroy of GraphicsImage(v73);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  if (v18 >> 1 == 0xFFFFFFFF)
  {
    outlined copy of AccessibilityImageLabel?(v16, v15, v18);
    outlined copy of AccessibilityImageLabel?(v22, v21, v24);
    if (v24 >> 1 == 0xFFFFFFFF)
    {
      outlined consume of AccessibilityImageLabel?(v16, v15, v18);
      goto LABEL_11;
    }

LABEL_7:
    outlined consume of AccessibilityImageLabel?(v16, v15, v18);
    outlined consume of AccessibilityImageLabel?(v22, v21, v24);
    return 0;
  }

  *&v55 = v16;
  *(&v55 + 1) = v15;
  *&v56 = v18;
  *(&v56 + 1) = v17;
  if (v24 >> 1 == 0xFFFFFFFF)
  {
    outlined copy of AccessibilityImageLabel?(v16, v15, v18);
    outlined copy of AccessibilityImageLabel?(v22, v21, v24);
    outlined copy of AccessibilityImageLabel?(v16, v15, v18);
    outlined consume of AccessibilityImageLabel(v16, v15, v18);
    goto LABEL_7;
  }

  *&v49 = v22;
  *(&v49 + 1) = v21;
  *&v50 = v24;
  *(&v50 + 1) = v23;
  outlined copy of AccessibilityImageLabel?(v16, v15, v18);
  outlined copy of AccessibilityImageLabel?(v22, v21, v24);
  outlined copy of AccessibilityImageLabel?(v16, v15, v18);
  v29 = static AccessibilityImageLabel.== infix(_:_:)(&v55, &v49);
  outlined consume of AccessibilityImageLabel(v49, *(&v49 + 1), v50);
  outlined consume of AccessibilityImageLabel(v55, *(&v55 + 1), v56);
  outlined consume of AccessibilityImageLabel?(v16, v15, v18);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (v48)
  {
    if (v48 != v47)
    {
      return 0;
    }
  }

  else if (v47)
  {
    return 0;
  }

  v27 = 0;
  if (_s7SwiftUI16IndirectOptionalOAASQRzlE2eeoiySbACyxG_AEtFZAA5ImageVAAE13LayoutMetricsV_Tt1B5(v46, v45) && ((v44 ^ v43) & 1) == 0)
  {
    if (v42 == 3)
    {
      if (v41 == 3)
      {
        goto LABEL_22;
      }

      return 0;
    }

    v27 = 0;
    if (v41 != 3 && v42 == v41)
    {
LABEL_22:
      if (v40)
      {
        if (v39)
        {
LABEL_28:
          *&v55 = v38;
          WORD4(v55) = v37;
          BYTE10(v55) = v36;
          *&v49 = v35;
          WORD4(v49) = v34;
          BYTE10(v49) = v33;
          v31 = v35;
          v32 = v38;
          v27 = specialized static _ShapeStyle_ResolverMode.== infix(_:_:)(&v55, &v49);

          return v27;
        }
      }

      else
      {
        v30 = v39;
        if (v20 != v25)
        {
          v30 = 1;
        }

        if ((v30 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      return 0;
    }
  }

  return v27;
}

uint64_t storeEnumTagSinglePayload for Image.Resolved(uint64_t result, unsigned int a2, unsigned int a3)
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
    *(result + 186) = 0;
    *(result + 184) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 187) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 187) = 0;
    }

    if (a2)
    {
      *(result + 112) = 0;
      *(result + 120) = 0;
      *(result + 128) = 2 * ~a2;
      *(result + 136) = 0;
    }
  }

  return result;
}

uint64_t specialized static GraphicsImage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 44);
  v9 = *(a1 + 52);
  v10 = *(a1 + 60);
  v11 = *(a1 + 64);
  v12 = *(a1 + 104);
  v13 = *(a1 + 105);
  v14 = *(a1 + 106);
  v15 = *(a1 + 107);
  v16 = *a2;
  v17 = *(a2 + 8);
  v19 = *(a2 + 16);
  v18 = *(a2 + 24);
  v20 = *(a2 + 32);
  v21 = *(a2 + 40);
  v22 = *(a2 + 44);
  v23 = *(a2 + 52);
  v24 = *(a2 + 60);
  v25 = *(a2 + 64);
  v26 = *(a1 + 88);
  v27 = *(a1 + 72);
  v28 = *(a2 + 88);
  v29 = *(a2 + 72);
  v30 = *(a2 + 104);
  v31 = *(a2 + 105);
  v32 = *(a2 + 106);
  v33 = *(a2 + 107);
  if (v3 == 255)
  {
    v46 = *(a1 + 44);
    v47 = *(a1 + 52);
    v36 = *(a2 + 72);
    v37 = *(a2 + 88);
    v38 = *(a1 + 72);
    v39 = *(a1 + 88);
    v48 = *(a2 + 104);
    v49 = *(a1 + 104);
    v40 = *(a2 + 105);
    v41 = *(a2 + 106);
    v42 = *(a2 + 107);
    v43 = *(a1 + 106);
    v44 = *(a1 + 105);
    v45 = *(a1 + 107);
    outlined copy of GraphicsImage.Contents?(v2, 0xFFu);
    if (v17 == 255)
    {
      outlined copy of GraphicsImage.Contents?(v16, 0xFFu);
      outlined consume of GraphicsImage.Contents?(v2, 0xFFu);
      result = 0;
      if (v5 != v19)
      {
        return result;
      }

LABEL_11:
      if (v4 != v18 || v6 != v20)
      {
        return result;
      }

      if (((0x507030104060200uLL >> (8 * v7)) & 7) == ((0x507030104060200uLL >> (8 * v21)) & 7))
      {
        if (v11)
        {
          if ((v25 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v25)
          {
            return 0;
          }

          v50 = v46;
          v51 = v47;
          v52 = v10;
          v53 = v22;
          v54 = v23;
          v55 = v24;
          if (!specialized static Color.ResolvedHDR.== infix(_:_:)(&v50, &v53))
          {
            return 0;
          }
        }

        if (v49 == 2)
        {
          if (v48 == 2)
          {
            goto LABEL_21;
          }
        }

        else
        {
          result = 0;
          if (v48 == 2 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v38, v36), vceqq_f64(v39, v37)), xmmword_18DDA9F30)) & 0xF) != 0)
          {
            return result;
          }

          if (((v48 ^ v49) & 1) == 0)
          {
LABEL_21:
            if (v45 == v42)
            {
              return (v43 == v41) & ~(v44 ^ v40);
            }

            else
            {
              return 0;
            }
          }
        }
      }

      return 0;
    }

    outlined copy of GraphicsImage.Contents?(v16, v17);
LABEL_9:
    outlined consume of GraphicsImage.Contents?(v2, v3);
    outlined consume of GraphicsImage.Contents?(v16, v17);
    return 0;
  }

  v53 = *a1;
  LOBYTE(v54) = v3;
  if (v17 == 255)
  {
    outlined copy of GraphicsImage.Contents?(v2, v3);
    outlined copy of GraphicsImage.Contents?(v16, 0xFFu);
    outlined copy of GraphicsImage.Contents?(v2, v3);
    outlined consume of GraphicsImage.Contents(v2, v3);
    goto LABEL_9;
  }

  v46 = v8;
  v47 = v9;
  v36 = v29;
  v37 = v28;
  v38 = v27;
  v39 = v26;
  v48 = v30;
  v49 = v12;
  v40 = v31;
  v41 = v32;
  v42 = v33;
  v43 = v14;
  v44 = v13;
  v45 = v15;
  v50 = v16;
  LOBYTE(v51) = v17;
  outlined copy of GraphicsImage.Contents?(v2, v3);
  outlined copy of GraphicsImage.Contents?(v16, v17);
  outlined copy of GraphicsImage.Contents?(v2, v3);
  v34 = specialized static GraphicsImage.Contents.== infix(_:_:)(&v53, &v50);
  outlined consume of GraphicsImage.Contents(v50, v51);
  outlined consume of GraphicsImage.Contents(v53, v54);
  outlined consume of GraphicsImage.Contents?(v2, v3);
  result = 0;
  if ((v34 & 1) != 0 && v5 == v19)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t specialized static GraphicsImage.Contents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 2)
  {
    if (*(a1 + 8))
    {
      if (v3 == 1)
      {
        if (v5 == 1)
        {
          outlined copy of GraphicsImage.Contents(*a2, 1u);
          outlined copy of GraphicsImage.Contents(v2, 1u);
          outlined consume of GraphicsImage.Contents(v2, 1u);
          v6 = v4;
          v7 = 1;
LABEL_23:
          outlined consume of GraphicsImage.Contents(v6, v7);
          v19 = v2 == v4;
          return v19 & 1;
        }
      }

      else if (v5 == 2)
      {
        v22 = *(v2 + 6);
        v23 = *(v2 + 45);
        v24 = *(v2 + 44);
        v25 = *(v2 + 10);
        v26 = *(v2 + 4);
        v27 = *(v2 + 24);
        v28 = *(v2 + 2);
        v29 = *(v4 + 2);
        v30 = *(v4 + 24);
        v31 = *(v4 + 4);
        v32 = *(v4 + 10);
        v33 = *(v4 + 44);
        v34 = *(v4 + 45);
        v44 = *(v4 + 6);
        v45 = v28;
        v46 = v27;
        v47 = v26;
        v48 = v25;
        v49 = v24;
        v50 = v23;
        v51 = v22;
        v38 = v29;
        v39 = v30;
        v40 = v31;
        v41 = v32;
        v42 = v33;
        v43 = v34;
        outlined copy of GraphicsImage.Contents(v4, 2u);
        outlined copy of GraphicsImage.Contents(v2, 2u);
        v19 = specialized static ResolvedVectorGlyph.== infix(_:_:)(&v45, &v38);
        outlined consume of GraphicsImage.Contents(v2, 2u);
        outlined consume of GraphicsImage.Contents(v4, 2u);
        return v19 & 1;
      }
    }

    else if (!*(a2 + 8))
    {
      outlined copy of GraphicsImage.Contents(*a2, 0);
      outlined copy of GraphicsImage.Contents(v2, 0);
      outlined consume of GraphicsImage.Contents(v2, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_23;
    }

    goto LABEL_28;
  }

  if (v3 == 3)
  {
    if (v5 == 3)
    {
      v20 = *(v2 + 2);
      v21 = *(v4 + 2);
      outlined copy of GraphicsImage.Contents(*a2, 3u);
      outlined copy of GraphicsImage.Contents(v2, 3u);
      outlined consume of GraphicsImage.Contents(v2, 3u);
      outlined consume of GraphicsImage.Contents(v4, 3u);
      v19 = v20 == v21;
      return v19 & 1;
    }

    goto LABEL_28;
  }

  if (v3 != 4 || v5 != 4)
  {
LABEL_28:
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    outlined copy of GraphicsImage.Contents(v2, v3);
    outlined consume of GraphicsImage.Contents(v2, v3);
    outlined consume of GraphicsImage.Contents(v4, v5);
LABEL_29:
    v19 = 0;
    return v19 & 1;
  }

  v36 = v2[8];
  v37 = v2[7];
  v9 = v2[5];
  v8 = v2[6];
  v10 = v2[4];
  v11 = v4[4];
  v12 = v4[5];
  v13 = v4[6];
  v14 = v4[7];
  v15 = v4[8];
  outlined copy of GraphicsImage.Contents(v4, 4u);
  outlined copy of GraphicsImage.Contents(v2, 4u);
  outlined consume of GraphicsImage.Contents(v2, 4u);
  outlined consume of GraphicsImage.Contents(v4, 4u);
  if (v10 != v11 || v9 != v12 || v8 != v13 || v37 != v14)
  {
    goto LABEL_29;
  }

  v19 = v36 == v15;
  return v19 & 1;
}

uint64_t specialized static ResolvedVectorGlyph.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *a1 == *a2 && *(a1 + 24) == *(a2 + 24);
  if (v3 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0)
  {
    v4 = *(a1 + 16);
    v6 = *(a2 + 16);
    v7 = v4;
    outlined copy of Image.Location(v4);
    outlined copy of Image.Location(v6);
    v2 = specialized static Image.Location.== infix(_:_:)(&v7, &v6);
    outlined consume of Image.Location(v6);
    outlined consume of Image.Location(v7);
  }

  return v2 & 1;
}

uint64_t specialized static Image.Location.== infix(_:_:)(id *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (v3)
    {
      goto LABEL_8;
    }

    outlined consume of Image.Location(0);
    v5 = 0;
LABEL_11:
    outlined consume of Image.Location(v5);
    v4 = 1;
    return v4 & 1;
  }

  if (v2 == 1)
  {
    if (v3 == 1)
    {
      v4 = 1;
      outlined consume of Image.Location(1);
      outlined consume of Image.Location(1);
      return v4 & 1;
    }

LABEL_8:
    outlined copy of Image.Location(*a2);
    outlined copy of Image.Location(v2);
    outlined consume of Image.Location(v2);
    outlined consume of Image.Location(v3);
    v4 = 0;
    return v4 & 1;
  }

  if (v3 < 2)
  {
    goto LABEL_8;
  }

  if (v2 == v3)
  {
    outlined copy of Image.Location(*a1);
    outlined copy of Image.Location(v2);
    outlined consume of Image.Location(v2);
    v5 = v2;
    goto LABEL_11;
  }

  outlined copy of Image.Location(*a2);
  outlined copy of Image.Location(v2);
  v6 = [v2 bundlePath];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = [v3 bundlePath];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  outlined consume of Image.Location(v2);
  outlined consume of Image.Location(v3);

  return v4 & 1;
}

BOOL specialized static AccessibilityImageLabel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if ((v5 & 0x8000000000000000) == 0)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v5)
      {
        if (v9)
        {
          v10 = *(*v2 + 96);
          outlined copy of AccessibilityImageLabel(*a2, a2[1], v9);
          outlined copy of AccessibilityImageLabel(v2, v3, v5);
          if (v10(v7))
          {
            goto LABEL_22;
          }

          goto LABEL_15;
        }
      }

      else if ((v9 & 1) == 0)
      {
        if (v2 == v7 && v3 == v6)
        {
          outlined copy of AccessibilityImageLabel(*a1, v3, v9);
          outlined copy of AccessibilityImageLabel(v2, v3, v5);
          goto LABEL_22;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of AccessibilityImageLabel(v7, v6, v9);
        outlined copy of AccessibilityImageLabel(v2, v3, v5);
        if (v15)
        {
LABEL_22:
          v16 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v4, v8);
          outlined consume of AccessibilityImageLabel(v2, v3, v5);
          outlined consume of AccessibilityImageLabel(v7, v6, v9);
          return (v16 & 1) != 0;
        }

LABEL_15:
        outlined consume of AccessibilityImageLabel(v2, v3, v5);
        outlined consume of AccessibilityImageLabel(v7, v6, v9);
        return 0;
      }
    }

LABEL_14:
    outlined copy of AccessibilityImageLabel(*a2, a2[1], v9);
    outlined copy of AccessibilityImageLabel(v2, v3, v5);
    goto LABEL_15;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

  v11 = *a1;
  if (v2 == v7 && v3 == v6)
  {
    outlined copy of AccessibilityImageLabel(v11, v3, v9);
    outlined copy of AccessibilityImageLabel(v2, v3, v5);
    outlined consume of AccessibilityImageLabel(v2, v3, v5);
    outlined consume of AccessibilityImageLabel(v2, v3, v9);
    return 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of AccessibilityImageLabel(v7, v6, v9);
    outlined copy of AccessibilityImageLabel(v2, v3, v5);
    outlined consume of AccessibilityImageLabel(v2, v3, v5);
    outlined consume of AccessibilityImageLabel(v7, v6, v9);
    return v13 & 1;
  }
}

uint64_t specialized closure #1 in StatefulRule<>.update<A>(to:)(_OWORD *a1, __int128 *a2)
{
  v3 = a2[9];
  v28 = a2[8];
  v29 = v3;
  v30[0] = a2[10];
  *(v30 + 11) = *(a2 + 171);
  v4 = a2[5];
  v24 = a2[4];
  v25 = v4;
  v5 = a2[7];
  v26 = a2[6];
  v27 = v5;
  v6 = a2[1];
  v20 = *a2;
  v21 = v6;
  v7 = a2[3];
  v22 = a2[2];
  v23 = v7;
  v8 = a1[9];
  v31[8] = a1[8];
  v31[9] = v8;
  v32[0] = a1[10];
  *(v32 + 11) = *(a1 + 171);
  v9 = a1[5];
  v31[4] = a1[4];
  v31[5] = v9;
  v10 = a1[7];
  v31[6] = a1[6];
  v31[7] = v10;
  v11 = a1[1];
  v31[0] = *a1;
  v31[1] = v11;
  v12 = a1[3];
  v31[2] = a1[2];
  v31[3] = v12;
  outlined destroy of ResolvedImageLayoutEngine(v31);
  v13 = v29;
  a1[8] = v28;
  a1[9] = v13;
  a1[10] = v30[0];
  *(a1 + 171) = *(v30 + 11);
  v14 = v25;
  a1[4] = v24;
  a1[5] = v14;
  v15 = v27;
  a1[6] = v26;
  a1[7] = v15;
  v16 = v21;
  *a1 = v20;
  a1[1] = v16;
  v17 = v23;
  a1[2] = v22;
  a1[3] = v17;
  return outlined init with copy of ResolvedImageLayoutEngine(&v20, &v19);
}

uint64_t partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(_OWORD *a1)
{
  return specialized closure #1 in StatefulRule<>.update<A>(to:)(a1, *(v1 + 16));
}

{
  v3 = *(v1 + 16);
  v27 = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v30 = v3[3];
  v31 = v6;
  v28 = v4;
  v29 = v5;
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[8];
  v34 = v3[7];
  v35 = v9;
  v32 = v7;
  v33 = v8;
  v10 = v3[9];
  v11 = v3[10];
  v12 = v3[11];
  *(v38 + 9) = *(v3 + 185);
  v37 = v11;
  v38[0] = v12;
  v36 = v10;
  v13 = a1[3];
  v39[2] = a1[2];
  v39[3] = v13;
  v14 = a1[1];
  v39[0] = *a1;
  v39[1] = v14;
  v15 = a1[7];
  v39[6] = a1[6];
  v39[7] = v15;
  v16 = a1[5];
  v39[4] = a1[4];
  v39[5] = v16;
  *&v40[9] = *(a1 + 185);
  v17 = a1[11];
  v39[10] = a1[10];
  *v40 = v17;
  v18 = a1[9];
  v39[8] = a1[8];
  v39[9] = v18;
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v39, type metadata accessor for LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>);
  v19 = v38[0];
  a1[10] = v37;
  a1[11] = v19;
  *(a1 + 185) = *(v38 + 9);
  v20 = v34;
  a1[6] = v33;
  a1[7] = v20;
  v21 = v36;
  a1[8] = v35;
  a1[9] = v21;
  v22 = v30;
  a1[2] = v29;
  a1[3] = v22;
  v23 = v32;
  a1[4] = v31;
  a1[5] = v23;
  v24 = v28;
  *a1 = v27;
  a1[1] = v24;
  return outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v27, &v26, type metadata accessor for LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>);
}

uint64_t _s14AttributeGraph12StatefulRuleP7SwiftUIAD14LayoutComputerV5ValueRtzrlE6update2toyqd___tAD0G6EngineRd__lFyqd__zXEfU_AD013ResolvedImagegH033_A3C1DB6976F54697C11EFA754256BBD1LLV_AD0mngL0AMLLVTG5TA_0(_OWORD *a1)
{
  v3 = *(v1 + 16);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v27 = v3[2];
  v28 = v6;
  v25 = v4;
  v26 = v5;
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[7];
  v31 = v3[6];
  v32 = v9;
  v29 = v7;
  v30 = v8;
  v10 = v3[8];
  v11 = v3[9];
  v12 = v3[10];
  *(v35 + 11) = *(v3 + 171);
  v34 = v11;
  v35[0] = v12;
  v33 = v10;
  v13 = a1[3];
  v36[2] = a1[2];
  v36[3] = v13;
  v14 = a1[1];
  v36[0] = *a1;
  v36[1] = v14;
  v15 = a1[7];
  v36[6] = a1[6];
  v36[7] = v15;
  v16 = a1[5];
  v36[4] = a1[4];
  v36[5] = v16;
  *&v37[11] = *(a1 + 171);
  v17 = a1[10];
  v36[9] = a1[9];
  *v37 = v17;
  v36[8] = a1[8];
  outlined destroy of ResolvedImageLayoutEngine(v36);
  v18 = v34;
  a1[8] = v33;
  a1[9] = v18;
  a1[10] = v35[0];
  *(a1 + 171) = *(v35 + 11);
  v19 = v30;
  a1[4] = v29;
  a1[5] = v19;
  v20 = v32;
  a1[6] = v31;
  a1[7] = v20;
  v21 = v26;
  *a1 = v25;
  a1[1] = v21;
  v22 = v28;
  a1[2] = v27;
  a1[3] = v22;
  return outlined init with copy of ResolvedImageLayoutEngine(&v25, &v24);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance RoundedRectangle(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16RoundedRectangleV_Tt1B5(a1, v4);
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16RoundedRectangleV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 0;
    v13 = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<RoundedRectangle> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<RoundedRectangle> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<RoundedRectangle> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<RoundedRectangle> and conformance AnimatableAttribute<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<RoundedRectangle> and conformance AnimatableAttribute<A>);
  }

  return result;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  LODWORD(v9) = a3;
  v206 = *MEMORY[0x1E69E9840];
  v187 = type metadata accessor for OSSignpostID();
  v184 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v13 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v168 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v185 = (&v168 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v168 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v186 = &v168 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v177 = &v168 - v25;
  if (*(a4 + 5))
  {
    Value = AGGraphGetValue();
    if (v27)
    {
      v28 = *Value;
    }

    else
    {
      v28 = -INFINITY;
    }
  }

  else
  {
    v28 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 17) = 1;
  }

  else if (*(a1 + 17) != 1)
  {
    goto LABEL_121;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  if (a4[32])
  {
    goto LABEL_120;
  }

  v5 = *(a4 + 2);
  v4 = *(a4 + 3);
  if (v6 == v5 && v7 == v4)
  {
    goto LABEL_120;
  }

  v172 = v9;
  v183 = v13;
  v169 = v16;
  AGGraphClearUpdate();
  v30 = *(a4 + 1);
  v202 = *a4;
  v203 = v30;
  v204 = *(a4 + 2);
  v174 = a4;
  v205 = *(a4 + 12);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v202, &v197, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
  v31 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v32 = Transaction.effectiveAnimation.getter(v31);
  if (v32)
  {
    v33 = v32;
    LODWORD(v9) = v172;
  }

  else
  {
    LODWORD(v9) = v172;
    if (!a2)
    {

      a4 = v174;
      goto LABEL_120;
    }

    v33 = a2;
  }

  v34 = *(&v204 + 1);
  v35 = v6 - v5;
  v36 = v7 - v4;
  v28 = *AGGraphGetValue();
  v173 = a1;
  v170 = v31;
  if (!v34)
  {
    *&v192.f64[0] = &type metadata for RoundedRectangle;
    type metadata accessor for RoundedRectangle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, CGFloat>>.Type, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v52 = swift_dynamicCast();
    if (v52)
    {
      v53 = v197;
    }

    else
    {
      v53 = 0;
    }

    if (v52)
    {
      v54 = *(&v197 + 1);
    }

    else
    {
      v54 = 0;
    }

    v171 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVy12CoreGraphics7CGFloatVAYG_Tt4B5(v55, v31, v53, v54, v35, v36, v28);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v57 = CurrentAttribute;
    LODWORD(v58) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v59 = 0;
    }

    else
    {
      v59 = CurrentAttribute;
    }

    LODWORD(v182) = v59;
    v60 = *(*v33 + 96);
    v168 = v33;
    v60(&v192);
    v61 = v192;
    v62 = v193;
    v63 = v195;
    *&v191 = NAN;
    v190 = NAN;
    v189 = 1.0;
    v188 = NAN;
    v197 = v192;
    v198 = *&v193;
    v64 = v194;
    v199 = *&v194;
    v200 = *&v195;
    LODWORD(v185) = v196;
    LOBYTE(v201) = v196;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v197, &v191, &v190, &v189, &v188);
    v4 = *&v191;
    v5 = v190;
    v65 = v189;
    v66 = v188;
    if (one-time initialization token for enabledCategories != -1)
    {
      v181 = v189;
      *&v180 = v188;
      swift_once();
      v66 = *&v180;
      v65 = v181;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v67 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v68 = v57 == v58;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v69 = v58;
          v58 = *(v67 + 16);
          LODWORD(v197) = v182;
          BYTE4(v197) = v68;
          *(&v197 + 1) = &type metadata for RoundedRectangle;
          v198 = v4;
          v199 = v5;
          v200 = v65;
          v201 = v66;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v70 = v58;
          LODWORD(v58) = v69;
          v71 = v70;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(*&v61.f64[0], *&v61.f64[1], v62, v64, v63, v185);
        }

        else
        {
          outlined consume of Animation.Function(*&v61.f64[0], *&v61.f64[1], v62, v64, v63, v185);
        }

        a1 = v173;
        LODWORD(v9) = v172;
      }

      else
      {
        outlined consume of Animation.Function(*&v61.f64[0], *&v61.f64[1], v62, v64, v63, v185);
      }

      v105 = one-time initialization token for animationState;

      if (v105 == -1)
      {
LABEL_85:
        v73 = *(&static Signpost.animationState + 1);
        v72 = static Signpost.animationState;
        LOBYTE(v79) = word_1ED5283E8;
        LOBYTE(v33) = HIBYTE(word_1ED5283E8);
        v106 = byte_1ED5283EA;
        LODWORD(Counter) = static os_signpost_type_t.begin.getter();
        v197 = __PAIR128__(v73, v72);
        LOBYTE(v198) = v79;
        BYTE1(v198) = v33;
        BYTE2(v198) = v106;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v116 = v171;

          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
          a4 = v174;
          *(v174 + 5) = v116;
          goto LABEL_119;
        }

        v107 = one-time initialization token for _signpostLog;

        if (v107 != -1)
        {
          goto LABEL_194;
        }

        goto LABEL_87;
      }
    }

    swift_once();
    goto LABEL_85;
  }

  v169 = v21;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v202, &v197, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v197) = 0;
  v171 = v34;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v33, v31, v35, v36, v28);
  v37 = AGGraphGetCurrentAttribute();
  v38 = v37;
  LODWORD(Counter) = *MEMORY[0x1E698D3F8];
  if (v37 == *MEMORY[0x1E698D3F8])
  {
    v40 = 0;
  }

  else
  {
    v40 = v37;
  }

  LODWORD(v181) = v40;
  (*(*v33 + 96))(&v192);
  v41 = v192.f64[1];
  v42 = *&v192.f64[0];
  v43 = v193;
  a4 = v194;
  *&v191 = NAN;
  v190 = NAN;
  v189 = 1.0;
  v188 = NAN;
  v197 = v192;
  v198 = *&v193;
  v199 = *&v194;
  v200 = *&v195;
  v44 = v195;
  LODWORD(v183) = v196;
  LOBYTE(v201) = v196;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v197, &v191, &v190, &v189, &v188);
  v4 = *&v191;
  v5 = v190;
  v45 = v189;
  v46 = v188;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_187;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_189:
      swift_once();
      goto LABEL_46;
    }

    v47 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v182) = Counter;
    if (v47)
    {
      v168 = v33;
      v48 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v49 = *(v48 + 16);
        LODWORD(v197) = LODWORD(v181);
        BYTE4(v197) = v38 == Counter;
        *(&v197 + 1) = &type metadata for RoundedRectangle;
        v198 = v4;
        v199 = v5;
        v200 = v45;
        v201 = v46;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v181 = v50;

        v51 = v49;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v42, *&v41, v43, a4, v44, v183);
      }

      else
      {
        outlined consume of Animation.Function(v42, *&v41, v43, a4, v44, v183);
      }

      v33 = v168;
    }

    else
    {
      outlined consume of Animation.Function(v42, *&v41, v43, a4, v44, v183);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v202, &v197, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
    LODWORD(Counter) = v169;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_189;
    }

LABEL_46:
    v72 = *(&static Signpost.animationState + 1);
    v9 = static Signpost.animationState;
    v73 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v75 = byte_1ED5283EA;
    v76 = static os_signpost_type_t.event.getter();
    v197 = __PAIR128__(v72, v9);
    LOBYTE(v198) = v73;
    BYTE1(v198) = v74;
    BYTE2(v198) = v75;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
LABEL_54:
      a1 = v173;
      a4 = v174;
      LODWORD(v9) = v172;
      goto LABEL_119;
    }

    LODWORD(v183) = v76;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v202, &v197, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v77 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_18DDAF080;
    v78 = AGGraphGetCurrentAttribute();
    v79 = v182;
    if (v78 == v182)
    {
      __break(1u);
    }

    else
    {
      v80 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v81 = MEMORY[0x1E69E6870];
      *(v58 + 56) = MEMORY[0x1E69E6810];
      *(v58 + 64) = v81;
      *(v58 + 32) = Counter;
      v82 = AGGraphGetCurrentAttribute();
      if (v82 != v79)
      {
        v83 = MEMORY[0x1E69E76D0];
        *(v58 + 96) = MEMORY[0x1E69E7668];
        *(v58 + 104) = v83;
        *(v58 + 72) = v82;
        *(v58 + 136) = MEMORY[0x1E69E6158];
        *(v58 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v58 + 112) = 0xD000000000000010;
        *(v58 + 120) = 0x800000018DD78EF0;
        if ((v74 & 1) == 0)
        {
          v168 = v33;
          if (v9 == 20)
          {
            v85 = 3;
          }

          else
          {
            v85 = 4;
          }

          v86 = bswap32(v9) | (4 * (v9 >> 16));
          a1 = v183;
          v87 = (v184 + 16);
          v175 = *(v184 + 16);
          v88 = v175(v185, v169, v187);
          v89 = 0;
          LOBYTE(v192.f64[0]) = 1;
          v183 = v85;
          v180 = 16 * v85;
          v176 = v87;
          *&v181 = v87 - 1;
          *&v179 = v58 + 32;
          v178 = v9;
          do
          {
            v182 = &v168;
            MEMORY[0x1EEE9AC00](v88);
            a4 = &v168 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
            v44 = (a4 + 8);
            v92 = v183;
            v93 = a4 + 8;
            do
            {
              *(v93 - 1) = 0;
              *v93 = 0;
              v93 += 16;
              --v92;
            }

            while (v92);
            v94 = *&v179 + 40 * v89;
            v95 = v183;
            while (1)
            {
              v96 = *(v58 + 16);
              if (v89 == v96)
              {
                break;
              }

              if (v89 >= v96)
              {
                goto LABEL_178;
              }

              ++v89;
              outlined init with copy of AnyTrackedValue(v94, &v197);
              v97 = *&v199;
              v98 = __swift_project_boxed_opaque_existential_1(&v197, *&v199);
              v99 = v97;
              v87 = v98;
              *(v44 - 8) = CVarArg.kdebugValue(_:)(v86 | a1, v99);
              *v44 = v100 & 1;
              v44 += 16;
              v90 = __swift_destroy_boxed_opaque_existential_1(&v197);
              v94 += 40;
              if (!--v95)
              {
                goto LABEL_67;
              }
            }

            LOBYTE(v192.f64[0]) = 0;
LABEL_67:
            v101 = v178;
            if (v178 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (a4[8] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[24] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v101 != 20 && a4[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v9 = **&v181;
            v87 = v185;
            v102 = v187;
            (**&v181)(v185, v187);
            v103 = __swift_project_value_buffer(v102, static OSSignpostID.continuation);
            v88 = v175(v87, v103, v102);
          }

          while ((LOBYTE(v192.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
          v104 = v187;
          v9(v185, v187);
          v9(v169, v104);

          a1 = v173;
          a4 = v174;
          LODWORD(v9) = v172;
          goto LABEL_119;
        }

        LOBYTE(v188) = v183;
        *&v191 = COERCE_DOUBLE(&dword_18D018000);
        v190 = v77;
        *&v197 = v9;
        *(&v197 + 1) = v72;
        LOBYTE(v198) = v73;
        *&v192.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
        *&v192.f64[1] = 39;
        LOBYTE(v193) = 2;
        v189 = *&v58;
        v84 = v169;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
        (*(v184 + 8))(v84, v187);

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_87:
    LODWORD(v185) = Counter;
    v108 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v58)
    {
      __break(1u);
LABEL_196:
      __break(1u);
    }

    v109 = AGGraphGetAttributeGraph();
    v110 = AGGraphGetCounter();

    v111 = MEMORY[0x1E69E6870];
    *(a1 + 56) = MEMORY[0x1E69E6810];
    *(a1 + 64) = v111;
    *(a1 + 32) = v110;
    v112 = AGGraphGetCurrentAttribute();
    if (v112 == v58)
    {
      goto LABEL_196;
    }

    v113 = MEMORY[0x1E69E76D0];
    *(a1 + 96) = MEMORY[0x1E69E7668];
    *(a1 + 104) = v113;
    *(a1 + 72) = v112;
    *(a1 + 136) = MEMORY[0x1E69E6158];
    *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(a1 + 112) = 0xD000000000000010;
    *(a1 + 120) = 0x800000018DD78EF0;
    if (v33)
    {
      LOBYTE(v188) = v185;
      *&v191 = COERCE_DOUBLE(&dword_18D018000);
      v190 = v108;
      *&v197 = v72;
      *(&v197 + 1) = v73;
      LOBYTE(v198) = v79;
      *&v192.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v192.f64[1] = 39;
      LOBYTE(v193) = 2;
      v189 = *&a1;
      v114 = v169;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v115 = v171;

      (*(v184 + 8))(v114, v187);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
      a4 = v174;
      *(v174 + 5) = v115;
      a1 = v173;
    }

    else
    {
      v117 = v72;
      v118 = v72 == 20 ? 3 : 4;
      v95 = bswap32(v72) | (4 * WORD1(v72));
      v44 = v185;
      v87 = (v184 + 16);
      v175 = *(v184 + 16);
      v119 = v175(v183, v169, v187);
      v89 = 0;
      LOBYTE(v192.f64[0]) = 1;
      v185 = v118;
      v180 = 16 * v118;
      v176 = v87;
      *&v181 = v87 - 1;
      *&v179 = a1 + 32;
      v178 = v117;
      do
      {
        v182 = &v168;
        MEMORY[0x1EEE9AC00](v119);
        v121 = &v168 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
        a4 = v121 + 8;
        v122 = v185;
        v123 = v121 + 8;
        do
        {
          *(v123 - 1) = 0;
          *v123 = 0;
          v123 += 16;
          v122 = (v122 - 1);
        }

        while (v122);
        v124 = *&v179 + 40 * v89;
        v125 = v185;
        while (1)
        {
          v126 = *(a1 + 16);
          if (v89 == v126)
          {
            break;
          }

          if (v89 >= v126)
          {
            goto LABEL_179;
          }

          ++v89;
          outlined init with copy of AnyTrackedValue(v124, &v197);
          v127 = *&v199;
          v128 = __swift_project_boxed_opaque_existential_1(&v197, *&v199);
          v129 = v127;
          v87 = v128;
          *(a4 - 1) = CVarArg.kdebugValue(_:)(v95 | v44, v129);
          *a4 = v130 & 1;
          a4 += 16;
          v90 = __swift_destroy_boxed_opaque_existential_1(&v197);
          v124 += 40;
          v125 = (v125 - 1);
          if (!v125)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v192.f64[0]) = 0;
LABEL_104:
        v131 = v178;
        if (v178 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v121[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v121[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v121[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v131 != 20 && v121[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v132 = **&v181;
        v133 = v183;
        v87 = v187;
        (**&v181)(v183, v187);
        v134 = __swift_project_value_buffer(v87, static OSSignpostID.continuation);
        v119 = v175(v133, v134, v87);
      }

      while ((LOBYTE(v192.f64[0]) & 1) != 0);
      v9 = v171;

      v135 = v187;
      v132(v133, v187);
      v132(v169, v135);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
      a4 = v174;
      *(v174 + 5) = v9;
      a1 = v173;
      LODWORD(v9) = v172;
    }

LABEL_119:
    specialized AnimatorState.addListeners(transaction:)(v170);

LABEL_120:
    *(a4 + 2) = v6;
    *(a4 + 3) = v7;
    a4[32] = 0;
LABEL_121:
    v95 = *(a4 + 5);
    if (!v95)
    {
      return result;
    }

    v192 = *a1;

    LOBYTE(v202) = 0;
    v136 = specialized AnimatorState.update(_:at:environment:)(&v192, v9, v28);
    v90 = AGGraphGetCurrentAttribute();
    v44 = *MEMORY[0x1E698D3F8];
    if (v90 == v44)
    {
      LODWORD(v89) = 0;
    }

    else
    {
      LODWORD(v89) = v90;
    }

    v87 = &type metadata instantiation cache for TupleTypeDescription;
    if (v136)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_180;
      }

      goto LABEL_127;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_182;
    }

LABEL_140:
    v146 = v87[77];
    if (*(v146 + 16) >= 0x43uLL)
    {
      if (*(v146 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v202) = v89;
        BYTE4(v202) = v90 == v44;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_175;
    }

    __break(1u);
LABEL_184:
    swift_once();
LABEL_132:
    v43 = *(&static Signpost.animationState + 1);
    v89 = static Signpost.animationState;
    LODWORD(Counter) = word_1ED5283E8;
    v38 = HIBYTE(word_1ED5283E8);
    v139 = byte_1ED5283EA;
    v33 = static os_signpost_type_t.end.getter();
    v202 = __PAIR128__(v43, v89);
    LOBYTE(v203) = Counter;
    BYTE1(v203) = v38;
    BYTE2(v203) = v139;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    v174 = a4;
    v140 = one-time initialization token for _signpostLog;
    v42 = v176;

    if (v140 != -1)
    {
      swift_once();
    }

    v173 = a1;
    v41 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v44)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    *&v180 = v45;
    v179 = v46;
    swift_once();
    v46 = v179;
    v45 = *&v180;
  }

  v42 = AGGraphGetAttributeGraph();
  v141 = AGGraphGetCounter();

  v142 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v142;
  *(a4 + 4) = v141;
  v143 = AGGraphGetCurrentAttribute();
  if (v143 == v44)
  {
    goto LABEL_186;
  }

  v144 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v144;
  *(a4 + 18) = v143;
  v87 = 0x800000018DD78EF0;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  *(a4 + 18) = lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 14) = 0xD000000000000010;
  *(a4 + 15) = 0x800000018DD78EF0;
  if (v38)
  {
    LOBYTE(v188) = v33;
    *&v191 = COERCE_DOUBLE(&dword_18D018000);
    v190 = v41;
    *&v202 = v89;
    *(&v202 + 1) = v43;
    LOBYTE(v203) = Counter;
    *&v197 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v197 + 1) = 37;
    LOBYTE(v198) = 2;
    v189 = *&a4;
    v145 = v177;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v184 + 8))(v145, v187);
    goto LABEL_173;
  }

  v147 = v89;
  if (v89 == 20)
  {
    v148 = 3;
  }

  else
  {
    v148 = 4;
  }

  v44 = bswap32(v89) | (4 * WORD1(v89));
  LODWORD(v89) = v33;
  v149 = v184 + 16;
  v178 = *(v184 + 16);
  v150 = (v178)(v186, v177, v187);
  v95 = 0;
  LOBYTE(v197) = 1;
  v182 = (16 * v148);
  v184 = v149;
  v183 = (v149 - 8);
  *&v181 = a4 + 32;
  v180 = v147;
  v179 = *&v148;
  do
  {
    v185 = &v168;
    MEMORY[0x1EEE9AC00](v150);
    a1 = &v168 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
    v152 = (a1 + 8);
    v153 = v148;
    v154 = (a1 + 8);
    do
    {
      *(v154 - 1) = 0;
      *v154 = 0;
      v154 += 16;
      --v153;
    }

    while (v153);
    v155 = *&v181 + 40 * v95;
    while (1)
    {
      v156 = *(a4 + 2);
      if (v95 == v156)
      {
        break;
      }

      if (v95 >= v156)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v166 = v90;
        swift_once();
        v90 = v166;
LABEL_127:
        v137 = v87[77];
        if (*(v137 + 16) >= 0x43uLL)
        {
          if (*(v137 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v202) = v89;
            BYTE4(v202) = v90 == v44;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v138 = one-time initialization token for animationState;
          v176 = v95;

          if (v138 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v167 = v90;
        swift_once();
        v90 = v167;
        goto LABEL_140;
      }

      ++v95;
      outlined init with copy of AnyTrackedValue(v155, &v202);
      v157 = *(&v203 + 1);
      v158 = __swift_project_boxed_opaque_existential_1(&v202, *(&v203 + 1));
      v159 = v157;
      v87 = v158;
      *(v152 - 1) = CVarArg.kdebugValue(_:)(v44 | v33, v159);
      *v152 = v160 & 1;
      v152 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v202);
      v155 += 40;
      if (!--v148)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v197) = 0;
LABEL_158:
    v161 = v180;
    if (v180 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a1 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v161 != 20 && *(a1 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v162 = *v183;
    v163 = v186;
    v87 = v187;
    (*v183)(v186, v187);
    v164 = __swift_project_value_buffer(v87, static OSSignpostID.continuation);
    v150 = (v178)(v163, v164, v87);
    v148 = *&v179;
  }

  while ((v197 & 1) != 0);

  v165 = v187;
  v162(v186, v187);
  v162(v177, v165);
LABEL_173:

  a1 = v173;
  a4 = v174;
LABEL_174:
  specialized AnimatorState.removeListeners()();

  *(a4 + 5) = 0;
LABEL_175:
  *a1 = v192;
  *(a1 + 17) = 1;
  return result;
}

{
  LODWORD(v9) = a3;
  v205 = *MEMORY[0x1E69E9840];
  v186 = type metadata accessor for OSSignpostID();
  v183 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v13 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v167 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v184 = &v167 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v167 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v185 = &v167 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v176 = &v167 - v25;
  if (*(a4 + 5))
  {
    Value = AGGraphGetValue();
    if (v27)
    {
      v28 = *Value;
    }

    else
    {
      v28 = -INFINITY;
    }
  }

  else
  {
    v28 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 16) = 1;
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_121;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  if (a4[32])
  {
    goto LABEL_120;
  }

  v5 = *(a4 + 2);
  v4 = *(a4 + 3);
  if (v6 == v5 && v7 == v4)
  {
    goto LABEL_120;
  }

  v171 = v9;
  v182 = v13;
  v168 = v16;
  AGGraphClearUpdate();
  v30 = *(a4 + 1);
  v201 = *a4;
  v202 = v30;
  v203 = *(a4 + 2);
  v173 = a4;
  v204 = *(a4 + 12);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v201, &v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
  v31 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v32 = Transaction.effectiveAnimation.getter(v31);
  if (v32)
  {
    v33 = v32;
    LODWORD(v9) = v171;
  }

  else
  {
    LODWORD(v9) = v171;
    if (!a2)
    {

      a4 = v173;
      goto LABEL_120;
    }

    v33 = a2;
  }

  v34 = *(&v203 + 1);
  v35 = v6 - v5;
  v36 = v7 - v4;
  v28 = *AGGraphGetValue();
  v172 = a1;
  v169 = v31;
  if (!v34)
  {
    *&v191.f64[0] = &type metadata for _OffsetEffect;
    type metadata accessor for _OffsetEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, CGFloat>>.Type, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v52 = swift_dynamicCast();
    if (v52)
    {
      v53 = v196;
    }

    else
    {
      v53 = 0;
    }

    if (v52)
    {
      v54 = *(&v196 + 1);
    }

    else
    {
      v54 = 0;
    }

    v170 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVy12CoreGraphics7CGFloatVAYG_Tt4B5(v55, v31, v53, v54, v35, v36, v28);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v57 = CurrentAttribute;
    LODWORD(v58) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v59 = 0;
    }

    else
    {
      v59 = CurrentAttribute;
    }

    LODWORD(v181) = v59;
    v60 = *(*v33 + 96);
    v167 = v33;
    v60(&v191);
    v61 = v191;
    v62 = v192;
    v63 = v194;
    *&v190 = NAN;
    v189 = NAN;
    v188 = 1.0;
    v187 = NAN;
    v196 = v191;
    v197 = *&v192;
    v64 = v193;
    v198 = *&v193;
    v199 = *&v194;
    LODWORD(v184) = v195;
    LOBYTE(v200) = v195;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v196, &v190, &v189, &v188, &v187);
    v4 = *&v190;
    v5 = v189;
    v65 = v188;
    v66 = v187;
    if (one-time initialization token for enabledCategories != -1)
    {
      v180 = v188;
      *&v179 = v187;
      swift_once();
      v66 = *&v179;
      v65 = v180;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v67 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v68 = v57 == v58;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v69 = v58;
          v58 = *(v67 + 16);
          LODWORD(v196) = v181;
          BYTE4(v196) = v68;
          *(&v196 + 1) = &type metadata for _OffsetEffect;
          v197 = v4;
          v198 = v5;
          v199 = v65;
          v200 = v66;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v70 = v58;
          LODWORD(v58) = v69;
          v71 = v70;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(*&v61.f64[0], *&v61.f64[1], v62, v64, v63, v184);
        }

        else
        {
          outlined consume of Animation.Function(*&v61.f64[0], *&v61.f64[1], v62, v64, v63, v184);
        }

        a1 = v172;
        LODWORD(v9) = v171;
      }

      else
      {
        outlined consume of Animation.Function(*&v61.f64[0], *&v61.f64[1], v62, v64, v63, v184);
      }

      v104 = one-time initialization token for animationState;

      if (v104 == -1)
      {
LABEL_85:
        v73 = *(&static Signpost.animationState + 1);
        v72 = static Signpost.animationState;
        LOBYTE(v79) = word_1ED5283E8;
        LOBYTE(v33) = HIBYTE(word_1ED5283E8);
        v105 = byte_1ED5283EA;
        LODWORD(Counter) = static os_signpost_type_t.begin.getter();
        v196 = __PAIR128__(v73, v72);
        LOBYTE(v197) = v79;
        BYTE1(v197) = v33;
        BYTE2(v197) = v105;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v115 = v170;

          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
          a4 = v173;
          *(v173 + 5) = v115;
          goto LABEL_119;
        }

        v106 = one-time initialization token for _signpostLog;

        if (v106 != -1)
        {
          goto LABEL_194;
        }

        goto LABEL_87;
      }
    }

    swift_once();
    goto LABEL_85;
  }

  v168 = v21;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v201, &v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v196) = 0;
  v170 = v34;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v33, v31, v35, v36, v28);
  v37 = AGGraphGetCurrentAttribute();
  v38 = v37;
  LODWORD(Counter) = *MEMORY[0x1E698D3F8];
  if (v37 == *MEMORY[0x1E698D3F8])
  {
    v40 = 0;
  }

  else
  {
    v40 = v37;
  }

  LODWORD(v180) = v40;
  (*(*v33 + 96))(&v191);
  v41 = v191.f64[1];
  v42 = *&v191.f64[0];
  v43 = v192;
  a4 = v193;
  *&v190 = NAN;
  v189 = NAN;
  v188 = 1.0;
  v187 = NAN;
  v196 = v191;
  v197 = *&v192;
  v198 = *&v193;
  v199 = *&v194;
  v44 = v194;
  LODWORD(v182) = v195;
  LOBYTE(v200) = v195;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v196, &v190, &v189, &v188, &v187);
  v4 = *&v190;
  v5 = v189;
  v45 = v188;
  v46 = v187;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_187;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_189:
      swift_once();
      goto LABEL_46;
    }

    v47 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v181) = Counter;
    if (v47)
    {
      v167 = v33;
      v48 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v49 = *(v48 + 16);
        LODWORD(v196) = LODWORD(v180);
        BYTE4(v196) = v38 == Counter;
        *(&v196 + 1) = &type metadata for _OffsetEffect;
        v197 = v4;
        v198 = v5;
        v199 = v45;
        v200 = v46;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v180 = v50;

        v51 = v49;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v42, *&v41, v43, a4, v44, v182);
      }

      else
      {
        outlined consume of Animation.Function(v42, *&v41, v43, a4, v44, v182);
      }

      v33 = v167;
    }

    else
    {
      outlined consume of Animation.Function(v42, *&v41, v43, a4, v44, v182);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v201, &v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
    LODWORD(Counter) = v168;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_189;
    }

LABEL_46:
    v72 = *(&static Signpost.animationState + 1);
    v9 = static Signpost.animationState;
    v73 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v75 = byte_1ED5283EA;
    v76 = static os_signpost_type_t.event.getter();
    v196 = __PAIR128__(v72, v9);
    LOBYTE(v197) = v73;
    BYTE1(v197) = v74;
    BYTE2(v197) = v75;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
LABEL_54:
      a1 = v172;
      a4 = v173;
      LODWORD(v9) = v171;
      goto LABEL_119;
    }

    LODWORD(v182) = v76;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v201, &v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v77 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_18DDAF080;
    v78 = AGGraphGetCurrentAttribute();
    v79 = v181;
    if (v78 == v181)
    {
      __break(1u);
    }

    else
    {
      v80 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v81 = MEMORY[0x1E69E6870];
      *(v58 + 56) = MEMORY[0x1E69E6810];
      *(v58 + 64) = v81;
      *(v58 + 32) = Counter;
      v82 = AGGraphGetCurrentAttribute();
      if (v82 != v79)
      {
        v83 = MEMORY[0x1E69E76D0];
        *(v58 + 96) = MEMORY[0x1E69E7668];
        *(v58 + 104) = v83;
        *(v58 + 72) = v82;
        *(v58 + 136) = MEMORY[0x1E69E6158];
        *(v58 + 144) = lazy protocol witness table accessor for type String and conformance String();
        strcpy((v58 + 112), "_OffsetEffect");
        *(v58 + 126) = -4864;
        if ((v74 & 1) == 0)
        {
          v167 = v33;
          if (v9 == 20)
          {
            v85 = 3;
          }

          else
          {
            v85 = 4;
          }

          v86 = bswap32(v9) | (4 * (v9 >> 16));
          a1 = v182;
          v42 = v183 + 16;
          v174 = *(v183 + 16);
          v87 = v174(v184, v168, v186);
          v88 = 0;
          LOBYTE(v191.f64[0]) = 1;
          v182 = v85;
          v179 = 16 * v85;
          v175 = v42;
          *&v180 = v42 - 8;
          *&v178 = v58 + 32;
          v177 = v9;
          do
          {
            v181 = &v167;
            MEMORY[0x1EEE9AC00](v87);
            a4 = &v167 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
            v44 = (a4 + 8);
            v91 = v182;
            v92 = a4 + 8;
            do
            {
              *(v92 - 1) = 0;
              *v92 = 0;
              v92 += 16;
              --v91;
            }

            while (v91);
            v93 = *&v178 + 40 * v88;
            v94 = v182;
            while (1)
            {
              v95 = *(v58 + 16);
              if (v88 == v95)
              {
                break;
              }

              if (v88 >= v95)
              {
                goto LABEL_178;
              }

              ++v88;
              outlined init with copy of AnyTrackedValue(v93, &v196);
              v96 = *&v198;
              v97 = __swift_project_boxed_opaque_existential_1(&v196, *&v198);
              v98 = v96;
              v42 = v97;
              *(v44 - 8) = CVarArg.kdebugValue(_:)(v86 | a1, v98);
              *v44 = v99 & 1;
              v44 += 16;
              v89 = __swift_destroy_boxed_opaque_existential_1(&v196);
              v93 += 40;
              if (!--v94)
              {
                goto LABEL_67;
              }
            }

            LOBYTE(v191.f64[0]) = 0;
LABEL_67:
            v100 = v177;
            if (v177 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (a4[8] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[24] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v100 != 20 && a4[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v9 = **&v180;
            v42 = v184;
            v101 = v186;
            (**&v180)(v184, v186);
            v102 = __swift_project_value_buffer(v101, static OSSignpostID.continuation);
            v87 = v174(v42, v102, v101);
          }

          while ((LOBYTE(v191.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
          v103 = v186;
          v9(v184, v186);
          v9(v168, v103);

          a1 = v172;
          a4 = v173;
          LODWORD(v9) = v171;
          goto LABEL_119;
        }

        LOBYTE(v187) = v182;
        *&v190 = COERCE_DOUBLE(&dword_18D018000);
        v189 = v77;
        *&v196 = v9;
        *(&v196 + 1) = v72;
        LOBYTE(v197) = v73;
        *&v191.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
        *&v191.f64[1] = 39;
        LOBYTE(v192) = 2;
        v188 = *&v58;
        v84 = v168;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
        (*(v183 + 8))(v84, v186);

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_87:
    LODWORD(v184) = Counter;
    v107 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v58)
    {
      __break(1u);
LABEL_196:
      __break(1u);
    }

    v108 = AGGraphGetAttributeGraph();
    v109 = AGGraphGetCounter();

    v110 = MEMORY[0x1E69E6870];
    *(a1 + 56) = MEMORY[0x1E69E6810];
    *(a1 + 64) = v110;
    *(a1 + 32) = v109;
    v111 = AGGraphGetCurrentAttribute();
    if (v111 == v58)
    {
      goto LABEL_196;
    }

    v112 = MEMORY[0x1E69E76D0];
    *(a1 + 96) = MEMORY[0x1E69E7668];
    *(a1 + 104) = v112;
    *(a1 + 72) = v111;
    *(a1 + 136) = MEMORY[0x1E69E6158];
    *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
    strcpy((a1 + 112), "_OffsetEffect");
    *(a1 + 126) = -4864;
    if (v33)
    {
      LOBYTE(v187) = v184;
      *&v190 = COERCE_DOUBLE(&dword_18D018000);
      v189 = v107;
      *&v196 = v72;
      *(&v196 + 1) = v73;
      LOBYTE(v197) = v79;
      *&v191.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v191.f64[1] = 39;
      LOBYTE(v192) = 2;
      v188 = *&a1;
      v113 = v168;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v114 = v170;

      (*(v183 + 8))(v113, v186);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v173;
      *(v173 + 5) = v114;
      a1 = v172;
    }

    else
    {
      v116 = v72;
      v117 = v72 == 20 ? 3 : 4;
      v94 = bswap32(v72) | (4 * WORD1(v72));
      v44 = v184;
      v42 = v183 + 16;
      v174 = *(v183 + 16);
      v118 = v174(v182, v168, v186);
      v88 = 0;
      LOBYTE(v191.f64[0]) = 1;
      v184 = v117;
      v179 = 16 * v117;
      v175 = v42;
      *&v180 = v42 - 8;
      *&v178 = a1 + 32;
      v177 = v116;
      do
      {
        v181 = &v167;
        MEMORY[0x1EEE9AC00](v118);
        v120 = &v167 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
        a4 = v120 + 8;
        v121 = v184;
        v122 = v120 + 8;
        do
        {
          *(v122 - 1) = 0;
          *v122 = 0;
          v122 += 16;
          --v121;
        }

        while (v121);
        v123 = *&v178 + 40 * v88;
        v124 = v184;
        while (1)
        {
          v125 = *(a1 + 16);
          if (v88 == v125)
          {
            break;
          }

          if (v88 >= v125)
          {
            goto LABEL_179;
          }

          ++v88;
          outlined init with copy of AnyTrackedValue(v123, &v196);
          v126 = *&v198;
          v127 = __swift_project_boxed_opaque_existential_1(&v196, *&v198);
          v128 = v126;
          v42 = v127;
          *(a4 - 1) = CVarArg.kdebugValue(_:)(v94 | v44, v128);
          *a4 = v129 & 1;
          a4 += 16;
          v89 = __swift_destroy_boxed_opaque_existential_1(&v196);
          v123 += 40;
          if (!--v124)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v191.f64[0]) = 0;
LABEL_104:
        v130 = v177;
        if (v177 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v120[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v120[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v120[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v130 != 20 && v120[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v131 = **&v180;
        v132 = v182;
        v42 = v186;
        (**&v180)(v182, v186);
        v133 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
        v118 = v174(v132, v133, v42);
      }

      while ((LOBYTE(v191.f64[0]) & 1) != 0);
      v9 = v170;

      v134 = v186;
      v131(v132, v186);
      v131(v168, v134);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v173;
      *(v173 + 5) = v9;
      a1 = v172;
      LODWORD(v9) = v171;
    }

LABEL_119:
    specialized AnimatorState.addListeners(transaction:)(v169);

LABEL_120:
    *(a4 + 2) = v6;
    *(a4 + 3) = v7;
    a4[32] = 0;
LABEL_121:
    v94 = *(a4 + 5);
    if (!v94)
    {
      return result;
    }

    v191 = *a1;

    LOBYTE(v201) = 0;
    v135 = specialized AnimatorState.update(_:at:environment:)(&v191, v9, v28);
    v89 = AGGraphGetCurrentAttribute();
    v44 = *MEMORY[0x1E698D3F8];
    if (v89 == v44)
    {
      LODWORD(v88) = 0;
    }

    else
    {
      LODWORD(v88) = v89;
    }

    v42 = &type metadata instantiation cache for TupleTypeDescription;
    if (v135)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_180;
      }

      goto LABEL_127;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_182;
    }

LABEL_140:
    v145 = *(v42 + 616);
    if (*(v145 + 16) >= 0x43uLL)
    {
      if (*(v145 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v201) = v88;
        BYTE4(v201) = v89 == v44;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_175;
    }

    __break(1u);
LABEL_184:
    swift_once();
LABEL_132:
    v43 = *(&static Signpost.animationState + 1);
    v88 = static Signpost.animationState;
    LODWORD(Counter) = word_1ED5283E8;
    v38 = HIBYTE(word_1ED5283E8);
    v138 = byte_1ED5283EA;
    v33 = static os_signpost_type_t.end.getter();
    v201 = __PAIR128__(v43, v88);
    LOBYTE(v202) = Counter;
    BYTE1(v202) = v38;
    BYTE2(v202) = v138;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    v173 = a4;
    v139 = one-time initialization token for _signpostLog;
    v42 = v175;

    if (v139 != -1)
    {
      swift_once();
    }

    v172 = a1;
    v41 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v44)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    *&v179 = v45;
    v178 = v46;
    swift_once();
    v46 = v178;
    v45 = *&v179;
  }

  v42 = AGGraphGetAttributeGraph();
  v140 = AGGraphGetCounter();

  v141 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v141;
  *(a4 + 4) = v140;
  v142 = AGGraphGetCurrentAttribute();
  if (v142 == v44)
  {
    goto LABEL_186;
  }

  v143 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v143;
  *(a4 + 18) = v142;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  *(a4 + 18) = lazy protocol witness table accessor for type String and conformance String();
  strcpy(a4 + 112, "_OffsetEffect");
  *(a4 + 63) = -4864;
  if (v38)
  {
    LOBYTE(v187) = v33;
    *&v190 = COERCE_DOUBLE(&dword_18D018000);
    v189 = v41;
    *&v201 = v88;
    *(&v201 + 1) = v43;
    LOBYTE(v202) = Counter;
    *&v196 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v196 + 1) = 37;
    LOBYTE(v197) = 2;
    v188 = *&a4;
    v144 = v176;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v183 + 8))(v144, v186);
    goto LABEL_173;
  }

  v146 = v88;
  if (v88 == 20)
  {
    v147 = 3;
  }

  else
  {
    v147 = 4;
  }

  v44 = bswap32(v88) | (4 * WORD1(v88));
  LODWORD(v88) = v33;
  v148 = v183 + 16;
  v177 = *(v183 + 16);
  v149 = (v177)(v185, v176, v186);
  v94 = 0;
  LOBYTE(v196) = 1;
  v181 = (16 * v147);
  v183 = v148;
  v182 = (v148 - 8);
  *&v180 = a4 + 32;
  v179 = v146;
  v178 = *&v147;
  do
  {
    v184 = &v167;
    MEMORY[0x1EEE9AC00](v149);
    a1 = &v167 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
    v151 = (a1 + 8);
    v152 = v147;
    v153 = (a1 + 8);
    do
    {
      *(v153 - 1) = 0;
      *v153 = 0;
      v153 += 16;
      --v152;
    }

    while (v152);
    v154 = *&v180 + 40 * v94;
    while (1)
    {
      v155 = *(a4 + 2);
      if (v94 == v155)
      {
        break;
      }

      if (v94 >= v155)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v165 = v89;
        swift_once();
        v89 = v165;
LABEL_127:
        v136 = *(v42 + 616);
        if (*(v136 + 16) >= 0x43uLL)
        {
          if (*(v136 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v201) = v88;
            BYTE4(v201) = v89 == v44;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v137 = one-time initialization token for animationState;
          v175 = v94;

          if (v137 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v166 = v89;
        swift_once();
        v89 = v166;
        goto LABEL_140;
      }

      ++v94;
      outlined init with copy of AnyTrackedValue(v154, &v201);
      v156 = *(&v202 + 1);
      v157 = __swift_project_boxed_opaque_existential_1(&v201, *(&v202 + 1));
      v158 = v156;
      v42 = v157;
      *(v151 - 1) = CVarArg.kdebugValue(_:)(v44 | v33, v158);
      *v151 = v159 & 1;
      v151 += 16;
      v89 = __swift_destroy_boxed_opaque_existential_1(&v201);
      v154 += 40;
      if (!--v147)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v196) = 0;
LABEL_158:
    v160 = v179;
    if (v179 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a1 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v160 != 20 && *(a1 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v161 = *v182;
    v162 = v185;
    v42 = v186;
    (*v182)(v185, v186);
    v163 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
    v149 = (v177)(v162, v163, v42);
    v147 = *&v178;
  }

  while ((v196 & 1) != 0);

  v164 = v186;
  v161(v185, v186);
  v161(v176, v164);
LABEL_173:

  a1 = v172;
  a4 = v173;
LABEL_174:
  specialized AnimatorState.removeListeners()();

  *(a4 + 5) = 0;
LABEL_175:
  *a1 = v191;
  *(a1 + 16) = 1;
  return result;
}

{
  LODWORD(v9) = a3;
  v206 = *MEMORY[0x1E69E9840];
  v187 = type metadata accessor for OSSignpostID();
  v184 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v13 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v168 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v185 = (&v168 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v168 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v186 = &v168 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v177 = &v168 - v25;
  if (*(a4 + 5))
  {
    Value = AGGraphGetValue();
    if (v27)
    {
      v28 = *Value;
    }

    else
    {
      v28 = -INFINITY;
    }
  }

  else
  {
    v28 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 16) = 1;
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_121;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  if (a4[32])
  {
    goto LABEL_120;
  }

  v5 = *(a4 + 2);
  v4 = *(a4 + 3);
  if (v6 == v5 && v7 == v4)
  {
    goto LABEL_120;
  }

  v172 = v9;
  v183 = v13;
  v169 = v16;
  AGGraphClearUpdate();
  v30 = *(a4 + 1);
  v202 = *a4;
  v203 = v30;
  v204 = *(a4 + 2);
  v174 = a4;
  v205 = *(a4 + 12);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v202, &v197, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
  v31 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v32 = Transaction.effectiveAnimation.getter(v31);
  if (v32)
  {
    v33 = v32;
    LODWORD(v9) = v172;
  }

  else
  {
    LODWORD(v9) = v172;
    if (!a2)
    {

      a4 = v174;
      goto LABEL_120;
    }

    v33 = a2;
  }

  v34 = *(&v204 + 1);
  v35 = v6 - v5;
  v36 = v7 - v4;
  v28 = *AGGraphGetValue();
  v173 = a1;
  v170 = v31;
  if (!v34)
  {
    *&v192.f64[0] = &type metadata for KickModifier;
    type metadata accessor for KickModifier.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, CGFloat>>.Type, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v52 = swift_dynamicCast();
    if (v52)
    {
      v53 = v197;
    }

    else
    {
      v53 = 0;
    }

    if (v52)
    {
      v54 = *(&v197 + 1);
    }

    else
    {
      v54 = 0;
    }

    v171 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVy12CoreGraphics7CGFloatVAYG_Tt4B5(v55, v31, v53, v54, v35, v36, v28);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v57 = CurrentAttribute;
    LODWORD(v58) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v59 = 0;
    }

    else
    {
      v59 = CurrentAttribute;
    }

    LODWORD(v182) = v59;
    v60 = *(*v33 + 96);
    v168 = v33;
    v60(&v192);
    v61 = v192;
    v62 = v193;
    v63 = v195;
    *&v191 = NAN;
    v190 = NAN;
    v189 = 1.0;
    v188 = NAN;
    v197 = v192;
    v198 = *&v193;
    v64 = v194;
    v199 = *&v194;
    v200 = *&v195;
    LODWORD(v185) = v196;
    LOBYTE(v201) = v196;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v197, &v191, &v190, &v189, &v188);
    v4 = *&v191;
    v5 = v190;
    v65 = v189;
    v66 = v188;
    if (one-time initialization token for enabledCategories != -1)
    {
      v181 = v189;
      *&v180 = v188;
      swift_once();
      v66 = *&v180;
      v65 = v181;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v67 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v68 = v57 == v58;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v69 = v58;
          v58 = *(v67 + 16);
          LODWORD(v197) = v182;
          BYTE4(v197) = v68;
          *(&v197 + 1) = &type metadata for KickModifier;
          v198 = v4;
          v199 = v5;
          v200 = v65;
          v201 = v66;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v70 = v58;
          LODWORD(v58) = v69;
          v71 = v70;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(*&v61.f64[0], *&v61.f64[1], v62, v64, v63, v185);
        }

        else
        {
          outlined consume of Animation.Function(*&v61.f64[0], *&v61.f64[1], v62, v64, v63, v185);
        }

        a1 = v173;
        LODWORD(v9) = v172;
      }

      else
      {
        outlined consume of Animation.Function(*&v61.f64[0], *&v61.f64[1], v62, v64, v63, v185);
      }

      v105 = one-time initialization token for animationState;

      if (v105 == -1)
      {
LABEL_85:
        v73 = *(&static Signpost.animationState + 1);
        v72 = static Signpost.animationState;
        LOBYTE(v79) = word_1ED5283E8;
        LOBYTE(v33) = HIBYTE(word_1ED5283E8);
        v106 = byte_1ED5283EA;
        LODWORD(Counter) = static os_signpost_type_t.begin.getter();
        v197 = __PAIR128__(v73, v72);
        LOBYTE(v198) = v79;
        BYTE1(v198) = v33;
        BYTE2(v198) = v106;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v116 = v171;

          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
          a4 = v174;
          *(v174 + 5) = v116;
          goto LABEL_119;
        }

        v107 = one-time initialization token for _signpostLog;

        if (v107 != -1)
        {
          goto LABEL_194;
        }

        goto LABEL_87;
      }
    }

    swift_once();
    goto LABEL_85;
  }

  v169 = v21;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v202, &v197, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v197) = 0;
  v171 = v34;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v33, v31, v35, v36, v28);
  v37 = AGGraphGetCurrentAttribute();
  v38 = v37;
  LODWORD(Counter) = *MEMORY[0x1E698D3F8];
  if (v37 == *MEMORY[0x1E698D3F8])
  {
    v40 = 0;
  }

  else
  {
    v40 = v37;
  }

  LODWORD(v181) = v40;
  (*(*v33 + 96))(&v192);
  v41 = v192.f64[1];
  v42 = *&v192.f64[0];
  v43 = v193;
  a4 = v194;
  *&v191 = NAN;
  v190 = NAN;
  v189 = 1.0;
  v188 = NAN;
  v197 = v192;
  v198 = *&v193;
  v199 = *&v194;
  v200 = *&v195;
  v44 = v195;
  LODWORD(v183) = v196;
  LOBYTE(v201) = v196;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v197, &v191, &v190, &v189, &v188);
  v4 = *&v191;
  v5 = v190;
  v45 = v189;
  v46 = v188;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_187;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_189:
      swift_once();
      goto LABEL_46;
    }

    v47 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v182) = Counter;
    if (v47)
    {
      v168 = v33;
      v48 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v49 = *(v48 + 16);
        LODWORD(v197) = LODWORD(v181);
        BYTE4(v197) = v38 == Counter;
        *(&v197 + 1) = &type metadata for KickModifier;
        v198 = v4;
        v199 = v5;
        v200 = v45;
        v201 = v46;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v181 = v50;

        v51 = v49;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v42, *&v41, v43, a4, v44, v183);
      }

      else
      {
        outlined consume of Animation.Function(v42, *&v41, v43, a4, v44, v183);
      }

      v33 = v168;
    }

    else
    {
      outlined consume of Animation.Function(v42, *&v41, v43, a4, v44, v183);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v202, &v197, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
    LODWORD(Counter) = v169;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_189;
    }

LABEL_46:
    v72 = *(&static Signpost.animationState + 1);
    v9 = static Signpost.animationState;
    v73 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v75 = byte_1ED5283EA;
    v76 = static os_signpost_type_t.event.getter();
    v197 = __PAIR128__(v72, v9);
    LOBYTE(v198) = v73;
    BYTE1(v198) = v74;
    BYTE2(v198) = v75;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
LABEL_54:
      a1 = v173;
      a4 = v174;
      LODWORD(v9) = v172;
      goto LABEL_119;
    }

    LODWORD(v183) = v76;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v202, &v197, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v77 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_18DDAF080;
    v78 = AGGraphGetCurrentAttribute();
    v79 = v182;
    if (v78 == v182)
    {
      __break(1u);
    }

    else
    {
      v80 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v81 = MEMORY[0x1E69E6870];
      *(v58 + 56) = MEMORY[0x1E69E6810];
      *(v58 + 64) = v81;
      *(v58 + 32) = Counter;
      v82 = AGGraphGetCurrentAttribute();
      if (v82 != v79)
      {
        v83 = MEMORY[0x1E69E76D0];
        *(v58 + 96) = MEMORY[0x1E69E7668];
        *(v58 + 104) = v83;
        *(v58 + 72) = v82;
        *(v58 + 136) = MEMORY[0x1E69E6158];
        *(v58 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v58 + 112) = 0xD000000000000033;
        *(v58 + 120) = 0x800000018DD7EE10;
        if ((v74 & 1) == 0)
        {
          v168 = v33;
          if (v9 == 20)
          {
            v85 = 3;
          }

          else
          {
            v85 = 4;
          }

          v86 = bswap32(v9) | (4 * (v9 >> 16));
          a1 = v183;
          v87 = (v184 + 16);
          v175 = *(v184 + 16);
          v88 = v175(v185, v169, v187);
          v89 = 0;
          LOBYTE(v192.f64[0]) = 1;
          v183 = v85;
          v180 = 16 * v85;
          v176 = v87;
          *&v181 = v87 - 1;
          *&v179 = v58 + 32;
          v178 = v9;
          do
          {
            v182 = &v168;
            MEMORY[0x1EEE9AC00](v88);
            a4 = &v168 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
            v44 = (a4 + 8);
            v92 = v183;
            v93 = a4 + 8;
            do
            {
              *(v93 - 1) = 0;
              *v93 = 0;
              v93 += 16;
              --v92;
            }

            while (v92);
            v94 = *&v179 + 40 * v89;
            v95 = v183;
            while (1)
            {
              v96 = *(v58 + 16);
              if (v89 == v96)
              {
                break;
              }

              if (v89 >= v96)
              {
                goto LABEL_178;
              }

              ++v89;
              outlined init with copy of AnyTrackedValue(v94, &v197);
              v97 = *&v199;
              v98 = __swift_project_boxed_opaque_existential_1(&v197, *&v199);
              v99 = v97;
              v87 = v98;
              *(v44 - 8) = CVarArg.kdebugValue(_:)(v86 | a1, v99);
              *v44 = v100 & 1;
              v44 += 16;
              v90 = __swift_destroy_boxed_opaque_existential_1(&v197);
              v94 += 40;
              if (!--v95)
              {
                goto LABEL_67;
              }
            }

            LOBYTE(v192.f64[0]) = 0;
LABEL_67:
            v101 = v178;
            if (v178 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (a4[8] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[24] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v101 != 20 && a4[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v9 = **&v181;
            v87 = v185;
            v102 = v187;
            (**&v181)(v185, v187);
            v103 = __swift_project_value_buffer(v102, static OSSignpostID.continuation);
            v88 = v175(v87, v103, v102);
          }

          while ((LOBYTE(v192.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
          v104 = v187;
          v9(v185, v187);
          v9(v169, v104);

          a1 = v173;
          a4 = v174;
          LODWORD(v9) = v172;
          goto LABEL_119;
        }

        LOBYTE(v188) = v183;
        *&v191 = COERCE_DOUBLE(&dword_18D018000);
        v190 = v77;
        *&v197 = v9;
        *(&v197 + 1) = v72;
        LOBYTE(v198) = v73;
        *&v192.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
        *&v192.f64[1] = 39;
        LOBYTE(v193) = 2;
        v189 = *&v58;
        v84 = v169;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
        (*(v184 + 8))(v84, v187);

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_87:
    LODWORD(v185) = Counter;
    v108 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v58)
    {
      __break(1u);
LABEL_196:
      __break(1u);
    }

    v109 = AGGraphGetAttributeGraph();
    v110 = AGGraphGetCounter();

    v111 = MEMORY[0x1E69E6870];
    *(a1 + 56) = MEMORY[0x1E69E6810];
    *(a1 + 64) = v111;
    *(a1 + 32) = v110;
    v112 = AGGraphGetCurrentAttribute();
    if (v112 == v58)
    {
      goto LABEL_196;
    }

    v113 = MEMORY[0x1E69E76D0];
    *(a1 + 96) = MEMORY[0x1E69E7668];
    *(a1 + 104) = v113;
    *(a1 + 72) = v112;
    *(a1 + 136) = MEMORY[0x1E69E6158];
    *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(a1 + 112) = 0xD000000000000033;
    *(a1 + 120) = 0x800000018DD7EE10;
    if (v33)
    {
      LOBYTE(v188) = v185;
      *&v191 = COERCE_DOUBLE(&dword_18D018000);
      v190 = v108;
      *&v197 = v72;
      *(&v197 + 1) = v73;
      LOBYTE(v198) = v79;
      *&v192.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v192.f64[1] = 39;
      LOBYTE(v193) = 2;
      v189 = *&a1;
      v114 = v169;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v115 = v171;

      (*(v184 + 8))(v114, v187);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
      a4 = v174;
      *(v174 + 5) = v115;
      a1 = v173;
    }

    else
    {
      v117 = v72;
      v118 = v72 == 20 ? 3 : 4;
      v95 = bswap32(v72) | (4 * WORD1(v72));
      v44 = v185;
      v87 = (v184 + 16);
      v175 = *(v184 + 16);
      v119 = v175(v183, v169, v187);
      v89 = 0;
      LOBYTE(v192.f64[0]) = 1;
      v185 = v118;
      v180 = 16 * v118;
      v176 = v87;
      *&v181 = v87 - 1;
      *&v179 = a1 + 32;
      v178 = v117;
      do
      {
        v182 = &v168;
        MEMORY[0x1EEE9AC00](v119);
        v121 = &v168 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
        a4 = v121 + 8;
        v122 = v185;
        v123 = v121 + 8;
        do
        {
          *(v123 - 1) = 0;
          *v123 = 0;
          v123 += 16;
          v122 = (v122 - 1);
        }

        while (v122);
        v124 = *&v179 + 40 * v89;
        v125 = v185;
        while (1)
        {
          v126 = *(a1 + 16);
          if (v89 == v126)
          {
            break;
          }

          if (v89 >= v126)
          {
            goto LABEL_179;
          }

          ++v89;
          outlined init with copy of AnyTrackedValue(v124, &v197);
          v127 = *&v199;
          v128 = __swift_project_boxed_opaque_existential_1(&v197, *&v199);
          v129 = v127;
          v87 = v128;
          *(a4 - 1) = CVarArg.kdebugValue(_:)(v95 | v44, v129);
          *a4 = v130 & 1;
          a4 += 16;
          v90 = __swift_destroy_boxed_opaque_existential_1(&v197);
          v124 += 40;
          v125 = (v125 - 1);
          if (!v125)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v192.f64[0]) = 0;
LABEL_104:
        v131 = v178;
        if (v178 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v121[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v121[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v121[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v131 != 20 && v121[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v132 = **&v181;
        v133 = v183;
        v87 = v187;
        (**&v181)(v183, v187);
        v134 = __swift_project_value_buffer(v87, static OSSignpostID.continuation);
        v119 = v175(v133, v134, v87);
      }

      while ((LOBYTE(v192.f64[0]) & 1) != 0);
      v9 = v171;

      v135 = v187;
      v132(v133, v187);
      v132(v169, v135);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v202, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
      a4 = v174;
      *(v174 + 5) = v9;
      a1 = v173;
      LODWORD(v9) = v172;
    }

LABEL_119:
    specialized AnimatorState.addListeners(transaction:)(v170);

LABEL_120:
    *(a4 + 2) = v6;
    *(a4 + 3) = v7;
    a4[32] = 0;
LABEL_121:
    v95 = *(a4 + 5);
    if (!v95)
    {
      return result;
    }

    v192 = *a1;

    LOBYTE(v202) = 0;
    v136 = specialized AnimatorState.update(_:at:environment:)(&v192, v9, v28);
    v90 = AGGraphGetCurrentAttribute();
    v44 = *MEMORY[0x1E698D3F8];
    if (v90 == v44)
    {
      LODWORD(v89) = 0;
    }

    else
    {
      LODWORD(v89) = v90;
    }

    v87 = &type metadata instantiation cache for TupleTypeDescription;
    if (v136)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_180;
      }

      goto LABEL_127;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_182;
    }

LABEL_140:
    v146 = v87[77];
    if (*(v146 + 16) >= 0x43uLL)
    {
      if (*(v146 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v202) = v89;
        BYTE4(v202) = v90 == v44;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_175;
    }

    __break(1u);
LABEL_184:
    swift_once();
LABEL_132:
    v43 = *(&static Signpost.animationState + 1);
    v89 = static Signpost.animationState;
    LODWORD(Counter) = word_1ED5283E8;
    v38 = HIBYTE(word_1ED5283E8);
    v139 = byte_1ED5283EA;
    v33 = static os_signpost_type_t.end.getter();
    v202 = __PAIR128__(v43, v89);
    LOBYTE(v203) = Counter;
    BYTE1(v203) = v38;
    BYTE2(v203) = v139;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    v174 = a4;
    v140 = one-time initialization token for _signpostLog;
    v42 = v176;

    if (v140 != -1)
    {
      swift_once();
    }

    v173 = a1;
    v41 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v44)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    *&v180 = v45;
    v179 = v46;
    swift_once();
    v46 = v179;
    v45 = *&v180;
  }

  v42 = AGGraphGetAttributeGraph();
  v141 = AGGraphGetCounter();

  v142 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v142;
  *(a4 + 4) = v141;
  v143 = AGGraphGetCurrentAttribute();
  if (v143 == v44)
  {
    goto LABEL_186;
  }

  v144 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v144;
  *(a4 + 18) = v143;
  v87 = 0x800000018DD7EE10;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  *(a4 + 18) = lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 14) = 0xD000000000000033;
  *(a4 + 15) = 0x800000018DD7EE10;
  if (v38)
  {
    LOBYTE(v188) = v33;
    *&v191 = COERCE_DOUBLE(&dword_18D018000);
    v190 = v41;
    *&v202 = v89;
    *(&v202 + 1) = v43;
    LOBYTE(v203) = Counter;
    *&v197 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v197 + 1) = 37;
    LOBYTE(v198) = 2;
    v189 = *&a4;
    v145 = v177;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v184 + 8))(v145, v187);
    goto LABEL_173;
  }

  v147 = v89;
  if (v89 == 20)
  {
    v148 = 3;
  }

  else
  {
    v148 = 4;
  }

  v44 = bswap32(v89) | (4 * WORD1(v89));
  LODWORD(v89) = v33;
  v149 = v184 + 16;
  v178 = *(v184 + 16);
  v150 = (v178)(v186, v177, v187);
  v95 = 0;
  LOBYTE(v197) = 1;
  v182 = (16 * v148);
  v184 = v149;
  v183 = (v149 - 8);
  *&v181 = a4 + 32;
  v180 = v147;
  v179 = *&v148;
  do
  {
    v185 = &v168;
    MEMORY[0x1EEE9AC00](v150);
    a1 = &v168 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
    v152 = (a1 + 8);
    v153 = v148;
    v154 = (a1 + 8);
    do
    {
      *(v154 - 1) = 0;
      *v154 = 0;
      v154 += 16;
      --v153;
    }

    while (v153);
    v155 = *&v181 + 40 * v95;
    while (1)
    {
      v156 = *(a4 + 2);
      if (v95 == v156)
      {
        break;
      }

      if (v95 >= v156)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v166 = v90;
        swift_once();
        v90 = v166;
LABEL_127:
        v137 = v87[77];
        if (*(v137 + 16) >= 0x43uLL)
        {
          if (*(v137 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v202) = v89;
            BYTE4(v202) = v90 == v44;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v138 = one-time initialization token for animationState;
          v176 = v95;

          if (v138 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v167 = v90;
        swift_once();
        v90 = v167;
        goto LABEL_140;
      }

      ++v95;
      outlined init with copy of AnyTrackedValue(v155, &v202);
      v157 = *(&v203 + 1);
      v158 = __swift_project_boxed_opaque_existential_1(&v202, *(&v203 + 1));
      v159 = v157;
      v87 = v158;
      *(v152 - 1) = CVarArg.kdebugValue(_:)(v44 | v33, v159);
      *v152 = v160 & 1;
      v152 += 16;
      v90 = __swift_destroy_boxed_opaque_existential_1(&v202);
      v155 += 40;
      if (!--v148)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v197) = 0;
LABEL_158:
    v161 = v180;
    if (v180 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a1 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v161 != 20 && *(a1 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v162 = *v183;
    v163 = v186;
    v87 = v187;
    (*v183)(v186, v187);
    v164 = __swift_project_value_buffer(v87, static OSSignpostID.continuation);
    v150 = (v178)(v163, v164, v87);
    v148 = *&v179;
  }

  while ((v197 & 1) != 0);

  v165 = v187;
  v162(v186, v187);
  v162(v177, v165);
LABEL_173:

  a1 = v173;
  a4 = v174;
LABEL_174:
  specialized AnimatorState.removeListeners()();

  *(a4 + 5) = 0;
LABEL_175:
  *a1 = v192;
  *(a1 + 16) = 1;
  return result;
}

{
  LODWORD(v5) = a3;
  v284 = *MEMORY[0x1E69E9840];
  v226 = type metadata accessor for OSSignpostID();
  v223 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v9 = &v203 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v203 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v224 = &v203 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v203 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v225 = &v203 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v216 = &v203 - v21;
  if (*(a4 + 9))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  v25 = &v254;
  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    *(a1 + 57) = 1;
  }

  else if (*(a1 + 57) != 1)
  {
    goto LABEL_124;
  }

  *&v227.f64[0] = a2;
  LODWORD(v221) = v5;
  v220 = *&v9;
  v27 = *(a1 + 8);
  v28 = *(a1 + 12);
  v29 = *(a1 + 16);
  v30 = *(a1 + 40);
  v31 = *(a1 + 48);
  v278.f64[0] = *a1;
  LOBYTE(v278.f64[1]) = v27;
  HIDWORD(v278.f64[1]) = v28;
  LOBYTE(v279) = v29;
  v32 = v30 * 128.0;
  v33 = v31 * 128.0;
  v222 = vmulq_f64(*(a1 + 24), vdupq_n_s64(0x4060000000000000uLL));
  ResolvedGradient.animatableData.getter(&v275);
  v5 = *&v275;
  v34 = LOBYTE(v276.f64[0]);
  v228 = LOBYTE(v276.f64[0]);
  v35 = *(a4 + 4);
  if (v35 != 0.0)
  {
    v205 = v17;
    v213 = v12;
    v36 = *(a4 + 49);
    v37 = a4[48];
    v38 = *(a4 + 5);
    v39 = *(a4 + 53);
    v40 = *(a4 + 7);
    v41 = *(a4 + 8);
    v217 = *(a4 + 1);
    v254 = v217;
    v255 = v35;
    v256 = v38;
    v257 = v37;
    v258 = v36;
    v259 = v39;
    v260 = a4[55];
    v261 = v40;
    v262 = v41;
    v248 = v222;
    v249 = v275;
    v218 = v40;
    v219 = BYTE8(v275) | (HIDWORD(v275) << 32);
    v250 = v219;
    v251 = LOBYTE(v276.f64[0]);
    v252 = v32;
    v253 = v33;
    if (_s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZACyACy12CoreGraphics7CGFloatVAHGAA22ResolvedGradientVectorVG_AITt1B5Tm(&v248, &v254))
    {
LABEL_11:
      v42 = v219;
      goto LABEL_123;
    }

    v206 = v5;
    v207 = v35;
    v215 = a1;

    *&v212 = COERCE_DOUBLE(AGGraphClearUpdate());
    v43 = *(a4 + 3);
    v280 = *(a4 + 2);
    v281 = v43;
    v282 = *(a4 + 4);
    v283 = *(a4 + 20);
    v44 = *a4;
    v45 = *(a4 + 1);
    v214 = a4;
    v278 = v44;
    v279 = v45;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v278, &v275, &lazy cache variable for type metadata for AnimatableAttributeHelper<AngularGradient._Paint>, lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint, &type metadata for AngularGradient._Paint, type metadata accessor for AnimatableAttributeHelper);
    v46 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v278, &lazy cache variable for type metadata for AnimatableAttributeHelper<AngularGradient._Paint>, lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint, &type metadata for AngularGradient._Paint, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v47 = Transaction.effectiveAnimation.getter(v46);
    if (v47)
    {
      v208 = v47;
      v48 = v215;
      v49 = v206;
    }

    else
    {
      if (!*&v227.f64[0])
      {

        a4 = v214;
        a1 = v215;
        v25 = &v254;
        v5 = v206;
        goto LABEL_11;
      }

      v48 = v215;
      v49 = v206;
    }

    *&v241.f64[0] = v49;
    *&v241.f64[1] = v219;
    LOBYTE(v242.f64[0]) = v34;
    v242.f64[1] = v32;
    v243 = v33;
    v238 = v242;
    v50 = *(&v282 + 1);
    v240 = v222;
    v239 = v33;
    v236 = vsubq_f64(v222, v217);
    v237 = v241;
    v233.f64[0] = v207;
    LOBYTE(v233.f64[1]) = v38;
    HIDWORD(v233.f64[1]) = HIDWORD(v38);
    LOBYTE(v234.f64[0]) = v37 & 1;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v240, &v275, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    ResolvedGradientVector.add(_:scaledBy:)(&v233, -1.0);
    v238.f64[1] = v32 - v218;
    v239 = v33 - v41;
    v24 = *AGGraphGetValue();
    v203 = v46;
    if (v50)
    {
      v244 = v236;
      v245 = v237;
      v246 = v238;
      v247 = v239;

      LOBYTE(v275) = 0;
      v51 = v208;
      v204 = v50;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v208, &v244, v46, v24);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v46) = CurrentAttribute;
      LODWORD(v53) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v5) = 0;
      }

      else
      {
        LODWORD(v5) = CurrentAttribute;
      }

      v54 = *(v48 + 16);
      v233 = *v48;
      v234 = v54;
      v235[0] = *(v48 + 32);
      v55 = v235[0];
      *(v235 + 9) = *(v48 + 41);
      v275 = v233;
      v276 = v54;
      v277[0] = v55;
      *(v277 + 9) = *(v235 + 9);
      outlined init with copy of AngularGradient._Paint(&v233, &v269);
      v56 = outlined destroy of LinearGradient._Paint(&v275);
      (*(*v51 + 96))(&v263, v56);
      v57 = v263;
      v58 = v264;
      v59 = v265;
      v60 = v266;
      v61 = v267;
      LODWORD(v51) = v268;
      v231 = NAN;
      *&v232 = NAN;
      v229 = NAN;
      v230 = 1.0;
      v269 = v263;
      v270 = v264;
      v271 = *&v265;
      v272 = *&v266;
      v273 = *&v267;
      LOBYTE(v274) = v268;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v269, &v232, &v231, &v230, &v229);
      v62 = v231;
      v63 = *&v232;
      v64 = v229;
      v65 = v230;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_190;
      }

      goto LABEL_22;
    }

    v244 = v236;
    v245 = v237;
    v246 = v238;
    v247 = v239;
    *&v233.f64[0] = &type metadata for AngularGradient._Paint;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v244, &v275, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    type metadata accessor for AngularGradient._Paint.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    v85 = swift_dynamicCast();
    if (v85)
    {
      v86 = v275;
    }

    else
    {
      v86 = 0;
    }

    if (v85)
    {
      v87 = *(&v275 + 1);
    }

    else
    {
      v87 = 0;
    }

    v88 = v208;

    v204 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVyAVy12CoreGraphics7CGFloatVAYGAA22ResolvedGradientVectorVGAVyS2dGG_Tt4B5(v89, &v244, v46, v86, v87, v24);
    *&v90 = COERCE_DOUBLE(AGGraphGetCurrentAttribute());
    a1 = v90;
    v91 = *MEMORY[0x1E698D3F8];
    if (v90 == *MEMORY[0x1E698D3F8])
    {
      v92 = 0;
    }

    else
    {
      v92 = v90;
    }

    v93 = *(v48 + 16);
    v233 = *v48;
    v234 = v93;
    v235[0] = *(v48 + 32);
    v94 = v235[0];
    *(v235 + 9) = *(v48 + 41);
    v275 = v233;
    v276 = v93;
    v277[0] = v94;
    *(v277 + 9) = *(v235 + 9);
    outlined init with copy of AngularGradient._Paint(&v233, &v269);
    v95 = outlined destroy of LinearGradient._Paint(&v275);
    (*(*v88 + 96))(&v263, v95);
    v96 = v263;
    v97 = v264;
    a4 = v265;
    v25 = v266;
    v98 = v267;
    v231 = NAN;
    *&v232 = NAN;
    v229 = NAN;
    v230 = 1.0;
    v269 = v263;
    v270 = v264;
    v271 = *&v265;
    v272 = *&v266;
    v273 = *&v267;
    LODWORD(v227.f64[0]) = v268;
    LOBYTE(v274) = v268;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v269, &v232, &v231, &v230, &v229);
    v99 = v231;
    v100 = v232;
    v101 = v229;
    v102 = v230;
    if (one-time initialization token for enabledCategories != -1)
    {
      v224 = v232;
      v217.f64[0] = v231;
      v218 = v230;
      *&v212 = v229;
      swift_once();
      v101 = *&v212;
      v102 = v218;
      v99 = v217.f64[0];
      v100 = v224;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_194;
    }

    v103 = *(static CustomEventTrace.enabledCategories + 98);
    LODWORD(v224) = v91;
    if (v103 == 1)
    {
      v104 = v92;
      v105 = v25;
      v106 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v107 = a1 == v91;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v108 = *(v106 + 16);
        LODWORD(v269) = v104;
        BYTE4(v269) = v107;
        v270 = &type metadata for AngularGradient._Paint;
        v271 = *&v100;
        v272 = v99;
        v273 = v102;
        v274 = v101;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v218 = v109;

        v110 = v108;
        v111 = v98;
        v112 = v110;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v96, v97, a4, v105, v111, LOBYTE(v227.f64[0]));

        goto LABEL_84;
      }

      v113 = v96;
      v114 = v97;
      v115 = a4;
      v116 = v105;
    }

    else
    {
      v113 = v96;
      v114 = v97;
      v115 = a4;
      v116 = v25;
    }

    outlined consume of Animation.Function(v113, v114, v115, v116, v98, LOBYTE(v227.f64[0]));
LABEL_84:
    v208 = v88;
    v135 = one-time initialization token for animationState;

    a4 = v214;
    a1 = v215;
    v25 = &v254;
    if (v135 == -1)
    {
LABEL_85:
      v73 = *(&static Signpost.animationState + 1);
      v61 = static Signpost.animationState;
      v74 = word_1ED5283E8;
      LOBYTE(v5) = HIBYTE(word_1ED5283E8);
      v136 = byte_1ED5283EA;
      v137 = static os_signpost_type_t.begin.getter();
      v269 = v61;
      v270 = v73;
      LOBYTE(v271) = v74;
      BYTE1(v271) = v5;
      BYTE2(v271) = v136;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v150 = v204;

        *(a4 + 9) = v150;
        goto LABEL_122;
      }

      LODWORD(v227.f64[0]) = v137;
      v138 = one-time initialization token for _signpostLog;

      if (v138 != -1)
      {
        goto LABEL_197;
      }

      goto LABEL_87;
    }

LABEL_194:
    swift_once();
    goto LABEL_85;
  }

  v42 = BYTE8(v275) | (HIDWORD(v275) << 32);
LABEL_123:
  while (1)
  {

    *(a4 + 1) = v222;
    *(a4 + 4) = *&v5;
    *(a4 + 5) = v42;
    *(a4 + 6) = v34;
    *(a4 + 7) = v32;
    *(a4 + 8) = v33;
    LODWORD(v5) = v221;
LABEL_124:
    v117 = *(a4 + 9);
    if (*&v117 == 0.0)
    {
      return result;
    }

    v167 = *(a1 + 8);
    v168 = *(a1 + 12);
    v169 = *(a1 + 16);
    v32 = *(a1 + 40);
    v33 = *(a1 + 48);
    v170 = *(a1 + 24) * 128.0;
    v171 = *(a1 + 32) * 128.0;
    v278.f64[0] = *a1;
    LOBYTE(v278.f64[1]) = v167;
    HIDWORD(v278.f64[1]) = v168;
    LOBYTE(v279) = v169;

    ResolvedGradient.animatableData.getter(&v275);
    v278.f64[0] = v170;
    v278.f64[1] = v171;
    *&v279 = v275;
    BYTE8(v279) = BYTE8(v275);
    HIDWORD(v279) = HIDWORD(v275);
    LOBYTE(v280) = LOBYTE(v276.f64[0]);
    LOBYTE(v275) = 0;
    *(&v280 + 1) = v32 * 128.0;
    *&v281 = v33 * 128.0;
    v172 = specialized AnimatorState.update(_:at:environment:)(&v278, v5, v24);
    v122 = AGGraphGetCurrentAttribute();
    v61 = *MEMORY[0x1E698D3F8];
    if (v122 == v61)
    {
      LODWORD(v118) = 0;
    }

    else
    {
      LODWORD(v118) = v122;
    }

    v121 = &type metadata instantiation cache for TupleTypeDescription;
    if (v172)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_183;
      }

      goto LABEL_130;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_185;
    }

LABEL_143:
    v182 = *(v121 + 616);
    if (*(v182 + 16) >= 0x43uLL)
    {
      if (*(v182 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v275) = v118;
        BYTE4(v275) = v122 == v61;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_178;
    }

    __break(1u);
LABEL_187:
    swift_once();
LABEL_135:
    v53 = *(&static Signpost.animationState + 1);
    v51 = static Signpost.animationState;
    v57 = word_1ED5283E8;
    v60 = HIBYTE(word_1ED5283E8);
    v175 = byte_1ED5283EA;
    v176 = static os_signpost_type_t.end.getter();
    v275 = __PAIR128__(v53, v51);
    LOBYTE(v276.f64[0]) = v57;
    BYTE1(v276.f64[0]) = v60;
    BYTE2(v276.f64[0]) = v175;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_177;
    }

    LODWORD(v227.f64[0]) = v176;
    v177 = one-time initialization token for _signpostLog;
    LODWORD(v46) = v213;

    if (v177 != -1)
    {
      swift_once();
    }

    v58 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v59 = COERCE_DOUBLE(swift_allocObject());
    *(v59 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v61)
    {
      break;
    }

    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    v227.f64[0] = v63;
    v218 = v62;
    v220 = v65;
    v217.f64[0] = v64;
    swift_once();
    v64 = v217.f64[0];
    v65 = v220;
    v62 = v218;
    v63 = v227.f64[0];
LABEL_22:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_192:
      swift_once();
      goto LABEL_28;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v66 = v5, (v5 = static CustomEventTrace.recorder) != 0))
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      LODWORD(v227.f64[0]) = v51;
      v67 = *(v5 + 16);
      LODWORD(v269) = v66;
      BYTE4(v269) = v46 == v53;
      v270 = &type metadata for AngularGradient._Paint;
      v271 = v63;
      v272 = v62;
      v273 = v65;
      v274 = v64;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
      v220 = *&v68;

      v69 = v67;
      v70 = v60;
      v71 = v69;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v57, v58, v59, v70, v61, LOBYTE(v227.f64[0]));
    }

    else
    {
      outlined consume of Animation.Function(v57, v58, v59, v60, v61, v51);
    }

    LODWORD(v46) = v53;
    v72 = one-time initialization token for animationState;

    if (v72 != -1)
    {
      goto LABEL_192;
    }

LABEL_28:
    v73 = *(&static Signpost.animationState + 1);
    v61 = static Signpost.animationState;
    v74 = word_1ED5283E8;
    v75 = HIBYTE(word_1ED5283E8);
    v76 = byte_1ED5283EA;
    v77 = static os_signpost_type_t.event.getter();
    v269 = v61;
    v270 = v73;
    LOBYTE(v271) = v74;
    BYTE1(v271) = v75;
    BYTE2(v271) = v76;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_81:
      a4 = v214;
      a1 = v215;
      goto LABEL_121;
    }

    LODWORD(v227.f64[0]) = v77;
    v78 = one-time initialization token for _signpostLog;

    if (v78 != -1)
    {
      swift_once();
    }

    v220 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v46)
    {
      __break(1u);
    }

    else
    {
      v79 = v46;
      v80 = AGGraphGetAttributeGraph();
      *&v5 = COERCE_DOUBLE(AGGraphGetCounter());

      v81 = MEMORY[0x1E69E6870];
      *(a1 + 56) = MEMORY[0x1E69E6810];
      *(a1 + 64) = v81;
      *(a1 + 32) = *&v5;
      v82 = AGGraphGetCurrentAttribute();
      if (v82 != v79)
      {
        v83 = MEMORY[0x1E69E76D0];
        *(a1 + 96) = MEMORY[0x1E69E7668];
        *(a1 + 104) = v83;
        *(a1 + 72) = v82;
        *(a1 + 136) = MEMORY[0x1E69E6158];
        *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(a1 + 112) = 0x746E6961505FLL;
        *(a1 + 120) = 0xE600000000000000;
        if (v75)
        {
          LOBYTE(v229) = LOBYTE(v227.f64[0]);
          v231 = v220;
          *&v232 = COERCE_DOUBLE(&dword_18D018000);
          v269 = v61;
          v270 = v73;
          LOBYTE(v271) = v74;
          v263 = "Animation: (%p) [%d] %{public}@ updated";
          v264 = 39;
          LOBYTE(v265) = 2;
          v230 = *&a1;
          v84 = v205;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

          (*(v223 + 8))(v84, v226);
        }

        else
        {
          if (v61 == 20)
          {
            v117 = 3;
          }

          else
          {
            v117 = 4;
          }

          LODWORD(v118) = bswap32(v61) | (4 * WORD1(v61));
          LODWORD(v227.f64[0]) = LOBYTE(v227.f64[0]);
          v119 = v223 + 16;
          v209 = *(v223 + 16);
          v120 = v209(v224, v205, v226);
          v121 = 0;
          LOBYTE(v263) = 1;
          *&v217.f64[0] = 16 * v117;
          v210 = v119;
          v211 = v117;
          *&v218 = v119 - 8;
          v212 = v61;
          v213 = (a1 + 32);
          do
          {
            v220 = COERCE_DOUBLE(&v203);
            MEMORY[0x1EEE9AC00](v120);
            v5 = &v203 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
            a4 = (v5 + 8);
            v124 = v117;
            v125 = (v5 + 8);
            do
            {
              *(v125 - 1) = 0;
              *v125 = 0;
              v125 += 16;
              --v124;
            }

            while (v124);
            v25 = &v213[40 * v121];
            while (1)
            {
              v126 = *(a1 + 16);
              if (v121 == v126)
              {
                break;
              }

              if (v121 >= v126)
              {
                goto LABEL_181;
              }

              ++v121;
              outlined init with copy of AnyTrackedValue(v25, &v269);
              v127 = *&v272;
              v61 = a1;
              __swift_project_boxed_opaque_existential_1(&v269, *&v272);
              *(a4 - 1) = CVarArg.kdebugValue(_:)(v118 | LODWORD(v227.f64[0]), v127);
              *a4 = v128 & 1;
              a4 += 16;
              v122 = __swift_destroy_boxed_opaque_existential_1(&v269);
              v25 = (v25 + 40);
              --v117;
              if (*&v117 == 0.0)
              {
                goto LABEL_65;
              }
            }

            LOBYTE(v263) = 0;
LABEL_65:
            v129 = v212;
            if (v212 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (*(v5 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v5 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v5 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v129 != 20 && *(v5 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v130 = **&v218;
            v131 = v224;
            v132 = v226;
            (**&v218)(v224, v226);
            v133 = __swift_project_value_buffer(v132, static OSSignpostID.continuation);
            v120 = v209(v131, v133, v132);
            v117 = v211;
          }

          while ((v263 & 1) != 0);

          v134 = v226;
          v130(v224, v226);
          v130(v205, v134);
        }

        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_87:
    v139 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v140 = COERCE_DOUBLE(swift_allocObject());
    *(v140 + 16) = xmmword_18DDAF080;
    v141 = AGGraphGetCurrentAttribute();
    v142 = v224;
    if (v141 == v224)
    {
      __break(1u);
LABEL_199:
      __break(1u);
    }

    v143 = AGGraphGetAttributeGraph();
    Counter = AGGraphGetCounter();

    v145 = MEMORY[0x1E69E6870];
    *(v140 + 56) = MEMORY[0x1E69E6810];
    *(v140 + 64) = v145;
    *(v140 + 32) = Counter;
    v146 = AGGraphGetCurrentAttribute();
    if (v146 == v142)
    {
      goto LABEL_199;
    }

    v25 = v140;
    v147 = MEMORY[0x1E69E76D0];
    *(v140 + 96) = MEMORY[0x1E69E7668];
    *(v140 + 104) = v147;
    *(v140 + 72) = v146;
    *(v140 + 136) = MEMORY[0x1E69E6158];
    *(v140 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v140 + 112) = 0x746E6961505FLL;
    *(v140 + 120) = 0xE600000000000000;
    if (v5)
    {
      LOBYTE(v229) = LOBYTE(v227.f64[0]);
      v231 = v139;
      *&v232 = COERCE_DOUBLE(&dword_18D018000);
      v269 = v61;
      v270 = v73;
      LOBYTE(v271) = v74;
      v263 = "Animation: (%p) [%d] %{public}@ started";
      v264 = 39;
      LOBYTE(v265) = 2;
      v230 = *&v140;
      v148 = v213;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v149 = v204;

      (*(v223 + 8))(v148, v226);
    }

    else
    {
      v151 = v61;
      if (v61 == 20)
      {
        v152 = 3;
      }

      else
      {
        v152 = 4;
      }

      LODWORD(v118) = bswap32(v61) | (4 * WORD1(v61));
      v61 = LOBYTE(v227.f64[0]);
      v153 = (v223 + 16);
      v205 = *(v223 + 16);
      v154 = v205(*&v220, v213, v226);
      v121 = 0;
      LOBYTE(v263) = 1;
      v224 = v152;
      v209 = v153;
      v210 = v151;
      *&v217.f64[0] = v153 - 8;
      *&v227.f64[0] = v25;
      v211 = v25 + 2;
      v212 = 16 * v152;
      do
      {
        v218 = COERCE_DOUBLE(&v203);
        MEMORY[0x1EEE9AC00](v154);
        a4 = &v203 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
        v5 = (a4 + 8);
        v156 = v224;
        v157 = a4 + 8;
        do
        {
          *(v157 - 1) = 0;
          *v157 = 0;
          v157 += 16;
          --v156;
        }

        while (v156);
        v117 = v211 + 40 * v121;
        a1 = v224;
        while (1)
        {
          v158 = *(*&v227.f64[0] + 16);
          if (v121 == v158)
          {
            break;
          }

          if (v121 >= v158)
          {
            goto LABEL_182;
          }

          ++v121;
          outlined init with copy of AnyTrackedValue(v117, &v269);
          v159 = *&v272;
          v25 = *&v273;
          __swift_project_boxed_opaque_existential_1(&v269, *&v272);
          *(v5 - 8) = CVarArg.kdebugValue(_:)(v118 | v61, v159);
          *v5 = v160 & 1;
          v5 += 16;
          v122 = __swift_destroy_boxed_opaque_existential_1(&v269);
          v117 += 40;
          --a1;
          if (*&a1 == 0.0)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v263) = 0;
LABEL_104:
        v161 = v210;
        if (v210 == 20)
        {
          v25 = *&v220;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v25 = *&v220;
        }

        if (a4[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[24] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v161 != 20 && a4[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v162 = **&v217.f64[0];
        v163 = v226;
        (**&v217.f64[0])(v25, v226);
        v164 = __swift_project_value_buffer(v163, static OSSignpostID.continuation);
        v154 = v205(v25, v164, v163);
      }

      while ((v263 & 1) != 0);
      v149 = v204;

      v165 = v226;
      v162(v25, v226);
      v162(v213, v165);
    }

    a4 = v214;
    a1 = v215;
    *(v214 + 9) = v149;
LABEL_121:
    v25 = &v254;
LABEL_122:
    v5 = v206;
    v42 = v219;
    specialized AnimatorState.addListeners(transaction:)(v203);

    v166 = v237;
    v25[11] = v236;
    v25[12] = v166;
    v25[13] = v238;
    *&v277[1] = v239;
    outlined destroy of Slice<IndexSet>(&v275, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);

    v34 = v228;
  }

  v46 = AGGraphGetAttributeGraph();
  *&v5 = COERCE_DOUBLE(AGGraphGetCounter());

  v178 = MEMORY[0x1E69E6870];
  *(v59 + 56) = MEMORY[0x1E69E6810];
  *(v59 + 64) = v178;
  *(v59 + 32) = *&v5;
  v179 = AGGraphGetCurrentAttribute();
  if (v179 == v61)
  {
    goto LABEL_189;
  }

  v5 = v59;
  v180 = MEMORY[0x1E69E76D0];
  *(v59 + 96) = MEMORY[0x1E69E7668];
  *(v59 + 104) = v180;
  *(v59 + 72) = v179;
  *(v59 + 136) = MEMORY[0x1E69E6158];
  *(v59 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v59 + 112) = 0x746E6961505FLL;
  *(v59 + 120) = 0xE600000000000000;
  if (v60)
  {
    LOBYTE(v263) = LOBYTE(v227.f64[0]);
    v269 = &dword_18D018000;
    *&v240.f64[0] = v58;
    *&v275 = v51;
    *(&v275 + 1) = v53;
    LOBYTE(v276.f64[0]) = v57;
    *&v233.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v233.f64[1] = 37;
    LOBYTE(v234.f64[0]) = 2;
    *&v236.f64[0] = v59;
    v181 = v216;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v223 + 8))(v181, v226);
    goto LABEL_176;
  }

  v117 = v51;
  if (v51 == 20)
  {
    a1 = 3;
  }

  else
  {
    a1 = 4;
  }

  v61 = bswap32(v51) | (4 * WORD1(v51));
  LODWORD(v227.f64[0]) = LOBYTE(v227.f64[0]);
  v183 = v223 + 16;
  v217.f64[0] = *(v223 + 16);
  v184 = (*&v217.f64[0])(v225, v216, v226);
  v121 = 0;
  LOBYTE(v233.f64[0]) = 1;
  v223 = v183;
  v221 = 16 * a1;
  *&v222.f64[0] = v183 - 8;
  v219 = a1;
  *&v220 = v5 + 32;
  v218 = *&v117;
  do
  {
    *&v224 = COERCE_DOUBLE(&v203);
    MEMORY[0x1EEE9AC00](v184);
    a4 = &v203 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0);
    v118 = a4 + 8;
    v186 = a1;
    v187 = a4 + 8;
    do
    {
      *(v187 - 1) = 0;
      *v187 = 0;
      v187 += 16;
      --v186;
    }

    while (v186);
    v25 = (*&v220 + 40 * v121);
    while (1)
    {
      v188 = *(v5 + 16);
      if (v121 == v188)
      {
        break;
      }

      if (v121 >= v188)
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        v201 = v122;
        swift_once();
        v122 = v201;
LABEL_130:
        v173 = *(v121 + 616);
        if (*(v173 + 16) >= 0x43uLL)
        {
          if (*(v173 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v275) = v118;
            BYTE4(v275) = v122 == v61;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v214 = a4;
          v215 = a1;
          v174 = one-time initialization token for animationState;
          v213 = v117;

          if (v174 != -1)
          {
            goto LABEL_187;
          }

          goto LABEL_135;
        }

        __break(1u);
LABEL_185:
        v202 = v122;
        swift_once();
        v122 = v202;
        goto LABEL_143;
      }

      ++v121;
      outlined init with copy of AnyTrackedValue(v25, &v275);
      v189 = *&v276.f64[1];
      v117 = v5;
      __swift_project_boxed_opaque_existential_1(&v275, *&v276.f64[1]);
      *(v118 - 1) = CVarArg.kdebugValue(_:)(v61 | LODWORD(v227.f64[0]), v189);
      *v118 = v190 & 1;
      v118 += 16;
      v122 = __swift_destroy_boxed_opaque_existential_1(&v275);
      v25 = (v25 + 40);
      --a1;
      if (*&a1 == 0.0)
      {
        goto LABEL_161;
      }
    }

    LOBYTE(v233.f64[0]) = 0;
LABEL_161:
    *&v117 = v218;
    if (*&v218 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    a1 = v219;
    if (a4[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v117 != 20 && a4[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v191 = **&v222.f64[0];
    v193 = v225;
    v192 = v226;
    (**&v222.f64[0])(v225, v226);
    v194 = __swift_project_value_buffer(v192, static OSSignpostID.continuation);
    v184 = (*&v217.f64[0])(v193, v194, v192);
  }

  while ((LOBYTE(v233.f64[0]) & 1) != 0);

  v195 = v226;
  v191(v225, v226);
  v191(v216, v195);
LABEL_176:

LABEL_177:
  specialized AnimatorState.removeListeners()();

  a1 = v215;
  *(v214 + 9) = 0;
  v25 = &v254;
LABEL_178:
  v196 = v25[19];
  v234 = v25[18];
  v235[0] = v196;
  v233 = v25[17];
  *&v235[1] = v281;
  v197 = *&v234.f64[0];
  v198 = LOBYTE(v234.f64[1]);
  v199 = HIDWORD(v234.f64[1]);
  v227 = vdupq_n_s64(0x3F80000000000000uLL);
  *(a1 + 24) = vmulq_f64(v233, v227);
  v269 = v197;
  LOBYTE(v270) = v198;
  HIDWORD(v270) = v199;
  LOBYTE(v271) = LOBYTE(v196.f64[0]);
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v233, &v275, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  ResolvedGradient.animatableData.setter(&v269);

  *(a1 + 40) = vmulq_f64(*(v235 + 8), v227);
  v200 = v25[18];
  v25[11] = v25[17];
  v25[12] = v200;
  v25[13] = v25[19];
  *&v277[1] = v281;
  result = outlined destroy of Slice<IndexSet>(&v275, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  *(a1 + 57) = 1;
  return result;
}