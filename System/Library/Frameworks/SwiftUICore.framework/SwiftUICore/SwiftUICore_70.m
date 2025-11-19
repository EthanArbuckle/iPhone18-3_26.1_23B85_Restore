unint64_t lazy protocol witness table accessor for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID()
{
  result = lazy protocol witness table cache variable for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID;
  if (!lazy protocol witness table cache variable for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID;
  if (!lazy protocol witness table cache variable for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID);
  }

  return result;
}

void type metadata accessor for Resolver?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t initializeWithCopy for ResolvedIDs.Key(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of ResolvedIDs.Key(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for ResolvedIDs.Key(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of ResolvedIDs.Key(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  outlined consume of ResolvedIDs.Key(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for ResolvedIDs.Key(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  outlined consume of ResolvedIDs.Key(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedIDs.Key(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 33))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 32) >> 1) & 0x3E | (*(a1 + 32) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ResolvedIDs.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t outlined copy of ResolverMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unsigned __int8 a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, unsigned int a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = a31;
  v68 = STACK[0x408] >> 61;
  if (v68 == 3)
  {
    v80 = STACK[0x3F0];
    v79 = STACK[0x3E8];
    v78 = STACK[0x3E0];
    v77 = STACK[0x3D8];
    v76 = STACK[0x3C0];
    v75 = STACK[0x3B8];
    v74 = STACK[0x3B0];
    v73 = STACK[0x3A8];
    outlined copy of GlassContainer.Entry.ModelID(a3, a4, a5, a6, a7);
    outlined copy of _Glass.Variant.Role(a8, a9);

    outlined copy of _Glass.Variant.Role(a21, a22);

    outlined copy of _Glass?(a31, a32, a33, a34);
    outlined copy of _Glass?(a37, a38, a39, a40);
    outlined copy of GlassContainer.Entry.ModelID(a46, a47, a48, a49, a50);
    outlined copy of _Glass.Variant.Role(a51, a52);

    outlined copy of _Glass.Variant.Role(a64, a65);

    outlined copy of _Glass?(v73, v74, v75, v76);
    a36 = v77;
    v70 = v78;
    v71 = v79;
    v72 = v80;
  }

  else
  {
    if (v68 != 2 && v68 != 1)
    {
      return result;
    }

    outlined copy of GlassContainer.Entry.ModelID(a2, a3, a4, a5, a6);
    outlined copy of _Glass.Variant.Role(a7, a8);

    outlined copy of _Glass.Variant.Role(a20, a21);

    outlined copy of _Glass?(a30, a31, a32, a33);
    v70 = a37;
    v71 = a38;
    v72 = a39;
  }

  return outlined copy of _Glass?(a36, v70, v71, v72);
}

uint64_t destroy for ResolverMessage(uint64_t a1)
{
  v17 = *(a1 + 464);
  v18 = *(a1 + 480);
  v15 = *(a1 + 432);
  v16 = *(a1 + 448);
  v13 = *(a1 + 400);
  v14 = *(a1 + 416);
  v11 = *(a1 + 368);
  v12 = *(a1 + 384);
  v9 = *(a1 + 336);
  v10 = *(a1 + 352);
  v7 = *(a1 + 304);
  v8 = *(a1 + 320);
  v5 = *(a1 + 272);
  v6 = *(a1 + 288);
  v3 = *(a1 + 240);
  v4 = *(a1 + 256);
  v2 = *(a1 + 208);
  return outlined consume of ResolverMessage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), v2, *(&v2 + 1), *(a1 + 224), *(a1 + 232), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1), v11, *(&v11 + 1), v12, SBYTE8(v12), v13, DWORD2(v13), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), *(a1 + 496));
}

uint64_t outlined consume of ResolverMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unsigned __int8 a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, unsigned int a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = a31;
  v68 = STACK[0x408] >> 61;
  if (v68 == 3)
  {
    v80 = STACK[0x3F0];
    v79 = STACK[0x3E8];
    v78 = STACK[0x3E0];
    v77 = STACK[0x3D8];
    v76 = STACK[0x3C0];
    v75 = STACK[0x3B8];
    v74 = STACK[0x3B0];
    v73 = STACK[0x3A8];
    outlined consume of GlassContainer.Entry.ModelID(a3, a4, a5, a6, a7);
    outlined consume of _Glass.Variant.Role(a8, a9);

    outlined consume of _Glass.Variant.Role(a21, a22);

    outlined consume of _Glass?(a31, a32, a33, a34);
    outlined consume of _Glass?(a37, a38, a39, a40);
    outlined consume of GlassContainer.Entry.ModelID(a46, a47, a48, a49, a50);
    outlined consume of _Glass.Variant.Role(a51, a52);

    outlined consume of _Glass.Variant.Role(a64, a65);

    outlined consume of _Glass?(v73, v74, v75, v76);
    a36 = v77;
    v70 = v78;
    v71 = v79;
    v72 = v80;
  }

  else
  {
    if (v68 != 2 && v68 != 1)
    {
      return result;
    }

    outlined consume of GlassContainer.Entry.ModelID(a2, a3, a4, a5, a6);
    outlined consume of _Glass.Variant.Role(a7, a8);

    outlined consume of _Glass.Variant.Role(a20, a21);

    outlined consume of _Glass?(a30, a31, a32, a33);
    v70 = a37;
    v71 = a38;
    v72 = a39;
  }

  return outlined consume of _Glass?(a36, v70, v71, v72);
}

uint64_t initializeWithCopy for ResolverMessage(uint64_t a1, uint64_t a2)
{
  v90 = *(a2 + 80);
  v91 = *(a2 + 72);
  v88 = *(a2 + 96);
  v89 = *(a2 + 88);
  v86 = *(a2 + 112);
  v87 = *(a2 + 104);
  v84 = *(a2 + 128);
  v85 = *(a2 + 120);
  v82 = *(a2 + 144);
  v83 = *(a2 + 136);
  v80 = *(a2 + 160);
  v81 = *(a2 + 152);
  v78 = *(a2 + 176);
  v79 = *(a2 + 168);
  v76 = *(a2 + 192);
  v77 = *(a2 + 184);
  v74 = *(a2 + 208);
  v75 = *(a2 + 200);
  v72 = *(a2 + 224);
  v73 = *(a2 + 216);
  v71 = *(a2 + 232);
  v70 = *(a2 + 240);
  v69 = *(a2 + 248);
  v68 = *(a2 + 256);
  v67 = *(a2 + 264);
  v66 = *(a2 + 272);
  v65 = *(a2 + 280);
  v64 = *(a2 + 288);
  v63 = *(a2 + 296);
  v62 = *(a2 + 304);
  v61 = *(a2 + 312);
  v60 = *(a2 + 320);
  v59 = *(a2 + 328);
  v58 = *(a2 + 336);
  v57 = *(a2 + 344);
  v56 = *(a2 + 352);
  v55 = *(a2 + 360);
  v54 = *(a2 + 368);
  v53 = *(a2 + 376);
  v52 = *(a2 + 384);
  v51 = *(a2 + 392);
  v50 = *(a2 + 400);
  v49 = *(a2 + 408);
  v48 = *(a2 + 416);
  v47 = *(a2 + 424);
  v46 = *(a2 + 432);
  v45 = *(a2 + 440);
  v44 = *(a2 + 448);
  v43 = *(a2 + 456);
  v42 = *(a2 + 464);
  v41 = *(a2 + 472);
  v13 = *(a2 + 480);
  v14 = *(a2 + 488);
  v15 = *(a2 + 496);
  v16 = *(a2 + 504);
  v17 = *(a2 + 512);
  v18 = *(a2 + 520);
  v19 = *(a2 + 528);
  v20 = *(a2 + 536);
  v21 = *(a2 + 544);
  v22 = *(a2 + 552);
  v23 = *(a2 + 560);
  v24 = *(a2 + 568);
  v25 = *(a2 + 576);
  v26 = *(a2 + 584);
  v27 = *(a2 + 592);
  v28 = *(a2 + 600);
  v29 = *(a2 + 608);
  v30 = *(a2 + 616);
  v31 = *(a2 + 624);
  v32 = *(a2 + 632);
  v33 = *(a2 + 640);
  v34 = *(a2 + 648);
  v35 = *(a2 + 656);
  v36 = *(a2 + 664);
  v37 = *(a2 + 672);
  v38 = *(a2 + 680);
  v39 = *(a2 + 688);
  v40 = *(a2 + 696);
  v3 = *(a2 + 64);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  outlined copy of ResolverMessage(*a2, v5, v6, v7, v8, v9, v10, v11, v3, v91, v90, v89, v88, v87, v86, v85, v84, v83, v82, v81, v80, v79, v78, v77, v76, v75, v74, v73, v72, v71, v70, v69, v68, v67, v66, v65, v64, v63, v62, v61, v60, v59, v58, v57, v56, v55, v54, v53, v52, v51, v50, v49, v48, v47, v46, v45, v44, v43, v42, v41, v13, v14, v15);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v3;
  *(a1 + 72) = v91;
  *(a1 + 80) = v90;
  *(a1 + 88) = v89;
  *(a1 + 96) = v88;
  *(a1 + 104) = v87;
  *(a1 + 112) = v86;
  *(a1 + 120) = v85;
  *(a1 + 128) = v84;
  *(a1 + 136) = v83;
  *(a1 + 144) = v82;
  *(a1 + 152) = v81;
  *(a1 + 160) = v80;
  *(a1 + 168) = v79;
  *(a1 + 176) = v78;
  *(a1 + 184) = v77;
  *(a1 + 192) = v76;
  *(a1 + 200) = v75;
  *(a1 + 208) = v74;
  *(a1 + 216) = v73;
  *(a1 + 224) = v72;
  *(a1 + 232) = v71;
  *(a1 + 240) = v70;
  *(a1 + 248) = v69;
  *(a1 + 256) = v68;
  *(a1 + 264) = v67;
  *(a1 + 272) = v66;
  *(a1 + 280) = v65;
  *(a1 + 288) = v64;
  *(a1 + 296) = v63;
  *(a1 + 304) = v62;
  *(a1 + 312) = v61;
  *(a1 + 320) = v60;
  *(a1 + 328) = v59;
  *(a1 + 336) = v58;
  *(a1 + 344) = v57;
  *(a1 + 352) = v56;
  *(a1 + 360) = v55;
  *(a1 + 368) = v54;
  *(a1 + 376) = v53;
  *(a1 + 384) = v52;
  *(a1 + 392) = v51;
  *(a1 + 400) = v50;
  *(a1 + 408) = v49;
  *(a1 + 416) = v48;
  *(a1 + 424) = v47;
  *(a1 + 432) = v46;
  *(a1 + 440) = v45;
  *(a1 + 448) = v44;
  *(a1 + 456) = v43;
  *(a1 + 464) = v42;
  *(a1 + 472) = v41;
  *(a1 + 480) = v13;
  *(a1 + 488) = v14;
  *(a1 + 496) = v15;
  *(a1 + 504) = v16;
  *(a1 + 512) = v17;
  *(a1 + 520) = v18;
  *(a1 + 528) = v19;
  *(a1 + 536) = v20;
  *(a1 + 544) = v21;
  *(a1 + 552) = v22;
  *(a1 + 560) = v23;
  *(a1 + 568) = v24;
  *(a1 + 576) = v25;
  *(a1 + 584) = v26;
  *(a1 + 592) = v27;
  *(a1 + 600) = v28;
  *(a1 + 608) = v29;
  *(a1 + 616) = v30;
  *(a1 + 624) = v31;
  *(a1 + 632) = v32;
  *(a1 + 640) = v33;
  *(a1 + 648) = v34;
  *(a1 + 656) = v35;
  *(a1 + 664) = v36;
  *(a1 + 672) = v37;
  *(a1 + 680) = v38;
  *(a1 + 688) = v39;
  *(a1 + 696) = v40;
  return a1;
}

