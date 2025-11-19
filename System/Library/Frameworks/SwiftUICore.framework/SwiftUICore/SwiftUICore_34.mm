Swift::Bool __swiftcall AnimatableAttributeHelper.checkReset()()
{
  v2 = v0;
  Value = AGGraphGetValue();
  v4 = v2;
  v5 = *Value >> 1;
  v6 = *(v1 + *(v4 + 52));
  if (v5 != v6)
  {
    AnimatableAttributeHelper.reset()();
  }

  return v5 != v6;
}

uint64_t CGColorForCoreColor(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 CGColor];
  }

  else
  {
    return 0;
  }
}

uint64_t _ShapeStyle_RenderedShape.render(color:)(uint64_t result)
{
  v2 = v1;
  v3 = *result;
  LODWORD(v4) = HIDWORD(*result);
  if (v4 == 0.0)
  {
    goto LABEL_2;
  }

  v15 = *(result + 16);
  v16 = v1[1];
  v120 = *v1;
  v121 = v16;
  *&v125[12] = *(v1 + 92);
  v17 = v1[3];
  v122 = v1[2];
  v123 = v17;
  v18 = v1[5];
  v124 = v1[4];
  *v125 = v18;
  v19 = v121;
  v20 = v122;
  v21 = BYTE1(v122);
  v22 = BYTE2(v122);
  v23 = *&v125[24] >> 29;
  if (*&v125[24] >> 29 <= 2u)
  {
    if (v23)
    {
      if (v23 == 1)
      {
        v24 = result;
        rect.origin = v120;
        v25 = swift_allocObject();
        v26 = swift_allocObject();
        *(v26 + 16) = 0;
        *(v26 + 24) = *v24;
        *(v26 + 40) = *(v24 + 16);
        *(v25 + 16) = 0;
        *(v25 + 24) = 0;
        *(v25 + 32) = rect.origin;
        v27 = v25 | 0x5000000000000000;
        *(v25 + 56) = 0;
        *(v25 + 64) = 0;
        *(v25 + 48) = v26;
      }

      else
      {
        v63 = swift_allocObject();
        *(v63 + 16) = 0;
        *(v63 + 24) = 0;
        *(v63 + 32) = 2143289344;
        *(v63 + 36) = 1;
        v27 = v63 | 0x1000000000000000;
      }
    }

    else
    {
      v101 = v3;
      rect.origin = v120;
      outlined copy of Path.Storage(v120, *(&v120 + 1), v121, *(&v121 + 1), v122);
      Value = AGGraphGetValue();
      v50 = 0;
      if (v15 > 1.0)
      {
        v110 = *Value;
        LOBYTE(v118[0]) = 3;
        EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(v118, &v103);
        v50 = v103;
      }

      if (v20)
      {
        _s7SwiftUI13AnimatedShapeVyAA024PartialContainerRelativeD0VGMaTm_0(0, &lazy cache variable for type metadata for _AnyResolvedPaint<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for _AnyResolvedPaint);
        v51 = swift_allocObject();
        *(v51 + 16) = v101.i32[0];
        *(v51 + 20) = *(v101.i64 + 4);
        *(v51 + 28) = v4;
        *(v51 + 32) = v15;
        *(v51 + 36) = 1;
        *(v51 + 37) = v50;
        v52 = swift_allocObject();
        *(v52 + 16) = rect.origin;
        *(v52 + 32) = v19;
        *(v52 + 48) = v20;
        *(v52 + 56) = v51;
        *(v52 + 64) = v21 & 1;
        v27 = v52 | 0x4000000000000000;
        *(v52 + 65) = v22 & 1;
      }

      else
      {
        v64 = swift_allocObject();
        *(v64 + 16) = v101.i32[0];
        *(v64 + 20) = *(v101.i64 + 4);
        *(v64 + 28) = v4;
        *(v64 + 32) = v15;
        *(v64 + 36) = v22 & 1;
        *(v64 + 37) = v50;
        v27 = v64 | 0x1000000000000000;
        v2[10] = vaddq_f64(*(v2 + 10), rect.origin);
        v2[11] = v19;
      }
    }

    goto LABEL_21;
  }

  rect.origin = v120;
  v28 = DWORD2(v122);
  v29 = v124;
  if (v23 == 3)
  {
    v99 = DWORD2(v124);
    v90 = *(&v122 + 3);
    v53 = BYTE7(v122);
    v98 = *&v125[16];
    v96 = *v125;
    v93 = *(&v124 + 13);
    v94 = *&v125[24] & 0x1FFFFFFF;
    v91 = v124 >> 8;
    v54 = vextq_s8(v3, v3, 8uLL).u64[0];
    v92 = HIBYTE(v124);
    v55 = vzip1_s32(*v3.i8, v54);
    v56 = vzip2_s32(*v3.i8, v54);
    LOBYTE(v110) = 0;
    v57 = BYTE12(v124);
    v58 = swift_allocObject();
    *(v58 + 16) = v120;
    *(v58 + 32) = v19;
    *(v58 + 48) = v20;
    *(v58 + 49) = v21;
    *(v58 + 50) = v22;
    *(v58 + 55) = v53;
    *(v58 + 51) = v90;
    *(v58 + 56) = v28;
    v59.i64[0] = v55.u32[0];
    v59.i64[1] = v55.u32[1];
    *(v58 + 60) = vorrq_s8(vshll_n_s32(v56, 0x20uLL), v59);
    *(v58 + 76) = v15;
    *(v58 + 80) = 0;
    *(v58 + 87) = HIBYTE(v29);
    *(v58 + 85) = HIDWORD(v29) >> 8;
    *(v58 + 81) = v91;
    *(v58 + 88) = v99;
    *(v58 + 92) = v57;
    *(v58 + 95) = v92;
    *(v58 + 93) = v93;
    *(v58 + 96) = v96;
    *(v58 + 112) = v98;
    *(v58 + 120) = v94;
    v27 = v58 | 0x3000000000000000;
    *&v115[12] = *(v2 + 92);
    v60 = v2[5];
    v114 = v2[4];
    *v115 = v60;
    v61 = v2[1];
    v110 = *v2;
    v111 = v61;
    v62 = v2[3];
    v112 = v2[2];
    v113 = v62;
    *&v115[24] &= 0x1FFFFFFFu;
    outlined init with copy of GraphicsImage(&v110, &v103);
LABEL_21:
    v65 = *(v2 + 54);
    result = outlined consume of DisplayList.Item.Value(*(v2 + 25), *(v2 + 26), *(v2 + 27), *(v2 + 28));
    *(v2 + 25) = v27;
    *(v2 + 26) = v65;
    *(v2 + 27) = 0;
    *(v2 + 28) = 0;
    v5 = *(v2 + 18);
    if (!v5)
    {
      return result;
    }

    v66 = *(v2 + 38);
    v67 = *(v2 + 24);
    v110 = 0uLL;
    v111 = v2[11];
    *&v112 = v67;
    *(&v112 + 1) = v27;
    *&v114 = 0;
    v113 = v65;
    DWORD2(v114) = 0;
    swift_retain_n();
    outlined copy of DisplayList.Item.Value(v27, v65, 0, 0);
    DisplayList.init(_:)(&v110, &v103);
    v12 = v103;
    v13 = WORD4(v103);
    v14 = v66 | 0x1200000000;
    goto LABEL_23;
  }

  if (v23 != 4)
  {
LABEL_2:
    v5 = *(v2 + 18);
    if (!v5)
    {
      return result;
    }

    v6 = *(v2 + 38);
    v7 = *(v2 + 26);
    v8 = *(v2 + 27);
    v9 = *(v2 + 28);
    v10 = *(v2 + 24);
    v11 = *(v2 + 25);
    v110 = 0uLL;
    v111 = v2[11];
    *&v112 = v10;
    *(&v112 + 1) = v11;
    *&v113 = v7;
    *(&v113 + 1) = v8;
    *&v114 = v9;
    DWORD2(v114) = 0;
    swift_retain_n();
    outlined copy of DisplayList.Item.Value(v11, v7, v8, v9);
    DisplayList.init(_:)(&v110, &v103);
    v12 = v103;
    v13 = WORD4(v103);
    v14 = v6 | 0x1200000000;
LABEL_23:
    v68 = v13 | (HIDWORD(v103) << 32) | 0x40000000;
    outlined consume of DisplayList.Item.Value(*(v2 + 25), *(v2 + 26), *(v2 + 27), *(v2 + 28));
    *(v2 + 25) = v5;
    *(v2 + 26) = v14;
    *(v2 + 27) = v12;
    *(v2 + 28) = v68;
    LOBYTE(v110) = *(v2 + 236);
    v69 = &v110;
LABEL_24:
    DisplayList.Item.canonicalize(options:)(v69);

    *(v2 + 18) = 0;
    *(v2 + 38) = 0;
    return result;
  }

  v100 = v3;
  v95 = result;
  v97 = v123;
  v30 = v121;
  v31 = *(v2 + 20);
  v32 = *(v2 + 21);
  *&v117[12] = *(v2 + 92);
  v33 = v2[5];
  v116[4] = v2[4];
  *v117 = v33;
  v34 = v2[1];
  v116[0] = *v2;
  v116[1] = v34;
  v35 = v2[3];
  v116[2] = v2[2];
  v116[3] = v35;
  *&v117[24] &= 0x1FFFFFFFu;
  v36 = BYTE12(v124);
  v37 = *(&v122 + 1);
  outlined init with copy of (DisplayList.Item, alphaOnly: Bool)(v116, &v103, &lazy cache variable for type metadata for (DisplayList.Item, alphaOnly: Bool));
  v128.origin.x = rect.origin.x;
  v128.origin.y = rect.origin.y;
  v128.size = v30;
  v129 = CGRectOffset(v128, v31, v32);
  width = v129.size.width;
  height = v129.size.height;
  *(v2 + 5) = v129;
  v40 = *(v2 + 25);
  v41 = *(v2 + 26);
  v43 = *(v2 + 27);
  v42 = *(v2 + 28);
  v118[4] = v124;
  *v119 = *v125;
  *&v119[12] = *&v125[12];
  v118[0] = v120;
  v118[1] = v121;
  v118[2] = v122;
  v118[3] = v123;
  *&v119[24] = *&v125[24] & 0x1FFFFFFF;
  outlined init with copy of (DisplayList.Item, alphaOnly: Bool)(v118, &v103, &lazy cache variable for type metadata for (DisplayList.Item, alphaOnly: Bool));
  outlined consume of DisplayList.Item.Value(v40, v41, v43, v42);
  *(v2 + 25) = v37;
  v2[13] = v97;
  *(v2 + 28) = v29;
  if (v36)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v126 = _Q0;
    v127 = 2143289344;
    if (specialized static Color.ResolvedHDR.== infix(_:_:)(v95, &v126))
    {
      result = outlined destroy of _ShapeStyle_RenderedShape.Shape(&v120);
      goto LABEL_28;
    }

    v103 = v100;
    *&v104 = v15;
    _s7SwiftUI14GraphicsFilterOWOi6_(&v103);
    v114 = v107;
    *v115 = v108;
    *&v115[16] = v109[0];
    *&v115[28] = *(v109 + 12);
    v110 = v103;
    v111 = v104;
    v112 = v105;
    v113 = v106;
  }

  else
  {
    v103 = v100;
    *&v104 = v15;
    _s7SwiftUI14GraphicsFilterOWOi7_(&v103);
    v114 = v107;
    *v115 = v108;
    *&v115[16] = v109[0];
    *&v115[28] = *(v109 + 12);
    v110 = v103;
    v111 = v104;
    v112 = v105;
    v113 = v106;
  }

  v70 = swift_allocObject();
  v71 = *v115;
  v70[5] = v114;
  v70[6] = v71;
  v70[7] = *&v115[16];
  *(v70 + 124) = *&v115[28];
  v72 = v111;
  v70[1] = v110;
  v70[2] = v72;
  v73 = v113;
  v70[3] = v112;
  v70[4] = v73;
  v74 = *(v2 + 26);
  v75 = *(v2 + 27);
  v76 = *(v2 + 28);
  v78 = *(v2 + 24);
  v77 = *(v2 + 25);
  v103 = 0uLL;
  *&v104 = width;
  *(&v104 + 1) = height;
  *&v105 = v78;
  *(&v105 + 1) = v77;
  *&v106 = v74;
  *(&v106 + 1) = v75;
  *&v107 = v76;
  DWORD2(v107) = 0;
  outlined copy of DisplayList.Item.Value(v77, v74, v75, v76);

  DisplayList.init(_:)(&v103, &rect.size);
  v79 = rect.size.width;
  v80 = LOWORD(rect.size.height) | (HIDWORD(rect.size.height) << 32) | 0x40000000;
  outlined consume of DisplayList.Item.Value(*(v2 + 25), *(v2 + 26), *(v2 + 27), *(v2 + 28));
  *(v2 + 25) = v70;
  *(v2 + 26) = 0xA00000000;
  *(v2 + 27) = v79;
  *(v2 + 28) = v80;
  LOBYTE(v103) = *(v2 + 236);
  DisplayList.Item.canonicalize(options:)(&v103);

  result = outlined destroy of _ShapeStyle_RenderedShape.Shape(&v120);
LABEL_28:
  v81 = *(v2 + 18);
  if (v81)
  {
    v82 = *(v2 + 38);
    v83 = *(v2 + 26);
    v84 = *(v2 + 27);
    v85 = *(v2 + 28);
    v86 = *(v2 + 24);
    v87 = *(v2 + 25);
    v103 = 0uLL;
    v104 = v2[11];
    *&v105 = v86;
    *(&v105 + 1) = v87;
    *&v106 = v83;
    *(&v106 + 1) = v84;
    *&v107 = v85;
    DWORD2(v107) = 0;
    swift_retain_n();
    outlined copy of DisplayList.Item.Value(v87, v83, v84, v85);
    DisplayList.init(_:)(&v103, &rect.size);
    v88 = rect.size.width;
    v89 = LOWORD(rect.size.height) | (HIDWORD(rect.size.height) << 32) | 0x40000000;
    outlined consume of DisplayList.Item.Value(*(v2 + 25), *(v2 + 26), *(v2 + 27), *(v2 + 28));
    *(v2 + 25) = v81;
    *(v2 + 26) = v82 | 0x1200000000;
    *(v2 + 27) = v88;
    *(v2 + 28) = v89;
    LOBYTE(v103) = *(v2 + 236);
    v69 = &v103;
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_18D1F7814()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_18D1F785C()
{

  return swift_deallocObject();
}

void type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for AnimatedShape();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI13AnimatedShapeVyAA024PartialContainerRelativeD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

Swift::Void __swiftcall ShapeStyleResolver.updateValue()()
{
  v2 = v1;
  v101 = *MEMORY[0x1E69E9840];
  v72 = v0;
  v3 = *(v0 + 16);
  v4 = *(v3 - 8);
  (MEMORY[0x1EEE9AC00])();
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v8 = &v68 - v7;
  v70 = type metadata accessor for Optional();
  v9 = swift_getTupleTypeMetadata2();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v68 - v16;
  v19 = *v2;
  v20 = *MEMORY[0x1E698D3F8];
  v79 = v10;
  v75 = v4;
  v76 = v3;
  v81 = v9;
  if (v19 == v20)
  {
    v21 = *(v9 + 48);
    (*(v4 + 56))(&v68 - v16, 1, 1, v3, v17);
    v18[v21] = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v80 = v23;
    (*(v4 + 16))(v8, Value, v3);
    v82 = v2;
    v24 = v18;
    v25 = *(v9 + 48);
    (*(v4 + 32))(v14, v8, v3);
    (*(v4 + 56))(v14, 0, 1, v3);
    v14[v25] = v80 & 1;
    v18 = v24;
    v2 = v82;
    (*(v10 + 32))(v18, v14, v9);
  }

  if (v2[1] == v20)
  {
    v26 = 0;
    v27 = 0;
    LODWORD(v82) = 0;
    v28 = 1;
  }

  else
  {
    v29 = AGGraphGetValue();
    v26 = v30;
    v27 = *v29;
    v28 = *(v29 + 8);
    LODWORD(v82) = *(v29 + 10);
    v31 = v27;
  }

  v32 = AGGraphGetValue();
  v35 = *v32;
  v34 = v32[1];
  v84 = MEMORY[0x1E69E7CC0];
  if (v18[*(v81 + 48)] & 1) != 0 || (v26)
  {
    v40 = 1;
    v85 = 1;
  }

  else
  {
    v36 = v33;
    OutputValue = AGGraphGetOutputValue();
    v85 = OutputValue == 0;
    if (OutputValue)
    {
      if ((v36 & 1) == 0)
      {
        v38 = (v2 + 4);
        v39 = *(v2 + 6);

        if (!v39)
        {
          goto LABEL_21;
        }

LABEL_18:
        v73 = v38;
        v78 = v34;
        v80 = v18;
        v69 = 0;
        goto LABEL_25;
      }

      v41 = swift_retain_n();
      v40 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v41);

      v85 = v40 & 1;
    }

    else
    {

      v40 = 1;
    }
  }

  v38 = (v2 + 4);
  v39 = *(v2 + 6);
  if (v39)
  {
    if ((v40 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((v40 & 1) == 0)
    {
LABEL_21:
      if (v2[14] == *AGGraphGetValue() >> 1)
      {
        (*(v79 + 8))(v18, v81);

        goto LABEL_60;
      }

      *(v2 + 6) = 0;

      *(v2 + 4) = 0;
      *(v2 + 40) = 0;
      v39 = 0;
      v2[14] = *AGGraphGetValue() >> 1;
      v85 = 1;
      goto LABEL_24;
    }

    v39 = 0;
  }

LABEL_24:
  v73 = v38;
  v78 = v34;
  v80 = v18;
  PropertyList.Tracker.reset()();
  v69 = 1;
LABEL_25:
  v42 = v81;
  v68 = v28;
  if (v82)
  {
    v43 = v28;
  }

  else
  {
    v43 = v28 != 0;
  }

  v44 = *(v2 + 8);
  v45 = v27;
  if (v35)
  {
    v46 = *(v35 + 64);
  }

  else
  {
    v46 = 0;
  }

  v47 = v35;
  v48 = *(v44 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v48 + 16));
  *(v48 + 24) = v46;
  os_unfair_lock_unlock((v48 + 16));

  v49 = *(v2 + 6);
  v100[27] = 0;
  v95 = 0uLL;
  *&v96 = v43;
  BYTE8(v96) = 1;
  *&v97 = 0;
  BYTE8(v97) = 5;
  v77 = v47;
  *&v98 = v47;
  *(&v98 + 1) = v44;
  v99 = 0u;
  memset(v100, 0, 24);
  v100[24] = 1;
  *&v100[25] = v49;
  if (v43)
  {
    v50 = v79;
    v51 = v74;
    v52 = v42;
    (*(v79 + 16))(v74, v80, v42);
    v54 = v75;
    v53 = v76;
    v55 = v45;
    if ((*(v75 + 48))(v51, 1, v76) == 1)
    {
      (*(*(v70 - 8) + 8))(v51);
      specialized ForegroundStyle._apply(to:)(&v95);
      if (v82)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v56 = v51;
      v57 = v71;
      (*(v54 + 32))(v71, v56, v53);
      (*(*(v72 + 24) + 32))(&v95, v53);
      (*(v54 + 8))(v57, v53);
      if (v82)
      {
        goto LABEL_44;
      }
    }

    LOBYTE(v86[0]) = 0;
    v87 = v98;
    v58 = BYTE8(v97);
    if (BYTE8(v97) == 1)
    {
      v59 = v97;

      outlined copy of _ShapeStyle_Shape.Result(v59, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v59, 1u);
      v60 = 0;
      v58 = 5;
    }

    else
    {

      v60 = v97;

      v59 = MEMORY[0x1E69E7CC0];
    }

    *&v94[0] = v59;
    _ShapeStyle_Pack.createOpacities(count:name:environment:)(v68, v86, &v87);

    v61 = *&v94[0];

    outlined consume of _ShapeStyle_Shape.Result(v60, v58);
    *&v97 = v61;
    BYTE8(v97) = 1;
  }

  else
  {
    v52 = v42;
    v50 = v79;
    v55 = v45;
    if (v69)
    {
      if (v39)
      {
        specialized AnimatorState.removeListeners()();
      }

      *(v2 + 6) = 0;

      *(v2 + 4) = 0;
      *(v2 + 40) = 0;
      v2[14] = *AGGraphGetValue() >> 1;
    }
  }

LABEL_44:
  if ((v82 & 2) != 0)
  {
    v95 = xmmword_18DD85500;
    *&v96 = 1;
    BYTE8(v96) = 1;
    v100[25] = 0;
    BackgroundStyle._apply(to:)(&v95);
  }

  if ((v82 & 4) != 0)
  {
    v87 = v98;
    v63 = v55;

    ResolvedMulticolorStyle.init(in:bundle:)(&v87, v55, v94);
    v87 = v94[0];
    v88 = v94[1];
    BYTE5(v92[0]) = 6;
    DWORD2(v92[0]) = 1065353216;
    *&v92[1] = 0;
    BYTE8(v92[1]) = -1;
    v93 = MEMORY[0x1E69E7CC0];
    v83 = 2;
    v64 = BYTE8(v97);
    if (BYTE8(v97) == 1)
    {
      v65 = v97;
      outlined init with copy of ResolvedMulticolorStyle(v94, v86);
      outlined copy of _ShapeStyle_Shape.Result(v65, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v65, 1u);
      v66 = 0;
      v64 = 5;
    }

    else
    {
      outlined init with copy of ResolvedMulticolorStyle(v94, v86);
      v65 = MEMORY[0x1E69E7CC0];
      v66 = v97;
    }

    v86[0] = v65;
    _ShapeStyle_Pack.subscript.setter(&v87, &v83, 0);
    outlined destroy of ResolvedMulticolorStyle(v94);
    v67 = v86[0];

    outlined consume of _ShapeStyle_Shape.Result(v66, v64);
    *&v97 = v67;
    BYTE8(v97) = 1;

    goto LABEL_53;
  }

  if (BYTE8(v97) == 1)
  {
LABEL_53:
    v62 = v97;

    goto LABEL_54;
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_54:

  v84 = v62;
  if ((*(v2 + 14) & 1) == 0)
  {
    specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v84, 0, v2[2], v73);
  }

  if (v85 == 1)
  {
    *&v87 = v84;
    AGGraphSetOutputValue();

    (*(v50 + 8))(v80, v52);
  }

  else
  {
    (*(v50 + 8))(v80, v52);
  }

  v92[0] = *v100;
  *(v92 + 12) = *&v100[12];
  v87 = v95;
  v88 = v96;
  v90 = v98;
  v91 = v99;
  v89 = v97;
  outlined destroy of _ShapeStyle_Shape(&v87);
LABEL_60:
}

double protocol witness for Shape.path(in:) in conformance RoundedRectangle@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  RoundedRectangle.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = v6 >> 5;
      if (v6 >> 5 > 3)
      {
        if (v6 >> 5 <= 5)
        {
          if (v9 == 4)
          {
            if ((v8 & 0xE0) != 0x80)
            {
              return 0;
            }
          }

          else if ((v8 & 0xE0) != 0xA0)
          {
            return 0;
          }

LABEL_6:
          if (*&v5 != *&v7)
          {
            return 0;
          }

          goto LABEL_7;
        }

        if (v9 == 6)
        {
          if ((v8 & 0xE0) != 0xC0)
          {
            return 0;
          }

          v12 = *(*v5 + 96);
          outlined copy of Text.Modifier(*(v4 - 1), *v4);
          outlined copy of Text.Modifier(v5, v6);
          v11 = v12(v7);
          goto LABEL_32;
        }

        result = 0;
        if (v5 | v6 ^ 0xE0)
        {
          if (v8 < 0xE0 || v7 != 1)
          {
            return result;
          }
        }

        else if (v8 < 0xE0 || *&v7 != 0.0)
        {
          return result;
        }

        if (v8 != 224)
        {
          return result;
        }
      }

      else if (v6 >> 5 > 1)
      {
        if (v9 != 2)
        {
          if ((v8 & 0xE0) != 0x60)
          {
            return 0;
          }

          goto LABEL_6;
        }

        if ((v8 & 0xE0) != 0x40)
        {
          return 0;
        }

        if ((v6 & 1) == 0)
        {
          if (v8)
          {
            return 0;
          }

          goto LABEL_6;
        }

        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v9)
        {
          if ((v8 & 0xE0) != 0x20)
          {
            return 0;
          }

          if (*&v5 != 0.0)
          {
            if (*&v7 == 0.0)
            {
              return 0;
            }

            v13 = *(*v5 + 112);
            outlined copy of Text.Modifier(*(v4 - 1), *v4);
            outlined copy of Text.Modifier(v5, v6);
            v11 = v13(v7);
LABEL_32:
            v14 = v11;
            outlined consume of Text.Modifier(v7, v8);
            outlined consume of Text.Modifier(v5, v6);
            if ((v14 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_7;
          }
        }

        else
        {
          if (v8 >= 0x20)
          {
            return 0;
          }

          if (*&v5 != 0.0)
          {
            if (*&v7 == 0.0)
            {
              return 0;
            }

            if (v5 == v7)
            {
              goto LABEL_7;
            }

            v10 = *(*v5 + 88);
            outlined copy of Text.Modifier(*(v4 - 1), *v4);
            outlined copy of Text.Modifier(v5, v6);
            v11 = v10(v7);
            goto LABEL_32;
          }
        }

        if (*&v7 != 0.0)
        {
          return 0;
        }
      }

LABEL_7:
      v3 += 2;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t initializeWithCopy for UnaryLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = (v7 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v8 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *v10 = v12;
  v13 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + 19) & 0xFFFFFFFFFFFFFFF8;
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
  memcpy(((v10 + 187) & 0xFFFFFFFFFFFFFFF8), ((v11 + 187) & 0xFFFFFFFFFFFFFFF8), 0x131uLL);
  return a1;
}

uint64_t protocol witness for ViewTransformElement.forEach(inverted:stop:_:) in conformance TranslationElement(unsigned int a1, uint64_t a2, uint64_t (*a3)(int8x16_t *))
{
  v4 = vdup_n_s32(a1);
  v5.i64[0] = v4.u32[0];
  v5.i64[1] = v4.u32[1];
  v7[0] = vbslq_s8(vcltzq_s64(vshlq_n_s64(v5, 0x3FuLL)), vnegq_f64(*v3), *v3);
  v8 = 0;
  return a3(v7);
}

uint64_t ViewTransform.UnsafeBuffer.appendProjectionTransform(_:inverse:)(uint64_t result, char a2)
{
  v3 = result;
  if (*(result + 16) != 0.0 || *(result + 40) != 0.0 || *(result + 64) != 1.0)
  {
    goto LABEL_11;
  }

  v4 = *(result + 48);
  v5 = *(result + 56);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*result, xmmword_18DDAA020), vceqq_f64(*(result + 24), xmmword_18DDAB500))))))
  {
    v22 = *(result + 24);
    v23 = *result;
    type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for ViewTransform.UnsafeBuffer._VTable<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for ViewTransform.UnsafeBuffer._VTable);
    v3 = v7;
    result = UnsafeHeterogeneousBuffer.allocate(bytes:)(80);
    *result = v3;
    *(result + 8) = 80;
    *(result + 16) = v23;
    *(result + 32) = v22;
    *(result + 48) = v4;
    *(result + 56) = v5;
    *(result + 64) = a2 & 1;
    if (!*v2)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    v8 = result - *v2;
    if (v8 < 0xFFFFFFFF80000000)
    {
      goto LABEL_30;
    }

    if (v8 > 0x7FFFFFFF)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v9 = *(v2 + 12);
    v2 += 12;
    v10 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v11 = a2 & 1;
    type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for ViewTransform.UnsafeBuffer._VTable<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for ViewTransform.UnsafeBuffer._VTable);
    v13 = v12;
    result = UnsafeHeterogeneousBuffer.allocate(bytes:)(96);
    *result = v13;
    *(result + 8) = 96;
    *(result + 80) = *(v3 + 64);
    v14 = *(v3 + 48);
    *(result + 48) = *(v3 + 32);
    *(result + 64) = v14;
    v15 = *(v3 + 16);
    *(result + 16) = *v3;
    *(result + 32) = v15;
    *(result + 88) = v11;
    if (!*v2)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v16 = result - *v2;
    if (v16 >= 0xFFFFFFFF80000000)
    {
      if (v16 <= 0x7FFFFFFF)
      {
        v17 = *(v2 + 12);
        v2 += 12;
        v10 = v17 + 1;
        if (!__OFADD__(v17, 1))
        {
LABEL_15:
          *v2 = v10;
          return result;
        }

        goto LABEL_29;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v4 != 0.0 || v5 != 0.0)
  {
    if (a2)
    {
      v5 = -v5;
      v4 = -v4;
    }

    type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for ViewTransform.UnsafeBuffer._VTable<TranslationElement>, lazy protocol witness table accessor for type TranslationElement and conformance TranslationElement, &unk_1F00BA9D8, type metadata accessor for ViewTransform.UnsafeBuffer._VTable);
    v19 = v18;
    result = UnsafeHeterogeneousBuffer.allocate(bytes:)(32);
    *result = v19;
    *(result + 8) = 32;
    *(result + 16) = v4;
    *(result + 24) = v5;
    if (!*v2)
    {
      goto LABEL_36;
    }

    v20 = result - *v2;
    if (v20 < 0xFFFFFFFF80000000)
    {
      goto LABEL_32;
    }

    if (v20 > 0x7FFFFFFF)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v21 = *(v2 + 12);
    v2 += 12;
    v10 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_27;
  }

  return result;
}

