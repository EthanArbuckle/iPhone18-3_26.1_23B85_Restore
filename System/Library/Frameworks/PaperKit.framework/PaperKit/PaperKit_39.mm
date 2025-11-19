char *specialized closure #2 in PaperDocument.update<A>(_:in:otherDocuments:use:)(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v106 = a4;
  v108 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v104 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v94 - v9;
  v107 = type metadata accessor for PDFPageID();
  v10 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v98 = (&v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v94 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v103 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v99 = (&v94 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v101 = &v94 - v25;
  v26 = type metadata accessor for CRKeyPath();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  MEMORY[0x1DA6CB4C0]();
  v30 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pageIdMap;
  swift_beginAccess();
  v31 = *&a3[v30];
  if (!*(v31 + 16))
  {
    goto LABEL_8;
  }

  v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
  if ((v33 & 1) == 0)
  {

LABEL_8:
    (*(v27 + 8))(v29, v26);
    goto LABEL_9;
  }

  v34 = *(v31 + 56);
  v97 = a2;
  v35 = *(v34 + 8 * v32);

  v36 = v35;
  a2 = v97;
  v37 = [a3 pageAtIndex_];
  (*(v27 + 8))(v29, v26);
  if (v37)
  {
    type metadata accessor for PaperKitPDFPage(0);
    v38 = swift_dynamicCastClass();
    v39 = v37;
    if (v38)
    {
      v40 = v38;
      v95 = v39;
      v41 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
      swift_beginAccess();
      outlined init with copy of Date?(&v40[v41], v16, &_s8PaperKit6PageIdVSgMd);
      v42 = type metadata accessor for PageId(0);
      if ((*(*(v42 - 8) + 48))(v16, 1, v42))
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit6PageIdVSgMd);
        v43 = *(v10 + 56);
        v44 = v101;
        v45 = v10;
        v46 = v107;
        v43(v101, 1, 1, v107);
      }

      else
      {
        v44 = v101;
        outlined init with copy of Date?(v16, v101, &_s8PaperKit9PDFPageIDVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit6PageIdVSgMd);
        v45 = v10;
        v46 = v107;
      }

      outlined init with copy of PaperDocument.Partial(v108, v24, type metadata accessor for PDFPageID);
      (*(v45 + 56))(v24, 0, 1, v46);
      v83 = *(v12 + 48);
      v84 = v102;
      outlined init with copy of Date?(v44, v102, &_s8PaperKit9PDFPageIDVSgMd);
      v85 = v84;
      outlined init with copy of Date?(v24, v84 + v83, &_s8PaperKit9PDFPageIDVSgMd);
      v96 = v45;
      v86 = v44;
      v87 = *(v45 + 48);
      if (v87(v85, 1, v46) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s8PaperKit9PDFPageIDVSgMd);
        v85 = v102;
        outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s8PaperKit9PDFPageIDVSgMd);
        if (v87(v85 + v83, 1, v46) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s8PaperKit9PDFPageIDVSgMd);
          return v40;
        }
      }

      else
      {
        v88 = v99;
        outlined init with copy of Date?(v85, v99, &_s8PaperKit9PDFPageIDVSgMd);
        if (v87(v85 + v83, 1, v46) != 1)
        {
          v91 = v98;
          _s8PaperKit0A8DocumentVWObTm_0(v85 + v83, v98, type metadata accessor for PDFPageID);
          if (*v88 == *v91)
          {
            v92 = v88;
            v93 = static CRAsset.== infix(_:_:)();
            outlined destroy of PaperDocument.Partial(v91, type metadata accessor for PDFPageID);
            outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s8PaperKit9PDFPageIDVSgMd);
            outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s8PaperKit9PDFPageIDVSgMd);
            outlined destroy of PaperDocument.Partial(v92, type metadata accessor for PDFPageID);
            outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s8PaperKit9PDFPageIDVSgMd);
            a2 = v97;
            if (v93)
            {
              return v40;
            }

            goto LABEL_35;
          }

          outlined destroy of PaperDocument.Partial(v91, type metadata accessor for PDFPageID);
          outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s8PaperKit9PDFPageIDVSgMd);
          outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s8PaperKit9PDFPageIDVSgMd);
          outlined destroy of PaperDocument.Partial(v88, type metadata accessor for PDFPageID);
          v90 = v85;
          v89 = &_s8PaperKit9PDFPageIDVSgMd;
LABEL_34:
          outlined destroy of StocksKitCurrencyCache.Provider?(v90, v89);
          a2 = v97;
LABEL_35:

          v10 = v96;
          goto LABEL_9;
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s8PaperKit9PDFPageIDVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s8PaperKit9PDFPageIDVSgMd);
        outlined destroy of PaperDocument.Partial(v88, type metadata accessor for PDFPageID);
      }

      v89 = &_s8PaperKit9PDFPageIDVSg_ADtMd;
      v90 = v85;
      goto LABEL_34;
    }
  }

LABEL_9:
  v47 = OBJC_IVAR____TtC8PaperKit19PaperKitPDFDocument_pdfPageIdMap;
  swift_beginAccess();
  v48 = *&a3[v47];
  v50 = v107;
  v49 = v108;
  if (!*(v48 + 16))
  {
    goto LABEL_16;
  }

  v51 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
  if ((v52 & 1) == 0)
  {

    goto LABEL_16;
  }

  v53 = *(*(v48 + 56) + 8 * v51);

  v54 = [a3 pageAtIndex_];
  if (!v54)
  {
LABEL_16:
    v67 = v106;
    swift_beginAccess();
    v68 = *v67;
    if (!*(*v67 + 16) || (v69 = specialized __RawDictionaryStorage.find<A>(_:)(v49 + *(v50 + 20)), (v70 & 1) == 0))
    {
      swift_endAccess();
      return 0;
    }

    v71 = *(*(v68 + 56) + 8 * v69);
    swift_endAccess();
    v72 = *v49;
    v55 = v71;
    result = [v55 pageAtIndex_];
    if (result)
    {
      v73 = result;
      v74 = a2;
      [result copy];

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for PaperKitPDFPage(0);
      swift_dynamicCast();
      v75 = v109;
      v76 = v103;
      outlined init with copy of PaperDocument.Partial(v49, v103, type metadata accessor for PDFPageID);
      (*(v10 + 56))(v76, 0, 1, v50);
      v77 = v75 + OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
      swift_beginAccess();
      v78 = type metadata accessor for PageId(0);
      v79 = *(*(v78 - 8) + 48);
      result = v79(v77, 1, v78);
      v80 = v104;
      if (result != 1)
      {
        v40 = v75;
        outlined assign with take of UUID?(v76, v77, &_s8PaperKit9PDFPageIDVSgMd);
        swift_endAccess();
        v81 = v105;
        v82 = *(v105 - 8);
        (*(v82 + 16))(v80, v74, v105);
        (*(v82 + 56))(v80, 0, 1, v81);
        swift_beginAccess();
        result = v79(v77, 1, v78);
        if (result != 1)
        {
          v65 = v77 + *(v78 + 20);
          v66 = v80;
          goto LABEL_22;
        }

        goto LABEL_42;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v55 = v54;
  type metadata accessor for PaperKitPDFPage(0);
  v56 = swift_dynamicCastClass();
  if (!v56)
  {

    goto LABEL_16;
  }

  [v56 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v57 = v109;
  v58 = v105;
  v59 = *(v105 - 8);
  v60 = v100;
  (*(v59 + 16))(v100, a2, v105);
  (*(v59 + 56))(v60, 0, 1, v58);
  v61 = &v57[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId];
  swift_beginAccess();
  v62 = type metadata accessor for PageId(0);
  result = (*(*(v62 - 8) + 48))(v61, 1, v62);
  if (result != 1)
  {
    v64 = *(v62 + 20);
    v40 = v57;
    v65 = &v61[v64];
    v66 = v60;
LABEL_22:
    outlined assign with take of UUID?(v66, v65, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    swift_endAccess();

    return v40;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t closure #3 in PaperDocument.update<A>(_:in:otherDocuments:use:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceV6ChangeOy8PaperKit0D8DocumentV010PDFPageAndD4PageV_GMd);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for PaperDocument.PDFPageAndPaperPage(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(a1, v9, &_ss20CollectionDifferenceV6ChangeOy8PaperKit0D8DocumentV010PDFPageAndD4PageV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = &_ss20CollectionDifferenceV6ChangeOy8PaperKit0D8DocumentV010PDFPageAndD4PageV_GMd;
    v14 = v9;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, v13);
    v17 = type metadata accessor for CRAsset();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_8PaperKit0B8DocumentV010PDFPageAndB4PageV7elementSiSg14associatedWithtMd);
  _s8PaperKit0A8DocumentVWObTm_0(&v9[*(v15 + 48)], v12, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
  outlined init with copy of Date?(v12, v6, &_s8PaperKit9PDFPageIDVSgMd);
  outlined destroy of PaperDocument.Partial(v12, type metadata accessor for PaperDocument.PDFPageAndPaperPage);
  v16 = type metadata accessor for PDFPageID();
  if ((*(*(v16 - 8) + 48))(v6, 1, v16) == 1)
  {
    v13 = &_s8PaperKit9PDFPageIDVSgMd;
    v14 = v6;
    goto LABEL_5;
  }

  v19 = *(v16 + 20);
  v20 = type metadata accessor for CRAsset();
  v21 = *(v20 - 8);
  (*(v21 + 16))(a2, &v6[v19], v20);
  outlined destroy of PaperDocument.Partial(v6, type metadata accessor for PDFPageID);
  return (*(v21 + 56))(a2, 0, 1, v20);
}

uint64_t PaperDocument.renderPDFDocument<A>(capsule:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);

  return PaperDocument.export<A>(in:)(a1, a2, a3);
}

uint64_t PaperDocument.export<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  return MEMORY[0x1EEE6DFA0](PaperDocument.export<A>(in:), 0, 0);
}

uint64_t PaperDocument.export<A>(in:)()
{
  type metadata accessor for CRContext();
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0;
  *(v0 + 144) = 0u;
  v1 = MEMORY[0x1DA6CC630](0, v0 + 144);
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 144, &_s9Coherence18EncryptionDelegate_pSgMd);
  *(v0 + 184) = v1;
  *(v0 + 16) = xmmword_1D405D330;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 125) = 0u;
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = PaperDocument.export<A>(in:);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);

  return PaperDocument.newPDFDocument<A>(use:in:options:)((v0 + 184), v4, v0 + 16, v5, v3);
}

uint64_t PaperDocument.export<A>(in:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;

  outlined destroy of StocksKitCurrencyCache.Provider?(v3 + 16, &_s8PaperKit0A17RenderableOptionsVSgMd);
  outlined consume of PaperDocument.PDFDocumentUse(*(v3 + 184));
  v5 = *(v4 + 8);

  return v5(a1);
}

uint64_t PaperDocument.export<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](PaperDocument.export<A>(_:in:), 0, 0);
}

uint64_t PaperDocument.export<A>(_:in:)()
{
  v1 = *(v0 + 152);
  *(v0 + 144) = v1;
  *(v0 + 16) = xmmword_1D405D330;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 125) = 0u;
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = PaperDocument.export<A>(_:in:);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);

  return PaperDocument.newPDFDocument<A>(use:in:options:)((v0 + 144), v5, v0 + 16, v6, v4);
}

uint64_t PaperDocument.update<A>(pdfDocument:in:use:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a4;
  v6[22] = a5;
  v6[19] = a1;
  v6[20] = a2;
  v7 = *a3;
  v6[23] = v5;
  v6[24] = v7;
  return MEMORY[0x1EEE6DFA0](PaperDocument.update<A>(pdfDocument:in:use:), 0, 0);
}

uint64_t PaperDocument.update<A>(pdfDocument:in:use:)()
{
  *(v0 + 144) = *(v0 + 192);
  *(v0 + 16) = xmmword_1D405D330;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 125) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = PaperDocument.update<A>(pdfDocument:in:use:);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);

  return PaperDocument.update<A>(pdfDocument:in:use:options:)(v5, v3, (v0 + 144), v0 + 16, v4, v2);
}

{
  v1 = *v0;
  v4 = *v0;

  outlined destroy of StocksKitCurrencyCache.Provider?(v1 + 16, &_s8PaperKit0A17RenderableOptionsVSgMd);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t PaperDocument.update<A>(pdfDocument:in:use:options:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a1;
  v7[9] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd);
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
  v7[17] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v7[18] = v10;
  v7[19] = *(v10 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd);
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  v7[24] = v11;
  v7[25] = *(v11 - 8);
  v7[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVy9Coherence12CROrderedSetVyAC14SharedTagged_3Vy8PaperKit0gH4PageVGGGMd);
  v7[27] = swift_task_alloc();
  v7[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd);
  v12 = swift_task_alloc();
  v13 = *a3;
  v7[29] = v12;
  v7[30] = v13;

  return MEMORY[0x1EEE6DFA0](PaperDocument.update<A>(pdfDocument:in:use:options:), 0, 0);
}

uint64_t PaperDocument.update<A>(pdfDocument:in:use:options:)()
{
  v56 = v0;
  v1 = *(v0 + 64);
  type metadata accessor for PaperKitPDFDocument();
  v2 = swift_dynamicCastClass();
  *(v0 + 248) = v2;
  if (!v2)
  {
LABEL_16:

    v43 = *(v0 + 8);

    return v43();
  }

  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v55 = *(v0 + 240);
  v3 = v55;
  v8 = v1;
  PaperKitPDFDocument.updatePDFPages<A>(in:use:options:)(v7, &v55, v6, v5, v4);
  if (v3 == 0x8000000000000000)
  {
    v9 = *(v0 + 64);
    outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
    outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
LABEL_15:

    goto LABEL_16;
  }

  v10 = *(v0 + 232);
  v11 = *(v0 + 240);
  v12 = *(v0 + 216);
  v13 = *(v0 + 224);
  v15 = *(v0 + 200);
  v14 = *(v0 + 208);
  v16 = *(v0 + 192);
  v17 = *(v0 + 104);
  outlined copy of PaperDocument.PDFDocumentUse(v11);
  outlined consume of PaperDocument.PDFDocumentUse(v11);
  outlined consume of PaperDocument.PDFDocumentUse(0x8000000000000000);
  (*(v15 + 16))(v12, v17, v16);
  (*(v15 + 32))(v14, v12, v16);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  dispatch thunk of Sequence.makeIterator()();
  v18 = *(v13 + 36);
  *(v0 + 280) = v18;
  *(v10 + v18) = 0;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
  v19 = 0;
  while (1)
  {
    v21 = *(v0 + 144);
    v20 = *(v0 + 152);
    v22 = *(v0 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
    dispatch thunk of IteratorProtocol.next()();
    if ((*(v20 + 48))(v22, 1, v21) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 136), &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
      v23 = 1;
    }

    else
    {
      v24 = *(v0 + 168);
      v25 = *(v0 + 144);
      v26 = *(v0 + 128);
      v53 = v19;
      v27 = *(v0 + 112);
      v28 = *(*(v0 + 152) + 32);
      v28(v24, *(v0 + 136), v25);
      v29 = *(v27 + 48);
      *v26 = v53;
      result = v28(&v26[v29], v24, v25);
      v19 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        __break(1u);
        return result;
      }

      v31 = *(v0 + 176);
      v32 = *(v0 + 128);
      *(*(v0 + 232) + *(v0 + 280)) = v19;
      outlined init with take of Range<AttributedString.Index>(v32, v31, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd);
      v23 = 0;
    }

    *(v0 + 256) = v19;
    v34 = *(v0 + 176);
    v33 = *(v0 + 184);
    v36 = *(v0 + 112);
    v35 = *(v0 + 120);
    (*(v35 + 56))(v34, v23, 1, v36);
    outlined init with take of Range<AttributedString.Index>(v34, v33, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd);
    if ((*(v35 + 48))(v33, 1, v36) == 1)
    {
      v9 = *(v0 + 64);
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 232), &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd);
      goto LABEL_15;
    }

    v37 = *(v0 + 248);
    v38 = *(v0 + 184);
    v39 = *v38;
    (*(*(v0 + 152) + 32))(*(v0 + 160), &v38[*(*(v0 + 112) + 48)], *(v0 + 144));
    v40 = [v37 pageAtIndex_];
    *(v0 + 264) = v40;
    if (v40)
    {
      break;
    }

LABEL_5:
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  }

  v41 = v40;
  type metadata accessor for PaperKitPDFPage(0);
  v42 = swift_dynamicCastClass();
  if (!v42)
  {

    goto LABEL_5;
  }

  v44 = v42;
  v45 = *(v0 + 240);
  SharedTagged_3.subscript.getter();
  v46 = *(v0 + 40);
  v47 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v46);
  *(v0 + 56) = v45;
  v54 = (*(v47 + 168) + **(v47 + 168));
  v48 = swift_task_alloc();
  *(v0 + 272) = v48;
  *v48 = v0;
  v48[1] = PaperDocument.update<A>(pdfDocument:in:use:options:);
  v49 = *(v0 + 88);
  v50 = *(v0 + 96);
  v51 = *(v0 + 72);
  v52 = *(v0 + 80);

  return v54(v44, v0 + 56, v51, v52, v49, v50, v46, v47);
}

{

  return MEMORY[0x1EEE6DFA0](PaperDocument.update<A>(pdfDocument:in:use:options:), 0, 0);
}

{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v4 = *(v0 + 256);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
  while (1)
  {
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
    dispatch thunk of IteratorProtocol.next()();
    if ((*(v5 + 48))(v7, 1, v6) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 136), &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
      v8 = 1;
    }

    else
    {
      v9 = *(v0 + 168);
      v10 = *(v0 + 144);
      v11 = *(v0 + 128);
      v39 = v4;
      v12 = *(v0 + 112);
      v13 = *(*(v0 + 152) + 32);
      v13(v9, *(v0 + 136), v10);
      v14 = *(v12 + 48);
      *v11 = v39;
      result = v13(&v11[v14], v9, v10);
      v4 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        return result;
      }

      v16 = *(v0 + 176);
      v17 = *(v0 + 128);
      *(*(v0 + 232) + *(v0 + 280)) = v4;
      outlined init with take of Range<AttributedString.Index>(v17, v16, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtMd);
      v8 = 0;
    }

    *(v0 + 256) = v4;
    v19 = *(v0 + 176);
    v18 = *(v0 + 184);
    v21 = *(v0 + 112);
    v20 = *(v0 + 120);
    (*(v20 + 56))(v19, v8, 1, v21);
    outlined init with take of Range<AttributedString.Index>(v19, v18, &_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementtSgMd);
    if ((*(v20 + 48))(v18, 1, v21) == 1)
    {
      break;
    }

    v22 = *(v0 + 248);
    v23 = *(v0 + 184);
    v24 = *v23;
    (*(*(v0 + 152) + 32))(*(v0 + 160), &v23[*(*(v0 + 112) + 48)], *(v0 + 144));
    v25 = [v22 pageAtIndex_];
    *(v0 + 264) = v25;
    if (v25)
    {
      v26 = v25;
      type metadata accessor for PaperKitPDFPage(0);
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        v30 = v27;
        v31 = *(v0 + 240);
        SharedTagged_3.subscript.getter();
        v32 = *(v0 + 40);
        v33 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v32);
        *(v0 + 56) = v31;
        v40 = (*(v33 + 168) + **(v33 + 168));
        v34 = swift_task_alloc();
        *(v0 + 272) = v34;
        *v34 = v0;
        v34[1] = PaperDocument.update<A>(pdfDocument:in:use:options:);
        v35 = *(v0 + 88);
        v36 = *(v0 + 96);
        v37 = *(v0 + 72);
        v38 = *(v0 + 80);

        return v40(v30, v0 + 56, v37, v38, v35, v36, v32, v33);
      }
    }

    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  }

  v28 = *(v0 + 64);
  outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 232), &_ss18EnumeratedSequenceV8IteratorVy9Coherence12CROrderedSetVyAE14SharedTagged_3Vy8PaperKit0hI4PageVGG_GMd);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t PaperDocument.appendPages<A>(_:_:_:assetManager:useProxyPages:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = [a1 pageCount];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    v14[2] = v5;
    v14[3] = a1;
    v14[4] = a2;
    v14[5] = a3;
    v14[6] = a4;
    v15 = a5 & 1;
    specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in PaperDocument.appendPages<A>(_:_:_:assetManager:useProxyPages:), v14, 0, v12);
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [SharedTagged_3<TaggedPaperPage>] and conformance [A], &_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMd);
    CROrderedSet.append<A>(contentsOf:)();
  }

  return result;
}