uint64_t assignWithCopy for ResolverMessage(uint64_t a1, uint64_t a2)
{
  v60 = *(a2 + 72);
  v61 = *(a2 + 80);
  v63 = *(a2 + 88);
  v65 = *(a2 + 96);
  v66 = *(a2 + 104);
  v67 = *(a2 + 112);
  v69 = *(a2 + 120);
  v71 = *(a2 + 128);
  v72 = *(a2 + 136);
  v73 = *(a2 + 144);
  v74 = *(a2 + 152);
  v76 = *(a2 + 160);
  v77 = *(a2 + 168);
  v78 = *(a2 + 176);
  v79 = *(a2 + 184);
  v80 = *(a2 + 192);
  v81 = *(a2 + 200);
  v82 = *(a2 + 208);
  v83 = *(a2 + 216);
  v84 = *(a2 + 224);
  v85 = *(a2 + 232);
  v86 = *(a2 + 240);
  v87 = *(a2 + 248);
  v88 = *(a2 + 256);
  v89 = *(a2 + 264);
  v90 = *(a2 + 272);
  v91 = *(a2 + 280);
  v92 = *(a2 + 288);
  v93 = *(a2 + 296);
  v94 = *(a2 + 304);
  v95 = *(a2 + 312);
  v96 = *(a2 + 320);
  v97 = *(a2 + 328);
  v98 = *(a2 + 336);
  v99 = *(a2 + 344);
  v100 = *(a2 + 352);
  v101 = *(a2 + 360);
  v102 = *(a2 + 368);
  v103 = *(a2 + 376);
  v104 = *(a2 + 384);
  v105 = *(a2 + 392);
  v106 = *(a2 + 400);
  v107 = *(a2 + 408);
  v108 = *(a2 + 416);
  v109 = *(a2 + 424);
  v110 = *(a2 + 432);
  v111 = *(a2 + 440);
  v112 = *(a2 + 448);
  v113 = *(a2 + 456);
  v114 = *(a2 + 464);
  v115 = *(a2 + 472);
  v44 = *(a2 + 480);
  v45 = *(a2 + 488);
  v46 = *(a2 + 496);
  v116 = *(a2 + 504);
  v47 = *(a2 + 512);
  v48 = *(a2 + 528);
  v49 = *(a2 + 544);
  v50 = *(a2 + 560);
  v51 = *(a2 + 576);
  v52 = *(a2 + 592);
  v53 = *(a2 + 608);
  v54 = *(a2 + 624);
  v55 = *(a2 + 640);
  v56 = *(a2 + 656);
  v57 = *(a2 + 672);
  v58 = *(a2 + 688);
  v59 = *(a2 + 696);
  v3 = *(a2 + 64);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  outlined copy of ResolverMessage(*a2, v5, v6, v7, v8, v9, v10, v11, v3, v60, v61, v63, v65, v66, v67, v69, v71, v72, v73, v74, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v44, v45, v46);
  v12 = *a1;
  v13 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  v42 = *(a1 + 80);
  v43 = *(a1 + 64);
  *(a1 + 64) = v3;
  *(a1 + 72) = v60;
  *(a1 + 80) = v61;
  *(a1 + 88) = v63;
  v62 = *(a1 + 112);
  v64 = *(a1 + 96);
  *(a1 + 96) = v65;
  *(a1 + 104) = v66;
  *(a1 + 112) = v67;
  *(a1 + 120) = v69;
  v68 = *(a1 + 144);
  *v70 = *(a1 + 128);
  *(a1 + 128) = v71;
  *(a1 + 136) = v72;
  *(a1 + 144) = v73;
  *(a1 + 152) = v74;
  v20 = *(a1 + 176);
  v75 = *(a1 + 160);
  *(a1 + 160) = v76;
  *(a1 + 168) = v77;
  *(a1 + 176) = v78;
  *(a1 + 184) = v79;
  v21 = *(a1 + 192);
  v22 = *(a1 + 208);
  *(a1 + 192) = v80;
  *(a1 + 200) = v81;
  *(a1 + 208) = v82;
  *(a1 + 216) = v83;
  v23 = *(a1 + 224);
  v24 = *(a1 + 240);
  *(a1 + 224) = v84;
  *(a1 + 232) = v85;
  *(a1 + 240) = v86;
  *(a1 + 248) = v87;
  v25 = *(a1 + 256);
  v26 = *(a1 + 272);
  *(a1 + 256) = v88;
  *(a1 + 264) = v89;
  *(a1 + 272) = v90;
  *(a1 + 280) = v91;
  v27 = *(a1 + 288);
  v28 = *(a1 + 304);
  *(a1 + 288) = v92;
  *(a1 + 296) = v93;
  *(a1 + 304) = v94;
  *(a1 + 312) = v95;
  v29 = *(a1 + 320);
  v30 = *(a1 + 336);
  *(a1 + 320) = v96;
  *(a1 + 328) = v97;
  *(a1 + 336) = v98;
  *(a1 + 344) = v99;
  v31 = *(a1 + 352);
  v32 = *(a1 + 368);
  *(a1 + 352) = v100;
  *(a1 + 360) = v101;
  *(a1 + 368) = v102;
  *(a1 + 376) = v103;
  v33 = *(a1 + 384);
  v34 = *(a1 + 400);
  *(a1 + 384) = v104;
  *(a1 + 392) = v105;
  *(a1 + 400) = v106;
  *(a1 + 408) = v107;
  v35 = *(a1 + 416);
  v36 = *(a1 + 432);
  *(a1 + 416) = v108;
  *(a1 + 424) = v109;
  *(a1 + 432) = v110;
  *(a1 + 440) = v111;
  v37 = *(a1 + 448);
  v38 = *(a1 + 464);
  *(a1 + 448) = v112;
  *(a1 + 456) = v113;
  *(a1 + 464) = v114;
  *(a1 + 472) = v115;
  v39 = *(a1 + 480);
  v40 = *(a1 + 496);
  *(a1 + 480) = v44;
  *(a1 + 488) = v45;
  *(a1 + 496) = v46;
  *(a1 + 504) = v116;
  *(a1 + 512) = v47;
  *(a1 + 528) = v48;
  *(a1 + 544) = v49;
  *(a1 + 560) = v50;
  *(a1 + 576) = v51;
  *(a1 + 592) = v52;
  *(a1 + 608) = v53;
  *(a1 + 624) = v54;
  *(a1 + 640) = v55;
  *(a1 + 656) = v56;
  *(a1 + 672) = v57;
  *(a1 + 688) = v58;
  *(a1 + 696) = v59;
  outlined consume of ResolverMessage(v12, v13, v14, v15, v16, v17, v18, v19, v43, *(&v43 + 1), v42, *(&v42 + 1), v64, *(&v64 + 1), v62, *(&v62 + 1), v70[0], v70[1], v68, *(&v68 + 1), v75, DWORD2(v75), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, SBYTE8(v33), v34, DWORD2(v34), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), v40);
  return a1;
}

uint64_t assignWithTake for ResolverMessage(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v61 = *(a1 + 80);
  v62 = *(a1 + 64);
  v59 = *(a1 + 112);
  v60 = *(a1 + 96);
  v57 = *(a1 + 144);
  v58 = *(a1 + 128);
  v55 = *(a1 + 176);
  v56 = *(a1 + 160);
  v12 = *(a1 + 192);
  v13 = *(a1 + 208);
  v14 = *(a1 + 224);
  v15 = *(a1 + 240);
  v16 = *(a1 + 256);
  v17 = *(a1 + 272);
  v18 = *(a1 + 288);
  v19 = *(a1 + 304);
  v20 = *(a1 + 320);
  v21 = *(a1 + 336);
  v22 = *(a1 + 352);
  v23 = *(a1 + 368);
  v24 = *(a1 + 384);
  v25 = *(a1 + 400);
  v26 = *(a1 + 416);
  v27 = *(a1 + 432);
  v28 = *(a1 + 448);
  v29 = *(a1 + 464);
  v30 = *(a1 + 480);
  v31 = *(a1 + 496);
  v32 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v32;
  v33 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v33;
  v34 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v34;
  v35 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v35;
  v36 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v36;
  v37 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v37;
  v38 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v38;
  v39 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v39;
  v40 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v40;
  v41 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v41;
  v42 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v42;
  v43 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v43;
  v44 = *(a2 + 400);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = v44;
  v45 = *(a2 + 432);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = v45;
  v46 = *(a2 + 464);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = v46;
  v47 = *(a2 + 496);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = v47;
  v48 = *(a2 + 528);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 528) = v48;
  v49 = *(a2 + 560);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = v49;
  v50 = *(a2 + 592);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = v50;
  v51 = *(a2 + 624);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = v51;
  v52 = *(a2 + 656);
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 656) = v52;
  *(a1 + 672) = *(a2 + 672);
  v53 = *(a2 + 688);
  LODWORD(a2) = *(a2 + 696);
  *(a1 + 688) = v53;
  *(a1 + 696) = a2;
  outlined consume of ResolverMessage(v4, v5, v6, v7, v8, v9, v10, v11, v62, *(&v62 + 1), v61, *(&v61 + 1), v60, *(&v60 + 1), v59, *(&v59 + 1), v58, *(&v58 + 1), v57, *(&v57 + 1), v56, DWORD2(v56), v55, *(&v55 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, SBYTE8(v24), v25, DWORD2(v25), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolverMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 700))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 168) << 14) & 0xFFC00000 | (*(a1 + 64) >> 8) & 0x3FFFFF;
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

void storeEnumTagSinglePayload for ResolverMessage(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 696) = 0;
    *(a1 + 680) = 0u;
    *(a1 + 664) = 0u;
    *(a1 + 648) = 0u;
    *(a1 + 632) = 0u;
    *(a1 + 616) = 0u;
    *(a1 + 600) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 700) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      v3 = -a2;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = (v3 & 0x3FFFFF) << 8;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = (v3 >> 14) & 0x3FF00;
      bzero((a1 + 176), 0x20CuLL);
      return;
    }

    *(a1 + 700) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

int8x16_t destructiveInjectEnumTag for ResolverMessage(uint64_t a1, uint64_t a2)
{
  if (a2 < 7)
  {
    v4 = *(a1 + 352);
    v5 = *(a1 + 624);
    v6 = *(a1 + 168) & 0xFFFFFFFFC00000FFLL;
    v7 = *(a1 + 328) & 0xFFFFFFFF000000FFLL;
    v8 = *(a1 + 392) & 3;
    v9 = *(a1 + 440) & 3;
    v10 = *(a1 + 480) & 0xFFFFFFFFFFFFFF8;
    v11 = *(a1 + 496) & 0x101;
    v12 = *(a1 + 544) & 3;
    v13 = *(a1 + 560) & 1;
    v14 = *(a1 + 672) & 0xFFFFFFFF000000FFLL;
    v15 = *(a1 + 680) & 1 | (a2 << 61);
    *(a1 + 64) &= 0xFFFFFFFFC00000FFLL;
    *(a1 + 168) = v6;
    *(a1 + 328) = v7;
    *(a1 + 352) = v4;
    *(a1 + 392) = v8;
    *(a1 + 408) = vandq_s8(*(a1 + 408), xmmword_18DDAA060);
    *(a1 + 440) = v9;
    *(a1 + 480) = v10;
    *(a1 + 496) = v11;
    result = vandq_s8(*(a1 + 512), xmmword_18DDAA060);
    *(a1 + 512) = result;
    *(a1 + 544) = v12;
    *(a1 + 560) = v13;
    *(a1 + 624) = v5;
    *(a1 + 672) = v14;
    *(a1 + 680) = v15;
  }

  else
  {
    *a1 = (a2 - 7);
    bzero((a1 + 8), 0x2A0uLL);
    *(a1 + 680) = 0xE000000000000000;
    *(a1 + 688) = 0;
    *(a1 + 696) = 0;
  }

  return result;
}

uint64_t destroy for Resolver.Context()
{
}

uint64_t initializeWithCopy for Resolver.Context(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 84) = *(a2 + 84);
  v7 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v7;
  *(a1 + 160) = *(a2 + 160);

  return a1;
}

