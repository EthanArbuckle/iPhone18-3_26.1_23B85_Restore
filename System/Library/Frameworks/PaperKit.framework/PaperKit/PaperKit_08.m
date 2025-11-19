void ValueStepper.init(minValue:maxValue:unit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v9 = MEMORY[0x1DA6CCED0](0x73756E696DLL, 0xE500000000000000);
  v10 = objc_opt_self();
  v11 = [v10 systemImageNamed_];

  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = OBJC_IVAR____TtC8PaperKit12ValueStepper_decreaseButton;
  v13 = type metadata accessor for StepperButton();
  v14 = objc_allocWithZone(v13);
  *&v5[v12] = StepperButton.init(image:)(v11);
  v15 = MEMORY[0x1DA6CCED0](1937075312, 0xE400000000000000);
  v16 = [v10 systemImageNamed_];

  if (!v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = OBJC_IVAR____TtC8PaperKit12ValueStepper_increaseButton;
  v18 = objc_allocWithZone(v13);
  *&v5[v17] = StepperButton.init(image:)(v16);
  v19 = OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabel;
  *&v5[v19] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v20 = OBJC_IVAR____TtC8PaperKit12ValueStepper_contentStackView;
  *&v5[v20] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_interItemSpacing] = 0x4024000000000000;
  *&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_cornerRadius] = 0x4020000000000000;
  *&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabelWidth] = 0x405A000000000000;
  *&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabelBorderWidth] = 0x4008000000000000;
  v21 = &v5[OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue];
  *v21 = 0;
  v21[8] = 1;
  *&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue] = a1;
  *&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue] = a2;
  v22 = &v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_unit];
  *v22 = a3;
  *(v22 + 1) = a4;
  v110.receiver = v5;
  v110.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v110, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v24 = OBJC_IVAR____TtC8PaperKit12ValueStepper_contentStackView;
  v25 = *&v23[OBJC_IVAR____TtC8PaperKit12ValueStepper_contentStackView];
  v26 = v23;
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v23[v24] setAxis_];
  [*&v23[v24] setAlignment_];
  [*&v23[v24] setDistribution_];
  [*&v23[v24] setSpacing_];
  v27 = *&v23[v24];
  v28 = v26;
  [v28 addSubview_];
  v29 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D405B630;
  v31 = [*&v23[v24] topAnchor];
  v32 = [v28 topAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v30 + 32) = v33;
  v34 = [*&v23[v24] leadingAnchor];
  v35 = [v28 leadingAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v30 + 40) = v36;
  v37 = [*&v23[v24] bottomAnchor];
  v38 = [v28 bottomAnchor];

  v39 = [v37 constraintEqualToAnchor_];
  *(v30 + 48) = v39;
  v40 = [*&v23[v24] trailingAnchor];
  v41 = [v28 trailingAnchor];

  v42 = [v40 constraintEqualToAnchor_];
  *(v30 + 56) = v42;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v106 = v29;
  [v29 activateConstraints_];

  v44 = OBJC_IVAR____TtC8PaperKit12ValueStepper_decreaseButton;
  v45 = *&v28[OBJC_IVAR____TtC8PaperKit12ValueStepper_decreaseButton];
  v46 = MEMORY[0x1DA6CCED0](0xD00000000000001ALL, 0x80000001D4082350);
  [v45 setAccessibilityIdentifier_];

  v47 = one-time initialization token for paperKitBundle;
  v48 = *&v28[v44];
  if (v47 != -1)
  {
    swift_once();
  }

  v49.value._object = 0xEB00000000656C62;
  v49.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v111._object = 0x80000001D4082370;
  v111._countAndFlagsBits = 0xD000000000000039;
  v50._countAndFlagsBits = 0x73756E694DLL;
  v50._object = 0xE500000000000000;
  bundle = paperKitBundle.super.isa;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v49, paperKitBundle, v51, v111)._countAndFlagsBits;
  v53 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

  [v48 setAccessibilityLabel_];

  v103 = *MEMORY[0x1E69DD9B8];
  [*&v28[v44] setAccessibilityTraits_];
  [*&v28[v44] setIsAccessibilityElement_];
  v54 = [*&v28[v44] layer];
  [v54 setCornerRadius_];

  v55 = [*&v28[v44] layer];
  v56 = *MEMORY[0x1E69796E8];
  [v55 setCornerCurve_];

  [*&v23[v24] addArrangedSubview_];
  v57 = OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabel;
  v58 = *&v28[OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabel];
  v59 = objc_opt_self();
  v60 = v58;
  v61 = [v59 labelColor];
  [v60 setTextColor_];

  v62 = *&v28[v57];
  v63 = *MEMORY[0x1E69DDCF8];
  v64 = *MEMORY[0x1E69DB978];
  v65 = *MEMORY[0x1E69DDC78];
  v66 = objc_opt_self();
  v67 = v62;
  v68 = [v66 traitCollectionWithPreferredContentSizeCategory_];
  v69 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (v69)
  {
    v70 = v69;
    v71 = [v69 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];

    [v67 setFont_];
    v72 = *&v28[v57];
    v73 = MEMORY[0x1DA6CCED0](0xD000000000000016, 0x80000001D40823B0);
    [v72 setAccessibilityIdentifier_];

    [*&v28[v57] setAccessibilityTraits_];
    [*&v28[v57] setTextAlignment_];
    v74 = [*&v28[v57] layer];
    [v74 setCornerRadius_];

    v75 = [*&v28[v57] &selRef_influxRecipe];
    [v75 setCornerCurve_];

    v76 = [*&v28[v57] &selRef_influxRecipe];
    [v76 setBorderWidth_];

    [*&v28[v57] setClipsToBounds_];
    [*&v23[v24] addArrangedSubview_];
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1D405B640;
    v78 = [*&v28[v57] widthAnchor];
    v79 = [v78 constraintEqualToConstant_];

    *(v77 + 32) = v79;
    v80 = [*&v28[v57] centerXAnchor];
    v81 = [v28 centerXAnchor];
    v82 = [v80 constraintEqualToAnchor_];

    *(v77 + 40) = v82;
    v83 = Array._bridgeToObjectiveC()().super.isa;

    [v106 activateConstraints_];

    v84 = OBJC_IVAR____TtC8PaperKit12ValueStepper_increaseButton;
    v85 = *&v28[OBJC_IVAR____TtC8PaperKit12ValueStepper_increaseButton];
    v86 = MEMORY[0x1DA6CCED0](0xD00000000000001ALL, 0x80000001D40823D0);
    [v85 setAccessibilityIdentifier_];

    v87 = *&v28[v84];
    v112._object = 0x80000001D40823F0;
    v112._countAndFlagsBits = 0xD000000000000039;
    v88._countAndFlagsBits = 1937075280;
    v88._object = 0xE400000000000000;
    v89.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v89.value._object = 0xEB00000000656C62;
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    v91 = NSLocalizedString(_:tableName:bundle:value:comment:)(v88, v89, bundle, v90, v112)._countAndFlagsBits;
    v92 = MEMORY[0x1DA6CCED0](v91);

    [v87 setAccessibilityLabel_];

    [*&v28[v84] setAccessibilityTraits_];
    [*&v28[v84] setIsAccessibilityElement_];
    v93 = [*&v28[v84] layer];
    [v93 setCornerRadius_];

    v94 = [*&v28[v84] layer];
    [v94 setCornerCurve_];

    [*&v23[v24] addArrangedSubview_];
    v95 = *&v28[v44];
    v109 = ObjectType;
    v108[0] = v28;
    v96 = v28;
    v97 = v95;
    StepperButton.addTarget(_:action:for:)(v108, sel_didTapLeftButton, 64);

    outlined destroy of Any?(v108);
    v98 = *&v28[v84];
    v109 = ObjectType;
    v108[0] = v96;
    v99 = v98;
    StepperButton.addTarget(_:action:for:)(v108, sel_didTapRightButton, 64);

    outlined destroy of Any?(v108);
    ValueStepper.updateUI()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_1D4058CF0;
    v101 = type metadata accessor for UITraitUserInterfaceStyle();
    v102 = MEMORY[0x1E69DC0F8];
    *(v100 + 32) = v101;
    *(v100 + 40) = v102;
    MEMORY[0x1DA6CDBA0](v100, sel_updateUI);

    swift_unknownObjectRelease();

    return;
  }

LABEL_9:
  __break(1u);
}

void ValueStepper.updateUI()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabel);
  v15 = ValueStepper.currentValue.getter();
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v3;
  MEMORY[0x1DA6CD010](32, 0xE100000000000000);
  MEMORY[0x1DA6CD010](*(v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper_unit), *(v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper_unit + 8));
  v4 = MEMORY[0x1DA6CCED0](v16, v17);

  [v2 setText_];

  v5 = *(v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue);
  v6 = v5 < *(v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue);
  v7 = *(v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue) < v5;
  v8 = *(v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper_increaseButton);
  v9 = type metadata accessor for StepperButton();
  v14.receiver = v8;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, sel_setEnabled_, v6);
  StepperButton.updateUI()();
  v13.receiver = *(v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper_decreaseButton);
  v13.super_class = v9;
  objc_msgSendSuper2(&v13, sel_setEnabled_, v7);
  StepperButton.updateUI()();
  v10 = [v2 layer];
  v11 = [objc_opt_self() quaternarySystemFillColor];
  v12 = [v11 CGColor];

  [v10 setBorderColor_];
}

char *ValueStepper.didTapLeftButton()()
{
  result = ValueStepper.currentValue.getter();
  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (*&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue] > v2)
    {
      v2 = *&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue];
    }

    if (v2 >= *&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue])
    {
      v2 = *&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue];
    }

    v3 = &v0[OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue];
    *v3 = v2;
    v3[8] = 0;
    ValueStepper.updateUI()();

    return [v0 sendActionsForControlEvents_];
  }

  return result;
}

uint64_t ValueStepper.currentValue.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue);
  if (*(v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue + 8) != 1)
  {
    return *v1;
  }

  result = *(v0 + OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue);
  *v1 = result;
  v1[8] = 0;
  return result;
}

char *ValueStepper.didTapRightButton()()
{
  result = ValueStepper.currentValue.getter();
  v2 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (*&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue] > v2)
    {
      v2 = *&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue];
    }

    if (v2 >= *&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue])
    {
      v2 = *&v0[OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue];
    }

    v3 = &v0[OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue];
    *v3 = v2;
    v3[8] = 0;
    ValueStepper.updateUI()();

    return [v0 sendActionsForControlEvents_];
  }

  return result;
}

id ValueStepper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = lazy cache variable for type metadata for NSLayoutConstraint;
  if (!lazy cache variable for type metadata for NSLayoutConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLayoutConstraint);
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized ValueStepper.init(coder:)()
{
  v1 = v0;
  v2 = MEMORY[0x1DA6CCED0](0x73756E696DLL, 0xE500000000000000);
  v3 = objc_opt_self();
  v4 = [v3 systemImageNamed_];

  if (!v4)
  {
    __break(1u);
  }

  v5 = OBJC_IVAR____TtC8PaperKit12ValueStepper_decreaseButton;
  v6 = type metadata accessor for StepperButton();
  v7 = objc_allocWithZone(v6);
  *(v1 + v5) = StepperButton.init(image:)(v4);
  v8 = MEMORY[0x1DA6CCED0](1937075312, 0xE400000000000000);
  v9 = [v3 systemImageNamed_];

  if (!v9)
  {
    __break(1u);
  }

  v10 = OBJC_IVAR____TtC8PaperKit12ValueStepper_increaseButton;
  v11 = objc_allocWithZone(v6);
  *(v1 + v10) = StepperButton.init(image:)(v9);
  v12 = OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabel;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v13 = OBJC_IVAR____TtC8PaperKit12ValueStepper_contentStackView;
  *(v1 + v13) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *(v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper_interItemSpacing) = 0x4024000000000000;
  *(v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper_cornerRadius) = 0x4020000000000000;
  *(v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabelWidth) = 0x405A000000000000;
  *(v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper_valueLabelBorderWidth) = 0x4008000000000000;
  v14 = v1 + OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue;
  *v14 = 0;
  *(v14 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata completion function for ToggleButton()
{
  type metadata accessor for Image?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIRectCorner(319);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Optional();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Inspected();
          type metadata accessor for Binding();
          if (v4 <= 0x3F)
          {
            type metadata accessor for Environment<ColorScheme>();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ToggleButton(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for ColorScheme() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  if (v7)
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = v12 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_31;
  }

  v14 = *(v9 + 80) & 0xF8 | 7;
  v15 = v10 + ((-2 - (((-17 - v11) | v11) - (v12 + 1 + v14)) - ((((((-33 - v11) | v11) - (v12 + v11)) | v11) - ((v11 | 7) + v13)) | v11 | 7)) & ~v14) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v8 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v7 & 0x80000000) != 0)
      {
        v22 = *(v6 + 48);

        return v22((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 24) & ~v11, v7, v5);
      }

      else
      {
        v21 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v21) = -1;
        }

        return (v21 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_20:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 > 3)
    {
      LODWORD(v15) = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        LODWORD(v15) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v15) = *a1;
      }
    }

    else if (v15 == 1)
    {
      LODWORD(v15) = *a1;
    }

    else
    {
      LODWORD(v15) = *a1;
    }
  }

  return v8 + (v15 | v20) + 1;
}

void storeEnumTagSinglePayload for ToggleButton(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for ColorScheme() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = v14 + v13;
  v16 = v14 + 1;
  if (!v9)
  {
    ++v14;
  }

  v17 = *(v11 + 80) & 0xF8 | 7;
  v18 = v12 + ((-2 - (((-17 - v13) | v13) - (v16 + v17)) - ((((((-33 - v13) | v13) - v15) | v13) - ((v13 | 7) + v14)) | v13 | 7)) & ~v17) + 1;
  if (a3 <= v10)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v10 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v10 < a2)
  {
    v20 = ~v10 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_51:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if ((v9 & 0x80000000) != 0)
  {
    v26 = *(v27 + 56);

    v26((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 24) & ~v13, a2, v9, v7);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v25 = (a2 - 1);
    }

    *a1 = v25;
  }
}

void type metadata accessor for Image?()
{
  if (!lazy cache variable for type metadata for Image?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Image?);
    }
  }
}

void type metadata accessor for Environment<ColorScheme>()
{
  if (!lazy cache variable for type metadata for Environment<ColorScheme>)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<ColorScheme>);
    }
  }
}

uint64_t ToggleButton.binding.getter()
{
  type metadata accessor for Inspected();
  v0 = type metadata accessor for Binding();
  return MEMORY[0x1DA6CA790](v0);
}

uint64_t ToggleButton.colorScheme.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  outlined init with copy of Environment<ColorScheme>.Content(v2 + *(a1 + 60), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ColorScheme();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t ToggleButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v5 = type metadata accessor for PlainButtonStyle();
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMd);
  v24 = *(v12 - 8);
  v25 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  (*(v9 + 16))(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v13);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = swift_allocObject();
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  *(v17 + 16) = v19;
  *(v17 + 24) = v18;
  (*(v9 + 32))(v17 + v16, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v29 = v19;
  v30 = v18;
  v31 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMd);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  v21 = v25;
  v20 = v26;
  View.buttonStyle<A>(_:)();
  (*(v27 + 8))(v8, v20);
  return (*(v24 + 8))(v15, v21);
}

uint64_t closure #1 in ToggleButton.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Inspected();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v25 = a3;
  v26 = &v23 - v18;
  v19 = type metadata accessor for ToggleButton();
  (*(v10 + 16))(v12, a1 + *(v19 + 52), v9);
  if ((*(v13 + 48))(v12, 1, a2) == 1)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v13 + 32))(v26, v12, a2);
    ToggleButton.binding.getter();
    Inspected.value.getter(v6, v16);
    (*(v24 + 8))(v8, v6);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    v21 = *(v13 + 8);
    v21(v16, a2);
    if (v20)
    {
      (*(v13 + 16))(v16, v26, a2);
      type metadata accessor for Binding();
      MEMORY[0x1DA6CA790]();
      Inspected.value.setter(v16, v6);
      Binding.wrappedValue.setter();
      return (v21)(v26, a2);
    }

    v21(v26, a2);
  }

  (*(v13 + 16))(v16, a1 + *(v19 + 48), a2);
  type metadata accessor for Binding();
  MEMORY[0x1DA6CA790]();
  Inspected.value.setter(v16, v6);
  return Binding.wrappedValue.setter();
}

double closure #2 in ToggleButton.body.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = type metadata accessor for ColorScheme();
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v8;
  v42 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Inspected();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v43 = a1[1];
  if (!v43 || (type metadata accessor for ToggleButton(), ToggleButton.binding.getter(), Inspected.value.getter(v12, v11), (*(v13 + 8))(v15, v12), v16 = dispatch thunk of static Equatable.== infix(_:_:)(), (*(v42 + 8))(v11, a2), (v16 & 1) == 0))
  {
    v43 = *a1;
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v17 = *(a1 + 16);
  v18 = type metadata accessor for ToggleButton();
  if (v17 == 1 && (ToggleButton.binding.getter(), Inspected.value.getter(v12, v11), (*(v13 + 8))(v15, v12), v19 = dispatch thunk of static Equatable.== infix(_:_:)(), (*(v42 + 8))(v11, a2), (v19 & 1) != 0))
  {
    v20 = static Color.accentColor.getter();
  }

  else
  {
    v21 = v39;
    ToggleButton.colorScheme.getter(v18, v39);
    v22 = v38;
    v24 = v40;
    v23 = v41;
    (*(v38 + 104))(v40, *MEMORY[0x1E697DBB8], v41);
    v25 = static ColorScheme.== infix(_:_:)();
    v26 = *(v22 + 8);
    v26(v24, v23);
    v26(v21, v23);
    v27 = objc_opt_self();
    v28 = &selRef_secondarySystemBackgroundColor;
    if ((v25 & 1) == 0)
    {
      v28 = &selRef_tertiarySystemBackgroundColor;
    }

    v29 = [v27 *v28];
    v20 = Color.init(uiColor:)();
  }

  v30 = v20;
  v31 = static Edge.Set.all.getter();
  v32 = v46;
  *(a3 + 56) = v47;
  v33 = v49;
  *(a3 + 72) = v48;
  *(a3 + 88) = v33;
  *(a3 + 104) = v50;
  result = *&v44;
  v35 = v45;
  *(a3 + 8) = v44;
  *(a3 + 24) = v35;
  v36 = a1[3];
  *a3 = v43;
  *(a3 + 40) = v32;
  *(a3 + 120) = v30;
  *(a3 + 128) = v31;
  *(a3 + 136) = 0x4014000000000000;
  *(a3 + 144) = v36;
  *(a3 + 152) = 256;
  return result;
}

uint64_t partial apply for closure #1 in ToggleButton.body.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for ToggleButton() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in ToggleButton.body.getter(v4, v1, v2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedCorner> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVy8PaperKit13RoundedCornerVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA16_FlexFrameLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle()
{
  result = lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle;
  if (!lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle);
  }

  return result;
}

