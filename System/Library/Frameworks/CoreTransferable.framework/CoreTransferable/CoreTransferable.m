uint64_t sub_20E3C0758()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t outlined consume of (@escaping @callee_guaranteed @async () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20E3C0838(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _VisibleTransferRepresentation();

  return swift_getWitnessTable();
}

uint64_t sub_20E3C094C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20E3C09E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ResolvedTransferRepresentation();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = type metadata accessor for _ConditionalTransferRepresentation();
  v8 = *(*(v7 - 8) + 80);
  v24 = *(*(v7 - 8) + 64);
  v9 = (v0 + v5);
  v10 = *(v0 + v5 + 16);
  if (v10 != 255)
  {
    outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(*v9, v9[1], v10 & 1);
  }

  v11 = v3[5];
  v12 = type metadata accessor for UTType();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);
  v13 = (v9 + v3[8]);
  if (*v13)
  {
    v14 = v13[1];
  }

  v15 = (v9 + v3[9]);
  if (*v15)
  {
    v16 = v15[1];
  }

  v17 = (v9 + v3[10]);
  if (*v17)
  {
    v18 = v17[1];
  }

  v19 = v4 | v8;
  v20 = (v5 + v6 + v8) & ~v8;
  v21 = *(v9 + v3[12] + 8);

  v22 = *(v0 + v20 + 8);

  (*(*(v1 - 8) + 8))(v0 + v20 + *(v7 + 36), v1);

  return MEMORY[0x2821FE8E8](v0, v20 + v24, v19 | 7);
}

uint64_t sub_20E3C0C04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _FileNamedTransferRepresentation();

  return swift_getWitnessTable();
}

uint64_t sub_20E3C0C4C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20E3C0C84()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20E3C0D04()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20E3C0D84()
{
  v1 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20E3C0DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 84));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20E3C0E78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 84)) = (a2 - 1);
  }

  return result;
}

uint64_t _sxq_s5Error_pIeghnrzo_xq_sAA_pIeghHnrzo_16CoreTransferable0C0RzAbCR_r0_lTR_0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_20E3C0FC4()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t get_enum_tag_for_layout_string_xq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyxq_Iseghnrzo_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20E3C1014()
{
  if (v0[6])
  {
    v1 = v0[7];
  }

  if (v0[8])
  {
    v2 = v0[9];
  }

  if (v0[10])
  {
    v3 = v0[11];
  }

  v4 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_20E3C109C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20E3C10E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20E3C11AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_20E3C126C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20E3C12A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20E3C136C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_20E3C1430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20E3C14FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

uint64_t sub_20E3C15D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20E3C169C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

uint64_t sub_20E3C175C()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20E3C17DC()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20E3C185C()
{
  v1 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20E3C18A0()
{
  v1 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20E3C18D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_20E3C1998(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20E3C1A54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20E3C1A94()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 6);

  v7 = *(v0 + 8);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20E3C1B6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20E3C1BAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxq_Ieghnr_xq_s5Error_pIeghHnrzo_16CoreTransferable0C0RzAbCR_r0_lTR_0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_20E3C1C58()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20E3C1CA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  type metadata accessor for TupleTransferRepresentation();

  return swift_getWitnessTable();
}

uint64_t sub_20E3C1CF0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20E3C1D30()
{
  v1 = type metadata accessor for ResolvedTransferRepresentation();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 40);

  v6 = (v0 + v3);
  v7 = *(v0 + v3 + 16);
  if (v7 != 255)
  {
    outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(*v6, v6[1], v7 & 1);
  }

  v8 = v1[5];
  v9 = type metadata accessor for UTType();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = (v6 + v1[8]);
  if (*v10)
  {
    v11 = v10[1];
  }

  v12 = (v6 + v1[9]);
  if (*v12)
  {
    v13 = v12[1];
  }

  v14 = (v6 + v1[10]);
  if (*v14)
  {
    v15 = v14[1];
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v6 + v1[12] + 8);

  v19 = *(v0 + v17);

  return MEMORY[0x2821FE8E8](v0, ((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_20E3C1EC4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  outlined consume of Data._Representation(v0[8], v0[9]);
  v3 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20E3C1F14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20E3C1F50()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20E3C2000()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_20E3C217C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20E3C2280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20E3C2384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20E3C2488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNSDocumentTypeDocumentAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary();
  result = dlsym(v2, "NSDocumentTypeDocumentAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSDocumentTypeDocumentAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIFoundationLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!UIFoundationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UIFoundationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_277E1D690;
    v6 = 0;
    UIFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = UIFoundationLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!UIFoundationLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __UIFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getNSRTFTextDocumentTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary();
  result = dlsym(v2, "NSRTFTextDocumentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSRTFTextDocumentTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSRTFDTextDocumentTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary();
  result = dlsym(v2, "NSRTFDTextDocumentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSRTFDTextDocumentTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSHTMLTextDocumentTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary();
  result = dlsym(v2, "NSHTMLTextDocumentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSHTMLTextDocumentTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t static Transferable.exportedContentTypes(visibility:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  static Transferable.resolvedRepresentations()(a2, a3);
  *(swift_allocObject() + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGGMd, &_ss18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGGMR);
  LazyFilterSequence.filter(_:)();

  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGG_22UniformTypeIdentifiers6UTTypeVs5NeverOTg504_s16g58Transferable0B0PAAE20exportedContentTypes10visibilitySay22lm12Identifiers6o6VGAA32jK38VisibilityV_tFZAhA08ResolvedkL0VXEfU1_Tf1cn_nTm(v6, v7);

  return v4;
}

uint64_t static Transferable.resolvedRepresentations()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for _TransferRepresentationValue();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v21 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  (*(a2 + 24))(a1, a2);
  swift_getDynamicType();
  (*(v11 + 16))(v15, v17, AssociatedTypeWitness);
  _TransferRepresentationValue.init(_:)(v15, AssociatedTypeWitness, v10);
  _TransferRepresentationInputs.init()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(&v22, v10);
  (*(v6 + 8))(v10, v5);
  v19 = v22;
  (*(v11 + 8))(v17, AssociatedTypeWitness);
  return v19;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGG_22UniformTypeIdentifiers6UTTypeVs5NeverOTg504_s16g58Transferable0B0PAAE20exportedContentTypes10visibilitySay22lm12Identifiers6o6VGAA32jK38VisibilityV_tFZAhA08ResolvedkL0VXEfU1_Tf1cn_nTm(uint64_t a1, uint64_t (*a2)(unint64_t))
{
  v4 = type metadata accessor for UTType();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = v7;
  if (v7)
  {
    v8 = 0;
    v9 = *(type metadata accessor for ResolvedTransferRepresentation() - 8);
    v10 = a1;
    v11 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v12 = *(v9 + 72);
    while ((a2(v11) & 1) == 0)
    {
      ++v8;
      v11 += v12;
      if (v7 == v8)
      {
        v8 = v7;
        break;
      }
    }

    a1 = v10;
  }

  v13 = specialized LazyFilterSequence<>.distance(from:to:)(v8, v7, a1, a2);
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v37 = v4;
    v42 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
    v15 = v42;
    v16 = v7;
    v38 = v13;
    if (v7)
    {
      v16 = 0;
      v17 = *(type metadata accessor for ResolvedTransferRepresentation() - 8);
      v18 = a1;
      v19 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v20 = *(v17 + 72);
      while (1)
      {
        result = a2(v19);
        if (result)
        {
          break;
        }

        ++v16;
        v19 += v20;
        if (v7 == v16)
        {
          v16 = v7;
          break;
        }
      }

      v13 = v38;
      a1 = v18;
    }

    if (v13 < 0)
    {
      goto LABEL_36;
    }

    v40 = v15;
    result = type metadata accessor for ResolvedTransferRepresentation();
    v21 = 0;
    v35 = *(result - 8);
    v36 = result;
    v22 = a1 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v33[1] = v39 + 32;
    v34 = (v39 + 16);
    v23 = v41;
    while (2)
    {
      if (v21 >= v13)
      {
LABEL_33:
        __break(1u);
      }

      else if (!__OFADD__(v21++, 1))
      {
        if (v16 < v7)
        {
          v25 = *(v35 + 72);
          v26 = v37;
          (*v34)(v23, v22 + v25 * v16 + *(v36 + 20), v37);
          v27 = v40;
          v42 = v40;
          v29 = *(v40 + 16);
          v28 = *(v40 + 24);
          v30 = v29 + 1;
          if (v29 >= v28 >> 1)
          {
            v40 = v29 + 1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1);
            v30 = v40;
            v26 = v37;
            v27 = v42;
          }

          *(v27 + 16) = v30;
          v31 = (*(v39 + 80) + 32) & ~*(v39 + 80);
          v40 = v27;
          result = (*(v39 + 32))(v27 + v31 + *(v39 + 72) * v29, v41, v26);
          do
          {
            v32 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            if (v32 == v7)
            {
              v16 = v7;
              goto LABEL_17;
            }

            if (v32 >= v7)
            {
              goto LABEL_32;
            }

            result = a2(v22 + v32 * v25);
            ++v16;
          }

          while ((result & 1) == 0);
          v16 = v32;
LABEL_17:
          v23 = v41;
          v13 = v38;
          if (v21 != v38)
          {
            continue;
          }

          return v40;
        }

        goto LABEL_35;
      }

      break;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

size_t static Transferable.readableContentTypes.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static Transferable.resolvedRepresentations()(a1, a2);
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_33:

    return MEMORY[0x277D84F90];
  }

  v10 = v8;
  v11 = type metadata accessor for ResolvedTransferRepresentation();
  result = v10;
  v13 = 0;
  v14 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v15 = result + v14;
  v16 = *(*(v11 - 8) + 72);
  v17 = *(v11 + 36);
  v18 = v14 + v17;
  while (!*(result + v18))
  {
    v18 += v16;
    if (v9 == ++v13)
    {
      goto LABEL_33;
    }
  }

  v19 = v15 + v17;
  v20 = 1;
  while (2)
  {
    if (v13 == v9)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    do
    {
      v21 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v21 == v9)
      {
        goto LABEL_15;
      }

      if (v21 >= v9)
      {
        goto LABEL_39;
      }

      ++v13;
    }

    while (!*(v19 + v16 * v21));
    v13 = v21;
    if (!__OFADD__(v20++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_15:
  if (!v20)
  {
    goto LABEL_33;
  }

  v31 = result;
  v37 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 & ~(v20 >> 63), 0);
  v23 = 0;
  v24 = v37;
  v25 = v14 + *(v11 + 36);
  while (!*(v31 + v25))
  {
    v25 += v16;
    if (v9 == ++v23)
    {
      v23 = v9;
      break;
    }
  }

  if (v20 < 0)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v36 = 0;
  v32 = v35 + 32;
  v33 = (v35 + 16);
  v34 = v20;
  while (2)
  {
    if (v23 >= v9)
    {
      goto LABEL_40;
    }

    (*v33)(v7, v15 + v16 * v23 + *(v11 + 20), v4);
    v37 = v24;
    v27 = *(v24 + 16);
    v26 = *(v24 + 24);
    if (v27 >= v26 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1);
      v24 = v37;
    }

    v28 = v35;
    ++v36;
    *(v24 + 16) = v27 + 1;
    result = (*(v28 + 32))(v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v27, v7, v4);
    do
    {
      v29 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v29 == v9)
      {
        v23 = v9;
        goto LABEL_23;
      }

      if (v29 >= v9)
      {
        goto LABEL_37;
      }

      ++v23;
    }

    while (!*(v15 + v29 * v16 + *(v11 + 36)));
    v23 = v29;
LABEL_23:
    if (v36 != v34)
    {
      continue;
    }

    break;
  }

  return v24;
}

uint64_t Transferable.exportedContentTypes(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = *MEMORY[0x28223BE20](a1);
  v20 = static Transferable.resolvedRepresentations()(v10, v11);
  v21 = closure #1 in Transferable.exportedContentTypes(_:);
  v22 = 0;
  *(swift_allocObject() + 16) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGGMd, &_ss18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGGMR);
  LazyFilterSequence.filter(_:)();

  v16[1] = v18;
  v17 = v19;
  (*(v7 + 16))(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v12, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  LazyFilterSequence.filter(_:)();

  v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGG_22UniformTypeIdentifiers6UTTypeVs5NeverOTg504_s16g58Transferable0B0PAAE20exportedContentTypes10visibilitySay22lm12Identifiers6o6VGAA32jK38VisibilityV_tFZAhA08ResolvedkL0VXEfU1_Tf1cn_nTm(v20, v21);

  return v14;
}

uint64_t closure #3 in Transferable.exportedContentTypes(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = a1 + *(type metadata accessor for ResolvedTransferRepresentation() + 40);
  v11 = *v10;
  if (*v10)
  {
    v12 = *(v10 + 8);
    v16[3] = a3;
    v16[4] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);

    v14 = v11(v16);
    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t Transferable.init(importing:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.init(importing:contentType:), 0, 0);
}

uint64_t Transferable.init(importing:contentType:)()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
  outlined init with copy of UTType?(v2, v1, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = Transferable.init(importing:contentType:);
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[2];

  return Transferable.init(_file:contentType:)(v8, v4, v5, v6, v7);
}

{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = Transferable.init(importing:contentType:);
  }

  else
  {
    v3 = Transferable.init(importing:contentType:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[3];
  outlined destroy of UTType?(v0[4], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  (*(v2 + 8))(v5, v3);

  v6 = v0[1];

  return v6();
}

{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[3];
  outlined destroy of UTType?(v0[4], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  (*(v2 + 8))(v5, v3);

  v6 = v0[1];
  v7 = v0[13];

  return v6();
}

{
  v1 = v0[4];
  v2 = v0[3];
  outlined init with copy of UTType?(v0[5], v0[9], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  outlined copy of Data._Representation(v2, v1);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = Transferable.init(importing:contentType:);
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return Transferable.init(_:_:)(v9, v7, v8, v4, v5, v6);
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = Transferable.init(importing:contentType:);
  }

  else
  {
    v3 = Transferable.init(importing:contentType:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[5];
  outlined consume of Data._Representation(v0[3], v0[4]);
  outlined destroy of UTType?(v2, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[9];
  v2 = v0[5];
  outlined consume of Data._Representation(v0[3], v0[4]);
  outlined destroy of UTType?(v2, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t Transferable.init(_file:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = type metadata accessor for Logger();
  v5[27] = v6;
  v7 = *(v6 - 8);
  v5[28] = v7;
  v8 = *(v7 + 64) + 15;
  v5[29] = swift_task_alloc();
  v9 = type metadata accessor for Optional();
  v5[30] = v9;
  v10 = *(v9 - 8);
  v5[31] = v10;
  v11 = *(v10 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v5[34] = v12;
  v13 = *(v12 - 8);
  v5[35] = v13;
  v14 = *(v13 + 64) + 15;
  v5[36] = swift_task_alloc();
  v15 = type metadata accessor for ReceivedTransferredFile(0);
  v5[37] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v5[38] = swift_task_alloc();
  v17 = type metadata accessor for ResolvedTransferRepresentation();
  v5[39] = v17;
  v18 = *(v17 - 8);
  v5[40] = v18;
  v19 = *(v18 + 64) + 15;
  v5[41] = swift_task_alloc();
  v20 = type metadata accessor for UTType();
  v5[42] = v20;
  v21 = *(v20 - 8);
  v5[43] = v21;
  v22 = *(v21 + 64) + 15;
  v5[44] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.init(_file:contentType:), 0, 0);
}

uint64_t Transferable.init(_file:contentType:)()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  outlined init with copy of UTType?(*(v0 + 192), v2, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  outlined init with copy of UTType?(v2, v1, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v5 = *(v4 + 48);
  LODWORD(v2) = v5(v1, 1, v3);
  outlined destroy of UTType?(v1, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if (v2 == 1)
  {
    v6 = *(v0 + 384);
    v7 = *(v0 + 368);
    v8 = *(v0 + 184);
    _contentType(for:)(v7);
    outlined destroy of UTType?(v6, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    outlined init with take of URL?(v7, v6, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  }

  v9 = *(v0 + 360);
  v10 = *(v0 + 336);
  outlined init with copy of UTType?(*(v0 + 384), v9, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if (v5(v9, 1, v10) == 1)
  {
    v11 = *(v0 + 384);
    v13 = *(v0 + 272);
    v12 = *(v0 + 280);
    v14 = *(v0 + 184);
    v15 = *(v0 + 192);
    outlined destroy of UTType?(*(v0 + 360), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of UTType?(v15, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v12 + 8))(v14, v13);
LABEL_17:
    outlined destroy of UTType?(v11, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v45 = *(v0 + 376);
    v44 = *(v0 + 384);
    v47 = *(v0 + 360);
    v46 = *(v0 + 368);
    v48 = *(v0 + 352);
    v49 = *(v0 + 328);
    v50 = *(v0 + 304);
    v51 = *(v0 + 288);
    v52 = *(v0 + 256);
    v53 = *(v0 + 264);
    v68 = *(v0 + 232);

    v54 = *(v0 + 8);

    return v54();
  }

  v16 = *(v0 + 368);
  v18 = *(v0 + 344);
  v17 = *(v0 + 352);
  v19 = *(v0 + 336);
  v21 = *(v0 + 200);
  v20 = *(v0 + 208);
  (*(v18 + 32))(v17, *(v0 + 360), v19);
  (*(v18 + 16))(v16, v17, v19);
  (*(v18 + 56))(v16, 0, 1, v19);
  v22 = static Transferable.resolvedRepresentations(for:)(v16, v21, v20);
  *(v0 + 392) = v22;
  result = outlined destroy of UTType?(v16, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v24 = *(v22 + 16);
  *(v0 + 400) = v24;
  if (!v24)
  {
LABEL_16:

    v11 = *(v0 + 384);
    v38 = *(v0 + 344);
    v67 = *(v0 + 352);
    v39 = *(v0 + 336);
    v40 = *(v0 + 272);
    v41 = *(v0 + 280);
    v43 = *(v0 + 184);
    v42 = *(v0 + 192);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of UTType?(v42, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v41 + 8))(v43, v40);
    (*(v38 + 8))(v67, v39);
    goto LABEL_17;
  }

  v25 = 0;
  *(v0 + 488) = *(*(v0 + 320) + 80);
  v26 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 408) = v25;
    v27 = *(v0 + 392);
    if (v25 >= *(v27 + 16))
    {
      __break(1u);
      return result;
    }

    v28 = *(v0 + 328);
    v29 = *(v0 + 312);
    outlined init with copy of ResolvedTransferRepresentation(v27 + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(*(v0 + 320) + 72) * v25, v28, type metadata accessor for ResolvedTransferRepresentation);
    v30 = (v28 + *(v29 + 36));
    v31 = *v30;
    *(v0 + 416) = *v30;
    *(v0 + 424) = v30[1];
    v32 = *(v0 + 328);
    if (!v31)
    {
      result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 328), type metadata accessor for ResolvedTransferRepresentation);
      goto LABEL_8;
    }

    v33 = *(v32 + *(*(v0 + 312) + 28));
    *(v0 + 432) = v33;
    if (v33 == type metadata accessor for SentTransferredFile(0))
    {
      break;
    }

    if (v33 == v26)
    {
      v34 = *(v0 + 184);
      v35 = Data.init(contentsOf:options:)();
      *(v0 + 456) = v35;
      *(v0 + 464) = v36;
      v61 = *(v0 + 416);
      v62 = *(v0 + 424);
      *(v0 + 80) = v26;
      *(v0 + 88) = &protocol witness table for Data;
      *(v0 + 56) = v35;
      *(v0 + 64) = v36;
      outlined copy of Data._Representation(v35, v36);
      v69 = (v61 + *v61);
      v63 = v61[1];
      v64 = swift_task_alloc();
      *(v0 + 472) = v64;
      *v64 = v0;
      v64[1] = Transferable.init(_file:contentType:);
      v65 = v0 + 16;
      v66 = v0 + 56;
      goto LABEL_21;
    }

    outlined destroy of ResolvedTransferRepresentation(v32, type metadata accessor for ResolvedTransferRepresentation);
    result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v31);
LABEL_8:
    v25 = *(v0 + 408) + 1;
    if (v25 == *(v0 + 400))
    {
      v37 = *(v0 + 392);
      goto LABEL_16;
    }
  }

  v56 = *(v0 + 296);
  v55 = *(v0 + 304);
  v57 = *(v0 + 288);
  (*(*(v0 + 280) + 16))(v57, *(v0 + 184), *(v0 + 272));

  ReceivedTransferredFile.init(file:isOriginalFile:)(v57, 1, v55);
  *(v0 + 160) = v56;
  *(v0 + 168) = &protocol witness table for ReceivedTransferredFile;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  outlined init with copy of ResolvedTransferRepresentation(v55, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
  v69 = (v31 + *v31);
  v59 = v31[1];
  v60 = swift_task_alloc();
  *(v0 + 440) = v60;
  *v60 = v0;
  v60[1] = Transferable.init(_file:contentType:);
  v65 = v0 + 96;
  v66 = v0 + 136;
LABEL_21:

  return v69(v65, v66);
}

{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {

    v5 = Transferable.init(_file:contentType:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 136));
    v5 = Transferable.init(_file:contentType:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 200);
  outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ReceivedTransferredFile);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v3 = swift_dynamicCast();
  v4 = *(v2 - 8);
  (*(v4 + 56))(v1, v3 ^ 1u, 1, v2);
  if ((*(v4 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 448);
    (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
    v6 = MEMORY[0x277CC9318];
    if (*(v0 + 432) == MEMORY[0x277CC9318])
    {
      goto LABEL_4;
    }

LABEL_3:
    v8 = *(v0 + 416);
    v7 = *(v0 + 424);
    outlined destroy of ResolvedTransferRepresentation(*(v0 + 328), type metadata accessor for ResolvedTransferRepresentation);
    result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v8);
    while (1)
    {
      while (1)
      {
        v31 = *(v0 + 408) + 1;
        if (v31 == *(v0 + 400))
        {
          v59 = *(v0 + 392);

          v95 = *(v0 + 384);
          v60 = *(v0 + 344);
          v61 = *(v0 + 352);
          v62 = *(v0 + 336);
          v64 = *(v0 + 272);
          v63 = *(v0 + 280);
          v66 = *(v0 + 184);
          v65 = *(v0 + 192);
          type metadata accessor for TransferableError();
          lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          outlined destroy of UTType?(v65, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          (*(v63 + 8))(v66, v64);
          (*(v60 + 8))(v61, v62);
          outlined destroy of UTType?(v95, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          v68 = *(v0 + 376);
          v67 = *(v0 + 384);
          v70 = *(v0 + 360);
          v69 = *(v0 + 368);
          v71 = *(v0 + 352);
          v72 = *(v0 + 328);
          v73 = *(v0 + 304);
          v74 = *(v0 + 288);
          v75 = *(v0 + 256);
          v76 = *(v0 + 264);
          v96 = *(v0 + 232);

          v58 = *(v0 + 8);
          goto LABEL_18;
        }

        *(v0 + 408) = v31;
        v32 = *(v0 + 392);
        if (v31 >= *(v32 + 16))
        {
          __break(1u);
          return result;
        }

        v33 = *(v0 + 328);
        v34 = *(v0 + 312);
        outlined init with copy of ResolvedTransferRepresentation(v32 + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(*(v0 + 320) + 72) * v31, v33, type metadata accessor for ResolvedTransferRepresentation);
        v35 = (v33 + *(v34 + 36));
        v36 = *v35;
        *(v0 + 416) = *v35;
        *(v0 + 424) = v35[1];
        v37 = *(v0 + 328);
        if (v36)
        {
          break;
        }

        result = outlined destroy of ResolvedTransferRepresentation(v37, type metadata accessor for ResolvedTransferRepresentation);
      }

      v38 = *(v37 + *(*(v0 + 312) + 28));
      *(v0 + 432) = v38;
      if (v38 == type metadata accessor for SentTransferredFile(0))
      {
        v78 = *(v0 + 296);
        v77 = *(v0 + 304);
        v79 = *(v0 + 288);
        (*(*(v0 + 280) + 16))(v79, *(v0 + 184), *(v0 + 272));

        ReceivedTransferredFile.init(file:isOriginalFile:)(v79, 1, v77);
        *(v0 + 160) = v78;
        *(v0 + 168) = &protocol witness table for ReceivedTransferredFile;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
        outlined init with copy of ResolvedTransferRepresentation(v77, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
        v100 = (v36 + *v36);
        v81 = v36[1];
        v82 = swift_task_alloc();
        *(v0 + 440) = v82;
        *v82 = v0;
        v82[1] = Transferable.init(_file:contentType:);
        v83 = v0 + 96;
        v84 = v0 + 136;
        goto LABEL_23;
      }

      if (v38 != v6)
      {
        goto LABEL_3;
      }

LABEL_4:
      v10 = *(v0 + 184);
      v11 = Data.init(contentsOf:options:)();
      *(v0 + 456) = v11;
      *(v0 + 464) = v12;
      if (!v5)
      {
        break;
      }

      v97 = v5;
      v14 = *(v0 + 224);
      v13 = *(v0 + 232);
      v15 = *(v0 + 216);
      v16 = logger.unsafeMutableAddressor();
      (*(v14 + 16))(v13, v16, v15);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      v19 = os_log_type_enabled(v17, v18);
      v21 = *(v0 + 416);
      v20 = *(v0 + 424);
      v22 = *(v0 + 328);
      v23 = *(v0 + 232);
      v24 = *(v0 + 216);
      v25 = (*(v0 + 224) + 8);
      if (v19)
      {
        v93 = *(v0 + 328);
        v26 = v6;
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_20E3BF000, v17, v18, "error", v27, 2u);
        v28 = v27;
        v6 = v26;
        MEMORY[0x20F32E080](v28, -1, -1);
        outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v21);

        (*v25)(v23, v24);
        v29 = v93;
      }

      else
      {
        v30 = *(v0 + 424);
        outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*(v0 + 416));

        (*v25)(v23, v24);
        v29 = v22;
      }

      result = outlined destroy of ResolvedTransferRepresentation(v29, type metadata accessor for ResolvedTransferRepresentation);
      v5 = 0;
    }

    v85 = *(v0 + 416);
    v86 = *(v0 + 424);
    *(v0 + 80) = v6;
    *(v0 + 88) = &protocol witness table for Data;
    *(v0 + 56) = v11;
    *(v0 + 64) = v12;
    outlined copy of Data._Representation(v11, v12);
    v100 = (v85 + *v85);
    v87 = v85[1];
    v88 = swift_task_alloc();
    *(v0 + 472) = v88;
    *v88 = v0;
    v88[1] = Transferable.init(_file:contentType:);
    v83 = v0 + 16;
    v84 = v0 + 56;
LABEL_23:

    return v100(v83, v84);
  }

  else
  {
    v39 = *(v0 + 416);
    v40 = *(v0 + 424);
    v41 = *(v0 + 392);
    v42 = *(v0 + 344);
    v43 = *(v0 + 328);
    v89 = *(v0 + 336);
    v90 = *(v0 + 352);
    v45 = *(v0 + 272);
    v44 = *(v0 + 280);
    v98 = *(v0 + 264);
    v46 = *(v0 + 192);
    v92 = *(v0 + 384);
    v94 = *(v0 + 200);
    v47 = *(v0 + 184);
    v91 = *(v0 + 176);

    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v39);
    outlined destroy of UTType?(v46, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v44 + 8))(v47, v45);
    outlined destroy of ResolvedTransferRepresentation(v43, type metadata accessor for ResolvedTransferRepresentation);
    (*(v42 + 8))(v90, v89);
    outlined destroy of UTType?(v92, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v4 + 32))(v91, v98, v94);
    v49 = *(v0 + 376);
    v48 = *(v0 + 384);
    v51 = *(v0 + 360);
    v50 = *(v0 + 368);
    v52 = *(v0 + 352);
    v53 = *(v0 + 328);
    v54 = *(v0 + 304);
    v55 = *(v0 + 288);
    v57 = *(v0 + 256);
    v56 = *(v0 + 264);
    v99 = *(v0 + 232);

    v58 = *(v0 + 8);
LABEL_18:

    return v58();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v6 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = Transferable.init(_file:contentType:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v4 = Transferable.init(_file:contentType:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);
  v3 = *(v0 + 424);
  v4 = *(v0 + 328);
  v5 = *(v0 + 256);
  v6 = *(v0 + 200);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*(v0 + 416));
  outlined consume of Data._Representation(v1, v2);
  outlined destroy of ResolvedTransferRepresentation(v4, type metadata accessor for ResolvedTransferRepresentation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 392);
    v9 = *(v0 + 344);
    v8 = *(v0 + 352);
    v10 = *(v0 + 336);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v13 = *(v0 + 256);
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 184);
    v90 = *(v0 + 384);
    v94 = *(v0 + 176);

    outlined destroy of UTType?(v15, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v11 + 8))(v16, v12);
    (*(v9 + 8))(v8, v10);
    outlined destroy of UTType?(v90, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v17 = *(v14 - 8);
    (*(v17 + 56))(v13, 0, 1, v14);
    (*(v17 + 32))(v94, v13, v14);
    v19 = *(v0 + 376);
    v18 = *(v0 + 384);
    v21 = *(v0 + 360);
    v20 = *(v0 + 368);
    v22 = *(v0 + 352);
    v23 = *(v0 + 328);
    v24 = *(v0 + 304);
    v25 = *(v0 + 288);
    v27 = *(v0 + 256);
    v26 = *(v0 + 264);
    v95 = *(v0 + 232);

    v28 = *(v0 + 8);
LABEL_5:

    return v28();
  }

  v30 = *(v0 + 248);
  v29 = *(v0 + 256);
  v31 = *(v0 + 240);
  (*(*(*(v0 + 200) - 8) + 56))(v29, 1, 1);
  result = (*(v30 + 8))(v29, v31);
  v33 = *(v0 + 408) + 1;
  if (v33 == *(v0 + 400))
  {
LABEL_4:
    v34 = *(v0 + 392);

    v91 = *(v0 + 384);
    v35 = *(v0 + 344);
    v36 = *(v0 + 352);
    v37 = *(v0 + 336);
    v39 = *(v0 + 272);
    v38 = *(v0 + 280);
    v41 = *(v0 + 184);
    v40 = *(v0 + 192);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of UTType?(v40, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v38 + 8))(v41, v39);
    (*(v35 + 8))(v36, v37);
    outlined destroy of UTType?(v91, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v43 = *(v0 + 376);
    v42 = *(v0 + 384);
    v45 = *(v0 + 360);
    v44 = *(v0 + 368);
    v46 = *(v0 + 352);
    v47 = *(v0 + 328);
    v48 = *(v0 + 304);
    v49 = *(v0 + 288);
    v50 = *(v0 + 256);
    v51 = *(v0 + 264);
    v92 = *(v0 + 232);

    v28 = *(v0 + 8);
    goto LABEL_5;
  }

  v52 = *(v0 + 480);
  v53 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 408) = v33;
    v54 = *(v0 + 392);
    if (v33 >= *(v54 + 16))
    {
      __break(1u);
      return result;
    }

    v55 = *(v0 + 328);
    v56 = *(v0 + 312);
    outlined init with copy of ResolvedTransferRepresentation(v54 + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(*(v0 + 320) + 72) * v33, v55, type metadata accessor for ResolvedTransferRepresentation);
    v57 = (v55 + *(v56 + 36));
    v58 = *v57;
    *(v0 + 416) = *v57;
    *(v0 + 424) = v57[1];
    v59 = *(v0 + 328);
    if (v58)
    {
      break;
    }

    result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 328), type metadata accessor for ResolvedTransferRepresentation);
LABEL_10:
    v33 = *(v0 + 408) + 1;
    if (v33 == *(v0 + 400))
    {
      goto LABEL_4;
    }
  }

  v60 = *(v59 + *(*(v0 + 312) + 28));
  *(v0 + 432) = v60;
  if (v60 == type metadata accessor for SentTransferredFile(0))
  {
    v79 = *(v0 + 296);
    v78 = *(v0 + 304);
    v80 = *(v0 + 288);
    (*(*(v0 + 280) + 16))(v80, *(v0 + 184), *(v0 + 272));

    ReceivedTransferredFile.init(file:isOriginalFile:)(v80, 1, v78);
    *(v0 + 160) = v79;
    *(v0 + 168) = &protocol witness table for ReceivedTransferredFile;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    outlined init with copy of ResolvedTransferRepresentation(v78, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
    v97 = (v58 + *v58);
    v82 = v58[1];
    v83 = swift_task_alloc();
    *(v0 + 440) = v83;
    *v83 = v0;
    v83[1] = Transferable.init(_file:contentType:);
    v84 = v0 + 96;
    v85 = v0 + 136;
    goto LABEL_21;
  }

  if (v60 != v53)
  {
    outlined destroy of ResolvedTransferRepresentation(v59, type metadata accessor for ResolvedTransferRepresentation);
    result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v58);
    goto LABEL_10;
  }

  v61 = *(v0 + 184);
  v62 = Data.init(contentsOf:options:)();
  *(v0 + 456) = v62;
  *(v0 + 464) = v63;
  if (v52)
  {
    v65 = *(v0 + 224);
    v64 = *(v0 + 232);
    v66 = *(v0 + 216);
    v67 = logger.unsafeMutableAddressor();
    (*(v65 + 16))(v64, v67, v66);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    v70 = os_log_type_enabled(v68, v69);
    v72 = *(v0 + 416);
    v71 = *(v0 + 424);
    v73 = *(v0 + 328);
    v74 = *(v0 + 224);
    v96 = *(v0 + 232);
    v75 = *(v0 + 216);
    if (v70)
    {
      v93 = *(v0 + 328);
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_20E3BF000, v68, v69, "error", v76, 2u);
      v77 = v76;
      v73 = v93;
      MEMORY[0x20F32E080](v77, -1, -1);
    }

    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v72);

    (*(v74 + 8))(v96, v75);
    result = outlined destroy of ResolvedTransferRepresentation(v73, type metadata accessor for ResolvedTransferRepresentation);
    v52 = 0;
    goto LABEL_10;
  }

  v86 = *(v0 + 416);
  v87 = *(v0 + 424);
  *(v0 + 80) = v53;
  *(v0 + 88) = &protocol witness table for Data;
  *(v0 + 56) = v62;
  *(v0 + 64) = v63;
  outlined copy of Data._Representation(v62, v63);
  v97 = (v86 + *v86);
  v88 = v86[1];
  v89 = swift_task_alloc();
  *(v0 + 472) = v89;
  *v89 = v0;
  v89[1] = Transferable.init(_file:contentType:);
  v84 = v0 + 16;
  v85 = v0 + 56;
LABEL_21:

  return v97(v84, v85);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 200);
  outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ReceivedTransferredFile);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
  v3 = MEMORY[0x277CC9318];
  if (*(v0 + 432) != MEMORY[0x277CC9318])
  {
    while (2)
    {
      v4 = *(v0 + 416);
      v5 = *(v0 + 424);
      outlined destroy of ResolvedTransferRepresentation(*(v0 + 328), type metadata accessor for ResolvedTransferRepresentation);
      for (result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v4); ; result = outlined destroy of ResolvedTransferRepresentation(v16, type metadata accessor for ResolvedTransferRepresentation))
      {
        v10 = *(v0 + 408) + 1;
        if (v10 == *(v0 + 400))
        {
          v18 = *(v0 + 392);

          v49 = *(v0 + 384);
          v19 = *(v0 + 344);
          v20 = *(v0 + 352);
          v21 = *(v0 + 336);
          v23 = *(v0 + 272);
          v22 = *(v0 + 280);
          v25 = *(v0 + 184);
          v24 = *(v0 + 192);
          type metadata accessor for TransferableError();
          lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          outlined destroy of UTType?(v24, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          (*(v22 + 8))(v25, v23);
          (*(v19 + 8))(v20, v21);
          outlined destroy of UTType?(v49, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          v27 = *(v0 + 376);
          v26 = *(v0 + 384);
          v29 = *(v0 + 360);
          v28 = *(v0 + 368);
          v30 = *(v0 + 352);
          v31 = *(v0 + 328);
          v32 = *(v0 + 304);
          v33 = *(v0 + 288);
          v34 = *(v0 + 256);
          v35 = *(v0 + 264);
          v50 = *(v0 + 232);

          v36 = *(v0 + 8);

          return v36();
        }

        *(v0 + 408) = v10;
        v11 = *(v0 + 392);
        if (v10 >= *(v11 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v0 + 328);
        v13 = *(v0 + 312);
        outlined init with copy of ResolvedTransferRepresentation(v11 + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(*(v0 + 320) + 72) * v10, v12, type metadata accessor for ResolvedTransferRepresentation);
        v14 = (v12 + *(v13 + 36));
        v15 = *v14;
        *(v0 + 416) = *v14;
        *(v0 + 424) = v14[1];
        v16 = *(v0 + 328);
        if (v15)
        {
          break;
        }
      }

      v17 = *(v16 + *(*(v0 + 312) + 28));
      *(v0 + 432) = v17;
      if (v17 == type metadata accessor for SentTransferredFile(0))
      {
        v38 = *(v0 + 296);
        v37 = *(v0 + 304);
        v39 = *(v0 + 288);
        (*(*(v0 + 280) + 16))(v39, *(v0 + 184), *(v0 + 272));

        ReceivedTransferredFile.init(file:isOriginalFile:)(v39, 1, v37);
        *(v0 + 160) = v38;
        *(v0 + 168) = &protocol witness table for ReceivedTransferredFile;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
        outlined init with copy of ResolvedTransferRepresentation(v37, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
        v51 = (v15 + *v15);
        v41 = v15[1];
        v42 = swift_task_alloc();
        *(v0 + 440) = v42;
        *v42 = v0;
        v42[1] = Transferable.init(_file:contentType:);
        v47 = v0 + 96;
        v48 = v0 + 136;
        goto LABEL_15;
      }

      if (v17 != v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = *(v0 + 184);
  v8 = Data.init(contentsOf:options:)();
  *(v0 + 456) = v8;
  *(v0 + 464) = v9;
  v43 = *(v0 + 416);
  v44 = *(v0 + 424);
  *(v0 + 80) = v3;
  *(v0 + 88) = &protocol witness table for Data;
  *(v0 + 56) = v8;
  *(v0 + 64) = v9;
  outlined copy of Data._Representation(v8, v9);
  v51 = (v43 + *v43);
  v45 = v43[1];
  v46 = swift_task_alloc();
  *(v0 + 472) = v46;
  *v46 = v0;
  v46[1] = Transferable.init(_file:contentType:);
  v47 = v0 + 16;
  v48 = v0 + 56;
LABEL_15:

  return v51(v47, v48);
}

{
  outlined consume of Data._Representation(*(v0 + 456), *(v0 + 464));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v1 = *(v0 + 480);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = logger.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 416);
  v9 = *(v0 + 424);
  v11 = *(v0 + 328);
  v12 = *(v0 + 224);
  v13 = *(v0 + 232);
  v14 = *(v0 + 216);
  if (v8)
  {
    v64 = v1;
    v15 = *(v0 + 328);
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_20E3BF000, v6, v7, "error", v16, 2u);
    v17 = v16;
    v11 = v15;
    v1 = v64;
    MEMORY[0x20F32E080](v17, -1, -1);
  }

  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v10);

  (*(v12 + 8))(v13, v14);
  result = outlined destroy of ResolvedTransferRepresentation(v11, type metadata accessor for ResolvedTransferRepresentation);
  v19 = *(v0 + 408) + 1;
  v20 = MEMORY[0x277CC9318];
  if (v19 == *(v0 + 400))
  {
LABEL_13:
    v37 = *(v0 + 392);

    v62 = *(v0 + 384);
    v38 = *(v0 + 344);
    v39 = *(v0 + 352);
    v40 = *(v0 + 336);
    v42 = *(v0 + 272);
    v41 = *(v0 + 280);
    v44 = *(v0 + 184);
    v43 = *(v0 + 192);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of UTType?(v43, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v41 + 8))(v44, v42);
    (*(v38 + 8))(v39, v40);
    outlined destroy of UTType?(v62, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v46 = *(v0 + 376);
    v45 = *(v0 + 384);
    v48 = *(v0 + 360);
    v47 = *(v0 + 368);
    v49 = *(v0 + 352);
    v50 = *(v0 + 328);
    v51 = *(v0 + 304);
    v52 = *(v0 + 288);
    v53 = *(v0 + 256);
    v54 = *(v0 + 264);
    v63 = *(v0 + 232);

    v55 = *(v0 + 8);

    return v55();
  }

  while (1)
  {
    *(v0 + 408) = v19;
    v21 = *(v0 + 392);
    if (v19 >= *(v21 + 16))
    {
      __break(1u);
      return result;
    }

    v22 = *(v0 + 328);
    v23 = *(v0 + 312);
    outlined init with copy of ResolvedTransferRepresentation(v21 + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(*(v0 + 320) + 72) * v19, v22, type metadata accessor for ResolvedTransferRepresentation);
    v24 = (v22 + *(v23 + 36));
    v25 = *v24;
    *(v0 + 416) = *v24;
    *(v0 + 424) = v24[1];
    v26 = *(v0 + 328);
    if (!v25)
    {
      result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 328), type metadata accessor for ResolvedTransferRepresentation);
      goto LABEL_6;
    }

    v27 = *(v26 + *(*(v0 + 312) + 28));
    *(v0 + 432) = v27;
    if (v27 == type metadata accessor for SentTransferredFile(0))
    {
      break;
    }

    if (v27 == v20)
    {
      v28 = *(v0 + 184);
      v29 = Data.init(contentsOf:options:)();
      *(v0 + 456) = v29;
      *(v0 + 464) = v30;
      v31 = *(v0 + 416);
      v32 = *(v0 + 424);
      *(v0 + 80) = v20;
      *(v0 + 88) = &protocol witness table for Data;
      *(v0 + 56) = v29;
      *(v0 + 64) = v30;
      outlined copy of Data._Representation(v29, v30);
      v65 = (v31 + *v31);
      v33 = v31[1];
      v34 = swift_task_alloc();
      *(v0 + 472) = v34;
      *v34 = v0;
      v34[1] = Transferable.init(_file:contentType:);
      v35 = v0 + 16;
      v36 = v0 + 56;
      goto LABEL_17;
    }

    outlined destroy of ResolvedTransferRepresentation(v26, type metadata accessor for ResolvedTransferRepresentation);
    result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v25);
LABEL_6:
    v19 = *(v0 + 408) + 1;
    if (v19 == *(v0 + 400))
    {
      goto LABEL_13;
    }
  }

  v57 = *(v0 + 296);
  v56 = *(v0 + 304);
  v58 = *(v0 + 288);
  (*(*(v0 + 280) + 16))(v58, *(v0 + 184), *(v0 + 272));

  ReceivedTransferredFile.init(file:isOriginalFile:)(v58, 1, v56);
  *(v0 + 160) = v57;
  *(v0 + 168) = &protocol witness table for ReceivedTransferredFile;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  outlined init with copy of ResolvedTransferRepresentation(v56, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
  v65 = (v25 + *v25);
  v60 = v25[1];
  v61 = swift_task_alloc();
  *(v0 + 440) = v61;
  *v61 = v0;
  v61[1] = Transferable.init(_file:contentType:);
  v35 = v0 + 96;
  v36 = v0 + 136;
LABEL_17:

  return v65(v35, v36);
}

uint64_t Transferable.export(to:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.export(to:contentType:), 0, 0);
}

uint64_t Transferable.export(to:contentType:)()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = Transferable.export(to:contentType:);
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];
  v11 = v0[2];

  return Transferable._file(contentType:destinationDirectory:)(v11, v10, v6, v8, v9);
}

{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  outlined destroy of UTType?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v0)
  {

    return MEMORY[0x2822009F8](Transferable.export(to:contentType:), 0, 0);
  }

  else
  {
    v5 = v4[8];

    v6 = v4[1];

    return v6();
  }
}

