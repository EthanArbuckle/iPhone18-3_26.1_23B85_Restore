uint64_t destroy for PlatformTextFieldAdaptor(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  outlined consume of StateOrBinding<TextFieldState>(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 180));
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = a1 + *(v4 + 56);
  type metadata accessor for Binding<TextSelection?>(0);
  v7 = v6;
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v8 = *(v7 + 32);
    v9 = type metadata accessor for TextSelection(0);
    if (!(*(*(v9 - 8) + 48))(v5 + v8, 1, v9))
    {
      type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v10 - 8) + 8))(v5 + v8, v10);
      }
    }
  }

  v11 = a1 + *(a2 + 20);

  v12 = *(v11 + 32);
  if (v12 != 1)
  {

    v13 = *(v11 + 184);
    v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
    if ((v13 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v15 = *(v11 + 64);
      if (v15 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v11 + 56), v15);
        v13 = *(v11 + 184);
        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v14 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v11 + 168), *(v11 + 176), v13);
      }

      swift_unknownObjectRelease();
    }
  }

  if (*(v11 + 304) != 1)
  {
    swift_unknownObjectRelease();
  }

  if (*(v11 + 608))
  {

    v16 = *(v11 + 416);
    if (v16)
    {
      if (v16 == 1)
      {
LABEL_22:
        if (*(v11 + 568) != 1)
        {
        }

        goto LABEL_25;
      }

      __swift_destroy_boxed_opaque_existential_1(v11 + 392);
    }

    goto LABEL_22;
  }

LABEL_25:
  v17 = a1 + *(a2 + 28);
  v18 = *v17;
  v19 = *(v17 + 8);

  return outlined consume of Environment<Selector?>.Content(v18, v19);
}

uint64_t initializeWithCopy for PlatformTextFieldAdaptor(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v7 = *(a2 + 64);

  if (v7)
  {
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v18 = *(a2 + 120);
  v17 = *(a2 + 128);
  v92 = *(a2 + 136);
  v93 = *(a2 + 144);
  v94 = *(a2 + 152);
  v95 = *(a2 + 160);
  __dsta = *(a2 + 168);
  v98 = *(a2 + 176);
  v99 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v11, v12, v13, v14, v15, v16, v18, v17, v92, v93, v94, v95, __dsta, v98, v99);
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  *(a1 + 112) = v16;
  *(a1 + 120) = v18;
  *(a1 + 128) = v17;
  *(a1 + 136) = v92;
  *(a1 + 144) = v93;
  *(a1 + 152) = v94;
  *(a1 + 160) = v95;
  *(a1 + 168) = __dsta;
  *(a1 + 176) = v98;
  *(a1 + 180) = v99;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v20 = *(v19 + 56);
  v21 = (a1 + v20);
  v100 = a2;
  v22 = (a2 + v20);
  type metadata accessor for Binding<TextSelection?>(0);
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = a1;
  if ((*(v25 + 48))(v22, 1, v23))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v21, v22, *(*(v27 - 8) + 64));
  }

  else
  {
    v28 = v22[1];
    *v21 = *v22;
    v21[1] = v28;
    v29 = *(v24 + 32);
    __dst = v21 + v29;
    v30 = v22 + v29;
    v31 = type metadata accessor for TextSelection(0);
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);

    if (v33(v30, 1, v31))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v30, *(*(v34 - 8) + 64));
    }

    else
    {
      v35 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v36 - 8) + 16))(__dst, v30, v36);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, v30, *(*(v35 - 8) + 64));
      }

      __dst[*(v31 + 20)] = v30[*(v31 + 20)];
      (*(v32 + 56))(__dst, 0, 1, v31);
    }

    v26 = a1;
    (*(v25 + 56))(v21, 0, 1, v24);
  }

  v37 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(v26 + *(v37 + 20)) = *(v100 + *(v37 + 20));
  v38 = a3[5];
  v39 = v26 + v38;
  v40 = v100 + v38;
  v41 = *(v100 + v38 + 8);
  *v39 = *(v100 + v38);
  *(v39 + 8) = v41;
  *(v39 + 16) = *(v100 + v38 + 16);
  *(v39 + 24) = *(v100 + v38 + 24);
  *(v39 + 28) = *(v100 + v38 + 28);
  v42 = (v100 + v38 + 32);
  v43 = *v42;

  if (v43 == 1)
  {
    v44 = *(v40 + 240);
    *(v39 + 224) = *(v40 + 224);
    *(v39 + 240) = v44;
    *(v39 + 256) = *(v40 + 256);
    v45 = *(v40 + 176);
    *(v39 + 160) = *(v40 + 160);
    *(v39 + 176) = v45;
    v46 = *(v40 + 208);
    *(v39 + 192) = *(v40 + 192);
    *(v39 + 208) = v46;
    v47 = *(v40 + 112);
    *(v39 + 96) = *(v40 + 96);
    *(v39 + 112) = v47;
    v48 = *(v40 + 144);
    *(v39 + 128) = *(v40 + 128);
    *(v39 + 144) = v48;
    v49 = *(v40 + 48);
    *(v39 + 32) = *v42;
    *(v39 + 48) = v49;
    v50 = *(v40 + 80);
    *(v39 + 64) = *(v40 + 64);
    *(v39 + 80) = v50;
  }

  else
  {
    v51 = *(v40 + 40);
    v52 = *(v40 + 48);
    *(v39 + 32) = v43;
    *(v39 + 40) = v51;
    *(v39 + 48) = v52;
    v53 = *(v40 + 184);
    v54 = v43;
    v55 = v51;
    v56 = v52;
    if (v53 >> 1 == 4294967294)
    {
      *(v39 + 184) = *(v40 + 184);
      *(v39 + 200) = *(v40 + 200);
      *(v39 + 216) = *(v40 + 216);
      *(v39 + 227) = *(v40 + 227);
      *(v39 + 120) = *(v40 + 120);
      *(v39 + 136) = *(v40 + 136);
      *(v39 + 152) = *(v40 + 152);
      *(v39 + 168) = *(v40 + 168);
      *(v39 + 56) = *(v40 + 56);
      *(v39 + 72) = *(v40 + 72);
      *(v39 + 88) = *(v40 + 88);
      *(v39 + 104) = *(v40 + 104);
    }

    else
    {
      v57 = *(v40 + 64);
      if (v57 == 255)
      {
        *(v39 + 56) = *(v40 + 56);
        *(v39 + 64) = *(v40 + 64);
      }

      else
      {
        v58 = *(v40 + 56);
        outlined copy of GraphicsImage.Contents(v58, *(v40 + 64));
        *(v39 + 56) = v58;
        *(v39 + 64) = v57;
        v53 = *(v40 + 184);
      }

      *(v39 + 72) = *(v40 + 72);
      *(v39 + 80) = *(v40 + 80);
      *(v39 + 96) = *(v40 + 96);
      *(v39 + 100) = *(v40 + 100);
      *(v39 + 113) = *(v40 + 113);
      v59 = *(v40 + 144);
      *(v39 + 128) = *(v40 + 128);
      *(v39 + 144) = v59;
      *(v39 + 160) = *(v40 + 160);
      *(v39 + 162) = *(v40 + 162);
      *(v39 + 163) = *(v40 + 163);
      if (v53 >> 1 == 0xFFFFFFFF)
      {
        *(v39 + 168) = *(v40 + 168);
        *(v39 + 184) = *(v40 + 184);
      }

      else
      {
        v60 = *(v40 + 168);
        v61 = *(v40 + 176);
        v62 = *(v40 + 192);
        outlined copy of AccessibilityImageLabel(v60, v61, v53);
        *(v39 + 168) = v60;
        *(v39 + 176) = v61;
        *(v39 + 184) = v53;
        *(v39 + 192) = v62;
      }

      v63 = *(v40 + 208);
      *(v39 + 200) = *(v40 + 200);
      *(v39 + 208) = v63;
      *(v39 + 216) = *(v40 + 216);
      *(v39 + 220) = *(v40 + 220);
      *(v39 + 224) = *(v40 + 224);
      v64 = *(v40 + 232);
      *(v39 + 232) = v64;
      *(v39 + 240) = *(v40 + 240);
      *(v39 + 242) = *(v40 + 242);
      swift_unknownObjectRetain();

      v65 = v64;
    }

    *(v39 + 248) = *(v40 + 248);
    *(v39 + 256) = *(v40 + 256);
    *(v39 + 264) = *(v40 + 264);
  }

  *(v39 + 272) = *(v40 + 272);
  v66 = *(v40 + 304);

  if (v66 == 1)
  {
    v67 = *(v40 + 296);
    *(v39 + 280) = *(v40 + 280);
    *(v39 + 296) = v67;
  }

  else
  {
    *(v39 + 280) = *(v40 + 280);
    *(v39 + 288) = *(v40 + 288);
    *(v39 + 304) = v66;
    swift_unknownObjectRetain();
  }

  *(v39 + 312) = *(v40 + 312);
  *(v39 + 320) = *(v40 + 320);
  if (!*(v40 + 608))
  {
    memcpy((v39 + 328), (v40 + 328), 0x129uLL);
    goto LABEL_40;
  }

  v68 = *(v40 + 336);
  *(v39 + 328) = *(v40 + 328);
  *(v39 + 336) = v68;
  *(v39 + 344) = *(v40 + 344);
  *(v39 + 352) = *(v40 + 352);
  *(v39 + 360) = *(v40 + 360);
  *(v39 + 368) = *(v40 + 368);
  *(v39 + 384) = *(v40 + 384);
  v69 = (v39 + 392);
  v70 = (v40 + 392);
  v71 = *(v40 + 416);

  if (!v71)
  {
    v73 = *(v40 + 408);
    *v69 = *v70;
    *(v39 + 408) = v73;
    *(v39 + 424) = *(v40 + 424);
LABEL_35:
    *(v39 + 432) = *(v40 + 432);

    goto LABEL_36;
  }

  if (v71 != 1)
  {
    v74 = *(v40 + 424);
    *(v39 + 416) = v71;
    *(v39 + 424) = v74;
    (**(v71 - 8))(v39 + 392, v40 + 392, v71);
    goto LABEL_35;
  }

  v72 = *(v40 + 408);
  *v69 = *v70;
  *(v39 + 408) = v72;
  *(v39 + 424) = *(v40 + 424);
LABEL_36:
  *(v39 + 440) = *(v40 + 440);
  *(v39 + 448) = *(v40 + 448);
  v75 = (v39 + 456);
  v76 = (v40 + 456);
  v77 = *(v40 + 568);
  if (v77 == 1)
  {
    v78 = *(v40 + 568);
    *(v39 + 552) = *(v40 + 552);
    *(v39 + 568) = v78;
    *(v39 + 584) = *(v40 + 584);
    *(v39 + 600) = *(v40 + 600);
    v79 = *(v40 + 504);
    *(v39 + 488) = *(v40 + 488);
    *(v39 + 504) = v79;
    v80 = *(v40 + 536);
    *(v39 + 520) = *(v40 + 520);
    *(v39 + 536) = v80;
    v81 = *(v40 + 472);
    *v75 = *v76;
    *(v39 + 472) = v81;
  }

  else
  {
    *v75 = *v76;
    *(v39 + 464) = *(v40 + 464);
    *(v39 + 472) = *(v40 + 472);
    *(v39 + 480) = *(v40 + 480);
    *(v39 + 481) = *(v40 + 481);
    *(v39 + 483) = *(v40 + 483);
    *(v39 + 484) = *(v40 + 484);
    *(v39 + 488) = *(v40 + 488);
    v82 = *(v40 + 512);
    *(v39 + 496) = *(v40 + 496);
    *(v39 + 512) = v82;
    *(v39 + 528) = *(v40 + 528);
    *(v39 + 536) = *(v40 + 536);
    *(v39 + 544) = *(v40 + 544);
    *(v39 + 560) = *(v40 + 560);
    *(v39 + 568) = v77;
    *(v39 + 576) = *(v40 + 576);
    *(v39 + 592) = *(v40 + 592);
    *(v39 + 600) = *(v40 + 600);
  }

  *(v39 + 608) = *(v40 + 608);
  *(v39 + 616) = *(v40 + 616);
  *(v39 + 624) = *(v40 + 624);

LABEL_40:
  v83 = a3[6];
  v84 = a3[7];
  v85 = v26 + v83;
  v86 = v100 + v83;
  v87 = *(v86 + 16);
  *v85 = *v86;
  *(v85 + 16) = v87;
  *(v85 + 32) = *(v86 + 32);
  v88 = v26 + v84;
  v89 = *(v100 + v84);
  v90 = *(v100 + v84 + 8);
  outlined copy of Environment<Selector?>.Content(v89, v90);
  *v88 = v89;
  *(v88 + 8) = v90;
  return v26;
}

uint64_t assignWithCopy for PlatformTextFieldAdaptor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v5 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v5)
    {
      v6 = *(a2 + 40);
      v7 = *(a2 + 48);
      v8 = *(a2 + 56);
      outlined copy of Text.Storage(v6, v7, v8);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      *(a1 + 40) = v6;
      *(a1 + 48) = v7;
      *(a1 + 56) = v8;
      outlined consume of Text.Storage(v9, v10, v11);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Text(a1 + 40);
      v15 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v15;
    }
  }

  else if (v5)
  {
    v12 = *(a2 + 40);
    v13 = *(a2 + 48);
    v14 = *(a2 + 56);
    outlined copy of Text.Storage(v12, v13, v14);
    *(a1 + 40) = v12;
    *(a1 + 48) = v13;
    *(a1 + 56) = v14;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v16 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v16;
  }

  v17 = *(a2 + 72);
  v18 = *(a2 + 80);
  v19 = *(a2 + 88);
  v20 = *(a2 + 96);
  v21 = *(a2 + 104);
  v22 = *(a2 + 112);
  v24 = *(a2 + 120);
  v23 = *(a2 + 128);
  v277 = *(a2 + 136);
  v278 = *(a2 + 144);
  v279 = *(a2 + 152);
  v280 = *(a2 + 160);
  __dsta = *(a2 + 168);
  v283 = *(a2 + 176);
  v284 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v17, v18, v19, v20, v21, v22, v24, v23, v277, v278, v279, v280, __dsta, v283, v284);
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  v28 = *(a1 + 96);
  v29 = *(a1 + 104);
  v30 = *(a1 + 112);
  v31 = *(a1 + 120);
  v32 = *(a1 + 128);
  v33 = *(a1 + 136);
  v34 = *(a1 + 152);
  v35 = *(a1 + 168);
  v36 = *(a1 + 176);
  v37 = *(a1 + 180);
  *(a1 + 72) = v17;
  *(a1 + 80) = v18;
  *(a1 + 88) = v19;
  *(a1 + 96) = v20;
  *(a1 + 104) = v21;
  *(a1 + 112) = v22;
  *(a1 + 120) = v24;
  *(a1 + 128) = v23;
  *(a1 + 136) = v277;
  *(a1 + 144) = v278;
  *(a1 + 152) = v279;
  *(a1 + 160) = v280;
  *(a1 + 168) = __dsta;
  *(a1 + 176) = v283;
  *(a1 + 180) = v284;
  outlined consume of StateOrBinding<TextFieldState>(v25, v26, v27, v28, v29, v30, v31, v32, v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v39 = *(v38 + 56);
  v40 = (a1 + v39);
  v285 = a2;
  v41 = (a2 + v39);
  type metadata accessor for Binding<TextSelection?>(0);
  v43 = v42;
  v44 = *(v42 - 8);
  v45 = *(v44 + 48);
  LODWORD(v23) = v45(v40, 1, v42);
  v46 = v45(v41, 1, v43);
  v47 = a1;
  if (v23)
  {
    if (!v46)
    {
      *v40 = *v41;
      v40[1] = v41[1];
      v48 = *(v43 + 32);
      __dst = v40 + v48;
      v49 = v41 + v48;
      v50 = type metadata accessor for TextSelection(0);
      v51 = *(v50 - 8);
      v52 = *(v51 + 48);

      if (v52(v49, 1, v50))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v49, *(*(v53 - 8) + 64));
      }

      else
      {
        v66 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v67 - 8) + 16))(__dst, v49, v67);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, v49, *(*(v66 - 8) + 64));
        }

        __dst[*(v50 + 20)] = v49[*(v50 + 20)];
        (*(v51 + 56))(__dst, 0, 1, v50);
      }

      v47 = a1;
      (*(v44 + 56))(v40, 0, 1, v43);
      goto LABEL_27;
    }

LABEL_14:
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v40, v41, *(*(v54 - 8) + 64));
LABEL_27:
    v63 = v285;
    goto LABEL_28;
  }

  if (v46)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v40, type metadata accessor for Binding<TextSelection?>);
    goto LABEL_14;
  }

  *v40 = *v41;

  v40[1] = v41[1];

  v55 = *(v43 + 32);
  v56 = v40 + v55;
  v57 = v41 + v55;
  v58 = type metadata accessor for TextSelection(0);
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  v61 = v60(v56, 1, v58);
  v62 = v60(v57, 1, v58);
  v63 = v285;
  if (v61)
  {
    if (!v62)
    {
      v64 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v65 - 8) + 16))(v56, v57, v65);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v56, v57, *(*(v64 - 8) + 64));
      }

      v56[*(v58 + 20)] = v57[*(v58 + 20)];
      (*(v59 + 56))(v56, 0, 1, v58);
      goto LABEL_28;
    }

LABEL_23:
    type metadata accessor for TextSelection?(0);
    memcpy(v56, v57, *(*(v68 - 8) + 64));
    goto LABEL_28;
  }

  if (v62)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v56, type metadata accessor for TextSelection);
    goto LABEL_23;
  }

  if (a1 != v285)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v56, type metadata accessor for TextSelection.Indices);
    v173 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v174 - 8) + 16))(v56, v57, v174);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v56, v57, *(*(v173 - 8) + 64));
    }
  }

  v56[*(v58 + 20)] = v57[*(v58 + 20)];
