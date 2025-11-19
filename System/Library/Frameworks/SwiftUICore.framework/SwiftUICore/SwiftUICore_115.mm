void GraphicsContext.draw(_:at:anchor:)(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = *a1;
  if (one-time initialization token for _textDrawingContext != -1)
  {
    swift_once();
  }

  v13 = (*(*v12 + 272))(static GraphicsContext.Storage.Shared._textDrawingContext, INFINITY, INFINITY);
  v15 = v12;
  v18 = *(a1 + 5);
  v19 = *(a1 + 7);
  v20 = *(a1 + 9);
  v21 = *(a1 + 88);
  v16 = *(a1 + 1);
  v17 = *(a1 + 3);
  GraphicsContext.draw(_:in:)(&v15, a2, a3 - v13 * a5, a4 - v14 * a6, v13, v14);
}

uint64_t GraphicsContext.draw(_:in:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9)
{
  GraphicsContext.resolve(_:)(a1, a2, a3 & 1, a4, a5, v15);
  GraphicsContext.draw(_:in:)(v15, a5, a6, a7, a8, a9);
  v17[2] = v15[2];
  v17[3] = v15[3];
  v18[0] = v16[0];
  *(v18 + 9) = *(v16 + 9);
  v17[0] = v15[0];
  v17[1] = v15[1];
  return outlined destroy of GraphicsContext.ResolvedText(v17);
}

uint64_t GraphicsContext.draw(_:at:anchor:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9)
{
  GraphicsContext.resolve(_:)(a1, a2, a3 & 1, a4, a5, v20);
  v14 = *&v20[0];
  if (one-time initialization token for _textDrawingContext != -1)
  {
    swift_once();
  }

  v15 = (*(*v14 + 272))(static GraphicsContext.Storage.Shared._textDrawingContext, INFINITY, INFINITY);
  v18[2] = v20[2];
  v18[3] = v20[3];
  v19[0] = v21[0];
  *(v19 + 9) = *(v21 + 9);
  v18[0] = v20[0];
  v18[1] = v20[1];
  GraphicsContext.draw(_:in:)(v18, a5, a6 - v15 * a8, a7 - v16 * a9, v15, v16);
  return outlined destroy of GraphicsContext.ResolvedText(v20);
}

uint64_t GraphicsContext.ResolvedSymbol.list.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t GraphicsContext.ResolvedSymbol.init(list:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

uint64_t GraphicsContext.draw(_:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a2 == 0.0 && a3 == 0.0 && (a4 / *(a1 + 8) == 1.0 ? (v5 = a5 / *(a1 + 16) == 1.0) : (v5 = 0), v5))
  {

    return RBDrawingStateDrawDisplayList2();
  }

  else
  {
    RBDrawingStateInit();
    RBDrawingStateTranslateCTM();
    RBDrawingStateScaleCTM();
    RBDrawingStateDrawDisplayList2();

    return RBDrawingStateDestroy();
  }
}

uint64_t GraphicsContext.draw(_:at:anchor:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 / v5 == 1.0 && a2 - v5 * a4 == 0.0 && (a3 - v6 * a5 == 0.0 ? (v7 = v6 / v6 == 1.0) : (v7 = 0), v7))
  {

    return RBDrawingStateDrawDisplayList2();
  }

  else
  {
    RBDrawingStateInit();
    RBDrawingStateTranslateCTM();
    RBDrawingStateScaleCTM();
    RBDrawingStateDrawDisplayList2();

    return RBDrawingStateDestroy();
  }
}

void GraphicsContext.withCGContext(content:)(void (*a1)(CGContext *), uint64_t a2, uint64_t a3)
{
  v5 = RBDrawingStateBeginCGContext();
  v6 = v5;
  v7 = *(a3 + 52);
  if (v7)
  {
    CGContextSetBlendMode(v5, v7);
  }

  a1(v6);
  RBDrawingStateEndCGContext();
}

void GraphicsContext.withPlatformContext(content:)(void (*a1)(id), uint64_t a2, uint64_t a3)
{
  v5 = RBDrawingStateBeginCGContext();
  v6 = v5;
  v7 = *(a3 + 52);
  if (v7)
  {
    CGContextSetBlendMode(v5, v7);
  }

  closure #1 in GraphicsContext.withPlatformContext(content:)(v6, a3, a1);
  RBDrawingStateEndCGContext();
}

void closure #1 in GraphicsContext.withPlatformContext(content:)(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  v6 = *(a2 + 56);
  v7 = (v6 & 0xFFFFFFFFFFFFFLL) == 0 || (~v6 & 0x7FF0000000000000) != 0;
  if (v7)
  {
    _CGContextSetShapeDistance(*(a2 + 56));
  }

  v8 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
  a3([v8 push]);
  if (v3)
  {
    [v8 pop];
  }

  else
  {
    [v8 pop];

    if (v7)
    {
      _CGContextSetShapeDistance(NAN);
    }
  }
}

uint64_t GraphicsContext.init(rbDisplayList:environment:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  swift_unknownObjectRetain();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  type metadata accessor for GraphicsContext.Storage();
  v5 = swift_allocObject();
  *(v5 + 32) = xmmword_18DD85500;
  *(v5 + 48) = 1065353216;
  *(v5 + 56) = 0x7FF8000000000000;
  v9[0] = v2;
  v9[1] = v3;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();
  v6 = v4;
  *(v5 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v6, v9);
  State = RBDisplayListGetState();
  swift_unknownObjectRelease();

  *(v5 + 24) = State;
  *(v5 + 64) = 0;
  return v5;
}

uint64_t GraphicsContext.rbDrawingState.getter()
{
  GraphicsContext.copyOnWrite()();
  GraphicsContext.copyOnWrite()();
  return *(*v0 + 24);
}

uint64_t GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(uint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8, float a9)
{
  v14 = *result;
  v15 = *(result + 8);
  v16 = *(result + 16);
  v17 = *(result + 24);
  v19 = *(result + 32);
  v18 = *(result + 40);
  v21 = *(result + 48);
  v20 = *(result + 56);
  v22 = *(result + 64);
  v23 = *(result + 72);
  if (v23 > 7)
  {
    if (v23 == 8)
    {
      if (*(v14 + 16))
      {
        v46 = *(v14 + 48);
        v47 = *(v14 + 80);
        v106 = *(v14 + 64);
        *v107 = v47;
        *&v107[9] = *(v14 + 89);
        v48 = *(v14 + 48);
        v104 = *(v14 + 32);
        v105 = v46;
        v49 = *(v14 + 80);
        v101 = *(v14 + 64);
        *v102 = v49;
        *&v102[9] = *(v14 + 89);
        v99 = *(v14 + 32);
        v100 = v48;
        outlined init with copy of GraphicsContext.Shading(&v104, &v114);
        GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(&v99, a2, a3, a4, a5, a6, a7, a8, a9);
        v116 = v101;
        *v117 = *v102;
        *&v117[9] = *&v102[9];
        v114 = v99;
        v115 = v100;
        return outlined destroy of GraphicsContext.Shading(&v114);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    if (v23 == 9)
    {
      v50 = *(v14 + 144);
      v120 = *(v14 + 128);
      v121 = v50;
      v122 = *(v14 + 160);
      v123 = *(v14 + 176);
      v51 = *(v14 + 80);
      *v117 = *(v14 + 64);
      *&v117[16] = v51;
      v52 = *(v14 + 112);
      v118 = *(v14 + 96);
      v119 = v52;
      v53 = *(v14 + 32);
      v114 = *(v14 + 16);
      v115 = v53;
      v116 = *(v14 + 48);
      v54 = *(v14 + 144);
      v110 = *(v14 + 128);
      v111 = v54;
      v112 = *(v14 + 160);
      v113 = *(v14 + 176);
      v55 = *(v14 + 80);
      *v107 = *(v14 + 64);
      *&v107[16] = v55;
      v56 = *(v14 + 112);
      v108 = *(v14 + 96);
      v109 = v56;
      v57 = *(v14 + 32);
      v104 = *(v14 + 16);
      v105 = v57;
      v106 = *(v14 + 48);
      outlined init with copy of GraphicsContext.ResolvedShading(&v114, &v99);
      GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(&v104, a2, a3, a4, a5, a6, a7, a8, a9);
      return outlined destroy of GraphicsContext.ResolvedShading(&v114);
    }

    v97 = a3;
    if (v23 == 10 && !(v15 | v14 | v16 | v17 | v19 | v18 | v21 | v20 | v22))
    {
      v24 = a4[2];
      v25 = a4[4];
      v27 = v25;
      v28 = a4[5];
      if (v25 == 1)
      {
        v27 = *(v24 + 48);
        v28 = *(v24 + 56);
      }

      *&v114 = v27;
      *(&v114 + 1) = v28;
      outlined copy of EnvironmentValues?(v25);
      GraphicsContext.Storage.Shared.resolvedForeground(in:)(&v114, &v104);
      outlined consume of EnvironmentValues?(v114);
      GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(&v104, a2, v97, a4, a5, a6, a7, a8, a9);
      v121 = v111;
      v122 = v112;
      v123 = v113;
      *&v117[16] = *&v107[16];
      v118 = v108;
      v119 = v109;
      v120 = v110;
      v114 = v104;
      v115 = v105;
      v116 = v106;
      *v117 = *v107;
      return outlined destroy of GraphicsContext.ResolvedShading(&v114);
    }

    goto LABEL_15;
  }

  if (*(result + 72))
  {
    v98 = a3;
    if (v23 != 4)
    {
LABEL_15:
      v37 = a4[2];
      v38 = *(result + 16);
      [*(v37 + 32) setInfinite];
      *&v114 = v14;
      *(&v114 + 1) = v94;
      *&v115 = v38;
      *(&v115 + 1) = v17;
      *&v116 = v19;
      *(&v116 + 1) = v18;
      v39 = v37;
      *v117 = v21;
      *&v117[8] = v93;
      *&v117[16] = v22;
      v40 = a4[4];
      v41 = v40;
      v42 = a4[5];
      v117[24] = v23;
      if (v40 == 1)
      {
        v41 = *(v39 + 48);
        v42 = *(v39 + 56);
      }

      *&v104 = v41;
      *(&v104 + 1) = v42;
      outlined copy of EnvironmentValues?(v40);
      GraphicsContext.Storage.Shared.setShading(_:in:)(&v114, &v104);

      return RBDrawingStateDrawShape();
    }

    v29 = a4[4];
    v31 = v29;
    v32 = a4[5];
    if (v29 == 1)
    {
      v33 = a4[2];
      v31 = *(v33 + 48);
      v32 = *(v33 + 56);
    }

    v103[27] = 0;
    v99 = 0uLL;
    *&v100 = 1;
    BYTE8(v100) = 1;
    *&v101 = 0;
    BYTE8(v101) = 5;
    *v102 = v31;
    *&v102[8] = v32;
    *&v102[16] = 0u;
    memset(v103, 0, 24);
    v103[24] = 1;
    *&v103[25] = 256;
    v34 = *(*v14 + 80);
    outlined copy of EnvironmentValues?(v29);
    v34(&v99);
    if (BYTE8(v101) == 1)
    {
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
    }

    v128 = v35;
    LOBYTE(v104) = 0;
    _ShapeStyle_Pack.subscript.getter(&v104, 0, &v114);

    *v134 = a5;
    *&v134[1] = a6;
    *&v134[2] = a7;
    *&v134[3] = a8;
    v135 = 0;
    *&v107[16] = *&v117[16];
    v108 = v118;
    v109 = v119;
    *&v110 = v120;
    v104 = v114;
    v105 = v115;
    v106 = v116;
    *v107 = *v117;
    v66 = _ShapeStyle_Pack.Style.color.getter();
    if ((v68 & 0x100000000) != 0)
    {
      type metadata accessor for GraphicsContext.Storage();
      v77 = swift_allocObject();
      *(v77 + 32) = xmmword_18DD85500;
      *(v77 + 48) = 1065353216;
      *(v77 + 56) = 0x7FF8000000000000;
      v78 = a4[2];
      v79 = *(v78 + 64);
      if (v79 == RBDrawingStateGetDefaultColorSpace())
      {
        *(v77 + 16) = v78;
      }

      else
      {
        v80 = RBDrawingStateGetDisplayList();
        v81 = a4[4];
        v82 = v81;
        v83 = a4[5];
        if (v81 == 1)
        {
          v82 = *(v78 + 48);
          v83 = *(v78 + 56);
        }

        *&v104 = v82;
        *(&v104 + 1) = v83;
        type metadata accessor for GraphicsContext.Storage.Shared();
        swift_allocObject();
        outlined copy of EnvironmentValues?(v81);
        *(v77 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v80, &v104);
      }

      *(v77 + 24) = a2;
      *(v77 + 64) = 0;
      *(v77 + 48) = a9;
      *(v77 + 52) = v98;
      *&v107[16] = *&v117[16];
      v108 = v118;
      v109 = v119;
      *&v110 = v120;
      v104 = v114;
      v105 = v115;
      v106 = v116;
      *v107 = *v117;
      v85 = *MEMORY[0x1E695F040];
      v84 = *(MEMORY[0x1E695F040] + 8);
      v87 = *(MEMORY[0x1E695F040] + 16);
      v86 = *(MEMORY[0x1E695F040] + 24);
      v137.origin.x = *MEMORY[0x1E695F040];
      v137.origin.y = v84;
      v137.size.width = v87;
      v137.size.height = v86;
      if (CGRectIsNull(v137))
      {
        v88 = 0;
        v89 = 0;
        v90 = 0;
        v91 = 0;
        v92 = 6;
      }

      else
      {
        v92 = 0;
        v88 = v85;
        v89 = *&v84;
        v90 = *&v87;
        v91 = *&v86;
      }

      v129 = v88;
      v130 = v89;
      v131 = v90;
      v132 = v91;
      v133 = v92;
      *v124 = 256;
      memset(&v124[8], 0, 33);
      _ShapeStyle_Pack.Style.draw(_:style:in:bounds:)(&v129, v124, v77, v134);
      outlined consume of Path.Storage(v88, v89, v90, v91, v92);

      outlined destroy of _ShapeStyle_Pack.Style(&v114);
    }

    else
    {
      v129 = v66;
      v130 = v67;
      LODWORD(v131) = v68;
      v69 = a4[2];
      [*(v69 + 32) setInfinite];
      GraphicsContext.Storage.Shared.setColor(_:)(&v129, v70, v71, v72, v73);
      v74 = *(v69 + 40);
      v75 = *(v69 + 32);
      v76 = v74;
      RBDrawingStateDrawShape();
      outlined destroy of _ShapeStyle_Pack.Style(&v114);
    }

    v126 = *&v102[16];
    v127[0] = *v103;
    *(v127 + 12) = *&v103[12];
    *v124 = v99;
    *&v124[16] = v100;
    *&v124[32] = v101;
    v125 = *v102;
    return outlined destroy of _ShapeStyle_Shape(v124);
  }

  else
  {
    *&v114 = *result;
    *(&v114 + 1) = v15;
    LODWORD(v115) = v16;
    v61 = a4[2];
    [*(v61 + 32) setInfinite];
    RBDrawingStateInit();
    RBDrawingStateClipShape();
    RBDrawingStateBeginLayer();
    if ((v15 & 0x7FFFFFFF00000000) != 0)
    {
      [*(v61 + 32) setInfinite];
      GraphicsContext.Storage.Shared.setColor(_:)(&v114, v62, v63, v64, v65);
      RBDrawingStateDrawShape();
    }

    RBDrawingStateDrawLayer();

    return RBDrawingStateDestroy();
  }
}

void GraphicsContext.draw(_:in:sRGBColor:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, float a7, float a8, float a9, float a10)
{
  RBDrawingStateBeginLayer();
  v20 = *(a2 + 16);
  v21 = *(v20 + 264);
  if (v21)
  {
    v36 = v21;
    [v36 removeAll];
  }

  else
  {
    v30 = [objc_allocWithZone(MEMORY[0x1E69C70C0]) init];
    v31 = *(v20 + 264);
    *(v20 + 264) = v30;
    v36 = v30;
  }

  if (one-time initialization token for foregroundKeyColorAnyAlpha != -1)
  {
    swift_once();
  }

  LODWORD(v23) = HIDWORD(static RBColor.foregroundKeyColorAnyAlpha);
  LODWORD(v22) = static RBColor.foregroundKeyColorAnyAlpha;
  LODWORD(v24) = dword_1ED566B70;
  LODWORD(v25) = dword_1ED566B74;
  *&v26 = a7;
  *&v27 = a8;
  *&v28 = a9;
  *&v29 = a10;
  [v36 addColorReplacementFrom:1 to:v22 colorSpace:{v23, v24, v25, v26, v27, v28, v29}];
  RBDrawingStateAddTransformStyle();
  v32 = RBDrawingStateBeginCGContext();
  v33 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
  [v33 push];
  if (one-time initialization token for _textDrawingContext != -1)
  {
    swift_once();
  }

  v34 = static GraphicsContext.Storage.Shared._textDrawingContext;
  if (a1[27])
  {
    v35 = NSAttributedString.isDynamic.getter();
  }

  else
  {
    v35 = 0;
  }

  (*(*a1 + 296))(0, v35, v34, 0, a3, a4, a5, a6, a5, a6);
  [v33 pop];

  RBDrawingStateEndCGContext();
  RBDrawingStateDrawLayer();
}

uint64_t GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(__int128 *a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8, float a9)
{
  v18 = a1[9];
  v105[8] = a1[8];
  v105[9] = v18;
  v106 = *(a1 + 20);
  v19 = a1[5];
  v105[4] = a1[4];
  v105[5] = v19;
  v20 = a1[7];
  v105[6] = a1[6];
  v105[7] = v20;
  v21 = a1[1];
  v105[0] = *a1;
  v105[1] = v21;
  v22 = a1[3];
  v105[2] = a1[2];
  v105[3] = v22;
  v23 = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOg(v105);
  if (v23 == 8)
  {
    result = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v105);
    v40 = *result;
    if (*(*result + 16))
    {
      v41 = *(v40 + 160);
      v88 = *(v40 + 144);
      v89 = v41;
      v91 = *(v40 + 192);
      v42 = *(v40 + 160);
      v90 = *(v40 + 176);
      v43 = *(v40 + 96);
      v84 = *(v40 + 80);
      v85 = v43;
      v44 = *(v40 + 112);
      v87 = *(v40 + 128);
      v45 = *(v40 + 96);
      v86 = *(v40 + 112);
      v46 = *(v40 + 48);
      *v83 = *(v40 + 32);
      *&v83[16] = v46;
      *&v83[32] = *(v40 + 64);
      v47 = *(v40 + 176);
      v80 = v42;
      v81 = v47;
      v82 = *(v40 + 192);
      v76 = v45;
      v77 = v44;
      v48 = *(v40 + 144);
      v78 = *(v40 + 128);
      v79 = v48;
      v49 = *(v40 + 48);
      v72 = *(v40 + 32);
      v73 = v49;
      v50 = *(v40 + 80);
      v74 = *(v40 + 64);
      v75 = v50;
      outlined init with copy of GraphicsContext.ResolvedShading(v83, &v92);
      GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(&v72, a2, a3, a4, a5, a6, a7, a8, a9);
      v100 = v80;
      v101 = v81;
      v102 = v82;
      v96 = v76;
      v97 = v77;
      v98 = v78;
      v99 = v79;
      v92 = v72;
      v93 = v73;
      v94 = v74;
      v95 = v75;
      return outlined destroy of GraphicsContext.ResolvedShading(&v92);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  if (v23 != 4)
  {
    if (!v23)
    {
      v24 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v105);
      v25 = *(v24 + 16);
      v92 = *v24;
      LODWORD(v93) = v25;
      v26 = a4[2];
      [*(v26 + 32) setInfinite];
      RBDrawingStateInit();
      RBDrawingStateClipShape();
      RBDrawingStateBeginLayer();
      if (*(&v92 + 3) != 0.0)
      {
        [*(v26 + 32) setInfinite];
        GraphicsContext.Storage.Shared.setColor(_:)(&v92, v27, v28, v29, v30);
        RBDrawingStateDrawShape();
      }

      RBDrawingStateDrawLayer();
      return RBDrawingStateDestroy();
    }

    [*(a4[2] + 32) setInfinite];
    v51 = a1[9];
    v100 = a1[8];
    v101 = v51;
    v102 = *(a1 + 20);
    v52 = a1[5];
    v96 = a1[4];
    v97 = v52;
    v53 = a1[7];
    v98 = a1[6];
    v99 = v53;
    v54 = a1[1];
    v92 = *a1;
    v93 = v54;
    v55 = a1[3];
    v94 = a1[2];
    v95 = v55;
    GraphicsContext.Storage.Shared.setShading(_:)(&v92);
    return RBDrawingStateDrawShape();
  }

  v32 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v105);
  *&v72 = a5;
  *(&v72 + 1) = a6;
  *&v73 = a7;
  *(&v73 + 1) = a8;
  LOBYTE(v74) = 0;
  v96 = *(v32 + 64);
  v97 = *(v32 + 80);
  v98 = *(v32 + 96);
  *&v99 = *(v32 + 112);
  v92 = *v32;
  v93 = *(v32 + 16);
  v94 = *(v32 + 32);
  v95 = *(v32 + 48);
  v33 = _ShapeStyle_Pack.Style.color.getter();
  if ((v35 & 0x100000000) == 0)
  {
    *v83 = v33;
    *&v83[8] = v34;
    *&v83[16] = v35;
    [*(a4[2] + 32) setInfinite];
    GraphicsContext.Storage.Shared.setColor(_:)(v83, v36, v37, v38, v39);
    return RBDrawingStateDrawShape();
  }

  type metadata accessor for GraphicsContext.Storage();
  v56 = swift_allocObject();
  *(v56 + 32) = xmmword_18DD85500;
  *(v56 + 48) = 1065353216;
  *(v56 + 56) = 0x7FF8000000000000;
  v57 = a4[2];
  v58 = *(v57 + 64);
  if (v58 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v56 + 16) = v57;
  }

  else
  {
    v59 = RBDrawingStateGetDisplayList();
    v60 = a4[4];
    v61 = v60;
    v62 = a4[5];
    if (v60 == 1)
    {
      v61 = *(v57 + 48);
      v62 = *(v57 + 56);
    }

    *&v92 = v61;
    *(&v92 + 1) = v62;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v60);
    *(v56 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v59, &v92);
  }

  *(v56 + 24) = a2;
  *(v56 + 64) = 0;
  *(v56 + 48) = a9;
  *(v56 + 52) = a3;
  v96 = *(v32 + 64);
  v97 = *(v32 + 80);
  v98 = *(v32 + 96);
  *&v99 = *(v32 + 112);
  v92 = *v32;
  v93 = *(v32 + 16);
  v94 = *(v32 + 32);
  v95 = *(v32 + 48);
  v64 = *MEMORY[0x1E695F040];
  v63 = *(MEMORY[0x1E695F040] + 8);
  v66 = *(MEMORY[0x1E695F040] + 16);
  v65 = *(MEMORY[0x1E695F040] + 24);
  v107.origin.x = *MEMORY[0x1E695F040];
  v107.origin.y = v63;
  v107.size.width = v66;
  v107.size.height = v65;
  if (CGRectIsNull(v107))
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 6;
  }

  else
  {
    v71 = 0;
    v67 = v64;
    v68 = *&v63;
    v69 = *&v66;
    v70 = *&v65;
  }

  v103[0] = v67;
  v103[1] = v68;
  v103[2] = v69;
  v103[3] = v70;
  v104 = v71;
  *v83 = 256;
  memset(&v83[8], 0, 33);
  _ShapeStyle_Pack.Style.draw(_:style:in:bounds:)(v103, v83, v56, &v72);
  outlined consume of Path.Storage(v67, v68, v69, v70, v71);
}

