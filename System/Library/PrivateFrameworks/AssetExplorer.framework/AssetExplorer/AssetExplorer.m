uint64_t sub_2411E0190()
{
  MEMORY[0x245CDF4C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2411E01C8()
{
  sub_2411E23AC(0, &qword_27E536128, 0x277D755B8);
  if (qword_27E536080 != -1)
  {
    swift_once();
  }

  v0 = qword_27E536088;
  v1 = qword_27E536088;
  result = sub_2411E028C(0x6B726170735F5047, 0xEA0000000000656CLL, v0);
  if (result)
  {
    v3 = result;
    v4 = [result imageWithRenderingMode_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2411E028C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_2411FCAA4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

id sub_2411E030C(double a1, double a2, double a3, double a4)
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_defaultImageOpacity);
  OUTLINED_FUNCTION_1(OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_generativeImageOpacity);
  v9 = OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_sparklesImage;
  *&v4[v9] = sub_2411E01C8();
  *&v4[OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_backgroundView] = 0;
  v10 = OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_buttonBGColor;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.4 alpha:0.9];
  v11 = OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_buttonTintColor;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.84];
  v12 = OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_generativeButtonBGColor;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.05 green:0.64 blue:1.0 alpha:0.9];
  v13 = OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_generativeButtonTintColor;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.98];
  v4[OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_isGenerativeAssetAppearance] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for AEGenerativePlaygroundButton();
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_2411E0948();

  return v14;
}

id sub_2411E04C4(void *a1)
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_defaultImageOpacity);
  OUTLINED_FUNCTION_1(OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_generativeImageOpacity);
  v3 = OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_sparklesImage;
  *&v1[v3] = sub_2411E01C8();
  *&v1[OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_backgroundView] = 0;
  v4 = OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_buttonBGColor;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.4 alpha:0.9];
  v5 = OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_buttonTintColor;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.84];
  v6 = OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_generativeButtonBGColor;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.05 green:0.64 blue:1.0 alpha:0.9];
  v7 = OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_generativeButtonTintColor;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.98];
  v1[OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_isGenerativeAssetAppearance] = 0;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for AEGenerativePlaygroundButton();
  v8 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_2411E0948();
  }

  return v9;
}

uint64_t sub_2411E0690()
{
  v1 = OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_isGenerativeAssetAppearance;
  OUTLINED_FUNCTION_2();
  return *(v0 + v1);
}

void sub_2411E0718(char a1)
{
  v3 = OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_isGenerativeAssetAppearance;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_2411E07C8(v4);
}

uint64_t sub_2411E0770@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2411E0690();
  *a2 = result & 1;
  return result;
}

void sub_2411E07C8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_isGenerativeAssetAppearance;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 != v3)
  {
    v6 = *(v2 + OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_backgroundView);
    if (v6)
    {
      v7 = v6;
      sub_2411E11B8(v5);
    }

    sub_2411E0DAC();
  }
}

void (*sub_2411E0854(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_isGenerativeAssetAppearance;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return sub_2411E08D4;
}

void sub_2411E08D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  sub_2411E0718(*(*a1 + 32));

  free(v1);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_2411E0948()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E536130, &qword_2411FFF18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v25 - v3;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E536138, &qword_2411FFF20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v25 - v6;
  v8 = sub_2411FCB44();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 setUserInteractionEnabled_];
  [v0 bounds];
  v17 = [objc_allocWithZone(type metadata accessor for ButtonBackground()) initWithFrame_];
  sub_2411FCB34();
  v18 = [objc_opt_self() whiteColor];
  sub_2411FCB04();
  v26 = v17;
  v19 = sub_2411FCAF4();
  sub_2411FCA74();
  v19(v27, 0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2411FCA94();
  v20 = sub_2411FCA84();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v20);
  sub_2411FCB14();
  v21 = *&v0[OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_sparklesImage];
  sub_2411FCB24();
  (*(v9 + 16))(v4, v12, v8);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v8);
  sub_2411FCB54();
  v22 = *&v0[OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_backgroundView];
  *&v1[OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_backgroundView] = v17;
  v23 = v26;

  sub_2411E0DAC();
  return (*(v9 + 8))(v12, v8);
}

