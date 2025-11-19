BOOL sub_23B2D08A0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_23B2D08E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B2D0904(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_23B2D0934@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_23B2D0994@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_analysis;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_23B2D09F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_23B2D80D4(v4);
}

uint64_t sub_23B2D0A34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_preferredInteractionTypes;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_23B2D0A8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_preferredInteractionTypes;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_23B2D3748();
}

char *sub_23B2D0B44@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  result = ImageAnalysisInteraction.selectedRanges.getter();
  *a2 = result;
  return result;
}

id sub_23B2D0BB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) actionInfoEdgeInsets];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_23B2D0C20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) actionInfoCustomFont];
  *a2 = result;
  return result;
}

uint64_t sub_23B2D0C8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = ImageAnalysisInteraction.highlightedSubjects.getter();
  *a2 = result;
  return result;
}

uint64_t sub_23B2D0CD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E410, "D\n");
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_23B2D0DE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

__n128 sub_23B2D0E54@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

id sub_23B2D0EB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) zoomFactor];
  *a2 = v4;
  return result;
}

id sub_23B2D0F98@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) isTorchOn];
  *a2 = result;
  return result;
}

uint64_t sub_23B2D0FFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_23B2D105C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_23B2D1100()
{
  MEMORY[0x23EE99590](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B2D1148()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B2D11A0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23B2D11D8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double RecognizedItem.Bounds.topLeft.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

double RecognizedItem.Bounds.topRight.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

double RecognizedItem.Bounds.bottomRight.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

double RecognizedItem.Bounds.bottomLeft.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t RecognizedItem.Text.transcript.getter()
{
  v1 = (v0 + *(type metadata accessor for RecognizedItem.Text(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

id RecognizedItem.Text.observation.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecognizedItem.Text(0) + 28));

  return v1;
}

uint64_t _s9VisionKit14RecognizedItemO4TextV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B2EADC0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23B2D1488@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 20);
  v5 = *(v4 + 48);
  v12 = *(v4 + 32);
  v13 = v5;
  v14 = *(v4 + 64);
  v6 = v14;
  v7 = *(v4 + 16);
  v11[0] = *v4;
  v8 = v11[0];
  v11[1] = v7;
  *(a2 + 32) = v12;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *a2 = v8;
  *(a2 + 16) = v7;
  return sub_23B2D135C(v11, v10);
}

uint64_t RecognizedItem.Barcode.payloadStringValue.getter()
{
  v1 = (v0 + *(type metadata accessor for RecognizedItem.Barcode(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

id RecognizedItem.Barcode.observation.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecognizedItem.Barcode(0) + 28));

  return v1;
}

uint64_t RecognizedItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RecognizedItem.Barcode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecognizedItem.Text(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecognizedItem(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D17E8(v2, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B2D184C(v15, v7, type metadata accessor for RecognizedItem.Barcode);
    v16 = sub_23B2EADC0();
    (*(*(v16 - 8) + 16))(a1, v7, v16);
    v17 = v7;
    v18 = type metadata accessor for RecognizedItem.Barcode;
  }

  else
  {
    sub_23B2D184C(v15, v11, type metadata accessor for RecognizedItem.Text);
    v19 = sub_23B2EADC0();
    (*(*(v19 - 8) + 16))(a1, v11, v19);
    v17 = v11;
    v18 = type metadata accessor for RecognizedItem.Text;
  }

  return sub_23B2D18B4(v17, v18);
}

uint64_t sub_23B2D17B0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B2D17E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecognizedItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B2D184C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B2D18B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 RecognizedItem.bounds.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RecognizedItem.Barcode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for RecognizedItem.Text(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = type metadata accessor for RecognizedItem(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_23B2D17E8(v2, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B2D184C(v15, v7, type metadata accessor for RecognizedItem.Barcode);
    v16 = &v7[*(v4 + 20)];
    v17 = *(v16 + 3);
    v30 = *(v16 + 2);
    v31 = v17;
    v32 = *(v16 + 8);
    v18 = *(v16 + 1);
    v28 = *v16;
    v29 = v18;
    sub_23B2D135C(&v28, v27);
    v19 = v7;
    v20 = type metadata accessor for RecognizedItem.Barcode;
  }

  else
  {
    sub_23B2D184C(v15, v11, type metadata accessor for RecognizedItem.Text);
    v21 = &v11[*(v8 + 20)];
    v22 = *(v21 + 3);
    v30 = *(v21 + 2);
    v31 = v22;
    v32 = *(v21 + 8);
    v23 = *(v21 + 1);
    v28 = *v21;
    v29 = v23;
    sub_23B2D135C(&v28, v27);
    v19 = v11;
    v20 = type metadata accessor for RecognizedItem.Text;
  }

  sub_23B2D18B4(v19, v20);
  v24 = v31;
  *(a1 + 32) = v30;
  *(a1 + 48) = v24;
  *(a1 + 64) = v32;
  result = v29;
  *a1 = v28;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23B2D1B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for RecognizedItem.Barcode(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecognizedItem.Text(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D17E8(v4, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B2D184C(v17, v9, type metadata accessor for RecognizedItem.Barcode);
    v18 = sub_23B2EADC0();
    (*(*(v18 - 8) + 16))(a2, v9, v18);
    v19 = v9;
    v20 = type metadata accessor for RecognizedItem.Barcode;
  }

  else
  {
    sub_23B2D184C(v17, v14, type metadata accessor for RecognizedItem.Text);
    v21 = sub_23B2EADC0();
    (*(*(v21 - 8) + 16))(a2, v14, v21);
    v19 = v14;
    v20 = type metadata accessor for RecognizedItem.Text;
  }

  return sub_23B2D18B4(v19, v20);
}

uint64_t sub_23B2D1D78()
{
  result = type metadata accessor for RecognizedItem.Text(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RecognizedItem.Barcode(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23B2D1E10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B2D1E58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B2D1EE0()
{
  result = sub_23B2EADC0();
  if (v1 <= 0x3F)
  {
    result = sub_23B2D2208(319, &qword_27E12E148, 0x277CE2DE0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B2EADC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 64);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B2EADC0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 64) = (a2 - 1);
  }

  return result;
}

void sub_23B2D2130()
{
  sub_23B2EADC0();
  if (v0 <= 0x3F)
  {
    sub_23B2D28C8(319, &qword_27E12E160, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23B2D2208(319, &qword_27E12E168, 0x277CE2BF8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B2D2208(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B2D2288(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B2D22A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B2D234C(uint64_t a1, id *a2)
{
  result = sub_23B2EAEF0();
  *a2 = 0;
  return result;
}

uint64_t sub_23B2D23C4(uint64_t a1, id *a2)
{
  v3 = sub_23B2EAF00();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23B2D2444@<X0>(uint64_t *a1@<X8>)
{
  sub_23B2EAF10();
  v2 = sub_23B2EAEE0();

  *a1 = v2;
  return result;
}

uint64_t sub_23B2D249C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23B2EAEE0();

  *a2 = v5;
  return result;
}

uint64_t sub_23B2D24E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23B2EAF10();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23B2D2510(uint64_t a1)
{
  v2 = sub_23B2D2614(&qword_27E12E1A0, type metadata accessor for VNBarcodeSymbology);
  v3 = sub_23B2D2614(&qword_27E12E1A8, type metadata accessor for VNBarcodeSymbology);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23B2D2614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B2D26A4()
{
  v1 = *v0;
  v2 = sub_23B2EAF10();
  v3 = MEMORY[0x23EE98CB0](v2);

  return v3;
}

uint64_t sub_23B2D26E0()
{
  v1 = *v0;
  sub_23B2EAF10();
  sub_23B2EAF20();
}

uint64_t sub_23B2D2734()
{
  v1 = *v0;
  sub_23B2EAF10();
  sub_23B2EB220();
  sub_23B2EAF20();
  v2 = sub_23B2EB240();

  return v2;
}

uint64_t sub_23B2D27A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23B2EAF10();
  v6 = v5;
  if (v4 == sub_23B2EAF10() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23B2EB1A0();
  }

  return v9 & 1;
}

void sub_23B2D28C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_23B2D297C(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) view];

  return v1;
}

id ImageAnalysisInteractionDelegate.contentView(for:)(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) view];

  return v1;
}

id sub_23B2D29FC(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) view];
  v2 = [v1 window];

  v3 = [v2 rootViewController];
  return v3;
}

id ImageAnalysisInteractionDelegate.presentingViewController(for:)(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) view];
  v2 = [v1 window];

  v3 = [v2 rootViewController];
  return v3;
}

id ImageAnalysisInteraction.view.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) view];

  return v1;
}

void *sub_23B2D2C34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_23B2D2C60@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_23B2D2CFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id ImageAnalysisInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ImageAnalysisInteraction.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D78510]) init];
  v3 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_proxy;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for ImageAnalysisInteractionDelegateProxy()) init];
  *&v0[OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_analysis] = 0;
  *&v0[OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_preferredInteractionTypes] = 0;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v11, sel_init);
  v5 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction;
  v6 = *&v4[OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction];
  v7 = v4;
  [v6 setActionInfoViewHidden_];
  [*&v4[v5] set:1 isPublicAPI:?];
  v8 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_proxy;
  [*&v4[v5] setDelegate_];
  [*&v4[v5] setAnalysisButtonRequiresVisibleContentGating_];
  v9 = *&v7[v8];
  swift_unknownObjectWeakAssign();

  return v7;
}

uint64_t ImageAnalysisInteraction.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

id sub_23B2D2F40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate;
  swift_beginAccess();
  *(v5 + 8) = v3;
  swift_unknownObjectWeakAssign();
  v6 = *(v4 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return [v6 set:Strong != 0 publicAPIDelegateExists:?];
}

uint64_t ImageAnalysisInteraction.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = *(v2 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  [v5 set:Strong != 0 publicAPIDelegateExists:?];
  return swift_unknownObjectRelease();
}

void (*ImageAnalysisInteraction.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_23B2D3120;
}

void sub_23B2D3120(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v7 = v3[5];
    v6 = v3[6];
    swift_endAccess();
    swift_unknownObjectRelease();
    v8 = *(v7 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      swift_unknownObjectRelease();
    }

    [v8 set:Strong != 0 publicAPIDelegateExists:?];
  }

  free(v3);
}

char *ImageAnalysisInteraction.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) init];
  v5 = &v4[OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate];
  swift_beginAccess();
  *(v5 + 1) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t ImageAnalysisInteraction.analysis.getter()
{
  v1 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_analysis;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ImageAnalysisInteraction.analysis.setter(uint64_t a1)
{
  sub_23B2D80D4(a1);
}

void (*ImageAnalysisInteraction.analysis.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_analysis;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_23B2D3378;
}

void sub_23B2D3378(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
    v6 = *(v4 + v3[4]);
    if (v6)
    {
      v7 = *(v6 + 16);
    }

    else
    {
      v7 = 0;
    }

    [v5 setAnalysis_];
  }

  free(v3);
}

Swift::Void __swiftcall ImageAnalysisInteraction.willMove(to:)(UIView_optional *to)
{
  if (!to)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      [v3 removeInteraction_];
    }
  }
}

Swift::Void __swiftcall ImageAnalysisInteraction.didMove(to:)(UIView_optional *to)
{
  if (to)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
    v3 = to;
    [(UIView_optional *)v3 addInteraction:v2];
    sub_23B2D2208(0, &qword_27E12E1F0, 0x277D755E8);
    [v2 setWantsAutomaticContentsRectCalculation_];
  }
}

uint64_t ImageAnalysisInteraction.preferredInteractionTypes.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_preferredInteractionTypes;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void ImageAnalysisInteraction.preferredInteractionTypes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_preferredInteractionTypes;
  swift_beginAccess();
  *(v1 + v3) = v2;
  sub_23B2D3748();
}

void sub_23B2D3748()
{
  v1 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_preferredInteractionTypes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  [v3 set:(v2 & 0x21) != 0 isInPublicAutomaticMode:?];
  if (v2)
  {
    if ([v3 highlightSelectableItems])
    {
      v5 = 11;
    }

    else
    {
      v5 = 9;
    }
  }

  else
  {
    if ((v2 & 0x20) == 0)
    {
      v4 = *(v0 + v1);
      if (v4)
      {
        if ((v4 & 0x20) == 0)
        {
          v5 = 9;
          if ((v4 & 2) == 0)
          {
            if ((v4 & 4) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_17;
          }

          goto LABEL_22;
        }
      }

      else if ((v4 & 0x20) == 0)
      {
        if ((v4 & 2) == 0)
        {
          v5 = 0;
          if ((v4 & 4) == 0)
          {
LABEL_23:
            if ((v4 & 8) == 0)
            {
LABEL_24:
              if ((v4 & 0x10) == 0)
              {
                goto LABEL_26;
              }

              goto LABEL_25;
            }

LABEL_18:
            v5 |= 8uLL;
            if ((v4 & 0x10) == 0)
            {
              goto LABEL_26;
            }

LABEL_25:
            v5 |= 4uLL;
            goto LABEL_26;
          }

LABEL_17:
          v5 |= 2uLL;
          if ((v4 & 8) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_18;
        }

        v5 = 1;
LABEL_22:
        if ((v4 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      v5 = 1;
      goto LABEL_26;
    }

    if ([v3 highlightSelectableItems])
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }
  }

LABEL_26:
  [v3 setActiveInteractionTypes_];
  if (*(v0 + v1))
  {
    v6 = [v3 view];
    if (v6)
    {
      v7 = v6;
      [v6 setUserInteractionEnabled_];
    }
  }
}

void (*ImageAnalysisInteraction.preferredInteractionTypes.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23B2D3940;
}

void sub_23B2D3940(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_23B2D3748();
  }
}

unint64_t ImageAnalysisInteraction.activeInteractionTypes.getter@<X0>(unint64_t *a1@<X8>)
{
  result = [*(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) activeInteractionTypes];
  *a1 = result & 8 | (2 * (result & 3)) & 0xEF | (16 * ((result >> 2) & 1));
  return result;
}

id (*ImageAnalysisInteraction.selectableItemsHighlighted.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  *a1 = v3;
  *(a1 + 8) = [v3 highlightSelectableItems];
  return sub_23B2D3A3C;
}

id (*ImageAnalysisInteraction.allowLongPressForDataDetectorsInTextMode.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  *a1 = v3;
  *(a1 + 8) = [v3 allowLongPressForDataDetectorsInTextMode];
  return sub_23B2D3AFC;
}

uint64_t sub_23B2D3B70(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_23B2EAF10();

  return v4;
}

uint64_t ImageAnalysisInteraction.selectedAttributedText.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) selectedAttributedText];
  if (!v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v3 = sub_23B2EAEE0();
    v4 = [v2 initWithString_];

    v1 = v4;
  }

  return MEMORY[0x28211C2C8](v1);
}

char *ImageAnalysisInteraction.selectedRanges.getter()
{
  v19 = *(v0 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v1 = [v19 selectedRanges];
  sub_23B2D2208(0, &qword_27E12E1F8, 0x277CCAE60);
  v2 = sub_23B2EAF60();

  if (v2 >> 62)
  {
LABEL_22:
    v20 = v2 & 0xFFFFFFFFFFFFFF8;
    v21 = sub_23B2EB160();
  }

  else
  {
    v20 = v2 & 0xFFFFFFFFFFFFFF8;
    v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v18 = MEMORY[0x277D84F90];
  while (v21 != v3)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x23EE98EC0](v3, v2);
    }

    else
    {
      if (v3 >= *(v20 + 16))
      {
        goto LABEL_21;
      }

      v10 = *(v2 + 8 * v3 + 32);
    }

    v11 = v10;
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    [v10 rangeValue];
    v13 = [v19 text];
    if (v13)
    {
      v4 = v13;
      sub_23B2EAF10();
    }

    v5 = sub_23B2EB050();
    v7 = v6;
    v9 = v8;

    ++v3;
    if ((v9 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_23B2D72B0(0, *(v18 + 2) + 1, 1, v18);
      }

      v15 = *(v18 + 2);
      v14 = *(v18 + 3);
      if (v15 >= v14 >> 1)
      {
        v18 = sub_23B2D72B0((v14 > 1), v15 + 1, 1, v18);
      }

      *(v18 + 2) = v15 + 1;
      v16 = &v18[16 * v15];
      *(v16 + 4) = v5;
      *(v16 + 5) = v7;
      v3 = v12;
    }
  }

  return v18;
}

void ImageAnalysisInteraction.selectedRanges.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v17 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = 32;
    do
    {
      v16 = *(a1 + v6);
      v7 = [v3 text];
      if (v7)
      {
        v8 = v7;
        v9 = sub_23B2EAF10();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0xE000000000000000;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E200, &qword_23B2EC150);
      sub_23B2D81C0();
      sub_23B2D826C();
      v12 = sub_23B2EB0B0();
      if ([v5 valueWithRange_])
      {
        MEMORY[0x23EE98CC0]();
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23B2EAF70();
        }

        sub_23B2EAF80();
      }

      v6 += 16;
      --v4;
    }

    while (v4);
  }

  sub_23B2D2208(0, &qword_27E12E1F8, 0x277CCAE60);
  v15 = sub_23B2EAF50();

  [v3 setSelectedRanges_];
}

void (*ImageAnalysisInteraction.selectedRanges.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ImageAnalysisInteraction.selectedRanges.getter();
  return sub_23B2D4114;
}

void sub_23B2D4114(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    ImageAnalysisInteraction.selectedRanges.setter(v5);
  }

  else
  {
    ImageAnalysisInteraction.selectedRanges.setter(*a1);
  }
}

id (*ImageAnalysisInteraction.isSupplementaryInterfaceHidden.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  *a1 = v3;
  *(a1 + 8) = [v3 actionInfoViewHidden];
  return sub_23B2D4350;
}

void (*ImageAnalysisInteraction.supplementaryInterfaceContentInsets.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v4[4] = v5;
  [v5 actionInfoEdgeInsets];
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  return sub_23B2D4454;
}

void sub_23B2D4454(double **a1)
{
  v1 = *a1;
  [*(*a1 + 4) setActionInfoEdgeInsets_];

  free(v1);
}

id ImageAnalysisInteraction.supplementaryInterfaceFont.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) actionInfoCustomFont];

  return v1;
}

void ImageAnalysisInteraction.supplementaryInterfaceFont.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) setActionInfoCustomFont_];
}

void (*ImageAnalysisInteraction.supplementaryInterfaceFont.modify(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  a1[1] = v3;
  *a1 = [v3 actionInfoCustomFont];
  return sub_23B2D4594;
}

void sub_23B2D4594(id *a1)
{
  v1 = *a1;
  [a1[1] setActionInfoCustomFont_];
}

uint64_t ImageAnalysisInteraction.SubjectUnavailable.hashValue.getter()
{
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](0);
  return sub_23B2EB240();
}

