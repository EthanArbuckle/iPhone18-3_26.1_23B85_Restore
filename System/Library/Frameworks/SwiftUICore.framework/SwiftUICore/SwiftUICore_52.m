void *Text.Measurements.cache.getter()
{
  if (*v0)
  {
    v1 = *v0;
  }

  else
  {
    static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    v2 = MEMORY[0x1E69E7CC0];
    os_log(_:dso:log:_:_:)();
    type metadata accessor for TextSizeCache();
    v1 = swift_allocObject();
    v1[2] = 0;
    type metadata accessor for PropertyList.Tracker();
    v3 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>();
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    v5 = MEMORY[0x1E69E7CC8];
    *(v4 + 24) = 0;
    *(v4 + 32) = v5;
    *(v4 + 40) = v5;
    *(v4 + 48) = v2;
    *(v4 + 56) = 0;
    *(v3 + 16) = v4;
    v1[3] = v3;
    v1[4] = v2;
    type metadata accessor for SuffixCache();
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v1[5] = v6;
  }

  return v1;
}

uint64_t SuffixCache.setContextUsed(_:)(char *a1)
{
  v2 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 24);
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);

  if (!v4)
  {
  }

  v5 = 0;
  for (i = 128; ; i += 104)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    v7 = *(v3 + i - 88);
    v8 = *(v3 + i - 80);
    v9 = *(v3 + i - 72);
    v10 = *(v3 + i - 64);
    LOBYTE(v18) = *(v3 + i - 96);
    v19 = v7;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    LOBYTE(v15) = v2;
    v16 = v13;
    v17 = v14;
    outlined copy of Text.Suffix?(v7, v8, v9);
    v11 = specialized static Text.Measurements.Context.== infix(_:_:)(&v18, &v15);
    outlined consume of Text.Suffix?(v19, v20, v21);
    if (v11)
    {
      break;
    }

    if (v4 == ++v5)
    {
    }
  }

  swift_beginAccess();
  v3 = *(v1 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v3;
  if (result)
  {
    goto LABEL_8;
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  v3 = result;
LABEL_8:
  if (v5 >= *(v3 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v3 + i) = 1;
    *(v1 + 16) = v3;
    return swift_endAccess();
  }

  return result;
}

void addMissingInterpolations #1 (to:) in static GradientLayer.clippedValues(gradient:function:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  if (v4 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    v6 = a1 - v9;
    if (a1 <= v9)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = a1 - v5;
    if (a1 <= v5)
    {
      return;
    }
  }

  v7 = [objc_opt_self() functionWithName_];
  swift_beginAccess();
  do
  {
    v8 = v7;
    MEMORY[0x193ABF170]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    --v6;
  }

  while (v6);
  swift_endAccess();
}

uint64_t SuffixCache.suffix(context:environment:)@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v88 = *a1;
  v90 = a1[2];
  v91 = a1[1];
  v92 = a1[3];
  v89 = a1[4];
  v80 = a2[1];
  v81 = *a2;
  swift_beginAccess();
  v79 = v3;
  v4 = *(*(v3 + 16) + 16);

  v86 = v4;
  if (v4)
  {
    v7 = 0;
    v8 = 32;
    while (v7 < *(v5 + 16))
    {
      v9 = v5;
      v10 = *(v5 + v8);
      v11 = *(v5 + v8 + 16);
      v122 = *(v5 + v8 + 32);
      v12 = *(v5 + v8 + 96);
      v14 = *(v5 + v8 + 64);
      v13 = *(v5 + v8 + 80);
      v123 = *(v5 + v8 + 48);
      v124 = v14;
      *v125 = v13;
      v120 = v10;
      v121 = v11;
      v125[16] = v12;
      v15 = *(&v122 + 1);
      v16 = *(&v123 + 1);
      *(&v84 + 1) = *(&v14 + 1);
      v17 = v14;
      v85 = v123;
      v83 = *(&v13 + 1);
      *&v84 = v13;
      v18 = *(&v11 + 1);
      v19 = v11;
      v20 = *(&v10 + 1);
      LOBYTE(v101) = v10;
      *(&v101 + 1) = *(&v10 + 1);
      v102 = v11;
      *&v103 = v122;
      LOBYTE(v93[0]) = v88;
      v93[1] = v91;
      v93[2] = v90;
      v93[3] = v92;
      v93[4] = v89;
      outlined init with copy of SuffixCache.Entry(&v120, &v113);
      outlined copy of Text.Suffix?(v20, v19, v18);
      v4 = specialized static Text.Measurements.Context.== infix(_:_:)(&v101, v93);
      outlined consume of Text.Suffix?(*(&v101 + 1), v102, *(&v102 + 1));
      if (v4)
      {

        outlined copy of ResolvedTextSuffix(v15, v85, v16, v17, *(&v84 + 1), v84);
        result = outlined destroy of SuffixCache.Entry(&v120);
        *a3 = v15;
        *(a3 + 8) = v85;
        *(a3 + 16) = v16;
        *(a3 + 24) = __PAIR128__(*(&v84 + 1), v17);
        *(a3 + 40) = v84;
        *(a3 + 48) = v83;
        return result;
      }

      ++v7;
      outlined destroy of SuffixCache.Entry(&v120);
      v8 += 104;
      v5 = v9;
      if (v86 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_38:
    v72 = *(v4 + 2) + 1;
    v73 = v4;
    v74 = v6;
    v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 1, v73);
    v6 = v74;
    v4 = v75;
    *(v6 + 16) = v75;
    goto LABEL_34;
  }

LABEL_6:

  if (v92 >> 1 == 0xFFFFFFFF)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0x1FFFFFFFELL;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    return result;
  }

  if ((v92 & 0x8000000000000000) != 0)
  {
    v27 = 0;
    v29 = v90;
    v28 = v91;
    v30 = v89;
  }

  else
  {
    *&v120 = v81;
    *(&v120 + 1) = v80;
    v113 = 0uLL;
    *&v101 = 128;
    outlined copy of Text.Suffix?(v91, v90, v92);
    outlined copy of Text.Suffix?(v91, v90, v92);
    v22 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)(&v120, 1, &v101, &v113, v91, v90, v92 & 1, v89);
    v23 = *(v89 + 16);
    if (v23)
    {
      v24 = (v89 + 40);
      while (1)
      {
        v25 = *v24;
        v24 += 16;
        if ((v25 & 0xE0) == 0xC0)
        {
          type metadata accessor for CollapsibleTextModifier();
          if (swift_dynamicCastClass())
          {
            break;
          }
        }

        if (!--v23)
        {
          goto LABEL_16;
        }
      }

      v26 = 1;
    }

    else
    {
LABEL_16:
      v26 = 0;
    }

    if (v80)
    {

      _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA20TextLayoutPropertiesV0J033_641995D812913A47B866B20B88782376LLVG_Tt1g5(v81, &v120);
    }

    else
    {
      v113 = v81;

      TextLayoutProperties.init(from:)(&v113, &v120);
    }

    v115 = v122;
    v116 = v123;
    v117 = v124;
    v118[0] = v125[0];
    v113 = v120;
    v114 = v121;
    v31 = v125[1];
    *&v118[48] = *&v127[14];
    *&v118[34] = *v127;
    *&v118[18] = v126;
    *&v118[2] = *&v125[2];
    if (v88 != 2)
    {
      v31 = v88 & 1;
    }

    v118[1] = v31;
    v119 = v128 & 0xFD;
    type metadata accessor for ResolvedStyledText.TextLayoutManager();
    v27 = swift_allocObject();
    v32 = MEMORY[0x1E69E7CC0];
    *(v27 + 416) = MEMORY[0x1E69E7CC0];
    *(v27 + 424) = 0u;
    *(v27 + 440) = 0u;
    *(v27 + 456) = 0u;
    *(v27 + 472) = 0u;
    *(v27 + 488) = 512;
    v87 = v22;
    if ((BYTE8(v113) & 1) != 0 || v113 != 1)
    {
      if (v22)
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
      v33 = v22;
      v34 = v22;
    }

    v35 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
    v36 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
    [v35 setDelegate_];
    [v35 setUsesFontLeading_];
    v37 = v34;
    v38 = v35;
    ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v38, v34, v111);
    v39 = v111[3];
    *(v27 + 528) = v111[2];
    *(v27 + 544) = v39;
    *(v27 + 560) = v111[4];
    v40 = v111[1];
    *(v27 + 496) = v111[0];
    *(v27 + 512) = v40;
    *(v27 + 576) = v36;
    *(v27 + 352) = 0u;
    *(v27 + 368) = 0u;
    *(v27 + 384) = 0;
    *(v27 + 392) = 0x8000000000000000;
    *(v27 + 400) = 0;
    *(v27 + 408) = v32;
    *(v27 + 200) = 0;
    *(v27 + 208) = 1;
    v112 = 1;
    *(v27 + 280) = 0u;
    *(v27 + 296) = 0u;
    *(v27 + 312) = 0u;
    *(v27 + 328) = 0u;
    *(v27 + 344) = 1;
    *(v27 + 216) = v34;
    *(v27 + 224) = 0u;
    *(v27 + 240) = 0u;
    *(v27 + 256) = 768;
    *(v27 + 258) = v26;
    *(v27 + 260) = 64;
    *(v27 + 264) = v32;
    *(v27 + 272) = v32;
    v41 = v114;
    *(v27 + 16) = v113;
    *(v27 + 32) = v41;
    v42 = v115;
    v43 = v116;
    v44 = *v118;
    *(v27 + 80) = v117;
    *(v27 + 96) = v44;
    *(v27 + 48) = v42;
    *(v27 + 64) = v43;
    v45 = *&v118[16];
    v46 = *&v118[32];
    v47 = *&v118[48];
    *(v27 + 160) = v119;
    *(v27 + 128) = v46;
    *(v27 + 144) = v47;
    *(v27 + 112) = v45;
    if (v34)
    {
      v98 = 0uLL;
      v99 = 0uLL;
      v96 = 0uLL;
      v97 = 0uLL;
      v100 = 1;
      v94 = v118[24];
      v95 = *&v118[32];
      v107 = *&v118[16];
      v108 = *&v118[32];
      v109 = *&v118[48];
      v110 = v119;
      v103 = v115;
      v104 = v116;
      v105 = v117;
      v106 = *v118;
      v101 = v113;
      v102 = v114;
      outlined init with copy of TextLayoutProperties(&v113, v93);
      v48 = v37;
      outlined init with copy of TextLayoutProperties(&v113, v93);
      v49 = v36;
      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v48, &v96, &v101);
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;

      v58 = v99;
      *(v27 + 312) = v98;
      *(v27 + 328) = v58;
      *(v27 + 344) = v100;
      v59 = v97;
      *(v27 + 280) = v96;
      *(v27 + 296) = v59;
      *(v27 + 168) = v51;
      *(v27 + 176) = v53;
      *(v27 + 184) = v55;
      *(v27 + 192) = v57;
    }

    else
    {
      *(v27 + 344) = 1;
      *(v27 + 168) = 0uLL;
      *(v27 + 184) = 0uLL;
      outlined init with copy of TextLayoutProperties(&v113, &v101);
      v60 = v36;
    }

    swift_beginAccess();
    v61 = *(v27 + 97);

    v62 = _TextContainer(v61);
    [v62 setLineFragmentPadding_];
    [v38 setTextContainer_];
    _NSTextLayoutManagerRequiresCTLine(v38);
    v28 = v91;
    v29 = v90;
    outlined consume of Text.Storage(v91, v90, v92 & 1);
    v30 = v89;

    outlined destroy of TextLayoutProperties(&v113);
  }

  *&v113 = v28;
  *(&v113 + 1) = v29;
  *&v114 = v92;
  *(&v114 + 1) = v30;
  Text.Suffix.resolve(text:)(v27, &v120);
  v63 = v120;
  v64 = v121;
  v65 = *(&v122 + 1);
  v86 = v122;
  v66 = v123;
  swift_beginAccess();
  v4 = *(v79 + 16);
  outlined copy of Text.Suffix?(v91, v90, v92);
  v84 = v63;
  v83 = v64;
  v80 = v65;
  v81 = *(&v64 + 1);
  v85 = v66;
  outlined copy of ResolvedTextSuffix(v63, *(&v63 + 1), v64, *(&v64 + 1), v86, v65);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v79;
  *(v79 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_34:
  v69 = *(v4 + 2);
  v68 = *(v4 + 3);
  if (v69 >= v68 >> 1)
  {
    v76 = v4;
    v77 = v6;
    v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v76);
    v6 = v77;
    v4 = v78;
  }

  *(v4 + 2) = v69 + 1;
  v70 = &v4[104 * v69];
  v70[32] = v88;
  v71 = *(&v113 + 3);
  *(v70 + 33) = v113;
  *(v70 + 9) = v71;
  *(v70 + 5) = v91;
  *(v70 + 6) = v90;
  *(v70 + 7) = v92;
  *(v70 + 8) = v89;
  *(v70 + 72) = v84;
  *(v70 + 11) = v83;
  *(v70 + 12) = v81;
  *(v70 + 13) = v86;
  *(v70 + 14) = v80;
  *(v70 + 15) = v85;
  v70[128] = 1;
  *(v6 + 16) = v4;
  swift_endAccess();
  outlined consume of Text.Suffix?(v91, v90, v92);

  *a3 = v84;
  *(a3 + 16) = v83;
  *(a3 + 24) = v81;
  *(a3 + 32) = v86;
  *(a3 + 40) = v80;
  *(a3 + 48) = v85;
  return result;
}

unint64_t lazy protocol witness table accessor for type TintPlacement and conformance TintPlacement()
{
  result = lazy protocol witness table cache variable for type TintPlacement and conformance TintPlacement;
  if (!lazy protocol witness table cache variable for type TintPlacement and conformance TintPlacement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TintPlacement and conformance TintPlacement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TintPlacement and conformance TintPlacement;
  if (!lazy protocol witness table cache variable for type TintPlacement and conformance TintPlacement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TintPlacement and conformance TintPlacement);
  }

  return result;
}

uint64_t specialized ShapeStyledDisplayList.updateValue()(void (*a1)(void), void (*a2)(_OWORD *__return_ptr, void *, double, double, double, double), void (*a3)(void *, uint64_t *, _OWORD *, uint64_t *))
{
  v90 = *MEMORY[0x1E69E9840];
  v6 = *(v3 + 3);
  a1(0);
  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = Value[1];
  if ((v10 & 1) != 0 || !*(v3 + 25))
  {
    v12 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v3 + 28);
    LODWORD(__dst[1]) = v6;
    v11 = AGGraphAnyInputsChanged();
    v12 = ++static DisplayList.Version.lastValue;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v13 = (2 * ((33 * (v12 >> 16)) ^ v12)) | 1;
  if (!v12)
  {
    LOWORD(v13) = 0;
  }

  *(v3 + 25) = v13;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v48 = v14;
    v49 = v15;
    v50 = v16;
    v51 = v17;
    swift_once();
    v17 = v51;
    v16 = v50;
    v15 = v49;
    v14 = v48;
    goto LABEL_15;
  }

  v62 = a3;
  v59 = v9;
  v18 = *(v3 + 10);
  v19 = AGCreateWeakAttribute();
  v58 = v8;
  v20 = v19;
  v57 = HIDWORD(v19);
  v21 = AGCreateWeakAttribute();
  v61 = v12;
  v22 = v21;
  v56 = HIDWORD(v21);
  v60 = v18;
  v23 = AGCreateWeakAttribute();
  v24 = v23;
  v55 = HIDWORD(v23);
  v25 = AGCreateWeakAttribute();
  v26 = v25;
  v54 = HIDWORD(v25);
  v27 = AGCreateWeakAttribute();
  v28 = v27;
  v53 = HIDWORD(v27);
  v29 = AGCreateWeakAttribute();
  v30 = v29;
  v52 = HIDWORD(v29);
  type metadata accessor for CGPoint(0);
  v31 = AGGraphGetValue();
  v32 = *v31;
  v33 = v31[1];
  v34 = AGGraphGetValue();
  v35 = v32 - *v34;
  v36 = v33 - v34[1];
  v37 = AGGraphGetValue();
  v38 = *v37;
  v39 = *(v37 + 8);
  _threadGeometryProxyData();
  __dst[0] = __PAIR64__(v57, v20);
  v8 = &v67;
  __dst[1] = __PAIR64__(v56, v22);
  v12 = v61;
  __dst[2] = __PAIR64__(v55, v24);
  __dst[3] = __PAIR64__(v54, v26);
  __dst[4] = __PAIR64__(v53, v28);
  __dst[5] = __PAIR64__(v52, v30);
  LODWORD(__dst[6]) = v61;
  v40 = _setThreadGeometryProxyData();
  a2(v88, v40, 0.0, 0.0, v38, v39);
  v41 = 0x10000;
  if (!v59)
  {
    v41 = 0;
  }

  v42 = 256;
  if (!v58)
  {
    v42 = 0;
  }

  v43 = v41 | v42 | v89;
  _setThreadGeometryProxyData();
  v74 = v88[0];
  v75 = v88[1];
  *&v76 = v43;
  *&v78 = 0;
  v80 = 0;
  v82 = 0;
  v81 = 0;
  v83 = v38;
  v84 = v39;
  v44 = *v3;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v73 = 0;
  v72 = 0x20000000;
  v67 = v44;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v74, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v91.origin.x = 0.0;
  v91.origin.y = 0.0;
  v91.size.width = v38;
  v91.size.height = v39;
  *&v14 = CGRectOffset(v91, v35, v36);
  v6 = *(v3 + 2);
  LOWORD(a2) = *(v3 + 25);
  LOBYTE(a3) = *(v3 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_17;
  }

LABEL_15:
  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  __src[4] = v78;
  __src[5] = v79;
  *(&__src[5] + 12) = *(v8 + 180);
  __src[0] = v74;
  __src[1] = v75;
  __src[2] = v76;
  __src[3] = v77;
  WORD6(__src[6]) = a2;
  *&__src[7] = v14;
  *(&__src[7] + 1) = v15;
  *&__src[8] = v16;
  *(&__src[8] + 1) = v17;
  *&__src[10] = v14;
  *(&__src[10] + 1) = v15;
  *&__src[11] = v16;
  *(&__src[11] + 1) = v17;
  __src[12] = v12;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v6;
  BYTE12(__src[14]) = a3;
  LODWORD(__src[15]) = v60;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  v62(__dst, &v67, __src, v3);
  LOBYTE(__dst[0]) = *(v3 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v63);
  *&v86[0] = v63;
  WORD4(v86[0]) = v64;
  HIDWORD(v86[0]) = v65;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v74, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v45 = *(v8 + 3);
  v86[2] = *(v8 + 2);
  v86[3] = v45;
  v86[4] = *(v8 + 4);
  v87 = v73;
  v46 = *(v8 + 1);
  v86[0] = *v8;
  v86[1] = v46;
  return outlined destroy of _ShapeStyle_RenderedLayers(v86);
}