id sub_2411E0C84(void *a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v10[0] = 0.0;
    [a1 getRed:0 green:0 blue:0 alpha:v10];
    v3 = [v2 isHighlighted];
    v4 = v10[0];
    if (v3)
    {
      v4 = v10[0] * 0.4;
    }

    v5 = [a1 colorWithAlphaComponent_];

    v6 = *MEMORY[0x277D85DE8];
    return v5;
  }

  else
  {
    v8 = *MEMORY[0x277D85DE8];

    return a1;
  }
}

void sub_2411E0DAC()
{
  v1 = OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_isGenerativeAssetAppearance;
  OUTLINED_FUNCTION_2();
  if (v0[v1])
  {
    v2 = 0.98;
  }

  else
  {
    v2 = 0.54;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:v2];
  [v0 setTintColor_];
}

void sub_2411E0E3C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AEGenerativePlaygroundButton();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC13AssetExplorer28AEGenerativePlaygroundButton_backgroundView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }
}

BOOL sub_2411E0F20(CGFloat a1, CGFloat a2)
{
  [v2 bounds];
  v8 = CGRectInset(v7, -18.0, -18.0);
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v8, v6);
}

CGColorRef sub_2411E1128()
{
  result = CGColorCreateGenericRGB(0.0509803922, 0.639215686, 1.0, 1.0);
  qword_27E536068 = result;
  return result;
}

CGColorRef sub_2411E1160()
{
  result = CGColorCreateGenericRGB(0.125490196, 0.647058824, 1.0, 1.0);
  qword_27E536078 = result;
  return result;
}

id sub_2411E1198(id result)
{
  if (*(v1 + OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminated) != (result & 1))
  {
    return sub_2411E1B6C();
  }

  return result;
}

id sub_2411E11B8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminated);
  *(v1 + OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminated) = a1;
  return sub_2411E1198(v2);
}

double sub_2411E11D0()
{
  sub_2411E23AC(0, &qword_27E536110, 0x277CD9EA0);
  v0 = *MEMORY[0x277CDA580];
  sub_2411FCAB4();
  v1 = sub_2411E1464();
  v2 = sub_2411FCAC4();
  [v1 setValue:v2 forKey:*MEMORY[0x277CDA540]];

  v3 = sub_2411FCAE4();
  v4 = *MEMORY[0x277CDA360];
  [v1 setValue:v3 forKey:*MEMORY[0x277CDA360]];

  v5 = *MEMORY[0x277CDA2D0];
  sub_2411FCAB4();
  v6 = sub_2411E1464();
  v7 = sub_2411FCAE4();
  [v6 setValue:v7 forKey:v4];

  v8 = *MEMORY[0x277CDA290];
  sub_2411FCAB4();
  v9 = sub_2411E1464();
  v10 = sub_2411FCAE4();
  [v9 setValue:v10 forKey:v4];

  v11 = *MEMORY[0x277CDA328];
  sub_2411FCAB4();
  v12 = sub_2411E1464();
  v13 = sub_2411FCAE4();
  [v12 setValue:v13 forKey:*MEMORY[0x277CDA4F0]];

  v14 = sub_2411FCAD4();
  [v12 setValue:v14 forKey:*MEMORY[0x277CDA4C8]];

  v15 = sub_2411FCAD4();
  [v12 setValue:v15 forKey:*MEMORY[0x277CDA4A0]];

  v16 = sub_2411FCAA4();
  [v12 setValue:v16 forKey:*MEMORY[0x277CDA4E8]];

  v17 = sub_2411FCAD4();
  [v12 setValue:v17 forKey:*MEMORY[0x277CDA448]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E536120, &qword_2411FFF10);
  v18 = swift_allocObject();
  *&result = 4;
  *(v18 + 16) = xmmword_2411FFE90;
  *(v18 + 32) = v1;
  *(v18 + 40) = v6;
  *(v18 + 48) = v9;
  *(v18 + 56) = v12;
  return result;
}

id sub_2411E1464()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2411FCAA4();

  v2 = [v0 initWithType_];

  return v2;
}