{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t Transferable._file(contentType:destinationDirectory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = type metadata accessor for Logger();
  v6[16] = v7;
  v8 = *(v7 - 8);
  v6[17] = v8;
  v9 = *(v8 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v6[21] = v10;
  v11 = *(v10 - 8);
  v6[22] = v11;
  v12 = *(v11 + 64) + 15;
  v6[23] = swift_task_alloc();
  v13 = type metadata accessor for URL();
  v6[24] = v13;
  v14 = *(v13 - 8);
  v6[25] = v14;
  v15 = *(v14 + 64) + 15;
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v17 = type metadata accessor for ResolvedTransferRepresentation();
  v6[34] = v17;
  v18 = *(v17 - 8);
  v6[35] = v18;
  v19 = *(v18 + 64) + 15;
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable._file(contentType:destinationDirectory:), 0, 0);
}

uint64_t Transferable._file(contentType:destinationDirectory:)()
{
  v1 = static Transferable.resolvedRepresentations(for:)(*(v0 + 88), *(v0 + 104), *(v0 + 112));
  *(v0 + 320) = v1;
  v2 = *(v1 + 16);
  *(v0 + 328) = v2;
  if (v2)
  {
    v3 = *(v0 + 280);
    result = type metadata accessor for SentTransferredFile(0);
    v5 = 0;
    *(v0 + 336) = result;
    *(v0 + 76) = *(v3 + 80);
    v6 = MEMORY[0x277CC9318];
    while (1)
    {
      *(v0 + 344) = v5;
      v7 = *(v0 + 320);
      if (v5 >= *(v7 + 16))
      {
        __break(1u);
        return result;
      }

      v8 = *(v0 + 336);
      v9 = *(v0 + 312);
      v10 = *(v0 + 272);
      outlined init with copy of ResolvedTransferRepresentation(v7 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 280) + 72) * v5, v9, type metadata accessor for ResolvedTransferRepresentation);
      v11 = *(v9 + *(v10 + 28));
      if (v11 == v8)
      {
        break;
      }

      if (v11 == v6)
      {
        v31 = swift_task_alloc();
        *(v0 + 384) = v31;
        *v31 = v0;
        v31[1] = Transferable._file(contentType:destinationDirectory:);
        v32 = *(v0 + 312);
        v33 = *(v0 + 112);
        v34 = *(v0 + 120);
        v35 = *(v0 + 104);

        return Transferable.data(from:)(v32, v35, v33);
      }

      result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 312), type metadata accessor for ResolvedTransferRepresentation);
      v5 = *(v0 + 344) + 1;
      if (v5 == *(v0 + 328))
      {
        v12 = *(v0 + 320);
        goto LABEL_8;
      }
    }

    v21 = *(v0 + 264);
    v22 = *(v0 + 192);
    v23 = *(v0 + 200);
    v24 = *(v23 + 56);
    *(v0 + 352) = v24;
    *(v0 + 360) = (v23 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v24(v21, 1, 1, v22);
    v25 = swift_task_alloc();
    *(v0 + 368) = v25;
    *v25 = v0;
    v25[1] = Transferable._file(contentType:destinationDirectory:);
    v26 = *(v0 + 312);
    v27 = *(v0 + 256);
    v28 = *(v0 + 112);
    v29 = *(v0 + 120);
    v30 = *(v0 + 104);

    return Transferable.url(from:)(v27, v26, v30, v28);
  }

  else
  {
LABEL_8:

    v14 = *(v0 + 304);
    v13 = *(v0 + 312);
    v15 = *(v0 + 288);
    v16 = *(v0 + 296);
    v17 = *(v0 + 256);
    v18 = *(v0 + 264);
    v19 = *(v0 + 248);
    v36 = *(v0 + 240);
    v37 = *(v0 + 232);
    v38 = *(v0 + 224);
    v39 = *(v0 + 216);
    v40 = *(v0 + 208);
    v41 = *(v0 + 184);
    v42 = *(v0 + 160);
    v43 = *(v0 + 152);
    v44 = *(v0 + 144);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = Transferable._file(contentType:destinationDirectory:);
  }

  else
  {
    v3 = Transferable._file(contentType:destinationDirectory:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 192);
  outlined destroy of UTType?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2(v3, 0, 1, v5);
  outlined init with take of URL?(v3, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(v0 + 248);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  outlined init with copy of UTType?(*(v0 + 264), v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v29 = *(v0 + 312);
    v28 = *(v0 + 320);
    v30 = *(v0 + 264);
    v31 = *(v0 + 248);
    v32 = *(v0 + 232);
    v33 = *(v0 + 192);
    v34 = *(v0 + 200);
    v35 = *(v0 + 96);
    v36 = *(v0 + 80);

    (*(v34 + 32))(v32, v31, v33);
    copyFile(from:to:)(v32, v35, v36);
    (*(v34 + 8))(v32, v33);
    outlined destroy of UTType?(v30, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of ResolvedTransferRepresentation(v29, type metadata accessor for ResolvedTransferRepresentation);
    v38 = *(v0 + 304);
    v37 = *(v0 + 312);
    v40 = *(v0 + 288);
    v39 = *(v0 + 296);
    v42 = *(v0 + 256);
    v41 = *(v0 + 264);
    v44 = *(v0 + 240);
    v43 = *(v0 + 248);
    v45 = *(v0 + 224);
    v46 = *(v0 + 232);
    v66 = *(v0 + 216);
    v68 = *(v0 + 208);
    v70 = *(v0 + 184);
    v72 = *(v0 + 160);
    v74 = *(v0 + 152);
    v76 = *(v0 + 144);

    v27 = *(v0 + 8);
    goto LABEL_10;
  }

  v9 = *(v0 + 312);
  v10 = *(v0 + 248);
  outlined destroy of UTType?(*(v0 + 264), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of ResolvedTransferRepresentation(v9, type metadata accessor for ResolvedTransferRepresentation);
  result = outlined destroy of UTType?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(v0 + 344) + 1;
  if (v12 == *(v0 + 328))
  {
LABEL_8:
    v19 = *(v0 + 320);

    v21 = *(v0 + 304);
    v20 = *(v0 + 312);
    v22 = *(v0 + 288);
    v23 = *(v0 + 296);
    v24 = *(v0 + 256);
    v25 = *(v0 + 264);
    v26 = *(v0 + 248);
    v62 = *(v0 + 240);
    v63 = *(v0 + 232);
    v64 = *(v0 + 224);
    v65 = *(v0 + 216);
    v67 = *(v0 + 208);
    v69 = *(v0 + 184);
    v71 = *(v0 + 160);
    v73 = *(v0 + 152);
    v75 = *(v0 + 144);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v27 = *(v0 + 8);
LABEL_10:

    return v27();
  }

  v13 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 344) = v12;
    v14 = *(v0 + 320);
    if (v12 >= *(v14 + 16))
    {
      __break(1u);
      return result;
    }

    v15 = *(v0 + 336);
    v16 = *(v0 + 312);
    v17 = *(v0 + 272);
    outlined init with copy of ResolvedTransferRepresentation(v14 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 280) + 72) * v12, v16, type metadata accessor for ResolvedTransferRepresentation);
    v18 = *(v16 + *(v17 + 28));
    if (v18 == v15)
    {
      break;
    }

    if (v18 == v13)
    {
      v57 = swift_task_alloc();
      *(v0 + 384) = v57;
      *v57 = v0;
      v57[1] = Transferable._file(contentType:destinationDirectory:);
      v58 = *(v0 + 312);
      v59 = *(v0 + 112);
      v60 = *(v0 + 120);
      v61 = *(v0 + 104);

      return Transferable.data(from:)(v58, v61, v59);
    }

    result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 312), type metadata accessor for ResolvedTransferRepresentation);
    v12 = *(v0 + 344) + 1;
    if (v12 == *(v0 + 328))
    {
      goto LABEL_8;
    }
  }

  v47 = *(v0 + 264);
  v48 = *(v0 + 192);
  v49 = *(v0 + 200);
  v50 = *(v49 + 56);
  *(v0 + 352) = v50;
  *(v0 + 360) = (v49 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v50(v47, 1, 1, v48);
  v51 = swift_task_alloc();
  *(v0 + 368) = v51;
  *v51 = v0;
  v51[1] = Transferable._file(contentType:destinationDirectory:);
  v52 = *(v0 + 312);
  v53 = *(v0 + 256);
  v54 = *(v0 + 112);
  v55 = *(v0 + 120);
  v56 = *(v0 + 104);

  return Transferable.url(from:)(v53, v52, v56, v54);
}

