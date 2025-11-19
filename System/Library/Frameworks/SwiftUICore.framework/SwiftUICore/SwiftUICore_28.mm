uint64_t destroy for _ShapeStyle_InterpolatorGroup.Layer(uint64_t a1)
{
  outlined consume of _ShapeStyle_LayerID(*a1, *(a1 + 8), *(a1 + 16));
  if (*(a1 + 136))
  {
    outlined consume of _ShapeStyle_Pack.Fill(*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104) | (*(a1 + 108) << 32), *(a1 + 109));
    v2 = *(a1 + 128);
    if (v2 != 255)
    {
      outlined consume of GraphicsBlendMode(*(a1 + 120), v2 & 1);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE025AssetCatalogConfigurationI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE025AssetCatalogConfigurationS033_F748B30B59970FC73194935C526E3031LLVG_Tt0g5(a1);
    if (v14)
    {
      v15 = *(v14 + 120);
      v16 = *(v14 + 11);
      v17 = *(v14 + 13);
      *a2 = *(v14 + 9);
      *(a2 + 16) = v16;
      *(a2 + 32) = v17;
      *(a2 + 48) = v15;
    }

    else
    {
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      *(a2 + 48) = 1;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>, &type metadata for EnvironmentValues.AssetCatalogConfigurationKey, &protocol witness table for EnvironmentValues.AssetCatalogConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v30);
    outlined init with take of AnyTrackedValue(v30, v31);
    v12 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for ViewGraphHost.AssetCatalogConfiguration?, &type metadata for ViewGraphHost.AssetCatalogConfiguration, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v29 = v8;
    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE025AssetCatalogConfigurationS033_F748B30B59970FC73194935C526E3031LLVG_Tt0g5(a1);
    if (v18)
    {
      v19 = v18[9];
      v20 = v18[10];
      v21 = v18[11];
      v22 = v18[12];
      v23 = v18[13];
      v24 = v18[14];
      v25 = *(v18 + 120);
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 1;
    }

    *a2 = v19;
    *(a2 + 8) = v20;
    *(a2 + 16) = v21;
    *(a2 + 24) = v22;
    *(a2 + 32) = v23;
    *(a2 + 40) = v24;
    *(a2 + 48) = v25;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>();
    v32 = v26;
    v33 = &protocol witness table for TrackedValue<A>;
    v27 = swift_allocObject();
    v31[0] = v27;
    *(v27 + 16) = v19;
    *(v27 + 24) = v20;
    *(v27 + 32) = v21;
    *(v27 + 40) = v22;
    *(v27 + 48) = v23;
    *(v27 + 56) = v24;
    *(v27 + 64) = v25;
    specialized Dictionary.subscript.setter(v31, v29);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

id outlined copy of Image.Location?(id result)
{
  if (result != 2)
  {
    return outlined copy of Image.Location(result);
  }

  return result;
}

void PDFImageContents.draw(in:)(CGContext *a1)
{
  CGContextSaveGState(a1);
  v3 = *(v1 + 48);
  v5.size.width = *(v1 + 24);
  v5.size.height = *(v1 + 32);
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  CGPDFPageGetDrawingTransform(&v4, v3, kCGPDFCropBox, v5, 0, 1);
  CGContextConcatCTM(a1, &v4);
  CGContextDrawPDFPage(a1, v3);
  CGContextRestoreGState(a1);
}

void DisplayList.GraphicsRenderer.render(item:in:)(uint64_t a1, CGFloat *a2)
{
  v3 = v2;
  v349 = *MEMORY[0x1E69E9840];
  type metadata accessor for DisplayList.ArchiveIDs?();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v310 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v310 - v10;
  v12 = *(a1 + 48);
  v345 = *(a1 + 32);
  *v346 = v12;
  *&v346[12] = *(a1 + 60);
  v13 = *(a1 + 16);
  v344.origin = *a1;
  v344.size = v13;
  v14 = *(&v345 + 1);
  v15 = *&v346[16];
  LODWORD(v16) = *&v346[16] >> 30;
  if (*&v346[16] >> 30 > 1u)
  {
LABEL_10:
    if (v16 == 2)
    {
      v23 = (v3 + 104);
      if (*(*(v3 + 104) + 16))
      {
        v313 = *&v3;
        v24 = v14;
        v320 = a2;
        outlined init with copy of DisplayList.Item(&v344, &v329);
        specialized Array._customRemoveLast()(&v322);
        if (BYTE4(v322.c))
        {
          specialized Array.remove(at:)(*(*v23 + 2) - 1, &v329);
          a_low = LODWORD(v329.a);
          a_high = HIDWORD(v329.a);
          b_low = LODWORD(v329.b);
          b_high = HIDWORD(v329.b);
          c_low = LODWORD(v329.c);
        }

        else
        {
          a_low = LODWORD(v322.a);
          a_high = HIDWORD(v322.a);
          b_low = LODWORD(v322.b);
          b_high = HIDWORD(v322.b);
          c_low = LODWORD(v322.c);
        }

        v45 = (v24 + 48);
        v46 = *(v24 + 16) + 1;
        do
        {
          if (!--v46)
          {
            outlined destroy of DisplayList.Item(&v344);
            goto LABEL_51;
          }

          v47 = v45;
          v45 += 10;
        }

        while (*(v47 - 4) != a_low || *(v47 - 3) != a_high || *(v47 - 2) != b_low || *(v47 - 1) != b_high || *v47 != c_low);
        v48 = *(v45 - 4);
        v49 = *(v45 - 12);
        v50 = *(v45 - 5);

        outlined destroy of DisplayList.Item(&v344);
        if (v344.origin.x == 0.0 && v344.origin.y == 0.0)
        {
          v329.a = v48;
          LOWORD(v329.b) = v49;
          HIDWORD(v329.b) = v50;
          DisplayList.GraphicsRenderer.render(list:in:)(&v329, v320);
        }

        else
        {
          LODWORD(v318) = v49;
          v57 = v320;
          LODWORD(v319.width) = v50;
          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
          v329.a = v48;
          LOWORD(v329.b) = LOWORD(v318);
          HIDWORD(v329.b) = LODWORD(v319.width);
          DisplayList.GraphicsRenderer.render(list:in:)(&v329, v57);

          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

LABEL_51:
        v58 = *v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v23 = v58;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v58 + 2) + 1, 1, v58);
          *v23 = v58;
        }

        v61 = *(v58 + 2);
        v60 = *(v58 + 3);
        if (v61 >= v60 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v58);
        }

        *(v58 + 2) = v61 + 1;
        v62 = &v58[20 * v61];
        *(v62 + 8) = a_low;
        *(v62 + 9) = a_high;
        *(v62 + 10) = b_low;
        *(v62 + 11) = b_high;
        *(v62 + 12) = c_low;
        *v23 = v58;
      }
    }
  }

  else
  {
    v17 = *v346;
    if (v16)
    {
      v320 = a2;
      v30 = v3;
      v313 = 0.0;
      v318 = *&v346[8];
      v319.width = *(&v345 + 1);
      size = v344.size;
      v32 = v344.origin.x == 0.0;
      if (v344.origin.y != 0.0)
      {
        v32 = 0;
      }

      LODWORD(v316) = v32;
      if (v32)
      {
        outlined init with copy of DisplayList.Item(&v344, &v329);
      }

      else
      {
        outlined init with copy of DisplayList.Item(&v344, &v329);
        GraphicsContext.copyOnWrite()();
        RBDrawingStateTranslateCTM();
      }

      v317 = v15;
      v315 = HIDWORD(v15);
      if (BYTE4(v17) == 11)
      {
        *&v314 = v17;
        v33 = v3;
        outlined init with copy of AnyTrackedValue(*&v319.width + 16, &v329);
        v34 = *(v3 + 48);
        v35 = *(v30 + 52);
        v36 = *(v30 + 56);
        v37 = *(v30 + 60);
        swift_beginAccess();
        v38 = v33;
        v39 = *(v33 + 24);
        v40 = *(v39 + 16);
        v311 = (v36 | (v37 << 32));
        v312 = v34 | (v35 << 32);
        if (v40 && (v41 = specialized __RawDictionaryStorage.find<A>(_:)(v34 | (v35 << 32), v36 | (v37 << 32)), (v42 & 1) != 0))
        {
          outlined init with copy of AnyTrackedValue(*(v39 + 56) + 40 * v41, &v339);
        }

        else
        {
          memset(&v339, 0, 40);
        }

        swift_endAccess();
        if (*&v339.d)
        {
          outlined init with take of AnyTrackedValue(&v339, &v322);
        }

        else
        {
          d = v329.d;
          tx = v329.tx;
          __swift_project_boxed_opaque_existential_1(&v329, *&v329.d);
          (*(*&tx + 32))(&v322, COERCE_CGFLOAT(*&d), COERCE_CGFLOAT(*&tx));
          if (*&v339.d)
          {
            outlined destroy of _DisplayList_AnyEffectAnimator?(&v339, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimator?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimator);
          }
        }

        *&v336[0] = *(v38 + 72);
        v53 = v322.d;
        v54 = v322.tx;
        __swift_mutable_project_boxed_opaque_existential_1(&v322, *&v322.d);
        v55 = (*(*&v54 + 8))(&v339, &v329, v336, COERCE_CGFLOAT(*&v53), COERCE_CGFLOAT(*&v54), size.width, size.height);
        outlined consume of DisplayList.Effect(*&v319.width, v314, 11);
        v44 = *&v339.a;
        v17 = LODWORD(v339.b);
        v43 = BYTE4(v339.b);
        if ((v55 & 1) == 0)
        {
          *(v38 + 80) = *(v38 + 72);
        }

        outlined init with copy of AnyTrackedValue(&v322, &v339);
        swift_beginAccess();
        v30 = v38;
        specialized Dictionary.subscript.setter(&v339, v312, v311);
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(&v322);
        __swift_destroy_boxed_opaque_existential_1(&v329);
      }

      else
      {
        v43 = HIDWORD(v17);
        v44 = *&v319.width;
      }

      switch(v43)
      {
        case 1:
          v312 = v43;
          v166 = swift_projectBox();
          outlined init with copy of DisplayList.ArchiveIDs?(v166, v11);
          swift_beginAccess();
          v167 = v30;
          v168 = *(v30 + 88);
          outlined init with copy of DisplayList.ArchiveIDs?(v11, v8);
          v169 = type metadata accessor for DisplayList.ArchiveIDs();
          v170 = v44;
          v171 = *(*(v169 - 8) + 48);
          v172 = v171(v8, 1, v169);
          *&v319.width = v170;
          if (v172 == 1)
          {
            outlined copy of DisplayList.Effect(v170, v17, 1);

            _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(v8, type metadata accessor for DisplayList.ArchiveIDs?);
            v173 = 0;
          }

          else
          {
            v284 = v170;
            v173 = *&v8[*(v169 + 20)];
            outlined copy of DisplayList.Effect(v284, v17, 1);

            _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(v8, type metadata accessor for DisplayList.ArchiveIDs);
          }

          v285 = v320;
          *(v167 + 88) = v173;

          v286 = v171(v11, 1, v169) != 1;
          DisplayList.Index.updateArchive(entering:)(v286);
          v322.a = v318;
          LOWORD(v322.b) = v317;
          HIDWORD(v322.b) = v315;
          DisplayList.GraphicsRenderer.render(list:in:)(&v322, v285);
          _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(v11, type metadata accessor for DisplayList.ArchiveIDs?);

          *(v167 + 88) = v168;

          v44 = *&v319.width;
          v281 = *&v319.width;
          v282 = v17;
          v283 = 1;
          goto LABEL_210;
        case 3:
          outlined init with copy of AnyTrackedValue(v44 + 16, &v329);
          v313 = *&v30;
          v179 = v44;
          v180 = v329.d;
          v181 = v329.tx;
          __swift_project_boxed_opaque_existential_1(&v329, *&v329.d);
          v322.a = v318;
          LOWORD(v322.b) = v317;
          HIDWORD(v322.b) = v315;
          v182 = v17;
          v17 = *v320;
          v312 = v43;
          v183 = *(*&v181 + 48);

          v184 = v17;
          LOBYTE(v17) = v182;
          v185 = v181;
          v44 = v179;
          v183(&v322, v184, *&v313, *&v180, *&v185, size.width, size.height);
          LOBYTE(v43) = v312;

          __swift_destroy_boxed_opaque_existential_1(&v329);
          outlined consume of DisplayList.Effect(v179, v182, 3);
          goto LABEL_46;
        case 4:
          v322.a = *v320;
          v174 = *(*&v322.a + 48);

          if (v174 != (v174 * *&v44))
          {
            GraphicsContext.copyOnWrite()();
            *(*&v322.a + 48) = v174 * *&v44;
          }

          v329.a = v318;
          LOWORD(v329.b) = v317;
          HIDWORD(v329.b) = v315;
          DisplayList.GraphicsRenderer.render(list:in:)(&v329, &v322);

          goto LABEL_46;
        case 5:
          v135 = *v320;
          v322.a = *v320;
          if (v17)
          {
            outlined copy of DisplayList.Effect(v44, v17, 5);

            objc_opt_self();
            v136 = 0;
          }

          else
          {

            v136 = v44;
          }

          v56 = v316;
          if (*(*&v135 + 52) != v136)
          {
            GraphicsContext.copyOnWrite()();
            *(*&v322.a + 52) = v136;
          }

          v329.a = v318;
          LOWORD(v329.b) = v317;
          HIDWORD(v329.b) = v315;
          DisplayList.GraphicsRenderer.render(list:in:)(&v329, &v322);
          outlined consume of DisplayList.Effect(v44, v17, 5);

          goto LABEL_47;
        case 6:
          v175 = *(v44 + 32);
          *&v329.a = *(v44 + 16);
          *&v329.c = v175;
          LOBYTE(v329.tx) = *(v44 + 48);
          v176 = *(v44 + 49);
          v339.a = *v320;
          outlined copy of DisplayList.Effect(v44, v17, 6);

          GraphicsContext.copyOnWrite()();
          v177 = *(*&v339.a + 56);
          v178 = *(*(*&v339.a + 16) + 32);
          RBShape.setPath(_:style:shapeDistance:)(&v329.a, v176, v177);

          RBDrawingStateClipShape2();
          v322.a = v318;
          LOWORD(v322.b) = v317;
          HIDWORD(v322.b) = v315;
          DisplayList.GraphicsRenderer.render(list:in:)(&v322, &v339);

          outlined consume of DisplayList.Effect(v44, v17, 6);
          goto LABEL_46;
        case 7:
          v218 = *(v44 + 16);
          v219 = *(v44 + 24);
          v220 = v44;
          v221 = *(v44 + 32);
          v312 = v43;
          v43 = *(v220 + 28);
          v322.a = *v320;

          outlined copy of DisplayList.Effect(v220, v17, 7);

          v222 = v221;
          v44 = v220;
          v223 = v219 | (v43 << 32);
          LOBYTE(v43) = v312;
          specialized GraphicsContext.clipToLayer(opacity:options:content:)(v222, &v322, v30, v218, v223);

          v329.a = v318;
          LOWORD(v329.b) = v317;
          HIDWORD(v329.b) = v315;
          DisplayList.GraphicsRenderer.render(list:in:)(&v329, &v322);

          outlined consume of DisplayList.Effect(v220, v17, 7);
          goto LABEL_46;
        case 8:
          v147 = *(v44 + 32);
          v148 = *(v44 + 40);
          v149 = v17;
          v17 = v30;
          v150 = *(v44 + 48);
          v312 = v43;
          v322.a = *v320;
          memset(&v329, 0, 32);
          LOBYTE(v329.tx) = 1;
          v151 = swift_allocObject();
          v152 = v317;
          v153 = v318;
          *(v151 + 16) = v17;
          *(v151 + 24) = v153;
          *(v151 + 32) = v152;
          *(v151 + 36) = v315;
          LOBYTE(v17) = v149;

          outlined copy of DisplayList.Effect(v44, v149, 8);

          swift_bridgeObjectRetain_n();

          specialized GraphicsContext.drawSDFStyle<A>(_:ovalization:renderer:bounds:content:)(v150, v147, partial apply for closure #10 in DisplayList.GraphicsRenderer.render(item:in:), v151, &v322, &v329, v147, 0.0, v148);

          LOBYTE(v43) = v312;

          swift_bridgeObjectRelease_n();
          outlined consume of DisplayList.Effect(v44, v149, 8);
          goto LABEL_46;
        case 9:
          v186 = *(v44 + 16);
          v187 = *(v44 + 24);
          v188 = *(v44 + 32);
          v189 = *(v44 + 40);
          v191 = *(v44 + 48);
          v190 = *(v44 + 56);
          v193 = *(v44 + 64);
          v192 = *(v44 + 72);
          v194 = *(v44 + 80);
          v195 = *(v44 + 88);
          v339.a = *v320;
          if (v195 > 1)
          {
            v313 = v188;
            *&v314 = v186;
            if (v195 == 2)
            {
              outlined copy of DisplayList.Effect(v44, v17, 9);

              GraphicsContext.copyOnWrite()();
              RBDrawingStateAddRotationStyle();
            }

            else
            {
              v311 = v190;
              outlined copy of DisplayList.Effect(v44, v17, 9);

              GraphicsContext.copyOnWrite()();
              v308 = v194;
              RBDrawingStateAddRotation3DStyle();
            }
          }

          else
          {
            if (!v195)
            {
              v329.a = v186;
              v329.b = v187;
              v329.c = v188;
              v329.d = v189;
              v329.tx = v191;
              *&v329.ty = v190;
              v196 = v186;
              v197 = v188;
              v198 = *&v190;
              IsIdentity = CGAffineTransformIsIdentity(&v329);
              outlined copy of DisplayList.Effect(v44, v17, 9);

              v56 = v316;
              if (!IsIdentity)
              {
                GraphicsContext.copyOnWrite()();
                v329.a = v196;
                v329.b = v187;
                v329.c = v197;
                v329.d = v189;
                v329.tx = v191;
                v329.ty = v198;
                RBDrawingStateConcatCTM();
              }

LABEL_241:
              v322.a = v318;
              LOWORD(v322.b) = v317;
              HIDWORD(v322.b) = v315;
              DisplayList.GraphicsRenderer.render(list:in:)(&v322, &v339);

              outlined consume of DisplayList.Effect(v44, v17, 9);
LABEL_47:
              if ((v56 & 1) == 0)
              {
                GraphicsContext.copyOnWrite()();
                RBDrawingStateTranslateCTM();
              }

              outlined consume of DisplayList.Effect(v44, v17, v43);
              return;
            }

            v329.a = v186;
            v329.b = v187;
            v329.c = v188;
            v329.d = v189;
            v329.tx = v191;
            *&v329.ty = v190;
            *&v330 = v193;
            *(&v330 + 1) = v192;
            *&v331 = v194;
            outlined copy of DisplayList.Effect(v44, v17, 9);

            GraphicsContext.copyOnWrite()();
            RBDrawingState.addProjectionTransform(_:)();
          }

          v56 = v316;
          goto LABEL_241;
        case 10:
          v137 = *(v44 + 96);
          v324 = *(v44 + 80);
          v325[0] = v137;
          v325[1] = *(v44 + 112);
          *(&v325[1] + 12) = *(v44 + 124);
          v138 = *(v44 + 32);
          *&v322.a = *(v44 + 16);
          *&v322.c = v138;
          v139 = *(v44 + 64);
          *&v322.tx = *(v44 + 48);
          v323 = v139;
          v321[0] = *v320;
          memmove(&v329, (v44 + 16), 0x7CuLL);
          if (_s7SwiftUI14GraphicsFilterOWOg(&v329) != 15)
          {
            v341 = v324;
            v342 = v325[0];
            v343[0] = v325[1];
            *(v343 + 12) = *(&v325[1] + 12);
            v339 = v322;
            v340 = v323;
            outlined copy of DisplayList.Effect(v44, v17, 10);

            outlined init with copy of GraphicsFilter(&v322, v336);
            GraphicsContext.addFilter(_:in:)(&v339, 0.0, 0.0, size.width, size.height);
            v339.a = v318;
            LOWORD(v339.b) = v317;
            HIDWORD(v339.b) = v315;
            DisplayList.GraphicsRenderer.render(list:in:)(&v339, v321);
            outlined destroy of GraphicsFilter(&v322);

            outlined consume of DisplayList.Effect(v44, v17, 10);
            goto LABEL_46;
          }

          v140 = _s7SwiftUI14GraphicsFilterOWOj6_(&v329);
          v313 = *&v30;

          *&v319.width = v44;
          *&v314 = v17;
          outlined copy of DisplayList.Effect(v44, v17, 10);

          GraphicsContext.copyOnWrite()();
          v141 = v321[0];
          v142 = RBDrawingStateBeginLayer();
          type metadata accessor for GraphicsContext.Storage();
          v143 = swift_allocObject();
          *(v143 + 32) = xmmword_18DD85500;
          *(v143 + 48) = 1065353216;
          *(v143 + 56) = 0x7FF8000000000000;
          v144 = *(*&v141 + 16);
          v145 = *(v144 + 64);
          DefaultColorSpace = RBDrawingStateGetDefaultColorSpace();
          v312 = v43;
          if (v145 == DefaultColorSpace)
          {
            *(v143 + 16) = v144;

            v56 = v316;
          }

          else
          {
            v310 = v142;
            v311 = RBDrawingStateGetDisplayList();
            v293 = *(*&v141 + 32);
            v292 = *(*&v141 + 40);
            v294 = *&v293;
            if (v293 == 1)
            {
              v294 = *(v144 + 48);
              v292 = *(v144 + 56);
            }

            v339.a = v294;
            v339.b = v292;
            type metadata accessor for GraphicsContext.Storage.Shared();
            swift_allocObject();
            outlined copy of EnvironmentValues?(v293);
            *(v143 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v311, &v339);
            v56 = v316;
            v142 = v310;
          }

          *(v143 + 24) = v142;
          *(v143 + 64) = 0;
          *&v336[0] = v143;
          v339.a = v318;
          LOWORD(v339.b) = v317;
          HIDWORD(v339.b) = v315;

          DisplayList.GraphicsRenderer.render(list:in:)(&v339, v336);

          RBDrawingStateClipLayer();

          *&v339.a = *v140;
          v295 = v140[1];
          v296 = v140[2];
          v297 = v140[4];
          v340 = v140[3];
          v341 = v297;
          *&v339.c = v295;
          *&v339.tx = v296;
          GraphicsContext.copyOnWrite()();
          v298 = *&v321[0];
          RBDrawingStateAddColorMatrixFilter();
          RBDrawingStateGetClipBoundingBox();
          x = v351.origin.x;
          y = v351.origin.y;
          width = v351.size.width;
          height = v351.size.height;
          if (CGRectIsNull(v351))
          {
            v17 = 0;
            v43 = 0;
            v303 = 0;
            v304 = 0;
            v305 = 6;
          }

          else
          {
            v305 = 0;
            v17 = *&x;
            v43 = *&y;
            v303 = *&width;
            v304 = *&height;
          }

          v44 = *&v319.width;
          v347[0] = v17;
          v347[1] = v43;
          v347[2] = v303;
          v347[3] = v304;
          v348 = v305;
          *&v339.a = 0uLL;
          LODWORD(v339.c) = 2143289344;
          BYTE8(v341) = 0;
          *&v336[0] = 256;
          *(v336 + 8) = 0u;
          *(&v336[1] + 8) = 0u;
          BYTE8(v336[2]) = 0;
          GraphicsContext.draw(_:with:style:)(v347, &v339, v336, v298);
          outlined consume of Path.Storage(v17, v43, v303, v304, v305);

          LOBYTE(v17) = v314;
          outlined consume of DisplayList.Effect(v44, v314, 10);
          LOBYTE(v43) = v312;
          goto LABEL_47;
        case 11:
          v309 = 0;
          v308 = 358;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          JUMPOUT(0x18D1954B0);
        case 12:
          v312 = v43;
          *&v314 = v17;
          v209 = *(v44 + 16);
          v210 = *(v44 + 24) | (*(v44 + 28) << 32);
          v211 = *(v44 + 29);
          v212 = *(v44 + 30);
          v213 = *(v44 + 32);
          v214 = *(v44 + 40);
          v322.a = *v320;
          v215 = *(v30 + 96);
          if ((v214 & 0xC) != 0)
          {
            v329.a = v209;
            LODWORD(v329.b) = v210;
            BYTE6(v329.b) = v212 != 0;
            WORD2(v329.b) = (v210 & 0xFF00000000 | (v211 << 40)) >> 32;
            outlined copy of DisplayList.Effect(v44, v314, 12);
            outlined copy of ContentTransition.Storage(*&v209, v210, v211);

            outlined copy of ContentTransition.Storage(*&v209, v210, v211);
            GraphicsContext.setTransition(_:)(&v329);
            outlined consume of ContentTransition?(*&v329.a, LODWORD(v329.b) | ((WORD2(v329.b) | (BYTE6(v329.b) << 16)) << 32));
            *(v30 + 96) = *(v30 + 96) & 1 | ((v214 & 4) != 0);
            if ((v214 & 4) != 0)
            {
              v216 = *&v322.a;

              v315 = v213;
              v217 = *&v318;

              specialized GraphicsContext.drawLayer(flags:content:)(32, v216, v30, v217, v317 & 0xFFFFFFFF0000FFFFLL);

              outlined consume of ContentTransition.Storage(*&v209, v210, v211);

              goto LABEL_209;
            }
          }

          else
          {
            outlined copy of DisplayList.Effect(v44, v314, 12);
            outlined copy of ContentTransition.Storage(*&v209, v210, v211);
          }

          v329.a = v318;
          LOWORD(v329.b) = v317;
          HIDWORD(v329.b) = v315;
          DisplayList.GraphicsRenderer.render(list:in:)(&v329, &v322);
          outlined consume of ContentTransition.Storage(*&v209, v210, v211);

LABEL_209:
          *(v30 + 96) = v215;

          v281 = v44;
          LOBYTE(v17) = v314;
          v282 = v314;
          v283 = 12;
LABEL_210:
          outlined consume of DisplayList.Effect(v281, v282, v283);
          v56 = v316;
          LOBYTE(v43) = v312;
          goto LABEL_47;
        case 16:
          v314 = *(v44 + 16);
          v154 = v44;
          v155 = *(v44 + 32);
          v156 = v30;
          v157 = v30 + 104;
          v158 = *(v30 + 104);
          *&v319.width = v154;

          v159 = swift_isUniquelyReferenced_nonNull_native();
          *(v30 + 104) = v158;
          v160 = v17;
          if ((v159 & 1) == 0)
          {
            v158 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v158 + 2) + 1, 1, v158);
            *v157 = v158;
          }

          v161 = v320;
          v163 = *(v158 + 2);
          v162 = *(v158 + 3);
          if (v163 >= v162 >> 1)
          {
            v306 = v320;
            v307 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v162 > 1), v163 + 1, 1, v158);
            v161 = v306;
            v158 = v307;
          }

          *(v158 + 2) = v163 + 1;
          v164 = &v158[20 * v163];
          *(v164 + 2) = v314;
          *(v164 + 12) = v155;
          *(v156 + 104) = v158;
          v329.a = v318;
          LOWORD(v329.b) = v317;
          HIDWORD(v329.b) = v315;
          DisplayList.GraphicsRenderer.render(list:in:)(&v329, v161);

          if (!*(*(v156 + 104) + 16))
          {
            __break(1u);
          }

          specialized Array._customRemoveLast()(&v329);
          LOBYTE(v17) = v160;
          v44 = *&v319.width;
          if (BYTE4(v329.c) == 1)
          {
            specialized Array.remove(at:)(*(*v157 + 16) - 1, &v329);
          }

          outlined consume of DisplayList.Effect(v44, v160, 16);
          goto LABEL_46;
        case 19:
          v312 = v43;
          v165 = *(v44 + 36);
          v329.a = *v320;
          outlined copy of DisplayList.Effect(v44, v17, 19);

          if ((v165 & 1) == 0)
          {
            RBUUIDInitFromHash();
          }

          GraphicsContext._addAnimation(_:id:)(v278);

          v279 = *&v329.a;

          v280 = *&v318;

          specialized GraphicsContext.drawLayer(flags:content:)(32, v279, v30, v280, v317 & 0xFFFFFFFF0000FFFFLL);

          swift_bridgeObjectRelease_n();
          v281 = v44;
          v282 = v17;
          v283 = 19;
          goto LABEL_210;
        case 20:
          if (!(v44 | v17))
          {
            goto LABEL_45;
          }

          if (v44 ^ 1 | v17)
          {
            v290 = *v320;

            v291 = *&v318;

            specialized GraphicsContext.drawLayer(flags:content:)(0, *&v290, v30, v291, v317 & 0xFFFFFFFF0000FFFFLL);

            swift_bridgeObjectRelease_n();
LABEL_46:
            v56 = v316;
          }

          else
          {
            v200 = v43;
            v322.a = *v320;

            GraphicsContext.copyOnWrite()();
            v201 = *&v322.a;
            RBDrawingStateGetCTM();
            a = v329.a;
            b = v329.b;
            c = v329.c;
            v205 = v329.d;
            v206 = v329.tx;
            ty = v329.ty;
            v208 = CGAffineTransformIsIdentity(&v329);
            v56 = v316;
            if (!v208)
            {
              v329.a = 1.0;
              v329.b = 0.0;
              v329.c = 0.0;
              v329.d = 1.0;
              v329.tx = 0.0;
              v329.ty = 0.0;
              RBDrawingStateSetCTM();
              v329.a = a;
              v329.b = b;
              v329.c = c;
              v329.d = v205;
              v329.tx = v206;
              v329.ty = ty;
              RBDrawingStateAddAffineTransformStyle();
            }

            v43 = *&v318;

            specialized GraphicsContext.drawLayer(flags:content:)(32, v201, v30, v43, v317 & 0xFFFFFFFF0000FFFFLL);

            swift_bridgeObjectRelease_n();
            LOBYTE(v43) = v200;
          }

          goto LABEL_47;
        default:
LABEL_45:
          v329.a = v318;
          LOWORD(v329.b) = v317;
          HIDWORD(v329.b) = v315;
          DisplayList.GraphicsRenderer.render(list:in:)(&v329, v320);

          goto LABEL_46;
      }
    }

    switch(*(&v345 + 1) >> 60)
    {
      case 1:
        v87 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v88 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v89 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v90 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x24);
        v91 = *a2;
        origin = v344.origin;
        v93 = v344.size;
        outlined init with copy of DisplayList.Item(&v344, &v329);
        outlined init with copy of DisplayList.Item(&v344, &v329);
        v350.origin = origin;
        v350.size = v93;
        if (CGRectIsNull(v350))
        {
          v94 = 0;
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v98 = 6;
        }

        else
        {
          v98 = 0;
          v95 = *&origin.y;
          v94 = *&origin.x;
          v97 = *&v93.height;
          v96 = *&v93.width;
        }

        *&v336[0] = v94;
        *(&v336[0] + 1) = v95;
        *&v336[1] = v96;
        *(&v336[1] + 1) = v97;
        LOBYTE(v336[2]) = v98;
        v329.a = v87;
        v329.b = v88;
        LODWORD(v329.c) = v89;
        _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v329);
        v326 = v333;
        v327 = v334;
        v328 = v335;
        v324 = v331;
        v325[0] = v332[0];
        v325[1] = v332[1];
        v325[2] = v332[2];
        v322 = v329;
        v323 = v330;
        v253 = 256;
        if (!v90)
        {
          v253 = 0;
        }

        *&v339.a = v253;
        memset(&v339.b, 0, 33);
        GraphicsContext.draw(_:with:style:)(v336, &v322, &v339, v91);
        outlined consume of Path.Storage(v94, v95, v96, v97, v98);
        outlined destroy of DisplayList.Item(&v344);
        goto LABEL_229;
      case 2:
        v319 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v70 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v71 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v72 = *a2;
        *v347 = *a2;
        v3 = *(v71 + 16);
        if (*&v3 == 0.0)
        {
          outlined init with copy of DisplayList.Item(&v344, &v329);
          outlined init with copy of DisplayList.Item(&v344, &v329);

          goto LABEL_177;
        }

        v73 = v344.size;
        outlined init with copy of DisplayList.Item(&v344, &v329);
        outlined init with copy of DisplayList.Item(&v344, &v329);

        if (v3 <= *(v71 + 16))
        {
          v17 = v71 + (v3 << 7) - 96;
          while (1)
          {
            v331 = *(v17 + 64);
            v332[0] = *(v17 + 80);
            v332[1] = *(v17 + 96);
            *(&v332[1] + 12) = *(v17 + 108);
            v329 = *v17;
            v330 = *(v17 + 48);
            GraphicsContext.addFilter(_:in:)(&v329, 0.0, 0.0, v73.width, v73.height);
            --v3;
            if (*&v3 == 0.0)
            {
              break;
            }

            v17 -= 128;
            if (v3 > *(v71 + 16))
            {
              goto LABEL_72;
            }
          }

          v72 = v347[0];
LABEL_177:
          v262 = v344.origin;
          v263 = v344.size;
          if (CGRectIsNull(v344))
          {
            v264 = 0;
            v265 = 0;
            v266 = 0;
            v267 = 0;
            v268 = 6;
          }

          else
          {
            v268 = 0;
            v265 = *&v262.y;
            v264 = *&v262.x;
            v267 = *&v263.height;
            v266 = *&v263.width;
          }

          *&v336[0] = v264;
          *(&v336[0] + 1) = v265;
          *&v336[1] = v266;
          *(&v336[1] + 1) = v267;
          LOBYTE(v336[2]) = v268;
          *&v329.a = v319;
          LODWORD(v329.c) = v70;
          _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v329);
          v326 = v333;
          v327 = v334;
          v328 = v335;
          v324 = v331;
          v325[0] = v332[0];
          v325[1] = v332[1];
          v325[2] = v332[2];
          v322 = v329;
          v323 = v330;
          *&v339.a = 256;
          memset(&v339.b, 0, 33);
          GraphicsContext.draw(_:with:style:)(v336, &v322, &v339, v72);
          outlined consume of Path.Storage(v264, v265, v266, v267, v268);

          goto LABEL_227;
        }

LABEL_72:
        __break(1u);