uint64_t assignWithCopy for Resolver.Context(uint64_t a1, uint64_t a2)
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
  v4 = *(a2 + 84);
  v5 = *(a2 + 100);
  v6 = *(a2 + 116);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 116) = v6;
  *(a1 + 100) = v5;
  *(a1 + 84) = v4;
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

  return a1;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t assignWithTake for Resolver.Context(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 129) = *(a2 + 129);

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 160) = *(a2 + 160);

  return a1;
}

uint64_t getEnumTagSinglePayload for Resolver.Context(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t storeEnumTagSinglePayload for Resolver.Context(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for Resolver()
{
}

uint64_t initializeWithCopy for Resolver(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;
  v5 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v5;
  v6 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v6;
  v7 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v7;
  v8 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v8;
  v14 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v14;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  v9 = *(a2 + 196);
  v10 = *(a2 + 212);
  v11 = *(a2 + 228);
  *(a1 + 241) = *(a2 + 241);
  *(a1 + 228) = v11;
  *(a1 + 212) = v10;
  *(a1 + 196) = v9;
  v12 = *(a2 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v12;
  *(a1 + 272) = *(a2 + 272);

  return a1;
}

uint64_t assignWithCopy for Resolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
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

  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v4 = *(a2 + 196);
  v5 = *(a2 + 212);
  v6 = *(a2 + 228);
  *(a1 + 241) = *(a2 + 241);
  *(a1 + 228) = v6;
  *(a1 + 212) = v5;
  *(a1 + 196) = v4;
  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);

  *(a1 + 272) = *(a2 + 272);

  return a1;
}

uint64_t assignWithTake for Resolver(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 241) = *(a2 + 241);

  *(a1 + 256) = *(a2 + 256);

  *(a1 + 272) = *(a2 + 272);

  return a1;
}

uint64_t getEnumTagSinglePayload for Resolver(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t storeEnumTagSinglePayload for Resolver(uint64_t result, int a2, int a3)
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for GlassContainerResolvedTransaction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for GlassContainerResolvedTransaction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for GlassContainerResolvedTransaction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainerResolvedTransaction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassContainerResolvedTransaction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for GlassContainerResolvedStorage(uint64_t a1)
{

  result = *(a1 + 72);
  if (result)
  {
  }

  return result;
}

uint64_t initializeWithCopy for GlassContainerResolvedStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  v8 = (a2 + 72);
  v7 = *(a2 + 72);

  if (v7)
  {
    v10 = *(a2 + 80);
    v9 = *(a2 + 88);
    *(a1 + 72) = v7;
    *(a1 + 80) = v10;
    *(a1 + 88) = v9;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    v11 = *(a2 + 152);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = v11;
    v12 = *(a2 + 168);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = v12;
    v13 = *(a2 + 184);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = v13;
    v14 = *(a2 + 200);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = v14;
    v15 = *(a2 + 216);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = v15;
    v21 = *(a2 + 232);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = v21;
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    v16 = *(a2 + 268);
    v17 = *(a2 + 284);
    v18 = *(a2 + 300);
    *(a1 + 313) = *(a2 + 313);
    *(a1 + 284) = v17;
    *(a1 + 300) = v18;
    *(a1 + 268) = v16;
    v19 = *(a2 + 336);
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 336) = v19;
    *(a1 + 344) = *(a2 + 344);
  }

  else
  {
    memcpy((a1 + 72), v8, 0x118uLL);
  }

  return a1;
}

uint64_t assignWithCopy for GlassContainerResolvedStorage(uint64_t a1, uint64_t a2)
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

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  v4 = *(a2 + 72);
  if (!*(a1 + 72))
  {
    if (v4)
    {
      *(a1 + 72) = v4;
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 97) = *(a2 + 97);
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
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
      v8 = *(a2 + 268);
      v9 = *(a2 + 284);
      v10 = *(a2 + 300);
      *(a1 + 313) = *(a2 + 313);
      *(a1 + 284) = v9;
      *(a1 + 300) = v10;
      *(a1 + 268) = v8;
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 344) = *(a2 + 344);

      return a1;
    }

LABEL_7:
    memcpy((a1 + 72), (a2 + 72), 0x118uLL);
    return a1;
  }

  if (!v4)
  {
    outlined destroy of Resolver(a1 + 72);
    goto LABEL_7;
  }

  *(a1 + 72) = v4;

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
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
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  v5 = *(a2 + 268);
  v6 = *(a2 + 284);
  v7 = *(a2 + 300);
  *(a1 + 313) = *(a2 + 313);
  *(a1 + 284) = v6;
  *(a1 + 300) = v7;
  *(a1 + 268) = v5;
  *(a1 + 328) = *(a2 + 328);

  *(a1 + 336) = *(a2 + 336);

  *(a1 + 344) = *(a2 + 344);

  return a1;
}

uint64_t assignWithTake for GlassContainerResolvedStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  v4 = (a1 + 72);
  v5 = *(a2 + 72);
  if (!*(a1 + 72))
  {
    goto LABEL_5;
  }

  if (!v5)
  {
    outlined destroy of Resolver(v4);
    v4 = (a1 + 72);
LABEL_5:
    memcpy(v4, (a2 + 72), 0x118uLL);
    return a1;
  }

  *(a1 + 72) = v5;

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
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
  *(a1 + 264) = *(a2 + 264);
  v6 = *(a2 + 284);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 284) = v6;
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 313) = *(a2 + 313);
  *(a1 + 328) = *(a2 + 328);

  *(a1 + 336) = *(a2 + 336);

  *(a1 + 344) = *(a2 + 344);

  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainerResolvedStorage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
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

uint64_t storeEnumTagSinglePayload for GlassContainerResolvedStorage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for ResolvedStorageData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for ResolvedStorageData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedStorageData(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t storeEnumTagSinglePayload for ResolvedStorageData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedIDs.Key and conformance ResolvedIDs.Key()
{
  result = lazy protocol witness table cache variable for type ResolvedIDs.Key and conformance ResolvedIDs.Key;
  if (!lazy protocol witness table cache variable for type ResolvedIDs.Key and conformance ResolvedIDs.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedIDs.Key and conformance ResolvedIDs.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedIDs.Key and conformance ResolvedIDs.Key;
  if (!lazy protocol witness table cache variable for type ResolvedIDs.Key and conformance ResolvedIDs.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedIDs.Key and conformance ResolvedIDs.Key);
  }

  return result;
}

uint64_t destroy for ResolvedIDs()
{
}

uint64_t initializeWithCopy for ResolvedIDs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithCopy for ResolvedIDs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for ResolvedIDs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

char *DiffResult.movesTranslatedToArraySemantics()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexSet();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 16);
  v7(v6, v1, v2, v4);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
  v8 = dispatch thunk of Sequence._copyToContiguousArray()();
  v9 = type metadata accessor for DiffResult(0);
  v10 = *(v1 + *(v9 + 20));
  (v7)(v6, v1 + *(v9 + 24), v2);
  v11 = dispatch thunk of Sequence._copyToContiguousArray()();
  v12 = specialized static DiffResult.translateMovesToArraySemantics(sortedRemovals:moves:sortedInsertions:)(v8, v10, v11);

  return v12;
}

