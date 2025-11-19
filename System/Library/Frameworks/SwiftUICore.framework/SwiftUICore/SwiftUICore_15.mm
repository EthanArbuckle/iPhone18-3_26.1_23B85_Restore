uint64_t _ShapeStyle_RenderedShape.renderUnstyledText(_:layers:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v50[0] = 0;
  v50[1] = 0;
  v51 = 3;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v50, &v45, v1);
  v7 = *(v1 + 128);
  v6 = *(v1 + 136);
  ResolvedStyledText.frame(in:renderer:)(v3, *(v2 + 128), *(v2 + 136));
  v53 = CGRectOffset(v52, *(v2 + 112), *(v2 + 120));
  x = v53.origin.x;
  y = v53.origin.y;
  *(v1 + 160) = v53;
  v10 = (v1 + 160);
  if (ResolvedStyledText.needsRBDisplayList.getter())
  {

    Value = AGGraphGetValue();
    v12 = *Value;
    if (*(Value + 8))
    {

      swift_retain_n();
      v13 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v12);
    }

    else
    {

      v22 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v21);
      if (v22)
      {
        v13 = v22[9];
      }

      else
      {
        v13 = 1.0;
      }
    }

    v23 = ResolvedStyledText.makeRBDisplayList(for:renderer:deviceScale:)(v3, v7, v6, v13);
    if (v3)
    {

      v5 |= 0x200u;
    }

    v24 = *(v2 + 108);
    v25 = *(v2 + 192);
    [v23 boundingRect];
    v26 = v54.origin.x;
    v27 = v54.origin.y;
    width = v54.size.width;
    height = v54.size.height;
    IsNull = CGRectIsNull(v54);
    v31 = 0.0;
    if (IsNull)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v26;
    }

    if (IsNull)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v27;
    }

    if (IsNull)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = width;
    }

    if (!IsNull)
    {
      v31 = height;
    }

    v55 = CGRectIntegral(*(&v31 - 3));
    v35 = v55.origin.x;
    v36 = v55.origin.y;
    v37 = v55.size.width;
    v38 = v55.size.height;
    v39 = swift_allocObject();
    *(v39 + 16) = v23;
    *(v39 + 24) = v35;
    *(v39 + 32) = v36;
    v40 = one-time initialization token for defaultFlags;
    swift_unknownObjectRetain();
    if (v40 != -1)
    {
      swift_once();
    }

    v41 = static RasterizationOptions.Flags.defaultFlags;
    swift_unknownObjectRelease();
    *(v39 + 40) = -1;
    *(v39 + 44) = 768;
    *(v39 + 48) = v41 | v5;
    *(v39 + 52) = 3;
    v42 = *(v2 + 208);
    v47 = *(v2 + 192);
    v48[0] = v42;
    *(v48 + 12) = *(v2 + 220);
    v43 = *(v2 + 176);
    v45 = *v10;
    v46 = v43;
    outlined destroy of DisplayList.Item(&v45);
    *(v2 + 160) = x + v35;
    *(v2 + 168) = y + v36;
    *(v2 + 176) = v37;
    *(v2 + 184) = v38;
    *(v2 + 192) = v25;
    *(v2 + 200) = v39 | 0xC000000000000000;
    *(v2 + 216) = 0;
    *(v2 + 224) = 0;
    *(v2 + 208) = v24;
    *(v2 + 232) = 0;
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v3;
    *(v14 + 32) = v5;
    *(v14 + 40) = v7;
    *(v14 + 48) = v6;
    v15 = v14 | 0xA000000000000000;
    v16 = *(v1 + 108);
    v17 = *(v1 + 200);
    v18 = *(v2 + 208);
    v19 = *(v2 + 216);
    v20 = *(v2 + 224);

    outlined consume of DisplayList.Item.Value(v17, v18, v19, v20);
    *(v2 + 200) = v15;
    *(v2 + 208) = v16;
    *(v2 + 216) = 0;
    *(v2 + 224) = 0;
  }

  return _ShapeStyle_RenderedLayers.endLayer(shape:)(v2);
}

uint64_t sub_18D0C6798()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18D0C67D0()
{

  return swift_deallocObject();
}

void specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  v10 = *(a3 + 16);
  v74 = *a3;
  v75 = v10;
  v11 = *(a3 + 48);
  v76 = *(a3 + 32);
  v77 = v11;
  v12 = *(a3 + 80);
  v78 = *(a3 + 64);
  v79[0] = v12;
  *(v79 + 12) = *(a3 + 92);
  v13 = DWORD2(v79[1]) >> 29;
  if (DWORD2(v79[1]) >> 29 == 2)
  {
    v40 = a6;
    v41 = a7;
    v15 = a4;

    if (ResolvedStyledText.needsStyledRendering.getter())
    {
      v55 = v74;
      LOBYTE(v56) = v75 & 1;
      v16 = *(v15 + 16);
      v45 = *v15;
      v46 = v16;
      v47 = *(v15 + 32);
      LODWORD(v48) = *(v15 + 48);
      outlined init with copy of _ShapeStyle_Pack.Style?(&v45, &v67, a5, v40, v41, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      v17 = *AGGraphGetValue();

      outlined destroy of _ShapeStyle_Pack.Style?(&v45, a5, v40, v41, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      v53[0] = v17;
      LOBYTE(v67) = v9;
      _ShapeStyle_Pack.subscript.getter(&v67, 0, &v59);

      v44 = v9;
      _ShapeStyle_RenderedShape.renderKeyedText(_:style:name:layers:)(&v55, &v59, &v44);
      v71 = v63;
      v72[0] = v64;
      v72[1] = v65;
      v73 = v66;
      v67 = v59;
      v68 = v60;
      v69 = v61;
      v70 = v62;
      outlined destroy of _ShapeStyle_Pack.Style(&v67);
    }

    else
    {
      v67 = v74;
      LOBYTE(v68) = v75 & 1;
      _ShapeStyle_RenderedShape.renderUnstyledText(_:layers:)(&v67);
    }

    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v74);
  }

  else
  {
    v14 = BYTE8(v76);
    if (v13 == 3)
    {
      if (v78)
      {
        v67 = v74;
        LOBYTE(v68) = v75;
        *(&v68 + 1) = *(&v75 + 1);
        BYTE7(v68) = (*(&v75 + 1) | ((*(&v75 + 5) | (BYTE7(v75) << 16)) << 32)) >> 48;
        *(&v68 + 5) = *(&v75 + 5);
        *(&v68 + 1) = *(&v75 + 1);
        v69 = v76;
        v70 = v77;
        LOBYTE(v71) = v78;
        *(&v71 + 1) = *(&v78 + 1);
        BYTE7(v71) = (*(&v78 + 1) | ((*(&v78 + 5) | (BYTE7(v78) << 16)) << 32)) >> 48;
        *(&v71 + 5) = *(&v78 + 5);
        *(&v71 + 1) = *(&v78 + 1);
        v72[0] = v79[0];
        *&v72[1] = *&v79[1];
        DWORD2(v72[1]) = DWORD2(v79[1]) & 0x1FFFFFFF;
        _ShapeStyle_RenderedShape.renderUnstyledImage(_:layers:)(&v67);
        return;
      }

      if (BYTE8(v74) != 2)
      {
        if (BYTE8(v74) == 255)
        {
          *(v72 + 12) = *(a3 + 92);
          v18 = *(a3 + 80);
          v71 = *(a3 + 64);
          v72[0] = v18;
          v19 = *(a3 + 16);
          v67 = *a3;
          v68 = v19;
          v20 = *(a3 + 48);
          v69 = *(a3 + 32);
          v70 = v20;
          DWORD2(v72[1]) &= 0x1FFFFFFFu;
          v21 = a4;
          v22 = a7;
          v23 = a6;
          outlined init with copy of GraphicsImage(&v67, &v59);
          a6 = v23;
          a7 = v22;
          a4 = v21;
        }

        goto LABEL_14;
      }

      v27 = *(v74 + 24);
      v28 = *(v74 + 32);
      v29 = *(v74 + 40);
      v30 = *(v74 + 44);
      v31 = *(v74 + 45);
      v32 = *(v74 + 48);
      *&v45 = *(v74 + 16);
      BYTE8(v45) = v27;
      *&v46 = v28;
      v33 = v28;
      DWORD2(v46) = v29;
      BYTE12(v46) = v30;
      BYTE13(v46) = v31;
      *&v47 = v32;
      LOBYTE(v55) = v9;
      v34 = *(a4 + 16);
      v61 = *(a4 + 32);
      LODWORD(v62) = *(a4 + 48);
      v35 = *a4;
      v60 = v34;
      v59 = v35;
      v36 = a7;
      v37 = a6;
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v74, &v67);
      v42 = v45;
      outlined copy of Image.Location(v33);
      v38 = v32;
      outlined init with copy of _ShapeStyle_Pack.Style?(&v59, &v67, a5, v37, v36, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      v39 = *AGGraphGetValue();

      outlined destroy of _ShapeStyle_Pack.Style?(&v59, a5, v37, v36, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      *&v67 = v39;
      specialized _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(&v45, v14, &v55, &v67, a2);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v74);

      outlined consume of Image.Location(v33);
    }

    else if (v13 != 5 || DWORD2(v79[1]) != -1610612736 || v75 | ((*(&v75 + 1) | ((*(&v75 + 5) | (BYTE7(v75) << 16)) << 32)) << 8) | v78 | ((*(&v78 + 1) | ((*(&v78 + 5) | (BYTE7(v78) << 16)) << 32)) << 8) | v74 | *(&v74 + 1) | *(&v75 + 1) | v76 | *(&v76 + 1) | v77 | *(&v77 + 1) | *(&v78 + 1) | *&v79[0] | *(&v79[0] + 1) | *&v79[1])
    {
LABEL_14:
      v24 = *a4;
      v56 = *(a4 + 16);
      v55 = v24;
      v57 = *(a4 + 32);
      v58 = *(a4 + 48);
      v25 = a6;
      v26 = a7;
      outlined init with copy of _ShapeStyle_Pack.Style?(&v55, &v67, a5, a6, a7, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      AGGraphGetValue();

      outlined destroy of _ShapeStyle_Pack.Style?(&v55, a5, v25, v26, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      LOBYTE(v59) = v9;
      _ShapeStyle_Pack.subscript.getter(&v59, 0, &v67);

      v63 = v71;
      v64 = v72[0];
      v65 = v72[1];
      v66 = v73;
      v59 = v67;
      v60 = v68;
      v61 = v69;
      v62 = v70;
      v52 = v73;
      v53[0] = v9;
      v53[1] = 0;
      v54 = 0;
      v49 = v71;
      v50 = v72[0];
      v51 = v72[1];
      v45 = v67;
      v46 = v68;
      v47 = v69;
      v48 = v70;
      outlined init with copy of _ShapeStyle_Pack.Style(&v59, &v67);
      _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v53, &v45, a3);
      v71 = v49;
      v72[0] = v50;
      v72[1] = v51;
      v73 = v52;
      v67 = v45;
      v68 = v46;
      v69 = v47;
      v70 = v48;
      outlined destroy of _ShapeStyle_Pack.Style?(&v67, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
      v49 = v63;
      v50 = v64;
      v51 = v65;
      v52 = v66;
      v45 = v59;
      v46 = v60;
      v47 = v61;
      v48 = v62;
      _ShapeStyle_RenderedShape.render(style:)(&v45);
      _ShapeStyle_RenderedLayers.endLayer(shape:)(a3);
      outlined destroy of _ShapeStyle_Pack.Style(&v59);
    }
  }
}

void specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<StyledTextContentView>, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView);
}

{
  v6 = *a1;
  v7 = *(a3 + 16);
  v65 = *a3;
  v66 = v7;
  v8 = *(a3 + 48);
  v67 = *(a3 + 32);
  v68 = v8;
  v9 = *(a3 + 80);
  v69 = *(a3 + 64);
  v70[0] = v9;
  *(v70 + 12) = *(a3 + 92);
  v10 = DWORD2(v70[1]) >> 29;
  if (DWORD2(v70[1]) >> 29 == 2)
  {
    v12 = a4;

    if (ResolvedStyledText.needsStyledRendering.getter())
    {
      v45 = v65;
      LOBYTE(v46) = v66 & 1;
      v13 = *(v12 + 48);
      v37 = *(v12 + 32);
      v38 = v13;
      *&v39 = *(v12 + 64);
      v14 = *(v12 + 16);
      v35 = *v12;
      v36 = v14;
      outlined init with copy of _ShapeStyle_Pack.Style?(&v35, &v58, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      v15 = *AGGraphGetValue();

      outlined destroy of _ShapeStyle_Pack.Style?(&v35, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      v43[0] = v15;
      LOBYTE(v58) = v6;
      _ShapeStyle_Pack.subscript.getter(&v58, 0, &v50);

      v34 = v6;
      _ShapeStyle_RenderedShape.renderKeyedText(_:style:name:layers:)(&v45, &v50, &v34);
      v62 = v54;
      v63[0] = v55;
      v63[1] = v56;
      v64 = v57;
      v58 = v50;
      v59 = v51;
      v60 = v52;
      v61 = v53;
      outlined destroy of _ShapeStyle_Pack.Style(&v58);
    }

    else
    {
      v58 = v65;
      LOBYTE(v59) = v66 & 1;
      _ShapeStyle_RenderedShape.renderUnstyledText(_:layers:)(&v58);
    }

    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v65);
  }

  else
  {
    v11 = BYTE8(v67);
    if (v10 == 3)
    {
      if (v69)
      {
        v58 = v65;
        LOBYTE(v59) = v66;
        *(&v59 + 1) = *(&v66 + 1);
        BYTE7(v59) = (*(&v66 + 1) | ((*(&v66 + 5) | (BYTE7(v66) << 16)) << 32)) >> 48;
        *(&v59 + 5) = *(&v66 + 5);
        *(&v59 + 1) = *(&v66 + 1);
        v60 = v67;
        v61 = v68;
        LOBYTE(v62) = v69;
        *(&v62 + 1) = *(&v69 + 1);
        BYTE7(v62) = (*(&v69 + 1) | ((*(&v69 + 5) | (BYTE7(v69) << 16)) << 32)) >> 48;
        *(&v62 + 5) = *(&v69 + 5);
        *(&v62 + 1) = *(&v69 + 1);
        v63[0] = v70[0];
        *&v63[1] = *&v70[1];
        DWORD2(v63[1]) = DWORD2(v70[1]) & 0x1FFFFFFF;
        _ShapeStyle_RenderedShape.renderUnstyledImage(_:layers:)(&v58);
        return;
      }

      if (BYTE8(v65) != 2)
      {
        if (BYTE8(v65) == 255)
        {
          *(v63 + 12) = *(a3 + 92);
          v16 = *(a3 + 80);
          v62 = *(a3 + 64);
          v63[0] = v16;
          v17 = *(a3 + 16);
          v58 = *a3;
          v59 = v17;
          v18 = *(a3 + 48);
          v60 = *(a3 + 32);
          v61 = v18;
          DWORD2(v63[1]) &= 0x1FFFFFFFu;
          v19 = a4;
          outlined init with copy of GraphicsImage(&v58, &v50);
          a4 = v19;
        }

        goto LABEL_14;
      }

      v22 = *(v65 + 16);
      v23 = *(v65 + 24);
      v24 = *(v65 + 32);
      v25 = *(v65 + 40);
      v26 = *(v65 + 44);
      v27 = *(v65 + 45);
      v28 = *(v65 + 48);
      v29 = *(a4 + 48);
      v52 = *(a4 + 32);
      v53 = v29;
      v30 = *(a4 + 16);
      v50 = *a4;
      *&v35 = v22;
      BYTE8(v35) = v23;
      *&v36 = v24;
      DWORD2(v36) = v25;
      BYTE12(v36) = v26;
      BYTE13(v36) = v27;
      *&v37 = v28;
      LOBYTE(v45) = v6;
      *&v54 = *(a4 + 64);
      v51 = v30;
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v65, &v58);
      v32 = v22;
      outlined copy of Image.Location(v24);
      v33 = v28;
      outlined init with copy of _ShapeStyle_Pack.Style?(&v50, &v58, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      v31 = *AGGraphGetValue();

      outlined destroy of _ShapeStyle_Pack.Style?(&v50, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      *&v58 = v31;
      specialized _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(&v35, v11, &v45, &v58, a2);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v65);

      outlined consume of Image.Location(v24);
    }

    else if (v10 != 5 || DWORD2(v70[1]) != -1610612736 || v66 | ((*(&v66 + 1) | ((*(&v66 + 5) | (BYTE7(v66) << 16)) << 32)) << 8) | v69 | ((*(&v69 + 1) | ((*(&v69 + 5) | (BYTE7(v69) << 16)) << 32)) << 8) | v65 | *(&v65 + 1) | *(&v66 + 1) | v67 | *(&v67 + 1) | v68 | *(&v68 + 1) | *(&v69 + 1) | *&v70[0] | *(&v70[0] + 1) | *&v70[1])
    {
LABEL_14:
      v20 = *a4;
      v46 = *(a4 + 16);
      v21 = *(a4 + 48);
      v47 = *(a4 + 32);
      v48 = v21;
      v49 = *(a4 + 64);
      v45 = v20;
      outlined init with copy of _ShapeStyle_Pack.Style?(&v45, &v58, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      AGGraphGetValue();

      outlined destroy of _ShapeStyle_Pack.Style?(&v45, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      LOBYTE(v50) = v6;
      _ShapeStyle_Pack.subscript.getter(&v50, 0, &v58);

      v54 = v62;
      v55 = v63[0];
      v56 = v63[1];
      v57 = v64;
      v50 = v58;
      v51 = v59;
      v52 = v60;
      v53 = v61;
      v42 = v64;
      v43[0] = v6;
      v43[1] = 0;
      v44 = 0;
      v39 = v62;
      v40 = v63[0];
      v41 = v63[1];
      v35 = v58;
      v36 = v59;
      v37 = v60;
      v38 = v61;
      outlined init with copy of _ShapeStyle_Pack.Style(&v50, &v58);
      _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v43, &v35, a3);
      v62 = v39;
      v63[0] = v40;
      v63[1] = v41;
      v64 = v42;
      v58 = v35;
      v59 = v36;
      v60 = v37;
      v61 = v38;
      outlined destroy of _ShapeStyle_Pack.Style?(&v58, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
      v39 = v54;
      v40 = v55;
      v41 = v56;
      v42 = v57;
      v35 = v50;
      v36 = v51;
      v37 = v52;
      v38 = v53;
      _ShapeStyle_RenderedShape.render(style:)(&v35);
      _ShapeStyle_RenderedLayers.endLayer(shape:)(a3);
      outlined destroy of _ShapeStyle_Pack.Style(&v50);
    }
  }
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>, type metadata accessor for _ShapeView<Rectangle, LinearGradient>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle>>, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Circle, ForegroundStyle>>, type metadata accessor for _ShapeView<Circle, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Rectangle, ForegroundStyle>>, type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeSet.Wrapper>, &type metadata for _ShapeSet.Wrapper, &protocol witness table for _ShapeSet.Wrapper);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>, type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<CombinedContentShape, ForegroundStyle>>, type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Rectangle._Inset>>, &lazy cache variable for type metadata for AnimatedShape<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<AnyShape>>, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Ellipse, ForegroundStyle>>, type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Ellipse._Inset>>, &lazy cache variable for type metadata for AnimatedShape<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Capsule, ForegroundStyle>>, type metadata accessor for _ShapeView<Capsule, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Capsule._Inset>>, &lazy cache variable for type metadata for AnimatedShape<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Circle._Inset>>, &lazy cache variable for type metadata for AnimatedShape<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Path, ForegroundStyle>>, type metadata accessor for _ShapeView<Path, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>, type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle>>, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle._Inset>>, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<ImplicitContainerShape, ForegroundStyle>>, type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<ContainerRelativeShape, ForegroundStyle>>, type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<ContainerRelativeShape._Inset>>, &lazy cache variable for type metadata for AnimatedShape<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<ConcentricRectangle>>, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Rectangle, EllipticalGradient>>, type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle._Inset>>, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Rectangle, AngularGradient>>, type metadata accessor for _ShapeView<Rectangle, AngularGradient>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Rectangle, RadialGradient>>, type metadata accessor for _ShapeView<Rectangle, RadialGradient>);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeView<Rectangle, MeshGradient>>, type metadata accessor for _ShapeView<Rectangle, MeshGradient>);
}

{
  v6 = *a1;
  v7 = *(a3 + 16);
  v50 = *a3;
  v51 = v7;
  v8 = *(a3 + 48);
  v52 = *(a3 + 32);
  v53 = v8;
  v9 = *(a3 + 80);
  v54 = *(a3 + 64);
  v55[0] = v9;
  *(v55 + 12) = *(a3 + 92);
  v10 = DWORD2(v55[1]) >> 29;
  if (DWORD2(v55[1]) >> 29 == 2)
  {
    v11 = a4;

    if (ResolvedStyledText.needsStyledRendering.getter())
    {
      v25 = v50;
      LOBYTE(v26) = v51 & 1;
      v33[0] = v11;
      LOBYTE(v43) = v6;
      _ShapeStyle_Pack.subscript.getter(&v43, 0, &v35);
      v24 = v6;
      _ShapeStyle_RenderedShape.renderKeyedText(_:style:name:layers:)(&v25, &v35, &v24);
      v47 = v39;
      v48[0] = v40;
      v48[1] = v41;
      v49 = v42;
      v43 = v35;
      v44 = v36;
      v45 = v37;
      v46 = v38;
      outlined destroy of _ShapeStyle_Pack.Style(&v43);
    }

    else
    {
      v43 = v50;
      LOBYTE(v44) = v51 & 1;
      _ShapeStyle_RenderedShape.renderUnstyledText(_:layers:)(&v43);
    }

    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v50);
  }

  else if (v10 == 3)
  {
    if (v54)
    {
      v43 = v50;
      LOBYTE(v44) = v51;
      *(&v44 + 1) = *(&v51 + 1);
      BYTE7(v44) = (*(&v51 + 1) | ((*(&v51 + 5) | (BYTE7(v51) << 16)) << 32)) >> 48;
      *(&v44 + 5) = *(&v51 + 5);
      *(&v44 + 1) = *(&v51 + 1);
      v45 = v52;
      v46 = v53;
      LOBYTE(v47) = v54;
      *(&v47 + 1) = *(&v54 + 1);
      BYTE7(v47) = (*(&v54 + 1) | ((*(&v54 + 5) | (BYTE7(v54) << 16)) << 32)) >> 48;
      *(&v47 + 5) = *(&v54 + 5);
      *(&v47 + 1) = *(&v54 + 1);
      v48[0] = v55[0];
      *&v48[1] = *&v55[1];
      DWORD2(v48[1]) = DWORD2(v55[1]) & 0x1FFFFFFF;
      _ShapeStyle_RenderedShape.renderUnstyledImage(_:layers:)(&v43);
      return;
    }

    if (BYTE8(v50) != 2)
    {
      if (BYTE8(v50) == 255)
      {
        *(v48 + 12) = *(a3 + 92);
        v12 = *(a3 + 80);
        v47 = *(a3 + 64);
        v48[0] = v12;
        v13 = *(a3 + 16);
        v43 = *a3;
        v44 = v13;
        v14 = *(a3 + 48);
        v45 = *(a3 + 32);
        v46 = v14;
        DWORD2(v48[1]) &= 0x1FFFFFFFu;
        v15 = a4;
        outlined init with copy of GraphicsImage(&v43, &v35);
        a4 = v15;
      }

      goto LABEL_14;
    }

    v16 = *(v50 + 24);
    v17 = *(v50 + 32);
    v18 = *(v50 + 40);
    v19 = *(v50 + 44);
    v20 = *(v50 + 45);
    v21 = *(v50 + 48);
    *&v43 = *(v50 + 16);
    BYTE8(v43) = v16;
    *&v44 = v17;
    DWORD2(v44) = v18;
    BYTE12(v44) = v19;
    BYTE13(v44) = v20;
    *&v45 = v21;
    LOBYTE(v25) = v6;
    *&v35 = a4;
    v22 = v43;
    outlined copy of Image.Location(v17);
    v23 = v21;

    specialized _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(&v43, SBYTE8(v52), &v25, &v35, a2);

    outlined consume of Image.Location(v17);
  }

  else if (v10 != 5 || DWORD2(v55[1]) != -1610612736 || v51 | ((*(&v51 + 1) | ((*(&v51 + 5) | (BYTE7(v51) << 16)) << 32)) << 8) | v54 | ((*(&v54 + 1) | ((*(&v54 + 5) | (BYTE7(v54) << 16)) << 32)) << 8) | v50 | *(&v50 + 1) | *(&v51 + 1) | v52 | *(&v52 + 1) | v53 | *(&v53 + 1) | *(&v54 + 1) | *&v55[0] | *(&v55[0] + 1) | *&v55[1])
  {
LABEL_14:
    *&v43 = a4;
    LOBYTE(v25) = v6;
    _ShapeStyle_Pack.subscript.getter(&v25, 0, &v35);
    v33[0] = v6;
    v33[1] = 0;
    v34 = 0;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    outlined init with copy of _ShapeStyle_Pack.Style(&v35, &v43);
    _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v33, &v25, a3);
    v47 = v29;
    v48[0] = v30;
    v48[1] = v31;
    v49 = v32;
    v43 = v25;
    v44 = v26;
    v45 = v27;
    v46 = v28;
    outlined destroy of _ShapeStyle_Pack.Style?(&v43, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    _ShapeStyle_RenderedShape.render(style:)(&v25);
    _ShapeStyle_RenderedLayers.endLayer(shape:)(a3);
    outlined destroy of _ShapeStyle_Pack.Style(&v35);
  }
}