uint64_t GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(__int128 *a1, uint64_t a2, double a3)
{
  v7 = a1[9];
  v97[8] = a1[8];
  v97[9] = v7;
  v98 = *(a1 + 20);
  v8 = a1[5];
  v97[4] = a1[4];
  v97[5] = v8;
  v9 = a1[7];
  v97[6] = a1[6];
  v97[7] = v9;
  v10 = a1[1];
  v97[0] = *a1;
  v97[1] = v10;
  v11 = a1[3];
  v97[2] = a1[2];
  v97[3] = v11;
  v12 = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOg(v97);
  if (v12 == 8)
  {
    result = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v97);
    v31 = *result;
    if (*(*result + 16))
    {
      v32 = *(v31 + 160);
      v80 = *(v31 + 144);
      v81 = v32;
      v83 = *(v31 + 192);
      v33 = *(v31 + 160);
      v82 = *(v31 + 176);
      v34 = *(v31 + 96);
      v76 = *(v31 + 80);
      v77 = v34;
      v35 = *(v31 + 112);
      v79 = *(v31 + 128);
      v36 = *(v31 + 96);
      v78 = *(v31 + 112);
      v37 = *(v31 + 48);
      *v75 = *(v31 + 32);
      *&v75[16] = v37;
      *&v75[32] = *(v31 + 64);
      v38 = *(v31 + 176);
      v72 = v33;
      v73 = v38;
      v74 = *(v31 + 192);
      v68 = v36;
      v69 = v35;
      v39 = *(v31 + 144);
      v70 = *(v31 + 128);
      v71 = v39;
      v40 = *(v31 + 48);
      v64 = *(v31 + 32);
      v65 = v40;
      v41 = *(v31 + 80);
      v66 = *(v31 + 64);
      v67 = v41;
      outlined init with copy of GraphicsContext.ResolvedShading(v75, &v84);
      GraphicsContext.addVariableBlurFilter(radius:mask:flags:)(&v64, a2, a3);
      v92 = v72;
      v93 = v73;
      v94 = v74;
      v88 = v68;
      v89 = v69;
      v90 = v70;
      v91 = v71;
      v84 = v64;
      v85 = v65;
      v86 = v66;
      v87 = v67;
      return outlined destroy of GraphicsContext.ResolvedShading(&v84);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (v12 == 4)
    {
      v20 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v97);
      v21 = *v3;
      v22 = RBDrawingStateBeginLayer();
      v64 = 0u;
      v65 = 0u;
      LOBYTE(v66) = 1;
      v88 = *(v20 + 64);
      v89 = *(v20 + 80);
      v90 = *(v20 + 96);
      *&v91 = *(v20 + 112);
      v84 = *v20;
      v85 = *(v20 + 16);
      v86 = *(v20 + 32);
      v87 = *(v20 + 48);
      v23 = _ShapeStyle_Pack.Style.color.getter();
      if ((v25 & 0x100000000) != 0)
      {
        type metadata accessor for GraphicsContext.Storage();
        v47 = swift_allocObject();
        *(v47 + 32) = xmmword_18DD85500;
        *(v47 + 48) = 1065353216;
        *(v47 + 56) = 0x7FF8000000000000;
        v48 = v21[2];
        v49 = *(v48 + 64);
        if (v49 == RBDrawingStateGetDefaultColorSpace())
        {
          *(v47 + 16) = v48;
        }

        else
        {
          v63 = v22;
          v50 = RBDrawingStateGetDisplayList();
          v51 = v21[4];
          v52 = v51;
          v53 = v21[5];
          if (v51 == 1)
          {
            v52 = *(v48 + 48);
            v53 = *(v48 + 56);
          }

          *&v84 = v52;
          *(&v84 + 1) = v53;
          type metadata accessor for GraphicsContext.Storage.Shared();
          swift_allocObject();
          outlined copy of EnvironmentValues?(v51);
          *(v47 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v50, &v84);
          v22 = v63;
        }

        *(v47 + 24) = v22;
        *(v47 + 64) = 0;
        *(v47 + 48) = 1065353216;
        v88 = *(v20 + 64);
        v89 = *(v20 + 80);
        v90 = *(v20 + 96);
        *&v91 = *(v20 + 112);
        v84 = *v20;
        v85 = *(v20 + 16);
        v86 = *(v20 + 32);
        v87 = *(v20 + 48);
        v54 = *MEMORY[0x1E695F040];
        v55 = *(MEMORY[0x1E695F040] + 8);
        v56 = *(MEMORY[0x1E695F040] + 16);
        v57 = *(MEMORY[0x1E695F040] + 24);
        v99.origin.x = *MEMORY[0x1E695F040];
        v99.origin.y = v55;
        v99.size.width = v56;
        v99.size.height = v57;
        if (CGRectIsNull(v99))
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = 6;
        }

        else
        {
          v62 = 0;
          v58 = v54;
          v59 = *&v55;
          v60 = *&v56;
          v61 = *&v57;
        }

        v95[0] = v58;
        v95[1] = v59;
        v95[2] = v60;
        v95[3] = v61;
        v96 = v62;
        *v75 = 256;
        memset(&v75[8], 0, 33);
        _ShapeStyle_Pack.Style.draw(_:style:in:bounds:)(v95, v75, v47, &v64);
        outlined consume of Path.Storage(v58, v59, v60, v61, v62);
      }

      else
      {
        *v75 = v23;
        *&v75[8] = v24;
        *&v75[16] = v25;
        [*(v21[2] + 32) setInfinite];
        GraphicsContext.Storage.Shared.setColor(_:)(v75, v26, v27, v28, v29);
        RBDrawingStateDrawShape();
      }
    }

    else
    {
      if (v12)
      {
        GraphicsContext.copyOnWrite()();
        v42 = a1[9];
        v92 = a1[8];
        v93 = v42;
        v94 = *(a1 + 20);
        v43 = a1[5];
        v88 = a1[4];
        v89 = v43;
        v44 = a1[7];
        v90 = a1[6];
        v91 = v44;
        v45 = a1[1];
        v84 = *a1;
        v85 = v45;
        v46 = a1[3];
        v86 = a1[2];
        v87 = v46;

        GraphicsContext.Storage.Shared.setShading(_:)(&v84);

        return RBDrawingStateAddVariableBlurFilter();
      }

      v13 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v97);
      v14 = *(v13 + 16);
      v84 = *v13;
      LODWORD(v85) = v14;
      GraphicsContext.copyOnWrite()();
      v15 = *v3;
      RBDrawingStateBeginLayer();
      if (*(&v84 + 3) != 0.0)
      {
        [*(v15[2] + 32) setInfinite];
        GraphicsContext.Storage.Shared.setColor(_:)(&v84, v16, v17, v18, v19);
        RBDrawingStateDrawShape();
      }
    }

    return RBDrawingStateAddVariableBlurLayer();
  }

  return result;
}

id RBShape.setStrokedPath(_:style:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v8 = *(a2 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    goto LABEL_2;
  }

  v18 = *a1;
  v19 = *(a1 + 32);
  if (v19 <= 1)
  {
    if (*(a1 + 32))
    {
      if (v19 == 1)
      {
        v20 = *a1;
        v21 = *(a1 + 8);
        v22 = *(a1 + 16);
        v23 = *(a1 + 24);
        v39.origin.x = *a1;
        v39.origin.y = v21;
        v39.size.width = v22;
        v39.size.height = v23;
        Width = CGRectGetWidth(v39);
        v40.origin.x = v20;
        v40.origin.y = v21;
        v40.size.width = v22;
        v40.size.height = v23;
        if (Width == CGRectGetHeight(v40))
        {
          v41.origin.x = v20;
          v41.origin.y = v21;
          v41.size.width = v22;
          v41.size.height = v23;
          v25 = CGRectGetWidth(v41) * 0.5 + v20;
          v42.origin.x = v20;
          v42.origin.y = v21;
          v42.size.width = v22;
          v42.size.height = v23;
          v26 = CGRectGetHeight(v42) * 0.5 + v21;
          v43.origin.x = v20;
          v43.origin.y = v21;
          v43.size.width = v22;
          v43.size.height = v23;
          a5 = CGRectGetWidth(v43) * 0.5;
          a6 = *a2;
          v27 = sel_setStrokedCircleAtPoint_radius_lineWidth_;
          v28 = v6;
          a3 = v25;
          a4 = v26;

          return [v28 v27];
        }
      }
    }

    else if (!*(a2 + 12) && *(a2 + 16) >= 1.4142)
    {
      a3 = *a1;
      a4 = *(a1 + 8);
      a5 = *(a1 + 16);
      a6 = *(a1 + 24);
      v27 = sel_setStrokedRect_lineWidth_;
      v28 = v6;

      return [v28 v27];
    }

LABEL_2:
    v10 = Path.retainRBPath()();
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 12);
    v14 = *(a2 + 16);
    v15 = *(a2 + 32);
    v37[0] = 0x3FF0000000000000;
    v37[1] = 0;
    v37[2] = 0;
    v37[3] = 0x3FF0000000000000;
    v37[4] = 0;
    v37[5] = 0;
    [v6 setStrokedRBPath:v10 transform:v16 lineWidth:v37 lineCap:v12 lineJoin:v13 miterLimit:v8 + 32 dashPhase:v11 dashPattern:v14 dashCount:{v15, v9}];
    return RBPathRelease();
  }

  if (v19 == 2)
  {
    v31 = *(*&v18 + 16);
    v32 = *(*&v18 + 24);
    v33 = *(*&v18 + 32);
    v34 = *(*&v18 + 40);
    v36 = *(*&v18 + 48);
    v35 = *(*&v18 + 56);
    if (v36 == v35 || vabdd_f64(v36, v35) < 0.001)
    {
      CGRectGetWidth(*(*&v18 + 16));
      v44.origin.x = v31;
      v44.origin.y = v32;
      v44.size.width = v33;
      v44.size.height = v34;
      CGRectGetHeight(v44);
      v27 = sel_setStrokedRoundedRect_cornerRadius_cornerStyle_lineWidth_;
      v28 = v6;
      a3 = v31;
      a4 = v32;
      a5 = v33;
      a6 = v34;

      return [v28 v27];
    }

    goto LABEL_2;
  }

  v29 = *(a1 + 8) | *&v18 | *(a1 + 16) | *(a1 + 24);
  if (v19 != 6 || v29 != 0)
  {
    goto LABEL_2;
  }

  v27 = sel_setEmpty;
  v28 = v6;

  return [v28 v27];
}

void RBFill.setRepeatedImage(_:origin:scale:sourceRect:in:)(__int128 *a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v15 = a1[5];
  v93 = a1[4];
  *v94 = v15;
  *&v94[12] = *(a1 + 92);
  v16 = a1[1];
  v89 = *a1;
  v90 = v16;
  v17 = a1[3];
  v91 = a1[2];
  v92 = v17;
  value = v89;
  if (BYTE8(v89) > 3u)
  {
    if (BYTE8(v89) == 4)
    {
      v40 = *(v89 + 32);
      if (a2 != 2)
      {
        RBColorFromLinear();
      }

      [v9 setColor_];
      v35 = sel_setHeadroom_;
      v36 = v9;
      LODWORD(v31) = v40;

      goto LABEL_20;
    }

    if (BYTE8(v89) == 255)
    {
LABEL_16:
      v31 = 0.0;
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      if (a2 != 2)
      {
        RBColorFromLinear();
      }

      v35 = sel_setColor_;
      v36 = v9;

LABEL_20:
      [v36 v35];
      return;
    }

LABEL_7:
    v22 = a1[5];
    v86 = a1[4];
    v87[0] = v22;
    *(v87 + 12) = *(a1 + 92);
    v23 = a1[1];
    v82 = *a1;
    v83 = v23;
    v24 = a1[3];
    v25 = 0.0;
    v84 = a1[2];
    v85 = v24;
    v26 = 0.0;
    if (*&v90 != 0.0)
    {
      v27 = *(&v90 + 1);
      if (BYTE8(v91) <= 3u)
      {
        v28 = *&v91;
      }

      else
      {
        v28 = *(&v90 + 1);
      }

      if (BYTE8(v91) > 3u)
      {
        v27 = *&v91;
      }

      v25 = 1.0 / *&v90 * v27;
      v26 = 1.0 / *&v90 * v28;
    }

    v29.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(*&v26, *&v25), 0).value;
    if (v29.value)
    {
      value = v29.value;
      v30 = v29.value;
LABEL_22:
      CGImage = RBImageMakeCGImage();
      v39 = v38;
      RBTiledImageTransform();
      v71 = v82;
      v75 = v83;
      ty = *(&v84 + 1);
      tx = *&v84;
      v86 = v93;
      v87[0] = *v94;
      *(v87 + 12) = *&v94[12];
      v82 = v89;
      v83 = v90;
      v84 = v91;
      v85 = v92;
      v43 = GraphicsImage.bitmapOrientation.getter();
      if (v43)
      {
        specialized CGAffineTransform.init(orientation:in:)(v43, &v88, 1.0, 1.0);
        t1 = v88;
        *&t2.a = v71;
        *&t2.c = v75;
        t2.tx = tx;
        t2.ty = ty;
        CGAffineTransformConcat(&v79, &t1, &t2);
        v49 = *&v79.a;
        v48 = *&v79.c;
        tx = v79.tx;
        ty = v79.ty;
        if (v93)
        {
LABEL_30:
          v50 = 0;
          LODWORD(v44) = *MEMORY[0x1E69C7148];
          LODWORD(v45) = *(MEMORY[0x1E69C7148] + 4);
          LODWORD(v46) = *(MEMORY[0x1E69C7148] + 8);
          LODWORD(v47) = *(MEMORY[0x1E69C7148] + 12);
LABEL_35:
          v55 = dword_18DDD7E00[v94[26]];
          v82 = v49;
          v83 = v48;
          *&v84 = tx;
          *(&v84 + 1) = ty;
          [v9 setTiledRBImage:CGImage transform:v39 sourceRect:&v82 interpolation:v55 tintColor:v50 flags:{a6, a7, a8, a9, v44, v45, v46, v47, *&a6, *&a7, *&a8, *&a9}];

          return;
        }
      }

      else
      {
        v49 = v71;
        v48 = v75;
        if (v93)
        {
          goto LABEL_30;
        }
      }

      LODWORD(v44) = HIDWORD(v91);
      LODWORD(v46) = DWORD1(v92);
      LODWORD(v45) = v92;
      LODWORD(v47) = DWORD2(v92);
      if (a2 != 2)
      {
        v72 = v49;
        v76 = v48;
        RBColorFromLinear();
        LODWORD(v44) = v51;
        LODWORD(v45) = v52;
        v49 = v72;
        v48 = v76;
        LODWORD(v46) = v53;
        LODWORD(v47) = v54;
      }

      v50 = 1;
      goto LABEL_35;
    }

    goto LABEL_16;
  }

  if (!BYTE8(v89))
  {
    outlined init with copy of GraphicsImage(&v89, &v82);
    outlined init with copy of GraphicsImage(&v89, &v82);
    v30 = value;
    goto LABEL_22;
  }

  if (BYTE8(v89) != 1)
  {
    goto LABEL_7;
  }

  IOSurface = RBImageMakeIOSurface();
  v21 = v20;
  RBTiledImageTransform();
  v73 = v82;
  v77 = v83;
  v57 = *(&v84 + 1);
  v56 = *&v84;
  v86 = v93;
  v87[0] = *v94;
  *(v87 + 12) = *&v94[12];
  v82 = v89;
  v83 = v90;
  v84 = v91;
  v85 = v92;
  v58 = GraphicsImage.bitmapOrientation.getter();
  if (!v58)
  {
    v64 = v73;
    v63 = v77;
    if (v93)
    {
      goto LABEL_38;
    }

LABEL_40:
    LODWORD(v59) = HIDWORD(v91);
    LODWORD(v61) = DWORD1(v92);
    LODWORD(v60) = v92;
    LODWORD(v62) = DWORD2(v92);
    if (a2 != 2)
    {
      v74 = v64;
      v78 = v63;
      RBColorFromLinear();
      LODWORD(v59) = v66;
      LODWORD(v60) = v67;
      v64 = v74;
      v63 = v78;
      LODWORD(v61) = v68;
      LODWORD(v62) = v69;
    }

    v65 = 1;
    goto LABEL_43;
  }

  specialized CGAffineTransform.init(orientation:in:)(v58, &v88, 1.0, 1.0);
  t1 = v88;
  *&t2.a = v73;
  *&t2.c = v77;
  t2.tx = v56;
  t2.ty = v57;
  CGAffineTransformConcat(&v79, &t1, &t2);
  v64 = *&v79.a;
  v63 = *&v79.c;
  v56 = v79.tx;
  v57 = v79.ty;
  if ((v93 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_38:
  v65 = 0;
  LODWORD(v59) = *MEMORY[0x1E69C7148];
  LODWORD(v60) = *(MEMORY[0x1E69C7148] + 4);
  LODWORD(v61) = *(MEMORY[0x1E69C7148] + 8);
  LODWORD(v62) = *(MEMORY[0x1E69C7148] + 12);
LABEL_43:
  v70 = dword_18DDD7E00[v94[26]];
  v82 = v64;
  v83 = v63;
  *&v84 = v56;
  *(&v84 + 1) = v57;
  [v9 setTiledRBImage:IOSurface transform:v21 sourceRect:&v82 interpolation:v70 tintColor:v65 flags:{a6, a7, a8, a9, v59, v60, v61, v62, *&a6, *&a7, *&a8, *&a9}];
}

uint64_t GraphicsContext.Storage.Shared.setColor(_:in:)(uint64_t result, __int128 *a2)
{
  v3 = v2;
  v4 = *(v2 + 272);
  if (v4)
  {
    v5 = v4 == result;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = result;
    v7 = *(v3 + 40);
    v14 = *a2;
    v8 = *(*result + 120);

    v8(&v15, &v14);
    LODWORD(v10) = HIDWORD(v15);
    LODWORD(v9) = v15;
    LODWORD(v11) = v16;
    LODWORD(v12) = v17;
    if (*(v3 + 64) != 2)
    {
      RBColorFromLinear();
    }

    [v7 setColor_];
    LODWORD(v13) = v18;
    [v7 setHeadroom_];
    *(v3 + 272) = v6;
  }

  return result;
}

uint64_t *GraphicsContext.Storage.Shared.setMeshGradient(_:in:)(uint64_t *result, double a2, double a3, double a4, double a5)
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = *(result + 10);
  if (result[1])
  {
    if ((result[6] * result[7]) >> 64 == (result[6] * result[7]) >> 63)
    {
      v11 = 2;
LABEL_6:
      v12 = *(v5 + 40);
      LODWORD(v14) = *(result + 17);
      LODWORD(a2) = *(result + 6);
      LODWORD(a3) = *(result + 7);
      LODWORD(a4) = *(result + 8);
      LODWORD(a5) = *(result + 9);
      [v12 setMeshGradientType:v11 positions:*result + 32 colors:result[2] + 32 count:a2 width:a3 background:a4 colorSpace:a5 flags:v14];
      LODWORD(v13) = v10;
      [v12 setHeadroom_];
      *(v5 + 272) = 0;

      *v15 = v7;
      v15[1] = 0;
      v15[2] = 0;
      *&v15[3] = v6;
      *&v15[4] = v9;
      *&v15[5] = v8;
      return [v12 concat_];
    }

    __break(1u);
  }

  else if ((result[6] * result[7]) >> 64 == (result[6] * result[7]) >> 63)
  {
    v11 = 1;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in GraphicsContext.Storage.Shared.setGradient(_:geometry:options:in:colorSpace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = RBGradientFlags.union(_:)(a8, a5);
  v15 = *a7;
  v16 = *(a7 + 8);
  v17 = *(a7 + 16);
  v18 = *(a7 + 24);
  v19 = *(a7 + 32);
  v20 = *(a7 + 40);
  v21 = *(a7 + 48);
  v22 = *(a6 + 40);
  if (v21 <= 2)
  {
    if (!v21)
    {
      [*(a6 + 40) setAxialGradientStartPoint:a1 endPoint:a2 stopCount:a4 colors:v14 locations:v15 flags:{v16, v17, v18, v19, v20}];
LABEL_10:
      if ((a3 & 0x100000000) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v21 == 1)
    {
      [*(a6 + 40) setRadialGradientCenter:a1 startRadius:a2 endRadius:a4 stopCount:v14 colors:v15 locations:v16 flags:{v17, v18, v19, v20}];
      goto LABEL_10;
    }

    [*(a6 + 40) setRadialGradientStartCenter:a1 startRadius:a2 endCenter:a4 endRadius:v14 stopCount:v15 colors:v16 locations:v17 flags:{v18, v19, v20}];
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v21 == 3)
  {
    v24 = v15;
    v25 = v16;
    v26 = v17;
    [*(a6 + 40) setRadialGradientCenter:a1 startRadius:a2 endRadius:a4 stopCount:v14 colors:0.0 locations:0.0 flags:{v19, v20}];
    v30.origin.x = v24;
    v30.origin.y = v25;
    v30.size.width = v26;
    v30.size.height = v18;
    Width = CGRectGetWidth(v30);
    v31.origin.x = v24;
    v31.origin.y = v25;
    v31.size.width = v26;
    v31.size.height = v18;
    *v29 = Width;
    v29[1] = 0;
    v29[2] = 0;
    v29[3] = CGRectGetHeight(v31);
    *&v29[4] = v24;
    *&v29[5] = v25;
    [v22 concat_];
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v21 == 4)
  {
    [*(a6 + 40) setConicGradientCenter:a1 angle:a2 stopCount:a4 colors:v14 locations:v15 flags:{v16, v17}];
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  [*(a6 + 40) setAngularGradientCenter:a1 startAngle:a2 endAngle:0 stopCount:a4 colors:v14 colorSpace:v15 locations:v16 flags:{v17, v18, v19, v20}];
  if ((a3 & 0x100000000) == 0)
  {
LABEL_17:
    LODWORD(v23) = a3;
    [v22 setHeadroom_];
  }

LABEL_18:
  *(a6 + 272) = 0;
}

void specialized withGradient(_:in:do:)(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v80 = *MEMORY[0x1E69E9840];
  v70 = a3;
  v71 = a4;
  v7 = *a1;
  v8 = *(*a1 + 16);
  if (!v8)
  {
    v9 = 0;
    v12 = 1;
    goto LABEL_11;
  }

  LOBYTE(v9) = 0;
  v10 = v7 + 72;
  v11 = 1 - v8;
  v12 = 5;
  while ((v9 & 1) != 0)
  {
    v9 = 1;
    if (!v11)
    {
      goto LABEL_11;
    }

LABEL_4:
    ++v11;
    v10 += 48;
    if (v11 == 1)
    {
      goto LABEL_42;
    }
  }

  v9 = *v10 ^ 1;
  if (v11)
  {
    goto LABEL_4;
  }

  if (*v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = 5;
  }

LABEL_11:
  MEMORY[0x1EEE9AC00](a1);
  v4 = v56;
  v56[2] = v7;
  v57 = v13;
  v58 = v14;
  v59 = v15;
  v60 = a2;
  v61 = v9;
  MEMORY[0x1EEE9AC00](v16);
  v5 = v48;
  v48[2] = v7;
  v49 = v20;
  v50 = v18;
  v51 = v19;
  v52 = v9;
  v53 = closure #3 in GraphicsContext.addFilter(_:options:)partial apply;
  v54 = &v69;
  v55 = v8;
  if (!v8)
  {
    return;
  }

  if (v8 >> 59)
  {
    __break(1u);
LABEL_48:
    __break(1u);
  }

  v66 = v20;
  v67 = v19;
  v68 = v18;
  if ((16 * v8) >= 1025)
  {
    goto LABEL_43;
  }

LABEL_14:
  MEMORY[0x1EEE9AC00](v17);
  v26 = v48 - v25;
  if ((v8 * v12) >> 60)
  {
    goto LABEL_48;
  }

  v65 = v24;
  v63 = v22;
  v64 = v23;
  if ((8 * v8 * v12) >= 1025)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v47 = swift_slowAlloc();
      closure #1 in closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v47, v8 * v12, v8, closure #1 in withGradient(_:in:do:)partial apply, v4, v26, v8, v12, closure #2 in withGradient(_:in:do:)partial apply);
      MEMORY[0x193AC4820](v47, -1, -1);
      return;
    }
  }

  v62 = v48;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v5 = v48 - v27;
  v28 = 0;
  v7 += 72;
  v29 = v26 + 8;
  do
  {
    v4 = v28 * v12;
    if ((v28 * v12) >> 64 != (v28 * v12) >> 63)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      v17 = swift_stdlib_isStackAllocationSafe();
      if ((v17 & 1) == 0)
      {
        v46 = swift_slowAlloc();
        closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v46, v8, v8, v12, closure #1 in withGradient(_:in:do:)partial apply, v4, closure #2 in withGradient(_:in:do:)partial apply, v5);
        MEMORY[0x193AC4820](v46, -1, -1);
        return;
      }

      goto LABEL_14;
    }

    v34 = *(v7 - 10);
    v35 = *(v7 - 9);
    v36 = *(v7 - 8);
    v37 = *(v7 - 7);
    if (a2 != 2)
    {
      RBColorFromLinear();
    }

    v38 = &v5[8 * v4];
    *(v29 - 2) = v34;
    *(v29 - 1) = v35;
    *v29 = v36;
    v29[1] = v37;
    *v38 = *(v7 - 3);
    if (v9)
    {
      if (*v7)
      {
        v31 = 0.0;
        v33 = 1.0;
        v32 = 1.0;
        v30 = 0.0;
      }

      else
      {
        v30 = *(v7 - 4);
        v31 = *(v7 - 3);
        v32 = *(v7 - 2);
        v33 = *(v7 - 1);
      }

      *(v38 + 1) = v30;
      *(v38 + 2) = v31;
      *(v38 + 3) = v32;
      *(v38 + 4) = v33;
    }

    ++v28;
    v7 += 48;
    v29 += 4;
  }

  while (v8 != v28);
  if (v66)
  {
    v39 = v64;
    v40 = v63;
    v42 = v67;
    v41 = v68;
    if (v66 == 1)
    {
      if (v9)
      {
        v43 = 576;
      }

      else
      {
        v43 = 64;
      }
    }

    else if (v9)
    {
      v43 = 704;
    }

    else
    {
      v43 = 192;
    }
  }

  else
  {
    v39 = v64;
    v40 = v63;
    v42 = v67;
    v41 = v68;
    if (v9)
    {
      v43 = 640;
    }

    else
    {
      v43 = 128;
    }
  }

  v44 = *(*(*v40 + 16) + 64);
  v45 = v41;
  if (v42)
  {
    v45 = 0.0;
  }

  v72 = 3;
  v73 = 0x3F80000000000000;
  v74 = v8;
  v75 = v26;
  v76 = v44;
  v77 = v45;
  v78 = v5;
  v79 = v43 | ((v39 & 1) << 6);
  RBDrawingStateAddStyle();
}

unint64_t closure #1 in withGradient(_:in:colorSpace:do:)(unint64_t result, _DWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(a4 + 16) <= result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v28 = v8;
  v29 = v9;
  v14 = a4 + 16 * result;
  v16 = *(v14 + 32);
  v15 = v14 + 32;
  v23[0] = a5;
  v23[1] = a6;
  v17 = *(*v16 + 120);

  v17(&v24, v23);

  v19 = HIDWORD(v24);
  v18 = v24;
  v20 = v25;
  v21 = v26;
  if (a7 != 2)
  {
    result = RBColorFromLinear();
  }

  *a2 = v18;
  a2[1] = v19;
  a2[2] = v20;
  a2[3] = v21;
  v22 = v27;
  if ((*(a8 + 4) & 1) == 0 && *a8 > v27)
  {
    v22 = *a8;
  }

  *a8 = v22;
  *(a8 + 4) = 0;
  *a3 = *(v15 + 8);
  return result;
}