uint64_t DisplayList.ViewUpdater.Platform.updateShadowAsync(layer:oldState:oldItem:newState:newItem:boundsChanged:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6)
{
  v182 = *MEMORY[0x1E69E9840];
  v7 = a2[12];
  v8 = *(a4 + 96);
  if (!v7)
  {
    return !v8;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = a3[5];
  v10 = a3[6];
  v11 = a3[7];
  v12 = a3[8];
  v13 = a5[5];
  v14 = a5[6];
  v16 = a5[7];
  v15 = a5[8];
  v145 = *v6;
  if ((a6 & 1) == 0)
  {
    v149 = a3[8];
    v17 = a5[6];
    v18 = a5[7];
    v19 = a5[8];
    v20 = a5[5];
    v21 = a3[5];
    swift_beginAccess();
    v22 = *(v8 + 32);
    v171 = *(v8 + 16);
    v172 = v22;
    *v173 = *(v8 + 48);
    *&v173[13] = *(v8 + 61);
    swift_beginAccess();
    v23 = *(v7 + 32);
    v165 = *(v7 + 16);
    v166 = v23;
    *v167 = *(v7 + 48);
    *&v167[13] = *(v7 + 61);
    v24 = specialized static ResolvedShadowStyle.== infix(_:_:)(&v171, &v165);
    v15 = v19;
    v16 = v18;
    v14 = v17;
    v12 = v149;
    v9 = v21;
    v13 = v20;
    if (v24)
    {
      return 1;
    }
  }

  if (!*(a1 + 16))
  {

    v25 = v7;

    goto LABEL_12;
  }

  *&v175 = v9;
  *(&v175 + 1) = v10;
  v176 = v11;
  v177 = v12;
  v178 = v13;
  v179 = v14;
  v180 = v16;
  v181 = v15;
  v25 = v7;
  if ((v12 & 0xC0000000) != 0 || (v15 & 0xC0000000) != 0)
  {
    v26 = v13;
    v27 = v11;
    v28 = v9;
    v29 = v15;

    outlined copy of DisplayList.Item.Value(v28, v10, v27, v12);
    outlined copy of DisplayList.Item.Value(v26, v14, v16, v29);
    outlined destroy of (PaintType, ShapeType)(&v175, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
LABEL_12:
    swift_beginAccess();
    v175 = *(v25 + 16);
    LODWORD(v176) = *(v25 + 32);
    v31 = *(v25 + 40);
    v32 = *(v25 + 48);
    v33 = *(v25 + 56);
    v34 = *(v25 + 68);
    swift_beginAccess();
    v160 = *(v8 + 16);
    LODWORD(v161) = *(v8 + 32);
    if (v34 == *(v8 + 68))
    {
      v36 = *(v8 + 40);
      v35 = *(v8 + 48);
      v37 = *(v8 + 56);
      if (v35 != v32 || v37 != v33)
      {
        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowOffsetO_Tt0g5(v35, v37);
      }

      if (v36 != v31)
      {
        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowRadiusO_Tt0g5(v36);
      }

      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE11ShadowColorO_Ttg5(&v175, &v160);

      return 1;
    }

    return 0;
  }

  if (v9 >> 60 == 4)
  {
    v144 = v15;
    if (v13 >> 60 != 4)
    {
      goto LABEL_31;
    }

    v151 = v12;
    v143 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v139 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v137 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v134 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v49 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v125 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
    v123 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v127 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v128 = v10;
    v126 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v132 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v141 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v124 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
    v50 = v13;
    v51 = v9;
    ObjectType = swift_getObjectType();
    v53 = *(*a2 + 24);
    v122 = ObjectType;
    v129 = v50;
    v131 = v51;
    v130 = v49;
    if (ObjectType == type metadata accessor for ColorShapeLayer())
    {
      outlined copy of DisplayList.Item.Value(v51, v128, v11, v151);
      outlined copy of DisplayList.Item.Value(v50, v14, v16, v144);

      outlined copy of DisplayList.Item.Value(v51, v128, v11, v151);
      outlined copy of DisplayList.Item.Value(v50, v14, v16, v144);
      x = 0.0;
      y = 0.0;
      v57 = 0.0;
      v56 = 0.0;
      v74 = v123;
LABEL_96:
      v115 = *a1;
      swift_beginAccess();
      v154 = *(v25 + 32);
      *v155 = *(v25 + 48);
      *&v155[13] = *(v25 + 61);
      v116 = *(v25 + 16);
      *&v160 = v145;
      *(&v160 + 1) = v115;
      *&v161 = v143;
      *(&v161 + 1) = v139;
      *&v162 = v137;
      *(&v162 + 1) = v134;
      LOBYTE(v163) = v130;
      *(&v163 + 1) = v57;
      *v164 = v56;
      *&v164[24] = v154;
      *&v164[8] = v116;
      *&v164[53] = *&v155[13];
      *&v164[40] = *v155;
      v164[61] = 0;
      swift_beginAccess();
      v117 = *(v8 + 48);
      v157 = *(v8 + 32);
      v158[0] = v117;
      *(v158 + 13) = *(v8 + 61);
      v156 = *(v8 + 16);
      *&v171 = v145;
      *(&v171 + 1) = v115;
      *&v172 = v74;
      *(&v172 + 1) = v127;
      *v173 = v126;
      *&v173[8] = v132;
      v173[16] = v141;
      *&v173[24] = x;
      *v174 = y;
      *&v174[24] = v157;
      *&v174[8] = v156;
      *&v174[53] = *(v158 + 13);
      *&v174[40] = v158[0];
      v174[61] = 0;
      *&v165 = a1;
      *(&v165 + 1) = &v160;
      *&v166 = &v171;
      *(&v166 + 1) = v124;
      v167[0] = 0;
      v153 = *(*v125 + 152);
      v118 = v115;
      outlined copy of Path.Storage(v143, v139, v137, v134, v130);
      outlined copy of Path.Storage(v74, v127, v126, v132, v141);
      v119 = v118;

      v153(&v165, &type metadata for ShapeLayerAsyncShadowHelper, &protocol witness table for ShapeLayerAsyncShadowHelper);
      outlined destroy of (PaintType, ShapeType)(&v175, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));

      v120 = v167[0];

      v168 = *v174;
      v169 = *&v174[16];
      v170[0] = *&v174[32];
      *(v170 + 14) = *&v174[46];
      v165 = v171;
      v166 = v172;
      *v167 = *v173;
      *&v167[16] = *&v173[16];
      outlined destroy of ShapeLayerShadowHelper(&v165);
      *v174 = *v164;
      *&v174[16] = *&v164[16];
      *&v174[32] = *&v164[32];
      *&v174[46] = *&v164[46];
      v171 = v160;
      v172 = v161;
      *v173 = v162;
      *&v173[16] = v163;
      outlined destroy of ShapeLayerShadowHelper(&v171);
      outlined consume of DisplayList.Content.Value(v131);
      outlined consume of DisplayList.Content.Value(v129);
      return v120;
    }

    if (v49 <= 2)
    {
      if (v49 < 2)
      {
        v55 = *&v134;
        v54 = *&v137;
        v56 = *&v139;
        v57 = *&v143;
        outlined copy of DisplayList.Item.Value(v51, v128, v11, v151);
        v58 = v144;
        outlined copy of DisplayList.Item.Value(v50, v14, v16, v144);

        v59 = v51;
        v60 = v128;
        v61 = v11;
        v62 = v151;
LABEL_51:
        outlined copy of DisplayList.Item.Value(v59, v60, v61, v62);
        outlined copy of DisplayList.Item.Value(v50, v14, v16, v58);
LABEL_52:
        v183.origin.x = v57;
        v183.origin.y = v56;
        v183.size.width = v54;
        v183.size.height = v55;
        IsNull = CGRectIsNull(v183);
        if (IsNull)
        {
          v57 = 0.0;
          v56 = 0.0;
        }

        v85 = type metadata accessor for PaintShapeLayer();
        v74 = v123;
        if (v122 == v85)
        {
          if (IsNull)
          {
            v86 = 0.0;
          }

          else
          {
            v86 = v55;
          }

          if (IsNull)
          {
            v87 = 0.0;
          }

          else
          {
            v87 = v54;
          }

          v88 = 1.0 / v53;
          v89 = v57;
          v90 = v56;
          v184 = CGRectStandardize(*(&v86 - 3));
          v91 = 1.0 / v53 * 0.5;
          v92 = v91 + v184.origin.x;
          if (1.0 / v53 == 1.0)
          {
            v57 = floor(v92);
            v56 = floor(v91 + v184.origin.y);
          }

          else
          {
            v57 = v88 * floor(v92 / v88);
            v56 = v88 * floor((v91 + v184.origin.y) / v88);
          }
        }

        v93 = *(*a2 + 24);
        if (v141 <= 2)
        {
          if (v141 > 1)
          {
            x = v123[2];
            y = v123[3];
            width = v123[4];
            height = v123[5];
          }

          else
          {
            x = *&v123;
            width = *&v126;
            y = *&v127;
            height = *&v132;
          }

          goto LABEL_84;
        }

        if (v141 == 5)
        {
          if (*(v123 + 16))
          {
            if (*(v123 + 16) == 1)
            {

              RBPathGetBoundingRect();
            }

            else
            {

              v96 = MEMORY[0x193AC3640](v123 + 3);
            }

            x = v96;
            y = v97;
            width = v98;
            height = v99;
            goto LABEL_83;
          }

          v105 = *(v123 + 3);
          if (v105)
          {
            v106 = v105;

            PathBoundingBox = CGPathGetPathBoundingBox(v106);
            x = PathBoundingBox.origin.x;
            y = PathBoundingBox.origin.y;
            width = PathBoundingBox.size.width;
            height = PathBoundingBox.size.height;

LABEL_83:
            outlined consume of Path.Storage(v123, v127, v126, v132, 5u);
            goto LABEL_84;
          }

          goto LABEL_98;
        }

        if (v141 == 6)
        {
          x = *MEMORY[0x1E695F050];
          y = *(MEMORY[0x1E695F050] + 8);
          width = *(MEMORY[0x1E695F050] + 16);
          height = *(MEMORY[0x1E695F050] + 24);
LABEL_84:
          v187.origin.x = x;
          v187.origin.y = y;
          v187.size.width = width;
          v187.size.height = height;
          v107 = CGRectIsNull(v187);
          if (v107)
          {
            x = 0.0;
            y = 0.0;
          }

          if (v122 == v85)
          {
            if (v107)
            {
              v108 = 0.0;
            }

            else
            {
              v108 = height;
            }

            if (v107)
            {
              v109 = 0.0;
            }

            else
            {
              v109 = width;
            }

            v110 = 1.0 / v93;
            v111 = x;
            v112 = y;
            v188 = CGRectStandardize(*(&v108 - 3));
            v113 = 1.0 / v93 * 0.5;
            v114 = v113 + v188.origin.x;
            if (1.0 / v93 == 1.0)
            {
              x = floor(v114);
              y = floor(v113 + v188.origin.y);
            }

            else
            {
              x = v110 * floor(v114 / v110);
              y = v110 * floor((v113 + v188.origin.y) / v110);
            }
          }

          goto LABEL_96;
        }

LABEL_99:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v57 = v143[2];
      v56 = v143[3];
      v54 = v143[4];
      v55 = v143[5];
LABEL_50:
      outlined copy of DisplayList.Item.Value(v51, v128, v11, v151);
      v58 = v144;
      outlined copy of DisplayList.Item.Value(v50, v14, v16, v144);

      v59 = v51;
      v60 = v128;
      v61 = v11;
      v62 = v151;
      goto LABEL_51;
    }

    if (v49 != 5)
    {
      if (v49 != 6)
      {
        goto LABEL_99;
      }

      v57 = *MEMORY[0x1E695F050];
      v56 = *(MEMORY[0x1E695F050] + 8);
      v54 = *(MEMORY[0x1E695F050] + 16);
      v55 = *(MEMORY[0x1E695F050] + 24);
      goto LABEL_50;
    }

    v76 = v143;
    if (*(v143 + 16))
    {
      if (*(v143 + 16) != 1)
      {
        outlined copy of DisplayList.Item.Value(v51, v128, v11, v151);
        outlined copy of DisplayList.Item.Value(v129, v14, v16, v144);

        outlined copy of DisplayList.Item.Value(v51, v128, v11, v151);
        outlined copy of DisplayList.Item.Value(v129, v14, v16, v144);
        v78 = v137;
        v77 = v139;
        v79 = v134;
        outlined copy of Path.Storage(v143, v139, v137, v134, 5u);
        v57 = MEMORY[0x193AC3640](v143 + 3);
        v56 = v102;
        v54 = v103;
        v55 = v104;
        v101 = v143;
        goto LABEL_78;
      }

      outlined copy of DisplayList.Item.Value(v51, v128, v11, v151);
      outlined copy of DisplayList.Item.Value(v129, v14, v16, v144);

      outlined copy of DisplayList.Item.Value(v51, v128, v11, v151);
      outlined copy of DisplayList.Item.Value(v129, v14, v16, v144);
      v78 = v137;
      v77 = v139;
      v79 = v134;
      outlined copy of Path.Storage(v143, v139, v137, v134, 5u);
      RBPathGetBoundingRect();
      v57 = v80;
      v56 = v81;
      v54 = v82;
      v55 = v83;
    }

    else
    {
      v100 = *(v143 + 3);
      if (!v100)
      {
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      path = v100;
      outlined copy of DisplayList.Item.Value(v51, v128, v11, v151);
      outlined copy of DisplayList.Item.Value(v129, v14, v16, v144);

      outlined copy of DisplayList.Item.Value(v51, v128, v11, v151);
      outlined copy of DisplayList.Item.Value(v129, v14, v16, v144);
      v76 = v143;
      v78 = v137;
      v77 = v139;
      v79 = v134;
      outlined copy of Path.Storage(v143, v139, v137, v134, 5u);
      v185 = CGPathGetPathBoundingBox(path);
      v57 = v185.origin.x;
      v56 = v185.origin.y;
      v54 = v185.size.width;
      v55 = v185.size.height;
    }

    v101 = v76;
LABEL_78:
    outlined consume of Path.Storage(v101, v77, v78, v79, 5u);
    goto LABEL_52;
  }

  if (v9 >> 60 != 1)
  {
    v63 = v10;
    v71 = v10;
    v70 = v15;
    v65 = v13;
    v66 = v9;
    outlined copy of DisplayList.Item.Value(v9, v71, v11, v12);
    v67 = v65;
    v68 = v14;
    v69 = v16;
    goto LABEL_33;
  }

  v144 = v15;
  if (v13 >> 60 != 1)
  {
LABEL_31:
    v63 = v10;
    v64 = v10;
    v65 = v13;
    v66 = v9;
    outlined copy of DisplayList.Item.Value(v9, v64, v11, v12);
    v67 = v65;
    v68 = v14;
    v69 = v16;
    v70 = v144;
LABEL_33:
    outlined copy of DisplayList.Item.Value(v67, v68, v69, v70);

    outlined copy of DisplayList.Item.Value(v66, v63, v11, v12);
    outlined copy of DisplayList.Item.Value(v65, v14, v16, v70);
    outlined destroy of (PaintType, ShapeType)(&v175, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));
    outlined consume of DisplayList.Content.Value(v66);
    outlined consume of DisplayList.Content.Value(v65);
    goto LABEL_12;
  }

  v148 = v11;
  v140 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
  v138 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
  v38 = v13;
  v39 = v9;
  swift_beginAccess();
  v150 = *(v25 + 16);
  v40 = *(v25 + 28);
  v146 = *(v25 + 24);
  v142 = *(v25 + 32);
  v41 = *(v25 + 48);
  v136 = *(v25 + 40);
  v42 = *(v25 + 56);
  v43 = *(v25 + 68);
  v159 = 0;
  swift_beginAccess();
  v44 = *(v8 + 28);
  v45 = *(v8 + 32);
  v46 = *(v8 + 40);
  v47 = *(v8 + 48);
  v48 = *(v8 + 56);
  if (v43 == *(v8 + 68))
  {
    v133 = *(v8 + 24);
    v135 = *(v8 + 16);
    outlined copy of DisplayList.Item.Value(v39, v10, v148, v12);
    outlined copy of DisplayList.Item.Value(v38, v14, v16, v144);

    outlined copy of DisplayList.Item.Value(v39, v10, v148, v12);
    outlined copy of DisplayList.Item.Value(v38, v14, v16, v144);
    if (v47 != v41 || v48 != v42)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowOffsetO_Tt0g5(v47, v48);
    }

    if (v46 != v136)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowRadiusO_Tt0g5(v46);
    }

    *&v156 = v150;
    DWORD2(v156) = v146;
    *(&v156 + 3) = v140 * v40;
    LODWORD(v157) = v142;
    *&v160 = v135;
    DWORD2(v160) = v133;
    *(&v160 + 3) = v138 * v44;
    LODWORD(v161) = v45;
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE11ShadowColorO_Ttg5(&v156, &v160);
    v75 = 1;
  }

  else
  {
    outlined copy of DisplayList.Item.Value(v39, v10, v148, v12);
    outlined copy of DisplayList.Item.Value(v38, v14, v16, v144);

    outlined copy of DisplayList.Item.Value(v39, v10, v148, v12);
    outlined copy of DisplayList.Item.Value(v38, v14, v16, v144);
    v75 = 0;
  }

  outlined destroy of (PaintType, ShapeType)(&v175, &lazy cache variable for type metadata for (DisplayList.Item.Value, DisplayList.Item.Value), &type metadata for DisplayList.Item.Value, &type metadata for DisplayList.Item.Value, type metadata accessor for (Path, FillStyle));

  outlined consume of DisplayList.Content.Value(v39);
  outlined consume of DisplayList.Content.Value(v38);
  return v75;
}

