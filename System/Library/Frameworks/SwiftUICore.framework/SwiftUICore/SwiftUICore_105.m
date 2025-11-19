SwiftUI::Spacing __swiftcall ResolvedStyledText.spacing()()
{
  result.minima._rawValue = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

CGSize __swiftcall ResolvedStyledText.size(in:)(CGSize in)
{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result.height = v2;
  result.width = v1;
  return result;
}

void ResolvedStyledText.layoutValue(in:with:applyingMarginOffsets:)(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t ResolvedStyledText.resolvingContent(in:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ResolvableStringResolutionContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *(v1 + 216);
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  if (!NSAttributedString.isDynamic.getter() || ([v8 mutableCopy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableAttributedString), (swift_dynamicCast() & 1) == 0))
  {

LABEL_14:

    return v2;
  }

  v9 = one-time initialization token for resolvableTextSegment;
  v10 = v155;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = static NSAttributedStringKey.resolvableTextSegment;
  v12 = [v10 length];
  outlined init with copy of ResolvableStringResolutionContext(a1, &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ResolvableStringResolutionContext);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(&v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ResolvableStringResolutionContext);
  v15 = swift_allocObject();
  *(v15 + 16) = closure #1 in static ResolvableTextSegmentAttribute.update(_:in:)partial apply;
  *(v15 + 24) = v14;
  *&v138 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  *(&v138 + 1) = v15;
  *&v136 = MEMORY[0x1E69E9820];
  *(&v136 + 1) = 1107296256;
  *&v137 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  *(&v137 + 1) = &block_descriptor_33_0;
  v16 = _Block_copy(&v136);
  v17 = v10;

  [v17 enumerateAttribute:v11 inRange:0 options:v12 usingBlock:{2, v16}];

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    swift_beginAccess();
    v19 = *(v2 + 128);
    v151[1] = *(v2 + 112);
    v152 = v19;
    v153 = *(v2 + 144);
    v154 = *(v2 + 160);
    v20 = *(v2 + 64);
    v148 = *(v2 + 48);
    v149 = v20;
    v21 = *(v2 + 96);
    v150 = *(v2 + 80);
    v151[0] = v21;
    v22 = *(v2 + 32);
    v146 = *(v2 + 16);
    v147 = v22;
    v24 = *(v2 + 224);
    v23 = *(v2 + 232);
    v26 = *(v2 + 240);
    v25 = *(v2 + 248);
    v27 = *(v2 + 256);
    v117 = *(v2 + 257);
    v28 = *(v2 + 258);
    LODWORD(v29) = *(v2 + 260);
    v31 = *(v2 + 264);
    v30 = *(v2 + 272);
    swift_beginAccess();
    v119 = v31;
    v118 = v27;
    if ((BYTE1(v151[0]) & 1) != 0 || (v29 & 0xD8) != 0 || BYTE8(v152) != 2)
    {
      v115 = v29;
      type metadata accessor for ResolvedStyledText.TextLayoutManager();
      v2 = swift_allocObject();
      *(v2 + 416) = MEMORY[0x1E69E7CC0];
      *(v2 + 424) = 0u;
      *(v2 + 440) = 0u;
      *(v2 + 456) = 0u;
      *(v2 + 472) = 0u;
      *(v2 + 488) = 512;
      v33 = BYTE8(v146);
      v34 = v146;
      v116 = v17;
      v114 = v30;
      if ((v33 & 1) != 0 || v34 != 1)
      {
        outlined init with copy of TextLayoutProperties(&v146, &v136);

        v35 = v116;
        v36 = NSAttributedString.replacingLineBreakModes(_:)(0);

        v17 = v36;
      }

      else
      {
        outlined init with copy of TextLayoutProperties(&v146, &v136);
      }

      v37 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
      v38 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
      [v37 setDelegate_];
      [v37 setUsesFontLeading_];
      v39 = v17;
      v40 = v37;
      ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v40, v17, v134);
      v41 = v134[3];
      *(v2 + 528) = v134[2];
      *(v2 + 544) = v41;
      *(v2 + 560) = v134[4];
      v42 = v134[1];
      *(v2 + 496) = v134[0];
      *(v2 + 512) = v42;
      *(v2 + 224) = v24;
      *(v2 + 232) = v23;
      *(v2 + 240) = v26;
      *(v2 + 248) = v25;
      v43 = v147;
      v44 = v146;
      v45 = v147;
      *(v2 + 16) = v146;
      *(v2 + 32) = v43;
      v46 = v151[0];
      v47 = v150;
      v48 = v151[0];
      *(v2 + 80) = v150;
      *(v2 + 96) = v46;
      v49 = v149;
      v50 = v148;
      v51 = v149;
      *(v2 + 48) = v148;
      *(v2 + 64) = v49;
      v52 = v152;
      *(v2 + 144) = v153;
      v53 = v152;
      v54 = v151[1];
      *(v2 + 112) = v151[1];
      *(v2 + 128) = v53;
      *(v2 + 352) = 0u;
      *(v2 + 368) = 0u;
      *(v2 + 280) = 0u;
      *(v2 + 296) = 0u;
      *(v2 + 312) = 0u;
      *(v2 + 328) = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v142 = v54;
      v143 = v52;
      v144 = v153;
      *(v2 + 384) = 0;
      *(v2 + 392) = 0x8000000000000000;
      *(v2 + 576) = v38;
      *(v2 + 400) = 0;
      *(v2 + 408) = MEMORY[0x1E69E7CC0];
      *(v2 + 200) = 0;
      *(v2 + 208) = 1;
      v135 = 1;
      *(v2 + 344) = 1;
      *(v2 + 216) = v17;
      v55 = v117;
      *(v2 + 256) = v118;
      *(v2 + 257) = v55;
      *(v2 + 258) = v28;
      v56 = v115;
      *(v2 + 260) = v115;
      v57 = v114;
      *(v2 + 264) = v119;
      *(v2 + 272) = v57;
      *(v2 + 160) = v154;
      v133 = 1;
      v127 = BYTE8(v151[1]);
      v128 = v152;
      v145 = v154;
      v138 = v50;
      v139 = v51;
      v140 = v47;
      v141 = v48;
      v136 = v44;
      v137 = v45;
      outlined init with copy of TextLayoutProperties(&v146, v126);
      outlined init with copy of TextLayoutProperties(&v146, v126);
      v58 = v39;
      v59 = v38;
      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v58, &v129, &v136);
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v67 = v66;

      v68 = v132;
      *(v2 + 312) = v131;
      *(v2 + 328) = v68;
      *(v2 + 344) = v133;
      v69 = v130;
      *(v2 + 280) = v129;
      *(v2 + 296) = v69;
      *(v2 + 168) = v61;
      *(v2 + 176) = v63;
      *(v2 + 184) = v65;
      *(v2 + 192) = v67;
      swift_beginAccess();
      v70 = _TextContainer(*(v2 + 97));
      [v70 setLineFragmentPadding_];
      [v40 setTextContainer_];
      if ((v56 & 0xC0) != 0)
      {
        _NSTextLayoutManagerRequiresCTLine(v40);
      }

      outlined destroy of TextLayoutProperties(&v146);
    }

    else
    {
      v32 = *(v2 + 200);
      LODWORD(v116) = *(v2 + 208);
      type metadata accessor for ResolvedStyledText.StringDrawing();
      v2 = swift_allocObject();
      v113 = v28;
      if (v154)
      {
        outlined init with copy of TextLayoutProperties(&v146, &v136);
        outlined init with copy of TextLayoutProperties(&v146, &v136);

        v115 = 1;
      }

      else
      {
        outlined init with copy of TextLayoutProperties(&v146, &v136);
        outlined init with copy of TextLayoutProperties(&v146, &v136);

        if (NSAttributedString.isDynamic.getter())
        {
          v115 = v27 & 1;
        }

        else
        {
          v115 = 0;
        }
      }

      v71 = v146;
      v72 = BYTE8(v146);
      v73 = v147;
      v74 = BYTE8(v147);
      v112 = *(v151 + 8);
      v75 = *&v148;
      v76 = *(&v150 + 1);
      if (v116)
      {
        v32 = 1.0;
      }

      if (v32 == 1.0)
      {
        v127 = BYTE8(v146);
        v135 = BYTE8(v147);
        v77 = v17;
      }

      else
      {
        v78 = v17;
        v110 = v71;
        v111 = v73;
        v79 = v30;
        v80 = v29;
        v29 = v78;
        v81 = [v78 _ui_attributedSubstringFromRange_scaledByScaleFactor_];

        v77 = v81;
        LOWORD(v29) = v80;
        v30 = v79;
        v71 = v110;
        v73 = v111;
        v127 = v72;
        v135 = v74;
      }

      v82 = 1.0;
      if (v116)
      {
        v82 = v75;
      }

      *(v2 + 400) = v82;
      *(v2 + 408) = v112;
      *(v2 + 224) = v24;
      *(v2 + 232) = v23;
      *(v2 + 240) = v26;
      *(v2 + 248) = v25;
      v83 = v152;
      *(v2 + 112) = v151[1];
      *(v2 + 128) = v83;
      v84 = v151[1];
      v85 = v152;
      *(v2 + 144) = v153;
      v86 = v149;
      v87 = v148;
      v88 = v149;
      *(v2 + 48) = v148;
      *(v2 + 64) = v86;
      v89 = v151[0];
      v90 = v150;
      v91 = v151[0];
      *(v2 + 80) = v150;
      *(v2 + 96) = v89;
      v92 = v147;
      v93 = v146;
      v94 = v147;
      *(v2 + 16) = v146;
      *(v2 + 32) = v92;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v95 = v127;
      v96 = v135;
      *(v2 + 352) = 0;
      *(v2 + 360) = v77;
      *(v2 + 368) = v71;
      *(v2 + 376) = v95;
      *(v2 + 384) = v73;
      *(v2 + 392) = v96;
      *(v2 + 424) = v115;
      *(v2 + 425) = v76 != 0.0;
      v97 = v113;
      *(v2 + 426) = v113;
      *(v2 + 432) = MEMORY[0x1E69E7CC0];
      *(v2 + 200) = 0;
      *(v2 + 208) = 1;
      v125 = 1;
      *(v2 + 216) = v17;
      v98 = v117;
      *(v2 + 256) = v118;
      *(v2 + 257) = v98;
      *(v2 + 258) = v97;
      *(v2 + 260) = v29;
      *(v2 + 264) = v119;
      *(v2 + 272) = v30;
      *(v2 + 160) = v154;
      v124 = 1;
      LOBYTE(v134[0]) = BYTE8(v151[1]);
      *(&v134[0] + 1) = v152;
      v142 = v84;
      v143 = v85;
      v144 = v153;
      v145 = v154;
      v138 = v87;
      v139 = v88;
      v140 = v90;
      v141 = v91;
      v136 = v93;
      v137 = v94;
      v99 = v17;
      outlined init with copy of TextLayoutProperties(&v146, v126);
      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v99, &v120, &v136);
      v101 = v100;
      v103 = v102;
      v105 = v104;
      v107 = v106;

      outlined destroy of TextLayoutProperties(&v146);
      v108 = v123;
      *(v2 + 312) = v122;
      *(v2 + 328) = v108;
      *(v2 + 344) = v124;
      v109 = v121;
      *(v2 + 280) = v120;
      *(v2 + 296) = v109;
      *(v2 + 168) = v101;
      *(v2 + 176) = v103;
      *(v2 + 184) = v105;
      *(v2 + 192) = v107;
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t static ResolvedStyledText.styledText(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:)(void *a1, __int128 *a2, uint64_t a3, char *a4, char a5, __int16 *a6, uint64_t a7, uint64_t *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, double a19, char a20)
{
  v21 = a2[7];
  *&v137[16] = a2[6];
  v138 = v21;
  v139 = a2[8];
  v140 = *(a2 + 144);
  v22 = a2[3];
  v134 = a2[2];
  v135 = v22;
  v23 = a2[5];
  v136 = a2[4];
  *v137 = v23;
  v24 = a2[1];
  v132 = *a2;
  v133 = v24;
  v25 = *a4;
  v95 = a4[1];
  v96 = *a4;
  v105 = *a6;
  v26 = *(a7 + 8);
  v27 = *(a7 + 24);
  v100 = *a7;
  v101 = *(a7 + 16);
  v29 = *(a7 + 32);
  v28 = *(a7 + 40);
  v30 = *(a7 + 48);
  v31 = *a8;
  v99 = v26;
  if ((v137[1] & 1) == 0 && (v105 & 0xD8) == 0 && !*(v31 + 16))
  {
    if (v28 < 0)
    {
      outlined consume of ResolvedTextSuffix(v100, v26, v101, v27, v29, v28);
      outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
      if (BYTE8(v138) == 2)
      {
        type metadata accessor for ResolvedStyledText.StringDrawing();
        v33 = swift_allocObject();
        if (v140)
        {
          v34 = 1;
        }

        else if (a1)
        {
          if (NSAttributedString.isDynamic.getter())
          {
            v34 = v25 & 1;
          }

          else
          {
            v34 = 0;
          }
        }

        else
        {
          v34 = 0;
        }

        v62 = v132;
        v63 = BYTE8(v132);
        v64 = v133;
        v65 = BYTE8(v133);
        v104 = *&v137[8];
        if (a1)
        {
          if (a20)
          {
            v66 = 1.0;
          }

          else
          {
            v66 = a19;
          }

          v67 = a18;
          if (v66 == 1.0)
          {
            v68 = a1;
          }

          else
          {
            v68 = [a1 _ui_attributedSubstringFromRange_scaledByScaleFactor_];
          }
        }

        else
        {
          v67 = a18;
          if (one-time initialization token for emptyString != -1)
          {
            swift_once();
          }

          v68 = static NSAttributedString.emptyString;
        }

        v113 = BYTE8(v132);
        v69 = *(&v136 + 1) != 0.0;
        v131 = BYTE8(v133);
        v70 = 1.0;
        if (a20)
        {
          v70 = *&v134;
        }

        *(v33 + 352) = 0;
        *(v33 + 360) = v68;
        *(v33 + 368) = v62;
        *(v33 + 376) = v63;
        *(v33 + 384) = v64;
        *(v33 + 392) = v65;
        *(v33 + 400) = v70;
        *(v33 + 408) = v104;
        *(v33 + 424) = v34;
        *(v33 + 425) = v69;
        *(v33 + 426) = a5 & 1;
        *(v33 + 432) = MEMORY[0x1E69E7CC0];
        *(v33 + 200) = 0;
        *(v33 + 208) = 1;
        v71 = (v33 + 280);
        v111 = 1;
        *(v33 + 216) = a1;
        *(v33 + 224) = a9;
        *(v33 + 232) = a10;
        *(v33 + 240) = a11;
        *(v33 + 248) = a12;
        *(v33 + 256) = v96;
        *(v33 + 257) = v95;
        *(v33 + 258) = a5 & 1;
        *(v33 + 260) = v105;
        *(v33 + 264) = a17;
        *(v33 + 272) = v67;
        v72 = a2[7];
        *(v33 + 112) = a2[6];
        *(v33 + 128) = v72;
        *(v33 + 144) = a2[8];
        *(v33 + 160) = *(a2 + 144);
        v73 = a2[3];
        *(v33 + 48) = a2[2];
        *(v33 + 64) = v73;
        v74 = a2[5];
        *(v33 + 80) = a2[4];
        *(v33 + 96) = v74;
        v75 = a2[1];
        *(v33 + 16) = *a2;
        *(v33 + 32) = v75;
        if (*(a3 + 32))
        {
          if (a1)
          {
            v108 = 0uLL;
            v109 = 0uLL;
            v106 = 0uLL;
            v107 = 0uLL;
            v110 = 1;
            LOBYTE(v130[0]) = v137[24];
            *(&v130[0] + 1) = v138;
            v76 = a2[7];
            v126 = a2[6];
            v127 = v76;
            v128 = a2[8];
            v129 = *(a2 + 144);
            v77 = a2[3];
            v122 = a2[2];
            v123 = v77;
            v78 = a2[5];
            v124 = a2[4];
            v125 = v78;
            v79 = a2[1];
            v120 = *a2;
            v121 = v79;
            v80 = a1;
            outlined init with copy of TextLayoutProperties(&v132, v112);
            v81 = v80;

            outlined init with copy of TextLayoutProperties(&v132, v112);
            Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v81, &v106, &v120);
            v83 = v82;
            v85 = v84;
            v87 = v86;
            v89 = v88;

            v90 = v109;
            *(v33 + 312) = v108;
            *(v33 + 328) = v90;
            *(v33 + 344) = v110;
            v91 = v107;
            *v71 = v106;
            *(v33 + 296) = v91;
            *(v33 + 168) = v83;
            *(v33 + 176) = v85;
            *(v33 + 184) = v87;
            *(v33 + 192) = v89;
            return v33;
          }

          *(v33 + 312) = 0uLL;
          *(v33 + 328) = 0uLL;
          *v71 = 0uLL;
          *(v33 + 296) = 0uLL;
          *(v33 + 344) = 1;
          *(v33 + 168) = 0uLL;
          *(v33 + 184) = 0uLL;
        }

        else
        {
          *(v33 + 312) = 0u;
          *(v33 + 328) = 0u;
          *v71 = 0u;
          *(v33 + 296) = 0u;
          *(v33 + 344) = 1;
          v92 = *(a3 + 16);
          *(v33 + 168) = *a3;
          *(v33 + 184) = v92;
          v93 = a1;
        }

        outlined init with copy of TextLayoutProperties(&v132, &v120);
        return v33;
      }
    }

    else
    {
      outlined copy of ResolvedTextSuffix(v100, v26, v101, v27, v29, v28);
      outlined consume of ResolvedTextSuffix(v100, v99, v101, v27, v29, v28);
      outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
    }
  }

  type metadata accessor for ResolvedStyledText.TextLayoutManager();
  v33 = swift_allocObject();
  *(v33 + 416) = MEMORY[0x1E69E7CC0];
  *(v33 + 424) = 0u;
  *(v33 + 440) = 0u;
  *(v33 + 456) = 0u;
  *(v33 + 472) = 0u;
  *(v33 + 488) = 512;
  if ((BYTE8(v132) & 1) != 0 || v132 != 1)
  {
    if (a1)
    {
      v36 = NSAttributedString.replacingLineBreakModes(_:)(0);
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v35 = a1;
    v36 = a1;
  }

  v37 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  v38 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
  [v37 setDelegate_];
  [v37 setUsesFontLeading_];
  v94 = v36;
  v102 = v37;
  ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v102, v36, v130);
  v39 = v130[3];
  *(v33 + 528) = v130[2];
  *(v33 + 544) = v39;
  *(v33 + 560) = v130[4];
  v40 = v130[1];
  *(v33 + 496) = v130[0];
  *(v33 + 512) = v40;
  v103 = v38;
  *(v33 + 576) = v38;
  *(v33 + 352) = v100;
  *(v33 + 360) = v99;
  *(v33 + 368) = v101;
  *(v33 + 376) = v27;
  *(v33 + 384) = v29;
  *(v33 + 392) = v28;
  *(v33 + 400) = v30;
  *(v33 + 408) = v31;
  *(v33 + 200) = 0;
  *(v33 + 208) = 1;
  v131 = 1;
  *(v33 + 280) = 0u;
  *(v33 + 296) = 0u;
  *(v33 + 312) = 0u;
  *(v33 + 328) = 0u;
  *(v33 + 344) = 1;
  *(v33 + 216) = v36;
  *(v33 + 224) = a9;
  *(v33 + 232) = a10;
  *(v33 + 240) = a11;
  *(v33 + 248) = a12;
  *(v33 + 256) = v96;
  *(v33 + 257) = v95;
  *(v33 + 258) = a5 & 1;
  *(v33 + 260) = v105;
  *(v33 + 264) = a17;
  *(v33 + 272) = a18;
  v41 = v133;
  *(v33 + 16) = v132;
  *(v33 + 32) = v41;
  v42 = *v137;
  *(v33 + 80) = v136;
  *(v33 + 96) = v42;
  v43 = v135;
  *(v33 + 48) = v134;
  *(v33 + 64) = v43;
  *(v33 + 160) = v140;
  v44 = v139;
  *(v33 + 128) = v138;
  *(v33 + 144) = v44;
  *(v33 + 112) = *&v137[16];
  if (*(a3 + 32))
  {
    if (v36)
    {
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v119 = 1;
      v113 = v137[24];
      v114 = v138;
      v126 = *&v137[16];
      v127 = v138;
      v128 = v139;
      v129 = v140;
      v122 = v134;
      v123 = v135;
      v124 = v136;
      v125 = *v137;
      v120 = v132;
      v121 = v133;
      outlined init with copy of TextLayoutProperties(&v132, v112);
      outlined copy of ResolvedTextSuffix(v100, v99, v101, v27, v29, v28);

      outlined init with copy of TextLayoutProperties(&v132, v112);
      v45 = v94;
      v46 = v38;

      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v45, &v115, &v120);
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;

      v55 = v118;
      *(v33 + 312) = v117;
      *(v33 + 328) = v55;
      *(v33 + 344) = v119;
      v56 = v116;
      *(v33 + 280) = v115;
      *(v33 + 296) = v56;
      *(v33 + 168) = v48;
      *(v33 + 176) = v50;
      *(v33 + 184) = v52;
      *(v33 + 192) = v54;
    }

    else
    {
      *(v33 + 344) = 1;
      *(v33 + 168) = 0u;
      *(v33 + 184) = 0u;
      outlined copy of ResolvedTextSuffix(v100, v99, v101, v27, v29, v28);

      outlined init with copy of TextLayoutProperties(&v132, &v120);
      v59 = v38;
    }
  }

  else
  {
    *(v33 + 344) = 1;
    v57 = *(a3 + 16);
    *(v33 + 168) = *a3;
    *(v33 + 184) = v57;
    outlined copy of ResolvedTextSuffix(v100, v99, v101, v27, v29, v28);

    outlined init with copy of TextLayoutProperties(&v132, &v120);
    v58 = v38;
  }

  swift_beginAccess();
  v60 = _TextContainer(*(v33 + 97));
  [v60 setLineFragmentPadding_];
  [v102 setTextContainer_];
  if ((v105 & 0x40) == 0)
  {
    if (v28 < 0)
    {
      outlined consume of ResolvedTextSuffix(v100, v99, v101, v27, v29, v28);
      outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
      if ((v105 & 0x80) == 0 && !*(v31 + 16))
      {

        goto LABEL_28;
      }
    }

    else
    {
      outlined copy of ResolvedTextSuffix(v100, v99, v101, v27, v29, v28);
      outlined consume of ResolvedTextSuffix(v100, v99, v101, v27, v29, v28);
      outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
    }
  }

  _NSTextLayoutManagerRequiresCTLine(v102);

LABEL_28:
  return v33;
}