LABEL_73:
        *&v314 = v17;
        v74 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v75 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        LODWORD(v315) = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v76 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v77 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v78 = *(v3 + 96);
        *(v3 + 96) = 0;
        LODWORD(v319.width) = v78;
        *&v79 = *a2;
        v80 = *(*a2 + 24);
        outlined init with copy of DisplayList.Item(&v344, &v329);

        v317 = v80;
        v81 = RBDrawingStateBeginLayer();
        type metadata accessor for GraphicsContext.Storage();
        v82 = swift_allocObject();
        *(v82 + 32) = xmmword_18DD85500;
        *(v82 + 48) = 1065353216;
        *(v82 + 56) = 0x7FF8000000000000;
        v83 = *(v79 + 2);
        v84 = *(v83 + 64);
        v85 = RBDrawingStateGetDefaultColorSpace();
        v320 = v81;
        v318 = *&v79;
        if (v84 == v85)
        {
          *(v82 + 16) = v83;
        }

        else
        {
          v235 = v74;
          v313 = *&v3;
          v236 = RBDrawingStateGetDisplayList();
          v237 = *(v79 + 4);
          v238 = *&v237;
          v239 = v79[5];
          if (v237 == 1)
          {
            v238 = *(v83 + 48);
            v239 = *(v83 + 56);
          }

          v329.a = v238;
          v329.b = v239;
          type metadata accessor for GraphicsContext.Storage.Shared();
          swift_allocObject();
          outlined copy of EnvironmentValues?(v237);
          *(v82 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v236, &v329);
          *&v3 = v313;
          v74 = v235;
          v81 = v320;
        }

        *(v82 + 24) = v81;
        *(v82 + 64) = 0;
        *&v322.a = v82;
        v240 = v344.origin;

        if (v240.x != 0.0 || v240.y != 0.0)
        {
          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

        v241 = v3;
        v243 = *(v3 + 48);
        v242 = *(v3 + 56);
        v244 = fmax(round(GraphicsContext.userToDeviceScale.getter()), 1.0);
        swift_beginAccess();
        v245 = v241;
        v246 = *(v241 + 16);
        v247 = *(v246 + 16);
        v316 = v74;
        if (v247 && (v248 = specialized __RawDictionaryStorage.find<A>(_:)(v243, v242, v314, v244), (v249 & 1) != 0))
        {
          v250 = *(*(v246 + 56) + 8 * v248);
          swift_endAccess();
          swift_unknownObjectRetain();
          v251 = v314;
        }

        else
        {
          swift_endAccess();
          v251 = v314;
          v250 = closure #1 in implicit closure #1 in closure #3 in DisplayList.GraphicsRenderer.render(item:in:)(v244, v76, v77, &v322, v243, v242, v314, v74, v75);
        }

        swift_beginAccess();
        swift_unknownObjectRetain();
        v252 = swift_isUniquelyReferenced_nonNull_native();
        v339.a = *(v245 + 32);
        *(v245 + 32) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v250, v243, v242, v251, v252, v244);
        *(v245 + 32) = v339.a;
        swift_endAccess();
        RBDrawingStateDrawDisplayList();

        swift_unknownObjectRelease();
        RBDrawingStateDrawLayer();

        outlined destroy of DisplayList.Item(&v344);

        *(v245 + 96) = LOBYTE(v319.width);
        break;
      case 3:
        v105 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v330 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v331 = v105;
        v332[0] = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        *(v332 + 12) = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
        v106 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *&v329.a = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v329.c = v106;
        v107 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        *&v329.tx = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v108 = *a2;
        v109 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v110 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        v323 = v107;
        v324 = v109;
        v325[0] = v110;
        *(v325 + 12) = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
        v111 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *&v322.a = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v322.c = v111;
        *&v322.tx = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v112 = v344.origin;
        v113 = v344.size;
        v337 = 0;
        memset(v336, 0, sizeof(v336));
        v338 = -1;
        outlined init with copy of DisplayList.Item(&v344, &v339);
        outlined init with copy of GraphicsImage(&v329, &v339);
        GraphicsContext.draw(_:in:style:shading:)(&v322, v112.x, v112.y, v113.width, v113.height, 256, v336, v108);
        outlined destroy of GraphicsImage(&v329);
        goto LABEL_229;
      case 4:
        v120 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *&v339.a = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *&v339.c = v120;
        LOBYTE(v339.tx) = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v121 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x38);
        v122 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v123 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x41);
        v319 = v344.size;
        v124 = v344.origin.y == 0.0 && v344.origin.x == 0.0;
        outlined init with copy of DisplayList.Item(&v344, &v329);
        if (!v124)
        {
          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

        v260 = 256;
        if (!v123)
        {
          v260 = 0;
        }

        *&v329.a = v260 | v122;
        memset(&v329.b, 0, 33);
        v261 = *a2;
        *&v322.a = 0uLL;
        *&v322.c = v319;
        LOBYTE(v322.tx) = 0;
        (*(*v121 + 80))(&v339, &v329, v261, &v322);
        if (v124)
        {
          goto LABEL_229;
        }

        goto LABEL_216;
      case 5:
        v99 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v100 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v101 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v102 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v103 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v104 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x38);
        v322.a = *a2;
        if (v344.origin.x - v99 == 0.0 && v344.origin.y - v100 == 0.0)
        {
          outlined init with copy of DisplayList.Item(&v344, &v329);
          outlined init with copy of DisplayList.Item(&v344, &v329);
        }

        else
        {
          outlined init with copy of DisplayList.Item(&v344, &v329);
          outlined init with copy of DisplayList.Item(&v344, &v329);

          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

        memset(&v329, 0, 32);
        LOBYTE(v329.tx) = 1;

        specialized GraphicsContext.drawSDFStyle<A>(_:ovalization:renderer:bounds:content:)(v103, v101, 0, 0, &v322, &v329, v101, v104, v102);

        outlined destroy of DisplayList.Item(&v344);

        goto LABEL_229;
      case 6:
        v130 = v3;
        v131 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v132 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v133 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
        v134 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v322.a = *a2;
        if (v344.origin.x == 0.0 && v344.origin.y == 0.0)
        {
          outlined init with copy of DisplayList.Item(&v344, &v329);
          outlined init with copy of DisplayList.Item(&v344, &v329);
        }

        else
        {
          outlined init with copy of DisplayList.Item(&v344, &v329);
          outlined init with copy of DisplayList.Item(&v344, &v329);

          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

        outlined init with copy of DisplayList.Item(&v344, &v329);

        specialized GraphicsContext.drawSDFStyle<A>(_:ovalization:renderer:bounds:content:)(v134, v131, v132 | (v133 << 32), v130, 0, 0, &v322, &v344);
        outlined destroy of DisplayList.Item(&v344);
        outlined destroy of DisplayList.Item(&v344);

        goto LABEL_228;
      case 7:
        v86 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v336[0] = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v336[1] = v86;
        LOBYTE(v336[2]) = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v319.width = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        LODWORD(v318) = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x68);
        *v347 = *a2;
        if (v344.origin.x == 0.0 && v344.origin.y == 0.0)
        {
          outlined init with copy of DisplayList.Item(&v344, &v329);
          outlined init with copy of DisplayList.Item(&v344, &v329);
        }

        else
        {
          outlined init with copy of DisplayList.Item(&v344, &v329);
          outlined init with copy of DisplayList.Item(&v344, &v329);

          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

        GraphicsContext.copyOnWrite()();
        v230 = v347[0];
        if (*(*(v347[0] + 16) + 64) != 2)
        {
          RBColorFromLinear();
        }

        RBDrawingStateAddShadowStyle3();
        __asm { FMOV            V0.4S, #1.0 }

        *&v329.a = _Q0;
        LODWORD(v329.c) = 2143289344;
        _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v329);
        v326 = v333;
        v327 = v334;
        v328 = v335;
        v324 = v331;
        v325[0] = v332[0];
        v325[1] = v332[1];
        v325[2] = v332[2];
        v322 = v329;
        v323 = v330;
        *&v339.a = 256;
        memset(&v339.b, 0, 33);
        GraphicsContext.draw(_:with:style:)(v336, &v322, &v339, v230);
        goto LABEL_227;
      case 8:
        v125 = v3;
        v126 = outlined init with copy of AnyTrackedValue((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 16, &v322);
        MEMORY[0x1EEE9AC00](v126);
        *(&v310 - 4) = &v344;
        *(&v310 - 3) = &v322;
        v308 = v3;
        v127 = *(v3 + 96);
        *(v3 + 96) = 0;
        if (v127)
        {
          v128 = 0;
        }

        else
        {
          v128 = 16;
        }

        v129 = *a2;
        outlined init with copy of DisplayList.Item(&v344, &v329);
        GraphicsContext.drawLayer(flags:content:)(v128, partial apply for closure #2 in DisplayList.GraphicsRenderer.render(item:in:), (&v310 - 6), *&v129);
        *(v125 + 96) = v127;
        goto LABEL_145;
      case 9:
        v67 = v3;
        outlined init with copy of AnyTrackedValue((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 16, &v322);
        v68 = v344.size;
        v69 = v344.origin.y == 0.0 && v344.origin.x == 0.0;
        outlined init with copy of DisplayList.Item(&v344, &v329);
        if (!v69)
        {
          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

        v228 = v322.d;
        v229 = v322.tx;
        __swift_project_boxed_opaque_existential_1(&v322, *&v322.d);
        (*(*&v229 + 32))(*a2, v67, COERCE_CGFLOAT(*&v228), COERCE_CGFLOAT(*&v229), v68.width, v68.height);
        if (!v69)
        {
          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

LABEL_145:
        __swift_destroy_boxed_opaque_existential_1(&v322);
        goto LABEL_229;
      case 0xALL:
        goto LABEL_73;
      case 0xBLL:
        v313 = *&v3;
        v114 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v115 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v116 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
        v117 = v344.origin.x - *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v118 = v344.origin.y - *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        if ((*((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x38) & 0x80) != 0)
        {
          LODWORD(v319.width) = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v254 = *a2;
          v255 = *(*a2 + 24);
          outlined init with copy of DisplayList.Item(&v344, &v329);

          v256 = RBDrawingStateBeginLayer();
          type metadata accessor for GraphicsContext.Storage();
          v257 = swift_allocObject();
          *(v257 + 32) = xmmword_18DD85500;
          *(v257 + 48) = 1065353216;
          *(v257 + 56) = 0x7FF8000000000000;
          v258 = *(v254 + 2);
          v259 = *(v258 + 64);
          if (v259 == RBDrawingStateGetDefaultColorSpace())
          {
            *(v257 + 16) = v258;
          }

          else
          {
            v318 = v255;
            LODWORD(v320) = v116;
            v317 = RBDrawingStateGetDisplayList();
            v287 = *(v254 + 4);
            v288 = *&v287;
            v289 = v254[5];
            if (v287 == 1)
            {
              v288 = *(v258 + 48);
              v289 = *(v258 + 56);
            }

            v329.a = v288;
            v329.b = v289;
            type metadata accessor for GraphicsContext.Storage.Shared();
            swift_allocObject();
            outlined copy of EnvironmentValues?(v287);
            *(v257 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v317, &v329);
            v116 = v320;
          }

          *(v257 + 24) = v256;
          *(v257 + 64) = 0;
          *&v322.a = v257;

          if (v117 != 0.0 || v118 != 0.0)
          {
            GraphicsContext.copyOnWrite()();
            RBDrawingStateTranslateCTM();
          }

          v329.a = v114;
          LOWORD(v329.b) = LOWORD(v319.width);
          HIDWORD(v329.b) = v116;
          DisplayList.GraphicsRenderer.render(list:in:)(&v329, &v322);

          RBDrawingStateDrawLayer();

          goto LABEL_228;
        }

        v119 = v118 == 0.0 && v117 == 0.0;
        outlined init with copy of DisplayList.Item(&v344, &v329);
        if (!v119)
        {
          GraphicsContext.copyOnWrite()();
          RBDrawingStateTranslateCTM();
        }

        v329.a = v114;
        LOWORD(v329.b) = v115;
        HIDWORD(v329.b) = v116;
        DisplayList.GraphicsRenderer.render(list:in:)(&v329, a2);
        if (v119)
        {
          goto LABEL_229;
        }

        goto LABEL_216;
      case 0xCLL:
        v63 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v64 = v344.origin.x - *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v65 = v344.origin.y - *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        if ((*((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x30) & 0x80) != 0)
        {
          v224 = *(v3 + 96);
          *(v3 + 96) = 0;
          if (v224)
          {
            v225 = 0;
          }

          else
          {
            v225 = 16;
          }

          v226 = v3;
          v227 = *a2;
          outlined init with copy of DisplayList.Item(&v344, &v329);
          swift_unknownObjectRetain();
          specialized GraphicsContext.drawLayer(flags:content:)(v225, *&v227, v63, v64, v65);
          swift_unknownObjectRelease();
          *(v226 + 96) = v224;
        }

        else
        {
          v66 = v65 == 0.0 && v64 == 0.0;
          outlined init with copy of DisplayList.Item(&v344, &v329);
          if (!v66)
          {
            GraphicsContext.copyOnWrite()();
            RBDrawingStateTranslateCTM();
          }

          RBDrawingStateDrawDisplayList2();
          if (!v66)
          {
LABEL_216:
            GraphicsContext.copyOnWrite()();
            RBDrawingStateTranslateCTM();
          }
        }

        goto LABEL_229;
      case 0xDLL:
        return;
      case 0xELL:
        goto LABEL_229;
      default:
        v319 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x14);
        v18 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x24);
        v19 = *((*(&v345 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v20 = *a2;
        *v336 = *a2;
        v3 = *(v19 + 16);
        if (*&v3 == 0.0)
        {
          outlined init with copy of DisplayList.Item(&v344, &v329);
          outlined init with copy of DisplayList.Item(&v344, &v329);
        }

        else
        {
          v21 = v344.size;
          outlined init with copy of DisplayList.Item(&v344, &v329);
          outlined init with copy of DisplayList.Item(&v344, &v329);

          v16 = *(v19 + 16);
          if (v3 > v16)
          {
LABEL_9:
            __break(1u);
            goto LABEL_10;
          }

          v22 = v19 + (v3 << 7) - 96;
          while (1)
          {
            v331 = *(v22 + 64);
            v332[0] = *(v22 + 80);
            v332[1] = *(v22 + 96);
            *(&v332[1] + 12) = *(v22 + 108);
            v329 = *v22;
            v330 = *(v22 + 48);
            GraphicsContext.addFilter(_:in:)(&v329, 0.0, 0.0, v21.width, v21.height);
            --v3;
            if (*&v3 == 0.0)
            {
              break;
            }

            v16 = *(v19 + 16);
            v22 -= 128;
            if (v3 > v16)
            {
              goto LABEL_9;
            }
          }

          v20 = *&v336[0];
        }

        v269 = v344.origin;
        v270 = v344.size;
        IsNull = CGRectIsNull(v344);

        _ZF = !IsNull;
        if (IsNull)
        {
          v273 = 0.0;
        }

        else
        {
          v273 = v269.x;
        }

        if (IsNull)
        {
          v274 = 0.0;
        }

        else
        {
          v274 = v269.y;
        }

        v339.a = v273;
        v339.b = v274;
        if (_ZF)
        {
          v275 = v270.width;
        }

        else
        {
          v275 = 0.0;
        }

        if (_ZF)
        {
          v276 = v270.height;
        }

        else
        {
          v276 = 0.0;
        }

        v339.c = v275;
        v339.d = v276;
        if (_ZF)
        {
          v277 = 0;
        }

        else
        {
          v277 = 6;
        }

        LOBYTE(v339.tx) = v277;
        *&v329.a = v319;
        LODWORD(v329.c) = v18;
        BYTE8(v331) = 0;
        *&v322.a = 256;
        memset(&v322.b, 0, 33);
        GraphicsContext.draw(_:with:style:)(&v339, &v329, &v322, v20);
        outlined consume of Path.Storage(*&v273, *&v274, *&v275, *&v276, v277);
LABEL_227:
        outlined destroy of DisplayList.Item(&v344);
LABEL_228:

LABEL_229:
        outlined destroy of DisplayList.Item(&v344);
        return;
    }
  }
}

uint64_t sub_18D195540()
{

  return swift_deallocObject();
}

uint64_t GraphicsContext.Storage.__deallocating_deinit()
{
  if (*(v0 + 64) == 1)
  {
    RBDrawingStateDestroy();
  }

  outlined consume of EnvironmentValues?(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t GraphicsContext.Storage.Shared.__deallocating_deinit()
{
  GraphicsContext.Storage.Shared.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of GraphicsContext.Shading?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for GraphicsContext.Shading?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsContext.ResolvedShading(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 104) >> 11) & 0x1F80 | (*(a1 + 104) >> 9) | (*(a1 + 104) >> 13) & 0xFFFFE000;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void outlined consume of GraphicsContext.ResolvedShading(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v14 = a14 >> 60;
  if ((a14 >> 60) > 5)
  {
    if (v14 == 6)
    {

LABEL_15:

      return;
    }

    if (v14 != 7)
    {
      if (v14 != 8)
      {
        return;
      }

      goto LABEL_15;
    }

    outlined consume of GraphicsImage.Contents?(a1, a2);
  }

  else
  {
    if (v14 != 3)
    {
      if (v14 == 4)
      {
        outlined consume of _ShapeStyle_Pack.Fill(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, BYTE5(a11));
        outlined consume of GraphicsBlendMode?(a13, a14);
      }

      else if (v14 != 5)
      {
        return;
      }

      goto LABEL_15;
    }
  }
}

uint64_t lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DisplayList.GraphicsRenderer.render(list:in:)(uint64_t *a1, CGFloat *a2)
{
  v3 = v2;
  v5 = *a1;
  RBDrawingStateGetIdentifier();
  RBDrawingStateGetIdentifierNamespace2();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      *&v27[12] = *(v7 + 60);
      v11 = *v7;
      v26 = v9;
      *v27 = v10;
      v24 = v11;
      v25 = v8;
      v12 = *&v27[24];
      if (*&v27[24])
      {
        v14 = *(v3 + 48);
        v13 = *(v3 + 52);
        v15 = *(v3 + 56);
        v16 = *(v3 + 64);
        *(v3 + 48) = *&v27[24];
        *(v3 + 64) = 1;
        swift_beginAccess();
        v17 = *(v3 + 88);
        if (v17 && *(v17 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12), (v18 & 1) != 0))
        {
          swift_endAccess();
          outlined init with copy of DisplayList.Item(&v24, v22);
          RBUUIDInitFromHash();
          GraphicsContext.copyOnWrite()();
          RBDrawingStateSetIdentifier2();
        }

        else
        {
          swift_endAccess();
          outlined init with copy of DisplayList.Item(&v24, v22);
          GraphicsContext.copyOnWrite()();
          RBDrawingStateSetIdentifier();
        }
      }

      else
      {
        v14 = *(v3 + 48);
        v13 = *(v3 + 52) + 1;
        *(v3 + 52) = v13;
        v15 = *(v3 + 56);
        v16 = *(v3 + 64);
        *(v3 + 64) = 0;
        outlined init with copy of DisplayList.Item(&v24, v22);
      }

      v22[2] = v26;
      v23[0] = *v27;
      *(v23 + 12) = *&v27[12];
      v22[0] = v24;
      v22[1] = v25;
      DisplayList.GraphicsRenderer.render(item:in:)(v22, a2);
      outlined destroy of DisplayList.Item(&v24);
      v19 = *(v3 + 64);
      if ((v19 & 0xC) != 0)
      {
        v20 = *(v3 + 48);
        if ((*(v3 + 64) & 4) != 0)
        {
          *(v3 + 48) = *(v3 + 56);
        }

        if ((v19 & 8) != 0)
        {
          *(v3 + 56) = v20;
        }
      }

      if (v19)
      {
        *(v3 + 48) = v14;
        *(v3 + 52) = v13;
      }

      if ((v19 & 2) != 0)
      {
        *(v3 + 56) = v15;
      }

      *(v3 + 64) = v16;
      v7 += 5;
      --v6;
    }

    while (v6);
  }

  GraphicsContext.copyOnWrite()();
  return RBDrawingStateSetIdentifier2();
}

void type metadata accessor for DisplayList.ArchiveIDs?()
{
  if (!lazy cache variable for type metadata for DisplayList.ArchiveIDs?)
  {
    type metadata accessor for DisplayList.ArchiveIDs();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?);
    }
  }
}

uint64_t outlined destroy of ViewGraphRenderHost?(uint64_t a1)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_5(0, &lazy cache variable for type metadata for ViewGraphRenderHost?, &lazy cache variable for type metadata for ViewGraphRenderHost, &protocol descriptor for ViewGraphRenderHost, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in ImageRendererHost.render(ifNewerThan:renderer:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t (*)(CGFloat *a1), double), uint64_t a5)
{
  v28 = a5;
  v35 = a4;
  v8 = type metadata accessor for ImageRendererHost();
  type metadata accessor for (DisplayList, DisplayList.Version)();
  ViewRendererHost.updateViewGraph<A>(body:)(closure #1 in closure #1 in ImageRendererHost.render(ifNewerThan:renderer:), 0, v8, v9, &protocol witness table for ImageRendererHost<A>);
  v10 = v32;
  v11 = v33;
  v12 = HIDWORD(v33);
  v13 = v34;
  if ((a3 & 1) == 0 && v34 <= a2)
  {
  }

  swift_beginAccess();
  value = printTree.value;
  if (printTree.value == 2)
  {
    v16 = getenv("SWIFTUI_PRINT_TREE");
    if (!v16)
    {
      printTree.value = 0;
      swift_endAccess();
      goto LABEL_11;
    }

    v17 = atoi(v16);
    printTree.value = v17 != 0;
    swift_endAccess();
    if (!v17)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  swift_endAccess();
  if (value)
  {
LABEL_9:
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18DDA6EB0;
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);
    MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD82C00);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](2618, 0xE200000000000000);
    v29 = v10;
    v30 = v11;
    v31 = v12;
    DisplayList.description.getter();
    MEMORY[0x193ABEDD0](v19, v20, v21);

    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 32) = 0;
    *(v18 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();
  }

LABEL_11:
  v22 = AGGraphGetValue();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v24 = a1;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v35(v13, partial apply for closure #3 in closure #1 in ImageRendererHost.render(ifNewerThan:renderer:), v23);
}

uint64_t ViewRendererHost.updateViewGraph<A>(body:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  specialized static Update.begin()();
  AGGraphClearUpdate();
  closure #1 in ViewRendererHost.updateViewGraph<A>(body:)(v5, a1, a2, a3, a4, a5);
  AGGraphSetUpdate();

  return static Update.end()();
}

uint64_t closure #1 in ViewRendererHost.updateViewGraph<A>(body:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ViewGraphRootValueUpdater.updateGraph()();
  (*(*(a6 + 8) + 8))(a4);
  a2();
}

uint64_t closure #1 in closure #1 in ImageRendererHost.render(ifNewerThan:renderer:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for (DisplayList, DisplayList.Version)();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v3 = *(WeakValue + 8);
    v4 = *(WeakValue + 12);
    v5 = *(WeakValue + 16);
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    result = MEMORY[0x1E69E7CC0];
  }

  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_nTm(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    a2(0);
    v10 = static _DictionaryStorage.allocate(capacity:)();
    v11 = a1 + 32;

    while (1)
    {
      outlined init with copy of (RBDisplayListRenderKey, Any)(v11, &v18, a3, a4);
      v12 = v18;
      result = a5(v18);
      if (v14)
      {
        break;
      }

      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v10[6] + 8 * result) = v12;
      result = outlined init with take of Any(&v19, (v10[7] + 32 * result));
      v15 = v10[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v10[2] = v17;
      v11 += 40;
      if (!--v5)
      {

        return v10;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void type metadata accessor for (RBImageRendererProperty, Any)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void _sSo23RBImageRendererPropertya_yptMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined init with copy of (RBDisplayListRenderKey, Any)(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for (RBImageRendererProperty, Any)(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSAttributedStringKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t RasterizationOptions.resolvedColorMode.getter()
{
  result = *v0;
  if (result == -1)
  {
    v2 = v0[2];
    v3 = ((v2 << 25) >> 31) & 9;
    if ((v2 & 0x40) != 0)
    {
      v4 = 10;
    }

    else
    {
      v4 = 1;
    }

    if ((v2 & 0x40) != 0)
    {
      v5 = 10;
    }

    else
    {
      v5 = 2;
    }

    if (*(v0 + 4) == 1)
    {
      v5 = v4;
    }

    if (*(v0 + 4))
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t GraphicsContext.Storage.Shared.init(list:environment:)(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(v2 + 24) = 0;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  *(v2 + 40) = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  *(v2 + 72) = 0;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOi0_(v12);
  v6 = v12[9];
  *(v2 + 208) = v12[8];
  *(v2 + 224) = v6;
  *(v2 + 240) = v13;
  v7 = v12[5];
  *(v2 + 144) = v12[4];
  *(v2 + 160) = v7;
  v8 = v12[7];
  *(v2 + 176) = v12[6];
  *(v2 + 192) = v8;
  v9 = v12[1];
  *(v2 + 80) = v12[0];
  *(v2 + 96) = v9;
  v10 = v12[3];
  *(v2 + 112) = v12[2];
  *(v2 + 128) = v10;
  *(v2 + 248) = 2;
  *(v2 + 264) = 0;
  *(v2 + 272) = 0;
  *(v2 + 256) = 0;
  *(v2 + 16) = a1;
  *(v2 + 48) = v4;
  *(v2 + 56) = v5;
  *(v2 + 64) = [a1 defaultColorSpace];
  return v2;
}

double _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x1FFFFCFCFE00;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  return result;
}

uint64_t GraphicsContext.copyOnWrite()()
{
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    v2 = *v0;
    v3 = RBDrawingStateInit();
    type metadata accessor for GraphicsContext.Storage();
    v4 = swift_allocObject();
    *(v4 + 32) = xmmword_18DD85500;
    *(v4 + 48) = 1065353216;
    *(v4 + 56) = 0x7FF8000000000000;
    v5 = *(v2 + 16);
    v6 = *(v5 + 64);
    if (v6 == RBDrawingStateGetDefaultColorSpace())
    {
      *(v4 + 16) = v5;
    }

    else
    {
      v7 = v0;
      v8 = RBDrawingStateGetDisplayList();
      v9 = *(v2 + 32);
      v10 = v9;
      v11 = *(v2 + 40);
      if (v9 == 1)
      {
        v10 = *(v5 + 48);
        v11 = *(v5 + 56);
      }

      v12[0] = v10;
      v12[1] = v11;
      type metadata accessor for GraphicsContext.Storage.Shared();
      swift_allocObject();
      outlined copy of EnvironmentValues?(v9);
      *(v4 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v8, v12);
      v0 = v7;
    }

    *(v4 + 24) = v3;
    *(v4 + 64) = 1;
    *(v4 + 48) = *(v2 + 48);
    *(v4 + 52) = *(v2 + 52);

    *v0 = v4;
  }

  return result;
}

uint64_t GraphicsContext.Storage.Shared.deinit()
{

  v1 = *(v0 + 224);
  v7[8] = *(v0 + 208);
  v7[9] = v1;
  v8 = *(v0 + 240);
  v2 = *(v0 + 160);
  v7[4] = *(v0 + 144);
  v7[5] = v2;
  v3 = *(v0 + 192);
  v7[6] = *(v0 + 176);
  v7[7] = v3;
  v4 = *(v0 + 96);
  v7[0] = *(v0 + 80);
  v7[1] = v4;
  v5 = *(v0 + 128);
  v7[2] = *(v0 + 112);
  v7[3] = v5;
  outlined destroy of GraphicsContext.Shading?(v7, &lazy cache variable for type metadata for GraphicsContext.ResolvedShading?, &type metadata for GraphicsContext.ResolvedShading);

  return v0;
}

void type metadata accessor for GraphicsContext.Shading?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id RBShape.setPath(_:style:shapeDistance:)(double *a1, char a2, double a3)
{
  v6 = *a1;
  v7 = *(a1 + 32);
  if (v7 <= 1)
  {
    if (!*(a1 + 32))
    {
      [v3 setRect_];
      return RBShape.setRenderingMode(style:shapeDistance:)(a3);
    }

    if (v7 == 1)
    {
      [v3 setEllipseInRect_];
      return RBShape.setRenderingMode(style:shapeDistance:)(a3);
    }

LABEL_10:
    v10 = Path.retainRBPath()();
    v24[0] = 0x3FF0000000000000;
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = 0x3FF0000000000000;
    v24[4] = 0;
    v24[5] = 0;
    [v3 setRBPath:v10 transform:{v11, v24}];
    [v3 setEOFill_];
    RBPathRelease();
    return RBShape.setRenderingMode(style:shapeDistance:)(a3);
  }

  if (v7 != 2)
  {
    v8 = *(a1 + 1) | v6 | *(a1 + 2) | *(a1 + 3);
    if (v7 == 6 && v8 == 0)
    {
      [v3 setEmpty];
      return RBShape.setRenderingMode(style:shapeDistance:)(a3);
    }

    goto LABEL_10;
  }

  v12 = *(v6 + 16);
  v13 = *(v6 + 24);
  v14 = *(v6 + 32);
  v15 = *(v6 + 40);
  v16 = *(v6 + 48);
  v17 = *(v6 + 56);
  v18 = *(v6 + 64);
  v25.origin.x = v12;
  v25.origin.y = v13;
  v25.size.width = v14;
  v25.size.height = v15;
  v19 = fabs(CGRectGetWidth(v25)) * 0.5;
  v26.origin.x = v12;
  v26.origin.y = v13;
  v26.size.width = v14;
  v26.size.height = v15;
  v20 = fabs(CGRectGetHeight(v26)) * 0.5;
  if (v20 >= v19)
  {
    v20 = v19;
  }

  if (v20 >= v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = v20;
  }

  if (v20 >= v17)
  {
    v22 = v17;
  }

  else
  {
    v22 = v20;
  }

  [v3 setRoundedRect:v18 cornerSize:v12 cornerStyle:{v13, v14, v15, v21, v22}];
  return RBShape.setRenderingMode(style:shapeDistance:)(a3);
}

id RBShape.setRenderingMode(style:shapeDistance:)(double a1)
{
  if ((~*&a1 & 0x7FF0000000000000) != 0 || (*&a1 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    if (a1 < 0.0)
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    v4 = a1;
    [v1 setRenderingMode_];
    a1 = fabs(v4);
    v5 = sel_setRenderingModeArgument_;
    v6 = v1;
  }

  else
  {
    v5 = sel_setRenderingMode_;
    v6 = v1;
  }

  return [v6 v5];
}

uint64_t GraphicsContext.draw(_:with:style:)(double *a1, __int128 *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  v8 = a3[1];
  v10 = a3[2];
  v9 = a3[3];
  v11 = a3[4];
  v12 = *(a3 + 40);
  v13 = a2[9];
  v98[8] = a2[8];
  v98[9] = v13;
  v99 = *(a2 + 20);
  v14 = a2[5];
  v98[4] = a2[4];
  v98[5] = v14;
  v15 = a2[7];
  v98[6] = a2[6];
  v98[7] = v15;
  v16 = a2[1];
  v98[0] = *a2;
  v98[1] = v16;
  v17 = a2[3];
  v98[2] = a2[2];
  v98[3] = v17;
  v18 = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOg(v98);
  if (v18 == 8)
  {
    result = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v98);
    v30 = *result;
    if (*(*result + 16))
    {
      v31 = *(v30 + 160);
      v83 = *(v30 + 144);
      v84 = v31;
      v86 = *(v30 + 192);
      v32 = *(v30 + 160);
      v85 = *(v30 + 176);
      v33 = *(v30 + 96);
      v79 = *(v30 + 80);
      v80 = v33;
      v34 = *(v30 + 112);
      v82 = *(v30 + 128);
      v35 = *(v30 + 96);
      v81 = *(v30 + 112);
      v36 = *(v30 + 48);
      v76 = *(v30 + 32);
      v77 = v36;
      v78 = *(v30 + 64);
      v37 = *(v30 + 176);
      v73 = v32;
      v74 = v37;
      v75 = *(v30 + 192);
      v69 = v35;
      v70 = v34;
      v38 = *(v30 + 144);
      v71 = *(v30 + 128);
      v72 = v38;
      v39 = *(v30 + 48);
      v65 = *(v30 + 32);
      v66 = v39;
      v40 = *(v30 + 80);
      v67 = *(v30 + 64);
      v68 = v40;
      v63[0] = v7;
      v63[1] = v8;
      v63[2] = v10;
      v63[3] = v9;
      v63[4] = v11;
      v64 = v12;
      outlined init with copy of GraphicsContext.ResolvedShading(&v76, &v87);
      GraphicsContext.draw(_:with:style:)(a1, &v65, v63, a4);
      v95 = v73;
      v96 = v74;
      v97 = v75;
      v91 = v69;
      v92 = v70;
      v93 = v71;
      v94 = v72;
      v87 = v65;
      v88 = v66;
      v89 = v67;
      v90 = v68;
      return outlined destroy of GraphicsContext.ResolvedShading(&v87);
    }

    else
    {
      __break(1u);
    }
  }

  else if (v18 == 4)
  {
    v28 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v98);
    v91 = *(v28 + 64);
    v92 = *(v28 + 80);
    v93 = *(v28 + 96);
    *&v94 = *(v28 + 112);
    v87 = *v28;
    v88 = *(v28 + 16);
    v89 = *(v28 + 32);
    v90 = *(v28 + 48);
    *&v76 = v7;
    *(&v76 + 1) = v8;
    *&v77 = v10;
    *(&v77 + 1) = v9;
    *&v78 = v11;
    BYTE8(v78) = v12;
    v65 = 0u;
    v66 = 0u;
    LOBYTE(v67) = 1;
    return _ShapeStyle_Pack.Style.draw(_:style:in:bounds:)(a1, &v76, a4, &v65);
  }

  else if (v18)
  {
    v41 = v11;
    v42 = a1;
    v43 = *(*(a4 + 16) + 32);
    if (v12)
    {
      *&v76 = v7;
      *(&v76 + 1) = v8;
      *&v77 = v10;
      *(&v77 + 1) = v9;
      *&v78 = v41;
      v44 = v43;
      RBShape.setStrokedPath(_:style:)(v42, &v76, v45, v46, v47, v48);
    }

    else
    {
      v55 = *(a4 + 56);
      v56 = v43;
      RBShape.setPath(_:style:shapeDistance:)(v42, v7 & 1, v55);
    }

    v57 = a2[9];
    v95 = a2[8];
    v96 = v57;
    v97 = *(a2 + 20);
    v58 = a2[5];
    v91 = a2[4];
    v92 = v58;
    v59 = a2[7];
    v93 = a2[6];
    v94 = v59;
    v60 = a2[1];
    v87 = *a2;
    v88 = v60;
    v61 = a2[3];
    v89 = a2[2];
    v90 = v61;
    GraphicsContext.Storage.Shared.setShading(_:)(&v87);
    return RBDrawingStateDrawShape();
  }

  else
  {
    v19 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v98);
    v20 = *(v19 + 16);
    v62 = *v19;
    v76 = *v19;
    LODWORD(v77) = v20;
    v21 = *(a4 + 16);
    v22 = *(v21 + 32);
    if (v12)
    {
      *&v87 = v7;
      *(&v87 + 1) = v8;
      *&v88 = v10;
      *(&v88 + 1) = v9;
      *&v89 = v11;
      v23 = v22;
      RBShape.setStrokedPath(_:style:)(a1, &v87, v24, v25, v26, v27);
    }

    else
    {
      v49 = *(a4 + 56);
      v50 = v22;
      RBShape.setPath(_:style:shapeDistance:)(a1, v7 & 1, v49);
    }

    RBDrawingStateInit();
    RBDrawingStateClipShape();
    RBDrawingStateBeginLayer();
    if (*(&v62 + 3) != 0.0)
    {
      [*(v21 + 32) setInfinite];
      GraphicsContext.Storage.Shared.setColor(_:)(&v76, v51, v52, v53, v54);
      RBDrawingStateDrawShape();
    }

    RBDrawingStateDrawLayer();
    return RBDrawingStateDestroy();
  }

  return result;
}

uint64_t *GraphicsContext.Storage.Shared.setShading(_:)(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v53[8] = *(a1 + 128);
  v53[9] = v2;
  v54 = *(a1 + 160);
  v3 = *(a1 + 80);
  v53[4] = *(a1 + 64);
  v53[5] = v3;
  v4 = *(a1 + 112);
  v53[6] = *(a1 + 96);
  v53[7] = v4;
  v5 = *(a1 + 16);
  v53[0] = *a1;
  v53[1] = v5;
  v6 = *(a1 + 48);
  v53[2] = *(a1 + 32);
  v53[3] = v6;
  v7 = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOg(v53);
  v8 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(v53);
  if (v7 > 3)
  {
    if (v7 <= 5)
    {
      if (v7 == 5)
      {
        v22 = *v8;
        v23 = *(v8 + 8);
        v24 = *(v8 + 12);
        v25 = *(v8 + 16);
        v26 = *(v8 + 72);
        v27 = *(v8 + 76);
        v28 = *(v8 + 40);
        v47 = *(v8 + 24);
        v48 = v28;
        v49 = *(v8 + 56);
        LOBYTE(v50) = v26;
        v29 = *(v1 + 64);
        v30 = ResolvedGradient.constantColor.getter();
        if ((v32 & 0x100000000) == 0)
        {
          v44 = v30;
          v45 = v31;
          v46 = v32;
          return GraphicsContext.Storage.Shared.setColor(_:)(&v44, v33, v34, v35, v36);
        }

        v44 = v22;
        LOBYTE(v45) = v23;
        HIDWORD(v45) = v24;
        LOBYTE(v46) = v25;

        specialized withGradient(_:in:do:)(&v44, v29, v1, &v47, v27, closure #1 in GraphicsContext.Storage.Shared.setGradient(_:geometry:options:in:colorSpace:)partial apply, closure #1 in withGradient(_:in:do:)partial apply, closure #2 in withGradient(_:in:do:)partial apply);
      }
    }

    else
    {
      if (v7 == 6)
      {
        v14 = *(v8 + 72);
        v15 = *(v8 + 80);
        v16 = *(v8 + 88);
        v17 = *(v8 + 96);
        v48 = *(v8 + 16);
        v49 = *(v8 + 32);
        v50 = *(v8 + 48);
        *&v51 = *(v8 + 64);
        v47 = *v8;
        return GraphicsContext.Storage.Shared.setMeshGradient(_:in:)(&v47, v14, v15, v16, v17);
      }

      if (v7 == 7)
      {
        v37 = *(v8 + 112);
        v38 = *(v8 + 120);
        v39 = *(v8 + 128);
        v40 = *(v8 + 136);
        v41 = *(v8 + 144);
        v42 = *(v8 + 152);
        v43 = *(v8 + 160);
        v50 = *(v8 + 48);
        v51 = *(v8 + 64);
        v52[0] = *(v8 + 80);
        *(v52 + 12) = *(v8 + 92);
        v47 = *v8;
        v48 = *(v8 + 16);
        v49 = *(v8 + 32);
        RBFill.setRepeatedImage(_:origin:scale:sourceRect:in:)(&v47, *(v1 + 64), v37, v38, v43, v39, v40, v41, v42);
        *(v1 + 272) = 0;
      }
    }

    goto LABEL_20;
  }

  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      LODWORD(v9) = *(v8 + 16);
      v47 = *v8;
      LODWORD(v48) = LODWORD(v9);
      return GraphicsContext.Storage.Shared.setColor(_:)(&v47, v9, *&v47, v11, v12);
    }

    if (v7 == 2)
    {
      LODWORD(v9) = *v8;
      LODWORD(v10) = *(v8 + 4);
      LODWORD(v11) = *(v8 + 8);
      LODWORD(v12) = *(v8 + 12);
      [*(v1 + 40) setColor:1 colorSpace:{v9, v10, v11, v12}];
      *(v1 + 272) = 0;
    }

LABEL_20:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v18 = *v8;
  v19 = *(v8 + 24);
  v20 = *(v8 + 32);
  v21 = *(v8 + 48);
  v47 = v20;
  v48 = v21;
  if (v18)
  {
    return [*(v1 + 40) setShader:v18 bounds:&v47 flags:v19 & 1];
  }

  LODWORD(v20) = *MEMORY[0x1E69C7148];
  LODWORD(v21) = *(MEMORY[0x1E69C7148] + 4);
  LODWORD(v11) = *(MEMORY[0x1E69C7148] + 8);
  LODWORD(v12) = *(MEMORY[0x1E69C7148] + 12);
  return [*(v1 + 40) setColor_];
}

void closure #1 in ImageRendererHost.cgImage.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(a4 + 128) = a1;
  v9 = (a4 + *(*a4 + 240));
  swift_beginAccess();
  v10 = *v9;
  if (v9[1])
  {

    v11 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10);
  }

  else
  {
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v9);
    if (v12)
    {
      v11 = v12[9];
    }

    else
    {
      v11 = 1.0;
    }
  }

  swift_endAccess();
  swift_beginAccess();
  *(a4 + 120) = v11;
  swift_beginAccess();
  *(a4 + 104) = a5;
  *(a4 + 112) = a6;
  swift_beginAccess();
  *(a4 + 144) = 0;
  swift_unknownObjectRelease();
  v13 = *(a4 + 104);
  v14 = *(a4 + 112);
  v15 = *(a4 + 120);
  v16 = *(a4 + 16);
  v49 = *(a4 + 21);
  v47 = *(a4 + 21);
  v48 = *(a4 + 20);
  v17 = *(a4 + 24);
  v18 = *(a4 + 28);
  v50 = v9[1];
  v51 = *v9;
  if (v17)
  {
    v19 = *(a4 + 16);
    v20 = objc_opt_self();

    v21 = v20;
    v16 = v19;
    v22 = [v21 sharedDefaultDevice];
    if (v22)
    {
      v23 = v22;
      swift_unknownObjectRetain();
      goto LABEL_11;
    }
  }

  else
  {
  }

  v23 = [objc_opt_self() sharedDevice];
LABEL_11:
  type metadata accessor for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>, &lazy cache variable for type metadata for (RBImageRendererProperty, Any), type metadata accessor for RBImageRendererProperty);
  inited = swift_initStackObject();
  v25 = *MEMORY[0x1E69C71B8];
  *(inited + 32) = *MEMORY[0x1E69C71B8];
  v26 = MEMORY[0x1E69E7DE0];
  *(inited + 16) = xmmword_18DDACA80;
  *(inited + 40) = v15;
  v27 = *MEMORY[0x1E69C7198];
  *(inited + 64) = v26;
  *(inited + 72) = v27;
  LODWORD(aBlock) = v16;
  BYTE4(aBlock) = v48;
  BYTE5(aBlock) = v47;
  DWORD2(aBlock) = v17;
  BYTE12(aBlock) = v18;
  v28 = RasterizationOptions.resolvedColorMode.getter();
  v29 = MEMORY[0x1E69E72F0];
  *(inited + 80) = v28;
  v30 = *MEMORY[0x1E69C71A8];
  *(inited + 104) = v29;
  *(inited + 112) = v30;
  v31 = MEMORY[0x1E69E6370];
  *(inited + 120) = (v17 & 2) != 0;
  v32 = *MEMORY[0x1E69C7188];
  *(inited + 144) = v31;
  *(inited + 152) = v32;
  *(inited + 184) = v29;
  *(inited + 160) = 1;
  v33 = v25;
  v34 = v27;
  v35 = v30;
  v36 = v32;
  v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23RBImageRendererPropertya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _sSo23RBImageRendererPropertya_yptMaTm_0(0, &lazy cache variable for type metadata for (RBImageRendererProperty, Any), type metadata accessor for RBImageRendererProperty);
  swift_arrayDestroy();
  v38 = *MEMORY[0x1E69C71C0];
  v39 = dword_18DDEDA20[v49];
  v56 = MEMORY[0x1E69E6448];
  LODWORD(aBlock) = v39;
  outlined init with take of Any(&aBlock, v60);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v37;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v60, v38, isUniquelyReferenced_nonNull_native);
  type metadata accessor for RBImageRendererProperty(0);
  lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type RBImageRendererProperty and conformance RBImageRendererProperty, type metadata accessor for RBImageRendererProperty);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v42 = swift_allocObject();
  v42[2] = v51;
  v42[3] = v50;
  v42[4] = a2;
  v42[5] = a3;
  v43 = swift_allocObject();
  *(v43 + 16) = partial apply for closure #1 in static CGImageRef.render(size:scale:environment:options:backgroundGPUMode:renderer:);
  *(v43 + 24) = v42;
  v57 = partial apply for thunk for @callee_guaranteed (@guaranteed RBDisplayList) -> ();
  v58 = v43;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v55 = thunk for @escaping @callee_guaranteed (@guaranteed RBDisplayList) -> ();
  v56 = &block_descriptor_28;
  v44 = _Block_copy(&aBlock);

  v45 = [v23 renderImageInRect:isa options:v44 renderer:{0.0, 0.0, v13, v14}];
  swift_unknownObjectRelease();

  _Block_release(v44);
  swift_unknownObjectRelease();

  LOBYTE(isa) = swift_isEscapingClosureAtFileLocation();

  if (isa)
  {
    __break(1u);
  }

  else
  {
    v46 = *(a4 + 96);
    *(a4 + 96) = v45;
  }
}