void DisplayList.ViewUpdater.ViewCache.updateAsync(oldItem:oldState:newItem:newState:tag:platform:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v208 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v11 = *(a1 + 2);
  v10 = *(a1 + 3);
  v12 = *(a1 + 4);
  v13 = *(a1 + 56);
  v204 = *(a1 + 40);
  v205 = v13;
  v14 = *(a1 + 18);
  v137 = v9;
  v138 = *a3;
  v16 = *(a3 + 16);
  v15 = *(a3 + 24);
  v17 = *(a3 + 32);
  v18 = *(a3 + 56);
  v206 = *(a3 + 40);
  v207 = v18;
  if (v14 != *(a3 + 72))
  {
    goto LABEL_61;
  }

  v19 = v7;
  v134 = v14;
  v20 = *v7;
  if (!*(v20 + 16))
  {
    goto LABEL_61;
  }

  v22 = (a5 & 1) != 0 ? 256 : 0;
  v131 = *a6;
  v132 = *(v19 + 18) | (*(v19 + 19) << 32);
  v24 = *(v19 + 16) | (*(v19 + 17) << 32);
  v135 = v17;
  v133 = v12;
  v130 = v22 & 0xFFFC | *a6 & 3;
  v27 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v132, v130);
  v28 = a3;
  v29 = a5;
  if ((v30 & 1) == 0)
  {
    goto LABEL_61;
  }

  v31 = *(v20 + 56) + (v27 << 7);
  v33 = *(v31 + 64);
  v32 = *(v31 + 80);
  v34 = *(v31 + 96);
  v147 = *(v31 + 112);
  v144 = v33;
  v36 = *(v31 + 32);
  v35 = *(v31 + 48);
  v37 = *(v31 + 16);
  v143[0] = *v31;
  v143[1] = v37;
  v143[2] = v36;
  v143[3] = v35;
  v145 = v32;
  v146 = v34;
  v38 = v37;
  v39 = *(v31 + 8);
  v40 = *(v31 + 24);
  v41 = *(v31 + 40);
  v203 = *(v31 + 56);
  v201 = v40;
  v202 = v41;
  v42 = *(v31 + 65);
  v43 = *(v31 + 81);
  v199 = *(v31 + 97);
  v200 = v39;
  v197 = v42;
  v198 = v43;
  v128 = BYTE1(v147);
  v129 = v144;
  v44 = *(v31 + 114);
  v149 = *(v31 + 118);
  v148 = v44;
  v45 = *(&v147 + 1);
  v139[0] = v37;
  v139[1] = v19;
  v140 = v144;
  *&v141 = INFINITY;
  v142 = BYTE1(v147);
  if ((a5 & 1) == 0)
  {
    v50 = a1;
    v126 = BYTE1(v147);
    v46 = *&v143[0];
    *&v151 = *&v143[0];
    v51 = *(v19 + 80);
    v164 = v19[4];
    LOBYTE(v165) = v51;
    *v187 = *v50;
    *&v187[16] = v11;
    *&v187[24] = v10;
    *&v187[32] = v133;
    *&v187[40] = *(v50 + 40);
    *&v187[56] = *(v50 + 56);
    *&v187[72] = v134;
    v176 = *v28;
    *&v177 = v16;
    *(&v177 + 1) = v15;
    *v178 = v135;
    *&v178[8] = *(v28 + 40);
    *&v178[24] = *(v28 + 56);
    *&v178[40] = v134;
    outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v143, v192);
    v52 = v38;
    v127 = v24;
    if (DisplayList.ViewUpdater.Platform.updateItemViewAsync(layer:index:oldItem:oldState:newItem:newState:)(v139, &v164, v187, a2, &v176, a4))
    {
      goto LABEL_12;
    }

    goto LABEL_60;
  }

  if (*(a4 + 104) != *(a2 + 104))
  {
    v46 = *&v143[0];
    outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v143, v192);
    v56 = v38;
    goto LABEL_60;
  }

  v125 = BYTE1(v144);
  v126 = BYTE1(v147);
  v127 = v24;
  v46 = *&v143[0];
  v47 = *(a4 + 8);
  v48 = a4;
  if (v47 == *(a2 + 8))
  {
    outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v143, v192);
    v49 = v38;
  }

  else
  {
    outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v143, v192);
    v64 = v38;
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE7OpacityO_Tt0g5(v47);
  }

  v65 = a2;
  if (*(a4 + 136) != *(a2 + 136))
  {
    goto LABEL_60;
  }

  if (*(a4 + 160) != *(a2 + 160))
  {
    *v192 = *(a2 + 88);
    *v187 = *(a4 + 88);
    if (v140 == 9)
    {

      rect2_16 = specialized Array<A>.popColorMultiply(drawable:)(v192, v139);
      v67 = v66;
      v69 = v68;

      v123 = specialized Array<A>.popColorMultiply(drawable:)(v187, v139);
      v121 = v70;
      v72 = v71;

      v65 = a2;
      if ((v72 & 0x100000000) == 0 || (v69 & 0x100000000) == 0)
      {
        _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE21ContentsMultiplyColorO_Ttg5(rect2_16, v67, v69 | ((HIDWORD(v69) & 1) << 32), v123, v121, v72 | ((HIDWORD(v72) & 1) << 32));
        v65 = a2;
      }
    }

    v73 = *(v65 + 88);
    v74 = *(v48 + 88);

    specialized static GraphicsFilter.updateAsync(layer:oldFilters:newFilters:)(v139, v73, v74);
    v76 = v75;

    v65 = a2;
    if ((v76 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  if (*(v48 + 152) != *(v65 + 152) || *(v48 + 144) != *(v65 + 144))
  {
    *v192 = v46;
    v77 = DisplayList.ViewUpdater.Platform.updateClipShapesAsync(layer:oldState:newState:)(v139, a2, v48);
    v65 = a2;
    if ((v77 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  v122 = *(v65 + 64);
  v124 = *(v48 + 64);
  v78 = 0;
  if ((v125 & 8) != 0)
  {
    v84 = *(v65 + 144);
    v85 = *(v65 + 112);
    v188 = *(v65 + 128);
    v189 = v84;
    v86 = *(v65 + 144);
    v190 = *(v65 + 160);
    v87 = *(v65 + 80);
    v88 = *(v65 + 48);
    *&v187[64] = *(v65 + 64);
    *&v187[80] = v87;
    v89 = *(v65 + 80);
    v90 = *(v65 + 112);
    *&v187[96] = *(v65 + 96);
    *&v187[112] = v90;
    v91 = *(v65 + 16);
    *v187 = *v65;
    *&v187[16] = v91;
    v92 = *(v65 + 48);
    v94 = *v65;
    v93 = *(v65 + 16);
    *&v187[32] = *(v65 + 32);
    *&v187[48] = v92;
    v182 = v188;
    v183 = v86;
    v184 = *(v65 + 160);
    *&v178[32] = *&v187[64];
    v179 = v89;
    v180 = *&v187[96];
    v181 = v85;
    v176 = v94;
    v177 = v93;
    v191 = *(v65 + 176);
    v185 = *(v65 + 176);
    *v178 = *&v187[32];
    *&v178[16] = v88;
    DisplayList.ViewUpdater.Model.State.clipRect()(&v186);
    v193 = v182;
    v194 = v183;
    v195 = v184;
    v196 = v185;
    *&v192[64] = *&v178[32];
    *&v192[80] = v179;
    *&v192[96] = v180;
    *&v192[112] = v181;
    *v192 = v176;
    *&v192[16] = v177;
    *&v192[32] = *v178;
    *&v192[48] = *&v178[16];
    outlined init with copy of DisplayList.ViewUpdater.Model.State(v187, &v164);
    outlined destroy of DisplayList.ViewUpdater.Model.State(v192);
    if (v186.value.style == SwiftUI_RoundedCornerStyle_unknownDefault || (v95 = *(v48 + 144), v96 = *(v48 + 112), v172 = *(v48 + 128), v173 = v95, v97 = *(v48 + 144), v174 = *(v48 + 160), v98 = *(v48 + 80), v99 = *(v48 + 48), v168 = *(v48 + 64), v169 = v98, v100 = *(v48 + 80), v101 = *(v48 + 112), v170 = *(v48 + 96), v171 = v101, v102 = *(v48 + 16), v164 = *v48, v165 = v102, v103 = *(v48 + 48), v105 = *v48, v104 = *(v48 + 16), v166 = *(v48 + 32), v167 = v103, v159 = v172, v160 = v97, v161 = *(v48 + 160), v155 = v168, v156 = v100, v157 = v170, v158 = v96, rect2_16a = v186.value.rect.size.height, v106 = v186.value.rect.size.width, v151 = v105, v152 = v104, rect2 = v186.value.rect.origin, v175 = *(v48 + 176), v162 = *(v48 + 176), v153 = v166, v154 = v99, DisplayList.ViewUpdater.Model.State.clipRect()(&v163), v182 = v159, v183 = v160, v184 = v161, v185 = v162, *&v178[32] = v155, v179 = v156, v180 = v157, v181 = v158, v176 = v151, v177 = v152, *v178 = v153, *&v178[16] = v154, outlined init with copy of DisplayList.ViewUpdater.Model.State(&v164, v150), outlined destroy of DisplayList.ViewUpdater.Model.State(&v176), v163.value.style == SwiftUI_RoundedCornerStyle_unknownDefault))
    {
      v79 = v11;
      v80 = v10;
      width = v16;
      height = v15;
      origin = 0;
      v78 = 0;
    }

    else
    {
      height = v163.value.rect.size.height;
      width = v163.value.rect.size.width;
      origin = v163.value.rect.origin;
      v78 = rect2;
      v122 = vaddq_f64(v122, rect2);
      v124 = vaddq_f64(v124, v163.value.rect.origin);
      v79 = v106;
      v80 = rect2_16a;
    }
  }

  else
  {
    v79 = v11;
    v80 = v10;
    width = v16;
    height = v15;
    origin = 0;
  }

  y = origin.y;
  v108 = v78.y;
  rect2_16b = origin.x;
  v209.origin.x = origin.x;
  v209.origin.y = origin.y;
  v209.size.width = width;
  v209.size.height = height;
  v109 = CGRectEqualToRect(v209, *&v78.x);
  if (v109)
  {
    v110 = a2;
    if ((v125 & 4) != 0)
    {
      goto LABEL_57;
    }

    v111 = v124;
    if (v124.f64[0] == v122.f64[0] && v124.f64[1] == v122.f64[1])
    {
      v112 = 0;
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (v140 - 15 < 3)
  {
LABEL_60:
    *&v192[8] = v200;
    *&v192[24] = v201;
    *&v192[40] = v202;
    *&v192[65] = v197;
    *&v192[81] = v198;
    *v192 = v46;
    *&v192[56] = v203;
    v192[64] = v129;
    *&v192[97] = v199;
    v192[113] = v128;
    *&v192[118] = v149;
    *&v192[114] = v148;
    *&v192[120] = v45;
    outlined destroy of DisplayList.ViewUpdater.ViewInfo(v192);

LABEL_61:
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
    *(a7 + 24) = xmmword_18DDEF030;
    return;
  }

  rect2a = v109;
  _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5Tm(0x73646E756F62, 0xE600000000000000, rect2_16b, y, width, height);
  if (v140 == 14)
  {
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV12setMaskValue_3fory0K0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE6BoundsO_Tt0g5(rect2_16b, y, width, height);
  }

  v109 = rect2a;
  v110 = a2;
  if ((v125 & 4) != 0)
  {
    goto LABEL_56;
  }

  v111 = v124;
  if (v124.f64[0] == v122.f64[0] && v124.f64[1] == v122.f64[1])
  {
    v112 = 1;
    goto LABEL_53;
  }

LABEL_52:
  v112 = !v109;
  _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8EndPointO_Tt0g5Tm(&selRef_valueWithPoint_, 0x6E6F697469736F70, 0xE800000000000000, v111.f64[0], v111.f64[1]);
  v110 = a2;
LABEL_53:
  v113 = *(v110 + 48);
  v176 = *(v110 + 32);
  v177 = v113;
  *&v178[8] = 0;
  *v178 = 0;
  v114 = *(v48 + 48);
  v164 = *(v48 + 32);
  v165 = v114;
  v166 = 0uLL;
  if ((static CGAffineTransform.== infix(_:_:)() & 1) == 0)
  {
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE15AffineTransformO_Tt0g5(&v164);
  }

  v110 = a2;
  if ((v112 & 1) == 0)
  {
LABEL_57:
    v115 = 0;
    if (*(v48 + 168) == *(v110 + 168) && v135 == v133)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_56:
  v115 = 1;
LABEL_59:
  *&v151 = v46;
  *v192 = v137;
  *&v192[16] = v11;
  *&v192[24] = v10;
  *&v192[32] = v133;
  *&v192[40] = v204;
  *&v192[56] = v205;
  *&v192[72] = v134;
  *v187 = v138;
  *&v187[16] = v16;
  *&v187[24] = v15;
  *&v187[32] = v135;
  *&v187[40] = v206;
  *&v187[56] = v207;
  *&v187[72] = v134;
  if ((DisplayList.ViewUpdater.Platform.updateShadowAsync(layer:oldState:oldItem:newState:newItem:boundsChanged:)(v139, v110, v192, v48, v187, v115) & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_12:
  v53 = v142;
  v54 = *&v141;
  if (v126 == v142)
  {
    v57 = *(&v147 + 1);

    v55 = v132;
    if (v57 == v54)
    {
      v58 = *(&v144 + 1);
      v61 = v129;
      v60 = v127;
      goto LABEL_17;
    }
  }

  else
  {

    v55 = v132;
  }

  *&v192[8] = v200;
  *&v192[24] = v201;
  *&v192[40] = v202;
  *&v192[65] = v197;
  *&v192[81] = v198;
  *v192 = v46;
  *&v192[56] = v203;
  v192[64] = v129;
  *&v192[97] = v199;
  v192[113] = v53;
  *&v192[118] = v149;
  *&v192[114] = v148;
  *&v192[120] = v54;
  v58 = v197 >> 56;
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v192, v187);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v187 = *v19;
  *v19 = 0x8000000000000000;
  v60 = v127;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v192, v127, v55, v130, isUniquelyReferenced_nonNull_native);
  v61 = v129;
  *v19 = *v187;
LABEL_17:
  *&v187[8] = v200;
  *&v187[24] = v201;
  *&v187[40] = v202;
  *&v187[65] = v197;
  *&v187[81] = v198;
  *v187 = v46;
  *&v187[56] = v203;
  v187[64] = v61;
  *&v187[97] = v199;
  v187[113] = v53;
  *&v187[114] = v148;
  *&v187[118] = v149;
  *&v187[120] = v54;
  outlined destroy of DisplayList.ViewUpdater.ViewInfo(v187);
  v62 = 256;
  if ((v29 & 1) == 0)
  {
    v62 = 0;
  }

  v63 = 0x1000000;
  if (v53)
  {
    v63 = 0;
  }

  *a7 = v58;
  *(a7 + 8) = v60;
  *(a7 + 16) = v55;
  *(a7 + 24) = v131 & 3 | ((v135 != v133) << 16) | v62 | v63;
  *(a7 + 32) = v54;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityToggleValue(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue);
  }

  return result;
}

__n128 ResolvedStyledText.StringDrawing.metrics(in:layoutMargins:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (*(a1 + 32))
  {
    swift_beginAccess();
    v8 = v4[21];
    v9 = v4[22];
    v10 = v4[23];
    v11 = v4[24];
  }

  else
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
  }

  swift_beginAccess();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(1, *&static TextDrawingContext.shared, v14, a3, a4, v8, v9, v10, v11);
  swift_endAccess();
  v12 = v14[3];
  *(a2 + 32) = v14[2];
  *(a2 + 48) = v12;
  *(a2 + 64) = v15;
  result = v14[1];
  *a2 = v14[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t outlined copy of Text.Suffix?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined copy of Text.Suffix.Storage(result, a2, a3);
  }

  return result;
}

void one-time initialization function for off()
{
  v0 = MEMORY[0x193ABEC20](0x63696C7070414955, 0xED00006E6F697461);
  v1 = NSClassFromString(v0);

  if (v1)
  {
    v2 = [objc_opt_self() bundleForClass_];
    type metadata accessor for LocalizedTextStorage();
    v3 = swift_allocObject();
    *(v3 + 16) = 6710863;
    *(v3 + 24) = 0xE300000000000000;
    *(v3 + 32) = 0;
    v4 = MEMORY[0x1E69E7CC0];
    *(v3 + 40) = MEMORY[0x1E69E7CC0];
    *(v3 + 48) = xmmword_18DE1F410;
    *(v3 + 64) = v2;
    static Text.System.off = v3;
    unk_1EAB0EB30 = 0;
    byte_1EAB0EB38 = 1;
    qword_1EAB0EB40 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t Binding.init<A>(flattening:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = v12;
  v29 = v13;
  v30 = v14;
  KeyPath = swift_getKeyPath();
  v25 = a3;
  v26 = a4;
  v27 = KeyPath;
  v16 = type metadata accessor for AnyLocation();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in Binding.init<A>(flattening:), v24, a3, v16, MEMORY[0x1E69E73E0], a4, MEMORY[0x1E69E7410], v17);

  v18 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v31[5] = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  FlattenedCollectionLocation.init(base:)();
  v21 = v31[0];
  v31[3] = v20;
  v31[4] = v31[0];
  v31[0] = a2;
  v31[1] = v18;
  v31[2] = WitnessTable;
  type metadata accessor for FlattenedCollectionLocation();
  FlattenedCollectionLocation.get()();
  swift_getWitnessTable();
  type metadata accessor for LocationBox();
  v31[0] = v21;
  v22 = LocationBox.__allocating_init(_:)(v31);
  Binding.init(value:location:)(v11, v22, a5);
  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t static Text.System.off.getter()
{
  if (one-time initialization token for off != -1)
  {
    swift_once();
  }

  v0 = static Text.System.off;
  outlined copy of Text.Storage(static Text.System.off, unk_1EAB0EB30, byte_1EAB0EB38);

  return v0;
}

uint64_t FlattenedCollectionLocation.init(base:)()
{
  type metadata accessor for AnyLocation();
  type metadata accessor for Array();
  return swift_dynamicCast();
}

uint64_t *destroy for Text.Measurements.Context(uint64_t *result)
{
  v1 = result[3];
  if (v1 >> 1 != 0xFFFFFFFF)
  {
    return outlined consume of Text.Suffix.Storage(result[1], result[2], v1);
  }

  return result;
}

uint64_t FlattenedCollectionLocation.get()()
{
  v0 = FlattenedCollectionLocation.primaryLocation.getter();
  (*(*v0 + 120))(v0);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013PlacementTintF033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlacementTintKey>, &type metadata for PlacementTintKey, &protocol witness table for PlacementTintKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  if (_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013PlacementTintV033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0B5(a1, v4))
  {
  }

  else
  {
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI13TintPlacementV_AC13AnyShapeStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t FlattenedCollectionLocation.primaryLocation.getter()
{
  Collection.first.getter();
  result = v1;
  if (!v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.placementTint : EnvironmentValues, serialized@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013PlacementTintI033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013PlacementTintF033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt2g5(*a1);
    v4 = result;
  }

  *a2 = v4;
  return result;
}

uint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI13TintPlacementV_AC13AnyShapeStyleVTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<TintPlacement, AnyShapeStyle>, lazy protocol witness table accessor for type TintPlacement and conformance TintPlacement);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = v5;
  result = v4;
  v9 = a1 + 5;
  v10 = v1 - 1;
  while (1)
  {
    *(v3 + 64 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
    *(*(v3 + 56) + 8 * v7) = result;
    v11 = *(v3 + 16);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    *(v3 + 16) = v13;
    if (!v10)
    {
      goto LABEL_8;
    }

    v14 = *v9++;

    v7 = specialized __RawDictionaryStorage.find<A>(_:)();
    --v10;
    result = v14;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t instantiation function for generic protocol witness table for FlattenedCollectionLocation<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _OffsetEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect()
{
  result = lazy protocol witness table cache variable for type _OffsetEffect and conformance _OffsetEffect;
  if (!lazy protocol witness table cache variable for type _OffsetEffect and conformance _OffsetEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _OffsetEffect and conformance _OffsetEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _OffsetEffect and conformance _OffsetEffect;
  if (!lazy protocol witness table cache variable for type _OffsetEffect and conformance _OffsetEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _OffsetEffect and conformance _OffsetEffect);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for GeometryVisualEffect<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static TraitTransformerModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  outlined init with copy of _ViewListInputs(a2, v16);
  v6 = *(a2 + 64);
  v12[0] = v5;
  v12[1] = v6;
  v14 = type metadata accessor for TraitTransformerModifier.TransformTrait();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<ViewTraitCollection>();
  v9 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, closure #1 in Attribute.init<A>(_:)partial apply, v13, v14, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  v17 = v11;
  a3(v9, v16);
  return outlined destroy of _ViewListInputs(v16);
}

void type metadata accessor for TransitionBox<OffsetTransition>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type GeometryVisualEffect<_OffsetEffect> and conformance GeometryVisualEffect<A>()
{
  result = lazy protocol witness table cache variable for type GeometryVisualEffect<_OffsetEffect> and conformance GeometryVisualEffect<A>;
  if (!lazy protocol witness table cache variable for type GeometryVisualEffect<_OffsetEffect> and conformance GeometryVisualEffect<A>)
  {
    type metadata accessor for TransitionBox<OffsetTransition>(255, &lazy cache variable for type metadata for GeometryVisualEffect<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for GeometryVisualEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryVisualEffect<_OffsetEffect> and conformance GeometryVisualEffect<A>);
  }

  return result;
}

uint64_t static VisualEffectModifier._makeViewList(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(void), uint64_t a4)
{
  v7 = *a1;
  v8 = type metadata accessor for VisualEffectModifier();
  v10 = v7;
  return static ViewModifier.makeMultiViewList(modifier:inputs:body:)(&v10, a2, a3, a4, v8, &protocol witness table for VisualEffectModifier<A>);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TraitTransformerModifier<A>.TransformTrait()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for TraitTransformerModifier<A>.TransformTrait(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for ScrollPositionStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t TraitTransformerModifier.TransformTrait.value.getter@<X0>(void *a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v53 = a4;
  v59 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for ObservationTracking._AccessList();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v47 - v14;
  type metadata accessor for ObservationTracking._AccessList?();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v50 = a2;
  _TraitWritingModifier.AddTrait.traits.getter(a1, &v55);
  v24 = v55;
  if (!v55)
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v54[0] = v24;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v25 = static ObservationCenter._current;
  swift_beginAccess();
  v26 = pthread_getspecific(v25[2]);
  if (!v26)
  {
    v27 = swift_slowAlloc();
    pthread_setspecific(v25[2], v27);
    v57 = type metadata accessor for ObservationCenter();
    v25 = v25[3];
    *&v55 = v25;
    outlined init with take of Any(&v55, v27);

    v26 = v27;
  }

  outlined init with copy of Any(v26, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v28 = v54[1];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
    *(v28 + 24) = a1;
    goto LABEL_11;
  }

  v25 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v28 + 24);
  *(v28 + 24) = MEMORY[0x1E69E7CC0];
  (*(v8 + 56))(v20, 1, 1, v7);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v31 = v50;
  v48 = v17;
  v32 = *(StatusReg + 848);
  *(StatusReg + 848) = v20;
  v56 = v31;
  v57 = a3;
  v58 = v54;
  v33 = type metadata accessor for TraitTransformerModifier();
  a3 = v23;
  Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in TraitTransformerModifier.TransformTrait.value.getter, &v55, v33, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
  *(StatusReg + 848) = v32;
  v34 = v48;
  outlined init with take of ObservationTracking._AccessList?(v20, a3);
  outlined init with copy of ObservationTracking._AccessList?(a3, v34);
  if ((*(v8 + 48))(v34, 1, v7) == 1)
  {
    outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(a3, type metadata accessor for ObservationTracking._AccessList?);
    a3 = v34;
    goto LABEL_14;
  }

  v35 = v52;
  v50 = *(v8 + 32);
  v50(v52, v34, v7);
  (*(v8 + 16))(v51, v35, v7);
  a1 = *(v28 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v28 + 24) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v38 = a1[2];
  v37 = a1[3];
  if (v38 >= v37 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1, a1);
  }

  a1[2] = v38 + 1;
  v50(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v38, v51, v7);
  *(v28 + 24) = a1;
  (*(v8 + 8))(v52, v7);
LABEL_14:
  outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(a3, type metadata accessor for ObservationTracking._AccessList?);
  v39 = *(v28 + 24);
  v40 = *(v39 + 16);
  if (v40)
  {
    v43 = *(v8 + 16);
    v42 = v8 + 16;
    v41 = v43;
    v44 = v39 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v45 = *(v42 + 56);
    v52 = *(v28 + 24);

    do
    {
      v41(v10, v44, v7);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v25, v10);
      (*(v42 - 8))(v10, v7);
      v44 += v45;
      --v40;
    }

    while (v40);
  }

  *(v28 + 24) = v49;

  *v53 = v54[0];
  return result;
}

uint64_t closure #1 in closure #1 in TraitTransformerModifier.TransformTrait.value.getter(void (**a1)(char *), void *a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v10 = v14 - v9;
  v11 = *a1;
  v14[1] = *a2;
  ViewTraitCollection.value<A>(for:)(a3, a4, v14 - v9);
  v11(v10);
  return ViewTraitCollection.subscript.setter(v10, v12, a3, a4);
}

uint64_t static GeometryEffect.makeGeometryEffect(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  v9 = a2[3];
  v19 = a2[2];
  v20 = v9;
  v21 = a2[4];
  v22 = *(a2 + 20);
  v10 = a2[1];
  v17 = *a2;
  v18 = v10;
  LODWORD(v14[0]) = v8;
  type metadata accessor for _GraphValue();
  type metadata accessor for _GraphValue<_RotationEffect>(0, &lazy cache variable for type metadata for _GraphValue<_RotationEffect>, &type metadata for _RotationEffect, type metadata accessor for _GraphValue);
  if (swift_dynamicCast())
  {
    return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA09_RotationD0V_Tt3B5(v16, &v17, a3, a5);
  }

  LODWORD(v14[0]) = v8;
  type metadata accessor for _GraphValue<_RotationEffect>(0, &lazy cache variable for type metadata for _GraphValue<_Rotation3DEffect>, &type metadata for _Rotation3DEffect, type metadata accessor for _GraphValue);
  if (swift_dynamicCast())
  {
    return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA17_Rotation3DEffectV_Tt3B5(v16, &v17, a3, a5);
  }

  v12 = type metadata accessor for DefaultGeometryEffectProvider();
  v16 = v8;
  v14[2] = v19;
  v14[3] = v20;
  v14[4] = v21;
  v15 = v22;
  v14[0] = v17;
  v14[1] = v18;
  WitnessTable = swift_getWitnessTable();
  return static GeometryEffectProvider._makeGeometryEffect(modifier:inputs:body:)(&v16, v14, a3, a4, v12, WitnessTable, a5);
}

void type metadata accessor for _GraphValue<_RotationEffect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static GeometryEffectProvider._makeGeometryEffect(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v86 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(a2 + 48);
  *v84 = *(a2 + 32);
  *&v84[16] = v9;
  *v85 = *(a2 + 64);
  *&v85[16] = *(a2 + 80);
  v10 = *(a2 + 16);
  v82 = *a2;
  v83 = v10;
  if ((v84[4] & 0x20) == 0)
  {
    v11 = *(a2 + 48);
    v78 = *(a2 + 32);
    v79 = v11;
    v80 = *(a2 + 64);
    v81 = *(a2 + 80);
    v12 = *(a2 + 16);
    v76 = *a2;
    v77 = v12;
    return a3();
  }

  v57 = *&v84[4];
  v60 = a4;
  v61 = a3;
  v58 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  LODWORD(v64) = v8;
  v17 = *(a2 + 16);
  v76 = *a2;
  v77 = v17;
  v78 = *(a2 + 32);
  outlined init with copy of _GraphInputs(&v82, v68);
  v55 = a5;
  v56 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = static Animatable.makeAnimatable(value:inputs:)(&v64, &v76, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  v75[0] = v76;
  v75[1] = v77;
  v75[2] = v78;
  outlined destroy of _GraphInputs(v75);
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v20 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
  v73 = v82;
  v74 = v83;
  LODWORD(v59) = *v84;
  v71 = *&v84[4];
  v72 = *&v84[20];
  v22 = *&v85[12];
  v78 = *v84;
  v79 = *&v84[16];
  v80 = *v85;
  v81 = *&v85[16];
  v76 = v82;
  v77 = v83;
  outlined init with copy of _ViewInputs(&v82, v68);
  v23 = CachedEnvironment.animatedCGSize(for:)(&v76);
  v78 = *v84;
  v79 = *&v84[16];
  v80 = *v85;
  v81 = *&v85[16];
  v76 = v82;
  v77 = v83;
  v24 = CachedEnvironment.animatedPosition(for:)(&v76);
  v25 = swift_endAccess();
  v53 = v21;
  v54 = v19;
  *&v76 = __PAIR64__(v23, v19);
  *(&v76 + 1) = __PAIR64__(*&v84[28], v24);
  LODWORD(v77) = v21;
  MEMORY[0x1EEE9AC00](v25);
  v51 = type metadata accessor for GeometryEffectTransform();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _GraphValue<_RotationEffect>(0, &lazy cache variable for type metadata for Attribute<ViewTransform>, &type metadata for ViewTransform, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v76, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_4, v50, v51, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
  v28 = v68[0];
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v29 = *(swift_dynamicCastClassUnconditional() + 248);

  v30 = *v85;
  v31 = *&v85[8];
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v32 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v33 = specialized CachedEnvironment.attribute<A>(id:_:)(v32);
  swift_endAccess();
  *&v76 = __PAIR64__(v31, v30);
  DWORD2(v76) = v33;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  v34 = Attribute.init<A>(body:value:flags:update:)();
  v35 = v59 | 0x1C;
  v68[0] = v73;
  v68[1] = v74;
  *(v69 + 4) = v71;
  *(&v69[1] + 4) = v72;
  LODWORD(v69[0]) = v59 | 0x1C;
  HIDWORD(v69[1]) = v28;
  LODWORD(v70[0]) = v29;
  *(v70 + 4) = __PAIR64__(v34, v29);
  *(v70 + 12) = v22;
  v66[0] = v69[0];
  v66[1] = v69[1];
  v67[0] = v70[0];
  LODWORD(v67[1]) = HIDWORD(v22);
  v64 = v73;
  v65 = v74;
  v36 = outlined init with copy of _ViewInputs(v68, &v76);
  (v61)(v62, v36, &v64);
  v78 = v66[0];
  v79 = v66[1];
  v80 = v67[0];
  v81 = v67[1];
  v76 = v64;
  v77 = v65;
  outlined destroy of _ViewInputs(&v76);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*&v84[16]) & 1) == 0)
  {
    goto LABEL_17;
  }

  LODWORD(v60) = v28;
  v61 = v22;
  v37 = ++lastIdentity;
  v59 = v82;
  if ((v57 & 0x100) == 0)
  {
    v38 = *MEMORY[0x1E698D3F8];
LABEL_10:
    v66[0] = *v84;
    v66[1] = *&v84[16];
    v67[0] = *v85;
    LODWORD(v67[1]) = *&v85[16];
    v64 = v82;
    v65 = v83;
    swift_beginAccess();
    v39 = CachedEnvironment.animatedPosition(for:)(&v64);
    v66[0] = *v84;
    v66[1] = *&v84[16];
    v67[0] = *v85;
    LODWORD(v67[1]) = *&v85[16];
    v64 = v82;
    v65 = v83;
    v40 = CachedEnvironment.animatedCGSize(for:)(&v64);
    swift_endAccess();
    v41 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v62[0]);
    if ((v41 & 0x100000000) != 0)
    {
      v42 = v38;
    }

    else
    {
      v42 = v41;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v43 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v59, v64);
    if (v43)
    {
      v44 = *(v43 + 72);
    }

    else
    {
      v44 = 0;
    }

    *&v64 = __PAIR64__(v54, v37);
    *(&v64 + 1) = __PAIR64__(v40, v39);
    *&v65 = __PAIR64__(*&v85[4], v53);
    DWORD2(v65) = v42;
    BYTE12(v65) = v44;
    MEMORY[0x1EEE9AC00](v43);
    v45 = type metadata accessor for GeometryEffectDisplayList();
    v51 = v45;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for _GraphValue<_RotationEffect>(0, &lazy cache variable for type metadata for Attribute<DisplayList>, &type metadata for DisplayList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v64, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_2, v50, v45, MEMORY[0x1E69E73E0], v46, MEMORY[0x1E69E7410], v47);
    LOBYTE(v64) = 0;
    PreferencesOutputs.subscript.setter(v63[0], &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v22 = v61;
    v28 = v60;
LABEL_17:
    v64 = v73;
    v65 = v74;
    LODWORD(v66[0]) = v35;
    *(v66 + 4) = v71;
    *(&v66[1] + 4) = v72;
    HIDWORD(v66[1]) = v28;
    LODWORD(v67[0]) = v29;
    *(v67 + 4) = __PAIR64__(v34, v29);
    *(v67 + 12) = v22;
    result = outlined destroy of _ViewInputs(&v64);
    v48 = v58;
    *v58 = v62[0];
    v48[1] = v62[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v82, &v64);
  result = AGWeakAttributeGetAttribute();
  v38 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v63[0] = v37;
    v49 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v63);
    v49(&v64, 0);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _OffsetEffect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13_OffsetEffectV_Tt1B5(a1, v4);
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13_OffsetEffectV_Tt1B5(_DWORD *result, uint64_t a2)
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
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_OffsetEffect> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

uint64_t StaticIf<>.init<A>(in:then:else:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(*(a8 - 8) + 8))(a1, a8);
  type metadata accessor for StyleContextAcceptsPredicate();
  a2();
  type metadata accessor for StaticIf();
  return a4();
}

uint64_t LazyLayoutViewCache.addChildCache(_:seed:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v2 + 376);
  if (!*(v5 + 16))
  {
    return swift_endAccess();
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v7 & 1) == 0)
  {
    return swift_endAccess();
  }

  v8 = *(v5 + 56) + 16 * v6;
  v10 = *v8;
  v9 = *(v8 + 8);
  swift_endAccess();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  swift_beginAccess();
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for implicit closure #4 in LazyLayoutViewCache.addChildCache(_:seed:);
  *(v12 + 24) = v11;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v3 + 368);
  v14 = v34;
  *(v3 + 368) = 0x8000000000000000;
  v15 = v14;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v9);
  v18 = v14[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  if (v14[3] >= v20)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v3 + 368) = v14;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v14 = v34;
      *(v3 + 368) = v34;
      if (v21)
      {
        goto LABEL_12;
      }
    }

LABEL_11:
    v25 = partial apply for implicit closure #4 in LazyLayoutViewCache.addChildCache(_:seed:)();
    specialized _NativeDictionary._insert(at:key:value:)(v17, v10, v9, v25, v26, v14);

    goto LABEL_12;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
  v14 = v34;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v9);
  if ((v21 & 1) != (v23 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v22;
  *(v3 + 368) = v34;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v27 = v14[7];
  swift_weakInit();
  swift_weakAssign();
  v28 = v27 + 16 * v17;
  v29 = *(v28 + 8);
  v10 = (v28 + 8);
  v15 = v29;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v29;
  if ((v30 & 1) == 0)
  {
LABEL_17:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
    *v10 = v15;
  }

  v33 = v15[2];
  v32 = v15[3];
  if (v33 >= v32 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v15);
    *v10 = v15;
  }

  v15[2] = v33 + 1;
  outlined init with take of WeakBox<LazyLayoutViewCache>(&v34, &v15[v33 + 4], v31);
  swift_endAccess();

  swift_weakAssign();
}

uint64_t outlined init with take of WeakBox<LazyLayoutViewCache>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for WeakBox<LazyLayoutViewCache>, a3, type metadata accessor for LazyLayoutViewCache, type metadata accessor for WeakBox);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t storeEnumTagSinglePayload for SExpPrinter(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SExpPrinter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t EnvironmentValues.fontResolutionContext.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  if (v1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5(v3, a1);
  }

  else
  {
    v5[0] = *v1;
    v5[1] = 0;

    static EnvironmentValues.FontContextKey.value(in:)(v5, a1);
  }
}

uint64_t Text.shadow(color:radius:x:y:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5, double a6, double a7, double a8)
{
  type metadata accessor for TextShadowModifier();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a6;
  *(v16 + 32) = a7;
  *(v16 + 40) = a8;
  swift_retain_n();
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
  }

  v18 = *(a5 + 2);
  v17 = *(a5 + 3);
  if (v18 >= v17 >> 1)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, a5);
  }

  *(a5 + 2) = v18 + 1;
  v19 = &a5[16 * v18];
  *(v19 + 4) = v16;
  v19[40] = -64;
  return a2;
}

uint64_t initializeWithCopy for TextSizeCache.Entry(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 56);

  if (v7 >> 1 == 0xFFFFFFFF)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = *(a2 + 64);
    outlined copy of Text.Suffix.Storage(v8, v9, v7);
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 56) = v7;
    *(a1 + 64) = v10;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t destroy for TextSizeCache.Entry(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  v3 = *(a1 + 56);
  if (v3 >> 1 != 0xFFFFFFFF)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    return outlined consume of Text.Suffix.Storage(v4, v5, v3);
  }

  return result;
}

uint64_t Binding.selecting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = *(v4 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5, v11);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (one-time initialization token for _constantFalse != -1)
    {
      swift_once();
    }

    v14 = _constantFalse;
  }

  else
  {
    (*(v9 + 32))(v13, v8, v4);
    v14 = static Binding.== infix<A>(_:_:)(v2, v13, v4);
    (*(v9 + 8))(v13, v4);
  }

  return v14;
}

uint64_t static Binding.== infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BindingOperations.Equals();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  (*(v5 + 16))(v7, a2, a3, v10);
  (*(v5 + 32))(v12, v7, a3);
  v13 = type metadata accessor for Binding();
  WitnessTable = swift_getWitnessTable();
  Binding.projecting<A>(_:)(v12, v13, v8, WitnessTable, &v17);
  (*(v9 + 8))(v12, v8);
  return v17;
}

uint64_t instantiation function for generic protocol witness table for BindingOperations.Equals<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for Projection.get(base:) in conformance BindingOperations.Equals<A>@<X0>(_BYTE *a1@<X8>)
{
  result = BindingOperations.Equals.get(base:)();
  *a1 = result & 1;
  return result;
}

uint64_t TextShadowModifier.modify(style:environment:)(uint64_t a1)
{

  *(a1 + 304) = v1;
  return result;
}

void Dictionary<>.setShadow(shadowStyle:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = specialized static CoreColor.platformColor(resolvedColor:)(*a1, *(a1 + 4), *(a1 + 8), *(a1 + 12));
  if (v4)
  {
    v10 = v4;
    v5 = CoreMakeNSShadow(v4, v2, v3, v1);
    if (v5)
    {
      v6 = v5;
      if (one-time initialization token for kitShadow != -1)
      {
        swift_once();
      }

      v7 = static NSAttributedStringKey.kitShadow;
      v11[3] = type metadata accessor for NSObject();
      v11[0] = v6;
      v8 = v7;
      v9 = v6;
      specialized Dictionary.subscript.setter(v11, v8);
    }

    else
    {
    }
  }
}

id CoreMakeNSShadow(void *a1, double a2, double a3, double a4)
{
  v7 = a1;
  v8 = objc_alloc_init(CoreShadowClass());
  [v8 setShadowOffset:{a2, a3}];
  [v8 setShadowBlurRadius:a4];
  [v8 setShadowColor:v7];

  return v8;
}

id CoreShadowClass()
{
  if (CoreShadowClass_once != -1)
  {
    CoreShadowClass_cold_1();
  }

  if ((CoreShadowClass_isValid & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"Invalid shadow class" format:&stru_1F00C2360];
  }

  v0 = CoreShadowClass_shadowClass;

  return v0;
}

Class __CoreShadowClass_block_invoke()
{
  result = NSClassFromString(&cfstr_Nsshadow.isa);
  CoreShadowClass_shadowClass = result;
  CoreShadowClass_isValid = result != 0;
  return result;
}

uint64_t one-time initialization function for kitShadow()
{
  result = MEMORY[0x193ABEC20](0x776F64616853534ELL, 0xE800000000000000);
  static NSAttributedStringKey.kitShadow = result;
  return result;
}

BOOL specialized static Text.Measurements.Context.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v4 = a1[1];
  v3 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = *a2;
  v9 = a2[1];
  v8 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  if (v2 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v2 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
  if (v6 >> 1 == 0xFFFFFFFF)
  {
    outlined copy of Text.Suffix?(a1[1], v3, v6);
    outlined copy of Text.Suffix?(v9, v8, v11);
    if (v12 == 0x1FFFFFFFELL)
    {
      outlined consume of Text.Suffix?(v4, v3, v6);
      return 1;
    }

    goto LABEL_11;
  }

  if (v12 == 0x1FFFFFFFELL)
  {
    outlined copy of Text.Suffix?(a1[1], v3, v6);
    outlined copy of Text.Suffix?(v9, v8, v11);
    outlined copy of Text.Suffix?(v4, v3, v6);
    outlined consume of Text.Suffix.Storage(v4, v3, v6);
LABEL_11:
    outlined consume of Text.Suffix?(v4, v3, v6);
    outlined consume of Text.Suffix?(v9, v8, v11);
    return 0;
  }

  v18 = a1[1];
  v19 = v3;
  v20 = v6;
  v21 = v5;
  v15.i64[0] = v9;
  v15.i64[1] = v8;
  v16 = v11;
  v17 = v10;
  outlined copy of Text.Suffix?(v4, v3, v6);
  outlined copy of Text.Suffix?(v9, v8, v11);
  outlined copy of Text.Suffix?(v4, v3, v6);
  outlined copy of Text.Suffix.Storage(v4, v3, v6);
  v14 = specialized static Text.Suffix.Storage.== infix(_:_:)(&v18, &v15);
  outlined consume of Text.Suffix.Storage(v15.i64[0], v15.i64[1], v16);
  outlined consume of Text.Suffix.Storage(v18, v19, v20);
  outlined consume of Text.Suffix.Storage(v4, v3, v6);
  outlined consume of Text.Suffix?(v4, v3, v6);
  return v14;
}

uint64_t TextShadowModifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t Font.platformFont(in:)(__int128 *a1, uint64_t a2)
{
  v3 = a1[2];
  v14 = a1[1];
  v15 = v3;
  v13 = *a1;
  outlined init with copy of Font.Context(&v13, v12);

  v9 = v13;
  v10 = v14;
  v11 = v15;
  v16[0] = v13;
  v16[1] = v14;
  v4 = MEMORY[0x1E69E7CC0];
  *&v17 = v15;
  *(&v17 + 1) = MEMORY[0x1E69E7CC0];
  v12[1] = v13;
  v12[2] = v14;
  v12[3] = v17;
  *&v12[0] = a2;
  *(&v12[0] + 1) = MEMORY[0x1E69E7CC0];
  outlined init with copy of Font.Context(v16, v18);
  v5 = one-time initialization token for shared;

  if (v5 != -1)
  {
    swift_once();
  }

  specialized ObjectCache.subscript.getter(v12);
  v7 = v6;
  outlined destroy of Font.FontCache.Key(v12);
  v18[0] = v9;
  v18[1] = v10;
  v19 = v11;
  v20 = v4;
  outlined destroy of Font.Context(v18);
  return v7;
}

uint64_t closure #1 in closure #2 in static CombinedVisualEffect._makeVisualEffect(effect:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for CombinedVisualEffect();
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _ScaleEffect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12_ScaleEffectV_Tt1B5(a1, v4);
}