{
  v138 = v0;
  v1 = *(v0 + 312);
  v2 = *(v1 + 16);
  if (v2 == 255)
  {
    outlined copy of Data._Representation(*(v0 + 392), *(v0 + 400));
    goto LABEL_5;
  }

  v4 = *v1;
  v3 = *(v1 + 8);
  *(v0 + 56) = *v1;
  v6 = *(v0 + 392);
  v5 = *(v0 + 400);
  v7 = *(v0 + 120);
  *(v0 + 64) = v3;
  *(v0 + 72) = v2 & 1;
  v8 = *(v0 + 104);
  *(v0 + 40) = v8;
  v9 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v7, v9);
  outlined copy of Data._Representation(v6, v5);
  outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage?(v4, v3, v2);
  ResolvedTransferRepresentation.SuggestedFileNameStorage.resolved(_:)(v0 + 16);
  v12 = v11;
  outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  outlined destroy of UTType?(v0 + 16, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
  if (!v12)
  {
LABEL_5:
    v13 = *(v0 + 176);
    v14 = *(v0 + 184);
    v15 = *(v0 + 168);
    UUID.init()();
    UUID.uuidString.getter();
    (*(v13 + 8))(v14, v15);
  }

  v16 = *(v0 + 240);
  v18 = *(v0 + 192);
  v17 = *(v0 + 200);
  outlined init with copy of UTType?(*(v0 + 96), v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v19 = *(v17 + 48);
  v20 = v19(v16, 1, v18);
  v21 = *(v0 + 240);
  if (v20 == 1)
  {
    v22 = *(v0 + 192);
    v23 = *(v0 + 208);
    backupDirectory()();
    if (v19(v21, 1, v22) != 1)
    {
      outlined destroy of UTType?(*(v0 + 240), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 240), *(v0 + 192));
  }

  v124 = *(v0 + 400);
  v128 = *(v0 + 408);
  v24 = *(v0 + 392);
  v25 = *(v0 + 312);
  v26 = *(v0 + 272);
  v28 = *(v0 + 216);
  v27 = *(v0 + 224);
  v30 = *(v0 + 200);
  v29 = *(v0 + 208);
  v31 = *(v0 + 192);
  URL.appendingPathComponent(_:isDirectory:)();

  v32 = *(v30 + 8);
  v32(v29, v31);
  v33 = v25 + *(v26 + 20);
  URL.appendingPathExtension(for:)();
  v32(v28, v31);
  v34 = v128;
  Data.write(to:options:)();
  v36 = *(v0 + 392);
  v35 = *(v0 + 400);
  v37 = *(v0 + 224);
  if (!v128)
  {
    v63 = *(v0 + 320);
    v64 = *(v0 + 192);
    v65 = *(v0 + 200);
    v66 = *(v0 + 80);
    outlined destroy of ResolvedTransferRepresentation(*(v0 + 312), type metadata accessor for ResolvedTransferRepresentation);
    outlined consume of Data._Representation(v36, v35);
    outlined consume of Data._Representation(v36, v35);

    (*(v65 + 32))(v66, v37, v64);
    v68 = *(v0 + 304);
    v67 = *(v0 + 312);
    v70 = *(v0 + 288);
    v69 = *(v0 + 296);
    v72 = *(v0 + 256);
    v71 = *(v0 + 264);
    v74 = *(v0 + 240);
    v73 = *(v0 + 248);
    v75 = *(v0 + 224);
    v76 = *(v0 + 232);
    v116 = *(v0 + 216);
    v119 = *(v0 + 208);
    v122 = *(v0 + 184);
    v126 = *(v0 + 160);
    v131 = *(v0 + 152);
    v135 = *(v0 + 144);

    v77 = *(v0 + 8);
LABEL_22:

    return v77();
  }

  v129 = *(v0 + 304);
  v133 = *(v0 + 312);
  v38 = *(v0 + 160);
  v39 = v34;
  v41 = *(v0 + 128);
  v40 = *(v0 + 136);
  v32(v37, *(v0 + 192));
  outlined consume of Data._Representation(v36, v35);
  v42 = logger.unsafeMutableAddressor();
  (*(v40 + 16))(v38, v42, v41);
  v43 = v39;
  outlined init with copy of ResolvedTransferRepresentation(v133, v129, type metadata accessor for ResolvedTransferRepresentation);
  v44 = v39;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.fault.getter();

  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 400);
  v134 = *(v0 + 392);
  v49 = *(v0 + 304);
  v50 = *(v0 + 312);
  if (v47)
  {
    v51 = *(v0 + 272);
    v121 = *(v0 + 136);
    v125 = *(v0 + 128);
    v130 = *(v0 + 160);
    v118 = *(v0 + 312);
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v115 = v48;
    v54 = swift_slowAlloc();
    v137 = v54;
    *v52 = 136315394;
    v55 = v49 + *(v51 + 20);
    v56 = UTType.identifier.getter();
    v58 = v57;
    outlined destroy of ResolvedTransferRepresentation(v49, type metadata accessor for ResolvedTransferRepresentation);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v137);

    *(v52 + 4) = v59;
    *(v52 + 12) = 2112;
    v60 = v43;
    v61 = _swift_stdlib_bridgeErrorToNSError();
    *(v52 + 14) = v61;
    *v53 = v61;
    _os_log_impl(&dword_20E3BF000, v45, v46, "Error writing data for type identifier %s: %@", v52, 0x16u);
    outlined destroy of UTType?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v53, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    MEMORY[0x20F32E080](v54, -1, -1);
    MEMORY[0x20F32E080](v52, -1, -1);

    outlined consume of Data._Representation(v134, v115);
    (*(v121 + 8))(v130, v125);
    v62 = v118;
  }

  else
  {
    v78 = *(v0 + 160);
    v79 = *(v0 + 128);
    v80 = *(v0 + 136);

    outlined consume of Data._Representation(v134, v48);
    outlined destroy of ResolvedTransferRepresentation(v49, type metadata accessor for ResolvedTransferRepresentation);
    (*(v80 + 8))(v78, v79);
    v62 = v50;
  }

  result = outlined destroy of ResolvedTransferRepresentation(v62, type metadata accessor for ResolvedTransferRepresentation);
  v82 = *(v0 + 344) + 1;
  if (v82 == *(v0 + 328))
  {
LABEL_21:
    v89 = *(v0 + 320);

    v91 = *(v0 + 304);
    v90 = *(v0 + 312);
    v92 = *(v0 + 288);
    v93 = *(v0 + 296);
    v94 = *(v0 + 256);
    v95 = *(v0 + 264);
    v96 = *(v0 + 248);
    v112 = *(v0 + 240);
    v113 = *(v0 + 232);
    v114 = *(v0 + 224);
    v117 = *(v0 + 216);
    v120 = *(v0 + 208);
    v123 = *(v0 + 184);
    v127 = *(v0 + 160);
    v132 = *(v0 + 152);
    v136 = *(v0 + 144);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v77 = *(v0 + 8);
    goto LABEL_22;
  }

  v83 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 344) = v82;
    v84 = *(v0 + 320);
    if (v82 >= *(v84 + 16))
    {
      __break(1u);
      return result;
    }

    v85 = *(v0 + 336);
    v86 = *(v0 + 312);
    v87 = *(v0 + 272);
    outlined init with copy of ResolvedTransferRepresentation(v84 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 280) + 72) * v82, v86, type metadata accessor for ResolvedTransferRepresentation);
    v88 = *(v86 + *(v87 + 28));
    if (v88 == v85)
    {
      break;
    }

    if (v88 == v83)
    {
      v107 = swift_task_alloc();
      *(v0 + 384) = v107;
      *v107 = v0;
      v107[1] = Transferable._file(contentType:destinationDirectory:);
      v108 = *(v0 + 312);
      v109 = *(v0 + 112);
      v110 = *(v0 + 120);
      v111 = *(v0 + 104);

      return Transferable.data(from:)(v108, v111, v109);
    }

    result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 312), type metadata accessor for ResolvedTransferRepresentation);
    v82 = *(v0 + 344) + 1;
    if (v82 == *(v0 + 328))
    {
      goto LABEL_21;
    }
  }

  v97 = *(v0 + 264);
  v98 = *(v0 + 192);
  v99 = *(v0 + 200);
  v100 = *(v99 + 56);
  *(v0 + 352) = v100;
  *(v0 + 360) = (v99 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v100(v97, 1, 1, v98);
  v101 = swift_task_alloc();
  *(v0 + 368) = v101;
  *v101 = v0;
  v101[1] = Transferable._file(contentType:destinationDirectory:);
  v102 = *(v0 + 312);
  v103 = *(v0 + 256);
  v104 = *(v0 + 112);
  v105 = *(v0 + 120);
  v106 = *(v0 + 104);

  return Transferable.url(from:)(v103, v102, v106, v104);
}

{
  v103 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = logger.unsafeMutableAddressor();
  (*(v6 + 16))(v4, v7, v5);
  outlined init with copy of ResolvedTransferRepresentation(v2, v3, type metadata accessor for ResolvedTransferRepresentation);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 376);
  v13 = *(v0 + 296);
  if (v11)
  {
    v14 = *(v0 + 272);
    v93 = *(v0 + 136);
    v96 = *(v0 + 128);
    v99 = *(v0 + 152);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v102 = v17;
    *v15 = 136315394;
    v18 = v13 + *(v14 + 20);
    v19 = UTType.identifier.getter();
    v21 = v20;
    outlined destroy of ResolvedTransferRepresentation(v13, type metadata accessor for ResolvedTransferRepresentation);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v102);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2112;
    v23 = v12;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v24;
    *v16 = v24;
    _os_log_impl(&dword_20E3BF000, v9, v10, "Error loading URL for type identifier %s: %@", v15, 0x16u);
    outlined destroy of UTType?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x20F32E080](v17, -1, -1);
    MEMORY[0x20F32E080](v15, -1, -1);

    (*(v93 + 8))(v99, v96);
  }

  else
  {
    v25 = *(v0 + 152);
    v26 = *(v0 + 128);
    v27 = *(v0 + 136);

    outlined destroy of ResolvedTransferRepresentation(v13, type metadata accessor for ResolvedTransferRepresentation);
    (*(v27 + 8))(v25, v26);
  }

  v28 = *(v0 + 248);
  v29 = *(v0 + 192);
  v30 = *(v0 + 200);
  outlined init with copy of UTType?(*(v0 + 264), v28, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v30 + 48))(v28, 1, v29) != 1)
  {
    v51 = *(v0 + 312);
    v50 = *(v0 + 320);
    v52 = *(v0 + 264);
    v53 = *(v0 + 248);
    v54 = *(v0 + 232);
    v55 = *(v0 + 192);
    v56 = *(v0 + 200);
    v57 = *(v0 + 96);
    v58 = *(v0 + 80);

    (*(v56 + 32))(v54, v53, v55);
    copyFile(from:to:)(v54, v57, v58);
    (*(v56 + 8))(v54, v55);
    outlined destroy of UTType?(v52, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of ResolvedTransferRepresentation(v51, type metadata accessor for ResolvedTransferRepresentation);
    v60 = *(v0 + 304);
    v59 = *(v0 + 312);
    v62 = *(v0 + 288);
    v61 = *(v0 + 296);
    v64 = *(v0 + 256);
    v63 = *(v0 + 264);
    v66 = *(v0 + 240);
    v65 = *(v0 + 248);
    v67 = *(v0 + 224);
    v68 = *(v0 + 232);
    v88 = *(v0 + 216);
    v90 = *(v0 + 208);
    v92 = *(v0 + 184);
    v95 = *(v0 + 160);
    v98 = *(v0 + 152);
    v101 = *(v0 + 144);

    v49 = *(v0 + 8);
    goto LABEL_13;
  }

  v31 = *(v0 + 312);
  v32 = *(v0 + 248);
  outlined destroy of UTType?(*(v0 + 264), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of ResolvedTransferRepresentation(v31, type metadata accessor for ResolvedTransferRepresentation);
  result = outlined destroy of UTType?(v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v34 = *(v0 + 344) + 1;
  if (v34 == *(v0 + 328))
  {
LABEL_11:
    v41 = *(v0 + 320);

    v43 = *(v0 + 304);
    v42 = *(v0 + 312);
    v44 = *(v0 + 288);
    v45 = *(v0 + 296);
    v46 = *(v0 + 256);
    v47 = *(v0 + 264);
    v48 = *(v0 + 248);
    v84 = *(v0 + 240);
    v85 = *(v0 + 232);
    v86 = *(v0 + 224);
    v87 = *(v0 + 216);
    v89 = *(v0 + 208);
    v91 = *(v0 + 184);
    v94 = *(v0 + 160);
    v97 = *(v0 + 152);
    v100 = *(v0 + 144);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v49 = *(v0 + 8);
LABEL_13:

    return v49();
  }

  v35 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 344) = v34;
    v36 = *(v0 + 320);
    if (v34 >= *(v36 + 16))
    {
      __break(1u);
      return result;
    }

    v37 = *(v0 + 336);
    v38 = *(v0 + 312);
    v39 = *(v0 + 272);
    outlined init with copy of ResolvedTransferRepresentation(v36 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 280) + 72) * v34, v38, type metadata accessor for ResolvedTransferRepresentation);
    v40 = *(v38 + *(v39 + 28));
    if (v40 == v37)
    {
      break;
    }

    if (v40 == v35)
    {
      v79 = swift_task_alloc();
      *(v0 + 384) = v79;
      *v79 = v0;
      v79[1] = Transferable._file(contentType:destinationDirectory:);
      v80 = *(v0 + 312);
      v81 = *(v0 + 112);
      v82 = *(v0 + 120);
      v83 = *(v0 + 104);

      return Transferable.data(from:)(v80, v83, v81);
    }

    result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 312), type metadata accessor for ResolvedTransferRepresentation);
    v34 = *(v0 + 344) + 1;
    if (v34 == *(v0 + 328))
    {
      goto LABEL_11;
    }
  }

  v69 = *(v0 + 264);
  v70 = *(v0 + 192);
  v71 = *(v0 + 200);
  v72 = *(v71 + 56);
  *(v0 + 352) = v72;
  *(v0 + 360) = (v71 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v72(v69, 1, 1, v70);
  v73 = swift_task_alloc();
  *(v0 + 368) = v73;
  *v73 = v0;
  v73[1] = Transferable._file(contentType:destinationDirectory:);
  v74 = *(v0 + 312);
  v75 = *(v0 + 256);
  v76 = *(v0 + 112);
  v77 = *(v0 + 120);
  v78 = *(v0 + 104);

  return Transferable.url(from:)(v75, v74, v78, v76);
}

{
  v76 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = logger.unsafeMutableAddressor();
  (*(v5 + 16))(v4, v7, v6);
  outlined init with copy of ResolvedTransferRepresentation(v2, v3, type metadata accessor for ResolvedTransferRepresentation);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 408);
  v13 = *(v0 + 312);
  v14 = *(v0 + 288);
  if (v11)
  {
    v15 = *(v0 + 272);
    v69 = *(v0 + 136);
    v71 = *(v0 + 128);
    v73 = *(v0 + 144);
    v67 = *(v0 + 312);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v75 = v18;
    *v16 = 136315394;
    v19 = v14 + *(v15 + 20);
    v20 = UTType.identifier.getter();
    v22 = v21;
    outlined destroy of ResolvedTransferRepresentation(v14, type metadata accessor for ResolvedTransferRepresentation);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v75);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2112;
    v24 = v12;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v25;
    *v17 = v25;
    _os_log_impl(&dword_20E3BF000, v9, v10, "Error loading data for type identifier %s: %@", v16, 0x16u);
    outlined destroy of UTType?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x20F32E080](v18, -1, -1);
    MEMORY[0x20F32E080](v16, -1, -1);

    (*(v69 + 8))(v73, v71);
    v26 = v67;
  }

  else
  {
    v28 = *(v0 + 136);
    v27 = *(v0 + 144);
    v29 = *(v0 + 128);

    outlined destroy of ResolvedTransferRepresentation(v14, type metadata accessor for ResolvedTransferRepresentation);
    (*(v28 + 8))(v27, v29);
    v26 = v13;
  }

  result = outlined destroy of ResolvedTransferRepresentation(v26, type metadata accessor for ResolvedTransferRepresentation);
  v31 = *(v0 + 344) + 1;
  if (v31 == *(v0 + 328))
  {
LABEL_10:
    v38 = *(v0 + 320);

    v40 = *(v0 + 304);
    v39 = *(v0 + 312);
    v41 = *(v0 + 288);
    v42 = *(v0 + 296);
    v43 = *(v0 + 256);
    v44 = *(v0 + 264);
    v45 = *(v0 + 248);
    v62 = *(v0 + 240);
    v63 = *(v0 + 232);
    v64 = *(v0 + 224);
    v65 = *(v0 + 216);
    v66 = *(v0 + 208);
    v68 = *(v0 + 184);
    v70 = *(v0 + 160);
    v72 = *(v0 + 152);
    v74 = *(v0 + 144);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v46 = *(v0 + 8);

    return v46();
  }

  else
  {
    v32 = MEMORY[0x277CC9318];
    while (1)
    {
      *(v0 + 344) = v31;
      v33 = *(v0 + 320);
      if (v31 >= *(v33 + 16))
      {
        __break(1u);
        return result;
      }

      v34 = *(v0 + 336);
      v35 = *(v0 + 312);
      v36 = *(v0 + 272);
      outlined init with copy of ResolvedTransferRepresentation(v33 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 280) + 72) * v31, v35, type metadata accessor for ResolvedTransferRepresentation);
      v37 = *(v35 + *(v36 + 28));
      if (v37 == v34)
      {
        break;
      }

      if (v37 == v32)
      {
        v57 = swift_task_alloc();
        *(v0 + 384) = v57;
        *v57 = v0;
        v57[1] = Transferable._file(contentType:destinationDirectory:);
        v58 = *(v0 + 312);
        v59 = *(v0 + 112);
        v60 = *(v0 + 120);
        v61 = *(v0 + 104);

        return Transferable.data(from:)(v58, v61, v59);
      }

      result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 312), type metadata accessor for ResolvedTransferRepresentation);
      v31 = *(v0 + 344) + 1;
      if (v31 == *(v0 + 328))
      {
        goto LABEL_10;
      }
    }

    v47 = *(v0 + 264);
    v48 = *(v0 + 192);
    v49 = *(v0 + 200);
    v50 = *(v49 + 56);
    *(v0 + 352) = v50;
    *(v0 + 360) = (v49 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v50(v47, 1, 1, v48);
    v51 = swift_task_alloc();
    *(v0 + 368) = v51;
    *v51 = v0;
    v51[1] = Transferable._file(contentType:destinationDirectory:);
    v52 = *(v0 + 312);
    v53 = *(v0 + 256);
    v54 = *(v0 + 112);
    v55 = *(v0 + 120);
    v56 = *(v0 + 104);

    return Transferable.url(from:)(v53, v52, v56, v54);
  }
}