uint64_t sub_18D1977C4()
{

  return swift_deallocObject();
}

void type metadata accessor for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    _sSo23RBImageRendererPropertya_yptMaTm_0(255, a3, a4);
    v5 = type metadata accessor for _ContiguousArrayStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed RBDisplayList) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t closure #1 in static CGImageRef.render(size:scale:environment:options:backgroundGPUMode:renderer:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  type metadata accessor for GraphicsContext.Storage();
  v8 = swift_allocObject();
  *(v8 + 32) = xmmword_18DD85500;
  *(v8 + 48) = 1065353216;
  *(v8 + 56) = 0x7FF8000000000000;
  v11[0] = a2;
  v11[1] = a3;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();

  v9 = a1;

  *(v8 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v9, v11);
  *(v8 + 24) = RBDisplayListGetState();
  *(v8 + 64) = 0;
  v11[0] = v8;
  a4(v11);
}

uint64_t closure #3 in closure #1 in ImageRendererHost.render(ifNewerThan:renderer:)(CGFloat *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 88);
  v6 = *(v5 + 64);
  *(v5 + 72) = xmmword_18DDAB910;
  v12 = a3;
  v13 = a4;
  v14 = HIDWORD(a4);

  v7 = *(v5 + 48);
  v8 = *(v5 + 56);
  DisplayList.GraphicsRenderer.render(list:in:)(&v12, a1);
  swift_beginAccess();

  v9 = MEMORY[0x1E69E7CC8];
  *(v5 + 16) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;
  *(v5 + 40) = v9;
  *(v5 + 16) = v10;
  swift_endAccess();
  *(v5 + 48) = v7;
  *(v5 + 56) = v8;
  *(v5 + 64) = v6;
}

uint64_t LinearGradient._Paint.draw(path:style:in:bounds:)(double *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 4);
  v8 = *(a2 + 40);
  v9 = *v4;
  v10 = *(v4 + 8);
  v11 = *(v4 + 3);
  v12 = *(v4 + 16);
  v13 = *(v4 + 3);
  v14 = *(v4 + 5);
  v32 = a2[1];
  v33 = *a2;
  if ((*(a4 + 32) & 1) == 0)
  {
    v15 = *a4;
    v17 = *(a4 + 16);
    goto LABEL_6;
  }

  v15 = *a1;
  v16 = *(a1 + 32);
  if (v16 <= 2)
  {
    v17 = *(a1 + 2);
    if (v16 >= 2)
    {
      v15 = *(*&v15.f64[0] + 16);
      v17 = *(*a1 + 32);
    }

    goto LABEL_6;
  }

  if (v16 != 5)
  {
    if (v16 != 6)
    {
      goto LABEL_19;
    }

    v15 = *MEMORY[0x1E695F050];
    v17 = *(MEMORY[0x1E695F050] + 16);
LABEL_6:
    v48 = v12;
    *&v49 = v9;
    BYTE8(v49) = v10;
    HIDWORD(v49) = v11;
    v50[0] = v12;
    *&v50[8] = vaddq_f64(v15, vmulq_f64(v13, v17));
    *&v50[24] = vaddq_f64(v15, vmulq_f64(v14, v17));
    *&v50[40] = 0;
    *&v51 = 0;
    BYTE8(v51) = 0;
    HIDWORD(v51) = 0;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi4_(&v49);
    v45 = v55;
    v46 = v56;
    v47 = v57;
    v41 = v51;
    v42 = v52;
    v43 = v53;
    v44 = v54;
    v37 = v49;
    v38 = *v50;
    v39 = *&v50[16];
    v40 = *&v50[32];
    v34[0] = v33;
    v34[1] = v32;
    v35 = v7;
    v36 = v8;

    GraphicsContext.draw(_:with:style:)(a1, &v37, v34, a3);
    v58[8] = v45;
    v58[9] = v46;
    v59 = v47;
    v58[4] = v41;
    v58[5] = v42;
    v58[6] = v43;
    v58[7] = v44;
    v58[0] = v37;
    v58[1] = v38;
    v58[2] = v39;
    v58[3] = v40;
    return outlined destroy of GraphicsContext.ResolvedShading(v58);
  }

  v19 = *a1;
  v30 = *(v4 + 3);
  v31 = *(v4 + 5);
  if (*(*&v15.f64[0] + 16))
  {
    if (*(*&v15.f64[0] + 16) == 1)
    {

      RBPathGetBoundingRect();
    }

    else
    {

      v20 = MEMORY[0x193AC3640](*&v19 + 24);
    }

    width = v22;
    x = v20;
    y = v21;
    height = v23;
    goto LABEL_17;
  }

  v24 = *(*&v15.f64[0] + 24);
  if (v24)
  {
    v25 = v24;

    PathBoundingBox = CGPathGetPathBoundingBox(v25);
    width = PathBoundingBox.size.width;
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    height = PathBoundingBox.size.height;

LABEL_17:
    outlined destroy of Path(a1);
    v17.f64[0] = width;
    v15.f64[0] = x;
    v15.f64[1] = y;
    v17.f64[1] = height;
    v13 = v30;
    v14 = v31;
    goto LABEL_6;
  }

  __break(1u);
LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _AnyResolvedPaint.draw(path:style:in:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v11 = v6;
  v12 = v7;
  return (*(*(v5 + 192) + 32))(a1, v10, a3, a4, *(v5 + 184));
}

void specialized withGradient(_:in:do:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void (*a7)(void), uint64_t (*a8)(uint64_t, uint64_t))
{
  v99 = *MEMORY[0x1E69E9840];
  v96 = a3;
  v97 = a4;
  v98 = a5;
  v12 = *a1;
  v13 = *(*a1 + 16);
  if (!v13)
  {
    v14 = 0;
    v17 = 1;
    goto LABEL_11;
  }

  LOBYTE(v14) = 0;
  v15 = v12 + 72;
  v16 = 1 - v13;
  v17 = 5;
  while ((v14 & 1) != 0)
  {
    v14 = 1;
    if (!v16)
    {
      goto LABEL_11;
    }

LABEL_4:
    ++v16;
    v15 += 48;
    if (v16 == 1)
    {
      goto LABEL_57;
    }
  }

  v14 = *v15 ^ 1;
  if (v16)
  {
    goto LABEL_4;
  }

  if (*v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = 5;
  }

LABEL_11:
  MEMORY[0x1EEE9AC00](a1);
  v8 = v79;
  v79[2] = v12;
  v80 = v18;
  v81 = v19;
  v82 = v20;
  v83 = a2;
  v84 = v14;
  MEMORY[0x1EEE9AC00](v21);
  v9 = v71;
  v71[2] = v12;
  v72 = v27;
  v73 = v25;
  v74 = v26;
  v75 = v14;
  v76 = v28;
  v77 = &v95;
  v78 = v13;
  if (!v13)
  {
    return;
  }

  if (v13 >> 59)
  {
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v89 = v27;
  v90 = v24;
  v91 = v26;
  v86 = v25;
  v92 = v23;
  if ((16 * v13) >= 1025)
  {
    goto LABEL_58;
  }

LABEL_14:
  MEMORY[0x1EEE9AC00](v22);
  v93 = v71 - v33;
  if ((v13 * v17) >> 60)
  {
    goto LABEL_63;
  }

  v88 = v32;
  if ((8 * v13 * v17) >= 1025)
  {
    v87 = v30;
    v85 = v31;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v68 = v87;
      v69 = v85;
      v70 = swift_slowAlloc();
      closure #1 in closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v70, v13 * v17, v13, v68, v8, v93, v13, v17, v69);
      MEMORY[0x193AC4820](v70, -1, -1);
      return;
    }
  }

  v87 = v71;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v8 = v71 - v34;
  v35 = 0;
  v12 += 72;
  v36 = (v93 + 8);
  do
  {
    v9 = v35 * v17;
    if ((v35 * v17) >> 64 != (v35 * v17) >> 63)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      v87 = a7;
      v65 = a8;
      v22 = swift_stdlib_isStackAllocationSafe();
      if ((v22 & 1) == 0)
      {
        v66 = v87;
        v67 = swift_slowAlloc();
        closure #1 in withGradientStorage(count:valuesPerLocation:element:do:)(v67, v13, v13, v17, v66, v8, v65, v9);
        MEMORY[0x193AC4820](v67, -1, -1);
        return;
      }

      goto LABEL_14;
    }

    v41 = *(v12 - 10);
    v42 = *(v12 - 9);
    v43 = *(v12 - 8);
    v44 = *(v12 - 7);
    if (a2 != 2)
    {
      RBColorFromLinear();
    }

    v45 = &v8[8 * v9];
    *(v36 - 2) = v41;
    *(v36 - 1) = v42;
    *v36 = v43;
    v36[1] = v44;
    *v45 = *(v12 - 3);
    if (v14)
    {
      if (*v12)
      {
        v38 = 0.0;
        v40 = 1.0;
        v39 = 1.0;
        v37 = 0.0;
      }

      else
      {
        v37 = *(v12 - 4);
        v38 = *(v12 - 3);
        v39 = *(v12 - 2);
        v40 = *(v12 - 1);
      }

      *(v45 + 1) = v37;
      *(v45 + 2) = v38;
      *(v45 + 3) = v39;
      *(v45 + 4) = v40;
    }

    ++v35;
    v12 += 48;
    v36 += 4;
  }

  while (v13 != v35);
  if (v89)
  {
    v46 = v92;
    v47 = v91;
    v48 = v90;
    if (v89 == 1)
    {
      if (v14)
      {
        v49 = 576;
      }

      else
      {
        v49 = 64;
      }
    }

    else if (v14)
    {
      v49 = 704;
    }

    else
    {
      v49 = 192;
    }
  }

  else
  {
    v46 = v92;
    v47 = v91;
    v48 = v90;
    if (v14)
    {
      v49 = 640;
    }

    else
    {
      v49 = 128;
    }
  }

  v50 = RBGradientFlags.union(_:)(v48, v49);
  v51 = *a4;
  v52 = *(a4 + 8);
  v53 = *(a4 + 16);
  v54 = *(a4 + 24);
  v55 = *(a4 + 32);
  v56 = *(a4 + 40);
  v57 = *(a4 + 48);
  v58 = *(v46 + 40);
  if (v57 > 2)
  {
    if (v57 == 3)
    {
      v60 = v51;
      v61 = v52;
      v62 = v53;
      [*(v46 + 40) setRadialGradientCenter:v13 startRadius:v93 endRadius:v8 stopCount:v50 colors:0.0 locations:0.0 flags:{v55, v56}];
      v100.origin.x = v60;
      v100.origin.y = v61;
      v100.size.width = v62;
      v100.size.height = v54;
      Width = CGRectGetWidth(v100);
      v101.origin.x = v60;
      v101.origin.y = v61;
      v101.size.width = v62;
      v101.size.height = v54;
      Height = CGRectGetHeight(v101);
      *v94 = Width;
      v94[1] = 0;
      v94[2] = 0;
      *&v94[3] = Height;
      *&v94[4] = v60;
      *&v94[5] = v61;
      [v58 concat_];
      if (v47)
      {
        goto LABEL_54;
      }
    }

    else if (v57 == 4)
    {
      [*(v46 + 40) setConicGradientCenter:v13 angle:v93 stopCount:v8 colors:v50 locations:v51 flags:{v52, v53}];
      if (v47)
      {
        goto LABEL_54;
      }
    }

    else
    {
      [*(v46 + 40) setAngularGradientCenter:v13 startAngle:v93 endAngle:0 stopCount:v8 colors:v50 colorSpace:v51 locations:v52 flags:{v53, v54, v55, v56}];
      if (v47)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_53;
  }

  if (!v57)
  {
    [*(v46 + 40) setAxialGradientStartPoint:v13 endPoint:v93 stopCount:v8 colors:v50 locations:v51 flags:{v52, v53, v54, v55, v56}];
LABEL_46:
    if (v47)
    {
      goto LABEL_54;
    }

LABEL_53:
    LODWORD(v59) = v86;
    [v58 setHeadroom_];
    goto LABEL_54;
  }

  if (v57 == 1)
  {
    [*(v46 + 40) setRadialGradientCenter:v13 startRadius:v93 endRadius:v8 stopCount:v50 colors:v51 locations:v52 flags:{v53, v54, v55, v56}];
    goto LABEL_46;
  }

  [*(v46 + 40) setRadialGradientStartCenter:v13 startRadius:v93 endCenter:v8 endRadius:v50 stopCount:v51 colors:v52 locations:v53 flags:{v54, v55, v56}];
  if ((v47 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_54:
  *(v46 + 272) = 0;
}

uint64_t RBGradientFlags.union(_:)(char a1, unsigned int a2)
{
  v2 = a2 & 0xFFFFFFF8 | 1;
  if ((a1 & 1) == 0)
  {
    v2 = a2;
  }

  v3 = a2 & 0xFFFFFFF8 | 2;
  if ((a1 & 2) == 0)
  {
    v3 = v2;
  }

  if ((a1 & 4) != 0)
  {
    v3 = v3 & 0xFFFFFF3F | 0x40;
  }

  if ((v3 & 0xF00) != 0 || (a1 & 8) == 0)
  {
    return v3;
  }

  else
  {
    return v3 | 0x400;
  }
}

double one-time initialization function for resizable()
{
  result = 0.0;
  static Image.ResizingInfo.resizable = 0u;
  unk_1EAB12458 = 0u;
  byte_1EAB12468 = 1;
  return result;
}

BOOL specialized GraphicsContext.drawAsVector(image:rect:style:shading:)(uint64_t a1, __int128 *a2, double *a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = COERCE_DOUBLE(v245);
  v13 = *a2;
  *&v245[16] = a2[1];
  v14 = a2[3];
  *&v245[32] = a2[2];
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 44);
  v18 = *(a1 + 52);
  *&v245[48] = v14;
  *&v245[57] = *(a2 + 57);
  v19 = *(a1 + 60);
  LOBYTE(v20) = *(a1 + 64);
  v21 = v9 & 0xFE;
  *v245 = v13;
  if (v21 == 2)
  {
    v162 = v19;
    RBDrawingStateBeginLayer();
    b = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    if (v10 != 0.0)
    {
      if (v16 <= 3)
      {
        v25 = v15;
      }

      else
      {
        v25 = v11;
      }

      if (v16 <= 3)
      {
        v26 = v11;
      }

      else
      {
        v26 = v15;
      }

      v23 = 1.0 / v10 * v26;
      v24 = 1.0 / v10 * v25;
    }

    a = a6 / v23;
    d = a7 / v24;
    if (v16)
    {
      specialized CGAffineTransform.init(orientation:in:)(v16, v242, a6, a7);
      v29 = v243;
      v30 = v244;
      CGAffineTransformMakeTranslation(&t1, a4, a5);
      tx = t1.tx;
      ty = t1.ty;
      v163 = *&t1.c;
      v165 = *&t1.a;
      CGAffineTransformMakeTranslation(&t1, -a4, -a5);
      *&t2.a = v242[0];
      *&t2.c = v242[1];
      t2.tx = v29;
      t2.ty = v30;
      CGAffineTransformConcat(&v212, &t1, &t2);
      t1 = v212;
      *&t2.a = v165;
      *&t2.c = v163;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&v212, &t1, &t2);
      t1 = v212;
      CGAffineTransformInvert(&t2, &t1);
      t1.a = a6 / v23;
      t1.c = 0.0;
      t1.b = 0.0;
      t1.d = a7 / v24;
      t1.tx = a4;
      t1.ty = a5;
      CGAffineTransformConcat(&v212, &t1, &t2);
      a = v212.a;
      b = v212.b;
      c = v212.c;
      d = v212.d;
      v34 = v212.tx;
      v35 = v212.ty;
    }

    else
    {
      c = 0.0;
      v34 = a4;
      v35 = a5;
    }

    v36 = v8[2];
    if (v9 == 2)
    {
      v37 = v8[4];
      v38 = v8[6];
      v39 = d;
      RBDrawingStateGetCTM();
      v171 = *&t1.a;
      v173 = *&t1.c;
      v167 = t1.tx;
      v40 = t1.ty;
      v41 = v36;
      v155 = v37;
      outlined copy of Image.Location(v37);
      v153 = v38;
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = v39;
      t1.tx = v34;
      t1.ty = v35;
      RBDrawingStateConcatCTM();
      v42 = [v41 renderingMode];
      v43 = a6;
      v44 = a4;
      v45 = a5;
      v154 = v41;
      if (v42 != 255)
      {
        goto LABEL_36;
      }

      v46 = *v245;
      switch(v245[72])
      {
        case 4:
          v58 = *(a3 + 4);
          if (v58 == 1)
          {
            v59 = *(a3 + 2);
            v60 = *(v59 + 48);
            v61 = *(v59 + 56);
          }

          else
          {
            v61 = *(a3 + 5);
            v60 = *(a3 + 4);
          }

          outlined init with copy of GraphicsContext.Shading?(v245, &t1);
          outlined init with copy of GraphicsContext.Shading?(v245, &t1);
          outlined copy of EnvironmentValues?(v58);
          v62 = specialized ShapeStyle.isMultiLevel(in:)(v60, v61, v46);

          outlined destroy of GraphicsContext.Shading?(v245, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
          outlined destroy of GraphicsContext.Shading?(v245, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
          if (!v62)
          {
LABEL_34:
            if (one-time initialization token for preferredIfEnabled != -1)
            {
              goto LABEL_142;
            }

            goto LABEL_35;
          }

          break;
        case 8:
          if (*(*v245 + 16) <= 1uLL)
          {
            goto LABEL_34;
          }

          break;
        case 0xA:
          v47 = vorrq_s8(vorrq_s8(*&v245[8], *&v245[40]), vorrq_s8(*&v245[24], *&v245[56]));
          if (*&vorr_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL)) | *v245)
          {
            goto LABEL_34;
          }

          v48 = *(a3 + 4);
          if (v48 == 1)
          {
            v49 = *(a3 + 2);
            v50 = *(v49 + 48);
            v51 = *(v49 + 56);
          }

          else
          {
            v51 = *(a3 + 5);
            v50 = *(a3 + 4);
          }

          outlined init with copy of GraphicsContext.Shading?(v245, &t1);
          outlined copy of EnvironmentValues?(v48);

          v152 = specialized ShapeStyle.isMultiLevel(in:)(v50, v51);

          outlined destroy of GraphicsContext.Shading?(v245, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
          if (!v152)
          {
            goto LABEL_34;
          }

          break;
        default:
          goto LABEL_34;
      }

      v42 = 4;
LABEL_36:
      v63 = [v41 beginUpdateWithRenderingMode_];
      v41 = v63;
      v64 = **&v12;
      *&v239.c = *(*&v12 + 16);
      v65 = *(*&v12 + 48);
      *&v239.tx = *(*&v12 + 32);
      v240 = v65;
      v241 = *&v245[64];
      *&v239.a = v64;
      v66 = v245[72];
      if (v245[72] == 255)
      {
        v69 = v167;
        if (v20)
        {
          LODWORD(v17) = 1065353216;
          v74 = 2143289344;
          LODWORD(v75) = 1065353216;
          *&v18 = 1065353216;
          LODWORD(v76) = 1065353216;
        }

        else
        {
          v75 = HIDWORD(v17);
          v76 = HIDWORD(*&v18);
          v74 = v162;
        }

        *&t2.a = __PAIR64__(v75, v17);
        *&t2.b = __PAIR64__(v76, LODWORD(v18));
        LODWORD(t2.c) = v74;
        _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&t2);
        v235 = v226;
        v236 = v227;
        v237 = v228;
        v231 = v222;
        v232 = v223;
        v233 = v224;
        v234 = v225;
        t1 = t2;
        v238 = v229;
        v20 = a3;
        v17 = v155;
        if (v42 == 2)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v67 = MEMORY[0x193AC3780](v63);
        v17 = v155;
        *&t2.a = v155;
        outlined init with copy of GraphicsContext.Shading?(v245, &t1);
        outlined copy of Image.Location(v155);
        _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)(v67, &t2, &t1);
        v18 = t1.a;
        if (BYTE2(t1.b))
        {
          b_low = LOWORD(t1.b);
        }

        else
        {
          b_low = LOWORD(t1.b) != 0;
        }

        t1 = v239;
        v231 = v240;
        *&v232 = v241;
        BYTE8(v232) = v66;
        v20 = a3;
        GraphicsContext.Shading.resolve(in:levels:)(a3, b_low, &v212);

        outlined destroy of GraphicsContext.Shading?(v245, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
        v227 = v218;
        v228 = v219;
        v229 = v220;
        v223 = v214;
        v224 = v215;
        v225 = v216;
        v226 = v217;
        t2 = v212;
        v222 = v213;
        v69 = v167;
        if (_s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOg(&t2) == 1)
        {
          __asm { FMOV            V0.4S, #1.0 }

          *&t1.a = _Q0;
          LODWORD(t1.c) = 2143289344;
          _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&t1);
          v209 = v236;
          v210 = v237;
          v211 = v238;
          v205 = v232;
          v206 = v233;
          v207 = v234;
          v208 = v235;
          v203 = t1;
          v204 = v231;
        }

        else
        {
          v209 = v218;
          v210 = v219;
          v211 = v220;
          v205 = v214;
          v206 = v215;
          v207 = v216;
          v208 = v217;
          v203 = v212;
          v204 = v213;
        }

        v235 = v208;
        v236 = v209;
        v237 = v210;
        v231 = v204;
        v232 = v205;
        v233 = v206;
        v234 = v207;
        t1 = v203;
        v238 = v211;
        if (v42 == 2)
        {
LABEL_46:
          v77 = *(v20 + 4);
          v78 = *&v77;
          v12 = v20[5];
          if (v77 == 1)
          {
            v79 = *(v20 + 2);
            v78 = *(v79 + 48);
            v12 = *(v79 + 56);
          }

          v212.a = v78;
          v212.b = v12;
          if (v17 >= 2)
          {
            v80 = v17;
          }

          else
          {
            v17 = 0;
          }

          outlined copy of EnvironmentValues?(v77);
          ResolvedMulticolorStyle.init(in:bundle:)(&v212, v17, &t2);
          v158 = t2.b;
          v159 = t2.a;
          v157 = t2.c;
          v81 = *&t2.d;
          goto LABEL_55;
        }
      }

      v158 = 0.0;
      v159 = 0.0;
      v157 = 0.0;
      v81 = 1;
LABEL_55:
      v164 = *&v81;
      updated = RBSymbolUpdateGroupCount();
      if (updated < 0)
      {
        goto LABEL_141;
      }

      *&v18 = updated;
      if (!updated)
      {
LABEL_133:
        outlined destroy of GraphicsContext.ResolvedShading(&t1);
        outlined consume of ResolvedMulticolorStyle?(*&v159, *&v158, *&v157, *&v164);
        [v154 endUpdate_];

        outlined consume of Image.Location(v155);
        goto LABEL_134;
      }

      v83 = 0.0;
      v166 = updated;
      while (1)
      {
        v84 = RBSymbolUpdateGroupSize();
        if (v84 < 0)
        {
          goto LABEL_140;
        }

        v17 = v84;
        if (v84)
        {
          break;
        }

LABEL_58:
        ++*&v83;
        *&v18 = v166;
        if (*&v83 == v166)
        {
          goto LABEL_133;
        }
      }

      v18 = 0.0;
      while (1)
      {
        *&t2.a = v41;
        t2.b = v83;
        t2.c = v18;
        v91 = RBSymbolUpdateLayerStyle();
        *&t2.a = v41;
        t2.b = v83;
        t2.c = v18;
        RBSymbolUpdateLayerDrawingOpacity();
        if (v92 <= 0.0 || v91 == 10)
        {
          goto LABEL_65;
        }

        v94 = v92;
        if (v91 > 6)
        {
          switch(v91)
          {
            case 7:
              v95 = 0.25;
              v96 = 3;
              break;
            case 8:
              v95 = 0.25;
              v96 = 4;
              break;
            case 9:
              *&v212.a = v41;
              v212.b = v83;
              v212.c = v18;
              v97 = RBSymbolUpdateLayerColorName();
              if (!v97)
              {
                goto LABEL_65;
              }

              v98 = v97;
              v12 = COERCE_DOUBLE(static String._unconditionallyBridgeFromObjectiveC(_:)());
              v100 = v99;

              if (*&v164 == 1)
              {

LABEL_122:
                *&v212.a = v41;
                v212.b = v83;
                v212.c = v18;
                v139 = RBSymbolUpdateLayerDefaultColor();
                v122 = 1.0;
                if (v139)
                {
                  v140 = v139;
                  v141 = specialized Color.Resolved.init(failableCGColor:)(v140);
                  if (v143)
                  {

                    v126 = NAN;
                    v123 = 1.0;
                    v124 = 1.0;
                    v125 = 1.0;
                    v122 = 1.0;
                  }

                  else
                  {
                    v144 = v141;
                    v145 = *&v142;
                    v146 = a7;
                    v147 = *(&v142 + 1);
                    CGColorGetContentHeadroom();
                    v149 = v148;

                    v125 = v147;
                    a7 = v146;
                    v43 = a6;
                    v124 = v145;
                    v123 = *(&v144 + 1);
                    LODWORD(v122) = v144;
                    v126 = NAN;
                    if (v149 != 0.0)
                    {
                      v126 = v149;
                    }
                  }
                }

                else
                {
                  v126 = NAN;
                  v123 = 1.0;
                  v124 = 1.0;
                  v125 = 1.0;
                }
              }

              else
              {
                v203.a = v159;
                v203.b = v158;
                v203.c = v157;
                v203.d = v164;
                *&__dst.a = *&v203.a;
                *&__dst.c = *&v203.c;
                outlined init with copy of ResolvedMulticolorStyle(&v203, &v185);
                v118 = ResolvedMulticolorStyle.resolveHDR(name:)(*&v12, v100);
                v12 = v119;
                v121 = v120;

                *&v212.a = *&__dst.a;
                *&v212.c = *&__dst.c;
                outlined destroy of ResolvedMulticolorStyle(&v212);
                if ((v121 & 0x100000000) != 0)
                {
                  goto LABEL_122;
                }

                v123 = *(&v118 + 1);
                LODWORD(v122) = v118;
                v125 = *(&v12 + 1);
                v124 = *&v12;
                v126 = *&v121;
              }

              *&v212.a = __PAIR64__(LODWORD(v123), LODWORD(v122));
              *&v212.b = __PAIR64__(LODWORD(v125), LODWORD(v124));
              *&v212.c = v126;
              _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v212);
              v227 = v218;
              v228 = v219;
              v229 = v220;
              v223 = v214;
              v224 = v215;
              v225 = v216;
              v226 = v217;
              t2 = v212;
              v222 = v213;
              v44 = a4;
              v45 = a5;
              v69 = v167;
              goto LABEL_129;
            default:
              goto LABEL_65;
          }
        }

        else if (v91)
        {
          if (v91 == 5)
          {
            v95 = 0.5;
            v96 = 1;
          }

          else
          {
            if (v91 != 6)
            {
              goto LABEL_65;
            }

            v95 = 0.25;
            v96 = 2;
          }
        }

        else
        {
          v96 = 0;
          v95 = 1.0;
        }

        v218 = v236;
        v219 = v237;
        v220 = v238;
        v214 = v232;
        v215 = v233;
        v216 = v234;
        v217 = v235;
        v212 = t1;
        v213 = v231;
        v101 = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOg(&v212);
        if (v101 == 8)
        {
          v105 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v212);
          v106 = *(*v105 + 16);
          if (!v106)
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            swift_once();
LABEL_35:
            v42 = dword_18DDD8B10[static SymbolRenderingMode.preferredIfEnabled];
            goto LABEL_36;
          }

          v107 = v106 - 1;
          if (v107 >= v96)
          {
            v107 = v96;
          }

          memmove(&__dst, (*v105 + 168 * v107 + 32), 0xA8uLL);
          v95 = 1.0;
        }

        else
        {
          if (v101 == 4)
          {
            v102 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v212);
            v103 = v102;
            if (*(v102 + 85))
            {
              v191 = v236;
              v192 = v237;
              v193 = v238;
              v187 = v232;
              v188 = v233;
              v189 = v234;
              v190 = v235;
              v185 = t1;
              v186 = v231;
              v104 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v185);
              outlined init with copy of _ShapeStyle_Pack.Style(v104, &v176);
LABEL_121:
              v133 = *v103;
              v134 = *(v103 + 16);
              v135 = *(v103 + 48);
              *&v185.tx = *(v103 + 32);
              v186 = v135;
              *&v185.a = v133;
              *&v185.c = v134;
              v136 = *(v103 + 64);
              v137 = *(v103 + 80);
              v138 = *(v103 + 96);
              *&v190 = *(v103 + 112);
              v188 = v137;
              v189 = v138;
              v187 = v136;
              _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi3_(&v185);
              v209 = v191;
              v210 = v192;
              v211 = v193;
              v205 = v187;
              v206 = v188;
              v207 = v189;
              v208 = v190;
              *&v203.a = *&v185.a;
              *&v203.c = *&v185.c;
              v86 = *&v185.tx;
              v85 = v186;
              goto LABEL_63;
            }

            v161 = *(v102 + 8);
            v162 = *(v102 + 16);
            v160 = *v102;
            v111 = *(v102 + 12);
            v112 = *(v102 + 96);
            v113 = *(v102 + 104);
            if (v113 == 255)
            {
              v181 = v235;
              v182 = v236;
              v183 = v237;
              v184 = v238;
              v177 = v231;
              v178 = v232;
              v179 = v233;
              v180 = v234;
              v176 = t1;
              v127 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v176);
              v191 = v236;
              v192 = v237;
              v193 = v238;
              v187 = v232;
              v188 = v233;
              v189 = v234;
              v190 = v235;
              v185 = t1;
              v186 = v231;
              v128 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v185);
              outlined init with copy of _ShapeStyle_Pack.Style(v128, v175);
              outlined init with copy of _ShapeStyle_Pack.Style(v127, v175);
              if (one-time initialization token for normal != -1)
              {
                swift_once();
              }

              v116 = static GraphicsBlendMode.normal;
              v117 = byte_1ED52F818;
              outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
            }

            else
            {
              v181 = v235;
              v182 = v236;
              v183 = v237;
              v184 = v238;
              v177 = v231;
              v178 = v232;
              v179 = v233;
              v180 = v234;
              v176 = t1;
              v114 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v176);
              v191 = v236;
              v192 = v237;
              v193 = v238;
              v187 = v232;
              v188 = v233;
              v189 = v234;
              v190 = v235;
              v185 = t1;
              v186 = v231;
              v115 = destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v185);
              outlined init with copy of _ShapeStyle_Pack.Style(v115, v175);
              outlined init with copy of _ShapeStyle_Pack.Style(v114, v175);
              v116 = v112;
              v117 = v113;
            }

            outlined copy of GraphicsBlendMode?(v112, v113);
            if (one-time initialization token for normal != -1)
            {
              swift_once();
            }

            v129 = static GraphicsBlendMode.normal;
            *&v12 = byte_1ED52F818;
            outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
            outlined destroy of GraphicsContext.ResolvedShading(&t1);
            if (v117)
            {
              outlined consume of GraphicsBlendMode(v116, 1);
              if (LODWORD(v12))
              {
                outlined consume of GraphicsBlendMode(v129, 1);
                v130 = v116 == v129;
LABEL_118:
                v20 = a3;
                if (v130 && !*(*(v103 + 112) + 16))
                {
                  *&v12 = HIDWORD(v160);
                  outlined destroy of GraphicsContext.ResolvedShading(&t1);
                  *&v150 = *(v103 + 88) * v111;
                  v185.a = v160;
                  *&v185.b = __PAIR64__(v150, v161);
                  LODWORD(v185.c) = v162;
                  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v185);
                  v69 = v167;
                  v44 = a4;
                  v45 = a5;
                  v227 = v191;
                  v228 = v192;
                  v229 = v193;
                  v223 = v187;
                  v224 = v188;
                  v225 = v189;
                  v226 = v190;
                  *&t2.a = *&v185.a;
                  *&t2.c = *&v185.c;
                  v110 = *&v185.tx;
                  v109 = v186;
LABEL_100:
                  *&t2.tx = v110;
                  v222 = v109;
LABEL_129:
                  if (*(*(v20 + 2) + 64) != 2)
                  {
                    RBColorFromLinear();
                  }

                  *&v212.a = v41;
                  v212.b = v83;
                  v212.c = v18;
                  RBSymbolUpdateLayerDraw();
                  p_t2 = &t2;
                  goto LABEL_64;
                }

                goto LABEL_121;
              }

              v131 = v129;
              v132 = 0;
            }

            else
            {
              if ((LOBYTE(v12) & 1) == 0)
              {
                outlined consume of GraphicsBlendMode(v116, 0);
                outlined consume of GraphicsBlendMode(v129, 0);
                v130 = v116 == v129;
                goto LABEL_118;
              }

              outlined consume of GraphicsBlendMode(v116, 0);
              v131 = v129;
              v132 = 1;
            }

            outlined consume of GraphicsBlendMode(v131, v132);
            v20 = a3;
            goto LABEL_121;
          }

          v200 = v236;
          v201 = v237;
          v202 = v238;
          v196 = v232;
          v197 = v233;
          v198 = v234;
          v199 = v235;
          __dst = t1;
          v195 = v231;
        }

        v94 = v94 * v95;
        v191 = v200;
        v192 = v201;
        v193 = v202;
        v187 = v196;
        v188 = v197;
        v189 = v198;
        v190 = v199;
        v185 = __dst;
        v186 = v195;
        v108 = _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOg(&v185);
        if (v108 == 1)
        {
          destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v185);
          v227 = v200;
          v228 = v201;
          v229 = v202;
          v223 = v196;
          v224 = v197;
          v225 = v198;
          v226 = v199;
          *&t2.a = *&__dst.a;
          *&t2.c = *&__dst.c;
          v110 = *&__dst.tx;
          v109 = v195;
          goto LABEL_100;
        }

        if (v108 == 2)
        {
          destructiveProjectEnumData for GraphicsContext.ResolvedShading(&v185);
          if (*(*(v20 + 2) + 64) == 2)
          {
            RBColorToLinear();
          }

          *&v176.a = v41;
          v176.b = v83;
          v176.c = v18;
          RBSymbolUpdateLayerDraw();
          goto LABEL_65;
        }

        outlined init with copy of GraphicsContext.ResolvedShading(&__dst, &v176);
        v209 = v200;
        v210 = v201;
        v211 = v202;
        v205 = v196;
        v206 = v197;
        v207 = v198;
        v208 = v199;
        *&v203.a = *&__dst.a;
        *&v203.c = *&__dst.c;
        v86 = *&__dst.tx;
        v85 = v195;