uint64_t outlined init with copy of Environment<ColorScheme>.Content(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for Inspected()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Inspected(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *storeEnumTagSinglePayload for Inspected(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
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
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t Inspected.value.setter(uint64_t a1, uint64_t a2)
{
  result = (*(*(*(a2 + 16) - 8) + 40))(v2, a1);
  *(v2 + *(a2 + 28)) = 0;
  return result;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MagicPaperUsageInsertSpaceEvent.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageInsertSpaceEvent.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MagicPaperUsageInsertSpaceEvent.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00646572696150;
  v4 = 0x6C69636E65507369;
  v5 = 0xEE00646574726573;
  v6 = 0x6E695F6563617073;
  if (v2 != 6)
  {
    v6 = 1868852853;
    v5 = 0xE400000000000000;
  }

  v7 = 0xEB0000000073656BLL;
  v8 = 0x6F7274735F6D756ELL;
  if (v2 != 4)
  {
    v8 = 0x747865745F6D756ELL;
    v7 = 0xEF7370756F72675FLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6874616D5F6D756ELL;
  v10 = 0x80000001D40804E0;
  if (v2 == 2)
  {
    v10 = 0xEF7370756F72675FLL;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*v1)
  {
    v4 = 0x656C61636F6CLL;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MagicPaperUsageInsertSpaceEvent.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C69636E65507369;
  v3 = 0x6E695F6563617073;
  if (v1 != 6)
  {
    v3 = 1868852853;
  }

  v4 = 0x6F7274735F6D756ELL;
  if (v1 != 4)
  {
    v4 = 0x747865745F6D756ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6874616D5F6D756ELL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0x656C61636F6CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance MagicPaperUsageInsertSpaceEvent.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageInsertSpaceEvent.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MagicPaperUsageInsertSpaceEvent.CodingKeys(uint64_t a1)
{
  inserted = lazy protocol witness table accessor for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, inserted);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MagicPaperUsageInsertSpaceEvent.CodingKeys(uint64_t a1)
{
  inserted = lazy protocol witness table accessor for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, inserted);
}

uint64_t MagicPaperUsageInsertSpaceEvent.calculateInsertedSpace(in:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager);
  swift_beginAccess();
  v2 = *(v1 + 160);
  if (!v2)
  {
    return 0;
  }

  if (*(v1 + 216))
  {
    return 0;
  }

  v3 = *(v1 + 176);
  v4 = *(v1 + 192);
  v5 = *(v1 + 208);
  result = swift_beginAccess();
  v7 = *(v1 + 88);
  if (v5 >= *(v7 + 16))
  {
    return 0;
  }

  if (v5 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = v7 + 168 * v5;
  v9 = *(v8 + 72);
  v10 = *(v8 + 88);
  v11 = *(v2 + 120);
  v12 = v4 - v3;
  if (v11 < v5)
  {
    v12 = v4 - v9;
  }

  if (v5 < v11)
  {
    v12 = v10 - v4;
  }

  v13 = v12 / (v10 - v9);
  v14 = -1.0;
  if (v13 > -1.0)
  {
    v14 = v13;
  }

  v15 = v14 * 100.0;
  v16 = v13 <= 1.0;
  if (v13 > 1.0)
  {
    v17 = 100.0;
  }

  else
  {
    v17 = v15;
  }

  if (v16 && (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (v17 > -9.22337204e18)
  {
    if (v17 < 9.22337204e18)
    {
      return v17;
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for MagicPaperUsageInsertSpaceEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for MagicPaperUsageInsertSpaceEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t MagicPaperUsageInsertSpaceEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit05MagicD21UsageInsertSpaceEventV10CodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[8] = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void protocol witness for AnalyticsEvent.finalize() in conformance MagicPaperUsageInsertSpaceEvent()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    specialized MagicPaperUsageAnalyticsEvent.initMagicPaperUsageAnalyticsEvent(from:)(Strong);

    *(v0 + 72) = 1;
  }
}

uint64_t protocol witness for AnalyticsEvent.undoEvent() in conformance MagicPaperUsageInsertSpaceEvent@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
  }

  else
  {
    result = outlined init with copy of MagicPaperUsageInsertSpaceEvent(v1, v7);
    v9 = 0;
    v7[24] = 1;
    v4 = *(v1 + 64);
    v5 = __OFSUB__(0, v4);
    v6 = -v4;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      v8 = v6;
      return outlined init with take of MagicPaperUsageInsertSpaceEvent(v7, a1);
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MagicPaperUsageInsertSpaceEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent and conformance MagicPaperUsageInsertSpaceEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MagicPaperUsageInsertSpaceEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MagicPaperUsageInsertSpaceEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t specialized MagicPaperUsageInsertSpaceEvent.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MagicPaperUsageInsertSpaceEvent.CodingKeys.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1DA6CE0C0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionToken);
        v16 = &protocol witness table for PKMathRecognitionToken;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        outlined init with take of PaperKitHashable(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionToken);
        v16 = &protocol witness table for PKMathRecognitionToken;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        outlined init with take of PaperKitHashable(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1DA6CE0C0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionItem);
        v16 = &protocol witness table for PKMathRecognitionItem;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        outlined init with take of PaperKitHashable(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionItem);
        v16 = &protocol witness table for PKMathRecognitionItem;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        outlined init with take of PaperKitHashable(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1DA6CE0C0](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for DrawingFindResult();
        v15 = lazy protocol witness table accessor for type DrawingFindResult and conformance DrawingFindResult(&lazy protocol witness table cache variable for type DrawingFindResult and conformance DrawingFindResult, type metadata accessor for DrawingFindResult);
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        outlined init with take of PaperKitHashable(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for DrawingFindResult();
        v15 = lazy protocol witness table accessor for type DrawingFindResult and conformance DrawingFindResult(&lazy protocol witness table cache variable for type DrawingFindResult and conformance DrawingFindResult, type metadata accessor for DrawingFindResult);
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        outlined init with take of PaperKitHashable(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1DA6CE0C0](v5, a1);
        v8 = *(v18 + 16);
        v7 = *(v18 + 24);
        if (v8 >= v7 >> 1)
        {
          v10 = v6;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v6 = v10;
        }

        ++v5;
        *(v18 + 16) = v8 + 1;
        v9 = v18 + 16 * v8;
        *(v9 + 32) = v6;
        *(v9 + 40) = &protocol witness table for SynapseLinkItem;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *(v18 + 16);
        v13 = *(v18 + 24);
        v14 = *v11;
        if (v12 >= v13 >> 1)
        {
          v16 = v13 > 1;
          v17 = v14;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16, v12 + 1, 1);
          v14 = v17;
        }

        *(v18 + 16) = v12 + 1;
        v15 = v18 + 16 * v12;
        *(v15 + 32) = v14;
        *(v15 + 40) = &protocol witness table for SynapseLinkItem;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  return specialized _arrayForceCast<A, B>(_:)(a1, &_sSo12PKAttachment_pMd);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &_sSo16CHMathExpression_pMd);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &_sSo32CHMathExpressionEvaluationResult_pMd);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &_sSo18CHCanvasAttachment_pMd);
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x1DA6CE0C0]();
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIMenuElementCSgMd);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);
        do
        {
          v7 = *v6++;
          v8 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIMenuElementCSgMd);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return v9;
    }
  }

  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of Any(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15CanvasUIOverlay_pMd);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v14;
    v4 = a1 + 56;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_8PaperKit17SearchQueryResultVtMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi9pageIndex_8PaperKit17SearchQueryResultV05queryG0tMd);
      swift_dynamicCast();
      v5 = v12;
      v6 = v13;
      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v13;
        v5 = v12;
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 40 * v8;
      *(v9 + 32) = v11;
      *(v9 + 40) = v5;
      *(v9 + 56) = v6;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v19;
    v4 = (a1 + 72);
    do
    {
      v5 = *(v4 - 5);
      v6 = *(v4 - 4);
      v7 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      outlined copy of PaperDocumentFindResult.Content(v5, v6, v7, v8, v9, *v4);
      v19 = v2;
      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      v15 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v15, 1);
        v2 = v19;
      }

      v17 = &type metadata for PaperDocumentFindResult;
      v18 = lazy protocol witness table accessor for type PaperDocumentFindResult and conformance PaperDocumentFindResult();
      v13 = swift_allocObject();
      *&v16 = v13;
      *(v13 + 16) = v5;
      *(v13 + 24) = v6;
      *(v13 + 32) = v7;
      *(v13 + 40) = v8;
      *(v13 + 48) = v9;
      *(v13 + 56) = v10;
      *(v2 + 16) = v15;
      outlined init with take of PaperKitHashable(&v16, v2 + 40 * v12 + 32);
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v2 = type metadata accessor for PKStroke();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      outlined init with take of Any(&v17, (v7 + 32 * v14 + 32));
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - v4;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      outlined init with take of Any(&v17, (v7 + 32 * v14 + 32));
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-v4 - 8];
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v14;
    v8 = a1 + 32;
    do
    {
      outlined init with copy of Any(v8, v13);
      swift_dynamicCast();
      v14 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v10 + 1, 1);
        v7 = v14;
      }

      *(v7 + 16) = v10 + 1;
      (*(v3 + 32))(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v5, v2);
      v8 += 32;
      --v6;
    }

    while (v6);
  }

  return v7;
}

{
  v2 = type metadata accessor for PKStroke();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v8 = v10;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    do
    {
      v8(v5, v11, v2);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStroke);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 += v12;
      --v6;
    }

    while (v6);
    return v14;
  }

  return result;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1DA6CE0C0](v5, a1);
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
        swift_dynamicCast();
        v7 = *(v17 + 16);
        v6 = *(v17 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        }

        ++v5;
        *(v17 + 16) = v7 + 1;
        v8 = v17 + 40 * v7;
        *(v8 + 64) = v16;
        *(v8 + 32) = v14;
        *(v8 + 48) = v15;
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
      do
      {
        v10 = *v9;
        swift_dynamicCast();
        v12 = *(v17 + 16);
        v11 = *(v17 + 24);
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        }

        *(v17 + 16) = v12 + 1;
        v13 = v17 + 40 * v12;
        *(v13 + 64) = v16;
        *(v13 + 32) = v14;
        *(v13 + 48) = v15;
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v2 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    v2 = a1;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  return v2;
}

uint64_t CanvasView.suggestedInsertionActions.getter()
{
  v0 = Canvas.canvasElementController.getter();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_toolPickerController);
  if (v2)
  {
    v3 = v2;
    v4 = ToolPickerController.textToolListViewController.getter();

    v5 = MarkupEditViewController.configuredMenuElements.getter();
    v1 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  return v5;
}

id CanvasView.allowsContentSnapping.setter(char a1)
{
  *(v1 + direct field offset for CanvasView.allowsContentSnapping) = a1;
  result = *(v1 + direct field offset for CanvasView.trackingPanGestureRecognizer);
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

void CanvasView.calculateDocumentForTesting.didset()
{
  v0 = Canvas.editingView.getter();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 16))(ObjectType, v2);

  if (v4)
  {
    CanvasElementDrawingView.initializeMathRecognitionIfNecessary()();
  }
}