uint64_t specialized ShapeStyledDisplayList.updateValue()()
{
  v6 = v0;
  v129 = *MEMORY[0x1E69E9840];
  v7 = *(v0 + 12);
  Value = AGGraphGetValue();
  v9 = *Value;
  v10 = *(Value + 8);
  v95 = *(Value + 16);
  if ((v11 & 1) != 0 || !WORD1(v6[3].Kind))
  {

    v13 = ++static DisplayList.Version.lastValue;
    goto LABEL_6;
  }

  *&__src[0].f64[0] = *(&v6[1].Description + 4);
  LODWORD(__src[0].f64[1]) = v7;

  v12 = AGGraphAnyInputsChanged();
  v13 = ++static DisplayList.Version.lastValue;
  if (v12)
  {
LABEL_6:
    v14 = (2 * ((33 * (v13 >> 16)) ^ v13)) | 1;
    if (!v13)
    {
      LOWORD(v14) = 0;
    }

    WORD1(v6[3].Kind) = v14;
  }

  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_33;
  }

  Description = v6[2].Description;
  AGCreateWeakAttribute();
  v94 = v13;
  AGCreateWeakAttribute();
  v93 = Description;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v20 = AGGraphGetValue();
  v21 = *v20;
  v22 = v20[1];
  v23 = AGGraphGetValue();
  v24 = v21 - *v23;
  v25 = v22 - v23[1];
  type metadata accessor for CGSize(0);
  v26 = AGGraphGetValue();
  v27 = *v26;
  v28 = *(v26 + 8);
  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  if (v10 == 0.0)
  {
    v30 = v9;

    v36 = 0.0;
    v38 = 0.0;
  }

  else
  {
    v29 = *(**&v10 + 120);
    v30 = v9;

    v31 = swift_retain_n();
    v32 = v29(v31);
    v36 = CGRect.outset(by:)(v32, v33, v34, v35, 0.0, 0.0, v27, v28);
    v38 = v37;
    v27 = v39;
    v28 = v40;
  }

  v5 = __src;
  v1 = v110;
  _setThreadGeometryProxyData();
  v118.f64[0] = v30;
  v118.f64[1] = v10;
  *&v119.f64[0] = v95;
  *&v122 = 0;
  v124 = 0x40000000;
  v125 = v36;
  v126 = v38;
  v127 = v27;
  v128 = v28;
  v2 = *&v6->Kind;
  v4 = v117;
  memset(&v117[8], 0, 64);
  *v117 = v2;
  *&v117[72] = 0x20000000;
  *&v117[80] = 0;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v118, __src, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v130.origin.x = v36;
  v130.origin.y = v38;
  v130.size.width = v27;
  v130.size.height = v28;
  *&v15 = CGRectOffset(v130, v24, v25);
  LODWORD(v9) = v6->Description;
  LOWORD(v3) = WORD1(v6[3].Kind);
  LOBYTE(v13) = v6[3].Kind;
  __src[9].f64[0] = 0.0;
  LODWORD(__src[9].f64[1]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v41 = v122;
    v42 = v123;
    v43 = v120;
    v1[29] = v121;
    v1[30] = v41;
    v1[31] = v42;
    *(&v5[5] + 12) = *(v4 + 180);
    v44 = v119;
    *v5 = v118;
    v5[1] = v44;
    v4 = &v99;
    v45 = static GraphicsBlendMode.normal;
    v46 = byte_1ED52F818;
    *&__src[15].f64[1] = static GraphicsBlendMode.normal;
    LOBYTE(__src[16].f64[0]) = byte_1ED52F818;
    HIDWORD(__src[16].f64[0]) = 1065353216;
    LOBYTE(__src[16].f64[1]) = 0;
    v5[2] = v43;
    WORD2(__src[6].f64[1]) = v3;
    __src[7].f64[0] = v15;
    __src[7].f64[1] = v16;
    __src[8].f64[0] = v17;
    __src[8].f64[1] = v18;
    __src[10].f64[0] = v15;
    __src[10].f64[1] = v16;
    __src[11].f64[0] = v17;
    __src[11].f64[1] = v18;
    __src[12] = v94;
    __src[13] = 0uLL;
    *&__src[14].f64[0] = 3221225472;
    LODWORD(__src[14].f64[1]) = LODWORD(v9);
    BYTE4(__src[14].f64[1]) = v13;
    LODWORD(__src[15].f64[0]) = v93;
    LOBYTE(__dst[0]) = 0;
    outlined copy of GraphicsBlendMode(v45, v46);
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v117, __src, v6);
    Kind = v6[3].Kind;
    if (v2 == 0.0)
    {
      break;
    }

    LODWORD(v94) = LOBYTE(v6[3].Kind);
    v48 = *(*&v2 + 56);
    *&v9 = v48;
    swift_beginAccess();
    v13 = *(*&v2 + 24);
    if (*(v13 + 16) <= v48)
    {
LABEL_25:
      *(*&v2 + 56) = 0;
      Kind = v94;
      break;
    }

    v6 = &type metadata for _ShapeStyle_Pack.Style;
    v3 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?;
    while (1)
    {
      *(*&v2 + 56) = v48 + 1;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(*&v2 + 24) = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v48 < 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
        if (v48 < 0)
        {
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      if (*(v13 + 16) <= *&v9)
      {
        break;
      }

      v56 = v13 + 232 * *&v9;
      *(v56 + 260) = 1;
      *(*&v2 + 24) = v13;
      swift_endAccess();
      v57 = *(v56 + 52);
      v58 = *(v56 + 56);
      v59 = *(v56 + 72);
      v60 = *(v56 + 104);
      v1[9] = *(v56 + 88);
      v1[10] = v60;
      v1[7] = v58;
      v1[8] = v59;
      v61 = *(v56 + 120);
      v62 = *(v56 + 152);
      v63 = *(v56 + 168);
      v1[12] = *(v56 + 136);
      v1[13] = v62;
      v1[11] = v61;
      v64 = v5[1];
      v105 = *v5;
      v106 = v64;
      *(v109 + 12) = *(v5 + 92);
      v65 = v5[3];
      v66 = v5[5];
      v108[1] = v5[4];
      v67 = v108[1];
      v109[0] = v66;
      v68 = v5[3];
      v69 = *v5;
      v70 = v5[1];
      v107 = v5[2];
      v108[0] = v68;
      v110[1] = v70;
      v111 = v107;
      *&__dst[7] = v63;
      v110[0] = v69;
      v71 = v5[5];
      *(v1 + 92) = *(&v5[5] + 12);
      v1[4] = v67;
      v1[5] = v71;
      v1[3] = v65;
      __src[6].f64[0] = 0.0;
      v5[4] = 0u;
      v5[5] = 0u;
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      LODWORD(__src[6].f64[1]) = -1610612736;
      swift_retain_n();
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(__dst, &v99, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v105, &v99);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(v110);

      __src[9].f64[0] = v2;
      LODWORD(__src[9].f64[1]) = v57;
      if (*&__dst[7])
      {
        v72 = v1[12];
        *&v102[16] = v1[11];
        v103[0] = v72;
        v103[1] = v1[13];
        v73 = *(v1 + 8);
        v99 = *(v1 + 7);
        v100 = v73;
        v74 = v1[10];
        v101 = *(v1 + 9);
        *v102 = v74;
        v104 = *&__dst[7];
        _ShapeStyle_RenderedShape.render(style:)(&v99);
      }

      _ShapeStyle_RenderedLayers.endLayer(shape:)(__src);

      outlined destroy of GlassEntryView?(__dst, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);

      v49 = v5[5];
      *&v102[16] = v5[4];
      v103[0] = v49;
      *(v103 + 12) = *(v5 + 92);
      v50 = v5[1];
      v99 = *v5;
      v100 = v50;
      v51 = v5[3];
      v101 = v5[2];
      *v102 = v51;
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v99);
      v52 = v109[0];
      v5[4] = v108[1];
      v5[5] = v52;
      *(v5 + 92) = *(v109 + 12);
      v53 = v106;
      *v5 = v105;
      v5[1] = v53;
      v54 = v108[0];
      v5[2] = v107;
      v5[3] = v54;
      v48 = *(*&v2 + 56);
      *&v9 = v48;
      swift_beginAccess();
      v13 = *(*&v2 + 24);
      if (*(v13 + 16) <= v48)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v89 = v15;
    v90 = v16;
    v91 = v17;
    v92 = v18;
    swift_once();
    v18 = v92;
    v17 = v91;
    v16 = v90;
    v15 = v89;
  }

  v75 = (*&v117[72] >> 28) & 3;
  if (v75)
  {
    if (v75 == 1)
    {

      DisplayList.init(_:)(v76, __dst);
      v77 = *&__dst[0];
      v78 = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
      v79 = LODWORD(__src[14].f64[1]);
      v80 = __src[12].f64[0];
      v81 = v5[8];
      *v1 = v5[7];
      v1[1] = v81;
      *(v1 + 40) = xmmword_18DDA6ED0;
      v112 = v77;
      v113 = v78;
      v114 = v79;
      v111.f64[0] = v80;
      LOBYTE(__dst[0]) = Kind;
      DisplayList.Item.canonicalize(options:)(__dst);
      v82 = v1[3];
      v101 = *(v1 + 2);
      *v102 = v82;
      *&v102[12] = *(v1 + 60);
      v83 = *(v1 + 1);
      v99 = *v1;
      v100 = v83;
      v107 = v101;
      v108[0] = v82;
      *(v108 + 12) = *&v102[12];
      v105 = v99;
      v106 = v83;
      outlined init with copy of DisplayList.Item(&v99, __dst);
      DisplayList.init(_:)(&v105, &v96);
      v84 = v1[3];
      v1[9] = v1[2];
      v1[10] = v84;
      *(v1 + 172) = *(v1 + 60);
      v85 = v1[1];
      v1[7] = *v1;
      v1[8] = v85;
      outlined destroy of DisplayList.Item(__dst);
    }

    else
    {
      v96 = MEMORY[0x1E69E7CC0];
      v97 = 0;
      v98 = 0;
    }
  }

  else
  {
    v99 = *&v117[8];
    v100 = *&v117[24];
    v101 = *&v117[40];
    *v102 = *&v117[56];
    *&v102[16] = *&v117[72] & 0xFFFFFFFFCFFFFFFFLL;
    *&v102[24] = *&v117[80];
    __dst[0] = *&v117[8];
    __dst[1] = *&v117[24];
    __dst[2] = *&v117[40];
    __dst[3] = *&v117[56];
    *&__dst[4] = *&v117[72] & 0xFFFFFFFFCFFFFFFFLL;
    DWORD2(__dst[4]) = *&v117[80];
    outlined init with copy of DisplayList.Item(__dst, v110);
    DisplayList.init(_:)(&v99, &v96);
  }

  v86 = *&v117[24];
  v87 = *&v117[56];
  v1[2] = *&v117[40];
  v1[3] = v87;
  *(v1 + 60) = *&v117[68];
  *v1 = *&v117[8];
  v1[1] = v86;
  outlined destroy of _ShapeStyle_RenderedLayers.Layers(v110);
  memset(&v117[8], 0, 64);
  *&v117[72] = 0x20000000;
  *&v117[80] = 0;
  v99.f64[0] = v96;
  LOWORD(v99.f64[1]) = v97;
  HIDWORD(v99.f64[1]) = v98;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v118, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v101 = *&v117[32];
  *v102 = *&v117[48];
  *&v102[16] = *&v117[64];
  LODWORD(v103[0]) = *&v117[80];
  v99 = *v117;
  v100 = *&v117[16];
  outlined destroy of _ShapeStyle_RenderedLayers(&v99);
}

{
  v4 = v0;
  v191 = *MEMORY[0x1E69E9840];
  Description_high = HIDWORD(v0->Description);
  Value = AGGraphGetValue();
  v7 = *(Value + 3);
  v9 = *Value;
  v8 = *(Value + 1);
  v189[2] = *(Value + 2);
  v189[3] = v7;
  v189[0] = v9;
  v189[1] = v8;
  v10 = *(Value + 7);
  v12 = *(Value + 4);
  v11 = *(Value + 5);
  v189[6] = *(Value + 6);
  v189[7] = v10;
  v189[4] = v12;
  v189[5] = v11;
  v14 = *(Value + 9);
  v13 = Value[10];
  v15 = *(Value + 171);
  v189[8] = *(Value + 8);
  *(v190 + 11) = v15;
  v189[9] = v14;
  v190[0] = v13;
  v16 = Value[9];
  v184 = Value[8];
  v185 = v16;
  *v186 = Value[10];
  *&v186[11] = *(Value + 171);
  v17 = Value[5];
  v181 = Value[4];
  v182[0] = v17;
  v18 = Value[7];
  v182[1] = Value[6];
  v183 = v18;
  v19 = *(Value + 1);
  v177 = *Value;
  v178 = v19;
  v20 = Value[3];
  v179 = *(Value + 2);
  v180 = v20;
  v22 = (v21 & 1);
  v186[27] = v21 & 1;
  LODWORD(v23) = HIDWORD(v0[1].Description);
  *&v24 = LODWORD(v0[2].Description);
  outlined init with copy of Image.Resolved(v189, __dst);
  v25 = &v177;
  if (specialized Image.Resolved.mustUpdate(data:position:environment:)(&v4[3].Kind + 4))
  {
    v186[27] = 1;
    goto LABEL_8;
  }

  if (v22 || !HIWORD(v4[4].Kind))
  {
LABEL_8:
    v27 = ++static DisplayList.Version.lastValue;
    if (!static DisplayList.Version.lastValue)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  *&__dst[0].f64[0] = __PAIR64__(v4[2].Kind, v23);
  LODWORD(__dst[0].f64[1]) = Description_high;
  v26 = AGGraphAnyInputsChanged();
  v27 = ++static DisplayList.Version.lastValue;
  if (v26)
  {
    if (!v27)
    {
LABEL_9:
      LOWORD(v28) = 0;
      goto LABEL_10;
    }

LABEL_7:
    v28 = (2 * ((33 * (v27 >> 16)) ^ v27)) | 1;
LABEL_10:
    HIWORD(v4[4].Kind) = v28;
  }

  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_54;
  }

  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  rect_28 = LODWORD(v24);
  AGCreateWeakAttribute();
  v132 = v27;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v33 = AGGraphGetValue();
  v125 = v33[1];
  v126 = *v33;
  v34 = AGGraphGetValue();
  v35 = v34[1];
  v124 = *v34;
  v36 = AGGraphGetValue();
  v37 = *v36;
  v38 = v36[1];
  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  v172 = v177;
  v173 = v178;
  v174 = v179;
  v175 = v180;
  *&v176[28] = *(v182 + 12);
  *v176 = v181;
  *&v176[16] = v182[0];
  v39 = *(&v185 + 1);
  rect = v177;
  v122 = *&v176[24];
  v123 = v180;
  v40 = v181 & 0xFFFFFFFFC000FFFFLL;
  v41 = DWORD2(v182[1]) & 0x30301FF | 0x60000000;
  v42 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
  v45 = v37;
  v46 = v38;
  v121 = *&v176[8];
  if (BYTE8(v182[1]) == 2)
  {
    v45 = 0.0;
    if (*(&v185 + 1))
    {
      v43 = *(*(&v185 + 1) + 48);
      v44 = *(*(&v185 + 1) + 56);
    }

    if (*v173.i64 == 0.0)
    {
      v46 = 0.0;
    }

    else
    {
      v47 = vextq_s8(v173, v174, 8uLL);
      if (v174.u8[8] <= 3u)
      {
        v47 = vextq_s8(v47, v47, 8uLL);
      }

      v45 = vmuld_lane_f64(1.0 / *v173.i64, v47, 1);
      v46 = 1.0 / *v173.i64 * v47.f64[0];
    }
  }

  v119 = v173;
  v120 = v174;
  outlined init with copy of GraphicsImage(&v172, __dst);
  _setThreadGeometryProxyData();
  v164 = v119;
  v163 = rect;
  v165 = v120;
  v166 = v123;
  *v167 = v40;
  *&v167[24] = v122;
  *&v167[8] = v121;
  *&v167[40] = v41;
  recta = v43;
  v168 = v43;
  v169 = v44;
  v170 = v45;
  v171 = v46;
  v24 = *&v4->Kind;
  memset(&v162[8], 0, 64);
  *v162 = v24;
  *&v162[72] = 0x20000000;
  *&v162[80] = 0;

  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  v48 = v186[1] == 3 || v39 == 0;
  v49 = v48;
  v130 = v49;
  if (v48)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v50 = 0.0;
    v51 = -1610612736;
  }

  else
  {
    v42 = v39[8] * (v37 / v39[4]);
    v50 = v39[9] * (v38 / v39[5]);
    LOBYTE(__dst[0].f64[0]) = v186[1];
    LOBYTE(__src[0]) = v186[8];
    SymbolVariants.Shape.path(in:cornerRadius:)(*&v186[4] | (v186[8] << 32), v187, 0.0, 0.0, v42, v50);
    v51 = 0;
    v52 = v187[0];
    v53 = v187[1];
    v54 = v187[2];
    v55 = v187[3];
    v56 = v188 | 0x10000;
  }

  v1 = __src;
  v27 = &v145;
  v57 = v126 - v124;
  v58 = v125 - v35;
  _setThreadGeometryProxyData();
  *&v155 = v52;
  *(&v155 + 1) = v53;
  *&v156 = v54;
  *(&v156 + 1) = v55;
  *v157 = v56;
  memset(&v157[8], 0, 64);
  *&v157[72] = v51;
  v159 = 0;
  v158 = 0;
  v160 = v42;
  v161 = v50;
  if (!v130 || v53 | v52 | v54 | v55 | v56)
  {
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v155, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
    v192.origin.x = 0.0;
    v192.origin.y = 0.0;
    v192.size.width = v42;
    v192.size.height = v50;
    v193 = CGRectOffset(v192, v57, v58);
    Description = v4->Description;
    Kind_high = HIWORD(v4[4].Kind);
    Kind = v4[3].Kind;
    *&__src[9] = 0;
    DWORD2(__src[9]) = 0;
    if (one-time initialization token for normal != -1)
    {
      x = v193.origin.x;
      y = v193.origin.y;
      width = v193.size.width;
      height = v193.size.height;
      swift_once();
      v193.size.height = height;
      v193.size.width = width;
      v193.origin.y = y;
      v193.origin.x = x;
    }

    __src[3] = *&v157[16];
    __src[4] = *&v157[32];
    __src[5] = *&v157[48];
    *(&__src[5] + 12) = *&v157[60];
    __src[0] = v155;
    __src[1] = v156;
    *(&__src[15] + 1) = static GraphicsBlendMode.normal;
    LOBYTE(__src[16]) = byte_1ED52F818;
    DWORD1(__src[16]) = 1065353216;
    BYTE8(__src[16]) = 0;
    __src[2] = *v157;
    WORD6(__src[6]) = Kind_high;
    *&__src[7] = v193.origin.x;
    *(&__src[7] + 1) = *&v193.origin.y;
    *&__src[8] = v193.size.width;
    *(&__src[8] + 1) = *&v193.size.height;
    *&__src[10] = v193.origin.x;
    *(&__src[10] + 1) = *&v193.origin.y;
    *&__src[11] = v193.size.width;
    *(&__src[11] + 1) = *&v193.size.height;
    __src[12] = v132;
    __src[13] = 0uLL;
    *&__src[14] = 3221225472;
    DWORD2(__src[14]) = Description;
    BYTE12(__src[14]) = Kind;
    LODWORD(__src[15]) = rect_28;
    LOBYTE(v145) = 1;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(&v145, v162, __src, v4);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v155, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
    memcpy(__dst, __src, 0x109uLL);
    outlined destroy of _ShapeStyle_RenderedShape(__dst);
  }

  v22 = &static GraphicsBlendMode.normal;
  v2 = __dst;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v163, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v194.origin.x = recta;
  v194.origin.y = v44;
  v194.size.width = v45;
  v194.size.height = v46;
  *&v29 = CGRectOffset(v194, v57, v58);
  LODWORD(v23) = v4->Description;
  LOWORD(v25) = HIWORD(v4[4].Kind);
  LOBYTE(v3) = v4[3].Kind;
  __dst[9].f64[0] = 0.0;
  LODWORD(__dst[9].f64[1]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v62 = *v167;
    v63 = *&v167[16];
    v64 = v165;
    v1[20] = v166;
    v1[21] = v62;
    v1[22] = v63;
    *(v2 + 92) = *&v167[28];
    v65 = v164;
    *v2 = v163;
    v2[1] = v65;
    v67 = *(v22 + 8);
    *&__dst[15].f64[1] = *v22;
    v66 = *&__dst[15].f64[1];
    LOBYTE(__dst[16].f64[0]) = v67;
    HIDWORD(__dst[16].f64[0]) = 1065353216;
    LOBYTE(__dst[16].f64[1]) = 0;
    v2[2] = v64;
    WORD2(__dst[6].f64[1]) = v25;
    __dst[7].f64[0] = v29;
    __dst[7].f64[1] = v30;
    __dst[8].f64[0] = v31;
    __dst[8].f64[1] = v32;
    __dst[10].f64[0] = v29;
    __dst[10].f64[1] = v30;
    __dst[11].f64[0] = v31;
    __dst[11].f64[1] = v32;
    __dst[12] = v132;
    __dst[13] = 0uLL;
    *&__dst[14].f64[0] = 3221225472;
    LODWORD(__dst[14].f64[1]) = v23;
    BYTE4(__dst[14].f64[1]) = v3;
    LODWORD(__dst[15].f64[0]) = rect_28;
    LOBYTE(__src[0]) = 0;
    outlined copy of GraphicsBlendMode(v66, v67);
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__src, v162, __dst, v4);
    v68 = v4[3].Kind;
    if (v24 == 0.0)
    {
      break;
    }

    LODWORD(v132) = LOBYTE(v4[3].Kind);
    v3 = *(*&v24 + 56);
    v23 = v3;
    swift_beginAccess();
    v25 = *(*&v24 + 24);
    if (*(v25 + 2) <= v3)
    {
LABEL_46:
      *(*&v24 + 56) = 0;
      v68 = v132;
      break;
    }

    v4 = &type metadata for _ShapeStyle_Pack.Style;
    v22 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?;
    while (1)
    {
      *(*&v24 + 56) = v3 + 1;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(*&v24 + 24) = v25;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v3 < 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
        if (v3 < 0)
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      if (*(v25 + 2) <= v23)
      {
        break;
      }

      v78 = &v25[232 * v23];
      v78[260] = 1;
      *(*&v24 + 24) = v25;
      swift_endAccess();
      v79 = *(v78 + 13);
      v80 = *(v78 + 56);
      v81 = *(v78 + 72);
      v82 = *(v78 + 104);
      v1[2] = *(v78 + 88);
      v1[3] = v82;
      *v1 = v80;
      v1[1] = v81;
      v83 = *(v78 + 120);
      v84 = *(v78 + 152);
      v85 = *(v78 + 21);
      v1[5] = *(v78 + 136);
      v1[6] = v84;
      v1[4] = v83;
      v86 = *v2;
      v87 = v2[2];
      v137 = v2[1];
      v138 = v87;
      v136 = *v2;
      *(v140 + 12) = *(v2 + 92);
      v88 = v2[5];
      v90 = v2[2];
      v89 = v2[3];
      v91 = v89;
      v139[1] = v2[4];
      v140[0] = v88;
      v139[0] = v89;
      *&__src[7] = v85;
      v141 = v86;
      v142 = v137;
      *(v144 + 12) = *(v2 + 92);
      v92 = v2[5];
      *&v143[32] = v139[1];
      v144[0] = v92;
      *v143 = v90;
      *&v143[16] = v91;
      __dst[6].f64[0] = 0.0;
      v2[4] = 0u;
      v2[5] = 0u;
      v2[2] = 0u;
      v2[3] = 0u;
      *v2 = 0u;
      v2[1] = 0u;
      LODWORD(__dst[6].f64[1]) = -1610612736;
      swift_retain_n();
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(__src, &v145, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v136, &v145);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v141);

      __dst[9].f64[0] = v24;
      LODWORD(__dst[9].f64[1]) = v79;
      if (*&__src[7])
      {
        v93 = v1[5];
        v149 = v1[4];
        v150 = v93;
        v151 = v1[6];
        v94 = v1[1];
        v145 = *v1;
        v146 = v94;
        v95 = v1[3];
        v147 = v1[2];
        v148 = v95;
        v152 = *&__src[7];
        _ShapeStyle_RenderedShape.render(style:)(&v145);
      }

      _ShapeStyle_RenderedLayers.endLayer(shape:)(__dst);

      outlined destroy of GlassEntryView?(__src, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);

      v69 = v2[4];
      v70 = v2[5];
      v71 = v2[2];
      v148 = v2[3];
      v149 = v69;
      v150 = v70;
      *(v27 + 92) = *(v2 + 92);
      v72 = v2[1];
      *v27 = *v2;
      *(v27 + 16) = v72;
      *(v27 + 32) = v71;
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v145);
      v73 = v139[0];
      v74 = v140[0];
      v2[4] = v139[1];
      v2[5] = v74;
      *(v2 + 92) = *(v140 + 12);
      v75 = v137;
      v76 = v138;
      *v2 = v136;
      v2[1] = v75;
      v2[2] = v76;
      v2[3] = v73;
      v3 = *(*&v24 + 56);
      v23 = v3;
      swift_beginAccess();
      v25 = *(*&v24 + 24);
      if (*(v25 + 2) <= v3)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v112 = v29;
    v113 = v30;
    v114 = v31;
    v115 = v32;
    swift_once();
    v32 = v115;
    v31 = v114;
    v30 = v113;
    v29 = v112;
  }

  v96 = (*&v162[72] >> 28) & 3;
  if (v96)
  {
    if (v96 == 1)
    {

      DisplayList.init(_:)(v97, __src);
      v98 = v2[8];
      v141 = v2[7];
      v142 = v98;
      *&v143[8] = xmmword_18DDA6ED0;
      *&v143[32] = WORD4(__src[0]) | (HIDWORD(__src[0]) << 32) | 0x40000000;
      *&v143[40] = LODWORD(__dst[14].f64[1]);
      *&v143[24] = *&__src[0];
      *v143 = __dst[12].f64[0];
      LOBYTE(__src[0]) = v68;
      DisplayList.Item.canonicalize(options:)(__src);
      v99 = *v143;
      v100 = *&v143[16];
      *(v27 + 32) = *v143;
      *(v27 + 48) = v100;
      v101 = *&v143[28];
      *(v27 + 60) = *&v143[28];
      v103 = v141;
      v102 = v142;
      *v27 = v141;
      *(v27 + 16) = v102;
      v137 = v102;
      v138 = v99;
      v139[0] = v100;
      *(v139 + 12) = v101;
      v136 = v103;
      outlined init with copy of DisplayList.Item(&v145, __src);
      DisplayList.init(_:)(&v136, &v133);
      v104 = *&v143[16];
      v1[2] = *v143;
      v1[3] = v104;
      *(v1 + 60) = *&v143[28];
      v105 = v142;
      *v1 = v141;
      v1[1] = v105;
      outlined destroy of DisplayList.Item(__src);
    }

    else
    {
      v133 = MEMORY[0x1E69E7CC0];
      v134 = 0;
      v135 = 0;
    }
  }

  else
  {
    v145 = *&v162[8];
    v146 = *&v162[24];
    v147 = *&v162[40];
    v148 = *&v162[56];
    *&v149.f64[0] = *&v162[72] & 0xFFFFFFFFCFFFFFFFLL;
    LODWORD(v149.f64[1]) = *&v162[80];
    __src[0] = *&v162[8];
    __src[1] = *&v162[24];
    __src[2] = *&v162[40];
    __src[3] = *&v162[56];
    *&__src[4] = *&v162[72] & 0xFFFFFFFFCFFFFFFFLL;
    DWORD2(__src[4]) = *&v162[80];
    outlined init with copy of DisplayList.Item(__src, &v141);
    DisplayList.init(_:)(&v145, &v133);
  }

  v137 = *&v162[24];
  v138 = *&v162[40];
  v139[0] = *&v162[56];
  *(v139 + 12) = *&v162[68];
  v136 = *&v162[8];
  outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v136);
  memset(&v162[8], 0, 64);
  *&v162[72] = 0x20000000;
  *&v162[80] = 0;
  *&v145 = v133;
  WORD4(v145) = v134;
  HIDWORD(v145) = v135;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v163, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__src, __dst, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__src);

  *v143 = *&v162[32];
  *&v143[16] = *&v162[48];
  *&v143[32] = *&v162[64];
  LODWORD(v144[0].f64[0]) = *&v162[80];
  v141 = *v162;
  v142 = *&v162[16];
  outlined destroy of _ShapeStyle_RenderedLayers(&v141);
  v106 = v185;
  *(v27 + 128) = v184;
  *(v27 + 144) = v106;
  *(v27 + 160) = *v186;
  *(v27 + 172) = *&v186[12];
  v107 = v182[0];
  *(v27 + 64) = v181;
  *(v27 + 80) = v107;
  v108 = v183;
  *(v27 + 96) = v182[1];
  *(v27 + 112) = v108;
  v109 = v178;
  *v27 = v177;
  *(v27 + 16) = v109;
  v110 = v180;
  *(v27 + 32) = v179;
  *(v27 + 48) = v110;
  return outlined destroy of (value: Image.Resolved, changed: Bool)(&v145);
}