uint64_t PaperDocument.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PaperDocument.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t PaperDocument.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v26 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  v12 = type metadata accessor for MergeResult();
  v24 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  MergeResult.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  v22[2] = a1;
  CROrderedSet.merge(_:)();
  MergeResult.merge(_:)();
  v16 = *(v13 + 8);
  v22[1] = v13 + 8;
  v23 = v16;
  v16(v15, v12);
  type metadata accessor for PaperDocument(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v17 = v27;
  v18 = *(v27 + 8);
  v18(v11, v4);
  (*(v17 + 16))(v26, v8, v4);
  CRRegister.projectedValue.setter();
  v18(v8, v4);
  MergeResult.merge(_:)();
  v20 = v23;
  v19 = v24;
  v23(v15, v24);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return v20(v15, v19);
}

uint64_t PaperDocument.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA7CRAssetVSg_GSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  CROrderedSet.actionUndoingDifference(from:)();
  type metadata accessor for PaperDocument(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v15(v8, v2);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMd);
  if ((*(*(v16 - 8) + 48))(v14, 1, v16) == 1 && (v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA7CRAssetVSg_GMd), (*(*(v17 - 8) + 48))(v11, 1, v17) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence12CROrderedSetV14MutatingActionVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
    v18 = type metadata accessor for PaperDocument.MutatingAction(0);
    (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  else
  {
    outlined init with copy of Date?(v14, a1, &_s9Coherence12CROrderedSetV14MutatingActionVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
    v19 = type metadata accessor for PaperDocument.MutatingAction(0);
    outlined init with copy of Date?(v11, a1 + *(v19 + 20), &_s9Coherence10CRRegisterV14MutatingActionVyAA7CRAssetVSg_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence12CROrderedSetV14MutatingActionVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
    (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence10CRRegisterV14MutatingActionVyAA7CRAssetVSg_GSgMd);
}

uint64_t PaperDocument.apply(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v17 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v16 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A8DocumentV14MutatingActionVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PaperDocument.MutatingAction(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(a1, v9, &_s8PaperKit0A8DocumentV14MutatingActionVSgMd);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit0A8DocumentV14MutatingActionVSgMd);
  }

  _s8PaperKit0A8DocumentVWObTm_0(v9, v13, type metadata accessor for PaperDocument.MutatingAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  CROrderedSet.apply(_:)();
  type metadata accessor for PaperDocument(0);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v15 = v17;
  (*(v17 + 16))(v16, v6, v2);
  CRRegister.projectedValue.setter();
  (*(v15 + 8))(v6, v2);
  return outlined destroy of PaperDocument.Partial(v13, type metadata accessor for PaperDocument.MutatingAction);
}

uint64_t PaperDocument.hasDelta(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  if (CROrderedSet.hasDelta(from:)() & 1) != 0 || (type metadata accessor for PaperDocument(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v7 = CRRegister.hasDelta(from:)(), v8 = *(v1 + 8), v8(v3, v0), v8(v6, v0), (v7))
  {
    v9 = 1;
  }

  else
  {
    v9 = UnknownProperties.hasDelta(from:)();
  }

  return v9 & 1;
}

uint64_t PaperDocument.newRefs(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v13 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  v7 = CROrderedSet.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v7);
  type metadata accessor for PaperDocument(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v8 = CRRegister.newRefs(from:)();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);
  specialized Set.formUnion<A>(_:)(v8);
  v10 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v10);
  return v13;
}

uint64_t PaperDocument.delta(_:from:)@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  CROrderedSet.delta(_:from:)();
  type metadata accessor for PaperDocument(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v18 = *(v2 + 8);
  v18(v4, v1);
  v18(v7, v1);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMd);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1 && (*(v2 + 48))(v12, 1, v1) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
    v21 = type metadata accessor for PaperDocument.Partial(0);
    (*(*(v21 - 8) + 56))(v31, 1, 1, v21);
  }

  else
  {
    v22 = v29;
    outlined init with copy of Date?(v17, v29, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
    v23 = v30;
    outlined init with copy of Date?(v12, v30, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
    v24 = v31;
    (*(v20 + 56))(v31, 1, 1, v19);
    v25 = type metadata accessor for PaperDocument.Partial(0);
    v26 = *(v25 + 20);
    (*(v2 + 56))(v24 + v26, 1, 1, v1);
    outlined assign with take of UUID?(v22, v24, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
    outlined assign with take of UUID?(v23, v24 + v26, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
    (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
}

BOOL PaperDocument.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v24 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v27 = a1;
  outlined init with copy of Date?(a1, v11, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
    v16 = CROrderedSet.canMerge(delta:)();
    (*(v13 + 8))(v15, v12);
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = type metadata accessor for PaperDocument.Partial(0);
  outlined init with copy of Date?(v27 + *(v17 + 20), v4, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  v18 = v26;
  if ((*(v26 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
    return 1;
  }

  v19 = v24;
  (*(v18 + 32))(v24, v4, v5);
  type metadata accessor for PaperDocument(0);
  v20 = v25;
  CRRegister.projectedValue.getter();
  v21 = CRRegister.canMerge(delta:)();
  v22 = *(v18 + 8);
  v22(v20, v5);
  v22(v19, v5);
  return (v21 & 1) != 0;
}

uint64_t PaperDocument.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v61 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v60 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMd);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v50 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - v25;
  v27 = a1;
  outlined init with copy of Date?(a1, v20, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
  v28 = *(v22 + 48);
  v29 = v28(v20, 1, v21);
  v59 = v1;
  if (v29 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
  }

  else
  {
    (*(v22 + 32))(v26, v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
    v30 = CROrderedSet.canMerge(delta:)();
    (*(v22 + 8))(v26, v21);
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  v31 = v27;
  v54 = *(type metadata accessor for PaperDocument.Partial(0) + 20);
  outlined init with copy of Date?(v27 + v54, v7, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  v32 = v61;
  v53 = *(v61 + 48);
  v33 = v53(v7, 1, v8);
  v58 = v31;
  if (v33 != 1)
  {
    v34 = *(v32 + 32);
    v48 = v28;
    v35 = v55;
    v34(v55, v7, v8);
    type metadata accessor for PaperDocument(0);
    v49 = v22;
    v36 = v57;
    CRRegister.projectedValue.getter();
    v37 = CRRegister.canMerge(delta:)();
    v38 = *(v32 + 8);
    v39 = v36;
    v31 = v58;
    v22 = v49;
    v38(v39, v8);
    v40 = v35;
    v28 = v48;
    v38(v40, v8);
    v32 = v61;
    if (v37)
    {
      goto LABEL_7;
    }

    return 0;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
LABEL_7:
  v41 = v60;
  outlined init with copy of Date?(v31, v60, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
  if (v28(v41, 1, v21) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GSgMd);
  }

  else
  {
    v43 = v50;
    (*(v22 + 32))(v50, v60, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
    CROrderedSet.merge(delta:)();
    (*(v22 + 8))(v43, v21);
  }

  v44 = v56;
  outlined init with copy of Date?(v58 + v54, v56, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  if (v53(v44, 1, v8) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  }

  else
  {
    v45 = v52;
    (*(v32 + 32))(v52, v44, v8);
    type metadata accessor for PaperDocument(0);
    v46 = v57;
    CRRegister.projectedValue.getter();
    CRRegister.merge(delta:)();
    (*(v32 + 16))(v51, v46, v8);
    CRRegister.projectedValue.setter();
    v47 = *(v32 + 8);
    v47(v46, v8);
    v47(v45, v8);
  }

  return 1;
}

uint64_t protocol witness for CRDT.context.getter in conformance PaperDocument(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CRCodableVersion and conformance CRCodableVersion(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRDT.newRefs(from:) in conformance PaperDocument()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v13 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  v7 = CROrderedSet.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v7);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v8 = CRRegister.newRefs(from:)();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);
  specialized Set.formUnion<A>(_:)(v8);
  v10 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v10);
  return v13;
}

uint64_t protocol witness for CRDT.hasDelta(from:) in conformance PaperDocument()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  if (CROrderedSet.hasDelta(from:)() & 1) != 0 || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v7 = CRRegister.hasDelta(from:)(), v8 = *(v1 + 8), v8(v3, v0), v8(v6, v0), (v7))
  {
    v9 = 1;
  }

  else
  {
    v9 = UnknownProperties.hasDelta(from:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance PaperDocument(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PaperDocument.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t specialized static PaperDocument.PDFPageAndPaperPage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFPageID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of Date?(a1, &v21 - v12, &_s8PaperKit9PDFPageIDVSgMd);
  outlined init with copy of Date?(a2, &v13[v15], &_s8PaperKit9PDFPageIDVSgMd);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of Date?(v13, v10, &_s8PaperKit9PDFPageIDVSgMd);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      _s8PaperKit0A8DocumentVWObTm_0(&v13[v15], v7, type metadata accessor for PDFPageID);
      if (*v10 == *v7)
      {
        v20 = static CRAsset.== infix(_:_:)();
        outlined destroy of PaperDocument.Partial(v7, type metadata accessor for PDFPageID);
        outlined destroy of PaperDocument.Partial(v10, type metadata accessor for PDFPageID);
        outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit9PDFPageIDVSgMd);
        if (v20)
        {
          goto LABEL_4;
        }

LABEL_9:
        v17 = 0;
        return v17 & 1;
      }

      outlined destroy of PaperDocument.Partial(v7, type metadata accessor for PDFPageID);
      outlined destroy of PaperDocument.Partial(v10, type metadata accessor for PDFPageID);
      v18 = &_s8PaperKit9PDFPageIDVSgMd;
LABEL_8:
      outlined destroy of StocksKitCurrencyCache.Provider?(v13, v18);
      goto LABEL_9;
    }

    outlined destroy of PaperDocument.Partial(v10, type metadata accessor for PDFPageID);
LABEL_7:
    v18 = &_s8PaperKit9PDFPageIDVSg_ADtMd;
    goto LABEL_8;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit9PDFPageIDVSgMd);
LABEL_4:
  type metadata accessor for PaperDocument.PDFPageAndPaperPage(0);
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  v17 = static WeakTagged_3.== infix(_:_:)();
  return v17 & 1;
}

uint64_t specialized static PaperDocument.PDFDocumentUse.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 62 == 1)
      {
        goto LABEL_6;
      }
    }

    else if (v2 == 0x8000000000000000)
    {
      if (v3 == 0x8000000000000000)
      {
        v5 = 1;
        v2 = 0x8000000000000000;
        v3 = 0x8000000000000000;
        goto LABEL_16;
      }
    }

    else if (v2 == 0x8000000000000008)
    {
      if (v3 == 0x8000000000000008)
      {
        v5 = 1;
        v2 = 0x8000000000000008;
        v3 = 0x8000000000000008;
        goto LABEL_16;
      }
    }

    else if (v3 == 0x8000000000000010)
    {
      v5 = 1;
      v2 = 0x8000000000000010;
      v3 = 0x8000000000000010;
      goto LABEL_16;
    }

LABEL_15:
    outlined copy of PaperDocument.PDFDocumentUse(*a2);
    outlined copy of PaperDocument.PDFDocumentUse(v2);
    v5 = 0;
    goto LABEL_16;
  }

  if (v3 >> 62)
  {
    goto LABEL_15;
  }

LABEL_6:
  type metadata accessor for NSObject();
  outlined copy of PaperDocument.PDFDocumentUse(v3);
  outlined copy of PaperDocument.PDFDocumentUse(v2);
  v5 = static NSObject.== infix(_:_:)();
LABEL_16:
  outlined consume of PaperDocument.PDFDocumentUse(v2);
  outlined consume of PaperDocument.PDFDocumentUse(v3);
  return v5 & 1;
}

uint64_t specialized static PaperDocument.== infix(_:_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (type metadata accessor for PaperDocument(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CRAsset?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd), v7 = dispatch thunk of static Equatable.== infix(_:_:)(), v8 = *(v1 + 8), v8(v3, v0), v8(v6, v0), (v7))
  {
    v9 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t _s8PaperKit0A8DocumentVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CRCodableVersion and conformance CRCodableVersion(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for PaperDocument()
{
  type metadata accessor for CROrderedSet<SharedTagged_3<TaggedPaperPage>>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CRRegister<CRAsset?>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownProperties();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for CROrderedSet<SharedTagged_3<TaggedPaperPage>>()
{
  if (!lazy cache variable for type metadata for CROrderedSet<SharedTagged_3<TaggedPaperPage>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
    v0 = type metadata accessor for CROrderedSet();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_3<TaggedPaperPage>>);
    }
  }
}

void type metadata accessor for CRRegister<CRAsset?>()
{
  if (!lazy cache variable for type metadata for CRRegister<CRAsset?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence7CRAssetVSgMd);
    lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRRegister<CRAsset?>);
    }
  }
}

void type metadata completion function for PaperDocument.ObservableDifference()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_3<TaggedPaperPage>>.ObservableDifference?, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMd);
  if (v0 <= 0x3F)
  {
    _s9Coherence27CRValueObservableDifferenceOSgMaTm_2(319, &lazy cache variable for type metadata for CRValueObservableDifference?, MEMORY[0x1E6995380]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PaperDocument.MutatingAction()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_3<TaggedPaperPage>>.MutatingAction?, &_s9Coherence12CROrderedSetV14MutatingActionVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CRAsset?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVyAA7CRAssetVSg_GMd);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PaperDocument.Partial()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_3<TaggedPaperPage>>.MergeableDelta?, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA14SharedTagged_3Vy8PaperKit0gH4PageVG_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CRAsset?>?, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t get_enum_tag_for_layout_string_8PaperKit0A8DocumentV14PDFDocumentUseO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t getEnumTagSinglePayload for PaperDocument.PDFDocumentUse(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PaperDocument.PDFDocumentUse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for PaperDocument.PDFDocumentUse(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

void type metadata completion function for PaperDocument.PDFPageAndPaperPage()
{
  _s9Coherence27CRValueObservableDifferenceOSgMaTm_2(319, &lazy cache variable for type metadata for PDFPageID?, type metadata accessor for PDFPageID);
  if (v0 <= 0x3F)
  {
    type metadata accessor for WeakTagged_3<TaggedPaperPage>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void _s9Coherence27CRValueObservableDifferenceOSgMaTm_2(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for WeakTagged_3<TaggedPaperPage>()
{
  if (!lazy cache variable for type metadata for WeakTagged_3<TaggedPaperPage>)
  {
    lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
    v0 = type metadata accessor for WeakTagged_3();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WeakTagged_3<TaggedPaperPage>);
    }
  }
}

void LinkPreviewLoadingOperation.linkPreviewDidFinishLoading(notification:)()
{
  v1 = v0;
  if ([objc_opt_self() isMainThread])
  {
    Notification.object.getter();
    if (v11)
    {
      type metadata accessor for SYContentItem();
      if (swift_dynamicCast())
      {
        v2 = *(v0 + 16);
        if (v2)
        {
          v3 = v9;
          v4 = v2;
          v5 = static NSObject.== infix(_:_:)();

          if (v5)
          {
            v6 = *(v1 + 24);
            if (v6)
            {

              v6(v7);

              outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
            }

            else
            {
            }

            v8 = *(v1 + 24);
            *(v1 + 24) = 0;
            *(v1 + 32) = 0;
            outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }

    else
    {
      outlined destroy of Any?(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t LinkPreviewLoadingOperation.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for SYContentItem()
{
  result = lazy cache variable for type metadata for SYContentItem;
  if (!lazy cache variable for type metadata for SYContentItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SYContentItem);
  }

  return result;
}

uint64_t LiveEditable.endedLiveEditing()(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for MainActor();
  v3[14] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[15] = v5;
  v3[16] = v4;

  return MEMORY[0x1EEE6DFA0](LiveEditable.endedLiveEditing(), v5, v4);
}

uint64_t LiveEditable.endedLiveEditing()()
{
  if ((*(v0[11] + 8))(v0[10]))
  {
    v1 = static MainActor.shared.getter();
    v0[17] = v1;
    if (v1)
    {
      swift_getObjectType();
      v2 = dispatch thunk of Actor.unownedExecutor.getter();
      v4 = v3;
    }

    else
    {
      v2 = 0;
      v4 = 0;
    }

    return MEMORY[0x1EEE6DFA0](LiveEditable.endedLiveEditing(), v2, v4);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[3] = LiveEditable.endedLiveEditing();
  v4 = swift_continuation_init();
  closure #1 in LiveEditable.endedLiveEditing()(v4, v1, v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);

  return MEMORY[0x1EEE6DFA0](LiveEditable.endedLiveEditing(), v2, v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in LiveEditable.endedLiveEditing()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 48))(v13, a3, a4);
  v7 = v6;
  v8 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    *v7 = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    *v7 = v8;
  }

  *(v8 + 2) = v11 + 1;
  *&v8[8 * v11 + 32] = a1;
  return v5(v13, 0);
}

char *Capsule<>.links.getter()
{
  v87 = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit4LinkVGSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v67 - v2;
  v69 = type metadata accessor for Link(0);
  v78 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v75 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v77 = &v67 - v6;
  MEMORY[0x1EEE9AC00](v7);
  *&v73 = &v67 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v67 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v67 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v18 = *(v79 - 1);
  MEMORY[0x1EEE9AC00](v79);
  v20 = &v67 - v19;
  v21 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v74 = v0;
  Capsule.root.getter();
  v71 = v21;
  (*(v18 + 16))(v20, &v23[*(v21 + 48)], v79);
  _s8PaperKit0A0VWOhTm_5(v23, type metadata accessor for Paper);
  lazy protocol witness table accessor for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>();
  v68 = v20;
  v24 = dispatch thunk of Sequence._copyToContiguousArray()();
  v80 = v24;
  if (v24[2])
  {
    v76 = v13 + 32;
    v26 = (v13 + 8);
    v79 = MEMORY[0x1E69E7CC0];
    v70 = (v13 + 16);
    do
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v30 = v24[2];
        if (!v30)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
        v30 = v24[2];
        if (!v30)
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
        }
      }

      v31 = v30 - 1;
      v32 = v24 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v31;
      v24[2] = v31;
      v80 = v24;
      (*(v13 + 32))(v17, v32, v12);
      SharedTagged_10.tagged5.getter();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit4LinkVGMd);
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v3, 1, v33) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9Coherence3RefVy8PaperKit4LinkVGSgMd);
        (*v70)(v72, v17, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit22ContainerCanvasElement_pMd);
        if (swift_dynamicCast())
        {
          outlined init with take of CalculateMathItem(v81, &v83);
          v27 = v85;
          v28 = v86;
          __swift_project_boxed_opaque_existential_1(&v83, v85);
          v29 = v68;
          (*(v28 + 88))(v27, v28);
          specialized Array.append<A>(contentsOf:)(v29);
          (*v26)(v17, v12);
          __swift_destroy_boxed_opaque_existential_0(&v83);
        }

        else
        {
          (*v26)(v17, v12);
          v82 = 0;
          memset(v81, 0, sizeof(v81));
          outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s8PaperKit22ContainerCanvasElement_pSgMd);
        }
      }

      else
      {
        lazy protocol witness table accessor for type Paper and conformance Paper();
        v35 = v73;
        Ref.subscript.getter();
        (*(v34 + 8))(v3, v33);
        outlined init with take of Link(v35, v11);
        outlined init with copy of Link(v11, v77);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79[2] + 1, 1, v79);
        }

        v37 = v79[2];
        v36 = v79[3];
        if (v37 >= v36 >> 1)
        {
          v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v79);
        }

        _s8PaperKit0A0VWOhTm_5(v11, type metadata accessor for Link);
        (*v26)(v17, v12);
        v38 = v78;
        v39 = v79;
        v79[2] = v37 + 1;
        outlined init with take of Link(v77, v39 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37);
      }

      v24 = v80;
    }

    while (v80[2]);
  }

  else
  {
    v79 = MEMORY[0x1E69E7CC0];
  }

  v40 = MEMORY[0x1E69E7CC0];
  *&v81[0] = MEMORY[0x1E69E7CC0];
  v41 = v79;
  v42 = v79[2];
  if (!v42)
  {
    goto LABEL_36;
  }

  v43 = 0;
  v76 = 0;
  v71 = v42 - 1;
  *&v25 = 136315138;
  v73 = v25;
  v44 = v75;
  v77 = v42;
  do
  {
    v72 = v40;
    v45 = v43;
    while (1)
    {
      if (v45 >= v41[2])
      {
        goto LABEL_38;
      }

      outlined init with copy of Link(v41 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v45, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
      CRRegister.wrappedValue.getter();
      v46 = v84;
      if (v84 >> 60 == 15)
      {
        goto LABEL_23;
      }

      v47 = v83;
      v48 = objc_allocWithZone(MEMORY[0x1E69D53F8]);
      outlined copy of Data._Representation(v47, v46);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v83 = 0;
      v50 = [v48 initWithData:isa error:&v83];

      if (v50)
      {
        break;
      }

      v51 = v83;
      v52 = _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data?(v47, v46);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, logger);
      v54 = v52;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      v57 = os_log_type_enabled(v55, v56);
      v76 = 0;
      if (v57)
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v83 = v59;
        *v58 = v73;
        swift_getErrorValue();
        v74 = v55;
        v60 = Error.localizedDescription.getter();
        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v83);

        *(v58 + 4) = v62;
        v63 = v74;
        _os_log_impl(&dword_1D38C4000, v74, v56, "%s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x1DA6D0660](v59, -1, -1);
        MEMORY[0x1DA6D0660](v58, -1, -1);
        outlined consume of Data?(v47, v46);
      }

      else
      {
        outlined consume of Data?(v47, v46);
      }

      v44 = v75;
      v41 = v79;
      v42 = v77;
LABEL_23:
      ++v45;
      _s8PaperKit0A0VWOhTm_5(v44, type metadata accessor for Link);
      if (v42 == v45)
      {
        v40 = v72;
        goto LABEL_36;
      }
    }

    v64 = v83;
    outlined consume of Data?(v47, v46);
    outlined consume of Data?(v47, v46);
    v65 = _s8PaperKit0A0VWOhTm_5(v44, type metadata accessor for Link);
    MEMORY[0x1DA6CD190](v65);
    if (*((*&v81[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v81[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v43 = v45 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v40 = *&v81[0];
    v42 = v77;
  }

  while (v71 != v45);
LABEL_36:

  return v40;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

unint64_t lazy protocol witness table accessor for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>()
{
  result = lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>;
  if (!lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>);
  }

  return result;
}

uint64_t outlined init with take of Link(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Link(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Link(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Link(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s8PaperKit0A0VWOhTm_5(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall LinedPaperView.update(bounds:drawingTransform:shouldClip:)(__C::CGRect bounds, CGAffineTransform *drawingTransform, Swift::Bool shouldClip)
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [v3 setFrame_];
  v10 = &v3[OBJC_IVAR____TtC8PaperKit14LinedPaperView_drawingTransform];
  v11 = *&drawingTransform->tx;
  *(v10 + 1) = *&drawingTransform->c;
  *(v10 + 2) = v11;
  *v10 = *&drawingTransform->a;
  v12 = OBJC_IVAR____TtC8PaperKit14LinedPaperView_linedPaper;
  v13 = OBJC_IVAR____TtC8PaperKit14LinedPaperView_linedPaperLayer;
  v14 = *&v3[OBJC_IVAR____TtC8PaperKit14LinedPaperView_linedPaperLayer];
  if (!*&v3[OBJC_IVAR____TtC8PaperKit14LinedPaperView_linedPaper])
  {
    if (v14)
    {
      [v14 removeFromSuperlayer];
      v18 = *&v3[v13];
    }

    else
    {
      v18 = 0;
    }

    *&v3[v13] = 0;
LABEL_9:

    goto LABEL_10;
  }

  if (!v14)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E6978480]) initWithLinedPaperLayerDelegate_];
    v16 = *&v3[v13];
    *&v3[v13] = v15;

    v17 = [v3 layer];
    if (!*&v3[v13])
    {
      __break(1u);
      return;
    }

    v18 = v17;
    [v17 addSublayer_];
    goto LABEL_9;
  }

LABEL_10:
  [*&v3[OBJC_IVAR____TtC8PaperKit14LinedPaperView_linedPaperLayer] updateLinesFromAttachmentBounds_];
  v19 = (*&v3[v12] != 0) & shouldClip;

  [v3 setClipsToBounds_];
}

id LinedPaperView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8PaperKit14LinedPaperView_linedPaperLayer] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit14LinedPaperView_linedPaper] = 0;
  v3 = &v1[OBJC_IVAR____TtC8PaperKit14LinedPaperView_drawingTransform];
  *v3 = 0x3FF0000000000000;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0x3FF0000000000000;
  v4 = type metadata accessor for LinedPaperView();
  *(v3 + 4) = 0;
  *(v3 + 5) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id LinedPaperView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinedPaperView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PaperDocumentThumbnailViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaperDocumentThumbnailViewController.init()()
{
  v1 = OBJC_IVAR____TtC8PaperKit36PaperDocumentThumbnailViewController_paperDocumentThumbnailView;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for PaperDocumentThumbnailView()) initWithFrame_];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PaperDocumentThumbnailViewController();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

Swift::Void __swiftcall PaperDocumentThumbnailViewController.loadView()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v0 setView_];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC8PaperKit36PaperDocumentThumbnailViewController_paperDocumentThumbnailView];
  [v2 addSubview_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D405B630;
  v6 = [v4 leftAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 safeAreaLayoutGuide];

  v10 = [v9 leftAnchor];
  v11 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v11;
  v12 = [v4 rightAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v13 safeAreaLayoutGuide];

  v16 = [v15 rightAnchor];
  v17 = [v12 constraintEqualToAnchor_];

  *(v5 + 40) = v17;
  v18 = [v4 topAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = [v19 safeAreaLayoutGuide];

  v22 = [v21 topAnchor];
  v23 = [v18 constraintEqualToAnchor_];

  *(v5 + 48) = v23;
  v24 = [v4 bottomAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = objc_opt_self();
  v28 = [v26 safeAreaLayoutGuide];

  v29 = [v28 bottomAnchor];
  v30 = [v24 constraintEqualToAnchor_];

  *(v5 + 56) = v30;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints_];
}

id PaperDocumentThumbnailViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1DA6CCED0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PaperDocumentThumbnailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperDocumentThumbnailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t MiniMenuState.grapableExpressionsState.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t MiniMenuState.options.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

uint64_t MiniCropMenuState.popoverState.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniCropMenuState and conformance MiniCropMenuState, type metadata accessor for MiniCropMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for MiniCropMenuState.popoverState : MiniCropMenuState@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniCropMenuState and conformance MiniCropMenuState, type metadata accessor for MiniCropMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t MiniCropMenuState.popoverState.setter(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniCropMenuState and conformance MiniCropMenuState, type metadata accessor for MiniCropMenuState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t MiniCropMenuState.wantsVisible.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniCropMenuState and conformance MiniCropMenuState, type metadata accessor for MiniCropMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t key path getter for MiniCropMenuState.wantsVisible : MiniCropMenuState@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniCropMenuState and conformance MiniCropMenuState, type metadata accessor for MiniCropMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t MiniCropMenuState.wantsVisible.setter(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniCropMenuState and conformance MiniCropMenuState, type metadata accessor for MiniCropMenuState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t MiniCropMenuState.__deallocating_deinit()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  v1 = OBJC_IVAR____TtC8PaperKit17MiniCropMenuState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for MiniCropMenuState()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for MiniMenuStateProtocol.init() in conformance MiniCropMenuState()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MiniPopoverState();
  v1 = swift_allocObject();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t MiniMenuState.popoverState.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for MiniMenuState.popoverState : MiniMenuState@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t MiniMenuState.popoverState.setter(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t MiniMenuState.wantsVisible.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t key path getter for MiniMenuState.wantsVisible : MiniMenuState@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t MiniMenuState.wantsVisible.setter(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t key path getter for MiniMenuState.options : MiniMenuState@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t MiniMenuState.options.setter(uint64_t result)
{
  if (*(v1 + 40) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void *MiniMenuState._fillColor.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVSgGMd);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - v6;
  swift_getKeyPath();
  v22[0] = v0;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fillColor;
  result = swift_beginAccess();
  if ((*(v8 + *(v5 + 36)) & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (v10)
      {
        v11 = (v10 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
        v13 = *v11;
        v12 = v11[1];
        v14 = v11[2];
        v15 = *(v11 + 24);
        v16 = *((*MEMORY[0x1E69E7D40] & *result) + 0x5D8);
        v20 = result;
        v16(v22, v13, v12, v14, v15);
        v17 = v23;
        v18 = v24;
        v19[1] = __swift_project_boxed_opaque_existential_1(v22, v23);
        swift_getKeyPath();
        v21 = v0;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        outlined init with copy of Date?(v8, v7, &_s8PaperKit9InspectedVyAA5ColorVSgGMd);
        outlined init with take of Color?(v7, v3);
        (*(v18 + 96))(v3, v17, v18);

        return __swift_destroy_boxed_opaque_existential_0(v22);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void *MiniMenuState._strokeColor.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVSgGMd);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - v6;
  swift_getKeyPath();
  v22[0] = v0;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strokeColor;
  result = swift_beginAccess();
  if ((*(v8 + *(v5 + 36)) & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (v10)
      {
        v11 = (v10 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
        v13 = *v11;
        v12 = v11[1];
        v14 = v11[2];
        v15 = *(v11 + 24);
        v16 = *((*MEMORY[0x1E69E7D40] & *result) + 0x5D8);
        v20 = result;
        v16(v22, v13, v12, v14, v15);
        v17 = v23;
        v18 = v24;
        v19[1] = __swift_project_boxed_opaque_existential_1(v22, v23);
        swift_getKeyPath();
        v21 = v0;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        outlined init with copy of Date?(v8, v7, &_s8PaperKit9InspectedVyAA5ColorVSgGMd);
        outlined init with take of Color?(v7, v3);
        (*(v18 + 120))(v3, v17, v18);

        return __swift_destroy_boxed_opaque_existential_0(v22);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t closure #1 in MiniMenuState.fillColor.setter(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  outlined init with copy of Date?(a2, &v17 - v12, a3);
  v14 = *a5;
  swift_beginAccess();
  outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v13, a1 + v14, a3);
  v15 = swift_endAccess();
  a6(v15);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v13, a3);
}

void *MiniMenuState._strokeWidth.didset()
{
  swift_getKeyPath();
  v7[0] = v0;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = (v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strokeWidth);
  if ((*(v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strokeWidth + 8) & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (v3)
      {
        v4 = result;
        (*((*MEMORY[0x1E69E7D40] & *result) + 0x5D8))(v7, *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24));
        v5 = v8;
        v6 = v9;
        __swift_project_boxed_opaque_existential_1(v7, v8);
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        (*(v6 + 144))(*v2, 0, v5, v6);

        return __swift_destroy_boxed_opaque_existential_0(v7);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t key path setter for MiniMenuState.strokeWidth : MiniMenuState()
{
  return key path setter for MiniMenuState.strokeWidth : MiniMenuState();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void *MiniMenuState._fontName.didset()
{
  swift_getKeyPath();
  v10[0] = v0;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = (v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontName);
  result = swift_beginAccess();
  if ((v1[2] & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (v3)
      {
        v4 = result;
        (*((*MEMORY[0x1E69E7D40] & *result) + 0x5D8))(v10, *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24));
        v5 = v11;
        v6 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v7 = *v1;
        v8 = v1[1];
        v9 = *(v6 + 176);

        v9(v7, v8, v5, v6);

        return __swift_destroy_boxed_opaque_existential_0(v10);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t MiniMenuState.fontName.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = (v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t (*MiniMenuState._fontName.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MiniMenuState._fontName.modify;
}

uint64_t key path getter for MiniMenuState.fontName : MiniMenuState@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontName;
  swift_beginAccess();
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
}

uint64_t key path setter for MiniMenuState.fontName : MiniMenuState()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void *closure #1 in MiniMenuState.fontName.setter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontName;
  swift_beginAccess();
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;

  return MiniMenuState._fontName.didset();
}

void (*MiniMenuState.fontName.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit13MiniMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = MiniMenuState._fontName.modify(v4);
  return MiniMenuState.fontName.modify;
}

void *MiniMenuState._fontSize.didset()
{
  swift_getKeyPath();
  v7[0] = v0;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontSize;
  result = swift_beginAccess();
  if ((*(v1 + 8) & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (v3)
      {
        v4 = result;
        (*((*MEMORY[0x1E69E7D40] & *result) + 0x5D8))(v7, *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24));
        v5 = v8;
        v6 = v9;
        __swift_project_boxed_opaque_existential_1(v7, v8);
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        (*(v6 + 200))(*v1, v5, v6);

        return __swift_destroy_boxed_opaque_existential_0(v7);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t (*MiniMenuState._fontSize.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MiniMenuState._fontSize.modify;
}

uint64_t key path getter for MiniMenuState.fontSize : MiniMenuState@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontSize;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a2 = *v4;
  *(a2 + 8) = v6;
  return result;
}

uint64_t key path setter for MiniMenuState.fontSize : MiniMenuState()
{
  return key path setter for MiniMenuState.fontSize : MiniMenuState();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*MiniMenuState.fontSize.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit13MiniMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = MiniMenuState._fontSize.modify(v4);
  return MiniMenuState.fontSize.modify;
}

void *MiniMenuState._bold.didset()
{
  swift_getKeyPath();
  v7[0] = v0;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = (v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__bold);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (v3)
      {
        v4 = result;
        (*((*MEMORY[0x1E69E7D40] & *result) + 0x5D8))(v7, *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24));
        v5 = v8;
        v6 = v9;
        __swift_project_boxed_opaque_existential_1(v7, v8);
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        (*(v6 + 248))(*v1, v5, v6);

        return __swift_destroy_boxed_opaque_existential_0(v7);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t (*MiniMenuState._bold.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MiniMenuState._bold.modify;
}

uint64_t key path setter for MiniMenuState.bold : MiniMenuState()
{
  return key path setter for MiniMenuState.bold : MiniMenuState();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*MiniMenuState.bold.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit13MiniMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = MiniMenuState._bold.modify(v4);
  return MiniMenuState.bold.modify;
}

void *MiniMenuState._italic.didset()
{
  swift_getKeyPath();
  v7[0] = v0;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = (v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__italic);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (v3)
      {
        v4 = result;
        (*((*MEMORY[0x1E69E7D40] & *result) + 0x5D8))(v7, *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24));
        v5 = v8;
        v6 = v9;
        __swift_project_boxed_opaque_existential_1(v7, v8);
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        (*(v6 + 272))(*v1, v5, v6);

        return __swift_destroy_boxed_opaque_existential_0(v7);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t (*MiniMenuState._italic.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MiniMenuState._italic.modify;
}

void (*MiniMenuState.italic.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit13MiniMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = MiniMenuState._italic.modify(v4);
  return MiniMenuState.italic.modify;
}

void *MiniMenuState._underline.didset()
{
  swift_getKeyPath();
  v7[0] = v0;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = (v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__underline);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (v3)
      {
        v4 = result;
        (*((*MEMORY[0x1E69E7D40] & *result) + 0x5D8))(v7, *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24));
        v5 = v8;
        v6 = v9;
        __swift_project_boxed_opaque_existential_1(v7, v8);
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        (*(v6 + 296))(*v1, v5, v6);

        return __swift_destroy_boxed_opaque_existential_0(v7);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t (*MiniMenuState._underline.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MiniMenuState._underline.modify;
}

void (*MiniMenuState.underline.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit13MiniMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = MiniMenuState._underline.modify(v4);
  return MiniMenuState.underline.modify;
}

void *MiniMenuState._strikethrough.didset()
{
  swift_getKeyPath();
  v7[0] = v0;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = (v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strikethrough);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (v3)
      {
        v4 = result;
        (*((*MEMORY[0x1E69E7D40] & *result) + 0x5D8))(v7, *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24));
        v5 = v8;
        v6 = v9;
        __swift_project_boxed_opaque_existential_1(v7, v8);
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        (*(v6 + 320))(*v1, v5, v6);

        return __swift_destroy_boxed_opaque_existential_0(v7);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t MiniMenuState.bold.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v2 + *a2);
  swift_beginAccess();
  if (v4[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return v5 | *v4;
}

uint64_t (*MiniMenuState._strikethrough.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MiniMenuState._strikethrough.modify;
}

uint64_t key path getter for MiniMenuState.bold : MiniMenuState@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v5 + *a2);
  result = swift_beginAccess();
  v8 = v6[1];
  *a3 = *v6;
  a3[1] = v8;
  return result;
}

void (*MiniMenuState.strikethrough.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit13MiniMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = MiniMenuState._strikethrough.modify(v4);
  return MiniMenuState.strikethrough.modify;
}

void *MiniMenuState._textAlignment.didset()
{
  swift_getKeyPath();
  v7[0] = v0;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__textAlignment;
  result = swift_beginAccess();
  if ((*(v1 + 8) & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (v3)
      {
        v4 = result;
        (*((*MEMORY[0x1E69E7D40] & *result) + 0x5D8))(v7, *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24));
        v5 = v8;
        v6 = v9;
        __swift_project_boxed_opaque_existential_1(v7, v8);
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        (*(v6 + 224))(*v1, v5, v6);

        return __swift_destroy_boxed_opaque_existential_0(v7);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t MiniMenuState.fontSize.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v2 + *a2;
  swift_beginAccess();
  return *v4;
}

uint64_t (*MiniMenuState._textAlignment.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MiniMenuState._textAlignment.modify;
}

uint64_t key path getter for MiniMenuState.textAlignment : MiniMenuState@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__textAlignment;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a2 = *v4;
  *(a2 + 8) = v6;
  return result;
}

void (*MiniMenuState.textAlignment.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit13MiniMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = MiniMenuState._textAlignment.modify(v4);
  return MiniMenuState.textAlignment.modify;
}

void one-time initialization function for defaultFontColor()
{
  v0 = type metadata accessor for Color(0);
  __swift_allocate_value_buffer(v0, static MiniMenuState.defaultFontColor);
  v1 = __swift_project_value_buffer(v0, static MiniMenuState.defaultFontColor);
  v2 = *(v0 + 20);
  v3 = type metadata accessor for UnknownValueProperties();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  v4 = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (v4)
  {
    v5 = v4;
    CGColorRef.calculateMinimumHeadroom.getter();
    v6 = CGColorCreateWithContentHeadroom();
    if (v6)
    {
      v7 = v6;

      *v1 = v7;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *MiniMenuState._fontColor.didset()
{
  v1 = type metadata accessor for Color(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVGMd);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - v6;
  swift_getKeyPath();
  v22[0] = v0;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontColor;
  result = swift_beginAccess();
  if ((*(v8 + *(v5 + 36)) & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (v10)
      {
        v11 = (v10 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
        v13 = *v11;
        v12 = v11[1];
        v14 = v11[2];
        v15 = *(v11 + 24);
        v16 = *((*MEMORY[0x1E69E7D40] & *result) + 0x5D8);
        v20 = result;
        v16(v22, v13, v12, v14, v15);
        v17 = v23;
        v18 = v24;
        v19[1] = __swift_project_boxed_opaque_existential_1(v22, v23);
        swift_getKeyPath();
        v21 = v0;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        outlined init with copy of Date?(v8, v7, &_s8PaperKit9InspectedVyAA5ColorVGMd);
        outlined init with take of Color(v7, v3);
        (*(v18 + 344))(v3, v17, v18);

        return __swift_destroy_boxed_opaque_existential_0(v22);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t MiniMenuState.fillColor.getter@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v9 + v7, a3, a2);
}

uint64_t (*MiniMenuState._fontColor.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MiniMenuState._fontColor.modify;
}

uint64_t MiniMenuState._fontName.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t key path getter for MiniMenuState.fillColor : MiniMenuState@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  return outlined init with copy of Date?(v7 + v8, a4, a3);
}

uint64_t key path setter for MiniMenuState.fillColor : MiniMenuState(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13[-v9];
  outlined init with copy of Date?(a1, &v13[-v9], a5);
  v11 = *a2;
  swift_getKeyPath();
  v14 = v11;
  v15 = v10;
  v16 = v11;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of StocksKitCurrencyCache.Provider?(v10, a5);
}

void (*MiniMenuState.fontColor.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8PaperKit13MiniMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = MiniMenuState._fontColor.modify(v4);
  return MiniMenuState.fontColor.modify;
}

uint64_t key path getter for MiniMenuState.grapableExpressionsState : MiniMenuState@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__grapableExpressionsState);
}

uint64_t MiniMenuState.grapableExpressionsState.setter(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__grapableExpressionsState) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void *MiniMenuState._opacity.didset()
{
  swift_getKeyPath();
  v7[0] = v0;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = (v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__opacity);
  if ((*(v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__opacity + 8) & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (v3)
      {
        v4 = result;
        (*((*MEMORY[0x1E69E7D40] & *result) + 0x5D8))(v7, *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24));
        v5 = v8;
        v6 = v9;
        __swift_project_boxed_opaque_existential_1(v7, v8);
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        (*(v6 + 416))(v5, v6, *v2);

        return __swift_destroy_boxed_opaque_existential_0(v7);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t MiniMenuState.strokeWidth.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2 + 8);
}

double key path getter for MiniMenuState.strokeWidth : MiniMenuState@<D0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = v5 + *a2;
  result = *v6;
  LOBYTE(v6) = *(v6 + 8);
  *a3 = result;
  *(a3 + 8) = v6;
  return result;
}

uint64_t key path getter for MiniMenuState.strokeWidthIsMutable : MiniMenuState@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t MiniMenuState.strokeWidthIsMutable.setter(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void MiniMenuState._opacityLiveEditElementViews.didset(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v46 = v1;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit13MiniMenuState__opacityLiveEditElementViews;
  if (*(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__opacityLiveEditElementViews))
  {
    if (a1)
    {

      _sSh2eeoiySbShyxG_ABtFZ8PaperKit20AnyCanvasElementViewC_Tt1g5(v5, a1);
      v7 = v6;

      if (v7)
      {
        return;
      }

      goto LABEL_6;
    }

LABEL_24:
    swift_getKeyPath();
    v47 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = *(v2 + v4);
    if (v23)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for AnyCanvasElementView();
        lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type AnyCanvasElementView and conformance NSObject, type metadata accessor for AnyCanvasElementView);
        Set.Iterator.init(_cocoa:)();
        v25 = v47;
        v24 = v48;
        v26 = v49;
        v27 = v50;
        v28 = v51;
      }

      else
      {
        v29 = -1 << *(v23 + 32);
        v24 = v23 + 56;
        v26 = ~v29;
        v30 = -v29;
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        else
        {
          v31 = -1;
        }

        v28 = v31 & *(v23 + 56);
        swift_bridgeObjectRetain_n();
        v27 = 0;
        v25 = v23;
      }

      v32 = (v26 + 64) >> 6;
      v33 = MEMORY[0x1E69E7D40];
      if (v25 < 0)
      {
        goto LABEL_38;
      }

      while (1)
      {
        v34 = v27;
        v35 = v28;
        v36 = v27;
        if (!v28)
        {
          break;
        }

LABEL_36:
        v37 = (v35 - 1) & v35;
        v38 = *(*(v25 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
        if (!v38)
        {
LABEL_42:
          outlined consume of Set<UIColor>.Iterator._Variant();

          return;
        }

        while (1)
        {
          (*((*v33 & *v38) + 0x1C0))();

          v27 = v36;
          v28 = v37;
          if ((v25 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_38:
          if (__CocoaSet.Iterator.next()())
          {
            type metadata accessor for AnyCanvasElementView();
            swift_dynamicCast();
            v38 = v40;
            v36 = v27;
            v37 = v28;
            if (v40)
            {
              continue;
            }
          }

          goto LABEL_42;
        }
      }

      while (1)
      {
        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v36 >= v32)
        {
          goto LABEL_42;
        }

        v35 = *(v24 + 8 * v36);
        ++v34;
        if (v35)
        {
          goto LABEL_36;
        }
      }

LABEL_45:
      __break(1u);
    }
  }

  else if (a1)
  {
LABEL_6:
    v39 = v4;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for AnyCanvasElementView();
      lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type AnyCanvasElementView and conformance NSObject, type metadata accessor for AnyCanvasElementView);
      Set.Iterator.init(_cocoa:)();
      a1 = v41;
      v8 = v42;
      v9 = v43;
      v10 = v44;
      v11 = v45;
    }

    else
    {
      v12 = -1 << *(a1 + 32);
      v8 = a1 + 56;
      v9 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(a1 + 56);

      v10 = 0;
    }

    v15 = (v9 + 64) >> 6;
    v16 = MEMORY[0x1E69E7D40];
    if (a1 < 0)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v17 = v10;
      v18 = v11;
      v19 = v10;
      if (!v11)
      {
        break;
      }

LABEL_17:
      v20 = (v18 - 1) & v18;
      v21 = *(*(a1 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
      if (!v21)
      {
LABEL_23:
        outlined consume of Set<UIColor>.Iterator._Variant();
        v4 = v39;
        goto LABEL_24;
      }

      while (1)
      {
        (*((*v16 & *v21) + 0x1C8))(1, 0);

        v10 = v19;
        v11 = v20;
        if ((a1 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_19:
        v22 = __CocoaSet.Iterator.next()();
        if (v22)
        {
          v40 = v22;
          type metadata accessor for AnyCanvasElementView();
          swift_dynamicCast();
          v21 = v46;
          v19 = v10;
          v20 = v11;
          if (v46)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        goto LABEL_23;
      }

      v18 = *(v8 + 8 * v19);
      ++v17;
      if (v18)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_45;
  }
}

uint64_t MiniMenuState.opacityLiveEditElementViews.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for MiniMenuState.opacityLiveEditElementViews : MiniMenuState@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__opacityLiveEditElementViews);
}

uint64_t MiniMenuState.opacityLiveEditElementViews.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit13MiniMenuState__opacityLiveEditElementViews;
  if (!*(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__opacityLiveEditElementViews))
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  _sSh2eeoiySbShyxG_ABtFZ8PaperKit20AnyCanvasElementViewC_Tt1g5(v4, a1);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  MiniMenuState._opacityLiveEditElementViews.didset(v7);
}

void MiniMenuState._isShowingOpacityPopover.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC8PaperKit13MiniMenuState__isShowingOpacityPopover;
  if (*(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__isShowingOpacityPopover) != v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v1 + v4) == 1)
      {
        v7 = *&v6[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
        if (!v7)
        {
          __break(1u);
          return;
        }

        v8 = v7;
        v9 = CanvasElementResizeView.resizingCanvasElements.getter();

        v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8PaperKit09AnyCanvasA4ViewC_SayAFGTt0g5Tf4g_n(v9);

        if (one-time initialization token for miniMenuLogger != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, miniMenuLogger);

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134217984;
          if ((v10 & 0xC000000000000001) != 0)
          {
            v15 = __CocoaSet.count.getter();
          }

          else
          {
            v15 = *(v10 + 16);
          }

          *(v14 + 4) = v15;

          _os_log_impl(&dword_1D38C4000, v12, v13, "Starting opacity live edit for %ld elements", v14, 0xCu);
          MEMORY[0x1DA6D0660](v14, -1, -1);
        }

        else
        {
        }

        MiniMenuState.opacityLiveEditElementViews.setter(v10);
      }

      else
      {
        if (one-time initialization token for miniMenuLogger != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, miniMenuLogger);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_1D38C4000, v17, v18, "Ending opacity live edit", v19, 2u);
          MEMORY[0x1DA6D0660](v19, -1, -1);
        }

        if (*(v2 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__opacityLiveEditElementViews))
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          return;
        }

        MiniMenuState._opacityLiveEditElementViews.didset(0);
      }
    }
  }
}

uint64_t MiniMenuState.strokeWidthIsMutable.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void MiniMenuState.isShowingOpacityPopover.setter(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__isShowingOpacityPopover);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__isShowingOpacityPopover) = v2;

    MiniMenuState._isShowingOpacityPopover.didset(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void *MiniMenuState._lineEnds.didset()
{
  swift_getKeyPath();
  v14[0] = v0;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = (v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__lineEnds);
  if ((*(v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__lineEnds + 25) & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(result + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
      if (v3)
      {
        v4 = result;
        (*((*MEMORY[0x1E69E7D40] & *result) + 0x5D8))(v14, *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16), *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24));
        v5 = v15;
        v6 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        swift_getKeyPath();
        v12 = v0;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v7 = *(v2 + 8);
        v8 = v2[2];
        v9 = *(v2 + 24);
        v12 = *v2;
        v13 = v7;
        v10 = v8;
        v11 = v9;
        (*(v6 + 392))(&v12, &v10, v5, v6);

        return __swift_destroy_boxed_opaque_existential_0(v14);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t MiniMenuState.lineEnds.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__lineEnds + 8);
  v5 = *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__lineEnds + 16);
  v6 = *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__lineEnds + 24);
  v7 = *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__lineEnds + 25);
  *a1 = *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__lineEnds);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;
  return result;
}

uint64_t key path getter for MiniMenuState.lineEnds : MiniMenuState@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__lineEnds + 8);
  v6 = *(v3 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__lineEnds + 16);
  v7 = *(v3 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__lineEnds + 24);
  v8 = *(v3 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__lineEnds + 25);
  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__lineEnds);
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  return result;
}

uint64_t key path setter for MiniMenuState.lineEnds : MiniMenuState()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t MiniMenuState.feedbackAction.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__feedbackAction);

  return v1;
}

uint64_t key path getter for MiniMenuState.feedbackAction : MiniMenuState@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__feedbackAction + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__feedbackAction);
  a2[1] = v4;
}

uint64_t key path setter for MiniMenuState.feedbackAction : MiniMenuState(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MiniMenuState.feedbackAction.setter(v1, v2);
}

uint64_t MiniMenuState.feedbackAction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__feedbackAction);
  v6 = *(v2 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__feedbackAction + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t MiniMenuState.init()()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  type metadata accessor for MiniPopoverState();
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v3 = v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fillColor;
  v4 = type metadata accessor for Color(0);
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVSgGMd);
  *(v3 + *(v6 + 28)) = 1;
  v7 = v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strokeColor;
  v5(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strokeColor, 1, 1, v4);
  *(v7 + *(v6 + 28)) = 1;
  *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strokeWidthIsMutable) = 1;
  v8 = v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strokeWidth;
  *v8 = 0x3FF0000000000000;
  *(v8 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strokeIsRequired) = 0;
  v9 = v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontName;
  *v9 = 0;
  *(v9 + 8) = 0xE000000000000000;
  *(v9 + 16) = 1;
  v10 = v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontSize;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__bold) = 256;
  *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__italic) = 256;
  *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__underline) = 256;
  *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strikethrough) = 256;
  v11 = v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__textAlignment;
  *v11 = 0;
  *(v11 + 8) = 1;
  if (one-time initialization token for defaultFontColor != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, static MiniMenuState.defaultFontColor);
  v13 = v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontColor;
  outlined init with copy of Color(v12, v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontColor);
  *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVGMd) + 28)) = 1;
  type metadata accessor for GraphableExpressionsState(0);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v14 + 24) = MEMORY[0x1E69E7CC0];
  *(v14 + 32) = 0;
  ObservationRegistrar.init()();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_unknownObjectWeakAssign();
  }

  GraphableExpressionsState.update()();
  *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__grapableExpressionsState) = v14;
  *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__boldAllowed) = 1;
  *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__italicAllowed) = 1;
  *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__hasMultipleFontSizes) = 1;
  v17 = v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__opacity;
  *v17 = 0x3FF0000000000000;
  *(v17 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__hasMultipleOpacities) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__opacityLiveEditElementViews) = 0;
  *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__isShowingOpacityPopover) = 0;
  v18 = v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__lineEnds;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 256;
  v19 = (v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__feedbackAction);
  *v19 = 0;
  v19[1] = 0;
  ObservationRegistrar.init()();
  if (*(v1 + 32))
  {
    v20 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v20);
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (!*(v1 + 40))
    {
      return v1;
    }

    goto LABEL_10;
  }

  *(v1 + 32) = 0;
  if (*(v1 + 40))
  {
LABEL_10:
    v21 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v21);
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return v1;
}