LABEL_28:
  v69 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(v47 + *(v69 + 20)) = *(v63 + *(v69 + 20));
  v70 = a3[5];
  v71 = v47 + v70;
  v72 = v63 + v70;
  *(v47 + v70) = *(v63 + v70);

  *(v71 + 8) = *(v72 + 8);

  *(v71 + 16) = *(v72 + 16);
  *(v71 + 24) = *(v72 + 24);
  *(v71 + 28) = *(v72 + 28);
  v73 = (v71 + 32);
  v74 = *(v71 + 32);
  v76 = (v72 + 32);
  v75 = *(v72 + 32);
  if (v74 == 1)
  {
    if (v75 == 1)
    {
      v77 = *v76;
      v78 = *(v72 + 64);
      *(v71 + 48) = *(v72 + 48);
      *(v71 + 64) = v78;
      *v73 = v77;
      v79 = *(v72 + 80);
      v80 = *(v72 + 96);
      v81 = *(v72 + 128);
      *(v71 + 112) = *(v72 + 112);
      *(v71 + 128) = v81;
      *(v71 + 80) = v79;
      *(v71 + 96) = v80;
      v82 = *(v72 + 144);
      v83 = *(v72 + 160);
      v84 = *(v72 + 192);
      *(v71 + 176) = *(v72 + 176);
      *(v71 + 192) = v84;
      *(v71 + 144) = v82;
      *(v71 + 160) = v83;
      v85 = *(v72 + 208);
      v86 = *(v72 + 224);
      v87 = *(v72 + 256);
      *(v71 + 240) = *(v72 + 240);
      *(v71 + 256) = v87;
      *(v71 + 208) = v85;
      *(v71 + 224) = v86;
    }

    else
    {
      *(v71 + 32) = v75;
      v99 = *(v72 + 40);
      *(v71 + 40) = v99;
      v100 = *(v72 + 48);
      *(v71 + 48) = v100;
      v101 = *(v72 + 184);
      v102 = v75;
      v103 = v99;
      v104 = v100;
      if (v101 >> 1 == 4294967294)
      {
        v105 = *(v72 + 56);
        v106 = *(v72 + 72);
        v107 = *(v72 + 88);
        *(v71 + 104) = *(v72 + 104);
        *(v71 + 88) = v107;
        *(v71 + 72) = v106;
        *(v71 + 56) = v105;
        v108 = *(v72 + 120);
        v109 = *(v72 + 136);
        v110 = *(v72 + 152);
        *(v71 + 168) = *(v72 + 168);
        *(v71 + 152) = v110;
        *(v71 + 136) = v109;
        *(v71 + 120) = v108;
        v111 = *(v72 + 184);
        v112 = *(v72 + 200);
        v113 = *(v72 + 216);
        *(v71 + 227) = *(v72 + 227);
        *(v71 + 216) = v113;
        *(v71 + 200) = v112;
        *(v71 + 184) = v111;
      }

      else
      {
        v131 = *(v72 + 64);
        if (v131 == 255)
        {
          v148 = *(v72 + 56);
          *(v71 + 64) = *(v72 + 64);
          *(v71 + 56) = v148;
        }

        else
        {
          v132 = *(v72 + 56);
          outlined copy of GraphicsImage.Contents(v132, *(v72 + 64));
          *(v71 + 56) = v132;
          *(v71 + 64) = v131;
        }

        *(v71 + 72) = *(v72 + 72);
        *(v71 + 80) = *(v72 + 80);
        *(v71 + 96) = *(v72 + 96);
        v149 = *(v72 + 100);
        *(v71 + 113) = *(v72 + 113);
        *(v71 + 100) = v149;
        v150 = *(v72 + 128);
        v151 = *(v72 + 144);
        *(v71 + 160) = *(v72 + 160);
        *(v71 + 128) = v150;
        *(v71 + 144) = v151;
        *(v71 + 161) = *(v72 + 161);
        *(v71 + 162) = *(v72 + 162);
        *(v71 + 163) = *(v72 + 163);
        v152 = *(v72 + 184);
        if (v152 >> 1 == 0xFFFFFFFF)
        {
          v153 = *(v72 + 168);
          *(v71 + 184) = *(v72 + 184);
          *(v71 + 168) = v153;
        }

        else
        {
          v154 = *(v72 + 168);
          v155 = *(v72 + 176);
          v156 = *(v72 + 192);
          outlined copy of AccessibilityImageLabel(v154, v155, *(v72 + 184));
          *(v71 + 168) = v154;
          *(v71 + 176) = v155;
          *(v71 + 184) = v152;
          *(v71 + 192) = v156;
        }

        *(v71 + 200) = *(v72 + 200);
        *(v71 + 208) = *(v72 + 208);
        *(v71 + 216) = *(v72 + 216);
        *(v71 + 217) = *(v72 + 217);
        v157 = *(v72 + 220);
        *(v71 + 224) = *(v72 + 224);
        *(v71 + 220) = v157;
        v158 = *(v72 + 232);
        *(v71 + 232) = v158;
        *(v71 + 240) = *(v72 + 240);
        *(v71 + 242) = *(v72 + 242);
        swift_unknownObjectRetain();

        v159 = v158;
      }

      *(v71 + 248) = *(v72 + 248);
      *(v71 + 256) = *(v72 + 256);
      *(v71 + 264) = *(v72 + 264);
    }
  }

  else if (v75 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(v71 + 32);
    v89 = *(v72 + 48);
    v88 = *(v72 + 64);
    *v73 = *v76;
    *(v71 + 48) = v89;
    *(v71 + 64) = v88;
    v90 = *(v72 + 128);
    v92 = *(v72 + 80);
    v91 = *(v72 + 96);
    *(v71 + 112) = *(v72 + 112);
    *(v71 + 128) = v90;
    *(v71 + 80) = v92;
    *(v71 + 96) = v91;
    v93 = *(v72 + 192);
    v95 = *(v72 + 144);
    v94 = *(v72 + 160);
    *(v71 + 176) = *(v72 + 176);
    *(v71 + 192) = v93;
    *(v71 + 144) = v95;
    *(v71 + 160) = v94;
    v96 = *(v72 + 256);
    v98 = *(v72 + 208);
    v97 = *(v72 + 224);
    *(v71 + 240) = *(v72 + 240);
    *(v71 + 256) = v96;
    *(v71 + 208) = v98;
    *(v71 + 224) = v97;
  }

  else
  {
    *(v71 + 32) = v75;
    v114 = v75;

    v115 = *(v71 + 40);
    v116 = *(v72 + 40);
    *(v71 + 40) = v116;
    v117 = v116;

    v118 = *(v71 + 48);
    v119 = *(v72 + 48);
    *(v71 + 48) = v119;
    v120 = v119;

    v121 = *(v72 + 184) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v71 + 184) >> 1 == 4294967294)
    {
      if (v121 == 0x1FFFFFFFCLL)
      {
        v122 = *(v72 + 56);
        v123 = *(v72 + 72);
        v124 = *(v72 + 88);
        *(v71 + 104) = *(v72 + 104);
        *(v71 + 88) = v124;
        *(v71 + 72) = v123;
        *(v71 + 56) = v122;
        v125 = *(v72 + 120);
        v126 = *(v72 + 136);
        v127 = *(v72 + 152);
        *(v71 + 168) = *(v72 + 168);
        *(v71 + 152) = v127;
        *(v71 + 136) = v126;
        *(v71 + 120) = v125;
        v128 = *(v72 + 184);
        v129 = *(v72 + 200);
        v130 = *(v72 + 216);
        *(v71 + 227) = *(v72 + 227);
        *(v71 + 216) = v130;
        *(v71 + 200) = v129;
        *(v71 + 184) = v128;
      }

      else
      {
        v142 = *(v72 + 64);
        if (v142 == 255)
        {
          v160 = *(v72 + 56);
          *(v71 + 64) = *(v72 + 64);
          *(v71 + 56) = v160;
        }

        else
        {
          v143 = *(v72 + 56);
          outlined copy of GraphicsImage.Contents(v143, *(v72 + 64));
          *(v71 + 56) = v143;
          *(v71 + 64) = v142;
        }

        *(v71 + 72) = *(v72 + 72);
        *(v71 + 80) = *(v72 + 80);
        *(v71 + 96) = *(v72 + 96);
        v161 = *(v72 + 100);
        *(v71 + 113) = *(v72 + 113);
        *(v71 + 100) = v161;
        v162 = *(v72 + 128);
        v163 = *(v72 + 144);
        *(v71 + 160) = *(v72 + 160);
        *(v71 + 128) = v162;
        *(v71 + 144) = v163;
        *(v71 + 161) = *(v72 + 161);
        *(v71 + 162) = *(v72 + 162);
        *(v71 + 163) = *(v72 + 163);
        v164 = *(v72 + 184);
        if (v164 >> 1 == 0xFFFFFFFF)
        {
          v165 = *(v72 + 168);
          *(v71 + 184) = *(v72 + 184);
          *(v71 + 168) = v165;
        }

        else
        {
          v166 = *(v72 + 168);
          v167 = *(v72 + 176);
          v168 = *(v72 + 192);
          outlined copy of AccessibilityImageLabel(v166, v167, *(v72 + 184));
          *(v71 + 168) = v166;
          *(v71 + 176) = v167;
          *(v71 + 184) = v164;
          *(v71 + 192) = v168;
        }

        *(v71 + 200) = *(v72 + 200);
        *(v71 + 208) = *(v72 + 208);
        *(v71 + 216) = *(v72 + 216);
        *(v71 + 217) = *(v72 + 217);
        v169 = *(v72 + 220);
        *(v71 + 224) = *(v72 + 224);
        *(v71 + 220) = v169;
        v170 = *(v72 + 232);
        *(v71 + 232) = v170;
        *(v71 + 240) = *(v72 + 240);
        *(v71 + 242) = *(v72 + 242);
        swift_unknownObjectRetain();

        v171 = v170;
      }
    }

    else if (v121 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(v71 + 56);
      v133 = *(v72 + 72);
      v134 = *(v72 + 88);
      v135 = *(v72 + 104);
      *(v71 + 56) = *(v72 + 56);
      *(v71 + 104) = v135;
      *(v71 + 88) = v134;
      *(v71 + 72) = v133;
      v136 = *(v72 + 136);
      v137 = *(v72 + 152);
      v138 = *(v72 + 168);
      *(v71 + 120) = *(v72 + 120);
      *(v71 + 168) = v138;
      *(v71 + 152) = v137;
      *(v71 + 136) = v136;
      v139 = *(v72 + 200);
      v140 = *(v72 + 216);
      v141 = *(v72 + 227);
      *(v71 + 184) = *(v72 + 184);
      *(v71 + 227) = v141;
      *(v71 + 216) = v140;
      *(v71 + 200) = v139;
    }

    else
    {
      v144 = *(v72 + 64);
      if (*(v71 + 64) == 255)
      {
        if (v144 == 255)
        {
          v176 = *(v72 + 56);
          *(v71 + 64) = *(v72 + 64);
          *(v71 + 56) = v176;
        }

        else
        {
          v172 = *(v72 + 56);
          outlined copy of GraphicsImage.Contents(v172, *(v72 + 64));
          *(v71 + 56) = v172;
          *(v71 + 64) = v144;
        }
      }

      else if (v144 == 255)
      {
        outlined destroy of GraphicsImage.Contents(v71 + 56);
        v175 = *(v72 + 64);
        *(v71 + 56) = *(v72 + 56);
        *(v71 + 64) = v175;
      }

      else
      {
        v145 = *(v72 + 56);
        outlined copy of GraphicsImage.Contents(v145, *(v72 + 64));
        v146 = *(v71 + 56);
        *(v71 + 56) = v145;
        v147 = *(v71 + 64);
        *(v71 + 64) = v144;
        outlined consume of GraphicsImage.Contents(v146, v147);
      }

      *(v71 + 72) = *(v72 + 72);
      *(v71 + 80) = *(v72 + 80);
      *(v71 + 88) = *(v72 + 88);
      *(v71 + 96) = *(v72 + 96);
      v177 = *(v72 + 100);
      *(v71 + 113) = *(v72 + 113);
      *(v71 + 100) = v177;
      v178 = *(v72 + 128);
      v179 = *(v72 + 144);
      *(v71 + 160) = *(v72 + 160);
      *(v71 + 128) = v178;
      *(v71 + 144) = v179;
      *(v71 + 161) = *(v72 + 161);
      *(v71 + 162) = *(v72 + 162);
      *(v71 + 163) = *(v72 + 163);
      v180 = *(v72 + 184);
      v181 = v180 & 0xFFFFFFFFFFFFFFFELL;
      if (*(v71 + 184) >> 1 == 0xFFFFFFFFLL)
      {
        if (v181 == 0x1FFFFFFFELL)
        {
          v182 = *(v72 + 168);
          *(v71 + 184) = *(v72 + 184);
          *(v71 + 168) = v182;
        }

        else
        {
          v184 = *(v72 + 168);
          v185 = *(v72 + 176);
          v186 = *(v72 + 192);
          outlined copy of AccessibilityImageLabel(v184, v185, *(v72 + 184));
          *(v71 + 168) = v184;
          *(v71 + 176) = v185;
          *(v71 + 184) = v180;
          *(v71 + 192) = v186;
        }
      }

      else if (v181 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(v71 + 168);
        v183 = *(v72 + 184);
        *(v71 + 168) = *(v72 + 168);
        *(v71 + 184) = v183;
      }

      else
      {
        v187 = *(v72 + 168);
        v188 = *(v72 + 176);
        v189 = *(v72 + 192);
        outlined copy of AccessibilityImageLabel(v187, v188, *(v72 + 184));
        v190 = *(v71 + 168);
        v191 = *(v71 + 176);
        v192 = *(v71 + 184);
        *(v71 + 168) = v187;
        *(v71 + 176) = v188;
        *(v71 + 184) = v180;
        *(v71 + 192) = v189;
        outlined consume of AccessibilityImageLabel(v190, v191, v192);
      }

      *(v71 + 200) = *(v72 + 200);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v71 + 208) = *(v72 + 208);

      *(v71 + 216) = *(v72 + 216);
      *(v71 + 217) = *(v72 + 217);
      v193 = *(v72 + 220);
      *(v71 + 224) = *(v72 + 224);
      *(v71 + 220) = v193;
      v194 = *(v71 + 232);
      v195 = *(v72 + 232);
      *(v71 + 232) = v195;
      v196 = v195;

      *(v71 + 240) = *(v72 + 240);
      *(v71 + 242) = *(v72 + 242);
    }

    *(v71 + 248) = *(v72 + 248);

    *(v71 + 256) = *(v72 + 256);
    *(v71 + 264) = *(v72 + 264);
  }

  *(v71 + 272) = *(v72 + 272);

  v197 = (v71 + 280);
  v198 = (v72 + 280);
  v199 = *(v72 + 304);
  if (*(v71 + 304) == 1)
  {
    if (v199 == 1)
    {
      v200 = *(v72 + 296);
      *v197 = *v198;
      *(v71 + 296) = v200;
    }

    else
    {
      *(v71 + 280) = *(v72 + 280);
      *(v71 + 288) = *(v72 + 288);
      *(v71 + 296) = *(v72 + 296);
      *(v71 + 304) = *(v72 + 304);
      swift_unknownObjectRetain();
    }
  }

  else if (v199 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(v71 + 280);
    v201 = *(v72 + 296);
    *v197 = *v198;
    *(v71 + 296) = v201;
  }

  else
  {
    *(v71 + 280) = *(v72 + 280);
    *(v71 + 284) = *(v72 + 284);
    *(v71 + 288) = *(v72 + 288);
    *(v71 + 292) = *(v72 + 292);
    *(v71 + 296) = *(v72 + 296);
    *(v71 + 304) = *(v72 + 304);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v202 = *(v72 + 312);
  *(v71 + 320) = *(v72 + 320);
  *(v71 + 312) = v202;
  v203 = *(v72 + 608);
  if (*(v71 + 608))
  {
    if (v203)
    {
      *(v71 + 328) = *(v72 + 328);
      *(v71 + 336) = *(v72 + 336);

      *(v71 + 344) = *(v72 + 344);
      *(v71 + 352) = *(v72 + 352);

      *(v71 + 360) = *(v72 + 360);
      v204 = *(v72 + 368);
      *(v71 + 384) = *(v72 + 384);
      *(v71 + 368) = v204;
      v205 = (v71 + 392);
      v206 = (v72 + 392);
      v207 = *(v71 + 416);
      v208 = *(v72 + 416);
      if (v207 != 1)
      {
        if (v208 == 1)
        {
          outlined destroy of AccessibilityValueStorage(v71 + 392);
          v218 = *(v72 + 408);
          v217 = *(v72 + 424);
          *v205 = *v206;
          *(v71 + 408) = v218;
          *(v71 + 424) = v217;
        }

        else
        {
          if (v207)
          {
            if (v208)
            {
              __swift_assign_boxed_opaque_existential_1((v71 + 392), (v72 + 392));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v71 + 392);
              v236 = *(v72 + 424);
              v237 = *(v72 + 408);
              *v205 = *v206;
              *(v71 + 408) = v237;
              *(v71 + 424) = v236;
            }
          }

          else if (v208)
          {
            *(v71 + 416) = v208;
            *(v71 + 424) = *(v72 + 424);
            (**(v208 - 8))(v71 + 392, v72 + 392);
          }

          else
          {
            v238 = *v206;
            v239 = *(v72 + 408);
            *(v71 + 424) = *(v72 + 424);
            *v205 = v238;
            *(v71 + 408) = v239;
          }

          *(v71 + 432) = *(v72 + 432);
        }

        goto LABEL_115;
      }

      if (v208)
      {
        if (v208 == 1)
        {
          v209 = *v206;
          v210 = *(v72 + 424);
          *(v71 + 408) = *(v72 + 408);
          *(v71 + 424) = v210;
          *v205 = v209;
LABEL_115:
          v240 = *(v72 + 440);
          *(v71 + 448) = *(v72 + 448);
          *(v71 + 440) = v240;
          v241 = (v71 + 456);
          v242 = (v72 + 456);
          v243 = *(v72 + 568);
          if (*(v71 + 568) == 1)
          {
            if (v243 == 1)
            {
              v244 = *(v72 + 472);
              *v241 = *v242;
              *(v71 + 472) = v244;
              v245 = *(v72 + 488);
              v246 = *(v72 + 504);
              v247 = *(v72 + 536);
              *(v71 + 520) = *(v72 + 520);
              *(v71 + 536) = v247;
              *(v71 + 488) = v245;
              *(v71 + 504) = v246;
              v248 = *(v72 + 552);
              v249 = *(v72 + 568);
              v250 = *(v72 + 584);
              *(v71 + 600) = *(v72 + 600);
              *(v71 + 568) = v249;
              *(v71 + 584) = v250;
              *(v71 + 552) = v248;
            }

            else
            {
              v258 = *v242;
              *(v71 + 464) = *(v72 + 464);
              *v241 = v258;
              v259 = *(v72 + 472);
              *(v71 + 480) = *(v72 + 480);
              *(v71 + 472) = v259;
              *(v71 + 481) = *(v72 + 481);
              *(v71 + 482) = *(v72 + 482);
              *(v71 + 483) = *(v72 + 483);
              *(v71 + 484) = *(v72 + 484);
              *(v71 + 488) = *(v72 + 488);
              *(v71 + 496) = *(v72 + 496);
              *(v71 + 504) = *(v72 + 504);
              *(v71 + 512) = *(v72 + 512);
              *(v71 + 520) = *(v72 + 520);
              *(v71 + 528) = *(v72 + 528);
              *(v71 + 536) = *(v72 + 536);
              *(v71 + 537) = *(v72 + 537);
              *(v71 + 544) = *(v72 + 544);
              *(v71 + 552) = *(v72 + 552);
              *(v71 + 560) = *(v72 + 560);
              *(v71 + 568) = *(v72 + 568);
              v260 = *(v72 + 576);
              *(v71 + 592) = *(v72 + 592);
              *(v71 + 576) = v260;
              *(v71 + 600) = *(v72 + 600);
            }
          }

          else if (v243 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(v71 + 456);
            v251 = *(v72 + 472);
            *v241 = *v242;
            *(v71 + 472) = v251;
            v252 = *(v72 + 536);
            v254 = *(v72 + 488);
            v253 = *(v72 + 504);
            *(v71 + 520) = *(v72 + 520);
            *(v71 + 536) = v252;
            *(v71 + 488) = v254;
            *(v71 + 504) = v253;
            v256 = *(v72 + 568);
            v255 = *(v72 + 584);
            v257 = *(v72 + 552);
            *(v71 + 600) = *(v72 + 600);
            *(v71 + 568) = v256;
            *(v71 + 584) = v255;
            *(v71 + 552) = v257;
          }

          else
          {
            v261 = *v242;
            *(v71 + 464) = *(v72 + 464);
            *v241 = v261;
            v262 = *(v72 + 472);
            *(v71 + 480) = *(v72 + 480);
            *(v71 + 472) = v262;
            *(v71 + 481) = *(v72 + 481);
            *(v71 + 482) = *(v72 + 482);
            *(v71 + 483) = *(v72 + 483);
            *(v71 + 484) = *(v72 + 484);
            *(v71 + 488) = *(v72 + 488);
            *(v71 + 496) = *(v72 + 496);
            *(v71 + 504) = *(v72 + 504);
            *(v71 + 512) = *(v72 + 512);
            *(v71 + 520) = *(v72 + 520);
            *(v71 + 528) = *(v72 + 528);
            *(v71 + 536) = *(v72 + 536);
            *(v71 + 537) = *(v72 + 537);
            *(v71 + 544) = *(v72 + 544);
            *(v71 + 552) = *(v72 + 552);
            *(v71 + 560) = *(v72 + 560);
            *(v71 + 568) = *(v72 + 568);

            v263 = *(v72 + 576);
            *(v71 + 592) = *(v72 + 592);
            *(v71 + 576) = v263;
            *(v71 + 600) = *(v72 + 600);
          }

          *(v71 + 608) = *(v72 + 608);

          *(v71 + 616) = *(v72 + 616);
          *(v71 + 620) = *(v72 + 620);
          *(v71 + 624) = *(v72 + 624);
          goto LABEL_123;
        }

        *(v71 + 416) = v208;
        *(v71 + 424) = *(v72 + 424);
        (**(v208 - 8))(v71 + 392, v72 + 392);
      }

      else
      {
        v234 = *v206;
        v235 = *(v72 + 408);
        *(v71 + 424) = *(v72 + 424);
        *v205 = v234;
        *(v71 + 408) = v235;
      }

      *(v71 + 432) = *(v72 + 432);

      goto LABEL_115;
    }

    outlined destroy of PlatformItem.AccessibilityContent(v71 + 328);
LABEL_94:
    memcpy((v71 + 328), (v72 + 328), 0x129uLL);
    goto LABEL_123;
  }

  if (!v203)
  {
    goto LABEL_94;
  }

  *(v71 + 328) = *(v72 + 328);
  *(v71 + 336) = *(v72 + 336);
  *(v71 + 344) = *(v72 + 344);
  *(v71 + 352) = *(v72 + 352);
  *(v71 + 360) = *(v72 + 360);
  v211 = *(v72 + 368);
  *(v71 + 384) = *(v72 + 384);
  *(v71 + 368) = v211;
  v212 = (v71 + 392);
  v213 = (v72 + 392);
  v214 = *(v72 + 416);

  if (!v214)
  {
    v219 = *v213;
    v220 = *(v72 + 408);
    *(v71 + 424) = *(v72 + 424);
    *v212 = v219;
    *(v71 + 408) = v220;
LABEL_102:
    *(v71 + 432) = *(v72 + 432);

    goto LABEL_103;
  }

  if (v214 != 1)
  {
    *(v71 + 416) = v214;
    *(v71 + 424) = *(v72 + 424);
    (**(v214 - 8))(v71 + 392, v72 + 392, v214);
    goto LABEL_102;
  }

  v215 = *v213;
  v216 = *(v72 + 424);
  *(v71 + 408) = *(v72 + 408);
  *(v71 + 424) = v216;
  *v212 = v215;
LABEL_103:
  v221 = *(v72 + 440);
  *(v71 + 448) = *(v72 + 448);
  *(v71 + 440) = v221;
  v222 = (v71 + 456);
  v223 = (v72 + 456);
  if (*(v72 + 568) == 1)
  {
    v224 = *(v72 + 472);
    *v222 = *v223;
    *(v71 + 472) = v224;
    v225 = *(v72 + 488);
    v226 = *(v72 + 504);
    v227 = *(v72 + 536);
    *(v71 + 520) = *(v72 + 520);
    *(v71 + 536) = v227;
    *(v71 + 488) = v225;
    *(v71 + 504) = v226;
    v228 = *(v72 + 552);
    v229 = *(v72 + 568);
    v230 = *(v72 + 584);
    *(v71 + 600) = *(v72 + 600);
    *(v71 + 568) = v229;
    *(v71 + 584) = v230;
    *(v71 + 552) = v228;
  }

  else
  {
    v231 = *v223;
    *(v71 + 464) = *(v72 + 464);
    *v222 = v231;
    v232 = *(v72 + 472);
    *(v71 + 480) = *(v72 + 480);
    *(v71 + 472) = v232;
    *(v71 + 481) = *(v72 + 481);
    *(v71 + 482) = *(v72 + 482);
    *(v71 + 483) = *(v72 + 483);
    *(v71 + 484) = *(v72 + 484);
    *(v71 + 488) = *(v72 + 488);
    *(v71 + 496) = *(v72 + 496);
    *(v71 + 504) = *(v72 + 504);
    *(v71 + 512) = *(v72 + 512);
    *(v71 + 520) = *(v72 + 520);
    *(v71 + 528) = *(v72 + 528);
    *(v71 + 536) = *(v72 + 536);
    *(v71 + 537) = *(v72 + 537);
    *(v71 + 544) = *(v72 + 544);
    *(v71 + 552) = *(v72 + 552);
    *(v71 + 560) = *(v72 + 560);
    *(v71 + 568) = *(v72 + 568);
    v233 = *(v72 + 576);
    *(v71 + 592) = *(v72 + 592);
    *(v71 + 576) = v233;
    *(v71 + 600) = *(v72 + 600);
  }

  *(v71 + 608) = *(v72 + 608);
  *(v71 + 616) = *(v72 + 616);
  *(v71 + 624) = *(v72 + 624);

LABEL_123:
  v264 = a3[6];
  v265 = v47 + v264;
  v266 = (v63 + v264);
  v267 = *v266;
  v268 = v266[1];
  *(v265 + 32) = *(v266 + 32);
  *v265 = v267;
  *(v265 + 16) = v268;
  v269 = a3[7];
  v270 = v47 + v269;
  v271 = v63 + v269;
  v272 = *v271;
  v273 = *(v271 + 8);
  outlined copy of Environment<Selector?>.Content(*v271, v273);
  v274 = *v270;
  v275 = *(v270 + 8);
  *v270 = v272;
  *(v270 + 8) = v273;
  outlined consume of Environment<Selector?>.Content(v274, v275);
  return v47;
}

uint64_t initializeWithTake for PlatformTextFieldAdaptor(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v8 = *(v7 + 56);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  type metadata accessor for Binding<TextSelection?>(0);
  v12 = v11;
  v13 = *(v11 - 8);
  if ((*(v13 + 48))(v10, 1, v11))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v9, v10, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = v10[1];
    *v9 = *v10;
    v9[1] = v15;
    v16 = *(v12 + 32);
    v17 = v9 + v16;
    v18 = v10 + v16;
    v19 = type metadata accessor for TextSelection(0);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v18, 1, v19))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v17, v18, *(*(v21 - 8) + 64));
    }

    else
    {
      v32 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v22 - 8) + 32))(v17, v18, v22);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v17, v18, *(*(v32 - 8) + 64));
      }

      v17[*(v19 + 20)] = v18[*(v19 + 20)];
      (*(v20 + 56))(v17, 0, 1, v19);
    }

    (*(v13 + 56))(v9, 0, 1, v12);
  }

  v23 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(a1 + *(v23 + 20)) = *(a2 + *(v23 + 20));
  memcpy((a1 + a3[5]), (a2 + a3[5]), 0x271uLL);
  v24 = a3[6];
  v25 = a3[7];
  v26 = a1 + v24;
  v27 = a2 + v24;
  v28 = *(v27 + 16);
  *v26 = *v27;
  *(v26 + 16) = v28;
  *(v26 + 32) = *(v27 + 32);
  v29 = a1 + v25;
  v30 = a2 + v25;
  *v29 = *v30;
  *(v29 + 8) = *(v30 + 8);
  return a1;
}

uint64_t assignWithTake for PlatformTextFieldAdaptor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  if (*(a1 + 64))
  {
    if (*(a2 + 64))
    {
      v7 = *(a2 + 56);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 64) = *(a2 + 64);

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_6:
  v11 = *(a2 + 168);
  v12 = *(a2 + 176);
  v13 = *(a2 + 180);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  v21 = *(a1 + 128);
  v22 = *(a1 + 136);
  v23 = *(a1 + 152);
  v24 = *(a1 + 168);
  v25 = *(a1 + 176);
  v26 = *(a1 + 180);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v11;
  *(a1 + 176) = v12;
  *(a1 + 180) = v13;
  outlined consume of StateOrBinding<TextFieldState>(v14, v15, v16, v17, v18, v19, v20, v21, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v28 = *(v27 + 56);
  v29 = (a1 + v28);
  v30 = (a2 + v28);
  type metadata accessor for Binding<TextSelection?>(0);
  v32 = v31;
  v33 = *(v31 - 8);
  v34 = *(v33 + 48);
  v35 = v34(v29, 1, v31);
  v36 = v34(v30, 1, v32);
  if (v35)
  {
    if (!v36)
    {
      v37 = *(v30 + 1);
      *v29 = *v30;
      *(v29 + 1) = v37;
      v38 = *(v32 + 32);
      v39 = &v29[v38];
      v40 = &v30[v38];
      v41 = type metadata accessor for TextSelection(0);
      v42 = *(v41 - 8);
      if ((*(v42 + 48))(v40, 1, v41))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v39, v40, *(*(v43 - 8) + 64));
      }

      else
      {
        v120 = a3;
        v59 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v60 - 8) + 32))(v39, v40, v60);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v39, v40, *(*(v59 - 8) + 64));
        }

        v39[*(v41 + 20)] = v40[*(v41 + 20)];
        (*(v42 + 56))(v39, 0, 1, v41);
        a3 = v120;
      }

      (*(v33 + 56))(v29, 0, 1, v32);
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  if (v36)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v29, type metadata accessor for Binding<TextSelection?>);
LABEL_12:
    type metadata accessor for Binding<TextSelection?>?(0);
    v45 = *(*(v44 - 8) + 64);
    v46 = v29;
    v47 = v30;
LABEL_13:
    memcpy(v46, v47, v45);
    goto LABEL_26;
  }

  v48 = a3;
  *v29 = *v30;

  *(v29 + 1) = *(v30 + 1);

  v49 = *(v32 + 32);
  v50 = &v29[v49];
  v51 = &v30[v49];
  v52 = type metadata accessor for TextSelection(0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  v55 = v54(v50, 1, v52);
  v56 = v54(v51, 1, v52);
  a3 = v48;
  if (v55)
  {
    if (!v56)
    {
      v57 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v58 - 8) + 32))(v50, v51, v58);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v50, v51, *(*(v57 - 8) + 64));
      }

      v50[*(v52 + 20)] = v51[*(v52 + 20)];
      (*(v53 + 56))(v50, 0, 1, v52);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v56)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v50, type metadata accessor for TextSelection);
LABEL_22:
    type metadata accessor for TextSelection?(0);
    v45 = *(*(v61 - 8) + 64);
    v46 = v50;
    v47 = v51;
    goto LABEL_13;
  }

  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v50, type metadata accessor for TextSelection.Indices);
    v80 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v81 - 8) + 32))(v50, v51, v81);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v50, v51, *(*(v80 - 8) + 64));
    }
  }

  v50[*(v52 + 20)] = v51[*(v52 + 20)];
LABEL_26:
  v62 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(a1 + *(v62 + 20)) = *(a2 + *(v62 + 20));
  v63 = a3[5];
  v64 = a1 + v63;
  v65 = a2 + v63;
  *(a1 + v63) = *(a2 + v63);

  *(v64 + 8) = *(v65 + 8);

  *(v64 + 16) = *(v65 + 16);
  *(v64 + 24) = *(v65 + 24);
  *(v64 + 28) = *(v65 + 28);
  v66 = *(v64 + 32);
  v67 = *(v65 + 32);
  if (v66 == 1)
  {
LABEL_29:
    v68 = *(v65 + 240);
    *(v64 + 224) = *(v65 + 224);
    *(v64 + 240) = v68;
    *(v64 + 256) = *(v65 + 256);
    v69 = *(v65 + 176);
    *(v64 + 160) = *(v65 + 160);
    *(v64 + 176) = v69;
    v70 = *(v65 + 208);
    *(v64 + 192) = *(v65 + 192);
    *(v64 + 208) = v70;
    v71 = *(v65 + 112);
    *(v64 + 96) = *(v65 + 96);
    *(v64 + 112) = v71;
    v72 = *(v65 + 144);
    *(v64 + 128) = *(v65 + 128);
    *(v64 + 144) = v72;
    v73 = *(v65 + 48);
    *(v64 + 32) = *(v65 + 32);
    *(v64 + 48) = v73;
    v74 = *(v65 + 80);
    *(v64 + 64) = *(v65 + 64);
    *(v64 + 80) = v74;
    goto LABEL_51;
  }

  if (v67 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(v64 + 32);
    goto LABEL_29;
  }

  *(v64 + 32) = v67;

  v75 = *(v64 + 40);
  *(v64 + 40) = *(v65 + 40);

  v76 = *(v64 + 48);
  *(v64 + 48) = *(v65 + 48);

  if (*(v64 + 184) >> 1 == 4294967294)
  {
    goto LABEL_33;
  }

  if (*(v65 + 184) >> 1 != 4294967294)
  {
    v77 = *(v64 + 64);
    if (v77 != 255)
    {
      v78 = *(v65 + 64);
      if (v78 != 255)
      {
        v79 = *(v64 + 56);
        *(v64 + 56) = *(v65 + 56);
        *(v64 + 64) = v78;
        outlined consume of GraphicsImage.Contents(v79, v77);
        goto LABEL_44;
      }

      outlined destroy of GraphicsImage.Contents(v64 + 56);
    }

    *(v64 + 56) = *(v65 + 56);
    *(v64 + 64) = *(v65 + 64);
LABEL_44:
    *(v64 + 72) = *(v65 + 72);
    *(v64 + 88) = *(v65 + 88);
    *(v64 + 96) = *(v65 + 96);
    *(v64 + 100) = *(v65 + 100);
    *(v64 + 113) = *(v65 + 113);
    v82 = *(v65 + 144);
    *(v64 + 128) = *(v65 + 128);
    *(v64 + 144) = v82;
    *(v64 + 160) = *(v65 + 160);
    *(v64 + 161) = *(v65 + 161);
    v83 = *(v64 + 184);
    *(v64 + 162) = *(v65 + 162);
    if (v83 >> 1 != 0xFFFFFFFF)
    {
      v84 = *(v65 + 184);
      if (v84 >> 1 != 0xFFFFFFFF)
      {
        v85 = *(v65 + 192);
        v86 = *(v64 + 168);
        v87 = *(v64 + 176);
        *(v64 + 168) = *(v65 + 168);
        *(v64 + 184) = v84;
        *(v64 + 192) = v85;
        outlined consume of AccessibilityImageLabel(v86, v87, v83);
        goto LABEL_49;
      }

      outlined destroy of AccessibilityImageLabel(v64 + 168);
    }

    *(v64 + 168) = *(v65 + 168);
    *(v64 + 184) = *(v65 + 184);
LABEL_49:
    *(v64 + 200) = *(v65 + 200);
    swift_unknownObjectRelease();
    *(v64 + 208) = *(v65 + 208);

    *(v64 + 216) = *(v65 + 216);
    *(v64 + 217) = *(v65 + 217);
    *(v64 + 220) = *(v65 + 220);
    *(v64 + 224) = *(v65 + 224);
    v88 = *(v64 + 232);
    *(v64 + 232) = *(v65 + 232);

    *(v64 + 240) = *(v65 + 240);
    *(v64 + 242) = *(v65 + 242);
    goto LABEL_50;
  }

  outlined destroy of Image.Resolved(v64 + 56);
LABEL_33:
  *(v64 + 184) = *(v65 + 184);
  *(v64 + 200) = *(v65 + 200);
  *(v64 + 216) = *(v65 + 216);
  *(v64 + 227) = *(v65 + 227);
  *(v64 + 120) = *(v65 + 120);
  *(v64 + 136) = *(v65 + 136);
  *(v64 + 152) = *(v65 + 152);
  *(v64 + 168) = *(v65 + 168);
  *(v64 + 56) = *(v65 + 56);
  *(v64 + 72) = *(v65 + 72);
  *(v64 + 88) = *(v65 + 88);
  *(v64 + 104) = *(v65 + 104);
LABEL_50:
  *(v64 + 248) = *(v65 + 248);

  *(v64 + 256) = *(v65 + 256);
  *(v64 + 264) = *(v65 + 264);

LABEL_51:
  *(v64 + 272) = *(v65 + 272);

  v89 = (v64 + 280);
  v90 = (v65 + 280);
  if (*(v64 + 304) == 1)
  {
LABEL_54:
    v92 = *(v65 + 296);
    *v89 = *v90;
    *(v64 + 296) = v92;
    goto LABEL_56;
  }

  v91 = *(v65 + 304);
  if (v91 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(v64 + 280);
    goto LABEL_54;
  }

  *v89 = *v90;
  *(v64 + 296) = *(v65 + 296);
  *(v64 + 304) = v91;
  swift_unknownObjectRelease();