{
  v69 = *MEMORY[0x1E69E9840];
  v6 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = *(Value + 8);
  v10 = *(Value + 17);
  LODWORD(v11) = *(Value + 18);
  v51 = *(Value + 16);
  if ((v12 & 1) != 0 || !*(v0 + 50))
  {
    v14 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v6;
    v13 = AGGraphAnyInputsChanged();
    v14 = ++static DisplayList.Version.lastValue;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v15 = (2 * ((33 * (v14 >> 16)) ^ v14)) | 1;
  if (!v14)
  {
    LOWORD(v15) = 0;
  }

  *(v0 + 50) = v15;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_24:
    v45 = v16;
    v46 = v17;
    v47 = v18;
    v48 = v19;
    swift_once();
    v19 = v48;
    v18 = v47;
    v17 = v46;
    v16 = v45;
    goto LABEL_22;
  }

  v49 = v11;
  v20 = *(v0 + 40);
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v50 = v20;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v21 = AGGraphGetValue();
  v22 = *v21;
  v23 = v21[1];
  v24 = AGGraphGetValue();
  v25 = v22 - *v24;
  v26 = v23 - v24[1];
  v27 = AGGraphGetValue();
  v28 = *v27;
  v29 = *(v27 + 8);
  _threadGeometryProxyData();
  v4 = v14;
  _setThreadGeometryProxyData();
  v70.origin.x = 0.0;
  v70.origin.y = 0.0;
  v70.size.width = v28;
  v70.size.height = v29;
  if (CGRectIsNull(v70))
  {
    v11 = 0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 6;
  }

  else if (v8 == 0.0 && v9 == 0.0 || (v71.origin.x = 0.0, v71.origin.y = 0.0, v71.size.width = v28, v71.size.height = v29, CGRectIsInfinite(v71)))
  {
    v11 = 0;
    v32 = 0;
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v11 = swift_allocObject();
    v30 = 0.0;
    v31 = 0.0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v28;
    *(v11 + 40) = v29;
    *(v11 + 48) = v8;
    *(v11 + 56) = v9;
    v32 = 2;
    *(v11 + 64) = v51;
  }

  v5 = v50;
  v1 = &v65;
  v14 = __src;
  v33 = 0x10000;
  if (!v49)
  {
    v33 = 0;
  }

  v34 = 256;
  if (!v10)
  {
    v34 = 0;
  }

  v35 = v33 | v34 | v32;
  _setThreadGeometryProxyData();
  v58[0] = v11;
  v58[1] = 0;
  *&v58[2] = v30;
  *&v58[3] = v31;
  v58[4] = v35;
  v58[8] = 0;
  v59 = 0;
  v61 = 0;
  v60 = 0;
  v62 = v28;
  v63 = v29;
  v36 = *v0;
  v3 = v56;
  memset(&v56[8], 0, 64);
  v57 = 0;
  *&v56[72] = 0x20000000;
  *v56 = v36;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v58, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v72.origin.x = 0.0;
  v72.origin.y = 0.0;
  v72.size.width = v28;
  v72.size.height = v29;
  *&v16 = CGRectOffset(v72, v25, v26);
  v10 = *(v0 + 8);
  v2 = *(v0 + 50);
  LOBYTE(v11) = *(v0 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_24;
  }

LABEL_22:
  v37 = static GraphicsBlendMode.normal;
  v38 = byte_1ED52F818;
  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v39 = *(v3 + 136);
  v40 = *(v3 + 168);
  *(v14 + 64) = *(v3 + 152);
  *(v14 + 80) = v40;
  *(v14 + 92) = *(v3 + 180);
  v41 = *(v3 + 104);
  __src[0] = *(v3 + 88);
  __src[1] = v41;
  __src[2] = *(v3 + 120);
  __src[3] = v39;
  WORD6(__src[6]) = v2;
  *&__src[7] = v16;
  *(&__src[7] + 1) = v17;
  *&__src[8] = v18;
  *(&__src[8] + 1) = v19;
  *&__src[10] = v16;
  *(&__src[10] + 1) = v17;
  *&__src[11] = v18;
  *(&__src[11] + 1) = v19;
  __src[12] = v4;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v10;
  BYTE12(__src[14]) = v11;
  LODWORD(__src[15]) = v5;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(v37, v38);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v56, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v52);
  v65 = v52;
  v66 = v53;
  v67 = v54;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v58, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v42 = *&v56[48];
  *(v1 + 2) = *&v56[32];
  *(v1 + 3) = v42;
  *(v1 + 4) = *&v56[64];
  v68 = v57;
  v43 = *&v56[16];
  *v1 = *v56;
  *(v1 + 1) = v43;
  return outlined destroy of _ShapeStyle_RenderedLayers(&v65);
}

{
  v62 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>();
  Value = AGGraphGetValue();
  v5 = *Value;
  LODWORD(v6) = Value[1];
  if ((v7 & 1) != 0 || !*(v0 + 50))
  {
    v9 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v3;
    v8 = AGGraphAnyInputsChanged();
    v9 = ++static DisplayList.Version.lastValue;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v10 = (2 * ((33 * (v9 >> 16)) ^ v9)) | 1;
  if (!v9)
  {
    LOWORD(v10) = 0;
  }

  *(v0 + 50) = v10;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_25:
    v36 = v11;
    v37 = v12;
    v38 = v13;
    v39 = v14;
    swift_once();
    v14 = v39;
    v13 = v38;
    v12 = v37;
    v11 = v36;
    goto LABEL_23;
  }

  v40 = LODWORD(v6);
  v41 = v5;
  v5 = __src;
  v15 = *(v0 + 40);
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v42 = v15;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v16 = AGGraphGetValue();
  v17 = *v16;
  v18 = v16[1];
  v19 = AGGraphGetValue();
  v20 = v17 - *v19;
  v21 = v18 - v19[1];
  v22 = AGGraphGetValue();
  v23 = *v22;
  v24 = *(v22 + 8);
  _threadGeometryProxyData();
  v2 = v9;
  _setThreadGeometryProxyData();
  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.width = v23;
  v63.size.height = v24;
  IsNull = CGRectIsNull(v63);
  if (IsNull)
  {
    v9 = 0;
  }

  else
  {
    v9 = *&v23;
  }

  if (IsNull)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v24;
  }

  v26 = 6;
  if (!IsNull)
  {
    v26 = 0;
  }

  v27 = 0x10000;
  if (!v40)
  {
    v27 = 0;
  }

  v28 = 256;
  if (!v41)
  {
    v28 = 0;
  }

  v29 = v27 | v28 | v26;
  _setThreadGeometryProxyData();
  v49 = 0uLL;
  *&v50 = v9;
  *(&v50 + 1) = v6;
  *&v51 = v29;
  *&v53 = 0;
  *&v54[24] = 0;
  v55 = 0;
  v56 = 0;
  v57 = v23;
  v58 = v24;
  v30 = *v0;
  *(v47 + 8) = 0u;
  *(&v47[1] + 8) = 0u;
  *(&v47[2] + 8) = 0u;
  *(&v47[3] + 8) = 0u;
  *(&v47[4] + 1) = 0x20000000;
  v48 = 0;
  *&v47[0] = v30;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v49, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v64.origin.x = 0.0;
  v64.origin.y = 0.0;
  v64.size.width = v23;
  v64.size.height = v24;
  *&v11 = CGRectOffset(v64, v20, v21);
  LODWORD(v9) = *(v0 + 8);
  v1 = *(v0 + 50);
  LOBYTE(v6) = *(v0 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_25;
  }

LABEL_23:
  v31 = static GraphicsBlendMode.normal;
  v32 = byte_1ED52F818;
  *(v5 + 31) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = v32;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v33 = v52;
  v34 = *v54;
  v5[4] = v53;
  v5[5] = v34;
  *(v5 + 92) = *&v54[12];
  __src[0] = v49;
  __src[1] = v50;
  __src[2] = v51;
  __src[3] = v33;
  WORD6(__src[6]) = v1;
  *(v5 + 14) = v11;
  *(v5 + 15) = v12;
  *(v5 + 16) = v13;
  *(v5 + 17) = v14;
  *(v5 + 20) = v11;
  *(v5 + 21) = v12;
  *(v5 + 22) = v13;
  *(v5 + 23) = v14;
  *(v5 + 24) = v2;
  *(v5 + 25) = 0;
  *(v5 + 26) = 0;
  *(v5 + 27) = 0;
  *(v5 + 28) = 3221225472;
  DWORD2(__src[14]) = v9;
  BYTE12(__src[14]) = LOBYTE(v6);
  LODWORD(__src[15]) = v42;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(v31, v32);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v47, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v43);
  *&v60[0] = v43;
  WORD4(v60[0]) = v44;
  HIDWORD(v60[0]) = v45;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v49, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v60[2] = v47[2];
  v60[3] = v47[3];
  v60[4] = v47[4];
  v61 = v48;
  v60[0] = v47[0];
  v60[1] = v47[1];
  return outlined destroy of _ShapeStyle_RenderedLayers(v60);
}

{
  v5 = v0;
  v94 = *MEMORY[0x1E69E9840];
  LODWORD(v0) = *(v0 + 3);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = Value[1];
  if ((v9 & 1) != 0 || !WORD1(v5[3].Kind))
  {

    v11 = ++static DisplayList.Version.lastValue;
    goto LABEL_6;
  }

  *&__src[0].f64[0] = *(&v5[1].Description + 4);
  LODWORD(__src[0].f64[1]) = v0;

  v10 = AGGraphAnyInputsChanged();
  v11 = ++static DisplayList.Version.lastValue;
  if (v10)
  {
LABEL_6:
    v12 = (2 * ((33 * (v11 >> 16)) ^ v11)) | 1;
    if (!v11)
    {
      LOWORD(v12) = 0;
    }

    WORD1(v5[3].Kind) = v12;
  }

  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_30;
  }

  v2 = __src;
  Description = v5[2].Description;
  v64 = AGCreateWeakAttribute();
  v18 = AGCreateWeakAttribute();
  v19 = v18;
  v65 = HIDWORD(v18);
  v66 = Description;
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v63 = HIDWORD(v20);
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v62 = HIDWORD(v22);
  v24 = AGCreateWeakAttribute();
  v25 = v24;
  v61 = HIDWORD(v24);
  v26 = AGCreateWeakAttribute();
  v27 = v26;
  v60 = HIDWORD(v26);
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
  *&__src[0].f64[0] = v64;
  *&__src[0].f64[1] = __PAIR64__(v65, v19);
  *&__src[1].f64[0] = __PAIR64__(v63, v21);
  *&__src[1].f64[1] = __PAIR64__(v62, v23);
  *&__src[2].f64[0] = __PAIR64__(v61, v25);
  v3 = v11;
  *&__src[2].f64[1] = __PAIR64__(v60, v27);
  v4 = v85;
  LODWORD(__src[3].f64[0]) = v11;
  _setThreadGeometryProxyData();
  v86 = v7;
  v87 = v8;
  _ShapeSet.Wrapper.pathSet(in:)(__dst, v35, v36);
  v37 = *(&__dst[0] + 1);
  v0 = *&__dst[0];
  _setThreadGeometryProxyData();
  v86 = v0;
  v87 = v37;
  v88 = 0;
  v89 = 0x20000000;
  v91 = 0;
  v90 = 0;
  v92 = v35;
  v93 = v36;
  v1 = *&v5->Kind;
  memset(&v85[8], 0, 64);
  *v85 = v1;
  *&v85[72] = 0x20000000;
  *&v85[80] = 0;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v86, __src, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v95.origin.x = 0.0;
  v95.origin.y = 0.0;
  v95.size.width = v35;
  v95.size.height = v36;
  *&v13 = CGRectOffset(v95, v32, v33);
  LODWORD(v7) = v5->Description;
  LOWORD(v11) = WORD1(v5[3].Kind);
  LOBYTE(v0) = v5[3].Kind;
  __src[9].f64[0] = 0.0;
  LODWORD(__src[9].f64[1]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v38 = static GraphicsBlendMode.normal;
    v39 = byte_1ED52F818;
    *&__src[15].f64[1] = static GraphicsBlendMode.normal;
    LOBYTE(__src[16].f64[0]) = byte_1ED52F818;
    HIDWORD(__src[16].f64[0]) = 1065353216;
    LOBYTE(__src[16].f64[1]) = 0;
    v40 = *(v4 + 136);
    v41 = *(v4 + 168);
    __src[4] = *(v4 + 152);
    __src[5] = v41;
    *(v2 + 92) = *(v4 + 180);
    v42 = *(v4 + 104);
    __src[0] = *(v4 + 88);
    __src[1] = v42;
    __src[2] = *(v4 + 120);
    __src[3] = v40;
    WORD2(__src[6].f64[1]) = v11;
    __src[7].f64[0] = v13;
    __src[7].f64[1] = v14;
    __src[8].f64[0] = v15;
    __src[8].f64[1] = v16;
    __src[10].f64[0] = v13;
    __src[10].f64[1] = v14;
    __src[11].f64[0] = v15;
    __src[11].f64[1] = v16;
    __src[12] = v3;
    __src[13] = 0uLL;
    *&__src[14].f64[0] = 3221225472;
    LODWORD(__src[14].f64[1]) = v7;
    BYTE4(__src[14].f64[1]) = v0;
    LODWORD(__src[15].f64[0]) = v66;
    LOBYTE(__dst[0]) = 0;
    outlined copy of GraphicsBlendMode(v38, v39);
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v85, __src, v5);
    Kind = v5[3].Kind;
    if (v1 == 0.0)
    {
      break;
    }

    v67 = v5[3].Kind;
    v3 = *(*&v1 + 56);
    v7 = v3;
    swift_beginAccess();
    v0 = *(*&v1 + 24);
    if (*(v0 + 2) <= v3)
    {
LABEL_22:
      *(*&v1 + 56) = 0;
      Kind = v67;
      break;
    }

    v4 = 1;
    v5 = &type metadata for _ShapeStyle_Pack.Style;
    v11 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?;
    while (1)
    {
      *(*&v1 + 56) = v3 + 1;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(*&v1 + 24) = v0;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v3 & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
        if ((v3 & 0x80000000) != 0)
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      if (*(v0 + 2) <= v7)
      {
        break;
      }

      v45 = &v0[232 * v7];
      v45[260] = 1;
      *(*&v1 + 24) = v0;
      swift_endAccess();
      v46 = *(v45 + 13);
      v47 = *(v45 + 56);
      v48 = *(v45 + 72);
      v49 = *(v45 + 104);
      __dst[2] = *(v45 + 88);
      __dst[3] = v49;
      __dst[0] = v47;
      __dst[1] = v48;
      v50 = *(v45 + 120);
      v51 = *(v45 + 152);
      v52 = *(v45 + 21);
      __dst[5] = *(v45 + 136);
      __dst[6] = v51;
      __dst[4] = v50;
      v74 = __src[0];
      v75 = __src[1];
      *(v78 + 12) = *(v2 + 92);
      *&v77[16] = __src[4];
      v78[0] = __src[5];
      v76 = __src[2];
      *v77 = __src[3];
      v79 = __src[0];
      v80 = __src[1];
      *(v82 + 12) = *(v2 + 92);
      *&__dst[7] = v52;
      *&v81[32] = __src[4];
      v82[0] = __src[5];
      *v81 = __src[2];
      *&v81[16] = __src[3];
      memset(__src, 0, 104);
      LODWORD(__src[6].f64[1]) = -1610612736;
      swift_retain_n();
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(__dst, v71, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v74, v71);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v79);

      __src[9].f64[0] = v1;
      LODWORD(__src[9].f64[1]) = v46;
      if (*&__dst[7])
      {
        *&v71[64] = __dst[4];
        *v72 = __dst[5];
        *&v72[16] = __dst[6];
        *v71 = __dst[0];
        *&v71[16] = __dst[1];
        *&v71[32] = __dst[2];
        *&v71[48] = __dst[3];
        v73 = *&__dst[7];
        _ShapeStyle_RenderedShape.render(style:)(v71);
      }

      _ShapeStyle_RenderedLayers.endLayer(shape:)(__src);

      outlined destroy of GlassEntryView?(__dst, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);

      *&v71[64] = __src[4];
      *v72 = __src[5];
      *&v72[12] = *(v2 + 92);
      *v71 = __src[0];
      *&v71[16] = __src[1];
      *&v71[32] = __src[2];
      *&v71[48] = __src[3];
      outlined destroy of _ShapeStyle_RenderedShape.Shape(v71);
      __src[4] = *&v77[16];
      __src[5] = v78[0];
      *(v2 + 92) = *(v78 + 12);
      __src[0] = v74;
      __src[1] = v75;
      __src[2] = v76;
      __src[3] = *v77;
      v3 = *(*&v1 + 56);
      v7 = v3;
      swift_beginAccess();
      v0 = *(*&v1 + 24);
      if (*(v0 + 2) <= v3)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v56 = v13;
    v57 = v14;
    v58 = v15;
    v59 = v16;
    swift_once();
    v16 = v59;
    v15 = v58;
    v14 = v57;
    v13 = v56;
  }

  v53 = (*&v85[72] >> 28) & 3;
  if (v53)
  {
    if (v53 == 1)
    {

      DisplayList.init(_:)(v54, __dst);
      v79 = __src[7];
      v80 = __src[8];
      *&v81[8] = xmmword_18DDA6ED0;
      *&v81[24] = *&__dst[0];
      *&v81[32] = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
      *&v81[40] = LODWORD(__src[14].f64[1]);
      *v81 = __src[12].f64[0];
      LOBYTE(__dst[0]) = Kind;
      DisplayList.Item.canonicalize(options:)(__dst);
      *&v71[32] = *v81;
      *&v71[48] = *&v81[16];
      *&v71[60] = *&v81[28];
      *v71 = v79;
      *&v71[16] = v80;
      v76 = *v81;
      *v77 = *&v81[16];
      *&v77[12] = *&v81[28];
      v74 = v79;
      v75 = v80;
      outlined init with copy of DisplayList.Item(v71, __dst);
      DisplayList.init(_:)(&v74, &v68);
      __dst[2] = *v81;
      __dst[3] = *&v81[16];
      *(&__dst[3] + 12) = *&v81[28];
      __dst[0] = v79;
      __dst[1] = v80;
      outlined destroy of DisplayList.Item(__dst);
    }

    else
    {
      v68 = MEMORY[0x1E69E7CC0];
      v69 = 0;
      v70 = 0;
    }
  }

  else
  {
    *v71 = *&v85[8];
    *&v71[8] = *&v85[16];
    *&v71[24] = *&v85[32];
    *&v71[40] = *&v85[48];
    *&v71[56] = *&v85[64];
    *&v71[64] = *&v85[72] & 0xFFFFFFFFCFFFFFFFLL;
    *&v71[72] = *&v85[80];
    *&__dst[0] = *&v85[8];
    *(__dst + 8) = *&v85[16];
    *(&__dst[1] + 8) = *&v85[32];
    *(&__dst[2] + 8) = *&v85[48];
    *(&__dst[3] + 1) = *&v85[64];
    *&__dst[4] = *&v85[72] & 0xFFFFFFFFCFFFFFFFLL;
    DWORD2(__dst[4]) = *&v85[80];
    outlined init with copy of DisplayList.Item(__dst, &v79);
    DisplayList.init(_:)(v71, &v68);
  }

  *v81 = *&v85[40];
  *&v81[16] = *&v85[56];
  *&v81[28] = *&v85[68];
  v79 = *&v85[8];
  v80 = *&v85[24];
  outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v79);
  memset(&v85[8], 0, 64);
  *&v85[72] = 0x20000000;
  *&v85[80] = 0;
  *v71 = v68;
  *&v71[8] = v69;
  *&v71[12] = v70;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v86, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  *&v71[32] = *&v85[32];
  *&v71[48] = *&v85[48];
  *&v71[64] = *&v85[64];
  *v72 = *&v85[80];
  *v71 = *v85;
  *&v71[16] = *&v85[16];
  outlined destroy of _ShapeStyle_RenderedLayers(v71);
}