unint64_t MiniMenuState.update(from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v6 = v5;
  v176 = a4;
  v177 = a3;
  v183 = a2;
  v185 = a1;
  v8 = 0;
  v9 = type metadata accessor for Locale();
  v181 = *(v9 - 8);
  v182 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v180 = &v175[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Color(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v178 = &v175[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  result = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v175[-v15];
  if (*(v5 + 40))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v175[-16] = v5;
    *&v175[-8] = 0;
    aBlock = v5;
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v18 = *(a5 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  if (!v18)
  {
    goto LABEL_129;
  }

  (*((*MEMORY[0x1E69E7D40] & *a5) + 0x5D8))(v195, *(v18 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection), *(v18 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8), *(v18 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16), *(v18 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24));
  v19 = v196;
  v20 = v197;
  __swift_project_boxed_opaque_existential_1(v195, v196);
  v21 = (*(v20 + 16))(v19, v20);
  v184 = a5;
  if (v21 & 1) != 0 && (specialized Set.contains(_:)(5, *(a5 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet + 8)))
  {
    v179 = 0;
    v22 = v196;
    v23 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    (*(v23 + 112))(v22, v23);
    swift_getKeyPath();
    aBlock = v5;
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v5;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v24 = v5 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strokeColor;
    swift_beginAccess();
    outlined assign with take of Color?(v16, v24);
    *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVSgGMd) + 28)) = 1;
    swift_endAccess();
    MiniMenuState._strokeColor.didset();
    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v25 = v196;
    v26 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    v27 = (*(v26 + 136))(v25, v26);
    if ((v28 & 1) == 0)
    {
      v29 = v27;
      swift_getKeyPath();
      aBlock = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      aBlock = v6;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v30 = v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strokeWidth;
      *v30 = v29;
      *(v30 + 8) = 1;
      MiniMenuState._strokeWidth.didset();
      aBlock = v6;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }

    v31 = v196;
    v32 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    (*(v32 + 136))(v31, v32);
    v34 = (v33 ^ 1) & 1;
    if (v34 == *(v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strokeWidthIsMutable))
    {
      *(v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strokeWidthIsMutable) = v34;
      a5 = v184;
      v8 = v179;
    }

    else
    {
      v35 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v35);
      *&v175[-16] = v6;
      v175[-8] = v34;
      aBlock = v6;
      v8 = v179;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      a5 = v184;
    }

    v36 = v196;
    v37 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    v38 = (*(v37 + 160))(v36, v37) & 1;
    if (v38 == *(v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strokeIsRequired))
    {
      *(v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strokeIsRequired) = v38;
    }

    else
    {
      v39 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v39);
      *&v175[-16] = v6;
      v175[-8] = v38;
      aBlock = v6;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    swift_getKeyPath();
    aBlock = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v40 = *(v6 + 40);
    if ((v40 & 2) == 0)
    {
      *(v6 + 40) = v40 | 2;
    }

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  v41 = v196;
  v42 = v197;
  __swift_project_boxed_opaque_existential_1(v195, v196);
  if ((*(v42 + 8))(v41, v42))
  {
    v43 = a5 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet;
    if ((specialized Set.contains(_:)(4, *(a5 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet + 8)) & 1) != 0 || (specialized Set.contains(_:)(5, *(v43 + 1)) & 1) == 0)
    {
      v44 = v196;
      v45 = v197;
      __swift_project_boxed_opaque_existential_1(v195, v196);
      (*(v45 + 88))(v44, v45);
      swift_getKeyPath();
      aBlock = v6;
      lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      aBlock = v6;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v46 = v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fillColor;
      swift_beginAccess();
      outlined assign with take of Color?(v16, v46);
      *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVSgGMd) + 28)) = 1;
      swift_endAccess();
      MiniMenuState._fillColor.didset();
      aBlock = v6;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      swift_getKeyPath();
      aBlock = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      aBlock = v6;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v47 = *(v6 + 40);
      if ((v47 & 1) == 0)
      {
        *(v6 + 40) = v47 | 1;
      }

      aBlock = v6;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      a5 = v184;
    }
  }

  v48 = v196;
  v49 = v197;
  __swift_project_boxed_opaque_existential_1(v195, v196);
  if ((*(v49 + 24))(v48, v49) & 1) != 0 && (specialized Set.contains(_:)(7, *(a5 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet + 8)))
  {
    v179 = v8;
    v50 = v196;
    v51 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    v52 = v178;
    (*(v51 + 336))(v50, v51);
    swift_getKeyPath();
    aBlock = v6;
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v53 = v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontColor;
    swift_beginAccess();
    outlined assign with take of Color(v52, v53);
    *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVGMd) + 28)) = 1;
    swift_endAccess();
    MiniMenuState._fontColor.didset();
    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    aBlock = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v54 = *(v6 + 40);
    if ((v54 & 4) == 0)
    {
      *(v6 + 40) = v54 | 4;
    }

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v8 = v179;
  }

  v55 = v196;
  v56 = v197;
  __swift_project_boxed_opaque_existential_1(v195, v196);
  if ((*(v56 + 32))(v55, v56) & 1) != 0 && (specialized Set.contains(_:)(7, *(a5 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet + 8)))
  {
    v179 = v8;
    v57 = v196;
    v58 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    v59 = (*(v58 + 168))(v57, v58);
    v61 = v60;
    swift_getKeyPath();
    aBlock = v6;
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v62 = v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontName;
    swift_beginAccess();
    *v62 = v59;
    *(v62 + 8) = v61;
    *(v62 + 16) = 1;

    MiniMenuState._fontName.didset();
    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v63 = v196;
    v64 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    v65 = (*(v64 + 192))(v63, v64);
    swift_getKeyPath();
    aBlock = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v66 = v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontSize;
    swift_beginAccess();
    *v66 = v65;
    *(v66 + 8) = 1;
    MiniMenuState._fontSize.didset();
    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v67 = v196;
    v68 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    v69 = (*(v68 + 216))(v67, v68);
    swift_getKeyPath();
    aBlock = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v70 = v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__textAlignment;
    swift_beginAccess();
    *v70 = v69;
    *(v70 + 8) = 1;
    MiniMenuState._textAlignment.didset();
    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v71 = v196;
    v72 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    LOBYTE(v72) = (*(v72 + 240))(v71, v72);
    swift_getKeyPath();
    aBlock = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v73 = (v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__bold);
    swift_beginAccess();
    *v73 = v72 & 1;
    v73[1] = 1;
    MiniMenuState._bold.didset();
    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v74 = v196;
    v75 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    LOBYTE(v75) = (*(v75 + 264))(v74, v75);
    swift_getKeyPath();
    aBlock = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v76 = (v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__italic);
    swift_beginAccess();
    *v76 = v75 & 1;
    v76[1] = 1;
    MiniMenuState._italic.didset();
    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v77 = v196;
    v78 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    LOBYTE(v78) = (*(v78 + 288))(v77, v78);
    swift_getKeyPath();
    aBlock = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v79 = (v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__underline);
    swift_beginAccess();
    *v79 = v78 & 1;
    v79[1] = 1;
    MiniMenuState._underline.didset();
    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v80 = v196;
    v81 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    LOBYTE(v81) = (*(v81 + 312))(v80, v81);
    swift_getKeyPath();
    aBlock = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v82 = (v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strikethrough);
    swift_beginAccess();
    *v82 = v81 & 1;
    v82[1] = 1;
    MiniMenuState._strikethrough.didset();
    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v83 = v196;
    v84 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    v85 = v178;
    (*(v84 + 336))(v83, v84);
    swift_getKeyPath();
    aBlock = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v86 = v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontColor;
    swift_beginAccess();
    outlined assign with take of Color(v85, v86);
    *(v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVGMd) + 28)) = 1;
    swift_endAccess();
    MiniMenuState._fontColor.didset();
    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v87 = v196;
    v88 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    v89 = (*(v88 + 360))(v87, v88) & 1;
    if (v89 == *(v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__boldAllowed))
    {
      *(v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__boldAllowed) = v89;
      v8 = v179;
    }

    else
    {
      v90 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v90);
      *&v175[-16] = v6;
      v175[-8] = v89;
      aBlock = v6;
      v8 = v179;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v91 = v196;
    v92 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    v93 = (*(v92 + 368))(v91, v92) & 1;
    a5 = v184;
    if (v93 == *(v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__italicAllowed))
    {
      *(v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__italicAllowed) = v93;
    }

    else
    {
      v94 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v94);
      *&v175[-16] = v6;
      v175[-8] = v93;
      aBlock = v6;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v95 = v196;
    v96 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    v97 = (*(v96 + 376))(v95, v96) & 1;
    if (v97 == *(v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__hasMultipleFontSizes))
    {
      *(v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__hasMultipleFontSizes) = v97;
    }

    else
    {
      v98 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v98);
      *&v175[-16] = v6;
      v175[-8] = v97;
      aBlock = v6;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    swift_getKeyPath();
    aBlock = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v99 = *(v6 + 40);
    if ((v99 & 8) == 0)
    {
      *(v6 + 40) = v99 | 8;
    }

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  v100 = v196;
  v101 = v197;
  __swift_project_boxed_opaque_existential_1(v195, v196);
  if (((*(v101 + 40))(v100, v101) & 1) != 0 && (*(a5 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet + 32) & (*(a5 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet + 32) - 1)) != 0)
  {
    v179 = v8;
    v102 = v196;
    v103 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    (*(v103 + 384))(&aBlock, &v187, v102, v103);
    v178 = aBlock;
    v104 = v190;
    v105 = v187;
    LOBYTE(v103) = v188;
    swift_getKeyPath();
    v186 = v6;
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v186 = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v106 = v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__lineEnds;
    *v106 = v178;
    *(v106 + 8) = v104;
    *(v106 + 16) = v105;
    *(v106 + 24) = v103;
    *(v106 + 25) = 1;
    MiniMenuState._lineEnds.didset();
    v186 = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    aBlock = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v107 = *(v6 + 40);
    if ((v107 & 0x10) == 0)
    {
      *(v6 + 40) = v107 | 0x10;
    }

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    a5 = v184;
  }

  v108 = v196;
  v109 = v197;
  __swift_project_boxed_opaque_existential_1(v195, v196);
  if ((*(v109 + 48))(v108, v109) & 1) != 0 && (specialized Set.contains(_:)(6, *(a5 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet + 8)))
  {
    v110 = v196;
    v111 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    v112 = (*(v111 + 408))(v110, v111);
    swift_getKeyPath();
    aBlock = v6;
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v113 = v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__opacity;
    *v113 = v112;
    *(v113 + 8) = 1;
    MiniMenuState._opacity.didset();
    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v114 = v196;
    v115 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    v116 = (*(v115 + 432))(v114, v115) & 1;
    if (v116 == *(v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__hasMultipleOpacities))
    {
      *(v6 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__hasMultipleOpacities) = v116;
    }

    else
    {
      v117 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v117);
      *&v175[-16] = v6;
      v175[-8] = v116;
      aBlock = v6;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    swift_getKeyPath();
    aBlock = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v118 = *(v6 + 40);
    if ((v118 & 0x20) == 0)
    {
      *(v6 + 40) = v118 | 0x20;
    }

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  v119 = v196;
  v120 = v197;
  __swift_project_boxed_opaque_existential_1(v195, v196);
  if ((*(v120 + 56))(v119, v120))
  {
    swift_getKeyPath();
    aBlock = v6;
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v121 = *(v6 + 40);
    if ((v121 & 0x200) == 0)
    {
      *(v6 + 40) = v121 | 0x200;
    }

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  v122 = v196;
  v123 = v197;
  __swift_project_boxed_opaque_existential_1(v195, v196);
  v124 = (*(v123 + 440))(v122, v123);
  if (v124)
  {
    swift_getKeyPath();
    aBlock = v6;
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v125 = *(v6 + 40);
    if ((v125 & 0x10000) == 0)
    {
      *(v6 + 40) = v125 | 0x10000;
    }

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  if (*(v183 + 16) && !*(v185 + 16))
  {
    v126 = *((*MEMORY[0x1E69E7D40] & *a5) + 0x468);
    v127 = (v126)(v124);
    if (v127)
    {
      v128 = v127;
      v129 = [v127 insertSpaceEnabled];

      if (v129)
      {
        swift_getKeyPath();
        aBlock = v6;
        lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        aBlock = v6;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        v130 = *(v6 + 40);
        if ((v130 & 0x800) == 0)
        {
          *(v6 + 40) = v130 | 0x800;
        }

        aBlock = v6;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        a5 = v184;
      }
    }

    v131 = v126();
    if (v131)
    {
      v132 = v131;
      v133 = [v131 selectionSupportsCopyAsText];

      if (v133)
      {
        swift_getKeyPath();
        aBlock = v6;
        lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        aBlock = v6;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        v134 = *(v6 + 40);
        if ((v134 & 0x400) == 0)
        {
          *(v6 + 40) = v134 | 0x400;
        }

        aBlock = v6;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        swift_getKeyPath();
        aBlock = v6;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        aBlock = v6;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        v135 = *(v6 + 40);
        if ((v135 & 0x2000) == 0)
        {
          *(v6 + 40) = v135 | 0x2000;
        }

        aBlock = v6;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        v137 = (v126)(v136);
        if (v137)
        {
          v138 = v137;
          v139 = [v137 selectionSupportsTranslate];

          if (v139)
          {
            swift_getKeyPath();
            aBlock = v6;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            aBlock = v6;
            swift_getKeyPath();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();

            v140 = *(v6 + 40);
            if ((v140 & 0x1000) == 0)
            {
              *(v6 + 40) = v140 | 0x1000;
            }

            aBlock = v6;
            swift_getKeyPath();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();
          }
        }

        v141 = v184;
        v142 = (v126)(v137);
        a5 = v141;
        if (v142)
        {
          v143 = v142;
          v144 = swift_allocObject();
          swift_weakInit();
          v193 = partial apply for closure #1 in MiniMenuState.update(from:in:);
          v194 = v144;
          aBlock = MEMORY[0x1E69E9820];
          v190 = 1107296256;
          v191 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
          v192 = &block_descriptor_45;
          v145 = _Block_copy(&aBlock);

          [v143 selectionSupportsRefinement_];
          _Block_release(v145);
        }
      }
    }

    v146 = v126();
    if (v146)
    {
      v147 = v146;
      v148 = [v146 selectionSupportsSnapToShape];

      if (v148)
      {
        swift_getKeyPath();
        aBlock = v6;
        lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        aBlock = v6;
        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        v149 = *(v6 + 40);
        if ((v149 & 0x8000) == 0)
        {
          *(v6 + 40) = v149 | 0x8000;
        }

        aBlock = v6;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();
      }
    }

    v192 = &type metadata for PencilAndPaperFeatureFlags;
    v193 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
    LOBYTE(aBlock) = 8;
    v150 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    if (v150)
    {
      swift_getKeyPath();
      aBlock = v6;
      lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      aBlock = v6;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v151 = *(v6 + 40);
      if ((v151 & 0x100000) == 0)
      {
        *(v6 + 40) = v151 | 0x100000;
      }

      aBlock = v6;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }
  }

  v152 = v196;
  v153 = v197;
  __swift_project_boxed_opaque_existential_1(v195, v196);
  if ((*(v153 + 64))(v152, v153))
  {
    swift_getKeyPath();
    aBlock = v6;
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v154 = *(v6 + 40);
    if ((v154 & 0x80) == 0)
    {
      *(v6 + 40) = v154 | 0x80;
    }

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    aBlock = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v155 = *(v6 + 40);
    if ((v155 & 0x80000) == 0)
    {
      *(v6 + 40) = v155 | 0x80000;
    }

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  v156 = v196;
  v157 = v197;
  __swift_project_boxed_opaque_existential_1(v195, v196);
  if ((*(v157 + 72))(v156, v157))
  {
    swift_getKeyPath();
    aBlock = v6;
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v158 = *(v6 + 40);
    if ((v158 & 0x40) == 0)
    {
      *(v6 + 40) = v158 | 0x40;
    }

    aBlock = v6;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  v159 = v196;
  v160 = v197;
  __swift_project_boxed_opaque_existential_1(v195, v196);
  if ((*(v160 + 80))(v159, v160))
  {
    v161 = v196;
    v162 = v197;
    __swift_project_boxed_opaque_existential_1(v195, v196);
    if (((*(v162 + 64))(v161, v162) & 1) == 0)
    {
      swift_getKeyPath();
      aBlock = v6;
      lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      aBlock = v6;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v163 = *(v6 + 40);
      if ((v163 & 0x40000) == 0)
      {
        *(v6 + 40) = v163 | 0x40000;
      }

      aBlock = v6;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }
  }

  v164 = [objc_opt_self() autoupdatingCurrentLocale];
  v165 = v180;
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v181 + 8))(v165, v182);
  v167 = CHGetPersonalizedSynthesisSupportStateForLocale();

  if (v167 >= 4)
  {
    swift_getKeyPath();
    aBlock = v6;
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v6 + 40) & 8) != 0 && ((*((*MEMORY[0x1E69E7D40] & *a5) + 0x738))(v185, v183, v177, v176 & 1))
    {
      swift_getKeyPath();
      aBlock = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      aBlock = v6;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v168 = *(v6 + 40);
      if ((v168 & 0x100) == 0)
      {
        *(v6 + 40) = v168 | 0x100;
      }

      aBlock = v6;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }
  }

  result = specialized CanvasMembers.views(in:)(a5, v185);
  if (result >> 62)
  {
    v173 = result;
    if (__CocoaSet.count.getter() == 1)
    {
      v174 = __CocoaSet.count.getter();
      result = v173;
      if (v174)
      {
        goto LABEL_115;
      }
    }

LABEL_125:

    return __swift_destroy_boxed_opaque_existential_0(v195);
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_125;
  }

LABEL_115:
  if ((result & 0xC000000000000001) != 0)
  {
    v169 = MEMORY[0x1DA6CE0C0](0);
    goto LABEL_118;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v169 = *(result + 32);
LABEL_118:
    v170 = v169;

    type metadata accessor for GraphCanvasElementView(0);
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      aBlock = v6;
      lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      aBlock = v6;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v171 = *(v6 + 40);
      if ((v171 & 0x20000) == 0)
      {
        *(v6 + 40) = v171 | 0x20000;
      }

      aBlock = v6;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      v172 = GraphCanvasElementView.cachedGraphableExpressionsState.getter();
      MiniMenuState.grapableExpressionsState.setter(v172);
    }

    return __swift_destroy_boxed_opaque_existential_0(v195);
  }

  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