unint64_t closure #1 in withGradient(_:in:do:)(unint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(a4 + 16) <= result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v11 = a4 + 48 * result;
  v13 = *(v11 + 32);
  v14 = *(v11 + 36);
  v12 = v11 + 32;
  v15 = *(v12 + 8);
  v16 = *(v12 + 12);
  if (a7 != 2)
  {
    result = RBColorFromLinear();
  }

  *a2 = v13;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v16;
  *a3 = *(v12 + 16);
  if (a8)
  {
    if (*(v12 + 40))
    {
      v17 = 0.0;
      v18 = 1.0;
      v19 = 1.0;
      v20 = 0.0;
    }

    else
    {
      v20 = *(v12 + 24);
      v17 = *(v12 + 28);
      v19 = *(v12 + 32);
      v18 = *(v12 + 36);
    }

    *(a3 + 8) = v20;
    *(a3 + 16) = v17;
    *(a3 + 24) = v19;
    *(a3 + 32) = v18;
  }

  return result;
}

uint64_t closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__n128), uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = a3 * a4;
  if ((a3 * a4) >> 64 != (a3 * a4) >> 63)
  {
    goto LABEL_14;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (v15 >> 60)
  {
    goto LABEL_20;
  }

  v11 = v10;
  v9 = a6;
  v13 = a5;
  v12 = a4;
  v14 = a3;
  v8 = isStackAllocationSafe;
  v23[1] = a8;
  v24 = a7;
  if ((8 * v15) > 1024)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v17.n128_f64[0] = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v15 = v23 - v18;
    if (v14 < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    v23[0] = v16;
    v19 = v11;
    if (!v14)
    {
      break;
    }

    v20 = 0;
    v21 = v8;
    while ((v20 * v12) >> 64 == (v20 * v12) >> 63)
    {
      v11 = (v20 + 1);
      v13(v17);
      v21 += 16;
      v20 = v11;
      if (v14 == v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v23[0] = a2;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (!isStackAllocationSafe)
    {
      v19 = swift_slowAlloc();
      closure #1 in closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v19, v15, v14, v13, v9, v8, v23[0], v12, v24);
      v8 = v11;
      if (!v11)
      {
        return MEMORY[0x193AC4820](v19, -1, -1);
      }

LABEL_22:

      result = MEMORY[0x193AC4820](v19, -1, -1);
      __break(1u);
      return result;
    }
  }

LABEL_10:
  if (!v8)
  {
    __break(1u);
    goto LABEL_22;
  }

  return (v24)(v8, v15, v17);
}

uint64_t closure #1 in closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t))
{
  if (!result)
  {
    goto LABEL_11;
  }

  if (a3 < 0)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = result;
  if (a3)
  {
    result = 0;
    v14 = a6;
    while ((result * a8) >> 64 == (result * a8) >> 63)
    {
      v15 = result + 1;
      a4();
      v14 += 16;
      result = v15;
      if (a3 == v15)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_7:
  if (a6)
  {
    return a9(a6, v11);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t specialized GraphicsContext.init(displayList:environment:)(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  type metadata accessor for GraphicsContext.Storage();
  v5 = swift_allocObject();
  *(v5 + 32) = xmmword_18DD85500;
  *(v5 + 48) = 1065353216;
  *(v5 + 56) = 0x7FF8000000000000;
  v7[0] = v3;
  v7[1] = v4;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();
  *(v5 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(a1, v7);
  *(v5 + 24) = RBDisplayListGetState();
  *(v5 + 64) = 0;
  return v5;
}

uint64_t outlined init with copy of GraphicsContext.Shading?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GraphicsContext.Shading?(0, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized GraphicsContext.clipToLayer(opacity:options:content:)(uint64_t a1, void *a2, uint64_t *a3)
{
  GraphicsContext.copyOnWrite()();
  v5 = *a2;
  v6 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  inited = swift_initStackObject();
  *(inited + 32) = xmmword_18DD85500;
  *(inited + 48) = 1065353216;
  *(inited + 56) = 0x7FF8000000000000;
  v8 = v5[2];
  LODWORD(a2) = *(v8 + 64);
  if (a2 == RBDrawingStateGetDefaultColorSpace())
  {
    *(inited + 16) = v8;
  }

  else
  {
    v9 = RBDrawingStateGetDisplayList();
    v10 = v5[4];
    v11 = v10;
    v12 = v5[5];
    if (v10 == 1)
    {
      v11 = *(v8 + 48);
      v12 = *(v8 + 56);
    }

    v20 = v11;
    *&v21 = v12;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v10);
    *(inited + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v9, &v20);
  }

  *(inited + 24) = v6;
  *(inited + 64) = 0;
  v19 = inited;
  v20 = *a3;
  __asm { FMOV            V0.4S, #1.0 }

  v21 = _Q0;
  v22 = 2143289344;

  SDFStyle.Fill.draw(in:sdf:)(&v19);

  RBDrawingStateClipLayer();
  swift_setDeallocating();
  if (*(inited + 64) == 1)
  {
    RBDrawingStateDestroy();
  }

  return outlined consume of EnvironmentValues?(*(inited + 32));
}

uint64_t specialized GraphicsContext.addVariableBlurLayer(radius:options:content:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  GraphicsContext.copyOnWrite()();
  v9 = *a2;
  v10 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v11 = swift_allocObject();
  *(v11 + 32) = xmmword_18DD85500;
  *(v11 + 48) = 1065353216;
  *(v11 + 56) = 0x7FF8000000000000;
  v12 = v9[2];
  LODWORD(a2) = *(v12 + 64);
  if (a2 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v11 + 16) = v12;
  }

  else
  {
    v20 = a3;
    v13 = RBDrawingStateGetDisplayList();
    v14 = v9[4];
    v15 = v14;
    v16 = v9[5];
    if (v14 == 1)
    {
      v15 = *(v12 + 48);
      v16 = *(v12 + 56);
    }

    v21[0] = v15;
    v21[1] = v16;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v14);
    *(v11 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v13, v21);
    a3 = v20;
  }

  *(v11 + 24) = v10;
  *(v11 + 64) = 0;
  v21[0] = v11;
  if ((a4 & 0x8000000000000000) != 0 || (v17 = *(a3 + 24), *(v17 + 16) <= a4))
  {
  }

  else
  {
    v18 = *(v17 + 56 * a4 + 32);

    SDFStyle.draw(in:sdf:)(v21, a5, v18);
  }

  RBDrawingStateAddVariableBlurLayer();
}

void specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = *a2;
  v10 = *(a2 + 8);
  v29 = 0;
  v30 = 1.0;
  v12 = MEMORY[0x193AC3360](a1, &v30, &v29);
  if (v12)
  {
    v13 = v12;
    type metadata accessor for GraphicsContext.Storage();
    v14 = swift_allocObject();
    *(v14 + 32) = xmmword_18DD85500;
    *(v14 + 48) = 1065353216;
    *(v14 + 56) = 0x7FF8000000000000;
    v15 = RBDrawingStateGetDisplayList();
    v31 = *&v11;
    v32 = v10;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    *(v14 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v15, &v31);
    *(v14 + 24) = v13;
    *(v14 + 64) = 0;
    v28 = v14;
    v16 = v30;
    if (v30 == 1.0)
    {
      v17 = 0;
    }

    else
    {
      GraphicsContext.copyOnWrite()();
      v21 = v28;
      *(v28 + 48) = v16;
      v17 = *(v21 + 52);
    }

    v22 = v29;
    if (v17 != v29)
    {
      GraphicsContext.copyOnWrite()();
      *(v28 + 52) = v22;
    }

    v23 = CTLineGetRunAtIndex();
    specialized Text.Layout.TypographicBounds.init(run:range:)(v23, 0, &v31);

    SwiftUITextAttachment.draw(in:at:)(&v28, v31 + *(a6 + 16), v32 + *(a6 + 24) - v33);
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v18 setProfile_];
    [v18 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v18 setContentRect_];
    if (a4)
    {
      if (v10 == 0.0)
      {
        v27 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v11);
        if (v27)
        {
          v20 = v27[9];
        }

        else
        {
          v20 = 1.0;
        }
      }

      else
      {

        v19 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v11);

        v20 = v19;
      }
    }

    else
    {
      v20 = *&a3;
    }

    [v18 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v24 = swift_allocObject();
    *(v24 + 32) = xmmword_18DD85500;
    *(v24 + 48) = 1065353216;
    *(v24 + 56) = 0x7FF8000000000000;
    v31 = *&v11;
    v32 = v10;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v25 = v18;

    *(v24 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v25, &v31);
    *(v24 + 24) = RBDisplayListGetState();
    *(v24 + 64) = 0;
    v28 = v24;
    v26 = CTLineGetRunAtIndex();
    specialized Text.Layout.TypographicBounds.init(run:range:)(v26, 0, &v31);

    SwiftUITextAttachment.draw(in:at:)(&v28, v31 + *(a6 + 16), v32 + *(a6 + 24) - v33);
    [v25 renderInContext:a1 options:0];
  }
}

void specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v14 = *a2;
  v13 = *(a2 + 8);
  v46 = 0;
  v47 = 1.0;
  v15 = MEMORY[0x193AC3360](a1, &v47, &v46);
  if (v15)
  {
    v16 = v15;
    type metadata accessor for GraphicsContext.Storage();
    inited = swift_initStackObject();
    *(inited + 32) = xmmword_18DD85500;
    *(inited + 48) = 1065353216;
    *(inited + 56) = 0x7FF8000000000000;
    v18 = RBDrawingStateGetDisplayList();
    v48 = *&v14;
    v49 = v13;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    *(inited + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v18, &v48);
    *(inited + 24) = v16;
    *(inited + 64) = 0;
    v45 = inited;
    v19 = v47;
    if (v47 != 1.0)
    {
      GraphicsContext.copyOnWrite()();
      inited = v45;
      *(v45 + 48) = v19;
    }

    v20 = v46;
    if (*(inited + 52) != v46)
    {
      GraphicsContext.copyOnWrite()();
      *(v45 + 52) = v20;
    }

    v21 = CTLineGetRunAtIndex();
    specialized Text.Layout.TypographicBounds.init(run:range:)(v21, 0, &v48);

    v22 = v50;
    v23 = v48 + *(a7 + 16);
    v24 = v49 + *(a7 + 24) - v51;
    v25 = v51 + v52;
    v26 = CTLineGetRunAtIndex();
    v27 = CTRunGetAttributes(v26);

    v28 = CTLineGetRunAtIndex();
    StringRange = CTRunGetStringRange(v28);

    (*(*a5 + 80))(a6, v27, StringRange.location, StringRange.length, &v45, v23, v24, v22, v25);
  }

  else
  {
    v30 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v30 setProfile_];
    [v30 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v30 setContentRect_];
    if (a4)
    {
      if (v13 == 0.0)
      {
        v44 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v14);
        if (v44)
        {
          v32 = v44[9];
        }

        else
        {
          v32 = 1.0;
        }
      }

      else
      {

        v31 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v14);

        v32 = v31;
      }
    }

    else
    {
      v32 = *&a3;
    }

    [v30 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v33 = swift_initStackObject();
    *(v33 + 32) = xmmword_18DD85500;
    *(v33 + 48) = 1065353216;
    *(v33 + 56) = 0x7FF8000000000000;
    v48 = *&v14;
    v49 = v13;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v34 = v30;

    *(v33 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v34, &v48);
    *(v33 + 24) = RBDisplayListGetState();
    *(v33 + 64) = 0;
    v45 = v33;
    v35 = CTLineGetRunAtIndex();
    specialized Text.Layout.TypographicBounds.init(run:range:)(v35, 0, &v48);

    v36 = v50;
    v37 = v48 + *(a7 + 16);
    v38 = v49 + *(a7 + 24) - v51;
    v39 = v51 + v52;
    v40 = CTLineGetRunAtIndex();
    v41 = CTRunGetAttributes(v40);

    v42 = CTLineGetRunAtIndex();
    v43 = CTRunGetStringRange(v42);

    (*(*a5 + 80))(a6, v41, v43.location, v43.length, &v45, v37, v38, v36, v39);
    [v34 renderInContext:a1 options:0];
  }
}

void specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, float64x2_t *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v12 = *a2;
  v11 = *(a2 + 8);
  v30 = 0;
  v31 = 1.0;
  v13 = MEMORY[0x193AC3360](a1, &v31, &v30);
  if (v13)
  {
    v14 = v13;
    type metadata accessor for GraphicsContext.Storage();
    v15 = swift_allocObject();
    *(v15 + 32) = xmmword_18DD85500;
    *(v15 + 48) = 1065353216;
    *(v15 + 56) = 0x7FF8000000000000;
    v16 = RBDrawingStateGetDisplayList();
    *&v35.f64[0] = v12;
    v35.f64[1] = v11;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    *(v15 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v16, &v35);
    *(v15 + 24) = v14;
    *(v15 + 64) = 0;
    v29 = v15;
    v17 = v31;
    if (v31 == 1.0)
    {
      v18 = 0;
    }

    else
    {
      GraphicsContext.copyOnWrite()();
      v22 = v29;
      *(v29 + 48) = v17;
      v18 = *(v22 + 52);
    }

    v23 = v30;
    if (v18 != v30)
    {
      GraphicsContext.copyOnWrite()();
      *(v29 + 52) = v23;
    }

    v24 = CTLineGetRunAtIndex();
    specialized Text.Layout.TypographicBounds.init(run:range:)(v24, 0, v32.f64);

    v35 = vaddq_f64(v32, a6[1]);
    v36 = v33;
    v37 = v34;
    (*(*a5 + 112))(&v35, &v29);
  }

  else
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v19 setProfile_];
    [v19 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v19 setContentRect_];
    if (a4)
    {
      if (v11 == 0.0)
      {
        v28 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v12);
        if (v28)
        {
          v21 = v28[9];
        }

        else
        {
          v21 = 1.0;
        }
      }

      else
      {

        v20 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v12);

        v21 = v20;
      }
    }

    else
    {
      v21 = *&a3;
    }

    [v19 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v25 = swift_allocObject();
    *(v25 + 32) = xmmword_18DD85500;
    *(v25 + 48) = 1065353216;
    *(v25 + 56) = 0x7FF8000000000000;
    *&v35.f64[0] = v12;
    v35.f64[1] = v11;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v26 = v19;

    *(v25 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v26, &v35);
    *(v25 + 24) = RBDisplayListGetState();
    *(v25 + 64) = 0;
    v29 = v25;
    v27 = CTLineGetRunAtIndex();
    specialized Text.Layout.TypographicBounds.init(run:range:)(v27, 0, v32.f64);

    v35 = vaddq_f64(v32, a6[1]);
    v36 = v33;
    v37 = v34;
    (*(*a5 + 112))(&v35, &v29);
    [v26 renderInContext:a1 options:{0, v29}];
  }
}

uint64_t specialized GraphicsContext.drawLayer(flags:content:)(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v16 = HIDWORD(a4);
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
    v15 = RBDrawingStateGetDisplayList();
    v11 = *(a2 + 32);
    v12 = v11;
    v13 = *(a2 + 40);
    if (v11 == 1)
    {
      v12 = *(v9 + 48);
      v13 = *(v9 + 56);
    }

    v18 = v12;
    v19 = v13;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v11);
    *(v8 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v15, &v18);
  }

  *(v8 + 24) = v7;
  *(v8 + 64) = 0;
  if ((a1 & 0x20) != 0)
  {
    *(v8 + 48) = *(a2 + 48);
    *(v8 + 52) = *(a2 + 52);
  }

  v20 = v8;
  v18 = a3;
  LOWORD(v19) = v4;
  HIDWORD(v19) = v16;

  DisplayList.GraphicsRenderer.render(list:in:)(&v18, &v20);

  RBDrawingStateDrawLayer();
}

uint64_t specialized GraphicsContext.clipToLayer(opacity:options:content:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  GraphicsContext.copyOnWrite()();
  v6 = *a2;
  v7 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v8 = swift_allocObject();
  *(v8 + 32) = xmmword_18DD85500;
  *(v8 + 48) = 1065353216;
  *(v8 + 56) = 0x7FF8000000000000;
  v9 = v6[2];
  v10 = *(v9 + 64);
  if (v10 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v8 + 16) = v9;
  }

  else
  {
    v11 = RBDrawingStateGetDisplayList();
    v12 = v6[4];
    v13 = v12;
    v14 = v6[5];
    if (v12 == 1)
    {
      v13 = *(v9 + 48);
      v14 = *(v9 + 56);
    }

    v18 = v13;
    v19 = v14;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v12);
    *(v8 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v11, &v18);
  }

  *(v8 + 24) = v7;
  *(v8 + 64) = 0;
  v17 = v8;
  v18 = a3;
  LOWORD(v19) = a4;
  HIDWORD(v19) = HIDWORD(a4);

  DisplayList.GraphicsRenderer.render(list:in:)(&v18, &v17);

  RBDrawingStateClipLayer();
}