uint64_t sub_23B2D4650()
{
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](0);
  return sub_23B2EB240();
}

uint64_t sub_23B2D46BC()
{
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](0);
  return sub_23B2EB240();
}

double ImageAnalysisInteraction.Subject.bounds.getter()
{
  v1 = sub_23B2EAE40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  sub_23B2EAE20();
  v8 = sub_23B2EADF0();
  [v7 imageSubjectBoundsWithIndexes_];
  v10 = v9;

  (*(v2 + 8))(v5, v1);
  return v10;
}

uint64_t ImageAnalysisInteraction.Subject.image.getter()
{
  v2 = sub_23B2EAE40();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *v0;
  v7 = v0[1];
  v1[21] = v5;
  v1[22] = v6;
  v1[23] = v7;

  return MEMORY[0x2822009F8](sub_23B2D48F0, 0, 0);
}

uint64_t sub_23B2D48F0()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  sub_23B2EAE20();
  v4 = sub_23B2EADF0();
  v0[24] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23B2D4A30;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E218, &qword_23B2EC160);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23B2D4C44;
  v0[13] = &block_descriptor;
  v0[14] = v5;
  [v2 loadImageSubjectWithIndexes:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23B2D4A30()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B2D4B10, 0, 0);
}

uint64_t sub_23B2D4B10()
{
  v1 = v0[18];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  if (v1)
  {
    (*(v4 + 8))(v0[21], v0[19]);

    v6 = v0[1];

    return v6(v1);
  }

  else
  {

    sub_23B2D8380();
    swift_allocError();
    swift_willThrow();
    (*(v4 + 8))(v3, v5);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_23B2D4C44(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t static ImageAnalysisInteraction.Subject.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[1];
  v3 = a1[1];
  sub_23B2D2208(0, &qword_27E12E228, 0x277D82BB8);
  return sub_23B2EB0A0() & 1;
}

uint64_t ImageAnalysisInteraction.Subject.hashValue.getter()
{
  v1 = *v0;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](v1);
  return sub_23B2EB240();
}

uint64_t sub_23B2D4D88()
{
  v1 = *v0;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](v1);
  return sub_23B2EB240();
}

uint64_t sub_23B2D4DFC()
{
  v1 = *v0;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](v1);
  return sub_23B2EB240();
}

uint64_t sub_23B2D4E40(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[1];
  v3 = a1[1];
  sub_23B2D2208(0, &qword_27E12E228, 0x277D82BB8);
  return sub_23B2EB0A0() & 1;
}

uint64_t ImageAnalysisInteraction.subjects.getter()
{
  v1[22] = v0;
  v2 = sub_23B2EADD0();
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v4 = *(v3 + 64) + 15;
  v1[25] = swift_task_alloc();
  v5 = sub_23B2EAE40();
  v1[26] = v5;
  v6 = *(v5 - 8);
  v1[27] = v6;
  v7 = *(v6 + 64) + 15;
  v1[28] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E230, &qword_23B2EC170);
  v1[29] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  sub_23B2EAFD0();
  v1[31] = sub_23B2EAFC0();
  v11 = sub_23B2EAF90();
  v1[32] = v11;
  v1[33] = v10;

  return MEMORY[0x2822009F8](sub_23B2D5038, v11, v10);
}

uint64_t sub_23B2D5038()
{
  v1 = *(v0[22] + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v0[34] = v1;
  v0[2] = v0;
  v0[3] = sub_23B2D515C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E238, &qword_23B2EC178);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23B2D54B8;
  v0[13] = &block_descriptor_6;
  v0[14] = v2;
  [v1 beginImageSubjectAnalysisIfNecessaryWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23B2D515C()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B2D5264, v2, v1);
}

uint64_t sub_23B2D5264()
{
  v28 = v0;
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[24];

  v26 = MEMORY[0x277D84FA0];
  v9 = [v1 allSubjectIndexes];
  sub_23B2EAE00();

  sub_23B2EADE0();
  (*(v7 + 8))(v4, v6);
  v10 = *(v5 + 36);
  v11 = (v8 + 8);
  sub_23B2D843C(&qword_27E12E240, MEMORY[0x277CC9A28]);
  while (1)
  {
    v12 = v0[30];
    v14 = v0[25];
    v13 = v0[26];
    v15 = v0[23];
    sub_23B2EB020();
    sub_23B2D843C(&qword_27E12E248, MEMORY[0x277CC9A08]);
    LOBYTE(v12) = sub_23B2EAED0();
    (*v11)(v14, v15);
    if (v12)
    {
      break;
    }

    v16 = v0[34];
    v17 = v0[30];
    v18 = v0[26];
    v19 = sub_23B2EB040();
    v21 = *v20;
    v19(v0 + 18, 0);
    sub_23B2EB030();
    sub_23B2D77BC(v27, v21, v16);
  }

  v22 = v0[28];
  v23 = v0[25];
  sub_23B2D83D4(v0[30]);

  v24 = v0[1];

  return v24(v26);
}

uint64_t sub_23B2D54B8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t ImageAnalysisInteraction.highlightedSubjects.getter()
{
  v1 = sub_23B2EADD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v25[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23B2EAE40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E230, &qword_23B2EC170) - 8);
  v12 = (*(*v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v25[-1] - v13;
  v26 = MEMORY[0x277D84FA0];
  v15 = *(v0 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v16 = [v15 selectedSubjectIndexes];
  sub_23B2EAE00();

  sub_23B2EADE0();
  (*(v7 + 8))(v10, v6);
  v17 = v11[11];
  sub_23B2D843C(&qword_27E12E240, MEMORY[0x277CC9A28]);
  v18 = (v2 + 8);
  while (1)
  {
    sub_23B2EB020();
    sub_23B2D843C(&qword_27E12E248, MEMORY[0x277CC9A08]);
    v19 = sub_23B2EAED0();
    (*v18)(v5, v1);
    if (v19)
    {
      break;
    }

    v20 = sub_23B2EB040();
    v22 = *v21;
    v20(v25, 0);
    sub_23B2EB030();
    sub_23B2D77BC(v25, v22, v15);
  }

  sub_23B2D83D4(v14);
  return v26;
}

id ImageAnalysisInteraction.highlightedSubjects.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23B2EAE40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  if (*(a1 + 16))
  {
    v12 = sub_23B2D5A78(a1);

    sub_23B2D843C(&qword_27E12E250, MEMORY[0x277CC9A28]);
    sub_23B2EB0E0();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 32);
      do
      {
        v15 = *v14++;
        v20[1] = v15;
        sub_23B2EB0C0();
        --v13;
      }

      while (v13);
    }

    (*(v5 + 32))(v11, v9, v4);
    v16 = *(v2 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
    v17 = sub_23B2EADF0();
    [v16 highlightSubjectAtIndexSet:v17 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

    return (*(v5 + 8))(v11, v4);
  }

  else
  {

    v19 = *(v2 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);

    return [v19 highlightSubjectAtIndexSet:0 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];
  }
}

uint64_t sub_23B2D5A78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_23B2E6FEC(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_23B2EB100();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + 16 * result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_23B2E6FEC((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_23B2D8C08(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_23B2D8C08(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void (*ImageAnalysisInteraction.highlightedSubjects.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  v6 = sub_23B2EAE40();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[8] = swift_coroFrameAlloc();
    v5[9] = swift_coroFrameAlloc();
    v5[10] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[8] = malloc(*(v7 + 64));
    v5[9] = malloc(v8);
    v5[10] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[11] = v9;
  *v5 = ImageAnalysisInteraction.highlightedSubjects.getter();
  return sub_23B2D5DD4;
}

void sub_23B2D5DD4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(**a1 + 16);
  if (a2)
  {
    if (v3)
    {
      v4 = v2[8];
      v5 = v2[6];
      v6 = **a1;

      v8 = sub_23B2D5A78(v7);

      sub_23B2D843C(&qword_27E12E250, MEMORY[0x277CC9A28]);
      sub_23B2EB0E0();
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = (v8 + 32);
        do
        {
          v11 = v2[8];
          v12 = v2[6];
          v13 = *v10++;
          v2[2] = v13;
          sub_23B2EB0C0();
          --v9;
        }

        while (v9);
      }

      v15 = v2[8];
      v14 = v2[9];
      v16 = v2[6];
      v17 = v2[7];
      v18 = v2[5];

      (*(v17 + 32))(v14, v15, v16);
      v19 = *(v18 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
      v20 = sub_23B2EADF0();
      [v19 highlightSubjectAtIndexSet:v20 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

      (*(v17 + 8))(v14, v16);
    }

    else
    {
      [*(v2[5] + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) highlightSubjectAtIndexSet:0 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];
    }

    v37 = v2[10];
    v36 = v2[11];
    v39 = v2[8];
    v38 = v2[9];
    v40 = *v2;
  }

  else
  {
    if (v3)
    {
      v21 = v2[10];
      v22 = v2[6];
      v23 = sub_23B2D5A78(**a1);

      sub_23B2D843C(&qword_27E12E250, MEMORY[0x277CC9A28]);
      sub_23B2EB0E0();
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = (v23 + 32);
        do
        {
          v26 = v2[10];
          v27 = v2[6];
          v28 = *v25++;
          v2[4] = v28;
          sub_23B2EB0C0();
          --v24;
        }

        while (v24);
      }

      v30 = v2[10];
      v29 = v2[11];
      v31 = v2[6];
      v32 = v2[7];
      v33 = v2[5];

      (*(v32 + 32))(v29, v30, v31);
      v34 = *(v33 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
      v35 = sub_23B2EADF0();
      [v34 highlightSubjectAtIndexSet:v35 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

      (*(v32 + 8))(v29, v31);
    }

    else
    {
      v41 = v2[5];
      v42 = **a1;

      [*(v41 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) highlightSubjectAtIndexSet:0 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];
    }

    v37 = v2[10];
    v36 = v2[11];
    v39 = v2[8];
    v38 = v2[9];
  }

  free(v36);
  free(v37);
  free(v38);
  free(v39);

  free(v2);
}

uint64_t ImageAnalysisInteraction.subject(at:)(uint64_t a1, double a2, double a3)
{
  *(v4 + 168) = v3;
  *(v4 + 152) = a2;
  *(v4 + 160) = a3;
  *(v4 + 144) = a1;
  sub_23B2EAFD0();
  *(v4 + 176) = sub_23B2EAFC0();
  v6 = sub_23B2EAF90();
  *(v4 + 184) = v6;
  *(v4 + 192) = v5;

  return MEMORY[0x2822009F8](sub_23B2D61F0, v6, v5);
}

uint64_t sub_23B2D61F0()
{
  v1 = *(v0[21] + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v0[25] = v1;
  v0[2] = v0;
  v0[3] = sub_23B2D6314;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E238, &qword_23B2EC178);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23B2D54B8;
  v0[13] = &block_descriptor_9;
  v0[14] = v2;
  [v1 beginImageSubjectAnalysisIfNecessaryWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23B2D6314()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B2D641C, v2, v1);
}

uint64_t sub_23B2D641C()
{
  v1 = [*(v0 + 200) subjectIndexAtPoint_];
  if (v1)
  {
    v2 = v1;
    *(v0 + 208) = [v1 integerValue];

    v3 = swift_task_alloc();
    *(v0 + 216) = v3;
    *v3 = v0;
    v3[1] = sub_23B2D6524;
    v4 = *(v0 + 168);

    return ImageAnalysisInteraction.subjects.getter();
  }

  else
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 144);

    *v7 = 0;
    v7[1] = 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_23B2D6524(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = a1;

  v4 = *(v2 + 192);
  v5 = *(v2 + 184);

  return MEMORY[0x2822009F8](sub_23B2D664C, v5, v4);
}

uint64_t sub_23B2D664C()
{
  v1 = v0[28];
  v2 = v0[22];

  v4 = 0;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v1 + 56);
  v8 = (63 - v5) >> 6;
  while (v7)
  {
    v9 = v4;
LABEL_11:
    v10 = v0[26];
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(v1 + 48);
    if (*(v13 + 16 * v12) == v10)
    {
      v14 = v0[28];
      v15 = v0[18];
      v16 = *(v13 + 16 * v12 + 8);

      *v15 = v10;
      v15[1] = v16;
LABEL_14:
      v19 = v0[1];

      return v19();
    }
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      v17 = v0[28];
      v18 = v0[18];

      *v18 = 0;
      v18[1] = 0;
      goto LABEL_14;
    }

    v7 = *(v1 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImageAnalysisInteraction.image(for:)(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_23B2EAE40();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  sub_23B2EAFD0();
  v2[24] = sub_23B2EAFC0();
  v7 = sub_23B2EAF90();
  v2[25] = v7;
  v2[26] = v6;

  return MEMORY[0x2822009F8](sub_23B2D6878, v7, v6);
}

uint64_t sub_23B2D6878()
{
  v1 = v0[23];
  v2 = v0[19];
  sub_23B2EAE30();
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 56);
  v6 = (63 - v4) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = v0[23];
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = *(*(v2 + 48) + ((v9 << 10) | (16 * v11)));
      v7 = sub_23B2EAE10();
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return MEMORY[0x282200938](v7);
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  v13 = v0[23];
  v14 = v0[19];
  v15 = v0[20];

  v16 = *(v15 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v17 = sub_23B2EADF0();
  v0[27] = v17;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23B2D6A68;
  v18 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E218, &qword_23B2EC160);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23B2D4C44;
  v0[13] = &block_descriptor_13;
  v0[14] = v18;
  [v16 loadImageSubjectWithIndexes:v17 completion:v0 + 10];
  v7 = (v0 + 2);

  return MEMORY[0x282200938](v7);
}

uint64_t sub_23B2D6A68()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B2D6B70, v2, v1);
}

uint64_t sub_23B2D6B70()
{
  v1 = v0[24];

  v2 = v0[18];
  v3 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  if (v2)
  {
    (*(v5 + 8))(v0[23], v0[21]);

    v7 = v0[1];

    return v7(v2);
  }

  else
  {

    sub_23B2D8380();
    swift_allocError();
    swift_willThrow();
    (*(v5 + 8))(v4, v6);

    v9 = v0[1];

    return v9();
  }
}

id ImageAnalysisInteraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23B2D726C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageAnalysisInteractionDelegateProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_23B2D72B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E388, &qword_23B2EC588);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_23B2D73FC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_23B2D75E4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E368, &qword_23B2ECEE0);
  v10 = *(type metadata accessor for RecognizedItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for RecognizedItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_23B2D77BC(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](a2);
  v8 = sub_23B2EB240();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v6 + 48) + 16 * v10);
      if (*v12 == a2)
      {
        v13 = v12[1];
        sub_23B2D2208(0, &qword_27E12E228, 0x277D82BB8);
        v14 = v13;
        v15 = sub_23B2EB0A0();

        if (v15)
        {
          break;
        }
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    *a1 = v18;
    a1[1] = v17;
    v19 = v17;
    return 0;
  }

  else
  {
LABEL_7:
    v21 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v24;
    v23 = a3;
    sub_23B2D7B9C(a2, v23, v10, isUniquelyReferenced_nonNull_native);
    *v24 = v26;
    *a1 = a2;
    a1[1] = v23;
    return 1;
  }
}

uint64_t sub_23B2D7940(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E380, &qword_23B2EC580);
  result = sub_23B2EB130();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_23B2EB220();
      MEMORY[0x23EE98FB0](v20);
      result = sub_23B2EB240();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_23B2D7B9C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a4)
  {
    sub_23B2D7940(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_23B2D7D48();
      goto LABEL_14;
    }

    sub_23B2D7EA4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](a1);
  v12 = sub_23B2EB240();
  v13 = -1 << *(v10 + 32);
  a3 = v12 & ~v13;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    while (1)
    {
      v15 = (*(v10 + 48) + 16 * a3);
      if (*v15 == a1)
      {
        v16 = v15[1];
        sub_23B2D2208(0, &qword_27E12E228, 0x277D82BB8);
        v17 = v16;
        v18 = sub_23B2EB0A0();

        if (v18)
        {
          break;
        }
      }

      a3 = (a3 + 1) & v14;
      if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_23B2EB1C0();
    __break(1u);
  }

LABEL_14:
  v19 = *v24;
  *(*v24 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = a1;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }
}

id sub_23B2D7D48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E380, &qword_23B2EC580);
  v2 = *v0;
  v3 = sub_23B2EB120();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_23B2D7EA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E380, &qword_23B2EC580);
  result = sub_23B2EB130();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_23B2EB220();
      MEMORY[0x23EE98FB0](v19);
      result = sub_23B2EB240();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
      result = v20;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void sub_23B2D80D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_analysis;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  v5 = *(v1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
  v6 = *(v1 + v3);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  [v5 setAnalysis_];
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

unint64_t sub_23B2D81C0()
{
  result = qword_27E12E208;
  if (!qword_27E12E208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E12E200, &qword_23B2EC150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E208);
  }

  return result;
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

unint64_t sub_23B2D826C()
{
  result = qword_27E12E210;
  if (!qword_27E12E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E210);
  }

  return result;
}

uint64_t sub_23B2D82D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_23B2D8380()
{
  result = qword_27E12E220;
  if (!qword_27E12E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E220);
  }

  return result;
}

uint64_t sub_23B2D83D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E230, &qword_23B2EC170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B2D843C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23B2D8488()
{
  result = qword_27E12E258;
  if (!qword_27E12E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E258);
  }

  return result;
}

unint64_t sub_23B2D84E0()
{
  result = qword_27E12E260;
  if (!qword_27E12E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E260);
  }

  return result;
}

unint64_t sub_23B2D8538()
{
  result = qword_27E12E268;
  if (!qword_27E12E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E268);
  }

  return result;
}

unint64_t sub_23B2D8590()
{
  result = qword_27E12E270;
  if (!qword_27E12E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E270);
  }

  return result;
}

unint64_t sub_23B2D85E8()
{
  result = qword_27E12E278;
  if (!qword_27E12E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E278);
  }

  return result;
}

unint64_t sub_23B2D8640()
{
  result = qword_27E12E280;
  if (!qword_27E12E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E280);
  }

  return result;
}

id keypath_get_19Tm@<X0>(void *a1@<X0>, SEL *a2@<X3>, _BYTE *a3@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) *a2];
  *a3 = result;
  return result;
}