unint64_t lazy protocol witness table accessor for type IndexSet and conformance IndexSet()
{
  result = lazy protocol witness table cache variable for type IndexSet and conformance IndexSet;
  if (!lazy protocol witness table cache variable for type IndexSet and conformance IndexSet)
  {
    type metadata accessor for IndexSet();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet and conformance IndexSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet and conformance IndexSet;
  if (!lazy protocol witness table cache variable for type IndexSet and conformance IndexSet)
  {
    type metadata accessor for IndexSet();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet and conformance IndexSet);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = (v8 + 16);
    v86 = *(v8 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v8 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = 32 * v9;
      v12 = (*a3 + 32 * v9);
      v15 = *v12;
      v14 = v12 + 8;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 4;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 32 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v28 + v11);
            v24 = v28 + v21;
            v25 = *v23;
            v26 = v23[1];
            v27 = *(v24 - 16);
            *v23 = *(v24 - 32);
            v23[1] = v27;
            *(v24 - 32) = v25;
            *(v24 - 16) = v26;
          }

          ++v22;
          --v20;
          v21 -= 32;
          v11 += 32;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v39 = *(v8 + 24);
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v40;
    v41 = v8 + 32;
    v42 = (v8 + 32 + 16 * v5);
    *v42 = v9;
    v42[1] = v7;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = *(v8 + 32);
          v44 = *(v8 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v8 + 16 * v40);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v41 + 16 * v5);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v8 + 16 * v40);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v41 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v40)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v41 + 16 * (v5 - 1));
        v81 = *v80;
        v82 = (v41 + 16 * v5);
        v83 = v82[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v8 + 16);
        if (v5 >= v84)
        {
          goto LABEL_101;
        }

        v40 = v84 - 1;
        result = memmove((v41 + 16 * v5), v82 + 2, 16 * (v84 - 1 - v5));
        *(v8 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v41 + 16 * v40;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v8 + 16 * v40);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v41 + 16 * v5);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7 - 32;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *v34)
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 56);
    v36 = *(v34 + 40);
    v37 = *(v34 + 16);
    *(v34 + 32) = *v34;
    *(v34 + 48) = v37;
    *v34 = v32;
    *(v34 + 8) = v36;
    *(v34 + 24) = v35;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v84 = (v8 + 16);
    v85 = *(v8 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v8 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v86), (*a3 + 32 * *v88), (*a3 + 32 * v89), v5);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 8);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 72);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = (v10 < v13) ^ (v17 >= v16);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 32 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v11);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = v22[1];
            v26 = *(v23 - 16);
            *v22 = *(v23 - 32);
            v22[1] = v26;
            *(v23 - 32) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 32;
          v11 += 32;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v38 = *(v8 + 24);
    v39 = v5 + 1;
    if (v5 >= v38 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v39;
    v40 = v8 + 32;
    v41 = (v8 + 32 + 16 * v5);
    *v41 = v9;
    v41[1] = v7;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v42 = *(v8 + 32);
          v43 = *(v8 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v8 + 16 * v39);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v40 + 16 * v5);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v5 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v8 + 16 * v39);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v40 + 16 * v5);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v40 + 16 * (v5 - 1));
        v80 = *v79;
        v81 = (v40 + 16 * v5);
        v82 = v81[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v79), (*a3 + 32 * *v81), (*a3 + 32 * v82), v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v8 + 16);
        if (v5 >= v83)
        {
          goto LABEL_101;
        }

        v39 = v83 - 1;
        result = memmove((v40 + 16 * v5), v81 + 2, 16 * (v83 - 1 - v5));
        *(v8 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v40 + 16 * v39;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v8 + 16 * v39);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v40 + 16 * v5);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v5 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v91;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v7;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 32 * v7 + 8);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *(v33 - 24))
    {
LABEL_29:
      ++v7;
      v29 += 32;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = *(v33 + 16);
    v36 = *(v33 - 16);
    *v33 = *(v33 - 32);
    *(v33 + 16) = v36;
    *(v33 - 24) = v31;
    *(v33 - 16) = v35;
    *(v33 - 32) = v34;
    v33 -= 32;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v6 = v4;
  v97 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v97;
    if (!*v97)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    v89 = (v9 + 16);
    v90 = *(v9 + 16);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = (v9 + 16 * v90);
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v91), (*a3 + 32 * *v93), (*a3 + 32 * v94), v5);
        if (v6)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        v91[1] = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v96 = a4;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *(*a3 + 32 * v8 + 8);
      v12 = *a3 + 32 * v10;
      v13 = *(v12 + 8);
      v14 = v10 + 2;
      v15 = (v12 + 72);
      v16 = v11;
      while (v7 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = (v11 < v13) ^ (v17 >= v16);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v8 = v14 - 1;
          if (v11 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v7;
      if (v11 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_119;
      }

      if (v10 < v8)
      {
        v19 = 32 * v8 - 8;
        v20 = 32 * v10 + 28;
        v21 = v8;
        v22 = v10;
        do
        {
          if (v22 != --v21)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v30 + v20);
            v24 = *(v30 + v20 - 28);
            v25 = v30 + v19;
            v26 = *(v23 - 4);
            v27 = *v23;
            v28 = *(v23 - 5);
            v29 = *(v25 - 8);
            *(v23 - 7) = *(v25 - 24);
            *(v23 - 3) = v29;
            *(v25 - 24) = v24;
            *(v25 - 16) = v28;
            *v25 = v26;
            *(v25 + 4) = v27;
          }

          ++v22;
          v19 -= 32;
          v20 += 32;
        }

        while (v22 < v21);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v7)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_118;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_120;
        }

        if (v10 + a4 < v7)
        {
          v7 = v10 + a4;
        }

        if (v7 < v10)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v8 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v5 = *(v9 + 16);
    v43 = *(v9 + 24);
    v44 = v5 + 1;
    if (v5 >= v43 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v5 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v44;
    v45 = v9 + 32;
    v46 = (v9 + 32 + 16 * v5);
    *v46 = v10;
    v46[1] = v8;
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v47 = *(v9 + 32);
          v48 = *(v9 + 40);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = (v9 + 16 * v44);
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = (v45 + 16 * v5);
          v71 = *v69;
          v70 = v69[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v5 = v44 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v44 < 2)
        {
          goto LABEL_112;
        }

        v73 = (v9 + 16 * v44);
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = (v45 + 16 * v5);
        v78 = *v76;
        v77 = v76[1];
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v44)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = (v45 + 16 * (v5 - 1));
        v85 = *v84;
        v86 = (v45 + 16 * v5);
        v87 = v86[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v84), (*a3 + 32 * *v86), (*a3 + 32 * v87), v98);
        if (v6)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v5 > *(v9 + 16))
        {
          goto LABEL_100;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *(v9 + 16);
        if (v5 >= v88)
        {
          goto LABEL_101;
        }

        v44 = v88 - 1;
        result = memmove((v45 + 16 * v5), v86 + 2, 16 * (v88 - 1 - v5));
        *(v9 + 16) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = v45 + 16 * v44;
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = (v9 + 16 * v44);
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = (v45 + 16 * v5);
        v82 = *v80;
        v81 = v80[1];
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v5 = v44 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    a4 = v96;
    if (v8 >= v7)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v8 - 32;
  v33 = v10 - v8;
LABEL_30:
  v34 = *(v31 + 32 * v8 + 8);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (v34 >= *(v36 + 8))
    {
LABEL_29:
      ++v8;
      v32 += 32;
      --v33;
      if (v8 != v7)
      {
        goto LABEL_30;
      }

      v8 = v7;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v37 = *(v36 + 32);
    v38 = *(v36 + 48);
    v39 = *(v36 + 56);
    v40 = *(v36 + 60);
    v41 = *(v36 + 16);
    *(v36 + 32) = *v36;
    *(v36 + 48) = v41;
    *v36 = v37;
    *(v36 + 8) = v34;
    *(v36 + 16) = v38;
    *(v36 + 24) = v39;
    *(v36 + 28) = v40;
    v36 -= 32;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v91 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v83 = (v7 + 16);
    v84 = *(v7 + 16);
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = (v7 + 16 * v84);
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v85), (*a3 + 24 * *v87), *a3 + 24 * v88, v92);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_114;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_115;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_116;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v90 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 0;
        v19 = 24 * v6;
        v20 = v8;
        do
        {
          if (v20 != v6 + v18 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = v26 + v19;
            v23 = *(v21 + 2);
            v24 = *v21;
            v25 = *(v22 - 8);
            *v21 = *(v22 - 24);
            *(v21 + 2) = v25;
            *(v22 - 24) = v24;
            *(v22 - 8) = v23;
          }

          ++v20;
          --v18;
          v19 -= 24;
          v10 += 24;
        }

        while (v20 < v6 + v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v36 = *(v7 + 16);
    v35 = *(v7 + 24);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v37;
    v38 = v7 + 32;
    v39 = (v7 + 32 + 16 * v36);
    *v39 = v8;
    v39[1] = v6;
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v7 + 32);
          v42 = *(v7 + 40);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_57:
          if (v44)
          {
            goto LABEL_104;
          }

          v57 = (v7 + 16 * v37);
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_106;
          }

          v63 = (v38 + 16 * v40);
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_111;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v67 = (v7 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_72:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = (v38 + 16 * v40);
        v72 = *v70;
        v71 = v70[1];
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_110;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v78 = (v38 + 16 * (v40 - 1));
        v79 = *v78;
        v80 = (v38 + 16 * v40);
        v81 = v80[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v78), (*a3 + 24 * *v80), *a3 + 24 * v81, v92);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_99;
        }

        if (v40 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *(v7 + 16);
        if (v40 >= v82)
        {
          goto LABEL_101;
        }

        v37 = v82 - 1;
        result = memmove((v38 + 16 * v40), v80 + 2, 16 * (v82 - 1 - v40));
        *(v7 + 16) = v82 - 1;
        if (v82 <= 2)
        {
          goto LABEL_3;
        }
      }

      v45 = v38 + 16 * v37;
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_102;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_103;
      }

      v52 = (v7 + 16 * v37);
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_105;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_107;
      }

      if (v56 >= v48)
      {
        v74 = (v38 + 16 * v40);
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v90;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 8))
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 24);
    *(v32 + 16) = *(v32 - 8);
    *(v32 - 8) = v30;
    *(v32 - 24) = v33;
    v32 -= 24;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v90 = *v90;
    if (!v90)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    v82 = v9 + 16;
    v83 = *(v9 + 2);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v9[16 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v90);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_115;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_116;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_117;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 16 * v8 + 8);
      v12 = 16 * v10;
      v13 = *a3 + 16 * v10;
      v14 = *(v13 + 8);
      v15 = v10 + 2;
      v16 = (v13 + 40);
      while (v6 != v15)
      {
        v17 = *v16 >= *(v16 - 16);
        ++v15;
        v16 += 16;
        if ((((v11 < v14) ^ v17) & 1) == 0)
        {
          v8 = v15 - 1;
          if (v11 >= v14)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v14)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_120;
      }

      if (v10 < v8)
      {
        v18 = 16 * v8 - 16;
        v19 = v8;
        v20 = v10;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_126;
            }

            v23 = (v22 + v12);
            v24 = (v22 + v18);
            v25 = *(v22 + v12);
            v26 = *(v22 + v12 + 8);
            if (v12 != v18 || v23 >= v24 + 1)
            {
              *v23 = *v24;
            }

            v21 = v22 + v18;
            *v21 = v25;
            *(v21 + 8) = v26;
          }

          ++v20;
          v18 -= 16;
          v12 += 16;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_119;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_121;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v8 < v10)
    {
      goto LABEL_118;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v36 = *(v9 + 2);
    v35 = *(v9 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v37;
    v38 = &v9[16 * v36];
    *(v38 + 4) = v10;
    *(v38 + 5) = v8;
    v39 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v9 + 4);
          v42 = *(v9 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_60:
          if (v44)
          {
            goto LABEL_106;
          }

          v57 = &v9[16 * v37];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_109;
          }

          v63 = &v9[16 * v40 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_113;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v67 = &v9[16 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_74:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = &v9[16 * v40];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_111;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_81:
        v78 = v40 - 1;
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v79 = *&v9[16 * v78 + 32];
        v80 = *&v9[16 * v40 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v79), (*a3 + 16 * *&v9[16 * v40 + 32]), (*a3 + 16 * v80), v39);
        if (v4)
        {
        }

        if (v80 < v79)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v78 >= *(v9 + 2))
        {
          goto LABEL_103;
        }

        v81 = &v9[16 * v78];
        *(v81 + 4) = v79;
        *(v81 + 5) = v80;
        result = specialized Array.remove(at:)(v40);
        v37 = *(v9 + 2);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v9[16 * v37 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_104;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_105;
      }

      v52 = &v9[16 * v37];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_107;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_110;
      }

      if (v56 >= v48)
      {
        v74 = &v9[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_114;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_91;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v8;
  v29 = v10 - v8;
LABEL_33:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 8);
    if (v32 >= *(v31 - 8))
    {
LABEL_32:
      ++v8;
      v28 += 16;
      --v29;
      if (v8 != v6)
      {
        goto LABEL_33;
      }

      v8 = v6;
      goto LABEL_40;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v31;
    *v31 = *(v31 - 16);
    *(v31 - 16) = v33;
    *(v31 - 8) = v32;
    v31 -= 16;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

{
  v101 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_126:
    v4 = *v101;
    if (*v101)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_159;
      }

      goto LABEL_128;
    }

    goto LABEL_164;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v8 = v6 + 1;
  if (v6 + 1 >= v5)
  {
    goto LABEL_20;
  }

  v9 = *(*(*a3 + 8 * v8) + 196);
  v10 = v9 - *(*(*a3 + 8 * v6) + 196);
  v11 = v6 + 2;
  do
  {
    if (v5 == v11)
    {
      v8 = v5;
      if (v10 < 0)
      {
        goto LABEL_11;
      }

LABEL_20:
      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_154;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_155;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
            goto LABEL_156;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (*(v23 + 196) - *(*v25 + 196) >= 0)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_158;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_151;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v29 = *(v7 + 2);
      v28 = *(v7 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v30;
      v31 = &v7[16 * v29];
      *(v31 + 4) = v6;
      *(v31 + 5) = v8;
      v103 = v8;
      v32 = *v101;
      if (!*v101)
      {
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v34 = *(v7 + 4);
            v35 = *(v7 + 5);
            v44 = __OFSUB__(v35, v34);
            v36 = v35 - v34;
            v37 = v44;
LABEL_57:
            if (v37)
            {
              goto LABEL_142;
            }

            v50 = &v7[16 * v30];
            v52 = *v50;
            v51 = *(v50 + 1);
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_145;
            }

            v56 = &v7[16 * v33 + 32];
            v58 = *v56;
            v57 = *(v56 + 1);
            v44 = __OFSUB__(v57, v58);
            v59 = v57 - v58;
            if (v44)
            {
              goto LABEL_148;
            }

            if (__OFADD__(v54, v59))
            {
              goto LABEL_149;
            }

            if (v54 + v59 >= v36)
            {
              if (v36 < v59)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v60 = &v7[16 * v30];
          v62 = *v60;
          v61 = *(v60 + 1);
          v44 = __OFSUB__(v61, v62);
          v54 = v61 - v62;
          v55 = v44;
LABEL_71:
          if (v55)
          {
            goto LABEL_144;
          }

          v63 = &v7[16 * v33];
          v65 = *(v63 + 4);
          v64 = *(v63 + 5);
          v44 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v44)
          {
            goto LABEL_147;
          }

          if (v66 < v54)
          {
            goto LABEL_3;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
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
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          v71 = *a3;
          if (!*a3)
          {
            __break(1u);
LABEL_161:
            __break(1u);
            goto LABEL_162;
          }

          v109 = v7;
          v105 = v33 - 1;
          v106 = *&v7[16 * v33 + 16];
          v107 = v33;
          v72 = *&v7[16 * v33 + 32];
          v73 = *&v7[16 * v33 + 40];
          v7 = (8 * v106);
          v74 = (v71 + 8 * v106);
          v75 = 8 * v72;
          v76 = (v71 + 8 * v72);
          v108 = v73;
          v77 = 8 * v73;
          v78 = (v71 + 8 * v73);
          v79 = 8 * v72 - 8 * v106;
          v80 = 8 * v73 - 8 * v72;
          if (v79 >= v80)
          {
            if (v76 != v32 || v78 <= v32)
            {
              memmove(v32, (v71 + 8 * v72), 8 * v73 - 8 * v72);
            }

            v81 = &v32[v80];
            v86 = v107;
            if (v80 < 1 || v75 <= v7)
            {
              v84 = v32;
              v89 = v76;
              v83 = v108;
              v4 = v109;
              v85 = v106;
            }

            else
            {
              v83 = v108;
              v4 = v109;
              v85 = v106;
              do
              {
                v89 = v76 - 8;
                v78 -= 8;
                v90 = v81;
                while (1)
                {
                  v91 = v78 + 8;
                  v93 = *(v90 - 8);
                  v90 -= 8;
                  v92 = v93;
                  if (*(v93 + 196) - *(*v89 + 196) < 0)
                  {
                    break;
                  }

                  if (v91 != v81)
                  {
                    *v78 = v92;
                  }

                  v78 -= 8;
                  v81 = v90;
                  if (v90 <= v32)
                  {
                    v81 = v90;
                    v84 = v32;
                    v89 = v76;
                    goto LABEL_116;
                  }
                }

                if (v91 != v76)
                {
                  *v78 = *v89;
                }

                v84 = v32;
                if (v81 <= v32)
                {
                  break;
                }

                v76 -= 8;
              }

              while (v74 < v89);
            }
          }

          else
          {
            if (v74 != v32 || v76 <= v32)
            {
              memmove(v32, (v71 + 8 * v106), 8 * v72 - 8 * v106);
            }

            v81 = &v32[v79];
            v82 = v79 < 1;
            v83 = v108;
            v4 = v109;
            if (!v82 && v77 > v75)
            {
              v84 = v32;
              v85 = v106;
              v86 = v107;
              while (1)
              {
                v87 = *v76;
                if (*(*v76 + 196) - *(*v84 + 196) >= 0)
                {
                  break;
                }

                v88 = v74 == v76;
                v76 += 8;
                if (!v88)
                {
                  goto LABEL_89;
                }

LABEL_90:
                v74 += 8;
                if (v84 >= v81 || v76 >= v78)
                {
                  v89 = v74;
                  goto LABEL_116;
                }
              }

              v87 = *v84;
              v88 = v74 == v84;
              v84 += 8;
              if (v88)
              {
                goto LABEL_90;
              }

LABEL_89:
              *v74 = v87;
              goto LABEL_90;
            }

            v84 = v32;
            v89 = v74;
            v85 = v106;
            v86 = v107;
          }

LABEL_116:
          v94 = v81 - v84 + (v81 - v84 < 0 ? 7uLL : 0);
          if (v89 != v84 || v89 >= &v84[v94 & 0xFFFFFFFFFFFFFFF8])
          {
            memmove(v89, v84, 8 * (v94 >> 3));
          }

          if (v83 < v85)
          {
            goto LABEL_138;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          }

          if (v86 > *(v4 + 2))
          {
            goto LABEL_139;
          }

          v95 = &v4[16 * v105];
          *(v95 + 4) = v85;
          *(v95 + 5) = v83;
          result = specialized Array.remove(at:)(v86);
          v7 = v4;
          v30 = *(v4 + 2);
          if (v30 <= 1)
          {
            goto LABEL_3;
          }
        }

        v38 = &v7[16 * v30 + 32];
        v39 = *(v38 - 64);
        v40 = *(v38 - 56);
        v44 = __OFSUB__(v40, v39);
        v41 = v40 - v39;
        if (v44)
        {
          goto LABEL_140;
        }

        v43 = *(v38 - 48);
        v42 = *(v38 - 40);
        v44 = __OFSUB__(v42, v43);
        v36 = v42 - v43;
        v37 = v44;
        if (v44)
        {
          goto LABEL_141;
        }

        v45 = &v7[16 * v30];
        v47 = *v45;
        v46 = *(v45 + 1);
        v44 = __OFSUB__(v46, v47);
        v48 = v46 - v47;
        if (v44)
        {
          goto LABEL_143;
        }

        v44 = __OFADD__(v36, v48);
        v49 = v36 + v48;
        if (v44)
        {
          goto LABEL_146;
        }

        if (v49 >= v41)
        {
          v67 = &v7[16 * v33 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v44 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v44)
          {
            goto LABEL_150;
          }

          if (v36 < v70)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v6 = v103;
      v5 = a3[1];
      if (v103 >= v5)
      {
        goto LABEL_126;
      }

      goto LABEL_4;
    }

    v12 = *(*(*a3 + 8 * v11) + 196);
    v13 = (v12 - v9) ^ v10;
    ++v11;
    v9 = v12;
  }

  while ((v13 & 0x80000000) == 0);
  v8 = v11 - 1;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (v8 >= v6)
  {
    if (v6 < v8)
    {
      v14 = 8 * v8 - 8;
      v15 = 8 * v6;
      v16 = v8;
      v17 = v6;
      do
      {
        if (v17 != --v16)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_161;
          }

          v18 = *(v19 + v15);
          *(v19 + v15) = *(v19 + v14);
          *(v19 + v14) = v18;
        }

        ++v17;
        v14 -= 8;
        v15 += 8;
      }

      while (v17 < v16);
      v5 = a3[1];
    }

    goto LABEL_20;
  }

LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  v7 = result;
LABEL_128:
  v96 = *(v7 + 2);
  if (v96 < 2)
  {
  }

  while (*a3)
  {
    v97 = *&v7[16 * v96];
    v98 = *&v7[16 * v96 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v97), (*a3 + 8 * *&v7[16 * v96 + 16]), (*a3 + 8 * v98), v4);
    if (v102)
    {
    }

    if (v98 < v97)
    {
      goto LABEL_152;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    }

    if (v96 - 2 >= *(v7 + 2))
    {
      goto LABEL_153;
    }

    v99 = &v7[16 * v96];
    *v99 = v97;
    *(v99 + 1) = v98;
    result = specialized Array.remove(at:)(v96 - 1);
    v96 = *(v7 + 2);
    if (v96 <= 1)
    {
    }
  }

LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = v5 + 32;
      v21 = *(v19 - 4);
      v19 -= 32;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v24 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v6 + 1) < *(v4 + 1))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 32;
    do
    {
      v18 = v5 + 32;
      if (*(v14 - 3) < *(v6 - 3))
      {
        v21 = v6 - 32;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 32;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v23 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 16 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[8] < v4[8])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 16;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 16;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 16 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v19 = v5 + 16;
      if (*(v15 - 8) < *(v6 - 8))
      {
        v21 = v6 - 16;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 16, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 16;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 16;
      v15 -= 16;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= &v4[v22])
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6;
      if (*(*v6 + 196) - *(*v4 + 196) >= 0)
      {
        break;
      }

      v15 = v7 == v6;
      v6 += 8;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = *v4;
    v15 = v7 == v4;
    v4 += 8;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 196) - *(*v17 + 196) < 0)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *specialized static DiffResult.translateMovesToArraySemantics(sortedRemovals:moves:sortedInsertions:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v72 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v8 = v72;
    v9 = (a2 + 32);
    v10 = *(v72 + 2);
    v11 = 32 * v10;
    do
    {
      v12 = *v9;
      v72 = v8;
      v13 = *(v8 + 3);
      v14 = v10 + 1;
      if (v10 >= v13 >> 1)
      {
        v71 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v10 + 1, 1);
        v12 = v71;
        v8 = v72;
      }

      *(v8 + 2) = v14;
      v15 = &v8[v11];
      *(v15 + 2) = v12;
      *(v15 + 6) = 0;
      *(v15 + 7) = 0;
      v11 += 32;
      ++v9;
      v10 = v14;
      --v3;
    }

    while (v3);
    v72 = v8;

    specialized MutableCollection<>.sort(by:)(&v72);

    v16 = v72;
    v73 = v72;
    i = *(v72 + 2);
    if (!i)
    {
      goto LABEL_33;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_117;
    }

    while (1)
    {
      v18 = 0;
      v19 = 0;
      v20 = *(a3 + 16);
      v21 = *(v16 + 2);
      do
      {
        if (v18 >= v21)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        if (v19 < 0)
        {
          goto LABEL_109;
        }

        v22 = &v16[32 * v18 + 32];
        if (v20 >= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v20;
        }

        if (!v19)
        {
          v23 = 0;
        }

        v24 = v20 - v23;
        if (v20 - v23 >= 1)
        {
          v19 = v23;
          while (1)
          {
            v25 = v24 >> 1;
            v26 = v19 + (v24 >> 1);
            if (__OFADD__(v19, v24 >> 1))
            {
              break;
            }

            if (v26 < v23 || v26 >= v20)
            {
              goto LABEL_92;
            }

            v24 += ~v25;
            if (*(a3 + 32 + 8 * v26) < *(v22 + 8))
            {
              v19 = v26 + 1;
            }

            else
            {
              v24 = v25;
            }

            if (v24 <= 0)
            {
              goto LABEL_30;
            }
          }

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
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          v72 = v4;
          v16 = &v72;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1, 0);
          v4 = v72;
          for (i = v3 + 56; ; i += 4)
          {
            v62 = *(i - 3);
            v63 = *(i - 1);
            v64 = v62 + v63;
            if (__OFADD__(v62, v63))
            {
              break;
            }

            v65 = *(i - 2);
            v66 = v65 + *i;
            if (__OFADD__(v65, *i))
            {
              goto LABEL_119;
            }

            v72 = v4;
            v67 = *(v4 + 2);
            v68 = *(v4 + 3);
            a3 = v67 + 1;
            if (v67 >= v68 >> 1)
            {
              v16 = &v72;
              v70 = *(v4 + 2);
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v67 + 1, 1);
              v67 = v70;
              v4 = v72;
            }

            *(v4 + 2) = a3;
            v69 = &v4[16 * v67];
            *(v69 + 4) = v64;
            *(v69 + 5) = v66;
            if (!--a1)
            {

              return v4;
            }
          }

          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        v19 = v23;
LABEL_30:
        v28 = *(v22 + 24);
        v29 = __OFSUB__(v28, v19);
        v30 = v28 - v19;
        if (v29)
        {
          goto LABEL_110;
        }

        ++v18;
        *(v22 + 24) = v30;
      }

      while (v18 != i);
      v73 = v16;
LABEL_33:
      specialized MutableCollection<>.sort(by:)(&v73);
      v16 = v73;
      v3 = *(v73 + 2);
      if (v3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        }

        v31 = 0;
        v32 = 0;
        v33 = *(a1 + 16);
        v34 = *(v16 + 2);
        while (v31 < v34)
        {
          if (v32 < 0)
          {
            goto LABEL_112;
          }

          v35 = &v16[32 * v31 + 32];
          if (v33 >= v32)
          {
            v36 = v32;
          }

          else
          {
            v36 = v33;
          }

          if (!v32)
          {
            v36 = 0;
          }

          v37 = v33 - v36;
          if (v33 - v36 >= 1)
          {
            v32 = v36;
            while (1)
            {
              v38 = v37 >> 1;
              v39 = v32 + (v37 >> 1);
              if (__OFADD__(v32, v37 >> 1))
              {
                goto LABEL_93;
              }

              if (v39 < v36 || v39 >= v33)
              {
                goto LABEL_94;
              }

              v37 += ~v38;
              if (*(a1 + 32 + 8 * v39) < *v35)
              {
                v32 = v39 + 1;
              }

              else
              {
                v37 = v38;
              }

              if (v37 <= 0)
              {
                goto LABEL_58;
              }
            }
          }

          v32 = v36;
LABEL_58:
          v41 = *(v35 + 2);
          v29 = __OFSUB__(v41, v32);
          v42 = v41 - v32;
          if (v29)
          {
            goto LABEL_113;
          }

          ++v31;
          *(v35 + 2) = v42;
          if (v31 == v3)
          {
            v73 = v16;
            goto LABEL_61;
          }
        }

LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
      }

      else
      {
LABEL_61:
        specialized MutableCollection<>.reverse()();
        v3 = v73;
        v16 = *(v73 + 2);
        if (!v16)
        {
LABEL_89:

          return MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_121:
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        }

        v43 = 0;
        v44 = v3 + 72;
        v45 = -1;
        while (v43 != v16)
        {
          v46 = *(v3 + 2);
          if (v43 >= v46)
          {
            goto LABEL_116;
          }

          v47 = (v43 + 1);
          v48 = &v3[32 * v43 + 32];
          v49 = *v48;
          v50 = *(v48 + 8);
          v51 = *(v48 + 24);
          if (v43 + 1 != v46)
          {
            if (v43 + 1 >= v46)
            {
              goto LABEL_120;
            }

            v52 = v46 + v45;
            v53 = v44;
            while (1)
            {
              v54 = *v53;
              v53 += 4;
              if (v54 < v50)
              {
                v29 = __OFSUB__(v51--, 1);
                if (v29)
                {
                  goto LABEL_114;
                }
              }

              if (!--v52)
              {
                v55 = &v3[32 * v46 + 16];
                v56 = v46 - 1;
                while (v47 < (v56 + 1))
                {
                  if (v56 >= *(v3 + 2))
                  {
                    goto LABEL_96;
                  }

                  v57 = *(v55 - 2);
                  v58 = *v55;
                  v29 = __OFADD__(v57, *v55);
                  v59 = v57 + *v55;
                  if (v29)
                  {
                    goto LABEL_97;
                  }

                  if (__OFADD__(v50, v51))
                  {
                    goto LABEL_98;
                  }

                  if (v59 < v50 + v51)
                  {
                    v29 = __OFADD__(v51++, 1);
                    if (v29)
                    {
                      goto LABEL_99;
                    }
                  }

                  else
                  {
                    v29 = __OFADD__(v58, 1);
                    v60 = v58 + 1;
                    if (v29)
                    {
                      goto LABEL_100;
                    }

                    *v55 = v60;
                  }

                  v55 -= 32;
                  if (v43 == --v56)
                  {
                    a1 = *(v3 + 2);
                    if (v43 < a1)
                    {
                      goto LABEL_68;
                    }

                    goto LABEL_88;
                  }
                }

                goto LABEL_95;
              }
            }
          }

          a1 = v43 + 1;
          if (v43 >= v47)
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

LABEL_68:
          *v48 = v49;
          *(v48 + 8) = v50;
          v44 += 32;
          --v45;
          ++v43;
          *(v48 + 24) = v51;
          if (v47 == v16)
          {
            goto LABEL_101;
          }
        }
      }

      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    }
  }

  return v4;
}

id static CALayerPlatformViewDefinition.makePlatformView(view:kind:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  [v3 setCoordinatedAnimationDelegate];
  result = [v3 setAnchorPoint_];
  if (v2 <= 0xE)
  {
    v5 = 1;
    if (((1 << v2) & 0x7801) != 0)
    {
      [v3 setAllowsGroupOpacity_];
      v5 = 0;
      v6 = &selRef_setAllowsGroupBlending_;
    }

    else
    {
      if (((1 << v2) & 0xE) == 0)
      {
        return result;
      }

      v6 = &selRef_setAllowsEdgeAntialiasing_;
    }

    v7 = *v6;

    return [v3 v7];
  }

  return result;
}

id static CALayerPlatformViewDefinition.setProjectionTransform(_:projectionView:)(__int128 *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = a1[1];
  v9 = *a1;
  v6 = *(a1 + 8);
  v10 = 0;
  v11 = v5;
  v12 = v3;
  v13 = 0;
  v14 = v4;
  v15 = 0;
  v16 = 0;
  v7 = a1[3];
  v17 = xmmword_18DDAA020;
  v18 = v7;
  v19 = 0;
  v20 = v6;
  return [v2 setTransform_];
}

uint64_t static CALayerPlatformViewDefinition.getRBLayer(drawingView:)()
{
  swift_unknownObjectRetain();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

void (*CGDrawingLayer.options.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options;
  *a1 = v1;
  *(a1 + 8) = v2;
  v3 = (v1 + v2);
  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 12);
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 24) = v6;
  *(a1 + 28) = v3;
  return CGDrawingLayer.options.modify;
}

void CGDrawingLayer.options.modify(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(a1 + 24);
  v3 = *(a1 + 28);
  v4 = *a1 + *(a1 + 8);
  v5 = *v4;
  v6 = *(v4 + 4);
  v7 = *(v4 + 5);
  v8 = *(v4 + 8);
  v9 = *(v4 + 12);
  *v4 = *(a1 + 16);
  *(v4 + 4) = v1;
  *(v4 + 8) = v2;
  *(v4 + 12) = v3;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  CGDrawingLayer.options.didset(&v10);
}

uint64_t CGDrawingLayer.init(layer:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v4[40] = 5;
  v5 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_state];
  *v5 = 3;
  *(v5 + 1) = 0;
  v29 = a1;
  outlined init with copy of Any(a1, v32);
  v28 = ObjectType;
  if (swift_dynamicCast())
  {
    v6 = v31;
    v7 = *&v31[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content];
    v8 = *&v31[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 8];
    v9 = *&v31[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 16];
    v10 = *&v31[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 24];
    v11 = *&v31[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 32];
    v12 = *v4;
    v13 = *(v4 + 1);
    v14 = *(v4 + 2);
    v15 = *(v4 + 3);
    v16 = *(v4 + 4);
    v17 = v31[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 40];
    *v4 = v7;
    *(v4 + 1) = v8;
    *(v4 + 2) = v9;
    *(v4 + 3) = v10;
    *(v4 + 4) = v11;
    v18 = v4[40];
    v4[40] = v17;
    outlined copy of PlatformDrawableContent.Storage(v7, v8, v9, v10, v11, v17);
    outlined consume of PlatformDrawableContent.Storage(v12, v13, v14, v15, v16, v18);
    v19 = &v6[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_state];
    swift_beginAccess();
    v20 = *v19;
    v21 = *(v19 + 1);
    swift_beginAccess();
    *v5 = v20;
    *(v5 + 1) = v21;

    v22 = *&v6[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options + 4];
    v23 = *&v6[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options + 8];
    v24 = v6[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options + 12];
    v25 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options];
    *v25 = *&v6[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options];
    *(v25 + 2) = v22;
    *(v25 + 2) = v23;
    v25[12] = v24;
    v30.receiver = v1;
    v30.super_class = v28;
    v26 = objc_msgSendSuper2(&v30, sel_initWithLayer_, v6);

    __swift_destroy_boxed_opaque_existential_1(v29);
    return v26;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t CGDrawingLayer.drawForTesting(in:)(void *a1)
{
  v12[0] = 3;
  v13 = 0;
  v6 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content];
  v7 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 8];
  v8 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 16];
  v9 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 24];
  v10 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 32];
  v11 = v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 40];
  outlined copy of PlatformDrawableContent.Storage(v6, v7, v8, v9, v10, v11);
  [v1 bounds];
  PlatformDrawableContent.draw(in:size:state:)(a1, v12, v3, v4);
  outlined consume of PlatformDrawableContent.Storage(v6, v7, v8, v9, v10, v11);
}

void (*protocol witness for PlatformDrawable.options.modify in conformance CGDrawingLayer(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CGDrawingLayer.options.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

uint64_t RBDrawingLayer.init(layer:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state;
  type metadata accessor for AtomicBuffer<RBDrawingLayer.State>();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0;
  *(v5 + 64) = 5;
  *(v5 + 72) = 3;
  *(v5 + 80) = 0;
  *&v1[v4] = v5;
  outlined init with copy of Any(a1, v15);
  if (swift_dynamicCast())
  {
    v6 = v14;
    v7 = *&v14[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options + 4];
    v8 = *&v14[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options + 8];
    v9 = v14[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options + 12];
    v10 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options];
    *v10 = *&v14[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options];
    *(v10 + 2) = v7;
    *(v10 + 2) = v8;
    v10[12] = v9;
    *&v1[v4] = *&v6[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state];

    v13.receiver = v1;
    v13.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v13, sel_initWithLayer_, v6);

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v11;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t @objc CGDrawingLayer.init(layer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return a4(&v6);
}

uint64_t closure #1 in RBDrawingLayer.makeAsyncUpdate(content:required:layer:bounds:)(char *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = *&a1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state];
  outlined init with copy of PlatformDrawableContent(a2, v18);

  os_unfair_lock_lock(v12 + 4);
  outlined assign with take of PlatformDrawableContent(a2, &v12[6]);
  os_unfair_lock_unlock(v12 + 4);

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a6;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in closure #1 in RBDrawingLayer.makeAsyncUpdate(content:required:layer:bounds:);
  *(v14 + 24) = v13;
  v18[4] = partial apply for thunk for @callee_guaranteed (@guaranteed RBDisplayList) -> ();
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@guaranteed RBDisplayList) -> ();
  v18[3] = &block_descriptor;
  v15 = _Block_copy(v18);
  v16 = a1;

  [v16 displayWithBounds:v15 callback:{a3, a4, a5, a6}];
  _Block_release(v15);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

uint64_t RBDrawingLayer.drawForTesting(in:)(void *a1)
{
  v13[0] = 3;
  v14 = 0;
  v3 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state];

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  outlined copy of PlatformDrawableContent.Storage(v4, v5, v6, v7, v8, v9);
  os_unfair_lock_unlock((v3 + 16));

  [v1 bounds];
  PlatformDrawableContent.draw(in:size:state:)(a1, v13, v10, v11);
  outlined consume of PlatformDrawableContent.Storage(v4, v5, v6, v7, v8, v9);
}

id CGDrawingLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id (*protocol witness for PlatformDrawable.options.modify in conformance RBDrawingLayer(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options + 4);
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options + 8);
  v4 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options + 12);
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer_options);
  *(a1 + 12) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  return protocol witness for PlatformDrawable.options.modify in conformance RBDrawingLayer;
}

id protocol witness for PlatformDrawable.options.modify in conformance RBDrawingLayer(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = *(a1 + 13);
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v6 = *(a1 + 8);
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  return RBDrawingLayer.options.setter(&v6);
}

uint64_t (*protocol witness for PlatformDrawable.makeAsyncUpdate(content:required:layer:bounds:) in conformance RBDrawingLayer(__int128 *a1, double a2, double a3, double a4, double a5))()
{
  v11 = a1[1];
  v17 = *a1;
  v18[0] = v11;
  *(v18 + 9) = *(a1 + 25);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  v13 = a1[1];
  *(v12 + 24) = *a1;
  *(v12 + 40) = v13;
  *(v12 + 49) = *(a1 + 25);
  *(v12 + 72) = a2;
  *(v12 + 80) = a3;
  *(v12 + 88) = a4;
  *(v12 + 96) = a5;
  v14 = v5;
  outlined init with copy of PlatformDrawableContent(&v17, &v16);
  return partial apply for closure #1 in RBDrawingLayer.makeAsyncUpdate(content:required:layer:bounds:);
}