uint64_t specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(float **, double, double), double a6, double a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v14 = *a2;
  v13 = *(a2 + 8);
  v31 = 0;
  v32 = 1.0;
  v15 = MEMORY[0x193AC3360](a1, &v32, &v31);
  if (v15)
  {
    v16 = v15;
    type metadata accessor for GraphicsContext.Storage();
    v17 = swift_allocObject();
    *(v17 + 32) = xmmword_18DD85500;
    *(v17 + 48) = 1065353216;
    *(v17 + 56) = 0x7FF8000000000000;
    v18 = RBDrawingStateGetDisplayList();
    v33 = v14;
    v34 = v13;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v19 = GraphicsContext.Storage.Shared.init(list:environment:)(v18, &v33);
    v20 = 0;
    *(v17 + 16) = v19;
    *(v17 + 24) = v16;
    *(v17 + 64) = 0;
    v33 = v17;
    v21 = v32;
    if (v32 != 1.0)
    {
      GraphicsContext.copyOnWrite()();
      v22 = v33;
      v33[12] = v21;
      v20 = *(v22 + 52);
    }

    v23 = v31;
    if (v20 != v31)
    {
      GraphicsContext.copyOnWrite()();
      *(v33 + 13) = v23;
    }

    a5(&v33, a6, a7);
  }

  else
  {
    v24 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v24 setProfile_];
    [v24 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v24 setContentRect_];
    if (a4)
    {
      if (v13)
      {

        v25 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v14);

        v26 = v25;
      }

      else
      {
        v30 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v14);
        if (v30)
        {
          v26 = v30[9];
        }

        else
        {
          v26 = 1.0;
        }
      }
    }

    else
    {
      v26 = *&a3;
    }

    [v24 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v27 = swift_allocObject();
    *(v27 + 32) = xmmword_18DD85500;
    *(v27 + 48) = 1065353216;
    *(v27 + 56) = 0x7FF8000000000000;
    v33 = v14;
    v34 = v13;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v28 = v24;

    *(v27 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v28, &v33);
    *(v27 + 24) = RBDisplayListGetState();
    *(v27 + 64) = 0;
    v33 = v27;
    a5(&v33, a6, a7);
    [v28 renderInContext:a1 options:0];
  }
}

uint64_t specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7, double a8, double a9, double a10)
{
  v10 = a7;
  v55 = *MEMORY[0x1E69E9840];
  v19 = HIDWORD(a7);
  v21 = *a2;
  v20 = *(a2 + 8);
  v51 = 0;
  v52 = 1.0;
  v22 = MEMORY[0x193AC3360](a1, &v52, &v51);
  if (!v22)
  {
    v37 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v37 setProfile_];
    [v37 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v37 setContentRect_];
    if (a4)
    {
      if (v20)
      {

        v38 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v21);

        v39 = v38;
      }

      else
      {
        v49 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v21);
        if (v49)
        {
          v39 = v49[9];
        }

        else
        {
          v39 = 1.0;
        }
      }
    }

    else
    {
      v39 = *&a3;
    }

    [v37 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v40 = swift_allocObject();
    *(v40 + 32) = xmmword_18DD85500;
    *(v40 + 48) = 1065353216;
    *(v40 + 56) = 0x7FF8000000000000;
    v53 = v21;
    v54 = v20;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v41 = v37;

    *(v40 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v41, &v53);
    *(v40 + 24) = RBDisplayListGetState();
    *(v40 + 64) = 0;
    v50 = v40;
    if (a8 == 0.0 && a9 == 0.0)
    {
      v42 = *(a5 + 8);
      if (v42)
      {
LABEL_19:
        v43 = *(v42 + 64);
        *(v42 + 72) = a10;
        *(v42 + 80) = 0x7FF0000000000000;
        v53 = a6;
        LOWORD(v54) = v10;
        HIDWORD(v54) = v19;

        v44 = *(v42 + 48);
        v45 = *(v42 + 56);
        DisplayList.GraphicsRenderer.render(list:in:)(&v53, &v50);
        swift_beginAccess();

        v46 = MEMORY[0x1E69E7CC8];
        *(v42 + 16) = MEMORY[0x1E69E7CC8];

        swift_beginAccess();
        v47 = *(v42 + 32);
        *(v42 + 32) = v46;
        *(v42 + 40) = v46;
        *(v42 + 16) = v47;
        swift_endAccess();
        *(v42 + 48) = v44;
        *(v42 + 56) = v45;
        *(v42 + 64) = v43;

        [v41 renderInContext:a1 options:0];
      }
    }

    else
    {
      GraphicsContext.copyOnWrite()();
      RBDrawingStateTranslateCTM();
      v42 = *(a5 + 8);
      if (v42)
      {
        goto LABEL_19;
      }
    }

    LOBYTE(v53) = *a5;
    type metadata accessor for DisplayList.GraphicsRenderer();
    swift_allocObject();
    v42 = DisplayList.GraphicsRenderer.init(platformViewMode:)(&v53);
    *(a5 + 8) = v42;
    goto LABEL_19;
  }

  v23 = v22;
  type metadata accessor for GraphicsContext.Storage();
  v24 = swift_allocObject();
  *(v24 + 32) = xmmword_18DD85500;
  *(v24 + 48) = 1065353216;
  *(v24 + 56) = 0x7FF8000000000000;
  v25 = RBDrawingStateGetDisplayList();
  v53 = v21;
  v54 = v20;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();

  v26 = GraphicsContext.Storage.Shared.init(list:environment:)(v25, &v53);
  v27 = 0;
  *(v24 + 16) = v26;
  *(v24 + 24) = v23;
  *(v24 + 64) = 0;
  v50 = v24;
  v28 = v52;
  if (v52 != 1.0)
  {
    GraphicsContext.copyOnWrite()();
    v29 = v50;
    *(v50 + 48) = v28;
    v27 = *(v29 + 52);
  }

  v30 = v51;
  if (v27 != v51)
  {
    GraphicsContext.copyOnWrite()();
    *(v50 + 52) = v30;
  }

  if (a8 != 0.0 || a9 != 0.0)
  {
    GraphicsContext.copyOnWrite()();
    RBDrawingStateTranslateCTM();
    v31 = *(a5 + 8);
    if (v31)
    {
      goto LABEL_9;
    }

LABEL_14:
    LOBYTE(v53) = *a5;
    type metadata accessor for DisplayList.GraphicsRenderer();
    swift_allocObject();
    v31 = DisplayList.GraphicsRenderer.init(platformViewMode:)(&v53);
    *(a5 + 8) = v31;
    goto LABEL_9;
  }

  v31 = *(a5 + 8);
  if (!v31)
  {
    goto LABEL_14;
  }

LABEL_9:
  v32 = *(v31 + 64);
  *(v31 + 72) = a10;
  *(v31 + 80) = 0x7FF0000000000000;
  v53 = a6;
  LOWORD(v54) = v10;
  HIDWORD(v54) = v19;

  v33 = *(v31 + 48);
  v34 = *(v31 + 56);
  DisplayList.GraphicsRenderer.render(list:in:)(&v53, &v50);
  swift_beginAccess();

  v35 = MEMORY[0x1E69E7CC8];
  *(v31 + 16) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v36 = *(v31 + 32);
  *(v31 + 32) = v35;
  *(v31 + 40) = v35;
  *(v31 + 16) = v36;
  swift_endAccess();
  *(v31 + 48) = v33;
  *(v31 + 56) = v34;
  *(v31 + 64) = v32;
}

void specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, uint64_t a2, uint64_t a3, char a4, void *a5, double a6, double a7, float a8)
{
  v35 = *MEMORY[0x1E69E9840];
  v16 = *a2;
  v15 = *(a2 + 8);
  v31 = 0;
  v32 = 1.0;
  v17 = MEMORY[0x193AC3360](a1, &v32, &v31);
  if (v17)
  {
    v18 = v17;
    type metadata accessor for GraphicsContext.Storage();
    inited = swift_initStackObject();
    *(inited + 32) = xmmword_18DD85500;
    *(inited + 48) = 1065353216;
    *(inited + 56) = 0x7FF8000000000000;
    v20 = RBDrawingStateGetDisplayList();
    v33 = v16;
    v34 = v15;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    *(inited + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v20, &v33);
    *(inited + 24) = v18;
    *(inited + 64) = 0;
    v33 = inited;
    v21 = v32;
    if (v32 != 1.0)
    {
      GraphicsContext.copyOnWrite()();
      inited = v33;
      v33[12] = v21;
    }

    v22 = v31;
    if (*(inited + 52) != v31)
    {
      GraphicsContext.copyOnWrite()();
      *(v33 + 13) = v22;
    }

    if (a6 != 0.0 || a7 != 0.0)
    {
      GraphicsContext.copyOnWrite()();
      RBDrawingStateTranslateCTM();
    }

    GraphicsContext.copyOnWrite()();
    *&v23 = a8;
    [a5 drawInState:*(v33 + 3) by:v23];
  }

  else
  {
    v24 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v24 setProfile_];
    [v24 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v24 setContentRect_];
    if (a4)
    {
      if (v15)
      {

        v25 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v16);

        v26 = v25;
      }

      else
      {
        v30 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v16);
        if (v30)
        {
          v26 = v30[9];
        }

        else
        {
          v26 = 1.0;
        }
      }
    }

    else
    {
      v26 = *&a3;
    }

    [v24 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v27 = swift_initStackObject();
    *(v27 + 32) = xmmword_18DD85500;
    *(v27 + 48) = 1065353216;
    *(v27 + 56) = 0x7FF8000000000000;
    v33 = v16;
    v34 = v15;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v28 = v24;

    *(v27 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v28, &v33);
    *(v27 + 24) = RBDisplayListGetState();
    *(v27 + 64) = 0;
    v33 = v27;
    if (a6 != 0.0 || a7 != 0.0)
    {
      GraphicsContext.copyOnWrite()();
      RBDrawingStateTranslateCTM();
    }

    GraphicsContext.copyOnWrite()();
    *&v29 = a8;
    [a5 drawInState:*(v33 + 3) by:v29];
    [v28 renderInContext:a1 options:0];
  }
}

uint64_t specialized GraphicsContext.drawLayer(flags:content:)(char a1, uint64_t a2, void *a3, CGFloat a4)
{
  v8 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  inited = swift_initStackObject();
  *(inited + 32) = xmmword_18DD85500;
  *(inited + 48) = 1065353216;
  *(inited + 56) = 0x7FF8000000000000;
  v10 = *(a2 + 16);
  v11 = *(v10 + 64);
  if (v11 == RBDrawingStateGetDefaultColorSpace())
  {
    *(inited + 16) = v10;
  }

  else
  {
    v17 = a3;
    v16 = RBDrawingStateGetDisplayList();
    v12 = *(a2 + 32);
    v13 = v12;
    v14 = *(a2 + 40);
    if (v12 == 1)
    {
      v13 = *(v10 + 48);
      v14 = *(v10 + 56);
    }

    v18[0] = v13;
    v18[1] = v14;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v12);
    *(inited + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v16, v18);
    a3 = v17;
  }

  *(inited + 24) = v8;
  *(inited + 64) = 0;
  if ((a1 & 0x20) != 0)
  {
    *(inited + 48) = *(a2 + 48);
    *(inited + 52) = *(a2 + 52);
  }

  v18[0] = inited;

  specialized closure #1 in DisplayList.GraphicsRenderer.drawPlatformLayer(_:in:size:update:)(v18, a3, a4);

  RBDrawingStateDrawLayer();
}

uint64_t specialized GraphicsContext.drawLayer(flags:content:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v8 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v9 = swift_allocObject();
  *(v9 + 32) = xmmword_18DD85500;
  *(v9 + 48) = 1065353216;
  *(v9 + 56) = 0x7FF8000000000000;
  v10 = *(a2 + 16);
  v11 = *(v10 + 64);
  if (v11 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v9 + 16) = v10;
  }

  else
  {
    v17 = a4;
    v16 = RBDrawingStateGetDisplayList();
    v12 = *(a2 + 32);
    v13 = v12;
    v14 = *(a2 + 40);
    if (v12 == 1)
    {
      v13 = *(v10 + 48);
      v14 = *(v10 + 56);
    }

    v19[0] = v13;
    v19[1] = v14;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v12);
    *(v9 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v16, v19);
    a4 = v17;
  }

  *(v9 + 24) = v8;
  *(v9 + 64) = 0;
  if ((a1 & 0x20) != 0)
  {
    *(v9 + 48) = *(a2 + 48);
    *(v9 + 52) = *(a2 + 52);
  }

  v19[0] = v9;

  closure #1 in closure #1 in SDFLayer.update(list:size:style:options:in:backdropGroupID:)(v19, a3, a4, v20 & 0xFFFFFFFF0000FFFFLL);

  RBDrawingStateDrawLayer();
}

uint64_t specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
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

    closure #1 in PaintShapeLayer.draw(in:)(&v29, a5);
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
    closure #1 in PaintShapeLayer.draw(in:)(&v29, a5);
    [v24 renderInContext:a1 options:0];
  }
}

void specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v9 = *(a2 + 8);
  v29 = 0;
  v30 = 1.0;
  v11 = MEMORY[0x193AC3360](a1, &v30, &v29);
  if (v11)
  {
    v12 = v11;
    type metadata accessor for GraphicsContext.Storage();
    v13 = swift_allocObject();
    *(v13 + 32) = xmmword_18DD85500;
    *(v13 + 48) = 1065353216;
    *(v13 + 56) = 0x7FF8000000000000;
    v14 = RBDrawingStateGetDisplayList();
    v31 = v10;
    v32 = v9;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    *(v13 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v14, &v31);
    *(v13 + 24) = v12;
    *(v13 + 64) = 0;
    v31 = v13;
    v15 = v30;
    if (v30 == 1.0)
    {
      v16 = 0;
    }

    else
    {
      GraphicsContext.copyOnWrite()();
      v20 = v31;
      v31[12] = v15;
      v16 = *(v20 + 52);
    }

    v21 = v29;
    if (v16 != v29)
    {
      GraphicsContext.copyOnWrite()();
      *(v31 + 13) = v21;
    }

    [a5 bounds];
    GraphicsContext.renderMissingPlatformView(size:)(__PAIR128__(v23, v22));
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v17 setProfile_];
    [v17 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v17 setContentRect_];
    if (a4)
    {
      if (v9)
      {

        v18 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10);

        v19 = v18;
      }

      else
      {
        v28 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v10);
        if (v28)
        {
          v19 = v28[9];
        }

        else
        {
          v19 = 1.0;
        }
      }
    }

    else
    {
      v19 = *&a3;
    }

    [v17 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v24 = swift_allocObject();
    *(v24 + 32) = xmmword_18DD85500;
    *(v24 + 48) = 1065353216;
    *(v24 + 56) = 0x7FF8000000000000;
    v31 = v10;
    v32 = v9;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v25 = v17;

    *(v24 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v25, &v31);
    *(v24 + 24) = RBDisplayListGetState();
    *(v24 + 64) = 0;
    [a5 bounds];
    GraphicsContext.renderMissingPlatformView(size:)(__PAIR128__(v27, v26));
    [v25 renderInContext:a1 options:0];
  }
}

void specialized closure #1 in GraphicsContext.withPlatformContext(content:)(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a2 + 56);
  v14 = (v13 & 0xFFFFFFFFFFFFFLL) == 0 || (~v13 & 0x7FF0000000000000) != 0;
  if (v14)
  {
    _CGContextSetShapeDistance(*(a2 + 56));
  }

  v15 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
  [v15 push];
  if (one-time initialization token for _textDrawingContext != -1)
  {
    swift_once();
  }

  v16 = static GraphicsContext.Storage.Shared._textDrawingContext;
  if (a3[27])
  {
    v17 = NSAttributedString.isDynamic.getter();
  }

  else
  {
    v17 = 0;
  }

  (*(*a3 + 296))(0, v17, v16, 0, a4, a5, a6, a7, a6, a7);
  [v15 pop];

  if (v14)
  {
    _CGContextSetShapeDistance(NAN);
  }
}

unint64_t lazy protocol witness table accessor for type GraphicsContext._ShapeRenderingMode and conformance GraphicsContext._ShapeRenderingMode()
{
  result = lazy protocol witness table cache variable for type GraphicsContext._ShapeRenderingMode and conformance GraphicsContext._ShapeRenderingMode;
  if (!lazy protocol witness table cache variable for type GraphicsContext._ShapeRenderingMode and conformance GraphicsContext._ShapeRenderingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext._ShapeRenderingMode and conformance GraphicsContext._ShapeRenderingMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions()
{
  result = lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.ClipOptions and conformance GraphicsContext.ClipOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions()
{
  result = lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.ShadowOptions and conformance GraphicsContext.ShadowOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions()
{
  result = lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.BlurOptions and conformance GraphicsContext.BlurOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions()
{
  result = lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.FilterOptions and conformance GraphicsContext.FilterOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions()
{
  result = lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.GradientOptions and conformance GraphicsContext.GradientOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions()
{
  result = lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions;
  if (!lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsContext.LayerOptions and conformance GraphicsContext.LayerOptions);
  }

  return result;
}

uint64_t assignWithCopy for PathDrawingStyle(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  outlined copy of PathDrawingStyle(*a2, v4, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  outlined consume of PathDrawingStyle(v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t assignWithTake for PathDrawingStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  outlined consume of PathDrawingStyle(v5, v7, v6, v8, v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for PathDrawingStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t assignWithCopy for GraphicsContext.Shading(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  outlined copy of GraphicsContext.Shading.Storage(*a2, v4, v5, v6, v7, v8, v9, v10, v11, *(a2 + 72));
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v23;
  outlined consume of GraphicsContext.Shading.Storage(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  return a1;
}

uint64_t assignWithTake for GraphicsContext.Shading(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  outlined consume of GraphicsContext.Shading.Storage(v5, v7, v6, v8, v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsContext.Shading(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 73))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 72);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphicsContext.Shading(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for GraphicsContext.Shading.Storage(uint64_t a1)
{
  if (*(a1 + 72) <= 9u)
  {
    return *(a1 + 72);
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t destructiveInjectEnumTag for GraphicsContext.Shading.Storage(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    LOBYTE(a2) = 10;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GraphicsContext.GradientGeometry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for GraphicsContext.GradientGeometry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for GraphicsContext.ResolvedShading(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);
  v27 = *(a2 + 96);
  v28 = *(a2 + 104);
  v29 = *(a2 + 112);
  v30 = *(a2 + 120);
  v31 = *(a2 + 128);
  v32 = *(a2 + 136);
  v33 = *(a2 + 144);
  v34 = *(a2 + 152);
  v35 = *(a2 + 160);
  outlined copy of GraphicsContext.ResolvedShading(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v24, v25, v26, v27, v28);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  *(a1 + 88) = v26;
  *(a1 + 96) = v27;
  *(a1 + 104) = v28;
  *(a1 + 112) = v29;
  *(a1 + 120) = v30;
  *(a1 + 128) = v31;
  *(a1 + 136) = v32;
  *(a1 + 144) = v33;
  *(a1 + 152) = v34;
  *(a1 + 160) = v35;
  outlined consume of GraphicsContext.ResolvedShading(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1));
  return a1;
}

uint64_t assignWithTake for GraphicsContext.ResolvedShading(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 160);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v14 = *(a1 + 96);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  v17 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v17;
  v18 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v18;
  v19 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v19;
  *(a1 + 160) = v3;
  outlined consume of GraphicsContext.ResolvedShading(v4, v6, v5, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1));
  return a1;
}

double storeEnumTagSinglePayload for GraphicsContext.ResolvedShading(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 168) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = (-a2 << 11) & 0xFC0000 | ((-a2 & 0x7FLL) << 9) & 0xFFFFE00003FFFFFFLL | ((-a2 >> 13) << 26);
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0;
      return result;
    }

    *(a1 + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for GraphicsContext.ResolvedImage(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 255)
  {
    outlined consume of GraphicsImage.Contents(*a1, v2);
  }

  if (*(a1 + 192) != 255)
  {
    outlined consume of GraphicsContext.Shading.Storage(*(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192));
  }
}

uint64_t initializeWithCopy for GraphicsContext.ResolvedImage(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  if (v4 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    *a1 = v5;
    *(a1 + 8) = v4;
  }

  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 52);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 112) = a2[14];
  v6 = *(a2 + 192);
  if (v6 == 255)
  {
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 168) = *(a2 + 21);
    *(a1 + 177) = *(a2 + 177);
    *(a1 + 120) = *(a2 + 15);
  }

  else
  {
    v7 = a2[15];
    v8 = a2[16];
    v17 = v7;
    v9 = a2[17];
    v10 = a2[18];
    v11 = a2[19];
    v12 = a2[20];
    v13 = a2[21];
    v14 = a2[22];
    v15 = a2[23];
    outlined copy of GraphicsContext.Shading.Storage(v7, v8, v9, v10, v11, v12, v13, v14, v15, v6);
    *(a1 + 120) = v17;
    *(a1 + 128) = v8;
    *(a1 + 136) = v9;
    *(a1 + 144) = v10;
    *(a1 + 152) = v11;
    *(a1 + 160) = v12;
    *(a1 + 168) = v13;
    *(a1 + 176) = v14;
    *(a1 + 184) = v15;
    *(a1 + 192) = v6;
  }

  return a1;
}

uint64_t assignWithCopy for GraphicsContext.ResolvedImage(uint64_t a1, uint64_t a2)
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
  *(a1 + 112) = *(a2 + 112);
  v14 = *(a2 + 192);
  if (*(a1 + 192) == 255)
  {
    if (v14 == 255)
    {
      *(a1 + 120) = *(a2 + 120);
      v46 = *(a2 + 136);
      v47 = *(a2 + 152);
      v48 = *(a2 + 168);
      *(a1 + 177) = *(a2 + 177);
      *(a1 + 168) = v48;
      *(a1 + 152) = v47;
      *(a1 + 136) = v46;
    }

    else
    {
      v34 = *(a2 + 120);
      v35 = *(a2 + 128);
      v51 = v34;
      v36 = *(a2 + 136);
      v37 = *(a2 + 144);
      v38 = *(a2 + 152);
      v39 = *(a2 + 160);
      v40 = *(a2 + 168);
      v41 = *(a2 + 176);
      v42 = *(a2 + 184);
      outlined copy of GraphicsContext.Shading.Storage(v34, v35, v36, v37, v38, v39, v40, v41, v42, v14);
      *(a1 + 120) = v51;
      *(a1 + 128) = v35;
      *(a1 + 136) = v36;
      *(a1 + 144) = v37;
      *(a1 + 152) = v38;
      *(a1 + 160) = v39;
      *(a1 + 168) = v40;
      *(a1 + 176) = v41;
      *(a1 + 184) = v42;
      *(a1 + 192) = v14;
    }
  }

  else if (v14 == 255)
  {
    outlined destroy of GraphicsContext.Shading(a1 + 120);
    *(a1 + 120) = *(a2 + 120);
    v43 = *(a2 + 152);
    v44 = *(a2 + 168);
    v45 = *(a2 + 177);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 177) = v45;
    *(a1 + 168) = v44;
    *(a1 + 152) = v43;
  }

  else
  {
    v15 = *(a2 + 120);
    v16 = *(a2 + 128);
    v50 = v15;
    v17 = *(a2 + 136);
    v18 = *(a2 + 144);
    v19 = *(a2 + 152);
    v20 = *(a2 + 160);
    v21 = *(a2 + 168);
    v22 = *(a2 + 176);
    v23 = *(a2 + 184);
    outlined copy of GraphicsContext.Shading.Storage(v15, v16, v17, v18, v19, v20, v21, v22, v23, v14);
    v24 = *(a1 + 120);
    v25 = *(a1 + 128);
    v26 = *(a1 + 136);
    v27 = *(a1 + 144);
    v28 = *(a1 + 152);
    v29 = *(a1 + 160);
    v30 = *(a1 + 168);
    v31 = *(a1 + 176);
    v32 = *(a1 + 184);
    v33 = *(a1 + 192);
    *(a1 + 120) = v50;
    *(a1 + 128) = v16;
    *(a1 + 136) = v17;
    *(a1 + 144) = v18;
    *(a1 + 152) = v19;
    *(a1 + 160) = v20;
    *(a1 + 168) = v21;
    *(a1 + 176) = v22;
    *(a1 + 184) = v23;
    *(a1 + 192) = v14;
    outlined consume of GraphicsContext.Shading.Storage(v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  }

  return a1;
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t assignWithTake for GraphicsContext.ResolvedImage(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != 255)
  {
    v5 = *(a2 + 8);
    if (v5 != 255)
    {
      v6 = *a1;
      *a1 = *a2;
      *(a1 + 8) = v5;
      outlined consume of GraphicsImage.Contents(v6, v4);
      goto LABEL_6;
    }

    outlined destroy of GraphicsImage.Contents(a1);
  }

  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
LABEL_6:
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 112) = *(a2 + 112);
  v7 = *(a1 + 192);
  if (v7 == 255)
  {
LABEL_10:
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 177) = *(a2 + 177);
    *(a1 + 120) = *(a2 + 120);
    return a1;
  }

  v8 = *(a2 + 192);
  if (v8 == 255)
  {
    outlined destroy of GraphicsContext.Shading(a1 + 120);
    goto LABEL_10;
  }

  v9 = *(a2 + 184);
  v10 = *(a1 + 120);
  v11 = *(a1 + 128);
  v12 = *(a1 + 136);
  v13 = *(a1 + 144);
  v14 = *(a1 + 152);
  v15 = *(a1 + 160);
  v16 = *(a1 + 168);
  v17 = *(a1 + 176);
  v18 = *(a1 + 184);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = v9;
  *(a1 + 192) = v8;
  outlined consume of GraphicsContext.Shading.Storage(v10, v11, v12, v13, v14, v15, v16, v17, v18, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsContext.ResolvedImage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 193))
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

uint64_t storeEnumTagSinglePayload for GraphicsContext.ResolvedImage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      *(result + 105) = a2 + 1;
    }
  }

  return result;
}

void *destroy for GraphicsContext.ResolvedText(uint64_t a1)
{

  return outlined consume of GraphicsContext.Shading.Storage(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
}

uint64_t initializeWithCopy for GraphicsContext.ResolvedText(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v14 = *(a2 + 72);
  v15 = *(a2 + 16);
  v10 = *(a2 + 80);
  v11 = *(a2 + 88);

  outlined copy of GraphicsContext.Shading.Storage(v15, v4, v5, v6, v7, v8, v9, v14, v10, v11);
  *(a1 + 16) = v15;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v14;
  *(a1 + 80) = v10;
  *(a1 + 88) = v13;
  return a1;
}

uint64_t assignWithCopy for GraphicsContext.ResolvedText(uint64_t a1, void *a2)
{
  v2 = a2;
  *a1 = *a2;

  *(a1 + 8) = v2[1];

  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = v2[9];
  v23 = v2[10];
  LOBYTE(v2) = *(v2 + 88);
  outlined copy of GraphicsContext.Shading.Storage(v4, v5, v6, v7, v8, v9, v10, v11, v23, v2);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = v23;
  *(a1 + 88) = v2;
  outlined consume of GraphicsContext.Shading.Storage(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  return a1;
}

uint64_t assignWithTake for GraphicsContext.ResolvedText(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 80);
  v5 = *(a2 + 88);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v16;
  v17 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v17;
  *(a1 + 80) = v4;
  *(a1 + 88) = v5;
  outlined consume of GraphicsContext.Shading.Storage(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsContext.ResolvedText(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t storeEnumTagSinglePayload for GraphicsContext.ResolvedText(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *assignWithCopy for GraphicsContext.ResolvedSymbol(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1;
}

uint64_t assignWithTake for GraphicsContext.ResolvedSymbol(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithCopy for GraphicsContext.Filter(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v23 = *(a2 + 72);
  v24 = *(a2 + 80);
  outlined copy of GraphicsContext.Filter.Storage(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v23, v24);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v23;
  *(a1 + 80) = v24;
  outlined consume of GraphicsContext.Filter.Storage(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21);
  return a1;
}

uint64_t assignWithTake for GraphicsContext.Filter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v14 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v14;
  v15 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v15;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  outlined consume of GraphicsContext.Filter.Storage(v4, v6, v5, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsContext.Filter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0xFFFFFE6 && *(a1 + 88))
  {
    return (*a1 + 268435431);
  }

  if ((((*(a1 + 80) >> 27) & 0xF000001F | (32 * ((*(a1 + 80) >> 4) & 0x7FFFFF))) ^ 0xFFFFFFF) >= 0xFFFFFE6)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*(a1 + 80) >> 27) & 0xF000001F | (32 * ((*(a1 + 80) >> 4) & 0x7FFFFF))) ^ 0xFFFFFFF;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GraphicsContext.Filter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0xFFFFFE7)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 268435431;
    if (a3 > 0xFFFFFE6)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 > 0xFFFFFE6)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 80) = 16 * ((-a2 >> 5) & 0x7FFFFF) - (a2 << 27);
    }
  }

  return result;
}