uint64_t ResolvedStyledText.description.getter()
{
  v1 = *(v0 + 216);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 string];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t ResolvedStyledText.accessibilityText.getter()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    v9[3] = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAttributedString);
    v9[0] = v1;
    v2 = v1;
    AccessibilityText.init(_:)(v9, v10);
    v3 = v10[0];
    v4 = v10[1];
    v5 = v11;
    v6 = v12;
    type metadata accessor for AccessibilityTextStorage();
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = v4;
    *(result + 32) = v5;
    *(result + 33) = v6;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
    type metadata accessor for LocalizedTextStorage();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = 0xE000000000000000;
    *(result + 32) = 0;
    *(result + 40) = v8;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
  }

  return result;
}

void (*ResolvedStyledText.cgStyleHandler.getter())(uint64_t a1, unint64_t a2)
{
  v1 = *(v0 + 272);
  if (!*(v1 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v0 + 43);
  v3 = *(v0 + 44);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 25) = v2;

  return partial apply for closure #1 in ResolvedStyledText.cgStyleHandler.getter;
}

void closure #1 in ResolvedStyledText.cgStyleHandler.getter(uint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5)
{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    return;
  }

  v5 = a3 + 16 * a2;
  v6 = *(v5 + 44);
  v7 = *(v5 + 40);
  v8 = *(v5 + 46);
  v23 = *(v5 + 32);
  v25 = v6;
  v24 = v7;
  v26 = *(v5 + 45);
  v27 = v8;
  LOBYTE(v17) = a4;
  v22 = a5 & 1;
  outlined copy of ContentTransition.Storage(v23, v7 | (v6 << 32), v26);
  ContentTransition.applyEnvironmentValues(style:layoutDirection:)(&v17, &v22);
  v9 = v23;
  v10 = v24 | (v25 << 32);
  v11 = v26;
  v17 = v23;
  v19 = v25;
  v18 = v24;
  v20 = v26;
  v21 = v27;
  v12 = ContentTransition.rbTransition.getter();
  RBDrawingStateSetTransition();

  outlined copy of ContentTransition.Storage(v9, v10, v11);
  outlined consume of ContentTransition.Storage(v9, v10, v11);
  if (v11)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
LABEL_9:

    outlined consume of ContentTransition.Storage(v13, v14, v15);
    return;
  }

  if ((v9 & 0xC000000000) != 0x4000000000 || (v9 & 0x100000000) == 0)
  {
    v13 = v9;
    v14 = v10;
    v15 = 0;
    goto LABEL_9;
  }

  outlined consume of ContentTransition.Storage(v9, v10, 0);
  isa = Float._bridgeToObjectiveC()().super.super.isa;
  RBDrawingStateSetAttribute();
}

uint64_t ResolvedStyledText.deinit()
{
  v1 = *(v0 + 128);
  v6[6] = *(v0 + 112);
  v6[7] = v1;
  v6[8] = *(v0 + 144);
  v7 = *(v0 + 160);
  v2 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v2;
  v3 = *(v0 + 96);
  v6[4] = *(v0 + 80);
  v6[5] = v3;
  v4 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v4;
  outlined destroy of TextLayoutProperties(v6);

  return v0;
}

uint64_t ResolvedStyledText.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  v6[6] = *(v0 + 112);
  v6[7] = v1;
  v6[8] = *(v0 + 144);
  v7 = *(v0 + 160);
  v2 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v2;
  v3 = *(v0 + 96);
  v6[4] = *(v0 + 80);
  v6[5] = v3;
  v4 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v4;
  outlined destroy of TextLayoutProperties(v6);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvedStyledText()
{
  v1 = *(*v0 + 216);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 string];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::tuple_UInt_optional_CGSize __swiftcall ResolvedStyledText.textSizeCacheMetrics(in:)(CGSize in)
{
  memset(v10, 0, sizeof(v10));
  v11 = 1;
  (*(*v1 + 264))(v8, v10, __PAIR128__(v2, *&in.width), __PAIR128__(v3, *&in.height));
  v4 = v8[7];
  v5 = v9;
  v6 = *v8;
  v7 = *&v8[1];
  result._1.height = v7;
  result._1.width = v6;
  result._0.value = v4;
  result._0.is_nil = v5;
  return result;
}

double ResolvedStyledText.linkURLMetrics(in:layoutMargins:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *v9 = a3;
  *&v9[1] = a4;
  *&v9[2] = a5;
  *&v9[3] = a6;
  v10 = 0;
  (*(*v6 + 264))(v8, v9);
  return *&v8[2];
}

void CodableResolvedStyledText.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v102 - v10;
  v12 = *(a2 + 216);
  if (v12)
  {
    v13 = v12;
    specialized ProtobufEncoder.messageField<A>(_:_:)(1, v13);
    if (v2)
    {

      return;
    }
  }

  v14 = *(a2 + 240);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 224)), vceqzq_f64(v14))))) & 1) == 0 || (v108 = *(a2 + 224), v109 = v14, ProtobufEncoder.encodeVarint(_:)(0x12uLL), specialized ProtobufEncoder.encodeMessage<A>(_:)(*&v108, *(&v108 + 1), v109.f64[0], v109.f64[1]), !v2))
  {
    swift_beginAccess();
    v15 = *(a2 + 184);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 168)), vceqzq_f64(v15))))) & 1) == 0 || (v108 = *(a2 + 168), v109 = v15, ProtobufEncoder.encodeVarint(_:)(0x1AuLL), specialized ProtobufEncoder.encodeMessage<A>(_:)(*&v108, *(&v108 + 1), v109.f64[0], v109.f64[1]), !v2))
    {
      if (v12)
      {
        NSAttributedString.resolvableAttributeConfiguration.getter(v8);
        _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v8, v11, type metadata accessor for ResolvableAttributeConfiguration);
        ProtobufEncoder.encodeVarint(_:)(0x22uLL);
        v16 = *(a1 + 16);
        v115 = *a1;
        v116 = v16;
        v117 = *(a1 + 32);
        v17 = specialized ProtobufEncoder.binaryPlistData<A>(for:)(v11);
        if (v2)
        {
          outlined destroy of Date?(v11, type metadata accessor for ResolvableAttributeConfiguration);
          return;
        }

        v19 = v17;
        v20 = v18;
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v17, v18);
        v3 = 0;
        outlined consume of Data._Representation(v19, v20);
        outlined destroy of Date?(v11, type metadata accessor for ResolvableAttributeConfiguration);
      }

      swift_beginAccess();
      v21 = *(a2 + 128);
      v113[6] = *(a2 + 112);
      v113[7] = v21;
      v113[8] = *(a2 + 144);
      v114 = *(a2 + 160);
      v22 = *(a2 + 64);
      v113[2] = *(a2 + 48);
      v113[3] = v22;
      v23 = *(a2 + 96);
      v113[4] = *(a2 + 80);
      v113[5] = v23;
      v24 = *(a2 + 32);
      v113[0] = *(a2 + 16);
      v113[1] = v24;
      outlined init with copy of TextLayoutProperties(v113, &v110);
      v25 = a1;
      specialized ProtobufEncoder.messageField<A>(_:_:)(5);
      outlined destroy of TextLayoutProperties(v113);
      if (!v3)
      {
        v26 = *(a2 + 272);
        v103 = *(v26 + 16);
        v104 = a2;
        if (!v103)
        {
LABEL_125:
          v90 = *(a2 + 260);
          if (*(a2 + 260))
          {
            ProtobufEncoder.encodeVarint(_:)(0x38uLL);
            ProtobufEncoder.encodeVarint(_:)(v90);
          }

          v91 = ResolvedStyledText.smallerSizeVariant.getter();
          if (v91)
          {
            v27 = v91;
            v92 = ResolvedStyledText.largerSizeVariant.getter();
            if (v92)
            {
              v93 = v92;
              swift_beginAccess();
              objc_setAssociatedObject(v93, &smallerSizeVariantKey, 0, 0);
              swift_endAccess();
            }

            swift_beginAccess();
            objc_setAssociatedObject(v27, &largerSizeVariantKey, 0, 0x301);
            swift_endAccess();
            ProtobufEncoder.encodeVarint(_:)(0x42uLL);
            v28 = *(a1 + 8);
            v25 = *(a1 + 24);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_149;
            }

            goto LABEL_131;
          }

LABEL_135:
          v97 = ResolvedStyledText.largerSizeVariant.getter();
          if (v97)
          {
            v95 = v97;
            v98 = ResolvedStyledText.smallerSizeVariant.getter();
            if (v98)
            {
              v99 = v98;
              swift_beginAccess();
              objc_setAssociatedObject(v99, &largerSizeVariantKey, 0, 0);
              swift_endAccess();
            }

            swift_beginAccess();
            objc_setAssociatedObject(v95, &smallerSizeVariantKey, 0, 0x301);
            swift_endAccess();
            ProtobufEncoder.encodeVarint(_:)(0x4AuLL);
            v96 = *(a1 + 8);
            v25 = *(a1 + 24);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_151;
            }

            goto LABEL_139;
          }

          return;
        }

        v27 = 0;
        v28 = (v26 + 46);
        v102 = v26;
        while (1)
        {
          if (v27 >= *(v26 + 16))
          {
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
LABEL_131:
            v95 = *(v25 + 2);
            v94 = *(v25 + 3);
            v96 = (v95 + 1);
            if (v95 >= v94 >> 1)
            {
              v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v25);
            }

            *(v25 + 2) = v96;
            *&v25[8 * v95 + 32] = v28;
            *(a1 + 24) = v25;
            if (!__OFADD__(v28, 1))
            {
              *(a1 + 8) = v28 + 1;

              CodableResolvedStyledText.encode(to:)(a1, v27);

              ProtobufEncoder.endLengthDelimited()();

              goto LABEL_135;
            }

            __break(1u);
LABEL_151:
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
LABEL_139:
            v101 = *(v25 + 2);
            v100 = *(v25 + 3);
            if (v101 >= v100 >> 1)
            {
              v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v25);
            }

            *(v25 + 2) = v101 + 1;
            *&v25[8 * v101 + 32] = v96;
            *(a1 + 24) = v25;
            if (__OFADD__(v96, 1))
            {
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
            }

            else
            {
              *(a1 + 8) = v96 + 1;

              CodableResolvedStyledText.encode(to:)(a1, v95);

              ProtobufEncoder.endLengthDelimited()();
            }

            return;
          }

          v30 = *(v28 - 14);
          v31 = *(v28 - 6) | (*(v28 - 2) << 32);
          v32 = *(v28 - 1);
          v33 = *v28;
          v34 = *(a1 + 8);
          v35 = *(a1 + 16);
          *&v108 = v31;
          v106 = v27;
          v107 = v33;
          if (v34 >= v35)
          {
            v69 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              goto LABEL_153;
            }

            if (v35 < v69)
            {
              v36 = v32;
              outlined copy of ContentTransition.Storage(v30, v31, v32);
              v70 = ProtobufEncoder.growBufferSlow(to:)(v69);
            }

            else
            {
              *(a1 + 8) = v69;
              v70 = (*a1 + v34);
              v36 = v32;
              outlined copy of ContentTransition.Storage(v30, v31, v32);
            }

            *v70 = 50;
          }

          else
          {
            *(*a1 + v34) = 50;
            *(a1 + 8) = v34 + 1;
            v36 = v32;
            outlined copy of ContentTransition.Storage(v30, v31, v32);
          }

          v27 = *(a1 + 8);
          v25 = *(a1 + 24);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v109.f64[0] = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
          }

          v39 = *(v25 + 2);
          v38 = *(v25 + 3);
          if (v39 >= v38 >> 1)
          {
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v25);
          }

          *(v25 + 2) = v39 + 1;
          *&v25[8 * v39 + 32] = v27;
          *(a1 + 24) = v25;
          v40 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_144;
          }

          *(a1 + 8) = v40;
          v105 = v36;
          if (v36)
          {
            v41 = v109.f64[0];
            if (v36 == 1)
            {
              v42 = *(a1 + 16);
              if (v40 >= v42)
              {
                v74 = (v27 + 2);
                if (__OFADD__(v40, 1))
                {
                  goto LABEL_156;
                }

                if (v42 < v74)
                {
                  v75 = ProtobufEncoder.growBufferSlow(to:)(v74);
                }

                else
                {
                  *(a1 + 8) = v74;
                  v75 = &v40[*a1];
                }

                *v75 = 18;
                v27 = *(a1 + 8);
                v41 = v109.f64[0];
              }

              else
              {
                v40[*a1] = 18;
                v27 += 2;
                *(a1 + 8) = v40 + 1;
              }

              v110 = v41;
              v111 = v108;
              v112 = BYTE4(v108);
              v25 = *(a1 + 24);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
              }

              v44 = *(v25 + 2);
              v43 = *(v25 + 3);
              if (v44 >= v43 >> 1)
              {
                v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v25);
              }

              *(v25 + 2) = v44 + 1;
              *&v25[8 * v44 + 32] = v27;
              *(a1 + 24) = v25;
              if (__OFADD__(v27, 1))
              {
                goto LABEL_145;
              }

              *(a1 + 8) = v27 + 1;
              ContentTransition.CustomTransition.encode(to:)(a1);
              a2 = v104;
              v27 = v108;
              v45 = *&v109.f64[0];
            }

            else
            {
              v50 = *(a1 + 16);
              if (v40 >= v50)
              {
                v78 = (v27 + 2);
                if (__OFADD__(v40, 1))
                {
                  goto LABEL_157;
                }

                if (v50 < v78)
                {
                  v79 = ProtobufEncoder.growBufferSlow(to:)(v78);
                }

                else
                {
                  *(a1 + 8) = v78;
                  v79 = &v40[*a1];
                }

                *v79 = 34;
                v27 = *(a1 + 8);
              }

              else
              {
                v40[*a1] = 34;
                v27 += 2;
                *(a1 + 8) = v40 + 1;
              }

              v25 = *(a1 + 24);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
              }

              v52 = *(v25 + 2);
              v51 = *(v25 + 3);
              if (v52 >= v51 >> 1)
              {
                v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v25);
              }

              *(v25 + 2) = v52 + 1;
              *&v25[8 * v52 + 32] = v27;
              *(a1 + 24) = v25;
              v53 = v27 + 1;
              if (__OFADD__(v27, 1))
              {
                goto LABEL_147;
              }

              *(a1 + 8) = v53;
              v45 = *&v109.f64[0];
              v54 = LODWORD(v109.f64[0]);
              a2 = v104;
              v27 = v108;
              if (LODWORD(v109.f64[0]))
              {
                v55 = *(a1 + 16);
                if (v53 >= v55)
                {
                  v80 = v108;
                  v81 = LODWORD(v109.f64[0]);
                  v82 = (v53 + 1);
                  if (__OFADD__(v53, 1))
                  {
                    goto LABEL_159;
                  }

                  if (v55 < v82)
                  {
                    v83 = ProtobufEncoder.growBufferSlow(to:)(v82);
                  }

                  else
                  {
                    *(a1 + 8) = v82;
                    v83 = &v53[*a1];
                  }

                  *v83 = 8;
                  v54 = v81;
                  a2 = v104;
                  v27 = v80;
                  v45 = *&v109.f64[0];
                }

                else
                {
                  v53[*a1] = 8;
                  *(a1 + 8) = v53 + 1;
                }

                v25 = a1;
                ProtobufEncoder.encodeVarint(_:)(v54);
              }

              if ((v45 & 0x100000000) == 0)
              {
                v56 = *(a1 + 8);
                v57 = *(a1 + 16);
                if (v56 >= v57)
                {
                  v84 = v56 + 1;
                  if (__OFADD__(v56, 1))
                  {
                    goto LABEL_160;
                  }

                  if (v57 < v84)
                  {
                    v25 = a1;
                    v85 = ProtobufEncoder.growBufferSlow(to:)(v84);
                  }

                  else
                  {
                    *(a1 + 8) = v84;
                    v85 = (*a1 + v56);
                  }

                  *v85 = 16;
                  v58 = *(a1 + 8);
                  a2 = v104;
                  v45 = *&v109.f64[0];
                }

                else
                {
                  *(*a1 + v56) = 16;
                  v58 = v56 + 1;
                  *(a1 + 8) = v58;
                }

                v59 = *(a1 + 16);
                if (v58 >= v59)
                {
                  v86 = v58 + 1;
                  if (__OFADD__(v58, 1))
                  {
                    goto LABEL_161;
                  }

                  if (v59 < v86)
                  {
                    v25 = a1;
                    v87 = ProtobufEncoder.growBufferSlow(to:)(v86);
                  }

                  else
                  {
                    *(a1 + 8) = v86;
                    v87 = (*a1 + v58);
                  }

                  *v87 = 0;
                  a2 = v104;
                  v45 = *&v109.f64[0];
                }

                else
                {
                  *(*a1 + v58) = 0;
                  *(a1 + 8) = v58 + 1;
                }
              }

              if (*&v27 != 1.0)
              {
                v60 = *(a1 + 8);
                v61 = *(a1 + 16);
                if (v60 >= v61)
                {
                  v88 = v60 + 1;
                  if (__OFADD__(v60, 1))
                  {
                    goto LABEL_162;
                  }

                  if (v61 < v88)
                  {
                    v25 = a1;
                    v89 = ProtobufEncoder.growBufferSlow(to:)(v88);
                  }

                  else
                  {
                    *(a1 + 8) = v88;
                    v89 = (*a1 + v60);
                  }

                  *v89 = 29;
                  v62 = *(a1 + 8);
                  a2 = v104;
                  v45 = *&v109.f64[0];
                  v63 = v62 + 4;
                  if (__OFADD__(v62, 4))
                  {
                    goto LABEL_148;
                  }
                }

                else
                {
                  *(*a1 + v60) = 29;
                  v62 = v60 + 1;
                  *(a1 + 8) = v62;
                  v63 = v62 + 4;
                  if (__OFADD__(v62, 4))
                  {
                    goto LABEL_148;
                  }
                }

                if (*(a1 + 16) < v63)
                {
                  v64 = ProtobufEncoder.growBufferSlow(to:)(v63);
                }

                else
                {
                  *(a1 + 8) = v63;
                  v64 = (*a1 + v62);
                }

                *v64 = v27;
              }
            }
          }

          else
          {
            v46 = *(a1 + 16);
            v47 = v109.f64[0];
            if (v40 >= v46)
            {
              v76 = (v27 + 2);
              if (__OFADD__(v40, 1))
              {
                goto LABEL_158;
              }

              if (v46 < v76)
              {
                v77 = ProtobufEncoder.growBufferSlow(to:)(v76);
              }

              else
              {
                *(a1 + 8) = v76;
                v77 = &v40[*a1];
              }

              *v77 = 10;
              v27 = *(a1 + 8);
              v47 = v109.f64[0];
            }

            else
            {
              v40[*a1] = 10;
              v27 += 2;
              *(a1 + 8) = v40 + 1;
            }

            v110 = v47;
            v111 = v108;
            v112 = BYTE4(v108);
            v25 = *(a1 + 24);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
            }

            v49 = *(v25 + 2);
            v48 = *(v25 + 3);
            if (v49 >= v48 >> 1)
            {
              v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v25);
            }

            *(v25 + 2) = v49 + 1;
            *&v25[8 * v49 + 32] = v27;
            *(a1 + 24) = v25;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_146;
            }

            *(a1 + 8) = v27 + 1;
            ContentTransition.NamedTransition.encode(to:)(a1);
            a2 = v104;
            v27 = v108;
            v45 = *&v109.f64[0];
          }

          ProtobufEncoder.endLengthDelimited()();
          if (v107)
          {
            v65 = *(a1 + 8);
            v66 = *(a1 + 16);
            if (v65 >= v66)
            {
              v71 = v65 + 1;
              if (__OFADD__(v65, 1))
              {
                goto LABEL_154;
              }

              if (v66 < v71)
              {
                v72 = ProtobufEncoder.growBufferSlow(to:)(v71);
              }

              else
              {
                *(a1 + 8) = v71;
                v72 = (*a1 + v65);
              }

              *v72 = 24;
              v67 = *(a1 + 8);
            }

            else
            {
              *(*a1 + v65) = 24;
              v67 = v65 + 1;
              *(a1 + 8) = v65 + 1;
            }

            v68 = *(a1 + 16);
            if (v67 < v68)
            {
              *(*a1 + v67) = 1;
              outlined consume of ContentTransition.Storage(v45, v27, v105);
              *(a1 + 8) = v67 + 1;
              goto LABEL_20;
            }

            v73 = v67 + 1;
            if (__OFADD__(v67, 1))
            {
              goto LABEL_155;
            }

            if (v68 >= v73)
            {
              *(a1 + 8) = v73;
              v29 = (*a1 + v67);
            }

            else
            {
              v29 = ProtobufEncoder.growBufferSlow(to:)(v73);
            }

            *v29 = 1;
          }

          outlined consume of ContentTransition.Storage(v45, v27, v105);
LABEL_20:
          v27 = v106 + 1;
          v25 = a1;
          ProtobufEncoder.endLengthDelimited()();
          v28 += 16;
          v26 = v102;
          if (v103 == v27)
          {
            goto LABEL_125;
          }
        }
      }
    }
  }
}

uint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance CodableResolvedStyledText@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CodableResolvedStyledText.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t ResolvedStyledText.firstBaseline(in:)()
{
  if (one-time initialization token for firstTextBaseline != -1)
  {
    swift_once();
  }

  return (*(*v0 + 280))(static VerticalAlignment.firstTextBaseline);
}

uint64_t ResolvedStyledText.lastBaseline(in:)()
{
  if (one-time initialization token for lastTextBaseline != -1)
  {
    swift_once();
  }

  return (*(*v0 + 280))(static VerticalAlignment.lastTextBaseline);
}

CGSize __swiftcall ResolvedStyledText.frameOffset()()
{
  v1 = (*(*v0 + 184))();
  v3 = v2;
  swift_beginAccess();
  v4 = *(v0 + 168);
  v5 = -(v3 - *(v0 + 176));
  swift_beginAccess();
  if ((*(v0 + 43) & 1) == 0)
  {
    v5 = v5 - *(v0 + 104);
  }

  v6 = -(v1 - v4);
  v7 = v5;
  result.height = v6;
  result.width = v7;
  return result;
}

uint64_t property wrapper backing initializer of TextDrawingContext.ctx@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AtomicBuffer<NSStringDrawingContext>();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  *a2 = result;
  return result;
}

unint64_t closure #2 in closure #1 in TextDrawingContext.withStringDrawingContext<A>(minScaleFactor:lineLimit:kitCache:useNSLayoutManager:do:)(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v5 = v1;
  v2 = one-time initialization token for kitForegroundColor;

  if (v2 != -1)
  {
    swift_once();
  }

  specialized Dictionary._Variant.removeValue(forKey:)(v4);
  _sypSgWOhTm_6(v4, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
  return v5;
}