uint64_t static OrOperationViewInputPredicate.evaluate(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[1];
  v12 = *a1;
  v13 = v8;
  v14 = a1[2];
  if ((*(a4 + 8))(&v12))
  {
    v9 = 1;
  }

  else
  {
    v10 = a1[1];
    v12 = *a1;
    v13 = v10;
    v14 = a1[2];
    v9 = (*(a5 + 8))(&v12, a3, a5);
  }

  return v9 & 1;
}

double closure #1 in PlatformViewLayoutEngine.explicitAlignment(_:at:)(_OWORD *a1, double a2, double a3)
{
  type metadata accessor for PlatformViewLayoutEngine();
  type metadata accessor for ViewLeafView();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 88);
  v8 = swift_checkMetadataState();
  v7(&v10, v8, AssociatedConformanceWitness, a2, a3);
  result = *&v10;
  *a1 = v10;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityEmptyValue(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue;
  if (!lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue;
  if (!lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue;
  if (!lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue;
  if (!lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue);
  }

  return result;
}

uint64_t View.onChange<A>(of:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v26 = a4;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16(0, v14, v15, v11);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - v20;
  (*(v10 + 16))(v13, a1, a5, v19);
  (*(v10 + 32))(v21, v13, a5);
  v22 = &v21[*(v17 + 36)];
  *v22 = a2;
  *(v22 + 1) = a3;
  View.modifier<A>(_:)(v21, v26, v17);
  v23 = *(v18 + 8);

  return v23(v21, v17);
}

{
  return View.onChange<A>(of:perform:)(a1, a2, a3, a4, a5, a6);
}

void type metadata accessor for ImageProviderBox<Image.CGImageProvider>()
{
  if (!lazy cache variable for type metadata for ImageProviderBox<Image.CGImageProvider>)
  {
    lazy protocol witness table accessor for type Image.CGImageProvider and conformance Image.CGImageProvider();
    v0 = type metadata accessor for ImageProviderBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ImageProviderBox<Image.CGImageProvider>);
    }
  }
}

double Image.init(decorative:scale:orientation:)(uint64_t a1, char a2, double a3)
{
  type metadata accessor for ImageProviderBox<Image.CGImageProvider>();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 32) = a2;
  result = 0.0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type Image.CGImageProvider and conformance Image.CGImageProvider()
{
  result = lazy protocol witness table cache variable for type Image.CGImageProvider and conformance Image.CGImageProvider;
  if (!lazy protocol witness table cache variable for type Image.CGImageProvider and conformance Image.CGImageProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.CGImageProvider and conformance Image.CGImageProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.CGImageProvider and conformance Image.CGImageProvider;
  if (!lazy protocol witness table cache variable for type Image.CGImageProvider and conformance Image.CGImageProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.CGImageProvider and conformance Image.CGImageProvider);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Image.CGImageProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Image.CGImageProvider and conformance Image.CGImageProvider();
  *(a1 + 8) = result;
  return result;
}

uint64_t Image.CGImageProvider.resolve(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *v2;
  Width = CGImageGetWidth(v8);
  Height = CGImageGetHeight(v8);
  v52 = *(v2 + 16);
  v10 = *a1;
  v11 = a1[1];
  *&v84 = *a1;
  *(&v84 + 1) = v11;
  LOBYTE(v58) = 2;

  v12 = EnvironmentValues.imageIsTemplate(renderingMode:)(&v58);

  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  v13 = 0x3F8000003F800000;
  if ((v12 & 1) == 0)
  {
    v13 = 0;
  }

  v51 = v13;
  if (v12)
  {
    v14 = 2143289344;
  }

  else
  {
    v14 = 0;
  }

  v53 = (v12 & 1) == 0;
  v54 = v14;
  v88 = v53;
  outlined copy of GraphicsImage.Contents(v6, 0);
  v15 = CGImageGetColorSpace(v8);
  if (v15)
  {
    v16 = v15;
    v17 = CGColorSpaceUsesITUR_2100TF(v15);
    outlined consume of GraphicsImage.Contents?(v6, 0);

    v18 = 0;
    if (v17)
    {
      *&v84 = v10;
      *(&v84 + 1) = v11;
      LOBYTE(v93) = *(a1 + *(type metadata accessor for ImageResolutionContext() + 36));

      EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v93, &v58);

      v18 = v58;
    }
  }

  else
  {
    outlined consume of GraphicsImage.Contents?(v6, 0);
    v18 = 0;
  }

  v19 = Width;
  v20 = Height;
  if (v11)
  {

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v10);
  }

  else
  {
    v84 = v10;

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = specialized static ShouldRedactContentKey.value(in:)(&v84);
  }

  v22 = v51;
  if (ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5)
  {
    v23 = swift_allocObject();
    if (one-time initialization token for foreground != -1)
    {
      swift_once();
    }

    *&v84 = v10;
    *(&v84 + 1) = v11;
    (*(*static Color.foreground + 120))(&v93, &v84);
    v24 = v96;
    v25 = v94;
    v26 = v95 * 0.16;
    *(v23 + 16) = v93;
    *(v23 + 24) = v25;
    *(v23 + 28) = v26;
    *(v23 + 32) = v24;
    outlined consume of GraphicsImage.Contents?(v6, 0);
    v27 = 4;
  }

  else
  {
    v27 = 0;
    v23 = v6;
  }

  *&v84 = v23;
  v49 = v27;
  BYTE8(v84) = v27;
  *(&v84 + 9) = v92[0];
  HIDWORD(v84) = *(v92 + 3);
  *&v85 = v7;
  *(&v85 + 1) = v19;
  *v86 = v20;
  v28 = v52;
  v86[8] = v52;
  *&v86[9] = v90;
  v86[11] = v91;
  *&v86[12] = v51;
  *&v86[20] = v51;
  *&v86[28] = v54;
  v87[0] = v53;
  *&v87[1] = *v89;
  *&v87[4] = *&v89[3];
  memset(&v87[8], 0, 32);
  *&v87[40] = 258;
  v87[42] = 1;
  v87[43] = v18;
  v29 = *(v3 + 48);
  v50 = v18;
  if (v29)
  {
    v30 = *(v3 + 32);
    v31 = *(v3 + 24);
    v32 = *(v3 + 40) & 1;
    outlined copy of Text.Storage(v31, v30, *(v3 + 40) & 1);
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v32 = 0x1FFFFFFFELL;
  }

  v33 = *(v3 + 56);
  v82 = *v87;
  v83[0] = *&v87[16];
  *(v83 + 12) = *&v87[28];
  v78 = v84;
  v79 = v85;
  v80 = *v86;
  v81 = *&v86[16];
  outlined init with copy of GraphicsImage(&v84, &v58);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  if (BYTE8(v84) == 255)
  {
    v42 = 0;
    v41 = 0;
    v40 = 0;
  }

  else if (BYTE8(v84) == 2)
  {
    v47 = v33;
    v34 = *(v84 + 32);
    v35 = *(v84 + 48);
    v36 = *(v84 + 16);
    outlined copy of Image.Location(v34);
    v37 = v35;
    outlined copy of Image.Location(v34);
    v38 = [v36 styleMask];
    v58 = v34;
    _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)(v38, &v58, &v55);

    v28 = v52;
    v39 = v34;
    v33 = v47;
    outlined consume of Image.Location(v39);

    v22 = v51;
    v40 = v55;
    v41 = v56;
    v42 = v57 & 0xFD;
  }

  else
  {
    v42 = 0;
    v40 = 0;
    v41 = (v87[0] & 1) == 0;
  }

  v77 = 1;
  v43 = v83[0];
  *(a2 + 64) = v82;
  *(a2 + 80) = v43;
  *(a2 + 96) = v83[1];
  v44 = v79;
  *a2 = v78;
  *(a2 + 16) = v44;
  v45 = v81;
  *(a2 + 32) = v80;
  *(a2 + 48) = v45;
  *(a2 + 112) = v31;
  *(a2 + 120) = v30;
  *(a2 + 128) = v32;
  *(a2 + 136) = v29;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = v33;
  *(a2 + 161) = 3;
  *(a2 + 164) = 0;
  *(a2 + 168) = 1;
  *(a2 + 176) = v40;
  *(a2 + 184) = v41;
  *(a2 + 186) = v42;
  v58 = v23;
  v59 = v49;
  *v60 = v92[0];
  *&v60[3] = *(v92 + 3);
  v61 = v7;
  v62 = v19;
  v63 = v20;
  v64 = v28;
  v66 = v91;
  v65 = v90;
  v67 = v22;
  v68 = v22;
  v69 = v54;
  v70 = v53;
  *&v71[3] = *&v89[3];
  *v71 = *v89;
  v72 = 0u;
  v73 = 0u;
  v74 = 258;
  v75 = 1;
  v76 = v50;
  return outlined destroy of GraphicsImage(&v58);
}

uint64_t protocol witness for Collection.index(after:) in conformance SectionAccumulator.RowIDs@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  if (*(*v2 + 16))
  {
    v5 = *(*v2 + 80);
  }

  else
  {
    v5 = 0;
  }

  result = SectionAccumulator.RowIDs.endIndex.getter();
  if (v4 >= v5 && v4 < result)
  {
    *a2 = v4 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t View.geometryEffect<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v4 = type metadata accessor for VisualEffectModifier();
  return View.modifier<A>(_:)(v6, a3, v4);
}

uint64_t sub_18D31851C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t View.disabled(_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  KeyPath = swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v13[0] = KeyPath;
  v13[1] = a6;
  v13[2] = v10;
  type metadata accessor for _EnvironmentKeyTransformModifier<Bool>();
  View.modifier<A>(_:)(v13, a2, v11);
}

void type metadata accessor for _EnvironmentKeyTransformModifier<Bool>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>)
  {
    v0 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>);
    }
  }
}

uint64_t specialized getter of needsToPlace #1 in LazySubviewPlacements.updateValue()(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  LODWORD(v12) = *a1;
  if (v12 == 2)
  {
    v15 = *(a2 + 176);
    v16 = *(a2 + 144);
    v44 = *(a2 + 160);
    v45 = v15;
    v17 = *(a2 + 176);
    v46 = *(a2 + 192);
    v18 = *(a2 + 112);
    v41[0] = *(a2 + 96);
    v41[1] = v18;
    v19 = *(a2 + 144);
    v21 = *(a2 + 96);
    v20 = *(a2 + 112);
    v42 = *(a2 + 128);
    v43 = v19;
    v37 = v44;
    v38 = v17;
    v39 = *(a2 + 192);
    v33 = v21;
    v34 = v20;
    v47 = *(a2 + 208);
    v40 = *(a2 + 208);
    v35 = v42;
    v36 = v16;
    v22 = *(a4 + 32);
    v12 = a4;
    outlined init with copy of PlacementState(v41, v48);
    v22(v32, a3, v12);
    LOBYTE(v12) = PlacementState.needsToPlace(newVisibleRect:oldVisibleRect:axes:)(v32[0], a5, a6, a7, a8, a9, a10, a11, a12);
    v48[4] = v37;
    v48[5] = v38;
    v48[6] = v39;
    v49 = v40;
    v48[0] = v33;
    v48[1] = v34;
    v48[2] = v35;
    v48[3] = v36;
    outlined destroy of PlacementState(v48);
    swift_beginAccess();
    *a1 = v12 & 1;
  }

  return v12 & 1;
}

BOOL PlacementState.needsToPlace(newVisibleRect:oldVisibleRect:axes:)(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v62 = v9[2];
  v64 = v9[3];
  v61 = v9[4];
  v63 = v9[5];
  v58 = v9[6];
  v60 = v9[7];
  v57 = v9[8];
  v15 = v9[10];
  v59 = v9[9];
  v17 = v9[11];
  v16 = v9[12];
  v18 = v9[13];
  if (one-time initialization token for v7 != -1)
  {
    swift_once();
  }

  v19 = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_7:
      v70.origin.x = v15;
      v70.origin.y = v17;
      v70.size.width = v16;
      v70.size.height = v18;
      v79.origin.x = a2;
      v79.origin.y = a3;
      v79.size.width = a4;
      v79.size.height = a5;
      return !CGRectContainsRect(v70, v79);
    }
  }

  else if (static Semantics.forced < v19)
  {
    goto LABEL_7;
  }

  if (a1)
  {
    v71.origin.x = a2;
    v71.origin.y = a3;
    v71.size.width = a4;
    v71.size.height = a5;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    if (!CGRectIsNull(v71))
    {
      v24 = a2 + a4;
      if (a2 + a4 >= a2)
      {
        v25 = a2;
      }

      else
      {
        v25 = a2 + a4;
      }

      if (a2 + a4 < a2)
      {
        v24 = a2;
      }

      if (v25 > v24)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v24;
      }

      if (v25 > v24)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v25;
      }
    }

    v72.origin.y = a7;
    v72.origin.x = a6;
    v72.size.width = a8;
    v72.size.height = a9;
    v26 = 0.0;
    if (!CGRectIsNull(v72))
    {
      v27 = a6 + a8;
      if (a6 + a8 >= a6)
      {
        v28 = a6;
      }

      else
      {
        v28 = a6 + a8;
      }

      if (a6 + a8 < a6)
      {
        v27 = a6;
      }

      if (v28 > v27)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v27;
      }

      if (v28 > v27)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v28;
      }
    }

    if (v22 != v21 || v23 != v26)
    {
      v75.origin.x = v58;
      v75.size.height = v59;
      v75.origin.y = v60;
      v75.size.width = v57;
      IsNull = CGRectIsNull(v75);
      v38 = v58 + v57;
      if (v58 + v57 >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = v58 + v57;
      }

      if (v58 > v38)
      {
        v38 = v58;
      }

      if (v39 > v38)
      {
        v38 = 0.0;
        v39 = 0.0;
      }

      if (IsNull)
      {
        v39 = 0.0;
        v38 = 0.0;
      }

      v55 = v38;
      v56 = v39;
      v76.origin.x = v62;
      v76.size.height = v63;
      v76.origin.y = v64;
      v76.size.width = v61;
      v40 = CGRectIsNull(v76);
      v41 = v62 + v61;
      if (v62 + v61 >= v62)
      {
        v42 = v62;
      }

      else
      {
        v42 = v62 + v61;
      }

      if (v62 > v41)
      {
        v41 = v62;
      }

      if (v42 > v41)
      {
        v43 = 0.0;
      }

      else
      {
        v43 = v41;
      }

      if (v42 > v41)
      {
        v44 = 0.0;
      }

      else
      {
        v44 = v42;
      }

      if (v40)
      {
        v44 = 0.0;
        v45 = 0.0;
      }

      else
      {
        v45 = v43;
      }

      v46 = v22 - v21;
      if (v22 - v21 == 0.0)
      {
        v46 = v23 - v26;
      }

      result = 1;
      if (v46 <= 0.0)
      {
        if (v23 < v55 || v22 < v44)
        {
          return result;
        }
      }

      else if (v56 < v22 || v45 < v23)
      {
        return result;
      }
    }
  }

  if ((a1 & 2) == 0)
  {
    return 0;
  }

  v73.origin.x = a2;
  v73.origin.y = a3;
  v73.size.width = a4;
  v73.size.height = a5;
  v29 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  if (!CGRectIsNull(v73))
  {
    v32 = a3 + a5;
    if (a3 + a5 >= a3)
    {
      v33 = a3;
    }

    else
    {
      v33 = a3 + a5;
    }

    if (a3 + a5 < a3)
    {
      v32 = a3;
    }

    if (v33 > v32)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = v32;
    }

    if (v33 > v32)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v33;
    }
  }

  v74.origin.x = a6;
  v74.origin.y = a7;
  v74.size.width = a8;
  v74.size.height = a9;
  v34 = 0.0;
  if (!CGRectIsNull(v74))
  {
    v35 = a7 + a9;
    if (a7 + a9 >= a7)
    {
      v36 = a7;
    }

    else
    {
      v36 = a7 + a9;
    }

    if (a7 + a9 < a7)
    {
      v35 = a7;
    }

    if (v36 > v35)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = v35;
    }

    if (v36 > v35)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v36;
    }
  }

  if (v30 == v29 && v31 == v34)
  {
    return 0;
  }

  v77.size.width = v57;
  v77.origin.x = v58;
  v77.origin.y = v60;
  v77.size.height = v59;
  v69 = 0.0;
  v47 = 0.0;
  v48 = 0.0;
  if (!CGRectIsNull(v77))
  {
    v49 = v60 + v59;
    if (v60 + v59 >= v60)
    {
      v50 = v60;
    }

    else
    {
      v50 = v60 + v59;
    }

    if (v60 > v49)
    {
      v49 = v60;
    }

    if (v50 > v49)
    {
      v48 = 0.0;
    }

    else
    {
      v48 = v49;
    }

    if (v50 > v49)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = v50;
    }
  }

  v78.size.width = v61;
  v78.origin.x = v62;
  v78.origin.y = v64;
  v78.size.height = v63;
  v51 = CGRectIsNull(v78);
  v52 = 0.0;
  if (!v51)
  {
    v52 = v64 + v63;
    if (v64 + v63 >= v64)
    {
      v53 = v64;
    }

    else
    {
      v53 = v64 + v63;
    }

    if (v64 > v52)
    {
      v52 = v64;
    }

    if (v53 > v52)
    {
      v52 = 0.0;
      v53 = 0.0;
    }

    v69 = v53;
  }

  v54 = v30 - v29;
  if (v30 - v29 == 0.0)
  {
    v54 = v31 - v34;
  }

  result = 1;
  if (v54 > 0.0)
  {
    if (v47 < v30 || v52 < v31)
    {
      return result;
    }

    return 0;
  }

  if (v31 >= v48 && v30 >= v69)
  {
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for emphasizedBody()
{
  result = MEMORY[0x193ABEC20](0xD00000000000001FLL, 0x800000018DD7E150);
  static Font.PrivateTextStyle.emphasizedBody = result;
  return result;
}

void **static Font.system(_:design:weight:)(void **result, unsigned __int8 *a2, uint64_t a3, char a4)
{
  v6 = *result;
  v7 = *a2;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
LABEL_9:
      v8 = *MEMORY[0x1E69658C8];
      if (!*MEMORY[0x1E69658C8])
      {
        __break(1u);
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    if (v7 != 3)
    {
LABEL_11:
      v8 = 0;
LABEL_14:
      type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for FontBox<Font.PrivateTextStyleProvider>, lazy protocol witness table accessor for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider, &type metadata for Font.PrivateTextStyleProvider, type metadata accessor for FontBox);
      v10 = swift_allocObject();
      *(v10 + 16) = v6;
      *(v10 + 24) = v8;
      *(v10 + 32) = a3;
      *(v10 + 40) = a4 & 1;
      v11 = v6;
      return v10;
    }

    v7 = MEMORY[0x1E69658C0];
    v8 = *MEMORY[0x1E69658C0];
    if (*MEMORY[0x1E69658C0])
    {
LABEL_13:
      v9 = v8;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v7)
  {
    v8 = *MEMORY[0x1E69658B8];
    if (*MEMORY[0x1E69658B8])
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_9;
  }

  v8 = *MEMORY[0x1E69658D0];
  if (*MEMORY[0x1E69658D0])
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t Layout.spacing(subviews:cache:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  LODWORD(v22) = *a1;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews();
  if (Collection.isEmpty.getter())
  {
    if (one-time initialization token for zero != -1)
    {
LABEL_29:
      swift_once();
    }

    v6 = byte_1ED52A120;
    *a2 = static ViewSpacing.zero;
    *(a2 + 8) = v6;
  }

  else
  {
    v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v22 = v8;
    v9 = 2;
    LOBYTE(v23) = 2;
    v10 = *(v3 + 16);

    if (v10)
    {
      v19 = a2;
      a2 = 0;
      v11 = *MEMORY[0x1E698D3F8];
      v12 = (v3 + 32);
      while (1)
      {
        if (v4)
        {
          if (a2 >= v10)
          {
            goto LABEL_27;
          }

          v15 = (v3 + 32 + 12 * a2);
        }

        else
        {
          v15 = v12;
          if (a2 >= v10)
          {
            goto LABEL_28;
          }
        }

        if (a2 >= v10)
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (*v15 == v11)
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

        v17 = *InputValue;
        v18 = one-time initialization token for lockAssertionsAreEnabled;

        if (v18 != -1)
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

        ++a2;
        (*(*v17 + 112))(&v21);

        v13 = v21;
        v14 = v23;
        if (v23 == 2)
        {
          v14 = v5;
        }

        LOBYTE(v23) = v14;
        LOBYTE(v21) = v14 & 1;
        AbsoluteEdge.Set.init(_:layoutDirection:)(&v21, &v20);
        v21 = v13;

        Spacing.incorporate(_:of:)(&v20, &v21);

        v10 = *(v3 + 16);
        v12 += 2;
        if (a2 == v10)
        {
          v8 = v22;
          v9 = v23;
          a2 = v19;
          goto LABEL_25;
        }
      }

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_25:

      *a2 = v8;
      *(a2 + 8) = v9;
    }
  }

  return result;
}

{
  return Layout.spacing(subviews:cache:)(a1, a2);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance CountViews<A, B>.CountHelper()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for CountViews<A, B>.CountHelper(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #2 in static CountViews._makeViewList(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = outlined init with copy of _ViewListOutputs.Views(v2 + 16, a2);
  v6 = *(v2 + 72);
  v7 = *(v2 + 80);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  return result;
}

Swift::Int __swiftcall _ViewList_Group.estimatedCount(style:)(SwiftUI::_ViewList_IteratorStyle style)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *style.value;
    for (i = *v1 + 32; ; i += 48)
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(i, v11, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      v6 = v12;
      v7 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v10 = v4;
      result = (*(v7 + 24))(&v10, v6, v7);
      v9 = __OFADD__(v3, result);
      v3 += result;
      if (v9)
      {
        break;
      }

      outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(v11, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      if (!--v2)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t AccessibilityTextModifier.__deallocating_deinit()
{
  outlined consume of Text?(v0[3], v0[4], v0[5], v0[6]);

  return swift_deallocClassInstance();
}

uint64_t key path getter for EnvironmentValues.backgroundProminence : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA20BackgroundProminenceVAAE0I0VG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA20BackgroundProminenceVAAE0S0VG_Tt0g5(*a1);
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

void LazyPreferencePrefetchItems.value.getter(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = a2;
    if ((*(*a2 + 360))())
    {
      if (one-time initialization token for v7 != -1)
      {
        goto LABEL_29;
      }

      while (1)
      {
        v3 = static Semantics.v7;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
            return;
          }
        }

        else if (static Semantics.forced < v3)
        {
          return;
        }

        swift_beginAccess();
        if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(v2[4]))
        {
          break;
        }

        v4 = MEMORY[0x1E69E7CC0];
        AGGraphRegisterDependency();
        type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
        v5 = *AGGraphGetValue();
        v19 = v4;
        swift_beginAccess();
        v6 = v2[22];
        v7 = 1 << *(v6 + 32);
        v8 = -1;
        if (v7 < 64)
        {
          v8 = ~(-1 << v7);
        }

        v9 = v8 & *(v6 + 64);
        v10 = (v7 + 63) >> 6;

        v11 = 0;
LABEL_14:
        while (v9)
        {
LABEL_19:
          v13 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          v14 = *(*(v6 + 56) + ((v11 << 9) | (8 * v13)));
          if ((*(v14 + 212) & 0xFE) == 2)
          {
            v15 = *(v5 + 16) + 1;
            v16 = (v5 + 32);
            while (--v15)
            {
              v17 = *v16;
              v16 += 10;
              if (v17 == v14)
              {
                goto LABEL_14;
              }
            }

            v18 = swift_retain_n();
            MEMORY[0x193ABF170](v18);
            if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v2 = &v19;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }

        while (1)
        {
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12 >= v10)
          {

            return;
          }

          v9 = *(v6 + 64 + 8 * v12);
          ++v11;
          if (v9)
          {
            v11 = v12;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_29:
        swift_once();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t static ViewGeometry.invalidValue.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for invalidValue != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_1ED53A0F8;
  v7[0] = static ViewGeometry.invalidValue;
  v7[1] = *&qword_1ED53A0F8;
  v2 = xmmword_1ED53A108;
  v3 = unk_1ED53A118;
  v7[2] = xmmword_1ED53A108;
  v7[3] = unk_1ED53A118;
  *a1 = static ViewGeometry.invalidValue;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of ViewGeometry(v7, &v6);
}

uint64_t EnvironmentValues.defaultForegroundColor.setter(uint64_t a1)
{
  v3 = *v1;
  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022DefaultForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(v1, a1);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022DefaultForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v3, *v1);
  }
}

uint64_t storeEnumTagSinglePayload for AccessibilityValueStorage(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

BOOL specialized static AccessibilityValueStorage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AnyAccessibilityValue?(a1, v12);
  outlined init with copy of AnyAccessibilityValue?(a2, &v14);
  if (v13)
  {
    outlined init with copy of AnyAccessibilityValue?(v12, v11);
    if (*(&v15 + 1))
    {
      v9[0] = v14;
      v9[1] = v15;
      v10 = v16;
      v4 = specialized AnyAccessibilityValue.isEqual(to:)(v9, v11);
      outlined destroy of AnyAccessibilityValue(v9);
      outlined destroy of AnyAccessibilityValue(v11);
      _sypSgWOhTm_11(v12, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
      if ((v4 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    outlined destroy of AnyAccessibilityValue(v11);
LABEL_12:
    outlined destroy of AccessibilityNumeric?(v12, type metadata accessor for (AnyAccessibilityValue?, AnyAccessibilityValue?));
    return 0;
  }

  if (*(&v15 + 1))
  {
    goto LABEL_12;
  }

  _sypSgWOhTm_11(v12, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
LABEL_7:
  v5 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v5)
    {

      v7 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV_Tt1g5(v6, v5);

      return (v7 & 1) != 0;
    }
  }

  else if (!v5)
  {
    swift_bridgeObjectRelease_n();
    return 1;
  }

  return 0;
}

uint64_t outlined init with copy of AnyAccessibilityValue?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CountViews.CountHelper.value.getter@<X0>(int a1@<W0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t, uint64_t)@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v74 = a7;
  v11 = a3;
  v71 = a8;
  v83 = *MEMORY[0x1E69E9840];
  v14 = a3 & 1;
  v67 = type metadata accessor for ObservationTracking._AccessList();
  v70 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v73 = &v61 - v19;
  type metadata accessor for ObservationTracking._AccessList?();
  v68 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v69 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v61 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v61 - v25);
  v27 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v66 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v61 - v32;
  v81 = a2;
  v82 = v14;
  if (v11)
  {
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
LABEL_21:
      __break(1u);
LABEL_22:
      a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 2) + 1, 1, a2);
      *(v11 + 24) = a2;
      goto LABEL_12;
    }

    v81 = a2 | (CurrentAttribute << 32);
    v82 = 1;
  }

  v76 = v33;
  v77 = v26;
  MEMORY[0x1EEE9AC00](CurrentAttribute);
  v26 = &v61 - 10;
  *(&v61 - 8) = a4;
  *(&v61 - 7) = a5;
  v34 = v74;
  *(&v61 - 6) = a6;
  *(&v61 - 5) = v34;
  *(&v61 - 8) = a1;
  *(&v61 - 3) = a2;
  *(&v61 - 16) = v14;
  *(&v61 - 1) = &v81;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  a2 = static ObservationCenter._current;
  swift_beginAccess();
  v35 = pthread_getspecific(*(a2 + 2));
  v36 = v75;
  if (!v35)
  {
    v37 = swift_slowAlloc();
    pthread_setspecific(*(a2 + 2), v37);
    v80 = type metadata accessor for ObservationCenter();
    a2 = *(a2 + 3);
    *&v79 = a2;
    outlined init with take of Any(&v79, v37);

    v35 = v37;
  }

  outlined init with copy of Any(v35, &v79);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v11 = v78;
  v38 = AGGraphGetCurrentAttribute();
  if (v38 == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_21;
  }

  v63 = v38;
  v74 = &v61;
  swift_beginAccess();
  v65 = *(v11 + 24);
  *(v11 + 24) = MEMORY[0x1E69E7CC0];
  v14 = v70;
  a4 = v67;
  v39 = (*(v70 + 56))(v36, 1, 1, v67);
  MEMORY[0x1EEE9AC00](v39);
  *(&v61 - 4) = a5;
  *(&v61 - 3) = partial apply for closure #1 in CountViews.CountHelper.value.getter;
  *(&v61 - 2) = v26;
  v40 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error);
  v41 = v66;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v36, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v61 - 6), v68, v40, a5, MEMORY[0x1E69E7288], &v78);
  v42 = (v27 + 32);
  v26 = *(v27 + 32);
  v43 = v76;
  (v26)(v76, v41, a5);
  v44 = v36;
  v45 = v77;
  outlined init with take of ObservationTracking._AccessList?(v44, v77);
  v46 = v69;
  outlined init with copy of ObservationTracking._AccessList?(v45, v69);
  if ((*(v14 + 48))(v46, 1, a4) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v45);
    v47 = v46;
    goto LABEL_15;
  }

  v75 = v42;
  a6 = *(v14 + 32);
  v48 = v73;
  a6(v73, v46, a4);
  (*(v14 + 16))(v72, v48, a4);
  a2 = *(v11 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 24) = a2;
  v62 = a5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v51 = *(a2 + 2);
  v50 = *(a2 + 3);
  if (v51 >= v50 >> 1)
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v50 > 1, v51 + 1, 1, a2);
  }

  *(a2 + 2) = v51 + 1;
  a6(&a2[((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v51], v72, a4);
  *(v11 + 24) = a2;
  (*(v14 + 8))(v73, a4);
  a5 = v62;
  v43 = v76;
  v47 = v77;
LABEL_15:
  outlined destroy of ObservationTracking._AccessList?(v47);
  (v26)(v71, v43, a5);
  v52 = *(v11 + 24);
  v53 = *(v52 + 16);
  if (v53)
  {
    v55 = *(v14 + 16);
    v54 = v14 + 16;
    v76 = *(v11 + 24);
    v77 = v55;
    v56 = v52 + ((*(v54 + 64) + 32) & ~*(v54 + 64));
    v57 = *(v54 + 56);

    v58 = v64;
    v59 = v63;
    do
    {
      (v77)(v58, v56, a4);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v59, v58);
      (*(v54 - 8))(v58, a4);
      v56 += v57;
      --v53;
    }

    while (v53);
  }

  *(v11 + 24) = v65;
}