Swift::Void __swiftcall MiniMenuState.startUpdate()()
{
  v1 = (v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__feedbackAction);
  if (*(v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__feedbackAction + 8))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *v1 = 0;
    v1[1] = 0;
  }
}

uint64_t closure #1 in MiniMenuState.update(from:in:)(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  if (a1)
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    type metadata accessor for MainActor();

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = a2;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb8inserted_8PaperKit15MiniMenuOptionsV17memberAfterInserttSg_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in MiniMenuState.update(from:in:), v10);
  }

  return result;
}

uint64_t closure #1 in closure #1 in MiniMenuState.update(from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in MiniMenuState.update(from:in:), v6, v5);
}

uint64_t closure #1 in closure #1 in MiniMenuState.update(from:in:)()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    v0[5] = v2;
    lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[5] = v2;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v3 = *(v2 + 40);
    v4 = v3 & 0x4000;
    if ((v3 & 0x4000) == 0)
    {
      *(v2 + 40) = v3 | 0x4000;
    }

    v0[5] = v2;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v5 = (v4 >> 14) ^ 1;
    v6 = 0x4000;
  }

  else
  {
    v6 = 0;
    v5 = 2;
  }

  v7 = v0[6];
  *v7 = v5;
  v7[1] = v6;
  v8 = v0[1];

  return v8();
}