LABEL_56:
  *(v64 + 312) = *(v65 + 312);
  *(v64 + 320) = *(v65 + 320);
  if (*(v64 + 608))
  {
    if (*(v65 + 608))
    {
      v93 = *(v65 + 336);
      *(v64 + 328) = *(v65 + 328);
      *(v64 + 336) = v93;

      *(v64 + 344) = *(v65 + 344);
      *(v64 + 352) = *(v65 + 352);

      *(v64 + 360) = *(v65 + 360);
      *(v64 + 368) = *(v65 + 368);
      *(v64 + 384) = *(v65 + 384);
      v94 = (v64 + 392);
      v95 = (v65 + 392);
      v96 = *(v64 + 416);
      if (v96 != 1)
      {
        v97 = *(v65 + 416);
        if (v97 != 1)
        {
          if (v96)
          {
            v99 = v64 + 392;
            if (v97)
            {
              __swift_destroy_boxed_opaque_existential_1(v99);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v99);
            }
          }

          v100 = *(v65 + 408);
          *v94 = *v95;
          *(v64 + 408) = v100;
          *(v64 + 424) = *(v65 + 424);
          *(v64 + 432) = *(v65 + 432);

LABEL_69:
          *(v64 + 440) = *(v65 + 440);
          *(v64 + 448) = *(v65 + 448);
          v101 = (v64 + 456);
          v102 = (v65 + 456);
          if (*(v64 + 568) != 1)
          {
            v103 = *(v65 + 568);
            if (v103 != 1)
            {
              *v101 = *v102;
              *(v64 + 464) = *(v65 + 464);
              *(v64 + 472) = *(v65 + 472);
              *(v64 + 480) = *(v65 + 480);
              *(v64 + 481) = *(v65 + 481);
              *(v64 + 483) = *(v65 + 483);
              *(v64 + 484) = *(v65 + 484);
              *(v64 + 488) = *(v65 + 488);
              v108 = *(v65 + 512);
              *(v64 + 496) = *(v65 + 496);
              *(v64 + 512) = v108;
              *(v64 + 528) = *(v65 + 528);
              *(v64 + 536) = *(v65 + 536);
              *(v64 + 537) = *(v65 + 537);
              *(v64 + 544) = *(v65 + 544);
              *(v64 + 560) = *(v65 + 560);
              *(v64 + 568) = v103;

              *(v64 + 576) = *(v65 + 576);
              *(v64 + 592) = *(v65 + 592);
              *(v64 + 600) = *(v65 + 600);
              goto LABEL_74;
            }

            outlined destroy of AccessibilityTextLayoutProperties(v64 + 456);
          }

          v104 = *(v65 + 568);
          *(v64 + 552) = *(v65 + 552);
          *(v64 + 568) = v104;
          *(v64 + 584) = *(v65 + 584);
          *(v64 + 600) = *(v65 + 600);
          v105 = *(v65 + 504);
          *(v64 + 488) = *(v65 + 488);
          *(v64 + 504) = v105;
          v106 = *(v65 + 536);
          *(v64 + 520) = *(v65 + 520);
          *(v64 + 536) = v106;
          v107 = *(v65 + 472);
          *v101 = *v102;
          *(v64 + 472) = v107;
LABEL_74:
          *(v64 + 608) = *(v65 + 608);

          *(v64 + 616) = *(v65 + 616);
          *(v64 + 624) = *(v65 + 624);
          goto LABEL_75;
        }

        outlined destroy of AccessibilityValueStorage(v64 + 392);
      }

      v98 = *(v65 + 408);
      *v94 = *v95;
      *(v64 + 408) = v98;
      *(v64 + 424) = *(v65 + 424);
      goto LABEL_69;
    }

    outlined destroy of PlatformItem.AccessibilityContent(v64 + 328);
  }

  memcpy((v64 + 328), (v65 + 328), 0x129uLL);
LABEL_75:
  v109 = a3[6];
  v110 = a3[7];
  v111 = a1 + v109;
  v112 = a2 + v109;
  v113 = *(v112 + 16);
  *v111 = *v112;
  *(v111 + 16) = v113;
  *(v111 + 32) = *(v112 + 32);
  v114 = a1 + v110;
  v115 = (a2 + v110);
  v116 = *v115;
  LOBYTE(v115) = *(v115 + 8);
  v117 = *v114;
  v118 = *(v114 + 8);
  *v114 = v116;
  *(v114 + 8) = v115;
  outlined consume of Environment<Selector?>.Content(v117, v118);
  return a1;
}

uint64_t type metadata completion function for PlatformTextFieldAdaptor()
{
  result = type metadata accessor for SystemTextFieldConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TextViewAdaptor(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) == 0)
  {
    v7 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v7;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 33) = *(a2 + 33);
    v8 = a2[8];

    if (v8)
    {
      v9 = a2[5];
      v10 = a2[6];
      v11 = *(a2 + 56);
      outlined copy of Text.Storage(v9, v10, v11);
      *(a1 + 40) = v9;
      *(a1 + 48) = v10;
      *(a1 + 56) = v11;
      *(a1 + 64) = a2[8];
    }

    else
    {
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = *(a2 + 7);
    }

    v13 = a2[9];
    v14 = a2[10];
    v15 = a2[11];
    v16 = a2[12];
    v17 = a2[13];
    v18 = a2[14];
    v20 = a2[15];
    v19 = a2[16];
    v102 = a2[17];
    v103 = a2[18];
    v104 = a2[19];
    v105 = a2[20];
    __dsta = a2[21];
    v108 = *(a2 + 44);
    v109 = *(a2 + 180);
    outlined copy of StateOrBinding<TextFieldState>(v13, v14, v15, v16, v17, v18, v20, v19, v102, v103, v104, v105, __dsta, v108, v109);
    *(a1 + 72) = v13;
    *(a1 + 80) = v14;
    *(a1 + 88) = v15;
    *(a1 + 96) = v16;
    *(a1 + 104) = v17;
    *(a1 + 112) = v18;
    *(a1 + 120) = v20;
    *(a1 + 128) = v19;
    *(a1 + 136) = v102;
    *(a1 + 144) = v103;
    *(a1 + 152) = v104;
    *(a1 + 160) = v105;
    *(a1 + 168) = __dsta;
    *(a1 + 176) = v108;
    *(a1 + 180) = v109;
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    v22 = *(v21 + 56);
    v23 = (a1 + v22);
    v110 = a2;
    v24 = (a2 + v22);
    type metadata accessor for Binding<TextSelection?>(0);
    v26 = v25;
    v27 = *(v25 - 8);
    v12 = a1;
    if ((*(v27 + 48))(v24, 1, v25))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v23, v24, *(*(v28 - 8) + 64));
    }

    else
    {
      v29 = v24[1];
      *v23 = *v24;
      v23[1] = v29;
      v30 = *(v26 + 32);
      __dst = v23 + v30;
      v31 = v24 + v30;
      v32 = type metadata accessor for TextSelection(0);
      v33 = *(v32 - 8);
      v34 = *(v33 + 48);

      if (v34(v31, 1, v32))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v31, *(*(v35 - 8) + 64));
      }

      else
      {
        v36 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v37 - 8) + 16))(__dst, v31, v37);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, v31, *(*(v36 - 8) + 64));
        }

        __dst[*(v32 + 20)] = v31[*(v32 + 20)];
        (*(v33 + 56))(__dst, 0, 1, v32);
      }

      v12 = a1;
      (*(v27 + 56))(v23, 0, 1, v26);
    }

    v38 = type metadata accessor for SystemTextFieldConfiguration(0);
    *(v12 + *(v38 + 20)) = *(v110 + *(v38 + 20));
    v39 = a3[5];
    v40 = v12 + v39;
    v41 = v110 + v39;
    v42 = *(v110 + v39 + 8);
    *v40 = *(v110 + v39);
    *(v40 + 8) = v42;
    *(v40 + 16) = *(v110 + v39 + 16);
    *(v40 + 24) = *(v110 + v39 + 24);
    *(v40 + 28) = *(v110 + v39 + 28);
    v43 = (v110 + v39 + 32);
    v44 = *v43;

    if (v44 == 1)
    {
      v45 = *(v41 + 240);
      *(v40 + 224) = *(v41 + 224);
      *(v40 + 240) = v45;
      *(v40 + 256) = *(v41 + 256);
      v46 = *(v41 + 176);
      *(v40 + 160) = *(v41 + 160);
      *(v40 + 176) = v46;
      v47 = *(v41 + 208);
      *(v40 + 192) = *(v41 + 192);
      *(v40 + 208) = v47;
      v48 = *(v41 + 112);
      *(v40 + 96) = *(v41 + 96);
      *(v40 + 112) = v48;
      v49 = *(v41 + 144);
      *(v40 + 128) = *(v41 + 128);
      *(v40 + 144) = v49;
      v50 = *(v41 + 48);
      *(v40 + 32) = *v43;
      *(v40 + 48) = v50;
      v51 = *(v41 + 80);
      *(v40 + 64) = *(v41 + 64);
      *(v40 + 80) = v51;
    }

    else
    {
      v52 = *(v41 + 40);
      v53 = *(v41 + 48);
      *(v40 + 32) = v44;
      *(v40 + 40) = v52;
      *(v40 + 48) = v53;
      v54 = *(v41 + 184);
      v55 = v44;
      v56 = v52;
      v57 = v53;
      if (v54 >> 1 == 4294967294)
      {
        *(v40 + 184) = *(v41 + 184);
        *(v40 + 200) = *(v41 + 200);
        *(v40 + 216) = *(v41 + 216);
        *(v40 + 227) = *(v41 + 227);
        *(v40 + 120) = *(v41 + 120);
        *(v40 + 136) = *(v41 + 136);
        *(v40 + 152) = *(v41 + 152);
        *(v40 + 168) = *(v41 + 168);
        *(v40 + 56) = *(v41 + 56);
        *(v40 + 72) = *(v41 + 72);
        *(v40 + 88) = *(v41 + 88);
        *(v40 + 104) = *(v41 + 104);
      }

      else
      {
        v58 = *(v41 + 64);
        if (v58 == 255)
        {
          *(v40 + 56) = *(v41 + 56);
          *(v40 + 64) = *(v41 + 64);
        }

        else
        {
          v59 = *(v41 + 56);
          outlined copy of GraphicsImage.Contents(v59, *(v41 + 64));
          *(v40 + 56) = v59;
          *(v40 + 64) = v58;
          v54 = *(v41 + 184);
        }

        *(v40 + 72) = *(v41 + 72);
        *(v40 + 80) = *(v41 + 80);
        *(v40 + 96) = *(v41 + 96);
        *(v40 + 100) = *(v41 + 100);
        *(v40 + 113) = *(v41 + 113);
        v60 = *(v41 + 144);
        *(v40 + 128) = *(v41 + 128);
        *(v40 + 144) = v60;
        *(v40 + 160) = *(v41 + 160);
        *(v40 + 162) = *(v41 + 162);
        *(v40 + 163) = *(v41 + 163);
        if (v54 >> 1 == 0xFFFFFFFF)
        {
          *(v40 + 168) = *(v41 + 168);
          *(v40 + 184) = *(v41 + 184);
        }

        else
        {
          v61 = *(v41 + 168);
          v62 = *(v41 + 176);
          v63 = *(v41 + 192);
          outlined copy of AccessibilityImageLabel(v61, v62, v54);
          *(v40 + 168) = v61;
          *(v40 + 176) = v62;
          *(v40 + 184) = v54;
          *(v40 + 192) = v63;
        }

        v64 = *(v41 + 208);
        *(v40 + 200) = *(v41 + 200);
        *(v40 + 208) = v64;
        *(v40 + 216) = *(v41 + 216);
        *(v40 + 220) = *(v41 + 220);
        *(v40 + 224) = *(v41 + 224);
        v65 = *(v41 + 232);
        *(v40 + 232) = v65;
        *(v40 + 240) = *(v41 + 240);
        *(v40 + 242) = *(v41 + 242);
        swift_unknownObjectRetain();

        v66 = v65;
      }

      *(v40 + 248) = *(v41 + 248);
      *(v40 + 256) = *(v41 + 256);
      *(v40 + 264) = *(v41 + 264);
    }

    *(v40 + 272) = *(v41 + 272);
    v67 = *(v41 + 304);

    if (v67 == 1)
    {
      v68 = *(v41 + 296);
      *(v40 + 280) = *(v41 + 280);
      *(v40 + 296) = v68;
    }

    else
    {
      *(v40 + 280) = *(v41 + 280);
      *(v40 + 288) = *(v41 + 288);
      *(v40 + 304) = v67;
      swift_unknownObjectRetain();
    }

    *(v40 + 312) = *(v41 + 312);
    *(v40 + 320) = *(v41 + 320);
    if (!*(v41 + 608))
    {
      memcpy((v40 + 328), (v41 + 328), 0x129uLL);
LABEL_42:
      v84 = a3[6];
      v85 = a3[7];
      v86 = (v12 + v84);
      v87 = (v110 + v84);
      v88 = v87[1];
      *v86 = *v87;
      v86[1] = v88;
      v89 = (v12 + v85);
      v90 = (v110 + v85);
      v91 = v90[1];
      *v89 = *v90;
      v89[1] = v91;
      v92 = a3[8];
      v93 = v12 + v92;
      v94 = v110 + v92;
      v95 = *v94;
      v96 = *(v94 + 8);
      outlined copy of Environment<Selector?>.Content(*v94, v96);
      *v93 = v95;
      *(v93 + 8) = v96;
      v97 = a3[9];
      v98 = v12 + v97;
      v99 = v110 + v97;
      v100 = *v99;
      LOBYTE(v95) = *(v99 + 8);
      outlined copy of Environment<Selector?>.Content(*v99, v95);
      *v98 = v100;
      *(v98 + 8) = v95;
      return v12;
    }

    v69 = *(v41 + 336);
    *(v40 + 328) = *(v41 + 328);
    *(v40 + 336) = v69;
    *(v40 + 344) = *(v41 + 344);
    *(v40 + 352) = *(v41 + 352);
    *(v40 + 360) = *(v41 + 360);
    *(v40 + 368) = *(v41 + 368);
    *(v40 + 384) = *(v41 + 384);
    v70 = (v40 + 392);
    v71 = (v41 + 392);
    v72 = *(v41 + 416);

    if (v72)
    {
      if (v72 == 1)
      {
        v73 = *(v41 + 408);
        *v70 = *v71;
        *(v40 + 408) = v73;
        *(v40 + 424) = *(v41 + 424);
LABEL_38:
        *(v40 + 440) = *(v41 + 440);
        *(v40 + 448) = *(v41 + 448);
        v76 = (v40 + 456);
        v77 = (v41 + 456);
        v78 = *(v41 + 568);
        if (v78 == 1)
        {
          v79 = *(v41 + 568);
          *(v40 + 552) = *(v41 + 552);
          *(v40 + 568) = v79;
          *(v40 + 584) = *(v41 + 584);
          *(v40 + 600) = *(v41 + 600);
          v80 = *(v41 + 504);
          *(v40 + 488) = *(v41 + 488);
          *(v40 + 504) = v80;
          v81 = *(v41 + 536);
          *(v40 + 520) = *(v41 + 520);
          *(v40 + 536) = v81;
          v82 = *(v41 + 472);
          *v76 = *v77;
          *(v40 + 472) = v82;
        }

        else
        {
          *v76 = *v77;
          *(v40 + 464) = *(v41 + 464);
          *(v40 + 472) = *(v41 + 472);
          *(v40 + 480) = *(v41 + 480);
          *(v40 + 481) = *(v41 + 481);
          *(v40 + 483) = *(v41 + 483);
          *(v40 + 484) = *(v41 + 484);
          *(v40 + 488) = *(v41 + 488);
          v83 = *(v41 + 512);
          *(v40 + 496) = *(v41 + 496);
          *(v40 + 512) = v83;
          *(v40 + 528) = *(v41 + 528);
          *(v40 + 536) = *(v41 + 536);
          *(v40 + 544) = *(v41 + 544);
          *(v40 + 560) = *(v41 + 560);
          *(v40 + 568) = v78;
          *(v40 + 576) = *(v41 + 576);
          *(v40 + 592) = *(v41 + 592);
          *(v40 + 600) = *(v41 + 600);
        }

        *(v40 + 608) = *(v41 + 608);
        *(v40 + 616) = *(v41 + 616);
        *(v40 + 624) = *(v41 + 624);

        goto LABEL_42;
      }

      v75 = *(v41 + 424);
      *(v40 + 416) = v72;
      *(v40 + 424) = v75;
      (**(v72 - 8))(v40 + 392, v41 + 392, v72);
    }

    else
    {
      v74 = *(v41 + 408);
      *v70 = *v71;
      *(v40 + 408) = v74;
      *(v40 + 424) = *(v41 + 424);
    }

    *(v40 + 432) = *(v41 + 432);

    goto LABEL_38;
  }

  v12 = v5 + ((v4 + 16) & ~v4);

  return v12;
}

uint64_t destroy for TextViewAdaptor(uint64_t a1, int *a2)
{

  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  outlined consume of StateOrBinding<TextFieldState>(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 180));
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = a1 + *(v4 + 56);
  type metadata accessor for Binding<TextSelection?>(0);
  v7 = v6;
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v8 = *(v7 + 32);
    v9 = type metadata accessor for TextSelection(0);
    if (!(*(*(v9 - 8) + 48))(v5 + v8, 1, v9))
    {
      type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v10 - 8) + 8))(v5 + v8, v10);
      }
    }
  }

  v11 = a1 + a2[5];

  v12 = *(v11 + 32);
  if (v12 != 1)
  {

    v13 = *(v11 + 184);
    v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
    if ((v13 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v15 = *(v11 + 64);
      if (v15 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v11 + 56), v15);
        v13 = *(v11 + 184);
        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v14 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v11 + 168), *(v11 + 176), v13);
      }

      swift_unknownObjectRelease();
    }
  }

  if (*(v11 + 304) != 1)
  {
    swift_unknownObjectRelease();
  }

  if (*(v11 + 608))
  {

    v16 = *(v11 + 416);
    if (v16)
    {
      if (v16 == 1)
      {
LABEL_22:
        if (*(v11 + 568) != 1)
        {
        }

        goto LABEL_25;
      }

      __swift_destroy_boxed_opaque_existential_1(v11 + 392);
    }

    goto LABEL_22;
  }

LABEL_25:
  outlined consume of Environment<Selector?>.Content(*(a1 + a2[8]), *(a1 + a2[8] + 8));
  v17 = a1 + a2[9];
  v18 = *v17;
  v19 = *(v17 + 8);

  return outlined consume of Environment<Selector?>.Content(v18, v19);
}

uint64_t initializeWithCopy for TextViewAdaptor(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v7 = *(a2 + 64);

  if (v7)
  {
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v18 = *(a2 + 120);
  v17 = *(a2 + 128);
  v101 = *(a2 + 136);
  v102 = *(a2 + 144);
  v103 = *(a2 + 152);
  v104 = *(a2 + 160);
  __dsta = *(a2 + 168);
  v107 = *(a2 + 176);
  v108 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v11, v12, v13, v14, v15, v16, v18, v17, v101, v102, v103, v104, __dsta, v107, v108);
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  *(a1 + 112) = v16;
  *(a1 + 120) = v18;
  *(a1 + 128) = v17;
  *(a1 + 136) = v101;
  *(a1 + 144) = v102;
  *(a1 + 152) = v103;
  *(a1 + 160) = v104;
  *(a1 + 168) = __dsta;
  *(a1 + 176) = v107;
  *(a1 + 180) = v108;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v20 = *(v19 + 56);
  v21 = (a1 + v20);
  v109 = a2;
  v22 = (a2 + v20);
  type metadata accessor for Binding<TextSelection?>(0);
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = a1;
  if ((*(v25 + 48))(v22, 1, v23))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v21, v22, *(*(v27 - 8) + 64));
  }

  else
  {
    v28 = v22[1];
    *v21 = *v22;
    v21[1] = v28;
    v29 = *(v24 + 32);
    __dst = v21 + v29;
    v30 = v22 + v29;
    v31 = type metadata accessor for TextSelection(0);
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);

    if (v33(v30, 1, v31))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v30, *(*(v34 - 8) + 64));
    }

    else
    {
      v35 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v36 - 8) + 16))(__dst, v30, v36);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, v30, *(*(v35 - 8) + 64));
      }

      __dst[*(v31 + 20)] = v30[*(v31 + 20)];
      (*(v32 + 56))(__dst, 0, 1, v31);
    }

    v26 = a1;
    (*(v25 + 56))(v21, 0, 1, v24);
  }

  v37 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(v26 + *(v37 + 20)) = *(v109 + *(v37 + 20));
  v38 = a3[5];
  v39 = v26 + v38;
  v40 = v109 + v38;
  v41 = *(v109 + v38 + 8);
  *v39 = *(v109 + v38);
  *(v39 + 8) = v41;
  *(v39 + 16) = *(v109 + v38 + 16);
  *(v39 + 24) = *(v109 + v38 + 24);
  *(v39 + 28) = *(v109 + v38 + 28);
  v42 = (v109 + v38 + 32);
  v43 = *v42;

  if (v43 == 1)
  {
    v44 = *(v40 + 240);
    *(v39 + 224) = *(v40 + 224);
    *(v39 + 240) = v44;
    *(v39 + 256) = *(v40 + 256);
    v45 = *(v40 + 176);
    *(v39 + 160) = *(v40 + 160);
    *(v39 + 176) = v45;
    v46 = *(v40 + 208);
    *(v39 + 192) = *(v40 + 192);
    *(v39 + 208) = v46;
    v47 = *(v40 + 112);
    *(v39 + 96) = *(v40 + 96);
    *(v39 + 112) = v47;
    v48 = *(v40 + 144);
    *(v39 + 128) = *(v40 + 128);
    *(v39 + 144) = v48;
    v49 = *(v40 + 48);
    *(v39 + 32) = *v42;
    *(v39 + 48) = v49;
    v50 = *(v40 + 80);
    *(v39 + 64) = *(v40 + 64);
    *(v39 + 80) = v50;
  }

  else
  {
    v51 = *(v40 + 40);
    v52 = *(v40 + 48);
    *(v39 + 32) = v43;
    *(v39 + 40) = v51;
    *(v39 + 48) = v52;
    v53 = *(v40 + 184);
    v54 = v43;
    v55 = v51;
    v56 = v52;
    if (v53 >> 1 == 4294967294)
    {
      *(v39 + 184) = *(v40 + 184);
      *(v39 + 200) = *(v40 + 200);
      *(v39 + 216) = *(v40 + 216);
      *(v39 + 227) = *(v40 + 227);
      *(v39 + 120) = *(v40 + 120);
      *(v39 + 136) = *(v40 + 136);
      *(v39 + 152) = *(v40 + 152);
      *(v39 + 168) = *(v40 + 168);
      *(v39 + 56) = *(v40 + 56);
      *(v39 + 72) = *(v40 + 72);
      *(v39 + 88) = *(v40 + 88);
      *(v39 + 104) = *(v40 + 104);
    }

    else
    {
      v57 = *(v40 + 64);
      if (v57 == 255)
      {
        *(v39 + 56) = *(v40 + 56);
        *(v39 + 64) = *(v40 + 64);
      }

      else
      {
        v58 = *(v40 + 56);
        outlined copy of GraphicsImage.Contents(v58, *(v40 + 64));
        *(v39 + 56) = v58;
        *(v39 + 64) = v57;
        v53 = *(v40 + 184);
      }

      *(v39 + 72) = *(v40 + 72);
      *(v39 + 80) = *(v40 + 80);
      *(v39 + 96) = *(v40 + 96);
      *(v39 + 100) = *(v40 + 100);
      *(v39 + 113) = *(v40 + 113);
      v59 = *(v40 + 144);
      *(v39 + 128) = *(v40 + 128);
      *(v39 + 144) = v59;
      *(v39 + 160) = *(v40 + 160);
      *(v39 + 162) = *(v40 + 162);
      *(v39 + 163) = *(v40 + 163);
      if (v53 >> 1 == 0xFFFFFFFF)
      {
        *(v39 + 168) = *(v40 + 168);
        *(v39 + 184) = *(v40 + 184);
      }

      else
      {
        v60 = *(v40 + 168);
        v61 = *(v40 + 176);
        v62 = *(v40 + 192);
        outlined copy of AccessibilityImageLabel(v60, v61, v53);
        *(v39 + 168) = v60;
        *(v39 + 176) = v61;
        *(v39 + 184) = v53;
        *(v39 + 192) = v62;
      }

      v63 = *(v40 + 208);
      *(v39 + 200) = *(v40 + 200);
      *(v39 + 208) = v63;
      *(v39 + 216) = *(v40 + 216);
      *(v39 + 220) = *(v40 + 220);
      *(v39 + 224) = *(v40 + 224);
      v64 = *(v40 + 232);
      *(v39 + 232) = v64;
      *(v39 + 240) = *(v40 + 240);
      *(v39 + 242) = *(v40 + 242);
      swift_unknownObjectRetain();

      v65 = v64;
    }

    *(v39 + 248) = *(v40 + 248);
    *(v39 + 256) = *(v40 + 256);
    *(v39 + 264) = *(v40 + 264);
  }

  *(v39 + 272) = *(v40 + 272);
  v66 = *(v40 + 304);

  if (v66 == 1)
  {
    v67 = *(v40 + 296);
    *(v39 + 280) = *(v40 + 280);
    *(v39 + 296) = v67;
  }

  else
  {
    *(v39 + 280) = *(v40 + 280);
    *(v39 + 288) = *(v40 + 288);
    *(v39 + 304) = v66;
    swift_unknownObjectRetain();
  }

  *(v39 + 312) = *(v40 + 312);
  *(v39 + 320) = *(v40 + 320);
  if (!*(v40 + 608))
  {
    memcpy((v39 + 328), (v40 + 328), 0x129uLL);
    goto LABEL_40;
  }

  v68 = *(v40 + 336);
  *(v39 + 328) = *(v40 + 328);
  *(v39 + 336) = v68;
  *(v39 + 344) = *(v40 + 344);
  *(v39 + 352) = *(v40 + 352);
  *(v39 + 360) = *(v40 + 360);
  *(v39 + 368) = *(v40 + 368);
  *(v39 + 384) = *(v40 + 384);
  v69 = (v39 + 392);
  v70 = (v40 + 392);
  v71 = *(v40 + 416);

  if (!v71)
  {
    v73 = *(v40 + 408);
    *v69 = *v70;
    *(v39 + 408) = v73;
    *(v39 + 424) = *(v40 + 424);
LABEL_35:
    *(v39 + 432) = *(v40 + 432);

    goto LABEL_36;
  }

  if (v71 != 1)
  {
    v74 = *(v40 + 424);
    *(v39 + 416) = v71;
    *(v39 + 424) = v74;
    (**(v71 - 8))(v39 + 392, v40 + 392, v71);
    goto LABEL_35;
  }

  v72 = *(v40 + 408);
  *v69 = *v70;
  *(v39 + 408) = v72;
  *(v39 + 424) = *(v40 + 424);
LABEL_36:
  *(v39 + 440) = *(v40 + 440);
  *(v39 + 448) = *(v40 + 448);
  v75 = (v39 + 456);
  v76 = (v40 + 456);
  v77 = *(v40 + 568);
  if (v77 == 1)
  {
    v78 = *(v40 + 568);
    *(v39 + 552) = *(v40 + 552);
    *(v39 + 568) = v78;
    *(v39 + 584) = *(v40 + 584);
    *(v39 + 600) = *(v40 + 600);
    v79 = *(v40 + 504);
    *(v39 + 488) = *(v40 + 488);
    *(v39 + 504) = v79;
    v80 = *(v40 + 536);
    *(v39 + 520) = *(v40 + 520);
    *(v39 + 536) = v80;
    v81 = *(v40 + 472);
    *v75 = *v76;
    *(v39 + 472) = v81;
  }

  else
  {
    *v75 = *v76;
    *(v39 + 464) = *(v40 + 464);
    *(v39 + 472) = *(v40 + 472);
    *(v39 + 480) = *(v40 + 480);
    *(v39 + 481) = *(v40 + 481);
    *(v39 + 483) = *(v40 + 483);
    *(v39 + 484) = *(v40 + 484);
    *(v39 + 488) = *(v40 + 488);
    v82 = *(v40 + 512);
    *(v39 + 496) = *(v40 + 496);
    *(v39 + 512) = v82;
    *(v39 + 528) = *(v40 + 528);
    *(v39 + 536) = *(v40 + 536);
    *(v39 + 544) = *(v40 + 544);
    *(v39 + 560) = *(v40 + 560);
    *(v39 + 568) = v77;
    *(v39 + 576) = *(v40 + 576);
    *(v39 + 592) = *(v40 + 592);
    *(v39 + 600) = *(v40 + 600);
  }

  *(v39 + 608) = *(v40 + 608);
  *(v39 + 616) = *(v40 + 616);
  *(v39 + 624) = *(v40 + 624);

LABEL_40:
  v83 = a3[6];
  v84 = a3[7];
  v85 = (v26 + v83);
  v86 = (v109 + v83);
  v87 = v86[1];
  *v85 = *v86;
  v85[1] = v87;
  v88 = (v26 + v84);
  v89 = (v109 + v84);
  v90 = v89[1];
  *v88 = *v89;
  v88[1] = v90;
  v91 = a3[8];
  v92 = v26 + v91;
  v93 = v109 + v91;
  v94 = *v93;
  v95 = *(v93 + 8);
  outlined copy of Environment<Selector?>.Content(*v93, v95);
  *v92 = v94;
  *(v92 + 8) = v95;
  v96 = a3[9];
  v97 = v26 + v96;
  v98 = v109 + v96;
  v99 = *v98;
  LOBYTE(v94) = *(v98 + 8);
  outlined copy of Environment<Selector?>.Content(*v98, v94);
  *v97 = v99;
  *(v97 + 8) = v94;
  return v26;
}