uint64_t assignWithCopy for StyledTextContentView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Font.PlatformFontProvider()
{
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type CTFontRef and conformance CTFontRef();
  return static _CFObject.== infix(_:_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type CTFontRef and conformance CTFontRef()
{
  result = lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef;
  if (!lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef)
  {
    type metadata accessor for CTFontRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef);
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI20KeyedAnimatableArrayV7ElementVyAC16_ShapeStyle_PackV3KeyVAC0E4PairVyAI4FillO0E4DataOAMySfAC0eF0VyAMySfAI6EffectV4KindOAPOGGGG_G_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    v4 = a2 + 32;
    v5 = *(a1 + 112);
    v58 = *(a1 + 96);
    v59 = v5;
    v60 = *(a1 + 128);
    v6 = *(a1 + 48);
    v54 = *(a1 + 32);
    v55 = v6;
    v7 = *(a1 + 80);
    v56 = *(a1 + 64);
    v57 = v7;
    v8 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v8;
    v9 = *(a2 + 64);
    v10 = *(a2 + 80);
    v11 = *(a2 + 128);
    v66 = *(a2 + 112);
    v67 = v11;
    v12 = *(a2 + 96);
    v64 = v10;
    v65 = v12;
    v63 = v9;
    if (v54 == v61)
    {
      v13 = 1;
      v14 = (a2 + 32);
      v15 = (a1 + 32);
      while (BYTE1(v54) == BYTE1(v61))
      {
        v16 = *(v15 + 56);
        v17 = *(v15 + 88);
        v52[4] = *(v15 + 72);
        v52[5] = v17;
        v53 = *(v15 + 13);
        v18 = *(v15 + 24);
        v52[0] = *(v15 + 8);
        v52[1] = v18;
        v52[2] = *(v15 + 40);
        v52[3] = v16;
        v19 = *(v14 + 56);
        v20 = *(v14 + 88);
        v50[4] = *(v14 + 72);
        v50[5] = v20;
        v51 = *(v14 + 13);
        v21 = *(v14 + 24);
        v50[0] = *(v14 + 8);
        v50[1] = v21;
        v50[2] = *(v14 + 40);
        v50[3] = v19;
        outlined init with copy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v54, v49, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
        outlined init with copy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v61, v49, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
        if ((specialized static _ShapeStyle_Pack.Fill.AnimatableData.== infix(_:_:)(v52, v50) & 1) == 0)
        {
          goto LABEL_42;
        }

        if (*&v60 != *&v67)
        {
          goto LABEL_42;
        }

        v22 = *(*(&v60 + 1) + 16);
        if (v22 != *(*(&v67 + 1) + 16))
        {
          goto LABEL_42;
        }

        if (v22 && *(&v60 + 1) != *(&v67 + 1))
        {
          v23 = 0;
          while (1)
          {
            v24 = *(&v60 + 1) + v23;
            v25 = *(&v67 + 1) + v23;
            if (*(*(&v60 + 1) + v23 + 32) != *(*(&v67 + 1) + v23 + 32))
            {
              break;
            }

            if (*(v24 + 80))
            {
              if ((*(v25 + 80) & 1) == 0)
              {
                break;
              }
            }

            else
            {
              if (*(v25 + 80))
              {
                break;
              }

              v26 = *(v24 + 40);
              v27 = *(v24 + 48);
              v28 = *(v24 + 56);
              v29 = *(v24 + 64);
              v30 = *(v24 + 72);
              v31 = *(v25 + 40);
              v32 = *(v25 + 48);
              v33 = *&v26 == *&v31 && *(&v26 + 1) == *(&v31 + 1);
              v34 = v33 && *&v27 == *&v32;
              v35 = v34 && *(&v27 + 1) == *(&v32 + 1);
              v36 = v35 && v28 == *(v25 + 56);
              v37 = v36 && v29 == *(v25 + 64);
              if (!v37 || v30 != *(v25 + 72))
              {
                break;
              }
            }

            v23 += 56;
            if (!--v22)
            {
              goto LABEL_38;
            }
          }

LABEL_42:
          outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v61, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
          outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v54, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
          return 0;
        }

LABEL_38:
        outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v61, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
        outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v54, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
        if (v13 == v2)
        {
          return 1;
        }

        v39 = 112 * v13;
        v15 = (v3 + 112 * v13);
        v40 = v15[5];
        ++v13;
        v58 = v15[4];
        v59 = v40;
        v60 = v15[6];
        v41 = v15[1];
        v54 = *v15;
        v55 = v41;
        v42 = v15[3];
        v56 = v15[2];
        v57 = v42;
        v14 = (v4 + v39);
        v43 = v14[1];
        v61 = *v14;
        v62 = v43;
        v44 = v14[2];
        v45 = v14[3];
        v46 = v14[6];
        v66 = v14[5];
        v67 = v46;
        v47 = v14[4];
        v64 = v45;
        v65 = v47;
        v63 = v44;
        if (v54 != v61)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t initializeWithCopy for _ShapeStyle_Pack.Fill.AnimatableData(uint64_t a1, uint64_t a2)
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
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  outlined copy of _ShapeStyle_Pack.Fill.AnimatableData(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  return a1;
}

uint64_t outlined copy of _ShapeStyle_Pack.Fill.AnimatableData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 > 4u)
  {
    if (a11 != 5)
    {
      if (a11 == 6)
      {
      }

      else if (a11 != 7)
      {
        return result;
      }
    }

    goto LABEL_13;
  }

  if (a11 == 2 || (a11 != 3 ? (v11 = a11 == 4) : (v11 = 1), v11))
  {
LABEL_13:
  }

  return result;
}

uint64_t specialized static _ShapeStyle_Pack.Fill.AnimatableData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v52 = *(a1 + 32);
  v53 = v3;
  v4 = *(a1 + 48);
  v54 = *(a1 + 64);
  v5 = *(a1 + 16);
  v50 = *a1;
  v51 = v5;
  v6 = *(a2 + 16);
  v7 = v6;
  v56 = *a2;
  v57 = v6;
  v8 = *(a2 + 48);
  v60 = *(a2 + 64);
  v9 = *(a2 + 48);
  v58 = *(a2 + 32);
  v59 = v9;
  v62[0] = v50;
  v62[1] = v2;
  v10 = *(a1 + 64);
  v62[3] = v4;
  v62[4] = v10;
  v55 = *(a1 + 80);
  v61 = *(a2 + 80);
  v63 = *(a1 + 80);
  v62[2] = v52;
  v65 = v7;
  v64 = v56;
  v11 = *(a2 + 64);
  v69 = *(a2 + 80);
  v68 = v11;
  v67 = v8;
  v66 = v58;
  v13 = *(&v52 + 1);
  v12 = *&v53;
  v14 = *&v51.i32[3];
  v15 = v51.u8[8];
  if (v55 > 4u)
  {
    if (v55 <= 6u)
    {
      if (v55 == 5)
      {
        if (v61 == 5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v36 = vextq_s8(v50, v50, 8uLL).u64[0];
        v37 = vshll_n_s32(vzip2_s32(*v50.f32, v36), 0x20uLL);
        v38 = vzip1_s32(*v50.f32, v36);
        v39.i64[0] = v38.u32[0];
        v39.i64[1] = v38.u32[1];
        v42[0] = vorrq_s8(v37, v39);
        v42[1] = v51;
        v43 = v52;
        if (v61 == 6)
        {
          v44 = v56;
          v45 = v57;
          LODWORD(v46) = v58.i32[0];
          v33 = _s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZAA0C5ArrayVySfG_ACyAGyACySfACySfACyS2fGGGGAA5ColorVAAE11ResolvedHDRV01_C0VGTt1B5(v42, v44.f32);
          goto LABEL_45;
        }
      }
    }

    else
    {
      if (v55 != 7)
      {
        if (v55 == 8)
        {
          v44 = v50;
          v45 = v51;
          v46 = v52;
          v47 = v53;
          v48 = *(a1 + 56);
          v49 = *(a1 + 72);
          if (v61 != 8)
          {
            goto LABEL_49;
          }

          v22 = *(a2 + 48);
          v41[2] = *(a2 + 32);
          v41[3] = v22;
          v41[4] = *(a2 + 64);
          v23 = *(a2 + 16);
          v41[0] = *a2;
          v41[1] = v23;
          outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
          v24 = specialized static _ColorMatrix.== infix(_:_:)(&v44, v41);
        }

        else
        {
          if (v61 != 9)
          {
            goto LABEL_49;
          }

          v34 = vorrq_s8(vorrq_s8(v57, v59), vorrq_s8(v58, v60));
          if (*&vorr_s8(*v34.i8, *&vextq_s8(v34, v34, 8uLL)) | v56.i64[1] | v56.i64[0])
          {
            goto LABEL_49;
          }

          outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
          v24 = 1;
        }

        return v24 & 1;
      }

      if (v61 == 7)
      {
        v33 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI16ShaderVectorDataV7ElementO_Tt1g5(v50.i64[0], v56.i64[0]);
LABEL_45:
        v24 = v33;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v56, v41);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v50, v41);
        outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
        return v24 & 1;
      }
    }

LABEL_48:

    goto LABEL_49;
  }

  if (v55 > 1u)
  {
    if (v55 == 2)
    {
      if (v61 == 2)
      {
        v25 = vextq_s8(v50, v50, 8uLL).u64[0];
        v26 = vshll_n_s32(vzip2_s32(*v50.f32, v25), 0x20uLL);
        v27 = vzip1_s32(*v50.f32, v25);
        v28.i64[0] = v27.u32[0];
        v28.i64[1] = v27.u32[1];
        if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(vorrq_s8(v26, v28), v56), vceqq_f64(v51, v57)))))
        {
          v29 = v58.u8[8];
          v30 = *&v58.i32[3];
          v31 = v59.i8[0];
          if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(v52, v58.i64[0]))
          {
            outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v56, v41);
            outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v50, v41);
            outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
            if (v29 == LOBYTE(v13))
            {
              if (LOBYTE(v12))
              {
                if ((v31 & 1) == 0)
                {
                  goto LABEL_51;
                }
              }

              else if ((v31 & 1) != 0 || v30 != *(&v13 + 1))
              {
                goto LABEL_51;
              }

              goto LABEL_57;
            }

LABEL_51:
            v24 = 0;
            return v24 & 1;
          }
        }

        goto LABEL_31;
      }
    }

    else if (v55 == 3)
    {
      if (v61 == 3)
      {
LABEL_6:
        if (*v56.i64 == *v50.i64 && *&v56.i64[1] == *&v50.i64[1])
        {
          v16 = v52;
          v17 = v57.u8[8];
          v18 = *&v57.i32[3];
          v19 = v58.i8[0];
          v21 = *&v58.i64[1];
          v20 = *v59.i64;
          if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(v51.u32[0] | (v51.u32[1] << 32), v57.i64[0]))
          {
            outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v56, v41);
            outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v50, v41);
            outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
            if (v17 == v15)
            {
              if (v16)
              {
                if ((v19 & 1) == 0)
                {
                  goto LABEL_51;
                }
              }

              else if ((v19 & 1) != 0 || v18 != v14)
              {
                goto LABEL_51;
              }

              if (v13 != v21 || v12 != v20)
              {
                goto LABEL_51;
              }

LABEL_57:
              v24 = 1;
              return v24 & 1;
            }

            goto LABEL_51;
          }
        }

LABEL_31:
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v56, v41);
        v32 = &v50;
LABEL_50:
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v32, v41);
        outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
        goto LABEL_51;
      }
    }

    else if (v61 == 4)
    {
      goto LABEL_6;
    }

    goto LABEL_48;
  }

  if (!v55)
  {
    if (!v61)
    {
      outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
      v24 = vminv_u16(vmovn_s32(vceqq_f32(v56, v50))) & (*v57.i32 == *v51.i32);
      return v24 & 1;
    }

LABEL_49:
    v32 = &v56;
    goto LABEL_50;
  }

  if (v61 != 1)
  {
    goto LABEL_49;
  }

  outlined destroy of (ShapeType, ShapeType)(v62, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
  v35 = vminv_u16(vmovn_s32(vceqq_f32(v56, v50))) & (*v57.i32 == *v51.i32);
  if (*&v57.i32[1] == *&v51.i32[1])
  {
    v24 = v35;
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t DisplayList.Item.paint(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = *(v4 + 64);
  if ((v5 & 0xC0000000) != 0)
  {
    return 0;
  }

  v8 = *v4;
  v7 = *(v4 + 8);
  v10 = *(v4 + 16);
  v9 = *(v4 + 24);
  v11 = *(v4 + 40);
  if (v11 >> 60 != 4)
  {
    if (v11 >> 60 == 1)
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v14 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v15 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x24);
      v16 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x25);
      v37.origin.x = v8;
      v37.origin.y = v7;
      v37.size.width = v10;
      v37.size.height = v9;
      if (CGRectEqualToRect(*&a1, v37))
      {
        type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for _AnyResolvedPaint);
        result = swift_allocObject();
        *(result + 16) = v12;
        *(result + 24) = v13;
        *(result + 32) = v14;
        *(result + 36) = v15;
        *(result + 37) = v16;
        return result;
      }
    }

    return 0;
  }

  v18 = *(v4 + 48);
  v17 = *(v4 + 56);
  v19 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v31[0] = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v31[1] = v19;
  v32 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  v20 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
  outlined copy of DisplayList.Item.Value(v11, v18, v17, v5);
  outlined copy of DisplayList.Item.Value(v11, v18, v17, v5);
  v25 = v20;

  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  v38.origin.x = v8;
  v38.origin.y = v7;
  v38.size.width = v10;
  v38.size.height = v9;
  if (!CGRectEqualToRect(v35, v38))
  {
    outlined consume of DisplayList.Item.Value(v11, v18, v17, v5);
LABEL_20:

    outlined consume of DisplayList.Item.Value(v11, v18, v17, v5);
    return 0;
  }

  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = a3;
  v36.size.height = a4;
  IsNull = CGRectIsNull(v36);
  if (IsNull)
  {
    v27 = 0;
  }

  else
  {
    v27 = *&a3;
  }

  if (IsNull)
  {
    v28 = 0;
  }

  else
  {
    v28 = *&a4;
  }

  v33[0] = 0;
  v33[1] = 0;
  v33[2] = v27;
  v33[3] = v28;
  if (IsNull)
  {
    v29 = 6;
  }

  else
  {
    v29 = 0;
  }

  v34 = v29;
  outlined copy of Path.Storage(0, 0, v27, v28, v29);
  v30 = specialized static Path.Storage.== infix(_:_:)(v31, v33);
  outlined consume of Path.Storage(0, 0, v27, v28, v29);
  outlined consume of Path.Storage(0, 0, v27, v28, v29);
  outlined consume of DisplayList.Item.Value(v11, v18, v17, v5);
  if ((v30 & 1) == 0)
  {
    goto LABEL_20;
  }

  outlined consume of DisplayList.Item.Value(v11, v18, v17, v5);
  return v25;
}

uint64_t _ShapeStyle_RenderedShape.render(material:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  v5 = v1[5];
  __src[4] = v1[4];
  __src[5] = v5;
  v6 = v1[7];
  __src[6] = v1[6];
  __src[7] = v6;
  v7 = v1[1];
  __src[0] = *v1;
  __src[1] = v7;
  v8 = v1[3];
  __src[2] = v1[2];
  __src[3] = v8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 17);
  v11 = *(v1 + 20);
  v12 = *(v1 + 21);
  v13 = v1[12];
  __src[11] = v1[11];
  __src[12] = v13;
  v14 = v1[14];
  __src[13] = v1[13];
  __src[14] = v14;
  v15 = *(v1 + 60);
  *(&__src[16] + 1) = *(v1 + 257);
  *(&__src[15] + 4) = *(v1 + 244);
  v120 = v9;
  *&__src[8] = v9;
  *(&__src[8] + 1) = v10;
  v116 = v1[9];
  __src[9] = v116;
  v117 = v12;
  v118 = v11;
  *&__src[10] = v11;
  *(&__src[10] + 1) = v12;
  v123 = v15;
  LODWORD(__src[15]) = v15;
  _ShapeStyle_RenderedShape.bounds.getter();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v178 = *(v1 + 236);
  v179 = MEMORY[0x1E69E7CC0];
  v180 = 0;
  *&__src[0] = v2;
  BYTE8(__src[0]) = v3;
  HIDWORD(__src[0]) = v4;
  v24 = Material.ResolvedMaterial.layers.getter();
  v25 = *(v24 + 16);
  v124 = v1;
  if (!v25)
  {

    v128 = 0;
    v92 = 0;
LABEL_69:
    v93 = *(v179 + 16);
    if (!v93)
    {
      v99 = 3221225472;
      v97 = 0;
      v98 = 0;
      goto LABEL_79;
    }

    if (v93 == 1)
    {
      v94 = *(v179 + 32);
      v95 = *(v179 + 48);
      v96 = *(v179 + 80);
      __src[2] = *(v179 + 64);
      __src[3] = v96;
      *(&__src[3] + 12) = *(v179 + 92);
      __src[0] = v94;
      __src[1] = v95;
      v93 = *(&__src[2] + 1);
      v98 = *(&__src[3] + 1);
      v97 = v96;
      v99 = *&__src[4];
      v17 = v17 + *&v94;
      v19 = v19 + *(&v94 + 1);
      outlined init with copy of DisplayList.Item(__src, __dst);
      if ((v92 & 1) == 0)
      {
LABEL_79:
        v101 = v124;
        outlined consume of DisplayList.Item.Value(*(v124 + 25), *(v124 + 26), *(v124 + 27), *(v124 + 28));
        *(v124 + 25) = v93;
        *(v124 + 26) = v97;
        *(v124 + 27) = v98;
        *(v124 + 28) = v99;
        *(v124 + 20) = v118 + v17;
        *(v124 + 21) = v117 + v19;
        *(v124 + 22) = v21;
        *(v124 + 23) = v23;
        if ((v128 & 1) == 0)
        {
        }

LABEL_82:
        if ((*(v101 + 264) & 2) == 0)
        {
          *(v101 + 264) |= 2u;
        }
      }
    }

    else
    {

      DisplayList.init(_:)(v100, __src);
      v93 = 0;
      v98 = *&__src[0];
      v99 = WORD4(__src[0]) | (HIDWORD(__src[0]) << 32) | 0x40000000;
      v97 = 0x1400000000;
      if ((v92 & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    v101 = v124;
    v102 = *(v124 + 24);
    *__src = v17;
    *(__src + 1) = v19;
    *&__src[1] = v21;
    *(&__src[1] + 1) = v23;
    *&__src[2] = v102;
    *(&__src[2] + 1) = v93;
    *&__src[3] = v97;
    *(&__src[3] + 1) = v98;
    *&__src[4] = v99;
    DWORD2(__src[4]) = 0;
    outlined copy of DisplayList.Item.Value(v93, v97, v98, v99);
    DisplayList.init(_:)(__src, __dst);
    v145 = WORD4(__dst[0]);
    v147 = *&__dst[0];
    v141 = v99;
    v143 = HIDWORD(__dst[0]);
    v137 = v98;
    if (v116 || *(v124 + 26) >> 29)
    {
      __asm { FMOV            V0.4S, #1.0 }

      v162 = _Q0;
      LODWORD(v163) = 2143289344;
      _ShapeStyle_RenderedShape.render(color:)(&v162);
      v111 = *(v124 + 26);
      v110 = *(v124 + 27);
      v112 = *(v124 + 28);
      v113 = *(v124 + 24);
      v114 = *(v124 + 25);
      __src[0] = 0uLL;
      __src[1] = v124[11];
      *&__src[2] = v113;
      *(&__src[2] + 1) = v114;
      *&__src[3] = v111;
      *(&__src[3] + 1) = v110;
      *&__src[4] = v112;
      DWORD2(__src[4]) = 0;
      v115 = swift_allocObject();
      __dst[2] = __src[2];
      __dst[3] = __src[3];
      *(&__dst[3] + 12) = *(&__src[3] + 12);
      __dst[0] = __src[0];
      __dst[1] = __src[1];
      outlined copy of DisplayList.Item.Value(v114, v111, v110, v112);
      outlined init with copy of DisplayList.Item(__src, &v172);
      DisplayList.init(_:)(__dst, v115 + 16);
      outlined consume of DisplayList.Item.Value(v93, v97, v137, v141);
      outlined destroy of DisplayList.Item(__src);
      *(v115 + 32) = 0;
      outlined consume of DisplayList.Item.Value(*(v124 + 25), *(v124 + 26), *(v124 + 27), *(v124 + 28));
      *(v124 + 25) = v115;
      *(v124 + 26) = 0x700000000;
      *(v124 + 27) = v147;
      *(v124 + 28) = v145 | (v143 << 32) | 0x40000000;
      if (v128)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v103 = *(v124 + 8);
      v105 = *(v124 + 2);
      v104 = *(v124 + 3);
      v107 = *v124;
      v106 = *(v124 + 1);
      outlined copy of Path.Storage(*v124, v106, v105, v104, v103);
      outlined consume of DisplayList.Item.Value(v93, v97, v137, v141);
      v108 = swift_allocObject();
      *(v108 + 16) = v107;
      *(v108 + 24) = v106;
      *(v108 + 32) = v105;
      *(v108 + 40) = v104;
      *(v108 + 48) = v103;
      *(v108 + 49) = BYTE1(v103) & 1;
      *(v108 + 50) = BYTE2(v103) & 1;
      *(v108 + 52) = 0;
      outlined consume of DisplayList.Item.Value(*(v124 + 25), *(v124 + 26), *(v124 + 27), *(v124 + 28));
      *(v124 + 25) = v108;
      *(v124 + 26) = 0x600000000;
      *(v124 + 27) = v147;
      *(v124 + 28) = v145 | (v143 << 32) | 0x40000000;
      if (v128)
      {
        goto LABEL_82;
      }
    }
  }

  v26 = 0;
  v27 = 0;
  v128 = 0;
  v28 = (v24 + 80);
  v134 = *(v1 + 54);
  v135 = *(v1 + 24);
  v133 = v25 - 1;
  __asm { FMOV            V0.4S, #1.0 }

  v119 = _Q0;
  v136 = v24;
  do
  {
    v35 = *(v28 - 6);
    v34 = *(v28 - 5);
    v37 = *(v28 - 4);
    v36 = *(v28 - 3);
    v38 = *(v28 - 3);
    v39 = *(v28 - 1);
    v40 = *v28;
    v146 = v27;
    v144 = v26;
    v142 = *(v28 - 16);
    if (v142 <= 1u)
    {
      v41 = HIDWORD(v35);
      if (*(v28 - 16))
      {
        v55 = HIDWORD(v35);
        v56 = *(v28 - 3);
        v57 = *(v28 - 6);
        v58 = *(v28 - 5);
        v127 = *v28;
        v59 = *(v28 - 1);
        v60 = swift_allocObject();
        *(v60 + 16) = v57;
        *(v60 + 20) = v55;
        *(v60 + 24) = v58;
        v39 = v59;
        v40 = v127;
        *(v60 + 32) = v37;
        *(v60 + 40) = v56;
        v128 = 1;
        outlined copy of Material.Layer.Storage(v57, v58, v37, v56, 1);
        outlined copy of GraphicsBlendMode(v39, v127);
        outlined copy of Material.Layer.Storage(v57, v58, v37, v56, 1);
        v61 = 0uLL;
        v138 = 1;
        v62 = v21;
        v63 = v23;
        goto LABEL_56;
      }

      v130 = *(v28 - 3);
      outlined copy of Material.Layer.Storage(v35, v34, v37, v36, 0);
      outlined copy of GraphicsBlendMode(v39, v40);
      Value = AGGraphGetValue();
      v43 = 0;
      if (*&v37 <= 1.0)
      {
        goto LABEL_54;
      }

      v45 = *Value;
      v44 = *(Value + 8);
      v131 = v39;
      if (v44)
      {

        swift_retain_n();
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV019AllowedDynamicRangeI033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt1g5(v45, __src);

        v46 = LOBYTE(__src[0]);
        if (LOBYTE(__src[0]) == 3)
        {
          v46 = 2;
        }

        if (v46)
        {
          v125 = v46;
          _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v45);
          v47 = v44;

          goto LABEL_44;
        }

        LODWORD(v41) = HIDWORD(v35);
LABEL_38:

        v43 = 0;
LABEL_54:
        v88 = swift_allocObject();
        *(v88 + 16) = v35;
        *(v88 + 20) = v41;
        *(v88 + 24) = v34;
        *(v88 + 32) = v37;
        v138 = 1;
        *(v88 + 36) = 1;
        v60 = v88 | 0x1000000000000000;
        v61 = 0uLL;
        v62 = v21;
        v63 = v23;
        *(v88 + 37) = v43;
        v56 = v130;
        goto LABEL_55;
      }

      v83 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV019AllowedDynamicRangeS033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0g5(v82);
      if (v83 && (v84 = *(v83 + 72), v84 != 3))
      {
        if (!*(v83 + 72))
        {
          goto LABEL_38;
        }
      }

      else
      {
        v84 = 2;
      }

      v125 = v84;
      if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(v45) && one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v47 = 0;
LABEL_44:
      static CorePlatformProvidersDefinition.providers.getter(__src);
      v85 = *&__src[4];
      if (*&__src[4])
      {
        v86 = *(&__src[4] + 1);

        *&__src[0] = v45;
        *(&__src[0] + 1) = v47;
        (*(v86 + 8))(__dst, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, __src, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey, v85, v86);
      }

      else
      {
        if (!v47)
        {
          v91 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV022MaxAllowedDynamicRangeS0VG_Tt0g5(v45);
          if (v91)
          {
            v87 = *(v91 + 72);
          }

          else
          {
            v87 = 3;
          }

          v39 = v131;
          LOBYTE(__dst[0]) = v87;
          goto LABEL_49;
        }

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV022MaxAllowedDynamicRangeI0VG_Tt1g5(v45, __dst);
      }

      v87 = LOBYTE(__dst[0]);
      v39 = v131;
LABEL_49:
      LODWORD(v41) = HIDWORD(v35);
      if (v87 == 3)
      {

        v43 = v125;
      }

      else
      {

        if (v87 >= v125)
        {
          v43 = v125;
        }

        else
        {
          v43 = v87;
        }
      }

      goto LABEL_54;
    }

    if (*(v28 - 16) != 2)
    {
      v64 = swift_allocObject();
      *(v64 + 40) = &type metadata for IntelligenceLightSourceLayer;
      *(v64 + 48) = &protocol witness table for IntelligenceLightSourceLayer;
      *(v64 + 16) = v35 & 1;
      *(v64 + 17) = BYTE1(v35) & 1;
      v60 = v64 | 0x8000000000000000;
      outlined copy of Material.Layer.Storage(v35, v34, v37, v36, 3);
      outlined copy of GraphicsBlendMode(v39, v40);
      v61 = 0uLL;
      v138 = 1;
LABEL_25:
      v62 = v21;
      v63 = v23;
      v56 = v36;
LABEL_55:
      v57 = v35;
      v58 = v34;
      goto LABEL_56;
    }

    v132 = *(v28 - 1);
    v126 = *(v28 - 4);
    v48 = v124[1];
    v172 = *v124;
    *&v177[12] = *(v124 + 92);
    v49 = v124[4];
    v50 = v124[5];
    v51 = v124[2];
    v175 = v124[3];
    v176 = v49;
    *v177 = v50;
    v173 = v48;
    v174 = v51;
    v52 = v172;
    if (!(*&v177[24] >> 29))
    {
      v139 = v174;
      v129 = *(&v173 + 1);
      v122 = v173;
      type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PathSet.Element>, &type metadata for PathSet.Element, MEMORY[0x1E69E6F90]);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_18DDA6EB0;
      *(v54 + 32) = v52;
      *(v54 + 48) = v122;
      *(v54 + 56) = v129;
      *(v54 + 64) = v139;
      *(v54 + 72) = 0;
      *(v54 + 80) = 0;
      v53 = 0;
      *(v54 + 84) = 0;
      goto LABEL_19;
    }

    if (*&v177[24] >> 29 == 1)
    {
      v53 = *(&v172 + 1);
      v54 = v172;
LABEL_19:
      v65 = 0.5;
      if ((v34 & 1) == 0)
      {
        v65 = 0.0;
      }

      if (*(&v34 + 1) == 0.0)
      {
        v66 = v65;
      }

      else
      {
        v66 = *(&v34 + 1);
      }

      v67 = swift_allocObject();
      *(v67 + 16) = v17;
      *(v67 + 24) = v19;
      *(v67 + 32) = v54;
      *(v67 + 40) = v53;
      *(v67 + 48) = v35;
      *(v67 + 56) = v66;
      *(v67 + 60) = v34;
      v60 = v67 | 0x5000000000000000;
      *(v67 + 64) = 0;
      v37 = v126;
      outlined copy of Material.Layer.Storage(v35, v34, v126, v36, 2);
      v39 = v132;
      outlined copy of GraphicsBlendMode(v132, v40);
      outlined copy of Material.Layer.Storage(v35, v34, v126, v36, 2);
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v172, __src);
      v138 = 0;
      v61 = 0uLL;
      v128 = 1;
      goto LABEL_25;
    }

    v68 = v124[5];
    v166 = v124[4];
    v167[0] = v68;
    *(v167 + 12) = *(v124 + 92);
    v69 = v124[1];
    v162 = *v124;
    v163 = v69;
    v70 = v124[3];
    v164 = v124[2];
    v165 = v70;
    v71 = *(v124 + 24);
    v72 = *(v124 + 54);
    v140 = *(v124 + 236);
    *&__src[9] = 0;
    DWORD2(__src[9]) = 0;
    outlined copy of Material.Layer.Storage(v35, v34, v126, v36, 2);
    outlined copy of GraphicsBlendMode(v132, v40);
    outlined copy of Material.Layer.Storage(v35, v34, v126, v36, 2);
    outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v162, __dst);
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    *(&__src[15] + 1) = static GraphicsBlendMode.normal;
    LOBYTE(__src[16]) = byte_1ED52F818;
    BYTE8(__src[16]) = 0;
    __src[4] = v166;
    __src[5] = v167[0];
    *(&__src[5] + 12) = *(v167 + 12);
    __src[0] = v162;
    __src[1] = v163;
    __src[2] = v164;
    __src[3] = v165;
    WORD6(__src[6]) = v72;
    __src[7] = 0uLL;
    *&__src[8] = v120;
    *(&__src[8] + 1) = v10;
    __src[10] = 0uLL;
    *&__src[11] = v120;
    *(&__src[11] + 1) = v10;
    __src[12] = v71;
    __src[13] = 0uLL;
    *&__src[14] = 3221225472;
    DWORD2(__src[14]) = 0;
    BYTE12(__src[14]) = v140;
    DWORD1(__src[16]) = 1065353216;
    LODWORD(__src[15]) = v123;
    v182 = v119;
    v183 = 2143289344;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
    _ShapeStyle_RenderedShape.render(color:)(&v182);
    _ShapeStyle_RenderedShape.commitItem()(&v158);
    v121 = v158;
    v63 = *(&v159 + 1);
    v62 = v159;
    v158 = 0uLL;
    *(v171 + 12) = *(v161 + 12);
    v170 = v160;
    v171[0] = v161[0];
    v168 = 0u;
    v169 = v159;
    if ((~LODWORD(v161[1]) & 0xC0000000) != 0 || (*(v161 + 12) >> 32) != 3221225472 || *&v171[0] | *(&v171[0] + 1) | *(&v170 + 1))
    {
      type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
      v75 = swift_allocObject();
      v76 = v160;
      v77 = v161[0];
      v79 = v158;
      v78 = v159;
      v75[3] = v159;
      v75[4] = v76;
      v75[5] = v77;
      v80 = *(v161 + 12);
      *(v75 + 92) = *(v161 + 12);
      v75[1] = xmmword_18DDA6EB0;
      v75[2] = v79;
      __dst[2] = v76;
      __dst[3] = v77;
      *(&__dst[3] + 12) = v80;
      __dst[0] = v79;
      __dst[1] = v78;
      outlined init with copy of DisplayList.Item(&v168, &v153);
      outlined init with copy of DisplayList.Item(&v168, &v153);
      DisplayList.Item.features.getter(&v153);
      v74 = v153;
      v151 = v170;
      v152[0] = v171[0];
      *(v152 + 12) = *(v171 + 12);
      v149 = v168;
      v150 = v169;
      DisplayList.Item.properties.getter(&v148);
      v156[0] = v161[0];
      *(v156 + 12) = *(v161 + 12);
      v154 = v159;
      v155 = v160;
      v153 = v158;
      outlined destroy of DisplayList.Item(&v153);
      memcpy(__dst, __src, 0x109uLL);
      outlined destroy of _ShapeStyle_RenderedShape(__dst);
      outlined destroy of DisplayList.Item(&v168);
      v73 = v148;
    }

    else
    {
      v156[0] = v161[0];
      *(v156 + 12) = *(v161 + 12);
      v154 = v159;
      v155 = v160;
      v153 = v158;
      outlined init with copy of DisplayList.Item(&v168, __dst);
      outlined destroy of DisplayList.Item(&v153);
      memcpy(__dst, __src, 0x109uLL);
      outlined destroy of _ShapeStyle_RenderedShape(__dst);
      outlined destroy of DisplayList.Item(&v168);
      v73 = 0;
      v74 = 0;
      v75 = MEMORY[0x1E69E7CC0];
    }

    v81 = swift_allocObject();
    v138 = 0;
    *(v81 + 16) = v75;
    *(v81 + 24) = v74;
    *(v81 + 28) = v73;
    *(v81 + 32) = v35;
    v60 = v81 | 0x6000000000000000;
    v128 = 1;
    *(v81 + 40) = v34;
    v37 = v126;
    v56 = v36;
    v39 = v132;
    v57 = v35;
    v58 = v34;
    v61 = v121;
LABEL_56:
    __src[0] = v61;
    *&__src[1] = v62;
    *(&__src[1] + 1) = v63;
    *&__src[2] = v135;
    *(&__src[2] + 1) = v60;
    __src[3] = v134;
    *&__src[4] = 0;
    DWORD2(__src[4]) = 0;
    __dst[2] = __src[2];
    __dst[3] = v134;
    *(&__dst[3] + 12) = v134 >> 96;
    __dst[0] = v61;
    __dst[1] = __src[1];
    *&v172 = v39;
    BYTE8(v172) = v40;
    outlined copy of DisplayList.Content.Value(v60);
    outlined copy of GraphicsBlendMode(v39, v40);
    MaterialLayers.append(item:opacity:blendMode:)(__dst, &v172, v38);
    outlined consume of Material.Layer.Storage(v57, v58, v37, v56, v142);
    outlined consume of GraphicsBlendMode(v39, v40);
    outlined consume of DisplayList.Content.Value(v60);
    outlined consume of GraphicsBlendMode(v172, SBYTE8(v172));
    outlined destroy of DisplayList.Item(__src);
    if (v146)
    {
      v89 = v144;
      result = v136;
      if (v133 == v144)
      {

        v92 = 1;
        goto LABEL_69;
      }

      v27 = 1;
    }

    else
    {
      v89 = v144;
      result = v136;
      if (v133 == v144)
      {

        v92 = v138;
        goto LABEL_69;
      }

      v27 = v138;
    }

    v26 = v89 + 1;
    v28 += 56;
  }

  while (v26 < *(result + 16));
  __break(1u);
  return result;
}