{
  v114 = *MEMORY[0x1E69E9840];
  v5 = *(v0 + 3);
  type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>();
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  v9 = *(Value + 16);
  v10 = *(Value + 24);
  LODWORD(v11) = *(Value + 32);
  LODWORD(v12) = *(Value + 33);
  if ((v13 & 1) != 0 || !*(v0 + 25))
  {
    v15 = ++static DisplayList.Version.lastValue;
    goto LABEL_6;
  }

  __src[0].f64[0] = *(v0 + 28);
  LODWORD(__src[0].f64[1]) = v5;
  v14 = AGGraphAnyInputsChanged();
  v15 = ++static DisplayList.Version.lastValue;
  if (v14)
  {
LABEL_6:
    v16 = (2 * ((33 * (v15 >> 16)) ^ v15)) | 1;
    if (!v15)
    {
      LOWORD(v16) = 0;
    }

    *(v0 + 25) = v16;
  }

  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_34;
  }

  v1 = __src;
  v72 = v11;
  v21 = *(v0 + 10);
  v74 = v15;
  v69 = AGCreateWeakAttribute();
  v22 = AGCreateWeakAttribute();
  v71 = v12;
  v23 = v22;
  v70 = HIDWORD(v22);
  v73 = v21;
  v24 = AGCreateWeakAttribute();
  v25 = v24;
  v68 = HIDWORD(v24);
  v26 = AGCreateWeakAttribute();
  v27 = v26;
  v67 = HIDWORD(v26);
  v28 = AGCreateWeakAttribute();
  v29 = v28;
  v66 = HIDWORD(v28);
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v65 = HIDWORD(v30);
  type metadata accessor for CGPoint(0);
  v32 = AGGraphGetValue();
  v33 = *v32;
  v34 = v32[1];
  v35 = AGGraphGetValue();
  v36 = v33 - *v35;
  v37 = v34 - v35[1];
  v38 = AGGraphGetValue();
  v39 = *v38;
  v40 = *(v38 + 8);
  _threadGeometryProxyData();
  *&__src[0].f64[0] = v69;
  *&__src[0].f64[1] = __PAIR64__(v70, v23);
  *&__src[1].f64[0] = __PAIR64__(v68, v25);
  *&__src[1].f64[1] = __PAIR64__(v67, v27);
  *&__src[2].f64[0] = __PAIR64__(v66, v29);
  v3 = &v96;
  *&__src[2].f64[1] = __PAIR64__(v65, v31);
  v4 = v74;
  LODWORD(__src[3].f64[0]) = v74;
  _setThreadGeometryProxyData();
  specialized Shape.effectivePath(in:)(v112, 0.0, 0.0, v39, v40, v7, v8, v9, v10);
  v41 = 0x10000;
  if (!v71)
  {
    v41 = 0;
  }

  v42 = 256;
  if (!v72)
  {
    v42 = 0;
  }

  v43 = v41 | v42 | v113;
  _setThreadGeometryProxyData();
  v102 = v112[1];
  v101 = v112[0];
  *&v103.f64[0] = v43;
  v105.f64[0] = 0.0;
  v107 = 0;
  v109 = 0;
  v108 = 0;
  v110 = v39;
  v111 = v40;
  v15 = *v0;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  *v100 = 0u;
  v96 = v15;
  *&v100[16] = 0x20000000;
  *&v100[24] = 0;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v101, __src, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v115.origin.x = 0.0;
  v115.origin.y = 0.0;
  v115.size.width = v39;
  v115.size.height = v40;
  *&v17 = CGRectOffset(v115, v36, v37);
  LODWORD(v11) = *(v0 + 2);
  LOWORD(v2) = *(v0 + 25);
  LOBYTE(v12) = v0[48];
  __src[9].f64[0] = 0.0;
  LODWORD(__src[9].f64[1]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v44 = static GraphicsBlendMode.normal;
    v45 = byte_1ED52F818;
    *&__src[15].f64[1] = static GraphicsBlendMode.normal;
    LOBYTE(__src[16].f64[0]) = byte_1ED52F818;
    HIDWORD(__src[16].f64[0]) = 1065353216;
    LOBYTE(__src[16].f64[1]) = 0;
    __src[4] = v105;
    __src[5] = v106;
    *(&v1[5] + 12) = *(v3 + 180);
    __src[0] = v101;
    __src[1] = v102;
    __src[2] = v103;
    __src[3] = v104;
    WORD2(__src[6].f64[1]) = v2;
    __src[7].f64[0] = v17;
    __src[7].f64[1] = v18;
    __src[8].f64[0] = v19;
    __src[8].f64[1] = v20;
    __src[10].f64[0] = v17;
    __src[10].f64[1] = v18;
    __src[11].f64[0] = v19;
    __src[11].f64[1] = v20;
    __src[12] = v4;
    __src[13] = 0uLL;
    *&__src[14].f64[0] = 3221225472;
    LODWORD(__src[14].f64[1]) = v11;
    BYTE4(__src[14].f64[1]) = v12;
    LODWORD(__src[15].f64[0]) = v73;
    LOBYTE(__dst[0]) = 0;
    outlined copy of GraphicsBlendMode(v44, v45);
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v96, __src, v0);
    v46 = v0[48];
    if (!v15)
    {
      break;
    }

    v75 = v46;
    v3 = *(v15 + 56);
    v2 = v3;
    swift_beginAccess();
    v0 = *(v15 + 24);
    if (*(v0 + 2) <= v3)
    {
LABEL_26:
      *(v15 + 56) = 0;
      v3 = &v96;
      v46 = v75;
      break;
    }

    v4 = 1;
    v11 = &type metadata for _ShapeStyle_Pack.Style;
    v12 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?;
    while (1)
    {
      *(v15 + 56) = v3 + 1;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v15 + 24) = v0;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v3 & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
        if ((v3 & 0x80000000) != 0)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      if (*(v0 + 2) <= v2)
      {
        break;
      }

      v48 = &v0[232 * v2];
      v48[260] = 1;
      *(v15 + 24) = v0;
      swift_endAccess();
      v49 = *(v48 + 13);
      v50 = *(v48 + 56);
      v51 = *(v48 + 72);
      v52 = *(v48 + 104);
      __dst[2] = *(v48 + 88);
      __dst[3] = v52;
      __dst[0] = v50;
      __dst[1] = v51;
      v53 = *(v48 + 120);
      v54 = *(v48 + 152);
      v55 = *(v48 + 21);
      __dst[5] = *(v48 + 136);
      __dst[6] = v54;
      __dst[4] = v53;
      v85 = __src[0];
      v86 = __src[1];
      *(v89 + 12) = *(v1 + 92);
      *&v88[16] = __src[4];
      v89[0] = __src[5];
      v87 = __src[2];
      *v88 = __src[3];
      v90 = __src[0];
      v91 = __src[1];
      *(v93 + 12) = *(v1 + 92);
      *&__dst[7] = v55;
      *&v92[32] = __src[4];
      v93[0] = __src[5];
      *v92 = __src[2];
      *&v92[16] = __src[3];
      memset(__src, 0, 104);
      LODWORD(__src[6].f64[1]) = -1610612736;
      swift_retain_n();
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(__dst, &v79, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v85, &v79);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v90);

      *&__src[9].f64[0] = v15;
      LODWORD(__src[9].f64[1]) = v49;
      if (*&__dst[7])
      {
        *&v82[16] = __dst[4];
        *v83 = __dst[5];
        *&v83[16] = __dst[6];
        v79 = __dst[0];
        v80 = __dst[1];
        v81 = __dst[2];
        *v82 = __dst[3];
        v84 = *&__dst[7];
        _ShapeStyle_RenderedShape.render(style:)(&v79);
      }

      _ShapeStyle_RenderedLayers.endLayer(shape:)(__src);

      outlined destroy of GlassEntryView?(__dst, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);

      *&v82[16] = __src[4];
      *v83 = __src[5];
      *&v83[12] = *(v1 + 92);
      v79 = __src[0];
      v80 = __src[1];
      v81 = __src[2];
      *v82 = __src[3];
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v79);
      __src[4] = *&v88[16];
      __src[5] = v89[0];
      *(v1 + 92) = *(v89 + 12);
      __src[0] = v85;
      __src[1] = v86;
      __src[2] = v87;
      __src[3] = *v88;
      v3 = *(v15 + 56);
      v2 = v3;
      swift_beginAccess();
      v0 = *(v15 + 24);
      if (*(v0 + 2) <= v3)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v61 = v17;
    v62 = v18;
    v63 = v19;
    v64 = v20;
    swift_once();
    v20 = v64;
    v19 = v63;
    v18 = v62;
    v17 = v61;
  }

  v56 = (*&v100[16] >> 28) & 3;
  if (v56)
  {
    if (v56 == 1)
    {

      DisplayList.init(_:)(v57, __dst);
      v90 = __src[7];
      v91 = __src[8];
      *&v92[8] = xmmword_18DDA6ED0;
      *&v92[24] = *&__dst[0];
      *&v92[32] = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
      *&v92[40] = LODWORD(__src[14].f64[1]);
      *v92 = __src[12].f64[0];
      LOBYTE(__dst[0]) = v46;
      DisplayList.Item.canonicalize(options:)(__dst);
      v81 = *v92;
      *v82 = *&v92[16];
      *&v82[12] = *&v92[28];
      v79 = v90;
      v80 = v91;
      v87 = *v92;
      *v88 = *&v92[16];
      *&v88[12] = *&v92[28];
      v85 = v90;
      v86 = v91;
      outlined init with copy of DisplayList.Item(&v79, __dst);
      DisplayList.init(_:)(&v85, &v76);
      __dst[2] = *v92;
      __dst[3] = *&v92[16];
      *(&__dst[3] + 12) = *&v92[28];
      __dst[0] = v90;
      __dst[1] = v91;
      outlined destroy of DisplayList.Item(__dst);
    }

    else
    {
      v76 = MEMORY[0x1E69E7CC0];
      v77 = 0;
      v78 = 0;
    }
  }

  else
  {
    v79 = v97;
    v80 = v98;
    v81 = v99;
    *v82 = *v100;
    *&v82[16] = *&v100[16] & 0xFFFFFFFFCFFFFFFFLL;
    *&v82[24] = *&v100[24];
    __dst[0] = v97;
    __dst[1] = v98;
    __dst[2] = v99;
    __dst[3] = *v100;
    *&__dst[4] = *&v100[16] & 0xFFFFFFFFCFFFFFFFLL;
    DWORD2(__dst[4]) = *&v100[24];
    outlined init with copy of DisplayList.Item(__dst, &v90);
    DisplayList.init(_:)(&v79, &v76);
  }

  *v92 = v99;
  *&v92[16] = *v100;
  *&v92[28] = *&v100[12];
  v90 = v97;
  v91 = v98;
  outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v90);
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  *v100 = 0u;
  *&v100[16] = 0x20000000;
  *&v100[24] = 0;
  v79.f64[0] = v76;
  LOWORD(v79.f64[1]) = v77;
  HIDWORD(v79.f64[1]) = v78;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v101, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v58 = v3[3];
  v81 = v3[2];
  *v82 = v58;
  *&v82[16] = v3[4];
  *v83 = *&v100[24];
  v59 = v3[1];
  v79 = *v3;
  v80 = v59;
  return outlined destroy of _ShapeStyle_RenderedLayers(&v79);
}

{
  v111 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 3);
  type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>();
  Value = AGGraphGetValue();
  v6 = *Value;
  LODWORD(v7) = *(Value + 8);
  LODWORD(v8) = *(Value + 9);
  if ((v9 & 1) != 0 || !*(v0 + 25))
  {

    v11 = ++static DisplayList.Version.lastValue;
    goto LABEL_6;
  }

  __src[0].f64[0] = *(v0 + 28);
  LODWORD(__src[0].f64[1]) = v4;

  v10 = AGGraphAnyInputsChanged();
  v11 = ++static DisplayList.Version.lastValue;
  if (v10)
  {
LABEL_6:
    v12 = (2 * ((33 * (v11 >> 16)) ^ v11)) | 1;
    if (!v11)
    {
      LOWORD(v12) = 0;
    }

    *(v0 + 25) = v12;
  }

  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_34;
  }

  v1 = __src;
  v69 = v7;
  v17 = *(v0 + 10);
  v71 = v11;
  v66 = AGCreateWeakAttribute();
  v18 = AGCreateWeakAttribute();
  v68 = v8;
  v19 = v18;
  v67 = HIDWORD(v18);
  v70 = v17;
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v65 = HIDWORD(v20);
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v64 = HIDWORD(v22);
  v24 = AGCreateWeakAttribute();
  v25 = v24;
  v63 = HIDWORD(v24);
  v26 = AGCreateWeakAttribute();
  v27 = v26;
  v62 = HIDWORD(v26);
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
  *&__src[0].f64[0] = v66;
  *&__src[0].f64[1] = __PAIR64__(v67, v19);
  *&__src[1].f64[0] = __PAIR64__(v65, v21);
  *&__src[1].f64[1] = __PAIR64__(v64, v23);
  *&__src[2].f64[0] = __PAIR64__(v63, v25);
  v2 = &v93;
  *&__src[2].f64[1] = __PAIR64__(v62, v27);
  v3 = v71;
  LODWORD(__src[3].f64[0]) = v71;
  _setThreadGeometryProxyData();

  specialized Shape.effectivePath(in:)(v37, v109, 0.0, 0.0, v35, v36);
  v38 = v110;

  v39 = 0x10000;
  if (!v68)
  {
    v39 = 0;
  }

  v40 = 256;
  if (!v69)
  {
    v40 = 0;
  }

  v6 = v39 | v40 | v38;
  _setThreadGeometryProxyData();
  v99 = v109[1];
  v98 = v109[0];
  *&v100.f64[0] = v6;
  v102.f64[0] = 0.0;
  v104 = 0;
  v106 = 0;
  v105 = 0;
  v107 = v35;
  v108 = v36;
  v11 = *v0;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  *v97 = 0u;
  v93 = v11;
  *&v97[16] = 0x20000000;
  *&v97[24] = 0;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v98, __src, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v112.origin.x = 0.0;
  v112.origin.y = 0.0;
  v112.size.width = v35;
  v112.size.height = v36;
  *&v13 = CGRectOffset(v112, v32, v33);
  LODWORD(v6) = *(v0 + 2);
  LOWORD(v8) = *(v0 + 25);
  LOBYTE(v7) = v0[48];
  __src[9].f64[0] = 0.0;
  LODWORD(__src[9].f64[1]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v41 = static GraphicsBlendMode.normal;
    v42 = byte_1ED52F818;
    *&__src[15].f64[1] = static GraphicsBlendMode.normal;
    LOBYTE(__src[16].f64[0]) = byte_1ED52F818;
    HIDWORD(__src[16].f64[0]) = 1065353216;
    LOBYTE(__src[16].f64[1]) = 0;
    __src[4] = v102;
    __src[5] = v103;
    *(&v1[5] + 12) = *(v2 + 180);
    __src[0] = v98;
    __src[1] = v99;
    __src[2] = v100;
    __src[3] = v101;
    WORD2(__src[6].f64[1]) = v8;
    __src[7].f64[0] = v13;
    __src[7].f64[1] = v14;
    __src[8].f64[0] = v15;
    __src[8].f64[1] = v16;
    __src[10].f64[0] = v13;
    __src[10].f64[1] = v14;
    __src[11].f64[0] = v15;
    __src[11].f64[1] = v16;
    __src[12] = v3;
    __src[13] = 0uLL;
    *&__src[14].f64[0] = 3221225472;
    LODWORD(__src[14].f64[1]) = v6;
    BYTE4(__src[14].f64[1]) = v7;
    LODWORD(__src[15].f64[0]) = v70;
    LOBYTE(__dst[0]) = 0;
    outlined copy of GraphicsBlendMode(v41, v42);
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v93, __src, v0);
    v43 = v0[48];
    if (!v11)
    {
      break;
    }

    v72 = v43;
    v2 = *(v11 + 56);
    v6 = v2;
    swift_beginAccess();
    v0 = *(v11 + 24);
    if (*(v0 + 2) <= v2)
    {
LABEL_26:
      *(v11 + 56) = 0;
      v2 = &v93;
      v43 = v72;
      break;
    }

    v3 = 1;
    v7 = &type metadata for _ShapeStyle_Pack.Style;
    v8 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?;
    while (1)
    {
      *(v11 + 56) = v2 + 1;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + 24) = v0;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v2 & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
        if ((v2 & 0x80000000) != 0)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      if (*(v0 + 2) <= v6)
      {
        break;
      }

      v45 = &v0[232 * v6];
      v45[260] = 1;
      *(v11 + 24) = v0;
      swift_endAccess();
      v46 = *(v45 + 13);
      v47 = *(v45 + 56);
      v48 = *(v45 + 72);
      v49 = *(v45 + 104);
      __dst[2] = *(v45 + 88);
      __dst[3] = v49;
      __dst[0] = v47;
      __dst[1] = v48;
      v50 = *(v45 + 120);
      v51 = *(v45 + 152);
      v52 = *(v45 + 21);
      __dst[5] = *(v45 + 136);
      __dst[6] = v51;
      __dst[4] = v50;
      v82 = __src[0];
      v83 = __src[1];
      *(v86 + 12) = *(v1 + 92);
      *&v85[16] = __src[4];
      v86[0] = __src[5];
      v84 = __src[2];
      *v85 = __src[3];
      v87 = __src[0];
      v88 = __src[1];
      *(v90 + 12) = *(v1 + 92);
      *&__dst[7] = v52;
      *&v89[32] = __src[4];
      v90[0] = __src[5];
      *v89 = __src[2];
      *&v89[16] = __src[3];
      memset(__src, 0, 104);
      LODWORD(__src[6].f64[1]) = -1610612736;
      swift_retain_n();
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(__dst, &v76, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v82, &v76);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v87);

      *&__src[9].f64[0] = v11;
      LODWORD(__src[9].f64[1]) = v46;
      if (*&__dst[7])
      {
        *&v79[16] = __dst[4];
        *v80 = __dst[5];
        *&v80[16] = __dst[6];
        v76 = __dst[0];
        v77 = __dst[1];
        v78 = __dst[2];
        *v79 = __dst[3];
        v81 = *&__dst[7];
        _ShapeStyle_RenderedShape.render(style:)(&v76);
      }

      _ShapeStyle_RenderedLayers.endLayer(shape:)(__src);

      outlined destroy of GlassEntryView?(__dst, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);

      *&v79[16] = __src[4];
      *v80 = __src[5];
      *&v80[12] = *(v1 + 92);
      v76 = __src[0];
      v77 = __src[1];
      v78 = __src[2];
      *v79 = __src[3];
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v76);
      __src[4] = *&v85[16];
      __src[5] = v86[0];
      *(v1 + 92) = *(v86 + 12);
      __src[0] = v82;
      __src[1] = v83;
      __src[2] = v84;
      __src[3] = *v85;
      v2 = *(v11 + 56);
      v6 = v2;
      swift_beginAccess();
      v0 = *(v11 + 24);
      if (*(v0 + 2) <= v2)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v58 = v13;
    v59 = v14;
    v60 = v15;
    v61 = v16;
    swift_once();
    v16 = v61;
    v15 = v60;
    v14 = v59;
    v13 = v58;
  }

  v53 = (*&v97[16] >> 28) & 3;
  if (v53)
  {
    if (v53 == 1)
    {

      DisplayList.init(_:)(v54, __dst);
      v87 = __src[7];
      v88 = __src[8];
      *&v89[8] = xmmword_18DDA6ED0;
      *&v89[24] = *&__dst[0];
      *&v89[32] = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
      *&v89[40] = LODWORD(__src[14].f64[1]);
      *v89 = __src[12].f64[0];
      LOBYTE(__dst[0]) = v43;
      DisplayList.Item.canonicalize(options:)(__dst);
      v78 = *v89;
      *v79 = *&v89[16];
      *&v79[12] = *&v89[28];
      v76 = v87;
      v77 = v88;
      v84 = *v89;
      *v85 = *&v89[16];
      *&v85[12] = *&v89[28];
      v82 = v87;
      v83 = v88;
      outlined init with copy of DisplayList.Item(&v76, __dst);
      DisplayList.init(_:)(&v82, &v73);
      __dst[2] = *v89;
      __dst[3] = *&v89[16];
      *(&__dst[3] + 12) = *&v89[28];
      __dst[0] = v87;
      __dst[1] = v88;
      outlined destroy of DisplayList.Item(__dst);
    }

    else
    {
      v73 = MEMORY[0x1E69E7CC0];
      v74 = 0;
      v75 = 0;
    }
  }

  else
  {
    v76 = v94;
    v77 = v95;
    v78 = v96;
    *v79 = *v97;
    *&v79[16] = *&v97[16] & 0xFFFFFFFFCFFFFFFFLL;
    *&v79[24] = *&v97[24];
    __dst[0] = v94;
    __dst[1] = v95;
    __dst[2] = v96;
    __dst[3] = *v97;
    *&__dst[4] = *&v97[16] & 0xFFFFFFFFCFFFFFFFLL;
    DWORD2(__dst[4]) = *&v97[24];
    outlined init with copy of DisplayList.Item(__dst, &v87);
    DisplayList.init(_:)(&v76, &v73);
  }

  *v89 = v96;
  *&v89[16] = *v97;
  *&v89[28] = *&v97[12];
  v87 = v94;
  v88 = v95;
  outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v87);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  *v97 = 0u;
  *&v97[16] = 0x20000000;
  *&v97[24] = 0;
  v76.f64[0] = v73;
  LOWORD(v76.f64[1]) = v74;
  HIDWORD(v76.f64[1]) = v75;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v98, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v55 = v2[3];
  v78 = v2[2];
  *v79 = v55;
  *&v79[16] = v2[4];
  *v80 = *&v97[24];
  v56 = v2[1];
  v76 = *v2;
  v77 = v56;
  outlined destroy of _ShapeStyle_RenderedLayers(&v76);
}

{
  v3 = &v62;
  v80 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = *(Value + 8);
  v8 = *(Value + 9);
  if ((v9 & 1) != 0 || !*(v0 + 50))
  {
    v11 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v4;
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

  *(v0 + 50) = v12;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v46 = v13;
    v47 = v14;
    v48 = v15;
    v49 = v16;
    swift_once();
    v16 = v49;
    v15 = v48;
    v14 = v47;
    v13 = v46;
    goto LABEL_18;
  }

  v56 = v7;
  v7 = __src;
  v17 = *(v0 + 40);
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v57 = v17;
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
  v1 = &v62;
  v2 = v11;
  _setThreadGeometryProxyData();
  v81.origin.x = 0.0;
  v81.origin.y = 0.0;
  v81.size.width = v25;
  v81.size.height = v26;
  v82 = CGRectInset(v81, v6, v6);
  y = v82.origin.y;
  x = v82.origin.x;
  height = v82.size.height;
  width = v82.size.width;
  IsNull = CGRectIsNull(v82);
  *v28.i64 = width;
  *&v28.i64[1] = height;
  *v29.i64 = x;
  *&v29.i64[1] = y;
  v30 = 6;
  if (IsNull)
  {
    v31 = -1;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v32 = vdupq_n_s64(v31);
  v53 = vbicq_s8(v28, v32);
  v55 = vbicq_s8(v29, v32);
  v33 = 0x10000;
  if (!v8)
  {
    v33 = 0;
  }

  v34 = 256;
  if (!v56)
  {
    v34 = 0;
  }

  v11 = v33 | v34 | v30;
  _setThreadGeometryProxyData();
  v69[1] = v53;
  v69[0] = v55;
  v70 = v11;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = v25;
  v76 = v26;
  v35 = *v0;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0x20000000;
  v68 = 0;
  v62 = v35;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v69, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v83.origin.x = 0.0;
  v83.origin.y = 0.0;
  v83.size.width = v25;
  v83.size.height = v26;
  *&v13 = CGRectOffset(v83, v22, v23);
  LODWORD(v11) = *(v0 + 8);
  LOWORD(v8) = *(v0 + 50);
  LOBYTE(v3) = *(v0 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_20;
  }

LABEL_18:
  v36 = static GraphicsBlendMode.normal;
  v37 = byte_1ED52F818;
  *(v7 + 31) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = v37;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v38 = *(v1 + 17);
  v39 = *(v1 + 21);
  v7[4] = *(v1 + 19);
  v7[5] = v39;
  *(v7 + 92) = *(v1 + 180);
  v40 = *(v1 + 13);
  __src[0] = *(v1 + 11);
  __src[1] = v40;
  __src[2] = *(v1 + 15);
  __src[3] = v38;
  WORD6(__src[6]) = v8;
  *(v7 + 14) = v13;
  *(v7 + 15) = v14;
  *(v7 + 16) = v15;
  *(v7 + 17) = v16;
  *(v7 + 20) = v13;
  *(v7 + 21) = v14;
  *(v7 + 22) = v15;
  *(v7 + 23) = v16;
  *(v7 + 24) = v2;
  *(v7 + 25) = 0;
  *(v7 + 26) = 0;
  *(v7 + 27) = 0;
  *(v7 + 28) = 3221225472;
  DWORD2(__src[14]) = v11;
  BYTE12(__src[14]) = v3;
  LODWORD(__src[15]) = v57;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(v36, v37);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v62, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v58);
  v41 = v59;
  v42 = v60;
  v1[63] = v58;
  WORD4(v78[0]) = v41;
  HIDWORD(v78[0]) = v42;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v69, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v43 = *(v1 + 3);
  v78[2] = *(v1 + 2);
  v78[3] = v43;
  v78[4] = *(v1 + 4);
  v79 = v68;
  v44 = *(v1 + 1);
  v78[0] = *v1;
  v78[1] = v44;
  return outlined destroy of _ShapeStyle_RenderedLayers(v78);
}