uint64_t assignWithCopy for TextViewAdaptor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v5 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v5)
    {
      v6 = *(a2 + 40);
      v7 = *(a2 + 48);
      v8 = *(a2 + 56);
      outlined copy of Text.Storage(v6, v7, v8);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      *(a1 + 40) = v6;
      *(a1 + 48) = v7;
      *(a1 + 56) = v8;
      outlined consume of Text.Storage(v9, v10, v11);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Text(a1 + 40);
      v15 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v15;
    }
  }

  else if (v5)
  {
    v12 = *(a2 + 40);
    v13 = *(a2 + 48);
    v14 = *(a2 + 56);
    outlined copy of Text.Storage(v12, v13, v14);
    *(a1 + 40) = v12;
    *(a1 + 48) = v13;
    *(a1 + 56) = v14;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v16 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v16;
  }

  v17 = *(a2 + 72);
  v18 = *(a2 + 80);
  v19 = *(a2 + 88);
  v20 = *(a2 + 96);
  v21 = *(a2 + 104);
  v22 = *(a2 + 112);
  v24 = *(a2 + 120);
  v23 = *(a2 + 128);
  v284 = *(a2 + 136);
  v285 = *(a2 + 144);
  v286 = *(a2 + 152);
  v287 = *(a2 + 160);
  __dsta = *(a2 + 168);
  v290 = *(a2 + 176);
  v291 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v17, v18, v19, v20, v21, v22, v24, v23, v284, v285, v286, v287, __dsta, v290, v291);
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  v28 = *(a1 + 96);
  v29 = *(a1 + 104);
  v30 = *(a1 + 112);
  v31 = *(a1 + 120);
  v32 = *(a1 + 128);
  v33 = *(a1 + 136);
  v34 = *(a1 + 152);
  v35 = *(a1 + 168);
  v36 = *(a1 + 176);
  v37 = *(a1 + 180);
  *(a1 + 72) = v17;
  *(a1 + 80) = v18;
  *(a1 + 88) = v19;
  *(a1 + 96) = v20;
  *(a1 + 104) = v21;
  *(a1 + 112) = v22;
  *(a1 + 120) = v24;
  *(a1 + 128) = v23;
  *(a1 + 136) = v284;
  *(a1 + 144) = v285;
  *(a1 + 152) = v286;
  *(a1 + 160) = v287;
  *(a1 + 168) = __dsta;
  *(a1 + 176) = v290;
  *(a1 + 180) = v291;
  outlined consume of StateOrBinding<TextFieldState>(v25, v26, v27, v28, v29, v30, v31, v32, v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v39 = *(v38 + 56);
  v40 = (a1 + v39);
  v292 = a2;
  v41 = (a2 + v39);
  type metadata accessor for Binding<TextSelection?>(0);
  v43 = v42;
  v44 = *(v42 - 8);
  v45 = *(v44 + 48);
  LODWORD(v23) = v45(v40, 1, v42);
  v46 = v45(v41, 1, v43);
  v47 = a1;
  if (v23)
  {
    if (!v46)
    {
      *v40 = *v41;
      v40[1] = v41[1];
      v48 = *(v43 + 32);
      __dst = v40 + v48;
      v49 = v41 + v48;
      v50 = type metadata accessor for TextSelection(0);
      v51 = *(v50 - 8);
      v52 = *(v51 + 48);

      if (v52(v49, 1, v50))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v49, *(*(v53 - 8) + 64));
      }

      else
      {
        v66 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v67 - 8) + 16))(__dst, v49, v67);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, v49, *(*(v66 - 8) + 64));
        }

        __dst[*(v50 + 20)] = v49[*(v50 + 20)];
        (*(v51 + 56))(__dst, 0, 1, v50);
      }

      v47 = a1;
      (*(v44 + 56))(v40, 0, 1, v43);
      goto LABEL_27;
    }

LABEL_14:
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v40, v41, *(*(v54 - 8) + 64));
LABEL_27:
    v63 = v292;
    goto LABEL_28;
  }

  if (v46)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v40, type metadata accessor for Binding<TextSelection?>);
    goto LABEL_14;
  }

  *v40 = *v41;

  v40[1] = v41[1];

  v55 = *(v43 + 32);
  v56 = v40 + v55;
  v57 = v41 + v55;
  v58 = type metadata accessor for TextSelection(0);
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  v61 = v60(v56, 1, v58);
  v62 = v60(v57, 1, v58);
  v63 = v292;
  if (v61)
  {
    if (!v62)
    {
      v64 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v65 - 8) + 16))(v56, v57, v65);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v56, v57, *(*(v64 - 8) + 64));
      }

      v56[*(v58 + 20)] = v57[*(v58 + 20)];
      (*(v59 + 56))(v56, 0, 1, v58);
      goto LABEL_28;
    }

LABEL_23:
    type metadata accessor for TextSelection?(0);
    memcpy(v56, v57, *(*(v68 - 8) + 64));
    goto LABEL_28;
  }

  if (v62)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v56, type metadata accessor for TextSelection);
    goto LABEL_23;
  }

  if (a1 != v292)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v56, type metadata accessor for TextSelection.Indices);
    v173 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v174 - 8) + 16))(v56, v57, v174);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v56, v57, *(*(v173 - 8) + 64));
    }
  }

  v56[*(v58 + 20)] = v57[*(v58 + 20)];
LABEL_28:
  v69 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(v47 + *(v69 + 20)) = *(v63 + *(v69 + 20));
  v70 = a3[5];
  v71 = v47 + v70;
  v72 = v63 + v70;
  *(v47 + v70) = *(v63 + v70);

  *(v71 + 8) = *(v72 + 8);

  *(v71 + 16) = *(v72 + 16);
  *(v71 + 24) = *(v72 + 24);
  *(v71 + 28) = *(v72 + 28);
  v73 = (v71 + 32);
  v74 = *(v71 + 32);
  v76 = (v72 + 32);
  v75 = *(v72 + 32);
  if (v74 == 1)
  {
    if (v75 == 1)
    {
      v77 = *v76;
      v78 = *(v72 + 64);
      *(v71 + 48) = *(v72 + 48);
      *(v71 + 64) = v78;
      *v73 = v77;
      v79 = *(v72 + 80);
      v80 = *(v72 + 96);
      v81 = *(v72 + 128);
      *(v71 + 112) = *(v72 + 112);
      *(v71 + 128) = v81;
      *(v71 + 80) = v79;
      *(v71 + 96) = v80;
      v82 = *(v72 + 144);
      v83 = *(v72 + 160);
      v84 = *(v72 + 192);
      *(v71 + 176) = *(v72 + 176);
      *(v71 + 192) = v84;
      *(v71 + 144) = v82;
      *(v71 + 160) = v83;
      v85 = *(v72 + 208);
      v86 = *(v72 + 224);
      v87 = *(v72 + 256);
      *(v71 + 240) = *(v72 + 240);
      *(v71 + 256) = v87;
      *(v71 + 208) = v85;
      *(v71 + 224) = v86;
    }

    else
    {
      *(v71 + 32) = v75;
      v99 = *(v72 + 40);
      *(v71 + 40) = v99;
      v100 = *(v72 + 48);
      *(v71 + 48) = v100;
      v101 = *(v72 + 184);
      v102 = v75;
      v103 = v99;
      v104 = v100;
      if (v101 >> 1 == 4294967294)
      {
        v105 = *(v72 + 56);
        v106 = *(v72 + 72);
        v107 = *(v72 + 88);
        *(v71 + 104) = *(v72 + 104);
        *(v71 + 88) = v107;
        *(v71 + 72) = v106;
        *(v71 + 56) = v105;
        v108 = *(v72 + 120);
        v109 = *(v72 + 136);
        v110 = *(v72 + 152);
        *(v71 + 168) = *(v72 + 168);
        *(v71 + 152) = v110;
        *(v71 + 136) = v109;
        *(v71 + 120) = v108;
        v111 = *(v72 + 184);
        v112 = *(v72 + 200);
        v113 = *(v72 + 216);
        *(v71 + 227) = *(v72 + 227);
        *(v71 + 216) = v113;
        *(v71 + 200) = v112;
        *(v71 + 184) = v111;
      }

      else
      {
        v131 = *(v72 + 64);
        if (v131 == 255)
        {
          v148 = *(v72 + 56);
          *(v71 + 64) = *(v72 + 64);
          *(v71 + 56) = v148;
        }

        else
        {
          v132 = *(v72 + 56);
          outlined copy of GraphicsImage.Contents(v132, *(v72 + 64));
          *(v71 + 56) = v132;
          *(v71 + 64) = v131;
        }

        *(v71 + 72) = *(v72 + 72);
        *(v71 + 80) = *(v72 + 80);
        *(v71 + 96) = *(v72 + 96);
        v149 = *(v72 + 100);
        *(v71 + 113) = *(v72 + 113);
        *(v71 + 100) = v149;
        v150 = *(v72 + 128);
        v151 = *(v72 + 144);
        *(v71 + 160) = *(v72 + 160);
        *(v71 + 128) = v150;
        *(v71 + 144) = v151;
        *(v71 + 161) = *(v72 + 161);
        *(v71 + 162) = *(v72 + 162);
        *(v71 + 163) = *(v72 + 163);
        v152 = *(v72 + 184);
        if (v152 >> 1 == 0xFFFFFFFF)
        {
          v153 = *(v72 + 168);
          *(v71 + 184) = *(v72 + 184);
          *(v71 + 168) = v153;
        }

        else
        {
          v154 = *(v72 + 168);
          v155 = *(v72 + 176);
          v156 = *(v72 + 192);
          outlined copy of AccessibilityImageLabel(v154, v155, *(v72 + 184));
          *(v71 + 168) = v154;
          *(v71 + 176) = v155;
          *(v71 + 184) = v152;
          *(v71 + 192) = v156;
        }

        *(v71 + 200) = *(v72 + 200);
        *(v71 + 208) = *(v72 + 208);
        *(v71 + 216) = *(v72 + 216);
        *(v71 + 217) = *(v72 + 217);
        v157 = *(v72 + 220);
        *(v71 + 224) = *(v72 + 224);
        *(v71 + 220) = v157;
        v158 = *(v72 + 232);
        *(v71 + 232) = v158;
        *(v71 + 240) = *(v72 + 240);
        *(v71 + 242) = *(v72 + 242);
        swift_unknownObjectRetain();

        v159 = v158;
      }

      *(v71 + 248) = *(v72 + 248);
      *(v71 + 256) = *(v72 + 256);
      *(v71 + 264) = *(v72 + 264);
    }
  }

  else if (v75 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(v71 + 32);
    v89 = *(v72 + 48);
    v88 = *(v72 + 64);
    *v73 = *v76;
    *(v71 + 48) = v89;
    *(v71 + 64) = v88;
    v90 = *(v72 + 128);
    v92 = *(v72 + 80);
    v91 = *(v72 + 96);
    *(v71 + 112) = *(v72 + 112);
    *(v71 + 128) = v90;
    *(v71 + 80) = v92;
    *(v71 + 96) = v91;
    v93 = *(v72 + 192);
    v95 = *(v72 + 144);
    v94 = *(v72 + 160);
    *(v71 + 176) = *(v72 + 176);
    *(v71 + 192) = v93;
    *(v71 + 144) = v95;
    *(v71 + 160) = v94;
    v96 = *(v72 + 256);
    v98 = *(v72 + 208);
    v97 = *(v72 + 224);
    *(v71 + 240) = *(v72 + 240);
    *(v71 + 256) = v96;
    *(v71 + 208) = v98;
    *(v71 + 224) = v97;
  }

  else
  {
    *(v71 + 32) = v75;
    v114 = v75;

    v115 = *(v71 + 40);
    v116 = *(v72 + 40);
    *(v71 + 40) = v116;
    v117 = v116;

    v118 = *(v71 + 48);
    v119 = *(v72 + 48);
    *(v71 + 48) = v119;
    v120 = v119;

    v121 = *(v72 + 184) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v71 + 184) >> 1 == 4294967294)
    {
      if (v121 == 0x1FFFFFFFCLL)
      {
        v122 = *(v72 + 56);
        v123 = *(v72 + 72);
        v124 = *(v72 + 88);
        *(v71 + 104) = *(v72 + 104);
        *(v71 + 88) = v124;
        *(v71 + 72) = v123;
        *(v71 + 56) = v122;
        v125 = *(v72 + 120);
        v126 = *(v72 + 136);
        v127 = *(v72 + 152);
        *(v71 + 168) = *(v72 + 168);
        *(v71 + 152) = v127;
        *(v71 + 136) = v126;
        *(v71 + 120) = v125;
        v128 = *(v72 + 184);
        v129 = *(v72 + 200);
        v130 = *(v72 + 216);
        *(v71 + 227) = *(v72 + 227);
        *(v71 + 216) = v130;
        *(v71 + 200) = v129;
        *(v71 + 184) = v128;
      }

      else
      {
        v142 = *(v72 + 64);
        if (v142 == 255)
        {
          v160 = *(v72 + 56);
          *(v71 + 64) = *(v72 + 64);
          *(v71 + 56) = v160;
        }

        else
        {
          v143 = *(v72 + 56);
          outlined copy of GraphicsImage.Contents(v143, *(v72 + 64));
          *(v71 + 56) = v143;
          *(v71 + 64) = v142;
        }

        *(v71 + 72) = *(v72 + 72);
        *(v71 + 80) = *(v72 + 80);
        *(v71 + 96) = *(v72 + 96);
        v161 = *(v72 + 100);
        *(v71 + 113) = *(v72 + 113);
        *(v71 + 100) = v161;
        v162 = *(v72 + 128);
        v163 = *(v72 + 144);
        *(v71 + 160) = *(v72 + 160);
        *(v71 + 128) = v162;
        *(v71 + 144) = v163;
        *(v71 + 161) = *(v72 + 161);
        *(v71 + 162) = *(v72 + 162);
        *(v71 + 163) = *(v72 + 163);
        v164 = *(v72 + 184);
        if (v164 >> 1 == 0xFFFFFFFF)
        {
          v165 = *(v72 + 168);
          *(v71 + 184) = *(v72 + 184);
          *(v71 + 168) = v165;
        }

        else
        {
          v166 = *(v72 + 168);
          v167 = *(v72 + 176);
          v168 = *(v72 + 192);
          outlined copy of AccessibilityImageLabel(v166, v167, *(v72 + 184));
          *(v71 + 168) = v166;
          *(v71 + 176) = v167;
          *(v71 + 184) = v164;
          *(v71 + 192) = v168;
        }

        *(v71 + 200) = *(v72 + 200);
        *(v71 + 208) = *(v72 + 208);
        *(v71 + 216) = *(v72 + 216);
        *(v71 + 217) = *(v72 + 217);
        v169 = *(v72 + 220);
        *(v71 + 224) = *(v72 + 224);
        *(v71 + 220) = v169;
        v170 = *(v72 + 232);
        *(v71 + 232) = v170;
        *(v71 + 240) = *(v72 + 240);
        *(v71 + 242) = *(v72 + 242);
        swift_unknownObjectRetain();

        v171 = v170;
      }
    }

    else if (v121 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(v71 + 56);
      v133 = *(v72 + 72);
      v134 = *(v72 + 88);
      v135 = *(v72 + 104);
      *(v71 + 56) = *(v72 + 56);
      *(v71 + 104) = v135;
      *(v71 + 88) = v134;
      *(v71 + 72) = v133;
      v136 = *(v72 + 136);
      v137 = *(v72 + 152);
      v138 = *(v72 + 168);
      *(v71 + 120) = *(v72 + 120);
      *(v71 + 168) = v138;
      *(v71 + 152) = v137;
      *(v71 + 136) = v136;
      v139 = *(v72 + 200);
      v140 = *(v72 + 216);
      v141 = *(v72 + 227);
      *(v71 + 184) = *(v72 + 184);
      *(v71 + 227) = v141;
      *(v71 + 216) = v140;
      *(v71 + 200) = v139;
    }

    else
    {
      v144 = *(v72 + 64);
      if (*(v71 + 64) == 255)
      {
        if (v144 == 255)
        {
          v176 = *(v72 + 56);
          *(v71 + 64) = *(v72 + 64);
          *(v71 + 56) = v176;
        }

        else
        {
          v172 = *(v72 + 56);
          outlined copy of GraphicsImage.Contents(v172, *(v72 + 64));
          *(v71 + 56) = v172;
          *(v71 + 64) = v144;
        }
      }

      else if (v144 == 255)
      {
        outlined destroy of GraphicsImage.Contents(v71 + 56);
        v175 = *(v72 + 64);
        *(v71 + 56) = *(v72 + 56);
        *(v71 + 64) = v175;
      }

      else
      {
        v145 = *(v72 + 56);
        outlined copy of GraphicsImage.Contents(v145, *(v72 + 64));
        v146 = *(v71 + 56);
        *(v71 + 56) = v145;
        v147 = *(v71 + 64);
        *(v71 + 64) = v144;
        outlined consume of GraphicsImage.Contents(v146, v147);
      }

      *(v71 + 72) = *(v72 + 72);
      *(v71 + 80) = *(v72 + 80);
      *(v71 + 88) = *(v72 + 88);
      *(v71 + 96) = *(v72 + 96);
      v177 = *(v72 + 100);
      *(v71 + 113) = *(v72 + 113);
      *(v71 + 100) = v177;
      v178 = *(v72 + 128);
      v179 = *(v72 + 144);
      *(v71 + 160) = *(v72 + 160);
      *(v71 + 128) = v178;
      *(v71 + 144) = v179;
      *(v71 + 161) = *(v72 + 161);
      *(v71 + 162) = *(v72 + 162);
      *(v71 + 163) = *(v72 + 163);
      v180 = *(v72 + 184);
      v181 = v180 & 0xFFFFFFFFFFFFFFFELL;
      if (*(v71 + 184) >> 1 == 0xFFFFFFFFLL)
      {
        if (v181 == 0x1FFFFFFFELL)
        {
          v182 = *(v72 + 168);
          *(v71 + 184) = *(v72 + 184);
          *(v71 + 168) = v182;
        }

        else
        {
          v184 = *(v72 + 168);
          v185 = *(v72 + 176);
          v186 = *(v72 + 192);
          outlined copy of AccessibilityImageLabel(v184, v185, *(v72 + 184));
          *(v71 + 168) = v184;
          *(v71 + 176) = v185;
          *(v71 + 184) = v180;
          *(v71 + 192) = v186;
        }
      }

      else if (v181 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(v71 + 168);
        v183 = *(v72 + 184);
        *(v71 + 168) = *(v72 + 168);
        *(v71 + 184) = v183;
      }

      else
      {
        v187 = *(v72 + 168);
        v188 = *(v72 + 176);
        v189 = *(v72 + 192);
        outlined copy of AccessibilityImageLabel(v187, v188, *(v72 + 184));
        v190 = *(v71 + 168);
        v191 = *(v71 + 176);
        v192 = *(v71 + 184);
        *(v71 + 168) = v187;
        *(v71 + 176) = v188;
        *(v71 + 184) = v180;
        *(v71 + 192) = v189;
        outlined consume of AccessibilityImageLabel(v190, v191, v192);
      }

      *(v71 + 200) = *(v72 + 200);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v71 + 208) = *(v72 + 208);

      *(v71 + 216) = *(v72 + 216);
      *(v71 + 217) = *(v72 + 217);
      v193 = *(v72 + 220);
      *(v71 + 224) = *(v72 + 224);
      *(v71 + 220) = v193;
      v194 = *(v71 + 232);
      v195 = *(v72 + 232);
      *(v71 + 232) = v195;
      v196 = v195;

      *(v71 + 240) = *(v72 + 240);
      *(v71 + 242) = *(v72 + 242);
    }

    *(v71 + 248) = *(v72 + 248);

    *(v71 + 256) = *(v72 + 256);
    *(v71 + 264) = *(v72 + 264);
  }

  *(v71 + 272) = *(v72 + 272);

  v197 = (v71 + 280);
  v198 = (v72 + 280);
  v199 = *(v72 + 304);
  if (*(v71 + 304) == 1)
  {
    if (v199 == 1)
    {
      v200 = *(v72 + 296);
      *v197 = *v198;
      *(v71 + 296) = v200;
    }

    else
    {
      *(v71 + 280) = *(v72 + 280);
      *(v71 + 288) = *(v72 + 288);
      *(v71 + 296) = *(v72 + 296);
      *(v71 + 304) = *(v72 + 304);
      swift_unknownObjectRetain();
    }
  }

  else if (v199 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(v71 + 280);
    v201 = *(v72 + 296);
    *v197 = *v198;
    *(v71 + 296) = v201;
  }

  else
  {
    *(v71 + 280) = *(v72 + 280);
    *(v71 + 284) = *(v72 + 284);
    *(v71 + 288) = *(v72 + 288);
    *(v71 + 292) = *(v72 + 292);
    *(v71 + 296) = *(v72 + 296);
    *(v71 + 304) = *(v72 + 304);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v202 = *(v72 + 312);
  *(v71 + 320) = *(v72 + 320);
  *(v71 + 312) = v202;
  v203 = *(v72 + 608);
  if (*(v71 + 608))
  {
    if (v203)
    {
      *(v71 + 328) = *(v72 + 328);
      *(v71 + 336) = *(v72 + 336);

      *(v71 + 344) = *(v72 + 344);
      *(v71 + 352) = *(v72 + 352);

      *(v71 + 360) = *(v72 + 360);
      v204 = *(v72 + 368);
      *(v71 + 384) = *(v72 + 384);
      *(v71 + 368) = v204;
      v205 = (v71 + 392);
      v206 = (v72 + 392);
      v207 = *(v71 + 416);
      v208 = *(v72 + 416);
      if (v207 != 1)
      {
        if (v208 == 1)
        {
          outlined destroy of AccessibilityValueStorage(v71 + 392);
          v218 = *(v72 + 408);
          v217 = *(v72 + 424);
          *v205 = *v206;
          *(v71 + 408) = v218;
          *(v71 + 424) = v217;
        }

        else
        {
          if (v207)
          {
            if (v208)
            {
              __swift_assign_boxed_opaque_existential_1((v71 + 392), (v72 + 392));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v71 + 392);
              v236 = *(v72 + 424);
              v237 = *(v72 + 408);
              *v205 = *v206;
              *(v71 + 408) = v237;
              *(v71 + 424) = v236;
            }
          }

          else if (v208)
          {
            *(v71 + 416) = v208;
            *(v71 + 424) = *(v72 + 424);
            (**(v208 - 8))(v71 + 392, v72 + 392);
          }

          else
          {
            v238 = *v206;
            v239 = *(v72 + 408);
            *(v71 + 424) = *(v72 + 424);
            *v205 = v238;
            *(v71 + 408) = v239;
          }

          *(v71 + 432) = *(v72 + 432);
        }

        goto LABEL_115;
      }

      if (v208)
      {
        if (v208 == 1)
        {
          v209 = *v206;
          v210 = *(v72 + 424);
          *(v71 + 408) = *(v72 + 408);
          *(v71 + 424) = v210;
          *v205 = v209;
LABEL_115:
          v240 = *(v72 + 440);
          *(v71 + 448) = *(v72 + 448);
          *(v71 + 440) = v240;
          v241 = (v71 + 456);
          v242 = (v72 + 456);
          v243 = *(v72 + 568);
          if (*(v71 + 568) == 1)
          {
            if (v243 == 1)
            {
              v244 = *(v72 + 472);
              *v241 = *v242;
              *(v71 + 472) = v244;
              v245 = *(v72 + 488);
              v246 = *(v72 + 504);
              v247 = *(v72 + 536);
              *(v71 + 520) = *(v72 + 520);
              *(v71 + 536) = v247;
              *(v71 + 488) = v245;
              *(v71 + 504) = v246;
              v248 = *(v72 + 552);
              v249 = *(v72 + 568);
              v250 = *(v72 + 584);
              *(v71 + 600) = *(v72 + 600);
              *(v71 + 568) = v249;
              *(v71 + 584) = v250;
              *(v71 + 552) = v248;
            }

            else
            {
              v258 = *v242;
              *(v71 + 464) = *(v72 + 464);
              *v241 = v258;
              v259 = *(v72 + 472);
              *(v71 + 480) = *(v72 + 480);
              *(v71 + 472) = v259;
              *(v71 + 481) = *(v72 + 481);
              *(v71 + 482) = *(v72 + 482);
              *(v71 + 483) = *(v72 + 483);
              *(v71 + 484) = *(v72 + 484);
              *(v71 + 488) = *(v72 + 488);
              *(v71 + 496) = *(v72 + 496);
              *(v71 + 504) = *(v72 + 504);
              *(v71 + 512) = *(v72 + 512);
              *(v71 + 520) = *(v72 + 520);
              *(v71 + 528) = *(v72 + 528);
              *(v71 + 536) = *(v72 + 536);
              *(v71 + 537) = *(v72 + 537);
              *(v71 + 544) = *(v72 + 544);
              *(v71 + 552) = *(v72 + 552);
              *(v71 + 560) = *(v72 + 560);
              *(v71 + 568) = *(v72 + 568);
              v260 = *(v72 + 576);
              *(v71 + 592) = *(v72 + 592);
              *(v71 + 576) = v260;
              *(v71 + 600) = *(v72 + 600);
            }
          }

          else if (v243 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(v71 + 456);
            v251 = *(v72 + 472);
            *v241 = *v242;
            *(v71 + 472) = v251;
            v252 = *(v72 + 536);
            v254 = *(v72 + 488);
            v253 = *(v72 + 504);
            *(v71 + 520) = *(v72 + 520);
            *(v71 + 536) = v252;
            *(v71 + 488) = v254;
            *(v71 + 504) = v253;
            v256 = *(v72 + 568);
            v255 = *(v72 + 584);
            v257 = *(v72 + 552);
            *(v71 + 600) = *(v72 + 600);
            *(v71 + 568) = v256;
            *(v71 + 584) = v255;
            *(v71 + 552) = v257;
          }

          else
          {
            v261 = *v242;
            *(v71 + 464) = *(v72 + 464);
            *v241 = v261;
            v262 = *(v72 + 472);
            *(v71 + 480) = *(v72 + 480);
            *(v71 + 472) = v262;
            *(v71 + 481) = *(v72 + 481);
            *(v71 + 482) = *(v72 + 482);
            *(v71 + 483) = *(v72 + 483);
            *(v71 + 484) = *(v72 + 484);
            *(v71 + 488) = *(v72 + 488);
            *(v71 + 496) = *(v72 + 496);
            *(v71 + 504) = *(v72 + 504);
            *(v71 + 512) = *(v72 + 512);
            *(v71 + 520) = *(v72 + 520);
            *(v71 + 528) = *(v72 + 528);
            *(v71 + 536) = *(v72 + 536);
            *(v71 + 537) = *(v72 + 537);
            *(v71 + 544) = *(v72 + 544);
            *(v71 + 552) = *(v72 + 552);
            *(v71 + 560) = *(v72 + 560);
            *(v71 + 568) = *(v72 + 568);

            v263 = *(v72 + 576);
            *(v71 + 592) = *(v72 + 592);
            *(v71 + 576) = v263;
            *(v71 + 600) = *(v72 + 600);
          }

          *(v71 + 608) = *(v72 + 608);

          *(v71 + 616) = *(v72 + 616);
          *(v71 + 620) = *(v72 + 620);
          *(v71 + 624) = *(v72 + 624);
          goto LABEL_123;
        }

        *(v71 + 416) = v208;
        *(v71 + 424) = *(v72 + 424);
        (**(v208 - 8))(v71 + 392, v72 + 392);
      }

      else
      {
        v234 = *v206;
        v235 = *(v72 + 408);
        *(v71 + 424) = *(v72 + 424);
        *v205 = v234;
        *(v71 + 408) = v235;
      }

      *(v71 + 432) = *(v72 + 432);

      goto LABEL_115;
    }

    outlined destroy of PlatformItem.AccessibilityContent(v71 + 328);
LABEL_94:
    memcpy((v71 + 328), (v72 + 328), 0x129uLL);
    goto LABEL_123;
  }

  if (!v203)
  {
    goto LABEL_94;
  }

  *(v71 + 328) = *(v72 + 328);
  *(v71 + 336) = *(v72 + 336);
  *(v71 + 344) = *(v72 + 344);
  *(v71 + 352) = *(v72 + 352);
  *(v71 + 360) = *(v72 + 360);
  v211 = *(v72 + 368);
  *(v71 + 384) = *(v72 + 384);
  *(v71 + 368) = v211;
  v212 = (v71 + 392);
  v213 = (v72 + 392);
  v214 = *(v72 + 416);

  if (!v214)
  {
    v219 = *v213;
    v220 = *(v72 + 408);
    *(v71 + 424) = *(v72 + 424);
    *v212 = v219;
    *(v71 + 408) = v220;
LABEL_102:
    *(v71 + 432) = *(v72 + 432);

    goto LABEL_103;
  }

  if (v214 != 1)
  {
    *(v71 + 416) = v214;
    *(v71 + 424) = *(v72 + 424);
    (**(v214 - 8))(v71 + 392, v72 + 392, v214);
    goto LABEL_102;
  }

  v215 = *v213;
  v216 = *(v72 + 424);
  *(v71 + 408) = *(v72 + 408);
  *(v71 + 424) = v216;
  *v212 = v215;