uint64_t CanvasView.paperViewController.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DrawingFindResult and conformance DrawingFindResult(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    type metadata accessor for AnyCanvasElementViewController();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void *CanvasView.canvasScrollView.getter()
{
  v1 = *(v0 + direct field offset for CanvasView.canvasScrollView);
  v2 = v1;
  return v1;
}

uint64_t CanvasView.movableAdornmentViews.getter()
{
  AnyCanvas.overlays.getter();
  v1 = specialized _arrayForceCast<A, B>(_:)(v0);

  return v1;
}

void CanvasView.editingMode.setter(char *a1)
{
  v1 = *a1;
  Canvas.editingMode.setter(&v1);

  CanvasView.tiledViewUpdateEditingState()();
}

void (*CanvasView.editingMode.modify(uint64_t **a1))(void *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = Canvas.editingMode.modify(v3);
  return CanvasView.editingMode.modify;
}

id CanvasView.drawingPolicy.getter()
{
  result = *(v0 + direct field offset for CanvasView.canvasTiledView);
  if (result)
  {
    return [result drawingPolicy];
  }

  __break(1u);
  return result;
}

id CanvasView.drawingPolicy.setter(uint64_t a1)
{
  result = *(v1 + direct field offset for CanvasView.canvasTiledView);
  if (result)
  {
    return [result setDrawingPolicy_];
  }

  __break(1u);
  return result;
}

void *CanvasView.drawingPolicy.modify(void *a1)
{
  a1[1] = v1;
  result = *(v1 + direct field offset for CanvasView.canvasTiledView);
  if (result)
  {
    *a1 = [result drawingPolicy];
    return CanvasView.drawingPolicy.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *CanvasView.drawingPolicy.modify(void *result, char a2)
{
  v2 = *(result[1] + direct field offset for CanvasView.canvasTiledView);
  if (a2)
  {
    if (v2)
    {
      return [v2 setDrawingPolicy_];
    }

    __break(1u);
  }

  if (v2)
  {
    return [v2 setDrawingPolicy_];
  }

  __break(1u);
  return result;
}

void CanvasView.selectionInteractionDelegate.setter(uint64_t a1)
{
  v2 = *(v1 + direct field offset for CanvasView.selectionInteractionDelegate);
  *(v1 + direct field offset for CanvasView.selectionInteractionDelegate) = a1;
}

uint64_t CanvasView.canvasContentMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = direct field offset for CanvasView.canvasContentMode;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id CanvasView.canvasContentMode.setter(char *a1)
{
  v2 = *a1;
  v3 = direct field offset for CanvasView.canvasContentMode;
  swift_beginAccess();
  v1[v3] = v2;
  return [v1 setNeedsLayout];
}

id (*CanvasView.canvasContentMode.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CanvasView.canvasContentMode.modify;
}

id CanvasView.canvasContentMode.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

id CanvasView.toolPickerObserver.getter()
{
  v1 = direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver;
  v2 = *&v0[direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver];
  if (v2)
  {
    v3 = *&v0[direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver];
  }

  else
  {
    type metadata accessor for CanvasViewToolPickerObserver();
    v4 = v0;
    v5 = v0;
    v6 = specialized CanvasViewToolPickerObserver.__allocating_init(canvasView:)();

    v7 = *&v0[v1];
    *&v5[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void CanvasView.contentView.didset(id a1)
{
  v2 = v1;
  v4 = direct field offset for CanvasView.contentView;
  v5 = *(v1 + direct field offset for CanvasView.contentView);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  [a1 removeFromSuperview];
  v9 = Canvas.editingView.getter();
  v11 = v10;
  ObjectType = swift_getObjectType();
  (*(v11 + 24))(ObjectType, v11);

  v13 = *(v2 + v4);
  if (v13)
  {
    v14 = Canvas.editingView.getter();
    v24 = v13;
    [v14 insertSubview:v24 atIndex:0];

    v15 = Canvas.editingView.getter();
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [v24 setFrame_];
  }
}

void CanvasView.editingContainerElementId.didset()
{
  v1 = Canvas.editingView.getter();
  v3 = v2;
  v4 = type metadata accessor for CanvasViewSelectionInteractionDelegate();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v3;
  swift_unknownObjectWeakAssign();
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = objc_msgSendSuper2(&v10, sel_init);

  v7 = *(v0 + direct field offset for CanvasView.selectionInteractionDelegate);
  *(v0 + direct field offset for CanvasView.selectionInteractionDelegate) = v6;

  v8 = *(v0 + direct field offset for CanvasView.canvasTiledView);
  if (v8)
  {
    v9 = [v8 selectionInteraction];
    [v9 setDelegate_];
  }
}

uint64_t CanvasView.editingContainerElementId.setter(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  Canvas.editingContainerElementId.setter(v6);
  CanvasView.editingContainerElementId.didset();
  return (*(v3 + 8))(a1, v2);
}

void (*CanvasView.editingContainerElementId.modify(void *a1))(void *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = Canvas.editingContainerElementId.modify(v3);
  return CanvasView.editingContainerElementId.modify;
}

void CanvasView.editingMode.modify(void *a1, char a2, void (*a3)(uint64_t))
{
  v5 = *a1;
  v6 = (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    a3(v6);
  }

  free(v5);
}

void CanvasView.persistUIState(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v23 = a2;
  v24 = a1;
  v3 = (*MEMORY[0x1E69E7D40] & *v2);
  v4 = v3[557];
  v5 = v3[558];
  v6 = type metadata accessor for Capsule();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v23 - v9;
  v11 = *(v2 + direct field offset for CanvasView.canvasScrollView);
  if (v11)
  {
    [*(v2 + direct field offset for CanvasView.canvasScrollView) contentOffset];
    v13 = v12;
    v15 = v14;
    v16 = Canvas.updatablePaper2.getter(v10);
    MEMORY[0x1EEE9AC00](v16);
    *(&v23 - 4) = v4;
    *(&v23 - 3) = v5;
    v17 = v3[559];
    *(&v23 - 2) = v17;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v18 = *(v7 + 8);
    v19 = v18(v10, v6);
    v20 = v13 + v25;
    v21 = v15 + v26;
    v24(v19);
    CanvasView.updateAfterDidScroll(_:)(v11);
    v22 = Canvas.updatablePaper2.getter(v10);
    MEMORY[0x1EEE9AC00](v22);
    *(&v23 - 4) = v4;
    *(&v23 - 3) = v5;
    *(&v23 - 2) = v17;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v18(v10, v6);
    [(UIScrollView *)v11 setContentOffset:v20 - v25, v21 - v26];
  }

  else
  {
    __break(1u);
  }
}

uint64_t CanvasView.__allocating_init(frame:paper:allowMediaCanvasElements:transparentBackground:paperViewController:)(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, char a7, void *a8)
{
  type metadata accessor for CRContext();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v15 = MEMORY[0x1DA6CC630](0, v19);
  outlined destroy of EncryptionDelegate?(v19);
  v16 = specialized CanvasView.__allocating_init(context:frame:paper:allowsEditing:allowMediaCanvasElements:transparentBackground:paperViewController:)(v15, a1, 2u, a7, a8, a2, a3, a4, a5);
  v17 = type metadata accessor for Capsule();
  (*(*(v17 - 8) + 8))(a1, v17);
  return v16;
}

uint64_t CanvasView.__allocating_init(context:frame:paper:allowsEditing:allowMediaCanvasElements:transparentBackground:paperViewController:)(void *a1, uint64_t a2, unsigned __int8 a3, double a4, double a5, double a6, double a7, uint64_t a8, char a9, void *a10)
{
  v11 = specialized CanvasView.__allocating_init(context:frame:paper:allowsEditing:allowMediaCanvasElements:transparentBackground:paperViewController:)(a1, a2, a3, a9, a10, a4, a5, a6, a7);
  v12 = type metadata accessor for Capsule();
  (*(*(v12 - 8) + 8))(a2, v12);
  return v11;
}

uint64_t CanvasView.__allocating_init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(void *a1, ValueMetadata *a2, unsigned __int8 *a3, char a4, char a5, void *a6, double a7, double a8, double a9, double a10)
{
  specialized CanvasView.__allocating_init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  v12 = v11;
  v13 = type metadata accessor for Capsule();
  (*(*(v13 - 8) + 8))(a2, v13);
  return v12;
}

uint64_t CanvasView.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(void *a1, ValueMetadata *a2, unsigned __int8 *a3, char a4, char a5, void *a6, double a7, double a8, double a9, double a10)
{
  specialized CanvasView.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  v12 = v11;
  v13 = type metadata accessor for Capsule();
  (*(*(v13 - 8) + 8))(a2, v13);
  return v12;
}

Swift::Void __swiftcall CanvasView.tiledViewUpdateEditingState()()
{
  v1 = *(v0 + direct field offset for CanvasView.canvasTiledView);
  if (v1)
  {
    Canvas.editingMode.getter(&v8);
    v2 = v8;
    if (v8 != 2)
    {
      v2 = 0;
    }

    if (v8 >= 2u)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v8 >= 2u;
    v5 = [v1 canvasView];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 drawingGestureRecognizer];

      [v7 setEnabled_];
    }

    [v1 setDrawingPolicy_];
  }

  else
  {
    __break(1u);
  }
}

id CanvasView._activeToolPicker.getter()
{
  v1 = CanvasView.paperViewController.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    if ((*(v4 + 24))(v2, ObjectType, v4))
    {
      v6 = (*(v4 + 32))(v2, ObjectType, v4);

      swift_unknownObjectRelease();
      return v6;
    }

    swift_unknownObjectRelease();
  }

  v9 = [v0 pencilKitResponderState];
  v8 = [v9 _currentActiveToolPicker];

  if (!v8)
  {
    v8 = *&v2[OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_toolPicker];
  }

  return v8;
}

Swift::Void __swiftcall CanvasView.registerToolPickerObservers(_:)(PKToolPicker a1)
{
  [(objc_class *)a1.super.isa addObserver:v1];
  v3 = CanvasView.toolPickerObserver.getter();
  [(objc_class *)a1.super.isa addObserver:v3];

  v4 = *(v1 + direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver);
  CanvasViewToolPickerObserver.updateUI(toolPicker:)(a1);
}

id CanvasView.contentSnapshottingView.getter()
{
  result = *(v0 + direct field offset for CanvasView.canvasTiledView);
  if (result)
  {
    v2 = [result contentSnapshottingView];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CanvasView.contentSnapshottingView.setter(void *a1)
{
  specialized CanvasView.contentSnapshottingView.setter(a1);
}

void (*CanvasView.contentSnapshottingView.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = CanvasView.contentSnapshottingView.getter();
  return CanvasView.contentSnapshottingView.modify;
}

void CanvasView.contentSnapshottingView.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if ((a2 & 1) == 0)
  {
    v5 = *(v2 + direct field offset for CanvasView.canvasTiledView);
    if (v5)
    {
      v6 = *a1;
      [v5 setContentSnapshottingView_];
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v3 = *(v2 + direct field offset for CanvasView.canvasTiledView);
  v4 = *a1;
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v4;
  [v3 setContentSnapshottingView_];

LABEL_6:
}

void CanvasView.visibleBoundsInModelSpace.getter()
{
  v1 = *&v0[direct field offset for CanvasView.canvasScrollView];
  if (v1)
  {
    v2 = v0;
    v3 = Canvas.editingView.getter();
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x2C0);
    v5 = v1;
    v4(&v40);

    t1 = v40;
    t2.a = 1.0;
    t2.b = 0.0;
    t2.c = 0.0;
    t2.d = 1.0;
    t2.tx = 0.0;
    t2.ty = 0.0;
    CGAffineTransformConcat(&v37, &t1, &t2);
    t1 = v37;
    CGAffineTransformInvert(&t2, &t1);
    b = t2.b;
    a = t2.a;
    d = t2.d;
    c = t2.c;
    ty = t2.ty;
    tx = t2.tx;
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v2 safeAreaInsets];
    v15 = v14;
    v17 = v16;
    Canvas.visibleBoundsOverride.getter(&t2);
    if (LOBYTE(t2.tx))
    {
      [v5 convertRect:*&v2[direct field offset for CanvasView.zoomView] toView:{UIEdgeInsetsInsetRect(v7, v9, v11, v13, v15, v17)}];
      v29 = v19;
      v30 = v18;
      v27 = v21;
      v28 = v20;
    }

    else
    {
      v29 = t2.b;
      v30 = t2.a;
      v27 = t2.d;
      v28 = t2.c;
    }

    v22 = *&v2[direct field offset for CanvasView.zoomView];
    if (v22)
    {
      [v22 bounds];
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = tx;
      t1.ty = ty;
      v42 = CGRectApplyAffineTransform(v41, &t1);
      y = v42.origin.y;
      x = v42.origin.x;
      width = v42.size.width;
      height = v42.size.height;
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = tx;
      t1.ty = ty;
      v42.origin.y = v29;
      v42.origin.x = v30;
      v42.size.height = v27;
      v42.size.width = v28;
      v44 = CGRectApplyAffineTransform(v42, &t1);
      v43.origin.y = y;
      v43.origin.x = x;
      v43.size.width = width;
      v43.size.height = height;
      CGRectIntersection(v43, v44);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall CanvasView.didMoveToSuperview()()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for CanvasView();
  objc_msgSendSuper2(&v9, sel_didMoveToSuperview);
  v2 = [v0 superview];
  if (v2)
  {
  }

  else
  {
    v3 = Canvas.editingView.getter();
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 168))(ObjectType, v5);

    if (v7)
    {
      v8 = *&v7[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics];

      FormAnalytics.merge(_:for:)(v8, v1);
    }

    FormAnalytics.recordSessionEvent()();
  }
}

void @objc CanvasView.didMoveToSuperview()(void *a1)
{
  v1 = a1;
  CanvasView.didMoveToSuperview()();
}

Swift::Int CanvasView.ZoomState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CanvasView<A>.ZoomState()
{
  Hasher.init(_seed:)();
  CanvasView.ZoomState.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

void CanvasView.zoomState.didset(unsigned __int8 a1)
{
  if (*(v1 + direct field offset for CanvasView.zoomState) != a1)
  {
    v2 = specialized Canvas.paperView.getter();
    v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3D0);
    v4 = v2;
    v3();
  }
}

void CanvasView.zoomState.setter(char a1)
{
  v2 = *(v1 + direct field offset for CanvasView.zoomState);
  *(v1 + direct field offset for CanvasView.zoomState) = a1;
  CanvasView.zoomState.didset(v2);
}

uint64_t CanvasView.snappedContentInsets.getter()
{
  if (*(v0 + direct field offset for CanvasView.snappedContentInsets + 1))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *(v0 + direct field offset for CanvasView.snappedContentInsets);
}

uint64_t CanvasView.snappedContentInsets.setter(uint64_t result, char a2)
{
  v3 = (v2 + direct field offset for CanvasView.snappedContentInsets);
  *v3 = result;
  v3[1] = a2;
  return result;
}

id @objc CanvasView.viewForZooming(in:)()
{
  v0 = _s8PaperKit10CanvasViewC04zoomD0AA0c16ElementContainerD0CSgvgTf4n_g_0();

  return v0;
}

Swift::Void __swiftcall CanvasView.updateAfterDidScroll(_:)(UIScrollView *a1)
{
  v2 = v1;
  v54 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1168);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v53 - v7;
  v9 = type metadata accessor for Capsule();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - v11;
  v13 = specialized Canvas.paperView.getter();
  v14 = ContainerCanvasElementView.modelBounds.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  specialized Canvas.paperView.getter();
  CanvasElementView.canvasElement.getter(v12);
  Capsule.root.getter();
  (*(v10 + 8))(v12, v9);
  v21 = v4 & v3;
  v22 = v54;
  v23 = (*(*(*(v21 + 4472) + 8) + 56))(v5);
  (*(v6 + 8))(v8, v5);
  CGImagePropertyOrientation.transform.getter(v23, &v56);
  v55 = v56;
  v57.origin.x = v14;
  v57.origin.y = v16;
  v57.size.width = v18;
  v57.size.height = v20;
  v58 = CGRectApplyAffineTransform(v57, &v55);
  width = v58.size.width;
  height = v58.size.height;
  [(UIScrollView *)v22 zoomScale:v58.origin.x];
  v27 = width * v26;
  v28 = height * v26;
  [(UIScrollView *)v22 contentSize];
  v32 = vabdd_f64(v27, v29) < 1.5;
  v31 = vabdd_f64(v28, v30);
  v32 = v32 && v31 < 1.5;
  if (!v32)
  {
    [(UIScrollView *)v22 setContentSize:v27, v28];
  }

  v33 = *&v2[direct field offset for CanvasView.zoomView];
  if (!v33)
  {
    __break(1u);
    goto LABEL_23;
  }

  [v33 bounds];
  v36 = vabdd_f64(height, v35);
  if (vabdd_f64(width, v34) < 1.5 && v36 < 1.5)
  {
    goto LABEL_15;
  }

  [(UIScrollView *)v22 zoomScale];
  v39 = v38;
  v40 = v2[direct field offset for CanvasView.zoomState];
  [(UIScrollView *)v22 setZoomScale:1.0];
  v41 = *&v2[direct field offset for CanvasView.zoomView];
  if (!v41)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v42 = v41;
  [v42 frame];
  [v42 setFrame_];

  if (v2[direct field offset for CanvasView.firstLayout] == 1)
  {
    [(UIScrollView *)v22 frame];
    v39 = fmin(CGRectGetWidth(v59) / width, 1.0);
    v2[direct field offset for CanvasView.firstLayout] = 0;
  }

  [(UIScrollView *)v22 setZoomScale:v39];
  v43 = v2[direct field offset for CanvasView.zoomState];
  v2[direct field offset for CanvasView.zoomState] = v40;
  CanvasView.zoomState.didset(v43);
LABEL_15:
  CanvasView.updateContentInsets()();
  v44 = specialized Canvas.paperView.getter();
  ContainerCanvasElementView.didScroll(in:)(v2);

  AnyCanvas.overlays.getter();
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = (v45 + 32);
    do
    {
      v48 = *v47;
      v47 += 2;
      [v48 setNeedsLayout];
      --v46;
    }

    while (v46);
  }

  swift_getKeyPath();
  *&v55.a = v2;
  lazy protocol witness table accessor for type DrawingFindResult and conformance DrawingFindResult(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = &v2[OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v50 = *&v2[direct field offset for CanvasView.zoomView];
    if (v50)
    {
      v51 = *(v49 + 1);
      ObjectType = swift_getObjectType();
      [v50 frame];
      [v2 convertRect:v22 fromCoordinateSpace:?];
      (*(v51 + 64))(v2, ObjectType, v51);
      swift_unknownObjectRelease();
      return;
    }

LABEL_24:
    __break(1u);
  }
}

Swift::Void __swiftcall CanvasView.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  if ((*(v1 + direct field offset for CanvasView.adjustingInsets) & 1) == 0)
  {
    CanvasView.updateAfterDidScroll(_:)(a1);
  }
}

void @objc CanvasView.scrollViewDidScroll(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CanvasView.scrollViewDidScroll(_:)(v4);
}

Swift::Void __swiftcall CanvasView.scrollViewWillBeginDecelerating(_:)(UIScrollView *a1)
{
  if (one-time initialization token for isMobileNotes != -1)
  {
    swift_once();
  }

  if (static NSBundle.isMobileNotes == 1)
  {
    v3 = [(UIScrollView *)a1 pinchGestureRecognizer];
    if (v3)
    {
      v4 = v3;
      [(UIPinchGestureRecognizer *)v3 velocity];
      v6 = v5;
    }

    else
    {
      v6 = 0.0;
    }

    [(UIScrollView *)a1 zoomScale];
    if (v6 / v7 < -8.0)
    {
      [(UIScrollView *)a1 setZoomScale:1 animated:1.0];
      *(v1 + direct field offset for CanvasView.snappedContentInsets) = 257;
    }
  }
}

void @objc CanvasView.scrollViewWillBeginDecelerating(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CanvasView.scrollViewWillBeginDecelerating(_:)(v4);
}

void @objc CanvasView.scrollViewDidZoom(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized CanvasView.scrollViewDidZoom(_:)();
}

void @objc CanvasView.scrollViewDidEndZooming(_:with:atScale:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  specialized CanvasView.scrollViewDidEndZooming(_:with:atScale:)(v6);
}

void specialized CanvasView.contentInset()()
{
  v1 = *&v0[direct field offset for CanvasView.canvasScrollView];
  if (v1)
  {
    v2 = v1;
    [v2 contentSize];
    [v2 zoomScale];
    [v2 bounds];
    CGRectGetHeight(v8);
  }

  [v0 bounds];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  CGRectGetWidth(v9);
  if (v1)
  {
    [v1 contentSize];
    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    CGRectGetHeight(v10);
    [v1 contentSize];
    v7 = &v0[direct field offset for CanvasView.snappedContentInsets];
    if (v0[direct field offset for CanvasView.snappedContentInsets])
    {
      if ((v7[1] & 1) == 0)
      {
LABEL_6:
        v11.origin.x = x;
        v11.origin.y = y;
        v11.size.width = width;
        v11.size.height = height;
        CGRectGetHeight(v11);
      }
    }

    else
    {
      v12.origin.x = x;
      v12.origin.y = y;
      v12.size.width = width;
      v12.size.height = height;
      CGRectGetWidth(v12);
      if ((v7[1] & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

UIEdgeInsets __swiftcall CanvasView.contentInset()()
{
  v1 = *&v0[direct field offset for CanvasView.minimumContentInsets];
  v2 = *&v0[direct field offset for CanvasView.minimumContentInsets + 8];
  v3 = *&v0[direct field offset for CanvasView.minimumContentInsets + 16];
  v4 = *&v0[direct field offset for CanvasView.minimumContentInsets + 24];
  v5 = *&v0[direct field offset for CanvasView.canvasScrollView];
  if (!v5 || (v6 = v5, [v6 contentSize], v8 = v7, objc_msgSend(v6, sel_zoomScale), v10 = v8 * v9, objc_msgSend(v6, sel_bounds), Height = CGRectGetHeight(v42), v6, v12 = 0.0, v13 = 0.0, v10 > Height - v1 - v3))
  {
    v12 = v3;
    v13 = v1;
  }

  v40 = v13;
  v41 = v12;
  [v0 bounds];
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  v17 = v43.size.height;
  v18 = CGRectGetWidth(v43);
  v22 = *&v0[direct field offset for CanvasView.canvasScrollView];
  if (v22)
  {
    v23 = v18;
    [*&v0[direct field offset for CanvasView.canvasScrollView] contentSize];
    v25 = v23 - v24 - (v2 + v4);
    if (v25 < 0.0)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v25;
    }

    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = v17;
    v27 = CGRectGetHeight(v44);
    [v22 contentSize];
    v30 = v40;
    v29 = v41;
    if (v27 - v28 - (v41 + v40) < 0.0)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = v27 - v28 - (v41 + v40);
    }

    v32 = 0.5;
    v33 = direct field offset for CanvasView.snappedContentInsets;
    if (v0[direct field offset for CanvasView.snappedContentInsets])
    {
      v34 = v26 * 0.5;
      v35 = round(v2 + v26 * 0.5);
      v36 = v4 + v34;
    }

    else
    {
      v45.origin.x = x;
      v45.origin.y = y;
      v37 = v31;
      v45.size.width = width;
      v45.size.height = v17;
      v38 = CGRectGetWidth(v45);
      v32 = 0.5;
      v31 = v37;
      v30 = v40;
      v29 = v41;
      v36 = v38 + -100.0;
      v33 = direct field offset for CanvasView.snappedContentInsets;
      v35 = v38 + -100.0;
    }

    if (v0[v33 + 1])
    {
      v18 = round(v30 + v31 * v32);
      v20 = round(v29 + v31 * v32);
    }

    else
    {
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = v17;
      v39 = CGRectGetHeight(v46);
      v30 = v40;
      v29 = v41;
      v20 = v39 + -100.0;
      v18 = v39 + -100.0;
    }

    if (v35 > v2)
    {
      v19 = v35;
    }

    else
    {
      v19 = v2;
    }

    if (v36 > v4)
    {
      v21 = v36;
    }

    else
    {
      v21 = v4;
    }

    if (v18 <= v30)
    {
      v18 = v30;
    }

    if (v20 <= v29)
    {
      v20 = v29;
    }
  }

  else
  {
    __break(1u);
  }

  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

void specialized CanvasView.updateContentInsets()()
{
  [v0 bounds];
  Width = CGRectGetWidth(v44);
  v2 = *&v0[direct field offset for CanvasView.canvasScrollView];
  if (!v2)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v3 = Width;
  [*&v0[direct field offset for CanvasView.canvasScrollView] contentSize];
  v5 = v3 - v4;
  if (v5 < 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  [v0 bounds];
  Height = CGRectGetHeight(v45);
  [v2 contentSize];
  if (Height - v8 < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = Height - v8;
  }

  if (v0[direct field offset for CanvasView.allowsContentSnapping] != 1)
  {
    goto LABEL_26;
  }

  v10 = direct field offset for CanvasView.trackingPanGestureRecognizer;
  v11 = *&v0[direct field offset for CanvasView.trackingPanGestureRecognizer];
  if (!v11)
  {
    goto LABEL_39;
  }

  [v11 translationInView_];
  v14 = *&v0[v10];
  if (!v14)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v15 = v12;
  v16 = v13;
  v17 = [v14 numberOfTouches];
  v18 = fabs(v15);
  if (v17 < 2 || v18 <= 100.0)
  {
    [v2 contentOffset];
    if (fabs(v6 * 0.5 + v20) >= 50.0)
    {
      goto LABEL_19;
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  v0[direct field offset for CanvasView.snappedContentInsets] = v21;
LABEL_19:
  v22 = *&v0[v10];
  if (!v22)
  {
LABEL_41:
    __break(1u);
    return;
  }

  if ([v22 numberOfTouches] >= 2 && fabs(v16) > 100.0)
  {
    v23 = 0;
LABEL_25:
    v0[direct field offset for CanvasView.snappedContentInsets + 1] = v23;
    goto LABEL_26;
  }

  [v2 contentOffset];
  if (fabs(v9 * 0.5 + v24) < 50.0)
  {
    v23 = 1;
    goto LABEL_25;
  }

LABEL_26:
  specialized CanvasView.contentInset()();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [v2 contentInset];
  v37 = vabdd_f64(v32, v36);
  v38 = vabdd_f64(v28, v35) < 1.5 && v37 < 1.5;
  v39 = vabdd_f64(v26, v33);
  v40 = v38 && v39 < 1.5;
  v41 = vabdd_f64(v30, v34);
  if (!v40 || v41 >= 1.5)
  {
    v43 = direct field offset for CanvasView.adjustingInsets;
    v0[direct field offset for CanvasView.adjustingInsets] = 1;
    [v2 setContentInset_];
    v0[v43] = 0;
  }
}

Swift::Void __swiftcall CanvasView.updateContentInsets()()
{
  [v0 bounds];
  Width = CGRectGetWidth(v38);
  v2 = *&v0[direct field offset for CanvasView.canvasScrollView];
  if (!v2)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v3 = Width;
  [*&v0[direct field offset for CanvasView.canvasScrollView] contentSize];
  v5 = v3 - v4;
  if (v5 < 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  [v0 bounds];
  Height = CGRectGetHeight(v39);
  [v2 contentSize];
  if (Height - v8 < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = Height - v8;
  }

  if (v0[direct field offset for CanvasView.allowsContentSnapping] != 1)
  {
    goto LABEL_26;
  }

  v10 = *&v0[direct field offset for CanvasView.trackingPanGestureRecognizer];
  if (!v10)
  {
    goto LABEL_39;
  }

  [v10 translationInView_];
  v13 = *&v0[direct field offset for CanvasView.trackingPanGestureRecognizer];
  if (!v13)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v14 = v11;
  v15 = v12;
  v16 = [v13 numberOfTouches];
  v17 = fabs(v14);
  if (v16 < 2 || v17 <= 100.0)
  {
    [v2 contentOffset];
    if (fabs(v6 * 0.5 + v19) >= 50.0)
    {
      goto LABEL_19;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  v0[direct field offset for CanvasView.snappedContentInsets] = v20;
LABEL_19:
  v21 = *&v0[direct field offset for CanvasView.trackingPanGestureRecognizer];
  if (!v21)
  {
LABEL_41:
    __break(1u);
    return;
  }

  if ([v21 numberOfTouches] >= 2 && fabs(v15) > 100.0)
  {
    v22 = 0;
LABEL_25:
    v0[direct field offset for CanvasView.snappedContentInsets + 1] = v22;
    goto LABEL_26;
  }

  [v2 contentOffset];
  if (fabs(v9 * 0.5 + v23) < 50.0)
  {
    v22 = 1;
    goto LABEL_25;
  }

LABEL_26:
  v40 = CanvasView.contentInset()();
  top = v40.top;
  left = v40.left;
  bottom = v40.bottom;
  right = v40.right;
  [v2 contentInset];
  v32 = vabdd_f64(right, v31);
  v33 = vabdd_f64(left, v30) < 1.5 && v32 < 1.5;
  v34 = vabdd_f64(top, v28);
  v35 = v33 && v34 < 1.5;
  v36 = vabdd_f64(bottom, v29);
  if (!v35 || v36 >= 1.5)
  {
    v0[direct field offset for CanvasView.adjustingInsets] = 1;
    [v2 setContentInset_];
    v0[direct field offset for CanvasView.adjustingInsets] = 0;
  }
}

void CanvasView.previousSize.setter(double a1, double a2)
{
  v3 = (v2 + direct field offset for CanvasView.previousSize);
  *v3 = a1;
  v3[1] = a2;
}

Swift::Void __swiftcall CanvasView.viewSizeDidChange()()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  v2 = v1[557];
  v3 = v1[558];
  v4 = type metadata accessor for Capsule();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-v7];
  if (*(v0 + direct field offset for CanvasView.allowAutomaticZoomScaleAdjustment) == 1)
  {
    v9 = *(v0 + direct field offset for CanvasView.canvasScrollView);
    if (v9)
    {
      v10 = v6;
      v11 = Canvas.updatablePaper2.getter(v8);
      MEMORY[0x1EEE9AC00](v11);
      *&v19[-32] = v2;
      *&v19[-24] = v3;
      *&v19[-16] = v1[559];
      swift_getKeyPath();
      v12 = v9;
      Capsule.subscript.getter();

      (*(v5 + 8))(v8, v10);
      v13 = v20;
      v14 = v21;
      [v0 bounds];
      v17 = v16 / v13;
      if (v15 / v14 < v16 / v13)
      {
        v17 = v15 / v14;
      }

      [v12 setMinimumZoomScale_];
    }
  }

  if (*(v0 + direct field offset for CanvasView.zoomState) == 1)
  {
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    CanvasView.zoomToFit(animated:)(!IsReduceMotionEnabled);
  }
}

Swift::Void __swiftcall CanvasView.layoutSubviews()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v2) + 0x1168);
  v5 = *((*MEMORY[0x1E69E7D40] & v2) + 0x1170);
  v6 = type metadata accessor for Capsule();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = *((v3 & v2) + 0x1178);
  v11 = type metadata accessor for CanvasView();
  v29.receiver = v1;
  v29.super_class = v11;
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  [v1 bounds];
  if (*&v1[direct field offset for CanvasView.previousSize] != v12 || *&v1[direct field offset for CanvasView.previousSize + 8] != v13)
  {
    v15 = v12;
    v16 = v13;
    CanvasView.viewSizeDidChange()();
    v17 = &v1[direct field offset for CanvasView.previousSize];
    *v17 = v15;
    v17[1] = v16;
  }

  v18 = *&v1[direct field offset for CanvasView.canvasScrollView];
  if (v18)
  {
    [v1 bounds];
    [(UIScrollView *)v18 setFrame:?];
    v19 = direct field offset for CanvasView.canvasContentMode;
    swift_beginAccess();
    if (v1[v19] == 1)
    {
      [v1 bounds];
      Width = CGRectGetWidth(v30);
      v21 = Canvas.updatablePaper2.getter(v9);
      MEMORY[0x1EEE9AC00](v21);
      *(&v27 - 4) = v4;
      *(&v27 - 3) = v5;
      *(&v27 - 2) = v10;
      swift_getKeyPath();
      Capsule.subscript.getter();

      v22 = *(v7 + 8);
      v22(v9, v6);
      v23 = Width / CGRectGetWidth(v28);
      [v1 bounds];
      Height = CGRectGetHeight(v31);
      v25 = Canvas.updatablePaper2.getter(v9);
      MEMORY[0x1EEE9AC00](v25);
      *(&v27 - 4) = v4;
      *(&v27 - 3) = v5;
      *(&v27 - 2) = v10;
      swift_getKeyPath();
      Capsule.subscript.getter();

      v22(v9, v6);
      v26 = Height / CGRectGetHeight(v28);
      if (v26 >= v23)
      {
        v26 = v23;
      }

      [(UIScrollView *)v18 setZoomScale:v26];
    }

    CanvasView.updateAfterDidScroll(_:)(v18);
  }

  else
  {
    __break(1u);
  }
}

void key path getter for PaperRenderable.frame : <A>A(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = (*(*(*(*(a1 + a2 - 8) + 8) + 8) + 8))(*(a1 + a2 - 24));
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
}

{
  *a3 = (*(*(*(a1 + a2 - 8) + 8) + 8))(*(a1 + a2 - 24));
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
}

uint64_t key path setter for CanvasElement.frame : <A>A(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(*(*(a3 + a4 - 8) + 8) + 16))(*(a3 + a4 - 24), *(*(a3 + a4 - 8) + 8), *a1, a1[1], a1[2], a1[3]);
}

{
  return (*(*(a3 + a4 - 8) + 16))(*(a3 + a4 - 24), *(a3 + a4 - 8), *a1, a1[1], a1[2], a1[3]);
}

void @objc CanvasView.layoutSubviews()(void *a1)
{
  v1 = a1;
  CanvasView.layoutSubviews()();
}

void *CanvasView.scrollView.getter()
{
  v0 = specialized CanvasView.scrollView.getter();
  v1 = v0;
  return v0;
}

void *CanvasView.tiledView.getter()
{
  v0 = specialized CanvasView.tiledView.getter();
  v1 = v0;
  return v0;
}

void CanvasView.presentSubelement<A>(_:)(void *a1, uint64_t a2)
{
  v4 = CanvasView.paperViewController.getter();
  if (v4)
  {
    v5 = v4;
    Canvas.presentSubelement<A>(_:presentationViewController:)(a1, v4, a2);
  }
}

Swift::Bool __swiftcall CanvasView.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(UIGestureRecognizer *_, UIGestureRecognizer *shouldRecognizeSimultaneouslyWith)
{
  v3 = *(v2 + direct field offset for CanvasView.trackingPanGestureRecognizer);
  if (!v3)
  {
    return 0;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGestureRecognizer);
  v6 = v3;
  v7 = _;
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    return 1;
  }

  v10 = *(v2 + direct field offset for CanvasView.trackingPanGestureRecognizer);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = shouldRecognizeSimultaneouslyWith;
  v13 = static NSObject.== infix(_:_:)();

  return v13 & 1;
}

BOOL @objc CanvasView.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = CanvasView.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(v6, v7);

  return v9;
}

Swift::Void __swiftcall CanvasView.toolPickerSelectedToolDidChange(_:)(PKToolPicker a1)
{
  v2 = CanvasView.toolPickerObserver.getter();
  CanvasViewToolPickerObserver.toolPickerSelectedToolItemDidChange(_:)(a1);
}

void @objc CanvasView.toolPickerIsRulerActiveDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CanvasView.toolPickerSelectedToolDidChange(_:)(v4);
}

Swift::Void __swiftcall CanvasView.zoomToFit(animated:)(Swift::Bool animated)
{
  v3 = CanvasView.paperViewController.getter();
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
    if (swift_dynamicCastClass() && (v5 = *(v1 + direct field offset for CanvasView.canvasScrollView)) != 0)
    {
      v11 = v5;
      CanvasElementViewController<>.scaleForZoomToFit.getter();
      v7 = v6;
      [v11 zoomScale];
      if (vabdd_f64(v8, v7) >= 0.001)
      {
        [v11 setZoomScale:animated animated:v7];
      }

      v9 = *(v1 + direct field offset for CanvasView.zoomState);
      *(v1 + direct field offset for CanvasView.zoomState) = 1;
      CanvasView.zoomState.didset(v9);

      v10 = v11;
    }

    else
    {
      v10 = v4;
    }
  }
}

uint64_t CanvasView.isAlmostZoomToFit.getter()
{
  result = CanvasView.paperViewController.getter();
  if (result)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd);
    if (swift_dynamicCastClass() && (v3 = *(v0 + direct field offset for CanvasView.canvasScrollView)) != 0)
    {
      v4 = v3;
      CanvasElementViewController<>.scaleForZoomToFit.getter();
      v6 = v5;
      [v4 zoomScale];
      v8 = v7;

      if (vabdd_f64(v8, v6) < 0.001)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

Swift::Void __swiftcall CanvasView.safeAreaInsetsDidChange()()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for CanvasView();
  objc_msgSendSuper2(&v11, sel_safeAreaInsetsDidChange);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10CanvasViewCyAA5ImageVGMd);
  v2 = swift_dynamicCastClass();
  if (v2 && (*(v0 + direct field offset for CanvasView.adjustingInsets) & 1) == 0)
  {
    v3 = v2;
    v4 = one-time initialization token for isPreviewApp;
    v5 = v1;
    if (v4 != -1)
    {
      swift_once();
    }

    if (static NSBundle.isPreviewApp == 1)
    {
      [v5 safeAreaInsets];
      v7 = v6;
      [v5 safeAreaInsets];
      v9 = (v3 + direct field offset for CanvasView.minimumContentInsets);
      if (vabdd_f64(v7, *(v3 + direct field offset for CanvasView.minimumContentInsets + 8)) >= 0.1 || vabdd_f64(v8, v9[3]) >= 0.1 || vabdd_f64(0.0, *v9) >= 0.1 || vabdd_f64(0.0, v9[2]) >= 0.1)
      {
        *v9 = 0.0;
        v9[1] = v7;
        v9[2] = 0.0;
        v9[3] = v8;
        specialized CanvasView.updateContentInsets()();
        if (*(v5 + direct field offset for CanvasView.zoomState) == 1)
        {
          IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
          CanvasView.zoomToFit(animated:)(!IsReduceMotionEnabled);
        }
      }
    }
  }
}

void @objc CanvasView.safeAreaInsetsDidChange()(void *a1)
{
  v1 = a1;
  CanvasView.safeAreaInsetsDidChange()();
}

uint64_t CanvasView.__ivar_destroyer()
{
  swift_unknownObjectRelease();
}

id CanvasView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc CanvasView.__ivar_destroyer(uint64_t a1)
{
  swift_unknownObjectRelease();
}

uint64_t outlined destroy of EncryptionDelegate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18EncryptionDelegate_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized CanvasView.init(coder:)()
{
  *(v0 + direct field offset for CanvasView.allowsContentSnapping) = 0;
  v1 = (v0 + direct field offset for CanvasView.calculateDocumentForTesting);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + direct field offset for CanvasView.trackingPanGestureRecognizer) = 0;
  *(v0 + direct field offset for CanvasView.rulerHostingDelegate) = 0;
  *(v0 + direct field offset for CanvasView.tiledViewDelegate) = 0;
  *(v0 + direct field offset for CanvasView.selectionInteractionDelegate) = 0;
  *(v0 + direct field offset for CanvasView.canvasContentMode) = 0;
  *(v0 + direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver) = 0;
  *(v0 + direct field offset for CanvasView.zoomView) = 0;
  *(v0 + direct field offset for CanvasView.contentView) = 0;
  v2 = direct field offset for CanvasView.formAnalytics;
  type metadata accessor for FormAnalytics();
  v3 = swift_allocObject();
  *(v3 + 16) = 791357252;
  *(v3 + 20) = 0;
  *(v3 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + v2) = v3;
  *(v0 + direct field offset for CanvasView.adjustingInsets) = 0;
  *(v0 + direct field offset for CanvasView.firstLayout) = 1;
  *(v0 + direct field offset for CanvasView.zoomState) = 0;
  *(v0 + direct field offset for CanvasView.snappedContentInsets) = 257;
  *(v0 + direct field offset for CanvasView.isScrollViewZooming) = 0;
  v4 = (v0 + direct field offset for CanvasView.minimumContentInsets);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  *v4 = *MEMORY[0x1E69DDCE0];
  v4[1] = v5;
  v6 = (v0 + direct field offset for CanvasView.previousSize);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + direct field offset for CanvasView.allowAutomaticZoomScaleAdjustment) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized CanvasView.calculateDocumentForTesting.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + direct field offset for CanvasView.calculateDocumentForTesting);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  CanvasView.calculateDocumentForTesting.didset();
}