uint64_t getEnumTag for GraphicsContext.Filter.Storage(_DWORD *a1)
{
  v1 = a1[20] >> 27;
  if (v1 <= 0x18)
  {
    return v1;
  }

  else
  {
    return (*a1 + 25);
  }
}

uint64_t destructiveInjectEnumTag for GraphicsContext.Filter.Storage(uint64_t result, unsigned int a2)
{
  if (a2 < 0x19)
  {
    *(result + 80) = *(result + 80) & 0xFFFFFFFF0000000FLL | (a2 << 27);
  }

  else
  {
    *result = a2 - 25;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    *(result + 80) = 3355443200;
  }

  return result;
}

unint64_t type metadata accessor for NSStringDrawingContext()
{
  result = lazy cache variable for type metadata for NSStringDrawingContext;
  if (!lazy cache variable for type metadata for NSStringDrawingContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSStringDrawingContext);
  }

  return result;
}

uint64_t outlined consume of ResolvedMulticolorStyle?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return MEMORY[0x1EEE66C30]();
  }

  return result;
}

uint64_t partial apply for closure #2 in withGradient(_:in:do:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 24))
  {
    if (*(v2 + 24) == 1)
    {
      if (*(v2 + 33))
      {
        v3 = 576;
      }

      else
      {
        v3 = 64;
      }
    }

    else if (*(v2 + 33))
    {
      v3 = 704;
    }

    else
    {
      v3 = 192;
    }
  }

  else if (*(v2 + 33))
  {
    v3 = 640;
  }

  else
  {
    v3 = 128;
  }

  *(&v4 + 1) = *(v2 + 32);
  *&v4 = *(v2 + 28) << 32;
  return (*(v2 + 40))(*(v2 + 56), a1, v4 >> 32, a2, v3);
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GraphicsContext.Filter.ResolvedShadow(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 60))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GraphicsContext.Filter.ResolvedShadow(uint64_t result, int a2, int a3)
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

  *(result + 60) = v3;
  return result;
}

uint64_t initializeWithCopy for GraphicsContext.Filter.Shadow(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for GraphicsContext.Filter.Shadow(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

uint64_t assignWithTake for GraphicsContext.Filter.Shadow(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  return a1;
}

__C::CGRect __swiftcall CGSize.centeredIn(_:)(CGSize a1)
{
  v3 = (a1.width - v1) * 0.5 + 0.0;
  v4 = (a1.height - v2) * 0.5 + 0.0;
  result.size.height = v2;
  result.size.width = v1;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

Swift::Int ContentMode.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t _AspectRatioLayout.aspectRatio.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

double CGSize.scaleThatFits(_:)(uint64_t a1, double a2, double a3)
{
  if ((*(a1 + 8) & 1) != 0 || (v3 = *a1, a2 == 0.0) && v3 == 0.0)
  {
    result = INFINITY;
    if (*(a1 + 24))
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = v3 / a2;
    if (*(a1 + 24))
    {
LABEL_9:
      v6 = INFINITY;
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 16);
  if (a3 == 0.0 && v5 == 0.0)
  {
    goto LABEL_9;
  }

  v6 = v5 / a3;
LABEL_11:
  if (v6 < result)
  {
    return v6;
  }

  return result;
}

double CGSize.scaleThatFills(_:)(uint64_t a1, double a2, double a3)
{
  if ((*(a1 + 8) & 1) != 0 || (v3 = *a1, a2 == 0.0) && v3 == 0.0)
  {
    result = -INFINITY;
    if (*(a1 + 24))
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = v3 / a2;
    if (*(a1 + 24))
    {
LABEL_9:
      v6 = -INFINITY;
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 16);
  if (a3 == 0.0 && v5 == 0.0)
  {
    goto LABEL_9;
  }

  v6 = v5 / a3;
LABEL_11:
  if (result <= v6)
  {
    return v6;
  }

  return result;
}

__C::CGRect __swiftcall CGSize.centeredIn(_:)(__C::CGRect a1)
{
  v3 = (a1.size.width - v1) * 0.5 + a1.origin.x;
  v4 = (a1.size.height - v2) * 0.5 + a1.origin.y;
  v5 = v1;
  v6 = v2;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

uint64_t View.aspectRatio(_:contentMode:)(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v5 = a1;
  v6 = a2 & 1;
  v7 = a3 & 1;
  return View.modifier<A>(_:)(&v5, a4, &type metadata for _AspectRatioLayout);
}

uint64_t View.aspectRatio(_:contentMode:)(char a1, uint64_t a2, double a3, double a4)
{
  v5 = a3 / a4;
  v6 = 0;
  v7 = a1 & 1;
  return View.modifier<A>(_:)(&v5, a2, &type metadata for _AspectRatioLayout);
}

uint64_t View.scaledToFit()(uint64_t a1)
{
  v2 = 0;
  v3 = 1;
  return View.modifier<A>(_:)(&v2, a1, &type metadata for _AspectRatioLayout);
}

uint64_t View.scaledToFill()(uint64_t a1)
{
  v2 = 0;
  v3 = 257;
  return View.modifier<A>(_:)(&v2, a1, &type metadata for _AspectRatioLayout);
}

unint64_t lazy protocol witness table accessor for type ContentMode and conformance ContentMode()
{
  result = lazy protocol witness table cache variable for type ContentMode and conformance ContentMode;
  if (!lazy protocol witness table cache variable for type ContentMode and conformance ContentMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentMode and conformance ContentMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ContentMode] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ContentMode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ContentMode] and conformance [A])
  {
    type metadata accessor for [ContentMode]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ContentMode] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [ContentMode]()
{
  if (!lazy cache variable for type metadata for [ContentMode])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ContentMode]);
    }
  }
}

uint64_t getEnumTagSinglePayload for _AspectRatioLayout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _AspectRatioLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

CAFrameRateRange __swiftcall CAFrameRateRange.init(interval:)(Swift::Double interval)
{
  if (interval == 0.0)
  {
    goto LABEL_2;
  }

  v4 = interval;
  v5 = roundf(1.0 / v4);
  if (v5 <= 40.0)
  {
    v6 = LODWORD(v5);
    v7 = 60.0;
    goto LABEL_7;
  }

  if (v5 >= 80.0)
  {
    v6 = LODWORD(v5);
    v7 = v5;
    v5 = 80.0;
LABEL_7:
    *&v1 = CAFrameRateRange.init(minimum:maximum:preferred:)(v5, v7, v6);
    goto LABEL_8;
  }

LABEL_2:
  v1 = *MEMORY[0x1E69792B8];
  v2 = *(MEMORY[0x1E69792B8] + 4);
  v3 = *(MEMORY[0x1E69792B8] + 8);
LABEL_8:
  result.preferred = v3;
  result.maximum = v2;
  result.minimum = v1;
  return result;
}

void VariableBlurStyle.Mask.setCAFilterInput(of:)(void *a1)
{
  v3 = *(v1 + 104) >> 30;
  if (v3)
  {
    if (v3 == 1 && (*v1 & 0x8000000000000000) == 0)
    {
      v4 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v4);

      v5 = MEMORY[0x193ABEC20](64, 0xE100000000000000);

      _CAFilterSetInput(a1, v5, 23);
    }
  }

  else
  {
    v6 = *(v1 + 16);
    v7 = *(v1 + 40);
    v8 = 0.0;
    v9 = 0.0;
    if (v6 != 0.0)
    {
      v10 = *(v1 + 24);
      if (v7 <= 3u)
      {
        v11 = *(v1 + 32);
      }

      else
      {
        v11 = *(v1 + 24);
      }

      if (v7 > 3u)
      {
        v10 = *(v1 + 32);
      }

      v8 = 1.0 / v6 * v10;
      v9 = 1.0 / v6 * v11;
    }

    v12.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(*&v9, *&v8), 0).value;
    if (v12.value)
    {
      value = v12.value;
      _CAFilterSetInput(a1, v12.value, 15);
    }
  }
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE16InputColorMatrixO_Ttg5(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (specialized static _ColorMatrix.== infix(_:_:)(a3, a2))
  {
    return;
  }

  v6 = v3[1];
  v7 = objc_opt_self();
  v8 = a3[1];
  v30[0] = *a3;
  v30[1] = v8;
  v9 = a3[3];
  v30[2] = a3[2];
  v30[3] = v9;
  v30[4] = a3[4];
  v10 = [v7 valueWithCAColorMatrix_];
  if (!v10)
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  *&v30[0] = 0;
  *(&v30[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  *&v30[0] = 0x2E737265746C6966;
  *(&v30[0] + 1) = 0xEF287865646E6940;
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v12);

  MEMORY[0x193ABEDD0](11817, 0xE200000000000000);
  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD7A4B0);
  v13 = v30[0];
  v14 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v30[0] = *(v6 + 40);
  v16 = *&v30[0];
  *(v6 + 40) = 0x8000000000000000;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
  v19 = *(v16 + 2);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (!__OFADD__(v19, v20))
  {
    v22 = v17;
    if (*(v16 + 3) >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v16 = *&v30[0];
      }

LABEL_9:
      *(v6 + 40) = v16;

      v25 = *(v6 + 40);
      if ((v22 & 1) == 0)
      {
        specialized _NativeDictionary._insert(at:key:value:)(v18, v14, MEMORY[0x1E69E7CC0], *(v6 + 40));
      }

      v4 = *(v25 + 56);
      v16 = *(v4 + 8 * v18);
      v11 = v11;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 8 * v18) = v16;
      if (v26)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
    v16 = *&v30[0];
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
    if ((v22 & 1) == (v24 & 1))
    {
      v18 = v23;
      goto LABEL_9;
    }

LABEL_19:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  __break(1u);
LABEL_17:
  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
  *(v4 + 8 * v18) = v16;
LABEL_12:
  v28 = *(v16 + 2);
  v27 = *(v16 + 3);
  if (v28 >= v27 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v16);
    *(v4 + 8 * v18) = v16;
  }

  *(v16 + 2) = v28 + 1;
  v29 = &v16[32 * v28];
  *(v29 + 2) = v13;
  *(v29 + 6) = v11;
  v29[56] = 1;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE10InputColorO_Ttg5(uint64_t a1, float *a2, uint64_t a3)
{
  if (*a3 != *a2 || (*(a3 + 4) == a2[1] ? (v5 = *(a3 + 8) == a2[2]) : (v5 = 0), v5 ? (v6 = *(a3 + 12) == a2[3]) : (v6 = 0), !v6 || *(a3 + 16) != a2[4]))
  {
    v7 = v3[1];
    if (one-time initialization token for cache != -1)
    {
      v26 = a3;
      swift_once();
      a3 = v26;
    }

    v8 = specialized ObjectCache.subscript.getter(a3);
    _StringGuts.grow(_:)(21);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v9);

    MEMORY[0x193ABEDD0](11817, 0xE200000000000000);
    MEMORY[0x193ABEDD0](0x6C6F437475706E69, 0xEA0000000000726FLL);
    v10 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v7 + 40);
    *(v7 + 40) = 0x8000000000000000;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
    v15 = *(v12 + 2);
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      __break(1u);
    }

    else
    {
      v18 = v13;
      if (*(v12 + 3) >= v17)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
        if ((v18 & 1) != (v20 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v14 = v19;
      }

      *(v7 + 40) = v12;

      v21 = *(v7 + 40);
      if ((v18 & 1) == 0)
      {
        specialized _NativeDictionary._insert(at:key:value:)(v14, v10, MEMORY[0x1E69E7CC0], *(v7 + 40));
      }

      v4 = *(v21 + 56);
      v12 = *(v4 + 8 * v14);
      v8 = v8;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 8 * v14) = v12;
      if (v22)
      {
        goto LABEL_22;
      }
    }

    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    *(v4 + 8 * v14) = v12;
LABEL_22:
    v24 = *(v12 + 2);
    v23 = *(v12 + 3);
    if (v24 >= v23 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v12);
      *(v4 + 8 * v14) = v12;
    }

    *(v12 + 2) = v24 + 1;
    v25 = &v12[32 * v24];
    *(v25 + 4) = 0x2E737265746C6966;
    *(v25 + 5) = 0xEF287865646E6940;
    *(v25 + 6) = v8;
    v25[56] = 1;
  }
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE11InputRadiusO_Ttg5Tm(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a1)
  {
    return;
  }

  v8 = v5[1];
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  _StringGuts.grow(_:)(21);

  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v11;
  MEMORY[0x193ABEDD0](v10);

  MEMORY[0x193ABEDD0](11817, 0xE200000000000000);
  MEMORY[0x193ABEDD0](a4, a5);
  v13 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v8 + 40);
  *(v8 + 40) = 0x8000000000000000;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  v18 = *(v15 + 2);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
  }

  else
  {
    v21 = v16;
    if (*(v15 + 3) >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if ((v21 & 1) != (v23 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v17 = v22;
    }

    *(v8 + 40) = v15;

    v24 = *(v8 + 40);
    if ((v21 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v17, v13, MEMORY[0x1E69E7CC0], *(v8 + 40));
    }

    v12 = *(v24 + 56);
    v15 = *(v12 + 8 * v17);
    v9 = v9;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + 8 * v17) = v15;
    if (v25)
    {
      goto LABEL_11;
    }
  }

  v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
  *(v12 + 8 * v17) = v15;
LABEL_11:
  v27 = *(v15 + 2);
  v26 = *(v15 + 3);
  if (v27 >= v26 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v15);
    *(v12 + 8 * v17) = v15;
  }

  *(v15 + 2) = v27 + 1;
  v28 = &v15[32 * v27];
  *(v28 + 4) = 0x2E737265746C6966;
  *(v28 + 5) = 0xEF287865646E6940;
  *(v28 + 6) = v9;
  v28[56] = 1;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE11InputAmountO_Ttg5Tm(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a1)
  {
    return;
  }

  v9 = v5[1];
  v10 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v11 = a2;
  v12 = [v10 initWithFloat_];
  _StringGuts.grow(_:)(21);

  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  v15 = v14;
  MEMORY[0x193ABEDD0](v13);

  MEMORY[0x193ABEDD0](11817, 0xE200000000000000);
  MEMORY[0x193ABEDD0](a4, a5);
  v16 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v9 + 40);
  *(v9 + 40) = 0x8000000000000000;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
  v21 = *(v18 + 2);
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
  }

  else
  {
    v24 = v19;
    if (*(v18 + 3) >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      if ((v24 & 1) != (v26 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v20 = v25;
    }

    *(v9 + 40) = v18;

    v27 = *(v9 + 40);
    if ((v24 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v20, v16, MEMORY[0x1E69E7CC0], *(v9 + 40));
    }

    v15 = *(v27 + 56);
    v18 = *(v15 + 8 * v20);
    v12 = v12;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 8 * v20) = v18;
    if (v28)
    {
      goto LABEL_11;
    }
  }

  v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
  *(v15 + 8 * v20) = v18;
LABEL_11:
  v30 = *(v18 + 2);
  v29 = *(v18 + 3);
  if (v30 >= v29 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v18);
    *(v15 + 8 * v20) = v18;
  }

  *(v18 + 2) = v30 + 1;
  v31 = &v18[32 * v30];
  *(v31 + 4) = 0x2E737265746C6966;
  *(v31 + 5) = 0xEF287865646E6940;
  *(v31 + 6) = v12;
  v31[56] = 1;
}

void specialized static GraphicsFilter.updateAsync(layer:oldFilters:newFilters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3 == *(a3 + 16) && v3)
  {
    v4 = 0;
    v5 = (a2 + 32);
    v6 = (a3 + 32);
    while (2)
    {
      v7 = v5[5];
      v75[4] = v5[4];
      v75[5] = v7;
      v76[0] = v5[6];
      *(v76 + 12) = *(v5 + 108);
      v8 = v5[1];
      v75[0] = *v5;
      v75[1] = v8;
      v9 = v5[3];
      v75[2] = v5[2];
      v75[3] = v9;
      if (v3 != v4)
      {
        v10 = v6[3];
        v11 = v6[5];
        v81 = v6[4];
        v82 = v11;
        v12 = v6[5];
        v83[0] = v6[6];
        *(v83 + 12) = *(v6 + 108);
        v13 = v6[1];
        v77 = *v6;
        v78 = v13;
        v14 = v6[3];
        v16 = *v6;
        v15 = v6[1];
        v79 = v6[2];
        v80 = v14;
        v17 = *v5;
        v18 = v5[1];
        v19 = v5[3];
        v84[2] = v5[2];
        v84[3] = v19;
        v20 = v5[1];
        v21 = v5[2];
        v22 = *v5;
        v84[0] = v17;
        v84[1] = v20;
        *(v87 + 12) = *(v5 + 108);
        v23 = v5[5];
        v87[0] = v5[6];
        v24 = v5[3];
        v25 = v5[5];
        v85 = v5[4];
        v86 = v25;
        v87[4] = v79;
        v87[5] = v10;
        v87[2] = v16;
        v87[3] = v15;
        *(v88 + 12) = *(v6 + 108);
        v26 = v6[6];
        v87[7] = v12;
        v88[0] = v26;
        v87[6] = v81;
        v89[2] = v21;
        v89[3] = v24;
        v89[0] = v22;
        v89[1] = v18;
        v27 = v5[6];
        *(v90 + 12) = *(v5 + 108);
        v89[5] = v23;
        v90[0] = v27;
        v89[4] = v85;
        switch(_s7SwiftUI14GraphicsFilterOWOg(v89))
        {
          case 0u:
            v28 = _s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v29 = *v28;
            v30 = *(v28 + 8);
            v72 = v81;
            v73 = v82;
            v74[0] = v83[0];
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v70 = v79;
            v71 = v80;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68))
            {
              goto LABEL_38;
            }

            v31 = _s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            if (v30 != *(v31 + 8))
            {
              goto LABEL_39;
            }

            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE11InputRadiusO_Ttg5Tm(v29, *v31, v4, 0x6461527475706E69, 0xEB00000000737569);
            goto LABEL_5;
          case 4u:
            _s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v72 = v81;
            v73 = v82;
            v74[0] = v83[0];
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v70 = v79;
            v71 = v80;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 4)
            {
              goto LABEL_38;
            }

            goto LABEL_42;
          case 5u:
            _s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v72 = v81;
            v73 = v82;
            v74[0] = v83[0];
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v70 = v79;
            v71 = v80;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 5)
            {
              goto LABEL_38;
            }