uint64_t sub_18D1FA9B0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18D1FA9F0()
{

  return swift_deallocObject();
}

uint64_t sub_18D1FAA34()
{

  return swift_deallocObject();
}

uint64_t static GraphicsContext.Shading.style<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  result = AnyShapeStyle.init<A>(_:)(v7, a2);
  *a3 = result;
  *(a3 + 72) = 4;
  return result;
}

uint64_t ViewTraitCollection.tagValue<A>(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TagValueTraitKey.Value();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  v14[1] = *v2;
  v9 = type metadata accessor for TagValueTraitKey();
  WitnessTable = swift_getWitnessTable();
  ViewTraitCollection.subscript.getter(v9, WitnessTable, v8);
  v11 = *(a1 - 8);
  if ((*(v11 + 48))(v8, 1, a1) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v12 = 1;
  }

  else
  {
    (*(v11 + 32))(a2, v8, a1);
    v12 = 0;
  }

  return (*(v11 + 56))(a2, v12, 1, a1);
}

void *initializeWithCopy for StrokeStyle(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a2[3];
  a1[2] = a2[2];
  a1[3] = v3;
  a1[4] = a2[4];

  return a1;
}

uint64_t storeEnumTagSinglePayload for TimeDataFormattingContainer(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t GraphicsContext.resolve(_:)@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[3];
  v42 = a1[2];
  *v43 = v4;
  *&v43[9] = *(a1 + 57);
  v5 = a1[1];
  v40 = *a1;
  v41 = v5;
  GraphicsContext.Shading.resolve(in:levels:)(a2, 256, &v29);
  v6 = swift_allocObject();
  v47 = v37;
  v48 = v38;
  v49 = v39;
  *&v43[16] = v33;
  v44 = v34;
  v45 = v35;
  v46 = v36;
  v40 = v29;
  v41 = v30;
  v42 = v31;
  *v43 = v32;
  result = _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOg(&v40);
  if (result == 1)
  {
    v18 = 0uLL;
    LODWORD(v19) = 2143289344;
    result = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v18);
    v8 = v27;
    *(v6 + 144) = v26;
    *(v6 + 160) = v8;
    *(v6 + 176) = v28;
    v9 = v23;
    *(v6 + 80) = v22;
    *(v6 + 96) = v9;
    v10 = v25;
    *(v6 + 112) = v24;
    *(v6 + 128) = v10;
    v11 = v19;
    *(v6 + 16) = v18;
    *(v6 + 32) = v11;
    v13 = v20;
    v12 = v21;
  }

  else
  {
    v14 = v38;
    *(v6 + 144) = v37;
    *(v6 + 160) = v14;
    *(v6 + 176) = v39;
    v15 = v34;
    *(v6 + 80) = v33;
    *(v6 + 96) = v15;
    v16 = v36;
    *(v6 + 112) = v35;
    *(v6 + 128) = v16;
    v17 = v30;
    *(v6 + 16) = v29;
    *(v6 + 32) = v17;
    v13 = v31;
    v12 = v32;
  }

  *(v6 + 48) = v13;
  *(v6 + 64) = v12;
  *a3 = v6;
  *(a3 + 72) = 9;
  return result;
}

uint64_t sub_18D1FAEC8()
{
  outlined consume of GraphicsContext.ResolvedShading(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return swift_deallocObject();
}

void GraphicsContext.Shading.resolve(in:levels:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v197 = a1;
  v198 = a3;
  type metadata accessor for Text.Style?(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v187 - v6;
  v8 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v3[1];
  v238 = *v3;
  v239 = v12;
  v13 = v3[3];
  v240 = v3[2];
  *v241 = v13;
  *&v241[9] = *(v3 + 57);
  v14 = BYTE8(v238);
  v15 = *(&v238 + 9) | (BYTE11(v238) << 16);
  v17 = HIDWORD(v238);
  v16 = v239;
  v18 = DWORD1(v239);
  v19 = *(&v239 + 1);
  v20 = v240;
  v21 = *&v241[16];
  if (v241[24] <= 4u)
  {
    if (v241[24] <= 1u)
    {
      if (v241[24])
      {
        v96 = v238 | (DWORD1(v238) << 32);
        v97 = v197[4];
        if (v97 == 1)
        {
          v98 = v197[2];
          v99 = *(v98 + 48);
          v100 = *(v98 + 56);
        }

        else
        {
          v100 = v197[5];
          v99 = v197[4];
        }

        *&v210 = v99;
        *(&v210 + 1) = v100;
        v130 = *(*v96 + 120);
        outlined init with copy of GraphicsContext.Shading.Storage(&v238, &v218);
        outlined copy of EnvironmentValues?(v97);
        v130(&v229, &v210);
        v131 = v230;
        outlined destroy of GraphicsContext.Shading.Storage(&v238);

        v210 = v229;
        LODWORD(v211) = v131;
        goto LABEL_66;
      }

      *&v210 = v238;
      DWORD2(v210) = BYTE8(v238) | (v15 << 8);
      HIDWORD(v210) = HIDWORD(v238);
      LODWORD(v211) = v239;
      _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi_(&v210);
    }

    else if (v241[24] == 2)
    {
      *&v210 = v238;
      DWORD2(v210) = BYTE8(v238) | (v15 << 8);
      HIDWORD(v210) = HIDWORD(v238);
      _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi1_(&v210);
    }

    else
    {
      if (v241[24] == 3)
      {
        *(&v195 + 1) = *(&v240 + 1);
        v196 = *v241;
        v32 = v238 | (DWORD1(v238) << 32);
        v33 = v239 | (DWORD1(v239) << 32);
        v34 = v197[4];
        v35 = v34;
        v36 = v197[5];
        if (v34 == 1)
        {
          v37 = v197[2];
          v35 = *(v37 + 48);
          v36 = *(v37 + 56);
          v194 = *(&v239 + 1);
          *&v195 = v240;
          v38 = v238 | (DWORD1(v238) << 32);

          v32 = v38;
          v19 = v194;
          v20 = v195;
        }

        *&v210 = v32;
        BYTE8(v210) = v14;
        BYTE11(v210) = BYTE2(v15);
        *(&v210 + 9) = v15;
        HIDWORD(v210) = v17;
        *&v211 = v33;
        *(&v211 + 1) = v19;
        *v212 = v20;
        *&v229 = v35;
        *(&v229 + 1) = v36;
        v39 = v20;
        outlined init with copy of GraphicsContext.Shading.Storage(&v238, &v218);
        outlined copy of EnvironmentValues?(v34);
        v40 = Shader.makeRBShader(in:)(&v229);
        outlined consume of EnvironmentValues?(v229);
        outlined destroy of GraphicsContext.Shading.Storage(&v238);
        *&v211 = 0;
        v210 = v40;
        DWORD2(v211) = v39;
        *v212 = *(&v195 + 1);
        *&v212[8] = v196;
        *&v212[24] = v21;
        _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi2_(&v210);
        goto LABEL_67;
      }

      if (a2 < 0)
      {
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v82 = v238 | (DWORD1(v238) << 32);
      v83 = v197[4];
      v84 = v83;
      v85 = v197[5];
      if (v83 == 1)
      {
        v86 = v197[2];
        v84 = *(v86 + 48);
        v85 = *(v86 + 56);
      }

      v209[59] = 0;
      v206 = 0uLL;
      *&v207 = a2;
      BYTE8(v207) = 1;
      *&v208 = 0;
      BYTE8(v208) = 5;
      *v209 = v84;
      *&v209[8] = v85;
      memset(&v209[16], 0, 40);
      v209[56] = 1;
      *&v209[57] = 256;
      v87 = *(*v82 + 80);
      a2 = *v82 + 80;
      outlined init with copy of GraphicsContext.Shading.Storage(&v238, &v218);
      outlined copy of EnvironmentValues?(v83);
      v87(&v206);
      v88 = MEMORY[0x1E69E7CC0];
      v89 = MEMORY[0x1E69E7CC0];
      if (BYTE8(v208) == 1)
      {
      }

      *&v210 = v89;
      LOBYTE(v229) = 0;
      _ShapeStyle_Pack.Slice.init(pack:name:)(&v210, &v229, &v218);
      v90 = *(&v219 + 1);
      v197 = v219;
      v91 = (*(&v219 + 1) >> 1) - v219;
      if (__OFSUB__(*(&v219 + 1) >> 1, v219))
      {
        goto LABEL_127;
      }

      v92 = v220;
      v93 = v220 + v91;
      if (__OFADD__(v220, v91))
      {
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      *(&v196 + 1) = *(&v219 + 1) >> 1;
      v94 = (*(&v219 + 1) >> 1) - v219;
      if (v93 < v220)
      {
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      a2 = *(&v218 + 1);
      v95 = v218;
      if (v91 != 1)
      {
        if (!v91)
        {
          swift_unknownObjectRelease();
          outlined destroy of GraphicsContext.Shading.Storage(&v238);
          v232[1] = *&v209[16];
          v233[0] = *&v209[32];
          *(v233 + 12) = *&v209[44];
          v229 = v206;
          v230 = v207;
          v231 = v208;
          v232[0] = *v209;
          outlined destroy of _ShapeStyle_Shape(&v229);
          v210 = 0uLL;
          LODWORD(v211) = 2143289344;
LABEL_66:
          _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v210);
          goto LABEL_67;
        }

        v205 = v88;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91 & ~(v91 >> 63), 0);
        if (v94 < 0)
        {
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        v193 = v95;
        if (v93 == v92)
        {
LABEL_133:
          __break(1u);
LABEL_134:
          swift_once();
          goto LABEL_116;
        }

        v148 = *(&v196 + 1);
        if (v197 <= 0 && v90 >= 2)
        {
          v149 = v205;
          v150 = v197 - *(&v196 + 1);
          v151 = 1;
          while (1)
          {
            v152 = *(a2 + 96);
            v153 = *(a2 + 112);
            v154 = *(a2 + 64);
            *&v227[80] = *(a2 + 80);
            v155 = *a2;
            v156 = *(a2 + 16);
            v157 = *(a2 + 48);
            *&v227[32] = *(a2 + 32);
            *&v227[48] = v157;
            *v227 = v155;
            *&v227[16] = v156;
            *&v227[96] = v152;
            *&v227[112] = v153;
            *&v227[64] = v154;
            if (v227[93])
            {
              outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v227, &v210);
            }

            else
            {
              v158 = *&v227[20];
              v159 = *&v227[104];
              v160 = v227[112];
              LODWORD(v196) = *&v227[24];
              DWORD2(v195) = *&v227[16];
              LODWORD(v195) = *&v227[8];
              LODWORD(v194) = *&v227[12];
              if (v227[112] == 255)
              {
                outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v227, &v210);
                outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v227, &v210);
                if (one-time initialization token for normal != -1)
                {
                  swift_once();
                }

                v161 = static GraphicsBlendMode.normal;
                v162 = byte_1ED52F818;
                outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
              }

              else
              {
                outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v227, &v210);
                outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v227, &v210);
                v161 = v159;
                v162 = v160;
              }

              outlined copy of GraphicsBlendMode?(v159, v160);
              if (one-time initialization token for normal != -1)
              {
                swift_once();
              }

              v163 = static GraphicsBlendMode.normal;
              v164 = byte_1ED52F818;
              if (v162)
              {
                if (!byte_1ED52F818)
                {
                  swift_unknownObjectRetain();
LABEL_101:
                  outlined copy of GraphicsBlendMode(v163, v164);
                  outlined consume of GraphicsBlendMode(v161, v162 & 1);
                  outlined consume of GraphicsBlendMode(v163, v164);
                  outlined consume of GraphicsBlendMode(v161, v162 & 1);
LABEL_102:
                  _s7SwiftUI16_ShapeStyle_PackV3KeyV3key_AC0D0V5styletWOhTm_0(v227, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
                  v148 = *(&v196 + 1);
                  goto LABEL_103;
                }

                swift_unknownObjectRetain();
                outlined consume of GraphicsBlendMode(v161, 1);
                outlined consume of GraphicsBlendMode(v163, 1);
                if (v161 != v163)
                {
                  goto LABEL_102;
                }
              }

              else
              {
                if (byte_1ED52F818)
                {
                  goto LABEL_101;
                }

                outlined consume of GraphicsBlendMode(v161, 0);
                outlined consume of GraphicsBlendMode(v163, 0);
                if (v161 != v163)
                {
                  goto LABEL_102;
                }
              }

              v165 = *(*&v227[120] + 16);
              _s7SwiftUI16_ShapeStyle_PackV3KeyV3key_AC0D0V5styletWOhTm_0(v227, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
              v148 = *(&v196 + 1);
              if (!v165)
              {
                _s7SwiftUI16_ShapeStyle_PackV3KeyV3key_AC0D0V5styletWOhTm_0(v227, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
                *&v210 = __PAIR64__(v194, v195);
                DWORD2(v210) = DWORD2(v195);
                *(&v210 + 3) = *&v227[96] * v158;
                LODWORD(v211) = v196;
                _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v210);
                goto LABEL_104;
              }
            }

LABEL_103:
            *&v212[32] = *&v227[72];
            v213[0] = *&v227[88];
            v213[1] = *&v227[104];
            *&v214 = *&v227[120];
            v210 = *&v227[8];
            v211 = *&v227[24];
            *v212 = *&v227[40];
            *&v212[16] = *&v227[56];
            _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi3_(&v210);
LABEL_104:
            v224 = v215;
            v225 = v216;
            *&v226[0] = *&v217[0];
            v221[1] = *&v212[32];
            v222[0] = v213[0];
            v222[1] = v213[1];
            v223 = v214;
            v218 = v210;
            v219 = v211;
            v220 = *v212;
            v221[0] = *&v212[16];
            v205 = v149;
            v167 = *(v149 + 16);
            v166 = *(v149 + 24);
            if (v167 >= v166 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v166 > 1), v167 + 1, 1);
              v149 = v205;
            }

            *(v149 + 16) = v167 + 1;
            v168 = v149 + 168 * v167;
            v169 = v218;
            v170 = v220;
            *(v168 + 48) = v219;
            *(v168 + 64) = v170;
            *(v168 + 32) = v169;
            v171 = v221[0];
            v172 = v221[1];
            v173 = v222[1];
            *(v168 + 112) = v222[0];
            *(v168 + 128) = v173;
            *(v168 + 80) = v171;
            *(v168 + 96) = v172;
            v174 = v223;
            v175 = v224;
            v176 = v225;
            *(v168 + 192) = *&v226[0];
            *(v168 + 160) = v175;
            *(v168 + 176) = v176;
            *(v168 + 144) = v174;
            if (&v150[v151] == 1)
            {
              goto LABEL_125;
            }

            if (!&v150[v151])
            {
              swift_unknownObjectRelease();
              outlined destroy of GraphicsContext.Shading.Storage(&v238);
              v203 = *&v209[16];
              v204[0] = *&v209[32];
              *(v204 + 12) = *&v209[44];
              v199 = v206;
              v200 = v207;
              v201 = v208;
              v202 = *v209;
              outlined destroy of _ShapeStyle_Shape(&v199);
              *&v229 = v149;
              _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi7_(&v229);
              v215 = v235;
              v216 = v236;
              *&v217[0] = v237;
              *&v212[32] = v232[1];
              v213[0] = v233[0];
              v213[1] = v233[1];
              v214 = v234;
              v210 = v229;
              v211 = v230;
              *v212 = v231;
              *&v212[16] = v232[0];
              _ViewInputs.base.modify(&v210, v177);
              v178 = v216;
              v116 = v198;
              *(v198 + 128) = v215;
              *(v116 + 144) = v178;
              *(v116 + 160) = *&v217[0];
              v179 = v213[0];
              *(v116 + 64) = *&v212[32];
              *(v116 + 80) = v179;
              v180 = v214;
              *(v116 + 96) = v213[1];
              *(v116 + 112) = v180;
              v181 = v211;
              *v116 = v210;
              *(v116 + 16) = v181;
              v121 = *v212;
              v120 = *&v212[16];
              goto LABEL_70;
            }

            if (v197 <= 0)
            {
              a2 += 128;
              if (v151++ < v148)
              {
                continue;
              }
            }

            break;
          }
        }

LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      if (!((v197 + v220 < 0) ^ __OFADD__(v197, v220) | ((v197 + v220) == 0)) || *(&v196 + 1) <= -v220)
      {
        goto LABEL_132;
      }

      v141 = *(&v218 + 1) - (v220 << 7);
      v142 = *v141;
      v143 = *(v141 + 16);
      v144 = *(v141 + 48);
      v231 = *(v141 + 32);
      v232[0] = v144;
      v229 = v142;
      v230 = v143;
      v145 = *(v141 + 64);
      v146 = *(v141 + 80);
      v147 = *(v141 + 112);
      v233[1] = *(v141 + 96);
      v234 = v147;
      v232[1] = v145;
      v233[0] = v146;
      *&v227[64] = *(v141 + 72);
      *&v227[80] = *(v141 + 88);
      *&v227[96] = *(v141 + 104);
      *&v227[112] = *(v141 + 120);
      *v227 = *(v141 + 8);
      *&v227[16] = *(v141 + 24);
      *&v227[32] = *(v141 + 40);
      *&v227[48] = *(v141 + 56);
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v229, &v218);
      GraphicsContext.ResolvedShading.init(_:)(v227, &v210);
      swift_unknownObjectRelease();
      outlined destroy of GraphicsContext.Shading.Storage(&v238);
      v203 = *&v209[16];
      v204[0] = *&v209[32];
      *(v204 + 12) = *&v209[44];
      v199 = v206;
      v200 = v207;
      v201 = v208;
      v202 = *v209;
      outlined destroy of _ShapeStyle_Shape(&v199);
    }

LABEL_67:
    v224 = v215;
    v225 = v216;
    *&v226[0] = *&v217[0];
    v221[1] = *&v212[32];
    v222[0] = v213[0];
    v222[1] = v213[1];
    v223 = v214;
    v218 = v210;
    v219 = v211;
    v220 = *v212;
    v221[0] = *&v212[16];
    goto LABEL_68;
  }

  if (v241[24] <= 7u)
  {
    if (v241[24] == 5)
    {
      v194 = *(&v239 + 1);
      v195 = v240;
      v196 = *v241;
      v52 = (v238 | (DWORD1(v238) << 32));
      v53 = v241[16];
      v193 = HIDWORD(*&v241[16]);
      v54 = v197[4];
      v55 = v54;
      v56 = v197[5];
      if (v54 == 1)
      {
        v57 = v197[2];
        v55 = *(v57 + 48);
        v56 = *(v57 + 56);
      }

      *&v210 = v55;
      *(&v210 + 1) = v56;
      if (v14)
      {
        v58 = *v52;
        v197 = v21;
        v59 = *(v58 + 112);
        outlined init with copy of GraphicsContext.Shading.Storage(&v238, &v218);
        outlined copy of EnvironmentValues?(v54);
        v59(&v229, &v210);
        v53 = v197;
      }

      else
      {
        outlined init with copy of GraphicsContext.Shading.Storage(&v238, &v218);
        outlined copy of EnvironmentValues?(v54);
        Gradient.resolve(in:)(&v210, v52, &v229);
      }

      outlined destroy of GraphicsContext.Shading.Storage(&v238);

      v227[0] = v230;
      *&v210 = v229;
      BYTE8(v210) = BYTE8(v229);
      HIDWORD(v210) = HIDWORD(v229);
      LOBYTE(v211) = v230;
      *(&v211 + 1) = v16 | (v18 << 32);
      *v212 = v194;
      *&v212[8] = v195;
      *&v212[24] = v196;
      v212[40] = v53;
      *&v212[44] = v193;
      _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi4_(&v210);
    }

    else
    {
      if (v241[24] != 6)
      {
        v194 = *(&v239 + 1);
        v195 = v240;
        v196 = *v241;
        v192 = BYTE8(v238) | ((*&v15 & 0xFFFFFFLL) << 8) | (HIDWORD(v238) << 32);
        v193 = v9;
        v190 = v238 | (DWORD1(v238) << 32);
        v191 = v239 | (DWORD1(v239) << 32);
        v101 = v197[4];
        v102 = v197[5];
        v103 = v101;
        v189 = v102;
        if (v101 == 1)
        {
          v104 = v197[2];
          v103 = *(v104 + 48);
          v102 = *(v104 + 56);
        }

        v188 = v102;
        v105 = type metadata accessor for Text.Style(0);
        v106 = *(*(v105 - 8) + 56);
        v106(v7, 1, 1, v105);
        LODWORD(v197) = *MEMORY[0x1E698D3F8];
        v11[2] = 0;
        v107 = v103;
        v108 = v193;
        v109 = v193[6];
        v106(v11 + v109, 1, 1, v105);
        v110 = v108[7];
        v111 = v11 + v108[8];
        *v111 = 520;
        v111[2] = 2;
        *(v11 + v108[9]) = 3;
        v112 = v108[10];
        *(v11 + v112) = 1;
        v113 = v188;
        *v11 = v107;
        v11[1] = v113;
        outlined init with copy of GraphicsContext.Shading.Storage(&v238, &v218);
        outlined copy of EnvironmentValues?(v101);
        outlined assign with take of Text.Style?(v7, v11 + v109);
        *(v11 + v110) = v197;
        *(v11 + v112) = 0;
        (*(*v190 + 80))(&v210, v11);
        outlined destroy of GraphicsContext.Shading.Storage(&v238);
        _s7SwiftUI16_ShapeStyle_PackV3KeyV3key_AC0D0V5styletWOhTm_0(v11, type metadata accessor for ImageResolutionContext);
        v224 = v215;
        v225 = v216;
        v226[0] = v217[0];
        *(v226 + 11) = *(v217 + 11);
        v221[1] = *&v212[32];
        v222[0] = v213[0];
        v222[1] = v213[1];
        v223 = v214;
        v218 = v210;
        v219 = v211;
        v220 = *v212;
        v221[0] = *&v212[16];
        outlined init with copy of GraphicsImage(&v218, &v229);
        outlined destroy of Image.Resolved(&v218);
        *&v227[64] = v221[1];
        *&v227[80] = v222[0];
        *&v227[92] = *(v222 + 12);
        *v227 = v218;
        *&v227[16] = v219;
        *&v227[32] = v220;
        *&v227[48] = v221[0];
        *&v227[112] = v192;
        *&v227[120] = v191;
        *v228 = v194;
        *&v228[8] = v195;
        *&v228[24] = v196;
        _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi6_(v227);
        v235 = *v228;
        v236 = *&v228[16];
        v237 = *&v228[32];
        v232[1] = *&v227[64];
        v233[0] = *&v227[80];
        v233[1] = *&v227[96];
        v234 = *&v227[112];
        v229 = *v227;
        v230 = *&v227[16];
        v231 = *&v227[32];
        v232[0] = *&v227[48];
        _ViewInputs.base.modify(&v229, v114);
        v115 = v236;
        v116 = v198;
        *(v198 + 128) = v235;
        *(v116 + 144) = v115;
        *(v116 + 160) = v237;
        v117 = v233[0];
        *(v116 + 64) = v232[1];
        *(v116 + 80) = v117;
        v118 = v234;
        *(v116 + 96) = v233[1];
        *(v116 + 112) = v118;
        v119 = v230;
        *v116 = v229;
        *(v116 + 16) = v119;
        v121 = v231;
        v120 = v232[0];
LABEL_70:
        *(v116 + 32) = v121;
        *(v116 + 48) = v120;
        return;
      }

      *v227 = v238;
      v227[8] = BYTE8(v238);
      *&v227[9] = *(&v238 + 9);
      v227[11] = BYTE2(v15);
      *&v227[12] = HIDWORD(v238);
      *&v227[16] = v239;
      *&v227[32] = v240;
      *&v227[48] = *v241;
      v22 = v197[4];
      v23 = v22;
      v24 = v197[5];
      *&v227[56] = *&v241[8];
      if (v22 == 1)
      {
        v25 = v197[2];
        v23 = *(v25 + 48);
        v24 = *(v25 + 56);
      }

      *&v210 = v23;
      *(&v210 + 1) = v24;
      outlined init with copy of GraphicsContext.Shading.Storage(&v238, &v218);
      outlined copy of EnvironmentValues?(v22);
      MeshGradient.resolvePaint(in:)(&v210, &v229);

      outlined destroy of GraphicsContext.Shading.Storage(&v238);
      *v212 = v231;
      *&v212[16] = v232[0];
      v210 = v229;
      v211 = v230;
      *&v212[40] = 0;
      *&v213[0] = 0;
      *&v212[32] = *&v232[1];
      __asm { FMOV            V0.2D, #1.0 }

      *(v213 + 8) = _Q0;
      _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi5_(&v210);
    }

    goto LABEL_67;
  }

  if (v241[24] == 8)
  {
    v60 = v238 | (DWORD1(v238) << 32);
    v61 = *(v60 + 0x10);
    if (v61 >= a2)
    {
      v62 = a2;
    }

    else
    {
      v62 = *((v238 | (DWORD1(v238) << 32)) + 0x10);
    }

    if (v62 > 1)
    {

      v63 = 0;
      v64 = v60 + 32;
      v65 = MEMORY[0x1E69E7CC0];
      a2 = v197;
      *&v196 = v60 + 32;
      do
      {
        *(&v196 + 1) = v65;
        v66 = (v64 + 80 * v63);
        v67 = v63;
        while (1)
        {
          if (v67 >= v62)
          {
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          v206 = *v66;
          v68 = v66[1];
          v69 = v66[2];
          v70 = v66[3];
          *&v209[9] = *(v66 + 57);
          v208 = v69;
          *v209 = v70;
          v207 = v68;
          v63 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            goto LABEL_123;
          }

          v230 = v66[1];
          v231 = v66[2];
          v232[0] = v66[3];
          *(v232 + 9) = *(v66 + 57);
          v229 = *v66;
          outlined init with copy of GraphicsContext.Shading(&v206, v227);
          GraphicsContext.Shading.resolve(in:levels:)(a2, 1);
          outlined destroy of GraphicsContext.Shading(&v206);
          v224 = v215;
          v225 = v216;
          *&v226[0] = *&v217[0];
          v221[1] = *&v212[32];
          v222[0] = v213[0];
          v222[1] = v213[1];
          v223 = v214;
          v218 = v210;
          v219 = v211;
          v220 = *v212;
          v221[0] = *&v212[16];
          if (_s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOg(&v218) != 1)
          {
            break;
          }

          v235 = v215;
          v236 = v216;
          v237 = *&v217[0];
          v232[1] = *&v212[32];
          v233[0] = v213[0];
          v233[1] = v213[1];
          v234 = v214;
          v229 = v210;
          v230 = v211;
          v231 = *v212;
          v232[0] = *&v212[16];
          outlined destroy of GraphicsContext.Shading?(&v229, &lazy cache variable for type metadata for GraphicsContext.ResolvedShading?, &type metadata for GraphicsContext.ResolvedShading);
          ++v67;
          v66 += 5;
          if (v63 == v62)
          {
            v65 = *(&v196 + 1);
            goto LABEL_71;
          }
        }

        v235 = v215;
        v236 = v216;
        v237 = *&v217[0];
        v232[1] = *&v212[32];
        v233[0] = v213[0];
        v233[1] = v213[1];
        v234 = v214;
        v229 = v210;
        v230 = v211;
        v231 = *v212;
        v232[0] = *&v212[16];
        v65 = *(&v196 + 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
        }

        v72 = *(v65 + 2);
        v71 = *(v65 + 3);
        if (v72 >= v71 >> 1)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v65);
        }

        *&v227[64] = v232[1];
        *&v227[80] = v233[0];
        *&v227[32] = v231;
        *&v227[48] = v232[0];
        *&v228[32] = v237;
        *v228 = v235;
        *&v228[16] = v236;
        *&v227[96] = v233[1];
        *&v227[112] = v234;
        *v227 = v229;
        *&v227[16] = v230;
        *(v65 + 2) = v72 + 1;
        v73 = &v65[168 * v72];
        v74 = *v227;
        v75 = *&v227[32];
        *(v73 + 3) = *&v227[16];
        *(v73 + 4) = v75;
        *(v73 + 2) = v74;
        v76 = *&v227[48];
        v77 = *&v227[64];
        v78 = *&v227[96];
        *(v73 + 7) = *&v227[80];
        *(v73 + 8) = v78;
        *(v73 + 5) = v76;
        *(v73 + 6) = v77;
        v79 = *&v227[112];
        v80 = *v228;
        v81 = *&v228[16];
        *(v73 + 24) = *&v228[32];
        *(v73 + 10) = v80;
        *(v73 + 11) = v81;
        *(v73 + 9) = v79;
        v64 = v196;
      }

      while (v63 != v62);
LABEL_71:
      outlined destroy of GraphicsContext.Shading.Storage(&v238);
      v136 = *(v65 + 2);
      if (!v136)
      {

        _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOi0_(&v218);
        goto LABEL_69;
      }

      if (v136 == 1)
      {
        v137 = *(v65 + 10);
        v214 = *(v65 + 9);
        v215 = v137;
        v216 = *(v65 + 11);
        *&v217[0] = *(v65 + 24);
        v138 = *(v65 + 6);
        *&v212[16] = *(v65 + 5);
        *&v212[32] = v138;
        v139 = *(v65 + 8);
        v213[0] = *(v65 + 7);
        v213[1] = v139;
        v140 = *(v65 + 3);
        v210 = *(v65 + 2);
        v211 = v140;
        *v212 = *(v65 + 4);
        outlined init with copy of GraphicsContext.ResolvedShading(&v210, &v218);
      }

      else
      {
        *&v210 = v65;
        _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi7_(&v210);
      }

      goto LABEL_67;
    }

    if (v61)
    {
      v126 = *((v238 | (DWORD1(v238) << 32)) + 0x30);
      v127 = *((v238 | (DWORD1(v238) << 32)) + 0x50);
      *v212 = *((v238 | (DWORD1(v238) << 32)) + 0x40);
      *&v212[16] = v127;
      *&v212[25] = *((v238 | (DWORD1(v238) << 32)) + 0x59);
      v128 = *((v238 | (DWORD1(v238) << 32)) + 0x30);
      v210 = *((v238 | (DWORD1(v238) << 32)) + 0x20);
      v211 = v126;
      v129 = *((v238 | (DWORD1(v238) << 32)) + 0x50);
      v231 = *((v238 | (DWORD1(v238) << 32)) + 0x40);
      v232[0] = v129;
      *(v232 + 9) = *((v238 | (DWORD1(v238) << 32)) + 0x59);
      v229 = *((v238 | (DWORD1(v238) << 32)) + 0x20);
      v230 = v128;
      outlined init with copy of GraphicsContext.Shading(&v210, &v218);
      GraphicsContext.Shading.resolve(in:levels:)(v197, a2);
      v220 = v231;
      v221[0] = v232[0];
      *(v221 + 9) = *(v232 + 9);
      v218 = v229;
      v219 = v230;
      outlined destroy of GraphicsContext.Shading(&v218);
      return;
    }

    goto LABEL_130;
  }

  if (v241[24] == 9)
  {
    v41 = *((v238 | (DWORD1(v238) << 32)) + 0x90);
    v214 = *((v238 | (DWORD1(v238) << 32)) + 0x80);
    v215 = v41;
    v216 = *((v238 | (DWORD1(v238) << 32)) + 0xA0);
    *&v217[0] = *((v238 | (DWORD1(v238) << 32)) + 0xB0);
    v42 = *((v238 | (DWORD1(v238) << 32)) + 0x50);
    *&v212[16] = *((v238 | (DWORD1(v238) << 32)) + 0x40);
    *&v212[32] = v42;
    v43 = *((v238 | (DWORD1(v238) << 32)) + 0x70);
    v213[0] = *((v238 | (DWORD1(v238) << 32)) + 0x60);
    v213[1] = v43;
    v44 = *((v238 | (DWORD1(v238) << 32)) + 0x20);
    v210 = *((v238 | (DWORD1(v238) << 32)) + 0x10);
    v211 = v44;
    *v212 = *((v238 | (DWORD1(v238) << 32)) + 0x30);
    memmove(&v218, ((v238 | (DWORD1(v238) << 32)) + 16), 0xA8uLL);
    _ViewInputs.base.modify(&v218, v45);
    v46 = v225;
    v47 = v198;
    *(v198 + 128) = v224;
    *(v47 + 144) = v46;
    *(v47 + 160) = *&v226[0];
    v48 = v222[0];
    *(v47 + 64) = v221[1];
    *(v47 + 80) = v48;
    v49 = v223;
    *(v47 + 96) = v222[1];
    *(v47 + 112) = v49;
    v50 = v219;
    *v47 = v218;
    *(v47 + 16) = v50;
    v51 = v221[0];
    *(v47 + 32) = v220;
    *(v47 + 48) = v51;
    outlined init with copy of GraphicsContext.ResolvedShading(&v210, &v229);
    return;
  }

  if (a2 == 1)
  {
    goto LABEL_117;
  }

  v122 = v197[4];
  if (v122 == 1)
  {
    v123 = v197[2];
    v124 = *(v123 + 48);
    v125 = *(v123 + 56);
  }

  else
  {
    v125 = v197[5];
    v124 = v197[4];
  }

  outlined copy of EnvironmentValues?(v122);

  v182 = specialized ShapeStyle.isMultiLevel(in:)(v124, v125);

  if (!v182)
  {
LABEL_117:
    v183 = v197[2];
    v184 = v197[4];
    v185 = v184;
    v186 = v197[5];
    if (v184 == 1)
    {
      v185 = *(v183 + 48);
      v186 = *(v183 + 56);
    }

    *&v210 = v185;
    *(&v210 + 1) = v186;
    outlined copy of EnvironmentValues?(v184);
    GraphicsContext.Storage.Shared.resolvedForeground(in:)(&v210, &v218);
    outlined consume of EnvironmentValues?(v210);
LABEL_68:
    _ViewInputs.base.modify(&v218, v31);
LABEL_69:
    v132 = v225;
    v116 = v198;
    *(v198 + 128) = v224;
    *(v116 + 144) = v132;
    *(v116 + 160) = *&v226[0];
    v133 = v222[0];
    *(v116 + 64) = v221[1];
    *(v116 + 80) = v133;
    v134 = v223;
    *(v116 + 96) = v222[1];
    *(v116 + 112) = v134;
    v135 = v219;
    *v116 = v218;
    *(v116 + 16) = v135;
    v121 = v220;
    v120 = v221[0];
    goto LABEL_70;
  }

  if (one-time initialization token for shared != -1)
  {
    goto LABEL_134;
  }