uint64_t keypath_set_24Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t getEnumTagSinglePayload for ImageAnalysisInteraction.InteractionTypes(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageAnalysisInteraction.InteractionTypes(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageAnalysisInteraction.SubjectUnavailable(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ImageAnalysisInteraction.SubjectUnavailable(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_23B2D8900(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23B2D8948(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B2D8998(unint64_t a1, double a2, double a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v7 = Strong;
  v8 = Strong + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_5:
    v11 = 1;
    return v11 & 1;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v13 = a1 & 8 | (2 * (a1 & 3)) & 0xEF | (16 * ((a1 >> 2) & 1));
  v11 = (*(v9 + 8))(v7, &v13, ObjectType, v9, a2, a3);

  swift_unknownObjectRelease();
  return v11 & 1;
}

uint64_t sub_23B2D8A90()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = (*(v3 + 24))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_23B2D8B4C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = (*(v3 + 32))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_23B2D8C08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t ImageAnalysis.transcript.getter()
{
  v1 = [*(v0 + 16) transcript];
  v2 = sub_23B2EAF10();

  return v2;
}

Swift::Bool __swiftcall ImageAnalysis.hasResults(for:)(VisionKit::ImageAnalyzer::AnalysisTypes a1)
{
  v2 = *a1.rawValue;
  if ((*a1.rawValue & 1) == 0)
  {
    if ((v2 & 2) != 0)
    {
      v3 = 4;
      if ((v2 & 4) == 0)
      {
        return [*(v1 + 16) hasResultsForAnalysisTypes_];
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 4) == 0)
      {
        return [*(v1 + 16) hasResultsForAnalysisTypes_];
      }
    }

    goto LABEL_11;
  }

  if ((v2 & 2) == 0)
  {
    v3 = 1;
    if ((v2 & 4) == 0)
    {
      return [*(v1 + 16) hasResultsForAnalysisTypes_];
    }

    goto LABEL_11;
  }

  v3 = 5;
  if ((v2 & 4) != 0)
  {
LABEL_11:
    v3 |= 0x10uLL;
  }

  return [*(v1 + 16) hasResultsForAnalysisTypes_];
}

uint64_t ImageAnalysis.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t ImageAnalyzer.Configuration.locales.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

VisionKit::ImageAnalyzer::Configuration __swiftcall ImageAnalyzer.Configuration.init(_:)(VisionKit::ImageAnalyzer::AnalysisTypes a1)
{
  v2 = MEMORY[0x277D84F90];
  *v1 = *a1.rawValue;
  v1[1] = v2;
  result.analysisTypes = a1;
  return result;
}

uint64_t ImageAnalyzer.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x277D78518]) init];
  *(v0 + 16) = v1;
  [v1 set:1 isPublicAPI:?];
  return v0;
}

uint64_t ImageAnalyzer.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D78518]) init];
  *(v0 + 16) = v1;
  [v1 set:1 isPublicAPI:?];
  return v0;
}

uint64_t static ImageAnalyzer.supportedTextRecognitionLanguages.getter()
{
  v0 = [objc_opt_self() supportedRecognitionLanguages];
  v1 = sub_23B2EAF60();

  return v1;
}

uint64_t ImageAnalyzer.analyze(_:configuration:)(uint64_t a1, void *a2)
{
  v3[3] = a1;
  v3[4] = v2;
  v4 = a2[1];
  v3[5] = *a2;
  v3[6] = v4;
  return MEMORY[0x2822009F8](sub_23B2D8FE4, 0, 0);
}

uint64_t sub_23B2D8FE4()
{
  v1 = *(v0 + 40);
  v2 = [*(v0 + 24) imageOrientation];
  if (v1)
  {
    if ((v1 & 2) != 0)
    {
      v3 = 5;
      if ((*(v0 + 40) & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v3 = 1;
    if ((*(v0 + 40) & 4) != 0)
    {
LABEL_11:
      v3 |= 0x10uLL;
    }
  }

  else
  {
    if ((v1 & 2) == 0)
    {
      v3 = 0;
      if ((*(v0 + 40) & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v3 = 4;
    if ((*(v0 + 40) & 4) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = [objc_allocWithZone(MEMORY[0x277D78520]) initWithImage:*(v0 + 24) orientation:v2 requestType:v3];
  *(v0 + 56) = v6;
  v7 = sub_23B2EAF50();
  [v6 setLocales_];

  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  v11 = type metadata accessor for ImageAnalysis();
  *v10 = v0;
  v10[1] = sub_23B2D91A8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000012, 0x800000023B2EF2E0, sub_23B2DA644, v8, v11);
}

uint64_t sub_23B2D91A8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_23B2DA8C4;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_23B2DA8C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t ImageAnalyzer.analyze(_:orientation:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *a3;
  v6 = a3[1];
  v4[5] = v3;
  v4[6] = v5;
  v4[7] = v6;
  return MEMORY[0x2822009F8](sub_23B2D92F0, 0, 0);
}

uint64_t sub_23B2D92F0()
{
  v2 = v0[6];
  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      v3 = 5;
      if ((v2 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v3 = 1;
    if ((v2 & 4) != 0)
    {
LABEL_11:
      v3 |= 0x10uLL;
    }
  }

  else
  {
    if ((v2 & 2) == 0)
    {
      v3 = 0;
      if ((v2 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v3 = 4;
    if ((v2 & 4) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v4 = v0[7];
  v5 = v0[5];
  v6 = [objc_allocWithZone(MEMORY[0x277D78520]) initWithImage:v0[3] orientation:v0[4] requestType:v3];
  v0[8] = v6;
  v7 = sub_23B2EAF50();
  [v6 setLocales_];

  v8 = swift_task_alloc();
  v0[9] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[10] = v10;
  v11 = type metadata accessor for ImageAnalysis();
  *v10 = v0;
  v10[1] = sub_23B2D9494;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x800000023B2EF2E0, sub_23B2DA8C8, v8, v11);
}

uint64_t sub_23B2D9494()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_23B2D961C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_23B2D95B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23B2D95B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23B2D961C()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t ImageAnalyzer.analyze(_:orientation:configuration:)(uint64_t a1, int a2, void *a3)
{
  *(v4 + 88) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v5 = a3[1];
  *(v4 + 40) = *a3;
  *(v4 + 48) = v5;
  return MEMORY[0x2822009F8](sub_23B2D96B0, 0, 0);
}

{
  *(v4 + 88) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v5 = a3[1];
  *(v4 + 40) = *a3;
  *(v4 + 48) = v5;
  return MEMORY[0x2822009F8](sub_23B2D9A88, 0, 0);
}

{
  *(v4 + 88) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v5 = a3[1];
  *(v4 + 40) = *a3;
  *(v4 + 48) = v5;
  return MEMORY[0x2822009F8](sub_23B2D9C70, 0, 0);
}

uint64_t sub_23B2D96B0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 88);
  v3 = vk_orientationFromCGImagePropertyOrientation();
  if (v1)
  {
    if ((v1 & 2) != 0)
    {
      v4 = 5;
      if ((*(v0 + 40) & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = 1;
    if ((*(v0 + 40) & 4) != 0)
    {
LABEL_11:
      v4 |= 0x10uLL;
    }
  }

  else
  {
    if ((v1 & 2) == 0)
    {
      v4 = 0;
      if ((*(v0 + 40) & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = 4;
    if ((*(v0 + 40) & 4) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = [objc_allocWithZone(MEMORY[0x277D78520]) initWithCGImage:*(v0 + 24) orientation:v3 requestType:v4];
  *(v0 + 56) = v7;
  v8 = sub_23B2EAF50();
  [v7 setLocales_];

  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  v12 = type metadata accessor for ImageAnalysis();
  *v11 = v0;
  v11[1] = sub_23B2D986C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000012, 0x800000023B2EF2E0, sub_23B2DA8C8, v9, v12);
}

uint64_t sub_23B2D986C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_23B2D99F4;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_23B2D9988;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23B2D9988()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23B2D99F4()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_23B2D9A88()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 88);
  v3 = vk_orientationFromCGImagePropertyOrientation();
  if (v1)
  {
    if ((v1 & 2) != 0)
    {
      v4 = 5;
      if ((*(v0 + 40) & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = 1;
    if ((*(v0 + 40) & 4) != 0)
    {
LABEL_11:
      v4 |= 0x10uLL;
    }
  }

  else
  {
    if ((v1 & 2) == 0)
    {
      v4 = 0;
      if ((*(v0 + 40) & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = 4;
    if ((*(v0 + 40) & 4) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = [objc_allocWithZone(MEMORY[0x277D78520]) initWithCIImage:*(v0 + 24) orientation:v3 requestType:v4];
  *(v0 + 56) = v7;
  v8 = sub_23B2EAF50();
  [v7 setLocales_];

  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  v12 = type metadata accessor for ImageAnalysis();
  *v11 = v0;
  v11[1] = sub_23B2D91A8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000012, 0x800000023B2EF2E0, sub_23B2DA8C8, v9, v12);
}

uint64_t sub_23B2D9C70()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 88);
  v3 = vk_orientationFromCGImagePropertyOrientation();
  if (v1)
  {
    if ((v1 & 2) != 0)
    {
      v4 = 5;
      if ((*(v0 + 40) & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = 1;
    if ((*(v0 + 40) & 4) != 0)
    {
LABEL_11:
      v4 |= 0x10uLL;
    }
  }

  else
  {
    if ((v1 & 2) == 0)
    {
      v4 = 0;
      if ((*(v0 + 40) & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = 4;
    if ((*(v0 + 40) & 4) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = [objc_allocWithZone(MEMORY[0x277D78520]) initWithCVPixelBuffer:*(v0 + 24) orientation:v3 requestType:v4];
  *(v0 + 56) = v7;
  v8 = sub_23B2EAF50();
  [v7 setLocales_];

  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  v12 = type metadata accessor for ImageAnalysis();
  *v11 = v0;
  v11[1] = sub_23B2D91A8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000012, 0x800000023B2EF2E0, sub_23B2DA8C8, v9, v12);
}

uint64_t ImageAnalyzer.analyze(imageAt:orientation:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[3] = a1;
  v4[4] = v3;
  v6 = sub_23B2EAD90();
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a3;
  v11 = a3[1];
  v4[7] = v9;
  v4[8] = v10;
  v4[9] = v11;

  return MEMORY[0x2822009F8](sub_23B2D9EF8, 0, 0);
}

uint64_t sub_23B2D9EF8()
{
  v1 = v0[8];
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
  if (v1)
  {
    if ((v1 & 2) != 0)
    {
      v2 = 5;
      if ((v0[8] & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v2 = 1;
    if ((v0[8] & 4) != 0)
    {
LABEL_11:
      v2 |= 0x10uLL;
    }
  }

  else
  {
    if ((v1 & 2) == 0)
    {
      v2 = 0;
      if ((v0[8] & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v2 = 4;
    if ((v0[8] & 4) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v8 = objc_allocWithZone(MEMORY[0x277D78520]);
  v9 = sub_23B2EAD80();
  v10 = [v8 initWithImageURL:v9 requestType:v2];
  v0[10] = v10;

  (*(v5 + 8))(v4, v6);
  v11 = sub_23B2EAF50();
  [v10 setLocales_];

  v12 = swift_task_alloc();
  v0[11] = v12;
  *(v12 + 16) = v7;
  *(v12 + 24) = v10;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  v0[12] = v14;
  v15 = type metadata accessor for ImageAnalysis();
  *v14 = v0;
  v14[1] = sub_23B2DA0F4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x800000023B2EF2E0, sub_23B2DA8C8, v12, v15);
}

uint64_t sub_23B2DA0F4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_23B2DA288;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_23B2DA210;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23B2DA210()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_23B2DA288()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

void sub_23B2DA2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E410, "D\n");
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = *(a2 + 16);
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_23B2DA81C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2DA560;
  aBlock[3] = &block_descriptor_0;
  v14 = _Block_copy(aBlock);

  [v11 processRequest:a3 progressHandler:0 completionHandler:v14];
  _Block_release(v14);
}

void *sub_23B2DA4BC(void *result, id a2)
{
  if (result)
  {
    v2 = result;
    type metadata accessor for ImageAnalysis();
    *(swift_allocObject() + 16) = v2;
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E410, "D\n");
    return sub_23B2EAFB0();
  }

  else if (a2)
  {
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E410, "D\n");
    return sub_23B2EAFA0();
  }

  return result;
}

void sub_23B2DA560(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t ImageAnalyzer.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_23B2DA650()
{
  result = qword_27E12E3F0;
  if (!qword_27E12E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E3F0);
  }

  return result;
}

unint64_t sub_23B2DA6A8()
{
  result = qword_27E12E3F8;
  if (!qword_27E12E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E3F8);
  }

  return result;
}

unint64_t sub_23B2DA700()
{
  result = qword_27E12E400;
  if (!qword_27E12E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E400);
  }

  return result;
}

unint64_t sub_23B2DA758()
{
  result = qword_27E12E408;
  if (!qword_27E12E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E408);
  }

  return result;
}

void *sub_23B2DA81C(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E410, "D\n") - 8) + 80);

  return sub_23B2DA4BC(a1, a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B2DA8CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_23B2DA924()
{
  v0 = sub_23B2EAE70();
  __swift_allocate_value_buffer(v0, qword_27E12E420);
  __swift_project_value_buffer(v0, qword_27E12E420);
  return sub_23B2EAE60();
}

uint64_t static DataScannerViewController.RecognizedDataType.text(languages:textContentType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = 0;
  *(a3 + 8) = a1;
  *(a3 + 16) = v3;
  *(a3 + 24) = MEMORY[0x277D84F90];
}

uint64_t static DataScannerViewController.RecognizedDataType.barcode(symbologies:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = 1;
  *(a2 + 8) = v2;
  *(a2 + 16) = 8;
  *(a2 + 24) = a1;
}

uint64_t DataScannerViewController.RecognizedDataType.hashValue.getter()
{
  v1 = *v0;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](v1);
  return sub_23B2EB240();
}

uint64_t _s9VisionKit25DataScannerViewControllerC12QualityLevelO9hashValueSivg_0()
{
  v1 = *v0;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](v1);
  return sub_23B2EB240();
}

uint64_t sub_23B2DAAE0()
{
  v1 = *v0;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](v1);
  return sub_23B2EB240();
}

uint64_t DataScannerViewController.ScanningUnavailable.hashValue.getter()
{
  v1 = *v0;
  sub_23B2EB220();
  MEMORY[0x23EE98FB0](v1);
  return sub_23B2EB240();
}

uint64_t sub_23B2DABF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23B2E809C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_23B2DAC34(void *a1, uint64_t a2)
{
  v4 = sub_23B2EAE80();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23B2EAEA0();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v18 = sub_23B2EB080();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_23B2EA864;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2EACDC;
  aBlock[3] = &block_descriptor_182;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  sub_23B2EAE90();
  v21 = MEMORY[0x277D84F90];
  sub_23B2EA8D8(&qword_27E12E6D8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EAA34(&qword_27E12E6E8, &qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EB0F0();
  v16 = v18;
  MEMORY[0x23EE98E10](0, v11, v7, v14);
  _Block_release(v14);

  (*(v20 + 8))(v7, v4);
  (*(v8 + 8))(v11, v19);
}

void sub_23B2DAF68(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      sub_23B2E80D4(a3);
    }
  }
}

uint64_t sub_23B2DB058(void *a1, double a2)
{
  v4 = sub_23B2EAE80();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23B2EAEA0();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v18 = sub_23B2EB080();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  aBlock[4] = sub_23B2EA80C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2EACDC;
  aBlock[3] = &block_descriptor_175;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  sub_23B2EAE90();
  v21 = MEMORY[0x277D84F90];
  sub_23B2EA8D8(&qword_27E12E6D8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EAA34(&qword_27E12E6E8, &qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EB0F0();
  v16 = v18;
  MEMORY[0x23EE98E10](0, v11, v7, v14);
  _Block_release(v14);

  (*(v20 + 8))(v7, v4);
  (*(v8 + 8))(v11, v19);
}

void sub_23B2DB394(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      v5 = &v4[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 1);
        ObjectType = swift_getObjectType();
        (*(v6 + 24))(v4, ObjectType, v6, a1);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_23B2DB518(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      if (a3)
      {
        [*&v6[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge] beginSessionForText:*&v6[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType] & 1 barcodes:(*&v6[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType] >> 1) & 1];
      }

      else
      {
        [*&v6[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge] endSession];
      }
    }
  }
}

uint64_t sub_23B2DB64C(void *a1, void *a2, void *a3)
{
  v6 = sub_23B2EAE80();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23B2EAEA0();
  v34 = *(v10 - 8);
  v35 = v10;
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E12E120 != -1)
  {
    swift_once();
  }

  v14 = sub_23B2EAE70();
  __swift_project_value_buffer(v14, qword_27E12E420);
  v15 = a2;
  v16 = a3;
  v17 = sub_23B2EAE50();
  v18 = sub_23B2EB070();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412546;
    *(v19 + 4) = v15;
    *v20 = v15;
    *(v19 + 12) = 2112;
    v21 = v15;
    if (a3)
    {
      v22 = a3;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v23;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    *(v19 + 14) = v23;
    v20[1] = v24;
    _os_log_impl(&dword_23B2CF000, v17, v18, "DataScannerViewController impl received didCapturePhoto with photo: %@, error: %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6F0, &qword_23B2ECE90);
    swift_arrayDestroy();
    MEMORY[0x23EE99510](v20, -1, -1);
    MEMORY[0x23EE99510](v19, -1, -1);
  }

  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v25 = sub_23B2EB080();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a1;
  v27[4] = v15;
  v27[5] = a3;
  aBlock[4] = sub_23B2EA7F4;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2EACDC;
  aBlock[3] = &block_descriptor_161;
  v28 = _Block_copy(aBlock);
  v29 = v15;
  v30 = a3;

  v31 = a1;
  sub_23B2EAE90();
  v37 = MEMORY[0x277D84F90];
  sub_23B2EA8D8(&qword_27E12E6D8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EAA34(&qword_27E12E6E8, &qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EB0F0();
  MEMORY[0x23EE98E10](0, v13, v9, v28);
  _Block_release(v28);

  (*(v36 + 8))(v9, v6);
  (*(v34 + 8))(v13, v35);
}

void sub_23B2DBAEC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      sub_23B2E84D4(a3, a4);

      goto LABEL_9;
    }
  }

  if (qword_27E12E120 != -1)
  {
    swift_once();
  }

  v10 = sub_23B2EAE70();
  __swift_project_value_buffer(v10, qword_27E12E420);
  v9 = sub_23B2EAE50();
  v11 = sub_23B2EB060();
  if (os_log_type_enabled(v9, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B2CF000, v9, v11, "Unexpected error before calling didCapturePhoto on DataScannerViewController. Missing self or owner.", v12, 2u);
    MEMORY[0x23EE99510](v12, -1, -1);
  }

LABEL_9:
}

void sub_23B2DBCE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = &v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v3 + 1);
        ObjectType = swift_getObjectType();
        (*(v4 + 8))(v2, ObjectType, v4);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_23B2DBE48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v6 = sub_23B2EAE80();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23B2EAEA0();
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v23);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v22 = sub_23B2EB080();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2EACDC;
  aBlock[3] = v21;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  sub_23B2EAE90();
  v25 = MEMORY[0x277D84F90];
  sub_23B2EA8D8(&qword_27E12E6D8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EAA34(&qword_27E12E6E8, &qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EB0F0();
  v18 = v22;
  MEMORY[0x23EE98E10](0, v13, v9, v16);
  _Block_release(v16);

  (*(v24 + 8))(v9, v6);
  (*(v10 + 8))(v13, v23);
}

void sub_23B2DC168()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = &v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v3 + 1);
        ObjectType = swift_getObjectType();
        (*(v4 + 8))(v2, ObjectType, v4);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_23B2DC2CC(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v7 = sub_23B2EAE80();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23B2EAEA0();
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v24);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v23 = sub_23B2EB080();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  aBlock[4] = v21;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2EACDC;
  aBlock[3] = v22;
  v17 = _Block_copy(aBlock);

  v18 = a1;
  sub_23B2EAE90();
  v26 = MEMORY[0x277D84F90];
  sub_23B2EA8D8(&qword_27E12E6D8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EAA34(&qword_27E12E6E8, &qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EB0F0();
  v19 = v23;
  MEMORY[0x23EE98E10](0, v14, v10, v17);
  _Block_release(v17);

  (*(v25 + 8))(v10, v7);
  (*(v11 + 8))(v14, v24);
}

void sub_23B2DC5F4(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      if ((a3 & 1) == 0)
      {
        v7 = &v6[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = *(v7 + 1);
          ObjectType = swift_getObjectType();
          v10 = 1;
          (*(v8 + 48))(v6, &v10, ObjectType, v8);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_23B2DC74C()
{
  if ([objc_opt_self() isCameraRestricted])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = swift_unknownObjectWeakLoadStrong();

      if (v2)
      {
        v3 = &v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v4 = *(v3 + 1);
          ObjectType = swift_getObjectType();
          v6 = 1;
          (*(v4 + 48))(v2, &v6, ObjectType, v4);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

id sub_23B2DC8FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataScannerViewController.Impl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23B2DC99C()
{
  v0 = [objc_opt_self() supportedRecognitionLanguages];
  v1 = sub_23B2EAF60();

  return v1;
}

uint64_t (*sub_23B2DCA0C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_23B2EAD40;
}

void sub_23B2DCAAC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_23B2DCB0C()
{
  v1 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id sub_23B2DCBD4(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *a2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest;
  result = swift_beginAccess();
  *v8 = v2;
  *(v8 + 8) = v3;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  if ((v6 & 1) == 0)
  {
    return [*(v7 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) setRegionOfInterest_];
  }

  return result;
}

__n128 sub_23B2DCC78@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

id sub_23B2DCCD0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest;
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  v6 = *(a1 + 32);
  *(v3 + 32) = v6;
  if ((v6 & 1) == 0)
  {
    return [*(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) setRegionOfInterest_];
  }

  return result;
}

void (*sub_23B2DCD54(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_23B2DCDDC;
}

void sub_23B2DCDDC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v4 + v3[4];
    if ((*(v5 + 32) & 1) == 0)
    {
      [*(v4 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) setRegionOfInterest_];
    }
  }

  free(v3);
}

uint64_t sub_23B2DCE7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E490, &qword_23B2EC870);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7[-v4];
  v8 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E498, &qword_23B2EC878);
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v1);
  return sub_23B2EB000();
}

uint64_t sub_23B2DCFA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E5A0, &qword_23B2EC890);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  (*(v5 + 16))(&v15 - v7, a1, v4);
  v9 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations;
  v10 = *(a2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_23B2D73D8(0, v10[2] + 1, 1, v10);
    *(a2 + v9) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_23B2D73D8(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  *(a2 + v9) = v10;
  return result;
}

id (*sub_23B2DD190(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider);
  a1[1] = v3;
  [v3 zoomFactor];
  *a1 = v4;
  return sub_23B2DD1EC;
}

uint64_t sub_23B2DD210(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_23B2DD268(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_23B2DD2D0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_23B2DD370;
}

void sub_23B2DD374(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

double sub_23B2DD3FC()
{
  v1 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_processingInterval;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_23B2DD454(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_processingInterval;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_23B2DD4E8;
}

double sub_23B2DD4F4()
{
  v1 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_infrequentProcessingInterval;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_23B2DD54C(uint64_t *a1, SEL *a2, double a3)
{
  v6 = *a1;
  result = swift_beginAccess();
  v8 = *(v3 + v6);
  *(v3 + v6) = a3;
  if (v8 != a3)
  {
    v9 = *(v3 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor);
    if (v9)
    {
      [v9 *a2];
    }

    result = *(v3 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor);
    if (result)
    {
      return [result *a2];
    }
  }

  return result;
}

void (*sub_23B2DD5E8(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_infrequentProcessingInterval;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_23B2DD67C;
}

void sub_23B2DD688(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = v4;
  if (v4 != v7)
  {
    v8 = v3[4];
    v9 = *(v8 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor);
    if (v9)
    {
      v10 = a3;
      [v9 *a3];
      a3 = v10;
      v8 = v3[4];
    }

    v11 = *(v8 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor);
    if (v11)
    {
      [v11 *a3];
    }
  }

  free(v3);
}

id (*sub_23B2DD798(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider);
  *a1 = v3;
  *(a1 + 8) = [v3 isTorchOn];
  return sub_23B2DD7F4;
}

void sub_23B2DD80C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  sub_23B2DD878();
}

void sub_23B2DD878()
{
  v1 = *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 configuration];
    v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords;
    swift_beginAccess();
    v5 = *(v0 + v4);

    v6 = sub_23B2EAF50();

    [v3 setCustomWords_];

    [v2 setConfiguration_];
  }

  v7 = *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor);
  if (v7)
  {
    v8 = v7;
    v9 = [v8 configuration];
    v10 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords;
    swift_beginAccess();
    v11 = *(v0 + v10);

    v12 = sub_23B2EAF50();

    [v9 setCustomWords_];

    [v8 setConfiguration_];
  }
}

uint64_t sub_23B2DD9F4()
{
  v1 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

void sub_23B2DDA3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_23B2DD878();
}

void (*sub_23B2DDA98(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23B2DDAFC;
}

void sub_23B2DDAFC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_23B2DD878();
  }
}

uint64_t sub_23B2DDB30()
{
  v1 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_23B2DDB74(char a1)
{
  v3 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 configuration];
    [v6 setUsesLanguageDetection_];
    [v5 setConfiguration_];
  }

  v7 = *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor);
  if (v7)
  {
    v8 = v7;
    v9 = [v8 configuration];
    [v9 setUsesLanguageDetection_];
    [v8 setConfiguration_];
  }
}

void (*sub_23B2DDC80(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_23B2DDD08;
}

void sub_23B2DDD08(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor);
    if (v5)
    {
      v6 = v3[4];
      v7 = v5;
      v8 = [v7 configuration];
      [v8 setUsesLanguageDetection_];
      [v7 setConfiguration_];

      v4 = v3[3];
    }

    v9 = *(v4 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor);
    if (v9)
    {
      v10 = v3[4];
      v11 = v9;
      v12 = [v11 configuration];
      [v12 setUsesLanguageDetection_];
      [v11 setConfiguration_];
    }
  }

  free(v3);
}

id DataScannerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DataScannerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23B2EAEE0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t DataScannerViewController.__allocating_init(recognizedDataTypes:qualityLevel:recognizesMultipleItems:isHighFrameRateTrackingEnabled:isPinchToZoomEnabled:isGuidanceEnabled:isHighlightingEnabled:)(uint64_t a1, char *a2, char a3, char a4, char a5, char a6, char a7)
{
  v12 = objc_allocWithZone(v7);
  v13 = *a2;
  v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_shouldResumeProcessingOnEnterForeground] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer] = 0;
  v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidBeginPinchToZoom] = 0;
  v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidEndPinchToZoom] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_homographyProcessor] = 0;
  *&v12[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor] = 0;
  v14 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_hitTestView;
  v15 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v16 = v12;
  *&v12[v14] = [v15 init];
  v17 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_impl;
  *&v16[v17] = [objc_allocWithZone(type metadata accessor for DataScannerViewController.Impl()) init];
  v18 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge;
  *&v16[v18] = [objc_allocWithZone(MEMORY[0x277D78540]) init];
  v19 = MEMORY[0x277D84F90];
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems] = MEMORY[0x277D84F90];
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems] = v19;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems] = v19;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView] = 0;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_highlightViewForItemUUID] = 0;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView] = 0;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_capturePhotoCompletions] = v19;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations] = v19;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_initialPinchZoom] = 0;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  *&v16[v20] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v21 = &v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v21[32] = 1;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_processingInterval;
  v23 = objc_opt_self();
  [v23 defaultProcessingInterval];
  *&v16[v22] = v24;
  v25 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_infrequentProcessingInterval;
  v26 = v23;
  v27 = a5;
  [v26 defaultInfrequentProcessingInterval];
  *&v16[v25] = v28;
  v29 = v13;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords] = v19;
  v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection] = 1;
  v30 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes;
  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes] = a1;
  v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_qualityLevel] = v13;
  v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems] = a3;
  v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighFrameRateTrackingEnabled] = a4;
  v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isPinchToZoomEnabled] = a5;
  v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isGuidanceEnabled] = a6;
  v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled] = a7;
  if ((a4 & 1) == 0)
  {
    goto LABEL_10;
  }

  v31 = objc_opt_self();

  if (([v31 isOpticalFlowForTextEnabled] & 1) == 0)
  {

LABEL_11:
    v38 = 1;
    goto LABEL_12;
  }

  v32 = *&v16[v30];
  if (*(v32 + 16) != 1)
  {
    goto LABEL_9;
  }

  result = sub_23B2DE8B4(v32, &v46);
  if (!v47)
  {
    __break(1u);
    goto LABEL_16;
  }

  v34 = v46;
  sub_23B2E9000(v46, v47);
  if (v34)
  {
LABEL_9:

LABEL_10:

    goto LABEL_11;
  }

  result = sub_23B2DE8B4(*&v16[v30], &v46);
  v35 = v47;
  if (!v47)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v36 = v48;
  v37 = v46;

  sub_23B2E9000(v37, v35);
  v38 = v36 != 8;