LABEL_103:
  v221 = *(v72 + 440);
  *(v71 + 448) = *(v72 + 448);
  *(v71 + 440) = v221;
  v222 = (v71 + 456);
  v223 = (v72 + 456);
  if (*(v72 + 568) == 1)
  {
    v224 = *(v72 + 472);
    *v222 = *v223;
    *(v71 + 472) = v224;
    v225 = *(v72 + 488);
    v226 = *(v72 + 504);
    v227 = *(v72 + 536);
    *(v71 + 520) = *(v72 + 520);
    *(v71 + 536) = v227;
    *(v71 + 488) = v225;
    *(v71 + 504) = v226;
    v228 = *(v72 + 552);
    v229 = *(v72 + 568);
    v230 = *(v72 + 584);
    *(v71 + 600) = *(v72 + 600);
    *(v71 + 568) = v229;
    *(v71 + 584) = v230;
    *(v71 + 552) = v228;
  }

  else
  {
    v231 = *v223;
    *(v71 + 464) = *(v72 + 464);
    *v222 = v231;
    v232 = *(v72 + 472);
    *(v71 + 480) = *(v72 + 480);
    *(v71 + 472) = v232;
    *(v71 + 481) = *(v72 + 481);
    *(v71 + 482) = *(v72 + 482);
    *(v71 + 483) = *(v72 + 483);
    *(v71 + 484) = *(v72 + 484);
    *(v71 + 488) = *(v72 + 488);
    *(v71 + 496) = *(v72 + 496);
    *(v71 + 504) = *(v72 + 504);
    *(v71 + 512) = *(v72 + 512);
    *(v71 + 520) = *(v72 + 520);
    *(v71 + 528) = *(v72 + 528);
    *(v71 + 536) = *(v72 + 536);
    *(v71 + 537) = *(v72 + 537);
    *(v71 + 544) = *(v72 + 544);
    *(v71 + 552) = *(v72 + 552);
    *(v71 + 560) = *(v72 + 560);
    *(v71 + 568) = *(v72 + 568);
    v233 = *(v72 + 576);
    *(v71 + 592) = *(v72 + 592);
    *(v71 + 576) = v233;
    *(v71 + 600) = *(v72 + 600);
  }

  *(v71 + 608) = *(v72 + 608);
  *(v71 + 616) = *(v72 + 616);
  *(v71 + 624) = *(v72 + 624);

LABEL_123:
  v264 = a3[6];
  v265 = (v47 + v264);
  v266 = (v63 + v264);
  *v265 = *v266;
  v265[1] = v266[1];
  v265[2] = v266[2];
  v265[3] = v266[3];
  v265[4] = v266[4];
  v265[5] = v266[5];
  v265[6] = v266[6];
  v265[7] = v266[7];
  v267 = a3[7];
  v268 = (v47 + v267);
  v269 = (v63 + v267);
  *v268 = *v269;
  v268[1] = v269[1];
  v268[2] = v269[2];
  v268[3] = v269[3];
  v270 = a3[8];
  v271 = v47 + v270;
  v272 = v63 + v270;
  v273 = *v272;
  v274 = *(v272 + 8);
  outlined copy of Environment<Selector?>.Content(*v272, v274);
  v275 = *v271;
  v276 = *(v271 + 8);
  *v271 = v273;
  *(v271 + 8) = v274;
  outlined consume of Environment<Selector?>.Content(v275, v276);
  v277 = a3[9];
  v278 = v47 + v277;
  v279 = v63 + v277;
  v280 = *v279;
  LOBYTE(v273) = *(v279 + 8);
  outlined copy of Environment<Selector?>.Content(*v279, v273);
  v281 = *v278;
  v282 = *(v278 + 8);
  *v278 = v280;
  *(v278 + 8) = v273;
  outlined consume of Environment<Selector?>.Content(v281, v282);
  return v47;
}

uint64_t initializeWithTake for TextViewAdaptor(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v8 = *(v7 + 56);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  type metadata accessor for Binding<TextSelection?>(0);
  v12 = v11;
  v13 = *(v11 - 8);
  if ((*(v13 + 48))(v10, 1, v11))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v9, v10, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = v10[1];
    *v9 = *v10;
    v9[1] = v15;
    v16 = *(v12 + 32);
    v17 = v9 + v16;
    v18 = v10 + v16;
    v19 = type metadata accessor for TextSelection(0);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v18, 1, v19))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v17, v18, *(*(v21 - 8) + 64));
    }

    else
    {
      v39 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v22 - 8) + 32))(v17, v18, v22);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v17, v18, *(*(v39 - 8) + 64));
      }

      v17[*(v19 + 20)] = v18[*(v19 + 20)];
      (*(v20 + 56))(v17, 0, 1, v19);
    }

    (*(v13 + 56))(v9, 0, 1, v12);
  }

  v23 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(a1 + *(v23 + 20)) = *(a2 + *(v23 + 20));
  memcpy((a1 + a3[5]), (a2 + a3[5]), 0x271uLL);
  v24 = a3[6];
  v25 = a3[7];
  v26 = (a1 + v24);
  v27 = (a2 + v24);
  v28 = v27[1];
  *v26 = *v27;
  v26[1] = v28;
  v29 = (a1 + v25);
  v30 = (a2 + v25);
  v31 = v30[1];
  *v29 = *v30;
  v29[1] = v31;
  v32 = a3[8];
  v33 = a3[9];
  v34 = a1 + v32;
  v35 = a2 + v32;
  *v34 = *v35;
  *(v34 + 8) = *(v35 + 8);
  v36 = a1 + v33;
  v37 = a2 + v33;
  *v36 = *v37;
  *(v36 + 8) = *(v37 + 8);
  return a1;
}

uint64_t assignWithTake for TextViewAdaptor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  if (*(a1 + 64))
  {
    if (*(a2 + 64))
    {
      v7 = *(a2 + 56);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 64) = *(a2 + 64);

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_6:
  v11 = *(a2 + 168);
  v12 = *(a2 + 176);
  v13 = *(a2 + 180);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  v21 = *(a1 + 128);
  v22 = *(a1 + 136);
  v23 = *(a1 + 152);
  v24 = *(a1 + 168);
  v25 = *(a1 + 176);
  v26 = *(a1 + 180);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v11;
  *(a1 + 176) = v12;
  *(a1 + 180) = v13;
  outlined consume of StateOrBinding<TextFieldState>(v14, v15, v16, v17, v18, v19, v20, v21, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v28 = *(v27 + 56);
  v29 = (a1 + v28);
  v30 = (a2 + v28);
  type metadata accessor for Binding<TextSelection?>(0);
  v32 = v31;
  v33 = *(v31 - 8);
  v34 = *(v33 + 48);
  v35 = v34(v29, 1, v31);
  v36 = v34(v30, 1, v32);
  if (v35)
  {
    if (!v36)
    {
      v37 = *(v30 + 1);
      *v29 = *v30;
      *(v29 + 1) = v37;
      v38 = *(v32 + 32);
      v39 = &v29[v38];
      v40 = &v30[v38];
      v41 = type metadata accessor for TextSelection(0);
      v42 = *(v41 - 8);
      if ((*(v42 + 48))(v40, 1, v41))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v39, v40, *(*(v43 - 8) + 64));
      }

      else
      {
        v130 = a3;
        v59 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v60 - 8) + 32))(v39, v40, v60);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v39, v40, *(*(v59 - 8) + 64));
        }

        v39[*(v41 + 20)] = v40[*(v41 + 20)];
        (*(v42 + 56))(v39, 0, 1, v41);
        a3 = v130;
      }

      (*(v33 + 56))(v29, 0, 1, v32);
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  if (v36)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v29, type metadata accessor for Binding<TextSelection?>);
LABEL_12:
    type metadata accessor for Binding<TextSelection?>?(0);
    v45 = *(*(v44 - 8) + 64);
    v46 = v29;
    v47 = v30;
LABEL_13:
    memcpy(v46, v47, v45);
    goto LABEL_26;
  }

  v48 = a3;
  *v29 = *v30;

  *(v29 + 1) = *(v30 + 1);

  v49 = *(v32 + 32);
  v50 = &v29[v49];
  v51 = &v30[v49];
  v52 = type metadata accessor for TextSelection(0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  v55 = v54(v50, 1, v52);
  v56 = v54(v51, 1, v52);
  a3 = v48;
  if (v55)
  {
    if (!v56)
    {
      v57 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v58 - 8) + 32))(v50, v51, v58);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v50, v51, *(*(v57 - 8) + 64));
      }

      v50[*(v52 + 20)] = v51[*(v52 + 20)];
      (*(v53 + 56))(v50, 0, 1, v52);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v56)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v50, type metadata accessor for TextSelection);
LABEL_22:
    type metadata accessor for TextSelection?(0);
    v45 = *(*(v61 - 8) + 64);
    v46 = v50;
    v47 = v51;
    goto LABEL_13;
  }

  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v50, type metadata accessor for TextSelection.Indices);
    v80 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v81 - 8) + 32))(v50, v51, v81);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v50, v51, *(*(v80 - 8) + 64));
    }
  }

  v50[*(v52 + 20)] = v51[*(v52 + 20)];
LABEL_26:
  v62 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(a1 + *(v62 + 20)) = *(a2 + *(v62 + 20));
  v63 = a3[5];
  v64 = a1 + v63;
  v65 = a2 + v63;
  *(a1 + v63) = *(a2 + v63);

  *(v64 + 8) = *(v65 + 8);

  *(v64 + 16) = *(v65 + 16);
  *(v64 + 24) = *(v65 + 24);
  *(v64 + 28) = *(v65 + 28);
  v66 = *(v64 + 32);
  v67 = *(v65 + 32);
  if (v66 == 1)
  {
LABEL_29:
    v68 = *(v65 + 240);
    *(v64 + 224) = *(v65 + 224);
    *(v64 + 240) = v68;
    *(v64 + 256) = *(v65 + 256);
    v69 = *(v65 + 176);
    *(v64 + 160) = *(v65 + 160);
    *(v64 + 176) = v69;
    v70 = *(v65 + 208);
    *(v64 + 192) = *(v65 + 192);
    *(v64 + 208) = v70;
    v71 = *(v65 + 112);
    *(v64 + 96) = *(v65 + 96);
    *(v64 + 112) = v71;
    v72 = *(v65 + 144);
    *(v64 + 128) = *(v65 + 128);
    *(v64 + 144) = v72;
    v73 = *(v65 + 48);
    *(v64 + 32) = *(v65 + 32);
    *(v64 + 48) = v73;
    v74 = *(v65 + 80);
    *(v64 + 64) = *(v65 + 64);
    *(v64 + 80) = v74;
    goto LABEL_51;
  }

  if (v67 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(v64 + 32);
    goto LABEL_29;
  }

  *(v64 + 32) = v67;

  v75 = *(v64 + 40);
  *(v64 + 40) = *(v65 + 40);

  v76 = *(v64 + 48);
  *(v64 + 48) = *(v65 + 48);

  if (*(v64 + 184) >> 1 == 4294967294)
  {
    goto LABEL_33;
  }

  if (*(v65 + 184) >> 1 != 4294967294)
  {
    v77 = *(v64 + 64);
    if (v77 != 255)
    {
      v78 = *(v65 + 64);
      if (v78 != 255)
      {
        v79 = *(v64 + 56);
        *(v64 + 56) = *(v65 + 56);
        *(v64 + 64) = v78;
        outlined consume of GraphicsImage.Contents(v79, v77);
        goto LABEL_44;
      }

      outlined destroy of GraphicsImage.Contents(v64 + 56);
    }

    *(v64 + 56) = *(v65 + 56);
    *(v64 + 64) = *(v65 + 64);
LABEL_44:
    *(v64 + 72) = *(v65 + 72);
    *(v64 + 88) = *(v65 + 88);
    *(v64 + 96) = *(v65 + 96);
    *(v64 + 100) = *(v65 + 100);
    *(v64 + 113) = *(v65 + 113);
    v82 = *(v65 + 144);
    *(v64 + 128) = *(v65 + 128);
    *(v64 + 144) = v82;
    *(v64 + 160) = *(v65 + 160);
    *(v64 + 161) = *(v65 + 161);
    v83 = *(v64 + 184);
    *(v64 + 162) = *(v65 + 162);
    if (v83 >> 1 != 0xFFFFFFFF)
    {
      v84 = *(v65 + 184);
      if (v84 >> 1 != 0xFFFFFFFF)
      {
        v85 = *(v65 + 192);
        v86 = *(v64 + 168);
        v87 = *(v64 + 176);
        *(v64 + 168) = *(v65 + 168);
        *(v64 + 184) = v84;
        *(v64 + 192) = v85;
        outlined consume of AccessibilityImageLabel(v86, v87, v83);
        goto LABEL_49;
      }

      outlined destroy of AccessibilityImageLabel(v64 + 168);
    }

    *(v64 + 168) = *(v65 + 168);
    *(v64 + 184) = *(v65 + 184);
LABEL_49:
    *(v64 + 200) = *(v65 + 200);
    swift_unknownObjectRelease();
    *(v64 + 208) = *(v65 + 208);

    *(v64 + 216) = *(v65 + 216);
    *(v64 + 217) = *(v65 + 217);
    *(v64 + 220) = *(v65 + 220);
    *(v64 + 224) = *(v65 + 224);
    v88 = *(v64 + 232);
    *(v64 + 232) = *(v65 + 232);

    *(v64 + 240) = *(v65 + 240);
    *(v64 + 242) = *(v65 + 242);
    goto LABEL_50;
  }

  outlined destroy of Image.Resolved(v64 + 56);
LABEL_33:
  *(v64 + 184) = *(v65 + 184);
  *(v64 + 200) = *(v65 + 200);
  *(v64 + 216) = *(v65 + 216);
  *(v64 + 227) = *(v65 + 227);
  *(v64 + 120) = *(v65 + 120);
  *(v64 + 136) = *(v65 + 136);
  *(v64 + 152) = *(v65 + 152);
  *(v64 + 168) = *(v65 + 168);
  *(v64 + 56) = *(v65 + 56);
  *(v64 + 72) = *(v65 + 72);
  *(v64 + 88) = *(v65 + 88);
  *(v64 + 104) = *(v65 + 104);
LABEL_50:
  *(v64 + 248) = *(v65 + 248);

  *(v64 + 256) = *(v65 + 256);
  *(v64 + 264) = *(v65 + 264);

LABEL_51:
  *(v64 + 272) = *(v65 + 272);

  v89 = (v64 + 280);
  v90 = (v65 + 280);
  if (*(v64 + 304) == 1)
  {
LABEL_54:
    v92 = *(v65 + 296);
    *v89 = *v90;
    *(v64 + 296) = v92;
    goto LABEL_56;
  }

  v91 = *(v65 + 304);
  if (v91 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(v64 + 280);
    goto LABEL_54;
  }

  *v89 = *v90;
  *(v64 + 296) = *(v65 + 296);
  *(v64 + 304) = v91;
  swift_unknownObjectRelease();
LABEL_56:
  *(v64 + 312) = *(v65 + 312);
  *(v64 + 320) = *(v65 + 320);
  if (*(v64 + 608))
  {
    if (*(v65 + 608))
    {
      v93 = *(v65 + 336);
      *(v64 + 328) = *(v65 + 328);
      *(v64 + 336) = v93;

      *(v64 + 344) = *(v65 + 344);
      *(v64 + 352) = *(v65 + 352);

      *(v64 + 360) = *(v65 + 360);
      *(v64 + 368) = *(v65 + 368);
      *(v64 + 384) = *(v65 + 384);
      v94 = (v64 + 392);
      v95 = (v65 + 392);
      v96 = *(v64 + 416);
      if (v96 != 1)
      {
        v97 = *(v65 + 416);
        if (v97 != 1)
        {
          if (v96)
          {
            v99 = v64 + 392;
            if (v97)
            {
              __swift_destroy_boxed_opaque_existential_1(v99);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v99);
            }
          }

          v100 = *(v65 + 408);
          *v94 = *v95;
          *(v64 + 408) = v100;
          *(v64 + 424) = *(v65 + 424);
          *(v64 + 432) = *(v65 + 432);

LABEL_69:
          *(v64 + 440) = *(v65 + 440);
          *(v64 + 448) = *(v65 + 448);
          v101 = (v64 + 456);
          v102 = (v65 + 456);
          if (*(v64 + 568) != 1)
          {
            v103 = *(v65 + 568);
            if (v103 != 1)
            {
              *v101 = *v102;
              *(v64 + 464) = *(v65 + 464);
              *(v64 + 472) = *(v65 + 472);
              *(v64 + 480) = *(v65 + 480);
              *(v64 + 481) = *(v65 + 481);
              *(v64 + 483) = *(v65 + 483);
              *(v64 + 484) = *(v65 + 484);
              *(v64 + 488) = *(v65 + 488);
              v108 = *(v65 + 512);
              *(v64 + 496) = *(v65 + 496);
              *(v64 + 512) = v108;
              *(v64 + 528) = *(v65 + 528);
              *(v64 + 536) = *(v65 + 536);
              *(v64 + 537) = *(v65 + 537);
              *(v64 + 544) = *(v65 + 544);
              *(v64 + 560) = *(v65 + 560);
              *(v64 + 568) = v103;

              *(v64 + 576) = *(v65 + 576);
              *(v64 + 592) = *(v65 + 592);
              *(v64 + 600) = *(v65 + 600);
              goto LABEL_74;
            }

            outlined destroy of AccessibilityTextLayoutProperties(v64 + 456);
          }

          v104 = *(v65 + 568);
          *(v64 + 552) = *(v65 + 552);
          *(v64 + 568) = v104;
          *(v64 + 584) = *(v65 + 584);
          *(v64 + 600) = *(v65 + 600);
          v105 = *(v65 + 504);
          *(v64 + 488) = *(v65 + 488);
          *(v64 + 504) = v105;
          v106 = *(v65 + 536);
          *(v64 + 520) = *(v65 + 520);
          *(v64 + 536) = v106;
          v107 = *(v65 + 472);
          *v101 = *v102;
          *(v64 + 472) = v107;
LABEL_74:
          *(v64 + 608) = *(v65 + 608);

          *(v64 + 616) = *(v65 + 616);
          *(v64 + 624) = *(v65 + 624);
          goto LABEL_75;
        }

        outlined destroy of AccessibilityValueStorage(v64 + 392);
      }

      v98 = *(v65 + 408);
      *v94 = *v95;
      *(v64 + 408) = v98;
      *(v64 + 424) = *(v65 + 424);
      goto LABEL_69;
    }

    outlined destroy of PlatformItem.AccessibilityContent(v64 + 328);
  }

  memcpy((v64 + 328), (v65 + 328), 0x129uLL);
LABEL_75:
  v109 = a3[6];
  v110 = a3[7];
  v111 = (a1 + v109);
  v112 = (a2 + v109);
  v113 = v112[1];
  *v111 = *v112;
  v111[1] = v113;
  v114 = (a1 + v110);
  v115 = (a2 + v110);
  v116 = v115[1];
  *v114 = *v115;
  v114[1] = v116;
  v117 = a3[8];
  v118 = a1 + v117;
  v119 = (a2 + v117);
  v120 = *v119;
  LOBYTE(v119) = *(v119 + 8);
  v121 = *v118;
  v122 = *(v118 + 8);
  *v118 = v120;
  *(v118 + 8) = v119;
  outlined consume of Environment<Selector?>.Content(v121, v122);
  v123 = a3[9];
  v124 = a1 + v123;
  v125 = (a2 + v123);
  v126 = *v125;
  LOBYTE(v125) = *(v125 + 8);
  v127 = *v124;
  v128 = *(v124 + 8);
  *v124 = v126;
  *(v124 + 8) = v125;
  outlined consume of Environment<Selector?>.Content(v127, v128);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_106Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SystemTextFieldConfiguration(0);
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

uint64_t __swift_store_extra_inhabitant_index_107Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SystemTextFieldConfiguration(0);
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

uint64_t type metadata completion function for TextViewAdaptor()
{
  result = type metadata accessor for SystemTextFieldConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _sSo21NSAttributedStringKeyaABSHSCWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for PlatformItemsReader<StyledTextPlatformItemsStrategy, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor>, ModifiedContent<ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>, _ForegroundStyleModifier<Color>>>()
{
  if (!lazy cache variable for type metadata for PlatformItemsReader<StyledTextPlatformItemsStrategy, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor>, ModifiedContent<ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>, _ForegroundStyleModifier<Color>>>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, type metadata accessor for PlatformTextFieldAdaptor, MEMORY[0x1E697F960]);
    type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>, _ForegroundStyleModifier<Color>>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>, _ForegroundStyleModifier<Color>>, lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>);
    v0 = type metadata accessor for PlatformItemsReader();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformItemsReader<StyledTextPlatformItemsStrategy, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor>, ModifiedContent<ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>, _ForegroundStyleModifier<Color>>>);
    }
  }
}

uint64_t PencilHoverPose.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18D00F730](*&v1);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x18D00F730](*&v7);
  UnitPoint.hash(into:)();
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x18D00F730](*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x18D00F730](*&v9);
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x18D00F730](*&v10);
  if (v6 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v6;
  }

  return MEMORY[0x18D00F730](*&v11);
}

Swift::Int PencilHoverPose.hashValue.getter()
{
  Hasher.init(_seed:)();
  PencilHoverPose.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PencilHoverPose()
{
  Hasher.init(_seed:)();
  PencilHoverPose.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PencilHoverPose()
{
  Hasher.init(_seed:)();
  PencilHoverPose.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static PencilHoverPose.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  if (a1->f64[0] != a2->f64[0] || a1->f64[1] != a2->f64[1])
  {
    return 0;
  }

  v6 = static UnitPoint.== infix(_:_:)();
  v7 = vmovn_s32(vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3])));
  v7.i16[0] = vminv_u16(v7);
  return v6 & v7.i32[0] & 1;
}

unint64_t lazy protocol witness table accessor for type PencilHoverPose and conformance PencilHoverPose()
{
  result = lazy protocol witness table cache variable for type PencilHoverPose and conformance PencilHoverPose;
  if (!lazy protocol witness table cache variable for type PencilHoverPose and conformance PencilHoverPose)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PencilHoverPose and conformance PencilHoverPose);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PencilHoverPose(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PencilHoverPose(uint64_t result, int a2, int a3)
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

void *initializeBufferWithCopyOfBuffer for SearchToolbarItem(void *a1, void *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    a1[1] = a2[1];
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
    v8 = *(v7 + 32);
    v9 = v6 + v8;
    v10 = a2 + v8;
    *v9 = *(a2 + v8);
    v9[1] = *(a2 + v8 + 1);
    *(v9 + 1) = *(a2 + v8 + 2);
    v9[8] = *(a2 + v8 + 8);
    *(v9 + 1) = *(a2 + v8 + 4);
    v11 = type metadata accessor for SearchFieldState(0);
    v12 = v11[9];
    v13 = type metadata accessor for AttributedString();
    v14 = *(*(v13 - 8) + 16);

    v14(&v9[v12], &v10[v12], v13);
    v9[v11[10]] = v10[v11[10]];
    v15 = v11[11];
    v16 = &v9[v15];
    v17 = &v10[v15];
    v16[4] = v17[4];
    *v16 = *v17;
    v18 = type metadata accessor for SearchFieldConfiguration(0);
    v19 = v18[6];
    v20 = v6 + v19;
    v21 = a2 + v19;
    v22 = v21[8];
    if (v22 == 255)
    {
      *v20 = *v21;
      v20[8] = v21[8];
    }

    else
    {
      v23 = *v21;
      v24 = v22 & 1;
      outlined copy of PlatformItemCollection.Storage(*v21, v22 & 1);
      *v20 = v23;
      v20[8] = v24;
    }

    *(v6 + v18[7]) = *(a2 + v18[7]);
    v25 = v18[8];
    v26 = v6 + v25;
    v27 = a2 + v25;
    v28 = *(a2 + v25);
    v29 = *(a2 + v25 + 8);
    v30 = *(a2 + v25 + 16);
    outlined copy of Text.Storage(v28, v29, v30);
    *v26 = v28;
    *(v26 + 1) = v29;
    v26[16] = v30;
    v31 = a3[5];
    v32 = a3[6];
    v33 = *(a2 + v31);
    *(v26 + 3) = *(v27 + 3);
    *(v6 + v31) = v33;
    v34 = v6 + v32;
    v35 = a2 + v32;
    v36 = *(a2 + v32);

    if (v36)
    {
      v37 = *(v35 + 1);
      *v34 = v36;
      *(v34 + 1) = v37;
      *(v34 + 4) = *(v35 + 4);
      v38 = *(v35 + 4);
      *(v34 + 3) = *(v35 + 3);
      *(v34 + 4) = v38;
      *(v34 + 5) = *(v35 + 5);
      *(v34 + 12) = *(v35 + 12);
      *(v34 + 7) = *(v35 + 7);
      *(v34 + 4) = *(v35 + 4);
      *(v34 + 10) = *(v35 + 10);
      v39 = v38;
    }

    else
    {
      v40 = *(v35 + 3);
      *(v34 + 2) = *(v35 + 2);
      *(v34 + 3) = v40;
      *(v34 + 4) = *(v35 + 4);
      *(v34 + 10) = *(v35 + 10);
      v41 = *(v35 + 1);
      *v34 = *v35;
      *(v34 + 1) = v41;
    }

    v42 = a3[7];
    v43 = v6 + v42;
    v44 = a2 + v42;
    if (*v44)
    {
      v45 = *(v44 + 1);
      *v43 = *v44;
      *(v43 + 1) = v45;
      *(v43 + 4) = *(v44 + 4);
      v46 = *(v44 + 4);
      *(v43 + 3) = *(v44 + 3);
      *(v43 + 4) = v46;
      *(v43 + 5) = *(v44 + 5);
      *(v43 + 12) = *(v44 + 12);
      *(v43 + 7) = *(v44 + 7);
      *(v43 + 4) = *(v44 + 4);
      *(v43 + 10) = *(v44 + 10);
      v47 = v46;
    }

    else
    {
      v48 = *(v44 + 3);
      *(v43 + 2) = *(v44 + 2);
      *(v43 + 3) = v48;
      *(v43 + 4) = *(v44 + 4);
      *(v43 + 10) = *(v44 + 10);
      v49 = *(v44 + 1);
      *v43 = *v44;
      *(v43 + 1) = v49;
    }

    v50 = a3[9];
    *(v6 + a3[8]) = *(a2 + a3[8]);
    v51 = v6 + v50;
    v52 = a2 + v50;
    if (*v52)
    {
      v53 = *(v52 + 1);
      *v51 = *v52;
      *(v51 + 1) = v53;
      *(v51 + 4) = *(v52 + 4);
      v54 = *(v52 + 4);
      *(v51 + 3) = *(v52 + 3);
      *(v51 + 4) = v54;
      *(v51 + 5) = *(v52 + 5);
      *(v51 + 12) = *(v52 + 12);
      *(v51 + 7) = *(v52 + 7);
      *(v51 + 4) = *(v52 + 4);
      *(v51 + 10) = *(v52 + 10);
      v55 = v54;
    }

    else
    {
      v56 = *(v52 + 3);
      *(v51 + 2) = *(v52 + 2);
      *(v51 + 3) = v56;
      *(v51 + 4) = *(v52 + 4);
      *(v51 + 10) = *(v52 + 10);
      v57 = *(v52 + 1);
      *v51 = *v52;
      *(v51 + 1) = v57;
    }
  }

  return v6;
}