uint64_t TextDrawingContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *protocol witness for _DisplayList_ViewFactory.makeView() in conformance DynamicTextViewFactory()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = specialized static ResolvedStyledText.normalizedSizeVariant(for:)(*v0);
  _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(0, &lazy cache variable for type metadata for AnyViewStorage<DynamicTextView>, &type metadata for DynamicTextView, &protocol witness table for DynamicTextView, type metadata accessor for AnyViewStorage);
  result = swift_allocObject();
  result[2] = v3;
  result[3] = v1;
  result[4] = v2;
  return result;
}

double static DynamicTextView._makeView(view:inputs:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v52 = a3;
  v94 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for Date();
  v45 = *(v5 - 8);
  v46 = v5;
  v43 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DynamicTextView.DynamicTextEnvironment(0);
  MEMORY[0x1EEE9AC00](v47);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DynamicTextView.DynamicTextFilter(0);
  MEMORY[0x1EEE9AC00](v56);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OffsetAttribute2 = *a1;
  v11 = a2[4];
  v92[1] = a2[3];
  *v93 = v11;
  v12 = a2[2];
  v91 = a2[1];
  v92[0] = v12;
  v93[4] = *(a2 + 20);
  v90 = *a2;
  *&v84 = __PAIR64__(v93[0], OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type DynamicTextView.DynamicTextFrame and conformance DynamicTextView.DynamicTextFrame();
  v13 = Attribute.init<A>(body:value:flags:update:)();
  v14 = v90;
  v53 = DWORD2(v90);
  v54 = v13;
  v15 = v91;
  v42 = HIDWORD(v91);
  swift_beginAccess();
  LODWORD(v49) = *(v15 + 16);
  v51 = v14;
  v16 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA18ReferenceDateInputV_Tt2g5(v14);
  v17 = v16;
  v50 = 0;
  v48 = HIDWORD(v16);
  LODWORD(a2) = AGGraphCreateOffsetAttribute2();
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  type metadata accessor for PropertyList.Tracker();
  v18 = swift_allocObject();
  _sypSgMaTm_5(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E7CC8];
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v20;
  v21 = MEMORY[0x1E69E7CC0];
  *(v19 + 40) = v20;
  *(v19 + 48) = v21;
  *(v19 + 56) = 0;
  *(v18 + 16) = v19;
  *(v10 + 4) = v18;
  *(v10 + 5) = 0;
  static Date.distantPast.getter();
  *v10 = v49;
  *(v10 + 1) = v17;
  v22 = v53;
  *(v10 + 2) = v48;
  *(v10 + 3) = v22;
  v23 = OffsetAttribute2;
  *(v10 + 4) = a2;
  *(v10 + 5) = v23;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for DynamicTextView.DynamicTextFilter.Value(0);
  lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type DynamicTextView.DynamicTextFilter and conformance DynamicTextView.DynamicTextFilter, type metadata accessor for DynamicTextView.DynamicTextFilter);
  v53 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of Date?(v10, type metadata accessor for DynamicTextView.DynamicTextFilter);
  v89 = v90;
  v56 = *(&v91 + 1);
  v41 = v92[0];
  v88[0] = *(v92 + 4);
  *(v88 + 12) = v92[1];
  LODWORD(v48) = v93[1];
  v49 = *&v93[3];
  outlined init with copy of _ViewInputs(&v90, &v84);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v54 = AGGraphCreateOffsetAttribute2();
  LODWORD(a2) = *(v15 + 16);
  LODWORD(v18) = AGGraphCreateOffsetAttribute2();
  v24 = v44;
  static Date.distantPast.getter();
  v25 = v42;
  *v8 = a2;
  *(v8 + 1) = v25;
  *(v8 + 2) = v18;
  (*(v45 + 32))(&v8[*(v47 + 28)], v24, v46);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type DynamicTextView.DynamicTextEnvironment and conformance DynamicTextView.DynamicTextEnvironment, type metadata accessor for DynamicTextView.DynamicTextEnvironment);
  LODWORD(v18) = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of Date?(v8, type metadata accessor for DynamicTextView.DynamicTextEnvironment);
  v57 = 1;
  v26 = MEMORY[0x1E69E7CC0];
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sypSgMaTm_5(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v28 = swift_allocObject();
  *(v28 + 16) = v18;
  *(v28 + 24) = v26;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 256;
  *(v28 + 82) = v59;
  *(v28 + 86) = v60;
  *(v28 + 88) = v27;

  v29 = v41 | 0x38;
  v30 = AGGraphCreateOffsetAttribute2();
  v84 = v89;
  *&v85 = v28;
  *(&v85 + 1) = v56;
  LODWORD(v86[0]) = v29;
  *(v86 + 4) = v88[0];
  v86[1] = *(v88 + 12);
  v31 = v48;
  *&v87[0] = __PAIR64__(v48, OffsetAttribute2);
  DWORD2(v87[0]) = v54;
  v32 = v49;
  *(v87 + 12) = v49;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v80 = v86[0];
  v81 = v86[1];
  v82 = v87[0];
  v83 = v87[1];
  v78 = v84;
  v79 = v85;
  v34 = v86[0];
  LODWORD(v80) = 0;
  v74 = v80;
  v75 = v86[1];
  v76 = v87[0];
  v77 = v87[1];
  v72 = v84;
  v73 = v85;
  LODWORD(v61[0]) = v30;
  outlined init with copy of _ViewInputs(&v84, &v63);
  static StyledTextContentView._makeInnerView(view:inputs:)(v61, &v72, &v58);
  LODWORD(v80) = v34;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(&v58, &v78);
    AGSubgraphEndTreeElement();
  }

  v74 = v80;
  v75 = v81;
  v76 = v82;
  v77 = v83;
  v72 = v78;
  v73 = v79;
  outlined destroy of _ViewInputs(&v72);
  v35 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(v51);
  if (v35)
  {
    v61[2] = v92[0];
    v61[3] = v92[1];
    v61[4] = *v93;
    v62 = v93[4];
    v61[0] = v90;
    v61[1] = v91;
    v36 = MEMORY[0x1EEE9AC00](v35);
    *(&v40 - 4) = v53;
    (*(v37 + 8))(v61, partial apply for implicit closure #1 in static DynamicTextView._makeView(view:inputs:), v36);
  }

  v63 = v89;
  v64 = v28;
  v65 = v56;
  v66 = v29;
  *v67 = v88[0];
  *&v67[12] = *(v88 + 12);
  v68 = OffsetAttribute2;
  v69 = v31;
  v70 = v54;
  v71 = v32;
  outlined destroy of _ViewInputs(&v63);
  v38 = v52;
  *v52 = v58;
  result = *(&v58 + 1);
  v38[1] = *(&v58 + 1);
  return result;
}

uint64_t DynamicTextView.DynamicTextFilter.textManager.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = DynamicTextView.DynamicTextFilter.makeTextManager()();
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t DynamicTextView.DynamicTextFilter.makeTextManager()()
{
  type metadata accessor for Date?(0);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for ResolvableStringResolutionContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *AGGraphGetValue();

  Value = AGGraphGetValue();
  v10 = *Value;
  v9 = *(Value + 8);
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  if (v9)
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE029ResolvableStringReferenceDateI033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5(v10, v3);
  }

  else
  {

    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(v12);
    if (v13)
    {
      v14 = v13 + *(*v13 + 248);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v1, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
    }

    outlined init with copy of ResolvableStringResolutionContext(v14, v3, type metadata accessor for Date?);
  }

  v15 = &v6[*(v4 + 24)];
  outlined assign with take of ResolvedTextHelper.NextUpdate(v3, v6, type metadata accessor for Date?);
  v16 = &v6[*(v4 + 20)];
  *v16 = v10;
  v16[1] = v9;
  *v15 = 0;
  v15[8] = 1;
  type metadata accessor for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>(0, &lazy cache variable for type metadata for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>, type metadata accessor for SizeFittingTextCache);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + 16) = 10;
  *(v17 + 24) = v18;
  *(v17 + 32) = 0;
  type metadata accessor for _ContiguousArrayStorage<SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry>();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18DDA6EB0;
  *(v19 + 32) = v7;
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 72) = 0;
  *(v17 + 40) = v19;
  *(v17 + 48) = 0;
  *(v17 + 50) = *&v21[10];
  *(v17 + 54) = v22;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0;
  *(v17 + 89) = 1;
  _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v6, v17 + *(*v17 + 144), type metadata accessor for ResolvableStringResolutionContext);
  return v17;
}

uint64_t DynamicTextView.DynamicTextFilter.updateValue()()
{
  v1 = v0;
  v128 = *MEMORY[0x1E69E9840];
  v116 = type metadata accessor for DynamicTextView.DynamicTextFilter.Value(0);
  MEMORY[0x1EEE9AC00](v116);
  v114 = (&v103 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = type metadata accessor for ResolvableStringResolutionContext(0);
  MEMORY[0x1EEE9AC00](v109);
  v113 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Date?(0);
  v112 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v110 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v106 = &v103 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v108 = &v103 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v103 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v103 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v103 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v103 - v19;
  v121 = type metadata accessor for Date();
  v21 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v105 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v103 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v103 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v118 = &v103 - v30;
  Value = AGGraphGetValue();
  v33 = v32;
  v34 = *Value;
  v119 = Value[1];

  v120 = v34;

  v35 = *AGGraphGetValue();
  if (v36)
  {

    LODWORD(v115) = 1;
  }

  else
  {

    if (v33)
    {

      LODWORD(v115) = PropertyList.Tracker.hasDifferentUsedValues(_:)(v37);
    }

    else
    {
      LODWORD(v115) = 0;
    }
  }

  v38 = v118;
  v39 = *(v35 + 216);
  v117 = v35;
  if (v39)
  {

    v40 = NSAttributedString.isDynamic.getter();

    if (v40)
    {
      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        outlined init with copy of ResolvableStringResolutionContext(WeakValue, v20, type metadata accessor for Date?);
        _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v20, v17, type metadata accessor for Date?);
        v42 = v121;
        if ((*(v21 + 48))(v17, 1, v121) != 1)
        {
          (*(v21 + 32))(v38, v17, v42);
          goto LABEL_21;
        }

        outlined destroy of Date?(v17, type metadata accessor for Date?);
      }

      if (*AGGraphGetValue() >= *(v1 + 40))
      {
        *&v125 = v120;
        *(&v125 + 1) = v119;
        EnvironmentValues.stringResolutionDate.getter(v14);
        v49 = *(v21 + 48);
        v50 = v121;
        if (v49(v14, 1, v121) == 1)
        {
          AGGraphGetValue();
          static Date.now.getter();
          v51 = v49(v14, 1, v50);
          v42 = v50;
          if (v51 != 1)
          {
            outlined destroy of Date?(v14, type metadata accessor for Date?);
          }
        }

        else
        {
          (*(v21 + 32))(v28, v14, v50);
          v42 = v50;
        }
      }

      else
      {
        v43 = type metadata accessor for DynamicTextView.DynamicTextFilter(0);
        v42 = v121;
        (*(v21 + 16))(v28, v1 + *(v43 + 48), v121);
      }

      (*(v21 + 32))(v38, v28, v42);
LABEL_21:
      v45 = 1;
      if ((v115 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_14:
      v46 = DynamicTextView.DynamicTextFilter.makeTextManager()();

      *(v1 + 24) = v46;
      v47 = v120;
      v48 = v117;
      goto LABEL_26;
    }
  }

  v44 = type metadata accessor for DynamicTextView.DynamicTextFilter(0);
  v42 = v121;
  (*(v21 + 16))(v38, v1 + *(v44 + 48), v121);
  v45 = 0;
  if (v115)
  {
    goto LABEL_14;
  }

LABEL_22:
  v52 = type metadata accessor for DynamicTextView.DynamicTextFilter(0);
  (*(v21 + 16))(v25, v1 + *(v52 + 48), v42);
  lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v21 + 8))(v25, v42);
  v47 = v120;
  v48 = v117;
  if ((v53 & 1) != 0 && AGGraphGetOutputValue())
  {
    if (!v45)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_26:
  v55 = *(v1 + 32);
  PropertyList.Tracker.reset()();
  v111 = v45;
  if (!v45)
  {

    v57 = v48;
    goto LABEL_52;
  }

  v123 = v47;
  v124 = v55;
  if (v47)
  {
    v56 = v47[8];
  }

  else
  {
    v56 = 0;
  }

  v58 = *(v55 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v58 + 16));
  *(v58 + 24) = v56;
  os_unfair_lock_unlock((v58 + 16));

  v59 = v107;
  (*(v21 + 16))(v107, v38, v42);
  v60 = *(v21 + 56);
  v60(v59, 0, 1, v42);
  EnvironmentValues.stringResolutionDate.setter(v59);
  v61 = v108;
  if ((*(v48 + 260) & 4) != 0)
  {
    v62 = v123;

    v64 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(v63);
    if (!v64 || (v65 = v62, *(v64 + 72) != 1))
    {
      type metadata accessor for TypedElement<EnvironmentPropertyKey<SensitiveContentKey>>();
      *(swift_allocObject() + 72) = 1;
      _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);
      v65 = PropertyList.Element.init(keyType:before:after:)(v66, 0, v62).value;
      v123 = v65;
    }

    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016SensitiveContentK033_7799685610985DBA9248562F2E4D5E6ELLVG_Ttg5(v62, v65);
  }

  v67 = AGGraphGetWeakValue();
  v104 = v21;
  if (v67)
  {
    v68 = v106;
    outlined init with copy of ResolvableStringResolutionContext(v67, v106, type metadata accessor for Date?);
    _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v68, v61, type metadata accessor for Date?);
    v69 = v121;
  }

  else
  {
    v69 = v121;
    v60(v61, 1, 1, v121);
  }

  v70 = v123;
  v71 = v124;

  v72 = v1;
  v73 = *AGGraphGetValue();
  v74 = v113;
  v115 = v21 + 56;
  v112 = v60;
  v60(v113, 1, 1, v69);
  v75 = v109;
  v76 = v74 + *(v109 + 24);
  outlined assign with take of ResolvedTextHelper.NextUpdate(v61, v74, type metadata accessor for Date?);
  v77 = (v74 + *(v75 + 20));
  *v77 = v70;
  v77[1] = v71;
  *v76 = v73;
  v1 = v72;
  *(v76 + 8) = 0;
  v78 = DynamicTextView.DynamicTextFilter.textManager.getter();
  v79 = AGGraphGetValue();
  v80 = v79[1];
  v125 = *v79;
  v126 = v80;
  v57 = DynamicTextView.TextManager.resolve(in:for:)(v74, &v125, v78);

  v81 = v120;

  if (v119)
  {
    swift_retain_n();

    v82 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v81);

    v38 = v118;
    v21 = v104;
  }

  else
  {

    v83 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(v81);
    v38 = v118;
    v21 = v104;
    if (v83)
    {
      v82 = *(v83 + 72);
    }

    else
    {
      v82 = 0;
    }
  }

  v84 = *AGGraphGetValue();
  ResolvedStyledText.schedule.getter(&v125);
  v85 = *(&v126 + 1);
  if (*(&v126 + 1))
  {
    v86 = v127;
    __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
    v122 = v82 & 1;
    v87 = v110;
    TimelineSchedule.nextEntry(after:mode:limit:)(v38, &v122, 60, 0, v85, v86, v110);
    v42 = v121;
    v112(v87, 0, 1, v121);
    __swift_destroy_boxed_opaque_existential_1(&v125);
    if ((*(v21 + 48))(v87, 1, v42) != 1)
    {
      v89 = v105;
      (*(v21 + 32))(v105, v87, v42);
      Date.timeIntervalSince(_:)();
      v91 = v90;

      (*(v21 + 8))(v89, v42);
      v88 = v84 + v91;
      goto LABEL_51;
    }
  }

  else
  {

    _sypSgWOhTm_6(&v125, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);
    v87 = v110;
    v42 = v121;
    v112(v110, 1, 1, v121);
  }

  outlined destroy of Date?(v87, type metadata accessor for Date?);
  v88 = INFINITY;
LABEL_51:
  outlined destroy of Date?(v113, type metadata accessor for ResolvableStringResolutionContext);

  *(v72 + 40) = v88;
LABEL_52:
  v92 = type metadata accessor for DynamicTextView.DynamicTextFilter(0);
  (*(v21 + 24))(v1 + *(v92 + 48), v38, v42);

  v93 = ResolvedStyledText.schedule.getter(&v125);
  v94 = v114;
  *v114 = v57;
  *(v94 + 8) = 0;
  *(v94 + 16) = 0;
  v95 = v116;
  (*(v21 + 16))(v94 + *(v116 + 20), v38, v42, v93);
  v96 = v94 + *(v95 + 24);
  v97 = v126;
  *v96 = v125;
  *(v96 + 16) = v97;
  *(v96 + 32) = v127;
  AGGraphSetOutputValue();

  outlined destroy of Date?(v94, type metadata accessor for DynamicTextView.DynamicTextFilter.Value);
  if (!v111)
  {
LABEL_57:
    (*(v21 + 8))(v38, v42, v54);
  }

LABEL_53:
  v98 = *(v1 + 40);
  v54.n128_u64[0] = *AGGraphGetValue();
  if (v54.n128_f64[0] >= v98)
  {
    goto LABEL_57;
  }

  specialized static GraphHost.currentHost.getter();

  (*(v21 + 8))(v38, v42);
  type metadata accessor for ViewGraph();
  v99 = swift_dynamicCastClassUnconditional();
  v100 = *(v1 + 40);
  swift_beginAccess();
  v101 = *(v99 + 376);
  if (v100 < v101)
  {
    v101 = v100;
  }

  *(v99 + 376) = v101;
}