LABEL_12:
  v39 = [objc_allocWithZone(MEMORY[0x277D78550]) init];
  [v39 setResolutionPreset_];
  [v39 setFrameRatePreset_];
  if ((v27 & 1) == 0)
  {
    [v39 setCameraPreset_];
  }

  [v39 setPreferBinning_];
  v40 = [objc_allocWithZone(MEMORY[0x277D784F0]) initWithConfiguration_];

  *&v16[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] = v40;
  v49.receiver = v16;
  v49.super_class = v42;
  v41 = objc_msgSendSuper2(&v49, sel_initWithNibName_bundle_, 0, 0);
  sub_23B2DF564();

  return v41;
}

uint64_t DataScannerViewController.init(recognizedDataTypes:qualityLevel:recognizesMultipleItems:isHighFrameRateTrackingEnabled:isPinchToZoomEnabled:isGuidanceEnabled:isHighlightingEnabled:)(uint64_t a1, char *a2, char a3, char a4, char a5, char a6, char a7)
{
  v11 = *a2;
  v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_shouldResumeProcessingOnEnterForeground] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer] = 0;
  v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidBeginPinchToZoom] = 0;
  v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidEndPinchToZoom] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_homographyProcessor] = 0;
  *&v7[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor] = 0;
  v12 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_hitTestView;
  v13 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v14 = v7;
  *&v7[v12] = [v13 init];
  v15 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_impl;
  *&v14[v15] = [objc_allocWithZone(type metadata accessor for DataScannerViewController.Impl()) init];
  v16 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge;
  *&v14[v16] = [objc_allocWithZone(MEMORY[0x277D78540]) init];
  v17 = MEMORY[0x277D84F90];
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems] = MEMORY[0x277D84F90];
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems] = v17;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems] = v17;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView] = 0;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_highlightViewForItemUUID] = 0;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView] = 0;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_capturePhotoCompletions] = v17;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations] = v17;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_initialPinchZoom] = 0;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  *&v14[v18] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v19 = &v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v19[32] = 1;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_processingInterval;
  v21 = objc_opt_self();
  [v21 defaultProcessingInterval];
  *&v14[v20] = v22;
  v23 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_infrequentProcessingInterval;
  [v21 defaultInfrequentProcessingInterval];
  *&v14[v23] = v24;
  v25 = v11;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords] = v17;
  v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection] = 1;
  v26 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes;
  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes] = a1;
  v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_qualityLevel] = v11;
  v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems] = a3;
  v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighFrameRateTrackingEnabled] = a4;
  v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isPinchToZoomEnabled] = a5;
  v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isGuidanceEnabled] = a6;
  v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled] = a7;
  if ((a4 & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = objc_opt_self();

  if (([v27 isOpticalFlowForTextEnabled] & 1) == 0)
  {

LABEL_11:
    v34 = 1;
    goto LABEL_12;
  }

  v28 = *&v14[v26];
  if (*(v28 + 16) != 1)
  {
    goto LABEL_9;
  }

  result = sub_23B2DE8B4(v28, &v42);
  if (!v43)
  {
    __break(1u);
    goto LABEL_16;
  }

  v30 = v42;
  sub_23B2E9000(v42, v43);
  if (v30)
  {
LABEL_9:

LABEL_10:

    goto LABEL_11;
  }

  result = sub_23B2DE8B4(*&v14[v26], &v42);
  v31 = v43;
  if (!v43)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v32 = v44;
  v33 = v42;

  sub_23B2E9000(v33, v31);
  v34 = v32 != 8;
LABEL_12:
  v35 = [objc_allocWithZone(MEMORY[0x277D78550]) init];
  [v35 setResolutionPreset_];
  [v35 setFrameRatePreset_];
  if ((a5 & 1) == 0)
  {
    [v35 setCameraPreset_];
  }

  [v35 setPreferBinning_];
  v36 = [objc_allocWithZone(MEMORY[0x277D784F0]) initWithConfiguration_];

  *&v14[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] = v36;
  v37 = type metadata accessor for DataScannerViewController();
  v45.receiver = v14;
  v45.super_class = v37;
  v38 = objc_msgSendSuper2(&v45, sel_initWithNibName_bundle_, 0, 0);
  sub_23B2DF564();

  return v38;
}

uint64_t sub_23B2DE8B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_23B2EB100();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 0;
    v7 = 0;
    *a2 = 0;
    a2[2] = 0;
  }

  else
  {
    result = sub_23B2E7FFC(result, *(a1 + 36), a1, v9);
    v6 = v10;
    v8 = v11;
    v7 = v12;
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  a2[1] = v6;
  a2[3] = v7;
  return result;
}