LABEL_116:
  *&v218 = static ForegroundStyle.shared;
  BYTE8(v221[1]) = 4;

  GraphicsContext.Shading.resolve(in:levels:)(v197, a2);
}

double @objc closure #8 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks()
{

  v1 = MEMORY[0x193AC3640](v0 + 24);

  return v1;
}

uint64_t CanvasDisplayList.updateValue()(uint64_t a1)
{
  v237 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v208 = *(v3 - 8);
  v209 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v181[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v203 = &v181[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v196 = &v181[-v9];
  _sSay7SwiftUI13ViewResponderCGMaTm_8(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v201 = &v181[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v200 = &v181[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v204 = &v181[-v15];
  v16 = *(a1 + 16);
  v210 = *(a1 + 24);
  v211 = v16;
  v215 = type metadata accessor for Canvas();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v214 = &v181[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v216 = &v181[-v21];
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v218 = v23;
  v25 = *Value;
  v24 = *(Value + 8);
  type metadata accessor for CGPoint(0);
  v207 = v26;
  v27 = AGGraphGetValue();
  v29 = v28;
  v212 = *v27;
  v217 = v1;
  v30 = AGGraphGetValue();
  v32 = *v30;
  v33 = *(v30 + 8);
  v195 = v29;
  if ((v29 & 1) == 0 && (v218 & 1) == 0 && (v31 & 1) == 0)
  {

LABEL_5:
    v34 = AGGraphCurrentAttributeWasModified();
    goto LABEL_16;
  }

  LOBYTE(v229) = 1;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  memset(v225, 0, sizeof(v225));
  v226 = 0;
  v227 = 0u;
  v228 = 1;
  *&v233 = v32;
  *(&v233 + 1) = v33;
  v234 = v212;
  v235 = vsubq_f64(*(v30 + 32), vsubq_f64(v212, *(v30 + 16)));

  specialized ViewTransform.forEach(inverted:_:)(0, &v233, &v222);
  x = 0.0;
  v198 = v24;
  if (v228)
  {
    y = 0.0;
    v37 = v25;
    height = v24;
  }

  else
  {
    v39 = v226;
    v40 = v227;
    v238 = v226;
    v41 = *(&v227 + 1);
    v206 = *&v227;
    Width = CGRectGetWidth(*(&v40 - 1));
    if (Width + Width <= v25 || (v239.origin = v39, v239.size.width = v206, v239.size.height = *(&v40 + 1), v43 = CGRectGetHeight(v239), height = v198, y = 0.0, v37 = v25, v43 + v43 <= v198))
    {
      v205 = floor(v39.x * 0.0078125) * 128.0;
      v240.origin = v39;
      v44 = v206;
      v240.size.width = v206;
      v240.size.height = *(&v40 + 1);
      v45 = CGRectGetWidth(v240) + 128.0;
      v241.origin = v39;
      v241.size.width = v44;
      v241.size.height = *(&v40 + 1);
      v250.size.height = CGRectGetHeight(v241) + 128.0;
      v242.origin.x = 0.0;
      v242.origin.y = 0.0;
      v242.size.width = v25;
      v242.size.height = v198;
      v250.origin.x = v205;
      v250.origin.y = floor(v39.y * 0.0078125) * 128.0;
      v250.size.width = v45;
      v243 = CGRectIntersection(v242, v250);
      x = v243.origin.x;
      y = v243.origin.y;
      v37 = v243.size.width;
      height = v243.size.height;
    }
  }

  v46 = v217;
  v244.origin.x = x;
  v244.origin.y = y;
  v244.size.width = v37;
  v244.size.height = height;
  if (CGRectEqualToRect(v244, *(v217 + 10)))
  {
    v24 = v198;
    if ((v218 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v46[5] = x;
    v46[6] = y;
    v46[7] = v37;
    v46[8] = height;
    v24 = v198;
  }

  v34 = 1;
LABEL_16:
  v220 = v34;
  if (CGRectIsEmpty(*(v217 + 10)))
  {
    *&v222 = MEMORY[0x1E69E7CC0];
    WORD4(v222) = 0;
    HIDWORD(v222) = 0;
    AGGraphSetOutputValue();

LABEL_83:
  }

  v186 = v5;
  v197 = v33;
  v199 = a1;
  v205 = v18;
  v206 = v32;
  v47 = *(TupleTypeMetadata2 + 48);
  v48 = v215;
  v49 = AGGraphGetValue();
  v51 = v50;
  v52 = *(v48 - 8);
  v53 = v216;
  (*(v52 + 16))(v216, v49, v48);
  v54 = v51 & 1;
  v53[v47] = v54;
  v55 = AGGraphGetValue();
  v58 = *v55;
  v57 = v55[1];
  ++static DisplayList.Version.lastValue;
  v194 = v57;
  v189 = static DisplayList.Version.lastValue;
  if (v34)
  {
    goto LABEL_19;
  }

  if (v54)
  {

LABEL_25:
    v220 = 1;
    goto LABEL_26;
  }

  if ((v56 & 1) == 0)
  {
LABEL_19:

    goto LABEL_26;
  }

  v59 = swift_retain_n();
  v60 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v59);

  if (v60)
  {
    goto LABEL_25;
  }

LABEL_26:
  v202 = v58;
  v61 = v217;
  v62 = v217[7];
  LODWORD(v190) = *MEMORY[0x1E698D3F8];
  if (v62 != v190)
  {
    v63 = AGGraphRegisterDependency();
    v233 = *(v61 + 1);
    v234.f64[0] = *(v61 + 5);
    MEMORY[0x1EEE9AC00](v63);
    v64 = v210;
    *&v181[-48] = v211;
    *&v181[-40] = v64;
    *&v181[-32] = 6;
    *&v181[-24] = v61;
    *&v181[-16] = &v220;
    *&v222 = type metadata accessor for Attribute();
    v65 = MEMORY[0x1E698D388];
    _sSay7SwiftUI13ViewResponderCGMaTm_8(255, &lazy cache variable for type metadata for Attribute<CGPoint>, type metadata accessor for CGPoint, MEMORY[0x1E698D388]);
    *(&v222 + 1) = v66;
    v223.f64[0] = v66;
    _sSay7SwiftUI13ViewResponderCGMaTm_8(255, &lazy cache variable for type metadata for Attribute<CGSize>, type metadata accessor for CGSize, v65);
    v223.f64[1] = v67;
    v68 = MEMORY[0x1E698D388];
    _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(255, &lazy cache variable for type metadata for Attribute<ViewTransform>, &type metadata for ViewTransform, MEMORY[0x1E698D388]);
    v224.f64[0] = v69;
    _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(255, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, &type metadata for EnvironmentValues, v68);
    v224.f64[1] = v70;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v233, partial apply for closure #1 in CanvasDisplayList.updateValue(), &v181[-64], TupleTypeMetadata, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v72);
  }

  v73 = v205;
  v74 = AGGraphGetValue();
  v76 = *v74;
  v188 = v74[1];
  v77 = *(v61 + 7);
  v207 = *(v61 + 8);
  v213 = TupleTypeMetadata2;
  if ((v220 & 1) == 0)
  {
    v78 = v75;
    OutputValue = AGGraphGetOutputValue();
    if (OutputValue)
    {
      v80 = v216;
      if ((v195 | v78))
      {
        v81 = *OutputValue;
        if (*(*OutputValue + 16))
        {
          v82 = *(v217 + 5);
          v83 = *(v217 + 6);
          v84 = *(v81 + 3);
          v85 = v81[5];
          v224 = *(v81 + 4);
          v225[0] = v85;
          *(v225 + 12) = *(v81 + 92);
          v222 = v81[2];
          v223 = v84;
          v86 = *&v224.f64[1];
          v88 = *(&v225[0] + 1);
          v87 = v85;
          v89 = *&v225[1];
          v207 = v84.f64[1];
          v77 = v84.f64[0];
          if ((v225[1] & 0xC0000000) != 0)
          {
            outlined init with copy of DisplayList.Item(&v222, &v233);
            v90 = 0.0;
            v91 = 0.0;
            v92 = v213;
            v93 = v189;
          }

          else
          {
            v93 = v189;
            if (*&v224.f64[1] >> 60 == 12)
            {
              v91 = *((*&v224.f64[1] & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v90 = *((*&v224.f64[1] & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              outlined init with copy of DisplayList.Item(&v222, &v233);
            }

            else
            {
              outlined init with copy of DisplayList.Item(&v222, &v233);
              v90 = 0.0;
              v91 = 0.0;
            }

            v92 = v213;
            v80 = v216;
          }

          goto LABEL_78;
        }

        v179 = *(*&v73 + 8);

        v179(v80, TupleTypeMetadata2);
      }

      else
      {
        (*(*&v73 + 8))(v216, TupleTypeMetadata2);
      }

      goto LABEL_83;
    }
  }

  v185 = 0;
  v94 = v217;
  v195 = *(v217 + 4);
  PropertyList.Tracker.reset()();
  v95 = v214;
  v192 = *(*&v73 + 16);
  v193 = *&v73 + 16;
  v192(v214, v216, TupleTypeMetadata2);
  v96 = &v95[*(v215 + 40)];
  v97 = *v96;
  v98 = *(v96 + 2);
  v99 = *(v96 + 2);
  v100 = v96[12];
  v101 = (v52 + 8);
  v191 = *(v52 + 8);
  v191(v95);
  LODWORD(v222) = v97;
  WORD2(v222) = v98;
  DWORD2(v222) = v99;
  BYTE12(v222) = v100;
  v102 = RasterizationOptions.colorSpace.getter();
  v103 = v202;
  if (v202)
  {
    v104 = v202[8];
  }

  else
  {
    v104 = 0;
  }

  v105 = v195;
  v106 = *(v195 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v106 + 16));
  *(v106 + 24) = v104;
  os_unfair_lock_unlock((v106 + 16));

  v107 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  v108 = v214;
  v192(v214, v216, v213);
  LOBYTE(v106) = v108[*(v215 + 44)];
  v191(v108);
  [v107 setProfile_];
  [v107 setDefaultColorSpace_];
  [v107 setContentRect_];

  v109 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v103);

  [v107 setDeviceScale_];
  [v107 translateByX:-*(v94 + 5) Y:-*(v94 + 6)];
  type metadata accessor for GraphicsContext.Storage();
  v110 = swift_allocObject();
  *(v110 + 32) = xmmword_18DD85500;
  *(v110 + 48) = 1065353216;
  *(v110 + 56) = 0x7FF8000000000000;
  *&v222 = v103;
  *(&v222 + 1) = v105;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();
  v111 = v107;

  *(v110 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v111, &v222);
  *(v110 + 24) = RBDisplayListGetState();
  *(v110 + 64) = 0;
  v187 = v111;

  v229 = v110;
  v112 = *(v94 + 10);
  if (v112)
  {

    v113 = v190;
  }

  else
  {
    v114 = *(v94 + 3);
    v224 = *(v94 + 2);
    v225[0] = v114;
    v225[1] = *(v94 + 4);
    v115 = *(v94 + 1);
    v222 = *v94;
    v223 = v115;
    v226.x = 0.0;

    v116 = CanvasDisplayList.symbols.getter();
    v113 = v190;
    if (v116)
    {
      CurrentAttribute = AGGraphGetCurrentAttribute();
      if (CurrentAttribute == v113)
      {
        __break(1u);
      }

      v118 = CurrentAttribute;
      v119 = v94[6];
      type metadata accessor for SymbolRenderer();
      v112 = swift_allocObject();
      *(v112 + 40) = MEMORY[0x1E69E7CC8];
      *(v112 + 16) = v116;
      *(v112 + 24) = v118;
      *(v112 + 28) = v102;
      *(v112 + 32) = v119;
      *(v94 + 10) = v112;
    }

    else
    {
      v112 = 0;
    }
  }

  *(*(v110 + 16) + 24) = v112;

  v120 = *(v94 + 3);
  v224 = *(v94 + 2);
  v225[0] = v120;
  v225[1] = *(v94 + 4);
  v226.x = *(v94 + 10);
  v121 = *(v94 + 1);
  v222 = *v94;
  v223 = v121;
  v122 = *(v199 - 8);
  (*(v122 + 16))(&v233, &v222);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v123 = static ObservationCenter._current;
  swift_beginAccess();
  v124 = pthread_getspecific(v123[2]);
  v125 = v209;
  v126 = v204;
  if (!v124)
  {
    v127 = swift_slowAlloc();
    pthread_setspecific(v123[2], v127);
    *&v234.f64[1] = type metadata accessor for ObservationCenter();
    v123 = v123[3];
    *&v233 = v123;
    outlined init with take of Any(&v233, v127);

    v124 = v127;
  }

  outlined init with copy of Any(v124, &v233);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v128 = v232;
  v129 = AGGraphGetCurrentAttribute();
  if (v129 == v113)
  {
    __break(1u);
    goto LABEL_89;
  }

  v182 = v129;
  v190 = v122;
  v183 = v101;
  swift_beginAccess();
  v184 = *(v128 + 24);
  *(v128 + 24) = MEMORY[0x1E69E7CC0];
  v130 = v208;
  v131 = v200;
  (*(v208 + 56))(v200, 1, 1, v125);
  v132 = v125;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v134 = *(StatusReg + 848);
  *(StatusReg + 848) = v131;
  v135 = v185;
  closure #2 in CanvasDisplayList.updateValue()(&v229, v218 & 1, *&v211, *&v210, v218, v25, v24);
  *(StatusReg + 848) = v134;
  if (!v135)
  {
    outlined init with take of ObservationTracking._AccessList?(v131, v126);
    v136 = v201;
    outlined init with copy of ObservationTracking._AccessList?(v126, v201);
    v137 = (*(v130 + 48))(v136, 1, v132);
    v138 = v213;
    v139 = v132;
    if (v137 == 1)
    {
      outlined destroy of ObservationTracking._AccessList?(v126);
      v126 = v136;
LABEL_54:
      outlined destroy of ObservationTracking._AccessList?(v126);
      v143 = *(v128 + 24);
      v144 = *(*&v143 + 16);
      if (v144)
      {
        v146 = *(v130 + 16);
        v145 = v130 + 16;
        v218 = v146;
        v147 = v139;
        v148 = *&v143 + ((*(v145 + 64) + 32) & ~*(v145 + 64));
        v149 = v186;
        v150 = *(v145 + 56);
        v211 = v143;

        v151 = v182;
        do
        {
          (v218)(v149, v148, v147);
          specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v151, v149);
          (*(v145 - 8))(v149, v147);
          v148 += v150;
          --v144;
        }

        while (v144);
        (*(v190 + 8))(&v222, v199);

        v138 = v213;
      }

      else
      {
        v152 = *(v190 + 8);

        v152(&v222, v199);
      }

      v153 = v216;
      v154 = BYTE8(v225[1]);
      *(v128 + 24) = v184;

      v90 = 0.0;
      if (v154)
      {
        v91 = 0.0;
      }

      else
      {
        v155 = v187;
        [v187 boundingRect];
        v156 = v245.origin.x;
        v157 = v245.origin.y;
        v158 = v245.size.width;
        v159 = v245.size.height;
        if (CGRectIsEmpty(v245))
        {
          *&v233 = MEMORY[0x1E69E7CC0];
          WORD4(v233) = 0;
          HIDWORD(v233) = 0;
          AGGraphSetOutputValue();

          (*(*&v205 + 8))(v153, v138);

          goto LABEL_83;
        }

        v246.origin.x = v156;
        v246.origin.y = v157;
        v246.size.width = v158;
        v246.size.height = v159;
        MinX = CGRectGetMinX(v246);
        v211 = v77;
        v210 = floor(MinX * 0.0625) * 16.0;
        v247.origin.x = v156;
        v247.origin.y = v157;
        v247.size.width = v158;
        v247.size.height = v159;
        MinY = CGRectGetMinY(v247);
        v218 = v76;
        v162 = floor(MinY * 0.0625) * 16.0;
        v248.origin.x = v156;
        v248.origin.y = v157;
        v248.size.width = v158;
        v248.size.height = v159;
        MaxX = CGRectGetMaxX(v248);
        v164 = v207;
        v165 = ceil(MaxX * 0.0625) * 16.0;
        v249.origin.x = v156;
        v249.origin.y = v157;
        v249.size.width = v158;
        v249.size.height = v159;
        v166 = ceil(CGRectGetMaxY(v249) * 0.0625) * 16.0;
        if (v210 < 0.0)
        {
          v91 = 0.0;
        }

        else
        {
          v91 = v210;
        }

        if (v162 < 0.0)
        {
          v90 = 0.0;
        }

        else
        {
          v90 = v162;
        }

        v76 = v218;
        v167 = v211;
        if (v165 < v211)
        {
          v167 = v165;
        }

        v77 = v167 - v91;
        if (v166 >= v164)
        {
          v166 = v164;
        }

        v207 = v166 - v90;
      }

      v168 = v214;
      v192(v214, v153, v138);
      v169 = &v168[*(v215 + 40)];
      LODWORD(v218) = *v169;
      v170 = v169[4];
      v171 = v169[5];
      v172 = *(v169 + 2);
      v173 = v169[12];
      v191(v168);
      *&v233 = v202;
      *(&v233 + 1) = v195;
      v221 = v171;
      EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v221, v219);
      v174 = v219[0];
      v175 = swift_allocObject();
      v176 = v187;
      v177 = [v187 moveContents];

      *(v175 + 16) = v177;
      *(v175 + 24) = v91;
      *(v175 + 32) = v90;
      *(v175 + 40) = v218;
      *(v175 + 44) = v170;
      *(v175 + 45) = v174;
      v92 = v213;
      *(v175 + 48) = v172;
      *(v175 + 52) = v173;
      v80 = v216;
      v93 = v189;
      if (v189)
      {
        v87 = (2 * (((33 * WORD1(v189)) ^ v189) & 0x7FFF)) | 1;
      }

      else
      {
        v87 = 0;
      }

      v82 = v224.f64[1];
      v83 = *v225;
      v86 = v175 | 0xC000000000000000;

      v88 = 0;
      v89 = 0;
LABEL_78:
      v178 = *v217;
      *&v222 = v91 + v212.f64[0] - *&v76 + v82;
      *(&v222 + 1) = v90 + v212.f64[1] - v188 + v83;
      v223.f64[0] = v77;
      v223.f64[1] = v207;
      *&v224.f64[0] = v93;
      *&v224.f64[1] = v86;
      *&v225[0] = v87;
      *(&v225[0] + 1) = v88;
      *&v225[1] = v89;
      DWORD2(v225[1]) = v178;
      v235 = v224;
      v236[0] = v225[0];
      *(v236 + 12) = *(v225 + 12);
      v233 = v222;
      v234 = v223;
      outlined copy of DisplayList.Item.Value(v86, v87, v88, v89);
      outlined init with copy of DisplayList.Item(&v222, &v229);
      DisplayList.init(_:)(&v233, &v229);
      *&v233 = v229;
      WORD4(v233) = v230;
      HIDWORD(v233) = v231;
      AGGraphSetOutputValue();

      outlined consume of DisplayList.Item.Value(v86, v87, v88, v89);
      outlined destroy of DisplayList.Item(&v222);
      (*(*&v205 + 8))(v80, v92);

      goto LABEL_83;
    }

    v113 = *(v130 + 32);
    v101 = v196;
    (v113)(v196, v136, v139);
    (*(v130 + 16))(v203, v101, v139);
    v123 = *(v128 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v128 + 24) = v123;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_51:
      v142 = v123[2];
      v141 = v123[3];
      if (v142 >= v141 >> 1)
      {
        v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v141 > 1, v142 + 1, 1, v123);
      }

      v123[2] = v142 + 1;
      v130 = v208;
      v139 = v209;
      (v113)(v123 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v208 + 72) * v142, v203, v209);
      *(v128 + 24) = v123;
      (*(v130 + 8))(v101, v139);
      v138 = v213;
      goto LABEL_54;
    }

LABEL_89:
    v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v123[2] + 1, 1, v123);
    *(v128 + 24) = v123;
    goto LABEL_51;
  }

  result = outlined destroy of ObservationTracking._AccessList?(v131);
  __break(1u);
  return result;
}

uint64_t sub_18D1FDA54()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t initializeWithCopy for Canvas(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = (v7 + 19) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 19) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 5);
  *v10 = *v11;
  *(v10 + 5) = v12;
  *(v10 + 13) = *(v11 + 13);

  return a1;
}

uint64_t outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void SymbolRenderer.symbol<A>(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v70 = type metadata accessor for Optional();
  v10 = *(v70 - 1);
  MEMORY[0x1EEE9AC00](v70);
  v12 = v60 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  _convertToAnyHashable<A>(_:)();
  swift_beginAccess();
  v17 = *(v5 + 40);
  if (*(v17 + 16))
  {

    v18 = specialized __RawDictionaryStorage.find<A>(_:)(&v74);
    if (v19)
    {
      v20 = (*(v17 + 56) + 24 * v18);
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      swift_unknownObjectRetain();
      outlined destroy of AnyHashable(&v74);

      if (v21)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0;
      }

      if (v21)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0;
      }

      *a4 = v21;
      a4[1] = v24;
      a4[2] = v25;
      return;
    }
  }

  v69 = v16;
  v64 = a4;
  outlined destroy of AnyHashable(&v74);
  v65 = v5;
  v26 = *(v5 + 16);
  v27 = *(v26 + 16);
  if (!v27)
  {
LABEL_19:
    _convertToAnyHashable<A>(_:)();
    v34 = v65;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73[0] = *(v34 + 40);
    *(v34 + 40) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, 0, 0, &v74, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(&v74);
    *(v34 + 40) = v73[0];
    swift_endAccess();
    v36 = v64;
    *v64 = 0;
    v36[1] = 0;
    v36[2] = 0;
    return;
  }

  v28 = 0;
  v29 = v10;
  v30 = (v13 + 48);
  v68 = (v13 + 32);
  v66 = (v13 + 8);
  v67 = (v29 + 8);
  v31 = (v26 + 72);
  while (1)
  {
    if (v28 >= *(v26 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v74 = *(v31 - 2);

    ViewTraitCollection.tagValue<A>(for:)(a2, v12);

    if ((*v30)(v12, 1, a2) != 1)
    {
      break;
    }

    (*v67)(v12, v70);
LABEL_14:
    ++v28;
    v31 += 6;
    if (v27 == v28)
    {
      goto LABEL_19;
    }
  }

  v32 = a3;
  v33 = v69;
  (*v68)(v69, v12, a2);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    (*v66)(v33, a2);
    a3 = v32;
    goto LABEL_14;
  }

  if (v28 >= *(v26 + 16))
  {
    goto LABEL_27;
  }

  v37 = v65;
  InputValue = AGGraphGetInputValue();
  v40 = *InputValue;
  v39 = InputValue[1];
  v41 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  v42 = *(v37 + 28);
  v70 = v41;
  [v41 setDefaultColorSpace_];
  if (v28 >= *(v26 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (*(v31 - 1) == *MEMORY[0x1E698D3F8])
  {
LABEL_25:
    v57 = v70;
    _convertToAnyHashable<A>(_:)();
    swift_beginAccess();
    swift_unknownObjectRetain();
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v72 = *(v37 + 40);
    *(v37 + 40) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, v40, v39, &v74, v58);
    outlined destroy of AnyHashable(&v74);
    *(v37 + 40) = v72;
    swift_endAccess();

    (*v66)(v69, a2);
    v59 = v64;
    *v64 = v57;
    v59[1] = v40;
    v59[2] = v39;
    return;
  }

  v60[1] = v32;
  v67 = v40;
  v68 = v39;
  v43 = AGGraphGetInputValue();
  v44 = *v43;
  v62 = *(v43 + 8);
  v61 = *(v43 + 12);
  v63 = v44;

  v45 = v70;
  v46 = AGGraphGetInputValue();
  v47 = *v46;
  v48 = v46[1];
  type metadata accessor for GraphicsContext.Storage();
  v49 = swift_allocObject();
  *(v49 + 32) = xmmword_18DD85500;
  *(v49 + 48) = 1065353216;
  *(v49 + 56) = 0x7FF8000000000000;
  v74 = v47;
  v75 = v48;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();

  v50 = v45;

  *(v49 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v50, &v74);
  *(v49 + 24) = RBDisplayListGetState();
  *(v49 + 64) = 0;

  *&v73[0] = v49;
  if (v28 < *(v26 + 16))
  {
    v51 = *v31;
    v52 = *(*v31 + 64);
    *(*v31 + 72) = xmmword_18DDAB910;
    v74 = v63;
    LOWORD(v75) = v62;
    HIDWORD(v75) = v61;

    v53 = *(v51 + 48);
    v54 = *(v51 + 56);
    DisplayList.GraphicsRenderer.render(list:in:)(&v74, v73);
    swift_beginAccess();

    v55 = MEMORY[0x1E69E7CC8];
    *(v51 + 16) = MEMORY[0x1E69E7CC8];

    swift_beginAccess();
    v56 = *(v51 + 32);
    *(v51 + 32) = v55;
    *(v51 + 40) = v55;
    *(v51 + 16) = v56;
    swift_endAccess();
    *(v51 + 48) = v53;
    *(v51 + 56) = v54;
    *(v51 + 64) = v52;

    swift_bridgeObjectRelease_n();

    v39 = v68;
    v40 = v67;
    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
}

uint64_t key path getter for EnvironmentValues.redactionReasons : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016RedactionReasonsI033_18671928047E57F039DC339288B6FAFBLLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016RedactionReasonsS033_18671928047E57F039DC339288B6FAFBLLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t View.redacted(reason:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.redacted(reason:), v5, a2);
}

void *partial apply for closure #1 in View.redacted(reason:)(void *result)
{
  v2 = *(v1 + 16);
  if ((v2 & ~*result) != 0)
  {
    *result |= v2;
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.redactionReasons : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016RedactionReasonsF033_18671928047E57F039DC339288B6FAFBLLVG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016RedactionReasonsK033_18671928047E57F039DC339288B6FAFBLLVG_Ttg5(v4, *a2);
  }
}

uint64_t specialized LeafLayoutComputer.updateValue()()
{
  type metadata accessor for _ShapeView<Rectangle, LinearGradient>();
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 16);
  v4 = *(Value + 24);
  v5 = *(Value + 32);
  v6 = *(Value + 40);
  v7 = *(Value + 41);
  v12 = 1;
  v11 = 1;
  v13 = v1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 1;
  v10 = &v13;

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v9, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
  v13 = v1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 1;
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v13, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>);
}