void *initializeWithTake for SearchToolbarItem(void *a1, void *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v8 = *(v7 + 32);
  v9 = a1 + v8;
  v10 = a2 + v8;
  *v9 = *(a2 + v8);
  v9[1] = *(a2 + v8 + 1);
  *(v9 + 1) = *(a2 + v8 + 2);
  v9[8] = *(a2 + v8 + 8);
  *(v9 + 1) = *(a2 + v8 + 4);
  v11 = type metadata accessor for SearchFieldState(0);
  v12 = v11[9];
  v13 = type metadata accessor for AttributedString();
  (*(*(v13 - 8) + 32))(&v9[v12], &v10[v12], v13);
  v9[v11[10]] = v10[v11[10]];
  v14 = v11[11];
  v15 = &v9[v14];
  v16 = &v10[v14];
  v15[4] = v16[4];
  *v15 = *v16;
  v17 = type metadata accessor for SearchFieldConfiguration(0);
  v18 = v17[6];
  v19 = a1 + v18;
  v20 = a2 + v18;
  *v19 = *v20;
  v19[8] = v20[8];
  *(a1 + v17[7]) = *(a2 + v17[7]);
  v21 = v17[8];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v24 = v23[1];
  *v22 = *v23;
  v22[1] = v24;
  v25 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v28 = *(v27 + 1);
  *v26 = *v27;
  *(v26 + 1) = v28;
  *(v26 + 10) = *(v27 + 10);
  v29 = *(v27 + 4);
  *(v26 + 3) = *(v27 + 3);
  *(v26 + 4) = v29;
  *(v26 + 2) = *(v27 + 2);
  v30 = a3[7];
  v31 = a3[8];
  v32 = a1 + v30;
  v33 = a2 + v30;
  v34 = *(v33 + 1);
  *v32 = *v33;
  *(v32 + 1) = v34;
  *(v32 + 10) = *(v33 + 10);
  v35 = *(v33 + 4);
  *(v32 + 3) = *(v33 + 3);
  *(v32 + 4) = v35;
  *(v32 + 2) = *(v33 + 2);
  *(a1 + v31) = *(a2 + v31);
  v36 = a3[9];
  v37 = a1 + v36;
  v38 = a2 + v36;
  v39 = *(v38 + 3);
  *(v37 + 2) = *(v38 + 2);
  *(v37 + 3) = v39;
  *(v37 + 4) = *(v38 + 4);
  *(v37 + 10) = *(v38 + 10);
  v40 = *(v38 + 1);
  *v37 = *v38;
  *(v37 + 1) = v40;
  return a1;
}

void *assignWithTake for SearchToolbarItem(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  *(v8 + 1) = *(a2 + v7 + 2);
  v8[8] = *(a2 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 4);
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 40))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = v16[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(a1 + v17 + 8);
  if (v20 != 255)
  {
    v21 = v19[8];
    if (v21 != 255)
    {
      v22 = *v18;
      *v18 = *v19;
      *(v18 + 8) = v21 & 1;
      outlined consume of PlatformItemCollection.Storage(v22, v20 & 1);
      goto LABEL_6;
    }

    outlined destroy of PlatformItemCollection(v18);
  }

  *v18 = *v19;
  *(v18 + 8) = v19[8];
LABEL_6:
  *(a1 + v16[7]) = *(a2 + v16[7]);
  v23 = v16[8];
  v24 = a1 + v23;
  v25 = a2 + v23;
  LOBYTE(v23) = *(a2 + v23 + 16);
  v26 = *v24;
  v27 = *(v24 + 1);
  v28 = v24[16];
  *v24 = *v25;
  v24[16] = v23;
  outlined consume of Text.Storage(v26, v27, v28);
  *(v24 + 3) = *(v25 + 3);

  v29 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v30 = a1 + v29;
  v31 = a2 + v29;
  if (*(a1 + v29))
  {
    if (*v31)
    {
      v32 = *(v31 + 1);
      *v30 = *v31;
      *(v30 + 1) = v32;
      *(v30 + 4) = *(v31 + 4);
      v33 = *(v31 + 4);
      v34 = *(v30 + 4);
      *(v30 + 3) = *(v31 + 3);
      *(v30 + 4) = v33;

      *(v30 + 5) = *(v31 + 5);

      *(v30 + 12) = *(v31 + 12);
      *(v30 + 7) = *(v31 + 7);

      *(v30 + 4) = *(v31 + 4);
      *(v30 + 10) = *(v31 + 10);

      goto LABEL_11;
    }

    outlined destroy of BoundInputsView(a1 + v29);
  }

  v35 = *(v31 + 3);
  *(v30 + 2) = *(v31 + 2);
  *(v30 + 3) = v35;
  *(v30 + 4) = *(v31 + 4);
  *(v30 + 10) = *(v31 + 10);
  v36 = *(v31 + 1);
  *v30 = *v31;
  *(v30 + 1) = v36;
LABEL_11:
  v37 = a3[7];
  v38 = a1 + v37;
  v39 = a2 + v37;
  if (*(a1 + v37))
  {
    if (*v39)
    {
      v40 = *(v39 + 1);
      *v38 = *v39;
      *(v38 + 8) = v40;
      *(v38 + 16) = *(v39 + 4);
      v41 = *(v39 + 4);
      v42 = *(v38 + 32);
      *(v38 + 24) = *(v39 + 3);
      *(v38 + 32) = v41;

      *(v38 + 40) = *(v39 + 5);

      *(v38 + 48) = *(v39 + 12);
      *(v38 + 56) = *(v39 + 7);

      *(v38 + 64) = *(v39 + 4);
      *(v38 + 80) = *(v39 + 10);

      goto LABEL_16;
    }

    outlined destroy of BoundInputsView(v38);
  }

  v43 = *(v39 + 3);
  *(v38 + 32) = *(v39 + 2);
  *(v38 + 48) = v43;
  *(v38 + 64) = *(v39 + 4);
  *(v38 + 80) = *(v39 + 10);
  v44 = *(v39 + 1);
  *v38 = *v39;
  *(v38 + 16) = v44;
LABEL_16:
  v45 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v46 = a1 + v45;
  v47 = a2 + v45;
  if (!*(a1 + v45))
  {
LABEL_20:
    v51 = *(v47 + 3);
    *(v46 + 2) = *(v47 + 2);
    *(v46 + 3) = v51;
    *(v46 + 4) = *(v47 + 4);
    *(v46 + 10) = *(v47 + 10);
    v52 = *(v47 + 1);
    *v46 = *v47;
    *(v46 + 1) = v52;
    return a1;
  }

  if (!*v47)
  {
    outlined destroy of BoundInputsView(a1 + v45);
    goto LABEL_20;
  }

  v48 = *(v47 + 1);
  *v46 = *v47;
  *(v46 + 1) = v48;
  *(v46 + 4) = *(v47 + 4);
  v49 = *(v47 + 4);
  v50 = *(v46 + 4);
  *(v46 + 3) = *(v47 + 3);
  *(v46 + 4) = v49;

  *(v46 + 5) = *(v47 + 5);

  *(v46 + 12) = *(v47 + 12);
  *(v46 + 7) = *(v47 + 7);

  *(v46 + 4) = *(v47 + 4);
  *(v46 + 10) = *(v47 + 10);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for SearchScopeToolbarContent(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((v6 + ((v5 + 1) & ~v5) + 55) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 1) & ~v5;
    v11 = (a2 + v5 + 1) & ~v5;
    (*(v4 + 16))(v10, v11);
    v12 = v10 + v6;
    v13 = v11 + v6;
    v14 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = *v15;
    LOBYTE(v11) = *(v15 + 8);
    outlined copy of Environment<Selector?>.Content(*v15, v11);
    *v14 = v16;
    *(v14 + 8) = v11;
    v17 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
    v19 = *v18;
    LOBYTE(v11) = *(v18 + 8);
    outlined copy of Environment<Selector?>.Content(*v18, v11);
    *v17 = v19;
    *(v17 + 8) = v11;
    v20 = (v12 + 39) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v13 + 39) & 0xFFFFFFFFFFFFFFF8;
    v22 = *v21;
    LOBYTE(v11) = *(v21 + 8);
    outlined copy of Environment<Selector?>.Content(*v21, v11);
    *v20 = v22;
    *(v20 + 8) = v11;
    v23 = (v12 + 55) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v13 + 55) & 0xFFFFFFFFFFFFFFF8;
    *v23 = *v24;
    *(v23 + 8) = *(v24 + 8);
  }

  return v3;
}

uint64_t destroy for SearchScopeToolbarContent(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = v2 + 8;
  v4 = (a1 + *(v2 + 80) + 1) & ~*(v2 + 80);
  (*(v2 + 8))(v4);
  v5 = v4 + *(v3 + 56);
  outlined consume of Environment<Selector?>.Content(*((v5 + 7) & 0xFFFFFFFFFFFFFFF8), *(((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v5 + 23) & 0xFFFFFFFFFFFFFFF8), *(((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v5 + 39) & 0xFFFFFFFFFFFFFFF8), *(((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 8));
}

_BYTE *initializeWithCopy for SearchScopeToolbarContent(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48);
  v10 = v9 + v7;
  v11 = v9 + v8;
  v12 = (v9 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  LOBYTE(v8) = *(v13 + 8);
  outlined copy of Environment<Selector?>.Content(*v13, v8);
  *v12 = v14;
  *(v12 + 8) = v8;
  v15 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  LOBYTE(v8) = *(v16 + 8);
  outlined copy of Environment<Selector?>.Content(*v16, v8);
  *v15 = v17;
  *(v15 + 8) = v8;
  v18 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v11 + 39) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  LOBYTE(v8) = *(v19 + 8);
  outlined copy of Environment<Selector?>.Content(*v19, v8);
  *v18 = v20;
  *(v18 + 8) = v8;
  v21 = (v10 + 55) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v11 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);

  return a1;
}

_BYTE *assignWithCopy for SearchScopeToolbarContent(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 24))(v7, v8);
  v9 = *(v5 + 40);
  v10 = v9 + v7;
  v11 = v9 + v8;
  v12 = (v9 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  LOBYTE(v8) = *(v13 + 8);
  outlined copy of Environment<Selector?>.Content(*v13, v8);
  v15 = *v12;
  v16 = *(v12 + 8);
  *v12 = v14;
  *(v12 + 8) = v8;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  v17 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  LOBYTE(v8) = *(v18 + 8);
  outlined copy of Environment<Selector?>.Content(*v18, v8);
  v20 = *v17;
  v21 = *(v17 + 8);
  *v17 = v19;
  *(v17 + 8) = v8;
  outlined consume of Environment<Selector?>.Content(v20, v21);
  v22 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v11 + 39) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  LOBYTE(v8) = *(v23 + 8);
  outlined copy of Environment<Selector?>.Content(*v23, v8);
  v25 = *v22;
  v26 = *(v22 + 8);
  *v22 = v24;
  *(v22 + 8) = v8;
  outlined consume of Environment<Selector?>.Content(v25, v26);
  v27 = (v10 + 55) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v11 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v27 = *v28;
  *(v27 + 8) = *(v28 + 8);

  return a1;
}

_BYTE *initializeWithTake for SearchScopeToolbarContent(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32);
  v10 = v9 + v7;
  v11 = v9 + v8;
  v12 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  *(v12 + 8) = *(v13 + 8);
  *v12 = v14;
  v15 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v14) = *(v16 + 8);
  *v15 = *v16;
  *(v15 + 8) = v14;
  v17 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v11 + 39) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v14) = *(v18 + 8);
  *v17 = *v18;
  *(v17 + 8) = v14;
  *((v10 + 55) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 55) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_BYTE *assignWithTake for SearchScopeToolbarContent(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 40))(v7, v8);
  v9 = *(v5 + 24);
  v10 = v9 + v7;
  v11 = v9 + v8;
  v12 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  LOBYTE(v13) = *(v13 + 8);
  v15 = *v12;
  v16 = *(v12 + 8);
  *v12 = v14;
  *(v12 + 8) = v13;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  v17 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  LOBYTE(v18) = *(v18 + 8);
  v20 = *v17;
  v21 = *(v17 + 8);
  *v17 = v19;
  *(v17 + 8) = v18;
  outlined consume of Environment<Selector?>.Content(v20, v21);
  v22 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v11 + 39) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  v25 = *v22;
  v26 = *(v22 + 8);
  *v22 = v24;
  *(v22 + 8) = v23;
  outlined consume of Environment<Selector?>.Content(v25, v26);
  v27 = (v10 + 55) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v11 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v27 = *v28;
  *(v27 + 8) = *(v28 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for SearchScopeToolbarContent(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 55;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 1) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 1) & ~v6;
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    v20 = v19 - 1;
    if (v20 < 0)
    {
      v20 = -1;
    }

    return (v20 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

unsigned int *storeEnumTagSinglePayload for SearchScopeToolbarContent(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 55;
  v10 = ((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
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

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v10) = 0;
      }

      else if (v14)
      {
        *(result + v10) = 0;
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
      result = ((result + v8 + 1) & ~v8);
      if (v6 < 0x7FFFFFFE)
      {
        v20 = ((result + v9) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v20 = a2 - 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          v20[1] = a2;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v10) = v16;
    }

    else
    {
      *(result + v10) = v16;
    }
  }

  else if (v14)
  {
    *(result + v10) = v16;
  }

  return result;
}

uint64_t closure #1 in SearchToolbarItem.SearchTransform.value.getter@<X0>(char *a1@<X8>)
{
  if (*(AGGraphGetValue() + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>);

    PropertyList.subscript.getter();
  }

  if (v4)
  {
    swift_getKeyPath();
    lazy protocol witness table accessor for type SearchEnvironmentStorage and conformance SearchEnvironmentStorage();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = *(v4 + 16);
  }

  else
  {
    v3 = 3;
  }

  *a1 = v3;
  return result;
}

void closure #2 in SearchToolbarItem.SearchTransform.value.getter(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8, unsigned __int8 a9, _OWORD *a10, uint64_t a11, uint64_t a12)
{
  v67 = a8;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v54[-v20];
  v22 = type metadata accessor for ToolbarStorage.SearchItem(0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v54[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {
    v64 = a5;
    v65 = a7;
    v66 = a4;
    v61 = a12;
    v62 = v23;
    v57 = a10;
    v60 = a9;
    v63 = a1;
    outlined destroy of ToolbarStorage.SearchItem?(a1);
    v59 = a3;
    outlined init with copy of Binding<SearchFieldState>(a3, v21);
    v58 = v21;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LazySearchScopesKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LazySearchScopesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<LazySearchScopesKey>);
    if (a6)
    {
      swift_retain_n();
      v26 = v64;
      PropertyList.Tracker.value<A>(_:for:)();

      v56 = v68;
      v55 = v69;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LazySearchSuggestionsKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LazySearchSuggestionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<LazySearchSuggestionsKey>);
      v27 = v26;
      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      v28 = v64;
      PropertyList.subscript.getter();
      v56 = v68;
      v55 = v69;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LazySearchSuggestionsKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LazySearchSuggestionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<LazySearchSuggestionsKey>);
      v27 = v28;
      PropertyList.subscript.getter();
    }

    v29 = v68;
    v30 = v69;
    v31 = v59 + *(type metadata accessor for SearchFieldConfiguration(0) + 32);
    v33 = *v31;
    v32 = *(v31 + 8);
    v34 = *(v31 + 16);
    v64 = *(v31 + 24);
    v35 = v64;
    outlined init with take of Binding<SearchFieldState>(v58, v25);
    *&v25[v22[5]] = v66;
    v36 = &v25[v22[6]];
    *v36 = v56;
    v36[8] = v55;
    v37 = &v25[v22[7]];
    *v37 = v29;
    v37[8] = v30;
    v38 = &v25[v22[8]];
    *v38 = v33;
    *(v38 + 1) = v32;
    v38[16] = v34;
    *(v38 + 3) = v35;
    v39 = &v25[v22[9]];
    *v39 = v27;
    v39[1] = a6;
    v40 = &v25[v22[10]];
    v41 = v65;
    v42 = *(v65 + 48);
    *(v40 + 2) = *(v65 + 32);
    *(v40 + 3) = v42;
    *(v40 + 4) = *(v41 + 64);
    *(v40 + 10) = *(v41 + 80);
    v43 = *(v41 + 16);
    *v40 = *v41;
    *(v40 + 1) = v43;
    v44 = &v25[v22[11]];
    v45 = v67;
    v46 = v67[1];
    *v44 = *v67;
    *(v44 + 1) = v46;
    *(v44 + 10) = *(v45 + 80);
    v47 = *(v45 + 64);
    *(v44 + 3) = *(v45 + 48);
    *(v44 + 4) = v47;
    *(v44 + 2) = *(v45 + 32);
    v25[v22[12]] = v60;
    v48 = &v25[v22[13]];
    v49 = v57;
    v50 = v57[1];
    *v48 = *v57;
    *(v48 + 1) = v50;
    *(v48 + 10) = *(v49 + 80);
    v51 = *(v49 + 64);
    *(v48 + 3) = *(v49 + 48);
    *(v48 + 4) = v51;
    *(v48 + 2) = *(v49 + 32);
    v25[v22[14]] = BYTE4(v61) & 1;
    v52 = v25;
    v53 = v63;
    outlined init with take of SearchFieldConfiguration(v52, v63, type metadata accessor for ToolbarStorage.SearchItem);
    (*(v62 + 56))(v53, 0, 1, v22);
    outlined copy of Text.Storage(v33, v32, v34);

    outlined init with copy of BoundInputsView?(v41, &v68);
    outlined init with copy of BoundInputsView?(v45, &v68);
    outlined init with copy of BoundInputsView?(v49, &v68);
  }
}

uint64_t protocol witness for Rule.value.getter in conformance SearchToolbarItem.SearchTransform@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = 0x100000000;
  if (!*(v1 + 12))
  {
    v3 = 0;
  }

  v4 = SearchToolbarItem.SearchTransform.value.getter(*v1, v3 | *(v1 + 8));
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a1[1] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput()
{
  result = lazy protocol witness table cache variable for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput;
  if (!lazy protocol witness table cache variable for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput;
  if (!lazy protocol witness table cache variable for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput;
  if (!lazy protocol witness table cache variable for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput;
  if (!lazy protocol witness table cache variable for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput;
  if (!lazy protocol witness table cache variable for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchBoundPropertyUpdater and conformance SearchBoundPropertyUpdater()
{
  result = lazy protocol witness table cache variable for type SearchBoundPropertyUpdater and conformance SearchBoundPropertyUpdater;
  if (!lazy protocol witness table cache variable for type SearchBoundPropertyUpdater and conformance SearchBoundPropertyUpdater)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchBoundPropertyUpdater and conformance SearchBoundPropertyUpdater);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchBoundPropertyUpdater and conformance SearchBoundPropertyUpdater;
  if (!lazy protocol witness table cache variable for type SearchBoundPropertyUpdater and conformance SearchBoundPropertyUpdater)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchBoundPropertyUpdater and conformance SearchBoundPropertyUpdater);
  }

  return result;
}

uint64_t outlined init with copy of SearchFieldConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void partial apply for closure #2 in SearchToolbarItem.SearchTransform.value.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchFieldConfiguration(0) - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 191) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = (v1 + v8);
  v12 = v1 + ((v8 + 91) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 12) == 0;
  v16 = 0x100000000;
  if (v15)
  {
    v16 = 0;
  }

  closure #2 in SearchToolbarItem.SearchTransform.value.getter(a1, *(v1 + 16), v1 + v4, *(v1 + v5), v9, v10, v1 + v7, (v1 + ((v7 + 95) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 95) & 0xFFFFFFFFFFFFFFF8) + 88), v11, v13, v16 | v14);
}

uint64_t *MainMenuItemHost.init(_:environment:focusedValues:focusStore:)(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  v35 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v42 = *v5;
  v34 = type metadata accessor for MainMenuItemHost.RootView(0);
  MEMORY[0x1EEE9AC00](v34);
  v41 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v11 = a2[1];
  v33 = *a3;
  v13 = *(a3 + 8);
  v39 = v13;
  v14 = a3[2];
  v37 = a3[3];
  v15 = v37;
  v38 = v14;
  v16 = a4[1];
  v40 = *a4;
  v17 = v40;
  v18 = a4[2];
  *(v5 + 12) = 0;
  *(v5 + 26) = 0;
  v5[4] = 0;
  v5[5] = 0;
  *(v5 + OBJC_IVAR____TtC7SwiftUI16MainMenuItemHost_delegate + 8) = 0;
  swift_unknownObjectUnownedInit();
  v36 = type metadata accessor for MainMenuItem;
  outlined init with copy of MainMenuItem(a1, v5 + OBJC_IVAR____TtC7SwiftUI16MainMenuItemHost_mainMenuItem, type metadata accessor for MainMenuItem);
  v19 = (v5 + OBJC_IVAR____TtC7SwiftUI16MainMenuItemHost_environment);
  *v19 = v12;
  v19[1] = v11;
  v20 = v5 + OBJC_IVAR____TtC7SwiftUI16MainMenuItemHost_focusedValues;
  v21 = v33;
  *v20 = v33;
  *(v20 + 8) = v13;
  *(v20 + 16) = v14;
  *(v20 + 24) = v15;
  v22 = (v5 + OBJC_IVAR____TtC7SwiftUI16MainMenuItemHost_focusStore);
  *v22 = v17;
  v22[1] = v16;
  v22[2] = v18;
  v23 = v21;

  MEMORY[0x18D00ABE0](v24);
  LOBYTE(v43) = 34;
  type metadata accessor for ViewGraph();
  swift_allocObject();
  lazy protocol witness table accessor for type MainMenuItemHost and conformance MainMenuItemHost(&lazy protocol witness table cache variable for type MainMenuItemHost.RootView and conformance MainMenuItemHost.RootView, type metadata accessor for MainMenuItemHost.RootView);
  v5[2] = ViewGraph.init<A>(rootViewType:requestedOutputs:)();

  v43 = specialized FocusViewGraph.init(graph:)(v25);
  v44 = v26;
  LOWORD(v45) = v27 & 0x101;
  BYTE2(v45) = v28 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  v43 = 0;
  LOWORD(v44) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type MainMenuItemViewGraph and conformance MainMenuItemViewGraph();
  ViewGraph.append<A>(feature:)();
  v29 = v35;
  v30 = v41;
  outlined init with copy of MainMenuItem(v35, v41, v36);
  AGGraphSetValue();
  outlined destroy of MainMenuItemHost.RootView(v30, type metadata accessor for MainMenuItemHost.RootView);
  v43 = v12;
  v44 = v11;
  GraphHost.setEnvironment(_:)();

  v43 = v23;
  LOBYTE(v44) = v39;
  v45 = v38;
  v46 = v37;
  ViewGraph.setFocusedValues(_:)();

  v43 = v40;
  v44 = v16;
  v45 = v18;
  ViewGraph.setFocusStore(_:)();

  lazy protocol witness table accessor for type MainMenuItemHost and conformance MainMenuItemHost(&lazy protocol witness table cache variable for type MainMenuItemHost and conformance MainMenuItemHost, type metadata accessor for MainMenuItemHost);
  ViewGraphRootValueUpdater.initializeViewGraph()();
  static Update.end()();
  outlined destroy of MainMenuItemHost.RootView(v29, type metadata accessor for MainMenuItem);
  return v5;
}

uint64_t MainMenuItemHost.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for ViewGraphOwner) == a1)
  {
    v7 = v2;
    v8 = lazy protocol witness table accessor for type MainMenuItemHost and conformance MainMenuItemHost(&lazy protocol witness table cache variable for type MainMenuItemHost and conformance MainMenuItemHost, type metadata accessor for MainMenuItemHost);
    v2 = *(a1 - 8);
    if (*(v2 + 64) == 16)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_8:
    result = lazy protocol witness table accessor for type MainMenuItemHost and conformance MainMenuItemHost(&lazy protocol witness table cache variable for type MainMenuItemHost and conformance MainMenuItemHost, type metadata accessor for MainMenuItemHost);
    v7 = v2;
    v8 = result;
    v2 = *(a1 - 8);
    if (*(v2 + 64) != 16)
    {
      __break(1u);
      return result;
    }

LABEL_9:
    (*(v2 + 16))(a2, &v7, a1);
    return (*(v2 + 56))(a2, 0, 1, a1);
  }

  if (type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for ViewGraphDelegate) == a1)
  {
    goto LABEL_8;
  }

  v5 = *(*(a1 - 8) + 56);

  return v5(a2, 1, 1, a1);
}

BOOL closure #1 in MainMenuItemHost.requestUpdate(after:)()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    *(Strong + 72) = 1;
    MainMenuItemCoordinator.updateIfNeeded()();
    swift_unknownObjectRelease();
  }

  return GraphHost.updatePreferences()();
}

uint64_t MainMenuItemHost.__deallocating_deinit()
{

  outlined destroy of MainMenuItemHost.RootView(v0 + OBJC_IVAR____TtC7SwiftUI16MainMenuItemHost_mainMenuItem, type metadata accessor for MainMenuItem);

  outlined destroy of unowned EntityWithGesture(v0 + OBJC_IVAR____TtC7SwiftUI16MainMenuItemHost_delegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for MainMenuItemHost()
{
  result = type metadata accessor for MainMenuItem(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t protocol witness for ViewRendererHost.responderNode.getter in conformance MainMenuItemHost()
{
  lazy protocol witness table accessor for type MainMenuItemHost and conformance MainMenuItemHost(&lazy protocol witness table cache variable for type MainMenuItemHost and conformance MainMenuItemHost, type metadata accessor for MainMenuItemHost);

  return ViewGraphRootValueUpdater.responderNode.getter();
}

uint64_t protocol witness for ViewGraphDelegate.requestUpdate(after:) in conformance MainMenuItemHost()
{
  lazy protocol witness table accessor for type MainMenuItemHost and conformance MainMenuItemHost(&lazy protocol witness table cache variable for type MainMenuItemHost and conformance MainMenuItemHost, type metadata accessor for MainMenuItemHost);

  return ViewRendererHost.updateViewGraph<A>(body:)();
}

uint64_t protocol witness for ViewGraphRootValueUpdater.updateRootView() in conformance MainMenuItemHost()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for MainMenuItemHost.RootView(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = OBJC_IVAR____TtC7SwiftUI16MainMenuItemHost_mainMenuItem;
  swift_beginAccess();
  outlined init with copy of MainMenuItem(v0 + v4, v3, type metadata accessor for MainMenuItem);
  AGGraphSetValue();
  return outlined destroy of MainMenuItemHost.RootView(v3, type metadata accessor for MainMenuItemHost.RootView);
}

uint64_t protocol witness for ViewGraphRootValueUpdater.updateEnvironment() in conformance MainMenuItemHost()
{

  GraphHost.setEnvironment(_:)();
}

uint64_t protocol witness for ViewGraphRootValueUpdater.updateFocusStore() in conformance MainMenuItemHost()
{

  ViewGraph.setFocusStore(_:)();
}

uint64_t protocol witness for ViewGraphRootValueUpdater.updateFocusedValues() in conformance MainMenuItemHost()
{

  ViewGraph.setFocusedValues(_:)();
}

uint64_t protocol witness for GraphDelegate.updateGraph<A>(body:) in conformance MainMenuItemHost()
{
  lazy protocol witness table accessor for type MainMenuItemHost and conformance MainMenuItemHost(&lazy protocol witness table cache variable for type MainMenuItemHost and conformance MainMenuItemHost, type metadata accessor for MainMenuItemHost);

  return ViewGraphRootValueUpdater.updateGraph<A>(body:)();
}

void protocol witness for GraphDelegate.graphDidChange() in conformance MainMenuItemHost()
{
  lazy protocol witness table accessor for type MainMenuItemHost and conformance MainMenuItemHost(&lazy protocol witness table cache variable for type MainMenuItemHost and conformance MainMenuItemHost, type metadata accessor for MainMenuItemHost);

  ViewGraphRootValueUpdater.graphDidChange()();
}

uint64_t lazy protocol witness table accessor for type MainMenuItemHost and conformance MainMenuItemHost(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for ViewGraphFeature.modifyViewInputs(inputs:graph:) in conformance MainMenuItemViewGraph(uint64_t a1)
{
  _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(2u);
  *(a1 + 36) |= 1u;
  return _GraphInputs.pushStyleContext<A>(_:)();
}

uint64_t closure #1 in MainMenuItemHost.RootView.body.getter(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for MainMenuItemHost.RootView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v25 = &v24 - v8;
  outlined init with copy of MainMenuItem(a2, &v24 - v8, type metadata accessor for MainMenuItemHost.RootView);
  v9 = *a1;
  v10 = *(*a1 + 16);
  if (v10)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_19:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    for (i = 0; i != v10; ++i)
    {
      if (i >= v9[2])
      {
        goto LABEL_18;
      }

      v13 = type metadata accessor for PlatformItemList.Item();
      v14 = *(v13 - 8);
      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = *(v14 + 72);
      v17 = v9 + v15 + v16 * i;
      v17[*(v13 + 116)] = 1;
      if (*(v17 + 117))
      {
        outlined init with copy of MainMenuItem(v25, v6, type metadata accessor for MainMenuItemHost.RootView);
        v18 = *(v17 + 117);
        v19 = v18[2];
        if (v19)
        {
          v20 = swift_isUniquelyReferenced_nonNull_native();
          *(v17 + 117) = v18;
          if ((v20 & 1) == 0)
          {
            v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          }

          v21 = 0;
          *(v17 + 117) = v18;
          v22 = v18 + v15;
          while (v21 < v18[2])
          {
            ++v21;
            implicit closure #2 in implicit closure #1 in MainMenuItemHost.RootView.applyScaleDownMenuItem(_:)(v22, v6);
            v22 += v16;
            if (v19 == v21)
            {
              *(v17 + 117) = v18;
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_4:
        outlined destroy of MainMenuItemHost.RootView(v6, type metadata accessor for MainMenuItemHost.RootView);
      }
    }

    *v24 = v9;
  }

  return outlined destroy of MainMenuItemHost.RootView(v25, type metadata accessor for MainMenuItemHost.RootView);
}

uint64_t implicit closure #2 in implicit closure #1 in MainMenuItemHost.RootView.applyScaleDownMenuItem(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainMenuItemHost.RootView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for PlatformItemList.Item();
  *(a1 + *(result + 116)) = 1;
  if (*(a1 + 936))
  {
    v8 = result;
    outlined init with copy of MainMenuItem(a2, v6, type metadata accessor for MainMenuItemHost.RootView);
    v9 = *(a1 + 936);
    v10 = v9[2];
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_11:
        v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      }

      v11 = 0;
      v8 -= 8;
      do
      {
        if (v11 >= v9[2])
        {
          __break(1u);
          goto LABEL_11;
        }

        v12 = v11 + 1;
        implicit closure #2 in implicit closure #1 in MainMenuItemHost.RootView.applyScaleDownMenuItem(_:)(v9 + ((*(*v8 + 80) + 32) & ~*(*v8 + 80)) + *(*v8 + 72) * v11, v6);
        v11 = v12;
      }

      while (v10 != v12);
      *(a1 + 936) = v9;
    }

    return outlined destroy of MainMenuItemHost.RootView(v6, type metadata accessor for MainMenuItemHost.RootView);
  }

  return result;
}

void protocol witness for View.body.getter in conformance MainMenuItemHost.RootView(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  outlined init with copy of MainMenuItem(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MainMenuItemHost.RootView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  outlined init with take of MainMenuItemHost.RootView(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  outlined init with copy of MainMenuItem(v2, a2, type metadata accessor for MainMenuItem.Content);
  type metadata accessor for ModifiedContent<MainMenuItem.Content, PlatformItemListTransformModifier<AllPlatformItemListFlags>>();
  v9 = (a2 + *(v8 + 36));
  *v9 = partial apply for closure #1 in MainMenuItemHost.RootView.body.getter;
  v9[1] = v7;
}

unint64_t lazy protocol witness table accessor for type MainMenuItemViewGraph and conformance MainMenuItemViewGraph()
{
  result = lazy protocol witness table cache variable for type MainMenuItemViewGraph and conformance MainMenuItemViewGraph;
  if (!lazy protocol witness table cache variable for type MainMenuItemViewGraph and conformance MainMenuItemViewGraph)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MainMenuItemViewGraph and conformance MainMenuItemViewGraph);
  }

  return result;
}

uint64_t outlined destroy of MainMenuItemHost.RootView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for MainMenuItemHost.RootView(char *a1, char *a2)
{
  v4 = type metadata accessor for MainMenuItem(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = v4;
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(v4 + 20);
    v9 = type metadata accessor for UUID();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 10, v9))
    {
      v12 = type metadata accessor for MainMenuItem.Identifier(0);
      memcpy(&a1[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 10, v9);
    }

    *&a1[*(v6 + 24)] = *&a2[*(v6 + 24)];
  }

  return a1;
}

uint64_t destroy for MainMenuItemHost.RootView(uint64_t a1)
{

  v2 = *(type metadata accessor for MainMenuItem(0) + 20);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1 + v2, 10, v3))
  {
    (*(v4 + 8))(a1 + v2, v3);
  }
}