uint64_t DataScannerViewController.__allocating_init(recognizedDataTypes:qualityLevel:recognizesMultipleItems:isHighFrameRateTrackingEnabled:isPinchToZoomEnabled:isGuidanceEnabled:isHighlightingEnabled:usesSingleCamera:)(uint64_t a1, char *a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v13 = objc_allocWithZone(v8);
  v14 = *a2;
  v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_shouldResumeProcessingOnEnterForeground] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer] = 0;
  v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidBeginPinchToZoom] = 0;
  v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidEndPinchToZoom] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_homographyProcessor] = 0;
  *&v13[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor] = 0;
  v15 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_hitTestView;
  v16 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v17 = v13;
  *&v13[v15] = [v16 init];
  v18 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_impl;
  *&v17[v18] = [objc_allocWithZone(type metadata accessor for DataScannerViewController.Impl()) init];
  v19 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge;
  *&v17[v19] = [objc_allocWithZone(MEMORY[0x277D78540]) init];
  v20 = MEMORY[0x277D84F90];
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems] = MEMORY[0x277D84F90];
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems] = v20;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems] = v20;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView] = 0;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_highlightViewForItemUUID] = 0;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView] = 0;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_capturePhotoCompletions] = v20;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations] = v20;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_initialPinchZoom] = 0;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  *&v17[v21] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v22 = &v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v23 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_processingInterval;
  v24 = objc_opt_self();
  [v24 defaultProcessingInterval];
  *&v17[v23] = v25;
  v26 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_infrequentProcessingInterval;
  [v24 defaultInfrequentProcessingInterval];
  *&v17[v26] = v27;
  v28 = v14;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords] = v20;
  v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection] = 1;
  v29 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes;
  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes] = a1;
  v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_qualityLevel] = v14;
  v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems] = a3;
  v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighFrameRateTrackingEnabled] = a4;
  v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isPinchToZoomEnabled] = a5;
  v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isGuidanceEnabled] = a6;
  v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled] = a7;
  if ((a4 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v30 = objc_opt_self();

  if ([v30 isOpticalFlowForTextEnabled])
  {
    v31 = *&v17[v29];
    if (*(v31 + 16) == 1)
    {
      result = sub_23B2DE8B4(v31, &v47);
      if (!v48)
      {
        __break(1u);
        goto LABEL_20;
      }

      v33 = v47;
      sub_23B2E9000(v47, v48);
      if ((v33 & 1) == 0)
      {
        result = sub_23B2DE8B4(*&v17[v29], &v47);
        v34 = v48;
        if (v48)
        {
          v35 = v49;
          v36 = v47;

          sub_23B2E9000(v36, v34);
          v37 = v35 != 8;
          goto LABEL_12;
        }

LABEL_20:
        __break(1u);
        return result;
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  v37 = 1;
LABEL_12:
  v38 = [objc_allocWithZone(MEMORY[0x277D78550]) init];
  [v38 setResolutionPreset_];
  [v38 setFrameRatePreset_];
  if ((a8 & 1) != 0 || (a5 & 1) == 0)
  {
    if (a8)
    {
      v39 = 1;
    }

    else
    {
      v39 = 2;
    }

    [v38 setCameraPreset_];
  }

  [v38 setPreferBinning_];
  v40 = [objc_allocWithZone(MEMORY[0x277D784F0]) initWithConfiguration_];

  *&v17[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] = v40;
  v50.receiver = v17;
  v50.super_class = v43;
  v41 = objc_msgSendSuper2(&v50, sel_initWithNibName_bundle_, 0, 0);
  sub_23B2DF564();

  return v41;
}

uint64_t DataScannerViewController.init(recognizedDataTypes:qualityLevel:recognizesMultipleItems:isHighFrameRateTrackingEnabled:isPinchToZoomEnabled:isGuidanceEnabled:isHighlightingEnabled:usesSingleCamera:)(uint64_t a1, char *a2, char a3, char a4, unsigned int a5, char a6, char a7, unsigned int a8)
{
  v41 = __PAIR64__(a5, a8);
  v12 = *a2;
  v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_shouldResumeProcessingOnEnterForeground] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer] = 0;
  v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidBeginPinchToZoom] = 0;
  v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidEndPinchToZoom] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_homographyProcessor] = 0;
  *&v8[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor] = 0;
  v13 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_hitTestView;
  v14 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v15 = v8;
  *&v8[v13] = [v14 init];
  v16 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_impl;
  *&v15[v16] = [objc_allocWithZone(type metadata accessor for DataScannerViewController.Impl()) init];
  v17 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge;
  *&v15[v17] = [objc_allocWithZone(MEMORY[0x277D78540]) init];
  v18 = MEMORY[0x277D84F90];
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems] = MEMORY[0x277D84F90];
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems] = v18;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems] = v18;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView] = 0;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_highlightViewForItemUUID] = 0;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView] = 0;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_capturePhotoCompletions] = v18;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations] = v18;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_initialPinchZoom] = 0;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  *&v15[v19] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v20 = &v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v20[32] = 1;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_processingInterval;
  v22 = objc_opt_self();
  [v22 defaultProcessingInterval];
  *&v15[v21] = v23;
  v24 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_infrequentProcessingInterval;
  [v22 defaultInfrequentProcessingInterval];
  *&v15[v24] = v25;
  v26 = v12;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords] = v18;
  v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection] = 1;
  v27 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes;
  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes] = a1;
  v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_qualityLevel] = v12;
  v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems] = a3;
  v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighFrameRateTrackingEnabled] = a4;
  v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isPinchToZoomEnabled] = BYTE4(v41);
  v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isGuidanceEnabled] = a6;
  v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled] = a7;
  if ((a4 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v28 = objc_opt_self();

  if ([v28 isOpticalFlowForTextEnabled])
  {
    v29 = *&v15[v27];
    if (*(v29 + 16) == 1)
    {
      result = sub_23B2DE8B4(v29, &v44);
      if (!v45)
      {
        __break(1u);
        goto LABEL_20;
      }

      v31 = v44;
      sub_23B2E9000(v44, v45);
      if ((v31 & 1) == 0)
      {
        result = sub_23B2DE8B4(*&v15[v27], &v44);
        v32 = v45;
        if (v45)
        {
          v33 = v46;
          v34 = v44;

          sub_23B2E9000(v34, v32);
          v35 = v33 != 8;
          goto LABEL_12;
        }

LABEL_20:
        __break(1u);
        return result;
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  v35 = 1;
LABEL_12:
  v36 = [objc_allocWithZone(MEMORY[0x277D78550]) init];
  [v36 setResolutionPreset_];
  [v36 setFrameRatePreset_];
  if ((v41 & 1) != 0 || (v41 & 0x100000000) == 0)
  {
    if (v41)
    {
      v37 = 1;
    }

    else
    {
      v37 = 2;
    }

    [v36 setCameraPreset_];
  }

  [v36 setPreferBinning_];
  v38 = [objc_allocWithZone(MEMORY[0x277D784F0]) initWithConfiguration_];

  *&v15[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] = v38;
  v39 = type metadata accessor for DataScannerViewController();
  v47.receiver = v15;
  v47.super_class = v39;
  v40 = objc_msgSendSuper2(&v47, sel_initWithNibName_bundle_, 0, 0);
  sub_23B2DF564();

  return v40;
}

id DataScannerViewController.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for DataScannerViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_23B2DF564()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_hitTestView];
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 colorWithAlphaComponent_];

  [v2 setBackgroundColor_];
  v5 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_impl];
  swift_unknownObjectWeakAssign();
  v6 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider];
  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v7 = sub_23B2EB080();
  v76 = v6;
  [v6 setDelegate:v5 queue:v7];

  [*&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge] setDelegate_];
  if (v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isPinchToZoomEnabled] == 1)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D75848]) initWithTarget:v1 action:sel_onPinch_];
    v9 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer;
    v10 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer];
    *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer] = v8;

    v11 = [v1 view];
    if (!v11)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (!*&v1[v9])
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v12 = v11;
    [v11 addGestureRecognizer_];
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_onTap_];
  v14 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer;
  v15 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer];
  *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer] = v13;

  v16 = [v1 view];
  if (!v16)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (!*&v1[v14])
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v17 = v16;
  [v16 addGestureRecognizer_];

  v18 = objc_opt_self();
  v19 = [v18 defaultCenter];
  [v19 addObserver:v1 selector:sel_didEnterBackground name:*MEMORY[0x277D76660] object:0];

  v20 = [v18 defaultCenter];
  [v20 addObserver:v1 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];

  if (![objc_opt_self() isOpticalFlowForTextEnabled])
  {
    goto LABEL_18;
  }

  v21 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes];
  if (*(v21 + 16) != 1)
  {
    goto LABEL_18;
  }

  sub_23B2DE8B4(*&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes], &aBlock);
  if (!v80)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v22 = aBlock;
  sub_23B2E9000(aBlock, v80);
  if ((v22 & 1) == 0)
  {
    sub_23B2DE8B4(v21, &aBlock);
    if (v80)
    {
      v23 = v81;
      sub_23B2E9000(aBlock, v80);
      if (v23 == 8 && v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighFrameRateTrackingEnabled] == 1)
      {
        v24 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType];
        if ((v24 & 1) == 0)
        {
          *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType] = v24 | 1;
        }

        v25 = [objc_allocWithZone(MEMORY[0x277D785A0]) init];
        [v25 setIsForSingleItem_];
        sub_23B2DE8B4(v21, &aBlock);
        v26 = v80;
        if (v80)
        {
          v27 = aBlock;

          sub_23B2E9000(v27, v26);
          v28 = sub_23B2EAF50();

          [v25 setRecognitionLanguages_];

          v29 = [objc_allocWithZone(MEMORY[0x277D785A8]) init];
          [v29 setConfiguration_];
          v30 = v29;
          v31 = sub_23B2EB080();
          [v30 setResultHandlerQueue_];

          v32 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v83 = sub_23B2EAD48;
          v84 = v32;
          aBlock = MEMORY[0x277D85DD0];
          v80 = 1107296256;
          v81 = sub_23B2EAD44;
          v82 = &block_descriptor_224;
          v33 = _Block_copy(&aBlock);

          [v30 setResultHandler_];
          _Block_release(v33);
          [v6 registerProcessor_];

          v34 = &OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor;
          goto LABEL_53;
        }

        goto LABEL_62;
      }

      goto LABEL_18;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

LABEL_18:
  v35 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes];
  v38 = *(v35 + 56);
  v37 = v35 + 56;
  v36 = v38;
  v39 = 1 << *(*&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes] + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v36;
  v77 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedDataTypes];
  v78 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType;
  v73 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor;
  v74 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor;
  v42 = (v39 + 63) >> 6;
  v75 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems;

  v43 = 0;
  while (v41)
  {
LABEL_28:
    v55 = *(v77 + 48) + ((v43 << 11) | (32 * __clz(__rbit64(v41))));
    v56 = *&v1[v78];
    if ((*v55 & 1) == 0)
    {
      v58 = *(v55 + 8);
      v59 = *(v55 + 16);
      if ((v56 & 1) == 0)
      {
        *&v1[v78] = v56 | 1;
      }

      v60 = objc_allocWithZone(MEMORY[0x277D785A0]);

      v45 = [v60 init];
      [v45 setIsForSingleItem_];
      v61 = sub_23B2EAF50();

      [v45 setRecognitionLanguages_];

      if (v59 <= 3)
      {
        v63 = 7;
        if (v59 != 2)
        {
          v63 = 4;
        }

        v64 = 5;
        if (v59)
        {
          v64 = 2;
        }

        if (v59 <= 1)
        {
          v62 = v64;
        }

        else
        {
          v62 = v63;
        }
      }

      else if (v59 <= 5)
      {
        if (v59 == 4)
        {
          v62 = 8;
        }

        else
        {
          v62 = 3;
        }
      }

      else
      {
        if (v59 != 6)
        {
          if (v59 == 7)
          {
            v62 = 6;
            goto LABEL_49;
          }

LABEL_50:
          v65 = [objc_allocWithZone(MEMORY[0x277D78598]) init];
          [v65 setConfiguration_];
          v48 = v65;
          v66 = sub_23B2EB080();
          [v48 setResultHandlerQueue_];

          v67 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v83 = sub_23B2EAC58;
          v84 = v67;
          aBlock = MEMORY[0x277D85DD0];
          v80 = 1107296256;
          v81 = sub_23B2EAD44;
          v82 = &block_descriptor_216;
          v51 = _Block_copy(&aBlock);

          [v48 setResultHandler_];
          v52 = v73;
          goto LABEL_22;
        }

        v62 = 1;
      }

LABEL_49:
      [v45 setDataType_];
      goto LABEL_50;
    }

    v57 = *(v55 + 24);
    if ((v56 & 2) == 0)
    {
      *&v1[v78] = v56 | 2;
    }

    v44 = objc_allocWithZone(MEMORY[0x277D78500]);

    v45 = [v44 init];
    [v45 setIsForSingleItem_];
    type metadata accessor for VNBarcodeSymbology(0);
    v46 = sub_23B2EAF50();

    [v45 setSymbologies_];

    v47 = [objc_allocWithZone(MEMORY[0x277D784F8]) init];
    [v47 setConfiguration_];
    v48 = v47;
    v49 = sub_23B2EB080();
    [v48 setResultHandlerQueue_];

    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v83 = sub_23B2EAC28;
    v84 = v50;
    aBlock = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v81 = sub_23B2EAD44;
    v82 = &block_descriptor_212;
    v51 = _Block_copy(&aBlock);

    [v48 setResultHandler_];
    v52 = v74;
LABEL_22:
    v41 &= v41 - 1;
    _Block_release(v51);
    [v76 registerProcessor_];

    v53 = *&v1[v52];
    *&v1[v52] = v48;
  }

  while (1)
  {
    v54 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v54 >= v42)
    {
      break;
    }

    v41 = *(v37 + 8 * v54);
    ++v43;
    if (v41)
    {
      v43 = v54;
      goto LABEL_28;
    }
  }

  if ((v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighFrameRateTrackingEnabled] & 1) == 0)
  {
    return;
  }

  v30 = [objc_allocWithZone(MEMORY[0x277D78558]) init];
  v68 = sub_23B2EB080();
  [v30 setResultHandlerQueue_];

  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = sub_23B2EAC88;
  v84 = v69;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v81 = sub_23B2EAD44;
  v82 = &block_descriptor_220;
  v70 = _Block_copy(&aBlock);

  [v30 setResultHandler_];
  _Block_release(v70);
  [v76 registerProcessor_];
  v34 = &OBJC_IVAR____TtC9VisionKit25DataScannerViewController_homographyProcessor;
LABEL_53:
  v71 = *v34;
  v72 = *&v1[v71];
  *&v1[v71] = v30;
}

void sub_23B2E00A0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

void sub_23B2E0110(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [a1 warpTransform];
    v9 = v5;
    v10 = v4;
    v8 = v6;
    [*&v3[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor] applyHomographyWarpTransform_];
    v7 = *&v3[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor];
    [v7 applyWarpTransform_];
  }
}

void sub_23B2E02D8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E728, &qword_23B2ECEB0);
  v209 = *(v4 - 8);
  v5 = *(v209 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v207 - v6;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E5A0, &qword_23B2EC890);
  v213 = *(v218 - 8);
  v8 = *(v213 + 64);
  MEMORY[0x28223BE20](v218);
  v10 = &v207 - v9;
  v11 = type metadata accessor for RecognizedItem(0);
  v222 = *(v11 - 8);
  v223 = v11;
  v12 = *(v222 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v216 = &v207 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v217 = &v207 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v207 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v207 - v20;
  v215 = a1;
  v22 = [a1 allItems];
  v214 = sub_23B2D2208(0, &qword_27E12E778, 0x277D78590);
  v23 = sub_23B2EAF60();

  v24 = v23;
  if (v23 >> 62)
  {
    v101 = v23;
    v25 = sub_23B2EB160();
    v24 = v101;
  }

  else
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v219 = v2;
  v210 = v10;
  v212 = v4;
  v211 = v7;
  if (v25)
  {
    v26 = v24;
    v225 = MEMORY[0x277D84F90];
    sub_23B2E700C(0, v25 & ~(v25 >> 63), 0);
    if (v25 < 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    v27 = 0;
    v28 = v26;
    v220 = v26 & 0xC000000000000001;
    v221 = v26;
    v29 = v225;
    v30 = v25;
    do
    {
      if (v220)
      {
        v31 = MEMORY[0x23EE98EC0](v27, v28);
      }

      else
      {
        v31 = *(v28 + 8 * v27 + 32);
      }

      v32 = v31;
      v33 = [v32 uuid];
      sub_23B2EADB0();

      v34 = [v32 layerQuad];
      [v34 topLeft];
      v36 = v35;
      v38 = v37;
      [v34 topRight];
      v40 = v39;
      v42 = v41;
      [v34 bottomRight];
      v44 = v43;
      v46 = v45;
      [v34 bottomLeft];
      v48 = v47;
      v50 = v49;
      v51 = type metadata accessor for RecognizedItem.Text(0);
      v52 = (v21 + v51[5]);
      *v52 = v36;
      v52[1] = v38;
      v52[2] = v40;
      v52[3] = v42;
      v52[4] = v44;
      v52[5] = v46;
      v52[6] = v48;
      v52[7] = v50;
      v52[8] = v34;
      v53 = [v32 transcript];
      v54 = sub_23B2EAF10();
      v56 = v55;

      v57 = (v21 + v51[6]);
      *v57 = v54;
      v57[1] = v56;
      v58 = [v32 observation];

      *(v21 + v51[7]) = v58;
      swift_storeEnumTagMultiPayload();
      v225 = v29;
      v60 = *(v29 + 16);
      v59 = *(v29 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_23B2E700C(v59 > 1, v60 + 1, 1);
        v29 = v225;
      }

      ++v27;
      *(v29 + 16) = v60 + 1;
      sub_23B2EA920(v21, v29 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v60, type metadata accessor for RecognizedItem);
      v28 = v221;
    }

    while (v30 != v27);

    v2 = v219;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  v61 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems;
  v62 = *(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems);
  *(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems) = v29;

  if (*(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems))
  {
    v63 = *(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems);
    v225 = *(v2 + v61);

    sub_23B2E7308(v64);
    v65 = *(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems);
    v208 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems;
    *(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems) = v225;

    v66 = [v215 addedItems];
    v21 = sub_23B2EAF60();

    if (!(v21 >> 62))
    {
      v67 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v67)
      {
LABEL_17:
        v225 = MEMORY[0x277D84F90];
        sub_23B2E700C(0, v67 & ~(v67 >> 63), 0);
        if (v67 < 0)
        {
          __break(1u);
          goto LABEL_76;
        }

        v68 = 0;
        v221 = v225;
        do
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v69 = MEMORY[0x23EE98EC0](v68, v21);
          }

          else
          {
            v69 = *(v21 + 8 * v68 + 32);
          }

          v70 = v69;
          v71 = [v70 uuid];
          sub_23B2EADB0();

          v72 = [v70 layerQuad];
          [v72 topLeft];
          v74 = v73;
          v76 = v75;
          [v72 topRight];
          v78 = v77;
          v80 = v79;
          [v72 bottomRight];
          v82 = v81;
          v84 = v83;
          [v72 bottomLeft];
          v86 = v85;
          v88 = v87;
          v89 = type metadata accessor for RecognizedItem.Text(0);
          v90 = &v19[v89[5]];
          *v90 = v74;
          *(v90 + 1) = v76;
          *(v90 + 2) = v78;
          *(v90 + 3) = v80;
          *(v90 + 4) = v82;
          *(v90 + 5) = v84;
          *(v90 + 6) = v86;
          *(v90 + 7) = v88;
          *(v90 + 8) = v72;
          v91 = [v70 transcript];
          v92 = sub_23B2EAF10();
          v94 = v93;

          v95 = &v19[v89[6]];
          *v95 = v92;
          v95[1] = v94;
          v96 = [v70 observation];

          *&v19[v89[7]] = v96;
          swift_storeEnumTagMultiPayload();
          v97 = v221;
          v225 = v221;
          v99 = *(v221 + 16);
          v98 = *(v221 + 24);
          if (v99 >= v98 >> 1)
          {
            sub_23B2E700C(v98 > 1, v99 + 1, 1);
            v97 = v225;
          }

          ++v68;
          *(v97 + 16) = v99 + 1;
          v100 = (*(v222 + 80) + 32) & ~*(v222 + 80);
          v221 = v97;
          sub_23B2EA920(v19, v97 + v100 + *(v222 + 72) * v99, type metadata accessor for RecognizedItem);
        }

        while (v67 != v68);

LABEL_31:
        v102 = [v215 updatedItems];
        v103 = sub_23B2EAF60();

        if (v103 >> 62)
        {
          v104 = sub_23B2EB160();
          v105 = v216;
          if (v104)
          {
LABEL_33:
            v225 = MEMORY[0x277D84F90];
            sub_23B2E700C(0, v104 & ~(v104 >> 63), 0);
            if ((v104 & 0x8000000000000000) == 0)
            {
              v106 = 0;
              v107 = v103;
              v216 = (v103 & 0xC000000000000001);
              v220 = v225;
              v108 = v103;
              do
              {
                if (v216)
                {
                  v109 = MEMORY[0x23EE98EC0](v106, v107);
                }

                else
                {
                  v109 = *(v107 + 8 * v106 + 32);
                }

                v110 = v109;
                v111 = [v110 uuid];
                v112 = v217;
                sub_23B2EADB0();

                v113 = [v110 layerQuad];
                [v113 topLeft];
                v115 = v114;
                v117 = v116;
                [v113 topRight];
                v119 = v118;
                v121 = v120;
                [v113 bottomRight];
                v123 = v122;
                v125 = v124;
                [v113 bottomLeft];
                v127 = v126;
                v129 = v128;
                v130 = type metadata accessor for RecognizedItem.Text(0);
                v131 = (v112 + v130[5]);
                *v131 = v115;
                v131[1] = v117;
                v131[2] = v119;
                v131[3] = v121;
                v131[4] = v123;
                v131[5] = v125;
                v131[6] = v127;
                v131[7] = v129;
                v131[8] = v113;
                v132 = [v110 transcript];
                v133 = sub_23B2EAF10();
                v135 = v134;

                v136 = (v112 + v130[6]);
                *v136 = v133;
                v136[1] = v135;
                v137 = [v110 observation];

                *(v112 + v130[7]) = v137;
                swift_storeEnumTagMultiPayload();
                v138 = v220;
                v225 = v220;
                v140 = *(v220 + 16);
                v139 = *(v220 + 24);
                if (v140 >= v139 >> 1)
                {
                  sub_23B2E700C(v139 > 1, v140 + 1, 1);
                  v112 = v217;
                  v138 = v225;
                }

                ++v106;
                *(v138 + 16) = v140 + 1;
                v141 = (*(v222 + 80) + 32) & ~*(v222 + 80);
                v220 = v138;
                sub_23B2EA920(v112, v138 + v141 + *(v222 + 72) * v140, type metadata accessor for RecognizedItem);
                v107 = v108;
              }

              while (v104 != v106);

LABEL_44:
              v142 = [v215 removedItems];
              v143 = sub_23B2EAF60();

              if (v143 >> 62)
              {
                v144 = sub_23B2EB160();
                if (v144)
                {
LABEL_46:
                  v225 = MEMORY[0x277D84F90];
                  sub_23B2E700C(0, v144 & ~(v144 >> 63), 0);
                  if ((v144 & 0x8000000000000000) == 0)
                  {
                    v145 = 0;
                    v217 = (v143 & 0xC000000000000001);
                    v146 = v225;
                    do
                    {
                      if (v217)
                      {
                        v147 = MEMORY[0x23EE98EC0](v145, v143);
                      }

                      else
                      {
                        v147 = *(v143 + 8 * v145 + 32);
                      }

                      v148 = v147;
                      v149 = [v148 uuid];
                      sub_23B2EADB0();

                      v150 = [v148 layerQuad];
                      [v150 topLeft];
                      v152 = v151;
                      v154 = v153;
                      [v150 topRight];
                      v156 = v155;
                      v158 = v157;
                      [v150 bottomRight];
                      v160 = v159;
                      v162 = v161;
                      [v150 bottomLeft];
                      v164 = v163;
                      v166 = v165;
                      v167 = type metadata accessor for RecognizedItem.Text(0);
                      v168 = (v105 + v167[5]);
                      *v168 = v152;
                      v168[1] = v154;
                      v168[2] = v156;
                      v168[3] = v158;
                      v168[4] = v160;
                      v168[5] = v162;
                      v168[6] = v164;
                      v168[7] = v166;
                      v168[8] = v150;
                      v169 = [v148 transcript];
                      v170 = sub_23B2EAF10();
                      v172 = v171;

                      v173 = (v105 + v167[6]);
                      *v173 = v170;
                      v173[1] = v172;
                      v174 = [v148 observation];

                      *(v105 + v167[7]) = v174;
                      swift_storeEnumTagMultiPayload();
                      v225 = v146;
                      v176 = *(v146 + 16);
                      v175 = *(v146 + 24);
                      if (v176 >= v175 >> 1)
                      {
                        sub_23B2E700C(v175 > 1, v176 + 1, 1);
                        v146 = v225;
                      }

                      ++v145;
                      *(v146 + 16) = v176 + 1;
                      sub_23B2EA920(v105, v146 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v176, type metadata accessor for RecognizedItem);
                    }

                    while (v144 != v145);

                    goto LABEL_57;
                  }

LABEL_77:
                  __break(1u);
                  return;
                }
              }

              else
              {
                v144 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v144)
                {
                  goto LABEL_46;
                }
              }

              v146 = MEMORY[0x277D84F90];
LABEL_57:
              v2 = v219;
              v177 = v219 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate;
              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              v179 = v208;
              if (Strong)
              {
                v180 = *(v177 + 8);
                v181 = v221;
                if (*(v221 + 16))
                {
                  ObjectType = swift_getObjectType();
                  v183 = v219;
                  v184 = *(v219 + v179);
                  v185 = v180[3];

                  v185(v183, v181, v184, ObjectType, v180);
                }

                v186 = v220;
                if (*(v220 + 16))
                {
                  v187 = swift_getObjectType();
                  v188 = v219;
                  v189 = *(v219 + v179);
                  v190 = v180[4];

                  v190(v188, v186, v189, v187, v180);
                }

                if (*(v146 + 16))
                {
                  v191 = swift_getObjectType();
                  v2 = v219;
                  v192 = *(v219 + v179);
                  v193 = v180[5];

                  v193(v2, v146, v192, v191, v180);
                  swift_unknownObjectRelease();
                }

                else
                {
                  swift_unknownObjectRelease();
                  v2 = v219;
                }
              }

              v194 = *(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations);
              v195 = *(v194 + 2);
              if (v195)
              {
                v217 = v146;
                v196 = *(v213 + 16);
                v197 = &v194[(*(v213 + 80) + 32) & ~*(v213 + 80)];
                v222 = *(v213 + 72);
                v223 = v196;
                v198 = (v209 + 8);
                v199 = (v213 + 8);
                v216 = v194;

                v200 = v179;
                v201 = v212;
                v202 = v211;
                v203 = v218;
                v204 = v210;
                do
                {
                  v223(v204, v197, v203);
                  v224 = *(v219 + v200);

                  sub_23B2EAFE0();
                  v203 = v218;
                  (*v198)(v202, v201);
                  (*v199)(v204, v203);
                  v197 += v222;
                  --v195;
                }

                while (v195);

                v2 = v219;
                v146 = v217;
              }

              if (*(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled) == 1)
              {
                sub_23B2E3E7C(v221, v220, v146);
              }

              goto LABEL_72;
            }

LABEL_76:
            __break(1u);
            goto LABEL_77;
          }
        }

        else
        {
          v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v105 = v216;
          if (v104)
          {
            goto LABEL_33;
          }
        }

        v220 = MEMORY[0x277D84F90];
        goto LABEL_44;
      }

LABEL_30:

      v221 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

LABEL_29:
    v67 = sub_23B2EB160();
    if (v67)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  sub_23B2E25DC();
LABEL_72:
  if (*(*(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems) + 16))
  {
    [*(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView) hideGuidance];
    v205 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer;
    [*(v2 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer) invalidate];
    v206 = *(v2 + v205);
    *(v2 + v205) = 0;
  }

  else
  {
    sub_23B2E590C();
  }
}