uint64_t specialized AnyAccessibilityValue.isEqual(to:)(uint64_t a1, void *a2)
{
  v14[3] = &type metadata for AnyAccessibilityValue;
  v14[4] = lazy protocol witness table accessor for type AnyAccessibilityValue and conformance AnyAccessibilityValue();
  v14[0] = swift_allocObject();
  outlined init with copy of AnyAccessibilityValue(a1, v14[0] + 16);
  outlined init with copy of AnyTrackedValue(v14, v11);
  type metadata accessor for AbstractAnyAccessibilityValue();
  if (swift_dynamicCast())
  {
    v12[0] = v8;
    v12[1] = v9;
    v13 = v10;
    v4 = a2[3];
    v5 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v4);
    v6 = (*(v5 + 88))(v12, v4, v5);
    outlined destroy of AnyAccessibilityValue(v12);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    outlined destroy of AccessibilityCustomContentEntry.Value?(&v8, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v6 & 1;
}

uint64_t sub_18D31A630()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in CountViews.CountHelper.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[9];
  v10 = v1[2];
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v10;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v7 = type metadata accessor for CountViews();
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in CountViews.CountHelper.value.getter, &v9, v7, v3, a1);
}

unint64_t lazy protocol witness table accessor for type AnyAccessibilityValue and conformance AnyAccessibilityValue()
{
  result = lazy protocol witness table cache variable for type AnyAccessibilityValue and conformance AnyAccessibilityValue;
  if (!lazy protocol witness table cache variable for type AnyAccessibilityValue and conformance AnyAccessibilityValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAccessibilityValue and conformance AnyAccessibilityValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyAccessibilityValue and conformance AnyAccessibilityValue;
  if (!lazy protocol witness table cache variable for type AnyAccessibilityValue and conformance AnyAccessibilityValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAccessibilityValue and conformance AnyAccessibilityValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyAccessibilityValue and conformance AnyAccessibilityValue;
  if (!lazy protocol witness table cache variable for type AnyAccessibilityValue and conformance AnyAccessibilityValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAccessibilityValue and conformance AnyAccessibilityValue);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in CountViews.CountHelper.value.getter(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v3;
  v4 = *(a1 + *(type metadata accessor for CountViews() + 52));
  v5 = *(v2 + 8);
  *&v7[0] = *v2;
  BYTE8(v7[0]) = v5;
  return v4(v7);
}

unint64_t instantiation function for generic protocol witness table for AnyAccessibilityValue(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AnyAccessibilityValue and conformance AnyAccessibilityValue();
  result = lazy protocol witness table accessor for type AnyAccessibilityValue and conformance AnyAccessibilityValue();
  *(a1 + 16) = result;
  return result;
}

unint64_t type metadata accessor for AbstractAnyAccessibilityValue()
{
  result = lazy cache variable for type metadata for AbstractAnyAccessibilityValue;
  if (!lazy cache variable for type metadata for AbstractAnyAccessibilityValue)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AbstractAnyAccessibilityValue);
  }

  return result;
}

uint64_t LazyScrollable.collectionSubview(id:frame:layoutDirection:context:transform:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v12 = a6;
  v14 = a1[1];
  v15 = *a2;
  v30 = *(a3 + 184);
  v31 = *a1;
  v16 = *a4;
  v17 = a4[1];
  v19 = a4[2];
  v18 = a4[3];
  v33 = a4[5];
  v34 = a4[4];
  if (v15 == 1)
  {
    v20 = *(a3 + 32);
    v12 = v20 - CGRectGetMaxX(*&a6);
  }

  v42 = v12;
  v43 = a7;
  v44 = a8;
  v45 = a9;
  if (one-time initialization token for content != -1)
  {
    swift_once();
  }

  v40[0] = static ScrollCoordinateSpace.content;
  v41 = 1;
  *&v35 = v16;
  *(&v35 + 1) = v17;
  v32 = v19;
  v36 = v19;
  v37 = v18;
  v21 = v18;
  v38 = v34;
  v39 = v33;
  CGRect.convert(to:transform:)(v40, &v35);
  outlined destroy of CoordinateSpace(v40);
  v22 = v42;
  v23 = v43;
  v24 = v44;
  v25 = v45;
  if (v15)
  {
    v26 = v43;
    v27 = v44;
    v28 = v45;
    v22 = v30 - CGRectGetMaxX(*&v22);
  }

  *a5 = v31;
  *(a5 + 8) = v14;
  *(a5 + 16) = v12;
  *(a5 + 24) = a7;
  *(a5 + 32) = a8;
  *(a5 + 40) = a9;
  *(a5 + 48) = v22;
  *(a5 + 56) = v23;
  *(a5 + 64) = v24;
  *(a5 + 72) = v25;
  *(a5 + 80) = v16;
  *(a5 + 88) = v17;
  *(a5 + 96) = v32;
  *(a5 + 104) = v21;
  *(a5 + 112) = v34;
  *(a5 + 120) = v33;
}

void LayoutSubview.place(in:layoutDirection:)(__int128 *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = *(v2 + 12);
  v6 = _threadLayoutData();
  if (v6)
  {
    if ((*v6 & 1) == 0)
    {
      v7 = a1[1];
      v10[0] = *a1;
      v10[1] = v7;
      v8 = a1[3];
      v10[2] = a1[2];
      v10[3] = v8;
      v9 = v4;
      PlacementData.setGeometry(_:at:layoutDirection:)(v10, v5, &v9);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t partial apply for closure #1 in ScrollStateRequestTransform.findClosestSubview<A>(idType:position:anchor:collection:containerSize:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  a3.n128_u64[0] = *(v6 + 32);
  a4.n128_u64[0] = *(v6 + 40);
  a5.n128_u64[0] = *(v6 + 48);
  a6.n128_u64[0] = *(v6 + 56);
  return closure #1 in ScrollStateRequestTransform.findClosestSubview<A>(idType:position:anchor:collection:containerSize:)(a1, a3, a4, a5, a6, a2, *(v6 + 64), *(v6 + 72), *(v6 + 16), *(v6 + 24));
}

uint64_t ViewGeometry.subscript.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  v5 = one-time initialization token for lockAssertionsAreEnabled;

  if (v5 != -1)
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
    *&result = COERCE_DOUBLE(_assertionFailure(_:_:file:line:flags:)());
    __break(1u);
  }

  else
  {
LABEL_7:
    v12[0] = v10;
    v12[1] = v11;
    v6 = COERCE_DOUBLE((*(*v4 + 144))(a1, v12));
    v8 = v7;

    if (v8)
    {
      *&result = v6;
    }

    else
    {
      *&result = v3 + v6;
    }
  }

  return result;
}

{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  v5 = one-time initialization token for lockAssertionsAreEnabled;

  if (v5 != -1)
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
    *&result = COERCE_DOUBLE(_assertionFailure(_:_:file:line:flags:)());
    __break(1u);
  }

  else
  {
LABEL_7:
    v12[0] = v10;
    v12[1] = v11;
    v6 = COERCE_DOUBLE((*(*v4 + 144))(a1, v12));
    v8 = v7;

    if (v8)
    {
      *&result = v6;
    }

    else
    {
      *&result = v3 + v6;
    }
  }

  return result;
}

{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v12 = *(v1 + 32);
  v13 = *(v1 + 48);
  v6 = one-time initialization token for lockAssertionsAreEnabled;

  if (v6 != -1)
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
    *&result = COERCE_DOUBLE(_assertionFailure(_:_:file:line:flags:)());
    __break(1u);
  }

  else
  {
LABEL_7:
    v14[0] = v12;
    v14[1] = v13;
    v7 = COERCE_DOUBLE((*(*v5 + 144))(a1, v14));
    v9 = v8;

    if (a1)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    if (v9)
    {
      *&result = v7;
    }

    else
    {
      *&result = v10 + v7;
    }
  }

  return result;
}

uint64_t closure #1 in ScrollStateRequestTransform.findClosestSubview<A>(idType:position:anchor:collection:containerSize:)(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, double *a7, char *a8, uint64_t a9, uint64_t a10)
{
  v36 = a8;
  v45 = a7;
  v43 = a5;
  v42 = a4;
  v41 = a3;
  v44 = a2;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 8);
  v22 = *(a1 + 16);
  v37 = *(a1 + 32);
  v38 = v22;
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  v25 = *(a1 + 96);
  v39 = *(a1 + 112);
  v40 = v25;
  *&v46[0] = *a1;
  *(&v46[0] + 1) = v21;

  _ViewList_ID.explicitID<A>(for:)(a9, a10, v16);

  if ((*(v17 + 48))(v16, 1, a9) == 1)
  {
    return (*(v14 + 8))(v16, v13);
  }

  v27 = v16;
  v28 = *(v17 + 32);
  v28(v20, v27, a9);
  v49 = v38;
  v50 = v37;
  if (one-time initialization token for all != -1)
  {
    swift_once();
  }

  v47[0] = static ScrollCoordinateSpace.all;
  v48 = 1;
  *&v46[0] = v23;
  *(&v46[0] + 1) = v24;
  v46[1] = v40;
  v46[2] = v39;

  CGRect.convert(to:transform:)(v47, v46);

  outlined destroy of CoordinateSpace(v47);
  *&v29.f64[0] = v44.n128_u64[0];
  *&v29.f64[1] = v41.n128_u64[0];
  *&v30.f64[0] = v42.n128_u64[0];
  *&v30.f64[1] = v43.n128_u64[0];
  v31 = vsubq_f64(vaddq_f64(v49, vmulq_f64(v50, v29)), vaddq_f64(vmulq_f64(v29, v30), 0));
  v32 = fabs(sqrt(vaddvq_f64(vmulq_f64(v31, v31))));
  v33 = v45;
  if (v32 >= *v45)
  {
    return (*(v17 + 8))(v20, a9);
  }

  v34 = v36;
  (*(v14 + 8))(v36, v13);
  v28(v34, v20, a9);
  result = (*(v17 + 56))(v34, 0, 1, a9);
  *v33 = v32;
  return result;
}

uint64_t AnyAccessibilityValue.ConcreteBase.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49[0] = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v6;
  v7 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v53 = v49 - v8;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v49 - v11;
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v54 = v49 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v57 = v49 - v19;
  outlined init with copy of AnyTrackedValue(a1, v59);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for AbstractAnyAccessibilityValue);
  v20 = swift_dynamicCast();
  v21 = *(a2 - 8);
  v22 = *(v21 + 56);
  v49[1] = a2;
  v50 = v15;
  if (v20)
  {
    v23 = v21;
    v24 = v7;
    v22(v12, 0, 1, a2);
    v25 = *(v4 + 16);
    v27 = v57;
    v26 = v58;
    v25(v57, v12, v58);
    (*(v23 + 8))(v12, a2);
    v28 = *(v4 + 56);
    v28(v27, 0, 1, v26);
  }

  else
  {
    v24 = v7;
    v22(v12, 1, 1, a2);
    (*(v10 + 8))(v12, v9);
    v28 = *(v4 + 56);
    v28(v57, 1, 1, v58);
    v25 = *(v4 + 16);
  }

  v29 = v54;
  v30 = v58;
  v25(v54, v52, v58);
  v28(v29, 0, 1, v30);
  v31 = v55;
  v32 = *(TupleTypeMetadata2 + 48);
  v33 = *(v55 + 16);
  v34 = v53;
  (v33)(v53, v57, v24);
  (v33)(&v34[v32], v29, v24);
  v52 = v4;
  v35 = v4;
  v36 = v34;
  v37 = *(v35 + 48);
  if (v37(v36, 1, v30) != 1)
  {
    v40 = v50;
    v33();
    v41 = v24;
    if (v37(&v36[v32], 1, v58) != 1)
    {
      v43 = v52;
      v44 = v49[0];
      v45 = v58;
      (*(v52 + 32))(v49[0], &v36[v32], v58);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = *(v43 + 8);
      v46(v44, v45);
      v47 = *(v55 + 8);
      v47(v54, v41);
      v47(v57, v41);
      v46(v40, v45);
      v47(v36, v41);
      return v39 & 1;
    }

    v42 = *(v55 + 8);
    v42(v54, v24);
    v42(v57, v24);
    (*(v52 + 8))(v40, v58);
    goto LABEL_9;
  }

  v38 = *(v31 + 8);
  v38(v29, v24);
  v38(v57, v24);
  if (v37(&v36[v32], 1, v58) != 1)
  {
LABEL_9:
    (*(v51 + 8))(v36, TupleTypeMetadata2);
    v39 = 0;
    return v39 & 1;
  }

  v38(v36, v24);
  v39 = 1;
  return v39 & 1;
}

void _ViewList_ID.explicitID<A>(for:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v20 = a2;
  v19 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v19);
  v8 = v17 - v7;
  v9 = *(v3 + 8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v18 = a3;
    v11 = 0;
    v12 = (v9 + 32);
    v13 = (v6 + 8);
    v17[1] = (a1 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    while (v11 < *(v9 + 16))
    {
      v21 = *v12;

      AnyHashable2.as<A>(type:)();

      v14 = *(a1 - 8);
      v15 = v14;
      if ((*(v14 + 48))(v8, 1, a1) != 1)
      {
        a3 = v18;
        (*(v14 + 32))(v18, v8, a1);
        v16 = 0;
        goto LABEL_10;
      }

      ++v11;
      (*v13)(v8, v19);
      v12 += 3;
      if (v10 == v11)
      {
        a3 = v18;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = *(a1 - 8);
LABEL_8:
    v15 = v14;
    v16 = 1;
LABEL_10:
    (*(v15 + 56))(a3, v16, 1, a1);
  }
}

uint64_t destroy for ScrollableCollectionSubview()
{
}

BOOL ScrollStateRequestTransform.updateRequest<A>(id:position:targetDistance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v45[11] = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v11 = static Update._lock;
  if (_MovableLockIsOwner(static Update._lock) && static Update.dispatchDepth < static Update.depth)
  {
    v12 = *(a2 + 8);
    (*(*v12 + 104))(1);
    outlined init with copy of ScrollPosition(a2 + 16, v42);
  }

  else
  {
    v12 = *(a2 + 8);
    (*(*v12 + 120))(v42);
  }

  v13 = ScrollPosition.matches<A>(id:)();
  outlined destroy of ScrollPosition(v42);
  if (v13)
  {
    if (_MovableLockIsOwner(v11) && static Update.dispatchDepth < static Update.depth)
    {
      (*(*v12 + 104))(1);
      outlined init with copy of ScrollPosition(a2 + 16, v45);
    }

    else
    {
      (*(*v12 + 120))(v45);
    }

    ScrollPosition.scrollTo<A>(id:anchor:)(a1, 0, 0, 1, a3, a4);
    outlined init with copy of Binding<ScrollPosition>(a2, v42);
    outlined init with copy of ScrollPosition(v45, v43 + 8);
    LOBYTE(v44) = 1;
    *(&v44 + 1) = a5;
    if (ScrollStateRequestTransform.shouldUpdate(to:)(v42))
    {
      outlined init with copy of UpdateScrollStateRequest(v42, &v29);
      v14 = swift_allocObject();
      v15 = v40;
      v14[11] = v39;
      v14[12] = v15;
      v14[13] = v41;
      v16 = v36;
      v14[7] = v35;
      v14[8] = v16;
      v17 = v38;
      v14[9] = v37;
      v14[10] = v17;
      v18 = v32;
      v14[3] = v31;
      v14[4] = v18;
      v19 = v34;
      v14[5] = v33;
      v14[6] = v19;
      v20 = v30;
      v14[1] = v29;
      v14[2] = v20;
      type metadata accessor for (_:)();
      AGGraphSetOutputValue();
    }

    *(&v30 + 1) = &type metadata for UpdateScrollStateRequest;
    *&v31 = &protocol witness table for UpdateScrollStateRequest;
    v21 = swift_allocObject();
    *&v29 = v21;
    v22 = v43[5];
    v21[11] = v43[4];
    v21[12] = v22;
    v21[13] = v44;
    v23 = v43[1];
    v21[7] = v43[0];
    v21[8] = v23;
    v24 = v43[3];
    v21[9] = v43[2];
    v21[10] = v24;
    v25 = v42[3];
    v21[3] = v42[2];
    v21[4] = v25;
    v26 = v42[5];
    v21[5] = v42[4];
    v21[6] = v26;
    v27 = v42[1];
    v21[1] = v42[0];
    v21[2] = v27;
    outlined destroy of ScrollPosition(v45);
    outlined assign with take of ScrollStateRequest?(&v29, v5 + 72);
  }

  return v13;
}

BOOL ScrollPosition.matches<A>(id:)()
{
  v1 = *(v0 + 64);
  DynamicType = swift_getDynamicType();
  return v1 == MEMORY[0x1E69E69B8] || DynamicType == v1;
}

uint64_t ScrollPosition.scrollTo<A>(id:anchor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v15[3] = a5;
  v15[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v15[5] = a2;
  v15[6] = a3;
  v16 = a4 & 1;
  v17 = 0;
  outlined assign with take of ScrollPosition.Storage(v15, v6);
  if (one-time initialization token for v6_4 != -1)
  {
    swift_once();
  }

  v13 = static Semantics.v6_4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v13)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = dyld_program_sdk_at_least();
  if (result)
  {
LABEL_9:
    ++*(v6 + 80);
  }

  return result;
}

double ViewGeometry.subscript.getter(unint64_t a1)
{
  v2 = *v1;
  ViewDimensions.subscript.getter(a1);
  return v2 + v3;
}

{
  v2 = *(v1 + 8);
  ViewDimensions.subscript.getter(a1);
  return v2 + v3;
}

{
  v2 = v1 + 1;
  if ((a1 & 1) == 0)
  {
    v2 = v1;
  }

  v3 = *v2;
  ViewDimensions.subscript.getter(a1);
  return v3 + v4;
}

__n128 assignWithTake for ScrollPosition.Storage(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 57);
    if (v2 >= 5)
    {
      v2 = *a1 + 5;
    }

    if (!v2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 57);
    if (v6 >= 5)
    {
      v6 = *a2 + 5;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        v7 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v7;
        *(a1 + 32) = *(a2 + 32);
        result = *(a2 + 41);
        *(a1 + 41) = result;
        *(a1 + 57) = 0;
        return result;
      }

      if (v6 == 1)
      {
        *a1 = *a2;
        *(a1 + 57) = 1;
        return result;
      }
    }

    else
    {
      switch(v6)
      {
        case 2:
          result = *a2;
          *a1 = *a2;
          *(a1 + 57) = 2;
          return result;
        case 3:
          *a1 = *a2;
          *(a1 + 57) = 3;
          return result;
        case 4:
          *a1 = *a2;
          *(a1 + 57) = 4;
          return result;
      }
    }

    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 32) = *(a2 + 32);
    result = *(a2 + 42);
    *(a1 + 42) = result;
  }

  return result;
}

BOOL ScrollStateRequestTransform.shouldUpdate(to:)(uint64_t a1)
{
  type metadata accessor for (_:)();
  OutputValue = AGGraphGetOutputValue();
  v4 = OutputValue == 0;
  outlined init with copy of ScrollStateRequest?(v1 + 72, &v19);
  if (!*(&v20 + 1))
  {
    outlined destroy of ScrollStateRequest?(&v19, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    goto LABEL_13;
  }

  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollStateRequest);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    goto LABEL_13;
  }

  if (!*(&v6 + 1))
  {
LABEL_13:
    outlined destroy of UpdateScrollStateRequest?(&v6, &lazy cache variable for type metadata for UpdateScrollStateRequest?, &type metadata for UpdateScrollStateRequest, MEMORY[0x1E69E6720]);
    return v4;
  }

  v26 = v16;
  v27 = v17;
  v28 = v18;
  v25[0] = v12;
  v25[1] = v13;
  v25[2] = v14;
  v25[3] = v15;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v19 = v6;
  v20 = v7;
  v4 = !OutputValue || (specialized static ScrollPosition.Storage.== infix(_:_:)(v25 + 8, a1 + 104) & 1) == 0 || *(&v27 + 1) != *(a1 + 184) || !project #1 <A, B>(lhs:rhs:) in static ScrollPosition.== infix(_:_:)(*(&v26 + 1), *(a1 + 168)) || v28 != *(a1 + 192) || vabdd_f64(*(&v28 + 1), *(a1 + 200)) >= 0.1;
  outlined destroy of UpdateScrollStateRequest(&v19);
  return v4;
}

uint64_t outlined assign with take of ScrollStateRequest?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI18ScrollStateRequest_pSgMaTm_0(0, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for UpdateScrollStateRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t VisualEffectModifier.Child.updateValue()(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24) + 1;
  *(v1 + 24) = v7;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v9 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  v41 = v6;
  v42 = v4;
  v39 = v7;
  v10 = *(v1 + 20);
  v34 = *(a1 + 24);
  v31[3] = v9 == v10;
  v40 = v3;
  v11 = AGCreateWeakAttribute();
  v12 = v11;
  v37 = HIDWORD(v11);
  v13 = AGCreateWeakAttribute();
  v14 = v13;
  v36 = HIDWORD(v13);
  v15 = AGCreateWeakAttribute();
  v16 = v15;
  v35 = HIDWORD(v15);
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v33 = HIDWORD(v17);
  v19 = AGCreateWeakAttribute();
  v20 = v19;
  v38 = a1;
  v32 = HIDWORD(v19);
  v21 = AGCreateWeakAttribute();
  v22 = v21;
  v23 = HIDWORD(v21);
  type metadata accessor for VisualEffectModifier();
  v24 = *AGGraphGetValue();
  v43[0] = v12;
  v43[1] = v37;
  v43[2] = v14;
  v43[3] = v36;
  v43[4] = v16;
  v43[5] = v35;
  v43[6] = v18;
  v43[7] = v33;
  v43[8] = v20;
  v43[9] = v32;
  v43[10] = v22;
  v43[11] = v23;
  v43[12] = v39;

  v26 = v41;
  v24(v25, v43);

  MEMORY[0x1EEE9AC00](v27);
  *&v31[-4] = v38;
  *&v31[-2] = swift_getWitnessTable();
  v28 = v40;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v26, partial apply for closure #1 in StatefulRule.value.setter, &v31[-8], v40, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v29);
  return (*(v42 + 8))(v26, v28);
}

Swift::Double __swiftcall UnitCurve.value(at:)(Swift::Double at)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  if (at > 0.0)
  {
    v5 = at;
  }

  else
  {
    v5 = 0.0;
  }

  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  if (*(v1 + 32) == 1)
  {
    v6 = *(v1 + 2) | *&v3;
    if (v6 | *&v2 | *&v4)
    {
      v7 = v6 | *&v4;
      if (*&v2 == 1 && v7 == 0)
      {
        return 1.0 - sqrt(1.0 - at * at);
      }

      else if (*&v2 == 2 && v7 == 0)
      {
        v16 = 1.0 - (at + -1.0) * (at + -1.0);

        return sqrt(v16);
      }

      else
      {
        v10 = at * 4.0;
        if (at >= 0.5)
        {
          v11 = sqrt((8.0 - v10) * at + -3.0) + 1.0;
        }

        else
        {
          v11 = 1.0 - sqrt(1.0 - v10 * at);
        }

        return v11 * 0.5;
      }
    }
  }

  else
  {
    v12 = v3 * 3.0;
    v13 = (v4 - v3) * 3.0 - v3 * 3.0;
    v14 = 1.0 - v3 * 3.0 - v13;
    v15 = UnitCurve.CubicSolver.solveX(_:epsilon:)(v5, 0.000000953674316);
    return round(v15 * (v12 + v15 * (v13 + v14 * v15)) * 1048576.0) * 0.000000953674316;
  }

  return at;
}