{
  Value = AGGraphGetValue();
  v1 = Value[3];
  v3 = *Value;
  v2 = Value[1];
  v30[2] = Value[2];
  v30[3] = v1;
  v30[0] = v3;
  v30[1] = v2;
  v4 = Value[7];
  v6 = Value[4];
  v5 = Value[5];
  v30[6] = Value[6];
  v30[7] = v4;
  v30[4] = v6;
  v30[5] = v5;
  v8 = Value[9];
  v7 = Value[10];
  v9 = Value[8];
  *(v31 + 11) = *(Value + 171);
  v30[9] = v8;
  v31[0] = v7;
  v30[8] = v9;
  LOBYTE(v32) = 1;
  v18[0] = 1;
  v18[192] = 1;
  v10 = Value[9];
  v27 = Value[8];
  v28 = v10;
  *v29 = Value[10];
  *&v29[11] = *(Value + 171);
  v11 = Value[5];
  v23 = Value[4];
  v24 = v11;
  v12 = Value[7];
  v25 = Value[6];
  v26 = v12;
  v13 = Value[1];
  v19 = *Value;
  v20 = v13;
  v14 = Value[3];
  v21 = Value[2];
  v22 = v14;
  v40 = v27;
  v41 = v28;
  v42 = *v29;
  v43 = *&v29[16];
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v14;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v47 = 1;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v51 = 1;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  v17 = &v32;
  outlined init with copy of Image.Resolved(v30, v18);
  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v16, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
  v40 = v27;
  v41 = v28;
  v42 = *v29;
  v43 = *&v29[16];
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v47 = 1;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v51 = 1;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  return outlined destroy of LeafLayoutEngine<Image.Resolved>(&v32);
}

{
  type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>();
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 9);
  v8 = 1;
  v7 = 1;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  v6 = &v9;

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v5, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v9, type metadata accessor for LeafLayoutEngine<_ShapeView<CombinedContentShape, ForegroundStyle>>);
}

{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 9);
  v8 = 1;
  v7 = 1;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  v6 = &v9;

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v5, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v9, type metadata accessor for LeafLayoutEngine<AnimatedShape<AnyShape>>);
}

{
  type metadata accessor for _ShapeView<Path, ForegroundStyle>();
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 16);
  v4 = *(Value + 24);
  v5 = *(Value + 33);
  v6 = *(Value + 34);
  v7 = *(Value + 32);
  v12 = 1;
  v11 = 1;
  v13 = v1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v7;
  v18 = v5;
  v19 = v6;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 1;
  v10 = &v13;
  outlined copy of Path.Storage(v1, v2, v3, v4, v7);
  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v9, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
  v13 = v1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v7;
  v18 = v5;
  v19 = v6;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 1;
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v13, type metadata accessor for LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>);
}

{
  type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>();
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 16);
  v4 = *(Value + 24);
  v5 = *(Value + 32);
  v6 = *(Value + 40);
  v7 = *(Value + 41);
  v13 = 1;
  v12 = 1;
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  v11 = &v14;
  v9[2] = &v14;

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v10, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:), v9, _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA18EllipticalGradientVGG_Tt1B5, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, EllipticalGradient>>);
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  return outlined destroy of LeafLayoutEngine<_ShapeView<Rectangle, EllipticalGradient>>(&v14);
}

{
  type metadata accessor for _ShapeView<Rectangle, AngularGradient>();
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 16);
  v4 = *(Value + 24);
  v5 = *(Value + 32);
  v6 = *(Value + 40);
  v7 = *(Value + 41);
  v13 = 1;
  v12 = 1;
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  v11 = &v14;
  v9[2] = &v14;

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v10, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:), v9, _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA15AngularGradientVGG_Tt1B5, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, AngularGradient>>);
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  return outlined destroy of LeafLayoutEngine<_ShapeView<Rectangle, AngularGradient>>(&v14);
}

{
  type metadata accessor for _ShapeView<Rectangle, RadialGradient>();
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 16);
  v4 = *(Value + 24);
  v5 = *(Value + 32);
  v6 = *(Value + 40);
  v7 = *(Value + 41);
  v13 = 1;
  v12 = 1;
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  v11 = &v14;
  v9[2] = &v14;

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v10, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:), v9, _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA14RadialGradientVGG_Tt1B5, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, RadialGradient>>);
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  return outlined destroy of LeafLayoutEngine<_ShapeView<Rectangle, RadialGradient>>(&v14);
}

{
  type metadata accessor for _ShapeView<Rectangle, MeshGradient>();
  Value = AGGraphGetValue();
  v2 = Value[1];
  v1 = Value[2];
  v3 = *Value;
  *(v13 + 12) = *(Value + 44);
  v12[1] = v2;
  v13[0] = v1;
  v12[0] = v3;
  v4 = Value[1];
  v9 = *Value;
  v10 = v4;
  *v11 = Value[2];
  *&v11[12] = *(Value + 44);
  v8[0] = 1;
  v8[64] = 1;
  v14 = v9;
  v15 = v4;
  v16 = *v11;
  v17 = *&v11[16];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 1;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 1;
  v7 = &v14;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v12, v8, type metadata accessor for _ShapeView<Rectangle, MeshGradient>);
  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v6, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
  v14 = v9;
  v15 = v10;
  v16 = *v11;
  v17 = *&v11[16];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 1;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 1;
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v14, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, MeshGradient>>);
}

uint64_t partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v21[0] = *v2;
  v21[1] = v3;
  v4 = *(v2 + 32);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v21[4] = *(v2 + 64);
  v21[5] = v6;
  v21[2] = v4;
  v21[3] = v5;
  v7 = *(v2 + 96);
  v8 = *(v2 + 112);
  v9 = *(v2 + 144);
  v21[8] = *(v2 + 128);
  v21[9] = v9;
  v21[6] = v7;
  v21[7] = v8;
  v10 = *(v2 + 160);
  v11 = *(v2 + 176);
  v12 = *(v2 + 192);
  v22 = *(v2 + 208);
  v21[11] = v11;
  v21[12] = v12;
  v21[10] = v10;
  v13 = *(v2 + 176);
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 176) = v13;
  *(a1 + 192) = *(v2 + 192);
  *(a1 + 208) = *(v2 + 208);
  v14 = *(v2 + 112);
  *(a1 + 96) = *(v2 + 96);
  *(a1 + 112) = v14;
  v15 = *(v2 + 144);
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = v15;
  v16 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v16;
  v17 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v17;
  v18 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v18;
  return outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v21, v20, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>);
}

{
  return outlined init with copy of UnaryLayoutEngine<ConcentricPaddingLayout>(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v19[2] = v2[2];
  v19[3] = v5;
  v19[0] = v3;
  v19[1] = v4;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[7];
  v19[6] = v2[6];
  v19[7] = v8;
  v19[4] = v6;
  v19[5] = v7;
  v9 = v2[8];
  v10 = v2[9];
  v11 = v2[10];
  v20 = *(v2 + 176);
  v19[9] = v10;
  v19[10] = v11;
  v19[8] = v9;
  v12 = v2[9];
  *(a1 + 128) = v2[8];
  *(a1 + 144) = v12;
  *(a1 + 160) = v2[10];
  *(a1 + 176) = *(v2 + 176);
  v13 = v2[5];
  *(a1 + 64) = v2[4];
  *(a1 + 80) = v13;
  v14 = v2[7];
  *(a1 + 96) = v2[6];
  *(a1 + 112) = v14;
  v15 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v15;
  v16 = v2[3];
  *(a1 + 32) = v2[2];
  *(a1 + 48) = v16;
  return outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v19, v18, type metadata accessor for LeafLayoutEngine<_ShapeView<CombinedContentShape, ForegroundStyle>>);
}

{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[2];
  v23[1] = v2[1];
  v23[2] = v4;
  v23[0] = v3;
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[6];
  v23[5] = v2[5];
  v23[6] = v7;
  v23[3] = v5;
  v23[4] = v6;
  v8 = v2[7];
  v9 = v2[8];
  v10 = v2[10];
  v23[9] = v2[9];
  v23[10] = v10;
  v23[7] = v8;
  v23[8] = v9;
  v11 = v2[11];
  v12 = v2[12];
  v13 = v2[13];
  v24 = *(v2 + 224);
  v23[12] = v12;
  v23[13] = v13;
  v23[11] = v11;
  v14 = v2[13];
  *(a1 + 192) = v2[12];
  *(a1 + 208) = v14;
  *(a1 + 224) = *(v2 + 224);
  v15 = v2[9];
  *(a1 + 128) = v2[8];
  *(a1 + 144) = v15;
  v16 = v2[11];
  *(a1 + 160) = v2[10];
  *(a1 + 176) = v16;
  v17 = v2[5];
  *(a1 + 64) = v2[4];
  *(a1 + 80) = v17;
  v18 = v2[7];
  *(a1 + 96) = v2[6];
  *(a1 + 112) = v18;
  v19 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v19;
  v20 = v2[3];
  *(a1 + 32) = v2[2];
  *(a1 + 48) = v20;
  return outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v23, v22, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, MeshGradient>>);
}

{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v19[2] = v2[2];
  v19[3] = v5;
  v19[0] = v3;
  v19[1] = v4;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[7];
  v19[6] = v2[6];
  v19[7] = v8;
  v19[4] = v6;
  v19[5] = v7;
  v9 = v2[8];
  v10 = v2[9];
  v11 = v2[10];
  v20 = *(v2 + 176);
  v19[9] = v10;
  v19[10] = v11;
  v19[8] = v9;
  v12 = v2[9];
  *(a1 + 128) = v2[8];
  *(a1 + 144) = v12;
  *(a1 + 160) = v2[10];
  *(a1 + 176) = *(v2 + 176);
  v13 = v2[5];
  *(a1 + 64) = v2[4];
  *(a1 + 80) = v13;
  v14 = v2[7];
  *(a1 + 96) = v2[6];
  *(a1 + 112) = v14;
  v15 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v15;
  v16 = v2[3];
  *(a1 + 32) = v2[2];
  *(a1 + 48) = v16;
  return outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v19, v18, type metadata accessor for LeafLayoutEngine<AnimatedShape<AnyShape>>);
}

{
  return partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)(outlined init with copy of LazyLayoutComputer<LazyVStackLayout>.Engine, a1);
}

{
  return partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)(outlined init with copy of LazyLayoutComputer<LazyHStackLayout>.Engine, a1);
}

{
  return partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)(outlined init with copy of LeafLayoutEngine<_ShapeView<Rectangle, AngularGradient>>, a1);
}

{
  return partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)(outlined init with copy of LeafLayoutEngine<_ShapeView<Rectangle, EllipticalGradient>>, a1);
}

{
  return partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)(outlined init with copy of LeafLayoutEngine<_ShapeView<Rectangle, RadialGradient>>, a1);
}

{
  v2 = *(v1 + 16);
  v3 = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = v3;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA14LinearGradientVGG_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for TracingLayoutEngineBox);
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 228) = v7;
    *(v4 + 232) = v6;
  }

  else
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  v8 = *(a1 + 176);
  *(v4 + 176) = *(a1 + 160);
  *(v4 + 192) = v8;
  *(v4 + 208) = *(a1 + 192);
  *(v4 + 224) = *(a1 + 208);
  v9 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v9;
  v10 = *(a1 + 144);
  *(v4 + 144) = *(a1 + 128);
  *(v4 + 160) = v10;
  v11 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v11;
  v12 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v14;
  *a2 = v4;
  a2[1] = 0;
  return result;
}

void protocol witness for FontModifier.modify(descriptor:in:) in conformance Font.LeadingModifier(void **a1)
{
  v3 = *v1;
  v4 = *a1;
  v6 = v3;
  v5 = CTFontDescriptorRef.leading(_:)(&v6);

  *a1 = v5;
}

const __CTFontDescriptor *CTFontDescriptorRef.leading(_:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 != 1)
    {
      CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v1, 0, 0x8000u);
      if (!CopyWithSymbolicTraits)
      {
        CopyWithSymbolicTraits = v1;
      }

      v5 = CTFontDescriptorCreateCopyWithSymbolicTraits(CopyWithSymbolicTraits, 0x10000u, 0x10000u);
      if (v5)
      {
        goto LABEL_10;
      }

      return CopyWithSymbolicTraits;
    }

    CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v1, 0, 0x10000u);
    if (!CopyWithSymbolicTraits)
    {
      CopyWithSymbolicTraits = v1;
    }

    v3 = CopyWithSymbolicTraits;
    v4 = 0x8000;
  }

  else
  {
    CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(v1, 0, 0x10000u);
    if (!CopyWithSymbolicTraits)
    {
      CopyWithSymbolicTraits = v1;
    }

    v3 = CopyWithSymbolicTraits;
    v4 = 0;
  }

  v5 = CTFontDescriptorCreateCopyWithSymbolicTraits(v3, v4, 0x8000u);
  if (v5)
  {
LABEL_10:
    v6 = v5;

    return v6;
  }

  return CopyWithSymbolicTraits;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unsigned __int8 *assignWithCopy for LazyState(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 != a2)
  {
    if (*(v6 + 64) <= 0x10uLL)
    {
      v7 = 16;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (a1[2] << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      if (v15 <= 1)
      {
        if (!v15)
        {
          goto LABEL_36;
        }

        v16 = *a2;
        if (v7 < 4)
        {
LABEL_39:
          if ((v16 | (v14 << (8 * v7))) != 0xFFFFFFFF)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (v15 == 2)
      {
        v16 = *a2;
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (a2[2] << 16);
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v16 = *a2;
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      v13 = v16 + 2;
    }

LABEL_36:
    if (v13 != 1)
    {
LABEL_40:
      v17 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v17;
      a1[v7] = 0;

      goto LABEL_41;
    }

LABEL_37:
    (*(v6 + 16))(a1, a2, v5);
    a1[v7] = 1;
  }

LABEL_41:
  v18 = *(v6 + 64);
  if (v18 <= 0x10)
  {
    v18 = 16;
  }

  *(&a1[v18 + 8] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v18 + 8] & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for LazyState.Storage(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 0x10)
  {
    v2 = 16;
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    v3 = v6 + 2;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 == 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  else
  {
  }
}

void _ShapeStyle_Pack.Slice.allColors.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  v3 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    goto LABEL_36;
  }

  v4 = *(v0 + 32);
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v6 = *(v0 + 8);
    swift_unknownObjectRetain();
    if (v5 == v4)
    {
LABEL_4:
      swift_unknownObjectRelease();
      return;
    }

    v7 = 0;
    v8 = 1;
    v24 = v2;
    v25 = v1;
    while (1)
    {
      if (v7 < v1 || v7 >= v2)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v9 = *v6;
      v10 = v6[1];
      v11 = v6[3];
      v27[2] = v6[2];
      v27[3] = v11;
      v27[0] = v9;
      v27[1] = v10;
      v12 = v6[4];
      v13 = v6[5];
      v14 = v6[7];
      v29 = v6[6];
      v30 = v14;
      v27[4] = v12;
      v28 = v13;
      if ((v4 + v7) >= v5)
      {
        goto LABEL_35;
      }

      if (v8)
      {
        break;
      }

      v8 = 0;
LABEL_7:
      ++v7;
      v6 += 8;
      if (v3 == v7)
      {
        goto LABEL_4;
      }
    }

    v15 = BYTE13(v28);
    if (BYTE13(v28))
    {
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v27, v26, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
LABEL_32:
      v8 = v15 == 6;
      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v27, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      goto LABEL_7;
    }

    v16 = *(&v29 + 1);
    v17 = v30;
    if (v30 == 255)
    {
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v27, v26, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      if (one-time initialization token for normal != -1)
      {
        swift_once();
      }

      v18 = static GraphicsBlendMode.normal;
      v19 = byte_1ED52F818;
      outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
    }

    else
    {
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v27, v26, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      v18 = v16;
      v19 = v17;
    }

    outlined copy of GraphicsBlendMode?(v16, v17);
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v20 = static GraphicsBlendMode.normal;
    if (v19)
    {
      if (byte_1ED52F818)
      {
        swift_unknownObjectRetain();
        outlined consume of GraphicsBlendMode(v18, 1);
        outlined consume of GraphicsBlendMode(v20, 1);
        v21 = v18 == v20;
        v2 = v24;
        v1 = v25;
        if (!v21)
        {
          goto LABEL_32;
        }

LABEL_31:
        if (!*(*(&v30 + 1) + 16))
        {
          outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v27, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
          v8 = 1;
          goto LABEL_7;
        }

        goto LABEL_32;
      }

      outlined consume of GraphicsBlendMode(v18, 1);
      v22 = v20;
      v23 = 0;
    }

    else
    {
      if ((byte_1ED52F818 & 1) == 0)
      {
        outlined consume of GraphicsBlendMode(v18, 0);
        outlined consume of GraphicsBlendMode(v20, 0);
        v21 = v18 == v20;
        v2 = v24;
        v1 = v25;
        if (!v21)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v18, 0);
      v22 = v20;
      v23 = 1;
    }

    outlined consume of GraphicsBlendMode(v22, v23);
    v2 = v24;
    v1 = v25;
    goto LABEL_32;
  }

LABEL_37:
  __break(1u);
}

uint64_t initializeWithCopy for _ShapeStyle_Pack.Slice(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRetain();
  return a1;
}

uint64_t _ShapeStyle_Pack.Style.color.getter()
{
  if (*(v0 + 85))
  {
    return 0;
  }

  v1 = v0[12];
  v2 = *(v0 + 104);
  v3 = v0[14];
  v4 = *v0;
  if (v2 == 255)
  {
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v5 = static GraphicsBlendMode.normal;
    v6 = byte_1ED52F818;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  }

  else
  {
    v5 = v0[12];
    v6 = *(v0 + 104);
  }

  outlined copy of GraphicsBlendMode?(v1, v2);
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v7 = static GraphicsBlendMode.normal;
  v8 = byte_1ED52F818;
  if (v6)
  {
    if (byte_1ED52F818)
    {
      swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v5, 1);
      outlined consume of GraphicsBlendMode(v7, 1);
      if (v5 != v7)
      {
        return 0;
      }

      goto LABEL_15;
    }

    swift_unknownObjectRetain();
    goto LABEL_19;
  }

  if (byte_1ED52F818)
  {
LABEL_19:
    outlined copy of GraphicsBlendMode(v7, v8);
    outlined consume of GraphicsBlendMode(v5, v6 & 1);
    outlined consume of GraphicsBlendMode(v7, v8);
    outlined consume of GraphicsBlendMode(v5, v6 & 1);
    return 0;
  }

  outlined consume of GraphicsBlendMode(v5, 0);
  outlined consume of GraphicsBlendMode(v7, 0);
  if (v5 != v7)
  {
    return 0;
  }

LABEL_15:
  if (*(v3 + 16))
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t closure #1 in _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result > 6)
  {
    if (result == 7)
    {
      v4 = 3;
    }

    else
    {
      if (result != 8)
      {
        if (result == 9)
        {
          if (a3)
          {
            result = _ShapeStyle_Pack.subscript.getter(a2, a3);
            if ((v5 & 0x100000000) == 0)
            {
              return RBColorFromLinear();
            }
          }
        }

        return result;
      }

      v4 = 4;
    }
  }

  else if (result)
  {
    if (result == 5)
    {
      v4 = 1;
    }

    else
    {
      if (result != 6)
      {
        return result;
      }

      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a4 + 16);
  v7 = *(a4 + 24) >> 1;
  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_31;
  }

  v9 = *(a4 + 32);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v11 == v9)
  {
    return result;
  }

  if (v11 < v9)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  v12 = v11 + ~v9;
  if (v12 < v4)
  {
    v4 = v12;
  }

  v13 = v4 - v9;
  if (v13 < v6 || v13 >= v7)
  {
    goto LABEL_33;
  }

  result = _ShapeStyle_Pack.Style.color.getter();
  if ((v15 & 0x100000000) == 0)
  {
    return RBColorFromLinear();
  }

  return result;
}