uint64_t Transferable._file(contentType:destinationDirectory:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 384);
  v8 = *v3;
  v4[49] = a1;
  v4[50] = a2;
  v4[51] = v2;

  if (v2)
  {
    v6 = Transferable._file(contentType:destinationDirectory:);
  }

  else
  {
    v6 = Transferable._file(contentType:destinationDirectory:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t Transferable.withExportedFile<A>(contentType:fileHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = *MEMORY[0x277D85DE8];
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  v9 = type metadata accessor for Logger();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v13 = type metadata accessor for URL();
  v8[14] = v13;
  v14 = *(v13 - 8);
  v8[15] = v14;
  v15 = *(v14 + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v16 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](Transferable.withExportedFile<A>(contentType:fileHandler:), 0, 0);
}

uint64_t Transferable.withExportedFile<A>(contentType:fileHandler:)()
{
  v1 = v0;
  v11 = *MEMORY[0x277D85DE8];
  (*(v0[15] + 56))(v0[13], 1, 1, v0[14]);
  v2 = swift_task_alloc();
  v1[18] = v2;
  *v2 = v1;
  v2[1] = Transferable.withExportedFile<A>(contentType:fileHandler:);
  v3 = v1[17];
  v4 = v1[13];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[7];
  v8 = v1[4];
  v9 = *MEMORY[0x277D85DE8];

  return Transferable._file(contentType:destinationDirectory:)(v3, v8, v4, v7, v5);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  v2[19] = v0;

  v5 = v2[13];
  if (v0)
  {
    outlined destroy of UTType?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](Transferable.withExportedFile<A>(contentType:fileHandler:), 0, 0);
  }

  else
  {
    v7 = v2[5];
    outlined destroy of UTType?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v15 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v2[20] = v9;
    *v9 = v4;
    v9[1] = Transferable.withExportedFile<A>(contentType:fileHandler:);
    v10 = v2[17];
    v11 = v2[6];
    v12 = v2[3];
    v13 = *MEMORY[0x277D85DE8];

    return v15(v12, v10);
  }
}

{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = Transferable.withExportedFile<A>(contentType:fileHandler:);
  }

  else
  {
    v3 = Transferable.withExportedFile<A>(contentType:fileHandler:);
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = v0[17];
  v2 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v0[2] = 0;
  v6 = [v2 removeItemAtURL:v4 error:v0 + 2];

  v7 = v0[2];
  v8 = v0[17];
  if (v6)
  {
    v9 = v0[14];
    v10 = *(v0[15] + 8);
    v11 = v7;
    v10(v8, v9);
  }

  else
  {
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[10];
    v18 = v7;
    v19 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v20 = logger.unsafeMutableAddressor();
    (*(v16 + 16))(v15, v20, v17);
    (*(v13 + 16))(v12, v8, v14);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    v53 = v23;
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[16];
    v26 = v0[17];
    v28 = v0[14];
    v27 = v0[15];
    v30 = v0[11];
    v29 = v0[12];
    v31 = v0[10];
    if (v24)
    {
      v52 = v0[10];
      v32 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v54[0] = v49;
      *v32 = 136315394;
      v50 = v29;
      v51 = v26;
      v33 = URL.path.getter();
      v35 = v34;
      v36 = *(v27 + 8);
      v36(v25, v28);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v54);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2112;
      v38 = v19;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v39;
      *v48 = v39;
      _os_log_impl(&dword_20E3BF000, v22, v53, "Failed to remove temporary file: %s Error: %@", v32, 0x16u);
      outlined destroy of UTType?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F32E080](v48, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x20F32E080](v49, -1, -1);
      MEMORY[0x20F32E080](v32, -1, -1);

      (*(v30 + 8))(v50, v52);
      v36(v51, v28);
    }

    else
    {

      v40 = *(v27 + 8);
      v40(v25, v28);
      (*(v30 + 8))(v29, v31);
      v40(v26, v28);
    }
  }

  v42 = v0[16];
  v41 = v0[17];
  v44 = v0[12];
  v43 = v0[13];

  v45 = v0[1];
  v46 = *MEMORY[0x277D85DE8];

  return v45();
}

{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[12];
  v4 = v0[13];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

{
  v9 = *MEMORY[0x277D85DE8];
  (*(v0[15] + 8))(v0[17], v0[14]);
  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[12];
  v4 = v0[13];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t Transferable.suggestedFilename.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedTransferRepresentation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v27 - v14;
  result = static Transferable.resolvedRepresentations()(a1, a2);
  v17 = result;
  v18 = *(result + 16);
  if (v18)
  {
    v19 = 0;
    while (v19 < *(v17 + 16))
    {
      outlined init with copy of ResolvedTransferRepresentation(v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v8, type metadata accessor for ResolvedTransferRepresentation);
      if (v8[16] != 255)
      {

        outlined init with take of ResolvedTransferRepresentation(v8, v15, type metadata accessor for ResolvedTransferRepresentation);
        v20 = 0;
        goto LABEL_8;
      }

      ++v19;
      result = outlined destroy of ResolvedTransferRepresentation(v8, type metadata accessor for ResolvedTransferRepresentation);
      if (v18 == v19)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v20 = 1;
LABEL_8:
    (*(v5 + 56))(v15, v20, 1, v4);
    outlined init with copy of UTType?(v15, v13, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      outlined destroy of UTType?(v15, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v21 = v13;
    }

    else
    {
      v22 = *v13;
      v23 = *(v13 + 1);
      v24 = v13[16];
      outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage?(*v13, v23, v13[16]);
      outlined destroy of ResolvedTransferRepresentation(v13, type metadata accessor for ResolvedTransferRepresentation);
      if (v24 != 255)
      {
        v29 = v22;
        v30 = v23;
        v31 = v24 & 1;
        v28[3] = a1;
        v28[4] = a2;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
        (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v27[1], a1);
        v26 = ResolvedTransferRepresentation.SuggestedFileNameStorage.resolved(_:)(v28);
        outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(v29, v30, v31);
        outlined destroy of UTType?(v15, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
        outlined destroy of UTType?(v28, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
        return v26;
      }

      v21 = v15;
    }

    outlined destroy of UTType?(v21, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
    return 0;
  }

  return result;
}

uint64_t Transferable.init(importing:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.init(importing:contentType:), 0, 0);
}

uint64_t Transferable.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v7 = type metadata accessor for ReceivedTransferredFile(0);
  v6[28] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[30] = v9;
  v10 = *(v9 - 8);
  v6[31] = v10;
  v11 = *(v10 + 64) + 15;
  v6[32] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v6[33] = v12;
  v13 = *(v12 - 8);
  v6[34] = v13;
  v14 = *(v13 + 64) + 15;
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v15 = type metadata accessor for Optional();
  v6[37] = v15;
  v16 = *(v15 - 8);
  v6[38] = v16;
  v17 = *(v16 + 64) + 15;
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v18 = type metadata accessor for ResolvedTransferRepresentation();
  v6[41] = v18;
  v19 = *(v18 - 8);
  v6[42] = v19;
  v20 = *(v19 + 64) + 15;
  v6[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.init(_:_:), 0, 0);
}

uint64_t Transferable.init(_:_:)()
{
  result = static Transferable.resolvedRepresentations(for:)(*(v0 + 200), *(v0 + 208), *(v0 + 216));
  *(v0 + 352) = result;
  v2 = *(result + 16);
  *(v0 + 360) = v2;
  if (!v2)
  {
LABEL_11:

    v14 = *(v0 + 344);
    v15 = *(v0 + 312);
    v16 = *(v0 + 320);
    v17 = *(v0 + 288);
    v44 = *(v0 + 280);
    v46 = *(v0 + 256);
    v48 = *(v0 + 232);
    v18 = *(v0 + 192);
    v19 = *(v0 + 200);
    v20 = *(v0 + 184);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v20, v18);
    outlined destroy of UTType?(v19, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

    v21 = *(v0 + 8);

    return v21();
  }

  v3 = 0;
  *(v0 + 448) = *(*(v0 + 336) + 80);
  v4 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 368) = v3;
    v5 = *(v0 + 352);
    if (v3 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v6 = *(v0 + 344);
    v7 = *(v0 + 328);
    outlined init with copy of ResolvedTransferRepresentation(v5 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(*(v0 + 336) + 72) * v3, v6, type metadata accessor for ResolvedTransferRepresentation);
    v8 = (v6 + *(v7 + 36));
    v9 = *v8;
    *(v0 + 376) = *v8;
    *(v0 + 384) = v8[1];
    v10 = *(v0 + 344);
    if (v9)
    {
      break;
    }

    result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 344), type metadata accessor for ResolvedTransferRepresentation);
LABEL_4:
    v3 = *(v0 + 368) + 1;
    if (v3 == *(v0 + 360))
    {
      v13 = *(v0 + 352);
      goto LABEL_11;
    }
  }

  v11 = *(v10 + *(*(v0 + 328) + 28));
  *(v0 + 392) = v11;
  if (v11 == v4)
  {
    v23 = *(v0 + 184);
    v22 = *(v0 + 192);
    *(v0 + 160) = v4;
    *(v0 + 168) = &protocol witness table for Data;
    *(v0 + 136) = v23;
    *(v0 + 144) = v22;
    outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v9);
    outlined copy of Data._Representation(v23, v22);
    v49 = (v9 + *v9);
    v24 = v9[1];
    v25 = swift_task_alloc();
    *(v0 + 400) = v25;
    *v25 = v0;
    v25[1] = Transferable.init(_:_:);
    v26 = v0 + 96;
    v27 = v0 + 136;
    goto LABEL_16;
  }

  v12 = type metadata accessor for SentTransferredFile(0);

  if (v11 != v12)
  {
    outlined destroy of ResolvedTransferRepresentation(v10, type metadata accessor for ResolvedTransferRepresentation);
    result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v9);
    goto LABEL_4;
  }

  v29 = *(v0 + 280);
  v28 = *(v0 + 288);
  v30 = *(v0 + 272);
  v32 = *(v0 + 248);
  v31 = *(v0 + 256);
  v33 = *(v0 + 240);
  v50 = *(v0 + 192);
  v45 = *(v0 + 264);
  v47 = *(v0 + 184);
  v34 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v32 + 8))(v31, v33);
  URL.appendingPathComponent(_:isDirectory:)();

  v35 = *(v30 + 8);
  *(v0 + 416) = v35;
  *(v0 + 424) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v29, v45);
  Data.write(to:options:)();
  v36 = *(v0 + 376);
  v37 = *(v0 + 384);
  v38 = *(v0 + 280);
  v40 = *(v0 + 224);
  v39 = *(v0 + 232);
  (*(*(v0 + 272) + 16))(v38, *(v0 + 288), *(v0 + 264));
  ReceivedTransferredFile.init(file:isOriginalFile:)(v38, 1, v39);
  *(v0 + 80) = v40;
  *(v0 + 88) = &protocol witness table for ReceivedTransferredFile;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  outlined init with copy of ResolvedTransferRepresentation(v39, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
  v49 = (v36 + *v36);
  v42 = v36[1];
  v43 = swift_task_alloc();
  *(v0 + 432) = v43;
  *v43 = v0;
  v43[1] = Transferable.init(_:_:);
  v26 = v0 + 16;
  v27 = v0 + 56;
LABEL_16:

  return v49(v26, v27);
}

{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {

    v5 = Transferable.init(_:_:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 136));
    v5 = Transferable.init(_:_:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = *(v0 + 320);
  v2 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v3 = swift_dynamicCast();
  v4 = *(v2 - 8);
  (*(v4 + 56))(v1, v3 ^ 1u, 1, v2);
  if ((*(v4 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 408);
    (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
    v6 = type metadata accessor for SentTransferredFile(0);
    if (*(v0 + 392) != v6)
    {
      v7 = v6;
      v9 = *(v0 + 376);
      v8 = *(v0 + 384);
      v10 = *(v0 + 344);
      v11 = MEMORY[0x277CC9318];
      while (2)
      {
        outlined destroy of ResolvedTransferRepresentation(v10, type metadata accessor for ResolvedTransferRepresentation);
        for (result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v9); ; result = outlined destroy of ResolvedTransferRepresentation(v18, type metadata accessor for ResolvedTransferRepresentation))
        {
          v13 = *(v0 + 368) + 1;
          if (v13 == *(v0 + 360))
          {
            v53 = *(v0 + 352);

            v54 = *(v0 + 344);
            v55 = *(v0 + 312);
            v56 = *(v0 + 320);
            v57 = *(v0 + 288);
            v67 = *(v0 + 280);
            v69 = *(v0 + 256);
            v72 = *(v0 + 232);
            v58 = *(v0 + 192);
            v59 = *(v0 + 200);
            v60 = *(v0 + 184);
            type metadata accessor for TransferableError();
            lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
            swift_allocError();
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            outlined consume of Data._Representation(v60, v58);
            outlined destroy of UTType?(v59, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

            v52 = *(v0 + 8);
            goto LABEL_19;
          }

          *(v0 + 368) = v13;
          v14 = *(v0 + 352);
          if (v13 >= *(v14 + 16))
          {
            __break(1u);
            return result;
          }

          v15 = *(v0 + 344);
          v16 = *(v0 + 328);
          outlined init with copy of ResolvedTransferRepresentation(v14 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(*(v0 + 336) + 72) * v13, v15, type metadata accessor for ResolvedTransferRepresentation);
          v17 = (v15 + *(v16 + 36));
          v9 = *v17;
          *(v0 + 376) = *v17;
          *(v0 + 384) = v17[1];
          v18 = *(v0 + 344);
          if (v9)
          {
            break;
          }
        }

        v19 = *(v18 + *(*(v0 + 328) + 28));
        *(v0 + 392) = v19;
        if (v19 == v11)
        {
          v62 = *(v0 + 184);
          v61 = *(v0 + 192);
          *(v0 + 160) = v11;
          *(v0 + 168) = &protocol witness table for Data;
          *(v0 + 136) = v62;
          *(v0 + 144) = v61;
          outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v9);
          outlined copy of Data._Representation(v62, v61);
          v71 = (v9 + *v9);
          v63 = v9[1];
          v64 = swift_task_alloc();
          *(v0 + 400) = v64;
          *v64 = v0;
          v64[1] = Transferable.init(_:_:);
          v37 = v0 + 96;
          v38 = v0 + 136;
          goto LABEL_14;
        }

        v20 = v18;

        v10 = v20;
        if (v19 != v7)
        {
          continue;
        }

        break;
      }
    }

    v22 = *(v0 + 280);
    v21 = *(v0 + 288);
    v23 = *(v0 + 272);
    v70 = v5;
    v25 = *(v0 + 248);
    v24 = *(v0 + 256);
    v26 = *(v0 + 240);
    v68 = *(v0 + 192);
    v65 = *(v0 + 264);
    v66 = *(v0 + 184);
    v27 = NSTemporaryDirectory();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:isDirectory:)();

    UUID.init()();
    UUID.uuidString.getter();
    (*(v25 + 8))(v24, v26);
    URL.appendingPathComponent(_:isDirectory:)();

    v28 = *(v23 + 8);
    *(v0 + 416) = v28;
    *(v0 + 424) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v22, v65);
    Data.write(to:options:)();
    if (v70)
    {
    }

    v29 = *(v0 + 376);
    v30 = *(v0 + 384);
    v31 = *(v0 + 280);
    v33 = *(v0 + 224);
    v32 = *(v0 + 232);
    (*(*(v0 + 272) + 16))(v31, *(v0 + 288), *(v0 + 264));
    ReceivedTransferredFile.init(file:isOriginalFile:)(v31, 1, v32);
    *(v0 + 80) = v33;
    *(v0 + 88) = &protocol witness table for ReceivedTransferredFile;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    outlined init with copy of ResolvedTransferRepresentation(v32, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
    v71 = (v29 + *v29);
    v35 = v29[1];
    v36 = swift_task_alloc();
    *(v0 + 432) = v36;
    *v36 = v0;
    v36[1] = Transferable.init(_:_:);
    v37 = v0 + 16;
    v38 = v0 + 56;
LABEL_14:

    return v71(v37, v38);
  }

  else
  {
    v39 = *(v0 + 376);
    v40 = *(v0 + 384);
    v42 = *(v0 + 344);
    v41 = *(v0 + 352);
    v44 = *(v0 + 192);
    v43 = *(v0 + 200);
    v45 = *(v0 + 184);

    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v39);
    outlined consume of Data._Representation(v45, v44);
    outlined destroy of UTType?(v43, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    outlined destroy of ResolvedTransferRepresentation(v42, type metadata accessor for ResolvedTransferRepresentation);
    v46 = *(v0 + 344);
    v47 = *(v0 + 312);
    v49 = *(v0 + 280);
    v48 = *(v0 + 288);
    v50 = *(v0 + 256);
    v51 = *(v0 + 232);
    (*(v4 + 32))(*(v0 + 176), *(v0 + 320), *(v0 + 208));

    v52 = *(v0 + 8);
LABEL_19:

    return v52();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {

    v5 = Transferable.init(_:_:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v5 = Transferable.init(_:_:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 384);
  v4 = *(v0 + 344);
  v5 = *(v0 + 312);
  v6 = *(v0 + 288);
  v7 = *(v0 + 264);
  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*(v0 + 376));
  outlined destroy of ResolvedTransferRepresentation(v8, type metadata accessor for ReceivedTransferredFile);
  v2(v6, v7);
  outlined destroy of ResolvedTransferRepresentation(v4, type metadata accessor for ResolvedTransferRepresentation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v10 = swift_dynamicCast();
  v11 = *(v9 - 8);
  (*(v11 + 56))(v5, v10 ^ 1u, 1, v9);
  if ((*(v11 + 48))(v5, 1, v9) != 1)
  {
    v24 = *(v0 + 352);
    v25 = *(v0 + 192);
    v26 = *(v0 + 184);
    outlined destroy of UTType?(*(v0 + 200), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    outlined consume of Data._Representation(v26, v25);

    v27 = *(v0 + 344);
    v28 = *(v0 + 320);
    v30 = *(v0 + 280);
    v29 = *(v0 + 288);
    v31 = *(v0 + 256);
    v32 = *(v0 + 232);
    (*(v11 + 32))(*(v0 + 176), *(v0 + 312), *(v0 + 208));

    v23 = *(v0 + 8);
    goto LABEL_5;
  }

  v12 = *(v0 + 440);
  result = (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  v14 = *(v0 + 368) + 1;
  if (v14 == *(v0 + 360))
  {
LABEL_3:
    v15 = *(v0 + 352);

    v16 = *(v0 + 344);
    v17 = *(v0 + 312);
    v18 = *(v0 + 320);
    v19 = *(v0 + 288);
    v64 = *(v0 + 280);
    v66 = *(v0 + 256);
    v68 = *(v0 + 232);
    v20 = *(v0 + 192);
    v21 = *(v0 + 200);
    v22 = *(v0 + 184);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v22, v20);
    outlined destroy of UTType?(v21, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

    v23 = *(v0 + 8);
LABEL_5:

    return v23();
  }

  v33 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 368) = v14;
    v34 = *(v0 + 352);
    if (v14 >= *(v34 + 16))
    {
      __break(1u);
      return result;
    }

    v35 = *(v0 + 344);
    v36 = *(v0 + 328);
    outlined init with copy of ResolvedTransferRepresentation(v34 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(*(v0 + 336) + 72) * v14, v35, type metadata accessor for ResolvedTransferRepresentation);
    v37 = (v35 + *(v36 + 36));
    v38 = *v37;
    *(v0 + 376) = *v37;
    *(v0 + 384) = v37[1];
    v39 = *(v0 + 344);
    if (v38)
    {
      break;
    }

    result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 344), type metadata accessor for ResolvedTransferRepresentation);
LABEL_10:
    v14 = *(v0 + 368) + 1;
    if (v14 == *(v0 + 360))
    {
      goto LABEL_3;
    }
  }

  v40 = *(v39 + *(*(v0 + 328) + 28));
  *(v0 + 392) = v40;
  if (v40 == v33)
  {
    v43 = *(v0 + 184);
    v42 = *(v0 + 192);
    *(v0 + 160) = v33;
    *(v0 + 168) = &protocol witness table for Data;
    *(v0 + 136) = v43;
    *(v0 + 144) = v42;
    outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v38);
    outlined copy of Data._Representation(v43, v42);
    v69 = (v38 + *v38);
    v44 = v38[1];
    v45 = swift_task_alloc();
    *(v0 + 400) = v45;
    *v45 = v0;
    v45[1] = Transferable.init(_:_:);
    v46 = v0 + 96;
    v47 = v0 + 136;
    goto LABEL_20;
  }

  v41 = type metadata accessor for SentTransferredFile(0);

  if (v40 != v41)
  {
    outlined destroy of ResolvedTransferRepresentation(v39, type metadata accessor for ResolvedTransferRepresentation);
    result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v38);
    goto LABEL_10;
  }

  v48 = *(v0 + 280);
  v49 = *(v0 + 272);
  v63 = *(v0 + 288);
  v65 = *(v0 + 264);
  v50 = *(v0 + 248);
  v51 = *(v0 + 256);
  v52 = *(v0 + 240);
  v67 = *(v0 + 184);
  v70 = *(v0 + 192);
  v53 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v50 + 8))(v51, v52);
  URL.appendingPathComponent(_:isDirectory:)();

  v54 = *(v49 + 8);
  *(v0 + 416) = v54;
  *(v0 + 424) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v54(v48, v65);
  Data.write(to:options:)();
  if (v12)
  {
  }

  v55 = *(v0 + 376);
  v56 = *(v0 + 384);
  v57 = *(v0 + 280);
  v59 = *(v0 + 224);
  v58 = *(v0 + 232);
  (*(*(v0 + 272) + 16))(v57, *(v0 + 288), *(v0 + 264));
  ReceivedTransferredFile.init(file:isOriginalFile:)(v57, 1, v58);
  *(v0 + 80) = v59;
  *(v0 + 88) = &protocol witness table for ReceivedTransferredFile;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  outlined init with copy of ResolvedTransferRepresentation(v58, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
  v69 = (v55 + *v55);
  v61 = v55[1];
  v62 = swift_task_alloc();
  *(v0 + 432) = v62;
  *v62 = v0;
  v62[1] = Transferable.init(_:_:);
  v46 = v0 + 16;
  v47 = v0 + 56;
LABEL_20:

  return v69(v46, v47);
}

{
  v1 = *(v0 + 320);
  v2 = *(v0 + 208);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
  v3 = type metadata accessor for SentTransferredFile(0);
  if (*(v0 + 392) != v3)
  {
    v4 = v3;
    v6 = *(v0 + 376);
    v5 = *(v0 + 384);
    v7 = *(v0 + 344);
    v8 = MEMORY[0x277CC9318];
    while (2)
    {
      outlined destroy of ResolvedTransferRepresentation(v7, type metadata accessor for ResolvedTransferRepresentation);
      for (result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v6); ; result = outlined destroy of ResolvedTransferRepresentation(v15, type metadata accessor for ResolvedTransferRepresentation))
      {
        v10 = *(v0 + 368) + 1;
        if (v10 == *(v0 + 360))
        {
          v36 = *(v0 + 352);

          v37 = *(v0 + 344);
          v38 = *(v0 + 312);
          v39 = *(v0 + 320);
          v40 = *(v0 + 288);
          v50 = *(v0 + 280);
          v52 = *(v0 + 256);
          v55 = *(v0 + 232);
          v41 = *(v0 + 192);
          v42 = *(v0 + 200);
          v43 = *(v0 + 184);
          type metadata accessor for TransferableError();
          lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          outlined consume of Data._Representation(v43, v41);
          outlined destroy of UTType?(v42, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

          v44 = *(v0 + 8);

          return v44();
        }

        *(v0 + 368) = v10;
        v11 = *(v0 + 352);
        if (v10 >= *(v11 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v0 + 344);
        v13 = *(v0 + 328);
        outlined init with copy of ResolvedTransferRepresentation(v11 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(*(v0 + 336) + 72) * v10, v12, type metadata accessor for ResolvedTransferRepresentation);
        v14 = (v12 + *(v13 + 36));
        v6 = *v14;
        *(v0 + 376) = *v14;
        *(v0 + 384) = v14[1];
        v15 = *(v0 + 344);
        if (v6)
        {
          break;
        }
      }

      v16 = *(v15 + *(*(v0 + 328) + 28));
      *(v0 + 392) = v16;
      if (v16 == v8)
      {
        v46 = *(v0 + 184);
        v45 = *(v0 + 192);
        *(v0 + 160) = v8;
        *(v0 + 168) = &protocol witness table for Data;
        *(v0 + 136) = v46;
        *(v0 + 144) = v45;
        outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v6);
        outlined copy of Data._Representation(v46, v45);
        v54 = (v6 + *v6);
        v47 = v6[1];
        v48 = swift_task_alloc();
        *(v0 + 400) = v48;
        *v48 = v0;
        v48[1] = Transferable.init(_:_:);
        v34 = v0 + 96;
        v35 = v0 + 136;
        goto LABEL_11;
      }

      v17 = v15;

      v7 = v17;
      if (v16 != v4)
      {
        continue;
      }

      break;
    }
  }

  v19 = *(v0 + 280);
  v18 = *(v0 + 288);
  v20 = *(v0 + 272);
  v22 = *(v0 + 248);
  v21 = *(v0 + 256);
  v23 = *(v0 + 240);
  v53 = *(v0 + 192);
  v49 = *(v0 + 264);
  v51 = *(v0 + 184);
  v24 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v22 + 8))(v21, v23);
  URL.appendingPathComponent(_:isDirectory:)();

  v25 = *(v20 + 8);
  *(v0 + 416) = v25;
  *(v0 + 424) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v19, v49);
  Data.write(to:options:)();
  v26 = *(v0 + 376);
  v27 = *(v0 + 384);
  v28 = *(v0 + 280);
  v30 = *(v0 + 224);
  v29 = *(v0 + 232);
  (*(*(v0 + 272) + 16))(v28, *(v0 + 288), *(v0 + 264));
  ReceivedTransferredFile.init(file:isOriginalFile:)(v28, 1, v29);
  *(v0 + 80) = v30;
  *(v0 + 88) = &protocol witness table for ReceivedTransferredFile;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  outlined init with copy of ResolvedTransferRepresentation(v29, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
  v54 = (v26 + *v26);
  v32 = v26[1];
  v33 = swift_task_alloc();
  *(v0 + 432) = v33;
  *v33 = v0;
  v33[1] = Transferable.init(_:_:);
  v34 = v0 + 16;
  v35 = v0 + 56;
LABEL_11:

  return v54(v34, v35);
}