void sub_23B2E13A0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E728, &qword_23B2ECEB0);
  v208 = *(v3 - 8);
  v4 = *(v208 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v207 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E5A0, &qword_23B2EC890);
  v209 = *(v7 - 8);
  v8 = *(v209 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v207 - v9;
  v11 = type metadata accessor for RecognizedItem(0);
  v224 = *(v11 - 8);
  v225 = v11;
  v12 = *(v224 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v219 = &v207 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v220 = &v207 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v221 = &v207 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v207 - v19;
  v215 = a1;
  v21 = [a1 allItems];
  v214 = sub_23B2D2208(0, &qword_27E12E770, 0x277D78588);
  v22 = sub_23B2EAF60();

  if (v22 >> 62)
  {
    goto LABEL_47;
  }

  v23 = v22;
  v22 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v210 = v7;
  v211 = v6;
  v212 = v3;
  v216 = v1;
  v222 = v23;
  v223 = v10;
  if (v22)
  {
    v7 = 0;
    v217 = v23 & 0xFFFFFFFFFFFFFF8;
    v218 = v23 & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v218)
      {
        v24 = MEMORY[0x23EE98EC0](v7, v222);
        v10 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v7 >= *(v217 + 16))
        {
          goto LABEL_44;
        }

        v24 = v222[v7 + 4];
        v10 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          v23 = v22;
          v22 = sub_23B2EB160();
          goto LABEL_3;
        }
      }

      v1 = v22;
      v25 = v24;
      v26 = [v25 uuid];
      sub_23B2EADB0();

      v27 = [v25 layerQuad];
      [v27 topLeft];
      v29 = v28;
      v31 = v30;
      [v27 topRight];
      v33 = v32;
      v35 = v34;
      [v27 bottomRight];
      v37 = v36;
      v39 = v38;
      [v27 bottomLeft];
      v41 = v40;
      v43 = v42;
      v44 = type metadata accessor for RecognizedItem.Barcode(0);
      v45 = &v20[v44[5]];
      *v45 = v29;
      *(v45 + 1) = v31;
      *(v45 + 2) = v33;
      *(v45 + 3) = v35;
      *(v45 + 4) = v37;
      *(v45 + 5) = v39;
      *(v45 + 6) = v41;
      *(v45 + 7) = v43;
      *(v45 + 8) = v27;
      *&v20[v44[7]] = [v25 observation];
      v46 = [v25 payloadStringValue];
      if (v46)
      {
        v47 = v46;
        v48 = sub_23B2EAF10();
        v50 = v49;
      }

      else
      {

        v48 = 0;
        v50 = 0;
      }

      v51 = &v20[v44[6]];
      *v51 = v48;
      v51[1] = v50;
      swift_storeEnumTagMultiPayload();
      v22 = v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_23B2D75E4(0, *(v6 + 16) + 1, 1, v6);
      }

      v53 = *(v6 + 16);
      v52 = *(v6 + 24);
      v3 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        v6 = sub_23B2D75E4(v52 > 1, v53 + 1, 1, v6);
      }

      *(v6 + 16) = v3;
      sub_23B2EA920(v20, v6 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v53, type metadata accessor for RecognizedItem);
      ++v7;
      v54 = v10 == v1;
      v10 = v223;
      if (v54)
      {
        goto LABEL_22;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_22:

  v55 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems;
  v56 = v216;
  v57 = *(v216 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems);
  *(v216 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems) = v6;
  v58 = v56;

  v3 = 0x27E12E000uLL;
  if (*(v58 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems))
  {
    v59 = *(v58 + v55);
    v227 = *(v58 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems);

    sub_23B2E7308(v60);
    v61 = *(v58 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems);
    v213 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems;
    *(v58 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems) = v227;

    v62 = [v215 addedItems];
    v1 = sub_23B2EAF60();

    if (v1 >> 62)
    {
      v20 = sub_23B2EB160();
      if (v20)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v20 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
LABEL_25:
        v6 = 0;
        v217 = v1 & 0xFFFFFFFFFFFFFF8;
        v218 = v1 & 0xC000000000000001;
        v222 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v218)
          {
            v63 = MEMORY[0x23EE98EC0](v6, v1);
            v64 = (v6 + 1);
            if (__OFADD__(v6, 1))
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (v6 >= *(v217 + 16))
            {
              goto LABEL_46;
            }

            v63 = *(v1 + 8 * v6 + 32);
            v64 = (v6 + 1);
            if (__OFADD__(v6, 1))
            {
              goto LABEL_45;
            }
          }

          v65 = v63;
          v66 = [v65 uuid];
          v67 = v221;
          sub_23B2EADB0();

          v68 = [v65 layerQuad];
          [v68 topLeft];
          v70 = v69;
          v72 = v71;
          [v68 topRight];
          v74 = v73;
          v76 = v75;
          [v68 bottomRight];
          v78 = v77;
          v80 = v79;
          [v68 bottomLeft];
          v82 = v81;
          v84 = v83;
          v22 = type metadata accessor for RecognizedItem.Barcode(0);
          v85 = (v67 + *(v22 + 20));
          *v85 = v70;
          v85[1] = v72;
          v85[2] = v74;
          v85[3] = v76;
          v85[4] = v78;
          v85[5] = v80;
          v85[6] = v82;
          v85[7] = v84;
          v85[8] = v68;
          *(v67 + *(v22 + 28)) = [v65 observation];
          v86 = [v65 payloadStringValue];
          if (v86)
          {
            v87 = v86;
            v88 = sub_23B2EAF10();
            v90 = v89;
          }

          else
          {

            v88 = 0;
            v90 = 0;
          }

          v91 = (v221 + *(v22 + 24));
          *v91 = v88;
          v91[1] = v90;
          swift_storeEnumTagMultiPayload();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v92 = v222;
          }

          else
          {
            v92 = sub_23B2D75E4(0, v222[2] + 1, 1, v222);
          }

          v7 = v92[2];
          v93 = v92[3];
          v3 = v7 + 1;
          if (v7 >= v93 >> 1)
          {
            v92 = sub_23B2D75E4(v93 > 1, v7 + 1, 1, v92);
          }

          v92[2] = v3;
          v94 = (*(v224 + 80) + 32) & ~*(v224 + 80);
          v222 = v92;
          sub_23B2EA920(v221, v92 + v94 + *(v224 + 72) * v7, type metadata accessor for RecognizedItem);
          ++v6;
          if (v64 == v20)
          {
            goto LABEL_50;
          }
        }
      }
    }

    v222 = MEMORY[0x277D84F90];
LABEL_50:

    v95 = [v215 updatedItems];
    v96 = sub_23B2EAF60();

    if (v96 >> 62)
    {
      goto LABEL_69;
    }

    v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v97)
    {
LABEL_52:
      v98 = 0;
      v221 = v96 & 0xC000000000000001;
      v218 = v96 & 0xFFFFFFFFFFFFFF8;
      v99 = MEMORY[0x277D84F90];
      v217 = v96;
      while (1)
      {
        if (v221)
        {
          v100 = MEMORY[0x23EE98EC0](v98, v96);
          v101 = v98 + 1;
          if (__OFADD__(v98, 1))
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v98 >= *(v218 + 16))
          {
            goto LABEL_68;
          }

          v100 = *(v96 + 8 * v98 + 32);
          v101 = v98 + 1;
          if (__OFADD__(v98, 1))
          {
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            v97 = sub_23B2EB160();
            if (!v97)
            {
              break;
            }

            goto LABEL_52;
          }
        }

        v102 = v100;
        v103 = [v102 uuid];
        v104 = v220;
        sub_23B2EADB0();

        v105 = [v102 layerQuad];
        [v105 topLeft];
        v107 = v106;
        v109 = v108;
        [v105 topRight];
        v111 = v110;
        v113 = v112;
        [v105 bottomRight];
        v115 = v114;
        v117 = v116;
        [v105 bottomLeft];
        v119 = v118;
        v121 = v120;
        v122 = type metadata accessor for RecognizedItem.Barcode(0);
        v123 = (v104 + v122[5]);
        *v123 = v107;
        v123[1] = v109;
        v123[2] = v111;
        v123[3] = v113;
        v123[4] = v115;
        v123[5] = v117;
        v123[6] = v119;
        v123[7] = v121;
        v123[8] = v105;
        *(v104 + v122[7]) = [v102 observation];
        v124 = [v102 payloadStringValue];
        if (v124)
        {
          v125 = v97;
          v126 = v99;
          v127 = v124;
          v128 = sub_23B2EAF10();
          v130 = v129;

          v99 = v126;
          v97 = v125;
        }

        else
        {

          v128 = 0;
          v130 = 0;
        }

        v131 = (v220 + v122[6]);
        *v131 = v128;
        v131[1] = v130;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_23B2D75E4(0, v99[2] + 1, 1, v99);
        }

        v96 = v217;
        v133 = v99[2];
        v132 = v99[3];
        if (v133 >= v132 >> 1)
        {
          v99 = sub_23B2D75E4(v132 > 1, v133 + 1, 1, v99);
        }

        v99[2] = v133 + 1;
        sub_23B2EA920(v220, v99 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v133, type metadata accessor for RecognizedItem);
        ++v98;
        if (v101 == v97)
        {
          goto LABEL_71;
        }
      }
    }

    v99 = MEMORY[0x277D84F90];
LABEL_71:

    v134 = [v215 removedItems];
    v135 = sub_23B2EAF60();

    if (v135 >> 62)
    {
      goto LABEL_90;
    }

    v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v221 = v99;
    if (v136)
    {
LABEL_73:
      v137 = 0;
      v220 = v135 & 0xC000000000000001;
      v218 = v135 & 0xFFFFFFFFFFFFFF8;
      v138 = MEMORY[0x277D84F90];
      v217 = v136;
      while (1)
      {
        if (v220)
        {
          v139 = MEMORY[0x23EE98EC0](v137, v135);
          v140 = v137 + 1;
          if (__OFADD__(v137, 1))
          {
            goto LABEL_88;
          }
        }

        else
        {
          if (v137 >= *(v218 + 16))
          {
            goto LABEL_89;
          }

          v139 = *(v135 + 8 * v137 + 32);
          v140 = v137 + 1;
          if (__OFADD__(v137, 1))
          {
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            v136 = sub_23B2EB160();
            v221 = v99;
            if (!v136)
            {
              break;
            }

            goto LABEL_73;
          }
        }

        v141 = v135;
        v142 = v138;
        v143 = v139;
        v144 = [v143 uuid];
        v145 = v219;
        sub_23B2EADB0();

        v146 = [v143 layerQuad];
        [v146 topLeft];
        v148 = v147;
        v150 = v149;
        [v146 topRight];
        v152 = v151;
        v154 = v153;
        [v146 bottomRight];
        v156 = v155;
        v158 = v157;
        [v146 bottomLeft];
        v160 = v159;
        v162 = v161;
        v163 = type metadata accessor for RecognizedItem.Barcode(0);
        v164 = (v145 + v163[5]);
        *v164 = v148;
        v164[1] = v150;
        v164[2] = v152;
        v164[3] = v154;
        v164[4] = v156;
        v164[5] = v158;
        v164[6] = v160;
        v164[7] = v162;
        v164[8] = v146;
        *(v145 + v163[7]) = [v143 observation];
        v165 = [v143 payloadStringValue];
        if (v165)
        {
          v166 = v165;
          v167 = sub_23B2EAF10();
          v169 = v168;
        }

        else
        {

          v167 = 0;
          v169 = 0;
        }

        v138 = v142;
        v170 = (v219 + v163[6]);
        *v170 = v167;
        v170[1] = v169;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_23B2D75E4(0, v142[2] + 1, 1, v142);
        }

        v99 = v221;
        v135 = v141;
        v171 = v217;
        v173 = v138[2];
        v172 = v138[3];
        v10 = v223;
        if (v173 >= v172 >> 1)
        {
          v138 = sub_23B2D75E4(v172 > 1, v173 + 1, 1, v138);
        }

        v138[2] = v173 + 1;
        sub_23B2EA920(v219, v138 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v173, type metadata accessor for RecognizedItem);
        ++v137;
        if (v140 == v171)
        {
          goto LABEL_92;
        }
      }
    }

    v138 = MEMORY[0x277D84F90];