{
  v86 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = *(Value + 8);
  v7 = *(Value + 9);
  if ((v8 & 1) != 0 || !*(v0 + 50))
  {
    v10 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v3;

    v9 = AGGraphAnyInputsChanged();
    v10 = ++static DisplayList.Version.lastValue;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v11 = (2 * ((33 * (v10 >> 16)) ^ v10)) | 1;
  if (!v10)
  {
    LOWORD(v11) = 0;
  }

  *(v0 + 50) = v11;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v46 = v12;
    v47 = v13;
    v48 = v14;
    v49 = v15;
    swift_once();
    v15 = v49;
    v14 = v48;
    v13 = v47;
    v12 = v46;
    goto LABEL_15;
  }

  v16 = *(v0 + 40);
  v17 = AGCreateWeakAttribute();
  v57 = v6;
  v18 = v17;
  v55 = HIDWORD(v17);
  v19 = AGCreateWeakAttribute();
  v56 = v7;
  v20 = v19;
  v54 = HIDWORD(v19);
  v58 = v16;
  v21 = AGCreateWeakAttribute();
  v22 = v21;
  v53 = HIDWORD(v21);
  v23 = AGCreateWeakAttribute();
  v24 = v23;
  v52 = HIDWORD(v23);
  v25 = AGCreateWeakAttribute();
  v26 = v25;
  v51 = HIDWORD(v25);
  v27 = AGCreateWeakAttribute();
  v28 = v27;
  v50 = HIDWORD(v27);
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];
  v35 = AGGraphGetValue();
  v36 = *v35;
  v37 = *(v35 + 8);
  _threadGeometryProxyData();
  __dst[0] = __PAIR64__(v55, v18);
  __dst[1] = __PAIR64__(v54, v20);
  __dst[2] = __PAIR64__(v53, v22);
  v1 = &v63;
  __dst[3] = __PAIR64__(v52, v24);
  v2 = v10;
  __dst[4] = __PAIR64__(v51, v26);
  __dst[5] = __PAIR64__(v50, v28);
  LODWORD(__dst[6]) = v10;
  _setThreadGeometryProxyData();

  specialized Shape.effectivePath(in:)(v38, v84, v36);
  v39 = v85;

  v40 = 0x10000;
  if (!v56)
  {
    v40 = 0;
  }

  v41 = 256;
  if (!v57)
  {
    v41 = 0;
  }

  v5 = v40 | v41 | v39;
  _setThreadGeometryProxyData();
  v70 = v84[0];
  v71 = v84[1];
  *&v72 = v5;
  *&v74 = 0;
  v76 = 0;
  v78 = 0;
  v77 = 0;
  v79 = v36;
  v80 = v37;
  v42 = *v0;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v69 = 0;
  v68 = 0x20000000;
  v63 = v42;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v70, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v87.origin.x = 0.0;
  v87.origin.y = 0.0;
  v87.size.width = v36;
  v87.size.height = v37;
  *&v12 = CGRectOffset(v87, v33, v34);
  LODWORD(v5) = *(v0 + 8);
  LOWORD(v6) = *(v0 + 50);
  LOBYTE(v10) = *(v0 + 48);
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
  __src[4] = v74;
  __src[5] = v75;
  *(&__src[5] + 12) = *(v1 + 180);
  __src[0] = v70;
  __src[1] = v71;
  __src[2] = v72;
  __src[3] = v73;
  WORD6(__src[6]) = v6;
  *&__src[7] = v12;
  *(&__src[7] + 1) = v13;
  *&__src[8] = v14;
  *(&__src[8] + 1) = v15;
  *&__src[10] = v12;
  *(&__src[10] + 1) = v13;
  *&__src[11] = v14;
  *(&__src[11] + 1) = v15;
  __src[12] = v2;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v5;
  BYTE12(__src[14]) = v10;
  LODWORD(__src[15]) = v58;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v63, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v59);
  *&v82[0] = v59;
  WORD4(v82[0]) = v60;
  HIDWORD(v82[0]) = v61;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v70, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v43 = *(v1 + 3);
  v82[2] = *(v1 + 2);
  v82[3] = v43;
  v82[4] = *(v1 + 4);
  v83 = v69;
  v44 = *(v1 + 1);
  v82[0] = *v1;
  v82[1] = v44;
  outlined destroy of _ShapeStyle_RenderedLayers(v82);
}

{
  v66 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 12);
  type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>();
  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = Value[1];
  if ((v8 & 1) != 0 || !*(v0 + 50))
  {
    v10 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v4;
    v9 = AGGraphAnyInputsChanged();
    v10 = ++static DisplayList.Version.lastValue;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v11 = (2 * ((33 * (v10 >> 16)) ^ v10)) | 1;
  if (!v10)
  {
    LOWORD(v11) = 0;
  }

  *(v0 + 50) = v11;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v39 = v12;
    v40 = v13;
    v41 = v14;
    v42 = v15;
    swift_once();
    v15 = v42;
    v14 = v41;
    v13 = v40;
    v12 = v39;
    goto LABEL_18;
  }

  v43 = v7;
  v16 = *(v0 + 40);
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v44 = v16;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v17 = AGGraphGetValue();
  v18 = *v17;
  v19 = v17[1];
  v20 = AGGraphGetValue();
  v21 = v18 - *v20;
  v22 = v19 - v20[1];
  v23 = AGGraphGetValue();
  v24 = *v23;
  v25 = *(v23 + 8);
  _threadGeometryProxyData();
  v3 = v10;
  _setThreadGeometryProxyData();
  v67.origin.x = 0.0;
  v67.origin.y = 0.0;
  v67.size.width = v24;
  v67.size.height = v25;
  if (CGRectIsNull(v67))
  {
    v10 = 0;
    v26 = 0.0;
    v27 = 6;
  }

  else
  {
    v68.origin.x = 0.0;
    v68.origin.y = 0.0;
    v68.size.width = v24;
    v68.size.height = v25;
    v10 = *&v24;
    v26 = v25;
    v27 = !CGRectIsInfinite(v68);
  }

  v7 = &v62;
  v28 = 0x10000;
  if (!v43)
  {
    v28 = 0;
  }

  v29 = 256;
  if (!v6)
  {
    v29 = 0;
  }

  v30 = v28 | v29 | v27;
  _setThreadGeometryProxyData();
  v51 = 0uLL;
  *&v52 = v10;
  *(&v52 + 1) = v26;
  *&v53 = v30;
  *&v55 = 0;
  *&v56[24] = 0;
  v57 = 0;
  v58 = 0;
  v59 = v24;
  v60 = v25;
  v31 = *v0;
  *(v49 + 8) = 0u;
  *(&v49[1] + 8) = 0u;
  *(&v49[2] + 8) = 0u;
  *(&v49[3] + 8) = 0u;
  *(&v49[4] + 1) = 0x20000000;
  v50 = 0;
  *&v49[0] = v31;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v51, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v69.origin.x = 0.0;
  v69.origin.y = 0.0;
  v69.size.width = v24;
  v69.size.height = v25;
  *&v12 = CGRectOffset(v69, v21, v22);
  LODWORD(v10) = *(v0 + 8);
  v1 = *(v0 + 50);
  LOBYTE(v6) = *(v0 + 48);
  v2 = __src;
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_20;
  }

LABEL_18:
  v32 = static GraphicsBlendMode.normal;
  v33 = byte_1ED52F818;
  *(v2 + 31) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = v33;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v34 = v54;
  v35 = *v56;
  v2[4] = v55;
  v2[5] = v35;
  *(v2 + 92) = *&v56[12];
  __src[0] = v51;
  __src[1] = v52;
  __src[2] = v53;
  __src[3] = v34;
  WORD6(__src[6]) = v1;
  *(v2 + 14) = v12;
  *(v2 + 15) = v13;
  *(v2 + 16) = v14;
  *(v2 + 17) = v15;
  *(v2 + 20) = v12;
  *(v2 + 21) = v13;
  *(v2 + 22) = v14;
  *(v2 + 23) = v15;
  *(v2 + 24) = v3;
  *(v2 + 25) = 0;
  *(v2 + 26) = 0;
  *(v2 + 27) = 0;
  *(v2 + 28) = 3221225472;
  DWORD2(__src[14]) = v10;
  BYTE12(__src[14]) = v6;
  LODWORD(__src[15]) = v44;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(v32, v33);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v49, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v45);
  v62 = v45;
  v63 = v46;
  v64 = v47;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v51, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v36 = v49[3];
  *(v7 + 2) = v49[2];
  *(v7 + 3) = v36;
  *(v7 + 4) = v49[4];
  v65 = v50;
  v37 = v49[1];
  *v7 = v49[0];
  *(v7 + 1) = v37;
  return outlined destroy of _ShapeStyle_RenderedLayers(&v62);
}

{
  v4 = &v60;
  v80 = *MEMORY[0x1E69E9840];
  v5 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  v9 = *(Value + 9);
  if ((v10 & 1) != 0 || !*(v0 + 50))
  {
    v12 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v5;
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

  *(v0 + 50) = v13;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v44 = v14;
    v45 = v15;
    v46 = v16;
    v47 = v17;
    swift_once();
    v17 = v47;
    v16 = v46;
    v15 = v45;
    v14 = v44;
    goto LABEL_18;
  }

  v50 = v8;
  v18 = *(v0 + 40);
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v51 = v18;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v19 = AGGraphGetValue();
  v20 = *v19;
  v21 = v19[1];
  v22 = AGGraphGetValue();
  v23 = v20 - *v22;
  v24 = v21 - v22[1];
  v25 = AGGraphGetValue();
  v26 = *v25;
  v27 = *(v25 + 8);
  _threadGeometryProxyData();
  v2 = v12;
  _setThreadGeometryProxyData();
  v81.origin.x = 0.0;
  v81.origin.y = 0.0;
  v81.size.width = v26;
  v81.size.height = v27;
  v82 = CGRectInset(v81, v7, v7);
  width = v82.size.width;
  x = v82.origin.x;
  height = v82.size.height;
  y = v82.origin.y;
  if (CGRectIsNull(v82))
  {
    v28 = 6;
    v53 = 0u;
    v55 = 0u;
  }

  else
  {
    v83.size.width = width;
    v83.origin.x = x;
    v83.size.height = height;
    v83.origin.y = y;
    IsInfinite = CGRectIsInfinite(v83);
    *&v30 = width;
    *(&v30 + 1) = height;
    v53 = v30;
    *&v30 = x;
    *(&v30 + 1) = y;
    v55 = v30;
    v28 = !IsInfinite;
  }

  v1 = &v60;
  v8 = v76;
  v31 = 0x10000;
  if (!v9)
  {
    v31 = 0;
  }

  v32 = 256;
  if (!v50)
  {
    v32 = 0;
  }

  v12 = v31 | v32 | v28;
  _setThreadGeometryProxyData();
  v67[1] = v53;
  v67[0] = v55;
  v68 = v12;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = v26;
  v74 = v27;
  v33 = *v0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0x20000000;
  v66 = 0;
  v60 = v33;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v67, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v84.origin.x = 0.0;
  v84.origin.y = 0.0;
  v84.size.width = v26;
  v84.size.height = v27;
  *&v14 = CGRectOffset(v84, v23, v24);
  LODWORD(v12) = *(v0 + 8);
  LOWORD(v9) = *(v0 + 50);
  LOBYTE(v4) = *(v0 + 48);
  v3 = __src;
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_20;
  }

LABEL_18:
  v34 = static GraphicsBlendMode.normal;
  v35 = byte_1ED52F818;
  *(v3 + 31) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = v35;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v36 = *(v1 + 17);
  v37 = *(v1 + 21);
  v3[4] = *(v1 + 19);
  v3[5] = v37;
  *(v3 + 92) = *(v1 + 180);
  v38 = *(v1 + 13);
  __src[0] = *(v1 + 11);
  __src[1] = v38;
  __src[2] = *(v1 + 15);
  __src[3] = v36;
  WORD6(__src[6]) = v9;
  *(v3 + 14) = v14;
  *(v3 + 15) = v15;
  *(v3 + 16) = v16;
  *(v3 + 17) = v17;
  *(v3 + 20) = v14;
  *(v3 + 21) = v15;
  *(v3 + 22) = v16;
  *(v3 + 23) = v17;
  *(v3 + 24) = v2;
  *(v3 + 25) = 0;
  *(v3 + 26) = 0;
  *(v3 + 27) = 0;
  *(v3 + 28) = 3221225472;
  DWORD2(__src[14]) = v12;
  BYTE12(__src[14]) = v4;
  LODWORD(__src[15]) = v51;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(v34, v35);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v60, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v56);
  v39 = v57;
  v40 = v58;
  v1[63] = v56;
  v77 = v39;
  v78 = v40;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v67, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v41 = *(v1 + 3);
  v8[2] = *(v1 + 2);
  v8[3] = v41;
  v8[4] = *(v1 + 4);
  v79 = v66;
  v42 = *(v1 + 1);
  *v8 = *v1;
  v8[1] = v42;
  return outlined destroy of _ShapeStyle_RenderedLayers(v76);
}

{
  v84 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = *(Value + 8);
  v7 = *(Value + 9);
  if ((v8 & 1) != 0 || !*(v0 + 50))
  {
    v10 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    *&__dst[0] = *(v0 + 28);
    DWORD2(__dst[0]) = v3;
    v9 = AGGraphAnyInputsChanged();
    v10 = ++static DisplayList.Version.lastValue;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v11 = (2 * ((33 * (v10 >> 16)) ^ v10)) | 1;
  if (!v10)
  {
    LOWORD(v11) = 0;
  }

  *(v0 + 50) = v11;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_16:
    v48 = v12;
    v49 = v13;
    v50 = v14;
    v51 = v15;
    swift_once();
    v15 = v51;
    v14 = v50;
    v13 = v49;
    v12 = v48;
    goto LABEL_14;
  }

  v16 = *(v0 + 40);
  v17 = AGCreateWeakAttribute();
  v59 = v6;
  v18 = v17;
  v57 = HIDWORD(v17);
  v19 = AGCreateWeakAttribute();
  v58 = v7;
  v20 = v19;
  v56 = HIDWORD(v19);
  v60 = v16;
  v21 = AGCreateWeakAttribute();
  v22 = v21;
  v55 = HIDWORD(v21);
  v23 = AGCreateWeakAttribute();
  v24 = v23;
  v54 = HIDWORD(v23);
  v25 = AGCreateWeakAttribute();
  v26 = v25;
  v53 = HIDWORD(v25);
  v27 = AGCreateWeakAttribute();
  v28 = v27;
  v52 = HIDWORD(v27);
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];
  v2 = v10;
  v35 = AGGraphGetValue();
  v36 = *v35;
  v37 = v35[1];
  _threadGeometryProxyData();
  *&__src[0] = __PAIR64__(v57, v18);
  *(&__src[0] + 1) = __PAIR64__(v56, v20);
  *&__src[1] = __PAIR64__(v55, v22);
  v1 = &v65;
  *(&__src[1] + 1) = __PAIR64__(v54, v24);
  *&__src[2] = __PAIR64__(v53, v26);
  *(&__src[2] + 1) = __PAIR64__(v52, v28);
  LODWORD(__src[3]) = v10;
  _setThreadGeometryProxyData();
  if (v58)
  {
    v38 = 256;
  }

  else
  {
    v38 = 0;
  }

  *&__dst[7] = specialized AnimatedShape.shape(in:)(__dst, v38 | v59, v36, v37, v5);
  *(&__dst[7] + 1) = v39;
  *&__dst[8] = v40;
  *(&__dst[8] + 1) = v41;
  _setThreadGeometryProxyData();
  v79 = __dst[7];
  v80 = __dst[8];
  v74 = __dst[2];
  v75 = __dst[3];
  v77 = __dst[5];
  v78 = __dst[6];
  v76 = __dst[4];
  v72 = __dst[0];
  v73 = __dst[1];
  v42 = *v0;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v71 = 0;
  v70 = 0x20000000;
  v65 = v42;
  v43 = __dst[7];
  v44 = __dst[8];

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v72, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v85.origin = v43;
  v85.size = v44;
  *&v12 = CGRectOffset(v85, v33, v34);
  LODWORD(v10) = *(v0 + 8);
  LOWORD(v7) = *(v0 + 50);
  LOBYTE(v6) = *(v0 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_16;
  }

LABEL_14:
  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  __src[4] = v76;
  __src[5] = v77;
  *(&__src[5] + 12) = *(v1 + 180);
  __src[0] = v72;
  __src[1] = v73;
  __src[2] = v74;
  __src[3] = v75;
  WORD6(__src[6]) = v7;
  *&__src[7] = v12;
  *(&__src[7] + 1) = v13;
  *&__src[8] = v14;
  *(&__src[8] + 1) = v15;
  *&__src[10] = v12;
  *(&__src[10] + 1) = v13;
  *&__src[11] = v14;
  *(&__src[11] + 1) = v15;
  __src[12] = v2;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v10;
  BYTE12(__src[14]) = v6;
  LODWORD(__src[15]) = v60;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v65, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v61);
  *&v82[0] = v61;
  WORD4(v82[0]) = v62;
  HIDWORD(v82[0]) = v63;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v72, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v45 = *(v1 + 3);
  v82[2] = *(v1 + 2);
  v82[3] = v45;
  v82[4] = *(v1 + 4);
  v83 = v71;
  v46 = *(v1 + 1);
  v82[0] = *v1;
  v82[1] = v46;
  return outlined destroy of _ShapeStyle_RenderedLayers(v82);
}

{
  v84 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = *(Value + 8);
  v7 = *(Value + 9);
  if ((v8 & 1) != 0 || !*(v0 + 50))
  {
    v10 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v3;
    v9 = AGGraphAnyInputsChanged();
    v10 = ++static DisplayList.Version.lastValue;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v11 = (2 * ((33 * (v10 >> 16)) ^ v10)) | 1;
  if (!v10)
  {
    LOWORD(v11) = 0;
  }

  *(v0 + 50) = v11;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v44 = v12;
    v45 = v13;
    v46 = v14;
    v47 = v15;
    swift_once();
    v15 = v47;
    v14 = v46;
    v13 = v45;
    v12 = v44;
    goto LABEL_15;
  }

  v16 = *(v0 + 40);
  v17 = AGCreateWeakAttribute();
  v55 = v6;
  v18 = v17;
  v53 = HIDWORD(v17);
  v19 = AGCreateWeakAttribute();
  v54 = v7;
  v20 = v19;
  v52 = HIDWORD(v19);
  v56 = v16;
  v21 = AGCreateWeakAttribute();
  v22 = v21;
  v51 = HIDWORD(v21);
  v23 = AGCreateWeakAttribute();
  v24 = v23;
  v50 = HIDWORD(v23);
  v25 = AGCreateWeakAttribute();
  v26 = v25;
  v49 = HIDWORD(v25);
  v27 = AGCreateWeakAttribute();
  v28 = v27;
  v48 = HIDWORD(v27);
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];
  v35 = AGGraphGetValue();
  v36 = *v35;
  v37 = *(v35 + 8);
  _threadGeometryProxyData();
  __dst[0] = __PAIR64__(v53, v18);
  __dst[1] = __PAIR64__(v52, v20);
  __dst[2] = __PAIR64__(v51, v22);
  v1 = &v61;
  __dst[3] = __PAIR64__(v50, v24);
  v2 = v10;
  __dst[4] = __PAIR64__(v49, v26);
  __dst[5] = __PAIR64__(v48, v28);
  LODWORD(__dst[6]) = v10;
  _setThreadGeometryProxyData();
  v85.origin.x = 0.0;
  v85.origin.y = 0.0;
  v85.size.width = v36;
  v85.size.height = v37;
  v86 = CGRectInset(v85, v5, v5);
  specialized Circle.path(in:)(v82, v86.origin.x, v86.origin.y, v86.size.width, v86.size.height);
  v38 = 0x10000;
  if (!v54)
  {
    v38 = 0;
  }

  v39 = 256;
  if (!v55)
  {
    v39 = 0;
  }

  v10 = v38 | v39 | v83;
  _setThreadGeometryProxyData();
  v68 = v82[0];
  v69 = v82[1];
  *&v70 = v10;
  *&v72 = 0;
  v74 = 0;
  v76 = 0;
  v75 = 0;
  v77 = v36;
  v78 = v37;
  v40 = *v0;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v67 = 0;
  v66 = 0x20000000;
  v61 = v40;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v68, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v87.origin.x = 0.0;
  v87.origin.y = 0.0;
  v87.size.width = v36;
  v87.size.height = v37;
  *&v12 = CGRectOffset(v87, v33, v34);
  LODWORD(v10) = *(v0 + 8);
  LOWORD(v7) = *(v0 + 50);
  LOBYTE(v6) = *(v0 + 48);
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
  __src[4] = v72;
  __src[5] = v73;
  *(&__src[5] + 12) = *(v1 + 180);
  __src[0] = v68;
  __src[1] = v69;
  __src[2] = v70;
  __src[3] = v71;
  WORD6(__src[6]) = v7;
  *&__src[7] = v12;
  *(&__src[7] + 1) = v13;
  *&__src[8] = v14;
  *(&__src[8] + 1) = v15;
  *&__src[10] = v12;
  *(&__src[10] + 1) = v13;
  *&__src[11] = v14;
  *(&__src[11] + 1) = v15;
  __src[12] = v2;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v10;
  BYTE12(__src[14]) = v6;
  LODWORD(__src[15]) = v56;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v61, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v57);
  *&v80[0] = v57;
  WORD4(v80[0]) = v58;
  HIDWORD(v80[0]) = v59;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v68, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v41 = *(v1 + 3);
  v80[2] = *(v1 + 2);
  v80[3] = v41;
  v80[4] = *(v1 + 4);
  v81 = v67;
  v42 = *(v1 + 1);
  v80[0] = *v1;
  v80[1] = v42;
  return outlined destroy of _ShapeStyle_RenderedLayers(v80);
}

{
  v3 = v0;
  v83 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 12);
  type metadata accessor for _ShapeView<Path, ForegroundStyle>();
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = *(Value + 8);
  v8 = *(Value + 16);
  v9 = *(Value + 24);
  v10 = *(Value + 32);
  v55 = *(Value + 33);
  v54 = *(Value + 34);
  if ((v11 & 1) != 0 || !*(v3 + 50))
  {
    outlined copy of Path.Storage(v7, v6, v8, v9, v10);
    v13 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v3 + 28);
    LODWORD(__dst[1]) = v4;
    outlined copy of Path.Storage(v7, v6, v8, v9, v10);
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

  *(v3 + 50) = v14;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v39 = v15;
    v40 = v16;
    v41 = v17;
    v42 = v18;
    swift_once();
    v18 = v42;
    v17 = v41;
    v16 = v40;
    v15 = v39;
    goto LABEL_15;
  }

  v52 = v13;
  v19 = *(v3 + 40);
  v51 = v10;
  v53 = v8;
  v48 = AGCreateWeakAttribute();
  v47 = AGCreateWeakAttribute();
  v50 = v19;
  v46 = AGCreateWeakAttribute();
  v44 = AGCreateWeakAttribute();
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v45 = HIDWORD(v20);
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v43 = HIDWORD(v22);
  type metadata accessor for CGPoint(0);
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = v24[1];
  v27 = AGGraphGetValue();
  v28 = v25 - *v27;
  v29 = v26 - v27[1];
  v30 = AGGraphGetValue();
  v31 = *v30;
  v32 = *(v30 + 8);
  _threadGeometryProxyData();
  __dst[0] = v48;
  __dst[1] = v47;
  v1 = v6;
  __dst[2] = v46;
  __dst[3] = v44;
  __dst[4] = __PAIR64__(v45, v21);
  __dst[5] = __PAIR64__(v43, v23);
  v2 = v9;
  LODWORD(__dst[6]) = v13;
  _setThreadGeometryProxyData();
  v78 = v7;
  v79 = v6;
  v80 = v53;
  v81 = v9;
  v82 = v51;
  outlined copy of Path.Storage(v7, v6, v53, v9, v51);
  specialized Shape.effectivePath(in:)(v76, v31);
  v6 = v77;
  v49 = v7;
  LOBYTE(v7) = v51;
  outlined consume of Path.Storage(v49, v1, v53, v9, v51);
  v33 = 0x10000;
  if (!v54)
  {
    v33 = 0;
  }

  v34 = 256;
  if (!v55)
  {
    v34 = 0;
  }

  v13 = v33 | v34 | v6;
  v9 = &v73;
  _setThreadGeometryProxyData();
  v63 = v76[1];
  v62 = v76[0];
  *&v64 = v13;
  *&v66 = 0;
  DWORD2(v67[1]) = 0;
  v68 = 0;
  v69 = 0;
  v70 = v31;
  v71 = v32;
  v35 = *v3;
  *(v60 + 8) = 0u;
  *(&v60[1] + 8) = 0u;
  *(&v60[2] + 8) = 0u;
  *(&v60[3] + 8) = 0u;
  *(&v60[4] + 1) = 0x20000000;
  v61 = 0;
  *&v60[0] = v35;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v62, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v84.origin.x = 0.0;
  v84.origin.y = 0.0;
  v84.size.width = v31;
  v84.size.height = v32;
  *&v15 = CGRectOffset(v84, v28, v29);
  LODWORD(v13) = *(v3 + 8);
  v10 = *(v3 + 50);
  LOBYTE(v6) = *(v3 + 48);
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
  __src[4] = v66;
  __src[5] = v67[0];
  *(&__src[5] + 12) = *(v67 + 12);
  __src[0] = v62;
  __src[1] = v63;
  __src[2] = v64;
  __src[3] = v65;
  WORD6(__src[6]) = v10;
  *&__src[7] = v15;
  *(&__src[7] + 1) = v16;
  *&__src[8] = v17;
  *(&__src[8] + 1) = v18;
  *&__src[10] = v15;
  *(&__src[10] + 1) = v16;
  *&__src[11] = v17;
  *(&__src[11] + 1) = v18;
  __src[12] = v52;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v13;
  BYTE12(__src[14]) = v6;
  LODWORD(__src[15]) = v50;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v60, __src, v3);
  LOBYTE(__dst[0]) = *(v3 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v56);
  v73 = v56;
  v74 = v57;
  v75 = v58;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v62, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v36 = v60[3];
  *(v9 + 2) = v60[2];
  *(v9 + 3) = v36;
  *(v9 + 4) = v60[4];
  *(v9 + 20) = v61;
  v37 = v60[1];
  *v9 = v60[0];
  *(v9 + 1) = v37;
  outlined destroy of _ShapeStyle_RenderedLayers(&v73);
  return outlined consume of Path.Storage(v49, v1, v53, v2, v7);
}