{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 384);
  v4 = *(v0 + 344);
  v5 = *(v0 + 312);
  v6 = *(v0 + 288);
  v7 = *(v0 + 264);
  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(*(v0 + 376));
  outlined destroy of ResolvedTransferRepresentation(v8, type metadata accessor for ReceivedTransferredFile);
  v2(v6, v7);
  outlined destroy of ResolvedTransferRepresentation(v4, type metadata accessor for ResolvedTransferRepresentation);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  result = (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  v11 = *(v0 + 368) + 1;
  if (v11 == *(v0 + 360))
  {
LABEL_2:
    v12 = *(v0 + 352);

    v13 = *(v0 + 344);
    v14 = *(v0 + 312);
    v15 = *(v0 + 320);
    v16 = *(v0 + 288);
    v52 = *(v0 + 280);
    v54 = *(v0 + 256);
    v56 = *(v0 + 232);
    v17 = *(v0 + 192);
    v18 = *(v0 + 200);
    v19 = *(v0 + 184);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v19, v17);
    outlined destroy of UTType?(v18, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

    v20 = *(v0 + 8);

    return v20();
  }

  v21 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 368) = v11;
    v22 = *(v0 + 352);
    if (v11 >= *(v22 + 16))
    {
      __break(1u);
      return result;
    }

    v23 = *(v0 + 344);
    v24 = *(v0 + 328);
    outlined init with copy of ResolvedTransferRepresentation(v22 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(*(v0 + 336) + 72) * v11, v23, type metadata accessor for ResolvedTransferRepresentation);
    v25 = (v23 + *(v24 + 36));
    v26 = *v25;
    *(v0 + 376) = *v25;
    *(v0 + 384) = v25[1];
    v27 = *(v0 + 344);
    if (v26)
    {
      break;
    }

    result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 344), type metadata accessor for ResolvedTransferRepresentation);
LABEL_7:
    v11 = *(v0 + 368) + 1;
    if (v11 == *(v0 + 360))
    {
      goto LABEL_2;
    }
  }

  v28 = *(v27 + *(*(v0 + 328) + 28));
  *(v0 + 392) = v28;
  if (v28 == v21)
  {
    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    *(v0 + 160) = v21;
    *(v0 + 168) = &protocol witness table for Data;
    *(v0 + 136) = v31;
    *(v0 + 144) = v30;
    outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v26);
    outlined copy of Data._Representation(v31, v30);
    v57 = (v26 + *v26);
    v32 = v26[1];
    v33 = swift_task_alloc();
    *(v0 + 400) = v33;
    *v33 = v0;
    v33[1] = Transferable.init(_:_:);
    v34 = v0 + 96;
    v35 = v0 + 136;
    goto LABEL_15;
  }

  v29 = type metadata accessor for SentTransferredFile(0);

  if (v28 != v29)
  {
    outlined destroy of ResolvedTransferRepresentation(v27, type metadata accessor for ResolvedTransferRepresentation);
    result = outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v26);
    goto LABEL_7;
  }

  v37 = *(v0 + 280);
  v36 = *(v0 + 288);
  v38 = *(v0 + 272);
  v40 = *(v0 + 248);
  v39 = *(v0 + 256);
  v41 = *(v0 + 240);
  v58 = *(v0 + 192);
  v53 = *(v0 + 264);
  v55 = *(v0 + 184);
  v42 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v40 + 8))(v39, v41);
  URL.appendingPathComponent(_:isDirectory:)();

  v43 = *(v38 + 8);
  *(v0 + 416) = v43;
  *(v0 + 424) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v37, v53);
  Data.write(to:options:)();
  v44 = *(v0 + 376);
  v45 = *(v0 + 384);
  v46 = *(v0 + 280);
  v48 = *(v0 + 224);
  v47 = *(v0 + 232);
  (*(*(v0 + 272) + 16))(v46, *(v0 + 288), *(v0 + 264));
  ReceivedTransferredFile.init(file:isOriginalFile:)(v46, 1, v47);
  *(v0 + 80) = v48;
  *(v0 + 88) = &protocol witness table for ReceivedTransferredFile;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  outlined init with copy of ResolvedTransferRepresentation(v47, boxed_opaque_existential_1, type metadata accessor for ReceivedTransferredFile);
  v57 = (v44 + *v44);
  v50 = v44[1];
  v51 = swift_task_alloc();
  *(v0 + 432) = v51;
  *v51 = v0;
  v51[1] = Transferable.init(_:_:);
  v34 = v0 + 16;
  v35 = v0 + 56;
LABEL_15:

  return v57(v34, v35);
}

uint64_t Transferable.exported(as:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UTType();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for ResolvedTransferRepresentation();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.exported(as:), 0, 0);
}

uint64_t Transferable.exported(as:)()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = v0[7];
  outlined init with copy of UTType?(v0[2], v1, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) != 1)
  {
    v14 = v0[15];
    v15 = v0[6];
    v16 = v0[7];
    (*(v16 + 32))(v14, v0[14], v15);
    (*(v16 + 56))(v14, 0, 1, v15);
LABEL_12:
    v25 = v0[13];
    v26 = v0[6];
    outlined init with copy of UTType?(v0[15], v25, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    if (v4(v25, 1, v26) == 1)
    {
      outlined destroy of UTType?(v0[13], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      lazy protocol witness table accessor for type TransferableSupportError and conformance TransferableSupportError();
      swift_allocError();
      *v27 = 1;
      swift_willThrow();
      v28 = v0[14];
      v30 = v0[12];
      v29 = v0[13];
      v31 = v0[11];
      v32 = v0[8];
      outlined destroy of UTType?(v0[15], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

      v33 = v0[1];

      return v33();
    }

    else
    {
      (*(v0[7] + 32))(v0[8], v0[13], v0[6]);
      v34 = swift_task_alloc();
      v0[16] = v34;
      *v34 = v0;
      v34[1] = Transferable.exported(as:);
      v35 = v0[8];
      v36 = v0[4];
      v37 = v0[5];
      v38 = v0[3];

      return Transferable.data(contentType:)(v35, v38, v36);
    }
  }

  result = static Transferable.resolvedRepresentations()(v0[3], v0[4]);
  v6 = result;
  v7 = *(result + 16);
  if (!v7)
  {
LABEL_7:

    v13 = 1;
LABEL_10:
    v23 = v0[14];
    v24 = v0[6];
    (*(v0[7] + 56))(v0[15], v13, 1, v24);
    if (v4(v23, 1, v24) != 1)
    {
      outlined destroy of UTType?(v0[14], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    }

    goto LABEL_12;
  }

  v8 = 0;
  v10 = v0[9];
  v9 = v0[10];
  v11 = result + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  while (v8 < *(v6 + 16))
  {
    v12 = v0[11];
    outlined init with copy of ResolvedTransferRepresentation(v11 + *(v9 + 72) * v8, v12, type metadata accessor for ResolvedTransferRepresentation);
    if (*(v12 + *(v10 + 32)))
    {
      v17 = v0[15];
      v19 = v0[11];
      v18 = v0[12];
      v20 = v0[9];
      v21 = v0[6];
      v22 = v0[7];

      outlined init with take of ResolvedTransferRepresentation(v19, v18, type metadata accessor for ResolvedTransferRepresentation);
      (*(v22 + 16))(v17, v18 + *(v20 + 20), v21);
      outlined destroy of ResolvedTransferRepresentation(v18, type metadata accessor for ResolvedTransferRepresentation);
      v13 = 0;
      goto LABEL_10;
    }

    ++v8;
    result = outlined destroy of ResolvedTransferRepresentation(v0[11], type metadata accessor for ResolvedTransferRepresentation);
    if (v7 == v8)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  (*(v0[7] + 8))(v0[8], v0[6]);
  outlined destroy of UTType?(v2, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

  v6 = v0[1];
  v8 = v0[18];
  v7 = v0[19];

  return v6(v7, v8);
}

{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[8];
  outlined destroy of UTType?(v0[15], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);

  v7 = v0[1];

  return v7();
}

uint64_t Transferable.exported(as:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v9 = Transferable.exported(as:);
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v9 = Transferable.exported(as:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t Transferable.data(contentType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = Transferable.data(contentType:);

  return Transferable._data(contentType:)(a1, a2, a3);
}

uint64_t Transferable.data(contentType:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t static Transferable.exportedFileContentTypes(visibility:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v5 = *a1;
  v8 = static Transferable.resolvedRepresentations()(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGGMd, &_ss18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGGMR);
  LazyFilterSequence.filter(_:)();
  *(swift_allocObject() + 16) = v5;
  LazyFilterSequence.filter(_:)();

  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs18LazyFilterSequenceVySay16CoreTransferable30ResolvedTransferRepresentationVGG_22UniformTypeIdentifiers6UTTypeVs5NeverOTg504_s16g58Transferable0B0PAAE20exportedContentTypes10visibilitySay22lm12Identifiers6o6VGAA32jK38VisibilityV_tFZAhA08ResolvedkL0VXEfU1_Tf1cn_nTm(v8, a4);

  return v6;
}

uint64_t Transferable.file(contentType:fileHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = Transferable.file(contentType:fileHandler:);

  return Transferable._file(contentType:fileHandler:)(a1, a2, a3, a4, a5);
}

uint64_t Transferable.file(contentType:fileHandler:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t Transferable._file(contentType:fileHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = type metadata accessor for Logger();
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v6[22] = v10;
  v11 = *(v10 - 8);
  v6[23] = v11;
  v12 = *(v11 + 64) + 15;
  v6[24] = swift_task_alloc();
  v13 = type metadata accessor for URL();
  v6[25] = v13;
  v14 = *(v13 - 8);
  v6[26] = v14;
  v15 = *(v14 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v17 = type metadata accessor for ResolvedTransferRepresentation();
  v6[33] = v17;
  v18 = *(v17 - 8);
  v6[34] = v18;
  v19 = *(v18 + 64) + 15;
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64) + 15;
  v6[39] = swift_task_alloc();
  v21 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](Transferable._file(contentType:fileHandler:), 0, 0);
}

uint64_t Transferable._file(contentType:fileHandler:)()
{
  v54 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 312);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v7 = static Transferable.resolvedRepresentations(for:)(v1, v3, v2);
  *(v0 + 320) = v7;
  outlined destroy of UTType?(v1, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v8 = *(v7 + 16);
  *(v0 + 328) = v8;
  if (v8)
  {
    v9 = *(v0 + 272);
    v10 = type metadata accessor for SentTransferredFile(0);
    v11 = 0;
    *(v0 + 336) = v10;
    *(v0 + 76) = *(v9 + 80);
    v12 = MEMORY[0x277CC9318];
    while (1)
    {
      *(v0 + 344) = v11;
      v13 = *(v0 + 320);
      if (v11 >= *(v13 + 16))
      {
        __break(1u);
      }

      v14 = *(v0 + 336);
      v15 = *(v0 + 304);
      v16 = *(v0 + 264);
      outlined init with copy of ResolvedTransferRepresentation(v13 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 272) + 72) * v11, v15, type metadata accessor for ResolvedTransferRepresentation);
      v17 = *(v15 + *(v16 + 28));
      if (v17 == v14)
      {
        break;
      }

      if (v17 == v12)
      {
        v40 = swift_task_alloc();
        *(v0 + 384) = v40;
        *v40 = v0;
        v40[1] = Transferable._file(contentType:fileHandler:);
        v41 = *(v0 + 304);
        v42 = *(v0 + 120);
        v43 = *(v0 + 128);
        v44 = *(v0 + 112);
        v45 = *MEMORY[0x277D85DE8];

        return Transferable.data(from:)(v41, v44, v42);
      }

      outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ResolvedTransferRepresentation);
      v11 = *(v0 + 344) + 1;
      if (v11 == *(v0 + 328))
      {
        v18 = *(v0 + 320);
        goto LABEL_8;
      }
    }

    v29 = *(v0 + 256);
    v30 = *(v0 + 200);
    v31 = *(v0 + 208);
    v32 = *(v31 + 56);
    *(v0 + 352) = v32;
    *(v0 + 360) = (v31 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v32(v29, 1, 1, v30);
    v33 = swift_task_alloc();
    *(v0 + 368) = v33;
    *v33 = v0;
    v33[1] = Transferable._file(contentType:fileHandler:);
    v34 = *(v0 + 304);
    v35 = *(v0 + 248);
    v36 = *(v0 + 120);
    v37 = *(v0 + 128);
    v38 = *(v0 + 112);
    v39 = *MEMORY[0x277D85DE8];

    return Transferable.url(from:)(v35, v34, v38, v36);
  }

  else
  {
LABEL_8:

    v20 = *(v0 + 304);
    v19 = *(v0 + 312);
    v21 = *(v0 + 288);
    v22 = *(v0 + 296);
    v23 = *(v0 + 280);
    v24 = *(v0 + 248);
    v25 = *(v0 + 256);
    v46 = *(v0 + 240);
    v47 = *(v0 + 232);
    v48 = *(v0 + 224);
    v49 = *(v0 + 216);
    v50 = *(v0 + 192);
    v51 = *(v0 + 168);
    v52 = *(v0 + 160);
    v53 = *(v0 + 152);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v26 = *(v0 + 8);
    v27 = *MEMORY[0x277D85DE8];

    return v26();
  }
}

{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 368);
  v7 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = Transferable._file(contentType:fileHandler:);
  }

  else
  {
    v3 = Transferable._file(contentType:fileHandler:);
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v77 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 200);
  outlined destroy of UTType?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2(v3, 0, 1, v5);
  outlined init with take of URL?(v3, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(v0 + 240);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  outlined init with copy of UTType?(*(v0 + 256), v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = *(v0 + 256);
  v11 = *(v0 + 240);
  if (v9 != 1)
  {
    v30 = *(v0 + 320);
    v31 = *(v0 + 232);
    v32 = *(v0 + 200);
    v33 = *(v0 + 208);
    v35 = *(v0 + 96);
    v34 = *(v0 + 104);

    (*(v33 + 32))(v31, v11, v32);
    v35(v31);
    (*(v33 + 8))(v31, v32);
    outlined destroy of UTType?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v36 = *(v0 + 312);
    v38 = *(v0 + 288);
    v37 = *(v0 + 296);
    v39 = *(v0 + 280);
    v40 = *(v0 + 248);
    v41 = *(v0 + 256);
    v43 = *(v0 + 232);
    v42 = *(v0 + 240);
    v66 = *(v0 + 224);
    v68 = *(v0 + 216);
    v70 = *(v0 + 192);
    v72 = *(v0 + 168);
    v74 = *(v0 + 160);
    v76 = *(v0 + 152);
    outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ResolvedTransferRepresentation);

    v28 = *(v0 + 8);
    v44 = *MEMORY[0x277D85DE8];
    goto LABEL_10;
  }

  v12 = *(v0 + 304);
  outlined destroy of UTType?(*(v0 + 256), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of ResolvedTransferRepresentation(v12, type metadata accessor for ResolvedTransferRepresentation);
  outlined destroy of UTType?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = *(v0 + 344) + 1;
  if (v13 == *(v0 + 328))
  {
LABEL_8:
    v20 = *(v0 + 320);

    v22 = *(v0 + 304);
    v21 = *(v0 + 312);
    v23 = *(v0 + 288);
    v24 = *(v0 + 296);
    v25 = *(v0 + 280);
    v26 = *(v0 + 248);
    v27 = *(v0 + 256);
    v63 = *(v0 + 240);
    v64 = *(v0 + 232);
    v65 = *(v0 + 224);
    v67 = *(v0 + 216);
    v69 = *(v0 + 192);
    v71 = *(v0 + 168);
    v73 = *(v0 + 160);
    v75 = *(v0 + 152);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v28 = *(v0 + 8);
    v29 = *MEMORY[0x277D85DE8];
LABEL_10:

    return v28();
  }

  v14 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 344) = v13;
    v15 = *(v0 + 320);
    if (v13 >= *(v15 + 16))
    {
      __break(1u);
    }

    v16 = *(v0 + 336);
    v17 = *(v0 + 304);
    v18 = *(v0 + 264);
    outlined init with copy of ResolvedTransferRepresentation(v15 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 272) + 72) * v13, v17, type metadata accessor for ResolvedTransferRepresentation);
    v19 = *(v17 + *(v18 + 28));
    if (v19 == v16)
    {
      break;
    }

    if (v19 == v14)
    {
      v57 = swift_task_alloc();
      *(v0 + 384) = v57;
      *v57 = v0;
      v57[1] = Transferable._file(contentType:fileHandler:);
      v58 = *(v0 + 304);
      v59 = *(v0 + 120);
      v60 = *(v0 + 128);
      v61 = *(v0 + 112);
      v62 = *MEMORY[0x277D85DE8];

      return Transferable.data(from:)(v58, v61, v59);
    }

    outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ResolvedTransferRepresentation);
    v13 = *(v0 + 344) + 1;
    if (v13 == *(v0 + 328))
    {
      goto LABEL_8;
    }
  }

  v46 = *(v0 + 256);
  v47 = *(v0 + 200);
  v48 = *(v0 + 208);
  v49 = *(v48 + 56);
  *(v0 + 352) = v49;
  *(v0 + 360) = (v48 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v49(v46, 1, 1, v47);
  v50 = swift_task_alloc();
  *(v0 + 368) = v50;
  *v50 = v0;
  v50[1] = Transferable._file(contentType:fileHandler:);
  v51 = *(v0 + 304);
  v52 = *(v0 + 248);
  v53 = *(v0 + 120);
  v54 = *(v0 + 128);
  v55 = *(v0 + 112);
  v56 = *MEMORY[0x277D85DE8];

  return Transferable.url(from:)(v52, v51, v55, v53);
}

{
  v136 = v0;
  v135[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 304);
  v2 = *(v1 + 16);
  if (v2 == 255)
  {
    outlined copy of Data._Representation(*(v0 + 392), *(v0 + 400));
    goto LABEL_5;
  }

  v4 = *v1;
  v3 = *(v1 + 8);
  *(v0 + 56) = *v1;
  v6 = *(v0 + 392);
  v5 = *(v0 + 400);
  v7 = *(v0 + 128);
  *(v0 + 64) = v3;
  *(v0 + 72) = v2 & 1;
  v8 = *(v0 + 112);
  *(v0 + 40) = v8;
  v9 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v7, v9);
  outlined copy of Data._Representation(v6, v5);
  outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage?(v4, v3, v2);
  ResolvedTransferRepresentation.SuggestedFileNameStorage.resolved(_:)(v0 + 16);
  v12 = v11;
  outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  outlined destroy of UTType?(v0 + 16, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
  if (!v12)
  {
LABEL_5:
    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
    v15 = *(v0 + 176);
    UUID.init()();
    UUID.uuidString.getter();
    (*(v14 + 8))(v13, v15);
  }

  v127 = *(v0 + 400);
  v131 = *(v0 + 408);
  v16 = *(v0 + 392);
  v17 = *(v0 + 216);
  v18 = *(v0 + 224);
  v20 = *(v0 + 200);
  v19 = *(v0 + 208);
  v21 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathComponent(_:isDirectory:)();

  v22 = *(v19 + 8);
  v22(v17, v20);
  v23 = v131;
  Data.write(to:options:)();
  v24 = *(v0 + 392);
  v25 = *(v0 + 400);
  if (!v131)
  {
    v52 = *(v0 + 320);
    v53 = *(v0 + 224);
    v55 = *(v0 + 96);
    v54 = *(v0 + 104);
    outlined consume of Data._Representation(*(v0 + 392), *(v0 + 400));

    v55(v53);
    v56 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v57);
    v59 = v58;
    *(v0 + 80) = 0;
    LODWORD(v53) = [v56 removeItemAtURL:v58 error:v0 + 80];

    v60 = *(v0 + 80);
    v61 = *(v0 + 392);
    v62 = *(v0 + 400);
    if (v53)
    {
      v63 = v60;
      outlined consume of Data._Representation(v61, v62);
    }

    else
    {
      v84 = v60;
      v85 = _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data._Representation(v61, v62);
    }

    v22(*(v0 + 224), *(v0 + 200));
    v86 = *(v0 + 312);
    v88 = *(v0 + 288);
    v87 = *(v0 + 296);
    v89 = *(v0 + 280);
    v90 = *(v0 + 248);
    v91 = *(v0 + 256);
    v93 = *(v0 + 232);
    v92 = *(v0 + 240);
    v117 = *(v0 + 224);
    v120 = *(v0 + 216);
    v123 = *(v0 + 192);
    v126 = *(v0 + 168);
    v130 = *(v0 + 160);
    v134 = *(v0 + 152);
    outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ResolvedTransferRepresentation);

    v82 = *(v0 + 8);
    v94 = *MEMORY[0x277D85DE8];
    goto LABEL_21;
  }

  v26 = v22;
  v27 = *(v0 + 296);
  v28 = *(v0 + 304);
  v29 = *(v0 + 168);
  v30 = *(v0 + 136);
  v31 = *(v0 + 144);
  v26(*(v0 + 224), *(v0 + 200));
  outlined consume of Data._Representation(v24, v25);
  v32 = logger.unsafeMutableAddressor();
  (*(v31 + 16))(v29, v32, v30);
  outlined init with copy of ResolvedTransferRepresentation(v28, v27, type metadata accessor for ResolvedTransferRepresentation);
  v33 = v131;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.fault.getter();

  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 400);
  v132 = *(v0 + 392);
  v38 = *(v0 + 296);
  v39 = *(v0 + 304);
  if (v36)
  {
    v40 = *(v0 + 264);
    v121 = *(v0 + 144);
    v124 = *(v0 + 136);
    v128 = *(v0 + 168);
    v118 = *(v0 + 304);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v115 = v37;
    v43 = swift_slowAlloc();
    v135[0] = v43;
    *v41 = 136315394;
    v44 = v38 + *(v40 + 20);
    v45 = UTType.identifier.getter();
    v47 = v46;
    outlined destroy of ResolvedTransferRepresentation(v38, type metadata accessor for ResolvedTransferRepresentation);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v135);

    *(v41 + 4) = v48;
    *(v41 + 12) = 2112;
    v49 = v23;
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 14) = v50;
    *v42 = v50;
    _os_log_impl(&dword_20E3BF000, v34, v35, "Error writing data for type identifier %s: %@", v41, 0x16u);
    outlined destroy of UTType?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x20F32E080](v43, -1, -1);
    MEMORY[0x20F32E080](v41, -1, -1);

    outlined consume of Data._Representation(v132, v115);
    (*(v121 + 8))(v128, v124);
    v51 = v118;
  }

  else
  {
    v64 = *(v0 + 168);
    v65 = *(v0 + 136);
    v66 = *(v0 + 144);

    outlined consume of Data._Representation(v132, v37);
    outlined destroy of ResolvedTransferRepresentation(v38, type metadata accessor for ResolvedTransferRepresentation);
    (*(v66 + 8))(v64, v65);
    v51 = v39;
  }

  outlined destroy of ResolvedTransferRepresentation(v51, type metadata accessor for ResolvedTransferRepresentation);
  v67 = *(v0 + 344) + 1;
  if (v67 == *(v0 + 328))
  {
LABEL_18:
    v74 = *(v0 + 320);

    v76 = *(v0 + 304);
    v75 = *(v0 + 312);
    v77 = *(v0 + 288);
    v78 = *(v0 + 296);
    v79 = *(v0 + 280);
    v80 = *(v0 + 248);
    v81 = *(v0 + 256);
    v113 = *(v0 + 240);
    v114 = *(v0 + 232);
    v116 = *(v0 + 224);
    v119 = *(v0 + 216);
    v122 = *(v0 + 192);
    v125 = *(v0 + 168);
    v129 = *(v0 + 160);
    v133 = *(v0 + 152);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v82 = *(v0 + 8);
    v83 = *MEMORY[0x277D85DE8];
LABEL_21:

    return v82();
  }

  v68 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 344) = v67;
    v69 = *(v0 + 320);
    if (v67 >= *(v69 + 16))
    {
      __break(1u);
    }

    v70 = *(v0 + 336);
    v71 = *(v0 + 304);
    v72 = *(v0 + 264);
    outlined init with copy of ResolvedTransferRepresentation(v69 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 272) + 72) * v67, v71, type metadata accessor for ResolvedTransferRepresentation);
    v73 = *(v71 + *(v72 + 28));
    if (v73 == v70)
    {
      break;
    }

    if (v73 == v68)
    {
      v107 = swift_task_alloc();
      *(v0 + 384) = v107;
      *v107 = v0;
      v107[1] = Transferable._file(contentType:fileHandler:);
      v108 = *(v0 + 304);
      v109 = *(v0 + 120);
      v110 = *(v0 + 128);
      v111 = *(v0 + 112);
      v112 = *MEMORY[0x277D85DE8];

      return Transferable.data(from:)(v108, v111, v109);
    }

    outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ResolvedTransferRepresentation);
    v67 = *(v0 + 344) + 1;
    if (v67 == *(v0 + 328))
    {
      goto LABEL_18;
    }
  }

  v96 = *(v0 + 256);
  v97 = *(v0 + 200);
  v98 = *(v0 + 208);
  v99 = *(v98 + 56);
  *(v0 + 352) = v99;
  *(v0 + 360) = (v98 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v99(v96, 1, 1, v97);
  v100 = swift_task_alloc();
  *(v0 + 368) = v100;
  *v100 = v0;
  v100[1] = Transferable._file(contentType:fileHandler:);
  v101 = *(v0 + 304);
  v102 = *(v0 + 248);
  v103 = *(v0 + 120);
  v104 = *(v0 + 128);
  v105 = *(v0 + 112);
  v106 = *MEMORY[0x277D85DE8];

  return Transferable.url(from:)(v102, v101, v105, v103);
}