uint64_t MiniMenuState.deinit()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fillColor, &_s8PaperKit9InspectedVyAA5ColorVSgGMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__strokeColor, &_s8PaperKit9InspectedVyAA5ColorVSgGMd);

  outlined destroy of StocksKitCurrencyCache.Provider?(v0 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontColor, &_s8PaperKit9InspectedVyAA5ColorVGMd);

  v1 = OBJC_IVAR____TtC8PaperKit13MiniMenuState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MiniMenuState.__deallocating_deinit()
{
  MiniMenuState.deinit();

  return swift_deallocClassInstance();
}

void type metadata completion function for MiniMenuState()
{
  type metadata accessor for Inspected<Color?>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Inspected<Color>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Inspected<Color?>()
{
  if (!lazy cache variable for type metadata for Inspected<Color?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit5ColorVSgMd);
    v0 = type metadata accessor for Inspected();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Inspected<Color?>);
    }
  }
}

void type metadata accessor for Inspected<Color>()
{
  if (!lazy cache variable for type metadata for Inspected<Color>)
  {
    type metadata accessor for Color(255);
    v0 = type metadata accessor for Inspected();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Inspected<Color>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MiniMenuOptions and conformance MiniMenuOptions()
{
  result = lazy protocol witness table cache variable for type MiniMenuOptions and conformance MiniMenuOptions;
  if (!lazy protocol witness table cache variable for type MiniMenuOptions and conformance MiniMenuOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MiniMenuOptions and conformance MiniMenuOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MiniMenuOptions and conformance MiniMenuOptions;
  if (!lazy protocol witness table cache variable for type MiniMenuOptions and conformance MiniMenuOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MiniMenuOptions and conformance MiniMenuOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MiniMenuOptions and conformance MiniMenuOptions;
  if (!lazy protocol witness table cache variable for type MiniMenuOptions and conformance MiniMenuOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MiniMenuOptions and conformance MiniMenuOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MiniMenuOptions and conformance MiniMenuOptions;
  if (!lazy protocol witness table cache variable for type MiniMenuOptions and conformance MiniMenuOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MiniMenuOptions and conformance MiniMenuOptions);
  }

  return result;
}

uint64_t (*protocol witness for TextFormattingState.fontName.modify in conformance MiniMenuState(uint64_t **a1))()
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
  v2[4] = MiniMenuState.fontName.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t (*protocol witness for TextFormattingState.fontSize.modify in conformance MiniMenuState(uint64_t **a1))()
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
  v2[4] = MiniMenuState.fontSize.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t protocol witness for TextFormattingState.fontSize.getter in conformance MiniMenuState(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = v4 + *a4;
  swift_beginAccess();
  return *v6;
}

uint64_t protocol witness for TextFormattingState.textAlignment.setter in conformance MiniMenuState()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t (*protocol witness for TextFormattingState.textAlignment.modify in conformance MiniMenuState(uint64_t **a1))()
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
  v2[4] = MiniMenuState.textAlignment.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t protocol witness for TextFormattingState.bold.setter in conformance MiniMenuState()
{
  return protocol witness for TextFormattingState.bold.setter in conformance MiniMenuState();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t (*protocol witness for TextFormattingState.bold.modify in conformance MiniMenuState(uint64_t **a1))()
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
  v2[4] = MiniMenuState.bold.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t (*protocol witness for TextFormattingState.italic.modify in conformance MiniMenuState(uint64_t **a1))()
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
  v2[4] = MiniMenuState.italic.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t (*protocol witness for TextFormattingState.underline.modify in conformance MiniMenuState(uint64_t **a1))()
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
  v2[4] = MiniMenuState.underline.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t protocol witness for TextFormattingState.bold.getter in conformance MiniMenuState(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v4 + *a4);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  return v7 | *v6;
}

uint64_t (*protocol witness for TextFormattingState.strikethrough.modify in conformance MiniMenuState(uint64_t **a1))()
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
  v2[4] = MiniMenuState.strikethrough.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

uint64_t protocol witness for TextFormattingState.fontColor.getter in conformance MiniMenuState@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC8PaperKit13MiniMenuState__fontColor;
  swift_beginAccess();
  return outlined init with copy of Date?(v5 + v3, a1, &_s8PaperKit9InspectedVyAA5ColorVGMd);
}

uint64_t protocol witness for TextFormattingState.fontColor.setter in conformance MiniMenuState(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit9InspectedVyAA5ColorVGMd);
}

uint64_t (*protocol witness for TextFormattingState.fontColor.modify in conformance MiniMenuState(uint64_t **a1))()
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
  v2[4] = MiniMenuState.fontColor.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t protocol witness for TextFormattingState.boldAllowed.getter in conformance MiniMenuState(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v4 + *a4);
}

uint64_t protocol witness for MiniMenuStateProtocol.init() in conformance MiniMenuState()
{
  v0 = swift_allocObject();
  MiniMenuState.init()();
  return v0;
}

uint64_t instantiation function for generic protocol witness table for MiniMenuState(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for MiniCropMenuState(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type MiniCropMenuState and conformance MiniCropMenuState, type metadata accessor for MiniCropMenuState);
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #1 in MiniMenuState.strikethrough.setter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 25);
  v6 = (*(v2 + 16) + *a1);
  v7 = swift_beginAccess();
  *v6 = v4;
  v6[1] = v5;
  return a2(v7);
}

uint64_t partial apply for closure #1 in MiniMenuState.textAlignment.setter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 16) + *a1;
  v7 = swift_beginAccess();
  *v6 = v4;
  *(v6 + 8) = v5;
  return a2(v7);
}

uint64_t key path getter for GraphableExpressionsState.view : GraphableExpressionsState@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MiniMenuState and conformance MiniMenuState(&lazy protocol witness table cache variable for type GraphableExpressionsState and conformance GraphableExpressionsState, type metadata accessor for GraphableExpressionsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void key path setter for GraphableExpressionsState.view : GraphableExpressionsState(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  GraphableExpressionsState.view.setter(v1);
}

uint64_t partial apply for closure #1 in MiniCropMenuState.popoverState.setter()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

{
  return partial apply for closure #1 in MiniMenuState.popoverState.setter();
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined assign with take of Color?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Color?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *partial apply for closure #1 in MiniMenuState.lineEnds.setter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 49);
  v5 = *(v0 + 16) + OBJC_IVAR____TtC8PaperKit13MiniMenuState__lineEnds;
  *v5 = *(v0 + 24);
  *(v5 + 8) = v1;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 25) = v4;
  return MiniMenuState._lineEnds.didset();
}

uint64_t partial apply for closure #1 in MiniMenuState.strokeWidth.setter(void *a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 16) + *a1;
  *v4 = *(v2 + 24);
  *(v4 + 8) = v3;
  return a2();
}

uint64_t partial apply for closure #1 in closure #1 in MiniMenuState.update(from:in:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in closure #1 in MiniMenuState.update(from:in:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in MiniMenuState.grapableExpressionsState.setter()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC8PaperKit13MiniMenuState__grapableExpressionsState) = *(v0 + 24);
}

uint64_t partial apply for closure #1 in MiniMenuState.feedbackAction.setter()
{
  return partial apply for closure #1 in MiniMenuState.feedbackAction.setter();
}

{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC8PaperKit13MiniMenuState__feedbackAction);
  *v2 = v0[3];
  v2[1] = v1;
}

void partial apply for closure #1 in MiniMenuState.isShowingOpacityPopover.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__isShowingOpacityPopover);
  *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__isShowingOpacityPopover) = *(v0 + 24);
  MiniMenuState._isShowingOpacityPopover.didset(v2);
}

uint64_t partial apply for closure #1 in MiniMenuState.opacityLiveEditElementViews.setter()
{
  return partial apply for closure #1 in MiniMenuState.opacityLiveEditElementViews.setter();
}

{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__opacityLiveEditElementViews);
  *(v1 + OBJC_IVAR____TtC8PaperKit13MiniMenuState__opacityLiveEditElementViews) = *(v0 + 24);

  MiniMenuState._opacityLiveEditElementViews.didset(v2);
}