{
  v2 = v0;
  v123 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v5 = *(Value + 208);
  v103 = *(Value + 192);
  v104 = v5;
  v105 = *(Value + 224);
  v6 = *(Value + 144);
  v99 = *(Value + 128);
  v100 = v6;
  v7 = *(Value + 160);
  v102 = *(Value + 176);
  v101 = v7;
  v8 = *(Value + 80);
  v95 = *(Value + 64);
  v96 = v8;
  v9 = *(Value + 96);
  v98 = *(Value + 112);
  v97 = v9;
  v10 = *(Value + 16);
  v91 = *Value;
  v92 = v10;
  v11 = *(Value + 48);
  v93 = *(Value + 32);
  v94 = v11;
  v12 = *(Value + 240);
  v13 = *(Value + 241);
  if ((v14 & 1) == 0 && *(v2 + 50))
  {
    __dst[0] = *(v2 + 28);
    LODWORD(__dst[1]) = v3;
    v15 = AGGraphAnyInputsChanged();
    v16 = ++static DisplayList.Version.lastValue;
    if (!v15)
    {
      goto LABEL_9;
    }

    if (v16)
    {
      goto LABEL_5;
    }

LABEL_7:
    LOWORD(v17) = 0;
    goto LABEL_8;
  }

  v16 = ++static DisplayList.Version.lastValue;
  if (!static DisplayList.Version.lastValue)
  {
    goto LABEL_7;
  }

LABEL_5:
  v17 = (2 * ((33 * (v16 >> 16)) ^ v16)) | 1;
LABEL_8:
  *(v2 + 50) = v17;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v54 = v18;
    v55 = v19;
    v56 = v20;
    v57 = v21;
    swift_once();
    v21 = v57;
    v20 = v56;
    v19 = v55;
    v18 = v54;
    goto LABEL_15;
  }

  v22 = *(v2 + 40);
  v23 = AGCreateWeakAttribute();
  v24 = v23;
  v63 = HIDWORD(v23);
  v25 = AGCreateWeakAttribute();
  v64 = v13;
  v26 = v25;
  v62 = HIDWORD(v25);
  v65 = v22;
  v27 = AGCreateWeakAttribute();
  v28 = v27;
  v61 = HIDWORD(v27);
  v29 = AGCreateWeakAttribute();
  v30 = v29;
  v60 = HIDWORD(v29);
  v31 = AGCreateWeakAttribute();
  v32 = v31;
  v59 = HIDWORD(v31);
  v33 = AGCreateWeakAttribute();
  v34 = v33;
  v58 = HIDWORD(v33);
  type metadata accessor for CGPoint(0);
  v35 = AGGraphGetValue();
  v36 = *v35;
  v37 = v35[1];
  v38 = AGGraphGetValue();
  v39 = v36 - *v38;
  v40 = v37 - v38[1];
  v41 = AGGraphGetValue();
  v42 = *v41;
  v43 = *(v41 + 8);
  _threadGeometryProxyData();
  __dst[0] = __PAIR64__(v63, v24);
  __dst[1] = __PAIR64__(v62, v26);
  v13 = &v70;
  __dst[2] = __PAIR64__(v61, v28);
  v1 = v16;
  __dst[3] = __PAIR64__(v60, v30);
  __dst[4] = __PAIR64__(v59, v32);
  __dst[5] = __PAIR64__(v58, v34);
  LODWORD(__dst[6]) = v16;
  _setThreadGeometryProxyData();
  v120 = v103;
  v121 = v104;
  v122 = v105;
  v116 = v99;
  v117 = v100;
  v119 = v102;
  v118 = v101;
  v112 = v95;
  v113 = v96;
  v115 = v98;
  v114 = v97;
  v108 = v91;
  v109 = v92;
  v45.n128_u64[1] = *(&v93 + 1);
  v44.n128_u64[1] = *(&v94 + 1);
  v111 = v94;
  v110 = v93;
  v44.n128_u64[0] = 0;
  v45.n128_u64[0] = 0;
  v46.n128_f64[0] = v43;
  specialized Shape.effectivePath(in:)(v106, v44, v45, v42, v46);
  v47 = 0x10000;
  if ((v64 & 1) == 0)
  {
    v47 = 0;
  }

  v48 = 256;
  if ((v12 & 1) == 0)
  {
    v48 = 0;
  }

  v49 = v47 | v48 | v107;
  _setThreadGeometryProxyData();
  v77 = v106[0];
  v78 = v106[1];
  *&v79 = v49;
  *&v81 = 0;
  v83 = 0;
  v85 = 0;
  v84 = 0;
  v86 = v42;
  v87 = v43;
  v50 = *v2;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v76 = 0;
  v75 = 0x20000000;
  v70 = v50;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v77, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v124.origin.x = 0.0;
  v124.origin.y = 0.0;
  v124.size.width = v42;
  v124.size.height = v43;
  *&v18 = CGRectOffset(v124, v39, v40);
  v3 = *(v2 + 8);
  v12 = *(v2 + 50);
  LOBYTE(v16) = *(v2 + 48);
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
  __src[4] = v81;
  __src[5] = v82;
  *(&__src[5] + 12) = *(v13 + 180);
  __src[0] = v77;
  __src[1] = v78;
  __src[2] = v79;
  __src[3] = v80;
  WORD6(__src[6]) = v12;
  *&__src[7] = v18;
  *(&__src[7] + 1) = v19;
  *&__src[8] = v20;
  *(&__src[8] + 1) = v21;
  *&__src[10] = v18;
  *(&__src[10] + 1) = v19;
  *&__src[11] = v20;
  *(&__src[11] + 1) = v21;
  __src[12] = v1;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v3;
  BYTE12(__src[14]) = v16;
  LODWORD(__src[15]) = v65;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v70, __src, v2);
  LOBYTE(__dst[0]) = *(v2 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v66);
  *&v89[0] = v66;
  WORD4(v89[0]) = v67;
  HIDWORD(v89[0]) = v68;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v77, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v51 = *(v13 + 3);
  v89[2] = *(v13 + 2);
  v89[3] = v51;
  v89[4] = *(v13 + 4);
  v90 = v76;
  v52 = *(v13 + 1);
  v89[0] = *v13;
  v89[1] = v52;
  return outlined destroy of _ShapeStyle_RenderedLayers(v89);
}

{
  v3 = v0;
  v82 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v6 = Value[32];
  v7 = Value[33];
  v8 = Value[34];
  if ((v9 & 1) != 0 || !*(v3 + 50))
  {
    v11 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v3 + 28);
    LODWORD(__dst[1]) = v4;
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

  *(v3 + 50) = v12;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v47 = v13;
    v48 = v14;
    v49 = v15;
    v50 = v16;
    swift_once();
    v16 = v50;
    v15 = v49;
    v14 = v48;
    v13 = v47;
    goto LABEL_15;
  }

  v58 = v7;
  v17 = *(v3 + 40);
  v60 = v11;
  v18 = AGCreateWeakAttribute();
  v19 = v18;
  v56 = HIDWORD(v18);
  v20 = AGCreateWeakAttribute();
  v57 = v8;
  v21 = v20;
  v55 = HIDWORD(v20);
  v59 = v17;
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v54 = HIDWORD(v22);
  v24 = AGCreateWeakAttribute();
  v25 = v24;
  v53 = HIDWORD(v24);
  v26 = AGCreateWeakAttribute();
  v27 = v26;
  v52 = HIDWORD(v26);
  v28 = AGCreateWeakAttribute();
  v29 = v28;
  v51 = HIDWORD(v28);
  type metadata accessor for CGPoint(0);
  v30 = AGGraphGetValue();
  v31 = *v30;
  v32 = v30[1];
  v33 = AGGraphGetValue();
  v34 = v31 - *v33;
  v35 = v32 - v33[1];
  v36 = AGGraphGetValue();
  v37 = *v36;
  v38 = *(v36 + 8);
  _threadGeometryProxyData();
  __dst[0] = __PAIR64__(v56, v19);
  __dst[1] = __PAIR64__(v55, v21);
  __dst[2] = __PAIR64__(v54, v23);
  v6 = &v76;
  __dst[3] = __PAIR64__(v53, v25);
  v2 = v60;
  __dst[4] = __PAIR64__(v52, v27);
  __dst[5] = __PAIR64__(v51, v29);
  LODWORD(__dst[6]) = v60;
  _setThreadGeometryProxyData();
  specialized Shape.effectivePath(in:)(v80, 0.0, 0.0, v37, v38);
  v39 = 0x10000;
  if (!v57)
  {
    v39 = 0;
  }

  v40 = 256;
  if (!v58)
  {
    v40 = 0;
  }

  v11 = v39 | v40 | v81;
  v1 = v65;
  _setThreadGeometryProxyData();
  v67[1] = v80[1];
  v67[0] = v80[0];
  v68 = v11;
  v69 = 0;
  v70 = 0;
  v72 = 0;
  v71 = 0;
  v73 = v37;
  v74 = v38;
  v41 = *v3;
  memset(&v65[8], 0, 64);
  v66 = 0;
  *&v65[72] = 0x20000000;
  *v65 = v41;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v67, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v83.origin.x = 0.0;
  v83.origin.y = 0.0;
  v83.size.width = v37;
  v83.size.height = v38;
  *&v13 = CGRectOffset(v83, v34, v35);
  LODWORD(v11) = *(v3 + 8);
  LOWORD(v8) = *(v3 + 50);
  LOBYTE(v7) = *(v3 + 48);
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
  v42 = *(v1 + 152);
  __src[3] = *(v1 + 136);
  __src[4] = v42;
  __src[5] = *(v1 + 168);
  *(&__src[5] + 12) = *(v1 + 180);
  v43 = *(v1 + 104);
  __src[0] = *(v1 + 88);
  __src[1] = v43;
  __src[2] = *(v1 + 120);
  WORD6(__src[6]) = v8;
  *&__src[7] = v13;
  *(&__src[7] + 1) = v14;
  *&__src[8] = v15;
  *(&__src[8] + 1) = v16;
  *&__src[10] = v13;
  *(&__src[10] + 1) = v14;
  *&__src[11] = v15;
  *(&__src[11] + 1) = v16;
  __src[12] = v2;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v11;
  BYTE12(__src[14]) = v7;
  LODWORD(__src[15]) = v59;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v65, __src, v3);
  LOBYTE(__dst[0]) = *(v3 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v61);
  v76 = v61;
  v77 = v62;
  v78 = v63;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v67, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v44 = *&v65[48];
  *(v6 + 2) = *&v65[32];
  *(v6 + 3) = v44;
  *(v6 + 4) = *&v65[64];
  v79 = v66;
  v45 = *&v65[16];
  *v6 = *v65;
  *(v6 + 1) = v45;
  return outlined destroy of _ShapeStyle_RenderedLayers(&v76);
}

{
  v3 = v0;
  v92 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v6 = *(Value + 16);
  v62 = *Value;
  v63 = v6;
  v64 = *(Value + 32);
  v7 = *(Value + 48);
  v8 = *(Value + 49);
  if ((v9 & 1) != 0 || !*(v3 + 50))
  {
    v11 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v3 + 28);
    LODWORD(__dst[1]) = v4;
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

  *(v3 + 50) = v12;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v45 = v13;
    v46 = v14;
    v47 = v15;
    v48 = v16;
    swift_once();
    v16 = v48;
    v15 = v47;
    v14 = v46;
    v13 = v45;
    goto LABEL_15;
  }

  v56 = v7;
  v17 = *(v3 + 40);
  v58 = v11;
  v18 = AGCreateWeakAttribute();
  v19 = v18;
  v54 = HIDWORD(v18);
  v20 = AGCreateWeakAttribute();
  v55 = v8;
  v21 = v20;
  v53 = HIDWORD(v20);
  v57 = v17;
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v52 = HIDWORD(v22);
  v24 = AGCreateWeakAttribute();
  v25 = v24;
  v51 = HIDWORD(v24);
  v26 = AGCreateWeakAttribute();
  v27 = v26;
  v50 = HIDWORD(v26);
  v28 = AGCreateWeakAttribute();
  v29 = v28;
  v49 = HIDWORD(v28);
  type metadata accessor for CGPoint(0);
  v30 = AGGraphGetValue();
  v31 = *v30;
  v32 = v30[1];
  v33 = AGGraphGetValue();
  v34 = v31 - *v33;
  v35 = v32 - v33[1];
  v36 = AGGraphGetValue();
  v37 = *v36;
  v38 = *(v36 + 8);
  _threadGeometryProxyData();
  __dst[0] = __PAIR64__(v54, v19);
  __dst[1] = __PAIR64__(v53, v21);
  __dst[2] = __PAIR64__(v52, v23);
  v1 = &v69;
  __dst[3] = __PAIR64__(v51, v25);
  v2 = v58;
  __dst[4] = __PAIR64__(v50, v27);
  __dst[5] = __PAIR64__(v49, v29);
  LODWORD(__dst[6]) = v58;
  _setThreadGeometryProxyData();
  v65 = v62;
  v66 = v63;
  v67 = v64;
  specialized Shape.effectivePath(in:)(v90, 0.0, v37);
  v39 = 0x10000;
  if ((v55 & 1) == 0)
  {
    v39 = 0;
  }

  v40 = 256;
  if ((v56 & 1) == 0)
  {
    v40 = 0;
  }

  v11 = v39 | v40 | v91;
  _setThreadGeometryProxyData();
  v76 = v90[0];
  v77 = v90[1];
  *&v78 = v11;
  *&v80 = 0;
  v82 = 0;
  v84 = 0;
  v83 = 0;
  v85 = v37;
  v86 = v38;
  v41 = *v3;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v75 = 0;
  v74 = 0x20000000;
  v69 = v41;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v76, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v93.origin.x = 0.0;
  v93.origin.y = 0.0;
  v93.size.width = v37;
  v93.size.height = v38;
  *&v13 = CGRectOffset(v93, v34, v35);
  LODWORD(v11) = *(v3 + 8);
  v8 = *(v3 + 50);
  v7 = *(v3 + 48);
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
  __src[4] = v80;
  __src[5] = v81;
  *(&__src[5] + 12) = *(v1 + 180);
  __src[0] = v76;
  __src[1] = v77;
  __src[2] = v78;
  __src[3] = v79;
  WORD6(__src[6]) = v8;
  *&__src[7] = v13;
  *(&__src[7] + 1) = v14;
  *&__src[8] = v15;
  *(&__src[8] + 1) = v16;
  *&__src[10] = v13;
  *(&__src[10] + 1) = v14;
  *&__src[11] = v15;
  *(&__src[11] + 1) = v16;
  __src[12] = v2;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v11;
  BYTE12(__src[14]) = v7;
  LODWORD(__src[15]) = v57;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v69, __src, v3);
  LOBYTE(__dst[0]) = *(v3 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v59);
  *&v88[0] = v59;
  WORD4(v88[0]) = v60;
  HIDWORD(v88[0]) = v61;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v76, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v42 = *(v1 + 3);
  v88[2] = *(v1 + 2);
  v88[3] = v42;
  v88[4] = *(v1 + 4);
  v89 = v75;
  v43 = *(v1 + 1);
  v88[0] = *v1;
  v88[1] = v43;
  return outlined destroy of _ShapeStyle_RenderedLayers(v88);
}

{
  v84 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v5 = *Value;
  LODWORD(v6) = *(Value + 8);
  v7 = *(Value + 9);
  if ((v8 & 1) != 0 || !*(v0 + 50))
  {
    v10 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v3;
    v9 = AGGraphAnyInputsChanged();
    v10 = ++static DisplayList.Version.lastValue;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v11 = (2 * ((33 * (v10 >> 16)) ^ v10)) | 1;
  if (!v10)
  {
    LOWORD(v11) = 0;
  }

  *(v0 + 50) = v11;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v44 = v12;
    v45 = v13;
    v46 = v14;
    v47 = v15;
    swift_once();
    v15 = v47;
    v14 = v46;
    v13 = v45;
    v12 = v44;
    goto LABEL_15;
  }

  v16 = *(v0 + 40);
  v17 = AGCreateWeakAttribute();
  v55 = v6;
  v18 = v17;
  v53 = HIDWORD(v17);
  v19 = AGCreateWeakAttribute();
  v54 = v7;
  v20 = v19;
  v52 = HIDWORD(v19);
  v56 = v16;
  v21 = AGCreateWeakAttribute();
  v22 = v21;
  v51 = HIDWORD(v21);
  v23 = AGCreateWeakAttribute();
  v24 = v23;
  v50 = HIDWORD(v23);
  v25 = AGCreateWeakAttribute();
  v26 = v25;
  v49 = HIDWORD(v25);
  v27 = AGCreateWeakAttribute();
  v28 = v27;
  v48 = HIDWORD(v27);
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];
  v2 = v10;
  v35 = AGGraphGetValue();
  v36 = *v35;
  v37 = *(v35 + 8);
  _threadGeometryProxyData();
  __dst[0] = __PAIR64__(v53, v18);
  __dst[1] = __PAIR64__(v52, v20);
  __dst[2] = __PAIR64__(v51, v22);
  v1 = &v61;
  __dst[3] = __PAIR64__(v50, v24);
  __dst[4] = __PAIR64__(v49, v26);
  __dst[5] = __PAIR64__(v48, v28);
  LODWORD(__dst[6]) = v10;
  _setThreadGeometryProxyData();
  specialized Shape.effectivePath(in:)(v82, 0.0, v36, v5);
  v38 = 0x10000;
  if (!v54)
  {
    v38 = 0;
  }

  v39 = 256;
  if (!v55)
  {
    v39 = 0;
  }

  v6 = v38 | v39 | v83;
  _setThreadGeometryProxyData();
  v68 = v82[0];
  v69 = v82[1];
  *&v70 = v6;
  *&v72 = 0;
  v74 = 0;
  v76 = 0;
  v75 = 0;
  v77 = v36;
  v78 = v37;
  v40 = *v0;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v67 = 0;
  v66 = 0x20000000;
  v61 = v40;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v68, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v85.origin.x = 0.0;
  v85.origin.y = 0.0;
  v85.size.width = v36;
  v85.size.height = v37;
  *&v12 = CGRectOffset(v85, v33, v34);
  LODWORD(v10) = *(v0 + 8);
  LOWORD(v7) = *(v0 + 50);
  LOBYTE(v6) = *(v0 + 48);
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
  __src[4] = v72;
  __src[5] = v73;
  *(&__src[5] + 12) = *(v1 + 180);
  __src[0] = v68;
  __src[1] = v69;
  __src[2] = v70;
  __src[3] = v71;
  WORD6(__src[6]) = v7;
  *&__src[7] = v12;
  *(&__src[7] + 1) = v13;
  *&__src[8] = v14;
  *(&__src[8] + 1) = v15;
  *&__src[10] = v12;
  *(&__src[10] + 1) = v13;
  *&__src[11] = v14;
  *(&__src[11] + 1) = v15;
  __src[12] = v2;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v10;
  BYTE12(__src[14]) = v6;
  LODWORD(__src[15]) = v56;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v61, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v57);
  *&v80[0] = v57;
  WORD4(v80[0]) = v58;
  HIDWORD(v80[0]) = v59;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v68, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v41 = *(v1 + 3);
  v80[2] = *(v1 + 2);
  v80[3] = v41;
  v80[4] = *(v1 + 4);
  v81 = v67;
  v42 = *(v1 + 1);
  v80[0] = *v1;
  v80[1] = v42;
  return outlined destroy of _ShapeStyle_RenderedLayers(v80);
}