LABEL_92:
    v220 = v138;

    v58 = v216;
    v174 = v216 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = 0x27E12E000;
    v176 = v213;
    if (Strong)
    {
      v177 = *(v174 + 8);
      v178 = v222;
      if (v222[2])
      {
        ObjectType = swift_getObjectType();
        v180 = v216;
        v181 = *(v216 + v176);
        v182 = v177[3];

        v183 = v180;
        v99 = v221;
        v182(v183, v178, v181, ObjectType, v177);
        v176 = v213;
      }

      if (v99[2])
      {
        v184 = swift_getObjectType();
        v185 = v216;
        v186 = *(v216 + v176);
        v187 = v177[4];

        v188 = v185;
        v99 = v221;
        v187(v188, v221, v186, v184, v177);
        v176 = v213;
      }

      v189 = v220;
      if (*(v220 + 16))
      {
        v190 = swift_getObjectType();
        v191 = v216;
        v192 = *(v216 + v176);
        v193 = v177[5];

        v194 = v191;
        v195 = v190;
        v58 = v191;
        v99 = v221;
        v193(v194, v189, v192, v195, v177);
        v176 = v213;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v58 = v216;
      }
    }

    v196 = *(v58 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations);
    v197 = *(v196 + 16);
    if (v197)
    {
      v198 = *(v209 + 16);
      v199 = v196 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
      v224 = *(v209 + 72);
      v225 = v198;
      v200 = (v209 + 8);
      v201 = (v208 + 8);
      v219 = v196;

      v202 = v212;
      v203 = v211;
      v204 = v210;
      do
      {
        v225(v10, v199, v204);
        v226 = *(v216 + v176);

        sub_23B2EAFE0();
        v10 = v223;
        (*v200)(v223, v204);
        (*v201)(v203, v202);
        v199 += v224;
        --v197;
      }

      while (v197);

      v58 = v216;
      v3 = 0x27E12E000uLL;
      v99 = v221;
    }

    if (*(v58 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled) == 1)
    {
      sub_23B2E3E7C(v222, v99, v220);
    }
  }

  else
  {
    sub_23B2E25DC();
  }

  if (*(*(v58 + *(v3 + 1352)) + 16))
  {
    [*(v58 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView) hideGuidance];
    v205 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer;
    [*(v58 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer) invalidate];
    v206 = *(v58 + v205);
    *(v58 + v205) = 0;
  }

  else
  {
    sub_23B2E590C();
  }
}

void *sub_23B2E25DC()
{
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E728, &qword_23B2ECEB0);
  v159 = *(v184 - 8);
  v1 = *(v159 + 64);
  MEMORY[0x28223BE20](v184);
  v3 = &v156 - v2;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E5A0, &qword_23B2EC890);
  v162 = *(v161 - 8);
  v4 = *(v162 + 64);
  MEMORY[0x28223BE20](v161);
  v160 = &v156 - v5;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E730, &qword_23B2ECEB8);
  v6 = *(*(v172 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v172);
  v171 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v170 = &v156 - v9;
  *&v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E738, &qword_23B2ECEC0);
  v10 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v168);
  v174 = &v156 - v11;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E740, &qword_23B2ECEC8);
  v163 = *(v175 - 8);
  v12 = *(v163 + 64);
  MEMORY[0x28223BE20](v175);
  v165 = &v156 - v13;
  v178 = type metadata accessor for RecognizedItem.Barcode(0);
  v14 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v180 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for RecognizedItem.Text(0);
  v16 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v179 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RecognizedItem(0);
  v181 = *(v18 - 8);
  v19 = *(v181 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v156 = &v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v157 = &v156 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v173 = &v156 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v156 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v156 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v156 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v156 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E748, &qword_23B2ECED0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v41 = &v156 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v39);
  v44 = &v156 - v43;
  v45 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor;
  if (!*(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor) && !*(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor) && !*(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor))
  {
    return result;
  }

  v176 = v41;
  v158 = v3;
  v46 = *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems);
  aBlock = *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems);

  v186 = v0;
  sub_23B2E7308(v47);
  v48 = aBlock;
  v49 = *(v186 + v45);
  v50 = aBlock;
  if (v49)
  {
    v51 = v49;
    v52 = [v51 configuration];
    [v52 comparisonPoint];
    v54 = v53;
    v56 = v55;

    v48 = v50;
  }

  else
  {
    result = *(v186 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor);
    if (!result)
    {
      result = *(v186 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor);
      if (!result)
      {
        goto LABEL_58;
      }
    }

    v52 = [result configuration];
    [v52 comparisonPoint];
    v54 = v57;
    v56 = v58;
  }

  v59 = *(v48 + 16);
  v185 = v18;
  v164 = v44;
  if (v59)
  {
    v60 = v48 + ((*(v181 + 80) + 32) & ~*(v181 + 80));
    result = sub_23B2D17E8(v60, v36);
    if (v59 != 1)
    {
      v183 = v179 + 64;
      v182 = v180 + 64;
      v104 = 1;
      while (v104 < *(v48 + 16))
      {
        sub_23B2D17E8(v60 + *(v181 + 72) * v104, v34);
        sub_23B2D17E8(v34, v31);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v105 = v180;
          sub_23B2EA920(v31, v180, type metadata accessor for RecognizedItem.Barcode);
          v106 = *(v182 + *(v178 + 20));
          v107 = type metadata accessor for RecognizedItem.Barcode;
        }

        else
        {
          v105 = v179;
          sub_23B2EA920(v31, v179, type metadata accessor for RecognizedItem.Text);
          v106 = *(v183 + *(v177 + 20));
          v107 = type metadata accessor for RecognizedItem.Text;
        }

        sub_23B2EA878(v105, v107);
        [v106 vertexCentroid];
        v109 = v108;
        v111 = v110;

        v112 = MEMORY[0x23EE98FD0](v54, v56, v109, v111);
        sub_23B2D17E8(v36, v28);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v113 = v180;
          sub_23B2EA920(v28, v180, type metadata accessor for RecognizedItem.Barcode);
          v114 = *(v182 + *(v178 + 20));
          v115 = type metadata accessor for RecognizedItem.Barcode;
        }

        else
        {
          v113 = v179;
          sub_23B2EA920(v28, v179, type metadata accessor for RecognizedItem.Text);
          v114 = *(v183 + *(v177 + 20));
          v115 = type metadata accessor for RecognizedItem.Text;
        }

        sub_23B2EA878(v113, v115);
        [v114 vertexCentroid];
        v117 = v116;
        v119 = v118;

        if (v112 >= MEMORY[0x23EE98FD0](v54, v56, v117, v119))
        {
          result = sub_23B2EA878(v34, type metadata accessor for RecognizedItem);
        }

        else
        {
          sub_23B2EA878(v36, type metadata accessor for RecognizedItem);
          result = sub_23B2EA920(v34, v36, type metadata accessor for RecognizedItem);
        }

        v18 = v185;
        v48 = v50;
        if (v59 == ++v104)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      return result;
    }

LABEL_11:

    v44 = v164;
    sub_23B2EA920(v36, v164, type metadata accessor for RecognizedItem);
    v61 = v181;
    (*(v181 + 56))(v44, 0, 1, v18);
  }

  else
  {

    v61 = v181;
    (*(v181 + 56))(v44, 1, 1, v18);
  }

  v62 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems;
  v63 = *(v186 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems);
  v64 = *(v61 + 48);
  if (v64(v44, 1, v18) == 1)
  {
    v65 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E368, &qword_23B2ECEE0);
  v66 = *(v61 + 72);
  v67 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_23B2EC850;
  v68 = v176;
  sub_23B2EAB4C(v44, v176, &qword_27E12E748, &qword_23B2ECED0);
  result = (v64)(v68, 1, v18);
  if (result == 1)
  {
    goto LABEL_57;
  }

  sub_23B2EA920(v68, v65 + v67, type metadata accessor for RecognizedItem);
LABEL_17:
  v69 = v186;
  v176 = v62;
  *(v186 + v62) = v65;
  v70 = v69 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v72 = Strong;
    v183 = *(v70 + 8);
    v187 = v63;
    aBlock = v65;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E498, &qword_23B2EC878);
    sub_23B2EAA34(&qword_27E12E750, &qword_27E12E498, &qword_23B2EC878);
    sub_23B2EAEC0();

    v73 = sub_23B2EAA34(&qword_27E12E758, &qword_27E12E740, &qword_23B2ECEC8);
    v74 = v175;
    sub_23B2EB010();
    sub_23B2EB020();
    if (aBlock != v187 || (v75 = *&v176[v186], !*(v75 + 16)))
    {
      v79 = v174;
      (*(v163 + 16))(v174, v165, v74);
      v80 = *(v168 + 36);
      sub_23B2EB010();
      sub_23B2EB020();
      v81 = v173;
      if (*(v79 + v80) != aBlock)
      {
        v167 = v183 + 24;
        v166 = v183 + 40;
        v168 = xmmword_23B2EC850;
        v182 = v72;
        v169 = v73;
        do
        {
          v121 = sub_23B2EB040();
          v122 = v170;
          sub_23B2EAB4C(v123, v170, &qword_27E12E730, &qword_23B2ECEB8);
          v121(&aBlock, 0);
          sub_23B2EB030();
          v124 = v171;
          sub_23B2EAA7C(v122, v171);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E760, &qword_23B2ECED8);
          sub_23B2EA920(v124 + *(v126 + 48), v81, type metadata accessor for RecognizedItem);
          ObjectType = swift_getObjectType();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E368, &qword_23B2ECEE0);
          v128 = *(v61 + 72);
          v129 = v61;
          v130 = (*(v61 + 80) + 32) & ~*(v61 + 80);
          v131 = swift_allocObject();
          *(v131 + 16) = v168;
          sub_23B2D17E8(v81, v131 + v130);
          v132 = v186;
          v133 = *&v176[v186];
          v134 = v183;
          if (EnumCaseMultiPayload == 1)
          {
            v120 = *(v183 + 40);
          }

          else
          {
            v120 = *(v183 + 24);
          }

          v135 = *&v176[v186];

          v120(v132, v131, v133, ObjectType, v134);

          v81 = v173;
          sub_23B2EA878(v173, type metadata accessor for RecognizedItem);
          v79 = v174;
          v74 = v175;
          sub_23B2EB020();
          v61 = v129;
        }

        while (*(v79 + v80) != aBlock);
      }

      swift_unknownObjectRelease();
      sub_23B2EAAEC(v79, &qword_27E12E738, &qword_23B2ECEC0);
      (*(v163 + 8))(v165, v74);
      v82 = v161;
      v83 = v162;
      goto LABEL_26;
    }

    v76 = swift_getObjectType();
    v77 = v183;
    v78 = *(v183 + 32);

    v78(v186, v75, v75, v76, v77);
    swift_unknownObjectRelease();

    (*(v163 + 8))(v165, v74);
  }

  else
  {
  }

  v82 = v161;
  v83 = v162;
LABEL_26:
  v84 = v186;
  v85 = *(v186 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations);
  v86 = *(v85 + 16);
  if (v86)
  {
    v88 = *(v83 + 16);
    v87 = v83 + 16;
    v89 = v85 + ((*(v87 + 64) + 32) & ~*(v87 + 64));
    v182 = *(v87 + 56);
    v183 = v88;
    v90 = (v159 + 8);
    v175 = v85;

    v91 = v82;
    v92 = v158;
    v93 = v160;
    v94 = v176;
    do
    {
      (v183)(v93, v89, v91);
      aBlock = *(v84 + v94);

      sub_23B2EAFE0();
      v84 = v186;
      (*v90)(v92, v184);
      (*(v87 - 8))(v93, v91);
      v89 += v182;
      --v86;
    }

    while (v86);
  }

  if (*(v84 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled) == 1)
  {
    v95 = *(v84 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView);
    if (v95)
    {
      v96 = *&v176[v84];
      if (*(v96 + 16))
      {
        v97 = v157;
        sub_23B2D17E8(v96 + ((*(v181 + 80) + 32) & ~*(v181 + 80)), v157);
        v98 = v156;
        sub_23B2D17E8(v97, v156);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v99 = v180;
          sub_23B2EA920(v98, v180, type metadata accessor for RecognizedItem.Barcode);
          v100 = *(v99 + *(v178 + 20) + 64);
          v101 = v95;
          v102 = v100;
          v103 = type metadata accessor for RecognizedItem.Barcode;
        }

        else
        {
          v99 = v179;
          sub_23B2EA920(v98, v179, type metadata accessor for RecognizedItem.Text);
          v140 = *(v99 + *(v177 + 20) + 64);
          v141 = v95;
          v102 = v140;
          v103 = type metadata accessor for RecognizedItem.Text;
        }

        sub_23B2EA878(v99, v103);
        [v102 minimumBoundingRectWithoutRotation];
        v143 = v142;
        v145 = v144;
        v147 = v146;
        v149 = v148;
        [v102 averagedAngleFromBottomAndTopEdges];
        v151 = v150;
        v152 = objc_opt_self();
        v153 = swift_allocObject();
        v153[2] = v95;
        v153[3] = v143;
        v153[4] = v145;
        v153[5] = v147;
        v153[6] = v149;
        v153[7] = v151;
        v192 = sub_23B2EA988;
        v193 = v153;
        aBlock = MEMORY[0x277D85DD0];
        v189 = 1107296256;
        v190 = sub_23B2EACDC;
        v191 = &block_descriptor_192;
        v154 = _Block_copy(&aBlock);
        v155 = v95;

        [v152 animate_];
        _Block_release(v154);

        sub_23B2EA878(v97, type metadata accessor for RecognizedItem);
      }

      else
      {
        v136 = objc_opt_self();
        v137 = swift_allocObject();
        *(v137 + 16) = v95;
        v192 = sub_23B2EA9E4;
        v193 = v137;
        aBlock = MEMORY[0x277D85DD0];
        v189 = 1107296256;
        v190 = sub_23B2EACDC;
        v191 = &block_descriptor_198;
        v138 = _Block_copy(&aBlock);
        v139 = v95;

        [v136 animate_];

        _Block_release(v138);
      }
    }
  }

  return sub_23B2EAAEC(v164, &qword_27E12E748, &qword_23B2ECED0);
}