uint64_t specialized ColorProvider._apply(color:to:)(uint64_t result, uint64_t a2, double a3, double a4, double a5)
{
  v13 = *(a2 + 24);
  if (v13 <= 2)
  {
    v51 = v12;
    v52 = v11;
    v53 = v10;
    v54 = v9;
    v55 = v8;
    v56 = v7;
    v57 = v5;
    v58 = v6;
    v15 = result;
    v16 = *a2;
    if (v13)
    {
      if (v13 == 1)
      {
        v17 = *(a2 + 8);
        if (v17 == *(a2 + 16))
        {
          return result;
        }

        v44 = *(a2 + 48);
        v18 = Color.DisplayP3.resolve(in:)(a3, a4, a5);
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v25 = *(a2 + 56);
        *&v44 = *(a2 + 48);
        *(&v44 + 1) = v25;
        v26 = *(*v15 + 168);

        v27 = v26(v17, &v44);

        *&v44 = __PAIR64__(v20, LODWORD(v18));
        DWORD2(v44) = v22;
        *(&v44 + 3) = v24 * v27;
        v45 = 2143289344;
        v46 = 0;
        v47 = 1065353216;
        v48 = 0;
        v49 = -1;
        v28 = MEMORY[0x1E69E7CC0];
        v50 = MEMORY[0x1E69E7CC0];
        v43 = v16;
        if (*(a2 + 40) == 1)
        {
          v28 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v29, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v44, &v43, v17);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v28;
        v30 = 1;
      }

      else
      {
        v37 = result;
        if (v16 >= 1)
        {
          v38 = *(a2 + 56);
          *&v44 = *(a2 + 48);
          *(&v44 + 1) = v38;
          v39 = *(*v15 + 168);

          v40 = v39(v16, &v44);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v37 = swift_allocObject();
          *(v37 + 16) = v15;
          *(v37 + 24) = v40;
        }

        v41 = *(a2 + 32);
        v42 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v41, v42);
        *(a2 + 32) = v37;
        v30 = 3;
      }

      *(a2 + 40) = v30;
    }

    else
    {
      v31 = result;
      if (v16 >= 1)
      {
        v32 = *(a2 + 56);
        *&v44 = *(a2 + 48);
        *(&v44 + 1) = v32;
        v33 = *(*v15 + 168);

        v34 = v33(v16, &v44);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v31 = swift_allocObject();
        *(v31 + 16) = v15;
        *(v31 + 24) = v34;
      }

      v35 = *(a2 + 32);
      v36 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v35, v36);
      *(a2 + 32) = v31;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

float Color.DisplayP3.resolve(in:)(double a1, double a2, double a3)
{
  v3 = a1;
  v4 = a2;
  v5 = -v3;
  if (v3 > 0.0)
  {
    v5 = v3;
  }

  if (v5 <= 0.04045)
  {
    v6 = v5 * 0.077399;
  }

  else
  {
    v6 = 1.0;
    if (v5 != 1.0)
    {
      v7 = a3;
      v8 = powf((v5 * 0.94787) + 0.052133, 2.4);
      a3 = v7;
      v6 = v8;
    }
  }

  v9 = a3;
  v10 = -v4;
  if (v4 > 0.0)
  {
    v10 = v4;
  }

  if (v10 <= 0.04045)
  {
    v11 = v10 * 0.077399;
  }

  else
  {
    v11 = 1.0;
    if (v10 != 1.0)
    {
      v11 = powf((v10 * 0.94787) + 0.052133, 2.4);
    }
  }

  if (v9 <= 0.0)
  {
    v12 = -v9;
  }

  else
  {
    v12 = v9;
  }

  if (v12 > 0.04045 && v12 != 1.0)
  {
    powf((v12 * 0.94787) + 0.052133, 2.4);
  }

  if (v4 <= 0.0)
  {
    v13 = -v11;
  }

  else
  {
    v13 = v11;
  }

  if (v3 <= 0.0)
  {
    v14 = -v6;
  }

  else
  {
    v14 = v6;
  }

  return (v14 * 1.2249) + (v13 * -0.2247);
}

uint64_t VisualEffect.geometryEffect<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a4;
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15(0, v13, v14, v10);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(v9 + 16))(v12, a1, a3, v18);
  (*(v9 + 32))(v20, v12, a3);
  swift_getWitnessTable();
  VisualEffect.concat<A>(_:)(v20, a2, v16, a5);
  return (*(v17 + 8))(v20, v16);
}

{
  return VisualEffect.geometryEffect<A>(_:)(a1, a2, a3, a4, a5);
}

uint64_t VisualEffect.concat<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return CombinedVisualEffect.init(first:second:)(v14, v10, a2, a3, a4);
}

uint64_t CombinedVisualEffect.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for CombinedVisualEffect();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t CombinedVisualEffect.animatableData.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = *(a1[5] + 8);
  v4 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v15 - v6;
  v8 = *(a1[4] + 8);
  v9 = a1[2];
  v10 = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  (*(v8 + 24))(v9, v8, v11);
  (*(v3 + 24))(v4, v3);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return AnimatablePair.init(_:_:)(v13, v7, v10, AssociatedTypeWitness, v16);
}

void (*protocol witness for Animatable.animatableData.modify in conformance CombinedVisualEffect<A, B>(uint64_t *a1, void *a2))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = v2;
  *(v5 + 40) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair();
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  CombinedVisualEffect.animatableData.getter(a2, v14);
  return protocol witness for Animatable.animatableData.modify in conformance CombinedVisualEffect<A, B>;
}

void protocol witness for Animatable.animatableData.modify in conformance CombinedVisualEffect<A, B>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    specialized CombinedVisualEffect.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized CombinedVisualEffect.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t specialized CombinedVisualEffect.animatableData.setter(uint64_t a1, void *a2)
{
  v4 = *(a2[5] + 8);
  v5 = a2[3];
  v22 = a1;
  v23 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v21 - v7;
  v9 = *(a2[4] + 8);
  v10 = a2[2];
  v11 = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  (*(v15 + 16))(&v21 - v13, a1, v11, v12);
  (*(v9 + 32))(v14, v10, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = v23;
  v18 = swift_getAssociatedConformanceWitness();
  v25 = v11;
  v26 = AssociatedTypeWitness;
  v27 = AssociatedConformanceWitness;
  v28 = v18;
  v19 = type metadata accessor for AnimatablePair();
  (*(v24 + 16))(v8, v22 + *(v19 + 52), AssociatedTypeWitness);
  return (*(v4 + 32))(v8, v17, v4);
}

uint64_t specialized RendererVisualEffect.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(v4 + 32))(v8, v3, v4);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance GeometryVisualEffect<A>(uint64_t a1, uint64_t a2)
{
  specialized RendererVisualEffect.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

uint64_t assignWithTake for _ViewList_View(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t destroy for AccessibilityScrollableContext(uint64_t a1)
{
  v1 = *(a1 + 70);
  if (v1 >= 3)
  {
    v1 = *a1 + 3;
  }

  if (v1 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t assignWithCopy for _ViewList_View(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a1 + 88);
  v5 = *(a2 + 88);
  *(a1 + 88) = v5;
  v6 = v5;

  return a1;
}

uint64_t destructiveInjectEnumTag for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t GeometryProxy.frameClippedToScrollViews(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  specialized static Update.begin()();
  specialized static Update.begin()();
  v9 = 0;
  v10 = 0;
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v9 = *InputValue;
    v10 = InputValue[1];
  }

  static Update.end()();
  v35 = 0;
  v36 = 0;
  v37 = v9;
  v38 = v10;
  v30 = __PAIR64__(v6, v5);
  v31 = __PAIR64__(v8, v7);
  v12 = *(v2 + 2);
  v32 = *(v2 + 1);
  v33 = v12;
  v34 = v2[12];
  GeometryProxy.placementContext.getter(v28);
  if (v29)
  {
    v13 = 1;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v16 = AGGraphGetInputValue();
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    v21 = *(v16 + 32);
    v22 = *(v16 + 40);
    type metadata accessor for CGPoint(0);

    v23 = AGGraphGetInputValue();
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = v21 - (*v23 - v19);
    v30 = v17;
    v31 = v18;
    *&v32 = v24;
    *(&v32 + 1) = v25;
    *&v33 = v26;
    *(&v33 + 1) = v22 - (v25 - v20);
    v13 = CGRect.convertAndClipToScrollView(to:transform:)(a1, &v30);

    v15 = v35;
    v14 = v36;
    v9 = v37;
    v10 = v38;
  }

  result = static Update.end()();
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v13 & 1;
  return result;
}

uint64_t CGRect.convertAndClipToScrollView(to:transform:)(uint64_t a1, double *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  v9 = *(a2 + 5);
  v10 = v2->f64[0];
  v11 = v2->f64[1];
  v12 = v2[1].f64[0];
  v13 = v2[1].f64[1];
  v27.origin.x = v2->f64[0];
  v27.origin.y = v11;
  v27.size.width = v12;
  v27.size.height = v13;
  if (CGRectIsNull(v27) || (v28.origin.x = v10, v28.origin.y = v11, v28.size.width = v12, v28.size.height = v13, CGRectIsInfinite(v28)))
  {
    v14 = 1;
  }

  else
  {
    v22.f64[0] = v4;
    v22.f64[1] = v5;
    v23 = v6;
    v24 = v7;
    v25 = v8;
    v26 = v9;
    ViewTransform.coordinateSpaceTag(_:)(a1, &v18);
    if (v19)
    {
      if (one-time initialization token for worldReference != -1)
      {
        swift_once();
      }

      *&v22.f64[0] = static CoordinateSpace.ID.worldReference;
      LOBYTE(v26) = 1;
      v15 = specialized static CoordinateSpace.== infix(_:_:)(a1, &v22);
      outlined destroy of CoordinateSpace(&v22);
      v16 = -3;
      if (v15)
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = v18;
    }

    v21 = 0;
    v22.f64[0] = v4;
    v22.f64[1] = v5;
    v23 = v6;
    v24 = v7;
    v25 = v8;
    v26 = v9;
    v18 = v16;
    v19 = 0;
    v20 = 2;
    specialized ViewTransform.convert(_:_:)(&v18, &v22, v2, &v21);
    v14 = v21 ^ 1;
  }

  return v14 & 1;
}

void closure #1 in CGRect.convertAndClipToScrollView(to:transform:)(uint64_t a1, CGRect *a2, BOOL *a3)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 112) >> 5;
  if (v6 > 2)
  {
    if (v6 - 3 >= 2)
    {
      v48.size.width = *(a1 + 64);
      *&v48.size.height = (*(a1 + 73) << 8) | ((*(a1 + 77) | (*(a1 + 79) << 16)) << 40) | v5;
      v48.origin.x = 0.0;
      v48.origin.y = 0.0;
      *a2 = CGRectIntersection(*a2, v48);
    }
  }

  else
  {
    v7 = *a1;
    if (!v6)
    {
      a2->origin = vaddq_f64(a2->origin, v7);
      return;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    if (v6 != 1)
    {
      v23 = *(a1 + 49);
      v21 = a1 + 49;
      v22 = v23;
      v24 = *(v21 + 7);
      LOWORD(v23) = *(v21 + 4);
      *&v38.a = v7;
      *&v38.d = v9;
      v38.c = v8;
      v38.ty = v10;
      v39 = v11;
      v40 = v22;
      v41 = v23;
      v42 = *(v21 + 6);
      v43 = v24;
      v44 = v4;
      x = a2->origin.x;
      y = a2->origin.y;
      width = a2->size.width;
      height = a2->size.height;
      v45.origin.x = a2->origin.x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      if (!CGRectIsNull(v45))
      {
        v46.origin.x = x;
        v46.origin.y = y;
        v46.size.width = width;
        v46.size.height = height;
        if (!CGRectIsInfinite(v46))
        {
          type metadata accessor for _ContiguousArrayStorage<CGPoint>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18DDACA80;
          *(inited + 32) = x;
          *(inited + 40) = y;
          *(inited + 48) = x + width;
          *(inited + 56) = y;
          *(inited + 64) = x + width;
          *(inited + 72) = y + height;
          *(inited + 80) = x;
          *(inited + 88) = y + height;
          *&v37.a = inited;
          specialized MutableCollection<>._apply(_:inverse:)(&v38, v5 & 1);
          if (*(*&v37.a + 16) < 4uLL)
          {
            __break(1u);
            return;
          }

          specialized CGRect.init(cornerPoints:)(*&v37.a, *&v37.a + 32, 0, 9uLL);
          x = v30;
          y = v31;
          width = v32;
          height = v33;
        }
      }

      a2->origin.x = x;
      a2->origin.y = y;
      a2->size.width = width;
      a2->size.height = height;
      *a3 = 1;
      return;
    }

    v13 = *(a1 + 16);
    v14 = a2->origin.x;
    v15 = a2->origin.y;
    v16 = a2->size.width;
    v17 = a2->size.height;
    v35 = *(a1 + 24);
    v36 = *a1;
    if (*(a1 + 48))
    {
      *&v38.a = *a1;
      *&v38.d = v9;
      v38.c = v8;
      v38.ty = v10;
      CGAffineTransformInvert(&v37, &v38);
      v7 = *&v37.a;
      c = v37.c;
      v9 = *&v37.d;
      ty = v37.ty;
    }

    else
    {
      ty = *(a1 + 40);
      c = *(a1 + 16);
    }

    *&v38.a = v7;
    *&v38.d = v9;
    v38.c = c;
    v38.ty = ty;
    v47.origin.x = v14;
    v47.origin.y = v15;
    v47.size.width = v16;
    v47.size.height = v17;
    *a2 = CGRectApplyAffineTransform(v47, &v38);
    if (*a3)
    {
      goto LABEL_16;
    }

    if (v36.f64[1] == 0.0 && v13 == 0.0)
    {
      *a3 = 0;
      return;
    }

    if (v36.f64[0] != 0.0)
    {
LABEL_16:
      v34 = 1;
    }

    else
    {
      v34 = *&v35 != 0.0;
    }

    *a3 = v34;
  }
}

void **assignWithCopy for PlatformTextRepresentableContext(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  v5 = v4;

  return a1;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityButtonShapesI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityButtonShapesF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityButtonShapesKey>, &type metadata for AccessibilityButtonShapesKey, &protocol witness table for AccessibilityButtonShapesKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityButtonShapesF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityButtonShapesKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityButtonShapesKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityButtonShapesKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityButtonShapesKey>, &type metadata for AccessibilityButtonShapesKey, &protocol witness table for AccessibilityButtonShapesKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityButtonShapesKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityButtonShapesKey>>);
    }
  }
}

float64_t GeometryEffectTransform.value.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  GeometryEffectTransform.transform.getter(&v27);
  type metadata accessor for CGPoint(0);
  v29 = vsubq_f64(v29, vsubq_f64(*AGGraphGetValue(), v28));
  v28 = 0uLL;
  if ((*(a3 + 32))(a2, a3))
  {
    Value = AGGraphGetValue();
    (*(v7 + 16))(v9, Value, a2);
    type metadata accessor for CGSize(0);
    v11 = AGGraphGetValue();
    (*(a3 + 24))(v30, a2, a3, *v11, v11[1]);
    (*(v7 + 8))(v9, a2);
    if (*AGGraphGetValue() == 1)
    {
      v12 = *AGGraphGetValue();
      v35 = 0xBFF0000000000000;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0x3FF0000000000000;
      v40 = 0;
      v41 = v12;
      v15 = xmmword_18DDAB500;
      v42 = xmmword_18DDAB500;
      ProjectionTransform.concatenating(_:)(v30, &v32);
      v33[0] = 0xBFF0000000000000;
      memset(&v33[1], 0, 24);
      v33[4] = 0x3FF0000000000000;
      v33[5] = 0;
      v33[6] = v12;
      v34 = v15;
      ProjectionTransform.concatenating(_:)(v33, &v22);
    }

    else
    {
      v24 = v30[2];
      v25 = v30[3];
      v26 = v31;
      v22 = v30[0];
      v23 = v30[1];
    }

    if (ProjectionTransform.isInvertible.getter())
    {
      ViewTransform.appendProjectionTransform(_:inverse:)(&v22, 1);
    }

    else
    {
      *&v16 = 0;
      *(&v16 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(28);
      v21 = v16;
      MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
      v18 = v24;
      v19 = v25;
      v20 = v26;
      v16 = v22;
      v17 = v23;
      _print_unlocked<A, B>(_:_:)();
      specialized static Log.externalWarning(_:)(v21, *(&v21 + 1));
    }
  }

  v13 = v28;
  *a4 = v27;
  *(a4 + 16) = v13;
  result = v29.f64[0];
  *(a4 + 32) = v29;
  return result;
}

uint64_t GeometryEffectTransform.transform.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
}

void *static CoordinateSpace.scrollView.getter@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a2 = v3;
    a3 = v4;
  }

  *a3 = *a2;
  *(a3 + 40) = 1;
  return result;
}

uint64_t VisualEffect.offset(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *v9 = a4;
  *&v9[1] = a5;
  lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect();
  return VisualEffect.geometryEffect<A>(_:)(v9, a1, &type metadata for _OffsetEffect, a2, a3);
}

CGFloat protocol witness for GeometryEffect.effectValue(size:) in conformance _OffsetEffect@<D0>(uint64_t a1@<X8>)
{
  CGAffineTransformMakeTranslation(&v6, *v1, v1[1]);
  result = v6.a;
  v4 = *&v6.c;
  v5 = *&v6.tx;
  *a1 = *&v6.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = v5;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

BOOL ProjectionTransform.isInvertible.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  if (v1 == 0.0 && v2 == 0.0 && *(v0 + 64) == 1.0)
  {
    v3 = vmulq_f64(*v0, vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL));
    *&v4 = *&vsubq_f64(v3, vdupq_laneq_s64(v3, 1));
  }

  else
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 48);
    v7 = vmulq_f64(v5, vextq_s8(v6, v6, 8uLL));
    v8 = vmulq_f64(vsubq_f64(vmulq_n_f64(v5, *(v0 + 64)), vmulq_n_f64(v6, v2)), vextq_s8(*v0, *v0, 8uLL));
    v4 = v1 * vsubq_f64(v7, vdupq_laneq_s64(v7, 1)).f64[0] + vsubq_f64(vdupq_laneq_s64(v8, 1), v8).f64[0];
  }

  return v4 != 0.0;
}

void ViewTransform.appendProjectionTransform(_:inverse:)(uint64_t a1, char a2)
{
  if (*(a1 + 16) == 0.0 && *(a1 + 40) == 0.0 && *(a1 + 64) == 1.0)
  {
    v4 = *(a1 + 24);
    *&v15.a = *a1;
    *&v15.c = v4;
    *&v15.tx = *(a1 + 48);
    ViewTransform.appendAffineTransform(_:inverse:)(&v15, a2 & 1);
    return;
  }

  v5 = a2 & 1;
  v6 = *v2;
  v7 = v2[4];
  v8 = v2[5];
  type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for Element<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for Element);
  v9 = swift_allocObject();
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v10 = *(a1 + 48);
  *(v9 + 80) = *(a1 + 32);
  *(v9 + 96) = v10;
  *(v9 + 112) = *(a1 + 64);
  v11 = *(a1 + 16);
  *(v9 + 48) = *a1;
  *(v9 + 64) = v11;
  *(v9 + 120) = v5;
  *(v9 + 16) = v6;
  if (v6)
  {
    v12 = *(v6 + 24);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v14 = 1;
LABEL_10:
  *(v9 + 24) = v14;
  *v2 = v9;
  v2[4] = 0;
  v2[5] = 0;
}

Swift::Void __swiftcall ViewTransform.appendAffineTransform(_:inverse:)(CGAffineTransform *_, Swift::Bool inverse)
{
  v3 = inverse;
  v4 = *&_->tx;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&_->a, xmmword_18DDAA020), vceqq_f64(*&_->c, xmmword_18DDAB500))))) & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v2->f64[0];
  v6 = v2[2].f64[0];
  v7 = v2[2].f64[1];
  v14 = *_;
  type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for Element<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for Element);
  v8 = swift_allocObject();
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  *(v8 + 48) = v14;
  *(v8 + 96) = v3;
  *(v8 + 16) = v5;
  if (v5 != 0.0)
  {
    v9 = *(*&v5 + 24);
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (!v10)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_6:
    v12 = vdup_n_s32(v3);
    v13.i64[0] = v12.u32[0];
    v13.i64[1] = v12.u32[1];
    v2[2] = vaddq_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v13, 0x3FuLL)), vnegq_f64(v4), v4), v2[2]);
    return;
  }

  v11 = 1;
LABEL_8:
  *(v8 + 24) = v11;
  *&v2->f64[0] = v8;
  v2[2].f64[0] = 0.0;
  v2[2].f64[1] = 0.0;
}

void type metadata accessor for TransitionBox<ScaleTransition>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type GeometryVisualEffect<_ScaleEffect> and conformance GeometryVisualEffect<A>()
{
  result = lazy protocol witness table cache variable for type GeometryVisualEffect<_ScaleEffect> and conformance GeometryVisualEffect<A>;
  if (!lazy protocol witness table cache variable for type GeometryVisualEffect<_ScaleEffect> and conformance GeometryVisualEffect<A>)
  {
    type metadata accessor for TransitionBox<ScaleTransition>(255, &lazy cache variable for type metadata for GeometryVisualEffect<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for GeometryVisualEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryVisualEffect<_ScaleEffect> and conformance GeometryVisualEffect<A>);
  }

  return result;
}

uint64_t static CoordinateSpaceProtocol<>.scrollView(axis:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    if (one-time initialization token for vertical != -1)
    {
      v3 = a2;
      result = swift_once();
      a2 = v3;
    }

    v2 = &static ScrollCoordinateSpace.vertical;
  }

  else
  {
    if (one-time initialization token for horizontal != -1)
    {
      v4 = a2;
      result = swift_once();
      a2 = v4;
    }

    v2 = &static ScrollCoordinateSpace.horizontal;
  }

  *a2 = *v2;
  *(a2 + 40) = 1;
  return result;
}

uint64_t EllipticalGradient.init(colors:center:startRadiusFraction:endRadiusFraction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  result = specialized Gradient.init(colors:)(a1);
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

__n128 RadialGradient.resolvePaint(in:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = *v3;
  *&v15 = *a1;
  *(&v15 + 1) = v6;
  Gradient.resolve(in:)(&v15, v7, &v16);
  v8 = 0;
  v9 = v16;
  v10 = v17;
  v11 = HIDWORD(v17);
  v12 = v18;
  if ((v18 & 1) == 0 && *(&v17 + 1) > 1.0)
  {
    v16 = v5;
    v17 = v6;
    v14 = 3;
    EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v14, &v15);
    v8 = v15;
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 12) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = *(v3 + 8);
  result = *(v3 + 24);
  *(a2 + 40) = result;
  *(a2 + 56) = v8;
  return result;
}