uint64_t PageId.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CRKeyPath();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v47 = 0;
  v48 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v14 = 0xE300000000000000;
  v47 = 3826793;
  v48 = 0xE300000000000000;
  outlined init with copy of Date?(v0, v13, &_s8PaperKit9PDFPageIDVSgMd);
  v15 = type metadata accessor for PDFPageID();
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v13, 1, v15);
  v18 = v1;
  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit9PDFPageIDVSgMd);
  v19 = 7104878;
  if (v17 != 1)
  {
    outlined init with copy of Date?(v1, v10, &_s8PaperKit9PDFPageIDVSgMd);
    result = v16(v10, 1, v15);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_10;
    }

    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v45 = 979857531;
    v46 = 0xE400000000000000;
    v44 = *v10;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1DA6CD010](v21);

    MEMORY[0x1DA6CD010](0x3A7465737361202CLL, 0xE800000000000000);
    v22 = CRAsset.digest.getter();
    v24 = v23;
    v25 = Data.base64EncodedString(options:)(0);
    outlined consume of Data._Representation(v22, v24);
    MEMORY[0x1DA6CD010](v25._countAndFlagsBits, v25._object);

    MEMORY[0x1DA6CD010](125, 0xE100000000000000);
    v19 = v45;
    v14 = v46;
    _s8PaperKit5ImageVWOhTm_0(v10, type metadata accessor for PDFPageID);
  }

  MEMORY[0x1DA6CD010](v19, v14);

  MEMORY[0x1DA6CD010](0x6150726570617020, 0xEB000000003A6567);
  v26 = *(type metadata accessor for PageId(0) + 20);
  v27 = v1 + v26;
  v28 = v43;
  outlined init with copy of Date?(v27, v43, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  v32 = v31(v28, 1, v29);
  outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  if (v32 == 1)
  {
    v33 = 0xE300000000000000;
    v34 = 7104878;
LABEL_8:
    MEMORY[0x1DA6CD010](v34, v33);

    return v47;
  }

  v35 = v42;
  outlined init with copy of Date?(v18 + v26, v42, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  result = v31(v35, 1, v29);
  if (result != 1)
  {
    v36 = v39;
    MEMORY[0x1DA6CB4C0](v29);
    (*(v30 + 8))(v35, v29);
    v37 = CRKeyPath.description.getter();
    v33 = v38;
    (*(v40 + 8))(v36, v41);
    v34 = v37;
    goto LABEL_8;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PaperKitPDFPage.AnnotationIDState(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ9Coherence9CRKeyPathV_Tt1g5(v2, v3);
}

void one-time initialization function for blankPageImage()
{
  v2.width = 1.0;
  v2.height = 1.0;
  UIGraphicsBeginImageContext(v2);
  v0 = UIGraphicsGetImageFromCurrentImageContext();
  if (v0)
  {
    v1 = v0;
    UIGraphicsEndImageContext();
    static PaperKitPDFPage.blankPageImage = v1;
  }

  else
  {
    __break(1u);
  }
}

void PaperKitPDFPage.copy(with:)(uint64_t a1@<X0>, char **a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for PaperKitPDFPage(0);
  v21.receiver = v2;
  v21.super_class = v8;
  objc_msgSendSuper2(&v21, sel_copyWithZone_, a1);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v9 = v20;
  v10 = *&v2[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_render];
  v11 = *&v2[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_render + 8];
  v12 = &v20[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_render];
  v13 = *&v20[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_render];
  v14 = *&v20[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_render + 8];
  *v12 = v10;
  v12[1] = v11;
  outlined copy of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v10);
  outlined consume of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v13, v14);
  v15 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  swift_beginAccess();
  outlined init with copy of Date?(&v2[v15], v7, &_s8PaperKit6PageIdVSgMd);
  v16 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  swift_beginAccess();
  outlined assign with take of UUID?(v7, &v9[v16], &_s8PaperKit6PageIdVSgMd);
  swift_endAccess();
  v17 = *&v9[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState];
  *&v9[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState] = 0;
  outlined consume of PaperKitPDFPage.AnnotationIDState(v17);
  v18 = v9;
  [v18 setBookmarked_];

  a2[3] = v8;
  *a2 = v18;
}

uint64_t PaperKitPDFPage.annotations.getter()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PaperKitPDFPage(0);
  v1 = objc_msgSendSuper2(&v8, sel_annotations);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for lock != -1)
  {
    v3 = swift_once();
  }

  v4 = static PaperKitPDFPage.lock;
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v4 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v6);
  os_unfair_lock_unlock(v4 + 4);
  return v2;
}

void closure #1 in PaperKitPDFPage.annotations.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = v36 - v7;
  v8 = type metadata accessor for CRKeyPath();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = v36 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_So13PDFAnnotationCtMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v50 = v36 - v15;
  v51 = a2;
  v16 = *(a1 + OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState);
  if (v16 < 2)
  {
    goto LABEL_23;
  }

  v37 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState;
  v38 = a1;
  v39 = v2;
  v17 = *(v16 + 16);

  v49 = v17;
  if (!v17)
  {
LABEL_20:
    outlined consume of PaperKitPDFPage.AnnotationIDState(v16);
    goto LABEL_22;
  }

  v3 = 0;
  a1 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  v36[1] = v18;
  v45 = a2 & 0xFFFFFFFFFFFFFF8;
  v46 = a2 & 0xC000000000000001;
  v19 = (v9 + 32);
  v40 = (v9 + 8);
  v41 = (v9 + 56);
  v47 = a2 >> 62;
  v48 = v9 + 16;
  v44 = (v9 + 32);
  v42 = v16;
  while (1)
  {
    if (v3 >= *(v16 + 16))
    {
      goto LABEL_39;
    }

    (*(v9 + 16))(v53, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v3, v8);
    if (v47)
    {
      break;
    }

    if (v3 == *(a1 + 16))
    {
      goto LABEL_21;
    }

LABEL_12:
    if (v46)
    {
      v24 = MEMORY[0x1DA6CE0C0](v3, a2);
    }

    else
    {
      if (v3 >= *(a1 + 16))
      {
        goto LABEL_40;
      }

      v24 = *(a2 + 8 * v3 + 32);
    }

    v25 = v24;
    v26 = *v19;
    v27 = v50;
    (*v19)(v50, v53, v8);
    v26(v11, v27, v8);
    type metadata accessor for CanvasElementPDFAnnotation();
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      v20 = v28;
      v21 = v43;
      v26(v43, v11, v8);
      (*v41)(v21, 0, 1, v8);
      v22 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
      swift_beginAccess();
      v23 = v21;
      v16 = v42;
      outlined assign with take of UUID?(v23, v20 + v22, &_s9Coherence9CRKeyPathVSgMd);
      swift_endAccess();
    }

    else
    {

      (*v40)(v11, v8);
    }

    v19 = v44;
    a1 = v45;
    ++v3;
    a2 = v51;
    if (v49 == v3)
    {
      goto LABEL_20;
    }
  }

  if (v3 != __CocoaSet.count.getter())
  {
    goto LABEL_12;
  }

LABEL_21:
  outlined consume of PaperKitPDFPage.AnnotationIDState(v16);
  (*v40)(v53, v8);
LABEL_22:
  a1 = v38;
  v29 = *(v38 + v37);
  *(v38 + v37) = 1;
  outlined consume of PaperKitPDFPage.AnnotationIDState(v29);
  v3 = v39;
LABEL_23:
  v8 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_appearanceStreamAnnotations;
  if (!*(a1 + OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_appearanceStreamAnnotations))
  {
    v52 = MEMORY[0x1E69E7CC0];
    if (a2 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v53 = v8;
      v38 = a1;
      v39 = v3;
      v3 = 0;
      v31 = a2 & 0xC000000000000001;
      v32 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v31)
        {
          v33 = MEMORY[0x1DA6CE0C0](v3, a2);
        }

        else
        {
          if (v3 >= *(v32 + 16))
          {
            goto LABEL_38;
          }

          v33 = *(a2 + 8 * v3 + 32);
        }

        a1 = v33;
        v34 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if ([v33 hasAppearanceStream])
        {
          v8 = &v52;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          a2 = v51;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v3;
        if (v34 == i)
        {
          v35 = v52;
          a1 = v38;
          v8 = v53;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

    v35 = MEMORY[0x1E69E7CC0];
LABEL_43:
    *&v8[a1] = v35;
  }
}

uint64_t PaperKitPDFPage.hasFormWidgets.getter()
{
  v1 = [v0 annotations];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isTextWidget] && objc_msgSend(v6, sel_isActivatableTextField))
      {

LABEL_20:
        i = 1;
        goto LABEL_21;
      }

      type metadata accessor for CanvasElementPDFAnnotation();
      v8 = swift_dynamicCastClassUnconditional();
      v9 = v6;
      v10 = 0;
      if ([v8 respondsToSelector_])
      {
        v10 = [v8 isSignatureWidget];
      }

      if ([v8 respondsToSelector_])
      {
        v11 = [v8 &selRef_copy_ + 7];

        if (v10 & v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        i = 0;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_21:

  return i;
}

uint64_t closure #1 in PaperKitPDFPage.annotationFor(id:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CRKeyPath();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  type metadata accessor for CanvasElementPDFAnnotation();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_subelementId;
    v19 = v17;
    swift_beginAccess();
    outlined init with copy of Date?(v19 + v18, v16, &_s9Coherence9CRKeyPathVSgMd);
  }

  else
  {
    (*(v4 + 56))(v16, 1, 1, v3);
  }

  (*(v4 + 16))(v14, a2, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v20 = *(v6 + 48);
  outlined init with copy of Date?(v16, v8, &_s9Coherence9CRKeyPathVSgMd);
  outlined init with copy of Date?(v14, &v8[v20], &_s9Coherence9CRKeyPathVSgMd);
  v21 = *(v4 + 48);
  if (v21(v8, 1, v3) != 1)
  {
    v23 = v29;
    outlined init with copy of Date?(v8, v29, &_s9Coherence9CRKeyPathVSgMd);
    if (v21(&v8[v20], 1, v3) != 1)
    {
      v24 = v28;
      (*(v4 + 32))(v28, &v8[v20], v3);
      lazy protocol witness table accessor for type CRKeyPath and conformance CRKeyPath(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v4 + 8);
      v25(v24, v3);
      outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence9CRKeyPathVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence9CRKeyPathVSgMd);
      v25(v29, v3);
      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence9CRKeyPathVSgMd);
      return v22 & 1;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence9CRKeyPathVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence9CRKeyPathVSgMd);
    (*(v4 + 8))(v23, v3);
    goto LABEL_9;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence9CRKeyPathVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence9CRKeyPathVSgMd);
  if (v21(&v8[v20], 1, v3) != 1)
  {
LABEL_9:
    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence9CRKeyPathVSg_ADtMd);
    v22 = 0;
    return v22 & 1;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence9CRKeyPathVSgMd);
  v22 = 1;
  return v22 & 1;
}

id PaperKitPDFPage.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v26 = v24;
  v27 = v25;
  MEMORY[0x1DA6CD010](0xD000000000000012, 0x80000001D408CAA0);
  v24 = v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](979857440, 0xE400000000000000);
  v8 = [v0 document];
  if (v8)
  {

    v24 = 0;
    v25 = 0xE000000000000000;
    result = [v0 document];
    if (!result)
    {
      __break(1u);
      goto LABEL_11;
    }

    v10 = result;
    v11 = [result indexForPage_];

    v23 = v11;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1DA6CD010](v12);

    v13 = v24;
    v14 = v25;
  }

  else
  {
    v14 = 0xE100000000000000;
    v13 = 63;
  }

  MEMORY[0x1DA6CD010](v13, v14);

  MEMORY[0x1DA6CD010](32, 0xE100000000000000);
  v15 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  swift_beginAccess();
  outlined init with copy of Date?(v1 + v15, v7, &_s8PaperKit6PageIdVSgMd);
  v16 = type metadata accessor for PageId(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v7, 1, v16);
  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit6PageIdVSgMd);
  if (v18 == 1)
  {
    v19 = 0xE600000000000000;
    v20 = 0x6C696E3A6469;
LABEL_9:
    MEMORY[0x1DA6CD010](v20, v19);

    MEMORY[0x1DA6CD010](62, 0xE100000000000000);
    return v26;
  }

  outlined init with copy of Date?(v1 + v15, v4, &_s8PaperKit6PageIdVSgMd);
  result = v17(v4, 1, v16);
  if (result != 1)
  {
    v21 = PageId.description.getter();
    v19 = v22;
    _s8PaperKit5ImageVWOhTm_0(v4, type metadata accessor for PageId);
    v20 = v21;
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t PaperKitPDFPage.candidateForOCR.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  swift_beginAccess();
  outlined init with copy of Date?(v0 + v10, v3, &_s8PaperKit6PageIdVSgMd);
  v11 = type metadata accessor for PageId(0);
  if ((*(*(v11 - 8) + 48))(v3, 1, v11))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s8PaperKit6PageIdVSgMd);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
LABEL_4:
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
    v16 = type metadata accessor for PaperKitPDFPage(0);
    v20.receiver = v0;
    v20.super_class = v16;
    return objc_msgSendSuper2(&v20, sel_isCandidateForOCR);
  }

  outlined init with copy of Date?(&v3[*(v11 + 20)], v6, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s8PaperKit6PageIdVSgMd);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {
    goto LABEL_4;
  }

  WeakTagged_3.tagged2.getter();
  (*(v14 + 8))(v6, v13);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  if ((*(*(v18 - 8) + 48))(v9, 1, v18) == 1)
  {
    goto LABEL_5;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  return 1;
}

void PaperKitPDFPage.draw(with:in:withOptions:)(NSObject *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v83 = a1;
  v7 = type metadata accessor for Image(0);
  v8 = *(v7 - 8);
  v76 = v7;
  v77 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v73 = &v70 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  v75 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ImageVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v70 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v70 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v70 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  v26 = *(v25 - 8);
  v81 = v25;
  v82 = v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v80 = &v70 - v28;
  v29 = MEMORY[0x1DA6CCED0](0xD00000000000001BLL, 0x80000001D408CA80, v27);
  v30 = v29;
  v31 = *(a3 + 16);
  v78 = v15;
  if (!v31 || (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29), (v33 & 1) == 0))
  {

    goto LABEL_6;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v32, v86);

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v35 = 0;
    goto LABEL_7;
  }

  v34 = v84;
  v35 = [v84 BOOLValue];

LABEL_7:
  v36 = [v3 document];
  if (!v36)
  {
    goto LABEL_23;
  }

  v37 = v36;
  v38 = [v36 delegate];

  if (!v38)
  {
    goto LABEL_23;
  }

  type metadata accessor for PaperDocumentView();
  v39 = swift_dynamicCastClass();
  if (!v39)
  {
    goto LABEL_22;
  }

  v71 = v39;
  v40 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  swift_beginAccess();
  outlined init with copy of Date?(&v4[v40], v18, &_s8PaperKit6PageIdVSgMd);
  v41 = type metadata accessor for PageId(0);
  if ((*(*(v41 - 8) + 48))(v18, 1, v41))
  {
    swift_unknownObjectRelease();
    outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit6PageIdVSgMd);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
    (*(*(v42 - 8) + 56))(v21, 1, 1, v42);
LABEL_14:
    outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
    (*(v82 + 56))(v24, 1, 1, v81);
LABEL_15:
    outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence7WeakRefVy8PaperKit5ImageVGSgMd);
    goto LABEL_23;
  }

  v70 = a2;
  outlined init with copy of Date?(&v18[*(v41 + 20)], v21, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit6PageIdVSgMd);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v21, 1, v43) == 1)
  {
    swift_unknownObjectRelease();
    a2 = v70;
    goto LABEL_14;
  }

  WeakTagged_3.tagged2.getter();
  (*(v44 + 8))(v21, v43);
  v46 = v81;
  v45 = v82;
  if ((*(v82 + 48))(v24, 1, v81) == 1)
  {
    swift_unknownObjectRelease();
    a2 = v70;
    goto LABEL_15;
  }

  v47 = v80;
  (*(v45 + 32))(v80, v24, v46);
  a2 = v70;
  if (!v35)
  {
    (*(v45 + 8))(v47, v46);
LABEL_22:
    swift_unknownObjectRelease();
LABEL_23:
    v56 = *&v4[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_render];
    if (v56)
    {
      v57 = *&v4[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_render + 8];

      v56(v83, a2);
      outlined consume of (@escaping @callee_guaranteed (@unowned PDFDisplayBox, @guaranteed CGContextRef) -> ())?(v56, v57);
    }

    else
    {
      type metadata accessor for PDFPageDrawWithBoxOption(0);
      lazy protocol witness table accessor for type CRKeyPath and conformance CRKeyPath(&lazy protocol witness table cache variable for type PDFPageDrawWithBoxOption and conformance PDFPageDrawWithBoxOption, type metadata accessor for PDFPageDrawWithBoxOption);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v59 = type metadata accessor for PaperKitPDFPage(0);
      v85.receiver = v4;
      v85.super_class = v59;
      [&v85 drawWithBox:v83 inContext:a2 withOptions:isa];
    }

    return;
  }

  v48 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_dataModel;
  v49 = v71;
  swift_beginAccess();
  v50 = v75;
  v51 = v49 + v48;
  v52 = v74;
  (*(v75 + 16))(v74, v51, v79);
  type metadata accessor for PaperDocument(0);
  lazy protocol witness table accessor for type CRKeyPath and conformance CRKeyPath(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
  v53 = v78;
  v54 = v47;
  WeakRef.subscript.getter();
  (*(v50 + 8))(v52, v79);
  v55 = v77;
  if ((*(v77 + 48))(v53, 1, v76) == 1)
  {
    (*(v82 + 8))(v54, v46);
    swift_unknownObjectRelease();
    outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s8PaperKit5ImageVSgMd);
  }

  else
  {
    v60 = v4;
    v83 = dispatch_semaphore_create(0);
    v61 = type metadata accessor for TaskPriority();
    v62 = v73;
    (*(*(v61 - 8) + 56))(v73, 1, 1, v61);
    v63 = v72;
    outlined init with copy of Image(v53, v72);
    v64 = (*(v55 + 80) + 48) & ~*(v55 + 80);
    v65 = swift_allocObject();
    v65[2] = 0;
    v65[3] = 0;
    v65[4] = a2;
    v65[5] = v60;
    outlined init with take of Image(v63, v65 + v64);
    v66 = v83;
    *(v65 + ((v9 + v64 + 7) & 0xFFFFFFFFFFFFFFF8)) = v83;
    v67 = v60;
    v68 = a2;
    v69 = v66;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v62, &async function pointer to partial apply for closure #1 in Image.renderPage(pdfPage:box:context:), v65);

    OS_dispatch_semaphore.wait()();
    swift_unknownObjectRelease();

    (*(v82 + 8))(v80, v81);
    _s8PaperKit5ImageVWOhTm_0(v53, type metadata accessor for Image);
  }
}

id PaperKitPDFPage.init(image:options:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_render];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  v5 = type metadata accessor for PageId(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_appearanceStreamAnnotations] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_annotationIDState] = 0;
  type metadata accessor for PDFPageImageInitializationOption(0);
  lazy protocol witness table accessor for type CRKeyPath and conformance CRKeyPath(&lazy protocol witness table cache variable for type PDFPageImageInitializationOption and conformance PDFPageImageInitializationOption, type metadata accessor for PDFPageImageInitializationOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9.receiver = v1;
  v9.super_class = type metadata accessor for PaperKitPDFPage(0);
  v7 = objc_msgSendSuper2(&v9, sel_initWithImage_options_, a1, isa);

  if (v7)
  {
  }

  return v7;
}