double sub_2411E14D8()
{
  sub_2411E23AC(0, &qword_27E536110, 0x277CD9EA0);
  v0 = *MEMORY[0x277CDA580];
  sub_2411FCAB4();
  v1 = sub_2411E1464();
  v2 = sub_2411FCAC4();
  [v1 setValue:v2 forKey:*MEMORY[0x277CDA540]];

  v3 = sub_2411FCAE4();
  [v1 setValue:v3 forKey:*MEMORY[0x277CDA360]];

  v4 = *MEMORY[0x277CDA328];
  sub_2411FCAB4();
  v5 = sub_2411E1464();
  v6 = sub_2411FCAE4();
  [v5 setValue:v6 forKey:*MEMORY[0x277CDA4F0]];

  v7 = sub_2411FCAD4();
  [v5 setValue:v7 forKey:*MEMORY[0x277CDA4C8]];

  v8 = sub_2411FCAD4();
  [v5 setValue:v8 forKey:*MEMORY[0x277CDA4A0]];

  v9 = sub_2411FCAA4();
  [v5 setValue:v9 forKey:*MEMORY[0x277CDA4E8]];

  v10 = sub_2411FCAD4();
  [v5 setValue:v10 forKey:*MEMORY[0x277CDA448]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E536120, &qword_2411FFF10);
  v11 = swift_allocObject();
  *&result = 2;
  *(v11 + 16) = xmmword_2411FFEA0;
  *(v11 + 32) = v1;
  *(v11 + 40) = v5;
  return result;
}

id sub_2411E16CC(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  if (*a1 != -1)
  {
    swift_once();
  }

  [v6 setBackgroundColor_];
  [v6 setCompositingFilter_];
  return v6;
}

char *sub_2411E176C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v4[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminated] = 0;
  v10 = OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_defaultBackdropFilters;
  sub_2411E11D0();
  *&v4[v10] = v11;
  v12 = OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminatedBackdropFilters;
  sub_2411E14D8();
  *&v4[v12] = v13;
  v14 = OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminatedPlusLighterLayer;
  *&v4[v14] = sub_2411E16CC(&qword_27E536060, &qword_27E536068, MEMORY[0x277CDA5E8]);
  v15 = OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminatedPlusDarkerLayer;
  *&v4[v15] = sub_2411E16CC(&qword_27E536070, &qword_27E536078, MEMORY[0x277CDA5D8]);
  sub_2411E23AC(0, &qword_27E536128, 0x277D755B8);
  if (qword_27E536080 != -1)
  {
    swift_once();
  }

  v16 = qword_27E536088;
  v17 = qword_27E536088;
  result = sub_2411E028C(0x62726F5F5047, 0xE600000000000000, v16);
  if (result)
  {
    v19 = result;
    v20 = [result imageWithRenderingMode_];

    v21 = [objc_allocWithZone(MEMORY[0x277CD9E08]) init];
    *&v5[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_backdropLayer] = v21;
    v22 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    *&v5[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_maskLayer] = v22;
    v23 = v22;
    v24 = [v20 CGImage];
    [v23 setContents_];

    v40.receiver = v5;
    v40.super_class = type metadata accessor for ButtonBackground();
    v25 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a1, a2, a3, a4);
    v26 = OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_backdropLayer;
    v27 = *&v25[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_backdropLayer];
    v28 = v25;
    v29 = v27;
    [v28 bounds];
    [v29 setFrame_];

    v30 = OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_maskLayer;
    v31 = *&v28[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_maskLayer];
    [v28 bounds];
    [v31 setFrame_];

    v32 = OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminatedPlusLighterLayer;
    v33 = *&v28[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminatedPlusLighterLayer];
    [v28 bounds];
    [v33 setFrame_];

    v34 = OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminatedPlusDarkerLayer;
    v35 = *&v28[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminatedPlusDarkerLayer];
    [v28 bounds];
    [v35 setFrame_];

    v36 = [v28 layer];
    [v36 addSublayer_];

    v37 = [v28 layer];
    [v37 addSublayer_];

    v38 = [v28 layer];
    [v38 addSublayer_];

    v39 = [v28 layer];
    [v39 setMask_];

    sub_2411E1B6C();
    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2411E1B6C()
{
  v1 = v0[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminated];
  v2 = &OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminatedBackdropFilters;
  if (!v0[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminated])
  {
    v2 = &OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_defaultBackdropFilters;
  }

  v3 = *&v0[*v2];
  v4 = *&v0[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_backdropLayer];

  v6 = sub_2411E1C50(v5);

  sub_2411E22E0(v6, v4);

  [*&v0[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminatedPlusLighterLayer] setHidden_];
  [*&v0[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminatedPlusDarkerLayer] setHidden_];

  return [v0 setNeedsLayout];
}