uint64_t DynamicTextView.TextManager.resolve(in:for:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for ResolvableStringResolutionContext(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  outlined init with copy of ResolvableStringResolutionContext(a1, v8, type metadata accessor for ResolvableStringResolutionContext);
  specialized SizeFittingTextCache.input.setter(v8, 1);
  v32 = v9;
  v33 = v10;
  v34 = v11;
  v35 = v12;
  ViewSize.proposal.getter(&v28);
  v13 = v28;
  v14 = v29;
  v15 = v30;
  v16 = v31;
  LOBYTE(v36) = v29;
  v27 = v31;
  specialized SizeFittingTextCache.suggestedVariant(for:)(v28, v29, v30, v31, &v25);
  if (v26)
  {
    swift_beginAccess();

    LOBYTE(v36) = v14;
    v27 = v16;
    specialized ClosestFitCache.callAsFunction(for:makeValue:)(v13, v14, *&v15, v16, (a3 + 16), a3, &v36, v15, v16);
    swift_endAccess();
    v17 = v36;
  }

  else
  {
    v17 = v25;
  }

  v18 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v17, _ViewInputs.base.modify, 0, closure #1 in DynamicTextView.TextManager.resolve(in:for:), 0);
  v32 = v9;
  v33 = v10;
  v34 = v11;
  v35 = v12;
  ViewSize.proposal.getter(&v28);
  v19 = v28;
  v20 = v29;
  v21 = v30;
  v22 = v31;
  *(a3 + 56) = v17;
  *(a3 + 64) = v19;
  *(a3 + 72) = v20;
  *(a3 + 80) = v21;
  *(a3 + 88) = v22;
  return v18;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance DynamicTextView.DynamicTextFilter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DynamicTextView.DynamicTextFilter.Value(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t DynamicTextView.DynamicTextHelper.value(for:)(uint64_t a1)
{
  v1 = ResolvedStyledText.resolvingContent(in:)(a1);
  v65 = *(v1 + 256) & 0xFE;
  v66 = *(v1 + 257);
  v2 = *(v1 + 216);
  swift_beginAccess();
  v3 = *(v1 + 128);
  *&v73[16] = *(v1 + 112);
  v74 = v3;
  v75 = *(v1 + 144);
  v76 = *(v1 + 160);
  v4 = *(v1 + 64);
  v70 = *(v1 + 48);
  v71 = v4;
  v5 = *(v1 + 96);
  v72 = *(v1 + 80);
  *v73 = v5;
  v6 = *(v1 + 32);
  v68 = *(v1 + 16);
  v69 = v6;
  swift_beginAccess();
  v8 = *(v1 + 168);
  v7 = *(v1 + 176);
  v10 = *(v1 + 184);
  v9 = *(v1 + 192);
  v12 = *(v1 + 224);
  v11 = *(v1 + 232);
  v13 = *(v1 + 240);
  v14 = *(v1 + 248);
  v64 = *(v1 + 258);
  v15 = *(v1 + 260);
  v17 = *(v1 + 264);
  v16 = *(v1 + 272);
  swift_beginAccess();
  if ((v73[1] & 1) == 0 && (v15 & 0xD8) == 0 && BYTE8(v74) == 2)
  {
    v62 = v13;
    v18 = *(v1 + 200);
    v63 = *(v1 + 208);
    type metadata accessor for ResolvedStyledText.StringDrawing();
    v19 = swift_allocObject();
    v59 = v76 & 1;
    v60 = v12;
    v61 = v11;
    if (v76)
    {
      outlined init with copy of TextLayoutProperties(&v68, v67);
      outlined init with copy of TextLayoutProperties(&v68, v67);
      v41 = v2;
    }

    else
    {
      if (v2)
      {
        outlined init with copy of TextLayoutProperties(&v68, v67);
        outlined init with copy of TextLayoutProperties(&v68, v67);
        v20 = v2;

        NSAttributedString.isDynamic.getter();
LABEL_19:
        v42 = v68;
        v43 = BYTE8(v68);
        v57 = v69;
        v44 = BYTE8(v69);
        v58 = *&v73[8];
        v45 = *&v70;
        v46 = *(&v72 + 1);
        if (v2)
        {
          if (v63)
          {
            v18 = 1.0;
          }

          v47 = v2;
          v48 = v47;
          if (v18 == 1.0)
          {
            outlined destroy of TextLayoutProperties(&v68);
          }

          else
          {
            v56 = [v47 _ui_attributedSubstringFromRange_scaledByScaleFactor_];
            outlined destroy of TextLayoutProperties(&v68);

            v48 = v56;
          }
        }

        else
        {
          if (one-time initialization token for emptyString != -1)
          {
            swift_once();
          }

          v48 = static NSAttributedString.emptyString;
          outlined destroy of TextLayoutProperties(&v68);
        }

        LOBYTE(v67[0]) = v43;
        v49 = 1.0;
        if (v63)
        {
          v49 = v45;
        }

        *(v19 + 352) = 0;
        *(v19 + 360) = v48;
        *(v19 + 368) = v42;
        *(v19 + 376) = v43;
        *(v19 + 384) = v57;
        *(v19 + 392) = v44;
        *(v19 + 400) = v49;
        *(v19 + 408) = v58;
        *(v19 + 424) = v59;
        *(v19 + 425) = v46 != 0.0;
        v50 = MEMORY[0x1E69E7CC0];
        *(v19 + 426) = v64;
        *(v19 + 432) = v50;
        *(v19 + 200) = 0;
        *(v19 + 208) = 1;
        *(v19 + 216) = v2;
        *(v19 + 224) = v60;
        *(v19 + 232) = v61;
        *(v19 + 240) = v62;
        *(v19 + 248) = v14;
        *(v19 + 256) = v65;
        *(v19 + 257) = v66;
        *(v19 + 258) = v64;
        *(v19 + 260) = v15;
        *(v19 + 264) = v17;
        *(v19 + 272) = v16;
        v51 = v74;
        *(v19 + 112) = *&v73[16];
        *(v19 + 128) = v51;
        *(v19 + 144) = v75;
        *(v19 + 160) = v76;
        v52 = v71;
        *(v19 + 48) = v70;
        *(v19 + 64) = v52;
        v53 = *v73;
        *(v19 + 80) = v72;
        *(v19 + 96) = v53;
        v54 = v69;
        *(v19 + 16) = v68;
        *(v19 + 32) = v54;
        *(v19 + 312) = 0u;
        *(v19 + 328) = 0u;
        *(v19 + 280) = 0u;
        *(v19 + 296) = 0u;
        *(v19 + 344) = 1;
        *(v19 + 168) = v8;
        *(v19 + 176) = v7;
        *(v19 + 184) = v10;
        *(v19 + 192) = v9;
        return v1;
      }

      outlined init with copy of TextLayoutProperties(&v68, v67);
      outlined init with copy of TextLayoutProperties(&v68, v67);
    }

    goto LABEL_19;
  }

  type metadata accessor for ResolvedStyledText.TextLayoutManager();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CC0];
  *(v21 + 416) = MEMORY[0x1E69E7CC0];
  *(v21 + 424) = 0u;
  *(v21 + 440) = 0u;
  *(v21 + 456) = 0u;
  *(v21 + 472) = 0u;
  *(v21 + 488) = 512;
  if ((BYTE8(v68) & 1) != 0 || v68 != 1)
  {
    outlined init with copy of TextLayoutProperties(&v68, v67);
    if (v2)
    {
      v26 = v2;
      outlined init with copy of TextLayoutProperties(&v68, v67);
      v27 = v26;

      v25 = NSAttributedString.replacingLineBreakModes(_:)(0);
    }

    else
    {
      outlined init with copy of TextLayoutProperties(&v68, v67);

      v25 = 0;
    }
  }

  else
  {
    outlined init with copy of TextLayoutProperties(&v68, v67);
    v23 = v2;
    outlined init with copy of TextLayoutProperties(&v68, v67);
    v24 = v23;

    v25 = v2;
  }

  v28 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  v29 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
  [v28 setDelegate_];
  [v28 setUsesFontLeading_];
  v30 = v25;
  v31 = v28;
  ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v31, v25, v67);
  v32 = v67[3];
  *(v21 + 528) = v67[2];
  *(v21 + 544) = v32;
  *(v21 + 560) = v67[4];
  v33 = v67[1];
  *(v21 + 496) = v67[0];
  *(v21 + 512) = v33;
  *(v21 + 576) = v29;
  *(v21 + 352) = 0u;
  *(v21 + 368) = 0u;
  *(v21 + 384) = 0;
  *(v21 + 392) = 0x8000000000000000;
  *(v21 + 400) = 0;
  *(v21 + 408) = v22;
  *(v21 + 200) = 0;
  *(v21 + 208) = 1;
  *(v21 + 216) = v25;
  *(v21 + 224) = v12;
  *(v21 + 232) = v11;
  *(v21 + 240) = v13;
  *(v21 + 248) = v14;
  *(v21 + 256) = v65;
  *(v21 + 257) = v66;
  *(v21 + 258) = v64;
  *(v21 + 260) = v15;
  *(v21 + 264) = v17;
  *(v21 + 272) = v16;
  v34 = v74;
  *(v21 + 112) = *&v73[16];
  *(v21 + 128) = v34;
  *(v21 + 144) = v75;
  *(v21 + 160) = v76;
  v35 = v71;
  *(v21 + 48) = v70;
  *(v21 + 64) = v35;
  v36 = *v73;
  *(v21 + 80) = v72;
  *(v21 + 96) = v36;
  v37 = v69;
  *(v21 + 16) = v68;
  *(v21 + 32) = v37;
  *(v21 + 312) = 0u;
  *(v21 + 328) = 0u;
  *(v21 + 280) = 0u;
  *(v21 + 296) = 0u;
  *(v21 + 344) = 1;
  *(v21 + 168) = v8;
  *(v21 + 176) = v7;
  *(v21 + 184) = v10;
  *(v21 + 192) = v9;
  swift_beginAccess();
  v38 = *(v21 + 97);
  v39 = v29;
  v40 = _TextContainer(v38);
  [v40 setLineFragmentPadding_];
  [v31 setTextContainer_];
  if ((v15 & 0xC0) != 0)
  {
    _NSTextLayoutManagerRequiresCTLine(v31);
  }

  outlined destroy of TextLayoutProperties(&v68);

  return v1;
}

uint64_t DynamicTextView.DynamicTextHelper.narrowerVariant.getter(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v5 = *(a1 + 260);
  *(v4 + 16) = v5;
  swift_beginAccess();
  if ((*(a1 + 160) & 2) == 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(v4 + 16) = v5 & 0xFEFF;
    }

    v6 = 0;
    v7 = 0;
LABEL_27:
    v28 = getter of styledText #1 in DynamicTextView.DynamicTextHelper.narrowerVariant.getter(v3, v2, v4);

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v6, v7);
    return v28;
  }

  v8 = *(a1 + 216);
  if (!v8)
  {

    goto LABEL_15;
  }

  [v8 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableAttributedString);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v6 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v33 = v8;
  v47 = 0;
  v9 = one-time initialization token for resolvableTextSegment;
  v10 = v38;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = static NSAttributedStringKey.resolvableTextSegment;
  v34 = [v10 length];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &v47;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in DynamicTextView.DynamicTextHelper.narrowerVariant.getter;
  *(v13 + 24) = v12;
  v36 = v12;
  v45 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v46 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v44 = &block_descriptor_124;
  v14 = _Block_copy(&aBlock);
  v15 = v10;

  [v15 enumerateAttribute:v11 inRange:0 options:v34 usingBlock:{0, v14}];
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    if (v47 != 1)
    {

      v29 = v5 & 0xFEFF;
      if (v47)
      {
        v30 = 256;
      }

      else
      {
        v30 = 0;
      }

      v5 = v30 | v29;
      *(v4 + 16) = v30 | v29;
      v6 = partial apply for closure #1 in DynamicTextView.DynamicTextHelper.narrowerVariant.getter;
      v7 = v36;
      goto LABEL_16;
    }

    if ([v15 length] < 1)
    {

      v40 = 0;
      v38 = 0u;
      v39 = 0u;
LABEL_33:
      _sypSgWOhTm_6(&v38, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);
      v7 = v36;
      v8 = v33;
      *(v3 + 16) = v15;
      v31 = v5 & 0xFEFF;
      if (v47)
      {
        v32 = 256;
      }

      else
      {
        v32 = 0;
      }

      v5 = v32 | v31;
      *(v4 + 16) = v32 | v31;
      v6 = partial apply for closure #1 in DynamicTextView.DynamicTextHelper.narrowerVariant.getter;
      if (v15)
      {
        goto LABEL_27;
      }

LABEL_16:
      aBlock = 1;
      v21 = ResolvedStyledText.sizeVariant(_:)(&aBlock);
      v22 = v21;
      if (v23)
      {
        if (!v21[27] || (, v24 = NSAttributedString.isDynamic.getter(), , !v24))
        {
          if (v8)
          {
            if (NSAttributedString.isDynamic.getter())
            {
              v25 = v22[27];
              if (v25)
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v37 = v7;
                  v26 = v25;
                  ResolvedStyledText.schedule.getter(&aBlock);
                  NSMutableAttributedString.setUpdateSchedule(_:)(&aBlock);

                  v7 = v37;
                  _sypSgWOhTm_6(&aBlock, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);
                }
              }
            }
          }
        }

        *(v2 + 16) = v22;
        v27 = v5 | 0x100;
      }

      else
      {

        v27 = v5 & 0xFEFF;
      }

      *(v4 + 16) = v27;
      goto LABEL_27;
    }

    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v35 = [v15 length];
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = &v38;
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #1 in NSMutableAttributedString.resolveUpdateSchedule(recalculate:);
    *(v18 + 24) = v17;
    v45 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v46 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v44 = &block_descriptor_134;
    v19 = _Block_copy(&aBlock);
    v20 = v15;

    [v20 enumerateAttribute:v11 inRange:0 options:v35 usingBlock:{0, v19}];
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if ((v19 & 1) == 0)
    {
      outlined init with copy of Any?(&v38, &aBlock, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);
      NSMutableAttributedString.setUpdateSchedule(_:)(&aBlock);

      _sypSgWOhTm_6(&aBlock, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);

      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t getter of styledText #1 in DynamicTextView.DynamicTextHelper.narrowerVariant.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = v6;
  if (!v6)
  {
    swift_beginAccess();
    v7 = *(*(a2 + 16) + 216);
    v8 = v7;
  }

  swift_beginAccess();
  v9 = *(a2 + 16);
  swift_beginAccess();
  v10 = *(v9 + 128);
  *&v80[16] = *(v9 + 112);
  v81 = v10;
  v82 = *(v9 + 144);
  v83 = *(v9 + 160);
  v11 = *(v9 + 64);
  v77 = *(v9 + 48);
  v78 = v11;
  v12 = *(v9 + 96);
  v79 = *(v9 + 80);
  *v80 = v12;
  v13 = *(v9 + 32);
  v75 = *(v9 + 16);
  v76 = v13;
  swift_beginAccess();
  v15 = *(v9 + 168);
  v14 = *(v9 + 176);
  v17 = *(v9 + 184);
  v16 = *(v9 + 192);
  v18 = *(v9 + 224);
  v19 = *(v9 + 232);
  v21 = *(v9 + 240);
  v20 = *(v9 + 248);
  v22 = *(v9 + 256);
  v70 = *(v9 + 257);
  v71 = *(v9 + 258);
  swift_beginAccess();
  v23 = *(a3 + 16);
  v25 = *(v9 + 264);
  v24 = *(v9 + 272);
  swift_beginAccess();
  if ((v80[1] & 1) == 0 && (v23 & 0xD8) == 0 && BYTE8(v81) == 2)
  {
    v68 = v16;
    v26 = *(v9 + 200);
    v69 = *(v9 + 208);
    type metadata accessor for ResolvedStyledText.StringDrawing();
    v27 = swift_allocObject();
    v66 = v14;
    v67 = v17;
    v65 = v22;
    if ((v83 & 1) == 0)
    {
      if (v7)
      {
        v28 = v6;
        outlined init with copy of TextLayoutProperties(&v75, v74);

        if (NSAttributedString.isDynamic.getter())
        {
          v64 = v22 & 1;
LABEL_22:
          v48 = v75;
          v49 = BYTE8(v75);
          v50 = v76;
          v51 = BYTE8(v76);
          v63 = *&v80[8];
          v52 = *&v77;
          v53 = *(&v79 + 1);
          if (v7)
          {
            if (v69)
            {
              v26 = 1.0;
            }

            if (v26 == 1.0)
            {
              v54 = v7;
            }

            else
            {
              v54 = [v7 _ui_attributedSubstringFromRange_scaledByScaleFactor_];
            }
          }

          else
          {
            if (one-time initialization token for emptyString != -1)
            {
              swift_once();
            }

            v54 = static NSAttributedString.emptyString;
          }

          v74[0] = v49;
          LOBYTE(v72[0]) = v51;
          v55 = 1.0;
          if (v69)
          {
            v55 = v52;
          }

          *(v27 + 352) = 0;
          *(v27 + 360) = v54;
          *(v27 + 368) = v48;
          *(v27 + 376) = v49;
          *(v27 + 384) = v50;
          *(v27 + 392) = v51;
          *(v27 + 400) = v55;
          *(v27 + 408) = v63;
          *(v27 + 424) = v64;
          *(v27 + 425) = v53 != 0.0;
          v56 = MEMORY[0x1E69E7CC0];
          *(v27 + 426) = v71;
          *(v27 + 432) = v56;
          *(v27 + 200) = 0;
          *(v27 + 208) = 1;
          *(v27 + 216) = v7;
          *(v27 + 224) = v18;
          *(v27 + 232) = v19;
          *(v27 + 240) = v21;
          *(v27 + 248) = v20;
          *(v27 + 256) = v65;
          *(v27 + 257) = v70;
          *(v27 + 258) = v71;
          *(v27 + 260) = v23;
          *(v27 + 264) = v25;
          *(v27 + 272) = v24;
          v57 = v81;
          *(v27 + 112) = *&v80[16];
          *(v27 + 128) = v57;
          *(v27 + 144) = v82;
          *(v27 + 160) = v83;
          v58 = v78;
          *(v27 + 48) = v77;
          *(v27 + 64) = v58;
          v59 = *v80;
          *(v27 + 80) = v79;
          *(v27 + 96) = v59;
          v60 = v76;
          *(v27 + 16) = v75;
          *(v27 + 32) = v60;
          *(v27 + 312) = 0u;
          *(v27 + 328) = 0u;
          *(v27 + 280) = 0u;
          *(v27 + 296) = 0u;
          *(v27 + 344) = 1;
          *(v27 + 168) = v15;
          *(v27 + 176) = v66;
          *(v27 + 184) = v67;
          *(v27 + 192) = v68;
          goto LABEL_34;
        }
      }

      else
      {
        v47 = v6;
        outlined init with copy of TextLayoutProperties(&v75, v74);
      }

      v64 = 0;
      goto LABEL_22;
    }

    v46 = v6;
    outlined init with copy of TextLayoutProperties(&v75, v74);

    v64 = 1;
    goto LABEL_22;
  }

  type metadata accessor for ResolvedStyledText.TextLayoutManager();
  v27 = swift_allocObject();
  *(v27 + 416) = MEMORY[0x1E69E7CC0];
  *(v27 + 424) = 0u;
  *(v27 + 440) = 0u;
  *(v27 + 456) = 0u;
  *(v27 + 472) = 0u;
  *(v27 + 488) = 512;
  if ((BYTE8(v75) & 1) != 0 || v75 != 1)
  {
    v32 = v6;
    outlined init with copy of TextLayoutProperties(&v75, v74);

    if (v7)
    {
      v31 = NSAttributedString.replacingLineBreakModes(_:)(0);
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v29 = v6;
    outlined init with copy of TextLayoutProperties(&v75, v74);
    v30 = v7;

    v31 = v7;
  }

  v33 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  v34 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
  [v33 setDelegate_];
  [v33 setUsesFontLeading_];
  v35 = v31;
  v36 = v33;
  ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v36, v31, v72);
  v37 = v72[3];
  *(v27 + 528) = v72[2];
  *(v27 + 544) = v37;
  *(v27 + 560) = v72[4];
  v38 = v72[1];
  *(v27 + 496) = v72[0];
  *(v27 + 512) = v38;
  *(v27 + 576) = v34;
  *(v27 + 352) = 0u;
  *(v27 + 368) = 0u;
  *(v27 + 384) = 0;
  *(v27 + 392) = 0x8000000000000000;
  *(v27 + 400) = 0;
  *(v27 + 408) = MEMORY[0x1E69E7CC0];
  *(v27 + 200) = 0;
  *(v27 + 208) = 1;
  v73 = 1;
  *(v27 + 216) = v31;
  *(v27 + 224) = v18;
  *(v27 + 232) = v19;
  *(v27 + 240) = v21;
  *(v27 + 248) = v20;
  *(v27 + 256) = v22;
  *(v27 + 257) = v70;
  *(v27 + 258) = v71;
  *(v27 + 260) = v23;
  *(v27 + 264) = v25;
  *(v27 + 272) = v24;
  v39 = v81;
  *(v27 + 112) = *&v80[16];
  *(v27 + 128) = v39;
  *(v27 + 144) = v82;
  *(v27 + 160) = v83;
  v40 = v78;
  *(v27 + 48) = v77;
  *(v27 + 64) = v40;
  v41 = *v80;
  *(v27 + 80) = v79;
  *(v27 + 96) = v41;
  v42 = v76;
  *(v27 + 16) = v75;
  *(v27 + 32) = v42;
  *(v27 + 312) = 0u;
  *(v27 + 328) = 0u;
  *(v27 + 280) = 0u;
  *(v27 + 296) = 0u;
  *(v27 + 344) = 1;
  *(v27 + 168) = v15;
  *(v27 + 176) = v14;
  *(v27 + 184) = v17;
  *(v27 + 192) = v16;
  swift_beginAccess();
  v43 = *(v27 + 97);
  outlined init with copy of TextLayoutProperties(&v75, v74);
  v44 = v34;

  v45 = _TextContainer(v43);
  [v45 setLineFragmentPadding_];
  [v36 setTextContainer_];
  if ((v23 & 0xC0) != 0)
  {
    _NSTextLayoutManagerRequiresCTLine(v36);
  }

  outlined destroy of TextLayoutProperties(&v75);

LABEL_34:
  swift_beginAccess();

  v61 = ResolvedStyledText.smallerSizeVariant.getter();

  ResolvedStyledText.smallerSizeVariant.setter(v61);
  return v27;
}