{
  v2 = v0;
  v86[48] = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v6 = v5;
  memcpy(__dst, Value, sizeof(__dst));
  v7 = Value[384];
  v8 = Value[385];
  if ((v6 & 1) != 0 || !*(v2 + 50))
  {
    v10 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    v86[0] = *(v2 + 28);
    LODWORD(v86[1]) = v3;
    v9 = AGGraphAnyInputsChanged();
    v10 = ++static DisplayList.Version.lastValue;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v11 = (2 * ((33 * (v10 >> 16)) ^ v10)) | 1;
  if (!v10)
  {
    LOWORD(v11) = 0;
  }

  *(v2 + 50) = v11;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v44 = v12;
    v45 = v13;
    v46 = v14;
    v47 = v15;
    swift_once();
    v15 = v47;
    v14 = v46;
    v13 = v45;
    v12 = v44;
    goto LABEL_15;
  }

  v55 = v8;
  v16 = *(v2 + 40);
  v57 = v10;
  v17 = AGCreateWeakAttribute();
  v18 = v17;
  v53 = HIDWORD(v17);
  v19 = AGCreateWeakAttribute();
  v20 = v19;
  v52 = HIDWORD(v19);
  v56 = v16;
  v21 = AGCreateWeakAttribute();
  v54 = v7;
  v22 = v21;
  v51 = HIDWORD(v21);
  v23 = AGCreateWeakAttribute();
  v24 = v23;
  v50 = HIDWORD(v23);
  v25 = AGCreateWeakAttribute();
  v26 = v25;
  v49 = HIDWORD(v25);
  v27 = AGCreateWeakAttribute();
  v28 = v27;
  v48 = HIDWORD(v27);
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];
  v35 = AGGraphGetValue();
  v36 = *v35;
  v37 = *(v35 + 8);
  _threadGeometryProxyData();
  v80[0] = v18;
  v80[1] = v53;
  v80[2] = v20;
  v80[3] = v52;
  v80[4] = v22;
  v7 = &v62;
  v80[5] = v51;
  v80[6] = v24;
  v1 = v57;
  v80[7] = v50;
  v80[8] = v26;
  v80[9] = v49;
  v80[10] = v28;
  v80[11] = v48;
  v80[12] = v57;
  _setThreadGeometryProxyData();
  memcpy(v86, __dst, 0x180uLL);
  specialized Shape.effectivePath(in:)(v84, 0.0, 0.0, v36, v37);
  v38 = 0x10000;
  if ((v55 & 1) == 0)
  {
    v38 = 0;
  }

  v39 = 256;
  if ((v54 & 1) == 0)
  {
    v39 = 0;
  }

  v10 = v38 | v39 | v85;
  _setThreadGeometryProxyData();
  v69 = v84[0];
  v70 = v84[1];
  *&v71 = v10;
  *&v73 = 0;
  v75 = 0;
  v77 = 0;
  v76 = 0;
  v78 = v36;
  v79 = v37;
  v40 = *v2;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v68 = 0;
  v67 = 0x20000000;
  v62 = v40;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v69, v80, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v87.origin.x = 0.0;
  v87.origin.y = 0.0;
  v87.size.width = v36;
  v87.size.height = v37;
  *&v12 = CGRectOffset(v87, v33, v34);
  LODWORD(v10) = *(v2 + 8);
  v6 = *(v2 + 50);
  v8 = *(v2 + 48);
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
  __src[4] = v73;
  __src[5] = v74;
  *(&__src[5] + 12) = *(v7 + 180);
  __src[0] = v69;
  __src[1] = v70;
  __src[2] = v71;
  __src[3] = v72;
  WORD6(__src[6]) = v6;
  *&__src[7] = v12;
  *(&__src[7] + 1) = v13;
  *&__src[8] = v14;
  *(&__src[8] + 1) = v15;
  *&__src[10] = v12;
  *(&__src[10] + 1) = v13;
  *&__src[11] = v14;
  *(&__src[11] + 1) = v15;
  __src[12] = v1;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v10;
  BYTE12(__src[14]) = v8;
  LODWORD(__src[15]) = v56;
  LOBYTE(v80[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(v80, &v62, __src, v2);
  LOBYTE(v80[0]) = *(v2 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, v80, &v58);
  *&v81[0] = v58;
  WORD4(v81[0]) = v59;
  HIDWORD(v81[0]) = v60;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v69, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(v80, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(v80);

  v41 = *(v7 + 3);
  v81[2] = *(v7 + 2);
  v81[3] = v41;
  v81[4] = *(v7 + 4);
  v82 = v68;
  v42 = *(v7 + 1);
  v81[0] = *v7;
  v81[1] = v42;
  return outlined destroy of _ShapeStyle_RenderedLayers(v81);
}

{
  v4 = v0;
  v87 = *MEMORY[0x1E69E9840];
  v5 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = *(Value + 8);
  v9 = *(Value + 24);
  v10 = *(Value + 32);
  v11 = *(Value + 33);
  v65 = *(Value + 16);
  if ((v12 & 1) != 0 || !*(v4 + 50))
  {
    v14 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v4 + 28);
    LODWORD(__dst[1]) = v5;
    v13 = AGGraphAnyInputsChanged();
    v14 = ++static DisplayList.Version.lastValue;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v15 = (2 * ((33 * (v14 >> 16)) ^ v14)) | 1;
  if (!v14)
  {
    LOWORD(v15) = 0;
  }

  *(v4 + 50) = v15;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v51 = v16;
    v52 = v17;
    v53 = v18;
    v54 = v19;
    swift_once();
    v19 = v54;
    v18 = v53;
    v17 = v52;
    v16 = v51;
    goto LABEL_15;
  }

  v62 = v10;
  v20 = *(v4 + 40);
  v64 = v14;
  v21 = AGCreateWeakAttribute();
  v22 = v21;
  v60 = HIDWORD(v21);
  v23 = AGCreateWeakAttribute();
  v61 = v11;
  v24 = v23;
  v59 = HIDWORD(v23);
  v63 = v20;
  v25 = AGCreateWeakAttribute();
  v26 = v25;
  v58 = HIDWORD(v25);
  v27 = AGCreateWeakAttribute();
  v28 = v27;
  v57 = HIDWORD(v27);
  v29 = AGCreateWeakAttribute();
  v30 = v29;
  v56 = HIDWORD(v29);
  v31 = AGCreateWeakAttribute();
  v32 = v31;
  v55 = HIDWORD(v31);
  type metadata accessor for CGPoint(0);
  v33 = AGGraphGetValue();
  v34 = *v33;
  v35 = v33[1];
  v36 = AGGraphGetValue();
  v37 = v34 - *v36;
  v38 = v35 - v36[1];
  v39 = AGGraphGetValue();
  v40 = *v39;
  v41 = *(v39 + 8);
  _threadGeometryProxyData();
  __dst[0] = __PAIR64__(v60, v22);
  __dst[1] = __PAIR64__(v59, v24);
  __dst[2] = __PAIR64__(v58, v26);
  v1 = &v81;
  __dst[3] = __PAIR64__(v57, v28);
  v3 = v64;
  __dst[4] = __PAIR64__(v56, v30);
  __dst[5] = __PAIR64__(v55, v32);
  LODWORD(__dst[6]) = v64;
  _setThreadGeometryProxyData();
  *&__src[0] = v7;
  *(&__src[0] + 1) = v8;
  LOBYTE(__src[1]) = v65;
  *(&__src[1] + 1) = v9;
  RoundedRectangle._Inset.path(in:)(v85, 0.0);
  v42 = 0x10000;
  if (!v61)
  {
    v42 = 0;
  }

  v43 = 256;
  if (!v62)
  {
    v43 = 0;
  }

  v14 = v42 | v43 | v86;
  v2 = v70;
  _setThreadGeometryProxyData();
  v72[1] = v85[1];
  v72[0] = v85[0];
  v73 = v14;
  v74 = 0;
  v75 = 0;
  v77 = 0;
  v76 = 0;
  v78 = v40;
  v79 = v41;
  v44 = *v4;
  memset(&v70[8], 0, 64);
  v71 = 0;
  *&v70[72] = 0x20000000;
  *v70 = v44;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v72, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v88.origin.x = 0.0;
  v88.origin.y = 0.0;
  v88.size.width = v40;
  v88.size.height = v41;
  *&v16 = CGRectOffset(v88, v37, v38);
  LODWORD(v14) = *(v4 + 8);
  LOWORD(v11) = *(v4 + 50);
  LOBYTE(v10) = *(v4 + 48);
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
  v45 = *(v2 + 136);
  v46 = *(v2 + 168);
  __src[4] = *(v2 + 152);
  __src[5] = v46;
  *(&__src[5] + 12) = *(v2 + 180);
  v47 = *(v2 + 104);
  __src[0] = *(v2 + 88);
  __src[1] = v47;
  __src[2] = *(v2 + 120);
  __src[3] = v45;
  WORD6(__src[6]) = v11;
  *&__src[7] = v16;
  *(&__src[7] + 1) = v17;
  *&__src[8] = v18;
  *(&__src[8] + 1) = v19;
  *&__src[10] = v16;
  *(&__src[10] + 1) = v17;
  *&__src[11] = v18;
  *(&__src[11] + 1) = v19;
  __src[12] = v3;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v14;
  BYTE12(__src[14]) = v10;
  LODWORD(__src[15]) = v63;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v70, __src, v4);
  LOBYTE(__dst[0]) = *(v4 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v66);
  v81 = v66;
  v82 = v67;
  v83 = v68;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v72, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v48 = *&v70[48];
  *(v1 + 2) = *&v70[32];
  *(v1 + 3) = v48;
  *(v1 + 4) = *&v70[64];
  v84 = v71;
  v49 = *&v70[16];
  *v1 = *v70;
  *(v1 + 1) = v49;
  return outlined destroy of _ShapeStyle_RenderedLayers(&v81);
}

{
  v74 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for _ShapeView<Rectangle, MeshGradient>();
  Value = AGGraphGetValue();
  v5 = *(Value + 44);
  v6 = Value[2];
  v7 = *Value;
  v72 = Value[1];
  *v73 = v6;
  *&v73[12] = v5;
  v71 = v7;
  v8 = v72;
  v9 = v6;
  *&v10 = v5 >> 32;
  if ((v11 & 1) != 0 || !*(v0 + 50))
  {
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v71, __dst, type metadata accessor for _ShapeView<Rectangle, MeshGradient>);
    v13 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    *&__src[0] = *(v0 + 28);
    DWORD2(__src[0]) = v3;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v71, __dst, type metadata accessor for _ShapeView<Rectangle, MeshGradient>);
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

  *(v0 + 50) = v14;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_25:
    v46 = v15;
    v47 = v16;
    v48 = v17;
    v49 = v18;
    swift_once();
    v18 = v49;
    v17 = v48;
    v16 = v47;
    v15 = v46;
    goto LABEL_23;
  }

  v1 = &v55;
  v2 = __src;
  v19 = *(v0 + 40);
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v50 = v19;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v20 = AGGraphGetValue();
  v21 = *v20;
  v22 = v20[1];
  v23 = AGGraphGetValue();
  v24 = v21 - *v23;
  v25 = v22 - v23[1];
  v26 = AGGraphGetValue();
  v27 = *v26;
  v28 = *(v26 + 8);
  _threadGeometryProxyData();
  v8 = v13;
  _setThreadGeometryProxyData();
  v75.origin.x = 0.0;
  v75.origin.y = 0.0;
  v75.size.width = v27;
  v75.size.height = v28;
  IsNull = CGRectIsNull(v75);
  if (IsNull)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v27;
  }

  if (IsNull)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v28;
  }

  v31 = 6;
  if (!IsNull)
  {
    v31 = 0;
  }

  v32 = 0x10000;
  if (!v73[27])
  {
    v32 = 0;
  }

  v33 = 256;
  if (!v73[26])
  {
    v33 = 0;
  }

  v34 = v33 | v32 | v31;
  _setThreadGeometryProxyData();
  v62[0] = 0.0;
  v62[1] = 0.0;
  v62[2] = v30;
  v62[3] = v10;
  *&v62[4] = v34;
  v62[8] = 0.0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = v27;
  v67 = v28;
  v35 = *v0;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0x20000000;
  v61 = 0;
  v55 = v35;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v62, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v76.origin.x = 0.0;
  v76.origin.y = 0.0;
  v76.size.width = v27;
  v76.size.height = v28;
  *&v15 = CGRectOffset(v76, v24, v25);
  v3 = *(v0 + 8);
  v9 = *(v0 + 50);
  LOBYTE(v10) = *(v0 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_25;
  }

LABEL_23:
  v36 = static GraphicsBlendMode.normal;
  v37 = byte_1ED52F818;
  *(v2 + 31) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = v37;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v38 = *(v1 + 17);
  v39 = *(v1 + 21);
  v2[4] = *(v1 + 19);
  v2[5] = v39;
  *(v2 + 92) = *(v1 + 180);
  v40 = *(v1 + 13);
  __src[0] = *(v1 + 11);
  __src[1] = v40;
  __src[2] = *(v1 + 15);
  __src[3] = v38;
  WORD6(__src[6]) = v9;
  *(v2 + 14) = v15;
  *(v2 + 15) = v16;
  *(v2 + 16) = v17;
  *(v2 + 17) = v18;
  *(v2 + 20) = v15;
  *(v2 + 21) = v16;
  *(v2 + 22) = v17;
  *(v2 + 23) = v18;
  *(v2 + 24) = v8;
  *(v2 + 25) = 0;
  *(v2 + 26) = 0;
  *(v2 + 27) = 0;
  *(v2 + 28) = 3221225472;
  DWORD2(__src[14]) = v3;
  BYTE12(__src[14]) = LOBYTE(v10);
  LODWORD(__src[15]) = v50;
  __dst[0] = 0;
  outlined copy of GraphicsBlendMode(v36, v37);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v55, __src, v0);
  __dst[0] = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v51);
  v41 = v52;
  v42 = v53;
  v1[63] = v51;
  WORD4(v69[0]) = v41;
  HIDWORD(v69[0]) = v42;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v62, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v43 = *(v1 + 3);
  v69[2] = *(v1 + 2);
  v69[3] = v43;
  v69[4] = *(v1 + 4);
  v70 = v61;
  v44 = *(v1 + 1);
  v69[0] = *v1;
  v69[1] = v44;
  outlined destroy of _ShapeStyle_RenderedLayers(v69);
}

CGSize __swiftcall ResolvedStyledText.StringDrawing.size(in:)(CGSize in)
{
  height = in.height;
  width = in.width;
  swift_beginAccess();
  v4 = v1[21];
  v5 = v1[22];
  v7 = v1[23];
  v6 = v1[24];
  swift_beginAccess();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&static TextDrawingContext.shared, v11, width, height, v4, v5, v7, v6);
  swift_endAccess();
  v8 = *v11;
  v9 = *&v11[1];
  result.height = v9;
  result.width = v8;
  return result;
}