id PaperKitPDFPage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperKitPDFPage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for PaperKitPDFPage()
{
  type metadata accessor for PageId?(319, &lazy cache variable for type metadata for PageId?, type metadata accessor for PageId);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_8PaperKit0aB7PDFPageC17AnnotationIDStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PaperKitPDFPage.AnnotationIDState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PaperKitPDFPage.AnnotationIDState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for PaperKitPDFPage.AnnotationIDState(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void type metadata completion function for PageId()
{
  type metadata accessor for PageId?(319, &lazy cache variable for type metadata for PDFPageID?, type metadata accessor for PDFPageID);
  if (v0 <= 0x3F)
  {
    type metadata accessor for WeakTagged_3<TaggedPaperPage>?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for PageId?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for WeakTagged_3<TaggedPaperPage>?()
{
  if (!lazy cache variable for type metadata for WeakTagged_3<TaggedPaperPage>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WeakTagged_3<TaggedPaperPage>?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type CRKeyPath and conformance CRKeyPath(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8PaperKit5ImageVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t outlined consume of PaperKitPDFPage.AnnotationIDState(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

id RulerHostingDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RulerHostingDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LoupeElement.magnification.setter()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t LoupeElement.frame.setter()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*LoupeElement.frame.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*LoupeElement.rotation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

double LoupeElement.bounds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t (*LoupeElement.bounds.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t LoupeElement.$bounds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);

  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for LoupeElement.$bounds : LoupeElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t LoupeElement.$bounds.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*LoupeElement.$bounds.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

double LoupeElement.frame.getter()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for LoupeElement.frame : LoupeElement@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for LoupeElement.frame : LoupeElement()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t LoupeElement.$frame.getter()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for LoupeElement.$frame : LoupeElement()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for LoupeElement.$frame : LoupeElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t LoupeElement.$frame.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LoupeElement.$frame.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for LoupeElement(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

double LoupeElement.rotation.getter()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for LoupeElement.rotation : LoupeElement@<D0>(double *a1@<X8>)
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for LoupeElement.rotation : LoupeElement()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t LoupeElement.rotation.setter()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t LoupeElement.$rotation.getter()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for LoupeElement.$rotation : LoupeElement()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for LoupeElement.$rotation : LoupeElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t LoupeElement.$rotation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LoupeElement.$rotation.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for LoupeElement(0) + 24);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

double LoupeElement.magnification.getter()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for LoupeElement.magnification : LoupeElement@<D0>(double *a1@<X8>)
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for LoupeElement.magnification : LoupeElement()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*LoupeElement.magnification.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t LoupeElement.$magnification.getter()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for LoupeElement.$magnification : LoupeElement()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for LoupeElement.$magnification : LoupeElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t LoupeElement.$magnification.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LoupeElement.$magnification.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for LoupeElement(0) + 28);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t key path setter for LoupeElement.borderColor : LoupeElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit5ColorVSgMd);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit5ColorVSgMd);
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit5ColorVSgMd);
}

uint64_t LoupeElement.borderColor.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit5ColorVSgMd);
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit5ColorVSgMd);
}

uint64_t (*LoupeElement.borderColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t LoupeElement.borderColor.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for LoupeElement(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  return a1(v2);
}

uint64_t key path getter for LoupeElement.borderColor : LoupeElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for LoupeElement(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  return a4(v5);
}

uint64_t key path setter for LoupeElement.$borderColor : LoupeElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t LoupeElement.$borderColor.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LoupeElement.$borderColor.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for LoupeElement(0) + 32);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

double LoupeElement.strokeWidth.getter()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for LoupeElement.strokeWidth : LoupeElement@<D0>(double *a1@<X8>)
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for LoupeElement.strokeWidth : LoupeElement()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t LoupeElement.strokeWidth.setter()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*LoupeElement.strokeWidth.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t LoupeElement.$strokeWidth.getter()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for LoupeElement.$strokeWidth : LoupeElement()
{
  type metadata accessor for LoupeElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for LoupeElement.$strokeWidth : LoupeElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t LoupeElement.$strokeWidth.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for LoupeElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LoupeElement.$strokeWidth.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for LoupeElement(0) + 36);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