uint64_t initializeWithCopy for RBDrawingLayer.State(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of PlatformDrawableContent.Storage(*a2, v5, v6, v7, v8, v9);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for RBDrawingLayer.State(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of PlatformDrawableContent.Storage(*a2, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v15 = *(a1 + 40);
  *(a1 + 40) = v9;
  outlined consume of PlatformDrawableContent.Storage(v10, v11, v12, v13, v14, v15);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for RBDrawingLayer.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  *(a1 + 32) = v4;
  v12 = *(a1 + 40);
  *(a1 + 40) = v5;
  outlined consume of PlatformDrawableContent.Storage(v6, v7, v8, v9, v10, v12);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t getEnumTagSinglePayload for RBDrawingLayer.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t storeEnumTagSinglePayload for RBDrawingLayer.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

void specialized RBDrawingLayer.init(coder:)()
{
  v1 = OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state;
  type metadata accessor for AtomicBuffer<RBDrawingLayer.State>();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0;
  *(v2 + 64) = 5;
  *(v2 + 72) = 3;
  *(v2 + 80) = 0;
  *(v0 + v1) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

int *AccessibilityCore.TextResolutionOptions.inserting(_:)@<X0>(int *result@<X0>, int *a2@<X8>)
{
  v3 = *result;
  if ((*result & ~*v2) == 0)
  {
    v3 = 0;
  }

  *a2 = v3 | *v2;
  return result;
}

_DWORD *AccessibilityCore.TextResolutionOptions.removing(_:)@<X0>(_DWORD *result@<X0>, int *a2@<X8>)
{
  if ((*v2 & *result) != 0)
  {
    v3 = ~*result;
  }

  else
  {
    v3 = -1;
  }

  *a2 = v3 & *v2;
  return result;
}

uint64_t static AccessibilityCore.textResolvesToEmpty(_:in:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  v8 = a5[1];
  v10 = *(a4 + 16);
  if (v10)
  {
    v11 = (a4 + 16 * v10 + 24);
    while (1)
    {
      v12 = *v11;
      v11 -= 16;
      if ((v12 & 0xE0) == 0xC0)
      {
        type metadata accessor for AccessibilityTextModifier();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          v14 = *(v13 + 48);
          if (v14)
          {
            break;
          }
        }
      }

      if (!--v10)
      {
        goto LABEL_8;
      }
    }

    v15 = *(v13 + 40);
    v17 = *(v13 + 24);
    v16 = *(v13 + 32);
    v23 = v9;
    v24 = v8;
    outlined copy of Text.Storage(v17, v16, v15 & 1);

    v18 = static AccessibilityCore.textResolvesToEmpty(_:in:)(v17, v16, v15 & 1, v14, &v23);
    outlined consume of Text.Storage(v17, v16, v15 & 1);

    v19 = v18;
  }

  else
  {
LABEL_8:
    if (a3)
    {
      v23 = v9;
      v24 = v8;
      v22 = 1;
      v19 = (*(*a1 + 88))(&v23, &v22);
    }

    else
    {
      v20 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v20 = a1 & 0xFFFFFFFFFFFFLL;
      }

      v19 = v20 == 0;
    }
  }

  return v19 & 1;
}

BOOL static AccessibilityCore.textsResolveToEmpty(_:in:)(uint64_t a1, __int128 *a2)
{
  v11 = *a2;
  v2 = (a1 + 56);
  v3 = *(a1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 4;
    v5 = *v2;
    v6 = *(v2 - 8);
    v8 = *(v2 - 3);
    v7 = *(v2 - 2);
    v12 = v11;
    outlined copy of Text.Storage(v8, v7, v6);

    v9 = static AccessibilityCore.textResolvesToEmpty(_:in:)(v8, v7, v6, v5, &v12);
    outlined consume of Text.Storage(v8, v7, v6);

    v2 = v4;
  }

  while ((v9 & 1) != 0);
  return v3 == 0;
}

uint64_t static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int *a6, void *a7)
{
  v14 = type metadata accessor for Text.ResolvedString(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  v74 = *(a5 + 8);
  v75 = v17;
  v18 = *a6;
  v19 = a7[1];
  *&v73 = *a7;
  *(&v73 + 1) = v19;
  v20 = *(a4 + 16);
  if (!v20)
  {
LABEL_8:
    if (a3)
    {

      Text.Style.init()(v16);
      v30 = &v16[v14[5]];
      *v30 = 0;
      *(v30 + 1) = 0;
      v31 = &v16[v14[6]];
      *v31 = 0;
      *(v31 + 1) = 0xE000000000000000;
      v32 = v14[7];
      v16[v32] = 0;
      v33 = *(&v73 + 1);
      *v30 = v73;
      *(v30 + 1) = v33;
      specialized Text.resolve<A>(into:in:with:)(v16, v75, v74, 1, a1, a2, 1, a4);
      v35 = *v31;
      v34 = *(v31 + 1);
      v36 = v16[v32];

      outlined destroy of Text.ResolvedString(v16, type metadata accessor for Text.ResolvedString);
      v83 = v35;
      v84 = v34;
      if ((v18 & 4) != 0)
      {
        if (v36)
        {
          outlined consume of Text.Storage(a1, a2, 1);
LABEL_39:
          *&v79 = v75;
          *(&v79 + 1) = v74;
          v77 = v73;
          v76 = 6;
          v67 = static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)(a1, a2, 1, a4, &v79, &v76, &v77);
          if (v67)
          {
            v68 = v67;

            v69 = [v68 string];
            v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v72 = v71;

            v83 = v70;
            v84 = v72;
          }

LABEL_16:
          if ((v18 & 8) == 0)
          {
            return v83;
          }

          if (v74)
          {

            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSuffixI033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt1g5(v75, &v79);

            v41 = *(&v79 + 1);
            v40 = v79;
            v43 = *(&v80 + 1);
            v42 = v80;
            v44 = v81;
            v45 = v82;
          }

          else
          {
            type metadata accessor for EnvironmentPropertyKey<TextSuffixKey>();
            BloomFilter.init(hashValue:)(v46);
            v47 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(v75, v77);
            if (!v47)
            {
              v40 = 0;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v79 = 0u;
              v80 = 0u;
              v45 = 0x8000000000000000;
              v81 = 0;
              v82 = 0x8000000000000000;
LABEL_33:
              outlined consume of ResolvedTextSuffix(v40, v41, v42, v43, v44, v45);
              return v83;
            }

            v40 = v47[9];
            v41 = v47[10];
            v42 = v47[11];
            v43 = v47[12];
            v44 = v47[13];
            v45 = v47[14];
            *&v79 = v40;
            *(&v79 + 1) = v41;
            outlined copy of ResolvedTextSuffix(v40, v41, v42, v43, v44, v45);
          }

          if (v45 >> 62 == 1)
          {
            if (v42)
            {
              v48 = v40;
              v49 = [v48 attributedString];
              outlined consume of ResolvedTextSuffix(v40, v41, v42, v43, v44, v45);

              if (v49)
              {
                v50 = [v49 string];
                v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v53 = v52;

                v54 = HIBYTE(v53) & 0xF;
                if ((v53 & 0x2000000000000000) == 0)
                {
                  v54 = v51 & 0xFFFFFFFFFFFFLL;
                }

                if (v54)
                {
                  v55 = [v49 string];
                  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v58 = v57;

                  MEMORY[0x193ABEDD0](v56, v58);
                }

                else
                {
                }
              }

              return v83;
            }

            outlined copy of Text.Layout.Line.Line(v40);
          }

          goto LABEL_33;
        }

        type metadata accessor for AccessibilityTextStorage();
        v59 = swift_dynamicCastClass();
        if (v59)
        {
          v60 = v59;
          swift_beginAccess();
          v61 = *(v60 + 16);
          if (*(v60 + 32))
          {
            v62 = v61;
          }

          else
          {
            v63 = *(v60 + 24);
            v64 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

            v65 = MEMORY[0x193ABEC20](v61, v63);
            outlined consume of AccessibilityText.Storage(v61, v63, 0);
            v62 = [v64 initWithString_];
          }

          v66 = NSAttributedString.isDynamic.getter();

          outlined consume of Text.Storage(a1, a2, 1);
          if (!v66)
          {
            goto LABEL_16;
          }

          goto LABEL_39;
        }

        v38 = a1;
        v39 = a2;
        v37 = 1;
LABEL_15:
        outlined consume of Text.Storage(v38, v39, v37);
        goto LABEL_16;
      }
    }

    else
    {
      outlined copy of Text.Storage(a1, a2, 0);
      v83 = a1;
      v84 = a2;

      if ((v18 & 4) != 0)
      {
        v38 = a1;
        v39 = a2;
        v37 = 0;
        goto LABEL_15;
      }
    }

    v37 = a3 & 1;
    v38 = a1;
    v39 = a2;
    goto LABEL_15;
  }

  v21 = (a4 + 16 * v20 + 24);
  while (1)
  {
    v22 = *v21;
    v21 -= 16;
    if ((v22 & 0xE0) == 0xC0)
    {
      type metadata accessor for AccessibilityTextModifier();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = *(v23 + 48);
        if (v24)
        {
          break;
        }
      }
    }

    if (!--v20)
    {
      goto LABEL_8;
    }
  }

  v25 = *(v23 + 40);
  v27 = *(v23 + 24);
  v26 = *(v23 + 32);
  *&v79 = v75;
  *(&v79 + 1) = v74;
  v78 = v73;
  LODWORD(v83) = 0;
  outlined copy of Text.Storage(v27, v26, v25 & 1);

  v28 = static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)(v27, v26, v25 & 1, v24, &v79, &v83, &v78);
  outlined consume of Text.Storage(v27, v26, v25 & 1);

  return v28;
}

id static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, unsigned int *a6, _OWORD *a7)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  v78 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v76 - v15;
  v79 = type metadata accessor for ResolvableStringResolutionContext(0);
  v81 = *(v79 - 8);
  v16 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v76 - v18;
  v20 = *a5;
  v21 = a5[1];
  isEscapingClosureAtFileLocation = *a6;
  v23 = v20;
  *&aBlock = v20;
  *(&aBlock + 1) = v21;
  v89[0] = 129;
  v88[0] = *a7;
  v24 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)(&aBlock, (isEscapingClosureAtFileLocation >> 1) & 1, v89, v88, a1, a2, a3 & 1, a4);
  if (v24)
  {
    v25 = v24;
    v83 = v21;
    v26 = 0x1E696A000uLL;
    v27 = &property descriptor for SizingPreferences.size2D;
    v28 = &selRef_addEffect_;
    v29 = &qword_18DDAA000;
    if ((isEscapingClosureAtFileLocation & 4) == 0 || !NSAttributedString.isDynamic.getter())
    {
      goto LABEL_15;
    }

    v28 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v30 = type metadata accessor for Date();
    v31 = v19;
    (*(*(v30 - 8) + 56))(v19, 1, 1, v30);
    v32 = v83;
    if (v83)
    {

      swift_retain_n();
      v33 = v80;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE029ResolvableStringReferenceDateI033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5(v23, v80);

      goto LABEL_12;
    }

    v36 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(v35);
    v33 = v80;
    if (v36)
    {
      v37 = MEMORY[0x1E6969530];
      v38 = v36 + *(*v36 + 248);
      goto LABEL_11;
    }

    if (one-time initialization token for defaultValue != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v38 = __swift_project_value_buffer(v78, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
      v37 = MEMORY[0x1E6969530];
LABEL_11:
      outlined init with copy of Date?(v38, v33, &lazy cache variable for type metadata for Date?, v37);
LABEL_12:
      LODWORD(v80) = isEscapingClosureAtFileLocation;
      v39 = v79;
      v40 = v31 + *(v79 + 24);
      outlined assign with take of Date?(v33, v31);
      v41 = (v31 + *(v39 + 20));
      v77 = v23;
      *v41 = v23;
      v41[1] = v32;
      *v40 = 0;
      *(v40 + 8) = 1;
      v42 = one-time initialization token for resolvableTextSegment;
      v28 = v28;
      if (v42 != -1)
      {
        goto LABEL_37;
      }

      while (1)
      {
        v33 = static NSAttributedStringKey.resolvableTextSegment;
        v43 = [(SEL *)v28 length];
        v44 = v82;
        outlined init with copy of (key: NSAttributedStringKey, value: Any)(v31, v82, type metadata accessor for ResolvableStringResolutionContext);
        v45 = (*(v81 + 80) + 24) & ~*(v81 + 80);
        v32 = swift_allocObject();
        *(v32 + 16) = v28;
        outlined init with take of ResolvableStringResolutionContext(v44, v32 + v45);
        v23 = swift_allocObject();
        v23[2] = partial apply for closure #1 in static ResolvableTextSegmentAttribute.update(_:in:);
        v23[3] = v32;
        v86 = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        *&v87 = v23;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v85 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        *(&v85 + 1) = &block_descriptor_12;
        v46 = _Block_copy(&aBlock);
        v47 = v31;
        v31 = v87;
        v48 = v28;

        [(SEL *)v48 enumerateAttribute:v33 inRange:0 options:v43 usingBlock:2, v46];

        _Block_release(v46);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          break;
        }

        outlined destroy of Text.ResolvedString(v47, type metadata accessor for ResolvableStringResolutionContext);
        v25 = v48;
        v28 = &selRef_addEffect_;
        v23 = v77;
        isEscapingClosureAtFileLocation = v80;
        v29 = &qword_18DDAA000;
        v27 = &property descriptor for SizingPreferences.size2D;
        v26 = 0x1E696A000;
LABEL_15:
        if ((isEscapingClosureAtFileLocation & 8) == 0)
        {
          goto LABEL_32;
        }

        v77 = v23;
        if (v83)
        {

          _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSuffixI033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt1g5(v23, &aBlock);

          v50 = *(&aBlock + 1);
          v49 = aBlock;
          v52 = *(&v85 + 1);
          v51 = v85;
          v53 = v86;
          v54 = v87;
        }

        else
        {
          type metadata accessor for EnvironmentPropertyKey<TextSuffixKey>();
          BloomFilter.init(hashValue:)(v55);
          v56 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(v23, *&v88[0]);
          if (!v56)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v86 = 0;
            aBlock = 0u;
            v85 = 0u;
            v87 = xmmword_18DD85510;
            v54 = 0x8000000000000000;
LABEL_29:
            outlined consume of ResolvedTextSuffix(v49, v50, v51, v52, v53, v54);
LABEL_30:
            v28 = &selRef_addEffect_;
            v23 = v77;
            v29 = &qword_18DDAA000;
LABEL_31:
            v26 = 0x1E696A000uLL;
            goto LABEL_32;
          }

          v49 = v56[9];
          v50 = v56[10];
          v51 = v56[11];
          v52 = v56[12];
          v53 = v56[13];
          v54 = v56[14];
          *&aBlock = v49;
          outlined copy of ResolvedTextSuffix(v49, v50, v51, v52, v53, v54);
        }

        if (v54 >> 62 != 1)
        {
          goto LABEL_29;
        }

        if ((v51 & 1) == 0)
        {
          outlined copy of Text.Layout.Line.Line(v49);

          goto LABEL_29;
        }

        v57 = v49;
        v58 = [v57 attributedString];
        v59 = v53;
        v60 = v58;
        outlined consume of ResolvedTextSuffix(v49, v50, v51, v52, v59, v54);

        v27 = &property descriptor for SizingPreferences.size2D;
        if (!v60)
        {
          goto LABEL_30;
        }

        v61 = isEscapingClosureAtFileLocation;
        v62 = [v60 string];
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        v66 = HIBYTE(v65) & 0xF;
        if ((v65 & 0x2000000000000000) == 0)
        {
          v66 = v63 & 0xFFFFFFFFFFFFLL;
        }

        v28 = &selRef_addEffect_;
        v23 = v77;
        v29 = &qword_18DDAA000;
        if (!v66)
        {

          isEscapingClosureAtFileLocation = v61;
          v27 = &property descriptor for SizingPreferences.size2D;
          goto LABEL_31;
        }

        v67 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
        [v67 appendAttributedString_];

        v25 = v67;
        v27 = &property descriptor for SizingPreferences.size2D;
        isEscapingClosureAtFileLocation = v61;
        v26 = 0x1E696A000uLL;
LABEL_32:
        LOBYTE(v89[0]) = 0;
        memset(v88, 0, 32);
        v68 = [objc_allocWithZone(*(v26 + 3392)) v27[492]];

        v69 = v68;
        v25 = [v69 v28[152]];
        v70 = swift_allocObject();
        v71 = v83;
        *(v70 + 16) = v23;
        *(v70 + 24) = v71;
        *(v70 + 32) = v89;
        *(v70 + 40) = v88;
        *(v70 + 48) = v69;
        *(v70 + 56) = isEscapingClosureAtFileLocation;
        v31 = swift_allocObject();
        *(v31 + 16) = partial apply for closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:);
        *(v31 + 24) = v70;
        v86 = partial apply for thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        *&v87 = v31;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = v29[157];
        *&v85 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        *(&v85 + 1) = &block_descriptor_0;
        v72 = _Block_copy(&aBlock);

        v73 = v69;

        [v73 enumerateAttributesInRange:0 options:v25 usingBlock:{0, v72}];
        _Block_release(v72);
        LOBYTE(v72) = swift_isEscapingClosureAtFileLocation();

        if ((v72 & 1) == 0)
        {
          v74 = [v73 v28[152]];

          v34 = [v73 attributedSubstringFromRange_];

          return v34;
        }

        __break(1u);
LABEL_37:
        swift_once();
      }

      __break(1u);