LABEL_63:
        *&v203.tx = v86;
        v204 = v85;
        v87 = RBDrawingStateInit();
        *&v185.a = v41;
        v185.b = v83;
        v185.c = v18;
        RBSymbolUpdateLayerClip();
        *&v185.a = v171;
        *&v185.c = v173;
        v185.tx = v69;
        v185.ty = v40;
        RBDrawingStateSetCTM();
        v181 = v208;
        v182 = v209;
        v183 = v210;
        v177 = v204;
        v178 = v205;
        v179 = v206;
        v180 = v207;
        v176 = v203;
        v184 = v211;
        v88 = v94 * *(v20 + 12);
        v89 = *(v20 + 13);
        outlined init with copy of GraphicsContext.ResolvedShading(&v203, &v185);
        GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(&v176, v87, v89, v20, v44, v45, v43, a7, v88);
        v191 = v182;
        v192 = v183;
        v187 = v178;
        v188 = v179;
        v189 = v180;
        v190 = v181;
        v185 = v176;
        v193 = v184;
        v186 = v177;
        outlined destroy of GraphicsContext.ResolvedShading(&v185);
        RBDrawingStateDestroy();
        p_t2 = &v203;
LABEL_64:
        outlined destroy of GraphicsContext.ResolvedShading(p_t2);
LABEL_65:
        if (v17 == ++*&v18)
        {
          goto LABEL_58;
        }
      }
    }

    v52 = v8[3];
    t1.a = a;
    t1.b = b;
    t1.c = c;
    t1.d = d;
    t1.tx = v34;
    t1.ty = v35;
    CGAffineTransformTranslate(&t2, &t1, 0.0, v24);
    t1 = t2;
    CGAffineTransformScale(&t2, &t1, 1.0, -1.0);
    v53 = t2.tx;
    v54 = t2.ty;
    v172 = *&t2.c;
    v174 = *&t2.a;

    outlined copy of Image.Location?(v52);

    *&t1.c = v172;
    *&t1.a = v174;
    t1.tx = v53;
    t1.ty = v54;
    RBDrawingStateConcatCTM();
    v55 = RBDrawingStateInit();
    (*(*v36 + 88))();
    v56 = RBDrawingStateScaleCTM();
    v57 = v55;
    if ((v20 & 1) == 0)
    {
      if (*(*(a3 + 2) + 64) != 2)
      {
        RBColorFromLinear();
      }

      RBDrawingStateAddAlphaMultiplyFilter2();
      v56 = RBDrawingStateBeginLayer();
      v57 = v56;
    }

    (*(*v36 + 96))(v56);
    RBDrawingStateDrawDisplayList();
    swift_unknownObjectRelease();
    if (v57 != v55)
    {
      RBDrawingStateDrawLayer();
    }

    RBDrawingStateDestroy();

    outlined consume of Image.Location?(v52);

LABEL_134:
    RBDrawingStateDrawLayer();
    v21 = 2;
  }

  return v21 == 2;
}

uint64_t DrawableImageContents.displayList.getter()
{
  if (v0[5] || (v1 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init], objc_msgSend(v1, sel_setDefaultColorSpace_, 1), LODWORD(v2) = 1.0, v3 = objc_msgSend(v1, sel_beginCGContextWithAlpha_, v2), (*(*v0 + 120))(), objc_msgSend(v1, sel_endCGContext), v4 = objc_msgSend(v1, sel_moveContents), v1, v3, v0[5] = v4, swift_unknownObjectRelease(), (result = v0[5]) != 0))
  {

    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ImageRenderer.__deallocating_deinit(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

id *ImageRendererHost.deinit()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 29));

  return v0;
}

uint64_t type metadata completion function for GroupElementsOfContent()
{
  result = type metadata accessor for GroupElementsOfContent.Storage();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for GroupElementsOfContent.Storage()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t specialized static EnvironmentObject._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = Attribute.init<A>(body:value:flags:update:)();
  v10 = specialized static GraphHost.currentHost.getter();
  v11 = *(a3 + 16);
  swift_beginAccess();
  LODWORD(v11) = *(v11 + 16);
  v12 = AGCreateWeakAttribute();
  specialized StoreBox.init(host:environment:signal:)(v10, v11, v12, v16);

  v15[0] = v16[0];
  v15[1] = v16[1];
  v15[2] = v16[2];
  v13 = type metadata accessor for StoreBox();
  swift_getWitnessTable();
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(v15, a2, v13);
  if (AGSubgraphShouldRecordTree())
  {
    type metadata accessor for EnvironmentObject();
    LODWORD(v15[0]) = 2;
    static DynamicProperty.addTreeValueSlow<A>(_:as:in:fieldOffset:flags:)(v9, a4, a5, a2);
  }

  return (*(*(v13 - 8) + 8))(v16, v13);
}

uint64_t specialized StoreBox.init(host:environment:signal:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = HIDWORD(a3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SubscriptionLifetime();
  v9 = SubscriptionLifetime.__allocating_init()();
  type metadata accessor for AttributeInvalidatingSubscriber();
  result = specialized AttributeInvalidatingSubscriber.__allocating_init(host:attribute:)(a1, a3);
  *a4 = a2;
  *(a4 + 4) = a3;
  *(a4 + 8) = v8;
  *(a4 + 16) = result;
  *(a4 + 24) = v9;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  return result;
}

uint64_t initializeWithCopy for StoreBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  swift_unknownObjectRetain();
  return a1;
}

uint64_t destroy for StoreBox()
{

  return swift_unknownObjectRelease();
}

uint64_t StoreBox.update(property:phase:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a1;
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v33 - v8;
  v9 = *(v3 + 4);
  v10 = v3[3];
  v35 = v3[2];
  v39 = v10;
  v12 = v3[4];
  v11 = v3[5];
  Value = AGGraphGetValue();
  v15 = Value[1];
  v43[5] = *Value;
  v43[6] = v15;
  v16 = v14 & 1;
  v44 = v14 & 1;
  v38 = v5;
  v40 = v9;
  if (v11 && (v14 & 1) == 0)
  {
    v34 = v7;
    v17 = v12;
    v18 = v41;
    swift_unknownObjectRetain_n();

    swift_unknownObjectRelease();
    *v18 = v11;
    v19 = v11;
    goto LABEL_12;
  }

  EnvironmentObjectKey.init()(v6);
  v43[0] = v6;
  v43[1] = v5;
  swift_getKeyPath();

  v20 = swift_readAtKeyPath();
  v19 = *v21;
  swift_unknownObjectRetain();
  v20(v43, 0);

  *v41 = v19;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v11)
  {
    if (!v19)
    {
      goto LABEL_27;
    }

    if (v11 != v19)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v19)
  {
LABEL_9:
    v16 = 0;
    v44 = 0;
LABEL_10:
    if (!v19)
    {
      goto LABEL_27;
    }
  }

  v34 = v7;
  v17 = v12;
LABEL_12:
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v22 = static Semantics.v6;
  v12 = v17;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v22)
    {
      goto LABEL_18;
    }

LABEL_20:
    v23 = 0;
    goto LABEL_21;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_20;
  }

LABEL_18:
  v23 = !static ObservableObject.hasDefaultPublisher.getter();
LABEL_21:
  v24 = SubscriptionLifetime.isUninitialized.getter();
  if (!v11 || v24 || v19 != v11 || v23)
  {
    v42 = v35;

    v25 = v36;
    dispatch thunk of ObservableObject.objectWillChange.getter();
    v26 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    v27 = type metadata accessor for AttributeInvalidatingSubscriber();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    SubscriptionLifetime.subscribe<A>(subscriber:to:)(&v42, v25, v27, WitnessTable);
    swift_unknownObjectRelease();
    (*(v34 + 8))(v25, v26);
  }

  else
  {
    swift_unknownObjectRelease();
    v19 = v11;
  }

LABEL_27:
  if (!AGGraphGetWeakValue())
  {

    LOBYTE(v30) = 0;
    v31 = 0;
    if (!v16)
    {
      goto LABEL_32;
    }

LABEL_31:
    v4[4] = ++v12;
    v31 = v30 | v16;
    goto LABEL_32;
  }

  v30 = v29;

  if ((v30 | v16))
  {
    goto LABEL_31;
  }

  v31 = 0;
LABEL_32:
  v41[1] = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4[5] = v19;
  return v31 & 1;
}

uint64_t type metadata accessor for CustomModifier()
{
  return __swift_instantiateGenericMetadata();
}

{
  return swift_getGenericMetadata();
}

{
  return swift_getGenericMetadata();
}

uint64_t type metadata completion function for AutomaticStyleOverrideModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t View.transaction<A>(_:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a7;
  v25[1] = a4;
  v26 = a3;
  v27 = a1;
  v28 = a2;
  v29 = a8;
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = v13;
  v14 = type metadata accessor for CustomModifier();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v25 - v16;
  v18 = type metadata accessor for _PushPopTransactionModifier();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v25 - v21;
  v23 = PlaceholderContentView.init()(a5, v20);
  v26(v23);
  (*(v10 + 32))(v17, v12, a6);
  ViewModifier.transaction(_:)(v27, v28, v14, v22);
  (*(v15 + 8))(v17, v14);
  View.modifier<A>(_:)(v22, v25[0], v18);
  return (*(v19 + 8))(v22, v18);
}

uint64_t View.id<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return IDView.init(_:id:)(v14, v10, a2, a3, a4);
}

uint64_t IDView.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for IDView();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t ZStack.init(alignment:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[0] = a1;
  v4[1] = a2;
  return _VariadicView.Tree.init(_:content:)(v4, partial apply for closure #1 in ZStack.init(alignment:content:), &type metadata for _ZStackLayout, a3);
}

uint64_t closure #1 in ZStack.init(alignment:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - v11;
  v10();
  static ViewBuilder.buildExpression<A>(_:)(v9, a3, a4);
  v13 = *(v6 + 8);
  v13(v9, a3);
  static ViewBuilder.buildExpression<A>(_:)(v12, a3, a4);
  return (v13)(v12, a3);
}

uint64_t ViewModifier.transaction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, v10);
  (*(v9 + 32))(a4, v12, a3);
  v13 = (a4 + *(type metadata accessor for _PushPopTransactionModifier() + 36));
  *v13 = a1;
  v13[1] = a2;
}

uint64_t initializeWithCopy for _GeometryActionModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance EnvironmentalViewChild<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for EnvironmentalViewChild<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t MutableBox.value.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