float thunk for @escaping @callee_guaranteed (@unowned RBSymbolStyle, @guaranteed String?) -> (@unowned RBColor)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4(a2, a3, v6);

  return v7;
}

uint64_t specialized static Font.SystemProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v19 = v5;
  v20 = v4;
  v21 = v2;
  v22 = v3;
  v6 = *(a1 + 17);
  v7 = *(a1 + 18);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (v6 == 4)
  {
    if (v11 != 4)
    {
      return 0;
    }

LABEL_14:
    if (v7 == 14)
    {
      if (v12 != 14)
      {
        return 0;
      }
    }

    else
    {
      v18 = v7;
      if (v12 == 14)
      {
        return 0;
      }

      v17 = v12;
      if (!specialized static Font.TextStyle.== infix(_:_:)(&v18, &v17))
      {
        return 0;
      }
    }

    if (v9)
    {
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v8 == v13)
      {
        v16 = v14;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }
    }

    return 1;
  }

  result = 0;
  if (v11 != 4 && v6 == v11)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t Text.fontWeight(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, char *a6)
{
  outlined copy of Text.Storage(a3, a4, a5 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
  }

  v11 = *(a6 + 2);
  v10 = *(a6 + 3);
  if (v11 >= v10 >> 1)
  {
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, a6);
  }

  *(a6 + 2) = v11 + 1;
  v12 = &a6[16 * v11];
  *(v12 + 4) = a1;
  v12[40] = a2 & 1 | 0x40;
  return a3;
}

SwiftUI::Gradient __swiftcall Gradient.init(stops:)(SwiftUI::Gradient stops)
{
  v1 = *(stops.stops._rawValue + 2);
  if (v1)
  {
    v2 = *(stops.stops._rawValue + 5);
    v3 = (stops.stops._rawValue + 56);
    while (--v1)
    {
      v4 = *v3;
      v3 += 2;
      v5 = v4 < v2;
      v2 = v4;
      if (v5)
      {
        rawValue = stops.stops._rawValue;
        static os_log_type_t.fault.getter();
        if (one-time initialization token for runtimeIssuesLog != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        return rawValue;
      }
    }
  }

  return stops;
}

uint64_t LinearGradient.init(gradient:startPoint:endPoint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

void *key path getter for EnvironmentValues.defaultTextFieldTruncationMode : EnvironmentValues@<X0>(void *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X3>, void *(*a3)(uint64_t *__return_ptr, void, _BYTE *)@<X4>, _BYTE *a4@<X8>)
{
  v5 = *a1;
  if (a1[1])
  {

    a2(&v9, v5);
  }

  else
  {
    result = a3(&v9, *a1, v8);
  }

  *a4 = v9;
  return result;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  type metadata accessor for Locale?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void protocol witness for static StaticFontModifier.modify(descriptor:in:) in conformance Font.BoldModifier(CTFontDescriptorRef *a1)
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

uint64_t Font.StaticModifierProvider.resolveDescriptor(in:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v8 = *a1;
  v7 = a1[1];
  v11[2] = a1[2];
  v12[0] = v8;
  v9 = a1[2];
  v12[1] = v7;
  v12[2] = v9;
  *&v12[0] = (*(*a2 + 96))(v12);
  (*(a4 + 16))(v12, v11, a3, a4);
  return *&v12[0];
}

uint64_t specialized ShapeStyledDisplayList.updateValue()(void (*a1)(void), void (*a2)(void *, _OWORD *, _OWORD *, uint64_t *))
{
  v63 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = *(v2 + 3);
  a1(0);
  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = *(Value + 40);
  v8 = *(Value + 41);
  if ((v9 & 1) != 0 || !*(v2 + 25))
  {
    v11 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v2 + 28);
    LODWORD(__dst[1]) = LODWORD(v4);

    v10 = AGGraphAnyInputsChanged();
    v11 = ++static DisplayList.Version.lastValue;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v12 = (2 * ((33 * (v11 >> 16)) ^ v11)) | 1;
  if (!v11)
  {
    LOWORD(v12) = 0;
  }

  *(v2 + 25) = v12;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_25:
    v37 = v13;
    v38 = v14;
    v39 = v15;
    v40 = v16;
    swift_once();
    v16 = v40;
    v15 = v39;
    v14 = v38;
    v13 = v37;
    goto LABEL_23;
  }

  v43 = a2;
  v41 = v7;
  v7 = __src;
  v17 = *(v2 + 10);
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v42 = v17;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v18 = AGGraphGetValue();
  v19 = *v18;
  v20 = v18[1];
  v21 = AGGraphGetValue();
  v22 = v19 - *v21;
  v23 = v20 - v21[1];
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = *(v24 + 8);
  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  v64.origin.x = 0.0;
  v64.origin.y = 0.0;
  v64.size.width = v25;
  v64.size.height = v26;
  IsNull = CGRectIsNull(v64);
  if (IsNull)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v25;
  }

  if (IsNull)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v26;
  }

  v28 = 6;
  if (!IsNull)
  {
    v28 = 0;
  }

  v29 = 0x10000;
  if (!v8)
  {
    v29 = 0;
  }

  v30 = 256;
  if (!v41)
  {
    v30 = 0;
  }

  a2 = (v29 | v30 | v28);
  _setThreadGeometryProxyData();
  v50 = 0uLL;
  *&v51 = v6;
  *(&v51 + 1) = v4;
  *&v52 = a2;
  *&v54 = 0;
  *&v55[24] = 0;
  v56 = 0;
  v57 = 0;
  v58 = v25;
  v59 = v26;
  v31 = *v2;
  *(v48 + 8) = 0u;
  *(&v48[1] + 8) = 0u;
  *(&v48[2] + 8) = 0u;
  *(&v48[3] + 8) = 0u;
  *(&v48[4] + 1) = 0x20000000;
  v49 = 0;
  *&v48[0] = v31;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v50, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v65.origin.x = 0.0;
  v65.origin.y = 0.0;
  v65.size.width = v25;
  v65.size.height = v26;
  *&v13 = CGRectOffset(v65, v22, v23);
  LODWORD(v6) = *(v2 + 2);
  LOWORD(a2) = *(v2 + 25);
  LOBYTE(v4) = *(v2 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_25;
  }

LABEL_23:
  v32 = static GraphicsBlendMode.normal;
  v33 = byte_1ED52F818;
  *(v7 + 31) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = v33;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v34 = v53;
  v35 = *v55;
  v7[4] = v54;
  v7[5] = v35;
  *(v7 + 92) = *&v55[12];
  __src[0] = v50;
  __src[1] = v51;
  __src[2] = v52;
  __src[3] = v34;
  WORD6(__src[6]) = a2;
  *(v7 + 14) = v13;
  *(v7 + 15) = v14;
  *(v7 + 16) = v15;
  *(v7 + 17) = v16;
  *(v7 + 20) = v13;
  *(v7 + 21) = v14;
  *(v7 + 22) = v15;
  *(v7 + 23) = v16;
  *(v7 + 24) = v11;
  *(v7 + 25) = 0;
  *(v7 + 26) = 0;
  *(v7 + 27) = 0;
  *(v7 + 28) = 3221225472;
  DWORD2(__src[14]) = LODWORD(v6);
  BYTE12(__src[14]) = LOBYTE(v4);
  LODWORD(__src[15]) = v42;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(v32, v33);
  v43(__dst, v48, __src, v2);
  LOBYTE(__dst[0]) = *(v2 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v44);
  *&v61[0] = v44;
  WORD4(v61[0]) = v45;
  HIDWORD(v61[0]) = v46;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v50, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v61[2] = v48[2];
  v61[3] = v48[3];
  v61[4] = v48[4];
  v62 = v49;
  v61[0] = v48[0];
  v61[1] = v48[1];
  outlined destroy of _ShapeStyle_RenderedLayers(v61);
}

{
  v6 = v2;
  v83 = *MEMORY[0x1E69E9840];
  v7 = *(v2 + 3);
  a1(0);
  Value = AGGraphGetValue();
  v9 = Value[1];
  v10 = Value[2];
  v60 = *Value;
  if ((v11 & 1) != 0 || !*(v6 + 25))
  {
    v13 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v6 + 28);
    LODWORD(__dst[1]) = v7;
    v12 = AGGraphAnyInputsChanged();
    v13 = ++static DisplayList.Version.lastValue;
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v14 = (2 * ((33 * (v13 >> 16)) ^ v13)) | 1;
  if (!v13)
  {
    LOWORD(v14) = 0;
  }

  *(v6 + 25) = v14;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v45 = v15;
    v46 = v16;
    v47 = v17;
    v48 = v18;
    swift_once();
    v18 = v48;
    v17 = v47;
    v16 = v46;
    v15 = v45;
    goto LABEL_15;
  }

  v58 = v13;
  v59 = a2;
  v55 = v10;
  v56 = v9;
  v10 = __src;
  v19 = *(v6 + 10);
  v54 = AGCreateWeakAttribute();
  v52 = AGCreateWeakAttribute();
  v57 = v19;
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v53 = HIDWORD(v20);
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v51 = HIDWORD(v22);
  v24 = AGCreateWeakAttribute();
  v25 = v24;
  v50 = HIDWORD(v24);
  v26 = AGCreateWeakAttribute();
  v27 = v26;
  v49 = HIDWORD(v26);
  type metadata accessor for CGPoint(0);
  v28 = AGGraphGetValue();
  v29 = *v28;
  v30 = v28[1];
  v31 = AGGraphGetValue();
  v32 = v29 - *v31;
  v33 = v30 - v31[1];
  v34 = AGGraphGetValue();
  v35 = *v34;
  v36 = *(v34 + 8);
  _threadGeometryProxyData();
  __dst[0] = v54;
  __dst[1] = v52;
  __dst[2] = __PAIR64__(v53, v21);
  __dst[3] = __PAIR64__(v51, v23);
  v4 = v58;
  __dst[4] = __PAIR64__(v50, v25);
  __dst[5] = __PAIR64__(v49, v27);
  LODWORD(__dst[6]) = v58;
  _setThreadGeometryProxyData();
  LOBYTE(__src[0]) = v60;
  Capsule.path(in:)(v81, 0.0, 0.0, v35, v36);
  v37 = 0x10000;
  if (!v55)
  {
    v37 = 0;
  }

  v38 = 256;
  if (!v56)
  {
    v38 = 0;
  }

  v13 = v37 | v38 | v82;
  v3 = &v78;
  _setThreadGeometryProxyData();
  v68 = v81[1];
  v67 = v81[0];
  *&v69 = v13;
  *&v71 = 0;
  DWORD2(v72[1]) = 0;
  v73 = 0;
  v74 = 0;
  v75 = v35;
  v76 = v36;
  v39 = *v6;
  *(v65 + 8) = 0u;
  *(&v65[1] + 8) = 0u;
  *(&v65[2] + 8) = 0u;
  *(&v65[3] + 8) = 0u;
  *(&v65[4] + 1) = 0x20000000;
  v66 = 0;
  *&v65[0] = v39;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v67, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v84.origin.x = 0.0;
  v84.origin.y = 0.0;
  v84.size.width = v35;
  v84.size.height = v36;
  *&v15 = CGRectOffset(v84, v32, v33);
  LODWORD(v13) = *(v6 + 2);
  LOWORD(v9) = *(v6 + 25);
  LOBYTE(a2) = *(v6 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_17;
  }

LABEL_15:
  v40 = static GraphicsBlendMode.normal;
  v41 = byte_1ED52F818;
  *(v10 + 248) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = v41;
  *(v10 + 260) = 1065353216;
  BYTE8(__src[16]) = 0;
  __src[4] = v71;
  __src[5] = v72[0];
  *(&__src[5] + 12) = *(v72 + 12);
  __src[0] = v67;
  __src[1] = v68;
  __src[2] = v69;
  __src[3] = v70;
  WORD6(__src[6]) = v9;
  *(v10 + 112) = v15;
  *(v10 + 120) = v16;
  *(v10 + 128) = v17;
  *(v10 + 136) = v18;
  *(v10 + 160) = v15;
  *(v10 + 168) = v16;
  *(v10 + 176) = v17;
  *(v10 + 184) = v18;
  *(v10 + 192) = v4;
  *(v10 + 200) = 0;
  *(v10 + 208) = 0;
  *(v10 + 216) = 0;
  *(v10 + 224) = 3221225472;
  *(v10 + 232) = v13;
  BYTE12(__src[14]) = a2;
  *(v10 + 240) = v57;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(v40, v41);
  v59(__dst, v65, __src, v6);
  LOBYTE(__dst[0]) = *(v6 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v61);
  v78 = v61;
  v79 = v62;
  v80 = v63;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v67, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v42 = v65[3];
  *(v3 + 2) = v65[2];
  *(v3 + 3) = v42;
  *(v3 + 4) = v65[4];
  *(v3 + 20) = v66;
  v43 = v65[1];
  *v3 = v65[0];
  *(v3 + 1) = v43;
  return outlined destroy of _ShapeStyle_RenderedLayers(&v78);
}

uint64_t outlined init with copy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ShapeStyledDisplayList();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t specialized StaticBody.updateValue()()
{
  v2 = v0;
  v53 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v44 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    *&v52 = type metadata accessor for ObservationCenter();
    v1 = v18[3];
    v50 = v1;
    outlined init with take of Any(&v50, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v49;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v41 = *(v2 + 2);

    v42 = v41 + 1;
    v29 = v45;
    v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 1, v2);
    *(v21 + 24) = v43;

    v2 = v43;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  v45 = v11;
  swift_beginAccess();
  v46 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v17, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v24 = *(StatusReg + 848);
  *(StatusReg + 848) = v17;
  Value = AGGraphGetValue();
  v48 = v17;
  v50 = *Value;
  v26 = *(Value + 24);
  v51 = *(Value + 8);
  v52 = v26;

  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v50);
  v27 = v48;

  *(StatusReg + 848) = v24;
  outlined init with copy of ObservationTracking._AccessList?(v27, v14, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v14, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v27, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v28 = v14;
    goto LABEL_12;
  }

  v29 = v45;
  v44 = *(v4 + 32);
  v44(v45, v14, v3);
  (*(v4 + 16))(v47, v29, v3);
  swift_beginAccess();
  v2 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v32 = *(v2 + 2);
  v31 = *(v2 + 3);
  if (v32 >= v31 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, v2);
  }

  *(v2 + 2) = v32 + 1;
  v44(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32], v47, v3);
  *(v21 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v29, v3);
  v28 = v48;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v28, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v33 = *(v21 + 24);
  v34 = *(v33 + 16);
  if (v34)
  {
    v37 = *(v4 + 16);
    v35 = v4 + 16;
    v36 = v37;
    v38 = v33 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v39 = *(v35 + 56);
    v48 = *(v21 + 24);

    do
    {
      v36(v6, v38, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v35 - 8))(v6, v3);
      v38 += v39;
      --v34;
    }

    while (v34);
  }

  *(v21 + 24) = v46;
}

{
  v4 = v0;
  v60 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v51 - v12;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v53 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v51 - v16);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v59 = type metadata accessor for ObservationCenter();
    v2 = v18[3];
    *&v58 = v2;
    outlined init with take of Any(&v58, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v58);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v57;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v49 = v17[2];

    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49 + 1, 1, v17);
    *(v21 + 24) = v50;

    v17 = v50;
    goto LABEL_9;
  }

  v2 = CurrentAttribute;
  swift_beginAccess();
  v51 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v6 + 56))(v17, 1, 1, v5);
  v52 = v6;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v56 = v17;
  v24 = *(StatusReg + 848);
  *(StatusReg + 848) = v56;
  v25 = *v4;
  v26 = *(v4 + 1);
  v27 = *(v4 + 16);

  Value = AGGraphGetValue();
  v29 = Value[1];
  v30 = Value[2];
  v31 = Value[3];

  specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v32, 1, v29, v30, v31, v25, v26, v27);

  *(StatusReg + 848) = v24;
  v33 = v56;
  v1 = v52;
  v34 = v53;
  outlined init with copy of ObservationTracking._AccessList?(v56, v53, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v1 + 48))(v34, 1, v5) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v33, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v35 = v34;
    goto LABEL_12;
  }

  v3 = *(v1 + 32);
  v36 = v55;
  v3(v55, v34, v5);
  (*(v1 + 16))(v54, v36, v5);
  swift_beginAccess();
  v17 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v39 = v17[2];
  v38 = v17[3];
  if (v39 >= v38 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1, v17);
  }

  v17[2] = v39 + 1;
  v3(v17 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v39, v54, v5);
  *(v21 + 24) = v17;
  swift_endAccess();
  (*(v1 + 8))(v55, v5);
  v35 = v56;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v40 = *(v21 + 24);
  v41 = *(v40 + 16);
  if (v41)
  {
    v44 = *(v1 + 16);
    v42 = v1 + 16;
    v43 = v44;
    v45 = v40 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v46 = *(v42 + 56);
    v47 = (v42 - 8);
    v56 = *(v21 + 24);

    do
    {
      v43(v8, v45, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v2, v8);
      (*v47)(v8, v5);
      v45 += v46;
      --v41;
    }

    while (v41);
  }

  *(v21 + 24) = v51;
}

{
  v2 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v51 = type metadata accessor for ObservationCenter();
    v1 = v18[3];
    *&v50 = v1;
    outlined init with take of Any(&v50, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v49;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v40 = *(v2 + 2);

    v41 = v40 + 1;
    v28 = v45;
    v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 1, v2);
    *(v21 + 24) = v42;

    v2 = v42;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  v45 = v11;
  swift_beginAccess();
  v46 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v17, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v24 = *(StatusReg + 848);
  *(StatusReg + 848) = v17;
  AGGraphGetValue();
  v48 = v17;

  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v25);
  v26 = v48;

  *(StatusReg + 848) = v24;
  outlined init with copy of ObservationTracking._AccessList?(v26, v14, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v14, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v26, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v27 = v14;
    goto LABEL_12;
  }

  v28 = v45;
  v44 = *(v4 + 32);
  v44(v45, v14, v3);
  (*(v4 + 16))(v47, v28, v3);
  swift_beginAccess();
  v2 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v44(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v31], v47, v3);
  *(v21 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v28, v3);
  v27 = v48;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v27, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v32 = *(v21 + 24);
  v33 = *(v32 + 16);
  if (v33)
  {
    v36 = *(v4 + 16);
    v34 = v4 + 16;
    v35 = v36;
    v37 = v32 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v38 = *(v34 + 56);
    v48 = *(v21 + 24);

    do
    {
      v35(v6, v37, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v34 - 8))(v6, v3);
      v37 += v38;
      --v33;
    }

    while (v33);
  }

  *(v21 + 24) = v46;
}

{
  v2 = v0;
  v46 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v39 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v45 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v44 = v1;
    outlined init with take of Any(&v44, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v44);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v43;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v37 = *(v2 + 2);

    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37 + 1, 1, v2);
    *(v20 + 24) = v38;

    v2 = v38;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v40 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(*(Value + 16), *Value, *(Value + 8));
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v25 = v42;
  v39 = *(v4 + 32);
  v39(v42, v13, v3);
  (*(v4 + 16))(v41, v25, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v39(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28], v41, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v42, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v29 = *(v20 + 24);
  v30 = *(v29 + 16);
  if (v30)
  {
    v33 = *(v4 + 16);
    v32 = v4 + 16;
    v31 = v33;
    v34 = v29 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v35 = *(v32 + 56);
    v42 = *(v20 + 24);

    do
    {
      v31(v6, v34, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v32 - 8))(v6, v3);
      v34 += v35;
      --v30;
    }

    while (v30);
  }

  *(v20 + 24) = v40;
}

{
  v3 = v0;
  v63 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v49 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v61 = type metadata accessor for ObservationCenter();
    v1 = v18[3];
    *&v59 = v1;
    outlined init with take of Any(&v59, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v59);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v58;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v47 = v3[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v3);
    *(v21 + 24) = v48;

    v3 = v48;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v53 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v5 + 56))(v17, 1, 1, v4);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v51 = *(StatusReg + 848);
  *(StatusReg + 848) = v17;
  Value = AGGraphGetValue();
  v54 = v5;
  v25 = *Value;
  v24 = *(Value + 8);
  v57 = v17;
  v27 = *(Value + 16);
  v26 = *(Value + 24);
  *&v59 = v25;
  *(&v59 + 1) = v24;
  v60 = v27;
  v61 = v26;
  v52 = v14;
  v28 = *(Value + 32);
  v62 = v28;
  outlined copy of Path.Storage(v25, v24, v27, v26, v28);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v59);
  v29 = v25;
  v2 = v54;
  v30 = v57;
  v31 = v26;
  v32 = v52;
  outlined consume of Path.Storage(v29, v24, v27, v31, v28);
  *(StatusReg + 848) = v51;
  outlined init with copy of ObservationTracking._AccessList?(v30, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v2 + 48))(v32, 1, v4) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v33 = v32;
    goto LABEL_12;
  }

  v17 = *(v2 + 32);
  v34 = v56;
  (v17)(v56, v32, v4);
  (*(v2 + 16))(v55, v34, v4);
  swift_beginAccess();
  v3 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v37 = v3[2];
  v36 = v3[3];
  if (v37 >= v36 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v3);
  }

  v3[2] = v37 + 1;
  (v17)(v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v37, v55, v4);
  *(v21 + 24) = v3;
  swift_endAccess();
  (*(v2 + 8))(v56, v4);
  v33 = v57;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v33, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v21 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v2 + 16);
    v41 = v2 + 16;
    v40 = v42;
    v43 = v38 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v44 = *(v41 + 56);
    v45 = (v41 - 8);
    v57 = *(v21 + 24);

    do
    {
      v40(v7, v43, v4);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v7);
      (*v45)(v7, v4);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v21 + 24) = v53;
}

{
  v2 = v0;
  v44 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v37 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v43 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v42 = v1;
    outlined init with take of Any(&v42, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v42);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v41;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    *(v20 + 24) = v2;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v38 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(*Value, Value[1], Value[2], Value[3]);
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v25 = v40;
  v37 = *(v4 + 32);
  v37(v40, v13, v3);
  (*(v4 + 16))(v39, v25, v3);
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v37(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28], v39, v3);
  *(v20 + 24) = v2;
  (*(v4 + 8))(v40, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v29 = *(v20 + 24);
  v30 = *(v29 + 16);
  if (v30)
  {
    v33 = *(v4 + 16);
    v32 = v4 + 16;
    v31 = v33;
    v34 = v29 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v35 = *(v32 + 56);
    v40 = *(v20 + 24);

    do
    {
      v31(v6, v34, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v32 - 8))(v6, v3);
      v34 += v35;
      --v30;
    }

    while (v30);
  }

  *(v20 + 24) = v38;
}

{
  v1 = v0;
  v58 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v44[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44[-v8];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44[-v14];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v16 = static ObservationCenter._current;
  swift_beginAccess();
  v17 = pthread_getspecific(v16[2]);
  if (!v17)
  {
    v18 = swift_slowAlloc();
    pthread_setspecific(v16[2], v18);
    *(&v56 + 1) = type metadata accessor for ObservationCenter();
    *&v55 = v16[3];
    outlined init with take of Any(&v55, v18);

    v17 = v18;
  }

  outlined init with copy of Any(v17, v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v19 = v50;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v19 + 24) = v1;
    goto LABEL_9;
  }

  v45 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v19 + 24);
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  v49 = v3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v22 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  Value = AGGraphGetValue();
  v25 = Value[1];
  v24 = Value[2];
  v26 = *Value;
  *(v53 + 9) = *(Value + 41);
  v53[0] = v24;
  v52[0] = v26;
  v52[1] = v25;
  v55 = *Value;
  v56 = Value[1];
  v57[0] = Value[2];
  *(v57 + 9) = *(Value + 41);
  outlined init with copy of _GlassContainerStorageView(v52, &v51);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v55);
  outlined destroy of _GlassContainerStorageView(v52);
  *(StatusReg + 848) = v22;
  v27 = v2;
  v28 = v49;
  v29 = v12;
  outlined init with copy of ObservationTracking._AccessList?(v15, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v28 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v15 = v12;
    goto LABEL_12;
  }

  v12 = *(v28 + 32);
  (v12)(v9, v29, v2);
  (*(v28 + 16))(v48, v9, v2);
  v1 = *(v19 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v32 = v1[2];
  v31 = v1[3];
  if (v32 >= v31 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, v1);
  }

  v1[2] = v32 + 1;
  v33 = v1 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v32;
  v28 = v49;
  v27 = v2;
  (v12)(v33, v48, v2);
  *(v19 + 24) = v1;
  (*(v28 + 8))(v9, v2);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v34 = *(v19 + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = v46;
    v38 = *(v28 + 16);
    v37 = v28 + 16;
    v48 = *(v19 + 24);
    v49 = v38;
    v39 = v34 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v40 = *(v37 + 56);
    v41 = (v37 - 8);

    v42 = v45;
    do
    {
      (v49)(v36, v39, v27);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v42, v36);
      (*v41)(v36, v27);
      v39 += v40;
      --v35;
    }

    while (v35);
  }

  *(v19 + 24) = v47;
}