uint64_t sub_23B2E3A84(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for RecognizedItem.Barcode(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecognizedItem.Text(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecognizedItem(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = sub_23B2EADC0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v35 - v24;
  sub_23B2D17E8(a1, v17);
  v26 = (v19 + 16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B2EA920(v17, v6, type metadata accessor for RecognizedItem.Barcode);
    v27 = *v26;
    (*v26)(v25, v6, v18);
    v28 = type metadata accessor for RecognizedItem.Barcode;
    v29 = v6;
  }

  else
  {
    sub_23B2EA920(v17, v10, type metadata accessor for RecognizedItem.Text);
    v27 = *v26;
    (*v26)(v25, v10, v18);
    v28 = type metadata accessor for RecognizedItem.Text;
    v29 = v10;
  }

  sub_23B2EA878(v29, v28);
  sub_23B2D17E8(v36, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B2EA920(v15, v6, type metadata accessor for RecognizedItem.Barcode);
    v27(v23, v6, v18);
    v30 = type metadata accessor for RecognizedItem.Barcode;
    v31 = v6;
  }

  else
  {
    sub_23B2EA920(v15, v10, type metadata accessor for RecognizedItem.Text);
    v27(v23, v10, v18);
    v30 = type metadata accessor for RecognizedItem.Text;
    v31 = v10;
  }

  sub_23B2EA878(v31, v30);
  v32 = sub_23B2EADA0();
  v33 = *(v19 + 8);
  v33(v23, v18);
  v33(v25, v18);
  return v32 & 1;
}

uint64_t sub_23B2E3E38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_23B2E3E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v143 = a2;
  v7 = sub_23B2EADC0();
  v154 = *(v7 - 8);
  v8 = *(v154 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v141 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v168 = &v141 - v16;
  MEMORY[0x28223BE20](v15);
  v171 = &v141 - v17;
  v152 = type metadata accessor for RecognizedItem.Barcode(0);
  v18 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v167 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for RecognizedItem.Text(0);
  v20 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v166 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for RecognizedItem(0);
  v144 = *(v22 - 8);
  v23 = *(v144 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v145 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v161 = &v141 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v141 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v146 = &v141 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v153 = &v141 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v163 = &v141 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v160 = &v141 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v159 = &v141 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v141 - v41;
  v43 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_highlightViewForItemUUID;
  result = swift_beginAccess();
  v170 = v43;
  if (!*&v4[v43])
  {
    return result;
  }

  v142 = a3;
  v162 = v30;
  v147 = v14;
  v155 = v11;
  v45 = *(a1 + 16);
  v158 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  result = swift_beginAccess();
  v150 = v166 + 64;
  v149 = v167 + 64;
  v169 = v7;
  v165 = v22;
  v46 = v170;
  v47 = v168;
  if (!v45)
  {
LABEL_23:
    v87 = *(v143 + 16);
    v88 = v153;
    v89 = v163;
    if (v87)
    {
      v90 = v143 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
      v91 = (v154 + 16);
      v92 = (v154 + 8);
      v171 = *(v144 + 72);
      do
      {
        sub_23B2D17E8(v90, v89);
        sub_23B2D17E8(v89, v88);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v93 = v167;
          sub_23B2EA920(v88, v167, type metadata accessor for RecognizedItem.Barcode);
          (*v91)(v47, v93, v7);
          v94 = type metadata accessor for RecognizedItem.Barcode;
        }

        else
        {
          v93 = v166;
          sub_23B2EA920(v88, v166, type metadata accessor for RecognizedItem.Text);
          (*v91)(v47, v93, v7);
          v94 = type metadata accessor for RecognizedItem.Text;
        }

        sub_23B2EA878(v93, v94);
        v95 = *&v4[v170];
        if (!v95)
        {
          goto LABEL_62;
        }

        if (*(v95 + 16))
        {

          v96 = v168;
          v97 = sub_23B2E7434(v168);
          if (v98)
          {
            v99 = *v92;
            v100 = *(*(v95 + 56) + 8 * v97);
            v99(v96, v7);

            v101 = v146;
            sub_23B2D17E8(v163, v146);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v102 = v167;
              sub_23B2EA920(v101, v167, type metadata accessor for RecognizedItem.Barcode);
              v103 = *(v149 + *(v152 + 20));
              v104 = type metadata accessor for RecognizedItem.Barcode;
            }

            else
            {
              v102 = v166;
              sub_23B2EA920(v101, v166, type metadata accessor for RecognizedItem.Text);
              v103 = *(v150 + *(v151 + 20));
              v104 = type metadata accessor for RecognizedItem.Text;
            }

            sub_23B2EA878(v102, v104);
            v88 = v153;
            [v100 animateToQuad_];

            v47 = v168;
            v7 = v169;
            goto LABEL_27;
          }

          v88 = v153;
        }

        v47 = v168;
        (*v92)(v168, v7);
LABEL_27:
        v89 = v163;
        result = sub_23B2EA878(v163, type metadata accessor for RecognizedItem);
        v90 += v171;
        --v87;
      }

      while (v87);
    }

    v105 = *(v142 + 16);
    v106 = v147;
    v107 = v162;
    if (!v105)
    {
      return result;
    }

    v108 = v142 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
    v109 = (v154 + 16);
    v110 = (v154 + 8);
    v171 = *(v144 + 72);
    v164 = (v154 + 16);
    v148 = v4;
    while (1)
    {
      sub_23B2D17E8(v108, v107);
      v111 = v107;
      v112 = v161;
      sub_23B2D17E8(v111, v161);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v113 = v112;
        v114 = v167;
        sub_23B2EA920(v113, v167, type metadata accessor for RecognizedItem.Barcode);
        v115 = *v109;
        (*v109)(v106, v114, v7);
        v116 = type metadata accessor for RecognizedItem.Barcode;
      }

      else
      {
        v117 = v112;
        v114 = v166;
        sub_23B2EA920(v117, v166, type metadata accessor for RecognizedItem.Text);
        v115 = *v109;
        (*v109)(v106, v114, v7);
        v116 = type metadata accessor for RecognizedItem.Text;
      }

      sub_23B2EA878(v114, v116);
      v118 = *&v4[v170];
      if (!v118)
      {
        goto LABEL_63;
      }

      if (!*(v118 + 16))
      {
        goto LABEL_41;
      }

      v119 = sub_23B2E7434(v106);
      if ((v120 & 1) == 0)
      {
        break;
      }

      v121 = v110;
      v122 = *v110;
      v123 = *(*(v118 + 56) + 8 * v119);
      v169 = v122;
      v122(v106, v7);
      v110 = v121;

      v168 = v123;
      [v123 removeFromSuperview];
      v124 = v145;
      sub_23B2D17E8(v162, v145);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v125 = v124;
        v126 = v167;
        sub_23B2EA920(v125, v167, type metadata accessor for RecognizedItem.Barcode);
        v109 = v164;
        v115(v155, v126, v7);
        v127 = type metadata accessor for RecognizedItem.Barcode;
      }

      else
      {
        v128 = v124;
        v126 = v166;
        sub_23B2EA920(v128, v166, type metadata accessor for RecognizedItem.Text);
        v109 = v164;
        v115(v155, v126, v7);
        v127 = type metadata accessor for RecognizedItem.Text;
      }

      sub_23B2EA878(v126, v127);
      v129 = v170;
      v130 = v148;
      swift_beginAccess();
      if (!*&v130[v129])
      {
        goto LABEL_66;
      }

      v131 = v155;
      v132 = sub_23B2E7434(v155);
      if (v133)
      {
        v134 = v132;
        v135 = v170;
        v136 = v148;
        v137 = *&v148[v170];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v139 = *&v136[v135];
        v172 = v139;
        *&v136[v135] = 0x8000000000000000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23B2E7D88();
          v139 = v172;
        }

        v140 = v169;
        v169((*(v139 + 48) + *(v154 + 72) * v134), v7);

        sub_23B2E7A68(v134, v139);
        v140(v155, v7);
        v110 = v121;
        *&v136[v135] = v139;
        v106 = v147;
        v4 = v136;
      }

      else
      {
        v169(v131, v7);
        v106 = v147;
        v4 = v148;
      }

      swift_endAccess();

LABEL_42:
      v107 = v162;
      result = sub_23B2EA878(v162, type metadata accessor for RecognizedItem);
      v108 += v171;
      if (!--v105)
      {
        return result;
      }
    }

LABEL_41:
    (*v110)(v106, v7);
    goto LABEL_42;
  }

  v164 = (v154 + 16);
  v157 = (v154 + 8);
  v48 = a1 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
  v156 = *(v144 + 72);
  while (1)
  {
    sub_23B2D17E8(v48, v42);
    v51 = [v4 view];
    if (!v51)
    {
      break;
    }

    v52 = v51;
    [v51 bounds];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;

    v61 = [objc_allocWithZone(MEMORY[0x277D78580]) initWithFrame_];
    v62 = v159;
    sub_23B2D17E8(v42, v159);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v63 = v167;
      sub_23B2EA920(v62, v167, type metadata accessor for RecognizedItem.Barcode);
      v64 = *(v149 + *(v152 + 20));
      v65 = type metadata accessor for RecognizedItem.Barcode;
    }

    else
    {
      v63 = v166;
      sub_23B2EA920(v62, v166, type metadata accessor for RecognizedItem.Text);
      v64 = *(v150 + *(v151 + 20));
      v65 = type metadata accessor for RecognizedItem.Text;
    }

    sub_23B2EA878(v63, v65);
    [v61 setQuad_];

    v66 = v160;
    sub_23B2D17E8(v42, v160);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v67 = v66;
      v68 = v167;
      sub_23B2EA920(v67, v167, type metadata accessor for RecognizedItem.Barcode);
      v69 = *v164;
      (*v164)(v171, v68, v169);
      v70 = type metadata accessor for RecognizedItem.Barcode;
    }

    else
    {
      v71 = v66;
      v68 = v166;
      sub_23B2EA920(v71, v166, type metadata accessor for RecognizedItem.Text);
      v69 = *v164;
      (*v164)(v171, v68, v169);
      v70 = type metadata accessor for RecognizedItem.Text;
    }

    sub_23B2EA878(v68, v70);
    swift_beginAccess();
    if (!*&v4[v46])
    {
      goto LABEL_64;
    }

    v72 = v61;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v172 = *&v4[v46];
    v74 = v172;
    *&v4[v46] = 0x8000000000000000;
    v76 = sub_23B2E7434(v171);
    v77 = v74[2];
    v78 = (v75 & 1) == 0;
    v79 = v77 + v78;
    if (__OFADD__(v77, v78))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      break;
    }

    v80 = v75;
    if (v74[3] >= v79)
    {
      if ((v73 & 1) == 0)
      {
        sub_23B2E7D88();
      }
    }

    else
    {
      sub_23B2E768C(v79, v73);
      v81 = sub_23B2E7434(v171);
      if ((v80 & 1) != (v82 & 1))
      {
        goto LABEL_67;
      }

      v76 = v81;
    }

    v83 = v172;
    if (v80)
    {
      v49 = v172[7];
      v50 = *(v49 + 8 * v76);
      *(v49 + 8 * v76) = v72;
    }

    else
    {
      v172[(v76 >> 6) + 8] |= 1 << v76;
      v69(v83[6] + *(v154 + 72) * v76, v171, v169);
      *(v83[7] + 8 * v76) = v72;
      v84 = v83[2];
      v85 = __OFADD__(v84, 1);
      v86 = v84 + 1;
      if (v85)
      {
        goto LABEL_61;
      }

      v83[2] = v86;
    }

    v7 = v169;
    (*v157)(v171, v169);
    v46 = v170;
    *&v4[v170] = v83;
    swift_endAccess();
    [*&v4[v158] addSubview_];

    result = sub_23B2EA878(v42, type metadata accessor for RecognizedItem);
    v48 += v156;
    --v45;
    v47 = v168;
    if (!v45)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = sub_23B2EB1D0();
  __break(1u);
  return result;
}

void sub_23B2E4E74()
{
  v1 = [*&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] previewView];
  [v0 setView_];

  v2 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  [*&v0[v2] setAutoresizingMask_];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  [v14 addSubview_];

  v16 = *&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_hitTestView];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame_];
  [v16 setAutoresizingMask_];
  v27 = [v0 view];
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = v27;
  [v27 addSubview_];

  if (v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isGuidanceEnabled] != 1)
  {
    goto LABEL_8;
  }

  v29 = [objc_allocWithZone(MEMORY[0x277D78568]) init];
  v30 = *&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView];
  *&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView] = v29;
  v31 = v29;

  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v33 = v32;
  [v32 addSubview_];

LABEL_8:
  if (v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_isHighlightingEnabled] == 1)
  {
    if (v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems] == 1)
    {
      v34 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_highlightViewForItemUUID;
      swift_beginAccess();
      v35 = *&v0[v34];
      *&v0[v34] = MEMORY[0x277D84F98];
    }

    else
    {
      [*&v0[v2] bounds];
      v40 = [objc_allocWithZone(MEMORY[0x277D78570]) initWithFrame_];
      [v40 setAutoresizingMask_];
      [*&v0[v2] addSubview_];
      [v40 setSpotlightBlurRadius_];
      [v40 setInvertedShadowAlpha_];
      v41 = *&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView];
      *&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView] = v40;
    }
  }
}

void sub_23B2E5254()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for DataScannerViewController();
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView];
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E580, &unk_23B2EC880);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_23B2EC860;
    v4 = v2;
    v5 = [v4 widthAnchor];
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 widthAnchor];

      v9 = [v5 constraintLessThanOrEqualToAnchor:v8 multiplier:0.666666667];
      *(v3 + 32) = v9;
      v10 = [v4 centerXAnchor];
      v11 = [v1 view];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 centerXAnchor];

        v14 = [v10 constraintEqualToAnchor_];
        *(v3 + 40) = v14;
        v15 = [v4 topAnchor];

        v16 = [v1 view];
        if (v16)
        {
          v17 = v16;
          v18 = objc_opt_self();
          v19 = [v17 safeAreaLayoutGuide];

          v20 = [v19 topAnchor];
          v21 = [v15 constraintEqualToAnchor:v20 constant:20.0];

          *(v3 + 48) = v21;
          sub_23B2D2208(0, &qword_27E12E588, 0x277CCAAD0);
          v22 = sub_23B2EAF50();

          [v18 activateConstraints_];

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

id sub_23B2E5554(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for DataScannerViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v3 = objc_opt_self();
  if ([v3 isCameraRestricted])
  {
    v4 = &v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate];
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v9 = 1;
    goto LABEL_8;
  }

  if ([v3 isSupported])
  {
    return [*&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] startRunning];
  }

  v8 = &v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v9 = 0;
LABEL_8:
    (*(v6 + 48))(v1, &v9, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_23B2E56F8(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DataScannerViewController();
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1 & 1);
  sub_23B2E6E38();
  [*&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] stopRunning];
  [*&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView] hideGuidance];
  v3 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer;
  [*&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer] invalidate];
  v4 = *&v1[v3];
  *&v1[v3] = 0;
}

id sub_23B2E584C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataScannerViewController();
  objc_msgSendSuper2(&v2, sel_removeFromParentViewController);
  sub_23B2E6E38();
  return [*&v0[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] stopRunning];
}

void sub_23B2E590C()
{
  v1 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer;
  if (!*(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer))
  {
    if (*(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView))
    {
      v2 = objc_opt_self();
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7[4] = sub_23B2EABB4;
      v7[5] = v3;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 1107296256;
      v7[2] = sub_23B2EAD44;
      v7[3] = &block_descriptor_204;
      v4 = _Block_copy(v7);

      v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:3.0];
      _Block_release(v4);
      v6 = *(v0 + v1);
      *(v0 + v1) = v5;
    }
  }
}

uint64_t sub_23B2E5A34()
{
  v0 = sub_23B2EAE80();
  v15 = *(v0 - 8);
  v1 = *(v15 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23B2EAEA0();
  v4 = *(v14 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v8 = sub_23B2EB080();
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_23B2EABBC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2EACDC;
  aBlock[3] = &block_descriptor_208;
  v11 = _Block_copy(aBlock);

  sub_23B2EAE90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23B2EA8D8(&qword_27E12E6D8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EAA34(&qword_27E12E6E8, &qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EB0F0();
  MEMORY[0x23EE98E10](0, v7, v3, v11);
  _Block_release(v11);

  (*(v15 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v14);
}

void sub_23B2E5D50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*(Strong + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType) & 1) == 0;
    sub_23B2D2208(0, &qword_27E12E708, 0x277D78578);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    sub_23B2EAD70();

    v5 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView];
    if (v5)
    {
      v6 = v5;
      v7 = sub_23B2EAEE0();

      [v6 showGuidanceWithText_];
    }

    else
    {
    }

    v8 = *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer];
    *&v1[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer] = 0;
  }
}

void sub_23B2E5F28(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_23B2E5F90(void *a1)
{
  v2 = v1;
  v66 = type metadata accessor for RecognizedItem.Barcode(0);
  v4 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for RecognizedItem.Text(0);
  v7 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecognizedItem(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = [v2 view];
  [a1 locationInView_];
  v20 = v19;
  v22 = v21;

  v23 = v2;
  [*&v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] setInterestPoint_];
  v24 = *&v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems];
  v25 = *(v24 + 16);
  if (v25)
  {
    v60 = *&v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems];
    v61 = v2;
    v26 = &v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate];
    v27 = v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

    swift_beginAccess();
    v28 = v6;
    v29 = *(v11 + 72);
    v63 = v9 + 64;
    v64 = v28;
    v62 = v28 + 64;
    do
    {
      sub_23B2D17E8(v27, v17);
      sub_23B2D17E8(v17, v15);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = v64;
        sub_23B2EA920(v15, v64, type metadata accessor for RecognizedItem.Barcode);
        v31 = *(v62 + *(v66 + 20));
        v32 = type metadata accessor for RecognizedItem.Barcode;
        v33 = v30;
      }

      else
      {
        sub_23B2EA920(v15, v9, type metadata accessor for RecognizedItem.Text);
        v31 = *&v63[*(v65 + 20)];
        v32 = type metadata accessor for RecognizedItem.Text;
        v33 = v9;
      }

      sub_23B2EA878(v33, v32);
      v34 = [v31 containsPoint_];

      if (v34 && swift_unknownObjectWeakLoadStrong())
      {
        v35 = *(v26 + 1);
        ObjectType = swift_getObjectType();
        (*(v35 + 16))(v61, v17, ObjectType, v35);
        swift_unknownObjectRelease();
      }

      sub_23B2EA878(v17, type metadata accessor for RecognizedItem);
      v27 += v29;
      --v25;
    }

    while (v25);

    v23 = v61;
  }

  if ((v23[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizesMultipleItems] & 1) == 0)
  {
    v37 = [v23 view];
    if (v37)
    {
      v38 = v37;
      [v37 bounds];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v47 = MEMORY[0x23EE98FE0](v20, v22, v40, v42, v44, v46);
      v48 = MEMORY[0x23EE98FF0](v47);
      v50 = v49;
      v51 = *&v23[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor];
      if (v51)
      {
        v52 = v51;
        v53 = [v52 configuration];
        [v53 setComparisonPoint_];
        [v52 setConfiguration_];
      }

      v54 = *&v23[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor];
      if (v54)
      {
        v55 = v54;
        v56 = [v55 configuration];
        [v56 setComparisonPoint_];
        [v55 setConfiguration_];
      }

      v57 = *&v23[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor];
      if (v57)
      {
        v58 = v57;
        v59 = [v58 configuration];
        [v59 setComparisonPoint_];
        [v58 setConfiguration_];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_23B2E6560(void *a1)
{
  result = [a1 state];
  if (result == 2)
  {
    v5 = *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_initialPinchZoom);
    [a1 scale];
    v6 = *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider);
    v8 = v5 * v7;

    return [v6 setZoomFactor_];
  }

  else if (result == 1)
  {
    result = [*(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) zoomFactor];
    *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_initialPinchZoom) = v4;
  }

  return result;
}

uint64_t sub_23B2E6684()
{
  v1[3] = v0;
  v1[4] = sub_23B2EAFD0();
  v1[5] = sub_23B2EAFC0();
  v3 = sub_23B2EAF90();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_23B2E6720, v3, v2);
}

uint64_t sub_23B2E6720()
{
  if (qword_27E12E120 != -1)
  {
    swift_once();
  }

  v1 = sub_23B2EAE70();
  __swift_project_value_buffer(v1, qword_27E12E420);
  v2 = sub_23B2EAE50();
  v3 = sub_23B2EB070();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B2CF000, v2, v3, "Starting capturePhoto()", v4, 2u);
    MEMORY[0x23EE99510](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];

  [*(v6 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) capturePhoto];
  v7 = sub_23B2EAFC0();
  v0[8] = v7;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *(v8 + 16) = v6;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[10] = v10;
  v11 = sub_23B2D2208(0, &qword_27E12E590, 0x277D755B8);
  *v10 = v0;
  v10[1] = sub_23B2E6910;
  v12 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 2, v7, v12, 0x5065727574706163, 0xEE0029286F746F68, sub_23B2E90A0, v8, v11);
}

uint64_t sub_23B2E6910()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_23B2E6A9C;
  }

  else
  {
    v7 = v2[8];
    v8 = v2[9];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_23B2E6A34;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23B2E6A34()
{
  v1 = v0[5];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_23B2E6A9C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_23B2E6B14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E360, &unk_23B2EC560);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  if (qword_27E12E120 != -1)
  {
    swift_once();
  }

  v9 = sub_23B2EAE70();
  __swift_project_value_buffer(v9, qword_27E12E420);
  v10 = sub_23B2EAE50();
  v11 = sub_23B2EB070();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B2CF000, v10, v11, "Appending continuation for capturePhoto()", v12, 2u);
    MEMORY[0x23EE99510](v12, -1, -1);
  }

  (*(v5 + 16))(v8, a1, v4);
  v13 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_capturePhotoCompletions;
  swift_beginAccess();
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_23B2D73B4(0, v14[2] + 1, 1, v14);
    *(a2 + v13) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_23B2D73B4(v16 > 1, v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  result = (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v8, v4);
  *(a2 + v13) = v14;
  return result;
}

void sub_23B2E6D68()
{
  v1 = objc_opt_self();
  if (![v1 isSupported])
  {
    v2 = 0;
    goto LABEL_5;
  }

  if ([v1 isCameraRestricted])
  {
    v2 = 1;
LABEL_5:
    sub_23B2E90A8();
    swift_allocError();
    *v3 = v2;
    swift_willThrow();
    return;
  }

  v4 = *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider);
  if (([v4 isProcessing] & 1) == 0)
  {
    [v4 startProcessing];
    sub_23B2E590C();
  }
}