unint64_t lazy protocol witness table accessor for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint()
{
  result = lazy protocol witness table cache variable for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint;
  if (!lazy protocol witness table cache variable for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint;
  if (!lazy protocol witness table cache variable for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint;
  if (!lazy protocol witness table cache variable for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint);
  }

  return result;
}

uint64_t VisualEffect.scaleEffect(_:anchor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *v11 = a4;
  *&v11[1] = a5;
  *&v11[2] = a6;
  *&v11[3] = a7;
  lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect();
  return VisualEffect.geometryEffect<A>(_:)(v11, a1, &type metadata for _ScaleEffect, a2, a3);
}

uint64_t LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:matchingID:)@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 + 16);
  v72 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v115, v12, sizeof(v115));
  v13 = a2[1];
  v73 = *a2;
  v14 = *(a2 + 1);
  memcpy(v114, v5, 0x1D9uLL);
  v15 = LazySubviewPlacements.transaction.getter();
  type metadata accessor for KeyPath<EnvironmentValues, LazySubviewMinorSizingConfiguration>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v16);
  v17 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v15, *&v101[0]);
  if (v17)
  {
    v18 = *(v17 + 72);

    if (v18 == 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v71 = v13;
  v70 = type metadata accessor for LazyLayoutViewCache();
  if (*(*AGGraphGetValue() + 164) != *MEMORY[0x1E698D3F8])
  {
    v68 = v14;
    _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);

    Value = AGGraphGetValue();
    outlined init with copy of Binding<ScrollPosition>(Value, &v103);

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    IsOwner = _MovableLockIsOwner(static Update._lock);
    v69 = a4;
    v67 = v11;
    if (IsOwner && static Update.dispatchDepth < static Update.depth)
    {
      (*(*v104 + 104))(1);
      outlined init with copy of ScrollPosition(&v105, &v106);
    }

    else
    {
      (*(*v104 + 120))(&v106);
    }

    _s7SwiftUI25_LazyLayout_PlacedSubviewVSgWOhTm_0(&v103, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
    v112[2] = v108;
    v112[3] = v109;
    v112[4] = v110;
    v113 = v111;
    v112[0] = v106;
    v112[1] = v107;
    memcpy(v114, v5, 0x108uLL);
    v22 = (v5 + 264);
    v23 = *(v5 + 264);
    v24 = *(v5 + 441);
    *(&v114[53] + 1) = *(v5 + 425);
    *(&v114[55] + 1) = v24;
    *(&v114[57] + 1) = *(v5 + 457);
    v25 = *(v5 + 377);
    *(&v114[45] + 1) = *(v5 + 361);
    *(&v114[47] + 1) = v25;
    v26 = *(v5 + 409);
    *(&v114[49] + 1) = *(v5 + 393);
    *(&v114[51] + 1) = v26;
    v27 = *(v5 + 313);
    *(&v114[37] + 1) = *(v5 + 297);
    *(&v114[39] + 1) = v27;
    v28 = *(v5 + 345);
    *(&v114[41] + 1) = *(v5 + 329);
    *(&v114[43] + 1) = v28;
    v29 = *(v5 + 281);
    *(&v114[33] + 1) = *(v5 + 265);
    *(&v114[35] + 1) = v29;
    LOBYTE(v114[33]) = v23;
    v30 = LazySubviewPlacements.scrollPhase.getter();
    v31 = *(a3 + 24);
    (*(v31 + 32))(v114, v9, v31);
    v102 = 0;
    if (v30)
    {
      if (v23)
      {
LABEL_16:
        outlined destroy of ScrollPosition(v112);
        _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(v114);
        result = memcpy(v69, v114, 0x129uLL);
        *v22 = 1;
        return result;
      }

      goto LABEL_24;
    }

    v65 = v31;
    v32 = *(v5 + 408);
    v33 = *(v5 + 376);
    v94 = *(v5 + 392);
    v95 = v32;
    v34 = *(v5 + 408);
    v96[0] = *(v5 + 424);
    *(v96 + 9) = *(v5 + 433);
    v35 = *(v5 + 344);
    v36 = *(v5 + 312);
    v90 = *(v5 + 328);
    v91 = v35;
    v37 = *(v5 + 344);
    v38 = *(v5 + 376);
    v92 = *(v5 + 360);
    v93 = v38;
    v39 = *(v5 + 280);
    v87[0] = *v22;
    v87[1] = v39;
    v40 = *(v5 + 312);
    v42 = *v22;
    v41 = *(v5 + 280);
    v88 = *(v5 + 296);
    v89 = v40;
    v101[8] = v94;
    v101[9] = v34;
    v101[10] = *(v5 + 424);
    *(&v101[10] + 9) = *(v5 + 433);
    v101[4] = v90;
    v101[5] = v37;
    v101[6] = v92;
    v101[7] = v33;
    v101[0] = v42;
    v101[1] = v41;
    v101[2] = v88;
    v101[3] = v36;
    v43 = LOBYTE(v114[0]);
    memcpy(v114, v115, 0x129uLL);
    outlined init with copy of PositionState(v87, v100);
    v66 = v43;
    v44 = PositionState.dispatchContainerSizeChange(context:axes:allowedAxes:)(v114, &v102);
    v97[8] = v101[8];
    v97[9] = v101[9];
    v98[0] = v101[10];
    *(v98 + 9) = *(&v101[10] + 9);
    v97[4] = v101[4];
    v97[5] = v101[5];
    v97[6] = v101[6];
    v97[7] = v101[7];
    v97[0] = v101[0];
    v97[1] = v101[1];
    v97[2] = v101[2];
    v97[3] = v101[3];
    outlined destroy of PositionState(v97);
    if (v44)
    {
      memcpy(v114, v115, 0x129uLL);
      *&v101[0] = __PAIR64__(v71, v73);
      *(&v101[0] + 1) = v68;
      LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v114, v112, v101, a3, v99);
      memcpy(v101, v5, 0x1D9uLL);
      memcpy(v100, v5, 0x1D9uLL);
      v45 = *(a3 - 8);
      (*(v45 + 16))(v114, v101, a3);
      v46 = implicit closure #1 in LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:matchingID:);
    }

    else
    {
      v47 = *(v5 + 408);
      v48 = *(v5 + 376);
      v82 = *(v5 + 392);
      v83 = v47;
      v49 = *(v5 + 408);
      v84[0] = *(v5 + 424);
      *(v84 + 9) = *(v5 + 433);
      v50 = *(v5 + 344);
      v51 = *(v5 + 312);
      v78 = *(v5 + 328);
      v79 = v50;
      v52 = *(v5 + 344);
      v53 = *(v5 + 376);
      v80 = *(v5 + 360);
      v81 = v53;
      v54 = *(v5 + 280);
      v75[0] = *v22;
      v75[1] = v54;
      v55 = *(v5 + 312);
      v57 = *v22;
      v56 = *(v5 + 280);
      v76 = *(v5 + 296);
      v77 = v55;
      v101[8] = v82;
      v101[9] = v49;
      v101[10] = *(v5 + 424);
      *(&v101[10] + 9) = *(v5 + 433);
      v101[4] = v78;
      v101[5] = v52;
      v101[6] = v80;
      v101[7] = v48;
      v101[0] = v57;
      v101[1] = v56;
      v101[2] = v76;
      v101[3] = v51;
      memcpy(v114, v115, 0x129uLL);
      v58 = PositionState.dispatchViewSizeChange(context:axes:allowedAxes:)(v114, &v102);
      v85[8] = v101[8];
      v85[9] = v101[9];
      v86[0] = v101[10];
      *(v86 + 9) = *(&v101[10] + 9);
      v85[4] = v101[4];
      v85[5] = v101[5];
      v85[6] = v101[6];
      v85[7] = v101[7];
      v85[0] = v101[0];
      v85[1] = v101[1];
      v85[2] = v101[2];
      v85[3] = v101[3];
      outlined init with copy of PositionState(v75, v100);
      outlined destroy of PositionState(v85);
      v59 = v68;
      if (v58)
      {
        memcpy(v114, v115, 0x129uLL);
        *&v101[0] = __PAIR64__(v71, v73);
        *(&v101[0] + 1) = v68;
        LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v114, v112, v101, a3, v99);
        memcpy(v101, v5, 0x1D9uLL);
        memcpy(v100, v5, 0x1D9uLL);
        v45 = *(a3 - 8);
        (*(v45 + 16))(v114, v101, a3);
        v46 = implicit closure #2 in LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:matchingID:);
      }

      else
      {
        memcpy(v114, v115, 0x129uLL);
        v60 = AGGraphGetValue();
        v61 = v72;
        v62 = v67;
        (*(v72 + 16))(v67, v60, v9);
        v74 = *(v5 + 264);
        v63 = *AGGraphGetValue();

        v64 = PositionState.dispatchSubviewsChange<A>(context:layout:cache:)(v114, v62, v63, v9, v65);

        (*(v61 + 8))(v62, v9);
        if ((v64 & 1) == 0)
        {
          if (v74)
          {
            goto LABEL_16;
          }

LABEL_24:
          memcpy(v114, v115, 0x129uLL);
          *&v101[0] = __PAIR64__(v71, v73);
          *(&v101[0] + 1) = v68;
          LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v114, v112, v101, a3, v99);
          memcpy(v101, v5, 0x1D9uLL);
          memcpy(v100, v5, 0x1D9uLL);
          v45 = *(a3 - 8);
          (*(v45 + 16))(v114, v101, a3);
          v46 = implicit closure #4 in LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:matchingID:);
          goto LABEL_25;
        }

        memcpy(v114, v115, 0x129uLL);
        *&v101[0] = __PAIR64__(v71, v73);
        *(&v101[0] + 1) = v59;
        LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)(v114, v112, v101, a3, v99);
        memcpy(v101, v5, 0x1D9uLL);
        memcpy(v100, v5, 0x1D9uLL);
        v45 = *(a3 - 8);
        (*(v45 + 16))(v114, v101, a3);
        v46 = implicit closure #3 in LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:matchingID:);
      }
    }

LABEL_25:
    LazySubviewPlacements.logAndReturnContext(_:_:)(v99, v46, v69);
    memcpy(v114, v100, 0x1D9uLL);
    (*(v45 + 8))(v114, a3);
    result = outlined destroy of ScrollPosition(v112);
    goto LABEL_26;
  }

  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0;
  _s7SwiftUI25_LazyLayout_PlacedSubviewVSgWOhTm_0(&v106, &lazy cache variable for type metadata for ScrollPosition?, &type metadata for ScrollPosition, MEMORY[0x1E69E6720]);
LABEL_7:
  _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(v114);
  result = memcpy(a4, v114, 0x129uLL);
LABEL_26:
  *(v5 + 264) = 1;
  return result;
}