{
  v103 = v0;
  v102[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 376);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = logger.unsafeMutableAddressor();
  (*(v6 + 16))(v4, v7, v5);
  outlined init with copy of ResolvedTransferRepresentation(v2, v3, type metadata accessor for ResolvedTransferRepresentation);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 376);
  v13 = *(v0 + 288);
  if (v11)
  {
    v14 = *(v0 + 264);
    v93 = *(v0 + 144);
    v96 = *(v0 + 136);
    v99 = *(v0 + 160);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v102[0] = v17;
    *v15 = 136315394;
    v18 = v13 + *(v14 + 20);
    v19 = UTType.identifier.getter();
    v21 = v20;
    outlined destroy of ResolvedTransferRepresentation(v13, type metadata accessor for ResolvedTransferRepresentation);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v102);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2112;
    v23 = v12;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v24;
    *v16 = v24;
    _os_log_impl(&dword_20E3BF000, v9, v10, "Error loading URL for type identifier %s: %@", v15, 0x16u);
    outlined destroy of UTType?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x20F32E080](v17, -1, -1);
    MEMORY[0x20F32E080](v15, -1, -1);

    (*(v93 + 8))(v99, v96);
  }

  else
  {
    v25 = *(v0 + 160);
    v26 = *(v0 + 136);
    v27 = *(v0 + 144);

    outlined destroy of ResolvedTransferRepresentation(v13, type metadata accessor for ResolvedTransferRepresentation);
    (*(v27 + 8))(v25, v26);
  }

  v28 = *(v0 + 240);
  v29 = *(v0 + 200);
  v30 = *(v0 + 208);
  outlined init with copy of UTType?(*(v0 + 256), v28, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v30 + 48))(v28, 1, v29) != 1)
  {
    v50 = *(v0 + 320);
    v51 = *(v0 + 256);
    v52 = *(v0 + 232);
    v53 = *(v0 + 240);
    v54 = *(v0 + 200);
    v55 = *(v0 + 208);
    v57 = *(v0 + 96);
    v56 = *(v0 + 104);

    (*(v55 + 32))(v52, v53, v54);
    v57(v52);
    (*(v55 + 8))(v52, v54);
    outlined destroy of UTType?(v51, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v58 = *(v0 + 312);
    v60 = *(v0 + 288);
    v59 = *(v0 + 296);
    v61 = *(v0 + 280);
    v62 = *(v0 + 248);
    v63 = *(v0 + 256);
    v65 = *(v0 + 232);
    v64 = *(v0 + 240);
    v88 = *(v0 + 224);
    v90 = *(v0 + 216);
    v92 = *(v0 + 192);
    v95 = *(v0 + 168);
    v98 = *(v0 + 160);
    v101 = *(v0 + 152);
    outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ResolvedTransferRepresentation);

    v48 = *(v0 + 8);
    v66 = *MEMORY[0x277D85DE8];
    goto LABEL_13;
  }

  v31 = *(v0 + 304);
  v32 = *(v0 + 240);
  outlined destroy of UTType?(*(v0 + 256), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of ResolvedTransferRepresentation(v31, type metadata accessor for ResolvedTransferRepresentation);
  outlined destroy of UTType?(v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v33 = *(v0 + 344) + 1;
  if (v33 == *(v0 + 328))
  {
LABEL_11:
    v40 = *(v0 + 320);

    v42 = *(v0 + 304);
    v41 = *(v0 + 312);
    v43 = *(v0 + 288);
    v44 = *(v0 + 296);
    v45 = *(v0 + 280);
    v46 = *(v0 + 248);
    v47 = *(v0 + 256);
    v85 = *(v0 + 240);
    v86 = *(v0 + 232);
    v87 = *(v0 + 224);
    v89 = *(v0 + 216);
    v91 = *(v0 + 192);
    v94 = *(v0 + 168);
    v97 = *(v0 + 160);
    v100 = *(v0 + 152);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v48 = *(v0 + 8);
    v49 = *MEMORY[0x277D85DE8];
LABEL_13:

    return v48();
  }

  v34 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 344) = v33;
    v35 = *(v0 + 320);
    if (v33 >= *(v35 + 16))
    {
      __break(1u);
    }

    v36 = *(v0 + 336);
    v37 = *(v0 + 304);
    v38 = *(v0 + 264);
    outlined init with copy of ResolvedTransferRepresentation(v35 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 272) + 72) * v33, v37, type metadata accessor for ResolvedTransferRepresentation);
    v39 = *(v37 + *(v38 + 28));
    if (v39 == v36)
    {
      break;
    }

    if (v39 == v34)
    {
      v79 = swift_task_alloc();
      *(v0 + 384) = v79;
      *v79 = v0;
      v79[1] = Transferable._file(contentType:fileHandler:);
      v80 = *(v0 + 304);
      v81 = *(v0 + 120);
      v82 = *(v0 + 128);
      v83 = *(v0 + 112);
      v84 = *MEMORY[0x277D85DE8];

      return Transferable.data(from:)(v80, v83, v81);
    }

    outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ResolvedTransferRepresentation);
    v33 = *(v0 + 344) + 1;
    if (v33 == *(v0 + 328))
    {
      goto LABEL_11;
    }
  }

  v68 = *(v0 + 256);
  v69 = *(v0 + 200);
  v70 = *(v0 + 208);
  v71 = *(v70 + 56);
  *(v0 + 352) = v71;
  *(v0 + 360) = (v70 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v71(v68, 1, 1, v69);
  v72 = swift_task_alloc();
  *(v0 + 368) = v72;
  *v72 = v0;
  v72[1] = Transferable._file(contentType:fileHandler:);
  v73 = *(v0 + 304);
  v74 = *(v0 + 248);
  v75 = *(v0 + 120);
  v76 = *(v0 + 128);
  v77 = *(v0 + 112);
  v78 = *MEMORY[0x277D85DE8];

  return Transferable.url(from:)(v74, v73, v77, v75);
}

{
  v78 = v0;
  v77[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 408);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = logger.unsafeMutableAddressor();
  (*(v5 + 16))(v4, v7, v6);
  outlined init with copy of ResolvedTransferRepresentation(v2, v3, type metadata accessor for ResolvedTransferRepresentation);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 408);
  v13 = *(v0 + 304);
  v14 = *(v0 + 280);
  if (v11)
  {
    v15 = *(v0 + 264);
    v71 = *(v0 + 144);
    v73 = *(v0 + 136);
    v75 = *(v0 + 152);
    v69 = *(v0 + 304);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v77[0] = v18;
    *v16 = 136315394;
    v19 = v14 + *(v15 + 20);
    v20 = UTType.identifier.getter();
    v22 = v21;
    outlined destroy of ResolvedTransferRepresentation(v14, type metadata accessor for ResolvedTransferRepresentation);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v77);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2112;
    v24 = v12;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v25;
    *v17 = v25;
    _os_log_impl(&dword_20E3BF000, v9, v10, "Error loading data for type identifier %s: %@", v16, 0x16u);
    outlined destroy of UTType?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x20F32E080](v18, -1, -1);
    MEMORY[0x20F32E080](v16, -1, -1);

    (*(v71 + 8))(v75, v73);
    v26 = v69;
  }

  else
  {
    v28 = *(v0 + 144);
    v27 = *(v0 + 152);
    v29 = *(v0 + 136);

    outlined destroy of ResolvedTransferRepresentation(v14, type metadata accessor for ResolvedTransferRepresentation);
    (*(v28 + 8))(v27, v29);
    v26 = v13;
  }

  outlined destroy of ResolvedTransferRepresentation(v26, type metadata accessor for ResolvedTransferRepresentation);
  v30 = *(v0 + 344) + 1;
  if (v30 == *(v0 + 328))
  {
LABEL_10:
    v37 = *(v0 + 320);

    v39 = *(v0 + 304);
    v38 = *(v0 + 312);
    v40 = *(v0 + 288);
    v41 = *(v0 + 296);
    v42 = *(v0 + 280);
    v43 = *(v0 + 248);
    v44 = *(v0 + 256);
    v65 = *(v0 + 240);
    v66 = *(v0 + 232);
    v67 = *(v0 + 224);
    v68 = *(v0 + 216);
    v70 = *(v0 + 192);
    v72 = *(v0 + 168);
    v74 = *(v0 + 160);
    v76 = *(v0 + 152);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v45 = *(v0 + 8);
    v46 = *MEMORY[0x277D85DE8];

    return v45();
  }

  else
  {
    v31 = MEMORY[0x277CC9318];
    while (1)
    {
      *(v0 + 344) = v30;
      v32 = *(v0 + 320);
      if (v30 >= *(v32 + 16))
      {
        __break(1u);
      }

      v33 = *(v0 + 336);
      v34 = *(v0 + 304);
      v35 = *(v0 + 264);
      outlined init with copy of ResolvedTransferRepresentation(v32 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 272) + 72) * v30, v34, type metadata accessor for ResolvedTransferRepresentation);
      v36 = *(v34 + *(v35 + 28));
      if (v36 == v33)
      {
        break;
      }

      if (v36 == v31)
      {
        v59 = swift_task_alloc();
        *(v0 + 384) = v59;
        *v59 = v0;
        v59[1] = Transferable._file(contentType:fileHandler:);
        v60 = *(v0 + 304);
        v61 = *(v0 + 120);
        v62 = *(v0 + 128);
        v63 = *(v0 + 112);
        v64 = *MEMORY[0x277D85DE8];

        return Transferable.data(from:)(v60, v63, v61);
      }

      outlined destroy of ResolvedTransferRepresentation(*(v0 + 304), type metadata accessor for ResolvedTransferRepresentation);
      v30 = *(v0 + 344) + 1;
      if (v30 == *(v0 + 328))
      {
        goto LABEL_10;
      }
    }

    v48 = *(v0 + 256);
    v49 = *(v0 + 200);
    v50 = *(v0 + 208);
    v51 = *(v50 + 56);
    *(v0 + 352) = v51;
    *(v0 + 360) = (v50 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v51(v48, 1, 1, v49);
    v52 = swift_task_alloc();
    *(v0 + 368) = v52;
    *v52 = v0;
    v52[1] = Transferable._file(contentType:fileHandler:);
    v53 = *(v0 + 304);
    v54 = *(v0 + 248);
    v55 = *(v0 + 120);
    v56 = *(v0 + 128);
    v57 = *(v0 + 112);
    v58 = *MEMORY[0x277D85DE8];

    return Transferable.url(from:)(v54, v53, v57, v55);
  }
}