char *sub_2411E1C50(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2411FCB84();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x277D84F90];
  result = sub_2411E21B4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x245CDEBB0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_2411E23AC(0, &qword_27E536110, 0x277CD9EA0);
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2411E21B4((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_2411E2350(&v9, (v3 + 32 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_2411E1DB8()
{
  *(v0 + OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminated) = 0;
  v1 = OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_defaultBackdropFilters;
  sub_2411E11D0();
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminatedBackdropFilters;
  sub_2411E14D8();
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminatedPlusLighterLayer;
  *(v0 + v5) = sub_2411E16CC(&qword_27E536060, &qword_27E536068, MEMORY[0x277CDA5E8]);
  v6 = OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminatedPlusDarkerLayer;
  *(v0 + v6) = sub_2411E16CC(&qword_27E536070, &qword_27E536078, MEMORY[0x277CDA5D8]);
  sub_2411FCB74();
  __break(1u);
}

void sub_2411E1EDC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ButtonBackground();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_backdropLayer];
  [v0 bounds];
  [v1 setFrame_];

  v2 = *&v0[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_maskLayer];
  [v0 bounds];
  [v2 setFrame_];

  v3 = *&v0[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminatedPlusLighterLayer];
  [v0 bounds];
  [v3 setFrame_];

  v4 = *&v0[OBJC_IVAR____TtC13AssetExplorerP33_40797D6A7E016042C02AA52347E32AD816ButtonBackground_illuminatedPlusDarkerLayer];
  [v0 bounds];
  [v4 setFrame_];
}

id sub_2411E2050(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2411E2138()
{
  v0 = sub_2411FCAA4();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    qword_27E536088 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    __break(1u);
  }
}

char *sub_2411E21B4(char *a1, int64_t a2, char a3)
{
  result = sub_2411E21D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2411E21D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E536118, &qword_2411FFF08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2411E22E0(uint64_t a1, void *a2)
{
  v3 = sub_2411FCAC4();

  [a2 setFilters_];
}

_OWORD *sub_2411E2350(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

uint64_t sub_2411E23AC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_2()
{

  return swift_beginAccess();
}

void sub_2411E4428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2411E4728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2411E48A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2411E4A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2411E4D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UnsuppressedURLs(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [v2 allKeys];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [v2 mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          if ([v12 hasPrefix:@"com.apple.asset-explorer-package.suppressed."])
          {
            v13 = [v12 stringByReplacingOccurrencesOfString:@"com.apple.asset-explorer-package.suppressed." withString:&stru_2852F4758];

            [(NSMutableDictionary *)v5 ae_moveObjectFromKey:v12 toKey:v13];
            [v4 addObject:v13];
            v12 = v13;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  if (a2)
  {
    v14 = v4;
    *a2 = v4;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

void sub_2411E59A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2411E66CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2411EABC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 104));
  _Unwind_Resume(a1);
}

id AssetExplorerBundle()
{
  if (AssetExplorerBundle_onceToken != -1)
  {
    dispatch_once(&AssetExplorerBundle_onceToken, &__block_literal_global_825);
  }

  v1 = __AssetExplorerBundle;

  return v1;
}

uint64_t __AssetExplorerBundle_block_invoke()
{
  __AssetExplorerBundle = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Aeexplorerview.isa)];

  return MEMORY[0x2821F96F8]();
}

void __AEIsModernAspectScreen_block_invoke()
{
  v2 = [MEMORY[0x277D759A0] px_mainScreen];
  [v2 _referenceBounds];
  AEIsModernAspectScreen_isModernScreen = v1 / v0 >= 2.16;
}

void AEChatKitSendAnalyticsEventAssetSentFromSource(unint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (a1 > 5)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_278CC7288[a1];
  }

  v4 = @"sendSource";
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  AnalyticsSendEvent();

  v3 = *MEMORY[0x277D85DE8];
}

void AEChatKitSendAnalyticsEventAssetsSentCount(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"itemsCount";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  AnalyticsSendEvent();
  v3 = *MEMORY[0x277D85DE8];
}

void sub_2411F3248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__987(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2411F3D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

void sub_2411F4328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2411F5C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2411F60A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1081(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2411FA0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1254(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2411FB114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}