BOOL LoupeElement.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v126 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v114 = &v107 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v118 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v107 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v127 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v113 = &v107 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v112 = &v107 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v119 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v123 = &v107 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v117 = &v107 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v121 = &v107 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v116 = &v107 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v120 = &v107 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v111 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v110 = &v107 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v115 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v107 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v107 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v107 - v42;
  v128 = type metadata accessor for LoupeElement.Partial(0);
  MEMORY[0x1EEE9AC00](v128);
  v45 = &v107 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LoupeElement.Partial(v2, v45, type metadata accessor for LoupeElement.Partial);
  v129 = a1;
  v46 = LoupeElement.Partial.canMerge(delta:)(a1);
  outlined destroy of LoupeElement.Partial(v45, type metadata accessor for LoupeElement.Partial);
  if (!v46)
  {
    return v46;
  }

  v109 = v46;
  v107 = v11;
  v125 = v9;
  outlined init with copy of Date?(v2, v43, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v108 = v29;
  v47 = *(v29 + 48);
  v48 = v2;
  v49 = v47(v43, 1, v28);
  outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v49 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v129, v48, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v50 = v48;
  }

  else
  {
    v50 = v48;
    outlined init with copy of Date?(v129, v40, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v47(v40, 1, v28) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v51 = v108;
      v52 = v110;
      (*(v108 + 32))(v110, v40, v28);
      if (!v47(v48, 1, v28))
      {
        CRRegister.merge(delta:)();
      }

      (*(v51 + 8))(v52, v28);
    }
  }

  v53 = v128;
  v54 = v128[5];
  outlined init with copy of Date?(v50 + v54, v37, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v55 = v47(v37, 1, v28);
  outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v56 = v53[5];
  if (v55 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v129 + v56, v50 + v54, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v57 = v115;
    outlined init with copy of Date?(v129 + v56, v115, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v47(v57, 1, v28) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v58 = v108;
      v59 = v111;
      (*(v108 + 32))(v111, v57, v28);
      if (!v47((v50 + v54), 1, v28))
      {
        CRRegister.merge(delta:)();
      }

      (*(v58 + 8))(v59, v28);
    }
  }

  v60 = v125;
  v62 = v127;
  v61 = v128;
  v63 = v128[6];
  v64 = v120;
  outlined init with copy of Date?(v50 + v63, v120, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v67 = *(v62 + 48);
  v66 = v62 + 48;
  v65 = v67;
  v68 = (v67)(v64, 1, v60);
  outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v69 = v61[6];
  if (v68 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v129 + v69, v50 + v63, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v70 = v65;
  }

  else
  {
    v71 = v116;
    outlined init with copy of Date?(v129 + v69, v116, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v70 = v65;
    if ((v65)(v71, 1, v60) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v71, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v72 = v127;
      v73 = v112;
      (*(v127 + 32))(v112, v71, v60);
      if (!(v70)(v50 + v63, 1, v60))
      {
        CRRegister.merge(delta:)();
      }

      (*(v72 + 8))(v73, v60);
    }
  }

  v74 = v128;
  v75 = v128[7];
  v76 = v121;
  outlined init with copy of Date?(v50 + v75, v121, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v77 = (v70)(v76, 1, v60);
  outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v78 = v74[7];
  v115 = v66;
  v111 = v70;
  if (v77 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v129 + v78, v50 + v75, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v79 = v126;
  }

  else
  {
    v80 = v117;
    outlined init with copy of Date?(v129 + v78, v117, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v81 = (v70)(v80, 1, v60);
    v79 = v126;
    if (v81 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v82 = v127;
      v83 = v113;
      (*(v127 + 32))(v113, v80, v60);
      if (!(v70)(v50 + v75, 1, v60))
      {
        CRRegister.merge(delta:)();
      }

      (*(v82 + 8))(v83, v60);
    }
  }

  v84 = v50;
  v85 = v128;
  v86 = v128[8];
  v87 = v122;
  outlined init with copy of Date?(v84 + v86, v122, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v88 = *(v79 + 48);
  v89 = v124;
  v90 = v88(v87, 1, v124);
  outlined destroy of StocksKitCurrencyCache.Provider?(v87, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v91 = v85[8];
  if (v90 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v129 + v91, v84 + v86, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  }

  else
  {
    v92 = v118;
    outlined init with copy of Date?(v129 + v91, v118, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    if (v88(v92, 1, v89) != 1)
    {
      v95 = v126;
      v96 = v114;
      (*(v126 + 32))(v114, v92, v89);
      v94 = v84;
      if (!v88(v84 + v86, 1, v89))
      {
        CRRegister.merge(delta:)();
      }

      (*(v95 + 8))(v96, v89);
      v93 = v125;
      goto LABEL_38;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v92, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  }

  v93 = v125;
  v94 = v84;
LABEL_38:
  v97 = v111;
  v98 = v128;
  v99 = v128[9];
  v100 = v123;
  outlined init with copy of Date?(v94 + v99, v123, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v101 = (v97)(v100, 1, v93);
  outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v102 = v98[9];
  if (v101 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v129 + v102, v94 + v99, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v103 = v119;
    outlined init with copy of Date?(v129 + v102, v119, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    if ((v97)(v103, 1, v93) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v103, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v104 = v127;
      v105 = v107;
      (*(v127 + 32))(v107, v103, v93);
      if (!(v97)(v94 + v99, 1, v93))
      {
        CRRegister.merge(delta:)();
      }

      (*(v104 + 8))(v105, v93);
    }
  }

  LOBYTE(v46) = v109;
  return v46;
}

BOOL LoupeElement.Partial.canMerge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v86 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v83 - v6;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v85 = &v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v83 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v83 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v83 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v83 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v83 - v19;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v103 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v83 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v83 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v89 = &v83 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v91 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v95 = &v83 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v83 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v83 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v99 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v83 - v39;
  v102 = a1;
  outlined init with copy of Date?(a1, v34, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v41 = *(v36 + 48);
  v42 = v41(v34, 1, v35);
  v101 = v1;
  if (v42 == 1)
  {
    v31 = v34;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v43 = v99;
    goto LABEL_6;
  }

  (*(v36 + 32))(v40, v34, v35);
  outlined init with copy of Date?(v1, v31, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v41(v31, 1, v35) == 1)
  {
    (*(v36 + 8))(v40, v35);
    goto LABEL_5;
  }

  v66 = CRRegister.canMerge(delta:)();
  v67 = *(v36 + 8);
  v67(v40, v35);
  v67(v31, v35);
  v43 = v99;
  if ((v66 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v44 = type metadata accessor for LoupeElement.Partial(0);
  v45 = v95;
  outlined init with copy of Date?(v102 + v44[5], v95, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v41(v45, 1, v35) == 1)
  {
    v46 = v102;
    v47 = v96;
LABEL_10:
    outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v49 = v97;
    v50 = v103;
    goto LABEL_11;
  }

  (*(v36 + 32))(v43, v45, v35);
  v45 = v91;
  outlined init with copy of Date?(v101 + v44[5], v91, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v48 = v41(v45, 1, v35);
  v47 = v96;
  if (v48 == 1)
  {
    (*(v36 + 8))(v43, v35);
    v46 = v102;
    goto LABEL_10;
  }

  v68 = CRRegister.canMerge(delta:)();
  v69 = *(v36 + 8);
  v69(v43, v35);
  v69(v45, v35);
  v46 = v102;
  v50 = v103;
  v49 = v97;
  if ((v68 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v51 = v94;
  outlined init with copy of Date?(v46 + v44[6], v94, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v52 = *(v50 + 48);
  if (v52(v51, 1, v49) == 1)
  {
LABEL_14:
    outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v54 = v100;
    goto LABEL_15;
  }

  v53 = v89;
  (*(v50 + 32))(v89, v51, v49);
  v51 = v90;
  outlined init with copy of Date?(v101 + v44[6], v90, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (v52(v51, 1, v49) == 1)
  {
    (*(v50 + 8))(v53, v49);
    goto LABEL_14;
  }

  v70 = v52;
  v71 = v51;
  v72 = CRRegister.canMerge(delta:)();
  v73 = *(v50 + 8);
  v73(v53, v49);
  v74 = v71;
  v52 = v70;
  v46 = v102;
  v73(v74, v49);
  v54 = v100;
  if ((v72 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v55 = v93;
  outlined init with copy of Date?(v46 + v44[7], v93, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (v52(v55, 1, v49) == 1)
  {
LABEL_18:
    outlined destroy of StocksKitCurrencyCache.Provider?(v55, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    goto LABEL_19;
  }

  v56 = v103;
  v57 = v87;
  (*(v103 + 32))(v87, v55, v49);
  v55 = v88;
  outlined init with copy of Date?(v101 + v44[7], v88, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (v52(v55, 1, v49) == 1)
  {
    (*(v56 + 8))(v57, v49);
    v54 = v100;
    goto LABEL_18;
  }

  v75 = CRRegister.canMerge(delta:)();
  v76 = v57;
  v77 = v75;
  v78 = *(v56 + 8);
  v78(v76, v49);
  v78(v55, v49);
  v54 = v100;
  if ((v77 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  outlined init with copy of Date?(v46 + v44[8], v47, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v58 = *(v98 + 48);
  if (v58(v47, 1, v54) == 1)
  {
    v59 = v103;
  }

  else
  {
    v100 = v52;
    v60 = v98;
    v61 = v85;
    (*(v98 + 32))(v85, v47, v54);
    v47 = v86;
    outlined init with copy of Date?(v101 + v44[8], v86, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v62 = v58(v47, 1, v54);
    v59 = v103;
    if (v62 != 1)
    {
      v79 = CRRegister.canMerge(delta:)();
      v80 = *(v60 + 8);
      v80(v61, v54);
      v80(v47, v54);
      v59 = v103;
      v52 = v100;
      if ((v79 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_24;
    }

    (*(v60 + 8))(v61, v54);
    v52 = v100;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
LABEL_24:
  v63 = v92;
  outlined init with copy of Date?(v46 + v44[9], v92, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (v52(v63, 1, v49) == 1)
  {
LABEL_27:
    outlined destroy of StocksKitCurrencyCache.Provider?(v63, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    return 1;
  }

  v64 = v83;
  (*(v59 + 32))(v83, v63, v49);
  v63 = v84;
  outlined init with copy of Date?(v101 + v44[9], v84, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (v52(v63, 1, v49) == 1)
  {
    (*(v59 + 8))(v64, v49);
    goto LABEL_27;
  }

  v81 = CRRegister.canMerge(delta:)();
  v82 = *(v59 + 8);
  v82(v64, v49);
  v82(v63, v49);
  return (v81 & 1) != 0;
}

uint64_t LoupeElement.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  outlined init with copy of Date?(v2, &v31 - v17, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v18, 1, v19) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v20 + 8))(v18, v19);
  }

  v22 = type metadata accessor for LoupeElement.Partial(0);
  outlined init with copy of Date?(v2 + v22[5], v15, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v21(v15, 1, v19) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v20 + 8))(v15, v19);
  }

  outlined init with copy of Date?(v2 + v22[6], v12, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v12, 1, v23) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v24 + 8))(v12, v23);
  }

  outlined init with copy of Date?(v2 + v22[7], v9, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (v25(v9, 1, v23) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v24 + 8))(v9, v23);
  }

  v26 = v32;
  outlined init with copy of Date?(v2 + v22[8], v32, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v28 + 8))(v26, v27);
  }

  v29 = v33;
  outlined init with copy of Date?(v2 + v22[9], v33, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (v25(v29, 1, v23) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  CRRegister.visitReferences(_:)();
  return (*(v24 + 8))(v29, v23);
}

uint64_t LoupeElement.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v70 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v53 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v17(a2, 1, 1, v15);
  v19 = type metadata accessor for LoupeElement.Partial(0);
  v61 = v19[5];
  v66 = v17;
  v67 = v15;
  v65 = v18;
  v17(a2 + v61, 1, 1, v15);
  v20 = v19[6];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v60 = v20;
  v23(a2 + v20, 1, 1, v21);
  v62 = v19[7];
  v23(a2 + v62, 1, 1, v21);
  v25 = v19[8];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v29 = v27 + 56;
  v59 = v25;
  v28(a2 + v25, 1, 1, v26);
  v30 = v19[9];
  v73 = a2;
  v23(a2 + v30, 1, 1, v21);
  v31 = v72;
  dispatch thunk of CRDecoder.keyedContainer()();
  if (v31)
  {

    v32 = v73;
    return outlined destroy of LoupeElement.Partial(v32, type metadata accessor for LoupeElement.Partial);
  }

  v53 = v29;
  v54 = v28;
  v55 = v26;
  v56 = v24;
  v57 = v23;
  v58 = v21;
  v72 = 0;
  v33 = v70;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for CGRect(0);
    _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    v34 = v69;
    v35 = v72;
    CRRegister.init(from:)();
    v32 = v73;
    v36 = v71;
    if (v35)
    {
      goto LABEL_22;
    }

    v37 = v30;
    v72 = 0;
    v66(v34, 0, 1, v67);
    outlined assign with take of UUID?(v34, v32, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v32 = v73;
    v37 = v30;
    v36 = v71;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for CGRect(0);
    _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    v38 = v72;
    CRRegister.init(from:)();
    if (v38)
    {
      goto LABEL_22;
    }

    v74 = v37;
    v72 = 0;
    v66(v36, 0, 1, v67);
    outlined assign with take of UUID?(v36, v32 + v61, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v74 = v37;
  }

  v39 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v40 = v68;
  v41 = v63;
  if (v39)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v42 = v72;
    CRRegister.init(from:)();
    v43 = v64;
    if (v42)
    {
      goto LABEL_22;
    }

    v72 = 0;
    v57(v41, 0, 1, v58);
    outlined assign with take of UUID?(v41, v32 + v60, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v43 = v64;
  }

  v44 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v45 = v62;
  if (!v44)
  {
    goto LABEL_20;
  }

  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v46 = v72;
  CRRegister.init(from:)();
  if (v46)
  {
LABEL_22:

    return outlined destroy of LoupeElement.Partial(v32, type metadata accessor for LoupeElement.Partial);
  }

  v72 = 0;
  v57(v43, 0, 1, v58);
  outlined assign with take of UUID?(v43, v32 + v45, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
LABEL_20:
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
    lazy protocol witness table accessor for type Color? and conformance <A> A?();
    v47 = v72;
    CRRegister.init(from:)();
    if (v47)
    {
      goto LABEL_22;
    }

    v72 = 0;
    v54(v33, 0, 1, v55);
    outlined assign with take of UUID?(v33, v32 + v59, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v40 = v68;
  }

  v49 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v51 = v57;
  v50 = v58;
  if (v49)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v52 = v72;
    CRRegister.init(from:)();

    if (v52)
    {
      return outlined destroy of LoupeElement.Partial(v32, type metadata accessor for LoupeElement.Partial);
    }

    v51(v40, 0, 1, v50);
    return outlined assign with take of UUID?(v40, v32 + v74, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
  }
}

uint64_t _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LoupeElement.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v66 = &v58 - v1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v64 = &v58 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v58 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v71 = (&v58 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v58 - v28;
  v30 = v74;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v30)
  {
    v61 = v26;
    v62 = v19;
    v59 = v13;
    v60 = v16;
    v32 = v72;
    v74 = 0;
    outlined init with copy of Date?(v73, v22, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v33 = *(v24 + 48);
    if (v33(v22, 1, v23) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      (*(v24 + 32))(v29, v22, v23);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
      v34 = v74;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v74 = v34;
      if (v34)
      {
        (*(v24 + 8))(v29, v23);
      }

      (*(v24 + 8))(v29, v23);
    }

    v35 = type metadata accessor for LoupeElement.Partial(0);
    v36 = v62;
    outlined init with copy of Date?(v73 + v35[5], v62, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v33(v36, 1, v23) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
      v37 = v70;
      v38 = v71;
    }

    else
    {
      v39 = v61;
      (*(v24 + 32))(v61, v36, v23);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
      v40 = v74;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v24 + 8))(v39, v23);
      v74 = v40;
      v38 = v71;
      if (v40)
      {
      }

      v37 = v70;
    }

    v41 = v73;
    outlined init with copy of Date?(v73 + v35[6], v38, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v43 = v68;
    v42 = v69;
    v71 = *(v68 + 48);
    if (v71(v38, 1, v69) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v44 = v60;
      (*(v43 + 32))(v60, v38, v42);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
      v45 = v74;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v43 + 8))(v44, v42);
      v74 = v45;
      if (v45)
      {
      }

      v37 = v70;
      v32 = v72;
    }

    v72 = v35;
    v46 = v41 + v35[7];
    v47 = v67;
    outlined init with copy of Date?(v46, v67, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    if (v71(v47, 1, v42) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v48 = v59;
      (*(v43 + 32))(v59, v47, v42);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
      v49 = v74;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v43 + 8))(v48, v42);
      v74 = v49;
      if (v49)
      {
      }

      v37 = v70;
    }

    v50 = v72;
    v51 = v66;
    outlined init with copy of Date?(v41 + *(v72 + 32), v66, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    if ((*(v37 + 48))(v51, 1, v32) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
      goto LABEL_24;
    }

    v52 = v51;
    v53 = v32;
    v54 = v64;
    (*(v37 + 32))(v64, v52, v53);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    v55 = v74;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v37 + 8))(v54, v53);
    v74 = v55;
    if (!v55)
    {
LABEL_24:
      v56 = v65;
      outlined init with copy of Date?(v41 + *(v50 + 36), v65, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
      if (v71(v56, 1, v42) == 1)
      {

        return outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
      }

      else
      {
        v57 = v63;
        (*(v43 + 32))(v63, v56, v42);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
        (*(v43 + 8))(v57, v42);
      }
    }
  }

  return result;
}

uint64_t LoupeElement.thumbnail.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRAsset();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t LoupeElement.shared(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 9;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t LoupeElement.render<A>(in:id:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[132] = v6;
  v7[131] = a6;
  v7[130] = a5;
  v7[129] = a4;
  v7[128] = a3;
  v7[127] = a2;
  v7[126] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  v7[133] = swift_task_alloc();
  v7[134] = swift_task_alloc();
  v8 = type metadata accessor for Color(0);
  v7[135] = v8;
  v7[136] = *(v8 - 8);
  v7[137] = swift_task_alloc();
  v7[138] = swift_task_alloc();
  v9 = type metadata accessor for CGPathFillRule();
  v7[139] = v9;
  v7[140] = *(v9 - 8);
  v7[141] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LoupeElement.render<A>(in:id:capsule:options:), 0, 0);
}

uint64_t LoupeElement.render<A>(in:id:capsule:options:)()
{
  if ((*(*(v0 + 1032) + 72) & 1) == 0)
  {
    v1 = *(v0 + 1008);
    v2 = type metadata accessor for LoupeElement(0);
    *(v0 + 1136) = v2;
    *(v0 + 92) = *(v2 + 20);
    *(v0 + 1144) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    v3 = *(v0 + 800);
    v4 = *(v0 + 808);
    v5 = *(v0 + 816);
    *(v0 + 1152) = v5;
    v6 = *(v0 + 824);
    *(v0 + 1160) = v6;
    *(v0 + 1280) = *(v2 + 28);
    *(v0 + 1168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    v7 = *(v0 + 992);
    *(v0 + 1176) = v7;
    v8 = v3 / v7;
    v9 = v4 / v7;
    v10 = v5 / v7;
    v11 = v6 / v7;
    CRRegister.wrappedValue.getter();
    v12 = *(v0 + 864);
    v13 = *(v0 + 872);
    v14 = *(v0 + 880);
    v15 = *(v0 + 888);
    v53.origin.x = v12;
    v53.origin.y = v13;
    v53.size.width = v14;
    v53.size.height = v15;
    MidX = CGRectGetMidX(v53);
    *(v0 + 1184) = MidX;
    v54.origin.x = v12;
    v54.origin.y = v13;
    v54.size.width = v14;
    v54.size.height = v15;
    MidY = CGRectGetMidY(v54);
    *(v0 + 1192) = MidY;
    v55.origin.x = v8;
    v55.origin.y = v9;
    v55.size.width = v10;
    v55.size.height = v11;
    Width = CGRectGetWidth(v55);
    *(v0 + 1200) = Width;
    v56.origin.x = v8;
    v56.origin.y = v9;
    v52 = v10;
    v56.size.width = v10;
    v56.size.height = v11;
    Height = CGRectGetHeight(v56);
    *(v0 + 1208) = Height;
    DeviceRGB = CGBitmapContextGetColorSpace(v1);
    if (!DeviceRGB)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
    }

    *(v0 + 1216) = DeviceRGB;
    CGContextGetEDRTargetHeadroom();
    v21 = v20;
    CRRegister.wrappedValue.getter();
    v22 = *(v0 + 848);
    v23 = *(v0 + 856);
    CRRegister.wrappedValue.getter();
    v24 = *(v0 + 984);
    v25 = v22 / v24;
    v26 = v23 / v24;
    CRRegister.wrappedValue.getter();
    v27 = *(v0 + 960);
    v28 = DeviceRGB;
    v29 = 1;
    if (!CGColorSpaceUsesExtendedRange(v28))
    {
      v29 = MEMORY[0x1DA6CEC30](v28);
    }

    type metadata accessor for ImageRenderer();
    v30 = swift_allocObject();
    *(v30 + 16) = 1;
    *(v30 + 24) = v25;
    *(v30 + 32) = v26;
    *(v30 + 40) = v27;
    *(v30 + 48) = 1;
    *(v30 + 49) = v29;
    *(v30 + 56) = v21;
    *(v30 + 64) = 0;
    *(v30 + 72) = DeviceRGB;
    *(v30 + 80) = 1;
    type metadata accessor for CanvasElementImageRenderer();
    inited = swift_initStackObject();
    *(v0 + 1224) = inited;
    v32 = specialized CanvasElementImageRenderer.init(renderer:)(v30, inited);
    *(v0 + 1232) = v32;
    *(v32 + 74) = 0;
    v33 = one-time initialization token for loupeDefaultBackgroundColor;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 1032);
    v35 = static UIConstants.loupeDefaultBackgroundColor;
    swift_beginAccess();
    v36 = *(v32 + 56);
    *(v32 + 56) = v35;
    v37 = v35;

    outlined init with copy of Date?(v34 + 80, v0 + 760, &_s8PaperKit0A10Renderable_pSgMd);
    if (*(v0 + 784))
    {
      v38 = *(v0 + 1032);
      v39 = *(v0 + 1016);
      outlined init with take of PaperKitHashable((v0 + 760), v0 + 720);
      v40 = *(v0 + 744);
      *(v0 + 1240) = v40;
      v41 = *(v0 + 752);
      __swift_project_boxed_opaque_existential_1((v0 + 720), v40);
      *(v0 + 1248) = *(v40 - 8);
      v42 = swift_task_alloc();
      *(v0 + 1256) = v42;
      (*(v41 + 40))(v39, v40, v41);
      v43 = *(v38 + 1);
      *(v0 + 91) = v43;
      v44 = *(v38 + 2);
      v45 = swift_task_alloc();
      *(v0 + 1264) = v45;
      *v45 = v0;
      v45[1] = LoupeElement.render<A>(in:id:capsule:options:);
      v46 = *(v0 + 1040);
      v47 = *(v0 + 1024);

      return CanvasElementImageRenderer.cgImage<A, B>(_:in:bounds:darkMode:isRTL:renderingLoupe:)(v42, v47, v43, v44, 1, v40, v46, v41, MidX - Width * 0.5, MidY - Height * 0.5, v52, v11);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v0 + 760, &_s8PaperKit0A10Renderable_pSgMd);
  }

  v49 = *(v0 + 8);

  return v49();
}

{
  v77 = v0;
  v1 = v0;
  v2 = *(v0 + 1272);
  if (v2)
  {
    v3 = *(v0 + 1176);
    v4 = *(v0 + 1128);
    v5 = *(v0 + 1120);
    v72 = *(v0 + 1112);
    v75 = *(v0 + 1080);
    v73 = *(v0 + 1088);
    v74 = *(v0 + 1072);
    v6 = *(v0 + 1192) - *(v0 + 1208) * 0.5;
    v7 = *(v0 + 1184) - *(v0 + 1200) * 0.5;
    v70 = v7;
    v71 = v6;
    v8 = *(v0 + 1160) / v3;
    v9 = *(v0 + 1008);
    v10 = *(v0 + 1152) / v3;
    v68 = v10;
    v69 = v8;

    CGContextSaveGState(v9);
    v79.origin.x = v7;
    v79.origin.y = v6;
    v79.size.width = v10;
    v79.size.height = v8;
    MidX = CGRectGetMidX(v79);
    v80.origin.x = v7;
    v80.origin.y = v6;
    v80.size.width = v10;
    v80.size.height = v8;
    MidY = CGRectGetMidY(v80);
    CGAffineTransformMakeRotation(&v76, 0.0);
    v64 = *&v76.c;
    v66 = *&v76.a;
    v13 = -MidX;
    v14 = -MidY;
    tx = v76.tx;
    ty = v76.ty;
    CGAffineTransformMakeTranslation(&v76, v13, v14);
    a = v76.a;
    b = v76.b;
    c = v76.c;
    d = v76.d;
    v21 = v76.tx;
    v22 = v76.ty;
    *(v0 + 432) = v76.a;
    *(v0 + 440) = b;
    *(v0 + 448) = c;
    *(v0 + 456) = d;
    *(v0 + 464) = v21;
    *(v0 + 472) = v22;
    *(v0 + 480) = v66;
    *(v0 + 496) = v64;
    *(v0 + 512) = tx;
    *(v0 + 520) = ty;
    CGAffineTransformConcat(&v76, (v0 + 432), (v0 + 480));
    v65 = *&v76.c;
    v67 = *&v76.a;
    v23 = v76.tx;
    v24 = v76.ty;
    *(v0 + 528) = a;
    *(v0 + 536) = b;
    *(v0 + 544) = c;
    *(v0 + 552) = d;
    *(v0 + 560) = v21;
    *(v0 + 568) = v22;
    CGAffineTransformInvert(&v76, (v0 + 528));
    v25 = *&v76.a;
    v26 = *&v76.c;
    v27 = *&v76.tx;
    *(v0 + 576) = v67;
    *(v0 + 592) = v65;
    *(v0 + 608) = v23;
    *(v0 + 616) = v24;
    *(v0 + 624) = v25;
    *(v0 + 640) = v26;
    *(v0 + 656) = v27;
    CGAffineTransformConcat(&v76, (v0 + 576), (v0 + 624));
    v28 = *&v76.c;
    v29 = *&v76.tx;
    *(v0 + 96) = *&v76.a;
    *(v0 + 672) = v68;
    *(v0 + 680) = 0u;
    *(v0 + 696) = v69;
    *(v0 + 704) = v70 - v68 * 0.0;
    *(v0 + 712) = v71 - v69 * 0.0;
    *(v0 + 112) = v28;
    *(v0 + 128) = v29;
    CGAffineTransformConcat(&v76, (v0 + 672), (v0 + 96));
    v30 = *&v76.c;
    v31 = *&v76.tx;
    *(v0 + 384) = *&v76.a;
    *(v0 + 400) = v30;
    *(v0 + 416) = v31;
    CGContextConcatCTM(v9, (v0 + 384));
    CRRegister.wrappedValue.getter();
    CGAffineTransformMakeScale(&v76, *(v0 + 952), *(v0 + 952));
    v32 = *&v76.c;
    v33 = *&v76.tx;
    *(v0 + 336) = *&v76.a;
    *(v0 + 352) = v32;
    *(v0 + 368) = v33;
    CGContextConcatCTM(v9, (v0 + 336));
    CRRegister.wrappedValue.getter();
    v34 = *(v0 + 968) + -1.0;
    CRRegister.wrappedValue.getter();
    CGAffineTransformMakeTranslation(&v76, -v34 / (*(v0 + 976) + *(v0 + 976)), -v34 / (*(v0 + 976) + *(v0 + 976)));
    v35 = *&v76.c;
    v36 = *&v76.tx;
    *(v0 + 288) = *&v76.a;
    *(v0 + 304) = v35;
    *(v0 + 320) = v36;
    CGContextConcatCTM(v9, (v0 + 288));
    v81.origin.x = 0.0;
    v81.origin.y = 0.0;
    v81.size.width = 1.0;
    v81.size.height = 1.0;
    MinY = CGRectGetMinY(v81);
    v82.origin.x = 0.0;
    v82.origin.y = 0.0;
    v82.size.width = 1.0;
    v82.size.height = 1.0;
    MaxY = CGRectGetMaxY(v82);
    *(v0 + 240) = 0x3FF0000000000000;
    *(v0 + 248) = 0;
    *(v0 + 256) = 0;
    *(v0 + 272) = 0;
    *(v0 + 280) = 0;
    *(v0 + 264) = 0x3FF0000000000000;
    *(v0 + 192) = 0x3FF0000000000000;
    *(v0 + 200) = 0;
    *(v0 + 208) = 0;
    *(v0 + 216) = xmmword_1D405A660;
    *(v0 + 232) = MinY + MaxY;
    CGAffineTransformConcat(&v76, (v0 + 240), (v0 + 192));
    v39 = *&v76.c;
    v40 = *&v76.tx;
    *(v0 + 144) = *&v76.a;
    *(v0 + 160) = v39;
    *(v0 + 176) = v40;
    CGContextConcatCTM(v9, (v0 + 144));
    CRRegister.wrappedValue.getter();
    Width = CGRectGetWidth(*(v0 + 896));
    CRRegister.wrappedValue.getter();
    v42 = *(v0 + 1000);
    CGContextBeginPath(v9);
    v83.origin.x = 0.0;
    v83.origin.y = 0.0;
    v83.size.width = 1.0;
    v83.size.height = 1.0;
    v43 = CGPathCreateWithEllipseInRect(v83, 0);
    CGContextAddPath(v9, v43);

    (*(v5 + 104))(v4, *MEMORY[0x1E695EEB0], v72);
    CGContextRef.clip(using:)();
    (*(v5 + 8))(v4, v72);
    v84.origin.x = 0.0;
    v84.origin.y = 0.0;
    v84.size.width = 1.0;
    v84.size.height = 1.0;
    CGContextRef.draw(_:in:byTiling:)(v2, v84, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    CRRegister.wrappedValue.getter();
    v44 = *(v73 + 48);
    if (v44(v74, 1, v75) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 1072), &_s8PaperKit5ColorVSgMd);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, logger);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1D38C4000, v46, v47, "No stroke color resolved for loupe", v48, 2u);
        MEMORY[0x1DA6D0660](v48, -1, -1);
      }
    }

    else
    {
      v49 = *(v0 + 91);
      _s8PaperKit5ColorVWObTm_0(*(v0 + 1072), *(v0 + 1104), type metadata accessor for Color);
      v50 = *(v0 + 1104);
      if (v49)
      {
        v51 = *(v0 + 1080);
        v52 = *(v1 + 1064);
        v53 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
        v54 = static PKInkingTool.convertColor(_:from:to:)();

        Color.init(cgColor:)([v54 CGColor], v52);
        result = v44(v52, 1, v51);
        if (result == 1)
        {
          __break(1u);
          return result;
        }

        v56 = *(v1 + 1096);
        v57 = *(v1 + 1064);

        _s8PaperKit5ColorVWObTm_0(v57, v56, type metadata accessor for Color);
      }

      else
      {
        outlined init with copy of LoupeElement.Partial(v50, *(v0 + 1096), type metadata accessor for Color);
      }

      v58 = v42 / Width;
      v59 = *(v1 + 1104);
      v60 = *(v1 + 1096);
      v61 = *(v1 + 1008);
      v85.origin.x = 0.0;
      v85.origin.y = 0.0;
      v85.size.width = 1.0;
      v85.size.height = 1.0;
      v86 = CGRectInset(v85, v58 * 0.5, v58 * 0.5);
      CGContextAddEllipseInRect(v61, v86);
      CGContextSetLineWidth(v61, v58);
      CGContextSetStrokeColorWithColor(v61, *v60);
      CGContextDrawPath(v61, kCGPathStroke);
      outlined destroy of LoupeElement.Partial(v60, type metadata accessor for Color);
      outlined destroy of LoupeElement.Partial(v59, type metadata accessor for Color);
    }

    v62 = *(v1 + 1216);
    CGContextRestoreGState(*(v1 + 1008));
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v1 + 720);

  v63 = *(v1 + 8);

  return v63();
}

uint64_t LoupeElement.render<A>(in:id:capsule:options:)(uint64_t a1)
{
  v2 = *(*v1 + 1256);
  v3 = *(*v1 + 1248);
  v4 = *(*v1 + 1240);
  *(*v1 + 1272) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](LoupeElement.render<A>(in:id:capsule:options:), 0, 0);
}

void LoupeElement.update<A>(use:ref:pdfAnnotation:in:capsule:options:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v78 = a5;
  v79 = a7;
  v80 = a8;
  v75 = a6;
  v76 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v73 = &v72 - v12;
  v74 = type metadata accessor for Date();
  v13 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v72 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v72 - v21;
  v23 = *a1;
  type metadata accessor for CanvasElementPDFAnnotation();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    return;
  }

  v25 = v24;
  *(v24 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation) = 2;
  outlined init with copy of Date?(a2, v18, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v26 = a3;
    outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    v27 = v23;
    if (v23 >> 62)
    {
      if (v23 >> 62 != 1)
      {
        v31 = *(v20 + 8);
        v32 = a3;
        v31(v22, v19);
        goto LABEL_9;
      }

      v27 = (v23 & 0x3FFFFFFFFFFFFFFFLL);
    }

    v28 = a3;
    outlined copy of PaperDocument.PDFDocumentUse(v23);
    v29 = type metadata accessor for LoupeElement(0);
    v30 = _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_2(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);
    specialized CanvasElementPDFAnnotation.encodeCanvasElement<A, B>(_:_:ref:writeCanvasElement:capsule:)(v27, v22, 1, v78, v29, v79, v30, &protocol witness table for LoupeElement, v80);
    outlined consume of PaperDocument.PDFDocumentUse(v23);
    (*(v20 + 8))(v22, v19);
  }

LABEL_9:
  v33 = *MEMORY[0x1E69780D8];
  v34 = a3;
  [v25 setType_];
  v35 = v77;
  specialized CanvasElement.renderFrame(in:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  Height = v42;
  v44 = [v25 page];
  if (v44)
  {
    v45 = v44;
    [v44 boundsForBox_];
    v47 = v46;
    v49 = v48;

    v85.origin.x = v37;
    v85.origin.y = v39;
    v85.size.width = v41;
    v85.size.height = Height;
    MinX = CGRectGetMinX(v85);
    v86.origin.x = v37;
    v86.origin.y = v39;
    v86.size.width = v41;
    v86.size.height = Height;
    v51 = v49 + v47 + v47 - CGRectGetMaxY(v86);
    v87.origin.x = v37;
    v87.origin.y = v39;
    v87.size.width = v41;
    v87.size.height = Height;
    Width = CGRectGetWidth(v87);
    v88.origin.x = v37;
    v88.origin.y = v39;
    v88.size.width = v41;
    v88.size.height = Height;
    Height = CGRectGetHeight(v88);
    v41 = Width;
    v37 = MinX;
    v39 = v51;
  }

  v89.origin.x = v37;
  v89.origin.y = v39;
  v89.size.width = v41;
  v89.size.height = Height;
  v90 = CGRectIntegral(v89);
  [v25 setBounds_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v13 + 8))(v15, v74);
  [v25 setModificationDate_];

  [v25 setHidden_];
  [v25 setReadOnlyAnnotation_];
  [v25 setLocked_];
  v54 = type metadata accessor for LoupeElement(0);
  v55 = v76;
  CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)(v76, v35, v78, v75, v79, v54, v80, &protocol witness table for LoupeElement);
  v56 = [objc_allocWithZone(MEMORY[0x1E698A9B8]) init];
  if (v56)
  {
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    [v57 setMagnification_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    [v57 setRectangle_];
    if ((*(v55 + 32) & 1) == 0)
    {
      v58 = *(v55 + 24);
      v59 = *(v55 + 8);
      [v57 rectangle];
      x = v91.origin.x;
      y = v91.origin.y;
      v62 = v91.size.width;
      v63 = v91.size.height;
      v64 = CGRectGetMinX(v91);
      v92.origin.x = x;
      v92.origin.y = y;
      v92.size.width = v62;
      v92.size.height = v63;
      v65 = v58 + v59 + v59 - CGRectGetMaxY(v92);
      v93.origin.x = x;
      v93.origin.y = y;
      v93.size.width = v62;
      v93.size.height = v63;
      v66 = CGRectGetWidth(v93);
      v94.origin.x = x;
      v94.origin.y = y;
      v94.size.width = v62;
      v94.size.height = v63;
      [v57 setRectangle_];
    }

    v67 = v57;
    CRRegister.wrappedValue.getter();
    [v67 setStrokeWidth_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    v68 = v73;
    CRRegister.wrappedValue.getter();
    v69 = type metadata accessor for Color(0);
    if ((*(*(v69 - 8) + 48))(v68, 1, v69) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s8PaperKit5ColorVSgMd);
      v70 = [objc_opt_self() blackColor];
    }

    else
    {
      v70 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      outlined destroy of LoupeElement.Partial(v68, type metadata accessor for Color);
    }

    [v67 setStrokeColor_];

    [v67 setBrushStyle_];
    [v67 setDashed_];
    [v67 setHasShadow_];

    v71 = *&v25[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation];
    *&v25[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__akAnnotation] = v57;

    v34 = v71;
  }
}