{
  v2 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v51[1] + 1) = type metadata accessor for ObservationCenter();
    v46 = v16;
    v1 = v3;
    *&v51[0] = v17[3];
    outlined init with take of Any(v51, v19);
    v16 = v46;

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v47;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v20 + 24) = v3;
    goto LABEL_9;
  }

  v42 = CurrentAttribute;
  swift_beginAccess();
  v44 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = v4;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  v1 = v3;
  Value = AGGraphGetValue();
  memcpy(v49, Value, 0x230uLL);
  memcpy(v51, Value, sizeof(v51));
  outlined init with copy of GlassEntryContainerView(v49, &v48);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v51);
  v25 = v1;
  outlined destroy of GlassEntryContainerView(v49);
  *(StatusReg + 848) = v23;
  v26 = v46;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v26 + 6))(v13, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v26 + 4);
  v2(v10, v13, v1);
  (*(v26 + 2))(v45, v10, v1);
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v29 = v3[2];
  v28 = v3[3];
  if (v29 >= v28 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v3);
  }

  v3[2] = v29 + 1;
  v30 = v3 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v29;
  v26 = v46;
  v2(v30, v45, v1);
  *(v20 + 24) = v3;
  v25 = v1;
  (*(v26 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v34 = *(v26 + 2);
    v33 = v26 + 16;
    v45 = *(v20 + 24);
    v46 = v34;
    v35 = v31 + ((v33[64] + 32) & ~v33[64]);
    v36 = v43;
    v37 = *(v33 + 7);
    v38 = v33 - 8;

    v39 = v42;
    do
    {
      (v46)(v36, v35, v25);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v39, v36);
      (*v38)(v36, v25);
      v35 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v44;
}

{
  v2 = v0;
  v45 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v38 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v44 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v43 = v1;
    outlined init with take of Any(&v43, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v43);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v42;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v20 + 24) = v2;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v39 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v38 = v13;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  AGGraphGetValue();

  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v24);

  *(StatusReg + 848) = v23;
  v25 = v38;
  outlined init with copy of ObservationTracking._AccessList?(v16, v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v25, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v25;
    goto LABEL_12;
  }

  v26 = v41;
  v38 = *(v4 + 32);
  (v38)(v41, v25, v3);
  (*(v4 + 16))(v40, v26, v3);
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v29 = v2[2];
  v28 = v2[3];
  if (v29 >= v28 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v2);
  }

  v2[2] = v29 + 1;
  (v38)(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v29, v40, v3);
  *(v20 + 24) = v2;
  (*(v4 + 8))(v41, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v30 = *(v20 + 24);
  v31 = *(v30 + 16);
  if (v31)
  {
    v34 = *(v4 + 16);
    v32 = v4 + 16;
    v33 = v34;
    v35 = v30 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v36 = *(v32 + 56);
    v41 = *(v20 + 24);

    do
    {
      v33(v6, v35, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v32 - 8))(v6, v3);
      v35 += v36;
      --v31;
    }

    while (v31);
  }

  *(v20 + 24) = v39;
}

{
  v3 = v0;
  v63 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v49 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v59 = type metadata accessor for ObservationCenter();
    v1 = v18[3];
    *&v57 = v1;
    outlined init with take of Any(&v57, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v57);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v21 + 24) = v3;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v52 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v5 + 56))(v17, 1, 1, v4);
  v51 = v5;
  v23 = v14;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v50 = *(StatusReg + 848);
  *(StatusReg + 848) = v17;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
  Value = AGGraphGetValue();
  v26 = *(Value + 16);
  v27 = *(Value + 24);
  v28 = *(Value + 32);
  v55 = v17;
  v29 = *(Value + 40);
  v30 = *(Value + 48);
  v57 = *Value;
  v58 = v26;
  v59 = v27;
  v60 = v28;
  v61 = v29;
  v62 = v30;

  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v57);
  v31 = v55;

  *(StatusReg + 848) = v50;
  v32 = v23;
  v33 = v51;
  outlined init with copy of ObservationTracking._AccessList?(v31, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v33 + 48))(v32, 1, v4) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v34 = v32;
    goto LABEL_12;
  }

  v17 = *(v33 + 32);
  v35 = v54;
  (v17)(v54, v32, v4);
  (*(v33 + 16))(v53, v35, v4);
  v3 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v3;
  v2 = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v38 = v3[2];
  v37 = v3[3];
  if (v38 >= v37 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1, v3);
  }

  v3[2] = v38 + 1;
  v39 = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v38;
  v33 = v2;
  (v17)(v39, v53, v4);
  *(v21 + 24) = v3;
  (*(v2 + 8))(v54, v4);
  v34 = v55;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v34, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v40 = *(v21 + 24);
  v41 = *(v40 + 16);
  if (v41)
  {
    v44 = *(v33 + 16);
    v42 = v33 + 16;
    v43 = v44;
    v45 = v40 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v46 = *(v42 + 56);
    v47 = (v42 - 8);
    v55 = *(v21 + 24);

    do
    {
      v43(v7, v45, v4);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v7);
      (*v47)(v7, v4);
      v45 += v46;
      --v41;
    }

    while (v41);
  }

  *(v21 + 24) = v52;
}

{
  v2 = v0;
  v73 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v54[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v54[-v10];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v66 + 1) = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v65 = v1;
    outlined init with take of Any(&v65, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v64);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v61;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v20 + 24) = v2;
    goto LABEL_9;
  }

  v56 = v6;
  v55 = CurrentAttribute;
  swift_beginAccess();
  v57 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  v1 = v16;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v59 = v3;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v1;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
  Value = AGGraphGetValue();
  v25 = *Value;
  v26 = Value[1];
  v27 = Value[3];
  v63[2] = Value[2];
  v63[3] = v27;
  v63[0] = v25;
  v63[1] = v26;
  v28 = Value[4];
  v29 = Value[5];
  v30 = Value[7];
  v63[6] = Value[6];
  v63[7] = v30;
  v63[4] = v28;
  v63[5] = v29;
  v31 = *Value;
  v32 = Value[1];
  v33 = Value[3];
  v67 = Value[2];
  v68 = v33;
  v65 = v31;
  v66 = v32;
  v34 = Value[4];
  v35 = Value[5];
  v36 = Value[7];
  v71 = Value[6];
  v72 = v36;
  v69 = v34;
  v70 = v35;
  outlined init with copy of TranslationKickModifier<Int>(v63, &v62);
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v65);
  outlined destroy of TranslationKickModifier<Int>(v63);
  *(StatusReg + 848) = v23;
  v37 = v59;
  outlined init with copy of ObservationTracking._AccessList?(v1, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v37) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v1, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v38 = v13;
    goto LABEL_12;
  }

  v39 = v58;
  v6 = *(v4 + 32);
  (v6)(v58, v13, v37);
  (*(v4 + 16))(v60, v39, v37);
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v42 = v2[2];
  v41 = v2[3];
  if (v42 >= v41 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1, v2);
  }

  v2[2] = v42 + 1;
  v43 = v59;
  (v6)(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v42, v60, v59);
  *(v20 + 24) = v2;
  (*(v4 + 8))(v58, v43);
  v38 = v1;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v44 = *(v20 + 24);
  v45 = *(v44 + 16);
  if (v45)
  {
    v47 = *(v4 + 16);
    v46 = v4 + 16;
    v60 = v47;
    v48 = v44 + ((*(v46 + 64) + 32) & ~*(v46 + 64));
    v49 = *(v46 + 56);
    v58 = v44;

    v50 = v55;
    v51 = v59;
    v52 = v56;
    do
    {
      (v60)(v52, v48, v51);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v50, v52);
      (*(v46 - 8))(v52, v51);
      v48 += v49;
      --v45;
    }

    while (v45);
  }

  *(v20 + 24) = v57;
}

{
  v77 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for ObservationTracking._AccessList();
  v2 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v48 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v16 = static ObservationCenter._current;
  swift_beginAccess();
  v17 = pthread_getspecific(v16[2]);
  if (!v17)
  {
    v18 = swift_slowAlloc();
    pthread_setspecific(v16[2], v18);
    *(&v62 + 1) = type metadata accessor for ObservationCenter();
    v0 = v1;
    *&v61 = v16[3];
    outlined init with take of Any(&v61, v18);

    v17 = v18;
  }

  outlined init with copy of Any(v17, &v60);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v19 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
    *(v19 + 24) = v1;
    goto LABEL_9;
  }

  v51 = v4;
  v50 = CurrentAttribute;
  swift_beginAccess();
  v53 = *(v19 + 24);
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  (*(v2 + 56))(v15, 1, 1, v1);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v52 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  v4 = v1;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
  Value = AGGraphGetValue();
  v23 = *(Value + 48);
  v25 = *Value;
  v24 = *(Value + 16);
  v58[2] = *(Value + 32);
  v58[3] = v23;
  v58[0] = v25;
  v58[1] = v24;
  v26 = *(Value + 112);
  v28 = *(Value + 64);
  v27 = *(Value + 80);
  v58[6] = *(Value + 96);
  v58[7] = v26;
  v58[4] = v28;
  v58[5] = v27;
  v29 = *(Value + 176);
  v31 = *(Value + 128);
  v30 = *(Value + 144);
  v58[10] = *(Value + 160);
  v58[11] = v29;
  v58[8] = v31;
  v58[9] = v30;
  v33 = *(Value + 208);
  v32 = *(Value + 224);
  v34 = *(Value + 192);
  v59 = *(Value + 240);
  v58[13] = v33;
  v58[14] = v32;
  v58[12] = v34;
  v73 = *(Value + 192);
  v74 = *(Value + 208);
  v75 = *(Value + 224);
  v76 = *(Value + 240);
  v69 = *(Value + 128);
  v70 = *(Value + 144);
  v71 = *(Value + 160);
  v72 = *(Value + 176);
  v65 = *(Value + 64);
  v66 = *(Value + 80);
  v67 = *(Value + 96);
  v68 = *(Value + 112);
  v61 = *Value;
  v62 = *(Value + 16);
  v63 = *(Value + 32);
  v64 = *(Value + 48);
  outlined init with copy of ScalePulseModifier<Int>(v58, &v57);
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v61);
  outlined destroy of ScalePulseModifier<Int>(v58);
  *(StatusReg + 848) = v52;
  outlined init with copy of ObservationTracking._AccessList?(v15, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v2 + 48))(v12, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v15 = v12;
    goto LABEL_12;
  }

  v0 = *(v2 + 32);
  v0(v9, v12, v1);
  (*(v2 + 16))(v55, v9, v1);
  v1 = *(v19 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 24) = v1;
  v49 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v37 = *(v1 + 2);
  v36 = *(v1 + 3);
  if (v37 >= v36 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v1);
  }

  *(v1 + 2) = v37 + 1;
  v0(v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v37, v55, v4);
  *(v19 + 24) = v1;
  v1 = v4;
  (*(v2 + 8))(v49, v4);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v19 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v41 = *(v2 + 16);
    v40 = v2 + 16;
    v54 = *(v19 + 24);
    v55 = v41;
    v42 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v43 = *(v40 + 56);
    v44 = (v40 - 8);

    v45 = v50;
    v46 = v51;
    do
    {
      (v55)(v46, v42, v1);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v45, v46);
      (*v44)(v46, v1);
      v42 += v43;
      --v39;
    }

    while (v39);
  }

  *(v19 + 24) = v53;
}

{
  v2 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v51[1] + 1) = type metadata accessor for ObservationCenter();
    v46 = v16;
    v1 = v3;
    *&v51[0] = v17[3];
    outlined init with take of Any(v51, v19);
    v16 = v46;

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v47;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v20 + 24) = v3;
    goto LABEL_9;
  }

  v42 = CurrentAttribute;
  swift_beginAccess();
  v44 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = v4;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  v1 = v3;
  Value = AGGraphGetValue();
  memcpy(v49, Value, 0x180uLL);
  memcpy(v51, Value, sizeof(v51));
  outlined init with copy of GlassTransitionStateModifier(v49, &v48);
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(v51);
  v25 = v1;
  outlined destroy of GlassTransitionStateModifier(v49);
  *(StatusReg + 848) = v23;
  v26 = v46;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v26 + 6))(v13, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v26 + 4);
  v2(v10, v13, v1);
  (*(v26 + 2))(v45, v10, v1);
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v29 = v3[2];
  v28 = v3[3];
  if (v29 >= v28 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v3);
  }

  v3[2] = v29 + 1;
  v30 = v3 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v29;
  v26 = v46;
  v2(v30, v45, v1);
  *(v20 + 24) = v3;
  v25 = v1;
  (*(v26 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v34 = *(v26 + 2);
    v33 = v26 + 16;
    v45 = *(v20 + 24);
    v46 = v34;
    v35 = v31 + ((v33[64] + 32) & ~v33[64]);
    v36 = v43;
    v37 = *(v33 + 7);
    v38 = v33 - 8;

    v39 = v42;
    do
    {
      (v46)(v36, v35, v25);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v39, v36);
      (*v38)(v36, v25);
      v35 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v44;
}

{
  v2 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *&v51[24] = type metadata accessor for ObservationCenter();
    v46 = v16;
    v1 = v3;
    *v51 = v17[3];
    outlined init with take of Any(v51, v19);
    v16 = v46;

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v47;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v20 + 24) = v3;
    goto LABEL_9;
  }

  v42 = CurrentAttribute;
  swift_beginAccess();
  v44 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = v4;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  v1 = v3;
  Value = AGGraphGetValue();
  memcpy(v49, Value, 0x154uLL);
  memcpy(v51, Value, sizeof(v51));
  outlined init with copy of GlassEffectShapeModifier(v49, &v48);
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(v51);
  v25 = v1;
  outlined destroy of GlassEffectShapeModifier(v49);
  *(StatusReg + 848) = v23;
  v26 = v46;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v26 + 6))(v13, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v26 + 4);
  v2(v10, v13, v1);
  (*(v26 + 2))(v45, v10, v1);
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v29 = v3[2];
  v28 = v3[3];
  if (v29 >= v28 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v3);
  }

  v3[2] = v29 + 1;
  v30 = v3 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v29;
  v26 = v46;
  v2(v30, v45, v1);
  *(v20 + 24) = v3;
  v25 = v1;
  (*(v26 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v34 = *(v26 + 2);
    v33 = v26 + 16;
    v45 = *(v20 + 24);
    v46 = v34;
    v35 = v31 + ((v33[64] + 32) & ~v33[64]);
    v36 = v43;
    v37 = *(v33 + 7);
    v38 = v33 - 8;

    v39 = v42;
    do
    {
      (v46)(v36, v35, v25);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v39, v36);
      (*v38)(v36, v25);
      v35 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v44;
}

{
  v1 = v0;
  v59 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v43 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v16 = static ObservationCenter._current;
  swift_beginAccess();
  v17 = pthread_getspecific(v16[2]);
  if (!v17)
  {
    v18 = swift_slowAlloc();
    pthread_setspecific(v16[2], v18);
    *(&v55 + 1) = type metadata accessor for ObservationCenter();
    *&v54 = v16[3];
    outlined init with take of Any(&v54, v18);

    v17 = v18;
  }

  outlined init with copy of Any(v17, v53);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v19 = v49;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v19 + 24) = v1;
    goto LABEL_9;
  }

  v45 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v19 + 24);
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v22 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
  Value = AGGraphGetValue();
  v51[0] = *Value;
  v25 = *(Value + 32);
  v24 = *(Value + 48);
  v26 = *(Value + 16);
  v52 = *(Value + 64);
  v51[2] = v25;
  v51[3] = v24;
  v51[1] = v26;
  v55 = *(Value + 16);
  v56 = *(Value + 32);
  v57 = *(Value + 48);
  v58 = *(Value + 64);
  v54 = *Value;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v51, &v50, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v54);
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v51, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
  *(StatusReg + 848) = v22;
  v27 = v2;
  v28 = v12;
  outlined init with copy of ObservationTracking._AccessList?(v15, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v15 = v12;
    goto LABEL_12;
  }

  v12 = *(v3 + 32);
  (v12)(v9, v28, v2);
  (*(v3 + 16))(v48, v9, v2);
  v1 = *(v19 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 24) = v1;
  v44 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v31 = v1[2];
  v30 = v1[3];
  if (v31 >= v30 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1, v1);
  }

  v1[2] = v31 + 1;
  v32 = v1 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v31;
  v3 = v44;
  v27 = v2;
  (v12)(v32, v48, v2);
  *(v19 + 24) = v1;
  (*(v3 + 8))(v9, v2);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v33 = *(v19 + 24);
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = v46;
    v37 = *(v3 + 16);
    v36 = v3 + 16;
    v48 = v37;
    v38 = v33 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v39 = *(v36 + 56);
    v40 = (v36 - 8);
    v44 = v33;

    v41 = v45;
    do
    {
      (v48)(v35, v38, v27);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v41, v35);
      (*v40)(v35, v27);
      v38 += v39;
      --v34;
    }

    while (v34);
  }

  *(v19 + 24) = v47;
}

{
  v1 = v0;
  v58 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v44[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44[-v8];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44[-v14];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v16 = static ObservationCenter._current;
  swift_beginAccess();
  v17 = pthread_getspecific(v16[2]);
  if (!v17)
  {
    v18 = swift_slowAlloc();
    pthread_setspecific(v16[2], v18);
    *(&v56 + 1) = type metadata accessor for ObservationCenter();
    *&v55 = v16[3];
    outlined init with take of Any(&v55, v18);

    v17 = v18;
  }

  outlined init with copy of Any(v17, v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v19 = v50;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v19 + 24) = v1;
    goto LABEL_9;
  }

  v45 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v19 + 24);
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  v49 = v3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v22 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  Value = AGGraphGetValue();
  v25 = Value[1];
  v24 = Value[2];
  v26 = *Value;
  *(v53 + 9) = *(Value + 41);
  v53[0] = v24;
  v52[0] = v26;
  v52[1] = v25;
  v55 = *Value;
  v56 = Value[1];
  v57[0] = Value[2];
  *(v57 + 9) = *(Value + 41);
  outlined init with copy of GlassEffectLocalModifier(v52, &v51);
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v55);
  outlined destroy of GlassEffectLocalModifier(v52);
  *(StatusReg + 848) = v22;
  v27 = v2;
  v28 = v49;
  v29 = v12;
  outlined init with copy of ObservationTracking._AccessList?(v15, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v28 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v15 = v12;
    goto LABEL_12;
  }

  v12 = *(v28 + 32);
  (v12)(v9, v29, v2);
  (*(v28 + 16))(v48, v9, v2);
  v1 = *(v19 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v32 = v1[2];
  v31 = v1[3];
  if (v32 >= v31 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, v1);
  }

  v1[2] = v32 + 1;
  v33 = v1 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v32;
  v28 = v49;
  v27 = v2;
  (v12)(v33, v48, v2);
  *(v19 + 24) = v1;
  (*(v28 + 8))(v9, v2);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v34 = *(v19 + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = v46;
    v38 = *(v28 + 16);
    v37 = v28 + 16;
    v48 = *(v19 + 24);
    v49 = v38;
    v39 = v34 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v40 = *(v37 + 56);
    v41 = (v37 - 8);

    v42 = v45;
    do
    {
      (v49)(v36, v39, v27);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v42, v36);
      (*v41)(v36, v27);
      v39 += v40;
      --v35;
    }

    while (v35);
  }

  *(v19 + 24) = v47;
}

{
  v2 = v0;
  v48 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v39 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v46 + 1) = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v45 = v1;
    outlined init with take of Any(&v45, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v45);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v44;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    *(v20 + 24) = v2;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v41 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  v25 = *(Value + 32);
  v26 = *(Value + 16);
  v45 = *Value;
  v46 = v26;
  v47 = v25;
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v45);
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v27 = v43;
  v40 = *(v4 + 32);
  v40(v43, v13, v3);
  (*(v4 + 16))(v42, v27, v3);
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v30 = *(v2 + 2);
  v29 = *(v2 + 3);
  if (v30 >= v29 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v2);
  }

  *(v2 + 2) = v30 + 1;
  v40(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30], v42, v3);
  *(v20 + 24) = v2;
  (*(v4 + 8))(v43, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v35 = *(v4 + 16);
    v34 = v4 + 16;
    v33 = v35;
    v36 = v31 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v37 = *(v34 + 56);
    v43 = *(v20 + 24);

    do
    {
      v33(v6, v36, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v34 - 8))(v6, v3);
      v36 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v41;
}

{
  v2 = v0;
  v56 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v45[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v45[-v10];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v55 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v54 = v1;
    outlined init with take of Any(&v54, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v53;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
    *(v20 + 24) = v13;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  v52 = v16;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v47 = *(StatusReg + 848);
  v48 = v13;
  *(StatusReg + 848) = v52;
  v23 = *v2;
  v24 = *(v2 + 1);
  v46 = *(v2 + 16);

  Value = AGGraphGetValue();
  v26 = *Value;
  v27 = *(Value + 16);

  v29 = v23;
  v30 = v48;
  specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v28, v27, 1, v26, v29, v24, v46);

  *(StatusReg + 848) = v47;
  v31 = v52;
  outlined init with copy of ObservationTracking._AccessList?(v52, v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v30, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v30;
    goto LABEL_12;
  }

  v16 = *(v4 + 32);
  v33 = v51;
  (v16)(v51, v30, v3);
  (*(v4 + 16))(v50, v33, v3);
  v13 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v36 = v13[2];
  v35 = v13[3];
  if (v36 >= v35 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v13);
  }

  v13[2] = v36 + 1;
  (v16)(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v36, v50, v3);
  *(v20 + 24) = v13;
  (*(v4 + 8))(v51, v3);
  v32 = v52;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v37 = *(v20 + 24);
  v38 = *(v37 + 16);
  if (v38)
  {
    v41 = *(v4 + 16);
    v39 = v4 + 16;
    v40 = v41;
    v42 = v37 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
    v43 = *(v39 + 56);
    v52 = *(v20 + 24);

    do
    {
      v40(v6, v42, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v39 - 8))(v6, v3);
      v42 += v43;
      --v38;
    }

    while (v38);
  }

  *(v20 + 24) = v49;
}

{
  v2 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v51[1] + 1) = type metadata accessor for ObservationCenter();
    v46 = v16;
    v1 = v3;
    *&v51[0] = v17[3];
    outlined init with take of Any(v51, v19);
    v16 = v46;

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v47;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v20 + 24) = v3;
    goto LABEL_9;
  }

  v42 = CurrentAttribute;
  swift_beginAccess();
  v44 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = v4;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  v1 = v3;
  Value = AGGraphGetValue();
  memcpy(v49, Value, 0x11CuLL);
  memcpy(v51, Value, 0x11CuLL);
  outlined init with copy of GlassEffectView(v49, &v48);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v51);
  v25 = v1;
  outlined destroy of GlassEffectView(v49);
  *(StatusReg + 848) = v23;
  v26 = v46;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v26 + 6))(v13, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v26 + 4);
  v2(v10, v13, v1);
  (*(v26 + 2))(v45, v10, v1);
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v29 = v3[2];
  v28 = v3[3];
  if (v29 >= v28 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v3);
  }

  v3[2] = v29 + 1;
  v30 = v3 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v29;
  v26 = v46;
  v2(v30, v45, v1);
  *(v20 + 24) = v3;
  v25 = v1;
  (*(v26 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v34 = *(v26 + 2);
    v33 = v26 + 16;
    v45 = *(v20 + 24);
    v46 = v34;
    v35 = v31 + ((v33[64] + 32) & ~v33[64]);
    v36 = v43;
    v37 = *(v33 + 7);
    v38 = v33 - 8;

    v39 = v42;
    do
    {
      (v46)(v36, v35, v25);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v39, v36);
      (*v38)(v36, v25);
      v35 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v44;
}

{
  v2 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *&v51[24] = type metadata accessor for ObservationCenter();
    v46 = v16;
    v1 = v3;
    *v51 = v17[3];
    outlined init with take of Any(v51, v19);
    v16 = v46;

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v47;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v20 + 24) = v3;
    goto LABEL_9;
  }

  v42 = CurrentAttribute;
  swift_beginAccess();
  v44 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = v4;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  v1 = v3;
  Value = AGGraphGetValue();
  memcpy(v49, Value, 0x2A8uLL);
  memcpy(v51, Value, sizeof(v51));
  outlined init with copy of GlassEntryView(v49, &v48);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v51);
  v25 = v1;
  outlined destroy of GlassEntryView(v49);
  *(StatusReg + 848) = v23;
  v26 = v46;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v26 + 6))(v13, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v26 + 4);
  v2(v10, v13, v1);
  (*(v26 + 2))(v45, v10, v1);
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v29 = v3[2];
  v28 = v3[3];
  if (v29 >= v28 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v3);
  }

  v3[2] = v29 + 1;
  v30 = v3 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v29;
  v26 = v46;
  v2(v30, v45, v1);
  *(v20 + 24) = v3;
  v25 = v1;
  (*(v26 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v34 = *(v26 + 2);
    v33 = v26 + 16;
    v45 = *(v20 + 24);
    v46 = v34;
    v35 = v31 + ((v33[64] + 32) & ~v33[64]);
    v36 = v43;
    v37 = *(v33 + 7);
    v38 = v33 - 8;

    v39 = v42;
    do
    {
      (v46)(v36, v35, v25);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v39, v36);
      (*v38)(v36, v25);
      v35 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v44;
}

{
  v2 = v0;
  v46 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v39 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v45 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v44 = v1;
    outlined init with take of Any(&v44, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v44);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v43;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v20 + 24) = v2;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v40 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v39 = v13;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  v24 = *AGGraphGetValue();

  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v25, v24);

  *(StatusReg + 848) = v23;
  v26 = v39;
  outlined init with copy of ObservationTracking._AccessList?(v16, v39, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v26, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v26;
    goto LABEL_12;
  }

  v27 = v42;
  v39 = *(v4 + 32);
  (v39)(v42, v26, v3);
  (*(v4 + 16))(v41, v27, v3);
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v30 = v2[2];
  v29 = v2[3];
  if (v30 >= v29 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v2);
  }

  v2[2] = v30 + 1;
  (v39)(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30, v41, v3);
  *(v20 + 24) = v2;
  (*(v4 + 8))(v42, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v35 = *(v4 + 16);
    v33 = v4 + 16;
    v34 = v35;
    v36 = v31 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    v37 = *(v33 + 56);
    v42 = *(v20 + 24);

    do
    {
      v34(v6, v36, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v33 - 8))(v6, v3);
      v36 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v40;
}

{
  v2 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *&v51[24] = type metadata accessor for ObservationCenter();
    v46 = v16;
    v1 = v3;
    *v51 = v17[3];
    outlined init with take of Any(v51, v19);
    v16 = v46;

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v47;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v20 + 24) = v3;
    goto LABEL_9;
  }

  v42 = CurrentAttribute;
  swift_beginAccess();
  v44 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = v4;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  v1 = v3;
  Value = AGGraphGetValue();
  memcpy(v49, Value, 0x408uLL);
  memcpy(v51, Value, sizeof(v51));
  outlined init with copy of GlassItemView(v49, &v48);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v51);
  v25 = v1;
  outlined destroy of GlassItemView(v49);
  *(StatusReg + 848) = v23;
  v26 = v46;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v26 + 6))(v13, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v26 + 4);
  v2(v10, v13, v1);
  (*(v26 + 2))(v45, v10, v1);
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v29 = v3[2];
  v28 = v3[3];
  if (v29 >= v28 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v3);
  }

  v3[2] = v29 + 1;
  v30 = v3 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v29;
  v26 = v46;
  v2(v30, v45, v1);
  *(v20 + 24) = v3;
  v25 = v1;
  (*(v26 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v34 = *(v26 + 2);
    v33 = v26 + 16;
    v45 = *(v20 + 24);
    v46 = v34;
    v35 = v31 + ((v33[64] + 32) & ~v33[64]);
    v36 = v43;
    v37 = *(v33 + 7);
    v38 = v33 - 8;

    v39 = v42;
    do
    {
      (v46)(v36, v35, v25);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v39, v36);
      (*v38)(v36, v25);
      v35 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v44;
}

{
  v2 = v0;
  v43 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v36 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v42 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v41 = v1;
    outlined init with take of Any(&v41, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v41);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v40;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    *(v20 + 24) = v2;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v37 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for SingleTapGesture<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for SingleTapGesture);
  AGGraphGetValue();
  specialized closure #1 in GestureBodyAccessor.updateBody(of:changed:)();
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v24 = v39;
  v36 = *(v4 + 32);
  v36(v39, v13, v3);
  (*(v4 + 16))(v38, v24, v3);
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v27 = *(v2 + 2);
  v26 = *(v2 + 3);
  if (v27 >= v26 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1, v2);
  }

  *(v2 + 2) = v27 + 1;
  v36(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27], v38, v3);
  *(v20 + 24) = v2;
  (*(v4 + 8))(v39, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v28 = *(v20 + 24);
  v29 = *(v28 + 16);
  if (v29)
  {
    v32 = *(v4 + 16);
    v31 = v4 + 16;
    v30 = v32;
    v33 = v28 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v34 = *(v31 + 56);
    v39 = *(v20 + 24);

    do
    {
      v30(v6, v33, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v31 - 8))(v6, v3);
      v33 += v34;
      --v29;
    }

    while (v29);
  }

  *(v20 + 24) = v37;
}