LABEL_42:
            _s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            outlined init with copy of GraphicsFilter(v75, &v68);
            outlined init with copy of GraphicsFilter(&v77, &v68);
            outlined destroy of (GraphicsFilter, GraphicsFilter)(v84);
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            break;
          case 6u:
            v47 = _s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v72 = v81;
            v73 = v82;
            v74[0] = v83[0];
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v70 = v79;
            v71 = v80;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 6)
            {
              goto LABEL_38;
            }

            v48 = _s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            v49 = *(v47 + 48);
            v91[2] = *(v47 + 32);
            v91[3] = v49;
            v50 = *(v47 + 64);
            v51 = *(v47 + 16);
            v91[0] = *v47;
            v91[1] = v51;
            v52 = *(v47 + 80);
            v53 = *(v48 + 48);
            v92[2] = *(v48 + 32);
            v92[3] = v53;
            v92[4] = *(v48 + 64);
            v54 = *v48;
            v92[1] = *(v48 + 16);
            v91[4] = v50;
            v92[0] = v54;
            if (v52 != *(v48 + 80))
            {
              goto LABEL_39;
            }

            v44 = v91;
            v45 = v92;
            goto LABEL_27;
          case 7u:
            v32 = _s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v33 = *(v32 + 16);
            v93 = *v32;
            v94 = v33;
            v70 = v79;
            v71 = v80;
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v73 = v82;
            v74[0] = v83[0];
            v72 = v81;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 7)
            {
              goto LABEL_38;
            }

            v34 = _s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            v35 = *(v34 + 16);
            v95 = *v34;
            v96 = v35;
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE10InputColorO_Ttg5(v4, &v93, &v95);
            goto LABEL_5;
          case 9u:
            v36 = *_s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v70 = v79;
            v71 = v80;
            v68 = v77;
            v69 = v78;
            *(v74 + 12) = *(v83 + 12);
            v73 = v82;
            v74[0] = v83[0];
            v72 = v81;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 9)
            {
              goto LABEL_38;
            }

            v37 = _s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE11InputRadiusO_Ttg5Tm(v36, *v37, v4, 0x676E417475706E69, 0xEA0000000000656CLL);
            goto LABEL_5;
          case 0xAu:
            v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v70 = v79;
            v71 = v80;
            v68 = v77;
            v69 = v78;
            *(v74 + 12) = *(v83 + 12);
            v73 = v82;
            v74[0] = v83[0];
            v72 = v81;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 10)
            {
              goto LABEL_38;
            }

            goto LABEL_31;
          case 0xBu:
            v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v70 = v79;
            v71 = v80;
            v68 = v77;
            v69 = v78;
            *(v74 + 12) = *(v83 + 12);
            v73 = v82;
            v74[0] = v83[0];
            v72 = v81;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 11)
            {
              goto LABEL_38;
            }

            goto LABEL_31;
          case 0xCu:
            v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v70 = v79;
            v71 = v80;
            v68 = v77;
            v69 = v78;
            *(v74 + 12) = *(v83 + 12);
            v73 = v82;
            v74[0] = v83[0];
            v72 = v81;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 12)
            {
              goto LABEL_38;
            }

            goto LABEL_31;
          case 0xDu:
            v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v70 = v79;
            v71 = v80;
            v68 = v77;
            v69 = v78;
            *(v74 + 12) = *(v83 + 12);
            v73 = v82;
            v74[0] = v83[0];
            v72 = v81;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 13)
            {
              goto LABEL_38;
            }

LABEL_31:
            v55 = *_s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            outlined init with copy of GraphicsFilter(v75, &v68);
            outlined init with copy of GraphicsFilter(&v77, &v68);
            outlined destroy of (GraphicsFilter, GraphicsFilter)(v84);
            v56 = v46;
            v57 = v55;
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE11InputAmountO_Ttg5Tm(v56, v57, v4, 0x6F6D417475706E69, 0xEB00000000746E75);
            goto LABEL_6;
          case 0xEu:
            v58 = _s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v59 = *v58;
            v61 = *(v58 + 16);
            v60 = *(v58 + 20);
            v62 = *(v58 + 24);
            v70 = v79;
            v71 = v80;
            v67 = v59;
            v68 = v77;
            v69 = v78;
            *(v74 + 12) = *(v83 + 12);
            v73 = v82;
            v74[0] = v83[0];
            v72 = v81;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 14)
            {
              goto LABEL_38;
            }

            v63 = _s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            v64 = *(v63 + 16);
            v65 = *(v63 + 20);
            v66 = *(v63 + 24);
            v97 = v67;
            v98 = v61;
            v99 = *v63;
            v100 = v64;
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE10InputColorO_Ttg5(v4, &v97, &v99);
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE11InputAmountO_Ttg5Tm(v60, v65, v4, 0x6F6D417475706E69, 0xEB00000000746E75);
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE11InputAmountO_Ttg5Tm(v62, v66, v4, 0x6169427475706E69, 0xE900000000000073);
            goto LABEL_5;
          case 0xFu:
            v38 = _s7SwiftUI14GraphicsFilterOWOj6_(v89);
            v72 = v81;
            v73 = v82;
            v74[0] = v83[0];
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v70 = v79;
            v71 = v80;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 15)
            {
              goto LABEL_38;
            }

            v39 = _s7SwiftUI14GraphicsFilterOWOj6_(&v68);
            if (*(v38 + 84) != *(v39 + 84) || *(v38 + 80) != *(v39 + 80))
            {
              goto LABEL_39;
            }

            v40 = *(v38 + 48);
            v101[2] = *(v38 + 32);
            v101[3] = v40;
            v101[4] = *(v38 + 64);
            v41 = *v38;
            v101[1] = *(v38 + 16);
            v101[0] = v41;
            v42 = *(v39 + 48);
            v102[2] = *(v39 + 32);
            v102[3] = v42;
            v102[4] = *(v39 + 64);
            v43 = *(v39 + 16);
            v102[0] = *v39;
            v102[1] = v43;
            v44 = v101;
            v45 = v102;
LABEL_27:
            _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV17updateFilterValue_2at4from2toyxm_Si0K0QzAMtAA01_cd1_ef1_gH8PropertyRzSQAMRQlFAE16InputColorMatrixO_Ttg5(v4, v44, v45);
LABEL_5:
            outlined destroy of (GraphicsFilter, GraphicsFilter)(v84);
LABEL_6:
            ++v4;
            v5 += 8;
            v6 += 8;
            if (v3 != v4)
            {
              continue;
            }

            return;
          case 0x18u:
            v72 = v81;
            v73 = v82;
            v74[0] = v83[0];
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v70 = v79;
            v71 = v80;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) == 24)
            {
              goto LABEL_5;
            }

            goto LABEL_38;
          case 0x19u:
            v72 = v81;
            v73 = v82;
            v74[0] = v83[0];
            *(v74 + 12) = *(v83 + 12);
            v68 = v77;
            v69 = v78;
            v70 = v79;
            v71 = v80;
            if (_s7SwiftUI14GraphicsFilterOWOg(&v68) != 25)
            {
              goto LABEL_38;
            }

            goto LABEL_5;
          default:
LABEL_38:
            outlined init with copy of GraphicsFilter(v75, &v68);
            outlined init with copy of GraphicsFilter(&v77, &v68);
LABEL_39:
            outlined destroy of (GraphicsFilter, GraphicsFilter)(v84);
            return;
        }
      }

      break;
    }

    __break(1u);
  }
}

unint64_t specialized EffectAnimation.init(from:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  return _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV08RotationD0V_Tt1g5Tm(a1, a2);
}

{
  return _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV06OffsetD0V_Tt1g5Tm(a1, a2);
}

{
  return sub_18D3AF000(a1, a2);
}

unint64_t _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV08RotationD0V_Tt1g5Tm@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 1;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    v15 = 0;
    while (1)
    {
      result = *(a1 + 24);
      if (result)
      {
        v20 = *(a1 + 32);
        if (v5 < v20)
        {
          goto LABEL_15;
        }

        if (v20 < v5)
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
      v21 = result >> 3;
      v22 = result & 7;
      if (result >> 3 == 3)
      {
        if (v22 != 2)
        {
          goto LABEL_4;
        }

        v37 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
        }

        v3 = *(v37 + 2);
        v38 = *(v37 + 3);
        if (v3 >= v38 >> 1)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v3 + 1, 1, v37);
        }

        *(v37 + 2) = v3 + 1;
        *&v37[8 * v3 + 32] = v6;
        *(a1 + 40) = v37;
        v39 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (v39 < 0)
        {
          goto LABEL_86;
        }

        v40 = *(a1 + 8) + v39;
        if (v6 < v40)
        {
          goto LABEL_4;
        }

        *(a1 + 16) = v40;
        v41 = specialized CodableAnimation.init(from:)(a1);
        v42 = *(a1 + 40);
        if (!*(v42 + 2))
        {
          goto LABEL_88;
        }

        v43 = v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v44 = *(v42 + 2);
          if (!v44)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew()(v42);
          v44 = *(v42 + 2);
          if (!v44)
          {
            goto LABEL_91;
          }
        }

        v45 = v44 - 1;
        v6 = *&v42[8 * v45 + 32];
        *(v42 + 2) = v45;

        *(a1 + 40) = v42;
        *(a1 + 16) = v6;
        v7 = v43;
        goto LABEL_8;
      }

      if (v21 == 2)
      {
        if (v22 != 2)
        {
          goto LABEL_4;
        }

        v30 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
        }

        v3 = *(v30 + 2);
        v31 = *(v30 + 3);
        if (v3 >= v31 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v3 + 1, 1, v30);
        }

        *(v30 + 2) = v3 + 1;
        *&v30[8 * v3 + 32] = v6;
        *(a1 + 40) = v30;
        v32 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (v32 < 0)
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
            v47 = *(v3 + 16);
            if (v47)
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
              v47 = *(v3 + 16);
              if (v47)
              {
                goto LABEL_83;
              }
            }

            else
            {
              v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v47 = *(v3 + 16);
              if (v47)
              {
                goto LABEL_83;
              }
            }

            __break(1u);
            v3 = *(a1 + 40);
          }

          while (!*(v3 + 16));
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v47 = *(v3 + 16);
            if (v47)
            {
LABEL_83:
              v48 = v47 - 1;
              v49 = *(v3 + 8 * v48 + 32);
              *(v3 + 16) = v48;

              *(a1 + 40) = v3;
              *(a1 + 16) = v49;
              return result;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v3 = result;
            v47 = *(result + 16);
            if (v47)
            {
              goto LABEL_83;
            }
          }

          __break(1u);
          return result;
        }

        v33 = *(a1 + 8) + v32;
        if (v6 < v33)
        {
          goto LABEL_4;
        }

        *(a1 + 16) = v33;
        specialized _RotationEffect.init(from:)(a1);
        v17 = *(a1 + 40);
        if (!*(v17 + 16))
        {
          goto LABEL_87;
        }

        v9 = v34;
        v10 = v35;
        v11 = v36;
        v3 = 0;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v18 = *(v17 + 16);
          if (!v18)
          {
            goto LABEL_90;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
          v17 = result;
          v18 = *(result + 16);
          if (!v18)
          {
            goto LABEL_90;
          }
        }

        v8 = 0;
        goto LABEL_7;
      }

      if (v21 == 1)
      {
        if (v22 != 2)
        {
          goto LABEL_4;
        }

        v23 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
        }

        v3 = *(v23 + 2);
        v24 = *(v23 + 3);
        if (v3 >= v24 >> 1)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v3 + 1, 1, v23);
        }

        *(v23 + 2) = v3 + 1;
        *&v23[8 * v3 + 32] = v6;
        *(a1 + 40) = v23;
        v25 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (v25 < 0)
        {
          goto LABEL_85;
        }

        v26 = *(a1 + 8) + v25;
        if (v6 < v26)
        {
          goto LABEL_4;
        }

        *(a1 + 16) = v26;
        specialized _RotationEffect.init(from:)(a1);
        v17 = *(a1 + 40);
        if (!*(v17 + 16))
        {
          goto LABEL_89;
        }

        v12 = v27;
        v13 = v28;
        v15 = v29;
        v3 = 0;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v18 = *(v17 + 16);
          if (!v18)
          {
            goto LABEL_72;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
          v17 = result;
          v18 = *(result + 16);
          if (!v18)
          {
LABEL_72:
            __break(1u);
          }
        }

        v14 = 0;
LABEL_7:
        v19 = v18 - 1;
        v6 = *(v17 + 8 * v19 + 32);
        *(v17 + 16) = v19;
        *(a1 + 40) = v17;
        *(a1 + 16) = v6;
        goto LABEL_8;
      }

      if ((result & 7) > 1)
      {
        if (v22 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_92;
          }

          v46 = *(a1 + 8) + result;
          if (v6 < v46)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v22 != 5)
          {
            goto LABEL_4;
          }

          v46 = *(a1 + 8) + 4;
          if (v6 < v46)
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

        if (v22 != 1)
        {
          goto LABEL_4;
        }

        v46 = *(a1 + 8) + 8;
        if (v6 < v46)
        {
          goto LABEL_4;
        }
      }

      *(a1 + 8) = v46;
LABEL_8:
      v5 = *(a1 + 8);
      if (v5 >= v6)
      {
        *(a1 + 24) = 0;
        if (((v14 | v8) & 1) == 0 && v7)
        {
          *a2 = v12;
          a2[1] = v13;
          a2[2] = v15;
          a2[3] = v9;
          a2[4] = v10;
          a2[5] = v11;
          a2[6] = v7;
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

uint64_t DisplayList.encode(to:)(uint64_t result)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4)
  {
    v5 = result;
    v6 = 0;
    v7 = (v3 + 32);
    v25 = v4 - 1;
    while (1)
    {
      v21 = *v7;
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      *(v24 + 12) = *(v7 + 60);
      v23 = v9;
      v24[0] = v10;
      v22 = v8;
      v11 = v5[1];
      v12 = v5[2];
      if (v11 >= v12)
      {
        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_23;
        }

        if (v12 < v17)
        {
          outlined init with copy of DisplayList.Item(&v21, v19);
          v18 = ProtobufEncoder.growBufferSlow(to:)(v17);
        }

        else
        {
          v5[1] = v17;
          v18 = (*v5 + v11);
          outlined init with copy of DisplayList.Item(&v21, v19);
        }

        *v18 = 10;
      }

      else
      {
        *(*v5 + v11) = 10;
        v5[1] = v11 + 1;
        outlined init with copy of DisplayList.Item(&v21, v19);
      }

      v19[2] = v23;
      v20[0] = v24[0];
      *(v20 + 12) = *(v24 + 12);
      v19[0] = v21;
      v19[1] = v22;
      v13 = v5[1];
      v14 = v5[3];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        v14 = result;
      }

      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 >= v15 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
        v14 = result;
      }

      *(v14 + 16) = v16 + 1;
      *(v14 + 8 * v16 + 32) = v13;
      v5[3] = v14;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v5[1] = v13 + 1;
      DisplayList.Item.encode(to:)(v5);
      if (v2)
      {
        return outlined destroy of DisplayList.Item(&v21);
      }

      ProtobufEncoder.endLengthDelimited()();
      result = outlined destroy of DisplayList.Item(&v21);
      if (v25 == v6)
      {
        return result;
      }

      ++v6;
      v7 += 5;
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

void DisplayList.Item.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v3 + 40);
  v9 = *(v3 + 48);
  v11 = *(v3 + 56);
  v12 = *(v3 + 64);
  v13 = *(v3 + 72);
  v14 = v12 >> 30;
  if (v12 >> 30 <= 1)
  {
    v25 = v13;
    v26 = v11;
    if (v14)
    {
      v24 = HIDWORD(v9);
      outlined copy of DisplayList.Effect(v10, v9, SBYTE4(v9));

      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      v16 = *(a1 + 8);
      v19 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_18:
        v23 = *(v19 + 2);
        v22 = *(v19 + 3);
        if (v23 >= v22 >> 1)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v19);
        }

        *(v19 + 2) = v23 + 1;
        *&v19[8 * v23 + 32] = v16;
        *(a1 + 24) = v19;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          return;
        }

        *(a1 + 8) = v16 + 1;
        if (BYTE4(v9) != 20 || v10 || v9)
        {
          specialized ProtobufEncoder.messageField<A>(_:_:)(1);
          v13 = v25;
          if (v2)
          {

            outlined consume of DisplayList.Effect(v10, v9, v24);
            return;
          }
        }

        else
        {
          v13 = v25;
        }

        specialized ProtobufEncoder.messageField<A>(_:_:)(2);
        if (v2)
        {
          outlined consume of DisplayList.Effect(v10, v9, v24);

          return;
        }

        ProtobufEncoder.endLengthDelimited()();
        outlined consume of DisplayList.Effect(v10, v9, v24);
        goto LABEL_33;
      }

LABEL_40:
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
      goto LABEL_18;
    }

    outlined copy of DisplayList.Content.Value(v10);
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v15 = *(a1 + 8);
    v16 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    v19 = (v18 + 1);
    if (v18 >= v17 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v19;
    *&v16[8 * v18 + 32] = v15;
    *(a1 + 24) = v16;
    if (!__OFADD__(v15, 1))
    {
      *(a1 + 8) = v15 + 1;
      outlined copy of DisplayList.Content.Value(v10);
      specialized ProtobufEncoder.messageField<A>(_:_:)(1, v10);
      outlined consume of DisplayList.Item.Value(v10, v9, v26, v12);
      if (v2)
      {
        outlined consume of DisplayList.Item.Value(v10, v9, v26, v12);
        return;
      }

      if (v9)
      {
        ProtobufEncoder.encodeVarint(_:)(0x10uLL);
        ProtobufEncoder.encodeVarint(_:)(v9);
      }

      ProtobufEncoder.endLengthDelimited()();
      outlined consume of DisplayList.Item.Value(v10, v9, v26, v12);
      v13 = v25;
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (v14 != 2)
  {
    goto LABEL_33;
  }

  ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
  v19 = *(a1 + 8);
  v16 = *(a1 + 24);
  v25 = v13;
  v26 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_38:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
  }

  v21 = *(v16 + 2);
  v20 = *(v16 + 3);
  if (v21 >= v20 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v16);
  }

  *(v16 + 2) = v21 + 1;
  *&v16[8 * v21 + 32] = v19;
  *(a1 + 24) = v16;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
    goto LABEL_40;
  }

  *(a1 + 8) = v19 + 1;
  closure #3 in DisplayList.Item.encode(to:)(a1, v10);
  outlined consume of DisplayList.Item.Value(v10, v9, v26, v12);
  if (v2)
  {
    return;
  }

  ProtobufEncoder.endLengthDelimited()();
  v13 = v25;
LABEL_33:
  ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
  specialized ProtobufEncoder.encodeMessage<A>(_:)(v5, v6, v7, v8);
  if (!v2)
  {
    if (v13)
    {
      ProtobufEncoder.encodeVarint(_:)(0x20uLL);
      ProtobufEncoder.encodeVarint(_:)(v13);
    }
  }
}