char *initializeWithCopy for MainMenuItemHost.RootView(char *a1, char *a2)
{
  v4 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v4;
  v5 = type metadata accessor for MainMenuItem(0);
  v6 = *(v5 + 20);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(&a2[v6], 10, v7))
  {
    v10 = type metadata accessor for MainMenuItem.Identifier(0);
    memcpy(&a1[v6], &a2[v6], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 10, v7);
  }

  *&a1[*(v5 + 24)] = *&a2[*(v5 + 24)];

  return a1;
}

char *assignWithCopy for MainMenuItemHost.RootView(char *a1, char *a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v4 = type metadata accessor for MainMenuItem(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 10, v6);
  v10 = v8(&a2[v5], 10, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(&a1[v5], &a2[v5], v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = type metadata accessor for MainMenuItem.Identifier(0);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(&a1[v5], &a2[v5], v6);
  (*(v7 + 56))(&a1[v5], 0, 10, v6);
LABEL_7:
  *&a1[*(v4 + 24)] = *&a2[*(v4 + 24)];

  return a1;
}

char *initializeWithTake for MainMenuItemHost.RootView(char *a1, char *a2)
{
  *a1 = *a2;
  v4 = type metadata accessor for MainMenuItem(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 10, v6))
  {
    v8 = type metadata accessor for MainMenuItem.Identifier(0);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 10, v6);
  }

  *&a1[*(v4 + 24)] = *&a2[*(v4 + 24)];
  return a1;
}

char *assignWithTake for MainMenuItemHost.RootView(char *a1, char *a2)
{
  v4 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v4;

  v5 = type metadata accessor for MainMenuItem(0);
  v6 = *(v5 + 20);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 10, v7);
  v11 = v9(&a2[v6], 10, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = type metadata accessor for MainMenuItem.Identifier(0);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 32))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 10, v7);
LABEL_7:
  *&a1[*(v5 + 24)] = *&a2[*(v5 + 24)];

  return a1;
}

uint64_t type metadata completion function for MainMenuItemHost.RootView()
{
  result = type metadata accessor for MainMenuItem(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of MainMenuItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of MainMenuItemHost.RootView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainMenuItemHost.RootView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in MainMenuItemHost.RootView.body.getter(void *a1)
{
  v3 = *(type metadata accessor for MainMenuItemHost.RootView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in MainMenuItemHost.RootView.body.getter(a1, v4);
}

void type metadata accessor for ModifiedContent<MainMenuItem.Content, PlatformItemListTransformModifier<AllPlatformItemListFlags>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<MainMenuItem.Content, PlatformItemListTransformModifier<AllPlatformItemListFlags>>)
  {
    type metadata accessor for MainMenuItem.Content();
    type metadata accessor for PlatformItemListTransformModifier<AllPlatformItemListFlags>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<MainMenuItem.Content, PlatformItemListTransformModifier<AllPlatformItemListFlags>>);
    }
  }
}

void type metadata accessor for PlatformItemListTransformModifier<AllPlatformItemListFlags>()
{
  if (!lazy cache variable for type metadata for PlatformItemListTransformModifier<AllPlatformItemListFlags>)
  {
    v0 = type metadata accessor for PlatformItemListTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformItemListTransformModifier<AllPlatformItemListFlags>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MainMenuItem.Content, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MainMenuItem.Content, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MainMenuItem.Content, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<MainMenuItem.Content, PlatformItemListTransformModifier<AllPlatformItemListFlags>>();
    lazy protocol witness table accessor for type MainMenuItemHost and conformance MainMenuItemHost(&lazy protocol witness table cache variable for type MainMenuItem.Content and conformance MainMenuItem.Content, type metadata accessor for MainMenuItem.Content);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MainMenuItem.Content, PlatformItemListTransformModifier<AllPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t destroy for BoundInputsView(uint64_t a1)
{
}

uint64_t initializeWithCopy for BoundInputsView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v4 = v3;

  return a1;
}

uint64_t assignWithCopy for BoundInputsView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a1 + 32);
  *(a1 + 32) = v4;
  v6 = v4;

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithTake for BoundInputsView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t View.bindInputs<A>(transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v7, v16);
  (*(v15 + 32))(a7, v18, a3);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v19 = (a7 + *(type metadata accessor for ViewInputsBinding() + 52));
  *v19 = a1;
  v19[1] = a2;
}

id static ViewInputsBinding._makeView(view:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  v29 = v10;
  *&v19 = a3;
  *(&v19 + 1) = a4;
  *&v20 = a5;
  *(&v20 + 1) = a6;
  type metadata accessor for ViewInputsBinding();
  type metadata accessor for _GraphValue();
  v13 = _GraphValue.value.getter();
  v28 = v10;
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static ViewInputsBinding._makeView(view:inputs:)(1, a3, a4, a5, a6);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v16 = result;
    v30 = v33;
    v31 = v34;
    v32 = v35;
    outlined init with copy of _GraphInputs(&v33, &v19);
    UniqueID.init()();
    *&v26[0] = __PAIR64__(OffsetAttribute2, v13);
    *(&v26[0] + 1) = v16;
    v26[2] = v31;
    v26[3] = v32;
    v26[1] = v30;
    v21 = v31;
    v22 = v32;
    *&v23 = v27;
    v19 = v26[0];
    v20 = v30;
    v25[0] = a3;
    v25[1] = a4;
    v25[2] = a5;
    v25[3] = a6;
    v17 = type metadata accessor for ViewInputsBinding.Child();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v25, v26, v17);
    swift_getWitnessTable();
    _GraphValue.init<A>(_:)();
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v19 = v33;
    v20 = v34;
    static View.makeDebuggableView(view:inputs:)();
    return (*(v18 + 8))(v26, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static ViewInputsBinding._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for ViewInputsBinding();
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

uint64_t ViewInputsBinding.Child.value.getter(uint64_t a1)
{
  v4 = *(a1 + 24);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D000B90](a1, v4, WitnessTable);
  Rule.withObservation<A>(observationCenter:do:)();
}

uint64_t closure #1 in ViewInputsBinding.Child.value.getter()
{
  type metadata accessor for ViewInputsBinding.Child();
  type metadata accessor for ViewInputsBinding();
  return Attribute.syncMainIfReferences<A>(do:)();
}

uint64_t closure #1 in closure #1 in ViewInputsBinding.Child.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v25 = a3;
  *(&v25 + 1) = a4;
  *&v26 = a5;
  *(&v26 + 1) = a6;
  v11 = *(a1 + *(type metadata accessor for ViewInputsBinding() + 52));
  v12 = type metadata accessor for ViewFactory();
  v13 = *(a2 + 4);
  *&v25 = a3;
  *(&v25 + 1) = a4;
  *&v26 = a5;
  *(&v26 + 1) = a6;
  type metadata accessor for ViewInputsBinding.Child();
  v14 = *(a2 + 32);
  v24[0] = *(a2 + 16);
  v24[1] = v14;
  v16 = *(a2 + 16);
  v15 = *(a2 + 32);
  v24[2] = *(a2 + 48);
  *&v23[8] = v16;
  *&v23[24] = v15;
  v17 = *(a2 + 64);
  v18 = *(a2 + 8);
  *&v23[40] = *(a2 + 48);
  *&v21 = v12;
  *(&v21 + 1) = &protocol witness table for ViewFactory<A>;
  LODWORD(v22) = v13;
  *(&v22 + 1) = v17;
  *v23 = v18;
  v19 = v18;
  outlined init with copy of _GraphInputs(v24, &v25);
  v11(&v21);
  v27 = *v23;
  v28 = *&v23[16];
  v29 = *&v23[32];
  v30 = *&v23[48];
  v25 = v21;
  v26 = v22;
  return outlined destroy of BoundInputsView(&v25);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ViewInputsBinding<A, B>.Child(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ViewInputsBinding<A, B>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t static BoundInputsView._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v5 = a2[1];
  v38 = a2[2];
  v39 = v4;
  v6 = a2[3];
  v40 = a2[4];
  v7 = a2[1];
  v36 = *a2;
  v37 = v7;
  *&v27[32] = v38;
  *&v27[48] = v6;
  *&v27[64] = a2[4];
  v8 = *a1;
  v41 = *(a2 + 20);
  *&v27[80] = *(a2 + 20);
  *v27 = v36;
  *&v27[16] = v5;
  _ViewInputs.makeIndirectOutputs()();
  *&v35[36] = v38;
  *&v35[52] = v39;
  *&v35[68] = v40;
  *&v35[4] = v36;
  v9 = v16;
  v10 = DWORD2(v16);
  v11 = HIDWORD(v16);
  *&v35[84] = v41;
  *&v35[20] = v37;
  v12 = AGSubgraphGetCurrent();
  if (!v12)
  {
    __break(1u);
  }

  v13 = *MEMORY[0x1E698D3F8];
  *v27 = v8;
  *&v27[36] = *&v35[32];
  *&v27[52] = *&v35[48];
  *&v27[68] = *&v35[64];
  *&v27[84] = *&v35[80];
  *&v27[4] = *v35;
  *&v27[20] = *&v35[16];
  v28 = v16;
  v29 = v12;
  LOBYTE(v30) = 1;
  v31 = 0;
  LODWORD(v32) = v13;
  v33 = 0;
  v34 = 0;
  v24 = v30;
  v25 = v32;
  v26 = 0;
  v20 = *&v27[64];
  v21 = *&v27[80];
  v22 = v16;
  v23 = v12;
  v16 = *v27;
  v17 = *&v27[16];
  v18 = *&v27[32];
  v19 = *&v27[48];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(&v36, v15);
  lazy protocol witness table accessor for type BoundInputsView.Info and conformance BoundInputsView.Info();

  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of BoundInputsView.Info(v27);
  *&v16 = v9;
  *(&v16 + 1) = __PAIR64__(v11, v10);
  v15[0] = 0;
  result = _ViewOutputs.setIndirectDependency(_:)();
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 12) = v11;
  return result;
}

void BoundInputsView.Info.updateValue()()
{
  v1 = v0;
  v2 = *(v0 + 120);
  v3 = *(v1 + 128);
  Value = AGGraphGetValue();
  if ((v3 & 1) != 0 || v2 != *(Value + 24))
  {
    BoundInputsView.Info.eraseContent()();
    *(v1 + 120) = *(AGGraphGetValue() + 24);
    *(v1 + 128) = 0;
    AGGraphGetValue();
    if (AGSubgraphIsValid())
    {
      v5 = *(v1 + 112);
      v6 = AGSubgraphGetGraph();
      v7 = AGSubgraphCreate();

      AGSubgraphAddChild();
      if (*(AGGraphGetValue() + 32) != v5)
      {
        v8 = *(AGGraphGetValue() + 32);
        AGSubgraphRef.addSecondaryChild(_:)();
      }

      AGGraphClearUpdate();
      v9 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      closure #1 in BoundInputsView.Info.updateValue()(v1);
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      v10 = *(v1 + 136);
      v11 = v7;

      *(v1 + 136) = v7;
      *(v1 + 144) = *(AGGraphGetValue() + 16);
      AGGraphGetValue();
      v12 = AGSubgraphGetGraph();
      v13 = AGSubgraphGetGraph();

      if (v12 != v13)
      {
        CurrentAttribute = AGGraphGetCurrentAttribute();
        if (CurrentAttribute == *MEMORY[0x1E698D3F8])
        {
          __break(1u);
        }

        else
        {
          v15 = CurrentAttribute;
          v16 = *(AGGraphGetValue() + 32);
          v17 = swift_allocObject();
          *(v17 + 16) = v5;
          *(v17 + 24) = v15;
          v18 = v16;
          v19 = v5;
          v20 = AGSubgraphAddObserver();

          v21 = *(AGGraphGetValue() + 32);
          v22 = *(v1 + 152);
          v23 = v21;

          *(v1 + 152) = v21;
          *(v1 + 160) = v20;
        }
      }
    }
  }
}

void BoundInputsView.Info.eraseContent()()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = v0;
    *(v0 + 136) = 0;

    _ViewOutputs.detachIndirectOutputs()();

    AGSubgraphRef.willInvalidate(isInserted:)(1);
    AGSubgraphInvalidate();
    v4 = (v0 + 152);
    v3 = *(v0 + 152);
    if (v3)
    {
      AGSubgraphRemoveObserver();

      *v4 = 0;
      *(v2 + 160) = 0;
    }

    v5 = *MEMORY[0x1E698D3F8];

    *(v2 + 144) = v5;
  }
}

uint64_t closure #1 in BoundInputsView.Info.updateValue()(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 56);
  v24 = *(a1 + 40);
  v25 = v3;
  v26 = *(a1 + 72);
  v27 = *(a1 + 88);
  v23[0] = *(a1 + 8);
  v23[1] = v2;
  v4 = v2;
  v20 = v3;
  v21 = v26;
  v18 = v2;
  v19 = v24;
  v22 = v27;
  v17 = v23[0];
  swift_beginAccess();
  v5 = v4[3];
  v28[1] = v4[2];
  v28[2] = v5;
  v6 = v4[5];
  v28[3] = v4[4];
  v28[4] = v6;
  v28[0] = v4[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v7 = swift_allocObject();
  memmove((v7 + 16), v4 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v23, &v33);
  outlined init with copy of CachedEnvironment(v28, &v33);

  *&v18 = v7;
  Value = AGGraphGetValue();
  v9 = *(Value + 56);
  v33 = *(Value + 40);
  v34 = v9;
  v35 = *(Value + 72);
  _GraphInputs.merge(_:ignoringPhase:)();
  v10 = AGGraphGetValue();
  v11 = *v10;
  v12 = v10[1];
  v13 = *(AGGraphGetValue() + 16);
  v30 = v22;
  v29[3] = v20;
  v29[4] = v21;
  v29[1] = v18;
  v29[2] = v19;
  v29[0] = v17;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v33 = v17;
  v34 = v18;
  v14 = *(v12 + 8);
  outlined init with copy of _ViewInputs(v29, v31);
  v14(v16, v13, &v33, v11, v12);
  v31[2] = v35;
  v31[3] = v36;
  v31[4] = v37;
  v32 = v38;
  v31[0] = v33;
  v31[1] = v34;
  outlined destroy of _ViewInputs(v31);
  v16[0] = *(a1 + 96);
  v16[1] = *(a1 + 104);

  _ViewOutputs.attachIndirectOutputs(to:)();

  v35 = v19;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v33 = v17;
  v34 = v18;
  outlined destroy of _ViewInputs(&v33);
}

void closure #2 in BoundInputsView.Info.updateValue()()
{
  if (AGSubgraphIsValid())
  {
    AGGraphGetAttributeInfo();
    v1 = *(v0 + 152);
    *(v0 + 152) = 0;
    *(v0 + 160) = 0;

    BoundInputsView.Info.eraseContent()();
  }
}

void protocol witness for ObservedAttribute.destroy() in conformance BoundInputsView.Info()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    AGSubgraphRemoveObserver();

    *(v0 + 152) = 0;
    *(v0 + 160) = 0;
  }

  *(v0 + 144) = *MEMORY[0x1E698D3F8];
}

void protocol witness for static _AttributeBody._destroySelf(_:) in conformance BoundInputsView.Info(uint64_t a1)
{
  v2 = (a1 + 152);
  if (*(a1 + 152))
  {
    AGSubgraphRemoveObserver();
    v3 = *(a1 + 152);
    *v2 = 0;
    v2[1] = 0;
  }

  *(a1 + 144) = *MEMORY[0x1E698D3F8];
}

unint64_t lazy protocol witness table accessor for type BoundInputsView.Info and conformance BoundInputsView.Info()
{
  result = lazy protocol witness table cache variable for type BoundInputsView.Info and conformance BoundInputsView.Info;
  if (!lazy protocol witness table cache variable for type BoundInputsView.Info and conformance BoundInputsView.Info)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BoundInputsView.Info and conformance BoundInputsView.Info);
  }

  return result;
}

void destroy for BoundInputsView.Info(uint64_t a1)
{

  v2 = *(a1 + 152);
}

uint64_t initializeWithCopy for BoundInputsView.Info(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 128) = *(a2 + 128);
  v5 = *(a2 + 112);
  v4 = *(a2 + 120);
  *(a1 + 112) = v5;
  *(a1 + 120) = v4;
  v6 = *(a2 + 136);
  *(a1 + 136) = v6;
  *(a1 + 144) = *(a2 + 144);
  v8 = *(a2 + 152);
  v7 = *(a2 + 160);
  *(a1 + 152) = v8;
  *(a1 + 160) = v7;

  v9 = v5;
  v10 = v6;
  v11 = v8;
  return a1;
}

uint64_t assignWithCopy for BoundInputsView.Info(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  v4 = *(a2 + 112);
  v5 = *(a1 + 112);
  *(a1 + 112) = v4;
  v6 = v4;

  v7 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v7;
  v8 = *(a1 + 136);
  v9 = *(a2 + 136);
  *(a1 + 136) = v9;
  v10 = v9;

  *(a1 + 144) = *(a2 + 144);
  v11 = *(a2 + 152);
  v12 = *(a1 + 152);
  *(a1 + 152) = v11;
  v13 = v11;

  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t assignWithTake for BoundInputsView.Info(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  v4 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v5 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  v6 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t destroy for ViewInputsBinding.Child(uint64_t a1)
{
}

uint64_t initializeWithCopy for ViewInputsBinding.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  v6 = v3;

  return a1;
}

uint64_t assignWithCopy for ViewInputsBinding.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for ViewInputsBinding.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t LimitedAvailabilityWidget.configuration.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t LimitedAvailabilityWidget.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(a3 + 32))(a2, a3, v8);
  swift_getAssociatedConformanceWitness();
  v11 = specialized LimitedAvailabilityConfiguration.init<A>(_:)(v10, AssociatedTypeWitness);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v11;
}

uint64_t LimitedAvailabilityConfiguration.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized LimitedAvailabilityConfiguration.init<A>(_:)(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t static LimitedAvailabilityConfiguration._makeWidgetConfiguration(widget:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *&v25[12] = *(a2 + 44);
  v5 = a2[1];
  v23 = *a2;
  v24 = v5;
  *v25 = a2[2];

  PreferencesOutputs.init()();

  v10 = *&v25[16];
  v11 = *&v25[24];
  PreferencesInputs.makeIndirectOutputs()();

  v6 = v12;
  v7 = DWORD2(v12);
  v8 = AGSubgraphGetCurrent();
  if (!v8)
  {
    __break(1u);
  }

  *(v20 + 12) = *&v25[12];
  v19[2] = v24;
  v20[0] = *v25;
  v19[1] = v23;
  LODWORD(v19[0]) = v4;
  *(&v19[0] + 1) = v8;
  *&v21 = v12;
  DWORD2(v21) = DWORD2(v12);
  v22 = 0;
  v16 = v20[1];
  v17 = v21;
  v18 = 0;
  v12 = v19[0];
  v13 = v23;
  v14 = v24;
  v15 = *v25;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _WidgetInputs(&v23, &v10);
  lazy protocol witness table accessor for type LimitedAvailabilityConfiguration.IndirectOutputs and conformance LimitedAvailabilityConfiguration.IndirectOutputs();

  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of LimitedAvailabilityConfiguration.IndirectOutputs(v19);
  *&v12 = v6;
  DWORD2(v12) = v7;

  LOBYTE(v10) = 0;
  PreferencesOutputs.setIndirectDependency(_:)();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

void LimitedAvailabilityConfiguration.IndirectOutputs.updateValue()()
{
  if (!*(v0 + 96))
  {
    v1 = AGSubgraphGetGraph();
    v2 = AGSubgraphCreate();

    *(v0 + 96) = v2;
    v4 = v2;
    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v3 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in LimitedAvailabilityConfiguration.IndirectOutputs.updateValue()(v0);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t closure #1 in LimitedAvailabilityConfiguration.IndirectOutputs.updateValue()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v23[0] = *(a1 + 16);
  v23[1] = v2;
  v24[0] = *(a1 + 48);
  *(v24 + 12) = *(a1 + 60);
  v3 = v2;
  v22 = v23[0];
  v4 = *(a1 + 56);
  v19 = *(a1 + 40);
  v20 = v4;
  v21 = *(a1 + 72);
  swift_beginAccess();
  v5 = v3[3];
  v25[1] = v3[2];
  v25[2] = v5;
  v6 = v3[5];
  v25[3] = v3[4];
  v25[4] = v6;
  v25[0] = v3[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v7 = swift_allocObject();
  memmove((v7 + 16), v3 + 1, 0x50uLL);
  outlined init with copy of _WidgetInputs(v23, &v17);
  outlined init with copy of CachedEnvironment(v25, &v17);

  v8 = *(a1 + 80);
  v9 = *(a1 + 88);

  v10 = *AGGraphGetValue();
  LODWORD(v13) = *a1;
  v26 = v22;
  *v27 = v7;
  *&v27[8] = v19;
  *&v27[40] = v21;
  *&v27[24] = v20;
  v17 = v22;
  *v18 = *v27;
  *&v18[16] = *&v27[16];
  *&v18[28] = *&v27[28];
  v11 = *(*v10 + 80);

  outlined init with copy of _WidgetInputs(&v26, v28);
  v11(&v15, &v13, &v17);

  v28[0] = v17;
  v28[1] = *v18;
  v29[0] = *&v18[16];
  *(v29 + 12) = *&v18[28];
  outlined destroy of _WidgetInputs(v28);
  *&v17 = v8;
  DWORD2(v17) = v9;
  v13 = v15;
  v14 = v16;
  PreferencesOutputs.attachIndirectOutputs(to:)();

  v17 = v22;
  *v18 = v7;
  *&v18[8] = v19;
  *&v18[24] = v20;
  *&v18[40] = v21;
  return outlined destroy of _WidgetInputs(&v17);
}

uint64_t LimitedAvailabilityConfigurationStorage.Child.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  AGGraphGetValue();
  type metadata accessor for LimitedAvailabilityConfigurationStorage();
  v4 = swift_dynamicCastClassUnconditional();
  v5 = *(*(a1 - 8) + 16);
  v6 = v4 + *(*v4 + 112);

  return v5(a2, v6, a1);
}

uint64_t LimitedAvailabilityConfigurationStorage.makeWidgetConfiguration(widget:inputs:)(int *a1, _OWORD *a2)
{
  v3 = *v2;
  v4 = *a1;
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  v12[0] = a2[2];
  *(v12 + 12) = *(a2 + 44);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  v10 = v4;
  type metadata accessor for LimitedAvailabilityConfigurationStorage.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return (*(v7 + 32))(v9, v11, v6, v7);
}

uint64_t specialized LimitedAvailabilityConfiguration.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LimitedAvailabilityConfigurationStorage();
  (*(v4 + 16))(v6, a1, a2);
  return LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(v6);
}

unint64_t lazy protocol witness table accessor for type LimitedAvailabilityConfiguration.IndirectOutputs and conformance LimitedAvailabilityConfiguration.IndirectOutputs()
{
  result = lazy protocol witness table cache variable for type LimitedAvailabilityConfiguration.IndirectOutputs and conformance LimitedAvailabilityConfiguration.IndirectOutputs;
  if (!lazy protocol witness table cache variable for type LimitedAvailabilityConfiguration.IndirectOutputs and conformance LimitedAvailabilityConfiguration.IndirectOutputs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LimitedAvailabilityConfiguration.IndirectOutputs and conformance LimitedAvailabilityConfiguration.IndirectOutputs);
  }

  return result;
}

uint64_t View.allowsGaugeResizing(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.allowsGaugeResizing.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<AllowsGaugeResizingKey>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsGaugeResizingKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AllowsGaugeResizingKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<AllowsGaugeResizingKey>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsGaugeResizingKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AllowsGaugeResizingKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.allowsGaugeResizing : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<AllowsGaugeResizingKey>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsGaugeResizingKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AllowsGaugeResizingKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<AllowsGaugeResizingKey>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsGaugeResizingKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AllowsGaugeResizingKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.allowsGaugeResizing : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<AllowsGaugeResizingKey>();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsGaugeResizingKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AllowsGaugeResizingKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void type metadata accessor for EnvironmentPropertyKey<AllowsGaugeResizingKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsGaugeResizingKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsGaugeResizingKey>);
    }
  }
}

uint64_t TabContent.badge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6[0] = a1;
  v6[1] = 0;
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x1FFFFFFFELL;
  }

  v6[2] = v4;
  v6[3] = 0;
  TabContent.modifier<A>(_:)(v6, a2, &unk_1EFFC3A60, a3);
  return outlined consume of BadgeLabel?(a1, 0, v4);
}