void specialized CanvasView.contentView.setter(void *a1)
{
  v3 = *(v1 + direct field offset for CanvasView.contentView);
  *(v1 + direct field offset for CanvasView.contentView) = a1;
  v2 = a1;
  CanvasView.contentView.didset(v3);
}

void specialized CanvasView.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(void *a1, ValueMetadata *a2, unsigned __int8 *a3, char a4, char a5, void *a6, double a7, double a8, double a9, double a10)
{
  *(v10 + direct field offset for CanvasView.allowsContentSnapping) = 0;
  v16 = (v10 + direct field offset for CanvasView.calculateDocumentForTesting);
  *v16 = 0;
  v16[1] = 0;
  *(v10 + direct field offset for CanvasView.trackingPanGestureRecognizer) = 0;
  *(v10 + direct field offset for CanvasView.rulerHostingDelegate) = 0;
  *(v10 + direct field offset for CanvasView.tiledViewDelegate) = 0;
  *(v10 + direct field offset for CanvasView.selectionInteractionDelegate) = 0;
  *(v10 + direct field offset for CanvasView.canvasContentMode) = 0;
  *(v10 + direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver) = 0;
  v98 = *a3;
  v17 = direct field offset for CanvasView.zoomView;
  *(v10 + direct field offset for CanvasView.zoomView) = 0;
  *(v10 + direct field offset for CanvasView.contentView) = 0;
  v18 = direct field offset for CanvasView.formAnalytics;
  type metadata accessor for FormAnalytics();
  v19 = swift_allocObject();
  *(v19 + 16) = 791357252;
  *(v19 + 20) = 0;
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v10 + v18) = v19;
  *(v10 + direct field offset for CanvasView.adjustingInsets) = 0;
  *(v10 + direct field offset for CanvasView.firstLayout) = 1;
  *(v10 + direct field offset for CanvasView.zoomState) = 0;
  *(v19 + 24) = v20;
  *(v10 + direct field offset for CanvasView.snappedContentInsets) = 257;
  *(v10 + direct field offset for CanvasView.isScrollViewZooming) = 0;
  v21 = (v10 + direct field offset for CanvasView.minimumContentInsets);
  v22 = *(MEMORY[0x1E69DDCE0] + 16);
  *v21 = *MEMORY[0x1E69DDCE0];
  v21[1] = v22;
  v23 = (v10 + direct field offset for CanvasView.previousSize);
  *v23 = 0;
  v23[1] = 0;
  *(v10 + direct field offset for CanvasView.allowAutomaticZoomScaleAdjustment) = 0;
  v24 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v25 = [v24 topEdgeEffect];
  v26 = [objc_opt_self() _clearStyle];
  [v25 setStyle_];

  v27 = objc_opt_self();
  v28 = v24;
  v29 = [v27 clearColor];
  [v28 setBackgroundColor_];

  [v28 setContentSize_];
  [v28 setMinimumZoomScale_];
  [v28 setMaximumZoomScale_];
  [v28 setAlwaysBounceVertical_];
  [v28 setAlwaysBounceHorizontal_];
  [v28 setDelaysContentTouches_];
  [v28 setContentInsetAdjustmentBehavior_];
  [v28 setDecelerationRate_];
  *(v10 + direct field offset for CanvasView.canvasScrollView) = v28;
  v30 = objc_opt_self();
  v31 = v28;
  v32 = [v30 standardUserDefaults];
  v33 = MEMORY[0x1DA6CCED0](0xD000000000000035, 0x80000001D40827D0);
  v34 = [v32 BOOLForKey_];

  v35 = type metadata accessor for PKDrawingCoherence(0);
  v36 = [objc_allocWithZone(MEMORY[0x1E6978518]) initInScrollView:v31 sixChannelBlending:v34 defaultDrawingClass:swift_getObjCClassFromMetadata()];
  [v36 setSupportsCopyAsText_];
  if (one-time initialization token for isMobileNotes != -1)
  {
    swift_once();
  }

  [v36 setInsertSpaceEnabled_];
  v37 = [v36 canvasView];
  if (v37)
  {
    v38 = v37;
    v39 = [objc_allocWithZone(v35) init];
    [v38 setDrawing_];
  }

  v40 = [v36 canvasView];
  if (v40)
  {
    v41 = v40;
    [v40 setOpaque_];
  }

  v42 = [objc_allocWithZone(type metadata accessor for CanvasElementContainerView()) initWithFrame_];
  v43 = *(v10 + v17);
  *(v10 + v17) = v42;
  v44 = v42;

  [v36 setAttachmentContainerView_];
  *(v10 + direct field offset for CanvasView.canvasTiledView) = v36;
  v106[0] = v98;
  v45 = v36;
  v46 = a1;
  v47 = a4 & 1;
  v102 = v46;
  v48 = specialized Canvas.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:)(v46, a2, v106, v47, a5 & 1, a7, a8, a9, a10);
  v49 = a6;
  v50 = v48;
  AnyCanvas.viewControllerForPresentingUI.setter(a6);
  v100 = v49;

  v51 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  v52 = direct field offset for CanvasView.trackingPanGestureRecognizer;
  v53 = *&v50[direct field offset for CanvasView.trackingPanGestureRecognizer];
  *&v50[direct field offset for CanvasView.trackingPanGestureRecognizer] = v51;

  v54 = [objc_allocWithZone(type metadata accessor for CanvasElementController()) init];
  Canvas.canvasElementController.setter(v54);
  v55 = Canvas.canvasElementController.getter();

  if (v55)
  {
    *&v55[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate + 8] = &protocol witness table for CanvasView<A>;
    swift_unknownObjectWeakAssign();
    v56 = v50;
    CanvasElementController.delegate.didset();
  }

  if (v34)
  {
    [v45 setContentSnapshottingView_];
  }

  CanvasView.tiledViewUpdateEditingState()();
  v57 = direct field offset for CanvasView.zoomView;
  v58 = *&v50[direct field offset for CanvasView.zoomView];
  if (!v58)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [(UIScrollView *)v31 insertSubview:v58 atIndex:0];
  v59 = *&v50[OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView];
  v60 = v50;
  [(UIScrollView *)v31 addSubview:v59];
  v61 = objc_allocWithZone(type metadata accessor for CanvasElementResizeView());
  CanvasElementResizeView.init(frame:canvas:)(v60, 0.0, 0.0, a9, a10);
  v62 = *&v60[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  *&v60[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView] = v63;
  v64 = v63;

  [(UIScrollView *)v31 addSubview:v64];
  v107 = &type metadata for PencilAndPaperFeatureFlags;
  v108 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  v106[0] = 1;
  LOBYTE(v64) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v106);
  v65 = v60;
  if (v64)
  {
    v66 = objc_allocWithZone(type metadata accessor for HandwritingReflowView());
    v67 = HandwritingReflowView.init(frame:canvas:)(v60, 0.0, 0.0, a9, a10);
    [(UIScrollView *)v31 addSubview:v67];
    v65 = *&v60[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView];
    *&v60[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView] = v67;
  }

  v68 = *&v50[v57];
  if (!v68)
  {
    goto LABEL_26;
  }

  v69 = specialized Canvas.paperView.getter();
  v70 = v60;
  [v68 insertSubview:v69 atIndex:0];
  v71 = specialized Canvas.paperView.getter();
  CanvasElementView.merge<A>(_:)();

  v72 = specialized Canvas.paperView.getter();
  ContainerCanvasElementView.modelBounds.getter();
  v74 = v73;
  v76 = v75;

  [(UIScrollView *)v31 setContentSize:v74, v76];
  v77 = *&v50[v52];
  if (!v77)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v77 setDelegate_];
  v78 = *&v50[v52];
  if (!v78)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v78 setCancelsTouchesInView_];
  v79 = *&v50[v52];
  if (!v79)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v79 setDelaysTouchesEnded_];
  v80 = *&v50[v52];
  if (!v80)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v80 setEnabled_];
  if (!*&v50[v52])
  {
LABEL_31:
    __break(1u);
    return;
  }

  [(UIScrollView *)v31 addGestureRecognizer:?];
  if ((a5 & 1) == 0)
  {
    if (one-time initialization token for backboardColor != -1)
    {
      swift_once();
    }

    [v70 setBackgroundColor_];
  }

  type metadata accessor for CanvasViewTiledViewDelegate();
  v81 = v70;
  v82 = specialized CanvasViewTiledViewDelegate.__allocating_init(canvas:)();

  v83 = *&v81[direct field offset for CanvasView.tiledViewDelegate];
  *&v81[direct field offset for CanvasView.tiledViewDelegate] = v82;
  v84 = v82;

  [v45 setDelegate_];
  type metadata accessor for CanvasViewRulerHostingDelegate();
  v85 = v81;
  v86 = specialized CanvasViewRulerHostingDelegate.__allocating_init(canvas:)();

  v87 = *&v85[direct field offset for CanvasView.rulerHostingDelegate];
  *&v85[direct field offset for CanvasView.rulerHostingDelegate] = v86;
  v88 = v86;

  [v45 setRulerHostingDelegate_];
  [(UIScrollView *)v31 setDelegate:v85];
  v89 = Canvas.editingView.getter();
  v91 = v90;

  v92 = type metadata accessor for CanvasViewSelectionInteractionDelegate();
  v93 = objc_allocWithZone(v92);
  *&v93[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v91;
  swift_unknownObjectWeakAssign();
  v105.receiver = v93;
  v105.super_class = v92;
  v94 = objc_msgSendSuper2(&v105, sel_init);

  v95 = direct field offset for CanvasView.selectionInteractionDelegate;
  v96 = *&v85[direct field offset for CanvasView.selectionInteractionDelegate];
  *&v85[direct field offset for CanvasView.selectionInteractionDelegate] = v94;

  v97 = [v45 selectionInteraction];
  [v97 setDelegate_];

  [v85 addSubview_];
  CanvasView.updateAfterDidScroll(_:)(v31);
}

uint64_t specialized CanvasView.__allocating_init(context:frame:paper:allowsEditing:allowMediaCanvasElements:transparentBackground:paperViewController:)(void *a1, uint64_t a2, unsigned __int8 a3, char a4, void *a5, double a6, double a7, double a8, double a9)
{
  v18 = a3;
  v19 = type metadata accessor for Capsule();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v28[-v22];
  (*(v20 + 16))(&v28[-v22], a2, v19, v21);
  if ((v18 == 2) | a3 & 1)
  {
    v24 = 3;
  }

  else
  {
    v24 = 0;
  }

  v29 = v24;
  specialized CanvasView.__allocating_init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(a1, v23, &v29, 1, a4, a5, a6, a7, a8, a9);
  v26 = v25;
  (*(v20 + 8))(v23, v19);
  return v26;
}

id specialized CanvasView.contentSnapshottingView.setter(uint64_t a1)
{
  result = *(v1 + direct field offset for CanvasView.canvasTiledView);
  if (result)
  {
    return [result setContentSnapshottingView_];
  }

  __break(1u);
  return result;
}

void specialized CanvasView.scrollViewDidZoom(_:)()
{
  v1 = *(v0 + direct field offset for CanvasView.zoomState);
  *(v0 + direct field offset for CanvasView.zoomState) = 2;
  CanvasView.zoomState.didset(v1);
  v2 = specialized Canvas.paperView.getter();
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x260);
  v4 = v2;
  v3(v0);
}

void specialized CanvasView.scrollViewDidEndZooming(_:with:atScale:)(void *a1)
{
  CanvasView.updateContentInsets()();
  [a1 zoomScale];
  v4 = v3;
  [a1 minimumZoomScale];
  if (v4 == v5)
  {
    v6 = *(v1 + direct field offset for CanvasView.zoomState);
    *(v1 + direct field offset for CanvasView.zoomState) = 0;
    CanvasView.zoomState.didset(v6);
  }

  *(v1 + direct field offset for CanvasView.isScrollViewZooming) = 0;
}

uint64_t getEnumTagSinglePayload for CanvasView.ZoomState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CanvasView.ZoomState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id outlined copy of PaperDocumentFindResult.Content(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    a1 = a5;
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type PaperDocumentFindResult and conformance PaperDocumentFindResult()
{
  result = lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult;
  if (!lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult;
  if (!lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult;
  if (!lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult);
  }

  return result;
}

void outlined consume of PaperDocumentFindResult.Content(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    a1 = a5;
  }
}

uint64_t lazy protocol witness table accessor for type DrawingFindResult and conformance DrawingFindResult(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized CanvasView.canvasElementController(_:wantsToEnterFullscreen:)(char a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DrawingFindResult and conformance DrawingFindResult(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 40))(v1, a1 & 1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TextStyleSelectorModel.fontName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t TextStyleSelectorModel.fontSize.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t TextStyleSelectorModel.bold.getter()
{
  return TextStyleSelectorModel.bold.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t TextStyleSelectorModel.fontColor.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t TextStyleSelectorModel.textAlignment.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t TextStyleSelectorModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__fontName;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8PaperKit9InspectedVySSGGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__fontSize;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8PaperKit9InspectedVySiGGMd);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__bold;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8PaperKit9InspectedVySbGGMd);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__italic, v6);
  v7(v0 + OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__underline, v6);
  v7(v0 + OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__strikethrough, v6);
  v8 = OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__fontColor;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8PaperKit9InspectedVyAD5ColorVGGMd);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__textAlignment;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8PaperKit9InspectedVySo15NSTextAlignmentVGGMd);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return swift_deallocClassInstance();
}