uint64_t closure #1 in DynamicTextView.DynamicTextHelper.narrowerVariant.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  _s10Foundation4DateVSgMaTm_2(0, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, 255, type metadata accessor for ResolvableTextSegmentAttribute.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E7CA0];
  outlined init with copy of Any?(a1, v32, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
  if (!v33)
  {
    _sypSgWOhTm_6(v32, &lazy cache variable for type metadata for Any?, v18 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
    (*(v15 + 56))(v13, 1, 1, v14);
    return outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v13, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  }

  v19 = swift_dynamicCast();
  (*(v15 + 56))(v13, v19 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v13, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  }

  _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v13, v17, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  v20 = *&v17[*(v14 + 20)];
  if ([a5 attribute:v20 atIndex:a2 effectiveRange:0])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28[0] = v26;
  v28[1] = v27;
  if (*(&v27 + 1))
  {
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ResolvableStringAttribute);
    if (swift_dynamicCast())
    {
      if (*(&v30 + 1))
      {
        outlined init with take of _ViewList_Elements(&v29, v32);
        v25 = a3;
        v23 = v33;
        v22 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        *&v28[0] = 1;
        v24 = *(v22 + 72);
        *(&v30 + 1) = v23;
        v31 = v22;
        __swift_allocate_boxed_opaque_existential_1(&v29);
        *a6 = (v24() | *a6) & 1;
        [a5 addAttribute:v20 value:_bridgeAnythingToObjectiveC<A>(_:)() range:{a2, v25}];
        swift_unknownObjectRelease();
        outlined destroy of Date?(v17, type metadata accessor for ResolvableTextSegmentAttribute.Value);
        __swift_destroy_boxed_opaque_existential_1(&v29);
        return __swift_destroy_boxed_opaque_existential_1(v32);
      }
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
    }

    outlined destroy of Date?(v17, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  }

  else
  {
    outlined destroy of Date?(v17, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    _sypSgWOhTm_6(v28, &lazy cache variable for type metadata for Any?, v18 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
  }

  return _sypSgWOhTm_6(&v29, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute, type metadata accessor for ScrollStateRequest?);
}

uint64_t protocol witness for SizeFittingTextResolver.value(for:) in conformance DynamicTextView.DynamicTextHelper@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DynamicTextView.DynamicTextHelper.value(for:)(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t protocol witness for SizeFittingTextResolver.narrowerVariant.getter in conformance DynamicTextView.DynamicTextHelper@<X0>(uint64_t *a1@<X8>)
{
  result = DynamicTextView.DynamicTextHelper.narrowerVariant.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t DynamicTextView.DynamicTextEnvironment.updateValue()()
{
  v1 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for DynamicTextView.DynamicTextEnvironment(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v44 - v11;
  Value = AGGraphGetValue();
  v14 = Value[1];
  *&v53 = *Value;
  v15 = v53;
  *(&v53 + 1) = v14;
  v16 = *(v1 + 8);

  v48 = v15;

  v49 = v16;
  v17 = AGGraphGetValue();
  v18 = *(v7 + 16);
  v18(v12, v17, v6);
  v46 = *(v3 + 36);
  v18(v9, v1 + v46, v6);
  lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  LOBYTE(v3) = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = v7;
  v19 = *(v7 + 8);
  v19(v9, v6);
  v19(v12, v6);
  if (v3)
  {
    goto LABEL_22;
  }

  AGGraphClearUpdate();
  outlined init with copy of ResolvableStringResolutionContext(v1, v5, type metadata accessor for DynamicTextView.DynamicTextEnvironment);
  v20 = *AGGraphGetValue();

  outlined destroy of Date?(v5, type metadata accessor for DynamicTextView.DynamicTextEnvironment);
  AGGraphSetUpdate();
  if (!v14)
  {
    v21 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v48);
    if (v21)
    {
      v22 = *(v21 + 84);
      v23 = *(v21 + 20);
      v24 = v23 | (v22 << 32);
      v25 = *(v21 + 86);
      v26 = *(v21 + 87);
      v27 = v21[11];
      v28 = *(v21 + 24);
      *&v50 = v21[9];
      BYTE12(v50) = v22;
      DWORD2(v50) = v23;
      v29 = *(v21 + 85);
      BYTE13(v50) = v29;
      BYTE14(v50) = v25;
      HIBYTE(v50) = v26;
      v51 = v27;
      v52 = v28;
      v30 = v50;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v30 = static ContentTransition.State.defaultValue;
      v24 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v27 = off_1ED536620;
      v50 = static ContentTransition.State.defaultValue;
      v29 = BYTE13(static ContentTransition.State.defaultValue);
      v51 = off_1ED536620;
      v52 = dword_1ED536628;
    }

    outlined copy of ContentTransition.Storage(v30, v24, v29);

    v45 = v1;
    if (v27)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v48, &v50);

  v45 = v1;
  if (!v51)
  {
LABEL_11:
    v31 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v20);
    if ((!v31 || *(v31 + 72) != 1) && HIBYTE(v50) - 1 <= 1)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v51 = static Animation.default;
    }
  }

LABEL_17:
  v44[1] = v20;
  v32 = v50;
  v33 = DWORD2(v50) | (BYTE12(v50) << 32);
  v34 = BYTE13(v50);
  v35 = BYTE14(v50);
  v36 = v51;
  v37 = v52;
  v38 = HIBYTE(v50);
  v39 = v48;
  swift_retain_n();
  outlined copy of ContentTransition.Storage(v32, v33, v34);
  v40 = 0x1000000000000;
  if (!v35)
  {
    v40 = 0;
  }

  v41 = v33 | (v34 << 40) | v40 | (v38 << 56);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(&v53, v32, v41, v36, v37);

  outlined consume of ContentTransition.Storage(v32, v33, v34);

  if (v14)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v39, v53);
  }

  outlined consume of ContentTransition.Storage(v32, v33, v34);

  v1 = v45;
LABEL_22:
  v42 = AGGraphGetValue();
  (*(v47 + 24))(v1 + v46, v42, v6);
  v50 = v53;
  AGGraphSetOutputValue();
}

__n128 DynamicTextView.DynamicTextFrame.value.getter@<Q0>(__n128 *a1@<X8>)
{
  AGGraphGetValue();

  Value = AGGraphGetValue();
  ResolvedStyledText.frame(in:renderer:)(0, *(Value + 8), *(Value + 16));
  v4 = v3;
  v6 = v5;

  type metadata accessor for CGPoint(0);
  v7 = AGGraphGetValue();
  v8 = *v7 - v4;
  v9 = v7[1] - v6;
  v10 = AGGraphGetValue();
  a1->n128_f64[0] = v8;
  a1->n128_f64[1] = v9;
  result = *(v10 + 8);
  a1[1] = result;
  a1[2] = result;
  return result;
}

uint64_t static ResolvedStyledText.styledText(storage:stylePadding:layoutProperties:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:links:)(void *a1, __int128 *a2, char *a3, char a4, __int16 *a5, uint64_t a6, uint64_t *a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13)
{
  v13 = a8;
  v19 = a13;
  v20 = a2[7];
  *&v129[16] = a2[6];
  v130 = v20;
  v131 = a2[8];
  v132 = *(a2 + 144);
  v21 = a2[3];
  v126 = a2[2];
  v127 = v21;
  v22 = a2[5];
  v128 = a2[4];
  *v129 = v22;
  v23 = a2[1];
  v124 = *a2;
  v125 = v23;
  v89 = *a3;
  v87 = a3[1];
  v97 = *a5;
  v24 = *a6;
  v25 = *(a6 + 8);
  v94 = *(a6 + 16);
  v95 = *(a6 + 24);
  v26 = *(a6 + 32);
  v27 = *(a6 + 40);
  v28 = *(a6 + 48);
  v29 = *a7;
  v92 = *a6;
  v93 = v25;
  if ((v129[1] & 1) != 0 || (v97 & 0xD8) != 0 || *(v29 + 16))
  {
LABEL_11:
    v91 = v28;
    type metadata accessor for ResolvedStyledText.TextLayoutManager();
    v31 = swift_allocObject();
    *(v31 + 416) = MEMORY[0x1E69E7CC0];
    *(v31 + 424) = 0u;
    *(v31 + 440) = 0u;
    *(v31 + 456) = 0u;
    *(v31 + 472) = 0u;
    *(v31 + 488) = 512;
    if ((BYTE8(v124) & 1) != 0 || v124 != 1)
    {
      v33 = v19;
      v34 = v13;
      if (a1)
      {
        a1 = NSAttributedString.replacingLineBreakModes(_:)(0);
      }
    }

    else
    {
      v33 = v19;
      v34 = v13;
      v35 = a1;
    }

    v36 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
    v37 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
    [v36 setDelegate_];
    [v36 setUsesFontLeading_];
    v86 = a1;
    v38 = v36;
    ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v38, a1, v122);
    v39 = v122[3];
    *(v31 + 528) = v122[2];
    *(v31 + 544) = v39;
    *(v31 + 560) = v122[4];
    v40 = v122[1];
    *(v31 + 496) = v122[0];
    *(v31 + 512) = v40;
    v90 = v37;
    *(v31 + 576) = v37;
    *(v31 + 352) = v92;
    *(v31 + 360) = v93;
    *(v31 + 368) = v94;
    *(v31 + 376) = v95;
    *(v31 + 384) = v26;
    *(v31 + 392) = v27;
    *(v31 + 400) = v91;
    *(v31 + 408) = v29;
    *(v31 + 200) = 0;
    *(v31 + 208) = 1;
    v123 = 1;
    *(v31 + 280) = 0u;
    *(v31 + 296) = 0u;
    *(v31 + 312) = 0u;
    *(v31 + 328) = 0u;
    *(v31 + 344) = 1;
    *(v31 + 216) = a1;
    *(v31 + 224) = a9;
    *(v31 + 232) = a10;
    *(v31 + 240) = a11;
    *(v31 + 248) = a12;
    *(v31 + 256) = v89;
    *(v31 + 257) = v87;
    *(v31 + 258) = a4 & 1;
    *(v31 + 260) = v97;
    *(v31 + 264) = v34;
    *(v31 + 272) = v33;
    v41 = v125;
    *(v31 + 16) = v124;
    *(v31 + 32) = v41;
    v42 = *v129;
    *(v31 + 80) = v128;
    *(v31 + 96) = v42;
    v43 = v127;
    *(v31 + 48) = v126;
    *(v31 + 64) = v43;
    *(v31 + 160) = v132;
    v44 = v131;
    *(v31 + 128) = v130;
    *(v31 + 144) = v44;
    *(v31 + 112) = *&v129[16];
    if (a1)
    {
      v109 = 0uLL;
      v110 = 0uLL;
      v107 = 0uLL;
      v108 = 0uLL;
      v111 = 1;
      v105 = v129[24];
      v106 = v130;
      v118 = *&v129[16];
      v119 = v130;
      v120 = v131;
      v121 = v132;
      v114 = v126;
      v115 = v127;
      v116 = v128;
      v117 = *v129;
      v112 = v124;
      v113 = v125;
      outlined init with copy of TextLayoutProperties(&v124, v104);
      outlined copy of ResolvedTextSuffix(v92, v93, v94, v95, v26, v27);
      outlined init with copy of TextLayoutProperties(&v124, v104);

      v45 = v86;
      v46 = v90;
      v47 = v90;

      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v45, &v107, &v112);
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v56 = v110;
      *(v31 + 312) = v109;
      *(v31 + 328) = v56;
      *(v31 + 344) = v111;
      v57 = v108;
      *(v31 + 280) = v107;
      *(v31 + 296) = v57;
      *(v31 + 168) = v49;
      *(v31 + 176) = v51;
      *(v31 + 184) = v53;
      *(v31 + 192) = v55;
    }

    else
    {
      *(v31 + 344) = 1;
      *(v31 + 168) = 0uLL;
      *(v31 + 184) = 0uLL;
      outlined copy of ResolvedTextSuffix(v92, v93, v94, v95, v26, v27);
      outlined init with copy of TextLayoutProperties(&v124, &v112);

      v58 = v37;

      v46 = v37;
    }

    swift_beginAccess();
    v59 = _TextContainer(*(v31 + 97));
    [v59 setLineFragmentPadding_];
    [v38 setTextContainer_];
    if ((v97 & 0x40) == 0)
    {
      if (v27 < 0)
      {
        outlined consume of ResolvedTextSuffix(v92, v93, v94, v95, v26, v27);
        outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
        if ((v97 & 0x80) == 0 && !*(v29 + 16))
        {
          goto LABEL_25;
        }
      }

      else
      {
        outlined copy of ResolvedTextSuffix(v92, v93, v94, v95, v26, v27);
        v46 = v90;
        outlined consume of ResolvedTextSuffix(v92, v93, v94, v95, v26, v27);
        outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
      }
    }

    _NSTextLayoutManagerRequiresCTLine(v38);
LABEL_25:

    return v31;
  }

  if ((v27 & 0x8000000000000000) == 0)
  {
    outlined copy of ResolvedTextSuffix(v24, v25, v94, v95, v26, v27);
    v13 = a8;
    v19 = a13;
    outlined consume of ResolvedTextSuffix(v92, v93, v94, v95, v26, v27);
    outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
    goto LABEL_11;
  }

  outlined consume of ResolvedTextSuffix(v24, v25, v94, v95, v26, v27);
  outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
  if (BYTE8(v130) != 2)
  {
    goto LABEL_11;
  }

  type metadata accessor for ResolvedStyledText.StringDrawing();
  v31 = swift_allocObject();
  if (v132)
  {
    outlined init with copy of TextLayoutProperties(&v124, &v112);
    v32 = 1;
    goto LABEL_30;
  }

  if (!a1)
  {
    outlined init with copy of TextLayoutProperties(&v124, &v112);
    goto LABEL_29;
  }

  outlined init with copy of TextLayoutProperties(&v124, &v112);
  if (!NSAttributedString.isDynamic.getter())
  {
LABEL_29:
    v32 = 0;
    goto LABEL_30;
  }

  v32 = v89 & 1;
LABEL_30:
  v61 = v124;
  v62 = BYTE8(v124);
  v63 = v125;
  v64 = BYTE8(v125);
  v65 = *&v129[8];
  v66 = v126;
  v67 = *(&v128 + 1);
  if (a1)
  {
    v68 = a1;
  }

  else
  {
    v96 = *&v129[8];
    if (one-time initialization token for emptyString != -1)
    {
      swift_once();
    }

    v68 = static NSAttributedString.emptyString;
    v65 = v96;
  }

  v105 = v62;
  v123 = v64;
  *(v31 + 352) = 0;
  *(v31 + 360) = v68;
  *(v31 + 368) = v61;
  *(v31 + 376) = v62;
  *(v31 + 384) = v63;
  *(v31 + 392) = v64;
  *(v31 + 400) = v66;
  *(v31 + 408) = v65;
  *(v31 + 424) = v32;
  *(v31 + 425) = v67 != 0.0;
  *(v31 + 426) = a4 & 1;
  *(v31 + 432) = MEMORY[0x1E69E7CC0];
  *(v31 + 200) = 0;
  *(v31 + 208) = 1;
  v69 = (v31 + 280);
  v103 = 1;
  *(v31 + 216) = a1;
  *(v31 + 224) = a9;
  *(v31 + 232) = a10;
  *(v31 + 240) = a11;
  *(v31 + 248) = a12;
  *(v31 + 256) = v89;
  *(v31 + 257) = v87;
  *(v31 + 258) = a4 & 1;
  *(v31 + 260) = v97;
  *(v31 + 264) = v13;
  *(v31 + 272) = a13;
  v70 = *v129;
  *(v31 + 80) = v128;
  *(v31 + 96) = v70;
  v71 = v127;
  *(v31 + 48) = v126;
  *(v31 + 64) = v71;
  *(v31 + 160) = v132;
  v72 = v131;
  *(v31 + 128) = v130;
  *(v31 + 144) = v72;
  *(v31 + 112) = *&v129[16];
  v73 = v125;
  *(v31 + 16) = v124;
  *(v31 + 32) = v73;
  if (a1)
  {
    v100 = 0uLL;
    v101 = 0uLL;
    v98 = 0uLL;
    v99 = 0uLL;
    v102 = 1;
    LOBYTE(v122[0]) = v129[24];
    *(&v122[0] + 1) = v130;
    v118 = *&v129[16];
    v119 = v130;
    v120 = v131;
    v121 = v132;
    v114 = v126;
    v115 = v127;
    v116 = v128;
    v117 = *v129;
    v112 = v124;
    v113 = v125;
    outlined init with copy of TextLayoutProperties(&v124, v104);
    v74 = a1;
    outlined init with copy of TextLayoutProperties(&v124, v104);
    v75 = v74;

    Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v75, &v98, &v112);
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;

    outlined destroy of TextLayoutProperties(&v124);
    v84 = v101;
    *(v31 + 312) = v100;
    *(v31 + 328) = v84;
    *(v31 + 344) = v102;
    v85 = v99;
    *v69 = v98;
    *(v31 + 296) = v85;
    *(v31 + 168) = v77;
    *(v31 + 176) = v79;
    *(v31 + 184) = v81;
    *(v31 + 192) = v83;
  }

  else
  {
    *(v31 + 312) = 0uLL;
    *(v31 + 328) = 0uLL;
    *v69 = 0uLL;
    *(v31 + 296) = 0uLL;
    *(v31 + 344) = 1;
    *(v31 + 168) = 0uLL;
    *(v31 + 184) = 0uLL;
  }

  return v31;
}

unint64_t lazy protocol witness table accessor for type Text.WriteTextTrait and conformance Text.WriteTextTrait()
{
  result = lazy protocol witness table cache variable for type Text.WriteTextTrait and conformance Text.WriteTextTrait;
  if (!lazy protocol witness table cache variable for type Text.WriteTextTrait and conformance Text.WriteTextTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.WriteTextTrait and conformance Text.WriteTextTrait);
  }

  return result;
}

uint64_t destroy for AccessibilityStyledTextContentView(uint64_t a1)
{

  outlined consume of Text.Storage(*(a1 + 8), *(a1 + 16), *(a1 + 24));
}

uint64_t initializeWithCopy for AccessibilityStyledTextContentView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);

  outlined copy of Text.Storage(v4, v5, v6);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for AccessibilityStyledTextContentView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of Text.Storage(v4, v5, v6);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for AccessibilityStyledTextContentView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;
  outlined consume of Text.Storage(v5, v6, v7);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityStyledTextContentView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for AccessibilityStyledTextContentView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithTake for StyledTextContentView(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithCopy for TextLayoutProperties(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  v5 = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 27) = *(a2 + 27);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = a2[8];
  *(a1 + 72) = a2[9];
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 88) = a2[11];
  *(a1 + 96) = a2[12];
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = a2[14];

  v6 = *(a2 + 15);
  *(a1 + 136) = a2[17];
  *(a1 + 120) = v6;
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t assignWithTake for TextLayoutProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 27) = *(a2 + 27);
  *(a1 + 28) = *(a2 + 28);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextLayoutProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TextLayoutProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of ResolvedStyledText.__allocating_init(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(v3 + 192);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = v4;
  return v5(a1, a2, v8);
}

uint64_t assignWithCopy for DynamicTextViewFactory(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for DynamicTextViewFactory(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicTextViewFactory(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t storeEnumTagSinglePayload for DynamicTextViewFactory(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for ResolvedTextHelper.NextUpdate(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v8 = v7;
    v9 = *(v7 + 48);
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
    a1[*(v8 + 64)] = a2[*(v8 + 64)];
    *&a1[*(v8 + 80)] = *&a2[*(v8 + 80)];

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

void type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText))
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Date();
    type metadata accessor for ResolvedStyledText();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText));
    }
  }
}

char *assignWithCopy for ResolvedTextHelper.NextUpdate(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of Date?(a1, type metadata accessor for ResolvedTextHelper.NextUpdate);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v7 = v6;
    v8 = *(v6 + 48);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    a1[*(v7 + 64)] = a2[*(v7 + 64)];
    *&a1[*(v7 + 80)] = *&a2[*(v7 + 80)];

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

char *initializeWithTake for ResolvedTextHelper.NextUpdate(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v7 = v6;
    v8 = *(v6 + 48);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
    a1[*(v7 + 64)] = a2[*(v7 + 64)];
    *&a1[*(v7 + 80)] = *&a2[*(v7 + 80)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v11 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v11);
  }
}

char *assignWithTake for ResolvedTextHelper.NextUpdate(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of Date?(a1, type metadata accessor for ResolvedTextHelper.NextUpdate);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v7 = v6;
    v8 = *(v6 + 48);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
    a1[*(v7 + 64)] = a2[*(v7 + 64)];
    *&a1[*(v7 + 80)] = *&a2[*(v7 + 80)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t initializeBufferWithCopyOfBuffer for ResolvedTextHelper(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *v4 = *a2;
    v4 = v12 + ((v5 + 16) & ~v5);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 4) = *(a2 + 4);
    v7 = *(a2 + 4);
    *(a1 + 12) = *(a2 + 3);
    *(a1 + 16) = v7;
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = a2[5];
    v8 = a2[9];

    if (v8)
    {
      v9 = a2[6];
      v10 = a2[7];
      v11 = *(a2 + 64);
      outlined copy of Text.Storage(v9, v10, v11);
      *(v4 + 48) = v9;
      *(v4 + 56) = v10;
      *(v4 + 64) = v11;
      *(v4 + 72) = v8;
    }

    else
    {
      v13 = *(a2 + 4);
      *(v4 + 48) = *(a2 + 3);
      *(v4 + 64) = v13;
    }

    v14 = *(a3 + 60);
    v15 = (v4 + v14);
    v16 = a2 + v14;
    Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v15 = *v16;
      type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
      v19 = v18;
      v20 = *(v18 + 48);
      v21 = type metadata accessor for Date();
      (*(*(v21 - 8) + 16))(&v15[v20], &v16[v20], v21);
      v15[*(v19 + 64)] = v16[*(v19 + 64)];
      *&v15[*(v19 + 80)] = *&v16[*(v19 + 80)];

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v15, v16, *(*(Update - 8) + 64));
    }

    *(v4 + *(a3 + 64)) = *(a2 + *(a3 + 64));
  }

  return v4;
}

uint64_t destroy for ResolvedTextHelper(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 72))
  {
    outlined consume of Text.Storage(*(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  v4 = a1 + *(a2 + 60);
  type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v7 = *(v6 + 48);
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  return result;
}

uint64_t initializeWithCopy for ResolvedTextHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v6 = *(a2 + 16);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 72);

  if (v7)
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 56);
    v10 = *(a2 + 64);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 48) = v8;
    *(a1 + 56) = v9;
    *(a1 + 64) = v10;
    *(a1 + 72) = v7;
  }

  else
  {
    v11 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v11;
  }

  v12 = *(a3 + 60);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v13 = *v14;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v17 = v16;
    v18 = *(v16 + 48);
    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 16))(&v13[v18], &v14[v18], v19);
    v13[*(v17 + 64)] = v14[*(v17 + 64)];
    *&v13[*(v17 + 80)] = *&v14[*(v17 + 80)];

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v13, v14, *(*(Update - 8) + 64));
  }

  *(a1 + *(a3 + 64)) = *(a2 + *(a3 + 64));
  return a1;
}

uint64_t assignWithCopy for ResolvedTextHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 15) = *(a2 + 15);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  v6 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (v6)
    {
      v7 = *(a2 + 48);
      v8 = *(a2 + 56);
      v9 = *(a2 + 64);
      outlined copy of Text.Storage(v7, v8, v9);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      *(a1 + 48) = v7;
      *(a1 + 56) = v8;
      *(a1 + 64) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(a1 + 72) = *(a2 + 72);

      if (a1 == a2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      outlined destroy of Text(a1 + 48);
      v16 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v16;
      if (a1 == a2)
      {
        goto LABEL_14;
      }
    }
  }

  else if (v6)
  {
    v13 = *(a2 + 48);
    v14 = *(a2 + 56);
    v15 = *(a2 + 64);
    outlined copy of Text.Storage(v13, v14, v15);
    *(a1 + 48) = v13;
    *(a1 + 56) = v14;
    *(a1 + 64) = v15;
    *(a1 + 72) = *(a2 + 72);

    if (a1 == a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v17;
    if (a1 == a2)
    {
      goto LABEL_14;
    }
  }

  v18 = *(a3 + 60);
  v19 = (a1 + v18);
  v20 = (a2 + v18);
  outlined destroy of Date?(a1 + v18, type metadata accessor for ResolvedTextHelper.NextUpdate);
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v19 = *v20;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v23 = v22;
    v24 = *(v22 + 48);
    v25 = type metadata accessor for Date();
    (*(*(v25 - 8) + 16))(&v19[v24], &v20[v24], v25);
    v19[*(v23 + 64)] = v20[*(v23 + 64)];
    *&v19[*(v23 + 80)] = *&v20[*(v23 + 80)];

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v19, v20, *(*(Update - 8) + 64));
  }

LABEL_14:
  *(a1 + *(a3 + 64)) = *(a2 + *(a3 + 64));
  return a1;
}

uint64_t initializeWithTake for ResolvedTextHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v6 = *(a2 + 16);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 64);
  v8 = *(a3 + 60);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v7;
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v9 = *v10;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v13 = v12;
    v14 = *(v12 + 48);
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 32))(&v9[v14], &v10[v14], v15);
    v9[*(v13 + 64)] = v10[*(v13 + 64)];
    *&v9[*(v13 + 80)] = *&v10[*(v13 + 80)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v9, v10, *(*(Update - 8) + 64));
  }

  *(a1 + *(a3 + 64)) = *(a2 + *(a3 + 64));
  return a1;
}

uint64_t assignWithTake for ResolvedTextHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  if (!*(a1 + 72))
  {
LABEL_6:
    v11 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v11;
    if (a1 == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v6 = *(a2 + 72);
  if (!v6)
  {
    outlined destroy of Text(a1 + 48);
    goto LABEL_6;
  }

  v7 = *(a2 + 64);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v7;
  outlined consume of Text.Storage(v8, v9, v10);
  *(a1 + 72) = v6;

  if (a1 == a2)
  {
    goto LABEL_10;
  }

LABEL_7:
  v12 = *(a3 + 60);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  outlined destroy of Date?(a1 + v12, type metadata accessor for ResolvedTextHelper.NextUpdate);
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v13 = *v14;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v17 = v16;
    v18 = *(v16 + 48);
    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 32))(&v13[v18], &v14[v18], v19);
    v13[*(v17 + 64)] = v14[*(v17 + 64)];
    *&v13[*(v17 + 80)] = *&v14[*(v17 + 80)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v13, v14, *(*(Update - 8) + 64));
  }

LABEL_10:
  *(a1 + *(a3 + 64)) = *(a2 + *(a3 + 64));
  return a1;
}

uint64_t instantiation function for generic protocol witness table for ResolvedTextFilter(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type ResolvedTextFilter and conformance ResolvedTextFilter, type metadata accessor for ResolvedTextFilter);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Text.MakeRepresentableContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Text.MakeRepresentableContext and conformance Text.MakeRepresentableContext();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags()
{
  result = lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags;
  if (!lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags;
  if (!lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags;
  if (!lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags;
  if (!lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextLayoutQuery and conformance TextLayoutQuery()
{
  result = lazy protocol witness table cache variable for type TextLayoutQuery and conformance TextLayoutQuery;
  if (!lazy protocol witness table cache variable for type TextLayoutQuery and conformance TextLayoutQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextLayoutQuery and conformance TextLayoutQuery);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyledTextContentView.ArchivedTransitionEnvironment and conformance StyledTextContentView.ArchivedTransitionEnvironment()
{
  result = lazy protocol witness table cache variable for type StyledTextContentView.ArchivedTransitionEnvironment and conformance StyledTextContentView.ArchivedTransitionEnvironment;
  if (!lazy protocol witness table cache variable for type StyledTextContentView.ArchivedTransitionEnvironment and conformance StyledTextContentView.ArchivedTransitionEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyledTextContentView.ArchivedTransitionEnvironment and conformance StyledTextContentView.ArchivedTransitionEnvironment);
  }

  return result;
}

uint64_t partial apply for closure #1 in static Text.makeCommonAttributes(view:inputs:)@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v9 = v3;
  return static Text.makeTextAttributes(view:inputs:)(&v9, v7, a2);
}

uint64_t *initializeBufferWithCopyOfBuffer for ResolvedTextFilter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 24);
    v6 = a1 + v5;
    v7 = a2 + v5;
    *v6 = *(a2 + v5);
    *(v6 + 4) = *(a2 + v5 + 4);
    v8 = *(a2 + v5 + 16);
    *(v6 + 3) = *(a2 + v5 + 12);
    *(v6 + 4) = v8;
    *(v6 + 24) = *(a2 + v5 + 24);
    *(v6 + 5) = *(a2 + v5 + 40);
    v9 = *(a2 + v5 + 72);

    if (v9)
    {
      v10 = *(v7 + 6);
      v11 = *(v7 + 7);
      v12 = v7[64];
      outlined copy of Text.Storage(v10, v11, v12);
      *(v6 + 6) = v10;
      *(v6 + 7) = v11;
      v6[64] = v12;
      *(v6 + 9) = v9;
    }

    else
    {
      v14 = *(v7 + 4);
      *(v6 + 3) = *(v7 + 3);
      *(v6 + 4) = v14;
    }

    v15 = type metadata accessor for ResolvedTextHelper(0);
    v16 = *(v15 + 60);
    v17 = &v6[v16];
    v18 = &v7[v16];
    Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v17 = *v18;
      type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
      v21 = v20;
      v22 = *(v20 + 48);
      v23 = type metadata accessor for Date();
      (*(*(v23 - 8) + 16))(&v17[v22], &v18[v22], v23);
      v17[*(v21 + 64)] = v18[*(v21 + 64)];
      *&v17[*(v21 + 80)] = *&v18[*(v21 + 80)];

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v17, v18, *(*(Update - 8) + 64));
    }

    *&v6[*(v15 + 64)] = *&v7[*(v15 + 64)];
  }

  return v3;
}