LABEL_39:
      swift_once();
    }
  }

  return 0;
}

uint64_t static AccessibilityCore.textsResolvedToPlainText(_:in:options:idiom:separator:)(uint64_t a1, __int128 *a2, int *a3, __int128 *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a3;
    v31 = *a4;
    v32 = *a2;
    v36 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v7 = v36;
    v8 = (a1 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 8);
      v12 = *v8;
      v35 = v32;
      v34 = v6;
      v33 = v31;
      outlined copy of Text.Storage(v9, v10, v11);

      v13 = static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)(v9, v10, v11, v12, &v35, &v34, &v33);
      v15 = v14;
      outlined consume of Text.Storage(v9, v10, v11);

      v36 = v7;
      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v7 = v36;
      }

      *(v7 + 16) = v18 + 1;
      v19 = v7 + 16 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v15;
      v8 += 4;
      --v4;
    }

    while (v4);
    v20 = 0;
    v21 = v18 + 1;
    v22 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v23 = (v7 + 40 + 16 * v20);
    while (1)
    {
      if (v21 == v20)
      {

        *&v35 = v22;
        type metadata accessor for [String](0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v30 = BidirectionalCollection<>.joined(separator:)();

        return v30;
      }

      if (v20 >= *(v7 + 16))
      {
        break;
      }

      ++v20;
      v24 = *(v23 - 1);
      v25 = *v23;
      v23 += 2;
      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        *&v35 = v22;
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
          v22 = v35;
        }

        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v22 = v35;
        }

        *(v22 + 16) = v28 + 1;
        v29 = v22 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v25;
        goto LABEL_7;
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

uint64_t static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)(void *a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v7 = *a1;
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

  v9 = v8;
  v10 = [v9 length];
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v5;
  *(v11 + 32) = &v21;
  *(v11 + 40) = v20;
  *(v11 + 48) = v9;
  *(v11 + 56) = v6;
  v12 = swift_allocObject();
  *(v12 + 16) = closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)partial apply;
  *(v12 + 24) = v11;
  v19[4] = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v19[5] = v12;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v19[3] = &block_descriptor_23;
  v13 = _Block_copy(v19);

  v14 = v9;

  [v14 enumerateAttributesInRange:0 options:v10 usingBlock:{0, v13}];
  _Block_release(v13);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v16 = [v14 length];

    v17 = [v14 attributedSubstringFromRange_];
    *a1 = v17;
    v18 = v21;

    return v18;
  }

  return result;
}

uint64_t static AccessibilityCore.resolveAttributedTextAttributes(_:environment:)(uint64_t a1)
{
  result = EnvironmentValues.accessibilityTextAttributeResolver.getter();
  if (result)
  {
    return (*(v3 + 8))(a1, result, v3);
  }

  return result;
}

BOOL NSAttributedStringKey.isAccessibilityAttribute.getter()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0._countAndFlagsBits = 0x7373656363414955;
  v0._object = 0xEF7974696C696269;
  v1 = String.hasPrefix(_:)(v0);

  return v1;
}

uint64_t static AccessibilityCore.resolveAccessibilitySpeechAttributes(into:speechAttr:environment:options:)(uint64_t a1, char *a2, uint64_t *a3, int *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 1);
  v7 = a2[16];
  v8 = a2[17];
  v10 = *(a2 + 3);
  v9 = *(a2 + 4);
  v11 = *a3;
  v12 = a3[1];
  v15 = *a4;
  v19 = *a3;
  v20 = v12;
  result = EnvironmentValues.accessibilityTextAttributeResolver.getter();
  if (result)
  {
    LOBYTE(v19) = v4;
    BYTE1(v19) = v5;
    v20 = v6;
    v21 = v7;
    v22 = v8;
    v23 = v10;
    v24 = v9;
    v18[0] = v11;
    v18[1] = v12;
    v17 = v15;
    return (*(v14 + 24))(a1, &v19, v18, &v17);
  }

  return result;
}

uint64_t static AccessibilityCore.textsResolvedToAttributedText(_:in:options:idiom:separator:)(uint64_t a1, __int128 *a2, unsigned int *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  v35 = *a2;
  v34 = *a3;
  v33 = *a4;
  v7 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 16);
  v9 = a1 + 56;
  v30 = a1 + 56;
LABEL_2:
  v10 = v9 + 32 * v6;
  while (1)
  {
    if (v8 == v6)
    {
      v10 = v7 >> 62;
      if (v7 >> 62)
      {
        goto LABEL_62;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

LABEL_63:

      return 0;
    }

    if (v6 >= v8)
    {
      break;
    }

    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_55;
    }

    v12 = *v10;
    v13 = *(v10 - 8);
    v15 = *(v10 - 24);
    v14 = *(v10 - 16);
    v38 = v35;
    v37 = v34;
    v36 = v33;

    outlined copy of Text.Storage(v15, v14, v13);
    v16 = static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)(v15, v14, v13, v12, &v38, &v37, &v36);
    outlined consume of Text.Storage(v15, v14, v13);

    ++v6;
    v10 += 32;
    if (v16)
    {
      MEMORY[0x193ABF170](v17);
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v39;
      v6 = v11;
      v9 = v30;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_63;
  }

LABEL_12:
  v18 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  if (!v10)
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_53:

    return v18;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_53;
  }

  while (1)
  {
LABEL_16:
    v10 = v7 >> 62;
    if (!(v7 >> 62))
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      goto LABEL_18;
    }

    result = __CocoaSet.count.getter();
    if (!result)
    {
      break;
    }

    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_66;
    }

LABEL_18:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x193AC03C0](0, v7);
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v19 = *(v7 + 32);
    }

    v20 = v19;
    if (v10)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_60;
      }

      if (__CocoaSet.count.getter() < 1)
      {
        goto LABEL_61;
      }

      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_60;
      }
    }

    v22 = v21 - 1;
    if (__OFSUB__(v21, 1))
    {
      goto LABEL_58;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v10)
      {
        v10 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v22 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

LABEL_33:
      __CocoaSet.count.getter();
      goto LABEL_34;
    }

    if (v10)
    {
      goto LABEL_33;
    }

LABEL_34:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_35:

    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_67;
      }

      memmove((v10 + 32), (v10 + 40), 8 * (result - 1));
      v29 = __CocoaSet.count.getter();
      v24 = v29 - 1;
      if (__OFSUB__(v29, 1))
      {
        goto LABEL_59;
      }
    }

    else
    {
      v23 = *(v10 + 16);
      memmove((v10 + 32), (v10 + 40), 8 * v23 - 8);
      v24 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        goto LABEL_59;
      }
    }

    *(v10 + 16) = v24;
    if ([v20 length] >= 1)
    {
      if ([v18 length] >= 1)
      {
        v25 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v26 = MEMORY[0x193ABEC20](a5, a6);
        v27 = [v25 initWithString_];

        [v18 appendAttributedString_];
      }

      [v18 appendAttributedString_];
    }

    if (v7 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_53;
      }
    }

    else if (!*(v10 + 16))
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

uint64_t Text.accessibilityResolvedText(in:idiom:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v22 = *a1;
  v23 = v9;
  v29 = 129;
  v28[0] = *a2;
  result = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)(&v22, 1, &v29, v28, a3, a4, a5 & 1, a6);
  if (result)
  {
    v11 = result;
    LOBYTE(v29) = 0;
    memset(v28, 0, sizeof(v28));
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

    v13 = v12;
    v14 = [v13 length];
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = v9;
    *(v15 + 32) = &v29;
    *(v15 + 40) = v28;
    *(v15 + 48) = v13;
    *(v15 + 56) = 3;
    v16 = swift_allocObject();
    *(v16 + 16) = closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)partial apply;
    *(v16 + 24) = v15;
    v26 = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v27 = v16;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v25 = &block_descriptor_34;
    v17 = _Block_copy(&v22);

    v18 = v13;

    [v18 enumerateAttributesInRange:0 options:v14 usingBlock:{0, v17}];
    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v20 = [v18 length];

      v21 = [v18 attributedSubstringFromRange_];

      *a7 = v21;
      *(a7 + 8) = 0;
      *(a7 + 16) = 1;
    }
  }

  else
  {
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 255;
  }

  return result;
}