uint64_t closure #3 in DisplayList.Item.encode(to:)(uint64_t result, uint64_t a2)
{
  v4 = v2;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 68;
    while (1)
    {
      result = *(v7 - 12);
      v8 = *(v7 - 4);
      v9 = v6[1];
      v10 = v6[2];
      if (v9 >= v10)
      {
        v19 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }

        if (v10 < v19)
        {

          v20 = ProtobufEncoder.growBufferSlow(to:)(v19);
        }

        else
        {
          v6[1] = v19;
          v20 = (*v6 + v9);
        }

        *v20 = 10;
        v11 = v6[1];
      }

      else
      {
        *(*v6 + v9) = 10;
        v11 = v9 + 1;
        v6[1] = v9 + 1;
      }

      v12 = v6[3];
      result = swift_isUniquelyReferenced_nonNull_native();
      v21 = v8;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
        v12 = result;
      }

      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 >= v13 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 16) = v14 + 1;
      *(v12 + 8 * v14 + 32) = v11;
      v6[3] = v12;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v6[1] = v11 + 1;
      ProtobufEncoder.encodeVarint(_:)(0xAuLL);
      v15 = v6[1];
      v16 = v6[3];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
        v16 = result;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      if (v18 >= v17 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
        v16 = result;
      }

      *(v16 + 16) = v18 + 1;
      *(v16 + 8 * v18 + 32) = v15;
      v6[3] = v16;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_25;
      }

      v6[1] = v15 + 1;
      StrongHash.encode(to:)(v6);
      ProtobufEncoder.endLengthDelimited()();
      v3 = v3 & 0xFFFF0000 | v21;
      specialized ProtobufEncoder.messageField<A>(_:_:)(2);

      if (!v4)
      {
        result = ProtobufEncoder.endLengthDelimited()();
        v7 += 40;
        if (--v5)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void DisplayList.Content.Value.encode(to:)(uint64_t a1)
{
  v8 = v94;
  v9 = *v1;
  switch(*v1 >> 60)
  {
    case 1uLL:
      v94[2] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v95 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      LOBYTE(v47) = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x24);
      v48 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x25);
      ProtobufEncoder.encodeVarint(_:)(0xAuLL);
      v3 = *(a1 + 8);
      v39 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_55;
    case 2uLL:
      goto LABEL_34;
    case 3uLL:
      v42 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v97[3] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v97[4] = v42;
      v98[0] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      *(v98 + 12) = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
      v43 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v97[0] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v97[1] = v43;
      v97[2] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      outlined init with copy of GraphicsImage(v97, v88);
      specialized ProtobufEncoder.messageField<A>(_:_:)(2);
      outlined destroy of GraphicsImage(v97);
      return;
    case 4uLL:
      v22 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v99[0] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v99[1] = v22;
      v100 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v21 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v12 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      LODWORD(v15) = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x41);
      ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
      v4 = *(a1 + 8);
      v13 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      goto LABEL_108;
    case 5uLL:
      v56 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v101[0] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v101[1] = v56;
      v101[2] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v102 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      outlined init with copy of SDFShape(v101, v88);
      specialized ProtobufEncoder.messageField<A>(_:_:)(14);
      outlined destroy of SDFShape(v101);
      return;
    case 6uLL:
      goto LABEL_69;
    case 7uLL:
      v44 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v105[2] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v105[3] = v44;
      v106 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v45 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x48);
      v103 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v104 = v45;
      v105[0] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x58);
      *(v105 + 13) = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x65);
      ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
      v38 = *(a1 + 8);
      v39 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_43;
      }

      goto LABEL_114;
    case 8uLL:
      outlined init with copy of AnyTrackedValue((v9 & 0xFFFFFFFFFFFFFFFLL) + 16, v88);
      v75 = v89;
      v76 = v90;
      v77 = __swift_project_boxed_opaque_existential_1(v88, v89);
      v92 = v75;
      v93 = *(v76 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v91);
      (*(*(v75 - 8) + 16))(boxed_opaque_existential_1, v77, v75);
      ProtobufEncoder.encodeVarint(_:)(0x4AuLL);
      v49 = *(a1 + 8);
      v50 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_92;
      }

      goto LABEL_122;
    case 9uLL:
      outlined init with copy of AnyTrackedValue((v9 & 0xFFFFFFFFFFFFFFFLL) + 16, v88);
      v31 = v89;
      v32 = v90;
      v33 = __swift_project_boxed_opaque_existential_1(v88, v89);
      v92 = v31;
      v93 = *(v32 + 8);
      v34 = __swift_allocate_boxed_opaque_existential_1(v91);
      (*(*(v31 - 8) + 16))(v34, v33, v31);
      ProtobufEncoder.encodeVarint(_:)(0x52uLL);
      v9 = *(a1 + 8);
      v13 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_29;
      }

      goto LABEL_112;
    case 0xAuLL:
      v53 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v7 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      ProtobufEncoder.encodeVarint(_:)(0x22uLL);
      v64 = *(a1 + 8);
      v50 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_82;
      }

      goto LABEL_120;
    case 0xBuLL:
      v16 = v9 & 0xFFFFFFFFFFFFFFFLL;
      v12 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v15 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      v6 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v7 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v17 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v18 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      v86 = *(v16 + 53);
      v84 = *(v16 + 60);
      v85 = *(v16 + 56);
      ProtobufEncoder.encodeVarint(_:)(0x32uLL);
      v4 = *(a1 + 8);
      v13 = *(a1 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v17;
      v87 = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      goto LABEL_106;
    case 0xCuLL:
      v26 = v9 & 0xFFFFFFFFFFFFFFFLL;
      v4 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v7 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v24 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v21 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x2C);
      v27 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x2D);
      v28 = *(v26 + 48);
      v86 = *(v26 + 52);
      ProtobufEncoder.encodeVarint(_:)(0x6AuLL);
      v12 = *(a1 + 8);
      v13 = *(a1 + 24);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v27;
      v87 = v28;
      if (v29)
      {
        goto LABEL_24;
      }

      goto LABEL_110;
    case 0xDuLL:
      outlined init with copy of AnyTrackedValue((v9 & 0xFFFFFFFFFFFFFFFLL) + 16, v88);
      v57 = v89;
      v58 = v90;
      v59 = __swift_project_boxed_opaque_existential_1(v88, v89);
      v92 = v57;
      v93 = *(v58 + 8);
      v60 = __swift_allocate_boxed_opaque_existential_1(v91);
      (*(*(v57 - 8) + 16))(v60, v59, v57);
      ProtobufEncoder.encodeVarint(_:)(0x3AuLL);
      v9 = *(a1 + 8);
      v39 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_64;
      }

      goto LABEL_118;
    case 0xEuLL:
      ProtobufEncoder.encodeVarint(_:)(0x42uLL);
      v12 = *(a1 + 8);
      v13 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      *&v13[8 * v15 + 32] = v12;
      *(a1 + 24) = v13;
      if (!__OFADD__(v12, 1))
      {
        *(a1 + 8) = v12 + 1;
        if (v9)
        {
          ProtobufEncoder.encodeVarint(_:)(8uLL);
          ProtobufEncoder.encodeVarint(_:)(v9);
        }

LABEL_53:
        ProtobufEncoder.endLengthDelimited()();
        return;
      }

      __break(1u);
LABEL_106:
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_11:
      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      if (v21 >= v20 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v13);
      }

      *(v13 + 2) = v21 + 1;
      *&v13[8 * v21 + 32] = v4;
      *(a1 + 24) = v13;
      if (!__OFADD__(v4, 1))
      {
        *(a1 + 8) = v4 + 1;
        closure #6 in DisplayList.Content.Value.encode(to:)(a1, v6, v7, v12, v5 | (v15 << 32), v107 | (v87 << 32) | (v86 << 40), v85 | (v84 << 32));
        goto LABEL_52;
      }

      __break(1u);
LABEL_108:
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_16:
      v24 = *(v13 + 2);
      v23 = *(v13 + 3);
      if (v24 >= v23 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v13);
      }

      *(v13 + 2) = v24 + 1;
      *&v13[8 * v24 + 32] = v4;
      *(a1 + 24) = v13;
      if (!__OFADD__(v4, 1))
      {
        *(a1 + 8) = v4 + 1;
        if (v15)
        {
          v25 = 256;
        }

        else
        {
          v25 = 0;
        }

        closure #2 in DisplayList.Content.Value.encode(to:)(a1, v99, v21, v25 | v12);
        goto LABEL_52;
      }

      __break(1u);
LABEL_110:
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_24:
      v3 = *(v13 + 2);
      v30 = *(v13 + 3);
      v9 = v3 + 1;
      if (v3 >= v30 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v3 + 1, 1, v13);
      }

      *(v13 + 2) = v9;
      *&v13[8 * v3 + 32] = v12;
      *(a1 + 24) = v13;
      if (!__OFADD__(v12, 1))
      {
        *(a1 + 8) = v12 + 1;
        closure #7 in DisplayList.Content.Value.encode(to:)(a1, v6, v7, v4, v24 | (v21 << 32) | (v107 << 40), v87 | (v86 << 32));
        goto LABEL_52;
      }

      __break(1u);
LABEL_112:
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_29:
      v36 = *(v13 + 2);
      v35 = *(v13 + 3);
      if (v36 >= v35 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v13);
      }

      *(v13 + 2) = v36 + 1;
      *&v13[8 * v36 + 32] = v9;
      *(a1 + 24) = v13;
      v8 = (v9 + 1);
      if (!__OFADD__(v9, 1))
      {
        goto LABEL_95;
      }

      __break(1u);
LABEL_34:
      v37 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v8[4] = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v8[5] = v37;
      outlined init with copy of DisplayList.ChameleonColor(v96, v88);
      ProtobufEncoder.encodeVarint(_:)(0x62uLL);
      v38 = *(a1 + 8);
      v39 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v39);
      }

      *(v39 + 2) = v41 + 1;
      *&v39[8 * v41 + 32] = v38;
      *(a1 + 24) = v39;
      if (!__OFADD__(v38, 1))
      {
        *(a1 + 8) = v38 + 1;
        closure #1 in DisplayList.Content.Value.encode(to:)(a1, v96);
        outlined destroy of DisplayList.ChameleonColor(v96);
        if (v2)
        {
          return;
        }

        goto LABEL_53;
      }

      __break(1u);
LABEL_114:
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
LABEL_43:
      v47 = *(v39 + 2);
      v46 = *(v39 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v39);
      }

      *(v39 + 2) = v48;
      *&v39[8 * v47 + 32] = v38;
      *(a1 + 24) = v39;
      if (!__OFADD__(v38, 1))
      {
        *(a1 + 8) = v38 + 1;
        ProtobufEncoder.encodeVarint(_:)(0xAuLL);
        v49 = *(a1 + 8);
        v50 = *(a1 + 24);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_47:
          v52 = *(v50 + 2);
          v51 = *(v50 + 3);
          v53 = v52 + 1;
          if (v52 >= v51 >> 1)
          {
            v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v50);
          }

          *(v50 + 2) = v53;
          *&v50[8 * v52 + 32] = v49;
          *(a1 + 24) = v50;
          if (!__OFADD__(v49, 1))
          {
            *(a1 + 8) = v49 + 1;
            Path.encode(to:)();
            if (v2)
            {
              return;
            }

            ProtobufEncoder.endLengthDelimited()();
            specialized ProtobufEncoder.messageField<A>(_:_:)(2);
LABEL_52:
            if (v2)
            {
              return;
            }

            goto LABEL_53;
          }

          __break(1u);
          goto LABEL_126;
        }

LABEL_124:
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
        goto LABEL_47;
      }

      __break(1u);
LABEL_116:
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
LABEL_55:
      v55 = *(v39 + 2);
      v54 = *(v39 + 3);
      v9 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v39);
      }

      *(v39 + 2) = v9;
      *&v39[8 * v55 + 32] = v3;
      *(a1 + 24) = v39;
      if (!__OFADD__(v3, 1))
      {
        *(a1 + 8) = v3 + 1;
        Color.ResolvedHDR.encode(to:)(a1);
        ProtobufEncoder.endLengthDelimited()();
        if (v48)
        {
          ProtobufEncoder.encodeVarint(_:)(0x80uLL);
          ProtobufEncoder.encodeVarint(_:)(v48);
        }

        if ((v47 & 1) == 0)
        {
          ProtobufEncoder.encodeVarint(_:)(0x88uLL);
          ProtobufEncoder.encodeVarint(_:)(0);
        }

        return;
      }

      __break(1u);
LABEL_118:
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
LABEL_64:
      v62 = *(v39 + 2);
      v61 = *(v39 + 3);
      if (v62 >= v61 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v39);
      }

      *(v39 + 2) = v62 + 1;
      *&v39[8 * v62 + 32] = v9;
      *(a1 + 24) = v39;
      v8 = (v9 + 1);
      if (!__OFADD__(v9, 1))
      {
        goto LABEL_95;
      }

      __break(1u);
LABEL_69:
      v63 = v9 & 0xFFFFFFFFFFFFFFFLL;
      v64 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v65 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v107 = *(v63 + 40);
      ProtobufEncoder.encodeVarint(_:)(0x7AuLL);
      v66 = *(a1 + 8);
      v50 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
      }

      v53 = *(v50 + 2);
      v67 = *(v50 + 3);
      v68 = v53 + 1;
      if (v53 >= v67 >> 1)
      {
        v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v53 + 1, 1, v50);
        v68 = v53 + 1;
        v50 = v83;
      }

      *(v50 + 2) = v68;
      *&v50[8 * v53 + 32] = v66;
      *(a1 + 24) = v50;
      if (__OFADD__(v66, 1))
      {
        __break(1u);
LABEL_120:
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
LABEL_82:
        v73 = *(v50 + 2);
        v72 = *(v50 + 3);
        v49 = v73 + 1;
        if (v73 >= v72 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v50);
        }

        *(v50 + 2) = v49;
        *&v50[8 * v73 + 32] = v64;
        *(a1 + 24) = v50;
        if (!__OFADD__(v64, 1))
        {
          *(a1 + 8) = v64 + 1;

          ProtobufEncoder.encodeVarint(_:)(0xAuLL);
          v52 = *(a1 + 8);
          v50 = *(a1 + 24);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_86:
            v69 = *(v50 + 2);
            v74 = *(v50 + 3);
            v65 = v69 + 1;
            if (v69 >= v74 >> 1)
            {
              v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v69 + 1, 1, v50);
            }

            *(v50 + 2) = v65;
            *&v50[8 * v69 + 32] = v52;
            *(a1 + 24) = v50;
            if (!__OFADD__(v52, 1))
            {
              *(a1 + 8) = v52 + 1;
              CodableResolvedStyledText.encode(to:)(a1, v53);
              if (v2)
              {
LABEL_90:

                return;
              }

              ProtobufEncoder.endLengthDelimited()();

              ProtobufEncoder.encodeVarint(_:)(0x12uLL);
              v65 = *(a1 + 8);
              v50 = *(a1 + 24);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_100;
              }

              goto LABEL_130;
            }

            __break(1u);
            goto LABEL_128;
          }

LABEL_126:
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
          goto LABEL_86;
        }

        __break(1u);
LABEL_122:
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
LABEL_92:
        v80 = *(v50 + 2);
        v79 = *(v50 + 3);
        if (v80 >= v79 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v50);
        }

        *(v50 + 2) = v80 + 1;
        *&v50[8 * v80 + 32] = v49;
        *(a1 + 24) = v50;
        v8 = (v49 + 1);
        if (__OFADD__(v49, 1))
        {
          __break(1u);
          goto LABEL_124;
        }

LABEL_95:
        *(a1 + 8) = v8;
        CodableViewFactory.encode(to:)(a1);
        if (!v2)
        {
          ProtobufEncoder.endLengthDelimited()();
        }

        outlined destroy of CodableViewFactory(v91);
        __swift_destroy_boxed_opaque_existential_1(v88);
        return;
      }

      *(a1 + 8) = v66 + 1;
      specialized ProtobufEncoder.messageField<A>(_:_:)(1);
      if (v2)
      {
        return;
      }

      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      v69 = *(a1 + 8);
      v50 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_128:
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
      }

      v71 = *(v50 + 2);
      v70 = *(v50 + 3);
      if (v71 >= v70 >> 1)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v50);
      }

      *(v50 + 2) = v71 + 1;
      *&v50[8 * v71 + 32] = v69;
      *(a1 + 24) = v50;
      if (__OFADD__(v69, 1))
      {
        __break(1u);
LABEL_130:
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
LABEL_100:
        v82 = *(v50 + 2);
        v81 = *(v50 + 3);
        if (v82 >= v81 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v50);
        }

        *(v50 + 2) = v82 + 1;
        *&v50[8 * v82 + 32] = v65;
        *(a1 + 24) = v50;
        if (__OFADD__(v65, 1))
        {
          __break(1u);
        }

        else
        {
          *(a1 + 8) = v65 + 1;
          CGSize.encode(to:)(a1, v6, v7);
          ProtobufEncoder.endLengthDelimited()();
          ProtobufEncoder.endLengthDelimited()();
        }

        return;
      }

      *(a1 + 8) = v69 + 1;
      SDFStyle.encode(to:)(a1, v65);
      if (v2)
      {
        goto LABEL_90;
      }

      ProtobufEncoder.endLengthDelimited()();

      ProtobufEncoder.encodeVarint(_:)(0x18uLL);
      ProtobufEncoder.encodeVarint(_:)(v107);
      ProtobufEncoder.endLengthDelimited()();
      return;
    default:
      v11 = *(v9 + 32);
      v94[0] = *(v9 + 16);
      v94[1] = v11;
      outlined init with copy of BackdropEffect(v94, v88);
      specialized ProtobufEncoder.messageField<A>(_:_:)(11);
      outlined destroy of BackdropEffect(v94);
      return;
  }
}

void closure #1 in DisplayList.Content.Value.encode(to:)(uint64_t a1, __int128 *a2)
{
  v3 = a2;
  v34[2] = *a2;
  v35 = *(a2 + 4);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    *&v6[8 * v8 + 32] = v5;
    *(a1 + 24) = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    *(a1 + 8) = v5 + 1;
    Color.ResolvedHDR.encode(to:)(a1);
    ProtobufEncoder.endLengthDelimited()();
    v9 = *(v3 + 3);
    v10 = *(v9 + 16);
    if (!v10)
    {
LABEL_24:
      v25 = *(v3 + 20);
      if (*(v3 + 20))
      {
        ProtobufEncoder.encodeVarint(_:)(0x18uLL);
        ProtobufEncoder.encodeVarint(_:)(v25);
      }

      return;
    }

    v36 = v3;
    v5 = &v28;
    v3 = (v9 + 32);
    for (i = v10 - 1; ; --i)
    {
      v12 = *v3;
      v13 = v3[1];
      v14 = v3[3];
      v30 = v3[2];
      v31 = v14;
      v28 = v12;
      v29 = v13;
      v15 = v3[4];
      v16 = v3[5];
      v17 = v3[6];
      *(v34 + 12) = *(v3 + 108);
      v33 = v16;
      v34[0] = v17;
      v32 = v15;
      v18 = *(a1 + 8);
      v19 = *(a1 + 16);
      if (v18 >= v19)
      {
        v23 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_30;
        }

        if (v19 < v23)
        {
          outlined init with copy of GraphicsFilter(&v28, v26);
          v24 = ProtobufEncoder.growBufferSlow(to:)(v23);
        }

        else
        {
          *(a1 + 8) = v23;
          v24 = (*a1 + v18);
          outlined init with copy of GraphicsFilter(&v28, v26);
        }

        *v24 = 18;
      }

      else
      {
        *(*a1 + v18) = 18;
        *(a1 + 8) = v18 + 1;
        outlined init with copy of GraphicsFilter(&v28, v26);
      }

      v26[4] = v32;
      v26[5] = v33;
      v27[0] = v34[0];
      *(v27 + 12) = *(v34 + 12);
      v26[0] = v28;
      v26[1] = v29;
      v26[2] = v30;
      v26[3] = v31;
      v20 = *(a1 + 8);
      v6 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v22 = *(v6 + 2);
      v21 = *(v6 + 3);
      if (v22 >= v21 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v6);
      }

      *(v6 + 2) = v22 + 1;
      *&v6[8 * v22 + 32] = v20;
      *(a1 + 24) = v6;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      *(a1 + 8) = v20 + 1;
      GraphicsFilter.encode(to:)(a1);
      if (v2)
      {
        outlined destroy of GraphicsFilter(&v28);
        return;
      }

      ProtobufEncoder.endLengthDelimited()();
      outlined destroy of GraphicsFilter(&v28);
      if (!i)
      {
        v3 = v36;
        goto LABEL_24;
      }

      v3 += 8;
    }

    __break(1u);
LABEL_28:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

void closure #2 in DisplayList.Content.Value.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  *&v9[8 * v11 + 32] = v8;
  *(a1 + 24) = v9;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v8 + 1;
    Path.encode(to:)();
    if (!v4)
    {
      ProtobufEncoder.endLengthDelimited()();
      specialized ProtobufEncoder.messageField<A>(_:_:)(2, a3);
      if (a4 & 0x100) == 0 || (a4)
      {
        ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
        specialized ProtobufEncoder.encodeMessage<A>(_:)(a4 & 0x101);
      }
    }
  }
}

int64_t closure #6 in DisplayList.Content.Value.encode(to:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  if (v7)
  {
    return result;
  }

  if (a2 != 0.0 || a3 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v14 = *(a1 + 8);
    v15 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v16 = *(v15 + 2);
    v17 = *(v15 + 3);
    v18 = v16 + 1;
    if (v16 >= v17 >> 1)
    {
      v33 = v16 + 1;
      v21 = v15;
      v22 = v16;
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v16 + 1, 1, v21);
      v16 = v22;
      v18 = v33;
      v15 = v23;
    }

    *(v15 + 2) = v18;
    *&v15[8 * v16 + 32] = v14;
    *(a1 + 24) = v15;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    *(a1 + 8) = v14 + 1;
    CGPoint.encode(to:)(a1, a2, a3);
    ProtobufEncoder.endLengthDelimited()();
  }

  if (one-time initialization token for defaultFlags != -1)
  {
    swift_once();
  }

  v28 = a6;
  v29 = BYTE4(a6);
  v30 = BYTE5(a6);
  v31 = a7;
  v32 = BYTE4(a7);
  v24 = -1;
  v25 = 768;
  v26 = static RasterizationOptions.Flags.defaultFlags;
  v27 = 3;
  result = specialized static RasterizationOptions.== infix(_:_:)(&v28, &v24);
  if ((result & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
    a6 = *(a1 + 8);
    v15 = *(a1 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_14:
      v20 = *(v15 + 2);
      v19 = *(v15 + 3);
      if (v20 >= v19 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 2) = v20 + 1;
      *&v15[8 * v20 + 32] = a6;
      *(a1 + 24) = v15;
      if (__OFADD__(a6, 1))
      {
        __break(1u);
      }

      else
      {
        *(a1 + 8) = a6 + 1;
        RasterizationOptions.encode(to:)();
        return ProtobufEncoder.endLengthDelimited()();
      }

      return result;
    }

LABEL_20:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    v15 = result;
    goto LABEL_14;
  }

  return result;
}

int64_t closure #7 in DisplayList.Content.Value.encode(to:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  if (v6)
  {
    return result;
  }

  if (a2 != 0.0 || a3 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v13 = *(a1 + 8);
    v14 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v15 = *(v14 + 2);
    v16 = *(v14 + 3);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v32 = v15 + 1;
      v20 = v14;
      v21 = v15;
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v15 + 1, 1, v20);
      v15 = v21;
      v17 = v32;
      v14 = v22;
    }

    *(v14 + 2) = v17;
    *&v14[8 * v15 + 32] = v13;
    *(a1 + 24) = v14;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    *(a1 + 8) = v13 + 1;
    CGPoint.encode(to:)(a1, a2, a3);
    ProtobufEncoder.endLengthDelimited()();
  }

  if (one-time initialization token for defaultFlags != -1)
  {
    swift_once();
  }

  v27 = a5;
  v28 = BYTE4(a5);
  v29 = BYTE5(a5);
  v30 = a6;
  v31 = BYTE4(a6);
  v23 = -1;
  v24 = 768;
  v25 = static RasterizationOptions.Flags.defaultFlags;
  v26 = 3;
  result = specialized static RasterizationOptions.== infix(_:_:)(&v27, &v23);
  if ((result & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
    a5 = *(a1 + 8);
    v14 = *(a1 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_14:
      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v14);
        v14 = result;
      }

      *(v14 + 2) = v19 + 1;
      *&v14[8 * v19 + 32] = a5;
      *(a1 + 24) = v14;
      if (__OFADD__(a5, 1))
      {
        __break(1u);
      }

      else
      {
        *(a1 + 8) = a5 + 1;
        RasterizationOptions.encode(to:)();
        return ProtobufEncoder.endLengthDelimited()();
      }

      return result;
    }

LABEL_20:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    v14 = result;
    goto LABEL_14;
  }

  return result;
}

uint64_t closure #1 in DisplayList.Content.Value.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = "nsform";
  if (v5 >= v6)
  {
LABEL_67:
    v8 = 0;
    v39 = *(v7 + 84);
    v9 = MEMORY[0x1E69E7CC0];
    v10 = 2143289344;
LABEL_68:
    a1[3] = 0;
    result = swift_allocObject();
    *(result + 16) = v39;
    *(result + 32) = v10;
    *(result + 36) = v8;
    *(result + 40) = v9;
    *a2 = result | 0x2000000000000000;
    return result;
  }

  v8 = 0;
  v39 = xmmword_18DD85540;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = 2143289344;
  while (1)
  {
    v11 = a1[3];
    if (v11)
    {
      v12 = a1[4];
      if (v5 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v5)
      {
        goto LABEL_69;
      }

      a1[3] = 0;
    }

    v11 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
    }

    if (v11 < 8)
    {
      goto LABEL_69;
    }