_DWORD *assignWithCopy for ResolvedTextFilter(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = *(a3 + 24);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *v6 = *(a2 + v5);
  *(v6 + 1) = *(a2 + v5 + 4);
  *(v6 + 2) = *(a2 + v5 + 8);
  v6[12] = *(a2 + v5 + 12);
  v6[13] = *(a2 + v5 + 13);
  v6[14] = *(a2 + v5 + 14);
  v6[15] = *(a2 + v5 + 15);
  *(v6 + 8) = *(a2 + v5 + 16);
  v6[18] = *(a2 + v5 + 18);
  v6[19] = *(a2 + v5 + 19);
  *(v6 + 24) = *(a2 + v5 + 24);
  *(v6 + 5) = *(a2 + v5 + 40);

  v8 = *(v7 + 9);
  if (*(v6 + 9))
  {
    if (v8)
    {
      v9 = *(v7 + 6);
      v10 = *(v7 + 7);
      v11 = v7[64];
      outlined copy of Text.Storage(v9, v10, v11);
      v12 = *(v6 + 6);
      v13 = *(v6 + 7);
      v14 = v6[64];
      *(v6 + 6) = v9;
      *(v6 + 7) = v10;
      v6[64] = v11;
      outlined consume of Text.Storage(v12, v13, v14);
      *(v6 + 9) = *(v7 + 9);
    }

    else
    {
      outlined destroy of Text((v6 + 48));
      v18 = *(v7 + 4);
      *(v6 + 3) = *(v7 + 3);
      *(v6 + 4) = v18;
    }
  }

  else if (v8)
  {
    v15 = *(v7 + 6);
    v16 = *(v7 + 7);
    v17 = v7[64];
    outlined copy of Text.Storage(v15, v16, v17);
    *(v6 + 6) = v15;
    *(v6 + 7) = v16;
    v6[64] = v17;
    *(v6 + 9) = *(v7 + 9);
  }

  else
  {
    v19 = *(v7 + 4);
    *(v6 + 3) = *(v7 + 3);
    *(v6 + 4) = v19;
  }

  v20 = type metadata accessor for ResolvedTextHelper(0);
  v21 = v20;
  if (a1 != a2)
  {
    v22 = *(v20 + 60);
    v23 = &v6[v22];
    v24 = &v7[v22];
    outlined destroy of Date?(&v6[v22], type metadata accessor for ResolvedTextHelper.NextUpdate);
    Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v23 = *v24;
      type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
      v27 = v26;
      v28 = *(v26 + 48);
      v29 = type metadata accessor for Date();
      (*(*(v29 - 8) + 16))(&v23[v28], &v24[v28], v29);
      v23[*(v27 + 64)] = v24[*(v27 + 64)];
      *&v23[*(v27 + 80)] = *&v24[*(v27 + 80)];

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v23, v24, *(*(Update - 8) + 64));
    }
  }

  *&v6[*(v21 + 64)] = *&v7[*(v21 + 64)];
  return a1;
}

void *initializeWithTake for ResolvedTextFilter(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *v5 = *(a2 + v4);
  *(v5 + 4) = *(a2 + v4 + 4);
  v7 = *(a2 + v4 + 16);
  *(v5 + 3) = *(a2 + v4 + 12);
  *(v5 + 4) = v7;
  *(v5 + 24) = *(a2 + v4 + 24);
  *(v5 + 5) = *(a2 + v4 + 40);
  v8 = *(a2 + v4 + 64);
  *(v5 + 3) = *(a2 + v4 + 48);
  *(v5 + 4) = v8;
  v9 = type metadata accessor for ResolvedTextHelper(0);
  v10 = *(v9 + 60);
  v11 = &v5[v10];
  v12 = &v6[v10];
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v11 = *v12;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v15 = v14;
    v16 = *(v14 + 48);
    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 32))(&v11[v16], &v12[v16], v17);
    v11[*(v15 + 64)] = v12[*(v15 + 64)];
    *&v11[*(v15 + 80)] = *&v12[*(v15 + 80)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v11, v12, *(*(Update - 8) + 64));
  }

  *&v5[*(v9 + 64)] = *&v6[*(v9 + 64)];
  return a1;
}

void *assignWithTake for ResolvedTextFilter(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *v6 = *(a2 + v5);
  *(v6 + 2) = *(a2 + v5 + 8);
  v6[12] = *(a2 + v5 + 12);
  v6[13] = *(a2 + v5 + 13);
  *(v6 + 14) = *(a2 + v5 + 14);
  v6[18] = *(a2 + v5 + 18);
  v6[19] = *(a2 + v5 + 19);
  *(v6 + 24) = *(a2 + v5 + 24);
  *(v6 + 5) = *(a2 + v5 + 40);

  if (*(v6 + 9))
  {
    v8 = *(v7 + 9);
    if (v8)
    {
      v9 = v7[64];
      v10 = *(v6 + 6);
      v11 = *(v6 + 7);
      v12 = v6[64];
      *(v6 + 3) = *(v7 + 3);
      v6[64] = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(v6 + 9) = v8;

      goto LABEL_6;
    }

    outlined destroy of Text((v6 + 48));
  }

  v13 = *(v7 + 4);
  *(v6 + 3) = *(v7 + 3);
  *(v6 + 4) = v13;
LABEL_6:
  v14 = type metadata accessor for ResolvedTextHelper(0);
  v15 = v14;
  if (a1 != a2)
  {
    v16 = *(v14 + 60);
    v17 = &v6[v16];
    v18 = &v7[v16];
    outlined destroy of Date?(&v6[v16], type metadata accessor for ResolvedTextHelper.NextUpdate);
    Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v17 = *v18;
      type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
      v21 = v20;
      v22 = *(v20 + 48);
      v23 = type metadata accessor for Date();
      (*(*(v23 - 8) + 32))(&v17[v22], &v18[v22], v23);
      v17[*(v21 + 64)] = v18[*(v21 + 64)];
      *&v17[*(v21 + 80)] = *&v18[*(v21 + 80)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v17, v18, *(*(Update - 8) + 64));
    }
  }

  *&v6[*(v15 + 64)] = *&v7[*(v15 + 64)];
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_58Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for ResolvedTextHelper(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_59Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for ResolvedTextHelper(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t instantiation function for generic protocol witness table for ResolvedOptionalTextFilter(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type ResolvedOptionalTextFilter and conformance ResolvedOptionalTextFilter, type metadata accessor for ResolvedOptionalTextFilter);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for TextLayoutQuery(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TextLayoutQuery and conformance TextLayoutQuery();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for StyledTextLayoutComputer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StyledTextLayoutComputer and conformance StyledTextLayoutComputer();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for StyledTextContentView.ArchivedTransitionEnvironment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StyledTextContentView.ArchivedTransitionEnvironment and conformance StyledTextContentView.ArchivedTransitionEnvironment();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicTextView.DynamicTextFrame and conformance DynamicTextView.DynamicTextFrame()
{
  result = lazy protocol witness table cache variable for type DynamicTextView.DynamicTextFrame and conformance DynamicTextView.DynamicTextFrame;
  if (!lazy protocol witness table cache variable for type DynamicTextView.DynamicTextFrame and conformance DynamicTextView.DynamicTextFrame)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicTextView.DynamicTextFrame and conformance DynamicTextView.DynamicTextFrame);
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in static DynamicTextView._makeView(view:inputs:)()
{
  type metadata accessor for DynamicTextView.DynamicTextFilter.Value(0);

  return AGGraphCreateOffsetAttribute2();
}

void type metadata accessor for _ContiguousArrayStorage<SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry>)
  {
    type metadata accessor for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>(255, &lazy cache variable for type metadata for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry>);
    }
  }
}

void type metadata accessor for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = &type metadata for DynamicTextView.DynamicTextHelper;
    v8[1] = &type metadata for StickyTextSizeFittingLogic;
    v8[2] = &protocol witness table for DynamicTextView.DynamicTextHelper;
    v8[3] = &protocol witness table for StickyTextSizeFittingLogic;
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for DynamicTextView.DynamicTextFilter.Value(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = v4 + ((v3 + 16) & ~v3);
  }

  else
  {
    v5 = a1;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    v6 = *(a3 + 20);
    v9 = type metadata accessor for Date();
    v10 = *(*(v9 - 8) + 16);

    v10(v5 + v6, a2 + v6, v9);
    v11 = *(a3 + 24);
    v12 = v5 + v11;
    v13 = a2 + v11;
    v14 = *(a2 + v11 + 24);
    if (v14)
    {
      v15 = *(v13 + 32);
      *(v12 + 24) = v14;
      *(v12 + 32) = v15;
      (**(v14 - 8))();
    }

    else
    {
      v16 = *(v13 + 16);
      *v12 = *v13;
      *(v12 + 16) = v16;
      *(v12 + 32) = *(v13 + 32);
    }
  }

  return v5;
}

uint64_t destroy for DynamicTextView.DynamicTextFilter.Value(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  result = a1 + *(a2 + 24);
  if (*(result + 24))
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t initializeWithCopy for DynamicTextView.DynamicTextFilter.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v10 = *(a3 + 24);
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = *(a2 + v10 + 24);
  if (v13)
  {
    v14 = *(v12 + 32);
    *(v11 + 24) = v13;
    *(v11 + 32) = v14;
    (**(v13 - 8))();
  }

  else
  {
    v15 = *(v12 + 16);
    *v11 = *v12;
    *(v11 + 16) = v15;
    *(v11 + 32) = *(v12 + 32);
  }

  return a1;
}

uint64_t assignWithCopy for DynamicTextView.DynamicTextFilter.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 20);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  v8 = *(a3 + 24);
  v9 = a1 + v8;
  v10 = (a2 + v8);
  v11 = *(a2 + v8 + 24);
  if (*(a1 + v8 + 24))
  {
    if (v11)
    {
      __swift_assign_boxed_opaque_existential_1(v9, v10);
    }

    else
    {
      v12 = a1 + v8;
      __swift_destroy_boxed_opaque_existential_1(v9);
      v13 = *v10;
      v14 = *(v10 + 1);
      *(v12 + 32) = v10[4];
      *v12 = v13;
      *(v12 + 16) = v14;
    }
  }

  else if (v11)
  {
    *(v9 + 24) = v11;
    *(v9 + 32) = v10[4];
    (**(v11 - 8))();
  }

  else
  {
    v15 = *v10;
    v16 = *(v10 + 1);
    *(v9 + 32) = v10[4];
    *v9 = v15;
    *(v9 + 16) = v16;
  }

  return a1;
}

uint64_t initializeWithTake for DynamicTextView.DynamicTextFilter.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 20);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = *(a3 + 24);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(v10 + 32);
  return a1;
}

uint64_t assignWithTake for DynamicTextView.DynamicTextFilter.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 20);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  v8 = *(a3 + 24);
  v9 = a1 + v8;
  if (*(a1 + v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + v8);
  }

  v10 = *(a2 + v8 + 16);
  *v9 = *(a2 + v8);
  *(v9 + 16) = v10;
  *(v9 + 32) = *(a2 + v8 + 32);
  return a1;
}

uint64_t type metadata completion function for DynamicTextView.DynamicTextFilter.Value()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for DynamicTextView.DynamicTextFilter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 20) = *(a2 + 5);
    v5 = a2[4];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = v5;
    *(a1 + 40) = a2[5];
    v6 = *(a3 + 48);
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], a2 + v6, v8);
  }

  return v3;
}

uint64_t destroy for DynamicTextView.DynamicTextFilter(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 48);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t initializeWithCopy for DynamicTextView.DynamicTextFilter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 20) = *(a2 + 20);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 48);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t assignWithCopy for DynamicTextView.DynamicTextFilter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 48);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t initializeWithTake for DynamicTextView.DynamicTextFilter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a3 + 48);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithTake for DynamicTextView.DynamicTextFilter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 48);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t type metadata completion function for DynamicTextView.DynamicTextFilter()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for DynamicTextView.DynamicTextEnvironment(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    v5 = *(a3 + 28);
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(&v3[v5], a2 + v5, v7);
  }

  return v3;
}

uint64_t destroy for DynamicTextView.DynamicTextEnvironment(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 28);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t initializeWithCopy for DynamicTextView.DynamicTextEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  return a1;
}

char *assignWithCopy for DynamicTextView.DynamicTextEnvironment(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

uint64_t initializeWithTake for DynamicTextView.DynamicTextEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithTake for DynamicTextView.DynamicTextEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t type metadata completion function for DynamicTextView.DynamicTextEnvironment()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for DynamicTextView.DynamicTextEnvironment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type DynamicTextView.DynamicTextEnvironment and conformance DynamicTextView.DynamicTextEnvironment, type metadata accessor for DynamicTextView.DynamicTextEnvironment);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for DynamicTextView.DynamicTextFilter(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type DynamicTextView.DynamicTextFilter and conformance DynamicTextView.DynamicTextFilter, type metadata accessor for DynamicTextView.DynamicTextFilter);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for DynamicTextView.DynamicTextFrame(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DynamicTextView.DynamicTextFrame and conformance DynamicTextView.DynamicTextFrame();
  *(a1 + 8) = result;
  return result;
}