uint64_t Transferable._file(contentType:fileHandler:)(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *v3;
  v5 = *(*v3 + 384);
  v10 = *v3;
  v4[49] = a1;
  v4[50] = a2;
  v4[51] = v2;

  if (v2)
  {
    v6 = Transferable._file(contentType:fileHandler:);
  }

  else
  {
    v6 = Transferable._file(contentType:fileHandler:);
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t Transferable.init(data:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.init(data:contentType:), 0, 0);
}

uint64_t Transferable.init(data:contentType:)()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for UTType();
  v0[10] = v5;
  v6 = *(v5 - 8);
  v0[11] = v6;
  (*(v6 + 16))(v1, v2, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  outlined copy of Data._Representation(v4, v3);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = Transferable.init(data:contentType:);
  v8 = v0[9];
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[2];

  return Transferable.init(_:_:)(v13, v11, v12, v8, v9, v10);
}

{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = Transferable.init(data:contentType:);
  }

  else
  {
    v3 = Transferable.init(data:contentType:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  outlined consume of Data._Representation(v0[3], v0[4]);
  (*(v2 + 8))(v4, v1);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  outlined consume of Data._Representation(v0[3], v0[4]);
  (*(v2 + 8))(v4, v1);

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t Transferable._data(contentType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for Logger();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for SentTransferredFile(0);
  v4[21] = v8;
  v9 = *(v8 - 8);
  v4[22] = v9;
  v10 = *(v9 + 64) + 15;
  v4[23] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v12 = type metadata accessor for ResolvedTransferRepresentation();
  v4[27] = v12;
  v13 = *(v12 - 8);
  v4[28] = v13;
  v14 = *(v13 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64) + 15;
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable._data(contentType:), 0, 0);
}

uint64_t Transferable._data(contentType:)()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v8 = static Transferable.resolvedRepresentations(for:)(v1, v3, v2);
  outlined destroy of UTType?(v1, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v9 = *(v8 + 16);
  if (!v9)
  {
    v48 = *(v0 + 96);

    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    v7(v49, v48, v5);
    goto LABEL_39;
  }

  v88 = v7;
  v10 = 0;
  v11 = *(v0 + 224);
  v93 = v5;
  v96 = *(v0 + 216);
  v12 = MEMORY[0x277D84F90];
  while (v10 < *(v8 + 16))
  {
    v13 = *(v0 + 272);
    v14 = *(v11 + 80);
    *(v0 + 384) = v14;
    v15 = (v14 + 32) & ~v14;
    v16 = *(v11 + 72);
    *(v0 + 296) = v16;
    outlined init with copy of ResolvedTransferRepresentation(v8 + v15 + v16 * v10, v13, type metadata accessor for ResolvedTransferRepresentation);
    v17 = *(v0 + 272);
    if (*(v13 + *(v96 + 32)))
    {
      outlined init with take of ResolvedTransferRepresentation(v17, *(v0 + 264), type metadata accessor for ResolvedTransferRepresentation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
      }

      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
      }

      v20 = *(v0 + 264);
      *(v12 + 16) = v19 + 1;
      outlined init with take of ResolvedTransferRepresentation(v20, v12 + v15 + v19 * v16, type metadata accessor for ResolvedTransferRepresentation);
    }

    else
    {
      outlined destroy of ResolvedTransferRepresentation(v17, type metadata accessor for ResolvedTransferRepresentation);
    }

    ++v10;
    *(v0 + 304) = v12;
    if (v9 == v10)
    {

      v22 = *(v12 + 16);
      *(v0 + 288) = v22;
      if (v22)
      {
        v23 = 0;
        v24 = MEMORY[0x277CC9318];
        while (1)
        {
          *(v0 + 312) = v23;
          v25 = *(v0 + 304);
          if (v23 >= *(v25 + 16))
          {
            __break(1u);
            return result;
          }

          v26 = *(v0 + 256);
          v27 = *(v0 + 216);
          outlined init with copy of ResolvedTransferRepresentation(v25 + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(v0 + 296) * v23, v26, type metadata accessor for ResolvedTransferRepresentation);
          v28 = *(v26 + *(v27 + 28));
          if (v28 == v24)
          {
            v52 = swift_task_alloc();
            *(v0 + 320) = v52;
            *v52 = v0;
            v52[1] = Transferable._data(contentType:);
            v53 = *(v0 + 256);
            v54 = *(v0 + 112);
            v55 = *(v0 + 120);
            v56 = *(v0 + 104);

            return Transferable.data(from:)(v53, v56, v54);
          }

          v29 = *(v0 + 256);
          if (v28 == *(v0 + 168))
          {
            v30 = *(v0 + 208);
            v31 = *(v0 + 216);
            v32 = *(v0 + 176);
            v33 = *(v32 + 56);
            *(v0 + 352) = v33;
            *(v0 + 360) = (v32 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
            v33(v30, 1, 1);
            v34 = *(v31 + 32);
            v35 = *(v29 + v34);
            if (v35)
            {
              v66 = *(v0 + 120);
              v67 = *(v29 + v34 + 8);
              v68 = *(v0 + 104);
              *(v0 + 80) = v68;
              v69 = v68;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
              (*(*(v69 - 8) + 16))(boxed_opaque_existential_1, v66, v69);
              v98 = (v35 + *v35);
              v71 = v35[1];
              v72 = swift_task_alloc();
              *(v0 + 368) = v72;
              *v72 = v0;
              v72[1] = Transferable._data(contentType:);

              return v98(v0 + 16, v0 + 56);
            }

            v36 = *(v0 + 200);
            v37 = *(v0 + 168);
            outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
            *(v0 + 16) = 0u;
            *(v0 + 32) = 0u;
            *(v0 + 48) = 0;
            outlined destroy of UTType?(v0 + 16, &_s16CoreTransferable0B8Currency_pSgMd, &_s16CoreTransferable0B8Currency_pSgMR);
            (v33)(v36, 1, 1, v37);
            outlined init with take of URL?(*(v0 + 200), *(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
            v38 = *(v0 + 192);
            v39 = *(v0 + 168);
            v40 = *(v0 + 176);
            outlined init with copy of UTType?(*(v0 + 208), v38, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
            if ((*(v40 + 48))(v38, 1, v39) != 1)
            {
              outlined init with take of ResolvedTransferRepresentation(*(v0 + 192), *(v0 + 184), type metadata accessor for SentTransferredFile);
              v10 = Data.init(contentsOf:options:)();
              v12 = v43;
              v44 = *(v0 + 208);
              outlined destroy of ResolvedTransferRepresentation(*(v0 + 184), type metadata accessor for SentTransferredFile);
              outlined destroy of UTType?(v44, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
              v45 = v12 >> 62;
              if ((v12 >> 62) > 1)
              {
                if (v45 != 2)
                {
                  outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
LABEL_32:
                  result = outlined consume of Data._Representation(v10, v12);
                  goto LABEL_15;
                }

                v46 = *(v10 + 16);
                v47 = *(v10 + 24);
              }

              else
              {
                if (!v45)
                {
                  outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
                  if ((v12 & 0xFF000000000000) != 0)
                  {
                    goto LABEL_46;
                  }

                  goto LABEL_32;
                }

                v46 = v10;
                v47 = v10 >> 32;
              }

              outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
              if (v46 != v47)
              {
                goto LABEL_46;
              }

              goto LABEL_32;
            }

            v41 = *(v0 + 256);
            v42 = *(v0 + 192);
            outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
            outlined destroy of ResolvedTransferRepresentation(v41, type metadata accessor for ResolvedTransferRepresentation);
            result = outlined destroy of UTType?(v42, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
          }

          else
          {
            result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
          }

LABEL_15:
          v23 = *(v0 + 312) + 1;
          if (v23 == *(v0 + 288))
          {
            v57 = *(v0 + 304);

            type metadata accessor for TransferableError();
            lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
            swift_allocError();
            goto LABEL_39;
          }
        }
      }

      v50 = *(v0 + 96);

      type metadata accessor for TransferableError();
      lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
      swift_allocError();
      v88(v51, v50, v93);
LABEL_39:
      swift_storeEnumTagMultiPayload();
      v59 = *(v0 + 272);
      v58 = *(v0 + 280);
      v61 = *(v0 + 256);
      v60 = *(v0 + 264);
      v63 = *(v0 + 240);
      v62 = *(v0 + 248);
      v64 = *(v0 + 232);
      v82 = *(v0 + 208);
      v84 = *(v0 + 200);
      v86 = *(v0 + 192);
      v89 = *(v0 + 184);
      v91 = *(v0 + 160);
      v94 = *(v0 + 152);
      v97 = *(v0 + 144);
      swift_willThrow();

      v65 = *(v0 + 8);

      return v65();
    }
  }

  __break(1u);
LABEL_46:
  v73 = *(v0 + 304);
  v75 = *(v0 + 272);
  v74 = *(v0 + 280);
  v77 = *(v0 + 256);
  v76 = *(v0 + 264);
  v79 = *(v0 + 240);
  v78 = *(v0 + 248);
  v80 = *(v0 + 232);
  v83 = *(v0 + 208);
  v85 = *(v0 + 200);
  v87 = *(v0 + 192);
  v90 = *(v0 + 184);
  v92 = *(v0 + 160);
  v95 = *(v0 + 152);
  v99 = *(v0 + 144);

  v81 = *(v0 + 8);

  return v81(v10, v12);
}

{
  v120 = v0;
  v3 = *(v0 + 336);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v23 = *(v0 + 328);
      outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
      v5 = v23;
      v6 = v3;
      goto LABEL_14;
    }

    v7 = *(v0 + 328);
    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
LABEL_8:
    outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
    v5 = *(v0 + 328);
    v6 = *(v0 + 336);
    if (v9 != v8)
    {
      goto LABEL_9;
    }

LABEL_14:
    outlined consume of Data._Representation(v5, v6);
    v24 = *(v0 + 312) + 1;
    if (v24 == *(v0 + 288))
    {
LABEL_15:
      v25 = *(v0 + 304);

      type metadata accessor for TransferableError();
      lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      v27 = *(v0 + 272);
      v26 = *(v0 + 280);
      v29 = *(v0 + 256);
      v28 = *(v0 + 264);
      v31 = *(v0 + 240);
      v30 = *(v0 + 248);
      v32 = *(v0 + 232);
      v33 = *(v0 + 208);
      v99 = *(v0 + 200);
      v102 = *(v0 + 192);
      v105 = *(v0 + 184);
      v108 = *(v0 + 160);
      v111 = *(v0 + 152);
      logb = *(v0 + 144);
      swift_willThrow();

      v34 = *(v0 + 8);

      return v34();
    }

    v35 = *(v0 + 344);
    v36 = MEMORY[0x277CC9318];
    while (1)
    {
      *(v0 + 312) = v24;
      v37 = *(v0 + 304);
      if (v24 >= *(v37 + 16))
      {
        __break(1u);
LABEL_50:
        log = v2;
        v117 = v1;
        goto LABEL_10;
      }

      v38 = *(v0 + 256);
      v1 = *(v0 + 216);
      outlined init with copy of ResolvedTransferRepresentation(v37 + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(v0 + 296) * v24, v38, type metadata accessor for ResolvedTransferRepresentation);
      v39 = *(v38 + *(v1 + 28));
      if (v39 == v36)
      {
        v83 = swift_task_alloc();
        *(v0 + 320) = v83;
        *v83 = v0;
        v83[1] = Transferable._data(contentType:);
        v84 = *(v0 + 256);
        v85 = *(v0 + 112);
        v86 = *(v0 + 120);
        v87 = *(v0 + 104);

        return Transferable.data(from:)(v84, v87, v85);
      }

      v40 = *(v0 + 256);
      if (v39 == *(v0 + 168))
      {
        v41 = *(v0 + 208);
        v42 = *(v0 + 216);
        v43 = *(v0 + 176);
        v44 = *(v43 + 56);
        *(v0 + 352) = v44;
        *(v0 + 360) = (v43 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
        v44(v41, 1, 1);
        v45 = *(v42 + 32);
        v46 = *(v40 + v45);
        if (v46)
        {
          v88 = *(v0 + 120);
          v89 = *(v40 + v45 + 8);
          v90 = *(v0 + 104);
          *(v0 + 80) = v90;
          v91 = v90;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
          (*(*(v91 - 8) + 16))(boxed_opaque_existential_1, v88, v91);
          v118 = (v46 + *v46);
          v93 = v46[1];
          v94 = swift_task_alloc();
          *(v0 + 368) = v94;
          *v94 = v0;
          v94[1] = Transferable._data(contentType:);

          return v118(v0 + 16, v0 + 56);
        }

        v47 = *(v0 + 200);
        v48 = *(v0 + 168);
        outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        *(v0 + 48) = 0;
        outlined destroy of UTType?(v0 + 16, &_s16CoreTransferable0B8Currency_pSgMd, &_s16CoreTransferable0B8Currency_pSgMR);
        (v44)(v47, 1, 1, v48);
        outlined init with take of URL?(*(v0 + 200), *(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
        v49 = *(v0 + 192);
        v50 = *(v0 + 168);
        v51 = *(v0 + 176);
        outlined init with copy of UTType?(*(v0 + 208), v49, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
        v52 = *(v51 + 48);
        v2 = v51 + 48;
        if (v52(v49, 1, v50) != 1)
        {
          outlined init with take of ResolvedTransferRepresentation(*(v0 + 192), *(v0 + 184), type metadata accessor for SentTransferredFile);
          v54 = Data.init(contentsOf:options:)();
          if (v35)
          {
            logc = *(v0 + 256);
            v56 = *(v0 + 232);
            v57 = v35;
            v58 = *(v0 + 136);
            v59 = *(v0 + 144);
            v60 = *(v0 + 128);
            v61 = logger.unsafeMutableAddressor();
            (*(v58 + 16))(v59, v61, v60);
            v62 = v57;
            outlined init with copy of ResolvedTransferRepresentation(logc, v56, type metadata accessor for ResolvedTransferRepresentation);
            v63 = v57;
            v64 = Logger.logObject.getter();
            v65 = static os_log_type_t.fault.getter();

            loga = v64;
            v66 = os_log_type_enabled(v64, v65);
            v2 = *(v0 + 232);
            if (v66)
            {
              v67 = *(v0 + 216);
              v109 = *(v0 + 184);
              v112 = *(v0 + 208);
              v100 = *(v0 + 136);
              v103 = *(v0 + 128);
              v106 = *(v0 + 144);
              v68 = swift_slowAlloc();
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              v119 = v97;
              *v68 = 136315394;
              v69 = v2 + *(v67 + 20);
              v70 = UTType.identifier.getter();
              v95 = v65;
              v72 = v71;
              outlined destroy of ResolvedTransferRepresentation(v2, type metadata accessor for ResolvedTransferRepresentation);
              v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v119);

              *(v68 + 4) = v73;
              *(v68 + 12) = 2112;
              v74 = v62;
              v75 = _swift_stdlib_bridgeErrorToNSError();
              *(v68 + 14) = v75;
              *v96 = v75;
              _os_log_impl(&dword_20E3BF000, loga, v95, "Error loading data for type identifier %s: %@", v68, 0x16u);
              outlined destroy of UTType?(v96, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              MEMORY[0x20F32E080](v96, -1, -1);
              v1 = v97;
              __swift_destroy_boxed_opaque_existential_0Tm(v97);
              MEMORY[0x20F32E080](v97, -1, -1);
              MEMORY[0x20F32E080](v68, -1, -1);

              (*(v100 + 8))(v106, v103);
            }

            else
            {
              v109 = *(v0 + 184);
              v112 = *(v0 + 208);
              v1 = v62;
              v78 = *(v0 + 136);
              v79 = *(v0 + 144);
              v80 = *(v0 + 128);

              outlined destroy of ResolvedTransferRepresentation(v2, type metadata accessor for ResolvedTransferRepresentation);
              (*(v78 + 8))(v79, v80);
            }

            outlined destroy of ResolvedTransferRepresentation(v109, type metadata accessor for SentTransferredFile);
            outlined destroy of UTType?(v112, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
            outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
            v35 = 0;
            goto LABEL_20;
          }

          v2 = v54;
          v1 = v55;
          v76 = *(v0 + 208);
          outlined destroy of ResolvedTransferRepresentation(*(v0 + 184), type metadata accessor for SentTransferredFile);
          outlined destroy of UTType?(v76, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
          v77 = v1 >> 62;
          if ((v1 >> 62) > 1)
          {
            if (v77 != 2)
            {
              outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
LABEL_42:
              outlined consume of Data._Representation(v2, v1);
              v35 = 0;
              goto LABEL_20;
            }

            v81 = *(v2 + 16);
            v82 = *(v2 + 24);
          }

          else
          {
            if (!v77)
            {
              outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
              if ((v1 & 0xFF000000000000) != 0)
              {
                goto LABEL_50;
              }

              goto LABEL_42;
            }

            v81 = v2;
            v82 = v2 >> 32;
          }

          outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
          if (v81 != v82)
          {
            goto LABEL_50;
          }

          goto LABEL_42;
        }

        v53 = *(v0 + 256);
        v1 = *(v0 + 192);
        outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
        outlined destroy of ResolvedTransferRepresentation(v53, type metadata accessor for ResolvedTransferRepresentation);
        outlined destroy of UTType?(v1, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      }

      else
      {
        outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
      }

LABEL_20:
      v24 = *(v0 + 312) + 1;
      if (v24 == *(v0 + 288))
      {
        goto LABEL_15;
      }
    }
  }

  if (v4)
  {
    v10 = *(v0 + 328);
    v9 = v10;
    v8 = v10 >> 32;
    goto LABEL_8;
  }

  outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
  v5 = *(v0 + 328);
  v6 = *(v0 + 336);
  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  log = v5;
  v117 = v6;
LABEL_10:
  v11 = *(v0 + 304);
  v13 = *(v0 + 272);
  v12 = *(v0 + 280);
  v15 = *(v0 + 256);
  v14 = *(v0 + 264);
  v17 = *(v0 + 240);
  v16 = *(v0 + 248);
  v18 = *(v0 + 232);
  v20 = *(v0 + 200);
  v19 = *(v0 + 208);
  v98 = *(v0 + 192);
  v101 = *(v0 + 184);
  v104 = *(v0 + 160);
  v107 = *(v0 + 152);
  v110 = *(v0 + 144);

  v21 = *(v0 + 8);

  return v21(log, v117);
}

{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v6 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = Transferable._data(contentType:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v4 = Transferable._data(contentType:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v114 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 200);
  v4 = *(v0 + 168);
  outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
  v5 = swift_dynamicCast();
  v2(v3, v5 ^ 1u, 1, v4);
  v6 = *(v0 + 376);
  v7 = MEMORY[0x277CC9318];
  v8 = &_s16CoreTransferable0B8Currency_pSgMd;
  while (2)
  {
    outlined init with take of URL?(*(v0 + 200), *(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
    v9 = *(v0 + 192);
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    outlined init with copy of UTType?(*(v0 + 208), v9, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
    if ((*(v10 + 48))(v9, 1, v11) == 1)
    {
      v12 = *(v0 + 256);
      v13 = *(v0 + 192);
      outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      outlined destroy of ResolvedTransferRepresentation(v12, type metadata accessor for ResolvedTransferRepresentation);
      outlined destroy of UTType?(v13, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      goto LABEL_20;
    }

    outlined init with take of ResolvedTransferRepresentation(*(v0 + 192), *(v0 + 184), type metadata accessor for SentTransferredFile);
    v14 = Data.init(contentsOf:options:)();
    if (!v6)
    {
      v8 = v14;
      v12 = v15;
      v39 = *(v0 + 208);
      outlined destroy of ResolvedTransferRepresentation(*(v0 + 184), type metadata accessor for SentTransferredFile);
      outlined destroy of UTType?(v39, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      v40 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v40 != 2)
        {
          outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
          goto LABEL_19;
        }

        v45 = *(v8 + 16);
        v46 = *(v8 + 24);
      }

      else
      {
        if (!v40)
        {
          outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
          if ((v12 & 0xFF000000000000) != 0)
          {
LABEL_37:
            v84 = *(v0 + 304);
            v86 = *(v0 + 272);
            v85 = *(v0 + 280);
            v88 = *(v0 + 256);
            v87 = *(v0 + 264);
            v90 = *(v0 + 240);
            v89 = *(v0 + 248);
            v91 = *(v0 + 232);
            v96 = *(v0 + 208);
            v99 = *(v0 + 200);
            v102 = *(v0 + 192);
            v105 = *(v0 + 184);
            v108 = *(v0 + 160);
            v110 = *(v0 + 152);
            v112 = *(v0 + 144);

            v92 = *(v0 + 8);

            return v92(v8, v12);
          }

LABEL_19:
          outlined consume of Data._Representation(v8, v12);
          v6 = 0;
          v8 = &_s16CoreTransferable0B8Currency_pSgMd;
          goto LABEL_20;
        }

        v45 = v8;
        v46 = v8 >> 32;
      }

      outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
      if (v45 != v46)
      {
        goto LABEL_37;
      }

      goto LABEL_19;
    }

    v16 = *(v0 + 256);
    v17 = *(v0 + 232);
    v18 = *(v0 + 136);
    v19 = *(v0 + 144);
    v20 = *(v0 + 128);
    v21 = logger.unsafeMutableAddressor();
    (*(v18 + 16))(v19, v21, v20);
    outlined init with copy of ResolvedTransferRepresentation(v16, v17, type metadata accessor for ResolvedTransferRepresentation);
    v22 = v6;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 232);
    if (v25)
    {
      v27 = *(v0 + 216);
      v103 = *(v0 + 184);
      v106 = *(v0 + 208);
      v94 = *(v0 + 136);
      v97 = *(v0 + 128);
      v100 = *(v0 + 144);
      log = v23;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v113 = v30;
      *v28 = 136315394;
      v31 = v26 + *(v27 + 20);
      v32 = UTType.identifier.getter();
      v34 = v33;
      outlined destroy of ResolvedTransferRepresentation(v26, type metadata accessor for ResolvedTransferRepresentation);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v113);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2112;
      v36 = v6;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v37;
      *v29 = v37;
      v12 = log;
      _os_log_impl(&dword_20E3BF000, log, v24, "Error loading data for type identifier %s: %@", v28, 0x16u);
      outlined destroy of UTType?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F32E080](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x20F32E080](v30, -1, -1);
      MEMORY[0x20F32E080](v28, -1, -1);

      (*(v94 + 8))(v100, v97);
      outlined destroy of ResolvedTransferRepresentation(v103, type metadata accessor for SentTransferredFile);
      v38 = v106;
    }

    else
    {
      v12 = *(v0 + 208);
      v41 = *(v0 + 184);
      v43 = *(v0 + 136);
      v42 = *(v0 + 144);
      v44 = *(v0 + 128);

      outlined destroy of ResolvedTransferRepresentation(v26, type metadata accessor for ResolvedTransferRepresentation);
      (*(v43 + 8))(v42, v44);
      outlined destroy of ResolvedTransferRepresentation(v41, type metadata accessor for SentTransferredFile);
      v38 = v12;
    }

    outlined destroy of UTType?(v38, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
    v8 = &_s16CoreTransferable0B8Currency_pSgMd;
    outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
    v6 = 0;
    while (1)
    {
LABEL_20:
      v47 = *(v0 + 312) + 1;
      if (v47 == *(v0 + 288))
      {
        v61 = *(v0 + 304);

        type metadata accessor for TransferableError();
        lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        v63 = *(v0 + 272);
        v62 = *(v0 + 280);
        v65 = *(v0 + 256);
        v64 = *(v0 + 264);
        v67 = *(v0 + 240);
        v66 = *(v0 + 248);
        v68 = *(v0 + 232);
        v69 = *(v0 + 208);
        v95 = *(v0 + 200);
        v98 = *(v0 + 192);
        v101 = *(v0 + 184);
        v104 = *(v0 + 160);
        v107 = *(v0 + 152);
        v109 = *(v0 + 144);
        swift_willThrow();

        v70 = *(v0 + 8);

        return v70();
      }

      *(v0 + 312) = v47;
      v48 = *(v0 + 304);
      if (v47 >= *(v48 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v12 = *(v0 + 256);
      v49 = *(v0 + 216);
      outlined init with copy of ResolvedTransferRepresentation(v48 + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(v0 + 296) * v47, v12, type metadata accessor for ResolvedTransferRepresentation);
      v50 = *(v12 + *(v49 + 28));
      if (v50 == v7)
      {
        v72 = swift_task_alloc();
        *(v0 + 320) = v72;
        *v72 = v0;
        v72[1] = Transferable._data(contentType:);
        v73 = *(v0 + 256);
        v74 = *(v0 + 112);
        v75 = *(v0 + 120);
        v76 = *(v0 + 104);

        return Transferable.data(from:)(v73, v76, v74);
      }

      v51 = *(v0 + 256);
      if (v50 == *(v0 + 168))
      {
        break;
      }

      outlined destroy of ResolvedTransferRepresentation(v51, type metadata accessor for ResolvedTransferRepresentation);
    }

    v52 = *(v0 + 208);
    v53 = *(v0 + 216);
    v54 = *(v0 + 176);
    v55 = *(v54 + 56);
    *(v0 + 352) = v55;
    *(v0 + 360) = (v54 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v56 = v51;
    v55(v52, 1, 1);
    v57 = *(v53 + 32);
    v58 = *(v56 + v57);
    if (!v58)
    {
      v59 = *(v0 + 200);
      v60 = *(v0 + 168);
      outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
      outlined destroy of UTType?(v0 + 16, &_s16CoreTransferable0B8Currency_pSgMd, &_s16CoreTransferable0B8Currency_pSgMR);
      (v55)(v59, 1, 1, v60);
      continue;
    }

    break;
  }

  v77 = *(v0 + 120);
  v78 = *(v56 + v57 + 8);
  v79 = *(v0 + 104);
  *(v0 + 80) = v79;
  v80 = v79;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*(*(v80 - 8) + 16))(boxed_opaque_existential_1, v77, v80);
  v111 = (v58 + *v58);
  v82 = v58[1];
  v83 = swift_task_alloc();
  *(v0 + 368) = v83;
  *v83 = v0;
  v83[1] = Transferable._data(contentType:);

  return v111(v0 + 16, v0 + 56);
}

{
  v105 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 160);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = logger.unsafeMutableAddressor();
  (*(v6 + 16))(v4, v7, v5);
  outlined init with copy of ResolvedTransferRepresentation(v3, v2, type metadata accessor for ResolvedTransferRepresentation);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 344);
  v13 = *(v0 + 248);
  if (v11)
  {
    v14 = *(v0 + 216);
    v95 = *(v0 + 136);
    v98 = *(v0 + 128);
    v101 = *(v0 + 160);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v104 = v17;
    *v15 = 136315394;
    v18 = v13 + *(v14 + 20);
    v19 = UTType.identifier.getter();
    v21 = v20;
    outlined destroy of ResolvedTransferRepresentation(v13, type metadata accessor for ResolvedTransferRepresentation);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v104);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2112;
    v23 = v12;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v24;
    *v16 = v24;
    _os_log_impl(&dword_20E3BF000, v9, v10, "Error loading data for type identifier %s: %@", v15, 0x16u);
    outlined destroy of UTType?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x20F32E080](v17, -1, -1);
    MEMORY[0x20F32E080](v15, -1, -1);

    (*(v95 + 8))(v101, v98);
  }

  else
  {
    v25 = *(v0 + 160);
    v26 = *(v0 + 128);
    v27 = *(v0 + 136);

    outlined destroy of ResolvedTransferRepresentation(v13, type metadata accessor for ResolvedTransferRepresentation);
    (*(v27 + 8))(v25, v26);
  }

  result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
  v29 = *(v0 + 312) + 1;
  if (v29 == *(v0 + 288))
  {
LABEL_5:
    v30 = *(v0 + 304);

    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    v32 = *(v0 + 272);
    v31 = *(v0 + 280);
    v34 = *(v0 + 256);
    v33 = *(v0 + 264);
    v36 = *(v0 + 240);
    v35 = *(v0 + 248);
    v37 = *(v0 + 232);
    v38 = *(v0 + 208);
    v87 = *(v0 + 200);
    v89 = *(v0 + 192);
    v91 = *(v0 + 184);
    v93 = *(v0 + 160);
    v96 = *(v0 + 152);
    v99 = *(v0 + 144);
    swift_willThrow();

    v39 = *(v0 + 8);

    return v39();
  }

  v40 = MEMORY[0x277CC9318];
  while (1)
  {
    *(v0 + 312) = v29;
    v41 = *(v0 + 304);
    if (v29 >= *(v41 + 16))
    {
      __break(1u);
      return result;
    }

    v42 = *(v0 + 256);
    v43 = *(v0 + 216);
    outlined init with copy of ResolvedTransferRepresentation(v41 + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(v0 + 296) * v29, v42, type metadata accessor for ResolvedTransferRepresentation);
    v44 = *(v42 + *(v43 + 28));
    if (v44 == v40)
    {
      break;
    }

    v45 = *(v0 + 256);
    if (v44 == *(v0 + 168))
    {
      v46 = *(v0 + 208);
      v47 = *(v0 + 216);
      v48 = *(v0 + 176);
      v49 = *(v48 + 56);
      *(v0 + 352) = v49;
      *(v0 + 360) = (v48 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v49(v46, 1, 1);
      v50 = *(v47 + 32);
      v51 = *(v45 + v50);
      if (v51)
      {
        v71 = *(v0 + 120);
        v72 = *(v45 + v50 + 8);
        v73 = *(v0 + 104);
        *(v0 + 80) = v73;
        v74 = v73;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
        (*(*(v74 - 8) + 16))(boxed_opaque_existential_1, v71, v74);
        v102 = (v51 + *v51);
        v76 = v51[1];
        v77 = swift_task_alloc();
        *(v0 + 368) = v77;
        *v77 = v0;
        v77[1] = Transferable._data(contentType:);

        return v102(v0 + 16, v0 + 56);
      }

      v52 = *(v0 + 200);
      v53 = *(v0 + 168);
      outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
      outlined destroy of UTType?(v0 + 16, &_s16CoreTransferable0B8Currency_pSgMd, &_s16CoreTransferable0B8Currency_pSgMR);
      (v49)(v52, 1, 1, v53);
      outlined init with take of URL?(*(v0 + 200), *(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      v54 = *(v0 + 192);
      v55 = *(v0 + 168);
      v56 = *(v0 + 176);
      outlined init with copy of UTType?(*(v0 + 208), v54, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      if ((*(v56 + 48))(v54, 1, v55) != 1)
      {
        outlined init with take of ResolvedTransferRepresentation(*(v0 + 192), *(v0 + 184), type metadata accessor for SentTransferredFile);
        v59 = Data.init(contentsOf:options:)();
        v61 = v60;
        v62 = *(v0 + 208);
        outlined destroy of ResolvedTransferRepresentation(*(v0 + 184), type metadata accessor for SentTransferredFile);
        outlined destroy of UTType?(v62, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
        v63 = v61 >> 62;
        if ((v61 >> 62) > 1)
        {
          if (v63 != 2)
          {
            outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
LABEL_27:
            result = outlined consume of Data._Representation(v59, v61);
            goto LABEL_10;
          }

          v64 = *(v59 + 16);
          v65 = *(v59 + 24);
        }

        else
        {
          if (!v63)
          {
            outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
            if ((v61 & 0xFF000000000000) != 0)
            {
              goto LABEL_34;
            }

            goto LABEL_27;
          }

          v64 = v59;
          v65 = v59 >> 32;
        }

        outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
        if (v64 != v65)
        {
LABEL_34:
          v78 = *(v0 + 304);
          v80 = *(v0 + 272);
          v79 = *(v0 + 280);
          v82 = *(v0 + 256);
          v81 = *(v0 + 264);
          v84 = *(v0 + 240);
          v83 = *(v0 + 248);
          v85 = *(v0 + 232);
          v88 = *(v0 + 208);
          v90 = *(v0 + 200);
          v92 = *(v0 + 192);
          v94 = *(v0 + 184);
          v97 = *(v0 + 160);
          v100 = *(v0 + 152);
          v103 = *(v0 + 144);

          v86 = *(v0 + 8);

          return v86(v59, v61);
        }

        goto LABEL_27;
      }

      v57 = *(v0 + 256);
      v58 = *(v0 + 192);
      outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      outlined destroy of ResolvedTransferRepresentation(v57, type metadata accessor for ResolvedTransferRepresentation);
      result = outlined destroy of UTType?(v58, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
    }

    else
    {
      result = outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
    }

LABEL_10:
    v29 = *(v0 + 312) + 1;
    if (v29 == *(v0 + 288))
    {
      goto LABEL_5;
    }
  }

  v66 = swift_task_alloc();
  *(v0 + 320) = v66;
  *v66 = v0;
  v66[1] = Transferable._data(contentType:);
  v67 = *(v0 + 256);
  v68 = *(v0 + 112);
  v69 = *(v0 + 120);
  v70 = *(v0 + 104);

  return Transferable.data(from:)(v67, v70, v68);
}

{
  v101 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v7 = logger.unsafeMutableAddressor();
  (*(v6 + 16))(v4, v7, v5);
  outlined init with copy of ResolvedTransferRepresentation(v2, v3, type metadata accessor for ResolvedTransferRepresentation);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 376);
  v13 = *(v0 + 240);
  if (v11)
  {
    v14 = *(v0 + 216);
    v91 = *(v0 + 136);
    v94 = *(v0 + 128);
    v97 = *(v0 + 152);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v100 = v17;
    *v15 = 136315394;
    v18 = v13 + *(v14 + 20);
    v19 = UTType.identifier.getter();
    v21 = v20;
    outlined destroy of ResolvedTransferRepresentation(v13, type metadata accessor for ResolvedTransferRepresentation);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v100);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2112;
    v23 = v12;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v24;
    *v16 = v24;
    _os_log_impl(&dword_20E3BF000, v9, v10, "Error loading URL for type identifier %s: %@", v15, 0x16u);
    outlined destroy of UTType?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F32E080](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x20F32E080](v17, -1, -1);
    MEMORY[0x20F32E080](v15, -1, -1);

    (*(v91 + 8))(v97, v94);
  }

  else
  {
    v25 = *(v0 + 152);
    v26 = *(v0 + 128);
    v27 = *(v0 + 136);

    outlined destroy of ResolvedTransferRepresentation(v13, type metadata accessor for ResolvedTransferRepresentation);
    (*(v27 + 8))(v25, v26);
  }

  while (2)
  {
    v42 = *(v0 + 192);
    v43 = *(v0 + 168);
    v44 = *(v0 + 176);
    outlined init with copy of UTType?(*(v0 + 208), v42, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
    if ((*(v44 + 48))(v42, 1, v43) == 1)
    {
      v29 = *(v0 + 256);
      v30 = *(v0 + 192);
      outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      outlined destroy of ResolvedTransferRepresentation(v29, type metadata accessor for ResolvedTransferRepresentation);
      outlined destroy of UTType?(v30, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      goto LABEL_23;
    }

    outlined init with take of ResolvedTransferRepresentation(*(v0 + 192), *(v0 + 184), type metadata accessor for SentTransferredFile);
    v30 = Data.init(contentsOf:options:)();
    v29 = v45;
    v46 = *(v0 + 208);
    outlined destroy of ResolvedTransferRepresentation(*(v0 + 184), type metadata accessor for SentTransferredFile);
    outlined destroy of UTType?(v46, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
    v47 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v47 != 2)
      {
        outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
        goto LABEL_22;
      }

      v48 = *(v30 + 16);
      v49 = *(v30 + 24);
      goto LABEL_19;
    }

    if (v47)
    {
      v48 = v30;
      v49 = v30 >> 32;
LABEL_19:
      outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
      if (v48 != v49)
      {
        goto LABEL_34;
      }

      goto LABEL_22;
    }

    outlined destroy of ResolvedTransferRepresentation(*(v0 + 256), type metadata accessor for ResolvedTransferRepresentation);
    if ((v29 & 0xFF000000000000) != 0)
    {
LABEL_34:
      v74 = *(v0 + 304);
      v76 = *(v0 + 272);
      v75 = *(v0 + 280);
      v78 = *(v0 + 256);
      v77 = *(v0 + 264);
      v80 = *(v0 + 240);
      v79 = *(v0 + 248);
      v81 = *(v0 + 232);
      v84 = *(v0 + 208);
      v86 = *(v0 + 200);
      v88 = *(v0 + 192);
      v90 = *(v0 + 184);
      v93 = *(v0 + 160);
      v96 = *(v0 + 152);
      v99 = *(v0 + 144);

      v82 = *(v0 + 8);

      return v82(v30, v29);
    }

LABEL_22:
    outlined consume of Data._Representation(v30, v29);
    while (1)
    {
LABEL_23:
      v50 = *(v0 + 312) + 1;
      if (v50 == *(v0 + 288))
      {
        v51 = *(v0 + 304);

        type metadata accessor for TransferableError();
        lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        v53 = *(v0 + 272);
        v52 = *(v0 + 280);
        v55 = *(v0 + 256);
        v54 = *(v0 + 264);
        v57 = *(v0 + 240);
        v56 = *(v0 + 248);
        v58 = *(v0 + 232);
        v59 = *(v0 + 208);
        v83 = *(v0 + 200);
        v85 = *(v0 + 192);
        v87 = *(v0 + 184);
        v89 = *(v0 + 160);
        v92 = *(v0 + 152);
        v95 = *(v0 + 144);
        swift_willThrow();

        v60 = *(v0 + 8);

        return v60();
      }

      *(v0 + 312) = v50;
      v28 = *(v0 + 304);
      if (v50 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v29 = *(v0 + 256);
      v30 = *(v0 + 216);
      outlined init with copy of ResolvedTransferRepresentation(v28 + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(v0 + 296) * v50, v29, type metadata accessor for ResolvedTransferRepresentation);
      v31 = *(v29 + *(v30 + 28));
      if (v31 == MEMORY[0x277CC9318])
      {
        v62 = swift_task_alloc();
        *(v0 + 320) = v62;
        *v62 = v0;
        v62[1] = Transferable._data(contentType:);
        v63 = *(v0 + 256);
        v64 = *(v0 + 112);
        v65 = *(v0 + 120);
        v66 = *(v0 + 104);

        return Transferable.data(from:)(v63, v66, v64);
      }

      v32 = *(v0 + 256);
      if (v31 == *(v0 + 168))
      {
        break;
      }

      outlined destroy of ResolvedTransferRepresentation(v32, type metadata accessor for ResolvedTransferRepresentation);
    }

    v33 = *(v0 + 208);
    v34 = *(v0 + 216);
    v35 = *(v0 + 176);
    v36 = *(v35 + 56);
    *(v0 + 352) = v36;
    *(v0 + 360) = (v35 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v37 = v32;
    v36(v33, 1, 1);
    v38 = *(v34 + 32);
    v39 = *(v37 + v38);
    if (!v39)
    {
      v40 = *(v0 + 200);
      v41 = *(v0 + 168);
      outlined destroy of UTType?(*(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
      outlined destroy of UTType?(v0 + 16, &_s16CoreTransferable0B8Currency_pSgMd, &_s16CoreTransferable0B8Currency_pSgMR);
      (v36)(v40, 1, 1, v41);
      outlined init with take of URL?(*(v0 + 200), *(v0 + 208), &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
      continue;
    }

    break;
  }

  v67 = *(v0 + 120);
  v68 = *(v37 + v38 + 8);
  v69 = *(v0 + 104);
  *(v0 + 80) = v69;
  v70 = v69;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*(*(v70 - 8) + 16))(boxed_opaque_existential_1, v67, v70);
  v98 = (v39 + *v39);
  v72 = v39[1];
  v73 = swift_task_alloc();
  *(v0 + 368) = v73;
  *v73 = v0;
  v73[1] = Transferable._data(contentType:);

  return v98(v0 + 16, v0 + 56);
}

uint64_t Transferable._data(contentType:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 320);
  v8 = *v3;
  v4[41] = a1;
  v4[42] = a2;
  v4[43] = v2;

  if (v2)
  {
    v6 = Transferable._data(contentType:);
  }

  else
  {
    v6 = Transferable._data(contentType:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

size_t static Transferable.writableContentTypes.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static Transferable.resolvedRepresentations()(a1, a2);
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_33:

    return MEMORY[0x277D84F90];
  }

  v10 = v8;
  v11 = type metadata accessor for ResolvedTransferRepresentation();
  result = v10;
  v13 = 0;
  v14 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v15 = result + v14;
  v16 = *(*(v11 - 8) + 72);
  v17 = *(v11 + 32);
  v18 = v14 + v17;
  while (!*(result + v18))
  {
    v18 += v16;
    if (v9 == ++v13)
    {
      goto LABEL_33;
    }
  }

  v19 = v15 + v17;
  v20 = 1;
  while (2)
  {
    if (v13 == v9)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    do
    {
      v21 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v21 == v9)
      {
        goto LABEL_15;
      }

      if (v21 >= v9)
      {
        goto LABEL_39;
      }

      ++v13;
    }

    while (!*(v19 + v16 * v21));
    v13 = v21;
    if (!__OFADD__(v20++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_15:
  if (!v20)
  {
    goto LABEL_33;
  }

  v31 = result;
  v37 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 & ~(v20 >> 63), 0);
  v23 = 0;
  v24 = v37;
  v25 = v14 + *(v11 + 32);
  while (!*(v31 + v25))
  {
    v25 += v16;
    if (v9 == ++v23)
    {
      v23 = v9;
      break;
    }
  }

  if (v20 < 0)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v36 = 0;
  v32 = v35 + 32;
  v33 = (v35 + 16);
  v34 = v20;
  while (2)
  {
    if (v23 >= v9)
    {
      goto LABEL_40;
    }

    (*v33)(v7, v15 + v16 * v23 + *(v11 + 20), v4);
    v37 = v24;
    v27 = *(v24 + 16);
    v26 = *(v24 + 24);
    if (v27 >= v26 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1);
      v24 = v37;
    }

    v28 = v35;
    ++v36;
    *(v24 + 16) = v27 + 1;
    result = (*(v28 + 32))(v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v27, v7, v4);
    do
    {
      v29 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v29 == v9)
      {
        v23 = v9;
        goto LABEL_23;
      }

      if (v29 >= v9)
      {
        goto LABEL_37;
      }

      ++v23;
    }

    while (!*(v15 + v29 * v16 + *(v11 + 32)));
    v23 = v29;
LABEL_23:
    if (v36 != v34)
    {
      continue;
    }

    break;
  }

  return v24;
}

uint64_t static Transferable.resolvedRepresentations(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v5 = type metadata accessor for ResolvedTransferRepresentation();
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = type metadata accessor for UTType();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = static Transferable.resolvedRepresentations()(a2, a3);
  outlined init with copy of UTType?(v41, v19, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    outlined destroy of UTType?(v19, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    if (*(v25 + 16))
    {
      v26 = v40;
      outlined init with copy of ResolvedTransferRepresentation(v25 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v15, type metadata accessor for ResolvedTransferRepresentation);
      v27 = 0;
    }

    else
    {
      v27 = 1;
      v26 = v40;
    }

    v30 = v27;
    v31 = v39;
    (*(v26 + 56))(v15, v30, 1, v39);
    outlined init with copy of UTType?(v15, v13, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
    if ((*(v26 + 48))(v13, 1, v31) == 1)
    {
      outlined destroy of UTType?(v15, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      return MEMORY[0x277D84F90];
    }

    else
    {
      v32 = v13;
      v33 = v38;
      outlined init with take of ResolvedTransferRepresentation(v32, v38, type metadata accessor for ResolvedTransferRepresentation);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMd, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMR);
      v34 = *(v26 + 72);
      v35 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_20E3FD830;
      outlined init with take of ResolvedTransferRepresentation(v33, v29 + v35, type metadata accessor for ResolvedTransferRepresentation);
      outlined destroy of UTType?(v15, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
    }
  }

  else
  {
    v28 = (*(v21 + 32))(v24, v19, v20);
    MEMORY[0x28223BE20](v28);
    *(&v37 - 2) = v24;
    v29 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in static Transferable.resolvedRepresentations(for:), (&v37 - 4), v25);
    (*(v21 + 8))(v24, v20);
  }

  return v29;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ResolvedTransferRepresentation();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      outlined init with copy of ResolvedTransferRepresentation(a3 + v16 + v17 * v14, v13, type metadata accessor for ResolvedTransferRepresentation);
      v18 = a1(v13);
      if (v3)
      {
        outlined destroy of ResolvedTransferRepresentation(v13, type metadata accessor for ResolvedTransferRepresentation);

        goto LABEL_15;
      }

      if (v18)
      {
        outlined init with take of ResolvedTransferRepresentation(v13, v25, type metadata accessor for ResolvedTransferRepresentation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = outlined init with take of ResolvedTransferRepresentation(v25, v15 + v16 + v21 * v17, type metadata accessor for ResolvedTransferRepresentation);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = outlined destroy of ResolvedTransferRepresentation(v13, type metadata accessor for ResolvedTransferRepresentation);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t Transferable.url(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v7 = type metadata accessor for SentTransferredFile(0);
  v5[18] = v7;
  v8 = *(v7 - 8);
  v5[19] = v8;
  v9 = *(v8 + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](Transferable.url(from:), 0, 0);
}

uint64_t Transferable.url(from:)()
{
  v1 = *(v0 + 104);
  v2 = (v1 + *(type metadata accessor for ResolvedTransferRepresentation() + 32));
  v3 = *v2;
  *(v0 + 168) = *v2;
  *(v0 + 176) = v2[1];
  if (v3)
  {
    v4 = *(v0 + 128);
    v12 = *(v0 + 112);
    *(v0 + 80) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v4);

    v13 = (v3 + *v3);
    v6 = v3[1];
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = Transferable.url(from:);

    return v13(v0 + 16, v0 + 56);
  }

  else
  {
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v9 = *(v0 + 160);
    v10 = *(v0 + 136);

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = Transferable.url(from:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v4 = Transferable.url(from:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v0[21]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
  v5 = swift_dynamicCast();
  v6 = *(v3 + 56);
  if (v5)
  {
    v7 = v0[20];
    v8 = v0[17];
    v9 = v0[12];
    v6(v8, 0, 1, v0[18]);
    outlined init with take of ResolvedTransferRepresentation(v8, v7, type metadata accessor for SentTransferredFile);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 32))(v9, v7, v10);
  }

  else
  {
    v12 = v0[17];
    v6(v12, 1, 1, v0[18]);
    outlined destroy of UTType?(v12, &_s16CoreTransferable19SentTransferredFileVSgMd, &_s16CoreTransferable19SentTransferredFileVSgMR);
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v13 = v0[20];
    v14 = v0[17];
  }

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[22];
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v0[21]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[17];

  v5 = v0[1];

  return v5();
}

uint64_t Transferable.data(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  return MEMORY[0x2822009F8](Transferable.data(from:), 0, 0);
}

uint64_t Transferable.data(from:)()
{
  v1 = *(v0 + 112);
  v2 = (v1 + *(type metadata accessor for ResolvedTransferRepresentation() + 32));
  v3 = *v2;
  *(v0 + 144) = *v2;
  *(v0 + 152) = v2[1];
  if (v3)
  {
    v4 = *(v0 + 136);
    v10 = *(v0 + 120);
    *(v0 + 80) = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v4);

    v11 = (v3 + *v3);
    v6 = v3[1];
    v7 = swift_task_alloc();
    *(v0 + 160) = v7;
    *v7 = v0;
    v7[1] = Transferable.data(from:);

    return v11(v0 + 16, v0 + 56);
  }

  else
  {
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v6 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = Transferable.data(from:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v4 = Transferable.data(from:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[19];
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v0[18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
  if (swift_dynamicCast())
  {
    v2 = v0[12];
    v3 = v0[13];
    v4 = v0[1];

    return v4(v2, v3);
  }

  else
  {
    type metadata accessor for TransferableError();
    lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, type metadata accessor for TransferableError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

{
  v1 = v0[19];
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v0[18]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v2 = v0[21];
  v3 = v0[1];

  return v3();
}

uint64_t _contentType(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v21 = *(v2 - 8);
  v22 = v2;
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v23 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLResourceValues();
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  URL.pathExtension.getter();
  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)();
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    outlined destroy of UTType?(v15, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20E3FD830;
    v17 = *MEMORY[0x277CBE7B8];
    *(inited + 32) = *MEMORY[0x277CBE7B8];
    v18 = v17;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of ResolvedTransferRepresentation(inited + 32, type metadata accessor for NSURLResourceKey);
    URL.resourceValues(forKeys:)();

    URLResourceValues.contentType.getter();
    return (*(v20 + 8))(v8, v5);
  }

  else
  {
    (*(v10 + 32))(a1, v15, v9);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSURLResourceKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x20F32D490](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSURLResourceKey()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x20F32D560](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSURLResourceKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSURLResourceKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSURLResourceKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSURLResourceKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x20F32D490](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSURLResourceKey@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
  v3 = lazy protocol witness table accessor for type TransferableError and conformance TransferableError(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for ResolvedTransferRepresentation();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR, MEMORY[0x277D85578]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMd, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMR, type metadata accessor for ResolvedTransferRepresentation);
  *v3 = result;
  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t specialized LazyFilterSequence<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v6 = a2;
  if (a2 >= result)
  {
    if (result == a2)
    {
      return 0;
    }

    v7 = 1;
    v8 = a2;
    v6 = result;
  }

  else
  {
    v7 = -1;
    v8 = result;
  }

  v9 = 0;
  v10 = *(a3 + 16);
LABEL_8:
  while (2)
  {
    v11 = __OFADD__(v9, v7);
    v9 += v7;
    if (v11)
    {
LABEL_18:
      __break(1u);
    }

    else if (v6 != v10)
    {
      do
      {
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        if (v12 == v10)
        {
          v6 = v10;
          if (v10 == v8)
          {
            return v9;
          }

          goto LABEL_8;
        }

        if (v12 >= v10)
        {
          goto LABEL_17;
        }

        v13 = *(type metadata accessor for ResolvedTransferRepresentation() - 8);
        result = a4(a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12);
        ++v6;
      }

      while ((result & 1) == 0);
      v6 = v12;
      if (v12 != v8)
      {
        continue;
      }

      return v9;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransferableSupportError and conformance TransferableSupportError()
{
  result = lazy protocol witness table cache variable for type TransferableSupportError and conformance TransferableSupportError;
  if (!lazy protocol witness table cache variable for type TransferableSupportError and conformance TransferableSupportError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferableSupportError and conformance TransferableSupportError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferableSupportError and conformance TransferableSupportError;
  if (!lazy protocol witness table cache variable for type TransferableSupportError and conformance TransferableSupportError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferableSupportError and conformance TransferableSupportError);
  }

  return result;
}

BOOL partial apply for closure #2 in static Transferable.exportedContentTypes(visibility:)(uint64_t a1)
{
  v3[1] = *(v1 + 16);
  v3[0] = *(a1 + *(type metadata accessor for ResolvedTransferRepresentation() + 44));
  return TransferRepresentationVisibility.conforms(to:)(v3);
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with take of ResolvedTransferRepresentation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #2 in static Transferable.resolvedRepresentations(for:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = a1 + *(type metadata accessor for ResolvedTransferRepresentation() + 20);
  return UTType.conforms(to:)() & 1;
}

uint64_t outlined destroy of UTType?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of UTType?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of ResolvedTransferRepresentation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd, &_ss11_SetStorageCySo16NSURLResourceKeyaGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t outlined destroy of ResolvedTransferRepresentation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for NSURLResourceKey()
{
  if (!lazy cache variable for type metadata for NSURLResourceKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSURLResourceKey);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TransferableError and conformance TransferableError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static AttributedString.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = type metadata accessor for UTType();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMR);
  v5 = *(*(v46 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v46);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v40 = &v39 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMR);
  v44 = v12;
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v43 = &v39 - v17;
  static UTType.flatRTFD.getter();
  v18 = type metadata accessor for AttributedString();
  v19 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40]);
  DataRepresentation.init(contentType:exporting:importing:)(v4, &async function pointer to closure #1 in static AttributedString.flatRTFDRepresentation.getter, 0, &async function pointer to closure #2 in static AttributedString.flatRTFDRepresentation.getter, 0, v18, v19);
  v39 = lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMR);
  v20 = v46;
  TransferRepresentation.exportingCondition(_:)(closure #3 in static AttributedString.flatRTFDRepresentation.getter, 0, v46, v16);
  outlined destroy of UTType?(v11, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMR);
  v42 = lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type _ConditionalTransferRepresentation<DataRepresentation<AttributedString>> and conformance _ConditionalTransferRepresentation<A>, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMR);
  static TransferRepresentationBuilder.buildExpression<A>(_:)(v16, v18, v12, v42);
  outlined destroy of UTType?(v16, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMR);
  static UTType.rtf.getter();
  v21 = v40;
  DataRepresentation.init(contentType:exporting:importing:)(v4, &async function pointer to closure #1 in static AttributedString.rtfRepresentation.getter, 0, &async function pointer to closure #2 in static AttributedString.rtfRepresentation.getter, 0, v18, v19);
  v22 = v20;
  v23 = v20;
  v24 = v39;
  static TransferRepresentationBuilder.buildExpression<A>(_:)(v21, v18, v23, v39);
  outlined destroy of UTType?(v21, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMR);
  static UTType.html.getter();
  v25 = v41;
  DataRepresentation.init(importedContentType:importing:)(v4, &async function pointer to closure #1 in static AttributedString.htmlRepresentation.getter, 0, v41);
  static TransferRepresentationBuilder.buildExpression<A>(_:)(v25, v18, v22, v24);
  outlined destroy of UTType?(v25, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMR);
  v26 = lazy protocol witness table accessor for type String and conformance String();
  ProxyRepresentation.init(exporting:importing:)(closure #1 in static AttributedString.transferRepresentation.getter, 0, closure #2 in static AttributedString.transferRepresentation.getter, 0, v18, MEMORY[0x277D837D0], v19, v26, &v50);
  v47 = v50;
  v48 = v51;
  v49 = v52;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable19ProxyRepresentationVy10Foundation16AttributedStringVSSGMd, &_s16CoreTransferable19ProxyRepresentationVy10Foundation16AttributedStringVSSGMR);
  v28 = lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(&lazy protocol witness table cache variable for type ProxyRepresentation<AttributedString, String> and conformance ProxyRepresentation<A, B>, &_s16CoreTransferable19ProxyRepresentationVy10Foundation16AttributedStringVSSGMd, &_s16CoreTransferable19ProxyRepresentationVy10Foundation16AttributedStringVSSGMR);
  static TransferRepresentationBuilder.buildExpression<A>(_:)(&v47, v18, v27, v28);
  v29 = v48;
  v30 = v49;
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v47);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v29);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v30);
  v31 = v54;
  v32 = v55;
  v50 = v53;
  v51 = v54;
  v52 = v55;
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v53);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v31);
  outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v32);
  v33 = v43;
  static TransferRepresentationBuilder.buildBlock<A, B, C, D>(_:_:_:_:)(v43, v11, v21, &v50, v18, v44, v46, v46, v45, v27, v42);
  v34 = v51;
  v35 = v52;
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v50);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v34);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v35);
  v36 = v54;
  v37 = v55;
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v53);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v36);
  outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v37);
  outlined destroy of UTType?(v21, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMR);
  outlined destroy of UTType?(v11, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMd, &_s16CoreTransferable18DataRepresentationVy10Foundation16AttributedStringVGMR);
  return outlined destroy of UTType?(v33, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMd, &_s16CoreTransferable34_ConditionalTransferRepresentationVyAA04DataE0Vy10Foundation16AttributedStringVGGMR);
}

uint64_t closure #1 in static AttributedString.transferRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AttributedString.CharacterView();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  AttributedString.characters.getter();
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x277CC8B30]);
  result = String.init<A>(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t closure #2 in static AttributedString.transferRepresentation.getter(uint64_t *a1)
{
  v2 = type metadata accessor for AttributeContainer();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *a1;
  v4 = a1[1];

  AttributeContainer.init()();
  return AttributedString.init(_:attributes:)();
}

uint64_t closure #1 in static AttributedString.flatRTFDRepresentation.getter(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[18] = a1;
  v2 = type metadata accessor for AttributedString();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in static AttributedString.flatRTFDRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static AttributedString.flatRTFDRepresentation.getter()
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  type metadata accessor for NSAttributedString();
  (*(v2 + 16))(v1, v4, v3);
  v5 = NSAttributedString.init(_:)();
  v6 = [v5 length];
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E3FD830;
  v9 = objc_opt_self();
  v10 = v5;
  v11 = [v9 documentType];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v0 + 120) = v12;
  *(v0 + 128) = v14;
  v15 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v16 = [v9 rtfd];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(inited + 96) = v15;
  *(inited + 72) = v17;
  *(inited + 80) = v19;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UTType?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 136) = 0;
  v21 = [v7 dataFromAttributedString:v10 range:0 documentAttributes:v6 error:{isa, v0 + 136}];

  v22 = *(v0 + 136);
  v23 = *(v0 + 168);
  if (v21)
  {
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = *(v0 + 8);
    v28 = *MEMORY[0x277D85DE8];

    return v27(v24, v26);
  }

  else
  {
    v30 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v31 = *(v0 + 8);
    v32 = *MEMORY[0x277D85DE8];

    return v31();
  }
}

uint64_t closure #2 in static AttributedString.flatRTFDRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #2 in static AttributedString.flatRTFDRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static AttributedString.flatRTFDRepresentation.getter()
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = v0[19];
  v1 = v0[20];
  v3 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E3FD830;
  v6 = objc_opt_self();
  v7 = [v6 documentType];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v0[15] = v8;
  v0[16] = v10;
  v11 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v12 = [v6 rtfd];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(inited + 96) = v11;
  *(inited + 72) = v13;
  *(inited + 80) = v15;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UTType?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[17] = 0;
  v17 = [v3 attributedStringFromData:isa options:v16 documentAttributes:0 error:v0 + 17];

  v18 = v0[17];
  if (v17)
  {
    v19 = v0[18];
    v20 = v18;
    AttributedString.init(_:)();
  }

  else
  {
    v23 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v21 = v0[1];
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t closure #1 in static AttributedString.rtfRepresentation.getter(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[18] = a1;
  v2 = type metadata accessor for AttributedString();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in static AttributedString.rtfRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static AttributedString.rtfRepresentation.getter()
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  type metadata accessor for NSAttributedString();
  (*(v2 + 16))(v1, v4, v3);
  v5 = NSAttributedString.init(_:)();
  v6 = [v5 length];
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E3FD830;
  v9 = objc_opt_self();
  v10 = v5;
  v11 = [v9 documentType];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v0 + 120) = v12;
  *(v0 + 128) = v14;
  v15 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v16 = [v9 rtf];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(inited + 96) = v15;
  *(inited + 72) = v17;
  *(inited + 80) = v19;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UTType?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 136) = 0;
  v21 = [v7 dataFromAttributedString:v10 range:0 documentAttributes:v6 error:{isa, v0 + 136}];

  v22 = *(v0 + 136);
  v23 = *(v0 + 168);
  if (v21)
  {
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = *(v0 + 8);
    v28 = *MEMORY[0x277D85DE8];

    return v27(v24, v26);
  }

  else
  {
    v30 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v31 = *(v0 + 8);
    v32 = *MEMORY[0x277D85DE8];

    return v31();
  }
}

uint64_t closure #2 in static AttributedString.rtfRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #2 in static AttributedString.rtfRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static AttributedString.rtfRepresentation.getter()
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = v0[19];
  v1 = v0[20];
  v3 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E3FD830;
  v6 = objc_opt_self();
  v7 = [v6 documentType];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v0[15] = v8;
  v0[16] = v10;
  v11 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v12 = [v6 rtf];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(inited + 96) = v11;
  *(inited + 72) = v13;
  *(inited + 80) = v15;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UTType?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[17] = 0;
  v17 = [v3 attributedStringFromData:isa options:v16 documentAttributes:0 error:v0 + 17];

  v18 = v0[17];
  if (v17)
  {
    v19 = v0[18];
    v20 = v18;
    AttributedString.init(_:)();
  }

  else
  {
    v23 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v21 = v0[1];
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t closure #1 in static AttributedString.htmlRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in static AttributedString.htmlRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static AttributedString.htmlRepresentation.getter()
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = v0[19];
  v1 = v0[20];
  v3 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E3FD830;
  v6 = objc_opt_self();
  v7 = [v6 documentType];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v0[15] = v8;
  v0[16] = v10;
  v11 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v12 = [v6 html];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(inited + 96) = v11;
  *(inited + 72) = v13;
  *(inited + 80) = v15;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UTType?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[17] = 0;
  v17 = [v3 attributedStringFromData:isa options:v16 documentAttributes:0 error:v0 + 17];

  v18 = v0[17];
  if (v17)
  {
    v19 = v0[18];
    v20 = v18;
    AttributedString.init(_:)();
  }

  else
  {
    v23 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v21 = v0[1];
  v22 = *MEMORY[0x277D85DE8];

  return v21();
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

uint64_t lazy protocol witness table accessor for type DataRepresentation<AttributedString> and conformance DataRepresentation<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AttributedString and conformance AttributedString(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = MEMORY[0x20F32D890](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x20F32D720](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (AnyHashable, Any)(v4, v13);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with copy of (AnyHashable, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}