LABEL_11:
    v13 = v11 >> 3;
    if (v11 >> 3 != 3)
    {
      break;
    }

    if ((v11 & 7) != 0)
    {
      if ((v11 & 7) != 2)
      {
        goto LABEL_69;
      }

      v28 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
      }

      if (v28 < 0)
      {
        goto LABEL_79;
      }

      v29 = a1[1] + v28;
      if (v6 < v29)
      {
LABEL_69:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
      }

      a1[3] = 24;
      a1[4] = v29;
    }

    v30 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
    }

    if (v30 == 1)
    {
      v8 = 1;
    }

    else if (v30 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

LABEL_4:
    v5 = a1[1];
    if (v5 >= v6)
    {
      goto LABEL_68;
    }
  }

  if (v13 == 2)
  {
    if ((v11 & 7) != 2)
    {
      goto LABEL_69;
    }

    ProtobufDecoder.beginMessage()();
    if (v2)
    {
    }

    GraphicsFilter.init(from:)(a1, v47);
    v22 = a1[5];
    if (!*(v22 + 2))
    {
      goto LABEL_76;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = *(v22 + 2);
      if (!v23)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
      v23 = *(v22 + 2);
      if (!v23)
      {
        goto LABEL_77;
      }
    }

    v24 = v23 - 1;
    v6 = *&v22[8 * v24 + 32];
    *(v22 + 2) = v24;
    a1[5] = v22;
    a1[2] = v6;
    v44 = v47[4];
    v45 = v47[5];
    *v46 = v48[0];
    *&v46[12] = *(v48 + 12);
    v40 = v47[0];
    v41 = v47[1];
    v42 = v47[2];
    v43 = v47[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v26 = *(v9 + 2);
    v25 = *(v9 + 3);
    if (v26 >= v25 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v9);
    }

    *(v9 + 2) = v26 + 1;
    v27 = &v9[128 * v26];
    *(v27 + 4) = v42;
    *(v27 + 5) = v43;
    *(v27 + 2) = v40;
    *(v27 + 3) = v41;
    *(v27 + 140) = *&v46[12];
    *(v27 + 7) = v45;
    *(v27 + 8) = *v46;
    *(v27 + 6) = v44;
    goto LABEL_4;
  }

  if (v13 != 1)
  {
    v31 = v11 & 7;
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v33 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (v33 < 0)
        {
          goto LABEL_80;
        }

        v32 = a1[1] + v33;
        if (v6 < v32)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v31 != 5)
        {
          goto LABEL_69;
        }

        v32 = a1[1] + 4;
        if (v6 < v32)
        {
          goto LABEL_69;
        }
      }
    }

    else
    {
      if ((v11 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        goto LABEL_4;
      }

      if (v31 != 1)
      {
        goto LABEL_69;
      }

      v32 = a1[1] + 8;
      if (v6 < v32)
      {
        goto LABEL_69;
      }
    }

    a1[1] = v32;
    goto LABEL_4;
  }

  if ((v11 & 7) != 2)
  {
    goto LABEL_69;
  }

  v14 = a1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  *&v14[8 * v16 + 32] = v6;
  a1[5] = v14;
  v17 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = a1[1] + v17;
    if (v6 < v18)
    {
      goto LABEL_69;
    }

    a1[2] = v18;
    specialized Color.ResolvedHDR.init(from:)(a1, &v49);
    v19 = a1[5];
    if (!*(v19 + 2))
    {
      goto LABEL_78;
    }

    v39 = v49;
    v10 = v50;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = *(v19 + 2);
      if (!v20)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v20 = *(v19 + 2);
      if (!v20)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v21 = v20 - 1;
    v6 = *&v19[8 * v21 + 32];
    *(v19 + 2) = v21;
    a1[5] = v19;
    a1[2] = v6;
    goto LABEL_4;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  __break(1u);
  v35 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v36 = *(v35 + 2);
  if (v36)
  {
LABEL_74:
    v37 = v36 - 1;
    v38 = *&v35[8 * v37 + 32];
    *(v35 + 2) = v37;

    a1[5] = v35;
    a1[2] = v38;
    return result;
  }

  __break(1u);
  v35 = a1[5];
  if (!*(v35 + 2))
  {
    __break(1u);
LABEL_83:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
    v35 = result;
    v36 = *(result + 16);
    if (!v36)
    {
      goto LABEL_84;
    }

    goto LABEL_74;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_83;
  }

  v36 = *(v35 + 2);
  if (v36)
  {
    goto LABEL_74;
  }

LABEL_84:
  __break(1u);
  return result;
}

uint64_t closure #3 in DisplayList.Content.Value.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  *(v5 + 40) = 2143289344;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v12 = a1[3];
      if (v12)
      {
        v13 = a1[4];
        if (v6 < v13)
        {
          goto LABEL_11;
        }

        if (v13 < v6)
        {
          goto LABEL_69;
        }

        a1[3] = 0;
      }

      v12 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_71;
      }

      if (v12 < 8)
      {
        goto LABEL_69;
      }

LABEL_11:
      v14 = v12 >> 3;
      if (v12 >> 3 == 3)
      {
        if ((v12 & 7) != 0)
        {
          if ((v12 & 7) != 2)
          {
            goto LABEL_69;
          }

          v35 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
LABEL_71:
          }

          if (v35 < 0)
          {
            goto LABEL_84;
          }

          v36 = a1[1] + v35;
          if (v7 < v36)
          {
LABEL_69:

LABEL_70:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
          }

          a1[3] = 24;
          a1[4] = v36;
        }

        v37 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_71;
        }

        if (HIDWORD(v37))
        {
          v10 = 0;
        }

        else
        {
          v10 = v37;
        }
      }

      else if (v14 == 2)
      {
        if ((v12 & 7) != 2)
        {
          goto LABEL_69;
        }

        v48 = v8;
        v52 = v11;
        v8 = a2;
        v24 = a1[5];
        v25 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        }

        v27 = *(v24 + 2);
        v26 = *(v24 + 3);
        if (v27 >= v26 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
        }

        *(v24 + 2) = v27 + 1;
        *&v24[8 * v27 + 32] = v7;
        a1[5] = v24;
        v28 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_71;
        }

        if (v28 < 0)
        {
          goto LABEL_80;
        }

        v29 = a1[1] + v28;
        if (v7 < v29)
        {

          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
        }

        a1[2] = v29;
        v30 = specialized SDFStyle.init(from:)(a1);
        v31 = a1[5];
        if (!*(v31 + 2))
        {
          goto LABEL_81;
        }

        v5 = v30;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v32 = *(v31 + 2);
          if (!v32)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
          v32 = *(v31 + 2);
          if (!v32)
          {
            goto LABEL_83;
          }
        }

        v33 = v32 - 1;
        v7 = *&v31[8 * v33 + 32];
        *(v31 + 2) = v33;

        a1[5] = v31;
        a1[2] = v7;
        v34 = v8;
        v11 = v52;
        v8 = v48;
        v9 = v25;
        a2 = v34;
      }

      else if (v14 == 1)
      {
        v8 = v2;
        v15 = v12;

        if ((v15 & 7) != 2)
        {
          goto LABEL_70;
        }

        v16 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v18 = *(v16 + 2);
        v17 = *(v16 + 3);
        if (v18 >= v17 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
        }

        *(v16 + 2) = v18 + 1;
        *&v16[8 * v18 + 32] = v7;
        a1[5] = v16;
        v19 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (v19 < 0)
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          __break(1u);
          __break(1u);
          v45 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          v46 = *(v45 + 2);
          if (v46)
          {
            v42 = v46 - 1;
            v43 = *&v45[8 * v42 + 32];
            *(v45 + 2) = v42;
          }

          else
          {
            __break(1u);
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
            v45 = result;
            v47 = *(result + 16);
            if (!v47)
            {
              __break(1u);
              return result;
            }

            v44 = v47 - 1;
            v43 = *(result + 8 * v44 + 32);
            *(result + 16) = v44;
          }

          a1[5] = v45;
          a1[2] = v43;
          return result;
        }

        v20 = a1[1] + v19;
        if (v7 < v20)
        {
          goto LABEL_70;
        }

        a1[2] = v20;
        DisplayList.init(from:)(&v49, a1);
        v21 = a1[5];
        if (!*(v21 + 2))
        {
          goto LABEL_82;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v22 = *(v21 + 2);
          if (!v22)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          v22 = *(v21 + 2);
          if (!v22)
          {
LABEL_66:
            __break(1u);
            break;
          }
        }

        v23 = v22 - 1;
        v7 = *&v21[8 * v23 + 32];
        *(v21 + 2) = v23;
        a1[5] = v21;
        a1[2] = v7;
        v11 = v49;
        v9 = v50;
        v8 = v51;
      }

      else
      {
        v38 = v12 & 7;
        if (v38 > 1)
        {
          if (v38 == 2)
          {
            v40 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_71;
            }

            if (v40 < 0)
            {
              goto LABEL_85;
            }

            v39 = a1[1] + v40;
            if (v7 < v39)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v38 != 5)
            {
              goto LABEL_69;
            }

            v39 = a1[1] + 4;
            if (v7 < v39)
            {
              goto LABEL_69;
            }
          }

          goto LABEL_3;
        }

        if ((v12 & 7) != 0)
        {
          if (v38 != 1)
          {
            goto LABEL_69;
          }

          v39 = a1[1] + 8;
          if (v7 < v39)
          {
            goto LABEL_69;
          }

LABEL_3:
          a1[1] = v39;
          goto LABEL_4;
        }

        ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_71;
        }
      }

LABEL_4:
      v6 = a1[1];
      if (v6 >= v7)
      {
        goto LABEL_68;
      }
    }
  }

  LODWORD(v8) = 0;
  LOWORD(v9) = 0;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
LABEL_68:
  a1[3] = 0;
  result = swift_allocObject();
  *(result + 16) = v11;
  *(result + 24) = v9;
  *(result + 28) = v8;
  *(result + 32) = v5;
  *(result + 40) = v10;
  *(result + 44) = 0;
  *a2 = result | 0x6000000000000000;
  return result;
}

uint64_t closure #4 in DisplayList.Content.Value.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = "nsform";
  if (v5 >= v6)
  {
    goto LABEL_56;
  }

  v8 = 0;
  v50 = 0;
  v51 = 0;
  v9 = 0;
  v10 = 0;
  v49 = xmmword_18DD85540;
  v11 = 6;
  v12 = 0;
  v13 = 0.5;
  v14 = 2143289344;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = a1[3];
    if (v17)
    {
      v18 = a1[4];
      if (v5 < v18)
      {
        goto LABEL_11;
      }

      if (v18 < v5)
      {
        goto LABEL_58;
      }

      a1[3] = 0;
    }

    v17 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of Path.Storage(v50, v51, v9, v10, v11);
    }

    if (v17 < 8)
    {
      goto LABEL_58;
    }

LABEL_11:
    if (v17 >> 3 == 2)
    {
      break;
    }

    if (v17 >> 3 == 1)
    {
      if ((v17 & 7) != 2)
      {
        goto LABEL_58;
      }

      v3 = v2;
      v19 = a1[5];
      v48 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      *&v19[8 * v21 + 32] = v6;
      a1[5] = v19;
      v22 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of Path.Storage(v50, v51, v9, v10, v11);
      }

      if (v22 < 0)
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        __break(1u);
        do
        {
          __break(1u);
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
          v41 = *(v9 + 2);
          if (v41)
          {
            goto LABEL_63;
          }

          __break(1u);
          v3 = v9;
          v9 = a1[5];
        }

        while (!*(v9 + 2));
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v41 = *(v9 + 2);
          if (v41)
          {
LABEL_63:
            v42 = v41 - 1;
            v43 = *&v9[8 * v42 + 32];
            *(v9 + 2) = v42;
            result = outlined consume of Path.Storage(v50, v51, v3, v10, v11);
            a1[5] = v9;
            a1[2] = v43;
            return result;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
          v9 = result;
          v41 = *(result + 16);
          if (v41)
          {
            goto LABEL_63;
          }
        }

        __break(1u);
        return result;
      }

      v23 = a1[1] + v22;
      if (v6 < v23)
      {
        goto LABEL_58;
      }

      a1[2] = v23;
      specialized Path.init(from:)(a1, v60);
      v24 = a1[5];
      if (!*(v24 + 2))
      {
        goto LABEL_66;
      }

      v25 = v9;
      v46 = v10;
      v47 = v11;
      v3 = v60[0];
      v26 = v60[1];
      v9 = v60[2];
      v10 = v60[3];
      v11 = v61;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v27 = *(v24 + 2);
        if (!v27)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
        v27 = *(v24 + 2);
        if (!v27)
        {
          goto LABEL_68;
        }
      }

      v28 = v27 - 1;
      v6 = *&v24[8 * v28 + 32];
      *(v24 + 2) = v28;
      outlined consume of Path.Storage(v50, v51, v25, v46, v47);
      v50 = v3;
      v51 = v26;
      a1[5] = v24;
      a1[2] = v6;
      v8 = v48;
    }

    else
    {
      v37 = v17 & 7;
      if (v37 > 1)
      {
        if (v37 == 2)
        {
          v39 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return outlined consume of Path.Storage(v50, v51, v9, v10, v11);
          }

          if (v39 < 0)
          {
            goto LABEL_69;
          }

          v38 = a1[1] + v39;
          if (v6 < v38)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (v37 != 5)
          {
            goto LABEL_58;
          }

          v38 = a1[1] + 4;
          if (v6 < v38)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_3;
      }

      if ((v17 & 7) != 0)
      {
        if (v37 != 1)
        {
          goto LABEL_58;
        }

        v38 = a1[1] + 8;
        if (v6 < v38)
        {
          goto LABEL_58;
        }

LABEL_3:
        a1[1] = v38;
        goto LABEL_4;
      }

      ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of Path.Storage(v50, v51, v9, v10, v11);
      }
    }

LABEL_4:
    v5 = a1[1];
    if (v5 >= v6)
    {
      goto LABEL_57;
    }
  }

  if ((v17 & 7) != 2)
  {
    goto LABEL_58;
  }

  v3 = v2;
  v29 = a1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  *&v29[8 * v31 + 32] = v6;
  a1[5] = v29;
  v32 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return outlined consume of Path.Storage(v50, v51, v9, v10, v11);
  }

  if (v32 < 0)
  {
    goto LABEL_65;
  }

  v33 = a1[1] + v32;
  if (v6 >= v33)
  {
    a1[2] = v33;
    ResolvedShadowStyle.init(from:)(a1, &v52);
    v34 = a1[5];
    if (!*(v34 + 2))
    {
      goto LABEL_67;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v35 = *(v34 + 2);
      if (!v35)
      {
        goto LABEL_55;
      }

      goto LABEL_36;
    }

    v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
    v35 = *(v34 + 2);
    if (v35)
    {
LABEL_36:
      v36 = v35 - 1;
      v6 = *&v34[8 * v36 + 32];
      *(v34 + 2) = v36;
      a1[5] = v34;
      a1[2] = v6;
      v49 = v52;
      v14 = v53;
      v44 = v54;
      v16 = v55;
      v15 = v56;
      v12 = v57;
      v13 = v58;
      v8 = v59;
      goto LABEL_4;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    LOBYTE(v8) = 0;
    v50 = 0;
    v51 = 0;
    v9 = 0;
    v10 = 0;
    v49 = *(v7 + 84);
    v11 = 6;
    v13 = 0.5;
    v16 = 0;
    v14 = 2143289344;
    v15 = 0;
    v12 = 0;
LABEL_57:
    a1[3] = 0;
    result = swift_allocObject();
    *(result + 16) = v50;
    *(result + 24) = v51;
    *(result + 32) = v9;
    *(result + 40) = v10;
    *(result + 48) = v11;
    *(result + 56) = v49;
    *(result + 72) = v14;
    *(result + 76) = v44;
    *(result + 80) = v16;
    *(result + 88) = v15;
    *(result + 96) = v12;
    *(result + 104) = v13;
    *(result + 108) = v8;
    *a2 = result | 0x7000000000000000;
    return result;
  }

LABEL_58:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  return outlined consume of Path.Storage(v50, v51, v9, v10, v11);
}

uint64_t closure #6 in DisplayList.Content.Value.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  if (one-time initialization token for defaultFlags != -1)
  {
    v2 = v3;
    swift_once();
  }

  v6 = static RasterizationOptions.Flags.defaultFlags;
  v7 = a1[1];
  v8 = a1[2];
  if (v7 >= v8)
  {
    v55 = 0;
    v9 = 0;
    v54 = 3;
    v49 = -1;
    v50 = 0;
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v12 = 0;
    v48 = 3;
LABEL_6:
    a1[3] = 0;
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 24) = v55;
    *(result + 28) = v50;
    *(result + 32) = v10;
    *(result + 40) = v12;
    *(result + 48) = v49;
    *(result + 52) = v9;
    *(result + 53) = v54;
    *(result + 56) = v6;
    *(result + 60) = v48;
    *a2 = result | 0xB000000000000000;
    return result;
  }

  v55 = 0;
  v9 = 0;
  v54 = 3;
  v49 = -1;
  v50 = 0;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = 0;
  v48 = 3;
  while (1)
  {
    v14 = a1[3];
    if (v14)
    {
      v15 = a1[4];
      if (v7 < v15)
      {
        goto LABEL_15;
      }

      if (v15 < v7)
      {
        goto LABEL_74;
      }

      a1[3] = 0;
    }

    v14 = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
    }

    if (v14 < 8)
    {
      goto LABEL_74;
    }

LABEL_15:
    v16 = v14 >> 3;
    if (v14 >> 3 == 3)
    {
      if ((v14 & 7) != 2)
      {
        goto LABEL_74;
      }

      v34 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      *&v34[8 * v36 + 32] = v8;
      a1[5] = v34;
      v37 = ProtobufDecoder.decodeVarint()();
      if (v3)
      {
      }

      if (v37 < 0)
      {
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
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
        __break(1u);
LABEL_98:
        __break(1u);
        do
        {
          __break(1u);
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v2 = result;
          v45 = *(result + 16);
          if (v45)
          {
            goto LABEL_88;
          }

          __break(1u);

          v2 = a1[5];
          if (!*(v2 + 16))
          {
            goto LABEL_98;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v2 = result;
          }

          v45 = *(v2 + 16);
          if (v45)
          {
            goto LABEL_88;
          }

          __break(1u);
          v2 = a1[5];
        }

        while (!*(v2 + 16));
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v45 = *(v2 + 16);
          if (v45)
          {
LABEL_88:
            v46 = v45 - 1;
            v47 = *(v2 + 8 * v46 + 32);
            *(v2 + 16) = v46;
            a1[5] = v2;
            a1[2] = v47;
            return result;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v2 = result;
          v45 = *(result + 16);
          if (v45)
          {
            goto LABEL_88;
          }
        }

        __break(1u);
        return result;
      }

      v38 = a1[1] + v37;
      if (v8 < v38)
      {
        goto LABEL_74;
      }

      a1[2] = v38;
      RasterizationOptions.init(from:)(a1, &v51);
      v39 = a1[5];
      if (!*(v39 + 2))
      {
        goto LABEL_93;
      }

      v2 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v40 = *(v39 + 2);
        if (!v40)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew()(v39);
        v40 = *(v39 + 2);
        if (!v40)
        {
          goto LABEL_95;
        }
      }

      v41 = v40 - 1;
      v8 = *&v39[8 * v41 + 32];
      *(v39 + 2) = v41;
      a1[5] = v39;
      a1[2] = v8;
      v9 = BYTE4(v51);
      v54 = BYTE5(v51);
      v6 = v52;
      v48 = v53;
      v49 = v51;
      goto LABEL_8;
    }

    if (v16 == 2)
    {
      if ((v14 & 7) != 2)
      {
        goto LABEL_74;
      }

      v25 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v2 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v2 >= v26 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v2 + 1, 1, v25);
      }

      *(v25 + 2) = v2 + 1;
      *&v25[8 * v2 + 32] = v8;
      a1[5] = v25;
      v27 = ProtobufDecoder.decodeVarint()();
      if (v3)
      {
      }

      if (v27 < 0)
      {
        goto LABEL_91;
      }

      v28 = a1[1] + v27;
      if (v8 < v28)
      {
        goto LABEL_74;
      }

      a1[2] = v28;
      specialized CGPoint.init(from:)(a1);
      v31 = a1[5];
      if (!*(v31 + 2))
      {
        goto LABEL_92;
      }

      v10 = v29;
      v12 = v30;
      v2 = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
      }

      v32 = *(v31 + 2);
      if (!v32)
      {
        goto LABEL_96;
      }

      v33 = v32 - 1;
      v8 = *&v31[8 * v33 + 32];
      *(v31 + 2) = v33;
      a1[5] = v31;
      a1[2] = v8;
      goto LABEL_8;
    }

    if (v16 == 1)
    {
      break;
    }

    v42 = v14 & 7;
    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v44 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
        }

        if (v44 < 0)
        {
          goto LABEL_97;
        }

        v43 = a1[1] + v44;
        if (v8 < v43)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v42 != 5)
        {
          goto LABEL_74;
        }

        v43 = a1[1] + 4;
        if (v8 < v43)
        {
          goto LABEL_74;
        }
      }

      goto LABEL_7;
    }

    if ((v14 & 7) != 0)
    {
      if (v42 != 1)
      {
        goto LABEL_74;
      }

      v43 = a1[1] + 8;
      if (v8 < v43)
      {
        goto LABEL_74;
      }

LABEL_7:
      a1[1] = v43;
      goto LABEL_8;
    }

    ProtobufDecoder.decodeVarint()();
    if (v3)
    {
    }

LABEL_8:
    v7 = a1[1];
    if (v7 >= v8)
    {
      goto LABEL_6;
    }
  }

  v2 = v3;
  v17 = v14;

  if ((v17 & 7) != 2)
  {
    goto LABEL_75;
  }

  v18 = a1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
  }

  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  *&v18[8 * v20 + 32] = v8;
  a1[5] = v18;
  result = ProtobufDecoder.decodeVarint()();
  if (v3)
  {
    return result;
  }

  if (result < 0)
  {
    goto LABEL_90;
  }

  v21 = a1[1] + result;
  if (v8 < v21)
  {
    goto LABEL_75;
  }

  a1[2] = v21;
  DisplayList.init(from:)(&v51, a1);
  v22 = a1[5];
  if (!*(v22 + 2))
  {
    goto LABEL_94;
  }

  v2 = 0;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v23 = *(v22 + 2);
    if (!v23)
    {
      goto LABEL_73;
    }

    goto LABEL_29;
  }

  v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
  v23 = *(v22 + 2);
  if (v23)
  {
LABEL_29:
    v24 = v23 - 1;
    v8 = *&v22[8 * v24 + 32];
    *(v22 + 2) = v24;
    a1[5] = v22;
    a1[2] = v8;
    v11 = v51;
    v55 = v52;
    v50 = v53;
    goto LABEL_8;
  }

LABEL_73:
  __break(1u);
LABEL_74:

LABEL_75:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}