uint64_t PositionState.dispatchSubviewsChange<A>(context:layout:cache:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v38 - v12;
  v14 = *a1;
  memcpy(v75, a1 + 1, sizeof(v75));
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  AGGraphGetValue();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = *(v5 + 20);
  if (!v16)
  {
    return 0;
  }

  v42 = v11;
  v38 = *(v5 + 19);
  v39 = a5;
  v17 = v14;
  v18 = *(*a3 + 400);
  v40 = a4;

  v41 = v16;
  v18(AssociatedTypeWitness, AssociatedTypeWitness);
  LazyLayoutViewCache.subviews(context:)(v17, v62);
  v59 = 0;
  v60 = 1;
  v61 = MEMORY[0x1E69E7CC0];
  memcpy(v58, v75, sizeof(v58));
  v57 = v17;
  v20 = v39;
  v19 = v40;
  (*(v39 + 72))(v62, &v57, v13, &v59, v40, v39);
  v21 = v5[9];
  v22 = v5[7];
  v70 = v5[8];
  v71 = v21;
  v23 = v5[9];
  v72[0] = v5[10];
  *(v72 + 9) = *(v5 + 169);
  v24 = v5[5];
  v25 = v5[3];
  v66 = v5[4];
  v67 = v24;
  v26 = v5[5];
  v27 = v5[7];
  v68 = v5[6];
  v69 = v27;
  v28 = v5[1];
  v63[0] = *v5;
  v63[1] = v28;
  v29 = v5[3];
  v31 = *v5;
  v30 = v5[1];
  v64 = v5[2];
  v65 = v29;
  v54 = v70;
  v55 = v23;
  v56[0] = v5[10];
  *(v56 + 9) = *(v5 + 169);
  v50 = v66;
  v51 = v26;
  v52 = v68;
  v53 = v22;
  v46 = v31;
  v47 = v30;
  v48 = v64;
  v49 = v25;
  v32 = v61;
  v57 = v17;
  memcpy(v58, v75, sizeof(v58));
  outlined init with copy of PositionState(v63, &v44);
  PositionState.mainID<A>(subviews:context:layout:)(v32, &v57, v19, v20, &v44);

  v73[8] = v54;
  v73[9] = v55;
  v74[0] = v56[0];
  *(v74 + 9) = *(v56 + 9);
  v73[4] = v50;
  v73[5] = v51;
  v73[6] = v52;
  v73[7] = v53;
  v73[0] = v46;
  v73[1] = v47;
  v73[2] = v48;
  v73[3] = v49;
  outlined destroy of PositionState(v73);
  v33 = v45;
  if (v45)
  {
    v35 = v41;
    v34 = v42;
    if (v44 == v38)
    {

      swift_bridgeObjectRetain_n();
      v36 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(v33, v35);

      outlined destroy of _LazyLayout_Subviews(v62);
      (*(v34 + 8))(v13, AssociatedTypeWitness);
      swift_bridgeObjectRelease_n();

      if (v36)
      {
        return 0;
      }
    }

    else
    {

      outlined destroy of _LazyLayout_Subviews(v62);
      (*(v34 + 8))(v13, AssociatedTypeWitness);

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    outlined destroy of _LazyLayout_Subviews(v62);
    (*(v42 + 8))(v13, AssociatedTypeWitness);
  }

  return 1;
}

void *LazySubviewPlacements.makeDefaultPlacementContext(_:position:matchingID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v10 = *(a1 + 48);
  v109 = *(a1 + 32);
  v110 = v10;
  v111 = *(a1 + 64);
  v112 = *(a1 + 80);
  v11 = *(a1 + 16);
  v107 = *a1;
  v108 = v11;
  v12 = *(a1 + 88);
  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  v15 = *(a1 + 120);
  v16 = *(a1 + 136);
  v17 = *(a1 + 168);
  v101 = *(a1 + 152);
  v100 = v16;
  v98 = v14;
  v99 = v15;
  v18 = *(a1 + 184);
  v19 = *(a1 + 200);
  v20 = *(a1 + 216);
  v106 = *(a1 + 232);
  v105 = v20;
  v104 = v19;
  v102 = v17;
  v103 = v18;
  v21 = *(a1 + 248);
  v22 = *(a1 + 256);
  v23 = (a1 + 264);
  v97 = *(a1 + 264);
  v24 = *(a1 + 280);
  v25 = *(a1 + 288);
  v26 = *(a1 + 296);
  v27 = *a3;
  v28 = a3[1];
  outlined init with copy of ScrollPosition.Storage(a2, edge);
  v29 = *edge;
  if (v96 > 2u)
  {
    if (v96 == 3)
    {
      v33 = *edge - v21;
      v34 = v12 - v22;
      goto LABEL_19;
    }

    if (v96 == 4)
    {
      v33 = v13 - v21;
      v34 = *edge - v22;
      goto LABEL_19;
    }

LABEL_27:
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(v92);
    return memcpy(a5, v92, 0x129uLL);
  }

  if (v96)
  {
    if (v96 == 1)
    {
      v30 = *(a1 + 184);
      v31 = *(a1 + 216);
      v92[2] = *(a1 + 200);
      v92[3] = v31;
      v92[4] = *(a1 + 232);
      v32 = *(a1 + 168);
      v92[1] = v30;
      v92[0] = v32;
      *&v92[5] = v21;
      *(&v92[5] + 1) = v22;
      v92[6] = *v23;
      *&v29 = ScrollGeometry.targetRect(edge:)(edge[0]);
    }

    else
    {
      v113.origin.y = *&edge[8];
    }

    v33 = v29 - v21;
    v34 = v113.origin.y - v22;
    goto LABEL_19;
  }

  v61 = v23;
  v88 = *edge;
  v89 = v94;
  *v90 = *v95;
  *&v90[9] = *&v95[9];
  *&v92[0] = v27;
  *(&v92[0] + 1) = v28;
  v35 = _ViewList_ID.allExplicitIDs.getter();
  v36 = *(v35 + 16);
  if (!v36)
  {

    outlined destroy of ScrollPosition.ViewID(&v88);
    goto LABEL_27;
  }

  v59 = v26;
  v64 = 0;
  v37 = 0.0;
  v58 = v6;
  v60 = a4;
  v38 = 1;
  v39 = 32;
  v66 = v35;
  do
  {
    (*(**(v35 + v39) + 104))(v92);
    __swift_project_boxed_opaque_existential_1(v92, *(&v92[1] + 1));
    v40 = ScrollPosition.matches<A>(id:)();

    __swift_destroy_boxed_opaque_existential_1(v92);
    if (v40)
    {
      if (v38)
      {
        v63 = *(&v89 + 1);
        v65 = *v90;
        v62 = __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
        memcpy(__dst, v6, 0x1D9uLL);
        memcpy(__src, v6, sizeof(__src));
        v41 = *(a1 + 48);
        v67[2] = *(a1 + 32);
        v67[3] = v41;
        v67[4] = *(a1 + 64);
        v68 = *(a1 + 80);
        v42 = *(a1 + 16);
        v67[0] = *a1;
        v67[1] = v42;
        v69 = v12;
        v70 = v13;
        v71 = *(a1 + 104);
        v43 = *(a1 + 120);
        v44 = *(a1 + 136);
        v45 = *(a1 + 152);
        v75 = *(a1 + 168);
        v74 = v45;
        v73 = v44;
        v72 = v43;
        v46 = *(a1 + 184);
        v47 = *(a1 + 200);
        v48 = *(a1 + 216);
        v79 = *(a1 + 232);
        v78 = v48;
        v77 = v47;
        v76 = v46;
        v80 = v21;
        v81 = v22;
        v82 = *v61;
        v83 = v24;
        v84 = v25;
        v85 = v59;
        v49 = *&v90[8];
        v50 = *&v90[16];
        v51 = v90[24];
        v52 = *(v60 - 8);
        (*(v52 + 16))(v92, __dst, v60);
        v64 = LazySubviewPlacements.makeViewIDTranslation<A>(_:viewID:anchor:)(v67, v62, v49, v50, v51, v60, v63, v65);
        v37 = v53;
        v38 = v54;

        memcpy(v92, __src, 0x1D9uLL);
        (*(v52 + 8))(v92, v60);
        v6 = v58;
      }

      else
      {

        v38 = 0;
      }
    }

    else
    {
    }

    v39 += 8;
    --v36;
    v35 = v66;
  }

  while (v36);

  outlined destroy of ScrollPosition.ViewID(&v88);
  if (v38)
  {
    goto LABEL_27;
  }

  *&v33 = v64;
  v34 = v37;
  v26 = v59;
LABEL_19:
  if (fabs(v33) < 0.01 && fabs(v34) < 0.01)
  {
    goto LABEL_27;
  }

  memcpy(v92, v6, 0x1D9uLL);
  if ((LazySubviewPlacements.allowsContentOffsetAdjustments.getter() & 1) == 0)
  {
    goto LABEL_27;
  }

  v91[2] = v109;
  v91[3] = v110;
  v91[4] = v111;
  *&v91[5] = v112;
  v91[0] = v107;
  v91[1] = v108;
  *(&v91[5] + 1) = v12;
  *&v91[6] = v13;
  *(&v91[6] + 8) = v98;
  *(&v91[10] + 8) = v102;
  *(&v91[9] + 8) = v101;
  *(&v91[8] + 8) = v100;
  *(&v91[7] + 8) = v99;
  *(&v91[14] + 8) = v106;
  *(&v91[13] + 8) = v105;
  *(&v91[12] + 8) = v104;
  *(&v91[11] + 8) = v103;
  *(&v91[15] + 1) = v21;
  *&v91[16] = v22;
  *(&v91[16] + 8) = v97;
  *(&v91[17] + 1) = v24;
  *&v91[18] = v25;
  BYTE8(v91[18]) = v26;
  ScrollGeometry.translate(by:limit:)(__PAIR128__(*&v34, *&v33), __PAIR128__(v25, v24));
  ScrollGeometry.translate(by:limit:)(__PAIR128__(*&v34, *&v33), __PAIR128__(v25, v24));
  v55 = *&v91[16] - v22;
  *(v6 + 432) = *(&v91[15] + 1) - v21;
  *(v6 + 440) = v55;
  *(v6 + 448) = 0;
  memcpy(v92, v91, 0x129uLL);
  _ViewInputs.base.modify(v92, v56);
  return memcpy(a5, v92, 0x129uLL);
}

uint64_t _ViewList_ID.allExplicitIDs.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v9;
    v4 = (v1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v6 = *v4;
      v7 = *(v9 + 24);

      if (v5 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v5 + 1, 1);
      }

      *(v9 + 16) = v5 + 1;
      *(v9 + 8 * v5 + 32) = v6;
      v4 += 3;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

unint64_t LazySubviewPlacements.makeViewIDTranslation<A>(_:viewID:anchor:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a5;
  v61 = *&a3;
  v62 = a4;
  v69 = *(*(a6 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v68 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(v14 + 24);
  v71 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v72 = v56 - v16;
  v17 = a1[11];
  v103 = a1[10];
  v104 = v17;
  v105 = *(a1 + 24);
  v18 = a1[7];
  v99 = a1[6];
  v100 = v18;
  v19 = a1[9];
  v101 = a1[8];
  v102 = v19;
  v20 = a1[3];
  v95 = a1[2];
  v96 = v20;
  v21 = a1[5];
  v97 = a1[4];
  v98 = v21;
  v22 = a1[1];
  v93 = *a1;
  v94 = v22;
  v23 = *(a1 + 25);
  v24 = *(a1 + 26);
  v25 = *(a1 + 232);
  v91 = *(a1 + 216);
  v92 = v25;
  v27 = *(a1 + 31);
  v26 = *(a1 + 32);
  v28 = *(a1 + 33);
  v29 = *(a1 + 34);
  v89 = *(a1 + 280);
  v90 = *(a1 + 296);
  v30 = *(v8 + 104);
  v66 = *(v8 + 96);
  v60 = v30;
  *&v25 = *(v8 + 272);
  v58 = *(v8 + 280);
  v59 = *&v25;
  v32 = *(v8 + 400);
  v31 = *(v8 + 408);
  type metadata accessor for LazyLayoutViewCache();
  AGGraphGetValue();
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v34 = result;

  LazyLayoutViewCache.subviews(context:)(v34, v86);

  default argument 1 of _LazyLayout_Subviews.firstIndex<A>(id:style:)(v74);
  v64 = *&a2;
  v65 = *&a7;
  v35 = _LazyLayout_Subviews.firstIndex<A>(id:style:)(a2, v74, a7, a8);
  if (v36)
  {
LABEL_5:
    outlined destroy of _LazyLayout_Subviews(v86);
    return 0;
  }

  v37 = v35;
  v57 = *&a8;
  v38 = *(**AGGraphGetValue() + 400);

  v39 = v72;
  v40 = AssociatedTypeWitness;
  v38(AssociatedTypeWitness, AssociatedTypeWitness);

  v41 = v71;
  Value = AGGraphGetValue();
  v43 = v68;
  v44 = v69;
  (*(v69 + 16))(v68, Value, COERCE_DOUBLE(*&v41));
  v74[10] = v103;
  v74[11] = v104;
  v74[6] = v99;
  v74[7] = v100;
  v74[8] = v101;
  v74[9] = v102;
  v74[2] = v95;
  v74[3] = v96;
  v74[4] = v97;
  v74[5] = v98;
  v74[0] = v93;
  v74[1] = v94;
  v78 = v91;
  v75 = v105;
  v76 = v23;
  v77 = v24;
  v79 = v92;
  v80 = v27;
  v81 = v26;
  v82 = v28;
  v83 = v29;
  v84 = v89;
  v85 = v90;
  v45 = v70;
  (*(*&v70 + 112))(v87, v37, v86, v74, v39, COERCE_DOUBLE(*&v41), COERCE_DOUBLE(*&v70));
  v46 = (*(v44 + 8))(v43, COERCE_DOUBLE(*&v41));
  if (v88)
  {
    (*(v67 + 8))(v39, v40);
    goto LABEL_5;
  }

  *&v68 = v27;
  v69 = v26;
  v47 = *v87;
  v56[0] = *&v87[2];
  v56[1] = *&v87[3];
  MEMORY[0x1EEE9AC00](v46);
  v49 = v65;
  v48 = v66;
  v56[-6] = v41;
  v56[-5] = v49;
  v50 = v57;
  v56[-4] = v45;
  v56[-3] = v50;
  v56[-2] = v64;
  result = specialized Collection.firstIndex(where:)(partial apply for closure #1 in LazySubviewPlacements.makeViewIDTranslation<A>(_:viewID:anchor:), &v56[-8], v48);
  if (v51)
  {
    if (v63)
    {
      v52 = 0.0;
    }

    else
    {
      v52 = v61;
    }

    (*(v67 + 8))(v39, AssociatedTypeWitness);
    outlined destroy of _LazyLayout_Subviews(v86);
    v53 = v47 + v52 * v56[0] - v24 - (*&v68 + v52 * v28);
    return *&v53;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (result >= *(v60 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v54 = *(v60 + 32 * result + 32);
  (*(v67 + 8))(v39, AssociatedTypeWitness);
  result = outlined destroy of _LazyLayout_Subviews(v86);
  if (v32 < 0.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v31 >= 0.0)
  {
    if (v32 >= v54)
    {
      v55 = v54;
    }

    else
    {
      v55 = v32;
    }

    if (v54 < 0.0)
    {
      v55 = 0.0;
    }

    v53 = v47 - *&v68 - (v55 - v59);
    return *&v53;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t _ViewList_Node.firstOffset<A>(forID:style:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  outlined init with copy of _ViewList_Node(v4, &v17);
  if (v20 > 1u)
  {
    if (v20 == 2)
    {
      v13[0] = v17;
      v16 = v8;
      v11 = _ViewList_Group.firstOffset<A>(forID:style:)(a1, &v16, a3, a4);
    }

    else
    {
      LODWORD(v13[0]) = v17;
      v13[1] = *(&v17 + 1);
      v13[2] = v18;
      LOBYTE(v14) = v19;
      v16 = v8;
      v11 = _ViewList_Section.firstOffset<A>(forID:style:)(a1, &v16, a3, a4);
    }
  }

  else if (v20)
  {
    outlined destroy of _ViewList_Node(&v17);
    return 0;
  }

  else
  {
    outlined init with take of AnyTrackedValue(&v17, v13);
    v9 = v14;
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v16 = v8;
    v11 = (*(v10 + 80))(a1, &v16, a3, a4, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v11;
}

void destroy for Image.CGImageProvider(uint64_t a1)
{
  if (*(a1 + 48))
  {
    outlined consume of Text.Storage(*(a1 + 24), *(a1 + 32), *(a1 + 40));
  }
}

uint64_t ForEachState.firstOffset<A>(forID:style:)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  v9 = *a2;
  v10 = ForEachState.matchingStrategy<A>(for:)(a3, a3);
  v21 = 0;
  v22 = 0;
  v23 = 1;
  v19 = v9;
  v20 = 0;
  MEMORY[0x1EEE9AC00](v10);
  v13[2] = a3;
  v13[3] = a4;
  v14 = v11;
  v15 = a1;
  v16 = v4;
  v17 = &v20;
  v18 = &v22;
  ForEachState.forEachItem(from:style:do:)(&v21, &v19, partial apply for closure #1 in ForEachState.firstOffset<A>(forID:style:), v13);
  return v22;
}

uint64_t ForEachState.matchingStrategy<A>(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 280);
  swift_beginAccess();
  v7 = *(v2 + v6);
  v21[0] = a2;
  v8 = v4[10];
  v9 = v4[11];
  v10 = v4[12];
  v11 = v4[13];
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v20 = *(v5 + 7);
  v28 = v20;
  v12 = type metadata accessor for ForEachState.IDTypeMatchingStrategy();
  MEMORY[0x193ABE750](&v22, v21, v7, MEMORY[0x1E69E5FE0], v12, MEMORY[0x1E69E5FE8]);
  v13 = v22;
  if (v22 != 4)
  {
    goto LABEL_26;
  }

  swift_endAccess();
  v14 = v2 + *(*v2 + 160);
  swift_beginAccess();
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  *&v28 = v20;
  v15 = type metadata accessor for ForEach();
  result = (*(*(v15 - 8) + 48))(v14, 1, v15);
  if (result != 1)
  {
    v17 = *(v14 + *(v15 + 64));
    v24 = v8;
    v25 = v9;
    v26 = v10;
    v27 = v11;
    *&v28 = v20;
    type metadata accessor for ForEach.IDGenerator();
    if (!v17)
    {
      v13 = 3;
      v18 = a2;
      goto LABEL_25;
    }

    v18 = a2;
    if (v9 == a2)
    {
      v13 = 0;
      goto LABEL_25;
    }

    if (one-time initialization token for v6 != -1)
    {
      swift_once();
    }

    v19 = static Semantics.v6;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_17;
      }
    }

    else if (static Semantics.forced < v19)
    {
LABEL_17:
      if (byte_1ED53C51C == 1)
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else if (static Semantics.forced < v19)
      {
LABEL_24:
        v13 = 3;
        goto LABEL_25;
      }

      if (!swift_conformsToProtocol2() || !v9)
      {
        goto LABEL_24;
      }

      v13 = 2;
LABEL_25:
      v23 = v13;
      v22 = v18;
      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
LABEL_26:
      swift_endAccess();
      return v13;
    }

    if (v9 == MEMORY[0x1E69E69B8])
    {
      v13 = 1;
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

Swift::Int closure #1 in ForEachState.firstOffset<A>(forID:style:)(uint64_t a1, void *a2, char *a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v101 = a8;
  v98 = a7;
  v99 = a2;
  v96 = a6;
  LODWORD(v100) = a4;
  v11 = a3;
  v94 = *a3;
  v12 = *(a9 - 8);
  v97 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v84 - v21;
  v95 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v84 - v25;
  v35 = MEMORY[0x1EEE9AC00](v27);
  v99 = *v99;
  v110 = 0;
  if (v100 >= 2u)
  {
    v54 = a9;
    v55 = v101;
    if (v100 == 2)
    {
      (*(v30 + 16))(v19, &v11[*(v94 + 160)], v35);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for HasCustomIDRepresentation);
      swift_dynamicCast();
      v56 = v107;
      v57 = v108;
      __swift_project_boxed_opaque_existential_1(&v106, v107);
      LOBYTE(v56) = (*(v57 + 8))(a5, a9, v97, v56, v57);
      __swift_destroy_boxed_opaque_existential_1(&v106);
      if (v56)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v86 = v34;
    v85 = v14;
    v87 = v33;
    v36 = v12[2];
    v94 = v32;
    v100 = v28;
    v90 = a5;
    v37 = a5;
    v38 = &v84 - v31;
    v39 = v29;
    v91 = v15;
    v40 = v30;
    v36(&v84 - v31, v37, a9, v35);
    v41 = v12[7];
    v41(v38, 0, 1, a9);
    v42 = *(*v11 + 160);
    v43 = *(v40 + 16);
    v89 = v11;
    v43(v22, &v11[v42], v39);
    v44 = swift_dynamicCast();
    v41(v26, v44 ^ 1u, 1, a9);
    v45 = *(v100 + 48);
    v46 = v94;
    v47 = v95;
    v48 = *(v95 + 16);
    v92 = v38;
    v49 = v38;
    v50 = v45;
    v51 = v91;
    v48(v94, v49, v91);
    v93 = v26;
    v48(&v46[v50], v26, v51);
    v88 = v12;
    v52 = v12[6];
    if (v52(v46, 1, a9) == 1)
    {
      v53 = *(v47 + 8);
      v53(v92, v51);
      v54 = a9;
      if (v52(&v46[v50], 1, a9) == 1)
      {
        v53(v46, v51);
        v53(v93, v51);
        v55 = v101;
LABEL_21:
        v66 = v98;
        v64 = v99;
        v60 = v96;
        if (!*v98)
        {
LABEL_36:
          v59.value = 0;
          *v55 = v110;
          *(v55 + 8) = 0;
          return v59.value;
        }

        v68 = 0;
LABEL_23:
        v59 = ForEachState.fetchViewsPerElement()();
        if (v59.is_nil)
        {
          v74 = *(v60 + *(*v60 + 184));
          v75 = *(v74 + 16);
          v76 = *v66;
          if (v75 < *v66 || *(v60 + *(*v60 + 192)) != v64)
          {
            v106 = 0;
            v102 = v64;
            v103[0] = 0;
            MEMORY[0x1EEE9AC00](v59.value);
            v82 = v97;
            *(&v84 - 6) = v54;
            *(&v84 - 5) = v82;
            *(&v84 - 4) = v103;
            *(&v84 - 3) = v66;
            *(&v84 - 2) = &v110;
            *(&v84 - 1) = v60;
            ForEachState.forEachItem(from:style:do:)(&v106, &v102, partial apply for closure #1 in closure #1 in ForEachState.firstOffset<A>(forID:style:), (&v84 - 8));
            goto LABEL_36;
          }

          if (v76 - 1 >= v75)
          {
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          v77 = *(v74 + 8 * (v76 - 1) + 32);
          v78 = __OFADD__(v68, v77);
          v79 = v68 + v77;
          if (!v78)
          {
            goto LABEL_34;
          }

          __break(1u);
        }

        if ((v64 & 1) == 0 || (v80 = (v59.value * (v64 >> 1)) >> 64, v59.value *= v64 >> 1, v80 == v59.value >> 63))
        {
          v81 = *v66 * v59.value;
          if ((*v66 * v59.value) >> 64 == v81 >> 63)
          {
            v78 = __OFADD__(v68, v81);
            v79 = v68 + v81;
            if (!v78)
            {
LABEL_34:
              v110 = v79;
              goto LABEL_36;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_40;
      }

      v55 = v101;
      goto LABEL_11;
    }

    v58 = v86;
    v48(v86, v46, v51);
    if (v52(&v46[v50], 1, a9) == 1)
    {
      v53 = *(v47 + 8);
      v53(v92, v51);
      (v88[1])(v58, a9);
      v55 = v101;
      v54 = a9;
LABEL_11:
      a5 = v90;
      (*(v87 + 8))(v46, v100);
      v53(v93, v51);
      v11 = v89;
      goto LABEL_12;
    }

    v69 = v88;
    v70 = v85;
    (v88[4])(v85, &v46[v50], a9);
    v71 = dispatch thunk of static Equatable.== infix(_:_:)();
    v72 = v69[1];
    v72(v70, a9);
    v73 = *(v47 + 8);
    v73(v92, v51);
    v72(v58, a9);
    v73(v46, v51);
    v73(v93, v51);
    v55 = v101;
    v54 = a9;
    a5 = v90;
    v11 = v89;
    if (v71)
    {
      goto LABEL_21;
    }
  }

LABEL_12:
  outlined init with copy of _ViewListOutputs.Views(&v11[*(*v11 + 176)], &v106);
  if (v109)
  {

    v60 = v96;
    if (*(v96 + 172) == 1)
    {
LABEL_41:
      __break(1u);
      return v59.value;
    }

    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    InputValue = AGGraphGetInputValue();
    outlined init with copy of AnyTrackedValue(InputValue, v103);
    v62 = v104;
    v63 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    v64 = v99;
    v102 = v99;
    v65 = (*(v63 + 80))(a5, &v102, v54, v97, v62, v63);
    v66 = v98;
    if ((v67 & 1) == 0)
    {
      v68 = v65;
      __swift_destroy_boxed_opaque_existential_1(v103);
      v110 = v68;
      if (!*v66)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    __swift_destroy_boxed_opaque_existential_1(v103);
  }

  else
  {
    outlined destroy of _ViewListOutputs.Views(&v106);
    v66 = v98;
  }

  ++*v66;
  v59.value = 1;
  return v59.value;
}

uint64_t LazyStack<>.boundingRect(at:subviews:context:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v191 = a2;
  v200 = a1;
  v199 = a7;
  v11 = type metadata accessor for EstimationCache();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v183 = (&v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v186 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v185 = &v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for StackPlacement();
  v182 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v181 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v180 = &v165 - v17;
  v18 = type metadata accessor for MinorProperties();
  v19 = type metadata accessor for Optional();
  *&v195 = COERCE_DOUBLE(swift_getTupleTypeMetadata2());
  v190 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v192 = &v165 - v20;
  v204 = type metadata accessor for _LazyStack_Cache();
  v198 = *(v204 - 1);
  MEMORY[0x1EEE9AC00](v204);
  v205 = &v165 - v21;
  v22 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v189 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v194 = &v165 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v165 - v28;
  v30 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v188 = &v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = (&v165 - v35);
  LODWORD(v196) = *(a3 + 12);
  v37 = *(a3 + 32);
  v38 = *(a3 + 40);
  v39 = *(a3 + 136);
  v40 = *(a3 + 144);
  v41 = *(a3 + 152);
  v42 = *(a3 + 160);
  v203 = (*(a6 + 32))(a5, a6, v34) & 1;
  if (v203)
  {
    v43 = v37;
  }

  else
  {
    v43 = v38;
  }

  v214 = v43;
  v201 = *&a5;
  v197 = a6;
  LazyStack<>.resolveMinorProperties(minorSize:cache:)(&v214, a5, a6, v29);
  v44 = v30;
  v45 = *(v30 + 48);
  v46 = v45(v29, 1, v18);
  if (v46 == 1)
  {
    *&result = COERCE_DOUBLE((*(v22 + 8))(v29, v19));
    v48 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
    v52 = v199;
LABEL_66:
    *v52 = v48;
    *(v52 + 8) = v49;
    *(v52 + 16) = v50;
    *(v52 + 24) = v51;
    *(v52 + 32) = v46 == 1;
    return result;
  }

  v178 = v22;
  v174 = *(v44 + 32);
  *&result = COERCE_DOUBLE(v174(v36, v29, v18));
  v53 = *v36;
  if (!*v36)
  {
    __break(1u);
    goto LABEL_126;
  }

  if (v200 == 0x8000000000000000 && v53 == -1)
  {
    goto LABEL_127;
  }

  v173 = v44 + 32;
  v54 = v200 / v53;
  v175 = v200 / v53 * v53;
  if ((v200 / v53 * v53) >> 64 != v175 >> 63)
  {
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v193 = v44;
  v55 = v205;
  (*(v198 + 16))(v205, a4, v204);
  v215.origin.x = v39;
  v215.origin.y = v40;
  v215.size.width = v41;
  v215.size.height = v42;
  IsNull = CGRectIsNull(v215);
  v57 = 0.0;
  if (v203)
  {
    v58 = v42;
  }

  else
  {
    v58 = v41;
  }

  if (v203)
  {
    v59 = v40;
  }

  else
  {
    v59 = v39;
  }

  v60 = v59 + v58;
  if (v60 >= v59)
  {
    v61 = v59;
  }

  else
  {
    v61 = v60;
  }

  if (v59 > v60)
  {
    v60 = v59;
  }

  if (v61 <= v60)
  {
    v62 = v61;
  }

  else
  {
    v60 = 0.0;
    v62 = 0.0;
  }

  if (IsNull)
  {
    v63 = 0.0;
  }

  else
  {
    v63 = v62;
  }

  if (IsNull)
  {
    v64 = 0.0;
  }

  else
  {
    v64 = v60;
  }

  v65 = 0.0;
  if (v196 != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v57 = *Value;
    v65 = Value[1];
  }

  v179 = v46;
  v187 = v18;
  if (v203)
  {
    v57 = v65;
  }

  v67 = v197;
  v68 = specialized LazyStack<>.shouldResetEstimates(visibleLength:containerLength:cache:)(COERCE__INT64(v64 - v63), 0, *&v57, 0, v55, *&v201, v197);
  v69 = v204;
  v70 = v19;
  v176 = v68;
  if (v68)
  {
    _LazyStack_Cache.resetEstimates()(v204);
    v55 = v205;
  }

  v177 = v45;
  v71 = *(v69 + 60);
  if (!*(*(v55 + v71) + 16))
  {
    *&v207 = 0;
    v206 = 0;
    LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(&v207, &v206, v36, v191, v55, *&v201, v67);
    v55 = v205;
  }

  v196 = v36;
  v72 = v55;
  *&result = COERCE_DOUBLE(EstimationCache.average.getter());
  v75 = v74;
  v76 = *&result;
  v77 = 0.0;
  if (v73)
  {
    v78 = 0.0;
  }

  else
  {
    v78 = *&result;
  }

  v49 = (v74 + v78) * v54;
  v79 = (v55 + *(v69 + 40));
  v80 = *v79;
  if (*v79 == v79[1])
  {
    v81 = v187;
    v52 = v199;
    goto LABEL_51;
  }

  v169 = v54;
  v168 = v53;
  v171 = v80;
  v172 = v71;
  v170 = v73;
  v82 = v193;
  v83 = *(v193 + 16);
  v84 = v194;
  v85 = v187;
  v167 = v193 + 16;
  v166 = v83;
  v83(v194, v196, v187);
  (*(v82 + 56))(v84, 0, 1, v85);
  v86 = *(v195 + 48);
  v87 = v178;
  v88 = *(v178 + 16);
  v89 = v192;
  v88(v192, v84, v70);
  v88(&v89[v86], v72, v70);
  v90 = v177;
  if (v177(v89, 1, v85) != 1)
  {
    v94 = v189;
    v88(v189, v89, v70);
    if (v90(&v89[v86], 1, v85) != 1)
    {
      v96 = v188;
      v174(v188, &v89[v86], v85);
      v93 = *&v201;
      v97 = static MinorProperties.== infix(_:_:)(v94, v96);
      v98 = *(v193 + 8);
      v98(v96, v85);
      v99 = *(v178 + 8);
      v99(v194, v70);
      v98(v94, v85);
      *&result = COERCE_DOUBLE((v99)(v89, v70));
      v52 = v199;
      v71 = v172;
      if (!(v176 & 1 | ((v97 & 1) == 0)))
      {
        goto LABEL_69;
      }

      v81 = v85;
LABEL_50:
      v72 = v205;
LABEL_51:
      if (*(*&v72[v71] + 16))
      {
        v95 = v75;
      }

      else
      {
        v95 = 0.0;
      }

LABEL_54:
      if (v203)
      {
        v50 = v37;
      }

      else
      {
        v50 = v95;
      }

      if (v203)
      {
        v51 = v95;
      }

      else
      {
        v51 = v38;
      }

      if (v203)
      {
        v48 = 0.0;
      }

      else
      {
        v48 = v49;
      }

      if (!v203)
      {
        v49 = 0.0;
      }

      MEMORY[0x1EEE9AC00](result);
      specialized LazyStack<>.log(_:)(partial apply for implicit closure #2 in LazyStack<>.boundingRect(at:subviews:context:cache:));
      (*(v193 + 8))(v196, v81);
      *&result = COERCE_DOUBLE((*(v198 + 8))(v72, v204));
      v46 = v179;
      goto LABEL_66;
    }

    (*(v178 + 8))(v194, v70);
    (*(v193 + 8))(v94, v85);
    v52 = v199;
    v81 = v85;
    v71 = v172;
LABEL_49:
    *&result = COERCE_DOUBLE((*(v190 + 8))(v89, v195));
    goto LABEL_50;
  }

  v91 = *(v87 + 8);
  v91(v84, v70);
  v92 = v90(&v89[v86], 1, v85);
  v52 = v199;
  v93 = *&v201;
  v81 = v85;
  v71 = v172;
  if (v92 != 1)
  {
    goto LABEL_49;
  }

  *&result = COERCE_DOUBLE((v91)(v89, v70));
  if (v176)
  {
    goto LABEL_50;
  }

LABEL_69:
  if ((v169 < 1) | v170 & 1)
  {
    v100 = v49;
  }

  else
  {
    v100 = v49 - v76;
  }

  v101 = v175 - v171;
  if (__OFSUB__(v175, v171))
  {
    goto LABEL_128;
  }

  v102 = v52;
  v103 = v168;
  v104 = v205;
  if (v168 == -1 && v101 == 0x8000000000000000)
  {
    goto LABEL_129;
  }

  v105 = v101 / v168;
  v106 = v101 / v168;
  if (v101 / v168 < 0)
  {
    v106 = -v105;
    if (__OFSUB__(0, v105))
    {
      goto LABEL_131;
    }
  }

  v107 = v106;
  v108 = v204;
  v109 = *(*&v205[v204[15]] + 16);
  v165 = v78;
  if (v109)
  {
    *&result = COERCE_DOUBLE(EstimationCache.average.getter());
    v104 = v205;
    v111 = *&result;
    if (v112)
    {
      v111 = 0.0;
    }

    v113 = v110 + v111;
    v114 = *(*&v205[v108[15]] + 16) == 0;
  }

  else
  {
    v114 = 1;
    v113 = 32.0;
  }

  v115 = v113 * v107;
  v116 = &v104[v108[12]];
  v118 = *v116;
  v117 = v116[1];
  v119 = *&v104[v108[11]];
  v120 = v105;
  if (v114)
  {
    v121 = 32.0;
  }

  else
  {
    v201 = v100;
    *&v195 = v119;
    v122 = v75;
    v123 = v115;
    *&result = COERCE_DOUBLE(EstimationCache.average.getter());
    v115 = v123;
    v75 = v122;
    v125 = *&result;
    if (v126)
    {
      v125 = 0.0;
    }

    v119 = *&v195;
    v100 = v201;
    v121 = v124 + v125;
  }

  v81 = v187;
  v52 = v102;
  v127 = 2 * v103;
  v128 = v119 + v121 * v120;
  if (v128 < 0.0)
  {
    *&v129 = v100;
  }

  else
  {
    *&v129 = v128;
  }

  v130 = v117 - v118;
  if (v115 < v130 * 3.0)
  {
    v131 = v119;
    v201 = *&v129;
    v132 = *(v186 + 16);
    v133 = v185;
    v186 += 16;
    (v132)(v185, *&v202, v93);
    v134 = v188;
    v166(v188, v196, v81);
    LODWORD(v206) = 0;
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v207 = 0u;
    v135 = v183;
    default argument 18 of StackPlacement.init(stack:axis:minor:visible:pinnedViews:queriedIndex:index:skipFirst:position:stoppingCondition:currentSubviews:lastSubviews:pendingHeader:placedSubviews:placedIndex:placedPosition:placedQuery:wasCancelled:estimations:)(v183);
    v163 = v135;
    v136 = v180;
    v137 = v133;
    v138 = v200;
    StackPlacement.init(stack:axis:minor:visible:pinnedViews:queriedIndex:index:skipFirst:position:stoppingCondition:currentSubviews:lastSubviews:pendingHeader:placedSubviews:placedIndex:placedPosition:placedQuery:wasCancelled:estimations:)(v137, v203, v134, &v206, v200, 0, 0, 0, v180, INFINITY, INFINITY, 0.0, INFINITY, -INFINITY, INFINITY, -INFINITY, 0, 1, MEMORY[0x1E69E7CC0], 0, &v207, MEMORY[0x1E69E7CC0], 0x7FFFFFFFFFFFFFFFLL, 0x8000000000000000, 0, v163, v93);
    v139 = v184;
    *&v195 = v130;
    if (v101 < 0)
    {
      LOBYTE(v206) = 0;
      *&v207 = v127;
      v146 = v127;
      v147 = v175;
      v141 = v171;
      v148 = v191;
      v149 = specialized LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:)(v175, v171, v191, &v207, &v206);
      v194 = v132;
      v150 = v147 == 0;
      v127 = v146;
      v151 = v150;
      StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(v149, v141, v151, v206, 0, v139, v131);
      v132 = v194;

      v142 = *(v136 + v139[14]);
      v143 = *(v136 + v139[16]);
      *&v207 = v146;
      v140 = v148;
    }

    else
    {
      *&v207 = v127;
      v140 = v191;
      v141 = v171;
      v142 = v171;
      v143 = v131;
    }

    *&result = COERCE_DOUBLE(StackPlacement.place(subviews:from:position:stopping:style:)(v143, v140, v142, v138, 0, &v207, v139));
    v152 = (v136 + v139[24]);
    v153 = *v152;
    v154 = v152[1];
    v49 = 0.0;
    v155 = 0.0;
    v145 = v185;
    if (*v152 < v154)
    {
      v49 = *v152;
      v155 = v152[1];
      if (*v152 > v154)
      {
        goto LABEL_132;
      }
    }

    *&result = COERCE_DOUBLE((*(v182 + 8))(v136, v139));
    v81 = v187;
    if (v153 < v154)
    {
      if (v49 >= 0.0)
      {
        v95 = v155 - v49;
        if (v141 <= v200)
        {
          v52 = v199;
          v71 = v172;
          goto LABEL_122;
        }

        v144 = 1;
        goto LABEL_110;
      }

      v95 = -1.0;
      v130 = *&v195;
      if (v141 > v200)
      {
        v144 = 0;
        v49 = v201;
LABEL_111:
        (v132)(v145, *&v202, v93);
        goto LABEL_112;
      }

      v49 = v201;
    }

    else
    {
      v95 = -1.0;
      v49 = v201;
      if (v141 > v200)
      {
        v144 = 0;
LABEL_110:
        v130 = *&v195;
        goto LABEL_111;
      }
    }

    v52 = v199;
    v71 = v172;
    goto LABEL_121;
  }

  v95 = -1.0;
  v139 = v184;
  if (v171 <= v200)
  {
    v49 = *&v129;
    goto LABEL_121;
  }

  v144 = 0;
  v49 = *&v129;
  v145 = v185;
  (*(v186 + 16))(v185, COERCE_DOUBLE(*&v202), v93);
LABEL_112:
  v156 = v188;
  *&result = COERCE_DOUBLE((v166)(v188, v196, v81));
  if (v130 < 0.0)
  {
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  LODWORD(v206) = 0;
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v207 = 0u;
  v157 = v183;
  default argument 18 of StackPlacement.init(stack:axis:minor:visible:pinnedViews:queriedIndex:index:skipFirst:position:stoppingCondition:currentSubviews:lastSubviews:pendingHeader:placedSubviews:placedIndex:placedPosition:placedQuery:wasCancelled:estimations:)(v183);
  v164 = v157;
  v202 = 0.0;
  v158 = v181;
  StackPlacement.init(stack:axis:minor:visible:pinnedViews:queriedIndex:index:skipFirst:position:stoppingCondition:currentSubviews:lastSubviews:pendingHeader:placedSubviews:placedIndex:placedPosition:placedQuery:wasCancelled:estimations:)(v145, v203, v156, &v206, v200, 0, 0, 0, v181, 0.0, v130, 0.0, INFINITY, -INFINITY, INFINITY, -INFINITY, 0, 1, MEMORY[0x1E69E7CC0], 0, &v207, MEMORY[0x1E69E7CC0], 0x7FFFFFFFFFFFFFFFLL, 0x8000000000000000, 0, v164, v93);
  *&v207 = v127;
  *&result = COERCE_DOUBLE(StackPlacement.place(subviews:from:position:stopping:style:)(0.0, v191, 0, 0, 1, &v207, v139));
  v159 = (v158 + v139[24]);
  v161 = *v159;
  v160 = v159[1];
  v162 = *v159 > v160;
  v52 = v199;
  if (*v159 >= v160 || (v202 = *v159, v77 = v160, !v162))
  {
    *&result = COERCE_DOUBLE((*(v182 + 8))(v181, v139));
    v71 = v172;
    if (v161 < v160)
    {
      v49 = v202;
      v95 = v77 - v202;
      v81 = v187;
      goto LABEL_122;
    }

    v81 = v187;
    if (v144)
    {
LABEL_122:
      v72 = v205;
      if (v95 >= 0.0)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

LABEL_121:
    v49 = v165 + v49;
    goto LABEL_122;
  }

LABEL_133:
  __break(1u);
  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 32); ; i += 5)
  {
    v8 = i[1];
    v9 = i[3];
    v26 = i[2];
    v27 = v9;
    v10 = i[3];
    v28 = i[4];
    v11 = i[1];
    v25[0] = *i;
    v25[1] = v11;
    v22 = v26;
    v23 = v10;
    v24 = i[4];
    v20 = v25[0];
    v21 = v8;
    outlined init with copy of _LazyLayout_PlacedSubview(v25, &v15);
    v12 = a1(&v20);
    if (v3)
    {
      break;
    }

    v13 = v12;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v15 = v20;
    v16 = v21;
    outlined destroy of _LazyLayout_PlacedSubview(&v15);
    if (v13)
    {
      return v6;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  v17 = v22;
  v18 = v23;
  v19 = v24;
  v15 = v20;
  v16 = v21;
  outlined destroy of _LazyLayout_PlacedSubview(&v15);
  return v6;
}

uint64_t closure #1 in LazySubviewPlacements.makeViewIDTranslation<A>(_:viewID:anchor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _ViewList_ID.containsID<A>(_:)(a2, a4);
  v7 = v6;

  return v7 & 1;
}

void _ViewList_ID.containsID<A>(_:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v20 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v16 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 8);
  v22 = *(v11 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = (v11 + 32);
    v14 = (v8 + 48);
    v18 = (v8 + 8);
    v19 = (v8 + 32);
    v17 = (v7 + 8);
    while (v12 < *(v11 + 16))
    {
      v23 = *v13;
      swift_retain_n();
      AnyHashable2.as<A>(type:)();

      if ((*v14)(v5, 1, a2) == 1)
      {

        (*v17)(v5, v20);
      }

      else
      {
        (*v19)(v10, v5, a2);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();

        (*v18)(v10, a2);
        if (v15)
        {
          return;
        }
      }

      ++v12;
      v13 += 3;
      if (v22 == v12)
      {
        return;
      }
    }

    __break(1u);
  }
}

double LazySubviewPlacements.parent.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyTrackedValue(WeakValue, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t LazySubviewPlacements.allowsContentOffsetAdjustments.getter()
{
  AGGraphClearUpdate();
  LazySubviewPlacements.parent.getter(v4);
  AGGraphSetUpdate();
  v0 = v5;
  if (v5)
  {
    v1 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = (*(v1 + 24))(v0, v1);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    outlined destroy of Scrollable?(v4);
    v2 = 1;
  }

  return v2 & 1;
}

Swift::Void __swiftcall ScrollGeometry.translate(by:limit:)(CGSize by, CGSize limit)
{
  height = by.height;
  v4 = vaddq_f64(*v2, __PAIR128__(*&height, *&by.width));
  v5 = vsubq_f64(v4, *v2);
  v6 = limit.height;
  v7 = *(v2 + 8) - *(v2 + 8);
  v8 = vaddq_f64(vextq_s8(*(v2 + 48), *(v2 + 48), 8uLL), vsubq_f64(__PAIR128__(*&v6, *&limit.width), *(v2 + 64)));
  v9 = vandq_s8(v8, vcgezq_f64(v8));
  v10 = vnegq_f64(vextq_s8(*(v2 + 32), *(v2 + 32), 8uLL));
  v11 = vbslq_s8(vcgeq_f64(v4, v10), v4, v10);
  v12 = vbslq_s8(vcgtq_f64(v11, v9), v9, v11);
  v11.f64[0] = vsubq_f64(v12, v4).f64[0];
  v13.f64[0] = v12.f64[0];
  v13.f64[1] = v4.f64[1];
  v14 = vsubq_f64(v12, v13);
  v5.f64[0] = *(v2 + 80) + v5.f64[0] + v11.f64[0];
  v11.f64[0] = v14.f64[0];
  v11.f64[1] = v7 + v7 + *(v2 + 88);
  *(v2 + 80) = vaddq_f64(v14, vaddq_f64(v5, v11));
  *v2 = v12;
}

void *LazySubviewPlacements.logAndReturnContext(_:_:)@<X0>(void *__src@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  memcpy(v9, __src, sizeof(v9));
  memcpy(__dst, __src, 0x129uLL);
  if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) != 1)
  {
    v6 = a2();
    specialized LazySubviewPlacements.logDefaultPlacement(_:)(v6, v7);
  }

  return memcpy(a3, v9, 0x129uLL);
}

uint64_t specialized LazySubviewPlacements.logDefaultPlacement(_:)(uint64_t a1, unint64_t a2)
{
  _s2os6LoggerVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  if (one-time initialization token for scroll != -1)
  {
    v20 = v5;
    swift_once();
    v5 = v20;
  }

  v8 = __swift_project_value_buffer(v5, static Log.scroll);
  outlined init with copy of Logger?(v8, v7);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    return outlined destroy of Logger?(v7, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315394;
    v17 = _typeName(_:qualified:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v22);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, a2, &v22);
    _os_log_impl(&dword_18D018000, v12, v13, "%s: Placing default subviews %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v16, -1, -1);
    MEMORY[0x193AC4820](v15, -1, -1);
  }

  return (*(v10 + 8))(v7, v9);
}