void type metadata completion function for TextStyleSelectorModel()
{
  type metadata accessor for Published<Inspected<String>>(319, &lazy cache variable for type metadata for Published<Inspected<String>>, &_s8PaperKit9InspectedVySSGMd, &_s8PaperKit9InspectedVySSGMR, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<Inspected<String>>(319, &lazy cache variable for type metadata for Published<Inspected<Int>>, &_s8PaperKit9InspectedVySiGMd, &_s8PaperKit9InspectedVySiGMR, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<Inspected<String>>(319, &lazy cache variable for type metadata for Published<Inspected<Bool>>, &_s8PaperKit9InspectedVySbGMd, &_s8PaperKit9InspectedVySbGMR, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<Inspected<String>>(319, &lazy cache variable for type metadata for Published<Inspected<Color>>, &_s8PaperKit9InspectedVyAA5ColorVGMd, &_s8PaperKit9InspectedVyAA5ColorVGMR, MEMORY[0x1E695C070]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Published<Inspected<String>>(319, &lazy cache variable for type metadata for Published<Inspected<NSTextAlignment>>, &_s8PaperKit9InspectedVySo15NSTextAlignmentVGMd, &_s8PaperKit9InspectedVySo15NSTextAlignmentVGMR, MEMORY[0x1E695C070]);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance TextStyleSelectorModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TextStyleSelectorModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for TextFormattingState.fontName.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel;
}

uint64_t (*protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel;
}

uint64_t protocol witness for TextFormattingState.textAlignment.setter in conformance TextStyleSelectorModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*protocol witness for TextFormattingState.textAlignment.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel;
}

uint64_t protocol witness for TextFormattingState.bold.getter in conformance TextStyleSelectorModel()
{
  return protocol witness for TextFormattingState.bold.getter in conformance TextStyleSelectorModel();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t protocol witness for TextFormattingState.bold.setter in conformance TextStyleSelectorModel()
{
  return protocol witness for TextFormattingState.bold.setter in conformance TextStyleSelectorModel();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*protocol witness for TextFormattingState.bold.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel;
}

uint64_t (*protocol witness for TextFormattingState.italic.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel;
}

uint64_t (*protocol witness for TextFormattingState.underline.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel;
}

uint64_t (*protocol witness for TextFormattingState.strikethrough.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.strikethrough.modify in conformance TextStyleSelectorModel;
}

uint64_t protocol witness for TextFormattingState.fontColor.setter in conformance TextStyleSelectorModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVGMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(a1, v4, &_s8PaperKit9InspectedVyAA5ColorVGMd);

  static Published.subscript.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit9InspectedVyAA5ColorVGMd);
}

uint64_t (*protocol witness for TextFormattingState.fontColor.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel;
}

void protocol witness for TextFormattingState.fontName.modify in conformance TextStyleSelectorModel(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t FontPicker.presentationMode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA16PresentationModeVG_GMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  outlined init with copy of Date?(v2, &v13 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA16PresentationModeVG_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of Binding<PresentationMode>(v10, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall FontPicker.Coordinator.fontPickerViewControllerDidPickFont(_:)(UIFontPickerViewController *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PresentationMode();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA16PresentationModeVGMd);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for FontPicker(0);
  *&v9 = MEMORY[0x1EEE9AC00](v8 - 8).n128_u64[0];
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [(UIFontPickerViewController *)a1 selectedFontDescriptor];
  if (v12)
  {
    v13 = v12;
    (*(v2 + OBJC_IVAR____TtCV8PaperKit10FontPicker11Coordinator_pickedFont))();
  }

  outlined init with copy of FontSizePicker(v2 + OBJC_IVAR____TtCV8PaperKit10FontPicker11Coordinator_parent, v11, type metadata accessor for FontPicker);
  FontPicker.presentationMode.getter(v7);
  outlined destroy of FontSizePicker(v11, type metadata accessor for FontPicker);
  MEMORY[0x1DA6CA790](v5);
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s7SwiftUI7BindingVyAA16PresentationModeVGMd);
}

id protocol witness for UIViewControllerRepresentable.makeUIViewController(context:) in conformance FontPicker(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCA48]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI36UIViewControllerRepresentableContextVy8PaperKit10FontPickerVGMd);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v4 setDelegate_];

  [v4 setSelectedFontDescriptor_];
  return v4;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance FontPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FontPicker and conformance FontPicker(&lazy protocol witness table cache variable for type FontPicker and conformance FontPicker, type metadata accessor for FontPicker);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance FontPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FontPicker and conformance FontPicker(&lazy protocol witness table cache variable for type FontPicker and conformance FontPicker, type metadata accessor for FontPicker);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance FontPicker()
{
  lazy protocol witness table accessor for type FontPicker and conformance FontPicker(&lazy protocol witness table cache variable for type FontPicker and conformance FontPicker, type metadata accessor for FontPicker);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id FontSizePicker.makeUIViewController(context:)()
{
  v1 = *(v0 + *(type metadata accessor for FontSizePicker(0) + 20));
  if (one-time initialization token for textBoxFontUnitString != -1)
  {
    swift_once();
  }

  v2 = static UIConstants.textBoxFontUnitString;
  v3 = objc_allocWithZone(type metadata accessor for FontSizeViewController());
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_contentSize] = xmmword_1D405BB80;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_verticalInterItemSpacing] = 0x4024000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_stepperSizeHeight] = 0x4043000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___stepper] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___slider] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_minValue] = 5;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_maxValue] = 300;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_currentValue] = v1;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_unit] = v2;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_contentViewMargin] = 0;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for ValueEditingViewController();

  v4 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI36UIViewControllerRepresentableContextVy8PaperKit14FontSizePickerVGMd);
  UIViewControllerRepresentableContext.coordinator.getter();
  swift_unknownObjectWeakAssign();

  return v4;
}

id FontPicker.Coordinator.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t @objc FontPicker.Coordinator.__ivar_destroyer(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  outlined destroy of FontSizePicker(a1 + *a3, a4);
}

uint64_t type metadata completion function for FontPicker.Coordinator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata completion function for FontSizePicker()
{
  type metadata accessor for Published<Inspected<String>>(319, &lazy cache variable for type metadata for Environment<Binding<PresentationMode>>, &_s7SwiftUI7BindingVyAA16PresentationModeVGMd, &_s7SwiftUI7BindingVyAA16PresentationModeVGMR, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ()();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Published<Inspected<String>>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void type metadata completion function for FontPicker()
{
  type metadata accessor for Published<Inspected<String>>(319, &lazy cache variable for type metadata for Environment<Binding<PresentationMode>>, &_s7SwiftUI7BindingVyAA16PresentationModeVGMd, &_s7SwiftUI7BindingVyAA16PresentationModeVGMR, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIFontDescriptor();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ()();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t type metadata accessor for UIFontDescriptor()
{
  result = lazy cache variable for type metadata for UIFontDescriptor;
  if (!lazy cache variable for type metadata for UIFontDescriptor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIFontDescriptor);
  }

  return result;
}

uint64_t protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance FontPicker@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, void *a4@<X4>, void *a5@<X5>, void *a6@<X8>)
{
  v12 = a1 - 8;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of FontSizePicker(v6, v14, v15);
  v16 = (v6 + *(v12 + 32));
  v18 = *v16;
  v17 = v16[1];
  v19 = a3(0);
  v20 = objc_allocWithZone(v19);
  outlined init with copy of FontSizePicker(v14, &v20[*a4], a2);
  v21 = &v20[*a5];
  *v21 = v18;
  *(v21 + 1) = v17;
  v24.receiver = v20;
  v24.super_class = v19;

  v22 = objc_msgSendSuper2(&v24, sel_init);
  result = outlined destroy of FontSizePicker(v14, a2);
  *a6 = v22;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance FontSizePicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FontPicker and conformance FontPicker(&lazy protocol witness table cache variable for type FontSizePicker and conformance FontSizePicker, type metadata accessor for FontSizePicker);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance FontSizePicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FontPicker and conformance FontPicker(&lazy protocol witness table cache variable for type FontSizePicker and conformance FontSizePicker, type metadata accessor for FontSizePicker);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance FontSizePicker()
{
  lazy protocol witness table accessor for type FontPicker and conformance FontPicker(&lazy protocol witness table cache variable for type FontSizePicker and conformance FontSizePicker, type metadata accessor for FontSizePicker);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type FontPicker and conformance FontPicker(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for TextStyleSelectorModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FontPicker and conformance FontPicker(&lazy protocol witness table cache variable for type TextStyleSelectorModel and conformance TextStyleSelectorModel, type metadata accessor for TextStyleSelectorModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t key path getter for TextStyleSelectorModel.fontName : TextStyleSelectorModel@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t key path setter for TextStyleSelectorModel.fontName : TextStyleSelectorModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for TextStyleSelectorModel.fontSize : TextStyleSelectorModel@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t key path setter for TextStyleSelectorModel.fontSize : TextStyleSelectorModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for TextStyleSelectorModel.bold : TextStyleSelectorModel@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for TextStyleSelectorModel.bold : TextStyleSelectorModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for TextStyleSelectorModel.fontColor : TextStyleSelectorModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for TextStyleSelectorModel.fontColor : TextStyleSelectorModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVGMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit9InspectedVyAA5ColorVGMd);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v7, v4, &_s8PaperKit9InspectedVyAA5ColorVGMd);

  static Published.subscript.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit9InspectedVyAA5ColorVGMd);
}

uint64_t key path getter for TextStyleSelectorModel.textAlignment : TextStyleSelectorModel@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t key path setter for TextStyleSelectorModel.textAlignment : TextStyleSelectorModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t outlined init with copy of FontSizePicker(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of FontSizePicker(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Binding<PresentationMode>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA16PresentationModeVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void specialized CanvasView.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(char *a1, char *a2, int a3, int a4, int a5, void *a6, double a7, double a8, double a9, double a10)
{
  v131 = a5;
  LODWORD(v129) = a4;
  LODWORD(v134) = a3;
  v135 = a2;
  v128 = a1;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v133 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v132 = &v123 - v16;
  *(v10 + direct field offset for CanvasView.allowsContentSnapping) = 0;
  v17 = (v10 + direct field offset for CanvasView.calculateDocumentForTesting);
  *v17 = 0;
  v17[1] = 0;
  *(v10 + direct field offset for CanvasView.trackingPanGestureRecognizer) = 0;
  *(v10 + direct field offset for CanvasView.rulerHostingDelegate) = 0;
  *(v10 + direct field offset for CanvasView.tiledViewDelegate) = 0;
  *(v10 + direct field offset for CanvasView.selectionInteractionDelegate) = 0;
  *(v10 + direct field offset for CanvasView.canvasContentMode) = 0;
  *(v10 + direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver) = 0;
  v18 = direct field offset for CanvasView.zoomView;
  *(v10 + direct field offset for CanvasView.zoomView) = 0;
  *(v10 + direct field offset for CanvasView.contentView) = 0;
  v19 = direct field offset for CanvasView.formAnalytics;
  type metadata accessor for FormAnalytics();
  v20 = swift_allocObject();
  *(v20 + 16) = 791357252;
  *(v20 + 20) = 0;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v10 + v19) = v20;
  *(v10 + direct field offset for CanvasView.adjustingInsets) = 0;
  *(v10 + direct field offset for CanvasView.firstLayout) = 1;
  *(v10 + direct field offset for CanvasView.zoomState) = 0;
  *(v10 + direct field offset for CanvasView.snappedContentInsets) = 257;
  *(v10 + direct field offset for CanvasView.isScrollViewZooming) = 0;
  *(v20 + 24) = v21;
  v22 = (v10 + direct field offset for CanvasView.minimumContentInsets);
  v23 = *(MEMORY[0x1E69DDCE0] + 16);
  *v22 = *MEMORY[0x1E69DDCE0];
  v22[1] = v23;
  v24 = (v10 + direct field offset for CanvasView.previousSize);
  *v24 = 0;
  v24[1] = 0;
  *(v10 + direct field offset for CanvasView.allowAutomaticZoomScaleAdjustment) = 0;
  v25 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v26 = [v25 topEdgeEffect];
  v27 = [objc_opt_self() _clearStyle];
  [v26 setStyle_];

  v28 = objc_opt_self();
  v29 = v25;
  v30 = [v28 clearColor];
  [v29 setBackgroundColor_];

  [v29 setContentSize_];
  [v29 setMinimumZoomScale_];
  [v29 setMaximumZoomScale_];
  [v29 setAlwaysBounceVertical_];
  [v29 setAlwaysBounceHorizontal_];
  [v29 setDelaysContentTouches_];
  [v29 setContentInsetAdjustmentBehavior_];
  [v29 setDecelerationRate_];
  *(v10 + direct field offset for CanvasView.canvasScrollView) = v29;
  v31 = objc_opt_self();
  v32 = v29;
  v33 = [v31 standardUserDefaults];
  v34 = MEMORY[0x1DA6CCED0](0xD000000000000035, 0x80000001D40827D0);
  v35 = [v33 BOOLForKey_];

  v36 = type metadata accessor for PKDrawingCoherence(0);
  v37 = [objc_allocWithZone(MEMORY[0x1E6978518]) initInScrollView:v32 sixChannelBlending:v35 defaultDrawingClass:swift_getObjCClassFromMetadata()];
  [v37 setSupportsCopyAsText_];
  if (one-time initialization token for isMobileNotes != -1)
  {
    swift_once();
  }

  [v37 setInsertSpaceEnabled_];
  v38 = [v37 canvasView];
  if (v38)
  {
    v39 = v38;
    v40 = [objc_allocWithZone(v36) init];
    [v39 setDrawing_];
  }

  v41 = [v37 canvasView];
  if (v41)
  {
    v42 = v41;
    [v41 setOpaque_];
  }

  v43 = [objc_allocWithZone(type metadata accessor for CanvasElementContainerView()) initWithFrame_];
  v44 = *(v10 + v18);
  *(v10 + v18) = v43;

  v45 = v43;
  [v37 setAttachmentContainerView_];

  *(v10 + direct field offset for CanvasView.canvasTiledView) = v37;
  v46 = *(v133 + 16);
  v47 = v132;
  v127 = v133 + 16;
  v126 = v46;
  v46(v132, v135, v136);
  v130 = v37;
  v48 = v128;
  v49 = specialized Canvas.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:)(v48, v47, v134, v129 & 1, v131 & 1, a7, a8, a9, a10);
  v125 = a6;
  AnyCanvas.viewControllerForPresentingUI.setter(a6);
  v50 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  v51 = *(v49 + direct field offset for CanvasView.trackingPanGestureRecognizer);
  v128 = direct field offset for CanvasView.trackingPanGestureRecognizer;
  *(v49 + direct field offset for CanvasView.trackingPanGestureRecognizer) = v50;

  v52 = [objc_allocWithZone(type metadata accessor for CanvasElementController()) init];
  v53 = *(v49 + direct field offset for Canvas._canvasElementController);
  *(v49 + direct field offset for Canvas._canvasElementController) = v52;
  v54 = v52;

  v55 = MEMORY[0x1E69E7D40];
  if (v54)
  {
    goto LABEL_8;
  }

  v111 = (*((*MEMORY[0x1E69E7D40] & *v49) + 0x468))();
  v56 = v49;
  if (v111)
  {
    v112 = v111;
    ObjectType = swift_getObjectType();
    v114 = swift_conformsToProtocol2();
    if (!v114)
    {
      v54 = v49;
      v56 = v112;
      goto LABEL_9;
    }

    v54 = (*(v114 + 48))(ObjectType, v114);

LABEL_8:
    *&v54[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate + 8] = &protocol witness table for CanvasView<A>;
    swift_unknownObjectWeakAssign();
    v56 = v49;
    CanvasElementController.delegate.didset();
LABEL_9:
  }

  if (v35)
  {
    [v130 setContentSnapshottingView_];
  }

  v57 = *(v49 + direct field offset for CanvasView.canvasTiledView);
  if (!v57)
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v58 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_editingMode;
  swift_beginAccess();
  v59 = *(v49 + v58);
  if (v59 >= 2)
  {
    if (v59 != 2)
    {
      v59 = 0;
    }

    v60 = 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v61 = [v57 canvasView];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 drawingGestureRecognizer];

    [v63 setEnabled_];
  }

  [v57 setDrawingPolicy_];
  v64 = direct field offset for CanvasView.zoomView;
  v65 = *(v49 + direct field offset for CanvasView.zoomView);
  if (!v65)
  {
    goto LABEL_46;
  }

  [v32 insertSubview:v65 atIndex:0];
  v66 = *(v49 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView);
  v67 = v49;
  [v32 addSubview_];
  v68 = objc_allocWithZone(type metadata accessor for CanvasElementResizeView());
  CanvasElementResizeView.init(frame:canvas:)(v67, 0.0, 0.0, a9, a10);
  v70 = v69;
  v71 = *(v67 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  *(v67 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView) = v69;

  [v32 addSubview_];
  v142 = &type metadata for PencilAndPaperFeatureFlags;
  v143 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  v140[0] = 1;
  LOBYTE(v70) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v140);
  v72 = v67;
  if (v70)
  {
    v73 = objc_allocWithZone(type metadata accessor for HandwritingReflowView());
    v74 = HandwritingReflowView.init(frame:canvas:)(v67, 0.0, 0.0, a9, a10);
    [v32 addSubview_];
    v72 = *(v67 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    *(v67 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView) = v74;
  }

  v134 = v32;

  v75 = *(v49 + v64);
  if (!v75)
  {
    goto LABEL_47;
  }

  v76 = direct field offset for Canvas.paperView;
  v77 = *(v67 + direct field offset for Canvas.paperView);
  v78 = v67;
  [v75 insertSubview:v77 atIndex:0];
  v129 = v76;
  v79 = *(v67 + v76);
  v80 = v55;
  swift_beginAccess();
  v81 = type metadata accessor for Paper(0);
  v82 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper);
  v83 = v79;
  v84 = Capsule.merge<A>(_:)();
  Strong = swift_endAccess();
  v124 = v48;
  if ((v84 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*((*v80 & *v83) + 0x520))(Strong);
  }

  else
  {
  }

  v86 = *(v67 + v129);
  v87 = *((*v80 & *v86) + 0x3F0);
  swift_beginAccess();
  v88 = v132;
  v89 = v136;
  v90 = v126(v132, &v86[v87], v136);
  MEMORY[0x1EEE9AC00](v90);
  *(&v123 - 4) = v81;
  *(&v123 - 3) = v82;
  *(&v123 - 2) = &protocol witness table for Paper;
  swift_getKeyPath();
  v91 = v86;
  Capsule.subscript.getter();

  v92 = *(v133 + 8);
  v92(v88, v89);
  v93 = v134;
  [v134 setContentSize_];
  v94 = v128;
  v95 = *&v128[v49];
  if (!v95)
  {
    goto LABEL_48;
  }

  [v95 setDelegate_];
  v96 = *&v94[v49];
  if (!v96)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  [v96 setCancelsTouchesInView_];
  v97 = *&v94[v49];
  if (!v97)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v97 setDelaysTouchesEnded_];
  v98 = *&v94[v49];
  if (!v98)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v98 setEnabled_];
  if (!*&v94[v49])
  {
LABEL_52:
    __break(1u);
    return;
  }

  [v93 addGestureRecognizer_];
  v99 = v130;
  if ((v131 & 1) == 0)
  {
    if (one-time initialization token for backboardColor != -1)
    {
      swift_once();
    }

    [v78 setBackgroundColor_];
  }

  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit015CanvasViewTiledD8DelegateCyAA0A0VGMd);
  v101 = objc_allocWithZone(v100);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v139.receiver = v101;
  v139.super_class = v100;
  v102 = v78;
  v103 = objc_msgSendSuper2(&v139, sel_init);
  v104 = *&v102[direct field offset for CanvasView.tiledViewDelegate];
  *&v102[direct field offset for CanvasView.tiledViewDelegate] = v103;

  [v99 setDelegate_];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit30CanvasViewRulerHostingDelegateCyAA0A0VGMd);
  v106 = objc_allocWithZone(v105);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v138.receiver = v106;
  v138.super_class = v105;
  v107 = objc_msgSendSuper2(&v138, sel_init);

  v108 = *&v102[direct field offset for CanvasView.rulerHostingDelegate];
  *&v102[direct field offset for CanvasView.rulerHostingDelegate] = v107;

  [v99 setRulerHostingDelegate_];
  [v134 setDelegate_];
  v109 = *&v102[direct field offset for Canvas._editingView];
  if (v109)
  {
    v110 = *&v102[direct field offset for Canvas._editingView + 8];
  }

  else
  {
    v109 = *(v67 + v129);
    v110 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  v115 = v109;

  v116 = type metadata accessor for CanvasViewSelectionInteractionDelegate();
  v117 = objc_allocWithZone(v116);
  *&v117[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v110;
  swift_unknownObjectWeakAssign();
  v137.receiver = v117;
  v137.super_class = v116;
  v118 = objc_msgSendSuper2(&v137, sel_init);

  v119 = direct field offset for CanvasView.selectionInteractionDelegate;
  v120 = *&v102[direct field offset for CanvasView.selectionInteractionDelegate];
  *&v102[direct field offset for CanvasView.selectionInteractionDelegate] = v118;

  v121 = [v99 selectionInteraction];
  [v121 setDelegate_];

  v122 = v134;
  [v102 addSubview_];
  specialized CanvasView.updateAfterDidScroll(_:)(v122);

  v92(v135, v136);
}

{
  v131 = a5;
  LODWORD(v129) = a4;
  LODWORD(v134) = a3;
  v135 = a2;
  v128 = a1;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v133 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v132 = &v123 - v16;
  *(v10 + direct field offset for CanvasView.allowsContentSnapping) = 0;
  v17 = (v10 + direct field offset for CanvasView.calculateDocumentForTesting);
  *v17 = 0;
  v17[1] = 0;
  *(v10 + direct field offset for CanvasView.trackingPanGestureRecognizer) = 0;
  *(v10 + direct field offset for CanvasView.rulerHostingDelegate) = 0;
  *(v10 + direct field offset for CanvasView.tiledViewDelegate) = 0;
  *(v10 + direct field offset for CanvasView.selectionInteractionDelegate) = 0;
  *(v10 + direct field offset for CanvasView.canvasContentMode) = 0;
  *(v10 + direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver) = 0;
  v18 = direct field offset for CanvasView.zoomView;
  *(v10 + direct field offset for CanvasView.zoomView) = 0;
  *(v10 + direct field offset for CanvasView.contentView) = 0;
  v19 = direct field offset for CanvasView.formAnalytics;
  type metadata accessor for FormAnalytics();
  v20 = swift_allocObject();
  *(v20 + 16) = 791357252;
  *(v20 + 20) = 0;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v10 + v19) = v20;
  *(v10 + direct field offset for CanvasView.adjustingInsets) = 0;
  *(v10 + direct field offset for CanvasView.firstLayout) = 1;
  *(v10 + direct field offset for CanvasView.zoomState) = 0;
  *(v10 + direct field offset for CanvasView.snappedContentInsets) = 257;
  *(v10 + direct field offset for CanvasView.isScrollViewZooming) = 0;
  *(v20 + 24) = v21;
  v22 = (v10 + direct field offset for CanvasView.minimumContentInsets);
  v23 = *(MEMORY[0x1E69DDCE0] + 16);
  *v22 = *MEMORY[0x1E69DDCE0];
  v22[1] = v23;
  v24 = (v10 + direct field offset for CanvasView.previousSize);
  *v24 = 0;
  v24[1] = 0;
  *(v10 + direct field offset for CanvasView.allowAutomaticZoomScaleAdjustment) = 0;
  v25 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v26 = [v25 topEdgeEffect];
  v27 = [objc_opt_self() _clearStyle];
  [v26 setStyle_];

  v28 = objc_opt_self();
  v29 = v25;
  v30 = [v28 clearColor];
  [v29 setBackgroundColor_];

  [v29 setContentSize_];
  [v29 setMinimumZoomScale_];
  [v29 setMaximumZoomScale_];
  [v29 setAlwaysBounceVertical_];
  [v29 setAlwaysBounceHorizontal_];
  [v29 setDelaysContentTouches_];
  [v29 setContentInsetAdjustmentBehavior_];
  [v29 setDecelerationRate_];
  *(v10 + direct field offset for CanvasView.canvasScrollView) = v29;
  v31 = objc_opt_self();
  v32 = v29;
  v33 = [v31 standardUserDefaults];
  v34 = MEMORY[0x1DA6CCED0](0xD000000000000035, 0x80000001D40827D0);
  v35 = [v33 BOOLForKey_];

  v36 = type metadata accessor for PKDrawingCoherence(0);
  v37 = [objc_allocWithZone(MEMORY[0x1E6978518]) initInScrollView:v32 sixChannelBlending:v35 defaultDrawingClass:swift_getObjCClassFromMetadata()];
  [v37 setSupportsCopyAsText_];
  if (one-time initialization token for isMobileNotes != -1)
  {
    swift_once();
  }

  [v37 setInsertSpaceEnabled_];
  v38 = [v37 canvasView];
  if (v38)
  {
    v39 = v38;
    v40 = [objc_allocWithZone(v36) init];
    [v39 setDrawing_];
  }

  v41 = [v37 canvasView];
  if (v41)
  {
    v42 = v41;
    [v41 setOpaque_];
  }

  v43 = [objc_allocWithZone(type metadata accessor for CanvasElementContainerView()) initWithFrame_];
  v44 = *(v10 + v18);
  *(v10 + v18) = v43;

  v45 = v43;
  [v37 setAttachmentContainerView_];

  *(v10 + direct field offset for CanvasView.canvasTiledView) = v37;
  v46 = *(v133 + 16);
  v47 = v132;
  v127 = v133 + 16;
  v126 = v46;
  v46(v132, v135, v136);
  v130 = v37;
  v48 = v128;
  v49 = specialized Canvas.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:)(v48, v47, v134, v129 & 1, v131 & 1, a7, a8, a9, a10);
  v125 = a6;
  AnyCanvas.viewControllerForPresentingUI.setter(a6);
  v50 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  v51 = *(v49 + direct field offset for CanvasView.trackingPanGestureRecognizer);
  v128 = direct field offset for CanvasView.trackingPanGestureRecognizer;
  *(v49 + direct field offset for CanvasView.trackingPanGestureRecognizer) = v50;

  v52 = [objc_allocWithZone(type metadata accessor for CanvasElementController()) init];
  v53 = *(v49 + direct field offset for Canvas._canvasElementController);
  *(v49 + direct field offset for Canvas._canvasElementController) = v52;
  v54 = v52;

  v55 = MEMORY[0x1E69E7D40];
  if (v54)
  {
    goto LABEL_8;
  }

  v111 = (*((*MEMORY[0x1E69E7D40] & *v49) + 0x468))();
  v56 = v49;
  if (v111)
  {
    v112 = v111;
    ObjectType = swift_getObjectType();
    v114 = swift_conformsToProtocol2();
    if (!v114)
    {
      v54 = v49;
      v56 = v112;
      goto LABEL_9;
    }

    v54 = (*(v114 + 48))(ObjectType, v114);

LABEL_8:
    *&v54[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate + 8] = &protocol witness table for CanvasView<A>;
    swift_unknownObjectWeakAssign();
    v56 = v49;
    CanvasElementController.delegate.didset();
LABEL_9:
  }

  if (v35)
  {
    [v130 setContentSnapshottingView_];
  }

  v57 = *(v49 + direct field offset for CanvasView.canvasTiledView);
  if (!v57)
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v58 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_editingMode;
  swift_beginAccess();
  v59 = *(v49 + v58);
  if (v59 >= 2)
  {
    if (v59 != 2)
    {
      v59 = 0;
    }

    v60 = 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v61 = [v57 canvasView];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 drawingGestureRecognizer];

    [v63 setEnabled_];
  }

  [v57 setDrawingPolicy_];
  v64 = direct field offset for CanvasView.zoomView;
  v65 = *(v49 + direct field offset for CanvasView.zoomView);
  if (!v65)
  {
    goto LABEL_46;
  }

  [v32 insertSubview:v65 atIndex:0];
  v66 = *(v49 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView);
  v67 = v49;
  [v32 addSubview_];
  v68 = objc_allocWithZone(type metadata accessor for CanvasElementResizeView());
  CanvasElementResizeView.init(frame:canvas:)(v67, 0.0, 0.0, a9, a10);
  v70 = v69;
  v71 = *(v67 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  *(v67 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView) = v69;

  [v32 addSubview_];
  v142 = &type metadata for PencilAndPaperFeatureFlags;
  v143 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  v140[0] = 1;
  LOBYTE(v70) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v140);
  v72 = v67;
  if (v70)
  {
    v73 = objc_allocWithZone(type metadata accessor for HandwritingReflowView());
    v74 = HandwritingReflowView.init(frame:canvas:)(v67, 0.0, 0.0, a9, a10);
    [v32 addSubview_];
    v72 = *(v67 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
    *(v67 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView) = v74;
  }

  v134 = v32;

  v75 = *(v49 + v64);
  if (!v75)
  {
    goto LABEL_47;
  }

  v76 = direct field offset for Canvas.paperView;
  v77 = *(v67 + direct field offset for Canvas.paperView);
  v78 = v67;
  [v75 insertSubview:v77 atIndex:0];
  v129 = v76;
  v79 = *(v67 + v76);
  v80 = v55;
  swift_beginAccess();
  v81 = type metadata accessor for Image(0);
  v82 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Image and conformance Image, 255, type metadata accessor for Image);
  v83 = v79;
  v84 = Capsule.merge<A>(_:)();
  Strong = swift_endAccess();
  v124 = v48;
  if ((v84 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*((*v80 & *v83) + 0x520))(Strong);
  }

  else
  {
  }

  v86 = *(v67 + v129);
  v87 = *((*v80 & *v86) + 0x3F0);
  swift_beginAccess();
  v88 = v132;
  v89 = v136;
  v90 = v126(v132, &v86[v87], v136);
  MEMORY[0x1EEE9AC00](v90);
  *(&v123 - 4) = v81;
  *(&v123 - 3) = v82;
  *(&v123 - 2) = &protocol witness table for Image;
  swift_getKeyPath();
  v91 = v86;
  Capsule.subscript.getter();

  v92 = *(v133 + 8);
  v92(v88, v89);
  v93 = v134;
  [v134 setContentSize_];
  v94 = v128;
  v95 = *&v128[v49];
  if (!v95)
  {
    goto LABEL_48;
  }

  [v95 setDelegate_];
  v96 = *&v94[v49];
  if (!v96)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  [v96 setCancelsTouchesInView_];
  v97 = *&v94[v49];
  if (!v97)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v97 setDelaysTouchesEnded_];
  v98 = *&v94[v49];
  if (!v98)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v98 setEnabled_];
  if (!*&v94[v49])
  {
LABEL_52:
    __break(1u);
    return;
  }

  [v93 addGestureRecognizer_];
  v99 = v130;
  if ((v131 & 1) == 0)
  {
    if (one-time initialization token for backboardColor != -1)
    {
      swift_once();
    }

    [v78 setBackgroundColor_];
  }

  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit015CanvasViewTiledD8DelegateCyAA5ImageVGMd);
  v101 = objc_allocWithZone(v100);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v139.receiver = v101;
  v139.super_class = v100;
  v102 = v78;
  v103 = objc_msgSendSuper2(&v139, sel_init);
  v104 = *&v102[direct field offset for CanvasView.tiledViewDelegate];
  *&v102[direct field offset for CanvasView.tiledViewDelegate] = v103;

  [v99 setDelegate_];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit30CanvasViewRulerHostingDelegateCyAA5ImageVGMd);
  v106 = objc_allocWithZone(v105);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v138.receiver = v106;
  v138.super_class = v105;
  v107 = objc_msgSendSuper2(&v138, sel_init);

  v108 = *&v102[direct field offset for CanvasView.rulerHostingDelegate];
  *&v102[direct field offset for CanvasView.rulerHostingDelegate] = v107;

  [v99 setRulerHostingDelegate_];
  [v134 setDelegate_];
  v109 = *&v102[direct field offset for Canvas._editingView];
  if (v109)
  {
    v110 = *&v102[direct field offset for Canvas._editingView + 8];
  }

  else
  {
    v109 = *(v67 + v129);
    v110 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  v115 = v109;

  v116 = type metadata accessor for CanvasViewSelectionInteractionDelegate();
  v117 = objc_allocWithZone(v116);
  *&v117[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v110;
  swift_unknownObjectWeakAssign();
  v137.receiver = v117;
  v137.super_class = v116;
  v118 = objc_msgSendSuper2(&v137, sel_init);

  v119 = direct field offset for CanvasView.selectionInteractionDelegate;
  v120 = *&v102[direct field offset for CanvasView.selectionInteractionDelegate];
  *&v102[direct field offset for CanvasView.selectionInteractionDelegate] = v118;

  v121 = [v99 selectionInteraction];
  [v121 setDelegate_];

  v122 = v134;
  [v102 addSubview_];
  specialized CanvasView.updateAfterDidScroll(_:)(v122);

  v92(v135, v136);
}

unint64_t specialized CanvasView.updateAfterDidScroll(_:)(void *a1)
{
  v2 = v1;
  v60 = a1;
  v3 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v57 - v7;
  v9 = direct field offset for Canvas.paperView;
  v10 = *&v2[direct field offset for Canvas.paperView];
  v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x3F0);
  swift_beginAccess();
  v12 = *(v6 + 16);
  v12(v8, &v10[v11], v5);
  v61 = v3;
  v62 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper);
  v63 = &protocol witness table for Paper;
  swift_getKeyPath();
  v13 = v10;
  Capsule.subscript.getter();

  v14 = *(v6 + 8);
  v14(v8, v5);
  v15 = *&v65.a;
  v16 = *&v65.c;
  v58 = v9;
  v17 = *&v2[v9];
  v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x3F0);
  swift_beginAccess();
  v19 = v17 + v18;
  v20 = v60;
  v12(v8, v19, v5);
  v21 = v59;
  Capsule.root.getter();
  v14(v8, v5);
  v22 = off_1F4F62998(v3);
  _s8PaperKit0A0VWOhTm_0(v21, type metadata accessor for Paper);
  CGImagePropertyOrientation.transform.getter(v22, &v65);
  v64 = v65;
  v66.origin = v15;
  v66.size = v16;
  v67 = CGRectApplyAffineTransform(v66, &v64);
  width = v67.size.width;
  height = v67.size.height;
  [v20 zoomScale];
  v26 = width * v25;
  v27 = height * v25;
  [v20 contentSize];
  if (vabdd_f64(v26, v29) >= 1.5 || vabdd_f64(v27, v28) >= 1.5)
  {
    [v20 setContentSize_];
  }

  v30 = direct field offset for CanvasView.zoomView;
  result = *&v2[direct field offset for CanvasView.zoomView];
  if (!result)
  {
    goto LABEL_28;
  }

  v32 = [result bounds];
  v35 = MEMORY[0x1E69E7D40];
  if (vabdd_f64(width, v34) >= 1.5 || vabdd_f64(height, v33) >= 1.5)
  {
    [v20 zoomScale];
    v37 = v36;
    v38 = direct field offset for CanvasView.zoomState;
    v39 = v2[direct field offset for CanvasView.zoomState];
    result = [v20 setZoomScale_];
    v40 = *&v2[v30];
    if (!v40)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v41 = v40;
    [v41 frame];
    [v41 setFrame_];

    v42 = direct field offset for CanvasView.firstLayout;
    if (v2[direct field offset for CanvasView.firstLayout] == 1)
    {
      [v20 frame];
      v37 = fmin(CGRectGetWidth(v68) / width, 1.0);
      v2[v42] = 0;
    }

    v32 = [v20 setZoomScale_];
    v2[v38] = v39;
  }

  specialized CanvasView.updateContentInsets()(v32);
  v43 = *&v2[v58];
  result = specialized ContainerCanvasElementView.subelementViews.getter(v43);
  v44 = result;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v45 = result;
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v45 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v45)
    {
      goto LABEL_20;
    }
  }

  if (v45 < 1)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  for (i = 0; i != v45; ++i)
  {
    if ((v44 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x1DA6CE0C0](i, v44);
    }

    else
    {
      v47 = *(v44 + 8 * i + 32);
    }

    v48 = v47;
    (*((*v35 & *v47) + 0x258))(v2);
  }