void type metadata accessor for [Date](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t a6, int a7, uint64_t a8)
{
  v46 = a6;
  v47 = a8;
  v43 = a7;
  v42 = a5;
  v41 = a2;
  v11 = type metadata accessor for TypesettingConfiguration();
  MEMORY[0x1EEE9AC00](v11 - 8);
  isEscapingClosureAtFileLocation = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Text.Resolved(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *a1;
  v19 = *(a1 + 8);
  v45 = *a3;
  v21 = *a4;
  v20 = a4[1];
  Text.Style.init()(v17);
  v44 = v15[7];
  *&v17[v44] = 0;
  v22 = v15[8];
  v27 = &v17[v15[9]];
  *v27 = 0;
  v27[1] = 0;
  v23 = &v17[v15[10]];
  *(v23 + 16) = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v24 = MEMORY[0x1E69E7CC0];
  *(v23 + 5) = MEMORY[0x1E69E7CC0];
  *(v23 + 6) = v24;
  *(v23 + 56) = 0u;
  *(v23 + 72) = 0u;
  *(v23 + 11) = 0;
  *(v23 + 6) = xmmword_18DD85510;
  *(v23 + 14) = v24;

  *(v23 + 14) = v24;
  *(v23 + 15) = 0;
  v25 = MEMORY[0x1E69E7CD0];
  *(v23 + 17) = 0;
  *(v23 + 18) = 0;
  *(v23 + 16) = v25;
  v23[152] = 3;
  v17[v22] = v41;
  *v27 = v21;
  v27[1] = v20;
  v26 = v18;
  LOBYTE(v27) = v43;
  v28 = v42;
  v29 = _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAA024TypesettingConfigurationG0V_Tt0B5(v18, v19, isEscapingClosureAtFileLocation);
  if (v27 & 1) == 0 || ((*(*v28 + 112))(v29))
  {
    goto LABEL_5;
  }

  if (one-time initialization token for automatic != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v30 = type metadata accessor for TypesettingLanguage(0);
    v31 = __swift_project_value_buffer(v30, static TypesettingLanguage.automatic);
    outlined assign with copy of TypesettingLanguage(v31, isEscapingClosureAtFileLocation, type metadata accessor for TypesettingLanguage);
LABEL_5:
    v32 = type metadata accessor for Text.Style(0);
    outlined assign with copy of TypesettingLanguage(isEscapingClosureAtFileLocation, &v17[*(v32 + 84)], type metadata accessor for TypesettingConfiguration);
    specialized Text.resolve<A>(into:in:with:)(v17, v26, v19, v45, v28, v46, v27 & 1, v47);
    v27 = *&v17[v44];
    if (!v27)
    {
      break;
    }

    v33 = v27;
    v34 = [v33 length];

    aBlock = v26;
    v49 = v19;
    Text.ResolvedProperties.markParagraphBoundary(at:in:environment:)(v34, v33, &aBlock);
    v35 = v33;
    if ([v35 length] < 1)
    {

      break;
    }

    v47 = isEscapingClosureAtFileLocation;
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    if (one-time initialization token for resolvableTextSegment != -1)
    {
      swift_once();
    }

    v36 = static NSAttributedStringKey.resolvableTextSegment;
    v26 = [v35 length];
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = &v54;
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #1 in NSMutableAttributedString.resolveUpdateSchedule(recalculate:);
    *(v19 + 24) = v37;
    v52 = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
    v53 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v51 = &block_descriptor_8;
    v38 = _Block_copy(&aBlock);
    v28 = v35;

    [v28 enumerateAttribute:v36 inRange:0 options:v26 usingBlock:{0, v38}];
    _Block_release(v38);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(&v54, &aBlock, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
      NSMutableAttributedString.setUpdateSchedule(_:)(&aBlock);

      outlined destroy of TimelineSchedule?(&aBlock, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
      outlined destroy of TimelineSchedule?(&v54, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);

      isEscapingClosureAtFileLocation = v47;
      goto LABEL_13;
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  outlined destroy of TimelineSchedule?(&v54, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
LABEL_13:
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(isEscapingClosureAtFileLocation, type metadata accessor for TypesettingConfiguration);
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v17, type metadata accessor for Text.Resolved);
  return v27;
}

uint64_t sub_18D0C7FCC()
{

  return swift_deallocObject();
}

uint64_t sub_18D0C804C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t assignWithTake for Text.Style(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  if (*a1 < 2uLL)
  {
    goto LABEL_4;
  }

  if (v6 < 2)
  {
    outlined destroy of Font(a1);
    v6 = *a2;
LABEL_4:
    *a1 = v6;
    goto LABEL_6;
  }

  *a1 = v6;

LABEL_6:
  *(a1 + 8) = *(a2 + 8);

  v7 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  outlined consume of Gradient.ProviderTag(v7);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  if ((*(a1 + 88) - 1) < 2)
  {
LABEL_9:
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_11;
  }

  v8 = *(a2 + 88);
  if ((v8 - 1) < 2)
  {
    outlined destroy of Text.LineStyle(a1 + 80);
    goto LABEL_9;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v8;

LABEL_11:
  if ((*(a1 + 104) - 1) < 2)
  {
LABEL_14:
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_16;
  }

  v9 = *(a2 + 104);
  if ((v9 - 1) < 2)
  {
    outlined destroy of Text.LineStyle(a1 + 96);
    goto LABEL_14;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v9;

LABEL_16:
  if (*(a1 + 176) == 1)
  {
LABEL_19:
    v11 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v11;
    *(a1 + 208) = *(a2 + 208);
    v12 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v12;
    v13 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v13;
    goto LABEL_21;
  }

  v10 = *(a2 + 176);
  if (v10 == 1)
  {
    outlined destroy of Text.Encapsulation(a1 + 112);
    goto LABEL_19;
  }

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v10;

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
LABEL_21:
  if (*(a1 + 248) == 1)
  {
LABEL_24:
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    goto LABEL_26;
  }

  v14 = *(a2 + 248);
  if (v14 == 1)
  {
    outlined destroy of AccessibilitySpeechAttributes(a1 + 216);
    goto LABEL_24;
  }

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v14;

LABEL_26:
  v15 = *(a1 + 288);
  if (v15 == 1)
  {
LABEL_29:
    v17 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v17;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_30;
  }

  v16 = *(a2 + 288);
  if (v16 == 1)
  {
    outlined destroy of AccessibilityTextAttributes(a1 + 256);
    goto LABEL_29;
  }

  v55 = (a1 + 264);
  v56 = (a2 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 257) = *(a2 + 257);
  if (v15)
  {
    if (v16)
    {
      v57 = *(a2 + 280);
      v58 = *(a1 + 264);
      v59 = *(a1 + 272);
      v60 = *(a1 + 280);
      *v55 = *v56;
      *(a1 + 280) = v57;
      outlined consume of Text.Storage(v58, v59, v60);
      *(a1 + 288) = *(a2 + 288);

      goto LABEL_30;
    }

    outlined destroy of Text(a1 + 264);
  }

  v62 = *(a2 + 280);
  *v55 = *v56;
  *(a1 + 280) = v62;
LABEL_30:
  v18 = *(a1 + 296);
  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);

  *(a1 + 312) = *(a2 + 312);

  *(a1 + 320) = *(a2 + 320);
  v19 = a3[21];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = *(v24 + 48);
  v26 = v25(v20, 2, v22);
  v27 = v25(v21, 2, v23);
  if (v26)
  {
    if (!v27)
    {
      v28 = type metadata accessor for Locale.Language();
      (*(*(v28 - 8) + 32))(v20, v21, v28);
      v20[*(v23 + 48)] = v21[*(v23 + 48)];
      (*(v24 + 56))(v20, 0, 2, v23);
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v27)
  {
    outlined destroy of ParagraphStyleResolutionContext(v20, type metadata accessor for (Locale.Language, TypesettingLanguage.Flags));
LABEL_35:
    v29 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(v20, v21, *(*(v29 - 8) + 64));
    goto LABEL_36;
  }

  v61 = type metadata accessor for Locale.Language();
  (*(*(v61 - 8) + 40))(v20, v21, v61);
  v20[*(v23 + 48)] = v21[*(v23 + 48)];
LABEL_36:
  v30 = *(type metadata accessor for TypesettingConfiguration() + 20);
  v31 = &v20[v30];
  v32 = &v21[v30];
  *v31 = *v32;
  v31[8] = v32[8];
  *(a1 + a3[22]) = *(a2 + a3[22]);

  v33 = a3[23];
  v34 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  v37 = v36(a1 + v33, 1, v34);
  v38 = v36(a2 + v33, 1, v34);
  if (v37)
  {
    if (!v38)
    {
      (*(v35 + 32))(a1 + v33, a2 + v33, v34);
      (*(v35 + 56))(a1 + v33, 0, 1, v34);
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (v38)
  {
    (*(v35 + 8))(a1 + v33, v34);
LABEL_41:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    memcpy((a1 + v33), (a2 + v33), *(*(v39 - 8) + 64));
    goto LABEL_42;
  }

  (*(v35 + 40))(a1 + v33, a2 + v33, v34);
LABEL_42:
  v40 = a3[24];
  v41 = type metadata accessor for AttributedString.TextAlignment();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v44 = v43(a1 + v40, 1, v41);
  v45 = v43(a2 + v40, 1, v41);
  if (v44)
  {
    if (!v45)
    {
      (*(v42 + 32))(a1 + v40, a2 + v40, v41);
      (*(v42 + 56))(a1 + v40, 0, 1, v41);
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v45)
  {
    (*(v42 + 8))(a1 + v40, v41);
LABEL_47:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
    memcpy((a1 + v40), (a2 + v40), *(*(v46 - 8) + 64));
    goto LABEL_48;
  }

  (*(v42 + 40))(a1 + v40, a2 + v40, v41);
LABEL_48:
  v47 = a3[26];
  *(a1 + a3[25]) = *(a2 + a3[25]);
  v48 = type metadata accessor for AttributedString.LineHeight();
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  v51 = v50(a1 + v47, 1, v48);
  v52 = v50(a2 + v47, 1, v48);
  if (!v51)
  {
    if (!v52)
    {
      (*(v49 + 40))(a1 + v47, a2 + v47, v48);
      goto LABEL_54;
    }

    (*(v49 + 8))(a1 + v47, v48);
    goto LABEL_53;
  }

  if (v52)
  {
LABEL_53:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v47), (a2 + v47), *(*(v53 - 8) + 64));
    goto LABEL_54;
  }

  (*(v49 + 32))(a1 + v47, a2 + v47, v48);
  (*(v49 + 56))(a1 + v47, 0, 1, v48);
LABEL_54:
  *(a1 + a3[27]) = *(a2 + a3[27]);

  return a1;
}

uint64_t EnvironmentValues.stringResolutionDate.setter(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E6720];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], v2);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v30 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  _s10Foundation4DateVSgWOcTm_0(a1, v16, &lazy cache variable for type metadata for Date?, v13);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    _s10Foundation4DateVSgWOhTm_2(v16, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    v21 = type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate(0);
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = v32;
    v23 = *v32;
    v24 = v30;
    _s10Foundation4DateVSgWOcTm_0(v7, v30, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(v22, v24);

    _s10Foundation4DateVSgWOhTm_2(v24, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
    if (v22[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(v23, *v22);
    }

    _s10Foundation4DateVSgWOhTm_2(v33, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    return _s10Foundation4DateVSgWOhTm_2(v7, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    (*(v18 + 16))(v12, v20, v17);
    v26 = type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
    v28 = v31;
    v27 = v32;
    v29 = *v32;
    _s10Foundation4DateVSgWOcTm_0(v12, v31, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(v27, v28);

    _s10Foundation4DateVSgWOhTm_2(v28, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
    if (v27[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(v29, *v27);
    }

    _s10Foundation4DateVSgWOhTm_2(v33, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    _s10Foundation4DateVSgWOhTm_2(v12, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t closure #1 in NSMutableAttributedString.resolveUpdateSchedule(recalculate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  type metadata accessor for [Date](0, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v39 - v11;
  v13 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any?(a1, v47);
  if (!v48)
  {
    _sypSgWOhTm_4(v47, type metadata accessor for Any?);
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_6;
  }

  v17 = swift_dynamicCast();
  (*(v14 + 56))(v12, v17 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_6:
    v18 = &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?;
    v19 = type metadata accessor for ResolvableTextSegmentAttribute.Value;
    v20 = MEMORY[0x1E69E6720];
    v21 = type metadata accessor for [Date];
    v22 = v12;
    return _s7SwiftUI16TimelineSchedule_pSgWOhTm_0(v22, v18, v19, v20, v21);
  }

  outlined init with take of ResolvableTextSegmentAttribute.Value(v12, v16);
  if ([a5 attribute:*&v16[*(v13 + 20)] atIndex:a2 effectiveRange:0])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v40 = v42;
  v41 = v43;
  if (!*(&v43 + 1))
  {
    _sypSgWOhTm_4(v16, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    _sypSgWOhTm_4(&v40, type metadata accessor for Any?);
    v44 = 0u;
    v45 = 0u;
    AssociatedConformanceWitness = 0;
LABEL_16:
    v18 = &lazy cache variable for type metadata for ResolvableStringAttribute?;
    v19 = &lazy cache variable for type metadata for ResolvableStringAttribute;
    v20 = &protocol descriptor for ResolvableStringAttribute;
    v21 = type metadata accessor for ScrollStateRequest?;
    v22 = &v44;
    return _s7SwiftUI16TimelineSchedule_pSgWOhTm_0(v22, v18, v19, v20, v21);
  }

  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ResolvableStringAttribute);
  if ((swift_dynamicCast() & 1) == 0)
  {
    AssociatedConformanceWitness = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_15;
  }

  if (!*(&v45 + 1))
  {
LABEL_15:
    _sypSgWOhTm_4(v16, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    goto LABEL_16;
  }

  outlined init with take of AnyTrackedValue(&v44, v47);
  outlined init with copy of TimelineSchedule?(a6, &v40);
  if (*(&v41 + 1))
  {
    outlined init with take of AnyTrackedValue(&v40, &v44);
    v23 = v48;
    v24 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v25 = *(&v45 + 1);
    v26 = AssociatedConformanceWitness;
    v27 = __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    ResolvableStringAttribute.reduceSchedule<A>(with:)(v27, v23, v25, v24, v26, &v40);
    _sypSgWOhTm_4(v16, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    outlined assign with take of TimelineSchedule?(&v40, a6);
    __swift_destroy_boxed_opaque_existential_1(&v44);
  }

  else
  {
    _s7SwiftUI16TimelineSchedule_pSgWOhTm_0(&v40, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);
    v29 = v48;
    v30 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v39[0] = *(v30 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v32 = type metadata accessor for Optional();
    v39[1] = v39;
    v33 = *(v32 - 8);
    v34 = MEMORY[0x1EEE9AC00](v32);
    v36 = v39 - v35;
    (v39[0])(v29, v30, v34);
    v37 = *(AssociatedTypeWitness - 8);
    if ((*(v37 + 48))(v36, 1, AssociatedTypeWitness) == 1)
    {
      _sypSgWOhTm_4(v16, type metadata accessor for ResolvableTextSegmentAttribute.Value);
      (*(v33 + 8))(v36, v32);
      AssociatedConformanceWitness = 0;
      v44 = 0u;
      v45 = 0u;
    }

    else
    {
      *(&v45 + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(v37 + 32))(boxed_opaque_existential_1, v36, AssociatedTypeWitness);
      _sypSgWOhTm_4(v16, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    }

    outlined assign with take of TimelineSchedule?(&v44, a6);
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t outlined assign with take of Text.Style(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Style(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL NSAttributedString.isDynamic.getter()
{
  if ([v0 length] < 1)
  {
    return 0;
  }

  if (one-time initialization token for updateSchedule != -1)
  {
    swift_once();
  }

  v1 = static NSAttributedStringKey.updateSchedule;
  [v0 length];
  v2 = [v0 attribute:v1 atIndex:0 effectiveRange:0];
  v3 = v2 != 0;
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  _sypSgWOhTm_4(v5, type metadata accessor for Any?);
  return v3;
}

char *initializeWithCopy for ResolvedTextHelper.NextUpdate(char *a1, char *a2, uint64_t a3)
{
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

  else
  {
    v11 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v11);
  }
}

unint64_t ResolvedStyledText.isDynamic.getter()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    if ([*(v0 + 216) length] < 1)
    {
      return 0;
    }

    else
    {
      if (one-time initialization token for updateSchedule != -1)
      {
        swift_once();
      }

      v2 = static NSAttributedStringKey.updateSchedule;
      [v1 length];
      v3 = [v1 attribute:v2 atIndex:0 effectiveRange:0];
      v1 = v3 != 0;
      if (v3)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v5, 0, sizeof(v5));
      }

      _sypSgWOhTm_6(v5, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
    }
  }

  return v1;
}

SwiftUI::Time_optional __swiftcall ResolvedTextHelper.NextUpdate.time()()
{
  v2 = v1;
  v3 = v0;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  MEMORY[0x1EEE9AC00](Update);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ResolvableStringResolutionContext(v2, v16, type metadata accessor for ResolvedTextHelper.NextUpdate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = v2;
      v35 = v3;
      outlined destroy of Date?(v2, type metadata accessor for ResolvedTextHelper.NextUpdate);
      v19 = *v16;
      type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
      v21 = *(v16 + v20[16]);
      v22 = *(v16 + v20[20]);
      v23 = v16 + v20[12];
      v33 = *(v8 + 32);
      v33(v13, v23, v7);
      ResolvedStyledText.schedule.getter(v37);
      v24 = v38;
      if (v38)
      {
        v32 = v22;
        v25 = v39;
        __swift_project_boxed_opaque_existential_1(v37, v38);
        v36 = v21;
        TimelineSchedule.nextEntry(after:mode:limit:)(v13, &v36, 60, 0, v24, v25, v6);
        (*(v8 + 56))(v6, 0, 1, v7);
        __swift_destroy_boxed_opaque_existential_1(v37);
        if ((*(v8 + 48))(v6, 1, v7) != 1)
        {
          v33(v10, v6, v7);
          Date.timeIntervalSince(_:)();
          v30 = v29;

          v31 = *(v8 + 8);
          v31(v10, v7);
          v31(v13, v7);
          v28 = v19 + v30;
          v27 = v34;
          v3 = v35;
          goto LABEL_11;
        }

        (*(v8 + 8))(v13, v7);
      }

      else
      {

        (*(v8 + 8))(v13, v7);
        _sypSgWOhTm_6(v37, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);
        (*(v8 + 56))(v6, 1, 1, v7);
      }

      v27 = v34;
      outlined destroy of Date?(v6, type metadata accessor for Date?);
      v28 = INFINITY;
      v3 = v35;
LABEL_11:
      *v27 = v28;
      LOBYTE(EnumCaseMultiPayload) = swift_storeEnumTagMultiPayload();
      v26 = 0;
      *v3 = v28;
      goto LABEL_12;
    }

    *v3 = 0;
    v26 = 1;
  }

  else
  {
    v26 = 0;
    *v3 = *v16;
  }

LABEL_12:
  *(v3 + 8) = v26;
  result.value = *&v18;
  result.is_nil = EnumCaseMultiPayload;
  return result;
}

uint64_t AccessibilityStyledTextContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *v2;
  v12 = v2[1];
  v22 = v2[2];
  v21 = *(v2 + 24);
  v13 = v2[5];
  v20 = v2[4];
  v14 = *(v2 + 48);
  v25[0] = v11;
  v25[1] = v13;
  v26 = v14;
  v15 = *(v3 + 24);

  v15(v25, v12, v22, v21, v20, v11, v4, v3);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v7, AssociatedTypeWitness, AssociatedConformanceWitness);
  v17 = *(v23 + 8);
  v17(v7, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v17)(v10, AssociatedTypeWitness);
}

uint64_t outlined init with copy of TimelineSchedule?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrollStateRequest?(0, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void destroy for Text.ResolvedProperties(uint64_t a1)
{

  outlined consume of ResolvedTextSuffix(*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));

  v2 = *(a1 + 136);
}

id NSMutableAttributedString.setUpdateSchedule(_:)(uint64_t a1)
{
  outlined init with copy of TimelineSchedule?(a1, &v4);
  if (v5)
  {
    outlined init with take of AnyTrackedValue(&v4, v6);
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    v2 = static NSAttributedStringKey.updateSchedule;
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    [v1 addAttribute:v2 value:_bridgeAnythingToObjectiveC<A>(_:)() range:{0, objc_msgSend(v1, sel_length)}];
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    _s7SwiftUI16TimelineSchedule_pSgWOhTm_0(&v4, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    return [v1 removeAttribute:static NSAttributedStringKey.updateSchedule range:{0, objc_msgSend(v1, sel_length)}];
  }
}

uint64_t initializeBufferWithCopyOfBuffer for Text.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t TextChildQuery.renderer.getter()
{
  type metadata accessor for TextRendererBoxBase();
  result = AGGraphGetWeakValue();
  if (result)
  {
  }

  return result;
}

uint64_t TextChildQuery.unresolvedText.getter()
{
  Value = AGGraphGetValue();
  v1 = *Value;
  outlined copy of Text.Storage(*Value, *(Value + 8), *(Value + 16));

  return v1;
}

uint64_t outlined init with take of ResolvableStringResolutionContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33ResolvableStringResolutionContextVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithCopy for Text.ResolvedProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  v10 = *(a2 + 88);
  v11 = *(a2 + 96);
  v12 = *(a2 + 104);

  outlined copy of ResolvedTextSuffix(v6, v7, v8, v9, v10, v11);
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  *(a1 + 96) = v11;
  v13 = *(a2 + 112);
  v14 = *(a2 + 120);
  *(a1 + 104) = v12;
  *(a1 + 112) = v13;
  v15 = *(a2 + 128);
  v16 = *(a2 + 136);
  *(a1 + 120) = v14;
  *(a1 + 128) = v15;
  v17 = *(a2 + 144);
  *(a1 + 136) = v16;
  *(a1 + 144) = v17;
  *(a1 + 152) = *(a2 + 152);

  v18 = v16;
  return a1;
}

void destroy for Text.Resolved(uint64_t a1, uint64_t a2)
{
  if (*a1 >= 2uLL)
  {
  }

  outlined consume of Gradient.ProviderTag(*(a1 + 16));

  if ((*(a1 + 88) - 1) >= 2)
  {
  }

  if ((*(a1 + 104) - 1) >= 2)
  {
  }

  if (*(a1 + 176) != 1)
  {
  }

  if (*(a1 + 248) != 1)
  {
  }

  if (*(a1 + 288) >= 2uLL)
  {
    outlined consume of Text.Storage(*(a1 + 264), *(a1 + 272), *(a1 + 280));
  }

  v4 = type metadata accessor for Text.Style(0);
  v5 = v4[21];
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  if (!(*(*(v6 - 8) + 48))(a1 + v5, 2, v6))
  {
    v7 = type metadata accessor for Locale.Language();
    (*(*(v7 - 8) + 8))(a1 + v5, v7);
  }

  v8 = v4[23];
  v9 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(a1 + v8, 1, v9))
  {
    (*(v10 + 8))(a1 + v8, v9);
  }

  v11 = v4[24];
  v12 = type metadata accessor for AttributedString.TextAlignment();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(a1 + v11, 1, v12))
  {
    (*(v13 + 8))(a1 + v11, v12);
  }

  v14 = v4[26];
  v15 = type metadata accessor for AttributedString.LineHeight();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(a1 + v14, 1, v15))
  {
    (*(v16 + 8))(a1 + v14, v15);
  }

  v17 = a1 + *(a2 + 32);

  outlined consume of ResolvedTextSuffix(*(v17 + 56), *(v17 + 64), *(v17 + 72), *(v17 + 80), *(v17 + 88), *(v17 + 96));

  v18 = *(v17 + 136);
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018LineHeightMultipleV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018LineHeightMultipleV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineHeightMultipleKey>, &type metadata for LineHeightMultipleKey, &protocol witness table for LineHeightMultipleKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017MaximumLineHeightV0VG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017MaximumLineHeightV0VG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaximumLineHeightKey>, &type metadata for MaximumLineHeightKey, &protocol witness table for MaximumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MinimumLineHeightS0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumLineHeightKey>, &type metadata for MinimumLineHeightKey, &protocol witness table for MinimumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017MinimumLineHeightV0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA019HyphenationDisabledV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA019HyphenationDisabledV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationDisabledKey>, &type metadata for HyphenationDisabledKey, &protocol witness table for HyphenationDisabledKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017TextJustificationV033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017TextJustificationV033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextJustificationKey>, &type metadata for TextJustificationKey, &protocol witness table for TextJustificationKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextJustificationKey>, &type metadata for TextJustificationKey, &protocol witness table for TextJustificationKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017TextJustificationV033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>, &type metadata for EnvironmentValues.__Key_textShape, &protocol witness table for EnvironmentValues.__Key_textShape, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>, &type metadata for EnvironmentValues.__Key_textShape, &protocol witness table for EnvironmentValues.__Key_textShape, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017HyphenationFactorV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017HyphenationFactorV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationFactorKey>, &type metadata for HyphenationFactorKey, &protocol witness table for HyphenationFactorKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017HyphenationFactorS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationFactorKey>, &type metadata for HyphenationFactorKey, &protocol witness table for HyphenationFactorKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017HyphenationFactorV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017MinimumLineHeightV0VG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017MinimumLineHeightV0VG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumLineHeightKey>, &type metadata for MinimumLineHeightKey, &protocol witness table for MinimumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MaximumLineHeightS0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaximumLineHeightKey>, &type metadata for MaximumLineHeightKey, &protocol witness table for MaximumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017MaximumLineHeightV0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011LineSpacingV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011LineSpacingV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineSpacingKey>, &type metadata for LineSpacingKey, &protocol witness table for LineSpacingKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationDisabledKey>, &type metadata for HyphenationDisabledKey, &protocol witness table for HyphenationDisabledKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA019HyphenationDisabledV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<TextLayoutProperties.Key>>()
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<TextLayoutProperties.Key>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<TextLayoutProperties.Key>, lazy protocol witness table accessor for type TextLayoutProperties.Key and conformance TextLayoutProperties.Key);
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<TextLayoutProperties.Key> and conformance DerivedEnvironmentPropertyKey<A>();
    v0 = type metadata accessor for DerivedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<TextLayoutProperties.Key>>);
    }
  }
}

void *initializeWithCopy for ResolvedTextSuffix(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  outlined copy of ResolvedTextSuffix(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  return a1;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013TextAlignmentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextAlignmentKey>, &type metadata for TextAlignmentKey, &protocol witness table for TextAlignmentKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013TextAlignmentV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WritingModeKey>, &type metadata for WritingModeKey, &protocol witness table for WritingModeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011WritingModeV0023_82074A2E22E8635055FCB3Z8D5E40280LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013TextAlignmentV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013TextAlignmentV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextAlignmentKey>, &type metadata for TextAlignmentKey, &protocol witness table for TextAlignmentKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011WritingModeV0023_82074A2E22E8635055FCB3Z8D5E40280LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011WritingModeV0023_82074A2E22E8635055FCB3Z8D5E40280LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WritingModeKey>, &type metadata for WritingModeKey, &protocol witness table for WritingModeKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t EnvironmentValues.multilineTextAlignment.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013TextAlignmentI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v1);
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013TextAlignmentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v1);
    if (!v3)
    {
      return 0;
    }

    v2 = *(v3 + 72);
  }

  if (v2 == 3)
  {
    return 0;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t initializeWithCopy for Font.Context(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>, &type metadata for EnvironmentValues.__Key_lineHeight, &protocol witness table for EnvironmentValues.__Key_lineHeight, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation16AttributedStringV13CharacterViewVAESTAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation16AttributedStringV13CharacterViewVAESTAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AllowsTighteningKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AllowsTighteningKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsTighteningKey>, &type metadata for AllowsTighteningKey, &protocol witness table for AllowsTighteningKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsTighteningKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AllowsTighteningKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016AllowsTighteningV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016AllowsTighteningV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsTighteningKey>, &type metadata for AllowsTighteningKey, &protocol witness table for AllowsTighteningKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>, &type metadata for EnvironmentValues.__Key_textWritingDirection, &protocol witness table for EnvironmentValues.__Key_textWritingDirection, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<BodyHeadOutdentKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BodyHeadOutdentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BodyHeadOutdentKey>, &type metadata for BodyHeadOutdentKey, &protocol witness table for BodyHeadOutdentKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BodyHeadOutdentKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BodyHeadOutdentKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>, &type metadata for EnvironmentValues.__Key_textWritingDirection, &protocol witness table for EnvironmentValues.__Key_textWritingDirection, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void Text.Resolved.append<A>(_:in:with:isUniqueSizeVariant:)(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t a5)
{
  v33 = a4;
  v9 = type metadata accessor for Text.Resolved(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v13);
  v17 = *a2;
  v16 = a2[1];
  v34 = *a3;
  (*(v18 + 16))(&v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, a5, v14);
  v19 = String.init<A>(_:)();
  v37 = v17;
  v38 = v16;
  v21 = String.caseConvertedIfNeeded(_:)(&v37, v19, v20);
  v23 = v22;

  v24 = v35;
  outlined init with copy of Text.Style(v35, v12, type metadata accessor for Text.Resolved);
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  *(v25 + 24) = v23;
  v26 = v24 + v10[10];
  v37 = v17;
  v38 = v16;
  LODWORD(a2) = v12[v10[8]];
  v36 = v34;

  v27 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(partial apply for closure #1 in static ResolvableTextSegmentAttribute.buildResolvableTextSegment<A>(for:style:environment:includeDefaultAttributes:options:properties:), v25, &v37, a2, &v36, v26);
  v28 = v17;

  outlined destroy of ParagraphStyleResolutionContext(v12, type metadata accessor for Text.Resolved);
  v37 = v17;
  v38 = v16;
  Text.Resolved.append(_:with:in:)(v21, v23, v27, &v37);
  v29 = *(v24 + v10[7]);
  if (v29)
  {
    if ([v29 isEmptyOrTerminatedByParagraphSeparator])
    {
      v30 = [v29 length];

      v37 = v28;
      v38 = v16;
      Text.ResolvedProperties.markParagraphBoundary(at:in:environment:)(v30, v29, &v37);
    }

    else
    {
    }

    if (v33)
    {
      v31 = 256;
    }

    else
    {
      v31 = 0;
    }

    *(v26 + 32) |= v31;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18D0CC18C()
{

  return swift_deallocObject();
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AvoidsOrphansKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AvoidsOrphansKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AvoidsOrphansKey>, &type metadata for AvoidsOrphansKey, &protocol witness table for AvoidsOrphansKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AvoidsOrphansKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AvoidsOrphansKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017TextJustificationI033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt1g5@<X0>(void *a1@<X0>, __int16 *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 36);
    }

    else
    {
      *a2 = 2;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextJustificationKey>, &type metadata for TextJustificationKey, &protocol witness table for TextJustificationKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for TextJustification, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 36);
    }

    else
    {
      v16 = 2;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextJustificationKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOWORD(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016AllowsTighteningI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(void *a1)
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
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016AllowsTighteningF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsTighteningKey>, &type metadata for AllowsTighteningKey, &protocol witness table for AllowsTighteningKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016AllowsTighteningF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AllowsTighteningKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WritingModeKey>, &type metadata for WritingModeKey, &protocol witness table for WritingModeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for Text.WritingMode, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<WritingModeKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013TextAlignmentI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(void *a1)
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
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013TextAlignmentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v12)
    {
      LOBYTE(v18[0]) = *(v12 + 72);
    }

    else
    {
      LOBYTE(v18[0]) = 3;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextAlignmentKey>, &type metadata for TextAlignmentKey, &protocol witness table for TextAlignmentKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for TextAlignment?, &type metadata for TextAlignment, MEMORY[0x1E69E6720]);
    v11(v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013TextAlignmentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = *(v13 + 72);
    }

    else
    {
      v14 = 3;
    }

    LOBYTE(v18[0]) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextAlignmentKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v19[0]) = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = LOBYTE(v18[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013AvoidsOrphansV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013AvoidsOrphansV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AvoidsOrphansKey>, &type metadata for AvoidsOrphansKey, &protocol witness table for AvoidsOrphansKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>, &type metadata for EnvironmentValues.__Key_lineHeight, &protocol witness table for EnvironmentValues.__Key_lineHeight, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextJustificationKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextJustificationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextJustificationKey>, &type metadata for TextJustificationKey, &protocol witness table for TextJustificationKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextJustificationKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextJustificationKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ParagraphTypesettingKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ParagraphTypesettingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ParagraphTypesettingKey>, &type metadata for ParagraphTypesettingKey, &protocol witness table for ParagraphTypesettingKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ParagraphTypesettingKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ParagraphTypesettingKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SensitiveContentKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SensitiveContentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SensitiveContentKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SensitiveContentKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016SensitiveContentI033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt1g5(void *a1)
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
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(a1);
    if (v12)
    {
      LOBYTE(v18[0]) = *(v12 + 72);
    }

    else
    {
      LOBYTE(v18[0]) = 0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = *(v13 + 72);
    }

    else
    {
      v14 = 0;
    }

    LOBYTE(v18[0]) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<SensitiveContentKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v19[0]) = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = LOBYTE(v18[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

void Text.Resolved.append(_:with:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a4[1];
  v27 = *a4;
  v7 = v27;
  v28 = v6;
  v8 = String.caseConvertedIfNeeded(_:)(&v27, a1, a2);
  v27 = v7;
  v28 = v6;
  v9 = String.redactedIfNeeded(_:)(&v27, v8);
  v11 = v10;

  if (v6)
  {

    v12 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016SensitiveContentI033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt1g5(v7);

    if ((v12 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(v7);
    if (!v13 || *(v13 + 72) != 1)
    {
      goto LABEL_8;
    }
  }

  v14 = v5 + *(type metadata accessor for Text.Resolved(0) + 32);
  v15 = *(v14 + 32);
  if ((v15 & 4) == 0)
  {
    *(v14 + 32) = v15 | 4;
  }

LABEL_8:
  v16 = *(type metadata accessor for Text.Resolved(0) + 20);
  v17 = *(v5 + v16);
  if (v17)
  {
    v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v19 = v17;
    v20 = MEMORY[0x193ABEC20](v9, v11);

    type metadata accessor for NSAttributedStringKey(0);
    _s10Foundation16AttributedStringV13CharacterViewVAESTAAWlTm_1(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v26 = [v18 initWithString:v20 attributes:isa];

    [v19 appendAttributedString_];
  }

  else
  {
    v22 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v23 = MEMORY[0x193ABEC20](v9, v11);

    type metadata accessor for NSAttributedStringKey(0);
    _s10Foundation16AttributedStringV13CharacterViewVAESTAAWlTm_1(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    v24 = Dictionary._bridgeToObjectiveC()().super.isa;
    v25 = [v22 initWithString:v23 attributes:v24];

    *(v5 + v16) = v25;
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>, &type metadata for EnvironmentValues.__Key_lineHeight, &protocol witness table for EnvironmentValues.__Key_lineHeight, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5(a1, a2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>();
    v19 = v14;
    v20 = &protocol witness table for TrackedValue<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    outlined init with copy of WeakBox<GlassContainerCache>(a2, boxed_opaque_existential_1, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015BodyHeadOutdentI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(void *a1)
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
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BodyHeadOutdentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v12)
    {
      *&v18[0] = v12[9];
    }

    else
    {
      *&v18[0] = 0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BodyHeadOutdentKey>, &type metadata for BodyHeadOutdentKey, &protocol witness table for BodyHeadOutdentKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BodyHeadOutdentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = v13[9];
    }

    else
    {
      v14 = 0;
    }

    *&v18[0] = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<BodyHeadOutdentKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    v19[0] = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = *v18;
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013AvoidsOrphansI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(uint64_t a1)
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
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013AvoidsOrphansF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AvoidsOrphansKey>, &type metadata for AvoidsOrphansKey, &protocol witness table for AvoidsOrphansKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013AvoidsOrphansF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AvoidsOrphansKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020ParagraphTypesettingI033_D39DBD719189F2769C15C168465CE407LLVG_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA020ParagraphTypesettingF033_D39DBD719189F2769C15C168465CE407LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ParagraphTypesettingKey>, &type metadata for ParagraphTypesettingKey, &protocol witness table for ParagraphTypesettingKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for ParagraphTypesetting, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA020ParagraphTypesettingF033_D39DBD719189F2769C15C168465CE407LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<ParagraphTypesettingKey>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>, &type metadata for EnvironmentValues.__Key_textWritingDirection, &protocol witness table for EnvironmentValues.__Key_textWritingDirection, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for Text.WritingDirectionStrategy, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>, &type metadata for EnvironmentValues.__Key_lineHeight, &protocol witness table for EnvironmentValues.__Key_lineHeight, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt0B5(a1, v8);
  if (v5)
  {
    return _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGWOcTm_0(v5 + *(*v5 + 248), a2, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720], _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_1);
  }

  v7 = type metadata accessor for AttributedString.LineHeight();
  return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016AllowsTighteningF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsTighteningKey>, &type metadata for AllowsTighteningKey, &protocol witness table for AllowsTighteningKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016AllowsTighteningV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020ParagraphTypesettingV033_D39DBD719189F2769C15C168465CE407LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020ParagraphTypesettingV033_D39DBD719189F2769C15C168465CE407LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ParagraphTypesettingKey>, &type metadata for ParagraphTypesettingKey, &protocol witness table for ParagraphTypesettingKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014UnderlineStyleI0VG_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014UnderlineStyleF0VG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnderlineStyleKey>, &type metadata for UnderlineStyleKey, &protocol witness table for UnderlineStyleKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Text.LineStyle?, &type metadata for Text.LineStyle, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014UnderlineStyleF0VG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = a2[1];
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<UnderlineStyleKey>>();
    v20 = v16;
    v21 = &protocol witness table for TrackedValue<A>;
    v19[0] = v14;
    v19[1] = v15;
    outlined copy of Text.LineStyle?(v14, v15);
    specialized Dictionary.subscript.setter(v19, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018StrikethroughStyleI0VG_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA018StrikethroughStyleF0VG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<StrikethroughStyleKey>, &type metadata for StrikethroughStyleKey, &protocol witness table for StrikethroughStyleKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Text.LineStyle?, &type metadata for Text.LineStyle, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA018StrikethroughStyleF0VG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = a2[1];
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<StrikethroughStyleKey>>();
    v20 = v16;
    v21 = &protocol witness table for TrackedValue<A>;
    v19[0] = v14;
    v19[1] = v15;
    outlined copy of Text.LineStyle?(v14, v15);
    specialized Dictionary.subscript.setter(v19, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014UnderlineStyleF0VG_Tt2g5Tm@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, uint64_t *a6@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v9);
  result = a5(a1);
  if (result)
  {
    v11 = *(result + 72);
    v12 = *(result + 80);
    result = outlined copy of Text.LineStyle?(v11, v12);
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

  *a6 = v11;
  a6[1] = v12;
  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA09TextScaleI0VG_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA09TextScaleF0VG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextScaleKey>, &type metadata for TextScaleKey, &protocol witness table for TextScaleKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Text.Scale?, &type metadata for Text.Scale, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA09TextScaleF0VG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextScaleKey>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018StrikethroughStyleV0VG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018StrikethroughStyleV0VG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<StrikethroughStyleKey>, &type metadata for StrikethroughStyleKey, &protocol witness table for StrikethroughStyleKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014UnderlineStyleV0VG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014UnderlineStyleV0VG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnderlineStyleKey>, &type metadata for UnderlineStyleKey, &protocol witness table for UnderlineStyleKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<StrikethroughStyleKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<StrikethroughStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<StrikethroughStyleKey>, &type metadata for StrikethroughStyleKey, &protocol witness table for StrikethroughStyleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<StrikethroughStyleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<StrikethroughStyleKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextScaleKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextScaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextScaleKey>, &type metadata for TextScaleKey, &protocol witness table for TextScaleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextScaleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextScaleKey>>);
    }
  }
}