uint64_t AnimatableValues.value.getter@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = TupleTypeMetadata;
  v6 = *(TupleTypeMetadata + 16);
  if (v6 == 1)
  {
    v7 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v10 = 0;
      v11 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v6 != v10)
      {
LABEL_9:
        v16 = v6 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v24 + 16))(v23, v3, v7, v21);
  if (v6)
  {
    v26 = (*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v7 + 32);
    v28 = v6;
    do
    {
      if (v6 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v27;
      }

      v31 = *v26++;
      v30 = v31;
      v32 = *a2++;
      result = (*(*(v30 - 8) + 32))(v32, &v23[v29]);
      v27 += 4;
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t AnimatableValues.value.setter(uint64_t TupleTypeMetadata, uint64_t a2)
{
  v4 = TupleTypeMetadata;
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    v6 = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v9 = 0;
      v10 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v5 != v9)
      {
LABEL_9:
        v15 = v5 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(v6 - 8);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v24 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v25 = (v6 + 32);
    v26 = v5;
    do
    {
      if (v5 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v25;
      }

      v29 = *v24++;
      v28 = v29;
      v30 = *v4++;
      (*(*(v28 - 8) + 32))(&v23[v27], v30);
      v25 += 4;
      --v26;
    }

    while (v26);
  }

  return (*(v20 + 40))(v2, v23, v6, v21);
}

uint64_t static AnimatableValues.zero.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v35 = a3;
  v5 = 8 * a1;
  v33 = a4;
  if (a1 == 1)
  {
    TupleTypeMetadata = *(a2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v8 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a1)
    {
      v9 = 0;
      v10 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (a1 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a1 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a1 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a1)
      {
LABEL_9:
        v15 = a1 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = &v32;
  MEMORY[0x1EEE9AC00](v22);
  if (a1)
  {
    v24 = v34 & 0xFFFFFFFFFFFFFFFELL;
    v25 = v35 & 0xFFFFFFFFFFFFFFFELL;
    v26 = (v23 + 32);
    v27 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = a1;
    do
    {
      if (a1 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v26;
      }

      v24 += 8;
      v25 += 8;
      v30 = &v21[v29];
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      *v27++ = v30;
      v26 += 4;
      --v28;
    }

    while (v28);
  }

  return AnimatableValues.init(_:)(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v34, v33);
}

uint64_t static AnimatableValues.+= infix(_:_:)(uint64_t TupleTypeMetadata, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t, void))
{
  v75 = a6;
  v8 = a3;
  v10 = TupleTypeMetadata;
  v11 = 8 * a3;
  if (a3 == 1)
  {
    v12 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v13 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8)
    {
      v14 = 0;
      v15 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 < 4)
      {
        goto LABEL_9;
      }

      if (&v13[-v15] < 0x20)
      {
        goto LABEL_9;
      }

      v14 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v16 = (v15 + 16);
      v17 = v13 + 16;
      v18 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v19 = *v16;
        *(v17 - 1) = *(v16 - 1);
        *v17 = v19;
        v16 += 2;
        v17 += 2;
        v18 -= 4;
      }

      while (v18);
      if (v14 != v8)
      {
LABEL_9:
        v20 = v8 - v14;
        v21 = 8 * v14;
        v22 = &v13[8 * v14];
        v23 = (v15 + v21);
        do
        {
          v24 = *v23++;
          *v22 = v24;
          v22 += 8;
          --v20;
        }

        while (v20);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v12 = TupleTypeMetadata;
  }

  v25 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v27 = v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v61;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v61 - v29;
  v66 = v61;
  MEMORY[0x1EEE9AC00](v31);
  v73 = a5;
  v74 = v61 - v32;
  v72 = a4;
  v64 = type metadata accessor for AnimatableValues();
  v65 = v61;
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = v61 - v33;
  v61[1] = v61;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v69 = v10;
  v70 = (v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v25 + 32);
  v76 = v30;
  v36(v30, v10, v12, v35);
  v68 = v25;
  v37 = *(v25 + 16);
  v77 = v27;
  v71 = v12;
  v38 = v37(v27, a2, v12);
  if (v8)
  {
    v39 = (v72 & 0xFFFFFFFFFFFFFFFELL);
    v40 = (v73 & 0xFFFFFFFFFFFFFFFELL);
    v41 = v70;
    v42 = (v71 + 32);
    v43 = v8;
    v84 = v8;
    do
    {
      if (v8 == 1)
      {
        v48 = v74;
      }

      else
      {
        v48 = &v74[*v42];
      }

      v81 = v48;
      v82 = v40;
      v80 = v61;
      v83 = v39;
      v49 = *v39;
      v79 = *v40;
      v50 = *(v49 - 8);
      v51 = v50[8];
      v52 = MEMORY[0x1EEE9AC00](v38);
      v53 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
      v54 = v50[2];
      v56 = v54(v61 - v53, &v76[v55], v49, v52);
      v78 = v61;
      v44 = MEMORY[0x1EEE9AC00](v56);
      v54(v61 - v53, &v77[v45], v49, v44);
      v46 = v81;
      v75(v61 - v53, v61 - v53, v49, *(v79 + 8));
      v47 = v50[1];
      v47(v61 - v53, v49);
      v38 = (v47)(v61 - v53, v49);
      *v41++ = v46;
      v42 += 4;
      v40 = v82 + 1;
      v39 = v83 + 1;
      --v43;
      v8 = v84;
    }

    while (v43);
  }

  v57 = v62;
  AnimatableValues.init(_:)(v70, v8, v72, v62);
  v58 = *(v68 + 8);
  v59 = v71;
  v58(v77, v71);
  v58(v76, v59);
  return (*(v63 + 32))(v69, v57, v64);
}

uint64_t static AnimatableValues.+ infix(_:_:)@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, char *, uint64_t, void)@<X5>, uint64_t a7@<X8>)
{
  v64 = a6;
  v61 = a4;
  v62 = a5;
  v7 = a3;
  v9 = 8 * a3;
  v58 = a7;
  if (a3 == 1)
  {
    v10 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v12 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v13 = 0;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v12[-v14] < 0x20)
      {
        goto LABEL_9;
      }

      v13 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v15 = (v14 + 16);
      v16 = v12 + 16;
      v17 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v13 != v7)
      {
LABEL_9:
        v19 = v7 - v13;
        v20 = 8 * v13;
        v21 = &v12[8 * v13];
        v22 = (v14 + v20);
        do
        {
          v23 = *v22++;
          *v21 = v23;
          v21 += 8;
          --v19;
        }

        while (v19);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56[3] = v56;
  MEMORY[0x1EEE9AC00](v26);
  v56[2] = v56;
  MEMORY[0x1EEE9AC00](v56 - v27);
  v63 = v56 - v28;
  v56[1] = v56;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v59 = (v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = v31;
  v32 = *(v31 + 16);
  v65 = v33;
  v32(v30);
  v66 = v25;
  v60 = v10;
  v34 = (v32)(v25, a2, v10);
  if (v7)
  {
    v35 = (v61 & 0xFFFFFFFFFFFFFFFELL);
    v36 = (v62 & 0xFFFFFFFFFFFFFFFELL);
    v37 = v59;
    v38 = (v60 + 32);
    v39 = v7;
    v73 = v7;
    do
    {
      if (v7 == 1)
      {
        v44 = v63;
      }

      else
      {
        v44 = &v63[*v38];
      }

      v70 = v44;
      v71 = v36;
      v69 = v56;
      v72 = v35;
      v45 = *v35;
      v68 = *v36;
      v46 = *(v45 - 8);
      v47 = v46[8];
      v48 = MEMORY[0x1EEE9AC00](v34);
      v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
      v50 = v46[2];
      v52 = v50(v56 - v49, v65 + v51, v45, v48);
      v67 = v56;
      v40 = MEMORY[0x1EEE9AC00](v52);
      v50(v56 - v49, &v66[v41], v45, v40);
      v42 = v70;
      v64(v56 - v49, v56 - v49, v45, *(v68 + 8));
      v43 = v46[1];
      v43(v56 - v49, v45);
      v34 = (v43)(v56 - v49, v45);
      *v37++ = v42;
      v38 += 4;
      v36 = v71 + 1;
      v35 = v72 + 1;
      --v39;
      v7 = v73;
    }

    while (v39);
  }

  AnimatableValues.init(_:)(v59, v7, v61, v58);
  v53 = *(v57 + 8);
  v54 = v60;
  v53(v66, v60);
  return (v53)(v65, v54);
}

Swift::Void __swiftcall AnimatableValues.scale(by:)(Swift::Double by)
{
  v3 = v2;
  v4 = TupleTypeMetadata;
  v6 = *(TupleTypeMetadata + 16);
  if (v6 != 1)
  {
    (MEMORY[0x1EEE9AC00])();
    v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v9 = 0;
      v10 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_8;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_8;
      }

      v9 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v6 != v9)
      {
LABEL_8:
        v15 = v6 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v43[1] = v43;
  v21 = MEMORY[0x1EEE9AC00](v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = v43 - v23;
  v49 = v22;
  v44 = v24;
  v45 = v3;
  v25 = *(v24 + 16);
  v46 = v26;
  v27 = v25(v21);
  if (v6)
  {
    v28 = (*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v29 = (*(v4 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v30 = (v46 + 32);
    v31 = v6;
    v47 = v6;
    do
    {
      if (v6 == 1)
      {
        v32 = v48;
      }

      else
      {
        v32 = &v48[*v30];
      }

      v34 = *v28++;
      v33 = v34;
      v35 = *v29++;
      v36 = *(v33 - 8);
      v37 = MEMORY[0x1EEE9AC00](v27);
      v39 = v43 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v36 + 16))(v39, v49 + v40, v33, v37);
      VectorArithmetic.scaled(by:)(v33, v35, v32, by);
      v27 = (*(v36 + 8))(v39, v33);
      v30 += 4;
      --v31;
      v6 = v47;
    }

    while (v31);
  }

  v41 = v44;
  v42 = v46;
  (*(v44 + 40))(v45, v48, v46);
  (*(v41 + 8))(v49, v42);
}

double AnimatableValues.magnitudeSquared.getter(uint64_t TupleTypeMetadata)
{
  v1 = TupleTypeMetadata;
  v2 = *(TupleTypeMetadata + 16);
  if (v2 == 1)
  {
    v3 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v2)
    {
      v6 = 0;
      v7 = *(v1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v2 < 4)
      {
        goto LABEL_9;
      }

      if (&v5[-v7] < 0x20)
      {
        goto LABEL_9;
      }

      v6 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = (v7 + 16);
      v9 = v5 + 16;
      v10 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v11 = *v8;
        *(v9 - 1) = *(v8 - 1);
        *v9 = v11;
        v8 += 2;
        v9 += 2;
        v10 -= 4;
      }

      while (v10);
      if (v2 != v6)
      {
LABEL_9:
        v12 = v2 - v6;
        v13 = 8 * v6;
        v14 = &v5[8 * v6];
        v15 = (v7 + v13);
        do
        {
          v16 = *v15++;
          *v14 = v16;
          v14 += 8;
          --v12;
        }

        while (v12);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = TupleTypeMetadata;
  }

  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v36 = v19;
  v20 = *(v19 + 16);
  v38 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v20(v17);
  v37 = v3;
  if (v2)
  {
    v22 = (*(v1 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v23 = (*(v1 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v3 + 32);
    v25 = 0.0;
    v26 = v2;
    do
    {
      v29 = *v22;
      v30 = *v23;
      v31 = *(*v22 - 8);
      MEMORY[0x1EEE9AC00](v21);
      v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v26 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v24;
      }

      (*(v31 + 16))(v33, &v38[v27], v29);
      v28 = (*(v30 + 24))(v29, v30);
      v21 = (*(v31 + 8))(v33, v29);
      v25 = v25 + v28;
      v24 += 4;
      ++v23;
      ++v22;
      --v2;
    }

    while (v2);
  }

  else
  {
    v25 = 0.0;
  }

  (*(v36 + 8))(v38, v37);
  return v25;
}

uint64_t protocol witness for static AdditiveArithmetic.zero.getter in conformance AnimatableValues<Pack{repeat A}>@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v4 = 8 * v3;
  v33 = a2;
  if (v3 == 1)
  {
    TupleTypeMetadata = *(a1[3] & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v6 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v3)
    {
      v7 = 0;
      v8 = a1[3] & 0xFFFFFFFFFFFFFFFELL;
      if (v3 < 4)
      {
        goto LABEL_9;
      }

      if (&v6[-v8] < 0x20)
      {
        goto LABEL_9;
      }

      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v9 = (v8 + 16);
      v10 = v6 + 16;
      v11 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v12 = *v9;
        *(v10 - 1) = *(v9 - 1);
        *v10 = v12;
        v9 += 2;
        v10 += 2;
        v11 -= 4;
      }

      while (v11);
      if (v3 != v7)
      {
LABEL_9:
        v13 = v3 - v7;
        v14 = 8 * v7;
        v15 = &v6[8 * v7];
        v16 = (v8 + v14);
        do
        {
          v17 = *v16++;
          *v15 = v17;
          v15 += 8;
          --v13;
        }

        while (v13);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = &v32;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v34 = a1[4];
  v35 = v23;
  if (v3)
  {
    v24 = v35 & 0xFFFFFFFFFFFFFFFELL;
    v25 = v34 & 0xFFFFFFFFFFFFFFFELL;
    v26 = (v21 + 32);
    v27 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = v3;
    do
    {
      if (v3 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v26;
      }

      v24 += 8;
      v25 += 8;
      v30 = &v19[v29];
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      *v27++ = v30;
      v26 += 4;
      --v28;
    }

    while (v28);
  }

  return AnimatableValues.init(_:)(v22, v3, v35, v33);
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance AnimatableValues<Pack{repeat A}>(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, void))
{
  v76 = a5;
  v7 = TupleTypeMetadata;
  v8 = *(a3 + 16);
  v9 = 8 * v8;
  if (v8 == 1)
  {
    v10 = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v11 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8)
    {
      v12 = 0;
      v13 = *(a3 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v8 < 4)
      {
        goto LABEL_9;
      }

      if (&v11[-v13] < 0x20)
      {
        goto LABEL_9;
      }

      v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v14 = (v13 + 16);
      v15 = v11 + 16;
      v16 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v17 = *v14;
        *(v15 - 1) = *(v14 - 1);
        *v15 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v8 != v12)
      {
LABEL_9:
        v18 = v8 - v12;
        v19 = 8 * v12;
        v20 = &v11[8 * v12];
        v21 = (v13 + v19);
        do
        {
          v22 = *v21++;
          *v20 = v22;
          v20 += 8;
          --v18;
        }

        while (v18);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = TupleTypeMetadata;
  }

  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v25 = v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v62;
  MEMORY[0x1EEE9AC00](v26);
  v66 = v62;
  MEMORY[0x1EEE9AC00](v62 - v27);
  v75 = v62 - v28;
  v65 = v62;
  v70 = a3;
  v30 = *(a3 - 8);
  v29 = a3 - 8;
  v64 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v63 = v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62[1] = v62;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v73 = (v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v23 + 32);
  v77 = v36;
  v69 = v7;
  v35(v34);
  v68 = v23;
  v37 = *(v23 + 16);
  v78 = v25;
  v74 = v10;
  v38 = v37(v25, a2, v10);
  v39 = *(v29 + 32);
  v71 = *(v29 + 40);
  v72 = v39;
  if (v8)
  {
    v40 = (v72 & 0xFFFFFFFFFFFFFFFELL);
    v41 = (v71 & 0xFFFFFFFFFFFFFFFELL);
    v42 = v73;
    v43 = (v74 + 32);
    v44 = v8;
    v85 = v8;
    do
    {
      if (v8 == 1)
      {
        v49 = v75;
      }

      else
      {
        v49 = &v75[*v43];
      }

      v82 = v49;
      v83 = v41;
      v81 = v62;
      v84 = v40;
      v50 = *v40;
      v80 = *v41;
      v51 = *(v50 - 8);
      v52 = v51[8];
      v53 = MEMORY[0x1EEE9AC00](v38);
      v54 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
      v55 = v51[2];
      v57 = v55(v62 - v54, &v77[v56], v50, v53);
      v79 = v62;
      v45 = MEMORY[0x1EEE9AC00](v57);
      v55(v62 - v54, &v78[v46], v50, v45);
      v47 = v82;
      v76(v62 - v54, v62 - v54, v50, *(v80 + 8));
      v48 = v51[1];
      v48(v62 - v54, v50);
      v38 = (v48)(v62 - v54, v50);
      *v42++ = v47;
      v43 += 4;
      v41 = v83 + 1;
      v40 = v84 + 1;
      --v44;
      v8 = v85;
    }

    while (v44);
  }

  v58 = v63;
  AnimatableValues.init(_:)(v73, v8, v72, v63);
  v59 = *(v68 + 8);
  v60 = v74;
  v59(v78, v74);
  v59(v77, v60);
  return (*(v64 + 32))(v69, v58, v70);
}

uint64_t initializeBufferWithCopyOfBuffer for AnimatableValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
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

  return (**(TupleTypeMetadata - 8))(a1, v3);
}

uint64_t destroy for AnimatableValues(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v3)
    {
      v7 = 0;
      v8 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v3 < 4)
      {
        goto LABEL_9;
      }

      if (&v6[-v8] < 0x20)
      {
        goto LABEL_9;
      }

      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v9 = (v8 + 16);
      v10 = v6 + 16;
      v11 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v12 = *v9;
        *(v10 - 1) = *(v9 - 1);
        *v10 = v12;
        v9 += 2;
        v10 += 2;
        v11 -= 4;
      }

      while (v11);
      if (v3 != v7)
      {
LABEL_9:
        v13 = v3 - v7;
        v14 = 8 * v7;
        v15 = &v6[8 * v7];
        v16 = (v8 + v14);
        do
        {
          v17 = *v16++;
          *v15 = v17;
          v15 += 8;
          --v13;
        }

        while (v13);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  return (*(*(TupleTypeMetadata - 8) + 8))();
}

uint64_t initializeWithCopy for AnimatableValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
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
  }

  (*(*(TupleTypeMetadata - 8) + 16))(a1, v3);
  return a1;
}

uint64_t assignWithCopy for AnimatableValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
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
  }

  (*(*(TupleTypeMetadata - 8) + 24))(a1, v3);
  return a1;
}

uint64_t initializeWithTake for AnimatableValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
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
  }

  (*(*(TupleTypeMetadata - 8) + 32))(a1, v3);
  return a1;
}

uint64_t assignWithTake for AnimatableValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
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
  }

  (*(*(TupleTypeMetadata - 8) + 40))(a1, v3);
  return a1;
}

uint64_t AttributeCountTestInfo.merge(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v9);

  *v1 = v9;
  v6 = swift_isUniquelyReferenced_nonNull_native();
  v9 = v1[1];
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v2, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v6, &v9);

  v1[1] = v9;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v9 = v1[2];
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v4, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v7, &v9);

  v1[2] = v9;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t specialized static AttributeCountTestInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_s6UInt32VTt1g5(*a1, *a2) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_s6UInt32VTt1g5(v2, v5) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_s6UInt32VTt1g5(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_s6UInt32VTt1g5(v3, v6);
}

uint64_t destroy for AttributeCountTestInfo()
{
}

void *initializeWithCopy for AttributeCountTestInfo(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for AttributeCountTestInfo(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

_OWORD *assignWithTake for AttributeCountTestInfo(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v45 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v36 = v6;
  while (v9)
  {
    v39 = a4;
    v16 = v11;
LABEL_15:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    LODWORD(v18) = *(*(a1 + 56) + 4 * v18);
    v43[0] = *v19;
    v43[1] = v20;
    v44 = v18;

    a2(&v40, v43);

    v21 = v40;
    v22 = v41;
    v23 = v42;
    v24 = *v45;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_26;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v39 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v39 & 1);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_29;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v45;
    if (v30)
    {
      v34 = *(v33[7] + 4 * v26);

      if (__CFADD__(v34, v23))
      {
        goto LABEL_27;
      }

      *(v33[7] + 4 * v26) = v34 + v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v12 = (v33[6] + 16 * v26);
      *v12 = v21;
      v12[1] = v22;
      *(v33[7] + 4 * v26) = v23;
      v13 = v33[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_28;
      }

      v33[2] = v15;
    }

    a4 = 1;
    v11 = v16;
    v6 = v36;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      outlined consume of Set<EventID>.Iterator._Variant();
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v39 = a4;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v45 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v36 = v6;
  while (v9)
  {
    v39 = a4;
    v16 = v11;
LABEL_15:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    LODWORD(v18) = *(*(a1 + 56) + 4 * v18);
    v43[0] = *v19;
    v43[1] = v20;
    v44 = v18;

    a2(&v40, v43);

    v21 = v40;
    v22 = v41;
    v23 = v42;
    v24 = *v45;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_26;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v39 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v39 & 1);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_29;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v45;
    if (v30)
    {
      v34 = *(v33[7] + 4 * v26);

      if (__CFADD__(v23, v34))
      {
        goto LABEL_27;
      }

      *(v33[7] + 4 * v26) = v23 + v34;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v12 = (v33[6] + 16 * v26);
      *v12 = v21;
      v12[1] = v22;
      *(v33[7] + 4 * v26) = v23;
      v13 = v33[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_28;
      }

      v33[2] = v15;
    }

    a4 = 1;
    v11 = v16;
    v6 = v36;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      outlined consume of Set<EventID>.Iterator._Variant();
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v39 = a4;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t static GestureStateProtocol.gesture<A, B>(content:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for StateContainerGesture();
  swift_getWitnessTable();
  Gesture.modifier<A>(_:)(v8, a3, v6, a4);
}

uint64_t StateContainerGesture.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t StateContainerGesture.body.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StateContainerGesture.body.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static StateContainerGesture._makeGesture(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v36 = a7;
  v37 = a6;
  v10 = a5;
  v38 = a4;
  *&v41 = a3;
  v40 = a9;
  v57 = *MEMORY[0x1E69E9840];
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v48 = v16;
  *(&v48 + 1) = v17;
  *&v49 = v18;
  *(&v49 + 1) = v19;
  v20 = type metadata accessor for StateContainerPhase();
  v39 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  v23 = *a1;
  v24 = a2[5];
  v52 = a2[4];
  v53 = v24;
  v54 = a2[6];
  v25 = a2[1];
  v48 = *a2;
  v49 = v25;
  v26 = a2[3];
  v50 = a2[2];
  v51 = v26;
  v28 = *(a2 + 116);
  v55 = *(a2 + 28);
  v27 = v55;
  v56 = v28;
  (v41)(v42, &v48);
  v29 = v42[1];
  LODWORD(v38) = v43;
  *&v30 = v42[0];
  v41 = v30;
  (*(a8 + 8))(v10, a8);
  *v22 = v23;
  *(v22 + 1) = v41;
  *(v22 + 2) = v27;
  *&v48 = v10;
  *(&v48 + 1) = v36;
  *&v49 = v37;
  *(&v49 + 1) = a8;
  v31 = type metadata accessor for StateContainerPhase();
  (*(v13 + 32))(&v22[*(v31 + 60)], v15, v10);
  *&v22[*(v31 + 64)] = 0;
  v45 = type metadata accessor for GesturePhase();
  v46 = v20;
  WitnessTable = swift_getWitnessTable();
  v32 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v22, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v44, v20, MEMORY[0x1E69E73E0], v32, MEMORY[0x1E69E7410], v33);
  (*(v39 + 8))(v22, v20);
  LODWORD(v10) = v48;
  *&v48 = v41;
  *(&v48 + 1) = v29;
  LODWORD(v49) = v38;
  type metadata accessor for _GestureOutputs();
  _GestureOutputs.withPhase<A>(_:)(v10, v40);
}

uint64_t StateContainerPhase.modifier.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for StateContainerGesture();
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t StateContainerPhase.childPhase.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t StateContainerPhase.resetPhase()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v9 + 40) + 8))(v4, v6);
  return (*(v5 + 40))(v2 + *(a1 + 60), v8, v4);
}

uint64_t StateContainerPhase.updateValue()(uint64_t a1)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for GesturePhase();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-1] - v5;
  v7 = type metadata accessor for GesturePhase();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-1] - v9;
  swift_getWitnessTable();
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    StateContainerPhase.modifier.getter(v16);
    v12 = v16[0];
    StateContainerPhase.childPhase.getter(v6);
    v12(v1 + *(a1 + 60), v6);

    v13 = (*(v4 + 8))(v6, v3);
    MEMORY[0x1EEE9AC00](v13);
    *(&v15 - 2) = a1;
    *(&v15 - 1) = swift_getWitnessTable();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #1 in StatefulRule.value.setter, (&v15 - 4), v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v14);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance StateContainerPhase<A, B, C>@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GesturePhase();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t type metadata completion function for StateContainerPhase()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for StateContainerPhase(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 3;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((v6 + ((v5 + 12) & ~v5)) & 0xFFFFFFFFFFFFFFFCLL) + 4 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xFC ^ 0x1FC) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v11 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v10 = *v11;
    v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v12 = *v13;
    v14 = (v12 + v5 + 4) & ~v5;
    v15 = (v13 + v5 + 4) & ~v5;
    (*(v4 + 16))(v14, v15);
    *((v6 + v14) & 0xFFFFFFFFFFFFFFFCLL) = *((v6 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  }

  return v3;
}

_DWORD *initializeWithCopy for StateContainerPhase(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 16))(v11, v12);
  *((*(v9 + 48) + 3 + v11) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 48) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

_DWORD *assignWithCopy for StateContainerPhase(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 24))(v11, v12);
  *((*(v9 + 40) + 3 + v11) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 40) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

_DWORD *initializeWithTake for StateContainerPhase(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 32))(v11, v12);
  *((*(v9 + 32) + 3 + v11) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 32) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

_DWORD *assignWithTake for StateContainerPhase(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 40))(v11, v12);
  *((*(v9 + 24) + 3 + v11) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 24) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for StateContainerPhase(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
  }

  v7 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 12) & ~v6) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v8 = a2 - v5;
  v9 = v7 & 0xFFFFFFFC;
  if ((v7 & 0xFFFFFFFC) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v8 + 1;
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
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v7)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
    }

    return 0;
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return v5 + (v9 | v14) + 1;
}