{
  v2 = v0;
  v46 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v39 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v45 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v44 = v1;
    outlined init with take of Any(&v44, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v44);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v43;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v37 = *(v2 + 2);

    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37 + 1, 1, v2);
    *(v20 + 24) = v38;

    v2 = v38;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v40 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(*Value);
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v25 = v42;
  v39 = *(v4 + 32);
  v39(v42, v13, v3);
  (*(v4 + 16))(v41, v25, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v39(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28], v41, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v42, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v29 = *(v20 + 24);
  v30 = *(v29 + 16);
  if (v30)
  {
    v33 = *(v4 + 16);
    v32 = v4 + 16;
    v31 = v33;
    v34 = v29 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v35 = *(v32 + 56);
    v42 = *(v20 + 24);

    do
    {
      v31(v6, v34, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v32 - 8))(v6, v3);
      v34 += v35;
      --v30;
    }

    while (v30);
  }

  *(v20 + 24) = v40;
}

{
  v2 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v46 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v48 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v53 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v52 = v1;
    outlined init with take of Any(&v52, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v52);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v51;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v43 = v2[2];

    v44 = v43 + 1;
    v31 = v46;
    v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 1, v2);
    *(v20 + 24) = v45;

    v2 = v45;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  v46 = v11;
  swift_beginAccess();
  v47 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v50 = v16;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v50;
  Value = AGGraphGetValue();
  v25 = *Value;
  v26 = *(Value + 8);
  v27 = *(Value + 9);
  outlined copy of Environment<ButtonSizing>.Content(*Value, v26);
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(v25, v26 | (v27 << 8));
  outlined consume of Environment<ButtonSizing>.Content(v25, v26);
  *(StatusReg + 848) = v23;
  v28 = v50;
  v29 = v48;
  outlined init with copy of ObservationTracking._AccessList?(v50, v48, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v29, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v28, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v29;
    goto LABEL_12;
  }

  v31 = v46;
  v48 = *(v4 + 32);
  (v48)(v46, v29, v3);
  (*(v4 + 16))(v49, v31, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v34 = v2[2];
  v33 = v2[3];
  if (v34 >= v33 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v2);
  }

  v2[2] = v34 + 1;
  (v48)(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v34, v49, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v31, v3);
  v30 = v50;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v35 = *(v20 + 24);
  v36 = *(v35 + 16);
  if (v36)
  {
    v39 = *(v4 + 16);
    v37 = v4 + 16;
    v38 = v39;
    v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v41 = *(v37 + 56);
    v50 = *(v20 + 24);

    do
    {
      v38(v6, v40, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v37 - 8))(v6, v3);
      v40 += v41;
      --v36;
    }

    while (v36);
  }

  *(v20 + 24) = v47;
}

{
  v2 = v0;
  v66 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v49[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v61 + 1) = type metadata accessor for ObservationCenter();
    v54 = v13;
    v1 = v3;
    *&v60 = v17[3];
    outlined init with take of Any(&v60, v19);
    v13 = v54;

    v18 = v19;
  }

  outlined init with copy of Any(v18, v59);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v47 = v3[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v3);
    *(v20 + 24) = v48;

    v3 = v48;
    goto LABEL_9;
  }

  v50 = CurrentAttribute;
  swift_beginAccess();
  v52 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  v54 = v4;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  v25 = *(Value + 16);
  v57[0] = *Value;
  v57[1] = v25;
  v26 = *(Value + 32);
  v27 = *(Value + 48);
  v28 = *(Value + 64);
  v58 = *(Value + 80);
  v57[3] = v27;
  v57[4] = v28;
  v57[2] = v26;
  v29 = *(Value + 16);
  v60 = *Value;
  v61 = v29;
  v30 = *(Value + 32);
  v31 = *(Value + 48);
  v32 = *(Value + 64);
  v65 = *(Value + 80);
  v63 = v31;
  v64 = v32;
  v62 = v30;
  outlined init with copy of SafeAreaPaddingModifier(v57, &v56);
  v1 = v3;
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v60);
  outlined destroy of SafeAreaPaddingModifier(v57);
  *(StatusReg + 848) = v23;
  v33 = v54;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v33 + 6))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v33 + 4);
  v2(v10, v13, v3);
  (*(v33 + 2))(v53, v10, v3);
  swift_beginAccess();
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v36 = v3[2];
  v35 = v3[3];
  if (v36 >= v35 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v3);
  }

  v3[2] = v36 + 1;
  v37 = v3 + ((v54[80] + 32) & ~v54[80]) + *(v54 + 9) * v36;
  v33 = v54;
  v2(v37, v53, v1);
  *(v20 + 24) = v3;
  v3 = v1;
  swift_endAccess();
  (*(v33 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v20 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v41 = *(v33 + 2);
    v40 = v33 + 16;
    v53 = *(v20 + 24);
    v54 = v41;
    v42 = v38 + ((v40[64] + 32) & ~v40[64]);
    v43 = *(v40 + 7);
    v44 = v51;

    v45 = v50;
    do
    {
      (v54)(v44, v42, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v45, v44);
      (*(v40 - 1))(v44, v3);
      v42 += v43;
      --v39;
    }

    while (v39);
  }

  *(v20 + 24) = v52;
}

{
  v4 = v0;
  v59 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v50 - v12;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v50 - v16);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v58 = type metadata accessor for ObservationCenter();
    v2 = v18[3];
    *&v57 = v2;
    outlined init with take of Any(&v57, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v57);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v48 = v17[2];

    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48 + 1, 1, v17);
    *(v21 + 24) = v49;

    v17 = v49;
    goto LABEL_9;
  }

  v2 = CurrentAttribute;
  swift_beginAccess();
  v50 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v6 + 56))(v17, 1, 1, v5);
  v51 = v6;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v55 = v17;
  v24 = *(StatusReg + 848);
  *(StatusReg + 848) = v55;
  v25 = *v4;
  v26 = *(v4 + 1);
  v27 = *(v4 + 16);

  Value = AGGraphGetValue();
  v29 = *(Value + 8);
  v30 = *(Value + 16);

  specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v31, 1, v29, v30, v25, v26, v27);

  *(StatusReg + 848) = v24;
  v32 = v55;
  v1 = v51;
  v33 = v52;
  outlined init with copy of ObservationTracking._AccessList?(v55, v52, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v1 + 48))(v33, 1, v5) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v34 = v33;
    goto LABEL_12;
  }

  v3 = *(v1 + 32);
  v35 = v54;
  v3(v54, v33, v5);
  (*(v1 + 16))(v53, v35, v5);
  swift_beginAccess();
  v17 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v38 = v17[2];
  v37 = v17[3];
  if (v38 >= v37 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1, v17);
  }

  v17[2] = v38 + 1;
  v3(v17 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v38, v53, v5);
  *(v21 + 24) = v17;
  swift_endAccess();
  (*(v1 + 8))(v54, v5);
  v34 = v55;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v34, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v39 = *(v21 + 24);
  v40 = *(v39 + 16);
  if (v40)
  {
    v43 = *(v1 + 16);
    v41 = v1 + 16;
    v42 = v43;
    v44 = v39 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v45 = *(v41 + 56);
    v46 = (v41 - 8);
    v55 = *(v21 + 24);

    do
    {
      v42(v8, v44, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v2, v8);
      (*v46)(v8, v5);
      v44 += v45;
      --v40;
    }

    while (v40);
  }

  *(v21 + 24) = v50;
}

{
  v3 = v0;
  v55 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v46 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v46 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v54 = type metadata accessor for ObservationCenter();
    v1 = v18[3];
    *&v53 = v1;
    outlined init with take of Any(&v53, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v53);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v52;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v44 = v14[2];

    v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 + 1, 1, v14);
    *(v21 + 24) = v45;

    v14 = v45;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v48 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v5 + 56))(v17, 1, 1, v4);
  v47 = v14;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = *(StatusReg + 848);
  *(StatusReg + 848) = v17;
  v24 = *v3;
  v51 = v17;
  v25 = *(v3 + 1);
  v26 = *(v3 + 16);

  v27 = *(AGGraphGetValue() + 8);

  specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v28, 1, v27, v24, v25, v26);
  v29 = v51;

  *(StatusReg + 848) = v46;
  v30 = v47;
  outlined init with copy of ObservationTracking._AccessList?(v29, v47, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v5 + 48))(v30, 1, v4) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v31 = v30;
    goto LABEL_12;
  }

  v2 = *(v5 + 32);
  v32 = v50;
  v2(v50, v30, v4);
  (*(v5 + 16))(v49, v32, v4);
  swift_beginAccess();
  v14 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v35 = v14[2];
  v34 = v14[3];
  if (v35 >= v34 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1, v14);
  }

  v14[2] = v35 + 1;
  v2(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v35, v49, v4);
  *(v21 + 24) = v14;
  swift_endAccess();
  (*(v5 + 8))(v50, v4);
  v31 = v51;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v36 = *(v21 + 24);
  v37 = *(v36 + 16);
  if (v37)
  {
    v40 = *(v5 + 16);
    v38 = v5 + 16;
    v39 = v40;
    v41 = v36 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v42 = *(v38 + 56);
    v51 = *(v21 + 24);

    do
    {
      v39(v7, v41, v4);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v7);
      (*(v38 - 8))(v7, v4);
      v41 += v42;
      --v37;
    }

    while (v37);
  }

  *(v21 + 24) = v48;
}

{
  v3 = v0;
  v55 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v45 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v54 = type metadata accessor for ObservationCenter();
    v1 = v18[3];
    *&v53 = v1;
    outlined init with take of Any(&v53, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v53);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v52;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v43 = v14[2];

    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43 + 1, 1, v14);
    *(v21 + 24) = v44;

    v14 = v44;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v48 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v5 + 56))(v17, 1, 1, v4);
  v47 = v14;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = *(StatusReg + 848);
  *(StatusReg + 848) = v17;
  v24 = *v3;
  v51 = v17;
  v25 = *(v3 + 1);
  v26 = *(v3 + 16);

  AGGraphGetValue();

  specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v27, 1, v24, v25, v26);
  v28 = v51;

  *(StatusReg + 848) = v46;
  v29 = v47;
  outlined init with copy of ObservationTracking._AccessList?(v28, v47, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v5 + 48))(v29, 1, v4) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v28, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v29;
    goto LABEL_12;
  }

  v2 = *(v5 + 32);
  v31 = v50;
  v2(v50, v29, v4);
  (*(v5 + 16))(v49, v31, v4);
  swift_beginAccess();
  v14 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v34 = v14[2];
  v33 = v14[3];
  if (v34 >= v33 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v14);
  }

  v14[2] = v34 + 1;
  v2(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v34, v49, v4);
  *(v21 + 24) = v14;
  swift_endAccess();
  (*(v5 + 8))(v50, v4);
  v30 = v51;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v35 = *(v21 + 24);
  v36 = *(v35 + 16);
  if (v36)
  {
    v39 = *(v5 + 16);
    v37 = v5 + 16;
    v38 = v39;
    v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v41 = *(v37 + 56);
    v51 = *(v21 + 24);

    do
    {
      v38(v7, v40, v4);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v7);
      (*(v37 - 8))(v7, v4);
      v40 += v41;
      --v36;
    }

    while (v36);
  }

  *(v21 + 24) = v48;
}

{
  v3 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v45 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v53 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v52 = v1;
    outlined init with take of Any(&v52, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v52);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v51;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v43 = *(v3 + 2);

    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43 + 1, 1, v3);
    *(v20 + 24) = v44;

    v3 = v44;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v46 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v5 + 56))(v16, 1, 1, v4);
  v50 = v16;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v45 = *(StatusReg + 848);
  *(StatusReg + 848) = v50;
  Value = AGGraphGetValue();
  v24 = *Value;
  v25 = Value[1];
  v26 = Value[2];
  v27 = Value[3];

  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v24, v25, v26, v27);

  *(StatusReg + 848) = v45;
  v28 = v50;
  v29 = v47;
  outlined init with copy of ObservationTracking._AccessList?(v50, v47, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v5 + 48))(v29, 1, v4) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v28, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v29;
    goto LABEL_12;
  }

  v2 = *(v5 + 32);
  v31 = v49;
  v2(v49, v29, v4);
  (*(v5 + 16))(v48, v31, v4);
  swift_beginAccess();
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v34 = *(v3 + 2);
  v33 = *(v3 + 3);
  if (v34 >= v33 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v3);
  }

  *(v3 + 2) = v34 + 1;
  v2(&v3[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v34], v48, v4);
  *(v20 + 24) = v3;
  swift_endAccess();
  (*(v5 + 8))(v49, v4);
  v30 = v50;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v35 = *(v20 + 24);
  v36 = *(v35 + 16);
  if (v36)
  {
    v39 = *(v5 + 16);
    v38 = v5 + 16;
    v37 = v39;
    v40 = v35 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v41 = *(v38 + 56);
    v50 = *(v20 + 24);

    do
    {
      v37(v7, v40, v4);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v7);
      (*(v38 - 8))(v7, v4);
      v40 += v41;
      --v36;
    }

    while (v36);
  }

  *(v20 + 24) = v46;
}

{
  v2 = v0;
  v69 = *MEMORY[0x1E69E9840];
  v51 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v51 - 1);
  MEMORY[0x1EEE9AC00](v51);
  v5 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v45[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45[-v14];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v16 = static ObservationCenter._current;
  swift_beginAccess();
  v17 = pthread_getspecific(v16[2]);
  if (!v17)
  {
    v18 = swift_slowAlloc();
    pthread_setspecific(v16[2], v18);
    *(&v55 + 1) = type metadata accessor for ObservationCenter();
    *&v54 = v16[3];
    outlined init with take of Any(&v54, v18);

    v17 = v18;
  }

  outlined init with copy of Any(v17, &v53);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v19 = v52;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v42 = v2[2];

    v43 = v42 + 1;
    v26 = v48;
    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 1, v2);
    *(v19 + 24) = v44;

    v2 = v44;
    goto LABEL_9;
  }

  v46 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v19 + 24);
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  v21 = v51;
  (*(v3 + 56))(v15, 1, 1, v51);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v48 = v3;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  Value = AGGraphGetValue();
  v65 = Value[11];
  v66 = Value[12];
  v67 = Value[13];
  v68 = Value[14];
  v61 = Value[7];
  v62 = Value[8];
  v63 = Value[9];
  v64 = Value[10];
  v57 = Value[3];
  v58 = Value[4];
  v59 = Value[5];
  v60 = Value[6];
  v54 = *Value;
  v55 = Value[1];
  v56 = Value[2];
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v54);
  *(StatusReg + 848) = v23;
  v25 = v21;
  v26 = v48;
  outlined init with copy of ObservationTracking._AccessList?(v15, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v26 + 48))(v12, 1, v21) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v27 = v12;
    goto LABEL_12;
  }

  v1 = *(v26 + 32);
  v28 = v50;
  v1(v50, v12, v25);
  (*(v26 + 16))(v49, v28, v25);
  swift_beginAccess();
  v2 = *(v19 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v31 = v2[2];
  v30 = v2[3];
  if (v31 >= v30 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1, v2);
  }

  v2[2] = v31 + 1;
  v32 = v2 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v31;
  v25 = v51;
  v1(v32, v49, v51);
  *(v19 + 24) = v2;
  swift_endAccess();
  (*(v26 + 8))(v50, v25);
  v27 = v15;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v27, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v33 = *(v19 + 24);
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = *(v26 + 16);
    v50 = *(v19 + 24);
    v51 = v35;
    v36 = v26 + 16;
    v37 = v33 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v38 = v5;
    v39 = *(v36 + 56);

    v40 = v46;
    do
    {
      (v51)(v38, v37, v25);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v40, v38);
      (*(v36 - 8))(v38, v25);
      v37 += v39;
      --v34;
    }

    while (v34);
  }

  *(v19 + 24) = v47;
}

{
  v2 = v0;
  v49 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v41 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v47 + 1) = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v46 = v1;
    outlined init with take of Any(&v46, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v46);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v45;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v39 = *(v2 + 2);

    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39 + 1, 1, v2);
    *(v20 + 24) = v40;

    v2 = v40;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v42 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  v25 = *(Value + 32);
  v26 = *(Value + 16);
  v46 = *Value;
  v47 = v26;
  v48 = v25;
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v46);
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v27 = v44;
  v41 = *(v4 + 32);
  v41(v44, v13, v3);
  (*(v4 + 16))(v43, v27, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v30 = *(v2 + 2);
  v29 = *(v2 + 3);
  if (v30 >= v29 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v2);
  }

  *(v2 + 2) = v30 + 1;
  v41(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30], v43, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v44, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v35 = *(v4 + 16);
    v34 = v4 + 16;
    v33 = v35;
    v36 = v31 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v37 = *(v34 + 56);
    v44 = *(v20 + 24);

    do
    {
      v33(v6, v36, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v34 - 8))(v6, v3);
      v36 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v42;
}

{
  v2 = v0;
  v51 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v42 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v48 + 1) = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v47 = v1;
    outlined init with take of Any(&v47, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v47);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v46;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v40 = *(v2 + 2);

    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 + 1, 1, v2);
    *(v20 + 24) = v41;

    v2 = v41;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v43 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  v25 = *(Value + 32);
  v26 = *(Value + 40);
  v27 = *(Value + 16);
  v47 = *Value;
  v48 = v27;
  v49 = v25;
  v50 = v26;
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v47);
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v28 = v45;
  v42 = *(v4 + 32);
  v42(v45, v13, v3);
  (*(v4 + 16))(v44, v28, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v42(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v31], v44, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v45, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v32 = *(v20 + 24);
  v33 = *(v32 + 16);
  if (v33)
  {
    v36 = *(v4 + 16);
    v35 = v4 + 16;
    v34 = v36;
    v37 = v32 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v38 = *(v35 + 56);
    v45 = *(v20 + 24);

    do
    {
      v34(v6, v37, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v35 - 8))(v6, v3);
      v37 += v38;
      --v33;
    }

    while (v33);
  }

  *(v20 + 24) = v43;
}

{
  v2 = v0;
  v45 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v38 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v44 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v43 = v1;
    outlined init with take of Any(&v43, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v43);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v42;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v36 = *(v2 + 2);

    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36 + 1, 1, v2);
    *(v20 + 24) = v37;

    v2 = v37;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v39 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  AGGraphGetValue();
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)();
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v24 = v41;
  v38 = *(v4 + 32);
  v38(v41, v13, v3);
  (*(v4 + 16))(v40, v24, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v27 = *(v2 + 2);
  v26 = *(v2 + 3);
  if (v27 >= v26 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1, v2);
  }

  *(v2 + 2) = v27 + 1;
  v38(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27], v40, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v41, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v28 = *(v20 + 24);
  v29 = *(v28 + 16);
  if (v29)
  {
    v32 = *(v4 + 16);
    v31 = v4 + 16;
    v30 = v32;
    v33 = v28 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v34 = *(v31 + 56);
    v41 = *(v20 + 24);

    do
    {
      v30(v6, v33, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v31 - 8))(v6, v3);
      v33 += v34;
      --v29;
    }

    while (v29);
  }

  *(v20 + 24) = v39;
}

{
  v2 = v0;
  v56 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v47 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v50 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v55 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v54 = v1;
    outlined init with take of Any(&v54, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v53;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v44 = v2[2];

    v45 = v44 + 1;
    v32 = v48;
    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45, 1, v2);
    *(v20 + 24) = v46;

    v2 = v46;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  v48 = v11;
  swift_beginAccess();
  v49 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v52 = v16;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v52;
  Value = AGGraphGetValue();
  v25 = *Value;
  v26 = *(Value + 2);
  v27 = *(Value + 1);
  v28 = v26;
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v25, v27, v28);

  *(StatusReg + 848) = v23;
  v29 = v52;
  v30 = v50;
  outlined init with copy of ObservationTracking._AccessList?(v52, v50, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v30, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v31 = v30;
    goto LABEL_12;
  }

  v32 = v48;
  v50 = *(v4 + 32);
  (v50)(v48, v30, v3);
  (*(v4 + 16))(v51, v32, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v35 = v2[2];
  v34 = v2[3];
  if (v35 >= v34 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1, v2);
  }

  v2[2] = v35 + 1;
  (v50)(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v35, v51, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v32, v3);
  v31 = v52;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v36 = *(v20 + 24);
  v37 = *(v36 + 16);
  if (v37)
  {
    v40 = *(v4 + 16);
    v38 = v4 + 16;
    v39 = v40;
    v41 = v36 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v42 = *(v38 + 56);
    v52 = *(v20 + 24);

    do
    {
      v39(v6, v41, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v38 - 8))(v6, v3);
      v41 += v42;
      --v37;
    }

    while (v37);
  }

  *(v20 + 24) = v49;
}

{
  v3 = v0;
  v58 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v47 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v47 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v57 = type metadata accessor for ObservationCenter();
    v1 = v18[3];
    *&v56 = v1;
    outlined init with take of Any(&v56, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v56);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v45 = v3[2];

    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45 + 1, 1, v3);
    *(v21 + 24) = v46;

    v3 = v46;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v50 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v5 + 56))(v17, 1, 1, v4);
  v49 = v14;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v48 = *(StatusReg + 848);
  *(StatusReg + 848) = v17;
  Value = AGGraphGetValue();
  v51 = v5;
  v26 = *Value;
  v25 = *(Value + 8);
  v54 = v17;
  v27 = *(Value + 16);
  v28 = *(Value + 24);
  outlined copy of Text.Storage(v26, v25, v27);

  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v26, v25, v27, v28);
  v29 = v26;
  v2 = v51;
  v30 = v54;
  outlined consume of Text.Storage(v29, v25, v27);

  v31 = v49;
  *(StatusReg + 848) = v48;
  outlined init with copy of ObservationTracking._AccessList?(v30, v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v2 + 48))(v31, 1, v4) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v31;
    goto LABEL_12;
  }

  v17 = *(v2 + 32);
  v33 = v53;
  (v17)(v53, v31, v4);
  (*(v2 + 16))(v52, v33, v4);
  swift_beginAccess();
  v3 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v36 = v3[2];
  v35 = v3[3];
  if (v36 >= v35 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v3);
  }

  v3[2] = v36 + 1;
  (v17)(v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v36, v52, v4);
  *(v21 + 24) = v3;
  swift_endAccess();
  (*(v2 + 8))(v53, v4);
  v32 = v54;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v37 = *(v21 + 24);
  v38 = *(v37 + 16);
  if (v38)
  {
    v41 = *(v2 + 16);
    v40 = v2 + 16;
    v39 = v41;
    v42 = v37 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v43 = *(v40 + 56);
    v54 = *(v21 + 24);

    do
    {
      v39(v7, v42, v4);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v7);
      (*(v40 - 8))(v7, v4);
      v42 += v43;
      --v38;
    }

    while (v38);
  }

  *(v21 + 24) = v50;
}

{
  v2 = v0;
  v51 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v42[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v50[1] + 1) = type metadata accessor for ObservationCenter();
    v47 = v13;
    v1 = v3;
    *&v50[0] = v17[3];
    outlined init with take of Any(v50, v19);
    v13 = v47;

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v49);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v48;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v40 = v3[2];

    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 + 1, 1, v3);
    *(v20 + 24) = v41;

    v3 = v41;
    goto LABEL_9;
  }

  v43 = CurrentAttribute;
  swift_beginAccess();
  v45 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  v47 = v4;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  memcpy(v50, Value, sizeof(v50));
  v1 = v3;
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v50);
  *(StatusReg + 848) = v23;
  v25 = v47;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v25 + 6))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v25 + 4);
  v2(v10, v13, v3);
  (*(v25 + 2))(v46, v10, v3);
  swift_beginAccess();
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v28 = v3[2];
  v27 = v3[3];
  if (v28 >= v27 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1, v3);
  }

  v3[2] = v28 + 1;
  v29 = v3 + ((v47[80] + 32) & ~v47[80]) + *(v47 + 9) * v28;
  v25 = v47;
  v2(v29, v46, v1);
  *(v20 + 24) = v3;
  v3 = v1;
  swift_endAccess();
  (*(v25 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v30 = *(v20 + 24);
  v31 = *(v30 + 16);
  if (v31)
  {
    v33 = *(v25 + 2);
    v32 = v25 + 16;
    v46 = *(v20 + 24);
    v47 = v33;
    v34 = v30 + ((v32[64] + 32) & ~v32[64]);
    v35 = v44;
    v36 = *(v32 + 7);
    v37 = v32 - 8;

    v38 = v43;
    do
    {
      (v47)(v35, v34, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v38, v35);
      (*v37)(v35, v3);
      v34 += v36;
      --v31;
    }

    while (v31);
  }

  *(v20 + 24) = v45;
}

{
  v2 = v0;
  v46 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v39 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v45 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v44 = v1;
    outlined init with take of Any(&v44, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v44);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v43;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v37 = *(v2 + 2);

    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37 + 1, 1, v2);
    *(v20 + 24) = v38;

    v2 = v38;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v40 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(*(Value + 16), *Value, *(Value + 8), *(Value + 24));
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v25 = v42;
  v39 = *(v4 + 32);
  v39(v42, v13, v3);
  (*(v4 + 16))(v41, v25, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v39(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28], v41, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v42, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v29 = *(v20 + 24);
  v30 = *(v29 + 16);
  if (v30)
  {
    v33 = *(v4 + 16);
    v32 = v4 + 16;
    v31 = v33;
    v34 = v29 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v35 = *(v32 + 56);
    v42 = *(v20 + 24);

    do
    {
      v31(v6, v34, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v32 - 8))(v6, v3);
      v34 += v35;
      --v30;
    }

    while (v30);
  }

  *(v20 + 24) = v40;
}

{
  v2 = v0;
  v63 = *MEMORY[0x1E69E9840];
  v54 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v54 - 1);
  MEMORY[0x1EEE9AC00](v54);
  v5 = &v48[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v48[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v48[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48[-v14];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v16 = static ObservationCenter._current;
  swift_beginAccess();
  v17 = pthread_getspecific(v16[2]);
  if (!v17)
  {
    v18 = swift_slowAlloc();
    pthread_setspecific(v16[2], v18);
    *(&v61 + 1) = type metadata accessor for ObservationCenter();
    *&v60 = v16[3];
    outlined init with take of Any(&v60, v18);

    v17 = v18;
  }

  outlined init with copy of Any(v17, v59);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v19 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v45 = v2[2];

    v46 = v45 + 1;
    v29 = v51;
    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46, 1, v2);
    *(v19 + 24) = v47;

    v2 = v47;
    goto LABEL_9;
  }

  v49 = CurrentAttribute;
  swift_beginAccess();
  v50 = *(v19 + 24);
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  v21 = v54;
  (*(v3 + 56))(v15, 1, 1, v54);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v51 = v3;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  Value = AGGraphGetValue();
  v26 = Value[1];
  v25 = Value[2];
  v27 = *Value;
  *(v58 + 10) = *(Value + 42);
  v58[0] = v25;
  v57[0] = v27;
  v57[1] = v26;
  v60 = *Value;
  v61 = Value[1];
  v62[0] = Value[2];
  *(v62 + 10) = *(Value + 42);
  outlined init with copy of MeshGradient(v57, &v56);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v60);
  outlined destroy of MeshGradient(v57);
  *(StatusReg + 848) = v23;
  v28 = v21;
  v29 = v51;
  outlined init with copy of ObservationTracking._AccessList?(v15, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v29 + 48))(v12, 1, v21) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v12;
    goto LABEL_12;
  }

  v1 = *(v29 + 32);
  v31 = v53;
  v1(v53, v12, v28);
  (*(v29 + 16))(v52, v31, v28);
  swift_beginAccess();
  v2 = *(v19 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v34 = v2[2];
  v33 = v2[3];
  if (v34 >= v33 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v2);
  }

  v2[2] = v34 + 1;
  v35 = v2 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v34;
  v28 = v54;
  v1(v35, v52, v54);
  *(v19 + 24) = v2;
  swift_endAccess();
  (*(v29 + 8))(v53, v28);
  v30 = v15;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v36 = *(v19 + 24);
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = *(v29 + 16);
    v53 = *(v19 + 24);
    v54 = v38;
    v39 = v29 + 16;
    v40 = v36 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v41 = v5;
    v42 = *(v39 + 56);

    v43 = v49;
    do
    {
      (v54)(v41, v40, v28);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v43, v41);
      (*(v39 - 8))(v41, v28);
      v40 += v42;
      --v37;
    }

    while (v37);
  }

  *(v19 + 24) = v50;
}