LABEL_20:

  AnyCanvas.overlays.getter();
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = (v49 + 32);
    do
    {
      v52 = *v51;
      v51 += 2;
      [v52 setNeedsLayout];
      --v50;
    }

    while (v50);
  }

  swift_getKeyPath();
  *&v64.a = v2;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, 255, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = &v2[OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v54 = *&v2[v30];
    if (v54)
    {
      v55 = *(v53 + 1);
      ObjectType = swift_getObjectType();
      [v54 frame];
      [v2 convertRect:v20 fromCoordinateSpace:?];
      (*(v55 + 64))(v2, ObjectType, v55);
      return swift_unknownObjectRelease();
    }

LABEL_30:
    __break(1u);
  }

  return result;
}

id specialized CanvasView.updateAfterDidScroll(_:)(void *a1)
{
  v2 = v1;
  v59 = a1;
  v3 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - v7;
  v9 = direct field offset for Canvas.paperView;
  v10 = *&v2[direct field offset for Canvas.paperView];
  v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x3F0);
  swift_beginAccess();
  v12 = *(v6 + 16);
  v12(v8, &v10[v11], v5);
  v60 = v3;
  v61 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Image and conformance Image, 255, type metadata accessor for Image);
  v62 = &protocol witness table for Image;
  swift_getKeyPath();
  v13 = v10;
  Capsule.subscript.getter();

  v14 = *(v6 + 8);
  v14(v8, v5);
  v15 = *&v64.a;
  v16 = *&v64.c;
  v57 = v9;
  v17 = *&v2[v9];
  v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x3F0);
  swift_beginAccess();
  v19 = v17 + v18;
  v20 = v59;
  v12(v8, v19, v5);
  v21 = v58;
  Capsule.root.getter();
  v14(v8, v5);
  v22 = off_1F4F5EE38(v3);
  _s8PaperKit0A0VWOhTm_0(v21, type metadata accessor for Image);
  CGImagePropertyOrientation.transform.getter(v22, &v64);
  v63 = v64;
  v65.origin = v15;
  v65.size = v16;
  v66 = CGRectApplyAffineTransform(v65, &v63);
  width = v66.size.width;
  height = v66.size.height;
  [v20 zoomScale];
  v26 = width * v25;
  v27 = height * v25;
  [v20 contentSize];
  if (vabdd_f64(v26, v29) >= 1.5 || vabdd_f64(v27, v28) >= 1.5)
  {
    [v20 setContentSize_];
  }

  v30 = direct field offset for CanvasView.zoomView;
  result = *&v2[direct field offset for CanvasView.zoomView];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v32 = [result bounds];
  v35 = v57;
  if (vabdd_f64(width, v34) < 1.5 && vabdd_f64(height, v33) < 1.5)
  {
    goto LABEL_12;
  }

  [v20 zoomScale];
  v37 = v36;
  v38 = direct field offset for CanvasView.zoomState;
  v39 = v2[direct field offset for CanvasView.zoomState];
  result = [v20 setZoomScale_];
  v40 = *&v2[v30];
  if (!v40)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v41 = v40;
  [v41 frame];
  [v41 setFrame_];

  v42 = direct field offset for CanvasView.firstLayout;
  if (v2[direct field offset for CanvasView.firstLayout] == 1)
  {
    [v20 frame];
    v37 = fmin(CGRectGetWidth(v67) / width, 1.0);
    v2[v42] = 0;
  }

  v32 = [v20 setZoomScale_];
  v43 = v2[v38];
  v2[v38] = v39;
  if (v43 != v39)
  {
    v44 = *&v2[v35];
    v45 = *((*MEMORY[0x1E69E7D40] & *v44) + 0x3D0);
    v46 = v44;
    v45();
  }

LABEL_12:
  specialized CanvasView.updateContentInsets()(v32);
  v47 = *&v2[v35];
  specialized ContainerCanvasElementView.didScroll(in:)(v2);

  AnyCanvas.overlays.getter();
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = (v48 + 32);
    do
    {
      v51 = *v50;
      v50 += 2;
      [v51 setNeedsLayout];
      --v49;
    }

    while (v49);
  }

  swift_getKeyPath();
  *&v63.a = v2;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, 255, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = &v2[OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v53 = *&v2[v30];
    if (v53)
    {
      v54 = *(v52 + 1);
      ObjectType = swift_getObjectType();
      [v53 frame];
      [v2 convertRect:v20 fromCoordinateSpace:?];
      (*(v54 + 64))(v2, ObjectType, v54);
      return swift_unknownObjectRelease();
    }

LABEL_21:
    __break(1u);
  }

  return result;
}

void specialized Canvas.scheduleFinalizeTask()()
{
  specialized Canvas.scheduleFinalizeTask()(&unk_1F4F558D8, partial apply for specialized closure #1 in Canvas.scheduleFinalizeTask(), &block_descriptor_183);
}

{
  specialized Canvas.scheduleFinalizeTask()(&unk_1F4F55C70, partial apply for specialized closure #1 in Canvas.scheduleFinalizeTask(), &block_descriptor_295);
}

void specialized Canvas.scheduleFinalizeTask()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = direct field offset for Canvas.finalizeTimer;
  [*(v3 + direct field offset for Canvas.finalizeTimer) invalidate];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = a2;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  v12[3] = a3;
  v9 = _Block_copy(v12);

  v10 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:5.0];
  _Block_release(v9);
  v11 = *(v3 + v6);
  *(v3 + v6) = v10;
}

uint64_t one-time initialization function for extensionLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, extensionLogger);
  __swift_project_value_buffer(v0, extensionLogger);
  return Logger.init(subsystem:category:)();
}

uint64_t ExtensionViewController.ProxyWrapper.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id ExtensionViewController.__deallocating_deinit()
{
  if (v0[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueueSuspended] == 1)
  {
    dispatch_resume(*&v0[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue]);
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ExtensionViewController.multipeerConnection.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController____lazy_storage___multipeerConnection;
  if (*(v0 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController____lazy_storage___multipeerConnection))
  {
    v5 = *(v0 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController____lazy_storage___multipeerConnection);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v5 = ExtensionViewController.newMultipeerConnection(model:)(v3);
    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
    *(v0 + v4) = v5;
  }

  return v5;
}

uint64_t ExtensionViewController.newMultipeerConnection(model:)(uint64_t a1)
{
  v2 = v1;
  v20[0] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = type metadata accessor for CRMulticastSyncManagerCatchupBehavior();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v20 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22CRMulticastSyncManagerCy8PaperKit0E0VGMd);
  type metadata accessor for CRContext();
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  MEMORY[0x1DA6CC630](0, &v21);
  outlined destroy of StocksKitCurrencyCache.Provider?(&v21, &_s9Coherence18EncryptionDelegate_pSgMd);
  outlined init with copy of Date?(v20[0], v12, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  (*(v7 + 104))(v9, *MEMORY[0x1E6995390], v6);
  v13 = CRMulticastSyncManager.__allocating_init(_:model:appFormat:identifier:catchup:)();
  *(&v22 + 1) = type metadata accessor for ExtensionViewController();
  v23 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController and conformance ExtensionViewController, v14, type metadata accessor for ExtensionViewController);
  *&v21 = v2;
  v15 = v2;
  CRMulticastSyncManager.setLink(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v21);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v13;
  v18[5] = v17;

  _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in ExtensionViewController.newMultipeerConnection(model:), v18);

  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_sScPSgMd);
  return v13;
}

uint64_t closure #1 in ExtensionViewController.newMultipeerConnection(model:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy9Coherence7CapsuleVy8PaperKit0C0VGGMd);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy9Coherence7CapsuleVy8PaperKit0D0VG_GMd);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.newMultipeerConnection(model:), 0, 0);
}

uint64_t closure #1 in ExtensionViewController.newMultipeerConnection(model:)()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  CRMulticastSyncManager.updates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = closure #1 in ExtensionViewController.newMultipeerConnection(model:);
  v5 = v0[14];
  v6 = v0[10];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.newMultipeerConnection(model:), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[18] = Strong;
    if (Strong)
    {
      type metadata accessor for MainActor();
      v0[19] = static MainActor.shared.getter();
      v8 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.newMultipeerConnection(model:), v8, v7);
    }

    else
    {
      (*(v0[8] + 8))(v0[9], v0[7]);
      v9 = swift_task_alloc();
      v0[17] = v9;
      *v9 = v0;
      v9[1] = closure #1 in ExtensionViewController.newMultipeerConnection(model:);
      v10 = v0[14];
      v11 = v0[10];

      return MEMORY[0x1EEE6D9C8](v11, 0, 0, v10);
    }
  }
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);

  ExtensionViewController.updateCanvasView(paper:)(v2);

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.newMultipeerConnection(model:), 0, 0);
}

{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = closure #1 in ExtensionViewController.newMultipeerConnection(model:);
  v2 = v0[14];
  v3 = v0[10];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExtensionViewController.DecryptionError()
{
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExtensionViewController.DecryptionError()
{
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](0);
  return Hasher._finalize()();
}

Swift::Void __swiftcall ExtensionViewController.accept(_:)(NSXPCConnection a1)
{
  [(objc_class *)a1.super.isa setExportedObject:v1];
  v3 = objc_opt_self();
  v4 = [v3 interfaceWithProtocol_];
  [(objc_class *)a1.super.isa setExportedInterface:v4];

  v5 = [v3 interfaceWithProtocol_];
  [(objc_class *)a1.super.isa setRemoteObjectInterface:v5];

  [(objc_class *)a1.super.isa resume];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static ScrollWheelEventSwizzler.shared;
  [(objc_class *)a1.super.isa auditToken];
  v7 = aBlock;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = *(v6 + 16);

  os_unfair_lock_lock((v11 + 20));
  closure #1 in ScrollWheelEventSwizzler.enableScrollEventForwardingIfNecessary(_:)((v11 + 16), v7, v8, v9, v10);
  os_unfair_lock_unlock((v11 + 20));

  v20 = closure #1 in ExtensionViewController.accept(_:);
  v21 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v19 = &block_descriptor_3;
  v12 = _Block_copy(&aBlock);
  v13 = [(objc_class *)a1.super.isa synchronousRemoteObjectProxyWithErrorHandler:v12];
  _Block_release(v12);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSXPCProxyCreating_8PaperKit15HostXPCProtocolpMd);
  if (swift_dynamicCast())
  {
    v14 = v15;
  }

  else
  {
    v14 = 0;
  }

  *(*(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostProxyWrapper) + 16) = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  dispatch_resume(*(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue));
  swift_unknownObjectRelease();
  *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueueSuspended) = 0;
}