unsigned int *storeEnumTagSinglePayload for StateContainerPhase(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((*(v5 + 64) + ((v7 + 12) & ~v7) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v6 >= a3)
  {
    v12 = 0;
    v13 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = a3 - v6;
    if (((*(v5 + 64) + ((v7 + 12) & ~v7) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
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

    v13 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v8) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v8) = 0;
      }

      else if (v12)
      {
        *(result + v8) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v17 = *(v5 + 56);
      v18 = (((((result + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v7 + 4) & ~v7;

      return v17(v18);
    }
  }

  if (((*(v5 + 64) + ((v7 + 12) & ~v7) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (((*(v5 + 64) + ((v7 + 12) & ~v7) + 3) & 0xFFFFFFFC) != 0xFFFFFFFC)
  {
    v15 = ~v6 + a2;
    v16 = result;
    bzero(result, ((*(v5 + 64) + ((v7 + 12) & ~v7) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    result = v16;
    *v16 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(result + v8) = v14;
    }

    else
    {
      *(result + v8) = v14;
    }
  }

  else if (v12)
  {
    *(result + v8) = v14;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for StateContainerPhase<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t specialized StateContainerPhase.description.getter()
{
  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  return 0x86E2206574617453;
}

uint64_t AccessibilityDataSeriesConfiguration.ValueDescription.description.getter()
{
  v1 = *v0;
  outlined copy of Text.Storage(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

uint64_t AccessibilityDataSeriesConfiguration.ValueDescription.description.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));

  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.ValueDescription.init(description:effectiveValueRange:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  *(a5 + 32) = a6;
  *(a5 + 40) = a7;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.title.getter()
{
  v1 = *v0;
  outlined copy of Text?(*v0, v0[1], v0[2], v0[3]);
  return v1;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.title.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = outlined consume of Text?(*v4, v4[1], v4[2], v4[3]);
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.unitLabel.getter()
{
  v1 = v0[4];
  outlined copy of Text?(v1, v0[5], v0[6], v0[7]);
  return v1;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.unitLabel.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = outlined consume of Text?(v4[4], v4[5], v4[6], v4[7]);
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.categoryLabels.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.minimumValue.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.maximumValue.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.gridlinePositions.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.values.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.valueDescriptions.setter(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

__n128 AccessibilityDataSeriesConfiguration.AxisConfiguration.init(title:unitLabel:categoryLabels:minimumValue:maximumValue:gridlinePositions:values:valueDescriptions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, __n128 a15, uint64_t a16)
{
  result = a15;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12 & 1;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14 & 1;
  *(a9 + 104) = a15;
  *(a9 + 120) = a16;
  return result;
}

SwiftUI::AccessibilityDataSeriesConfiguration::DataSeriesType_optional __swiftcall AccessibilityDataSeriesConfiguration.DataSeriesType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t AccessibilityDataSeriesConfiguration.name.getter()
{
  v1 = *v0;
  outlined copy of Text.Storage(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

uint64_t AccessibilityDataSeriesConfiguration.name.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));

  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.sonificationDuration.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.xAxisConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 136);
  v14 = *(v1 + 120);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 168);
  v16 = *(v1 + 152);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 72);
  v11[0] = *(v1 + 56);
  v11[1] = v6;
  v8 = *(v1 + 104);
  v12 = *(v1 + 88);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return outlined init with copy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v11, &v10, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
}

__n128 AccessibilityDataSeriesConfiguration.xAxisConfiguration.setter(uint64_t a1)
{
  v3 = *(v1 + 136);
  v12[4] = *(v1 + 120);
  v12[5] = v3;
  v4 = *(v1 + 168);
  v12[6] = *(v1 + 152);
  v12[7] = v4;
  v5 = *(v1 + 72);
  v12[0] = *(v1 + 56);
  v12[1] = v5;
  v6 = *(v1 + 104);
  v12[2] = *(v1 + 88);
  v12[3] = v6;
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v12, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
  v7 = *(a1 + 80);
  *(v1 + 120) = *(a1 + 64);
  *(v1 + 136) = v7;
  v8 = *(a1 + 112);
  *(v1 + 152) = *(a1 + 96);
  *(v1 + 168) = v8;
  v9 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  *(v1 + 88) = result;
  *(v1 + 104) = v11;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.yAxisConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 248);
  v3 = *(v1 + 200);
  v11[0] = *(v1 + 184);
  v11[1] = v3;
  v5 = *(v1 + 232);
  v12 = *(v1 + 216);
  v4 = v12;
  v13 = v5;
  v6 = *(v1 + 264);
  v7 = *(v1 + 280);
  v14 = v2;
  v15 = v6;
  v8 = *(v1 + 296);
  v16 = v7;
  v17 = v8;
  *a1 = v11[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v2;
  a1[5] = v6;
  a1[6] = v7;
  a1[7] = v8;
  return outlined init with copy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v11, &v10, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
}

__n128 AccessibilityDataSeriesConfiguration.yAxisConfiguration.setter(uint64_t a1)
{
  v3 = *(v1 + 248);
  v4 = *(v1 + 200);
  v15[0] = *(v1 + 184);
  v15[1] = v4;
  v5 = *(v1 + 232);
  v15[2] = *(v1 + 216);
  v15[3] = v5;
  v6 = *(v1 + 264);
  v7 = *(v1 + 280);
  v15[4] = v3;
  v15[5] = v6;
  v8 = *(v1 + 296);
  v15[6] = v7;
  v15[7] = v8;
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v15, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
  v9 = *(a1 + 80);
  *(v1 + 248) = *(a1 + 64);
  v10 = *(a1 + 96);
  v11 = *(a1 + 112);
  *(v1 + 264) = v9;
  *(v1 + 280) = v10;
  *(v1 + 296) = v11;
  v12 = *(a1 + 16);
  *(v1 + 184) = *a1;
  *(v1 + 200) = v12;
  result = *(a1 + 32);
  v14 = *(a1 + 48);
  *(v1 + 216) = result;
  *(v1 + 232) = v14;
  return result;
}

__n128 AccessibilityDataSeriesConfiguration.init(name:type:supportsSonification:sonificationDuration:includesTrendlineInSonification:supportsSummarization:xAxisConfiguration:yAxisConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, _OWORD *a12, uint64_t a13)
{
  v18 = *a5;
  _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(&v48);
  v19 = v53;
  *(a9 + 248) = v52;
  v20 = v52;
  v21 = v53;
  v23 = v54;
  v22 = v55;
  *(a9 + 264) = v19;
  *(a9 + 280) = v23;
  v24 = v54;
  *(a9 + 296) = v55;
  v25 = v49;
  *(a9 + 184) = v48;
  v26 = v48;
  v27 = v49;
  *(a9 + 200) = v25;
  v28 = v51;
  *(a9 + 216) = v50;
  v29 = v50;
  *(a9 + 232) = v51;
  v56[4] = v20;
  v56[5] = v21;
  v56[6] = v24;
  v56[7] = v22;
  v56[0] = v26;
  v56[1] = v27;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = v18;
  *(a9 + 33) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  *(a9 + 49) = a10;
  *(a9 + 50) = a11;
  v56[2] = v29;
  v56[3] = v28;
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v56, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
  v30 = a12[5];
  *(a9 + 120) = a12[4];
  *(a9 + 136) = v30;
  v31 = a12[7];
  *(a9 + 152) = a12[6];
  *(a9 + 168) = v31;
  v32 = a12[1];
  *(a9 + 56) = *a12;
  *(a9 + 72) = v32;
  v33 = a12[3];
  *(a9 + 88) = a12[2];
  *(a9 + 104) = v33;
  v34 = *(a9 + 264);
  v35 = *(a9 + 280);
  v57[4] = *(a9 + 248);
  v57[5] = v34;
  v36 = *(a9 + 296);
  v57[6] = v35;
  v57[7] = v36;
  v37 = *(a9 + 200);
  v57[0] = *(a9 + 184);
  v57[1] = v37;
  v38 = *(a9 + 232);
  v57[2] = *(a9 + 216);
  v57[3] = v38;
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v57, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
  v39 = *(a13 + 80);
  *(a9 + 248) = *(a13 + 64);
  v40 = *(a13 + 96);
  v41 = *(a13 + 112);
  *(a9 + 264) = v39;
  *(a9 + 280) = v40;
  *(a9 + 296) = v41;
  v42 = *(a13 + 16);
  *(a9 + 184) = *a13;
  *(a9 + 200) = v42;
  result = *(a13 + 32);
  v44 = *(a13 + 48);
  *(a9 + 216) = result;
  *(a9 + 232) = v44;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType()
{
  result = lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType;
  if (!lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType;
  if (!lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType;
  if (!lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType;
  if (!lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType);
  }

  return result;
}

uint64_t destroy for AccessibilityDataSeriesConfiguration(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  if (*(a1 + 120))
  {
    if (*(a1 + 80))
    {
      outlined consume of Text.Storage(*(a1 + 56), *(a1 + 64), *(a1 + 72));
    }

    if (*(a1 + 112))
    {
      outlined consume of Text.Storage(*(a1 + 88), *(a1 + 96), *(a1 + 104));
    }
  }

  if (*(a1 + 248))
  {
    if (*(a1 + 208))
    {
      outlined consume of Text.Storage(*(a1 + 184), *(a1 + 192), *(a1 + 200));
    }

    if (*(a1 + 240))
    {
      outlined consume of Text.Storage(*(a1 + 216), *(a1 + 224), *(a1 + 232));
    }
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityDataSeriesConfiguration(uint64_t a1, uint64_t a2)
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
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  v7 = *(a2 + 120);

  if (!v7)
  {
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    goto LABEL_9;
  }

  v8 = *(a2 + 80);
  if (!v8)
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    v12 = *(a2 + 112);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_7:
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    goto LABEL_8;
  }

  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  outlined copy of Text.Storage(v9, v10, v11);
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = v8;

  v12 = *(a2 + 112);
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  outlined copy of Text.Storage(v13, v14, v15);
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  *(a1 + 112) = v12;

LABEL_8:
  v16 = *(a2 + 128);
  *(a1 + 120) = v7;
  *(a1 + 128) = v16;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  v17 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v17;
  *(a1 + 176) = *(a2 + 176);

LABEL_9:
  v18 = (a1 + 184);
  v19 = (a2 + 184);
  v20 = *(a2 + 248);
  if (v20)
  {
    v21 = *(a2 + 208);
    if (v21)
    {
      v22 = *(a2 + 184);
      v23 = *(a2 + 192);
      v24 = *(a2 + 200);
      outlined copy of Text.Storage(v22, v23, v24);
      *(a1 + 184) = v22;
      *(a1 + 192) = v23;
      *(a1 + 200) = v24;
      *(a1 + 208) = v21;

      v25 = *(a2 + 240);
      if (v25)
      {
LABEL_12:
        v26 = *(a2 + 216);
        v27 = *(a2 + 224);
        v28 = *(a2 + 232);
        outlined copy of Text.Storage(v26, v27, v28);
        *(a1 + 216) = v26;
        *(a1 + 224) = v27;
        *(a1 + 232) = v28;
        *(a1 + 240) = v25;

LABEL_16:
        v34 = *(a2 + 256);
        *(a1 + 248) = v20;
        *(a1 + 256) = v34;
        *(a1 + 264) = *(a2 + 264);
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 280) = *(a2 + 280);
        v35 = *(a2 + 296);
        *(a1 + 288) = *(a2 + 288);
        *(a1 + 296) = v35;
        *(a1 + 304) = *(a2 + 304);

        return a1;
      }
    }

    else
    {
      v33 = *(a2 + 200);
      *v18 = *v19;
      *(a1 + 200) = v33;
      v25 = *(a2 + 240);
      if (v25)
      {
        goto LABEL_12;
      }
    }

    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    goto LABEL_16;
  }

  v29 = *(a2 + 264);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = v29;
  v30 = *(a2 + 296);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = v30;
  v31 = *(a2 + 200);
  *v18 = *v19;
  *(a1 + 200) = v31;
  v32 = *(a2 + 232);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = v32;
  return a1;
}

uint64_t assignWithCopy for AccessibilityDataSeriesConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v10 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v10;
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  v11 = *(a2 + 120);
  if (!*(a1 + 120))
  {
    if (!v11)
    {
      v34 = *(a2 + 56);
      v35 = *(a2 + 72);
      v36 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 88) = v36;
      *(a1 + 72) = v35;
      *(a1 + 56) = v34;
      v37 = *(a2 + 120);
      v38 = *(a2 + 136);
      v39 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v39;
      *(a1 + 136) = v38;
      *(a1 + 120) = v37;
      goto LABEL_27;
    }

    if (*(a2 + 80))
    {
      v19 = *(a2 + 56);
      v20 = *(a2 + 64);
      v21 = *(a2 + 72);
      outlined copy of Text.Storage(v19, v20, v21);
      *(a1 + 56) = v19;
      *(a1 + 64) = v20;
      *(a1 + 72) = v21;
      *(a1 + 80) = *(a2 + 80);

      if (*(a2 + 112))
      {
LABEL_9:
        v22 = *(a2 + 88);
        v23 = *(a2 + 96);
        v24 = *(a2 + 104);
        outlined copy of Text.Storage(v22, v23, v24);
        *(a1 + 88) = v22;
        *(a1 + 96) = v23;
        *(a1 + 104) = v24;
        *(a1 + 112) = *(a2 + 112);

LABEL_17:
        *(a1 + 120) = *(a2 + 120);
        v43 = *(a2 + 128);
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 128) = v43;
        v44 = *(a2 + 144);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 144) = v44;
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 176) = *(a2 + 176);

        goto LABEL_27;
      }
    }

    else
    {
      v41 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v41;
      if (*(a2 + 112))
      {
        goto LABEL_9;
      }
    }

    v42 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v42;
    goto LABEL_17;
  }

  if (v11)
  {
    v12 = *(a2 + 80);
    if (*(a1 + 80))
    {
      if (v12)
      {
        v13 = *(a2 + 56);
        v14 = *(a2 + 64);
        v15 = *(a2 + 72);
        outlined copy of Text.Storage(v13, v14, v15);
        v16 = *(a1 + 56);
        v17 = *(a1 + 64);
        v18 = *(a1 + 72);
        *(a1 + 56) = v13;
        *(a1 + 64) = v14;
        *(a1 + 72) = v15;
        outlined consume of Text.Storage(v16, v17, v18);
        *(a1 + 80) = *(a2 + 80);
      }

      else
      {
        outlined destroy of Text(a1 + 56);
        v40 = *(a2 + 72);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 72) = v40;
      }
    }

    else if (v12)
    {
      v31 = *(a2 + 56);
      v32 = *(a2 + 64);
      v33 = *(a2 + 72);
      outlined copy of Text.Storage(v31, v32, v33);
      *(a1 + 56) = v31;
      *(a1 + 64) = v32;
      *(a1 + 72) = v33;
      *(a1 + 80) = *(a2 + 80);
    }

    else
    {
      v45 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v45;
    }

    v46 = *(a2 + 112);
    if (*(a1 + 112))
    {
      if (v46)
      {
        v47 = *(a2 + 88);
        v48 = *(a2 + 96);
        v49 = *(a2 + 104);
        outlined copy of Text.Storage(v47, v48, v49);
        v50 = *(a1 + 88);
        v51 = *(a1 + 96);
        v52 = *(a1 + 104);
        *(a1 + 88) = v47;
        *(a1 + 96) = v48;
        *(a1 + 104) = v49;
        outlined consume of Text.Storage(v50, v51, v52);
        *(a1 + 112) = *(a2 + 112);
      }

      else
      {
        outlined destroy of Text(a1 + 88);
        v56 = *(a2 + 104);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = v56;
      }
    }

    else if (v46)
    {
      v53 = *(a2 + 88);
      v54 = *(a2 + 96);
      v55 = *(a2 + 104);
      outlined copy of Text.Storage(v53, v54, v55);
      *(a1 + 88) = v53;
      *(a1 + 96) = v54;
      *(a1 + 104) = v55;
      *(a1 + 112) = *(a2 + 112);
    }

    else
    {
      v57 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 88) = v57;
    }

    *(a1 + 120) = *(a2 + 120);

    v58 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v58;
    LOBYTE(v58) = *(a2 + 152);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = v58;
    *(a1 + 160) = *(a2 + 160);

    *(a1 + 168) = *(a2 + 168);

    *(a1 + 176) = *(a2 + 176);
  }

  else
  {
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 56);
    v25 = *(a2 + 72);
    v26 = *(a2 + 88);
    v27 = *(a2 + 104);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 104) = v27;
    *(a1 + 88) = v26;
    *(a1 + 72) = v25;
    v28 = *(a2 + 136);
    v29 = *(a2 + 152);
    v30 = *(a2 + 168);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 168) = v30;
    *(a1 + 152) = v29;
    *(a1 + 136) = v28;
  }

LABEL_27:
  v59 = (a1 + 184);
  v60 = (a2 + 184);
  v61 = *(a2 + 248);
  if (!*(a1 + 248))
  {
    if (!v61)
    {
      v84 = *v60;
      v85 = *(a2 + 200);
      v86 = *(a2 + 232);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = v86;
      *v59 = v84;
      *(a1 + 200) = v85;
      v87 = *(a2 + 248);
      v88 = *(a2 + 264);
      v89 = *(a2 + 296);
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 296) = v89;
      *(a1 + 248) = v87;
      *(a1 + 264) = v88;
      return a1;
    }

    if (*(a2 + 208))
    {
      v69 = *(a2 + 184);
      v70 = *(a2 + 192);
      v71 = *(a2 + 200);
      outlined copy of Text.Storage(v69, v70, v71);
      *(a1 + 184) = v69;
      *(a1 + 192) = v70;
      *(a1 + 200) = v71;
      *(a1 + 208) = *(a2 + 208);

      if (*(a2 + 240))
      {
LABEL_35:
        v72 = *(a2 + 216);
        v73 = *(a2 + 224);
        v74 = *(a2 + 232);
        outlined copy of Text.Storage(v72, v73, v74);
        *(a1 + 216) = v72;
        *(a1 + 224) = v73;
        *(a1 + 232) = v74;
        *(a1 + 240) = *(a2 + 240);

LABEL_43:
        *(a1 + 248) = *(a2 + 248);
        v93 = *(a2 + 256);
        *(a1 + 264) = *(a2 + 264);
        *(a1 + 256) = v93;
        v94 = *(a2 + 272);
        *(a1 + 280) = *(a2 + 280);
        *(a1 + 272) = v94;
        *(a1 + 288) = *(a2 + 288);
        *(a1 + 296) = *(a2 + 296);
        *(a1 + 304) = *(a2 + 304);

        return a1;
      }
    }

    else
    {
      v91 = *(a2 + 200);
      *v59 = *v60;
      *(a1 + 200) = v91;
      if (*(a2 + 240))
      {
        goto LABEL_35;
      }
    }

    v92 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v92;
    goto LABEL_43;
  }

  if (v61)
  {
    v62 = *(a2 + 208);
    if (*(a1 + 208))
    {
      if (v62)
      {
        v63 = *(a2 + 184);
        v64 = *(a2 + 192);
        v65 = *(a2 + 200);
        outlined copy of Text.Storage(v63, v64, v65);
        v66 = *(a1 + 184);
        v67 = *(a1 + 192);
        v68 = *(a1 + 200);
        *(a1 + 184) = v63;
        *(a1 + 192) = v64;
        *(a1 + 200) = v65;
        outlined consume of Text.Storage(v66, v67, v68);
        *(a1 + 208) = *(a2 + 208);
      }

      else
      {
        outlined destroy of Text(a1 + 184);
        v90 = *(a2 + 200);
        *v59 = *v60;
        *(a1 + 200) = v90;
      }
    }

    else if (v62)
    {
      v81 = *(a2 + 184);
      v82 = *(a2 + 192);
      v83 = *(a2 + 200);
      outlined copy of Text.Storage(v81, v82, v83);
      *(a1 + 184) = v81;
      *(a1 + 192) = v82;
      *(a1 + 200) = v83;
      *(a1 + 208) = *(a2 + 208);
    }

    else
    {
      v95 = *(a2 + 200);
      *v59 = *v60;
      *(a1 + 200) = v95;
    }

    v96 = *(a2 + 240);
    if (*(a1 + 240))
    {
      if (v96)
      {
        v97 = *(a2 + 216);
        v98 = *(a2 + 224);
        v99 = *(a2 + 232);
        outlined copy of Text.Storage(v97, v98, v99);
        v100 = *(a1 + 216);
        v101 = *(a1 + 224);
        v102 = *(a1 + 232);
        *(a1 + 216) = v97;
        *(a1 + 224) = v98;
        *(a1 + 232) = v99;
        outlined consume of Text.Storage(v100, v101, v102);
        *(a1 + 240) = *(a2 + 240);
      }

      else
      {
        outlined destroy of Text(a1 + 216);
        v106 = *(a2 + 232);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 232) = v106;
      }
    }

    else if (v96)
    {
      v103 = *(a2 + 216);
      v104 = *(a2 + 224);
      v105 = *(a2 + 232);
      outlined copy of Text.Storage(v103, v104, v105);
      *(a1 + 216) = v103;
      *(a1 + 224) = v104;
      *(a1 + 232) = v105;
      *(a1 + 240) = *(a2 + 240);
    }

    else
    {
      v107 = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 216) = v107;
    }

    *(a1 + 248) = *(a2 + 248);

    v108 = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 256) = v108;
    LOBYTE(v108) = *(a2 + 280);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = v108;
    *(a1 + 288) = *(a2 + 288);

    *(a1 + 296) = *(a2 + 296);

    *(a1 + 304) = *(a2 + 304);
  }

  else
  {
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 184);
    v75 = *(a2 + 232);
    v77 = *v60;
    v76 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = v75;
    *v59 = v77;
    *(a1 + 200) = v76;
    v78 = *(a2 + 296);
    v80 = *(a2 + 248);
    v79 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 296) = v78;
    *(a1 + 248) = v80;
    *(a1 + 264) = v79;
  }

  return a1;
}

uint64_t assignWithTake for AccessibilityDataSeriesConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  if (!*(a1 + 120))
  {
    goto LABEL_8;
  }

  if (!*(a2 + 120))
  {
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 56);
LABEL_8:
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    goto LABEL_16;
  }

  if (*(a1 + 80))
  {
    if (*(a2 + 80))
    {
      v8 = *(a2 + 72);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v8;
      outlined consume of Text.Storage(v9, v10, v11);
      *(a1 + 80) = *(a2 + 80);

      if (!*(a1 + 112))
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    outlined destroy of Text(a1 + 56);
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  if (!*(a1 + 112))
  {
LABEL_14:
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    goto LABEL_15;
  }

LABEL_11:
  if (!*(a2 + 112))
  {
    outlined destroy of Text(a1 + 88);
    goto LABEL_14;
  }

  v12 = *(a2 + 104);
  v13 = *(a1 + 88);
  v14 = *(a1 + 96);
  v15 = *(a1 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v12;
  outlined consume of Text.Storage(v13, v14, v15);
  *(a1 + 112) = *(a2 + 112);

LABEL_15:
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);

LABEL_16:
  v16 = (a1 + 184);
  v17 = (a2 + 184);
  if (*(a1 + 248))
  {
    if (*(a2 + 248))
    {
      if (*(a1 + 208))
      {
        if (*(a2 + 208))
        {
          v18 = *(a2 + 200);
          v19 = *(a1 + 184);
          v20 = *(a1 + 192);
          v21 = *(a1 + 200);
          *(a1 + 184) = *(a2 + 184);
          *(a1 + 200) = v18;
          outlined consume of Text.Storage(v19, v20, v21);
          *(a1 + 208) = *(a2 + 208);

          if (!*(a1 + 240))
          {
            goto LABEL_29;
          }

LABEL_26:
          if (*(a2 + 240))
          {
            v27 = *(a2 + 232);
            v28 = *(a1 + 216);
            v29 = *(a1 + 224);
            v30 = *(a1 + 232);
            *(a1 + 216) = *(a2 + 216);
            *(a1 + 232) = v27;
            outlined consume of Text.Storage(v28, v29, v30);
            *(a1 + 240) = *(a2 + 240);

LABEL_30:
            *(a1 + 248) = *(a2 + 248);

            *(a1 + 256) = *(a2 + 256);
            *(a1 + 264) = *(a2 + 264);
            *(a1 + 272) = *(a2 + 272);
            *(a1 + 280) = *(a2 + 280);
            *(a1 + 288) = *(a2 + 288);

            *(a1 + 296) = *(a2 + 296);

            *(a1 + 304) = *(a2 + 304);

            return a1;
          }

          outlined destroy of Text(a1 + 216);
LABEL_29:
          *(a1 + 216) = *(a2 + 216);
          *(a1 + 232) = *(a2 + 232);
          goto LABEL_30;
        }

        outlined destroy of Text(a1 + 184);
      }

      v26 = *(a2 + 200);
      *v16 = *v17;
      *(a1 + 200) = v26;
      if (!*(a1 + 240))
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 184);
  }

  v22 = *(a2 + 264);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = v22;
  v23 = *(a2 + 296);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = v23;
  v24 = *(a2 + 200);
  *v16 = *v17;
  *(a1 + 200) = v24;
  v25 = *(a2 + 232);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = v25;
  return a1;
}

uint64_t initializeWithCopy for AccessibilityDataSeriesConfiguration.ValueDescription(uint64_t a1, uint64_t a2)
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

  return a1;
}

uint64_t assignWithCopy for AccessibilityDataSeriesConfiguration.ValueDescription(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for AccessibilityDataSeriesConfiguration.ValueDescription(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityDataSeriesConfiguration.ValueDescription(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityDataSeriesConfiguration.ValueDescription(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for AccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1)
{
  if (*(a1 + 24))
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  if (*(a1 + 56))
  {
    outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  }
}

uint64_t initializeWithCopy for AccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, uint64_t *a2)
{
  v4 = a2[3];
  if (!v4)
  {
    v12 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v12;
    v8 = a2[7];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = *(a2 + 3);
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = v13;
    goto LABEL_6;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v6, v7);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v4;

  v8 = a2[7];
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = a2[4];
  v10 = a2[5];
  v11 = *(a2 + 48);
  outlined copy of Text.Storage(v9, v10, v11);
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v8;

LABEL_6:
  v14 = a2[9];
  *(a1 + 64) = a2[8];
  *(a1 + 72) = v14;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = a2[11];
  *(a1 + 96) = *(a2 + 96);
  v15 = a2[14];
  *(a1 + 104) = a2[13];
  *(a1 + 112) = v15;
  *(a1 + 120) = a2[15];

  return a1;
}

uint64_t assignWithCopy for AccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v6, v7);
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Text(a1);
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
    }
  }

  else if (v4)
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v12, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
  }

  v16 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v16)
    {
      v17 = *(a2 + 32);
      v18 = *(a2 + 40);
      v19 = *(a2 + 48);
      outlined copy of Text.Storage(v17, v18, v19);
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      *(a1 + 32) = v17;
      *(a1 + 40) = v18;
      *(a1 + 48) = v19;
      outlined consume of Text.Storage(v20, v21, v22);
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      outlined destroy of Text(a1 + 32);
      v26 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v26;
    }
  }

  else if (v16)
  {
    v23 = *(a2 + 32);
    v24 = *(a2 + 40);
    v25 = *(a2 + 48);
    outlined copy of Text.Storage(v23, v24, v25);
    *(a1 + 32) = v23;
    *(a1 + 40) = v24;
    *(a1 + 48) = v25;
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    v27 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v27;
  }

  *(a1 + 64) = *(a2 + 64);

  v28 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v28;
  LOBYTE(v28) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v28;
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  return a1;
}