uint64_t TabContent.badge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a4)
  {
    v11 = a3 & 1 | 0x8000000000000000;
    v12 = a6;
    outlined copy of Text.Storage(a1, a2, a3 & 1);

    a6 = v12;
    v13 = a1;
    v14 = a2;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v11 = 0x1FFFFFFFELL;
  }

  v16[0] = v13;
  v16[1] = v14;
  v16[2] = v11;
  v16[3] = a4;
  TabContent.modifier<A>(_:)(v16, a5, &unk_1EFFC3A60, a6);
  return outlined consume of Text?(a1, a2, a3, a4);
}

uint64_t TabContent.badge(_:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{

  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7 & 1;
  TabContent.badge(_:)(v4, v5, v7 & 1, v9, a1, a2);
  outlined consume of Text.Storage(v4, v6, v8);
}

uint64_t TabContent.badge<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11 & 1;
  TabContent.badge(_:)(v8, v9, v11 & 1, v13, a2, a3);
  outlined consume of Text.Storage(v8, v10, v12);
}

unint64_t lazy protocol witness table accessor for type BadgeModifier and conformance BadgeModifier()
{
  result = lazy protocol witness table cache variable for type BadgeModifier and conformance BadgeModifier;
  if (!lazy protocol witness table cache variable for type BadgeModifier and conformance BadgeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BadgeModifier and conformance BadgeModifier);
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance BadgeModifier@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of BadgeLabel?(v2, v3, v4);
}

void type metadata accessor for BadgedView<_ViewModifier_Content<BadgeModifier>>()
{
  if (!lazy cache variable for type metadata for BadgedView<_ViewModifier_Content<BadgeModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<BadgeModifier>();
    lazy protocol witness table accessor for type BadgedView<_ViewModifier_Content<BadgeModifier>> and conformance BadgedView<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<BadgeModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<BadgeModifier>);
    v0 = type metadata accessor for BadgedView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BadgedView<_ViewModifier_Content<BadgeModifier>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<BadgeModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<BadgeModifier>)
  {
    lazy protocol witness table accessor for type BadgeModifier and conformance BadgeModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<BadgeModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type BadgedView<_ViewModifier_Content<BadgeModifier>> and conformance BadgedView<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EnvironmentValues.refresh.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>);

    return PropertyList.subscript.getter();
  }
}

uint64_t View.refreshable(action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for RefreshableModifier);
}

uint64_t RefreshableModifier.ChildEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;
  type metadata accessor for @Sendable ()();

  swift_retain_n();
  v4 = AGGraphGetValue();
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance RefreshableModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

double key path getter for EnvironmentValues.refresh : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.refresh : EnvironmentValues(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>();

  outlined copy of AppIntentExecutor?(v3);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>);
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

double specialized implicit closure #1 in _GraphInputs.refresh.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>);

    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t RefreshAction.callAsFunction()()
{
  v4 = (*v0 + **v0);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v4();
}

void *initializeBufferWithCopyOfBuffer for RefreshAction(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for RefreshAction(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = a2[2];
  return a1;
}

uint64_t assignWithTake for RefreshAction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t UIKitRefreshControl.configuration.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_configuration;
  v4 = *(v1 + OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_configuration + 16);
  *v3 = *a1;
  *(v3 + 16) = v2;
  if (v2 == v4)
  {
    v5 = OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_currentTask;
    if (*(v1 + OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_currentTask))
    {

      isCancelled = swift_task_isCancelled();

      if ((isCancelled & 1) == 0)
      {
        if (*(v1 + v5))
        {

          MEMORY[0x18D00D010](v7, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
        }
      }
    }
  }
}

id UIKitRefreshControl.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_currentTask])
  {

    MEMORY[0x18D00D010](v2, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall UIKitRefreshControl._swiftui_handleRefreshControl()()
{
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-v2];
  v12 = v0;
  type metadata accessor for @Sendable ()();
  static Update.ensure<A>(_:)();
  v4 = swift_allocObject();
  *(v4 + 16) = v13;
  v5 = OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_currentTask;
  if (*&v0[OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_currentTask])
  {

    MEMORY[0x18D00D010](v6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  static TaskPriority.userInitiated.getter();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ())partial apply;
  v8[5] = v4;
  v8[6] = v0;

  v9 = v0;
  v10 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #2 in UIKitRefreshControl._swiftui_handleRefreshControl(), v8);

  outlined destroy of TaskPriority?(v3);
  *&v0[v5] = v10;
}

uint64_t closure #2 in UIKitRefreshControl._swiftui_handleRefreshControl()(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = closure #2 in UIKitRefreshControl._swiftui_handleRefreshControl();

  return v9();
}

uint64_t closure #2 in UIKitRefreshControl._swiftui_handleRefreshControl()()
{

  return MEMORY[0x1EEE6DFA0](closure #2 in UIKitRefreshControl._swiftui_handleRefreshControl(), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in UIKitRefreshControl._swiftui_handleRefreshControl(), v2, v1);
}

{
  v1 = *(v0 + 16);

  [v1 endRefreshing];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t specialized static RefreshableModifier._makeInputs(modifier:inputs:)()
{
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for @Sendable ()();
  type metadata accessor for Map<RefreshableModifier, @Sendable ()>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>, type metadata accessor for Map<RefreshableModifier, @Sendable ()>);

  Attribute.init<A>(body:value:flags:update:)();

  swift_beginAccess();
  UniqueID.init()();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type RefreshableModifier.ChildEnvironment and conformance RefreshableModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter();
}

uint64_t partial apply for closure #1 in UIKitRefreshControl._swiftui_handleRefreshControl()@<X0>(void *a1@<X8>)
{
  v3 = (*(v1 + 16) + OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_configuration);
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a1 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();
  a1[1] = v6;
}

uint64_t partial apply for closure #2 in UIKitRefreshControl._swiftui_handleRefreshControl()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in UIKitRefreshControl._swiftui_handleRefreshControl()(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  type metadata accessor for TaskPriority?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ResolvedTextFieldLabelDisplayMode and conformance ResolvedTextFieldLabelDisplayMode()
{
  result = lazy protocol witness table cache variable for type ResolvedTextFieldLabelDisplayMode and conformance ResolvedTextFieldLabelDisplayMode;
  if (!lazy protocol witness table cache variable for type ResolvedTextFieldLabelDisplayMode and conformance ResolvedTextFieldLabelDisplayMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedTextFieldLabelDisplayMode and conformance ResolvedTextFieldLabelDisplayMode);
  }

  return result;
}

uint64_t ProminentDetailNavigationSplitViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v3 = *(a1 + 16);
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  *a2 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = *a1;
  *(a2 + 48) = v3;
  *(a2 + 64) = *(a1 + 32);
  *(a2 + 80) = *(a1 + 48);
  *(a2 + 81) = 1;
  return outlined init with copy of NavigationSplitViewStyleConfiguration(v6, &v5);
}

uint64_t protocol witness for NavigationSplitViewStyle.makeBody(configuration:) in conformance ProminentDetailNavigationSplitViewStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v3 = *(a1 + 16);
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  *a2 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = *a1;
  *(a2 + 48) = v3;
  *(a2 + 64) = *(a1 + 32);
  *(a2 + 80) = *(a1 + 48);
  *(a2 + 81) = 1;
  return outlined init with copy of NavigationSplitViewStyleConfiguration(v6, &v5);
}

uint64_t EnvironmentValues.accessibilityButtonBorderSpec.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>, &type metadata for EnvironmentValues.__Key_accessibilityButtonBorderSpec, &protocol witness table for EnvironmentValues.__Key_accessibilityButtonBorderSpec, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>, &type metadata for EnvironmentValues.__Key_accessibilityButtonBorderSpec, &protocol witness table for EnvironmentValues.__Key_accessibilityButtonBorderSpec, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t assignWithCopy for AccessibilityButtonBorderModifier(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  v14 = *(v2 + 48);
  v15 = *(v2 + 57);
  v16 = *(v2 + 56);
  outlined copy of Environment<KeyboardShortcut?>.Content(v12, v13, v14, v16, v15);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = *(a1 + 57);
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v14;
  v21 = *(a1 + 56);
  *(a1 + 56) = v16;
  *(a1 + 57) = v15;
  outlined consume of Environment<KeyboardShortcut?>.Content(v17, v18, v19, v21, v20);
  v22 = *(v2 + 64);
  LOBYTE(v2) = *(v2 + 72);
  outlined copy of Environment<Selector?>.Content(v22, v2);
  v23 = *(a1 + 64);
  v24 = *(a1 + 72);
  *(a1 + 64) = v22;
  *(a1 + 72) = v2;
  outlined consume of Environment<Selector?>.Content(v23, v24);
  return a1;
}

uint64_t assignWithTake for AccessibilityButtonBorderModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = a2[6];
  v12 = *(a2 + 56);
  v13 = *(a2 + 57);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 57);
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = v11;
  v18 = *(a1 + 56);
  *(a1 + 56) = v12;
  *(a1 + 57) = v13;
  outlined consume of Environment<KeyboardShortcut?>.Content(v14, v15, v16, v18, v17);
  v19 = *(a2 + 72);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  *(a1 + 64) = a2[8];
  *(a1 + 72) = v19;
  outlined consume of Environment<Selector?>.Content(v20, v21);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityButtonBorderModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for AccessibilityButtonBorderModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance SupportsAccessibilityButtonBorder()
{
  lazy protocol witness table accessor for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder();
  PropertyList.subscript.getter();
  return v1;
}

double ButtonShapeEffect.Effect.body.getter@<D0>(uint64_t a1@<X8>)
{
  *(v33 + 9) = *(v1 + 73);
  v3 = *(v1 + 64);
  v32[3] = *(v1 + 48);
  v33[0] = v3;
  v4 = *(v1 + 32);
  v32[1] = *(v1 + 16);
  v32[2] = v4;
  v32[0] = *v1;
  static EdgeInsets.zero.getter();
  *(v37 + 7) = *(v1 + 80);
  HIBYTE(v37[0]) = *(v1 + 88);
  v29[0] = BYTE9(v33[0]);
  *&v29[1] = v37[0];
  *&v29[24] = v5;
  *&v30 = v6;
  *(&v30 + 1) = v7;
  v31 = v8;
  v9 = static Alignment.center.getter();
  v11 = v10;
  closure #1 in ButtonShapeEffect.Effect.body.getter(v29, v32, &v18);
  v34[2] = v20;
  v34[3] = v21;
  v25 = v20;
  v26 = v21;
  v34[0] = v18;
  v34[1] = v19;
  *&v35 = v22;
  *(&v35 + 1) = v9;
  v36 = v11;
  *v28 = v11;
  v23 = v18;
  v24 = v19;
  v27 = v35;
  v37[2] = v20;
  v37[3] = v21;
  v37[0] = v18;
  v37[1] = v19;
  v38 = v22;
  v39 = v9;
  v40 = v11;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_3(v34, &v17, type metadata accessor for _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_1(v37, type metadata accessor for _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>);
  *&v28[8] = *v29;
  *&v28[24] = *&v29[16];
  *&v28[40] = v30;
  *&v28[56] = v31;
  v12 = v26;
  *(a1 + 32) = v25;
  *(a1 + 48) = v12;
  v13 = v24;
  *a1 = v23;
  *(a1 + 16) = v13;
  v14 = *v28;
  *(a1 + 64) = v27;
  *(a1 + 80) = v14;
  v15 = *&v28[32];
  *(a1 + 96) = *&v28[16];
  *(a1 + 112) = v15;
  result = *&v28[48];
  *(a1 + 128) = *&v28[48];
  *(a1 + 144) = 0;
  *(a1 + 152) = 9;
  return result;
}

__n128 closure #1 in ButtonShapeEffect.Effect.body.getter@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[3];
  v60 = a2[2];
  v61[0] = v5;
  *(v61 + 9) = *(a2 + 57);
  v6 = a2[1];
  v58 = *a2;
  v59 = v6;
  specialized Environment.wrappedValue.getter(&v50);
  v7 = v50;
  if (v50)
  {
    v8 = v53;
    _Q0 = v51;
    v10 = v52;
    v11 = v56;
    v12 = v55;
    v57[0] = *v54;
    *(v57 + 3) = *&v54[3];
  }

  else
  {
    v13 = static Color.clear.getter();
    v12 = static Color.clear.getter();
    v7 = v13;
    v8 = 0;
    v10 = xmmword_18CD6E1E0;
    __asm { FMOV            V0.2D, #1.0 }

    v11 = _Q0;
  }

  v43 = v7;
  v44 = _Q0;
  v45 = v10;
  v46 = v8;
  *v47 = v57[0];
  *&v47[3] = *(v57 + 3);
  v48 = v12;
  v49 = v11;
  v18 = Color.opacity(_:)();
  outlined destroy of BorderedButtonColorSpec(&v43);
  specialized Environment.wrappedValue.getter(&v35);
  v19 = v35;
  if (v35)
  {
    v20 = v38;
    _Q1 = v36;
    v21 = v37;
    v23 = v41;
    v24 = v40;
    v42[0] = *v39;
    *(v42 + 3) = *&v39[3];
  }

  else
  {
    v19 = static Color.clear.getter();
    v24 = static Color.clear.getter();
    v20 = 0;
    v21 = xmmword_18CD6E1E0;
    __asm { FMOV            V1.2D, #1.0 }

    v23 = _Q1;
  }

  v28 = v19;
  v29 = _Q1;
  v30 = v21;
  v31 = v20;
  *v32 = v42[0];
  *&v32[3] = *(v42 + 3);
  v33 = v24;
  v34 = v23;
  outlined destroy of BorderedButtonColorSpec(&v28);
  v25 = v31;
  v26 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v26;
  result = *(a1 + 32);
  *(a3 + 32) = result;
  *(a3 + 48) = *(a1 + 48);
  *(a3 + 56) = v18;
  *(a3 + 64) = 256;
  *(a3 + 66) = v25;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance ButtonShapeEffect.MakeEffect@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 255;
  *(a1 + 72) = xmmword_18CDA22F0;
  *(a1 + 88) = 0;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ButtonShapeEffect.MakeEffect@<X0>(uint64_t a1@<X8>)
{
  v2 = *AGGraphGetValue();
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(Value + 8);
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 72) = 0;
  *(a1 + 73) = v2;
  *(a1 + 80) = v4;
  *(a1 + 88) = v5;
  return result;
}

uint64_t ButtonShapeEffect.EffectState.makeOutputs()()
{
  v1 = v0;
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 64);
  *&v42[0] = *(v0 + 56);
  DWORD2(v42[0]) = v2;
  v3 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v4 = *(v0 + 64);
  *&v42[0] = *(v0 + 56);
  DWORD2(v42[0]) = v4;
  v5 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v6 = *(v0 + 24);
  v7 = *(v0 + 56);
  v43 = *(v0 + 40);
  v44 = v7;
  v45 = *(v0 + 72);
  v46 = *(v0 + 88);
  v42[0] = *(v0 + 8);
  v42[1] = v6;
  v8 = v6;
  v39 = v7;
  v40 = v45;
  v38[0] = v6;
  v38[1] = v43;
  v41 = v46;
  v37 = v42[0];
  swift_beginAccess();
  v9 = v8[3];
  v47[1] = v8[2];
  v47[2] = v9;
  v10 = v8[5];
  v47[3] = v8[4];
  v47[4] = v10;
  v47[0] = v8[1];
  type metadata accessor for BorderedButtonColorSpec?(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, MEMORY[0x1E697ECC0], MEMORY[0x1E697DAC0]);
  v11 = swift_allocObject();
  memmove((v11 + 16), v8 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v42, &v34);
  outlined init with copy of CachedEnvironment(v47, &v34);

  *&v38[0] = v11;
  PreferenceKeys.init()();
  v12 = v34;

  *&v39 = v12;
  if (v3)
  {
    PreferenceKeys.add(_:)();
  }

  if (v5)
  {
    PreferenceKeys.add(_:)();
  }

  v13 = *(v1 + 96);
  v14 = *(v1 + 104);
  v15 = *(v1 + 116);
  if (v15)
  {
    IndirectAttribute = 0;
  }

  else
  {
    IndirectAttribute = AGGraphGetIndirectAttribute();
  }

  v17 = *(v1 + 124);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = AGGraphGetIndirectAttribute();
  }

  type metadata accessor for BorderedButtonColorSpec?(0, &lazy cache variable for type metadata for PlaceholderContentView<ButtonShapeEffect>, &unk_1EFFC3FF8, MEMORY[0x1E697FEC0]);
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v14;
  *(v19 + 32) = v3 & 1;
  *(v19 + 36) = IndirectAttribute;
  *(v19 + 40) = v15;
  *(v19 + 41) = v5 & 1;
  *(v19 + 44) = v18;
  *(v19 + 48) = v17;

  _ViewInputs.pushModifierBody<A>(_:body:)();

  v34 = v37;
  *(v35 + 8) = *(v38 + 8);
  *(&v35[1] + 1) = *(&v38[1] + 1);
  *&v35[0] = *&v38[0];
  v20 = _GraphInputs.controlSize.getter();
  if (one-time initialization token for buttonBorderShape != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  *&v34 = __PAIR64__(v21, v20);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ButtonShapeEffect.MakeEffect and conformance ButtonShapeEffect.MakeEffect();
  Attribute.init<A>(body:value:flags:update:)();
  v32[3] = v39;
  v32[4] = v40;
  v33 = v41;
  v32[0] = v37;
  v32[1] = v38[0];
  v32[2] = v38[1];
  v28 = v38[1];
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v26 = v37;
  v27 = v38[0];
  outlined init with copy of _ViewInputs(v32, &v34);
  lazy protocol witness table accessor for type ButtonShapeEffect.Effect and conformance ButtonShapeEffect.Effect();
  static View.makeDebuggableView(view:inputs:)();
  v35[1] = v28;
  v35[2] = v29;
  v35[3] = v30;
  v36 = v31;
  v34 = v26;
  v35[0] = v27;
  outlined destroy of _ViewInputs(&v34);
  if (v3)
  {
    *&v26 = v24;
    DWORD2(v26) = v25;
    if (!(v15 & 1 | (PreferencesOutputs.subscript.getter() >> 32) & 1))
    {
      AGGraphSetIndirectAttribute();
    }
  }

  if (v5)
  {
    *&v26 = v24;
    DWORD2(v26) = v25;
    v22 = PreferencesOutputs.subscript.getter();

    if ((v22 & 0x100000000) == 0 && (v17 & 1) == 0)
    {
      AGGraphSetIndirectAttribute();
    }

    v28 = v38[1];
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v26 = v37;
    v27 = v38[0];
    return outlined destroy of _ViewInputs(&v26);
  }

  else
  {
    v28 = v38[1];
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v26 = v37;
    v27 = v38[0];
    outlined destroy of _ViewInputs(&v26);
  }
}

double closure #1 in ButtonShapeEffect.EffectState.makeOutputs()@<D0>(uint64_t a1@<X2>, double a2@<X3>, char a3@<W4>, char a4@<W6>, double *a5@<X8>)
{
  if (a3)
  {

    PreferencesOutputs.subscript.setter();
    if ((a4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    PreferencesOutputs.subscript.setter();
  }

LABEL_6:
  *a5 = a1;
  result = a2;
  a5[1] = a2;
  return result;
}

void type metadata accessor for BorderedButtonColorSpec?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ButtonShapeEffect.MakeEffect and conformance ButtonShapeEffect.MakeEffect()
{
  result = lazy protocol witness table cache variable for type ButtonShapeEffect.MakeEffect and conformance ButtonShapeEffect.MakeEffect;
  if (!lazy protocol witness table cache variable for type ButtonShapeEffect.MakeEffect and conformance ButtonShapeEffect.MakeEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonShapeEffect.MakeEffect and conformance ButtonShapeEffect.MakeEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonShapeEffect.Effect and conformance ButtonShapeEffect.Effect()
{
  result = lazy protocol witness table cache variable for type ButtonShapeEffect.Effect and conformance ButtonShapeEffect.Effect;
  if (!lazy protocol witness table cache variable for type ButtonShapeEffect.Effect and conformance ButtonShapeEffect.Effect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonShapeEffect.Effect and conformance ButtonShapeEffect.Effect);
  }

  return result;
}

uint64_t initializeWithCopy for ButtonShapeEffect.Effect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v13 = *(a2 + 64);
  v14 = *(a2 + 72);
  outlined copy of Environment<BorderedButtonColorSpec?>.Content(*a2, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithCopy for ButtonShapeEffect.Effect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v24 = *(a2 + 64);
  v25 = *(a2 + 72);
  outlined copy of Environment<BorderedButtonColorSpec?>.Content(*a2, v5, v6, v7, v8, v9, v10, v11, v24, v25);
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
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v24;
  *(a1 + 72) = v25;
  outlined consume of Environment<BorderedButtonColorSpec?>.Content(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  *(a1 + 73) = *(a2 + 73);
  v22 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v22;
  return a1;
}

uint64_t assignWithTake for ButtonShapeEffect.Effect(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = *(a2 + 72);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v16;
  v17 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v17;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  outlined consume of Environment<BorderedButtonColorSpec?>.Content(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for ButtonShapeEffect.Effect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
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

uint64_t storeEnumTagSinglePayload for ButtonShapeEffect.Effect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for ButtonShapeEffect.EffectState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  v4 = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 112) = v4;
  v5 = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 120) = v5;
  v6 = *(a2 + 128);
  v7 = *(a1 + 128);
  *(a1 + 128) = v6;
  v8 = v6;

  v9 = *(a1 + 136);
  v10 = *(a2 + 136);
  *(a1 + 136) = v10;
  v11 = v10;

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t assignWithTake for ButtonShapeEffect.EffectState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);

  v4 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t _s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAEyAA10_ShapeViewVyAA014ResolvedBorderG0VAA5ColorVGAA23_CompositingGroupEffectVGAA010_BlendModeN0VGGACyxGAA0hD0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ButtonShapeEffect.Map(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ButtonShapeEffect.Map(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
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

  *(result + 13) = v3;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<PlaceholderContentView<ButtonShapeEffect>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>>, _ContentShapeKindModifier<ResolvedBorderShape>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlaceholderContentView<ButtonShapeEffect>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>>, _ContentShapeKindModifier<ResolvedBorderShape>>)
  {
    type metadata accessor for ModifiedContent<PlaceholderContentView<ButtonShapeEffect>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>>();
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<ResolvedBorderShape>, lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape, &type metadata for ResolvedBorderShape, MEMORY[0x1E69805E0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlaceholderContentView<ButtonShapeEffect>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>>, _ContentShapeKindModifier<ResolvedBorderShape>>);
    }
  }
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<ButtonShapeEffect>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<ButtonShapeEffect>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>>)
  {
    type metadata accessor for BorderedButtonColorSpec?(255, &lazy cache variable for type metadata for PlaceholderContentView<ButtonShapeEffect>, &unk_1EFFC3FF8, MEMORY[0x1E697FEC0]);
    type metadata accessor for _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<ButtonShapeEffect>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<ButtonShapeEffect>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<ButtonShapeEffect>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<ButtonShapeEffect>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PlaceholderContentView<ButtonShapeEffect>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>>();
    lazy protocol witness table accessor for type PlaceholderContentView<ButtonShapeEffect> and conformance PlaceholderContentView<A>();
    _s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAEyAA10_ShapeViewVyAA014ResolvedBorderG0VAA5ColorVGAA23_CompositingGroupEffectVGAA010_BlendModeN0VGGACyxGAA0hD0AAWlTm_0(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<ButtonShapeEffect>, _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaceholderContentView<ButtonShapeEffect> and conformance PlaceholderContentView<A>()
{
  result = lazy protocol witness table cache variable for type PlaceholderContentView<ButtonShapeEffect> and conformance PlaceholderContentView<A>;
  if (!lazy protocol witness table cache variable for type PlaceholderContentView<ButtonShapeEffect> and conformance PlaceholderContentView<A>)
  {
    type metadata accessor for BorderedButtonColorSpec?(255, &lazy cache variable for type metadata for PlaceholderContentView<ButtonShapeEffect>, &unk_1EFFC3FF8, MEMORY[0x1E697FEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaceholderContentView<ButtonShapeEffect> and conformance PlaceholderContentView<A>);
  }

  return result;
}

uint64_t static SectionPickerStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for PickerStyleConfiguration.Content();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for SectionPicker();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for GroupElementsOfContent();
  type metadata accessor for Group();
  type metadata accessor for _PickerValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for SectionPickerStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

double protocol witness for static Rule.initialValue.getter in conformance SectionPickerStyle.Body<A>@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SectionPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || (((v6 | 7) + 9) & ~(v6 | 7)) + v8 + 71 > 0x18)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = v11 + ((v6 + 16) & ~(v6 | 7));
  }

  else
  {
    v12 = *a2;
    v13 = *(a2 + 8);
    outlined copy of Environment<Bool>.Content(*a2, v13);
    *a1 = v12;
    *(a1 + 8) = v13;
    *((a1 & 0xFFFFFFFFFFFFFFF8) + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
    v15 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
    v16 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    v26 = *(v5 + 16);

    v26(v15 + 1, v16 + 1, v4);
    v17 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 23 + v7) & 0xFFFFFFFFFFFFFFF8;
    v18 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 23 + v7) & 0xFFFFFFFFFFFFFFF8;
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
    v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 23 + v8);
    v20 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 23 + v8);
    v21 = v20[3];
    v19[3] = v21;
    v19[4] = v20[4];
    v22 = **(v21 - 8);

    v22(v19, v20, v21);
    v23 = v20[5];
    v19[5] = v23;
    v19[6] = v20[6];
    v19[7] = v20[7];
    v24 = v23;
  }

  return a1;
}

uint64_t initializeWithTake for SectionPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 32);
  v6 = v4 + 32;
  v7 = *(v4 + 80);
  v8 = (v7 | 7) + 9;
  v9 = ((v8 + a1) & ~(v7 | 7));
  v10 = ((v8 + a2) & ~(v7 | 7));
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v5((v11 + v7 + 8) & ~v7, (v12 + v7 + 8) & ~v7);
  v13 = *(v6 + 32) + ((v7 + 16) & ~v7) + 7;
  v14 = (v9 + v13) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v10 + v13) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  v16 = (v13 & 0xFFFFFFFFFFFFFFF8) + 9;
  v17 = v9 + v16;
  v18 = v10 + v16;
  v19 = *(v18 + 55);
  v20 = *(v18 + 39);
  v21 = *(v18 + 23);
  *(v17 + 7) = *(v18 + 7);
  *(v17 + 23) = v21;
  *(v17 + 39) = v20;
  *(v17 + 55) = v19;
  return a1;
}

uint64_t *assignWithTake for SectionPicker(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v12 | 7) + 9;
  v14 = ((a1 + v13) & ~(v12 | 7));
  v15 = ((a2 + v13) & ~(v12 | 7));
  *v14 = *v15;

  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;

  (*(v11 + 40))((v16 + v12 + 8) & ~v12, (v17 + v12 + 8) & ~v12, v10);
  v18 = *(v11 + 64) + ((v12 + 16) & ~v12) + 7;
  v19 = (v14 + v18) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + v18) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;

  *(v19 + 8) = *(v20 + 8);
  v21 = (v18 & 0xFFFFFFFFFFFFFFF8) + 9;
  v22 = v14 + v21;
  v23 = v15 + v21;
  __swift_destroy_boxed_opaque_existential_1(v14 + v21 + 7);
  v24 = *(v23 + 7);
  v25 = *(v23 + 23);
  *(v22 + 39) = *(v23 + 39);
  *(v22 + 23) = v25;
  *(v22 + 7) = v24;
  v26 = *(v22 + 47);
  *(v22 + 47) = *(v23 + 47);

  *(v22 + 55) = *(v23 + 55);

  *(v22 + 63) = *(v23 + 63);
  return a1;
}

uint64_t getEnumTagSinglePayload for SectionPicker(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = v6 | 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + 9) & ~v8) + ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 80;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = ((((a1 + v8 + 9) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v18 + v6 + 8) & ~v6);
    }

    v19 = *v18;
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *storeEnumTagSinglePayload for SectionPicker(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = (((v8 | 7) + 9) & ~(v8 | 7)) + ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 80;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if ((((v8 | 7) + 9) & ~(v8 | 7)) + ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == -80)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      v18 = (((&result[(v8 | 7) + 9] & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
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

      return result;
    }
  }

  if ((((v8 | 7) + 9) & ~(v8 | 7)) + ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == -80)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if ((((v8 | 7) + 9) & ~(v8 | 7)) + ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != -80)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}