void storeEnumTagSinglePayload for SubscriptionLifetime.Connection(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for CombineIdentifier() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 24) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = ((*(v10 + 64) + ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v18 = 0;
    v19 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a3 - v14 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_17:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v9 >= v11)
      {
        v23 = *(v8 + 56);

        v23(a1, a2);
      }

      else
      {
        v22 = *(v10 + 56);

        v22((((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13, a2, v11);
      }

      return;
    }
  }

  if (((*(v10 + 64) + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((*(v10 + 64) + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v21 = ~v14 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t getEnumTagSinglePayload for SubscriptionLifetime.Connection(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for CombineIdentifier() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v7)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v12 < a2)
  {
    v13 = ((*(v8 + 64) + ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v14 = v13 & 0xFFFFFFF8;
    if ((v13 & 0xFFFFFFF8) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = a2 - v12 + 1;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    v17 = v15 >= 2 ? v16 : 0;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *(a1 + v13);
        if (v18)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v18 = *(a1 + v13);
        if (v18)
        {
          goto LABEL_20;
        }
      }
    }

    else if (v17)
    {
      v18 = *(a1 + v13);
      if (v18)
      {
LABEL_20:
        v19 = v18 - 1;
        if (v14)
        {
          v19 = 0;
          LODWORD(v14) = *a1;
        }

        return v12 + (v14 | v19) + 1;
      }
    }

    if (!v12)
    {
      return 0;
    }
  }

  if (v7 >= v9)
  {
    v22 = *(v6 + 48);

    return v22(a1);
  }

  else
  {
    v21 = *(v8 + 48);

    return v21((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11, v9);
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Color@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return _s7SwiftUI17EnvironmentalViewPAAE05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZAA5ColorV_Tt2B5(v3, v7, a3);
}

unint64_t lazy protocol witness table accessor for type EnvironmentalViewChild<Color> and conformance EnvironmentalViewChild<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentalViewChild<Color> and conformance EnvironmentalViewChild<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentalViewChild<Color> and conformance EnvironmentalViewChild<A>)
  {
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for EnvironmentalViewChild<Color>, &type metadata for Color, &protocol witness table for Color, type metadata accessor for EnvironmentalViewChild);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentalViewChild<Color> and conformance EnvironmentalViewChild<A>);
  }

  return result;
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9ColorViewV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *result;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = result;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v10[0] = v2;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v5;
    v12 = 0;
    v11 = 0uLL;
    v13 = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<ColorView> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatformArchivedDisplayList(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7SwiftUI17EnvironmentalViewPAAE05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZAA5ColorV_Tt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  swift_beginAccess();
  v7 = *(v6 + 16);
  type metadata accessor for PropertyList.Tracker();
  v8 = swift_allocObject();
  type metadata accessor for [GlassContainer.Effect](0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC8];
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v10;
  v11 = MEMORY[0x1E69E7CC0];
  *(v9 + 40) = v10;
  *(v9 + 48) = v11;
  *(v9 + 56) = 0;
  *(v8 + 16) = v9;
  *&v28[0] = __PAIR64__(v7, a1);
  *(&v28[0] + 1) = v8;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(0, &lazy cache variable for type metadata for EnvironmentalViewChild<Color>, &type metadata for Color, &protocol witness table for Color, type metadata accessor for EnvironmentalViewChild);
  lazy protocol witness table accessor for type EnvironmentalViewChild<Color> and conformance EnvironmentalViewChild<A>();

  v12 = Attribute.init<A>(body:value:flags:update:)();

  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v14 = *(a2 + 48);
  v24 = *(a2 + 32);
  v25 = v14;
  v26 = *(a2 + 64);
  v15 = *(a2 + 80);
  v16 = *(a2 + 16);
  v22 = *a2;
  v23 = v16;
  v17 = v24;
  v27 = v15;
  LODWORD(v24) = 0;
  v29 = v15;
  v28[3] = v14;
  v28[4] = v26;
  v28[0] = v22;
  v28[1] = v16;
  v28[2] = v24;
  v30[1] = v16;
  v30[2] = v24;
  v30[0] = v22;
  v19 = v12;
  outlined init with copy of _ViewInputs(a2, v20);
  outlined init with copy of _ViewInputs(v28, v20);
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9ColorViewV_Tt1B5(&v19, v30);
  _s7SwiftUI16RendererLeafViewPAAE04makedE04view6inputsAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVtFZAA05ColorE0V_Tt2B5(v19, v28, a3);
  outlined destroy of _ViewInputs(v28);
  LODWORD(v24) = v17;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v22);
    AGSubgraphEndTreeElement();
  }

  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v21 = v27;
  v20[0] = v22;
  v20[1] = v23;
  return outlined destroy of _ViewInputs(v20);
}

unint64_t _s7SwiftUI16RendererLeafViewPAAE04makedE04view6inputsAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVtFZAA05ColorE0V_Tt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v36 = MEMORY[0x1E69E7CC0];
  v6 = *MEMORY[0x1E698D3F8];
  LODWORD(v37) = 0;
  HIDWORD(v37) = *MEMORY[0x1E698D3F8];
  v7 = *(a2 + 48);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v7))
  {
    v35 = a3;
    v8 = ++lastIdentity;
    v9 = *a2;
    if (*(a2 + 37))
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v39);
      result = AGWeakAttributeGetAttribute();
      if (result == v6)
      {
        __break(1u);
        return result;
      }

      v38[0] = v8;
      v34 = Attribute<A>.subscript.modify();
      _DisplayList_StableIdentityScope.pushIdentity(_:)(v38);
      v34(&v39, 0);
    }

    v10 = *(a2 + 48);
    v41 = *(a2 + 32);
    v42 = v10;
    v43 = *(a2 + 64);
    v44 = *(a2 + 80);
    v11 = *(a2 + 16);
    v39 = *a2;
    v40 = v11;
    swift_beginAccess();
    v12 = CachedEnvironment.animatedPosition(for:)(&v39);
    v13 = *(a2 + 48);
    v41 = *(a2 + 32);
    v42 = v13;
    v43 = *(a2 + 64);
    v44 = *(a2 + 80);
    v14 = *(a2 + 16);
    v39 = *a2;
    v40 = v14;
    CachedEnvironment.animatedSize(for:)(&v39);
    swift_endAccess();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v9, v39);
    if (v16)
    {
      v17 = *(v16 + 72);
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a2 + 68);
    *&v39 = __PAIR64__(a1, v8);
    *(&v39 + 1) = __PAIR64__(OffsetAttribute2, v12);
    LODWORD(v40) = v18;
    BYTE4(v40) = v17;
    WORD3(v40) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<ColorView>(0, &lazy cache variable for type metadata for LeafDisplayList<ColorView>, &type metadata for ColorView, &protocol witness table for ColorView, type metadata accessor for LeafDisplayList);
    lazy protocol witness table accessor for type LeafDisplayList<ColorView> and conformance LeafDisplayList<A>();
    v19 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v39) = 0;
    PreferencesOutputs.subscript.setter(v19, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a3 = v35;
  }

  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v7))
  {
    v20 = *(a2 + 48);
    v21 = *(a2 + 64);
    v22 = *(a2 + 16);
    v41 = *(a2 + 32);
    v42 = v20;
    v43 = v21;
    v44 = *(a2 + 80);
    v39 = *a2;
    v40 = v22;
    swift_beginAccess();
    v23 = CachedEnvironment.animatedSize(for:)(&v39);
    v24 = *(a2 + 48);
    v41 = *(a2 + 32);
    v42 = v24;
    v43 = *(a2 + 64);
    v44 = *(a2 + 80);
    v25 = *(a2 + 16);
    v39 = *a2;
    v40 = v25;
    v26 = CachedEnvironment.animatedPosition(for:)(&v39);
    swift_endAccess();
    v27 = *(a2 + 60);
    *&v39 = __PAIR64__(v23, a1);
    *(&v39 + 1) = __PAIR64__(v27, v26);
    *&v40 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for [ViewResponder](0);
    type metadata accessor for ContentResponderPathDataRule<ColorView>(0, &lazy cache variable for type metadata for LeafResponderFilter<ColorView>, &type metadata for ColorView, &protocol witness table for ColorView, type metadata accessor for LeafResponderFilter);
    lazy protocol witness table accessor for type LeafResponderFilter<ColorView> and conformance LeafResponderFilter<A>();
    v28 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v39) = 0;
    PreferencesOutputs.subscript.setter(v28, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
  }

  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v7);
  if (result)
  {
    v30 = AGGraphCreateOffsetAttribute2();
    *&v39 = *(a2 + 60);
    *(&v39 + 1) = __PAIR64__(a1, v30);
    LODWORD(v40) = v6;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<ColorView>(0, &lazy cache variable for type metadata for ContentResponderPathDataRule<ColorView>, &type metadata for ColorView, &protocol witness table for ColorView, type metadata accessor for ContentResponderPathDataRule);
    lazy protocol witness table accessor for type ContentResponderPathDataRule<ColorView> and conformance ContentResponderPathDataRule<A>();
    v31 = Attribute.init<A>(body:value:flags:update:)();
    *&v39 = v7;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v32 = *(v7 + 16);
    if (result != v32)
    {
      if (result >= v32)
      {
        __break(1u);
      }

      if (*(v7 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v39) = v31;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        _s7SwiftUI20ContentShapePathDataVSgMaTm_0(0, &lazy cache variable for type metadata for ContentShapePathData?, MEMORY[0x1E69E6720]);
        _s7SwiftUI20ContentShapePathDataVSgMaTm_0(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v33 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v39) = 0;
        result = PreferencesOutputs.subscript.setter(v33, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v36;
  a3[1] = v37;
  return result;
}

void type metadata accessor for ContentResponderPathDataRule<ColorView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LeafDisplayList<ColorView> and conformance LeafDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type LeafDisplayList<ColorView> and conformance LeafDisplayList<A>;
  if (!lazy protocol witness table cache variable for type LeafDisplayList<ColorView> and conformance LeafDisplayList<A>)
  {
    type metadata accessor for ContentResponderPathDataRule<ColorView>(255, &lazy cache variable for type metadata for LeafDisplayList<ColorView>, &type metadata for ColorView, &protocol witness table for ColorView, type metadata accessor for LeafDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LeafDisplayList<ColorView> and conformance LeafDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LeafResponderFilter<ColorView> and conformance LeafResponderFilter<A>()
{
  result = lazy protocol witness table cache variable for type LeafResponderFilter<ColorView> and conformance LeafResponderFilter<A>;
  if (!lazy protocol witness table cache variable for type LeafResponderFilter<ColorView> and conformance LeafResponderFilter<A>)
  {
    type metadata accessor for ContentResponderPathDataRule<ColorView>(255, &lazy cache variable for type metadata for LeafResponderFilter<ColorView>, &type metadata for ColorView, &protocol witness table for ColorView, type metadata accessor for LeafResponderFilter);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LeafResponderFilter<ColorView> and conformance LeafResponderFilter<A>);
  }

  return result;
}

uint64_t static LeafDisplayList.flags.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 32))())
  {
    return 8;
  }

  type metadata accessor for AGAttributeTypeFlags(0);
  lazy protocol witness table accessor for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  OptionSet<>.init()();
  return v3;
}

uint64_t sub_18D19C1D4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t *initializeWithCopy for AccessibilityCustomAttributes.Value(uint64_t *a1, uint64_t *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v10 = *a2;
        v9 = a2[1];
        outlined copy of Data._Representation(v10, v9);
        *a1 = v10;
        a1[1] = v9;
      }

      else
      {
        v5 = a2[1];
        *a1 = *a2;
        a1[1] = v5;
      }

      goto LABEL_13;
    }

LABEL_9:
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload > 5)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v6 = type metadata accessor for Date();
  }

  else
  {
    v6 = type metadata accessor for URL();
  }

  (*(*(v6 - 8) + 16))(a1, a2, v6);
LABEL_13:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void type metadata accessor for AccessibilityCustomAttributes.Value?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for AccessibilityCustomAttributes.Value()
{
  result = type metadata singleton initialization cache for AccessibilityCustomAttributes.Value;
  if (!type metadata singleton initialization cache for AccessibilityCustomAttributes.Value)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI29AccessibilityCustomAttributesV5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  type metadata accessor for (String, AccessibilityCustomAttributes.Value)();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    type metadata accessor for _DictionaryStorage<String, [String : CGFloat]>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, AccessibilityCustomAttributes.Value>, type metadata accessor for AccessibilityCustomAttributes.Value);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      outlined init with copy of (GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>)(v10, v6, type metadata accessor for (String, AccessibilityCustomAttributes.Value));
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for AccessibilityCustomAttributes.Value();
      result = outlined init with take of AccessibilityCustomAttributes.Value(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t AccessibilityCustomAttributes.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = type metadata accessor for AccessibilityCustomAttributes.Value();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AccessibilityCustomAttributes.Value?(a1, v11, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v16 = MEMORY[0x1E69E6720];
    _sypSgWOhTm_2(v11, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v8);

    _sypSgWOhTm_2(a1, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, v16, type metadata accessor for AccessibilityCustomAttributes.Value?);
    return _sypSgWOhTm_2(v8, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, v16, type metadata accessor for AccessibilityCustomAttributes.Value?);
  }

  else
  {
    outlined init with take of AccessibilityCustomAttributes.Value(v11, v15, type metadata accessor for AccessibilityCustomAttributes.Value);
    outlined init with copy of AccessibilityCustomAttributes.Value(v15, v8, type metadata accessor for AccessibilityCustomAttributes.Value);
    (*(v13 + 56))(v8, 0, 1, v12);
    specialized Dictionary.subscript.setter(v8, a2, a3);
    _sypSgWOhTm_2(a1, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityCustomAttributes.Value?);
    return outlined destroy of AccessibilityCustomAttributes.Value(v15, type metadata accessor for AccessibilityCustomAttributes.Value);
  }
}

uint64_t outlined init with copy of AccessibilityCustomAttributes.Value?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for AccessibilityCustomAttributes.Value();
      return outlined assign with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for AccessibilityCustomAttributes.Value);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0xFFFFFFFF000000FFLL);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0xFFFFFFFF000000FFLL);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3 & 0xFFFFFFFF000000FFLL, a1, v21);

    return outlined copy of Material.ID(a2, a3);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for AccessibilityCustomAttributes.Value();
  result = outlined init with take of ResolvableTextSegmentAttribute.Value(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for AccessibilityCustomAttributes.Value);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void destroy for AccessibilityCustomAttributes.Value(uint64_t *a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v3 = *a1;
          v4 = a1[1];

          outlined consume of Data._Representation(v3, v4);
        }
      }

      else
      {
      }

      return;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
    {
      return;
    }

LABEL_14:
    v6 = *a1;

    return;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v5 = type metadata accessor for Date();
  }

  else
  {
    v5 = type metadata accessor for URL();
  }

  v7 = *(*(v5 - 8) + 8);

  v7(a1, v5);
}

uint64_t Optional<A>.merge(with:)(void (*a1)(uint64_t, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a3;
  v6 = a1;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v33 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v15 = &v33 - v14;
  v17 = *(v16 + 56);
  v18 = *(a2 - 8);
  v19 = *(v18 + 16);
  v40 = v4;
  v19(&v33 - v14, v4, a2, v13);
  v35 = v6;
  (v19)(&v15[v17], v6, a2);
  v39 = v8;
  v20 = *(v8 + 48);
  LODWORD(v6) = v20(v15, 1, v7);
  v21 = v20(&v15[v17], 1, v7);
  if (v6 == 1)
  {
    if (v21 == 1)
    {
      v22 = 0;
    }

    else
    {
      v23 = *(v18 + 8);
      v24 = v40;
      v23(v40, a2);
      (v19)(v24, v35, a2);
      v23(&v15[v17], a2);
      v22 = 1;
    }
  }

  else if (v21 == 1)
  {
    (*(v39 + 8))(v15, v7);
    v22 = 0;
  }

  else
  {
    v34 = *(v18 + 8);
    v25 = v40;
    v34(v40, a2);
    v26 = v39;
    v27 = *(v39 + 32);
    v35 = v27;
    v28 = v36;
    v27(v36, v15, v7);
    v29 = &v15[v17];
    v30 = v37;
    v27(v37, v29, v7);
    v31 = *(v26 + 56);
    v31(v25, 1, 1, v7);
    v34(v25, a2);
    v22 = (*(v38 + 8))(v30, v7);
    (*(v26 + 8))(v30, v7);
    v35(v25, v28, v7);
    v31(v25, 0, 1, v7);
  }

  return v22 & 1;
}

uint64_t type metadata completion function for AccessibilityCustomAttributes.Value()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t AccessibilityCustomAttributes.init(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  type metadata accessor for AccessibilityCustomAttributes.Value?(0, &lazy cache variable for type metadata for AccessibilityCustomAttributes.Value?, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  *a4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI29AccessibilityCustomAttributesV5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with copy of AccessibilityCustomAttributes.Value(a3, v10, type metadata accessor for AccessibilityCustomAttributes.Value);
  v11 = type metadata accessor for AccessibilityCustomAttributes.Value();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  AccessibilityCustomAttributes.subscript.setter(v10, a1, a2);
  return outlined destroy of AccessibilityCustomAttributes.Value(a3, type metadata accessor for AccessibilityCustomAttributes.Value);
}

void type metadata accessor for (String, AccessibilityCustomAttributes.Value)()
{
  if (!lazy cache variable for type metadata for (String, AccessibilityCustomAttributes.Value))
  {
    type metadata accessor for AccessibilityCustomAttributes.Value();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, AccessibilityCustomAttributes.Value));
    }
  }
}