void closure #1 in ExtensionViewController.accept(_:)(void *a1)
{
  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, extensionLogger);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1D38C4000, oslog, v4, "Failed to get host XPC proxy %@", v5, 0xCu);
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_sSo8NSObjectCSgMd);
    MEMORY[0x1DA6D0660](v6, -1, -1);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t ExtensionViewController.openLink(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v18[1] = *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue);
  v13 = *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostProxyWrapper);
  (*(v10 + 16))(v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v10 + 32))(v15 + v14, v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = partial apply for closure #1 in ExtensionViewController.openLink(_:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_203;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1DA6CD890](0, v8, v5, v16);
  _Block_release(v16);
  (*(v21 + 8))(v5, v3);
  (*(v19 + 8))(v8, v20);
}

uint64_t closure #1 in ExtensionViewController.openLink(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    swift_unknownObjectRetain();
    URL._bridgeToObjectiveC()(v2);
    v4 = v3;
    [v1 openLink_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Void __swiftcall ExtensionViewController.reportPaperBounds(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue);
  v13 = *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostProxyWrapper);
  v14 = swift_allocObject();
  *(v14 + 2) = v13;
  v14[3] = x;
  v14[4] = y;
  v14[5] = width;
  v14[6] = height;
  aBlock[4] = partial apply for closure #1 in ExtensionViewController.reportPaperBounds(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_197;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1DA6CD890](0, v12, v9, v15);
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t closure #1 in ExtensionViewController.reportPaperBounds(_:)(uint64_t result, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = *(result + 16);
  if (v5)
  {
    swift_unknownObjectRetain();
    v13.origin.x = a2;
    v13.origin.y = a3;
    v13.size.width = a4;
    v13.size.height = a5;
    v10 = NSStringFromRect(v13);
    if (!v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = MEMORY[0x1DA6CCED0](v11);
    }

    [v5 reportingPaperBounds_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ExtensionViewController.send(_:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue);
  v12 = *(v2 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostProxyWrapper);
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = partial apply for closure #1 in ExtensionViewController.send(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_3;
  v14 = _Block_copy(aBlock);

  outlined copy of Data._Representation(a1, a2);
  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1DA6CD890](0, v11, v8, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t closure #1 in ExtensionViewController.send(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    swift_unknownObjectRetain();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v1 receiveMulticastData_];

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall ExtensionViewController.addCanvasView(_:)(UIView *a1)
{
  v2 = v1;
  [(UIView *)a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v4 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D405B630;
  v7 = [v2 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 centerXAnchor];

  v10 = [(UIView *)a1 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v6 + 32) = v11;
  v12 = [v2 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 centerYAnchor];

  v15 = [(UIView *)a1 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v6 + 40) = v16;
  v17 = [v2 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 widthAnchor];

  v20 = [(UIView *)a1 widthAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v6 + 48) = v21;
  v22 = [v2 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 heightAnchor];

  v26 = [(UIView *)a1 heightAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v6 + 56) = v27;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints_];
}

void ExtensionViewController.loadPaperDrawing(_:paperURL:coherenceContextURL:encrypted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v94 = a2;
  v93 = a1;
  v10 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v88 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v96 = (&v88 - v15);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  *&v18 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView;
  v22 = *&v5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView];
  if (v22)
  {
    [v22 removeFromSuperview];
  }

  v95 = v21;
  v23 = *&v5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView];
  if (v23)
  {
    [v23 removeFromSuperview];
  }

  v24 = [v5 view];
  if (!v24)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v92 = v17;
  v34 = *(v17 + 16);
  v34(v20, a3, v16);
  outlined init with copy of Date?(a4, v96, &_s10Foundation3URLVSgMd);
  v88 = v12;
  if (a5)
  {
    v35 = type metadata accessor for ExtensionViewController();
    v37 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController and conformance ExtensionViewController, v36, type metadata accessor for ExtensionViewController);
    v38 = v6;
    v39 = *&v6;
  }

  else
  {
    v35 = 0;
    v37 = 0;
    v39 = 0.0;
    v98.origin.y = 0.0;
    v98.size.width = 0.0;
  }

  v40 = v6;
  *&v98.size.height = v35;
  v99 = v37;
  v98.origin.x = v39;
  v41 = type metadata accessor for PaperTextAttachmentCanvasView(0);
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasTiledView] = 0;
  *&v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView] = 0;
  *&v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_previousMathDocument] = 0;
  *&v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_contentView] = 0;
  v43 = &v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_encryptionDelegate];
  *(v43 + 32) = 0;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  v44 = &v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_paperIdentifier];
  v45 = v94;
  *v44 = v93;
  *(v44 + 1) = v45;
  v46 = v20;
  v34(&v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_paperURL], v20, v16);
  v47 = v96;
  outlined init with copy of Date?(v96, &v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_coherenceContextURL], &_s10Foundation3URLVSgMd);
  swift_beginAccess();

  outlined assign with copy of EncryptionDelegate?(&v98, v43);
  swift_endAccess();
  v97.receiver = v42;
  v97.super_class = v41;
  v48 = objc_msgSendSuper2(&v97, sel_initWithFrame_, v27, v29, v31, v33);
  PaperTextAttachmentCanvasView.setupViews()();
  outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s10Foundation3URLVSgMd);
  (*(v92 + 8))(v46, v16);
  outlined destroy of StocksKitCurrencyCache.Provider?(&v98, &_s9Coherence18EncryptionDelegate_pSgMd);
  *&v48[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasViewDelegate + 8] = &protocol witness table for ExtensionViewController;
  swift_unknownObjectWeakAssign();
  v50 = *&v40[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger];
  if (v50)
  {
    v51 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController.LiveStreamMessenger and conformance ExtensionViewController.LiveStreamMessenger, v49, type metadata accessor for ExtensionViewController.LiveStreamMessenger);
  }

  else
  {
    v51 = 0;
  }

  v52 = OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView;
  v53 = *&v48[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView];
  if (!v53)
  {
    goto LABEL_27;
  }

  v54 = &v53[direct field offset for Canvas.liveStreamMessenger];
  swift_beginAccess();
  *v54 = v50;
  *(v54 + 1) = v51;
  swift_retain_n();
  v55 = v53;
  swift_unknownObjectRelease();
  specialized Canvas.liveStreamMessenger.didset();

  v56 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v57 = v48;
  v58 = [v56 initWithRed:0.894117647 green:0.68627451 blue:0.0392156863 alpha:1.0];
  [(UIView *)v57 setTintColor:v58];

  ExtensionViewController.addCanvasView(_:)(v57);
  v59 = v95;
  v60 = *&v40[v95];
  *&v40[v95] = v57;
  v61 = v57;

  if ((v40[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_screenPotentialHeadroom + 8] & 1) == 0)
  {
    v62 = *&v40[v59];
    if (v62)
    {
      v63 = *(v62 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView);
      if (!v63)
      {
LABEL_29:
        __break(1u);
        return;
      }

      v64 = *&v40[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_screenPotentialHeadroom];
      v65 = *&v63[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride];
      if (v65 == v64)
      {
        *&v63[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride] = v64;
        v66 = v63;
        AnyCanvas._potentialHeadroomOverride.didset(v65);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v96 = &v88;
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v88 - 2) = v63;
        *(&v88 - 1) = v64;
        *&v98.origin.x = v63;
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, 255, type metadata accessor for AnyCanvas);
        v68 = v63;
        v59 = v95;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  v69 = [objc_opt_self() defaultCenter];
  v70 = MEMORY[0x1DA6CCED0](0xD00000000000002BLL, 0x80000001D4082DA0);
  [v69 addObserver:v40 selector:sel_handleLink_ name:v70 object:0];

  v71 = *&v40[v59];
  if (v71)
  {
    v72 = *&v40[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperHorizontalSpacing];
    v73 = *&v40[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperVerticalSpacing];
    v74 = *&v40[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperHorizontalInset];
    v75 = v71;
    PaperTextAttachmentCanvasView.setLinedPaper(horizontalLineSpacing:verticalLineSpacing:horizontalInset:)(v72, v73, v74);
  }

  v76 = *&v48[v52];
  if (!v76)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v77 = *&v76[direct field offset for Canvas.paperView];
  v78 = *((*MEMORY[0x1E69E7D40] & *v77) + 0x3F0);
  swift_beginAccess();
  v79 = v90;
  v80 = v89;
  v81 = v91;
  (*(v90 + 16))(v89, &v77[v78], v91);
  v82 = v76;
  v83 = v88;
  Capsule.root.getter();
  (*(v79 + 8))(v80, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();

  _s8PaperKit0A0VWOhTm_0(v83, type metadata accessor for Paper);
  x = v98.origin.x;
  y = v98.origin.y;
  width = v98.size.width;
  height = v98.size.height;
  if (!CGRectIsEmpty(v98))
  {
    v100.origin.x = x;
    v100.origin.y = y;
    v100.size.width = width;
    v100.size.height = height;
    if (!CGRectIsInfinite(v100))
    {
      v101.origin.x = x;
      v101.origin.y = y;
      v101.size.width = width;
      v101.size.height = height;
      ExtensionViewController.reportPaperBounds(_:)(v101);
    }
  }
}

void ExtensionViewController.loadPaperDocument(from:coherenceContextURL:encrypted:layout:)(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for URL();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a4;
  (*(v18 + 16))(v16, a1, v14);
  outlined init with copy of Date?(a2, v12, &_s10Foundation3URLVSgMd);
  if (a3)
  {
    v19 = type metadata accessor for ExtensionViewController();
    v21 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController and conformance ExtensionViewController, v20, type metadata accessor for ExtensionViewController);
    v22 = v5;
    v23 = v5;
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v23 = 0;
    v42[1] = 0;
    v42[2] = 0;
  }

  v42[3] = v19;
  v42[4] = v21;
  v42[0] = v23;
  v41 = v17;
  v24 = objc_allocWithZone(type metadata accessor for PaperKitExtensionDocumentViewController());
  PaperKitExtensionDocumentViewController.init(paperDocumentURL:coherenceContextURL:encryptionDelegate:layout:)(v16, v12, v42, &v41);
  v26 = v25;
  *&v25[OBJC_IVAR____TtC8PaperKit39PaperKitExtensionDocumentViewController_delegate + 8] = &protocol witness table for ExtensionViewController;
  swift_unknownObjectWeakAssign();
  if (*&v5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger])
  {
    v28 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController.LiveStreamMessenger and conformance ExtensionViewController.LiveStreamMessenger, v27, type metadata accessor for ExtensionViewController.LiveStreamMessenger);
  }

  else
  {
    v28 = 0;
  }

  PaperKitExtensionDocumentViewController.liveStreamMessenger.setter(v29, v28);
  v30 = &v26[OBJC_IVAR____TtC8PaperKit39PaperKitExtensionDocumentViewController_extensionHostSafeAreaInsets];
  v31 = *&v5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_extensionHostSafeAreaInsets];
  v39 = *&v5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_extensionHostSafeAreaInsets + 16];
  v40 = v31;
  swift_beginAccess();
  v32 = v39;
  *v30 = v40;
  *(v30 + 1) = v32;
  v33 = v26;
  v34 = [v33 view];
  if (v34)
  {
    v35 = v34;
    [v34 setNeedsLayout];

    [v5 addChildViewController_];
    v36 = [v33 view];

    if (v36)
    {
      ExtensionViewController.addCanvasView(_:)(v36);

      v37 = *&v5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperDocumentViewController];
      *&v5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperDocumentViewController] = v33;
      v38 = v33;

      [v38 didMoveToParentViewController_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void ExtensionViewController.updateCanvasView(paper:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v142 = &v130 - v5;
  v6 = type metadata accessor for CRKeyPath();
  v143 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v130 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v136 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v145 = &v130 - v13;
  type metadata accessor for CRContext();
  v147 = 0;
  memset(v146, 0, sizeof(v146));
  v14 = MEMORY[0x1DA6CC630](0, v146);
  outlined destroy of StocksKitCurrencyCache.Provider?(v146, &_s9Coherence18EncryptionDelegate_pSgMd);
  v15 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView;
  v16 = *&v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView];
  v135 = v14;
  v144 = v12;
  if (v16)
  {
    v132 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView;
    v131 = direct field offset for Canvas.paperView;
    v17 = *&v16[direct field offset for Canvas.paperView];
    v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x3F0);
    swift_beginAccess();
    v19 = v136;
    v20 = *(v136 + 16);
    v21 = v17 + v18;
    v22 = v145;
    v141 = v136 + 16;
    v140 = v20;
    v20(v145, v21, v12);
    v133 = v16;
    Capsule.rootID.getter();
    v23 = *(v19 + 8);
    v139 = v19 + 8;
    v138 = v23;
    v23(v22, v12);
    Capsule.rootID.getter();
    v24 = CRKeyPath.rawValue.getter();
    v26 = v25;
    v27 = CRKeyPath.rawValue.getter();
    v28 = v6;
    v30 = v29;
    v31 = specialized static Data.== infix(_:_:)(v24, v26, v27, v29);
    v134 = a1;
    v32 = v31;
    outlined consume of Data._Representation(v27, v30);
    outlined consume of Data._Representation(v24, v26);
    v33 = *(v143 + 8);
    v33(v8, v28);
    v33(v11, v28);
    if (v32)
    {
      v130 = v2;
      v137 = v16;
      v34 = v131;
      v35 = *&v16[v131];
      v36 = MEMORY[0x1E69E7D40];
      swift_beginAccess();
      type metadata accessor for Paper(0);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper);
      v37 = v35;
      Capsule.merge<A>(_:)();
      swift_endAccess();

      v38 = v133;
      specialized Canvas.mergeToCanvasElements()();
      v39 = direct field offset for Canvas.subscriptions;
      swift_beginAccess();
      v40 = *&v38[v39];
      v41 = v34;
      if (v40 >> 62)
      {
        v42 = __CocoaSet.count.getter();
      }

      else
      {
        v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v43 = v130;
      v44 = v144;
      if (v42)
      {
        if (v42 < 1)
        {
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v143 = v40 & 0xC000000000000001;

        for (i = 0; i != v42; ++i)
        {
          if (v143)
          {
            v57 = MEMORY[0x1DA6CE0C0](i, v40);
          }

          else
          {
            v57 = *(v40 + 8 * i + 32);
          }

          v58 = AnyCanvas.isLiveEditing()();
          v59 = *v57;
          if (!v58 || (*(v57 + *(v59 + 136)) & 1) != 0)
          {
            v46 = v142;
            outlined init with copy of Date?(v57 + *(v59 + 120), v142, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMd);
            v47 = *&v137[v41];
            v48 = *v36 & *v47;
            v49 = v41;
            v50 = *(v48 + 1008);
            swift_beginAccess();
            v51 = v47 + v50;
            v52 = v145;
            v53 = v38;
            v54 = v144;
            v140(v145, v51, v144);
            dispatch thunk of AnySubscriberBase.receive(_:)();

            v55 = v52;
            v41 = v49;
            v36 = MEMORY[0x1E69E7D40];
            v56 = v54;
            v38 = v53;
            v138(v55, v56);
            outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMd);
          }

          else
          {
          }
        }

        v43 = v130;
        v44 = v144;
      }

      if (*&v38[direct field offset for Canvas.multipeerConnection])
      {
        v61 = *&v137[v41];
        v62 = *((*v36 & *v61) + 0x3F0);
        swift_beginAccess();
        v63 = v61 + v62;
        v64 = v145;
        v140(v145, v63, v44);

        CRMulticastSyncManager.sync(_:sendDelta:)();

        v138(v64, v44);
      }

      specialized Canvas.scheduleFinalizeTask()(&unk_1F4F558D8, partial apply for specialized closure #1 in Canvas.scheduleFinalizeTask(), &block_descriptor_183);
      v65 = *&v38[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
      v15 = v132;
      a1 = v134;
      if (!v65)
      {
        goto LABEL_50;
      }

      v2 = v43;
      v66 = *(v65 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
      if (v66)
      {
        *(v66 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
      }
    }

    else
    {
      v60 = v133;
      [v133 removeFromSuperview];

      v15 = v132;
      v38 = *&v2[v132];
      *&v2[v132] = 0;
      a1 = v134;
    }

    v14 = v135;
    if (*&v2[v15])
    {
LABEL_41:

      return;
    }
  }

  v67 = *&v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView];
  if (v67)
  {
    [v67 removeFromSuperview];
  }

  v68 = [v2 view];
  if (!v68)
  {
    goto LABEL_44;
  }

  v69 = v68;
  [v68 bounds];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;

  v78 = v145;
  (*(v136 + 16))(v145, a1, v144);
  LODWORD(v69) = v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_transparentBackground];
  v79 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10CanvasViewCyAA0A0VGMd));
  specialized CanvasView.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(v14, v78, 3, 1, v69, 0, v71, v73, v75, v77);
  v81 = v80;
  v82 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController_tool;
  swift_beginAccess();
  outlined init with copy of FindResult(&v2[v82], v146);
  v83 = v81;
  specialized Canvas.tool.setter(v146);
  v84 = v83;
  [v84 setTranslatesAutoresizingMaskIntoConstraints_];
  v85 = v84;
  v86 = v2;
  AnyCanvas.viewControllerForPresentingUI.setter(v2);

  v87 = [v86 view];
  if (!v87)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v88 = v87;
  [v87 addSubview_];

  v89 = *&v2[v15];
  *&v2[v15] = v85;
  v90 = v85;

  if ((v86[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_screenPotentialHeadroom + 8] & 1) == 0)
  {
    v91 = *&v2[v15];
    if (v91)
    {
      v92 = *&v86[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_screenPotentialHeadroom];
      v93 = *&v91[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride];
      if (v93 == v92)
      {
        *&v91[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride] = v92;
        v94 = v91;
        AnyCanvas._potentialHeadroomOverride.didset(v93);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v130 - 2) = v91;
        *(&v130 - 1) = v92;
        *&v146[0] = v91;
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, 255, type metadata accessor for AnyCanvas);
        v96 = v91;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  v97 = v86[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_canvasContentMode];
  v98 = direct field offset for CanvasView.canvasContentMode;
  swift_beginAccess();
  v90[v98] = v97;
  [v90 setNeedsLayout];
  v100 = *&v86[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger];
  if (v100)
  {
    v101 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController.LiveStreamMessenger and conformance ExtensionViewController.LiveStreamMessenger, v99, type metadata accessor for ExtensionViewController.LiveStreamMessenger);
  }

  else
  {
    v101 = 0;
  }

  v102 = &v90[direct field offset for Canvas.liveStreamMessenger];
  swift_beginAccess();
  *v102 = v100;
  v102[1] = v101;
  swift_retain_n();
  swift_unknownObjectRelease();
  specialized Canvas.liveStreamMessenger.didset();

  v103 = ExtensionViewController.multipeerConnection.getter();
  v104 = direct field offset for Canvas.xpcMulticast;
  swift_beginAccess();
  *&v90[v104] = v103;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1D405B630;
  v106 = [v86 view];
  if (!v106)
  {
    goto LABEL_46;
  }

  v107 = v106;
  v108 = [v106 centerXAnchor];

  v109 = [v90 centerXAnchor];
  v110 = [v108 constraintEqualToAnchor_];

  *(v105 + 32) = v110;
  v111 = [v86 view];
  if (!v111)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v112 = v111;
  v113 = [v111 centerYAnchor];

  v114 = [v90 centerYAnchor];
  v115 = [v113 constraintEqualToAnchor_];

  *(v105 + 40) = v115;
  v116 = [v86 view];
  if (v116)
  {
    v117 = v116;
    v118 = [v116 widthAnchor];

    v119 = [v90 widthAnchor];
    v120 = [v118 constraintEqualToAnchor_];

    *(v105 + 48) = v120;
    v121 = [v86 view];
    if (v121)
    {
      v122 = v121;
      v123 = objc_opt_self();
      v124 = [v122 heightAnchor];

      v125 = [v90 heightAnchor];
      v126 = [v124 constraintEqualToAnchor_];

      *(v105 + 56) = v126;
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v123 activateConstraints_];

      v128 = [objc_opt_self() defaultCenter];
      v129 = MEMORY[0x1DA6CCED0](0xD00000000000002BLL, 0x80000001D4082DA0);
      [v128 addObserver:v86 selector:sel_handleLink_ name:v129 object:0];

      v14 = v135;
      goto LABEL_41;
    }

    goto LABEL_49;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v36 = a6;
  v35 = a5;
  v32 = a4;
  v34 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v30 = &v27 - v9;
  v11 = type metadata accessor for URL();
  v28 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - v15;
  v31 = &v27 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
  outlined init with copy of Date?(v32, v10, &_s10Foundation3URLVSgMd);
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v21 = v20 + v13;
  v22 = ((v21 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v33 + 80) + v22 + 8) & ~*(v33 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  *(v24 + 2) = v19;
  *(v24 + 3) = v25;
  *(v24 + 4) = v34;
  *(v24 + 5) = a2;
  (*(v12 + 32))(&v24[v20], v29, v28);
  v24[v21] = v35;
  *&v24[(v21 & 0xFFFFFFFFFFFFFFF8) + 8] = v36;
  *&v24[v22] = v18;
  outlined init with take of URL?(v30, &v24[v23]);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v31, &closure #1 in ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:)partial apply, v24);
}

uint64_t closure #1 in ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 128) = v14;
  *(v8 + 136) = v15;
  *(v8 + 176) = a7;
  *(v8 + 112) = a6;
  *(v8 + 120) = a8;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  v9 = type metadata accessor for URL();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 168) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:), v11, v10);
}

uint64_t closure #1 in ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:)()
{
  v36 = v0;
  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 112);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, extensionLogger);
  (*(v2 + 16))(v1, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 144);
  if (v8)
  {
    v32 = *(v0 + 120);
    v31 = *(v0 + 176);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136315907;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v35);
    *(v14 + 12) = 2081;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x1E6968FB0]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v10 + 8))(v9, v11);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v35);

    *(v14 + 14) = v19;
    *(v14 + 22) = 1024;
    *(v14 + 24) = v31;
    *(v14 + 28) = 2048;
    *(v14 + 30) = v32;
    _os_log_impl(&dword_1D38C4000, v6, v7, "loadPaper id:%s, url:%{private}s, encrypted:%{BOOL}d state:%ld", v14, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v15, -1, -1);
    MEMORY[0x1DA6D0660](v14, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = *(v0 + 120);
  switch(v20)
  {
    case 2:

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_17;
      }

      v22 = Strong;
      v24 = *(v0 + 136);
      v25 = *(v0 + 176);
      v26 = *(v0 + 112);
      v33 = 1;
      v27 = &v33;
      goto LABEL_15;
    case 1:

      swift_beginAccess();
      v23 = swift_unknownObjectWeakLoadStrong();
      if (!v23)
      {
        goto LABEL_17;
      }

      v22 = v23;
      v24 = *(v0 + 136);
      v25 = *(v0 + 176);
      v26 = *(v0 + 112);
      v34 = 0;
      v27 = &v34;
LABEL_15:
      ExtensionViewController.loadPaperDocument(from:coherenceContextURL:encrypted:layout:)(v26, v24, v25, v27);
      goto LABEL_16;
    case 0:

      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v22 = v21;
        ExtensionViewController.loadPaperDrawing(_:paperURL:coherenceContextURL:encrypted:)(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 136), *(v0 + 176));
LABEL_16:
      }

LABEL_17:

      v29 = *(v0 + 8);

      return v29();
  }

  *(v0 + 88) = v20;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

uint64_t ExtensionViewController.loadPaper(_:paperBookmark:coherenceContextBookmark:encrypted:userInterfaceState:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unint64_t a6, int a7, uint64_t a8)
{
  v62 = a8;
  v61 = a7;
  v64 = a6;
  v57 = a5;
  v66 = a4;
  v59 = a2;
  v60 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = &v52 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v52 - v25;
  v67 = 0;
  v27 = v21[7];
  v27(v16, 1, 1, v20, v24);
  URL.init(resolvingBookmarkData:options:relativeTo:bookmarkDataIsStale:)();
  v55 = v13;
  outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s10Foundation3URLVSgMd);
  (v27)(v19, 0, 1, v20);
  v28 = v21[4];
  v66 = v26;
  v53 = v28;
  v54 = v21 + 4;
  v28(v26, v19, v20);
  v58 = swift_allocBox();
  v30 = v29;
  (v27)(v29, 1, 1, v20);
  v31 = v65;
  v32 = v21;
  v33 = v63;
  if (v64 >> 60 != 15)
  {
    v34 = v56;
    v52 = v27;
    (v27)(v56, 1, 1, v20);
    v35 = v57;
    outlined copy of Data._Representation(v57, v64);
    URL.init(resolvingBookmarkData:options:relativeTo:bookmarkDataIsStale:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s10Foundation3URLVSgMd);
    outlined consume of Data?(v35, v64);
    v36 = v55;
    (v52)(v55, 0, 1, v20);
    outlined assign with take of URL?(v36, v30);
    v31 = v65;
  }

  v37 = type metadata accessor for TaskPriority();
  (*(*(v37 - 8) + 56))(v31, 1, 1, v37);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (v32[2])(v33, v66, v20);
  type metadata accessor for MainActor();

  v39 = v59;

  v40 = v58;

  v41 = static MainActor.shared.getter();
  v42 = v32;
  v43 = (*(v32 + 80) + 56) & ~*(v32 + 80);
  v44 = (v43 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v43 + v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = v20;
  v47 = swift_allocObject();
  v48 = MEMORY[0x1E69E85E0];
  *(v47 + 2) = v41;
  *(v47 + 3) = v48;
  v49 = v60;
  *(v47 + 4) = v38;
  *(v47 + 5) = v49;
  *(v47 + 6) = v39;
  v53(&v47[v43], v63, v46);
  v50 = &v47[v44];
  *v50 = v40;
  v50[8] = v61 & 1;
  *&v47[v45] = v62;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v65, &async function pointer to partial apply for closure #1 in ExtensionViewController.loadPaper(_:paperBookmark:coherenceContextBookmark:encrypted:userInterfaceState:), v47);

  (v42[1])(v66, v46);
}

uint64_t closure #1 in ExtensionViewController.loadPaper(_:paperBookmark:coherenceContextBookmark:encrypted:userInterfaceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 88) = a7;
  *(v7 + 96) = v16;
  *(v7 + 200) = v15;
  *(v7 + 72) = a5;
  *(v7 + 80) = a6;
  *(v7 + 64) = a4;
  v8 = type metadata accessor for URL();
  *(v7 + 104) = v8;
  v9 = *(v8 - 8);
  *(v7 + 112) = v9;
  *(v7 + 120) = *(v9 + 64);
  *(v7 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v7 + 136) = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  *(v7 + 144) = v10;
  *(v7 + 152) = *(v10 + 64);
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_projectBox();
  *(v7 + 184) = type metadata accessor for MainActor();
  *(v7 + 192) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.loadPaper(_:paperBookmark:coherenceContextBookmark:encrypted:userInterfaceState:), v12, v11);
}

uint64_t closure #1 in ExtensionViewController.loadPaper(_:paperBookmark:coherenceContextBookmark:encrypted:userInterfaceState:)()
{

  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, extensionLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D38C4000, v2, v3, "loadPaper bookmark", v4, 2u);
    MEMORY[0x1DA6D0660](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(v0 + 176);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v29 = v9;
    v32 = *(v0 + 144);
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    v34 = v11;
    v12 = *(v0 + 112);
    v31 = *(v0 + 120);
    v13 = *(v0 + 104);
    v27 = v10;
    v36 = *(v0 + 200);
    v37 = *(v0 + 96);
    v28 = *(v0 + 88);
    v26 = *(v0 + 80);
    v35 = *(v0 + 72);
    swift_beginAccess();
    v30 = v8;
    outlined init with copy of Date?(v7, v8, &_s10Foundation3URLVSgMd);
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v12 + 16))(v10, v28, v13);
    outlined init with copy of Date?(v8, v9, &_s10Foundation3URLVSgMd);

    v16 = static MainActor.shared.getter();
    v17 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v18 = (v17 + v31) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
    v20 = *(v32 + 80);
    v33 = v6;
    v21 = (v20 + v19 + 8) & ~v20;
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    *(v22 + 2) = v16;
    *(v22 + 3) = v23;
    *(v22 + 4) = v35;
    *(v22 + 5) = v26;
    (*(v12 + 32))(&v22[v17], v27, v13);
    v22[v17 + v31] = v36;
    *&v22[v18 + 8] = v37;
    *&v22[v19] = v15;
    outlined init with take of URL?(v29, &v22[v21]);

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v34, &async function pointer to partial apply for closure #1 in ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:), v22);

    outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s10Foundation3URLVSgMd);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t ExtensionViewController.loadBookmark(_:readOnly:)(uint64_t a1, uint64_t a2, int a3)
{
  v30 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v32 = 0;
  v18 = *(v12 + 56);
  v18(v7, 1, 1, v11, v15);
  URL.init(resolvingBookmarkData:options:relativeTo:bookmarkDataIsStale:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s10Foundation3URLVSgMd);
  (v18)(v10, 0, 1, v11);
  v28 = *(v12 + 32);
  v28(v17, v10, v11);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v31, 1, 1, v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = v29;
  (*(v12 + 16))(v29, v17, v11);
  type metadata accessor for MainActor();

  v22 = static MainActor.shared.getter();
  v23 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  *(v24 + 2) = v22;
  *(v24 + 3) = v25;
  *(v24 + 4) = v20;
  v28(&v24[v23], v21, v11);
  v24[v23 + v13] = v30 & 1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v31, &async function pointer to partial apply for closure #1 in ExtensionViewController.loadBookmark(_:readOnly:), v24);

  return (*(v12 + 8))(v17, v11);
}

uint64_t closure #1 in ExtensionViewController.loadBookmark(_:readOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 64) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  type metadata accessor for MainActor();
  *(v6 + 56) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.loadBookmark(_:readOnly:), v8, v7);
}

UIView *closure #1 in ExtensionViewController.loadBookmark(_:readOnly:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    type metadata accessor for PaperViewController();
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    result = [v3 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = *(v0 + 64);
    v7 = *(v0 + 48);

    ExtensionViewController.addCanvasView(_:)(v5);

    v8 = *&v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperViewController];
    *&v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperViewController] = v3;
    v9 = v3;

    PaperViewController.display(_:readOnly:)(v7, v6);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t closure #1 in ExtensionViewController.receiveMulticastData(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.receiveMulticastData(_:), v8, v7);
}

uint64_t closure #1 in ExtensionViewController.receiveMulticastData(_:)()
{

  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, extensionLogger);
  outlined copy of Data._Representation(v1, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    result = swift_slowAlloc();
    *result = 134217984;
    v9 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v9 != 2)
      {
        v10 = 0;
        goto LABEL_15;
      }

      v11 = *(*(v0 + 16) + 16);
      v12 = *(*(v0 + 16) + 24);
      v13 = __OFSUB__(v12, v11);
      v10 = v12 - v11;
      if (!v13)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v9)
    {
      v10 = *(v0 + 30);
LABEL_15:
      v18 = *(v0 + 16);
      v17 = *(v0 + 24);
      *(result + 4) = v10;
      v19 = result;
      outlined consume of Data._Representation(v18, v17);
      _os_log_impl(&dword_1D38C4000, v4, v5, "receiveMulticastData %ld", v19, 0xCu);
      MEMORY[0x1DA6D0660](v19, -1, -1);
      goto LABEL_16;
    }

    v14 = *(v0 + 16);
    v15 = *(v0 + 20);
    v13 = __OFSUB__(v15, v14);
    v16 = v15 - v14;
    if (v13)
    {
      __break(1u);
      return result;
    }

    v10 = v16;
    goto LABEL_15;
  }

  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
LABEL_16:

  ExtensionViewController.multipeerConnection.getter();
  CRMulticastSyncManager.receive(_:)();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t closure #1 in ExtensionViewController.receiveLiveStreamData(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy10Foundation4DataV__GMd);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy10Foundation4DataV_GMd);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[13] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.receiveLiveStreamData(_:), v10, v9);
}

uint64_t closure #1 in ExtensionViewController.receiveLiveStreamData(_:)()
{

  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, extensionLogger);
  outlined copy of Data._Representation(v1, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (!v6)
  {
    outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
    goto LABEL_16;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v11 = *(*(v0 + 32) + 16);
    v12 = *(*(v0 + 32) + 24);
    v13 = __OFSUB__(v12, v11);
    v10 = v12 - v11;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v14 = *(v0 + 32);
    v15 = *(v0 + 36);
    v13 = __OFSUB__(v15, v14);
    v16 = v15 - v14;
    if (v13)
    {
      __break(1u);
      return result;
    }

    v10 = v16;
    goto LABEL_15;
  }

  if (v9)
  {
    goto LABEL_12;
  }

  v10 = *(v0 + 46);
LABEL_15:
  v18 = *(v0 + 32);
  v17 = *(v0 + 40);
  *(result + 4) = v10;
  v19 = result;
  outlined consume of Data._Representation(v18, v17);
  _os_log_impl(&dword_1D38C4000, v4, v5, "receiveLiveStreamData %ld", v19, 0xCu);
  MEMORY[0x1DA6D0660](v19, -1, -1);
LABEL_16:
  v20 = *(v0 + 48);

  v21 = *(v20 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger);
  if (v21)
  {
    v22 = *(v21 + 24);
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = *(v0 + 88);
      v36 = *(v24 + 16);
      v25 = v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
      v34 = (*(v0 + 64) + 8);
      v35 = *(v24 + 72);
      v26 = (v24 + 8);

      do
      {
        v27 = *(v0 + 96);
        v29 = *(v0 + 72);
        v28 = *(v0 + 80);
        v30 = *(v0 + 56);
        v32 = *(v0 + 32);
        v31 = *(v0 + 40);
        v36(v27, v25, v28);
        *(v0 + 16) = v32;
        *(v0 + 24) = v31;
        outlined copy of Data._Representation(v32, v31);
        AsyncStream.Continuation.yield(_:)();
        (*v34)(v29, v30);
        (*v26)(v27, v28);
        v25 += v35;
        --v23;
      }

      while (v23);
    }
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t @objc ExtensionViewController.receiveMulticastData(_:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = a3;
  v12 = a1;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  type metadata accessor for MainActor();
  v17 = v12;
  outlined copy of Data._Representation(v13, v15);
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v13;
  v19[5] = v15;
  v19[6] = v17;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a5, v19);

  outlined consume of Data._Representation(v13, v15);
}

uint64_t closure #1 in ExtensionViewController.setupWithData(_:transparentBackground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 80) = a5;
  *(v7 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  *(v7 + 40) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 72) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setupWithData(_:transparentBackground:), v10, v9);
}

id closure #1 in ExtensionViewController.setupWithData(_:transparentBackground:)()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  *(*(v0 + 16) + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_transparentBackground) = *(v0 + 80);
  outlined copy of Data._Representation(v2, v1);
  type metadata accessor for Paper(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper);
  Capsule.init(serializedData:allowedAppFormats:fileSignature:)();
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);
  (*(v4 + 16))(v5, v3, v6);
  (*(v4 + 56))(v5, 0, 1, v6);
  v8 = ExtensionViewController.newMultipeerConnection(model:)(v5);
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  *&v7[OBJC_IVAR____TtC8PaperKit23ExtensionViewController____lazy_storage___multipeerConnection] = v8;

  ExtensionViewController.updateCanvasView(paper:)(v3);
  result = [v7 view];
  if (result)
  {
    v10 = result;
    v11 = *(v0 + 80);

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = [objc_opt_self() whiteColor];
    }

    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);
    [v10 setBackgroundColor_];

    (*(v14 + 8))(v13, v15);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ExtensionViewController.setTool(_:)(NSDictionary a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - v3;
  *&v19[0] = 0x696669746E656469;
  *(&v19[0] + 1) = 0xEA00000000007265;
  v5 = [(objc_class *)a1.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v17, v19);
    swift_dynamicCast();
    v6 = MEMORY[0x1DA6CCED0](v16[0], v16[1]);

    *&v17 = 0x69747265706F7270;
    *(&v17 + 1) = 0xEA00000000007365;
    v7 = [(objc_class *)a1.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19[0] = v17;
    v19[1] = v18;
    if (*(&v18 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd);
      if (swift_dynamicCast())
      {
        v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_10:
        v9 = [objc_opt_self() inkWithIdentifier:v6 properties:v8.super.isa];

        v10 = type metadata accessor for TaskPriority();
        (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();
        v12 = v9;

        v13 = static MainActor.shared.getter();
        v14 = swift_allocObject();
        v15 = MEMORY[0x1E69E85E0];
        v14[2] = v13;
        v14[3] = v15;
        v14[4] = v12;
        v14[5] = v11;

        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in ExtensionViewController.setTool(_:), v14);

        return;
      }
    }

    else
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_sypSgMd);
    }

    v8.super.isa = 0;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t closure #1 in ExtensionViewController.setTool(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v6 = type metadata accessor for PKInk();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[31] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setTool(_:), v8, v7);
}

uint64_t closure #1 in ExtensionViewController.setTool(_:)()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);

  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();
  PKInk.tool.getter((v0 + 16));
  (*(v3 + 8))(v1, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    outlined init with copy of FindResult(v0 + 16, v0 + 56);
    v6 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController_tool;
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0(v5 + v6);
    outlined init with take of PaperKitHashable((v0 + 56), v5 + v6);
    swift_endAccess();
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView);
    v9 = v7;
    v10 = v8;

    if (v8)
    {
      outlined init with copy of FindResult(v0 + 16, v0 + 96);
      specialized Canvas.tool.setter((v0 + 96));
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #1 in ExtensionViewController.setLinedPaper(horizontalLineSpacing:verticalLineSpacing:horizontalInset:)(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  *(v7 + 48) = a1;
  *(v7 + 40) = a7;
  type metadata accessor for MainActor();
  *(v7 + 72) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setLinedPaper(horizontalLineSpacing:verticalLineSpacing:horizontalInset:), v9, v8);
}

uint64_t closure #1 in ExtensionViewController.setLinedPaper(horizontalLineSpacing:verticalLineSpacing:horizontalInset:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = *(v0 + 7);
    v3 = *(v0 + 8);
    *(Strong + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperHorizontalSpacing) = v0[6];
    *(Strong + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperVerticalSpacing) = v4;
    *(Strong + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperHorizontalInset) = v3;
    v5 = *(Strong + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView);
    if (v5)
    {
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      v9 = v5;
      PaperTextAttachmentCanvasView.setLinedPaper(horizontalLineSpacing:verticalLineSpacing:horizontalInset:)(v8, v7, v6);
    }
  }

  v10 = *(v0 + 1);

  return v10();
}

uint64_t closure #1 in ExtensionViewController.setHasLiveStreamMessenger(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 64) = a5;
  *(v5 + 80) = a4;
  type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setHasLiveStreamMessenger(_:), v7, v6);
}

void closure #1 in ExtensionViewController.setHasLiveStreamMessenger(_:)()
{

  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, extensionLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D38C4000, v2, v3, "setHasLiveStreamMessenger %{BOOL}d", v5, 8u);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v6 = *(v0 + 80);

  if (v6 == 1)
  {
    type metadata accessor for ExtensionViewController.LiveStreamMessenger();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v7 + 24) = MEMORY[0x1E69E7CC0];
    swift_unknownObjectWeakAssign();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 64);
  *(v8 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger) = v7;

  v10 = *(v8 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView);
  if (v10)
  {
    v11 = *(*(v0 + 64) + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger);
    if (v11)
    {
      v12 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController.LiveStreamMessenger and conformance ExtensionViewController.LiveStreamMessenger, v9, type metadata accessor for ExtensionViewController.LiveStreamMessenger);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v10[direct field offset for Canvas.liveStreamMessenger];
    swift_beginAccess();
    *v13 = v11;
    *(v13 + 1) = v12;
    swift_retain_n();
    v14 = v10;
    swift_unknownObjectRelease();
    specialized Canvas.liveStreamMessenger.didset();
  }

  v15 = *(v0 + 64);
  v16 = *(v15 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView);
  if (v16)
  {
    v17 = *(v15 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger);
    if (v17)
    {
      v18 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController.LiveStreamMessenger and conformance ExtensionViewController.LiveStreamMessenger, v9, type metadata accessor for ExtensionViewController.LiveStreamMessenger);
    }

    else
    {
      v18 = 0;
    }

    v19 = *&v16[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = &v19[direct field offset for Canvas.liveStreamMessenger];
    swift_beginAccess();
    *v20 = v17;
    *(v20 + 1) = v18;
    swift_retain_n();
    v21 = v16;
    v22 = v19;
    swift_unknownObjectRelease();
    specialized Canvas.liveStreamMessenger.didset();

    v15 = *(v0 + 64);
  }

  v23 = *(v15 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperDocumentViewController);
  if (v23)
  {
    v24 = *(v15 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger);
    if (v24)
    {
      v25 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController.LiveStreamMessenger and conformance ExtensionViewController.LiveStreamMessenger, v9, type metadata accessor for ExtensionViewController.LiveStreamMessenger);
    }

    else
    {
      v25 = 0;
    }

    v26 = v23;
    PaperKitExtensionDocumentViewController.liveStreamMessenger.setter(v24, v25);
  }

  v27 = *(v0 + 8);

  v27();
}

uint64_t closure #1 in ExtensionViewController.setCanvasContentMode(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setCanvasContentMode(_:), v7, v6);
}

uint64_t closure #1 in ExtensionViewController.setCanvasContentMode(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 72);
    if (v2)
    {
      if (v2 != 1)
      {
LABEL_8:

        goto LABEL_9;
      }

      v3 = 1;
    }

    else
    {
      v3 = 0;
    }

    Strong[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_canvasContentMode] = v3;
    v4 = *&Strong[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView];
    if (v4)
    {
      v5 = direct field offset for CanvasView.canvasContentMode;
      v6 = Strong;
      swift_beginAccess();
      v4[v5] = v3;
      [v4 setNeedsLayout];
      Strong = v6;
    }

    goto LABEL_8;
  }

LABEL_9:
  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in ExtensionViewController.setUserInterfaceStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setUserInterfaceStyle(_:), v7, v6);
}

uint64_t closure #1 in ExtensionViewController.setUserInterfaceStyle(_:)()
{
  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, extensionLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D38C4000, v2, v3, "setUserInterfaceStyle %ld", v5, 0xCu);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_14:
    v9 = v0[1];

    return v9();
  }

  v7 = Strong;
  v8 = v0[6];
  switch(v8)
  {
    case -1:

      [v7 setOverrideUserInterfaceStyle_];
      goto LABEL_13;
    case 0:

      [v7 setOverrideUserInterfaceStyle_];
      goto LABEL_13;
    case 1:

      [v7 setOverrideUserInterfaceStyle_];
LABEL_13:

      goto LABEL_14;
  }

  v0[5] = v8;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}