uint64_t outlined init with copy of AccessibilityCustomAttributes.Value(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of AccessibilityCustomAttributes.Value(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AccessibilityCustomAttributes.Value?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessibilityCustomAttributes.Value();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(a1, type metadata accessor for AccessibilityCustomAttributes.Value?);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(v9, type metadata accessor for AccessibilityCustomAttributes.Value?);
  }

  else
  {
    outlined init with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(a1, v13, type metadata accessor for AccessibilityCustomAttributes.Value);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

{
  v4 = v3;
  if (*(a1 + 24))
  {
    outlined init with take of AnyTrackedValue(a1, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    outlined destroy of _DisplayList_AnyEffectAnimator?(a1, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v15;
      }

      outlined init with take of AnyTrackedValue((*(v13 + 56) + 40 * v11), v16);
      specialized _NativeDictionary._delete(at:)(v11, v13);
      *v4 = v13;
    }

    else
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
    }

    return outlined destroy of _DisplayList_AnyEffectAnimator?(v16, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _DictionaryStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of AccessibilityCustomAttributes.Value(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double *static Animation.timingCurve(_:_:_:_:duration:)(double a1, double a2, double a3, double a4, double a5)
{
  v6 = a1 * 3.0;
  v7 = (a3 - a1) * 3.0 - a1 * 3.0;
  v8 = 1.0 - a1 * 3.0 - v7;
  v9 = a2 * 3.0;
  v10 = (a4 - a2) * 3.0;
  v11 = v10 - v9;
  v12 = 1.0 - v9 - (v10 - v9);
  type metadata accessor for InternalAnimationBox<BezierAnimation>();
  result = swift_allocObject();
  result[2] = a5;
  result[3] = v8;
  result[4] = v7;
  result[5] = v6;
  result[6] = v12;
  result[7] = v11;
  result[8] = v9;
  return result;
}

uint64_t Animation.delay(_:)(uint64_t a1, double a2)
{
  v5 = a2;
  v2 = *(*a1 + 144);
  v3 = lazy protocol witness table accessor for type DelayAnimation and conformance DelayAnimation();
  return v2(&v5, &type metadata for DelayAnimation, v3);
}

unint64_t lazy protocol witness table accessor for type DelayAnimation and conformance DelayAnimation()
{
  result = lazy protocol witness table cache variable for type DelayAnimation and conformance DelayAnimation;
  if (!lazy protocol witness table cache variable for type DelayAnimation and conformance DelayAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DelayAnimation and conformance DelayAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DelayAnimation and conformance DelayAnimation;
  if (!lazy protocol witness table cache variable for type DelayAnimation and conformance DelayAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DelayAnimation and conformance DelayAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DelayAnimation and conformance DelayAnimation;
  if (!lazy protocol witness table cache variable for type DelayAnimation and conformance DelayAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DelayAnimation and conformance DelayAnimation);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for DelayAnimation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DelayAnimation and conformance DelayAnimation();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for InternalAnimationBox<SpringAnimation>()
{
  if (!lazy cache variable for type metadata for InternalAnimationBox<SpringAnimation>)
  {
    lazy protocol witness table accessor for type SpringAnimation and conformance SpringAnimation();
    v0 = type metadata accessor for InternalAnimationBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InternalAnimationBox<SpringAnimation>);
    }
  }
}

double *static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)(double a1, double a2, double a3, double a4)
{
  type metadata accessor for InternalAnimationBox<SpringAnimation>();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t View.background<A>(alignment:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(double)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v23 = a6;
  v21 = a7;
  v22 = a4;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _BackgroundModifier();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  a3(v16);
  (*(v11 + 32))(v18, v13, a5);
  v19 = &v18[*(v14 + 36)];
  *v19 = a1;
  *(v19 + 1) = a2;
  View.modifier<A>(_:)(v18, v22, v14);
  return (*(v15 + 8))(v18, v14);
}

unint64_t lazy protocol witness table accessor for type SpringAnimation and conformance SpringAnimation()
{
  result = lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation;
  if (!lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation;
  if (!lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation;
  if (!lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation;
  if (!lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpringAnimation and conformance SpringAnimation);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SpringAnimation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SpringAnimation and conformance SpringAnimation();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type SpringAnimation and conformance SpringAnimation();
  *(a1 + 8) = result;
  return result;
}

uint64_t View.animation<A>(_:body:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;

  View.transaction<A>(_:body:)(partial apply for closure #1 in View.animation<A>(_:body:), v14, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_18D19E29C()
{

  return swift_deallocObject();
}

uint64_t View.scaleEffect(_:anchor:)(uint64_t a1, double a2, double a3, double a4)
{
  *v5 = a2;
  *&v5[1] = a2;
  *&v5[2] = a3;
  *&v5[3] = a4;
  return View.modifier<A>(_:)(v5, a1, &type metadata for _ScaleEffect);
}

uint64_t View.blur(radius:opaque:)(char a1, uint64_t a2, double a3)
{
  v4 = a3;
  v5 = a1;
  return View.modifier<A>(_:)(&v4, a2, &type metadata for _BlurEffect);
}

uint64_t View.matchedGeometryEffect<A>(id:in:properties:anchor:isSource:)(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v28 = a7;
  v27 = a5;
  v26 = a4;
  v15 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for _MatchedGeometryEffect();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v25[-v21];
  (*(v15 + 16))(v17, a1, a6, v20);
  (*(v15 + 32))(v22, v17, a6);
  *&v22[*(v18 + 36)] = a2;
  v23 = &v22[*(v18 + 40)];
  *v23 = a3;
  v23[1] = a8;
  v23[2] = a9;
  *(v23 + 24) = v26;
  View.modifier<A>(_:)(v22, v27, v18);
  return (*(v19 + 8))(v22, v18);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _CompositingGroupEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

unint64_t instantiation function for generic protocol witness table for HStackLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout()
{
  result = lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout;
  if (!lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout;
  if (!lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzAA7GestureRd__r__lAA15ModifiedContentVyxAA03AddD8ModifierVyqd__AA07DefaultD8CombinerVGGAaBHPxAaBHD1__AjA0cH0HPyHCHCTm(uint64_t a1, void (*a2)(void))
{
  a2();
  type metadata accessor for AddGestureModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for _MatchedGeometryEffect()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ScaleEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _AllowsHitTestingModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t one-time initialization function for topTrailing()
{
  if (one-time initialization token for trailing != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.trailing;
  if (one-time initialization token for top != -1)
  {
    result = swift_once();
  }

  static Alignment.topTrailing = v0;
  unk_1ED525040 = static VerticalAlignment.top;
  return result;
}

void storeEnumTagSinglePayload for AddGestureModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0x7FFFFFFE)
      {
        v13 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v13 = 0;
          v13[1] = 0;
          *v13 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v13[1] = a2;
        }
      }

      else
      {
        v12 = *(v6 + 56);

        v12();
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }
}

uint64_t getEnumTagSinglePayload for AddGestureModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2 && *(a1 + ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))();
  }

  v9 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  if ((v9 + 1) >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _BlurEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t EnvironmentValues.sizeCategory.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015DynamicTypeSizeF033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015DynamicTypeSizeK033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Ttg5(v3, *v2);
  }
}

uint64_t InternalAnimationBox.modifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = *v3;
  v6 = *(a2 - 8);
  v23[1] = a3;
  v24 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v5[27];
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  v23[0] = v5[28];
  v26 = v9;
  v27 = v14;
  v28 = v23[0];
  v29 = v15;
  v16 = type metadata accessor for InternalCustomAnimationModifiedContent();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v23 - v19;
  (*(v10 + 16))(v13, &v3[v5[22]], v9, v18);
  (*(v24 + 16))(v8, v25, a2);
  InternalCustomAnimationModifiedContent.init(base:modifier:)(v13, v8, v9, a2, v20);
  swift_getWitnessTable();
  v21 = specialized Animation.init<A>(_:)(v20);
  (*(v17 + 8))(v20, v16);
  return v21;
}

uint64_t type metadata completion function for InternalCustomAnimationModifiedContent()
{
  result = type metadata accessor for CustomAnimationModifiedContent();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t CustomAnimationModifiedContent.init(base:modifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for CustomAnimationModifiedContent();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t instantiation function for generic protocol witness table for InternalCustomAnimationModifiedContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized Animation.init<A>(_:)(uint64_t a1)
{
  type metadata accessor for InternalAnimationBox();
  swift_allocObject();
  return specialized InternalAnimationBox.init(_:)(a1);
}

uint64_t specialized InternalAnimationBox.init(_:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2);
  (*(*(*(*v1 + 160) - 8) + 32))(v1 + *(*v1 + 176), v3);
  return v1;
}

uint64_t static _OverlayPreferenceModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v8 = *a1;
  v9 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v9;
  v12[4] = *(a2 + 64);
  v13 = *(a2 + 80);
  v10 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v10;
  return makeSecondaryPreferenceView<A, B>(modifier:inputs:body:flipOrder:)(v8, v12, a3, 0, a4, a5, a6, a8, a7);
}

void *assignWithCopy for _AppearanceActionModifier(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;

    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (!a1[2])
  {
    if (v7)
    {
      v9 = a2[3];
      a1[2] = v7;
      a1[3] = v9;

      return a1;
    }

LABEL_14:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[3];
  a1[2] = v7;
  a1[3] = v8;

  return a1;
}

Swift::Void __swiftcall ValueActionDispatcher.updateValue()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = *(v4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v40 - v14;
  Value = AGGraphGetValue();
  v16 = *(v3 + 44);
  if (*(v2 + v16) != *Value >> 1)
  {
    *(v2 + v16) = *AGGraphGetValue() >> 1;
    v17 = *(v3 + 40);
    (*(v6 + 8))(v2 + v17, v5);
    (*(v10 + 56))(v2 + v17, 1, 1, v4);
    v18 = v2 + *(v3 + 48);
    *(v18 + 4) = 0xFFFFFFFFLL;
    *(v18 + 12) = 0;
  }

  v47 = v6;
  v19 = AGGraphGetValue();
  v20 = v48;
  v44 = *(v10 + 16);
  v45 = v10 + 16;
  v21 = v44(v48, v19, v4);
  v22 = *(v3 + 40);
  MEMORY[0x1EEE9AC00](v21);
  v23 = *(v3 + 24);
  *(&v40 - 4) = v4;
  *(&v40 - 3) = v23;
  v40 = v23;
  *(&v40 - 2) = v20;
  v46 = v5;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ValueActionDispatcher.updateValue(), (&v40 - 6), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v24, v49);
  if (LOBYTE(v49[0]) != 2 && (v49[0] & 1) != 0)
  {
    v25 = v2 + *(v3 + 48);
    AGGraphClearUpdate();
    v26 = *AGGraphGetValue();
    AGGraphSetUpdate();
    if (*(v25 + 4) == v26)
    {
      v27 = *(v25 + 8);
      if (!v27 || (v28 = v27 - 1, (*(v25 + 8) = v28) == 0))
      {
        if ((*(v25 + 12) & 1) == 0)
        {
          v49[0] = 0;
          v49[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(44);

          v49[0] = 0;
          v49[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(23);

          strcpy(v49, "onChange(of: ");
          HIWORD(v49[1]) = -4864;
          swift_getAssociatedTypeWitness();
          v29 = _typeName(_:qualified:)();
          MEMORY[0x193ABEDD0](v29);

          MEMORY[0x193ABEDD0](0x6E6F697463612029, 0xE800000000000000);
          MEMORY[0x193ABEDD0](0xD00000000000002ALL, 0x800000018DD75B90);
          specialized static Log.externalWarning(_:)(v49[0], v49[1]);

          *(v25 + 12) = 1;
        }

        goto LABEL_12;
      }
    }

    else
    {
      *(v25 + 4) = v26;
      *(v25 + 8) = 2;
    }

    v30 = v46;
    v31 = *(v47 + 16);
    v32 = v43;
    v31(v43, v2 + v22, v46);
    LOBYTE(v49[0]) = 1;
    v44(v41, v48, v4);
    v31(v42, v32, v30);
    v33 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v34 = (v11 + *(v47 + 80) + v33) & ~*(v47 + 80);
    v35 = swift_allocObject();
    v37 = v40;
    v36 = v41;
    *(v35 + 16) = v4;
    *(v35 + 24) = v37;
    (*(v10 + 32))(v35 + v33, v36, v4);
    v38 = v47;
    (*(v47 + 32))(v35 + v34, v42, v30);
    static Update.enqueueAction(reason:_:)(v49, partial apply for closure #2 in ValueActionDispatcher.updateValue(), v35);

    (*(v38 + 8))(v43, v30);
  }

LABEL_12:
  (*(v47 + 8))(v2 + v22, v46);
  v39 = v48;
  v44((v2 + v22), v48, v4);
  (*(v10 + 56))(v2 + v22, 0, 1, v4);
  (*(v10 + 8))(v39, v4);
}

uint64_t sub_18D19F9C0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Optional() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  if (!(*(v2 + 48))(v0 + v6, 1, v1))
  {
    v7(v0 + v6, v1);
  }

  return swift_deallocObject();
}

uint64_t static _AnimationModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X8>)
{
  v10 = *a1;
  v11 = a2[3];
  v40 = a2[2];
  v41 = v11;
  v42 = a2[4];
  v43 = *(a2 + 20);
  v12 = a2[1];
  v38 = *a2;
  v39 = v12;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v13 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v38, v32);
  if (v13)
  {
    if ((*(v13 + 72) & 1) == 0)
    {
LABEL_3:
      v24 = v40;
      v25 = v41;
      v26 = v42;
      v27 = v43;
      v22 = v38;
      v23 = v39;
      LODWORD(v30[0]) = v10;
      outlined init with copy of _ViewInputs(&v38, &v32);
      static _AnimationModifier._makeInputs(modifier:inputs:)(v30, &v22, a5);
      v28[2] = v24;
      v28[3] = v25;
      v28[4] = v26;
      v29 = v27;
      v28[0] = v22;
      v28[1] = v23;
      v18 = v24;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16 = v22;
      v17 = v23;
      v14 = outlined init with copy of _ViewInputs(v28, &v32);
      (a3)(v14, &v16);
      v30[2] = v18;
      v30[3] = v19;
      v30[4] = v20;
      v31 = v21;
      v30[0] = v16;
      v30[1] = v17;
      outlined destroy of _ViewInputs(v30);
      v34 = v24;
      v35 = v25;
      v36 = v26;
      v37 = v27;
      v32 = v22;
      v33 = v23;
      return outlined destroy of _ViewInputs(&v32);
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v34 = v40;
  v35 = v41;
  v36 = v42;
  v37 = v43;
  v32 = v38;
  v33 = v39;
  return static _AnimationModifier.makeArchivedView(modifier:inputs:body:)(&v32, a3, a4, a5, a6);
}

uint64_t type metadata completion function for StrokeShapeView()
{
  type metadata accessor for _StrokedShape();
  swift_getWitnessTable();
  type metadata accessor for _ShapeView();
  type metadata accessor for _BackgroundModifier();
  result = type metadata accessor for ModifiedContent();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _StrokedShape()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _StrokedShape<A>(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void type metadata accessor for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)()
{
  if (!lazy cache variable for type metadata for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool));
    }
  }
}

void type metadata accessor for (ViewFrame?, AnyOptionalAttribute)()
{
  if (!lazy cache variable for type metadata for (ViewFrame?, AnyOptionalAttribute))
  {
    _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_2(255, &lazy cache variable for type metadata for ViewFrame?, &type metadata for ViewFrame, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ViewFrame?, AnyOptionalAttribute));
    }
  }
}

__n128 __swift_memcpy37_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t static Optional<A>._viewListCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  v20 = *(a1 + 32);
  v21 = v6;
  v7 = *(a1 + 64);
  v8 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v8;
  v22 = v7;
  v23[0] = v19[0];
  v23[1] = v8;
  v23[2] = v20;
  v23[3] = v6;
  LOBYTE(v24) = 0;
  v9 = *(a1 + 65);
  *(&v24 + 1) = *(a1 + 72);
  *(&v24 + 1) = v9;
  v16 = v20;
  v17 = v6;
  v18 = v24;
  v14 = v19[0];
  v15 = v8;
  v10 = *(a3 + 40);
  outlined init with copy of _ViewListCountInputs(v19, v26);
  outlined init with copy of _ViewListCountInputs(v23, v26);
  v10(&v14, a2, a3);
  v25[2] = v16;
  v25[3] = v17;
  v25[4] = v18;
  v25[0] = v14;
  v25[1] = v15;
  outlined destroy of _ViewListCountInputs(v25);
  v11 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v11;
  v12 = *(a1 + 48);
  v26[2] = *(a1 + 32);
  v26[3] = v12;
  v27 = 0;
  *v28 = *(a1 + 65);
  *&v28[7] = *(a1 + 72);
  outlined destroy of _ViewListCountInputs(v26);
  return 0;
}

uint64_t static View._viewListCount(inputs:)(uint64_t a1, uint64_t a2)
{
  return _ViewListCountInputs.withUniqueBody<A>(type:body:)(a2, partial apply for closure #1 in static View._viewListCount(inputs:));
}

{
  return static View._viewListCount(inputs:)(a1, a2);
}

uint64_t static StyleModifier._viewListCount(inputs:body:)(_OWORD *a1, uint64_t (*a2)(__int128 *))
{
  v3 = a1[1];
  v4 = a1[3];
  v21 = a1[2];
  v22 = v4;
  v5 = a1[3];
  v23 = a1[4];
  v6 = a1[1];
  v20[0] = *a1;
  v20[1] = v6;
  v17 = v21;
  v18 = v5;
  v19 = a1[4];
  v15 = v20[0];
  v16 = v3;
  LODWORD(v25[0]) = *MEMORY[0x1E698D3F8];
  *(&v25[0] + 1) = type metadata accessor for StyleModifierType();
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for StyleInput();
  outlined init with copy of _ViewListCountInputs(v20, v26);
  _ViewListCountInputs.append<A, B>(_:to:)(v25, v7, v7, &type metadata for AnyStyleModifier, &protocol witness table for StyleInput<A>);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v24[0] = v15;
  v24[1] = v16;
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  outlined init with copy of _ViewListCountInputs(v24, v26);
  v8 = a2(&v10);
  v25[2] = v12;
  v25[3] = v13;
  v25[4] = v14;
  v25[0] = v10;
  v25[1] = v11;
  outlined destroy of _ViewListCountInputs(v25);
  v26[2] = v17;
  v26[3] = v18;
  v26[4] = v19;
  v26[0] = v15;
  v26[1] = v16;
  outlined destroy of _ViewListCountInputs(v26);
  return v8;
}

uint64_t static StaticIf<>._viewListCount(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a1[1];
  v27 = *a1;
  v28 = v12;
  v13 = a1[3];
  v29 = a1[2];
  v30 = v13;
  v31 = a1[4];
  v14 = v27;
  v15 = v28;
  v16 = *MEMORY[0x1E698D3F8];
  v32 = 1;
  v17 = MEMORY[0x1E69E7CC0];
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for MutableBox<CachedEnvironment>();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 64) = 0u;
  *(v19 + 80) = 256;
  *(v19 + 88) = v18;
  *&v24 = v14;
  DWORD2(v24) = v16;
  *&v25 = v19;
  DWORD2(v25) = v16;
  HIDWORD(v25) = v16;
  LODWORD(v26) = -1;
  DWORD1(v26) = v15;
  *(&v26 + 1) = MEMORY[0x1E69E7CD0];
  v20 = *(a5 + 8);
  outlined init with copy of _ViewListCountInputs(&v27, v23);
  LOBYTE(a2) = v20(&v24, a2, a5);
  v33[0] = v24;
  v33[1] = v25;
  v33[2] = v26;
  outlined destroy of _GraphInputs(v33);
  v23[2] = v29;
  v23[3] = v30;
  v23[4] = v31;
  v23[0] = v27;
  v23[1] = v28;
  if (a2)
  {
    return (*(a6 + 40))(v23, a3, a6);
  }

  else
  {
    return (*(a7 + 40))(v23, a4, a7);
  }
}

uint64_t type metadata completion function for _ContentShapeKindModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static EnvironmentalModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  static DynamicPropertyCache.fields(of:)(a5, v34);
  v11 = v34[0];
  v10 = v34[1];
  v12 = v35;
  v13 = v36;
  outlined init with copy of _ViewListInputs(a2, v34);
  v21 = v13;
  v22 = v9;
  v25 = v9;
  v27 = v11;
  v28 = v10;
  v29 = v12;
  v30 = v13;
  static EnvironmentalModifier.makeResolvedModifier(modifier:inputs:fields:)(&v26, &v31, &v25, v34, &v27, a5, a6);
  v14 = v26;
  v15 = v32;
  v20 = v31;
  v16 = v33;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v27) = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v27, v34, a3, a4, AssociatedTypeWitness, AssociatedConformanceWitness);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((v16 & 1) == 0)
  {
    v31 = v20;
    v32 = v15;
    v26 = v22;
    v27 = v11;
    v28 = v10;
    v29 = v12;
    v30 = v21;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v26, &v27, a5);
  }

  outlined destroy of _ViewListInputs(v34);
  return outlined consume of DynamicPropertyCache.Fields.Layout();
}

uint64_t HStack.init(alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3 & 1;
  return _VariadicView.Tree.init(_:content:)(v5, partial apply for closure #1 in HStack.init(alignment:spacing:content:), &type metadata for _HStackLayout, a4);
}

uint64_t closure #1 in HStack.init(alignment:spacing:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - v11;
  v10();
  static ViewBuilder.buildExpression<A>(_:)(v9, a3, a4);
  v13 = *(v6 + 8);
  v13(v9, a3);
  static ViewBuilder.buildExpression<A>(_:)(v12, a3, a4);
  return (v13)(v12, a3);
}

uint64_t _ViewInputs.applyBackgroundStyle<A, B>(value:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 2;
  result = (*(a5 + 40))(&v18, a4, a5);
  if (v18 != 2 && (v18 & 1) != 0)
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v8 = *(v5 + 16);
    v9 = swift_beginAccess();
    v10 = *(v8 + 16);
    v17[0] = OffsetAttribute2;
    v17[1] = v10;
    MEMORY[0x1EEE9AC00](v9);
    v14 = type metadata accessor for ForegroundEnvironment();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<_ShapeStyle_Pack>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, &type metadata for EnvironmentValues, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, closure #1 in Attribute.init<A>(_:)partial apply, &v13, v14, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
    return _GraphInputs.environment.setter(v16);
  }

  return result;
}

id DefaultLayoutViewResponder.init(inputs:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 120) = *(a1 + 32);
  *(v1 + 136) = v2;
  *(v1 + 152) = *(a1 + 64);
  v3 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 200) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 168) = *(a1 + 80);
  *(v1 + 104) = v3;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v5 = MEMORY[0x1E69E7CC0];
    *(v1 + 176) = result;
    *(v1 + 40) = v5;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = v5;
    *(v1 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v6 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v7 = *(v6 + 208);

    swift_beginAccess();
    *(v1 + 24) = v7;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA25_AllowsHitTestingModifierV_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v60 = *(a2 + 32);
  v61 = v8;
  v9 = *(a2 + 68);
  v62 = *(a2 + 64);
  v10 = *(a2 + 16);
  v58 = *a2;
  v59 = v10;
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v11)
  {
    v12 = *(a2 + 48);
    v13 = *(a2 + 64);
    v14 = *(a2 + 16);
    v54 = *(a2 + 32);
    v55 = v12;
    v56 = v13;
    v57 = *(a2 + 80);
    v52 = *a2;
    v53 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v49);
    v9 = CachedEnvironment.animatedPosition(for:)(&v52);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v52);
  }

  v49[2] = v60;
  v49[3] = v61;
  v49[0] = v58;
  v49[1] = v59;
  *&v50 = __PAIR64__(v9, v62);
  *(&v50 + 1) = v40;
  v51 = v41;
  v45 = v60;
  v46 = v61;
  v47 = v50;
  v48 = v41;
  v43 = v58;
  v44 = v59;
  v15 = outlined init with copy of _ViewInputs(v49, &v52);
  a3(v39, v15, &v43);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v52 = v43;
  v53 = v44;
  outlined destroy of _ViewInputs(&v52);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v45 = v60;
    v46 = v61;
    v43 = v58;
    v44 = v59;
    *&v47 = __PAIR64__(v9, v62);
    *(&v47 + 1) = v40;
    v48 = v41;
    result = outlined destroy of _ViewInputs(&v43);
    *a4 = v39[0];
    a4[1] = v39[1];
    return result;
  }

  v38 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v20;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v21 = *(a2 + 16);
    v43 = *a2;
    v44 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v43);
    v23 = *(a2 + 48);
    v45 = *(a2 + 32);
    v46 = v23;
    v47 = *(a2 + 64);
    v48 = *(a2 + 80);
    v24 = *(a2 + 16);
    v43 = *a2;
    v44 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v43);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v39[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v43);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v43);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v43 = __PAIR64__(v38, v16);
    *(&v43 + 1) = __PAIR64__(v25, v22);
    *&v44 = __PAIR64__(v33, v32);
    *(&v44 + 1) = __PAIR64__(v34, v26);
    LODWORD(v45) = v19;
    BYTE4(v45) = v29;
    DWORD2(v45) = 0;
    HIDWORD(v45) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_AllowsHitTestingModifier>, &type metadata for _AllowsHitTestingModifier, &protocol witness table for _AllowsHitTestingModifier, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_AllowsHitTestingModifier> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v43) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v43);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v42[0] = v16;
    v37 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v42);
    v37(&v43, 0);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

double static _AllowsHitTestingModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[3];
  v26 = a2[2];
  v27 = v6;
  v28 = a2[4];
  v29 = *(a2 + 20);
  v7 = a2[1];
  v24 = *a2;
  v25 = v7;
  _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA25_AllowsHitTestingModifierV_Tt3B5(v5, &v24, a3, &v15);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v27))
  {
    v8 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v15);
    if ((v8 & 0x100000000) != 0)
    {
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      swift_dynamicCastClassUnconditional();
      type metadata accessor for [ViewResponder](0);
      v9 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v10, 0);
    }

    else
    {
      v9 = v8;
    }

    type metadata accessor for AllowsHitTestingResponder();
    *(swift_allocObject() + 216) = 1;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v18 = v24;
    v19 = v25;
    outlined init with copy of _ViewInputs(&v24, v17);
    v11 = DefaultLayoutViewResponder.init(inputs:)(&v18);
    *&v18 = __PAIR64__(v9, v5);
    *(&v18 + 1) = v11;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for [ViewResponder](0);
    lazy protocol witness table accessor for type AllowsHitTestingFilter and conformance AllowsHitTestingFilter();
    v12 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v18) = 0;
    PreferencesOutputs.subscript.setter(v12, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(v24);
  v17[0] = v5;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v23 = v29;
  v18 = v24;
  v19 = v25;
  (*(v13 + 8))(v17, &v18, &v15);
  *a4 = v15;
  result = v16;
  a4[1] = v16;
  return result;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_AllowsHitTestingModifier> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_AllowsHitTestingModifier> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_AllowsHitTestingModifier> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_AllowsHitTestingModifier>, &type metadata for _AllowsHitTestingModifier, &protocol witness table for _AllowsHitTestingModifier, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_AllowsHitTestingModifier> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.AllowsHitTestingAccessibilityProviderKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderV033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    v3 = &static _GraphInputs.AllowsHitTestingAccessibilityProviderKey.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3;
}

unint64_t lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout()
{
  result = lazy protocol witness table cache variable for type LayoutPriorityLayout and conformance LayoutPriorityLayout;
  if (!lazy protocol witness table cache variable for type LayoutPriorityLayout and conformance LayoutPriorityLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutPriorityLayout and conformance LayoutPriorityLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LayoutPriorityLayout and conformance LayoutPriorityLayout;
  if (!lazy protocol witness table cache variable for type LayoutPriorityLayout and conformance LayoutPriorityLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutPriorityLayout and conformance LayoutPriorityLayout);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LayoutPriorityLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance LayoutPriorityLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

unint64_t lazy protocol witness table accessor for type UnaryLayoutComputer<LayoutPriorityLayout> and conformance UnaryLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryLayoutComputer<LayoutPriorityLayout> and conformance UnaryLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<LayoutPriorityLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryLayoutComputer<LayoutPriorityLayout> and conformance UnaryLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryChildGeometry<LayoutPriorityLayout> and conformance UnaryChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryChildGeometry<LayoutPriorityLayout> and conformance UnaryChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<LayoutPriorityLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryChildGeometry<LayoutPriorityLayout> and conformance UnaryChildGeometry<A>);
  }

  return result;
}

uint64_t View.padding(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v6[0] = a1;
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v7 = v4;
  v8 = v4;
  v9 = v4;
  v10 = v4;
  v11 = a3 & 1;
  return View.modifier<A>(_:)(v6, a4, &type metadata for _PaddingLayout);
}

uint64_t one-time initialization function for bottom()
{
  if (one-time initialization token for center != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.center;
  if (one-time initialization token for bottom != -1)
  {
    result = swift_once();
  }

  static Alignment.bottom = v0;
  unk_1ED526F50 = static VerticalAlignment.bottom;
  return result;
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<LayoutPriorityLayout>>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<LayoutPriorityLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryLayoutEngine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<LayoutPriorityLayout>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<LinearGradient> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<LinearGradient> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<LinearGradient> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<LinearGradient>, &type metadata for LinearGradient, &protocol witness table for LinearGradient, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<LinearGradient> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

uint64_t View.contentShape<A>(_:eoFill:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _ContentShapeModifier();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v9 + 16))(v11, a1, a4, v14);
  (*(v9 + 32))(v16, v11, a4);
  v16[*(v12 + 36)] = a2;
  View.modifier<A>(_:)(v16, a3, v12);
  return (*(v13 + 8))(v16, v12);
}

uint64_t View.clipShape<A>(_:style:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _ClipEffect();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  (*(v9 + 16))(v11, a1, a4, v14);
  (*(v9 + 32))(v16, v11, a4);
  v17 = &v16[*(v12 + 36)];
  *v17 = a2 & 1;
  v17[1] = HIBYTE(a2) & 1;
  View.modifier<A>(_:)(v16, a3, v12);
  return (*(v13 + 8))(v16, v12);
}

uint64_t static _MaskEffect._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a3@<X8>)
{
  v5 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v5;
  v8[4] = *(a1 + 64);
  v9 = *(a1 + 80);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;

  return specialized static _ViewOutputs.makeMaskView(inputs:contentBody:maskBody:outputsFromMask:mayUseForegroundColor:alignment:)(v8, partial apply for makeMask #1 <A>(inputs:) in static _MaskEffect._makeView(modifier:inputs:body:), 0, 1, 0x100000000, a2, a3);
}

uint64_t specialized static _ViewOutputs.makeMaskView(inputs:contentBody:maskBody:outputsFromMask:mayUseForegroundColor:alignment:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, __int128 *)@<X1>, char a3@<W3>, char a4@<W4>, uint64_t a5@<X5>, void (*a6)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X6>, void *a7@<X8>)
{
  v100 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v96 = *(a1 + 32);
  v97 = v9;
  v98 = *(a1 + 64);
  v99 = *(a1 + 80);
  v10 = *(a1 + 16);
  v94 = *a1;
  v95 = v10;
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v9);
  v53 = v94;
  v12 = v95;
  v13 = DWORD1(v96);
  v14 = *(a1 + 48);
  *v93 = *(a1 + 32);
  *&v93[16] = v14;
  *&v93[32] = *(a1 + 64);
  *&v93[48] = *(a1 + 80);
  v15 = *(a1 + 16);
  v91 = *a1;
  v92 = v15;
  if ((WORD2(v96) & 0x100) != 0)
  {
    outlined init with copy of _ViewInputs(&v94, &v85);
    specialized _GraphInputs.pushScope<A>(id:)(0);
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    outlined init with copy of _ViewInputs(&v94, &v85);
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  *&v93[4] = v13 | 2;
  v87 = v96;
  v88 = v97;
  v89 = v98;
  v90 = v99;
  v85 = v94;
  v86 = v95;
  swift_beginAccess();
  v16 = CachedEnvironment.animatedPosition(for:)(&v85);
  swift_endAccess();
  *&v93[36] = v16;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v17 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v18 = specialized CachedEnvironment.attribute<A>(id:_:)(v17);
  swift_endAccess();
  v19 = *MEMORY[0x1E698D3F8];
  if ((a5 & 0x100000000) != 0)
  {
    v20 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v20 = a5;
  }

  *&v85 = __PAIR64__(v18, v20);
  *(&v85 + 1) = __PAIR64__(DWORD2(v98), v98);
  LODWORD(v86) = v19;
  DWORD1(v86) = v19;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery();
  Attribute.init<A>(body:value:flags:update:)();
LABEL_11:
  v87 = *v93;
  v88 = *&v93[16];
  v89 = *&v93[32];
  v90 = *&v93[48];
  v85 = v91;
  v86 = v92;
  v21 = *v93;
  v82 = v91;
  v83 = v92;
  LODWORD(v84[3]) = *&v93[48];
  v84[1] = *&v93[16];
  v84[2] = *&v93[32];
  v84[0] = *v93;
  if ((*&v93[4] & 0x100) != 0)
  {
    outlined init with copy of _ViewInputs(&v85, &v76);
    specialized _GraphInputs.pushScope<A>(id:)(1);
  }

  else
  {
    outlined init with copy of _ViewInputs(&v85, &v76);
  }

  v55 = v13;
  if ((v13 & 0x20) != 0)
  {
    LODWORD(v84[2]) = AGGraphCreateOffsetAttribute2();
    v21 = LODWORD(v84[0]) | 0x18;
    DWORD2(v84[2]) = AGGraphCreateOffsetAttribute2();
    LODWORD(v84[0]) = v21;
  }

  v22 = MEMORY[0x1E69E7CC0];
  *&v84[1] = MEMORY[0x1E69E7CC0];
  v23 = v11;
  if (v11)
  {
    *&v76 = MEMORY[0x1E69E7CC0];
    v24 = PreferenceKeys._index(of:)(&type metadata for DisplayList.Key);

    v25 = *(v22 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_55;
      }

      if (*(v22 + 16 * v24 + 32) == &type metadata for DisplayList.Key)
      {
        goto LABEL_24;
      }
    }

    if (v25 >= v24)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v84[1] = v22;
      if (!isUniquelyReferenced_nonNull_native || (v27 = v22, v25 >= *(v22 + 24) >> 1))
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v25 + 1, 1, MEMORY[0x1E69E7CC0]);
        *&v84[1] = v27;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v24, v24, 1, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      *&v84[1] = v27;
      goto LABEL_24;
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_24:
  if (a3)
  {
    v74[0] = v91;
    v28 = v92;
    v21 = *v93;
    v76 = *&v93[4];
    v77 = *&v93[20];
    v78 = *&v93[36];
    v91 = v82;
    v92 = v83;
    *&v93[48] = v84[3];
    *&v93[16] = v84[1];
    *&v93[32] = v84[2];
    *v93 = v84[0];
    v82 = v74[0];
    v83 = v28;
    LODWORD(v84[0]) = v21;
    *(&v84[2] + 4) = v78;
    *(&v84[1] + 4) = v77;
    *(v84 + 4) = v76;
  }

  v29 = v23;
  if (a4)
  {
    swift_beginAccess();
    LODWORD(v76) = *(v12 + 16);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type MaskDefaultForeground and conformance MaskDefaultForeground();
    v30 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v74[0]) = 1;
    v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(v22);
    type metadata accessor for MutableBox<CachedEnvironment>();
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v22;
    *(v32 + 32) = 0u;
    *(v32 + 48) = 0u;
    *(v32 + 64) = 0u;
    *(v32 + 80) = 256;
    *(v32 + 88) = v31;

    *&v83 = v32;
    if ((v21 & 0x20) == 0)
    {
      LODWORD(v84[0]) = v21 | 0x20;
    }

    v29 = v23;
  }

  v72[2] = *v93;
  v72[3] = *&v93[16];
  v72[4] = *&v93[32];
  v73 = *&v93[48];
  v72[0] = v91;
  v72[1] = v92;
  v78 = *v93;
  v79 = *&v93[16];
  v80 = *&v93[32];
  v81 = *&v93[48];
  v76 = v91;
  v77 = v92;
  v33 = outlined init with copy of _ViewInputs(v72, v74);
  a6(&v62, v33, &v76);
  outlined destroy of _ViewInputs(v72);
  v74[2] = v84[0];
  v74[3] = v84[1];
  v74[4] = v84[2];
  v75 = v84[3];
  v74[0] = v82;
  v74[1] = v83;
  v68 = v84[0];
  v69 = v84[1];
  v70 = v84[2];
  v71 = v84[3];
  v66 = v82;
  v67 = v83;
  outlined init with copy of _ViewInputs(v74, &v76);
  a2(&v60, &v66);
  v78 = v68;
  v79 = v69;
  v80 = v70;
  v81 = v71;
  v76 = v66;
  v77 = v67;
  v34 = outlined destroy of _ViewInputs(&v76);
  if ((v29 & 1) == 0)
  {
    v38 = 0;
    v39 = a7;
    v36 = v55;
    if ((a3 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v35 = ++lastIdentity;
  v36 = v55;
  if ((v55 & 0x100) == 0)
  {
    v37 = *MEMORY[0x1E698D3F8];
    goto LABEL_43;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v53, &v66);
  Attribute = AGWeakAttributeGetAttribute();
  v37 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
LABEL_56:
    __break(1u);
  }

  LODWORD(v64[0]) = v35;
  v45 = Attribute<A>.subscript.modify();
  _DisplayList_StableIdentityScope.pushIdentity(_:)(v64);
  v45(&v66, 0);
LABEL_43:
  v68 = v96;
  v69 = v97;
  v70 = v98;
  v71 = v99;
  v66 = v94;
  v67 = v95;
  swift_beginAccess();
  v46 = CachedEnvironment.animatedPosition(for:)(&v66);
  v68 = v96;
  v69 = v97;
  v70 = v98;
  v71 = v99;
  v66 = v94;
  v67 = v95;
  v47 = CachedEnvironment.animatedCGSize(for:)(&v66);
  swift_endAccess();
  v48 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v62);
  if ((v48 & 0x100000000) != 0)
  {
    v49 = v37;
  }

  else
  {
    v49 = v48;
  }

  v50 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v60);
  if ((v50 & 0x100000000) == 0)
  {
    v37 = v50;
  }

  BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
  v51 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v53, v66);
  if (v51)
  {
    v52 = *(v51 + 72);
  }

  else
  {
    v52 = 0;
  }

  v39 = a7;
  *&v66 = __PAIR64__(v46, v35);
  *(&v66 + 1) = __PAIR64__(DWORD1(v98), v47);
  *&v67 = __PAIR64__(v37, v49);
  BYTE8(v67) = v52;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MaskDisplayList and conformance MaskDisplayList();
  v34 = Attribute.init<A>(body:value:flags:update:)();
  v38 = v34;
  if (a3)
  {
LABEL_34:
    v40 = v62;
    v62 = v60;
    v60 = v40;
    v41 = v63;
    v63 = v61;
    v61 = v41;
  }

LABEL_35:
  if ((v36 & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](v34);
    MEMORY[0x1EEE9AC00](v43);
    AGGraphMutateAttribute();
    if ((v29 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v29)
  {
LABEL_37:
    LOBYTE(v66) = (v29 ^ 1) & 1;
    PreferencesOutputs.subscript.setter(v38 | (v66 << 32), &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
  }

LABEL_38:
  v64[2] = *v93;
  v64[3] = *&v93[16];
  v64[4] = *&v93[32];
  v65 = *&v93[48];
  v64[0] = v91;
  v64[1] = v92;
  outlined destroy of _ViewInputs(v64);
  *v39 = v62;
  v39[1] = v63;

  v68 = v84[0];
  v69 = v84[1];
  v70 = v84[2];
  v71 = v84[3];
  v66 = v82;
  v67 = v83;
  outlined destroy of _ViewInputs(&v66);
}

{
  v100 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v96 = *(a1 + 32);
  v97 = v9;
  v98 = *(a1 + 64);
  v99 = *(a1 + 80);
  v10 = *(a1 + 16);
  v94 = *a1;
  v95 = v10;
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v9);
  v53 = v94;
  v12 = v95;
  v13 = DWORD1(v96);
  v14 = *(a1 + 48);
  *v93 = *(a1 + 32);
  *&v93[16] = v14;
  *&v93[32] = *(a1 + 64);
  *&v93[48] = *(a1 + 80);
  v15 = *(a1 + 16);
  v91 = *a1;
  v92 = v15;
  if ((WORD2(v96) & 0x100) != 0)
  {
    outlined init with copy of _ViewInputs(&v94, &v85);
    specialized _GraphInputs.pushScope<A>(id:)(0);
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    outlined init with copy of _ViewInputs(&v94, &v85);
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  *&v93[4] = v13 | 2;
  v87 = v96;
  v88 = v97;
  v89 = v98;
  v90 = v99;
  v85 = v94;
  v86 = v95;
  swift_beginAccess();
  v16 = CachedEnvironment.animatedPosition(for:)(&v85);
  swift_endAccess();
  *&v93[36] = v16;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v17 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v18 = specialized CachedEnvironment.attribute<A>(id:_:)(v17);
  swift_endAccess();
  v19 = *MEMORY[0x1E698D3F8];
  if ((a5 & 0x100000000) != 0)
  {
    v20 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v20 = a5;
  }

  *&v85 = __PAIR64__(v18, v20);
  *(&v85 + 1) = __PAIR64__(DWORD2(v98), v98);
  LODWORD(v86) = v19;
  DWORD1(v86) = v19;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery();
  Attribute.init<A>(body:value:flags:update:)();
LABEL_11:
  v87 = *v93;
  v88 = *&v93[16];
  v89 = *&v93[32];
  v90 = *&v93[48];
  v85 = v91;
  v86 = v92;
  v21 = *v93;
  v82 = v91;
  v83 = v92;
  LODWORD(v84[3]) = *&v93[48];
  v84[1] = *&v93[16];
  v84[2] = *&v93[32];
  v84[0] = *v93;
  if ((*&v93[4] & 0x100) != 0)
  {
    outlined init with copy of _ViewInputs(&v85, &v76);
    specialized _GraphInputs.pushScope<A>(id:)(1);
  }

  else
  {
    outlined init with copy of _ViewInputs(&v85, &v76);
  }

  v55 = v13;
  if ((v13 & 0x20) != 0)
  {
    LODWORD(v84[2]) = AGGraphCreateOffsetAttribute2();
    v21 = LODWORD(v84[0]) | 0x18;
    DWORD2(v84[2]) = AGGraphCreateOffsetAttribute2();
    LODWORD(v84[0]) = v21;
  }

  v22 = MEMORY[0x1E69E7CC0];
  *&v84[1] = MEMORY[0x1E69E7CC0];
  v23 = v11;
  if (v11)
  {
    *&v76 = MEMORY[0x1E69E7CC0];
    v24 = PreferenceKeys._index(of:)(&type metadata for DisplayList.Key);

    v25 = *(v22 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_55;
      }

      if (*(v22 + 16 * v24 + 32) == &type metadata for DisplayList.Key)
      {
        goto LABEL_24;
      }
    }

    if (v25 >= v24)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v84[1] = v22;
      if (!isUniquelyReferenced_nonNull_native || (v27 = v22, v25 >= *(v22 + 24) >> 1))
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v25 + 1, 1, MEMORY[0x1E69E7CC0]);
        *&v84[1] = v27;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v24, v24, 1, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      *&v84[1] = v27;
      goto LABEL_24;
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_24:
  if (a3)
  {
    v74[0] = v91;
    v28 = v92;
    v21 = *v93;
    v76 = *&v93[4];
    v77 = *&v93[20];
    v78 = *&v93[36];
    v91 = v82;
    v92 = v83;
    *&v93[48] = v84[3];
    *&v93[16] = v84[1];
    *&v93[32] = v84[2];
    *v93 = v84[0];
    v82 = v74[0];
    v83 = v28;
    LODWORD(v84[0]) = v21;
    *(&v84[2] + 4) = v78;
    *(&v84[1] + 4) = v77;
    *(v84 + 4) = v76;
  }

  v29 = v23;
  if (a4)
  {
    swift_beginAccess();
    LODWORD(v76) = *(v12 + 16);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type MaskDefaultForeground and conformance MaskDefaultForeground();
    v30 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v74[0]) = 1;
    v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(v22);
    type metadata accessor for MutableBox<CachedEnvironment>();
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v22;
    *(v32 + 32) = 0u;
    *(v32 + 48) = 0u;
    *(v32 + 64) = 0u;
    *(v32 + 80) = 256;
    *(v32 + 88) = v31;

    *&v83 = v32;
    if ((v21 & 0x20) == 0)
    {
      LODWORD(v84[0]) = v21 | 0x20;
    }

    v29 = v23;
  }

  v72[2] = *v93;
  v72[3] = *&v93[16];
  v72[4] = *&v93[32];
  v73 = *&v93[48];
  v72[0] = v91;
  v72[1] = v92;
  v78 = *v93;
  v79 = *&v93[16];
  v80 = *&v93[32];
  v81 = *&v93[48];
  v76 = v91;
  v77 = v92;
  outlined init with copy of _ViewInputs(v72, v74);
  a2(&v62, &v76);
  v74[2] = v78;
  v74[3] = v79;
  v74[4] = v80;
  v75 = v81;
  v74[0] = v76;
  v74[1] = v77;
  outlined destroy of _ViewInputs(v74);
  v78 = v84[0];
  v79 = v84[1];
  v80 = v84[2];
  v81 = v84[3];
  v76 = v82;
  v77 = v83;
  v68 = v84[0];
  v69 = v84[1];
  v70 = v84[2];
  v71 = v84[3];
  v66 = v82;
  v67 = v83;
  v33 = outlined init with copy of _ViewInputs(&v76, v64);
  a6(&v60, v33, &v66);
  v34 = outlined destroy of _ViewInputs(&v76);
  if ((v29 & 1) == 0)
  {
    v38 = 0;
    v39 = a7;
    v36 = v55;
    if ((a3 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v35 = ++lastIdentity;
  v36 = v55;
  if ((v55 & 0x100) == 0)
  {
    v37 = *MEMORY[0x1E698D3F8];
    goto LABEL_43;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v53, &v66);
  Attribute = AGWeakAttributeGetAttribute();
  v37 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
LABEL_56:
    __break(1u);
  }

  LODWORD(v64[0]) = v35;
  v45 = Attribute<A>.subscript.modify();
  _DisplayList_StableIdentityScope.pushIdentity(_:)(v64);
  v45(&v66, 0);
LABEL_43:
  v68 = v96;
  v69 = v97;
  v70 = v98;
  v71 = v99;
  v66 = v94;
  v67 = v95;
  swift_beginAccess();
  v46 = CachedEnvironment.animatedPosition(for:)(&v66);
  v68 = v96;
  v69 = v97;
  v70 = v98;
  v71 = v99;
  v66 = v94;
  v67 = v95;
  v47 = CachedEnvironment.animatedCGSize(for:)(&v66);
  swift_endAccess();
  v48 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v62);
  if ((v48 & 0x100000000) != 0)
  {
    v49 = v37;
  }

  else
  {
    v49 = v48;
  }

  v50 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v60);
  if ((v50 & 0x100000000) == 0)
  {
    v37 = v50;
  }

  BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
  v51 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v53, v66);
  if (v51)
  {
    v52 = *(v51 + 72);
  }

  else
  {
    v52 = 0;
  }

  v39 = a7;
  *&v66 = __PAIR64__(v46, v35);
  *(&v66 + 1) = __PAIR64__(DWORD1(v98), v47);
  *&v67 = __PAIR64__(v37, v49);
  BYTE8(v67) = v52;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MaskDisplayList and conformance MaskDisplayList();
  v34 = Attribute.init<A>(body:value:flags:update:)();
  v38 = v34;
  if (a3)
  {
LABEL_34:
    v40 = v62;
    v62 = v60;
    v60 = v40;
    v41 = v63;
    v63 = v61;
    v61 = v41;
  }

LABEL_35:
  if ((v36 & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](v34);
    MEMORY[0x1EEE9AC00](v43);
    AGGraphMutateAttribute();
    if ((v29 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v29)
  {
LABEL_37:
    LOBYTE(v66) = (v29 ^ 1) & 1;
    PreferencesOutputs.subscript.setter(v38 | (v66 << 32), &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
  }

LABEL_38:
  v64[2] = *v93;
  v64[3] = *&v93[16];
  v64[4] = *&v93[32];
  v65 = *&v93[48];
  v64[0] = v91;
  v64[1] = v92;
  outlined destroy of _ViewInputs(v64);
  *v39 = v62;
  v39[1] = v63;

  v68 = v84[0];
  v69 = v84[1];
  v70 = v84[2];
  v71 = v84[3];
  v66 = v82;
  v67 = v83;
  outlined destroy of _ViewInputs(&v66);
}

unint64_t lazy protocol witness table accessor for type MaskDefaultForeground and conformance MaskDefaultForeground()
{
  result = lazy protocol witness table cache variable for type MaskDefaultForeground and conformance MaskDefaultForeground;
  if (!lazy protocol witness table cache variable for type MaskDefaultForeground and conformance MaskDefaultForeground)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaskDefaultForeground and conformance MaskDefaultForeground);
  }

  return result;
}

uint64_t makeMask #1 <A>(inputs:) in static _MaskAlignmentEffect._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = a1[3];
  v40 = a1[2];
  v41 = v11;
  v42 = a1[4];
  v43 = *(a1 + 20);
  v12 = a1[1];
  v38 = *a1;
  v39 = v12;
  v20 = a3;
  v21 = a4;
  v19[1] = a2;
  a5(255, a3, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(a6, a3, v19);
  v13 = v19[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v30 = v40;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v28 = v38;
  v29 = v39;
  v15 = v40;
  LODWORD(v30) = 0;
  v18 = v13;
  v34[0] = v38;
  v34[1] = v39;
  v35 = v43;
  v34[3] = v41;
  v34[4] = v42;
  v34[2] = v30;
  v24 = v30;
  v25 = v41;
  v26 = v42;
  v27 = v43;
  v22 = v38;
  v23 = v39;
  v16 = *(a4 + 24);
  outlined init with copy of _ViewInputs(&v38, v36);
  outlined init with copy of _ViewInputs(v34, v36);
  v16(&v18, &v22, a3, a4);
  v36[2] = v24;
  v36[3] = v25;
  v36[4] = v26;
  v37 = v27;
  v36[0] = v22;
  v36[1] = v23;
  outlined destroy of _ViewInputs(v36);
  LODWORD(v30) = v15;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a7, &v28);
    AGSubgraphEndTreeElement();
  }

  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  return outlined destroy of _ViewInputs(&v22);
}

uint64_t closure #1 in makeMask #1 <A>(inputs:) in static _MaskEffect._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for _MaskEffect();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t specialized static View.makeViewList(view:inputs:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x6C676E6174636552, 0xE900000000000065);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Rectangle, LinearGradient>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x72477261656E694CLL, 0xEE00746E65696461);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Circle, ForegroundStyle>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA6CircleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA6CircleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x656C63726943, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA03AnyL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA03AnyL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x6570616853796E41, 0xE800000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>();
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA16RoundedRectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA16RoundedRectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD78EF0);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>();
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ContainerRelativeL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ContainerRelativeL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD78E90);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Path, ForegroundStyle>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA4PathVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA4PathVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](1752457552, 0xE400000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v8 = v17[0];
  v7 = v17[1];
  v9 = v18;
  v10 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD78DF0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v15[0]) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v8, v7, v9 | (v10 << 32), a1, v15);
    v11 = v15[1];
    v12 = v15[2];
    v13 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>();
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAAE17AsymmetricalInsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if ((v13 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v15[0]) = v9;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, v7, v9, v11, v12);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(v17);
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAAE17AsymmetricalInsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if ((v13 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v17);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

{
  v19 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, &v16);
  v7 = v16;
  v8 = v17;
  v9 = v18;
  outlined init with copy of _ViewListInputs(a2, &v16);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78D90);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v14[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v16, v7, *(&v7 + 1), v8 | (v9 << 32), a1, v14);
    v10 = v14[1];
    v11 = v14[2];
    v12 = v15;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>();
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA14GeometryReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0qR0O6EffectVGAZ15DisplayMaterialV2IDVACyAA0qwE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0qr10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_AA01_o5GroupW0VTt2B5(&v16, a3);
      AGSubgraphEndTreeElement();
      if ((v12 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v14[0]) = v8;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v7, *(&v7 + 1), v8, v10, v11);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(&v16);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA14GeometryReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0qR0O6EffectVGAZ15DisplayMaterialV2IDVACyAA0qwE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0qr10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_AA01_o5GroupW0VTt2B5(&v16, a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(&v16);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v8 = v17[0];
  v7 = v17[1];
  v9 = v18;
  v10 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD00000000000003ELL, 0x800000018DD78F90);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v15[0]) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v8, v7, v9 | (v10 << 32), a1, v15);
    v11 = v15[1];
    v12 = v15[2];
    v13 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA14GeometryReaderVyAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if ((v13 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v15[0]) = v9;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, v7, v9, v11, v12);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(v17);
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA14GeometryReaderVyAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt2B5(v17, a3);
      if ((v13 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v17);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v8 = v17[0];
  v7 = v17[1];
  v9 = v18;
  v10 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD00000000000003BLL, 0x800000018DD78E10);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v15[0]) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v8, v7, v9 | (v10 << 32), a1, v15);
    v11 = v15[1];
    v12 = v15[2];
    v13 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>();
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA015CombinedContentL033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if ((v13 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v15[0]) = v9;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, v7, v9, v11, v12);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(v17);
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA015CombinedContentL033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if ((v13 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v17);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v18);
  v8 = v18[0];
  v7 = v18[1];
  v9 = v19;
  v10 = v20;
  outlined init with copy of _ViewListInputs(a2, v18);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000036, 0x800000018DD78F50);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v16[0]) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v18, v8, v7, v9 | (v10 << 32), a1, v16);
    v11 = v16[0];
    v12 = v16[1];
    v13 = v16[2];
    v14 = v17;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA011GlassEffectQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO5EntryVGA4_8StableIDVACyACyAA6ZStackVyAA0s14EntryContainerE0AXLLVGAA013_TraitWritingF0VyAA01_Q5TraitVyAY3KeyVGGGA14_yAA18TransitionTraitKeyVGGGG_AA0s8MaterialT033_62A32D59B8A902A88963544196023CF7LLVTt2B5(v11, v18, a3);
      AGSubgraphEndTreeElement();
      if ((v14 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v16[0]) = v9;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, v7, v9, v12, v13);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(v18);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA011GlassEffectQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO5EntryVGA4_8StableIDVACyACyAA6ZStackVyAA0s14EntryContainerE0AXLLVGAA013_TraitWritingF0VyAA01_Q5TraitVyAY3KeyVGGGA14_yAA18TransitionTraitKeyVGGGG_AA0s8MaterialT033_62A32D59B8A902A88963544196023CF7LLVTt2B5(v11, v18, a3);
      if ((v14 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v18);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

{
  v21 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v18);
  v8 = v18[0];
  v7 = v18[1];
  v9 = v19;
  v10 = v20;
  outlined init with copy of _ViewListInputs(a2, v18);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000035, 0x800000018DD78FD0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v16[0]) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v18, v8, v7, v9 | (v10 << 32), a1, v16);
    v11 = v16[0];
    v12 = v16[1];
    v13 = v16[2];
    v14 = v17;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>();
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVGAA0s15TransitionStateF0AXLLVG_AA018ScheduledAnimationF0020_94C2570E898B27608B6V11D65EF8A1A07LLVySiGTt2B5(v11, v18, a3);
      AGSubgraphEndTreeElement();
      if ((v14 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v16[0]) = v9;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, v7, v9, v12, v13);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(v18);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryQ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0S9ContainerO4ItemVGA4_2IDVAA0s4ItemE0AXLLVGGAA0s11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0s18EffectPlatformItemF0AXLLVGAA0st11InteractionF0AXLLVGAA0st15FlexInteractionF0AXLLVGAA0s15TransitionStateF0AXLLVG_AA018ScheduledAnimationF0020_94C2570E898B27608B6V11D65EF8A1A07LLVySiGTt2B5(v11, v18, a3);
      if ((v14 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v18);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v8 = v17[0];
  v7 = v17[1];
  v9 = v18;
  v10 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000034, 0x800000018DD79080);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v15[0]) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v8, v7, v9 | (v10 << 32), a1, v15);
    v11 = v15[1];
    v12 = v15[2];
    v13 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>();
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVGAA013_TraitWritingF0VyAA18TransitionTraitKeyVGG_A_yAA12_LayoutTraitVyAA0P11EntryLayoutARLLV3KeyVGGTt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if ((v13 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v15[0]) = v9;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, v7, v9, v11, v12);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(v17);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0p15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVGAA013_TraitWritingF0VyAA18TransitionTraitKeyVGG_A_yAA12_LayoutTraitVyAA0P11EntryLayoutARLLV3KeyVGGTt2B5(v17, a3);
      if ((v13 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v17);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v30 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, &v21);
  v7 = v21;
  v8 = v22;
  v9 = v23;
  v10 = HIDWORD(v23);
  outlined init with copy of _ViewListInputs(a2, v28);
  if (AGTypeGetKind() - 2 > 3)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x77656956746F6F52, 0xE800000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v21) = v9;
    v20 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v28, v7, v8, v9 | (v10 << 32), a1, &v21);
    v11 = v21;
    v18 = v23;
    v19 = v22;
    v12 = v24;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    LODWORD(v21) = v11;
    outlined init with copy of _ViewListInputs(v28, &v22);
    v14 = AGSubgraphGetCurrent();
    if (!v14)
    {
      __break(1u);
    }

    v25 = v14;
    type metadata accessor for [Unmanaged<DynamicViewList<AnyView>.Item>](0, &lazy cache variable for type metadata for MutableBox<[Unmanaged<DynamicViewList<AnyView>.Item>]>, type metadata accessor for [Unmanaged<DynamicViewList<AnyView>.Item>], type metadata accessor for MutableBox);
    v15 = swift_allocObject();
    *(v15 + 16) = MEMORY[0x1E69E7CC0];
    v26 = v15;
    v27 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for DynamicViewList<AnyView>, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewList);
    lazy protocol witness table accessor for type DynamicViewList<AnyView> and conformance DynamicViewList<A>();
    v16 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of DynamicViewList<AnyView>(&v21);
    *a3 = v16;
    *(a3 + 8) = 0;
    *(a3 + 40) = 1;
    *(a3 + 48) = v29;
    *(a3 + 56) = 0;
    *(a3 + 64) = 1;
    if (ShouldRecordTree)
    {
      AGSubgraphEndTreeElement();
    }

    if ((v12 & 1) == 0)
    {
      LOBYTE(v21) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v20, v7, v8, v9, v19, v18);
    }

    outlined destroy of _ViewListInputs(v28);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7EllipseVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7EllipseVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x657370696C6C45, 0xE700000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7EllipseV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7EllipseV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Capsule, ForegroundStyle>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7CapsuleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7CapsuleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x656C7573706143, 0xE700000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7CapsuleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7CapsuleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA6CircleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA6CircleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>();
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA024PartialContainerRelativeL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA024PartialContainerRelativeL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD00000000000001DLL, 0x800000018DD78E50);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>();
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA018DefaultGlassEffectL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA018DefaultGlassEffectL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD7D4D0);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>();
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA22UnevenRoundedRectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA22UnevenRoundedRectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD78ED0);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA22UnevenRoundedRectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA22UnevenRoundedRectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>();
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ImplicitContainerL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ImplicitContainerL0VAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD78E70);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ContainerRelativeL0V6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ContainerRelativeL0V6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>();
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_m11TransactionF0VySbGG_AA022_EnvironmentKeyWritingF0VyAA4FontVSgGTt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_m11TransactionF0VySbGG_AA022_EnvironmentKeyWritingF0VyAA4FontVSgGTt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DDEA1B0);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v19 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, &v16);
  v7 = v16;
  v8 = v17;
  v9 = v18;
  outlined init with copy of _ViewListInputs(a2, &v16);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v14[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v16, v7, *(&v7 + 1), v8 | (v9 << 32), a1, v14);
    v10 = v14[2];
    v13 = v14[1];
    v11 = v15;
    type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>, type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA4TextV_AA018_OverlayPreferenceF0VyAR9LayoutKeyVAA7ForEachVySnySiGSiACyACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_m11TransactionF0VySdGGAA13_OffsetEffectVGGGTt2B5(&v16, a3);
      AGSubgraphEndTreeElement();
      if (v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA4TextV_AA018_OverlayPreferenceF0VyAR9LayoutKeyVAA7ForEachVySnySiGSiACyACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_m11TransactionF0VySdGGAA13_OffsetEffectVGGGTt2B5(&v16, a3);
      if (v11)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(&v16);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v14[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v7, *(&v7 + 1), v8, v13, v10);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x6E6974616D696E41, 0xED00007478655467);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>();
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA19ConcentricRectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA19ConcentricRectangleVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000013, 0x800000018DD78EB0);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>();
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA18EllipticalGradientVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA18EllipticalGradientVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD78F30);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA16RoundedRectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA16RoundedRectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Rectangle, AngularGradient>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA15AngularGradientVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA15AngularGradientVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x4772616C75676E41, 0xEF746E6569646172);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v20 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v3, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, v17);
  if (AGTypeGetKind() - 2 <= 3)
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v17, v6, v7, v8 | (v9 << 32), a1, v15);
    v10 = v15[1];
    v11 = v15[2];
    v12 = v16;
    type metadata accessor for _ShapeView<Rectangle, RadialGradient>();
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14RadialGradientVG_Tt2B5(v17, a3);
      AGSubgraphEndTreeElement();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14RadialGradientVG_Tt2B5(v17, a3);
      if (v12)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v17);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v15[0]) = v8;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, v7, v8, v10, v11);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(70);
  MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
  MEMORY[0x193ABEDD0](0x72476C6169646152, 0xEE00746E65696461);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}