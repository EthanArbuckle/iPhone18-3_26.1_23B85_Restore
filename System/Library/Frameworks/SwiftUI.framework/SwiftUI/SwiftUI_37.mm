uint64_t PlatformListViewBase<>.hostSizeThatFits(width:)(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 56))();
  if (result)
  {
    v3 = result;
    _ProposedSize.init(width:height:)();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    type metadata accessor for ModifiedContent();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getWitnessTable();
    type metadata accessor for _UIHostingView();
    swift_getWitnessTable();
    ViewRendererHost.sizeThatFits(_:)();
    _UIHostingView.viewGraph.getter();
    GraphHost.environment.getter();

    EnvironmentValues.pixelLength.getter();
  }

  return result;
}

uint64_t static InlinePickerStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for ResolvedPicker();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<SectionPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<WheelPickerStyle>, &type metadata for WheelPickerStyle, &protocol witness table for WheelPickerStyle, type metadata accessor for PickerStyleWriter);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PickerValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  _GraphInputs.interfaceIdiom.getter();
  type metadata accessor for InlinePickerStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t specialized UIHostingController.updateIncomingBoundsIfNeeded(navigationController:)(UINavigationController *a1)
{
  v3 = direct field offset for UIHostingController.host;
  [*(v1 + direct field offset for UIHostingController.host) bounds];
  v49.origin.x = 0.0;
  v49.origin.y = 0.0;
  v49.size.width = 0.0;
  v49.size.height = 0.0;
  result = CGRectEqualToRect(v48, v49);
  if (!result)
  {
    return result;
  }

  v5 = [(UINavigationController *)a1 viewIfLoaded];
  if (v5)
  {
    v6 = v5;
    [v5 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = *(v1 + v3);
    x = v8;
    y = v10;
    width = v12;
    height = v14;
LABEL_4:

    return [v15 setBounds_];
  }

  v20 = [(UINavigationController *)a1 splitViewController];
  if (v20)
  {
    v21 = v20;
    UISplitViewController.columnBounds(forNavController:)(&v46, a1);

    if (!v46.is_nil)
    {
      width = v46.value.size.width;
      height = v46.value.size.height;
      x = v46.value.origin.x;
      y = v46.value.origin.y;
      v15 = *(v1 + v3);
      goto LABEL_4;
    }
  }

  static RepresentableContextValues.current.getter();
  if (v41 < 2)
  {
    return outlined consume of RepresentableContextValues?(v41, v42, v43, v44, v45);
  }

  outlined consume of RepresentableContextValues?(v22, v42, v43, v44, v45);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    v25 = *(Strong + 208);

    if (v24)
    {
      v26 = v1;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = ViewGraphDelegate.uiViewController.getter(ObjectType, v25);
      swift_unknownObjectRelease();
      if (v28)
      {
        v29 = [v28 splitViewController];
        if (v29)
        {
        }

        else
        {
          v30 = [v28 viewIfLoaded];
          if (v30)
          {
            v31 = v30;
            [v30 bounds];
            v33 = v32;
            v35 = v34;
            v37 = v36;
            v39 = v38;

            v40 = *(v26 + v3);
            [v40 setBounds_];

            return swift_unknownObjectRelease();
          }
        }
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void type metadata accessor for PickerStyleWriter<SectionPickerStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
    type metadata accessor for PickerStyleWriter<SectionPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<SectionPickerStyle>, &type metadata for SectionPickerStyle, &protocol witness table for SectionPickerStyle, type metadata accessor for PickerStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>);
    }
  }
}

uint64_t specialized ListCollectionViewCellBase.hostingView<A>(_:willUpdate:)(uint64_t a1)
{
  v2 = v1;
  v148 = a1;
  type metadata accessor for UICellConfigurationState?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v129 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIListContentConfiguration?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v131 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  v154 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v128 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v138 = &v121 - v9;
  v145 = type metadata accessor for UIListContentConfiguration.TextProperties.TextTransform();
  v153 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v143 = &v121 - v12;
  v155 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v13 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v133 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v121 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v121 - v19;
  v156 = type metadata accessor for UIListContentConfiguration();
  v21 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v132 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v134 = &v121 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v121 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v121 - v29;
  v31 = type metadata accessor for UICellConfigurationState();
  v140 = *(v31 - 8);
  v141 = v31;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = [v1 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  v130 = v2;
  v36 = [v2 contentView];
  [v36 directionalLayoutMargins];
  v38 = v37;
  v40 = v39;

  ListCollectionViewCellBase.prominentConfigForContent(state:contentViewMargins:)(v34, v41, v38, v42, v40);
  v149 = v21;
  v43 = *(v21 + 16);
  v139 = v30;
  v125 = v43;
  v126 = v21 + 16;
  v43(v27, v30, v156);
  v146 = v34;
  v44 = UICellConfigurationState.traitCollection.getter();
  UIListContentConfiguration.textProperties.getter();
  v152 = v20;
  v45 = UIListContentConfiguration.TextProperties.font.getter();
  v46 = [v45 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];

  UIListContentConfiguration.textProperties.getter();
  UIListContentConfiguration.TextProperties.color.getter();
  v47 = *(v13 + 8);
  v127 = v17;
  v150 = v47;
  v151 = v13 + 8;
  v47(v17, v155);
  v142 = type metadata accessor for UIKitPlatformColorDefinition();
  v136 = Color.init(_platformColor:definition:)();
  v137 = v46;
  if (v46)
  {
    v48 = v46;
    v135 = Font.init(_:)();
  }

  else
  {
    v135 = 0;
  }

  v49 = v143;
  UIListContentConfiguration.TextProperties.transform.getter();
  v50 = v153;
  v51 = *(v153 + 104);
  v53 = v144;
  v52 = v145;
  v122 = *MEMORY[0x1E69DC108];
  v123 = v153 + 104;
  v121 = v51;
  v51(v144);
  v54 = MEMORY[0x18D001EE0](v49, v53);
  v55 = *(v50 + 8);
  v55(v53, v52);
  v153 = v50 + 8;
  v124 = v55;
  v55(v49, v52);
  v56 = v54 & 1;
  UIListContentConfiguration.imageToTextPadding.getter();
  v58 = v57;
  UIListContentConfiguration.directionalLayoutMargins.getter();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v138;
  UIListContentConfiguration.imageProperties.getter();
  v68 = UIListContentConfiguration.ImageProperties.tintColor.getter();
  v69 = *(v154 + 8);
  v154 += 8;
  v138 = v69;
  (v69)(v67, v147);
  if (v68)
  {
    v70 = Color.init(_platformColor:definition:)();
    v71 = 1;
  }

  else
  {
    v71 = 0;
    v70 = 1;
  }

  outlined consume of ListItemTint?(1);
  UIListContentConfiguration._minimumHeight(for:)();
  v73 = v72;

  v150(v152, v155);
  v74 = *(v149 + 8);
  v74(v27, v156);
  *&v166 = v60;
  *(&v166 + 1) = v62;
  *&v167 = v64;
  *(&v167 + 1) = v66;
  *&v168 = v73;
  *(&v168 + 1) = v135;
  *&v169 = v136;
  BYTE8(v169) = v56;
  HIDWORD(v169) = *(v172 + 3);
  *(&v169 + 9) = v172[0];
  *&v170 = v58;
  *(&v170 + 1) = v70;
  v171 = v71;
  v75 = v148;
  v163 = v169;
  v164 = v170;
  v165 = v71;
  v160 = v166;
  v161 = v167;
  v162 = v168;
  type metadata accessor for EnvironmentPropertyKey<ProminentHeaderStylingKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey, MEMORY[0x1E697FE38]);

  outlined init with copy of ListContentStyling(&v166, v158);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(v75 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of ListContentStyling(&v166);

  if (one-time initialization token for isEnabledInProcessEnv != -1)
  {
    swift_once();
  }

  v76 = v156;
  if (static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv)
  {
    v74(v139, v156);
    return (*(v140 + 8))(v146, v141);
  }

  else
  {
    v78 = direct field offset for ListCollectionViewCellBase.lastConfiguration;
    v79 = v130;
    swift_beginAccess();
    v80 = v79 + v78;
    v81 = v131;
    outlined init with copy of UIListContentConfiguration?(v80, v131, type metadata accessor for UIListContentConfiguration?);
    v82 = v149;
    if ((*(v149 + 48))(v81, 1, v76) == 1)
    {
      v74(v139, v76);
      (*(v140 + 8))(v146, v141);
      return _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(v81, type metadata accessor for UIListContentConfiguration?);
    }

    else
    {
      (*(v82 + 32))(v134, v81, v76);
      UIListContentConfiguration.directionalLayoutMargins.getter();
      v85 = v83;
      v86 = v84;
      if (v38 > v83)
      {
        v83 = v38;
      }

      if (v40 > v84)
      {
        v84 = v40;
      }

      if (v85 != v83 || v86 != v84)
      {
        UIListContentConfiguration.directionalLayoutMargins.setter();
      }

      v125(v132, v134, v76);
      v87 = UICellConfigurationState.traitCollection.getter();
      UIListContentConfiguration.textProperties.getter();
      v88 = UIListContentConfiguration.TextProperties.font.getter();
      v152 = v87;
      v89 = [v88 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];

      v90 = v127;
      UIListContentConfiguration.textProperties.getter();
      UIListContentConfiguration.TextProperties.color.getter();
      v150(v90, v155);
      v149 = Color.init(_platformColor:definition:)();
      if (v89)
      {
        v91 = v89;
        v137 = Font.init(_:)();
      }

      else
      {
        v137 = 0;
      }

      v92 = v143;
      UIListContentConfiguration.TextProperties.transform.getter();
      v94 = v144;
      v93 = v145;
      v121(v144, v122, v145);
      v95 = MEMORY[0x18D001EE0](v92, v94);
      v96 = v124;
      v124(v94, v93);
      v96(v92, v93);
      v97 = v95 & 1;
      UIListContentConfiguration.imageToTextPadding.getter();
      v99 = v98;
      UIListContentConfiguration.directionalLayoutMargins.getter();
      v101 = v100;
      v103 = v102;
      v105 = v104;
      v107 = v106;
      v108 = v128;
      UIListContentConfiguration.imageProperties.getter();
      v109 = UIListContentConfiguration.ImageProperties.tintColor.getter();
      (v138)(v108, v147);
      if (v109)
      {
        v110 = Color.init(_platformColor:definition:)();
        v111 = 1;
      }

      else
      {
        v111 = 0;
        v110 = 1;
      }

      outlined consume of ListItemTint?(1);
      v112 = v152;
      v113 = v132;
      UIListContentConfiguration._minimumHeight(for:)();
      v115 = v114;

      v150(v133, v155);
      v116 = v156;
      v74(v113, v156);
      *&v160 = v101;
      *(&v160 + 1) = v103;
      *&v161 = v105;
      *(&v161 + 1) = v107;
      *&v162 = v115;
      *(&v162 + 1) = v137;
      *&v163 = v149;
      BYTE8(v163) = v97;
      HIDWORD(v163) = *(v157 + 3);
      *(&v163 + 9) = v157[0];
      *&v164 = v99;
      *(&v164 + 1) = v110;
      v165 = v111;
      v158[2] = v162;
      v158[3] = v163;
      v158[4] = v164;
      v159 = v111;
      v158[0] = v160;
      v158[1] = v161;
      v118 = v140;
      v117 = v141;
      v119 = v129;
      v120 = v146;
      (*(v140 + 16))(v129, v146, v141);
      (*(v118 + 56))(v119, 0, 1, v117);
      EnvironmentValues.configureListStyling(_:state:)(v158, v119);
      _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(v119, type metadata accessor for UICellConfigurationState?);
      v74(v134, v116);
      v74(v139, v116);
      (*(v118 + 8))(v120, v117);
      return outlined destroy of ListContentStyling(&v160);
    }
  }
}

void specialized closure #1 in closure #1 in UIHostingController.performRender()(uint64_t a1)
{
  v1 = *(a1 + direct field offset for UIHostingController.host);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  v2 = v1;
  ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>);
    type metadata accessor for PickerStyleWriter<SectionPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<SegmentedPickerStyle>, &type metadata for SegmentedPickerStyle, &protocol witness table for SegmentedPickerStyle, type metadata accessor for PickerStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for PickerStyleWriter<SectionPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<SectionPickerStyle>, &type metadata for SectionPickerStyle, &protocol witness table for SectionPickerStyle, type metadata accessor for PickerStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>);
    }
  }
}

void ListCollectionViewCellBase.prominentConfigForContent(state:contentViewMargins:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30[-1] - v13;
  v15 = type metadata accessor for UIListContentConfiguration();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.prominentInsetGroupedHeader()();
  v19 = type metadata accessor for UICellConfigurationState();
  v30[3] = v19;
  v30[4] = MEMORY[0x1E69DC0B0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, a1, v19);
  UIListContentConfiguration.updated(for:)();
  (*(v16 + 8))(v18, v15);
  __swift_destroy_boxed_opaque_existential_1(v30);
  UIListContentConfiguration.directionalLayoutMargins.getter();
  v23 = v21;
  v24 = v22;
  if (v21 < a3)
  {
    v21 = a3;
  }

  if (v22 < a5)
  {
    v22 = a5;
  }

  if (v23 != v21 || v24 != v22)
  {
    UIListContentConfiguration.directionalLayoutMargins.setter();
  }

  UIListContentConfiguration.textProperties.getter();
  v25 = UIListContentConfiguration.TextProperties.font.getter();
  v26 = UICellConfigurationState.traitCollection.getter();
  v27 = [v25 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];

  if (v27)
  {
    if (v25 == v27)
    {
    }

    else
    {
      v28 = v27;
      UIListContentConfiguration.TextProperties.font.setter();
      (*(v9 + 16))(v11, v14, v8);
      UIListContentConfiguration.textProperties.setter();
    }

    (*(v9 + 8))(v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
  }
}

void type metadata accessor for EnvironmentPropertyKey<ProminentHeaderStylingKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<ProminentHeaderStylingKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type ShouldUseListSectionInlinePickerStyle and conformance ShouldUseListSectionInlinePickerStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShouldUseListSectionInlinePickerStyle and conformance ShouldUseListSectionInlinePickerStyle()
{
  result = lazy protocol witness table cache variable for type ShouldUseListSectionInlinePickerStyle and conformance ShouldUseListSectionInlinePickerStyle;
  if (!lazy protocol witness table cache variable for type ShouldUseListSectionInlinePickerStyle and conformance ShouldUseListSectionInlinePickerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldUseListSectionInlinePickerStyle and conformance ShouldUseListSectionInlinePickerStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance ShouldUseListSectionInlinePickerStyle(_OWORD *a1)
{
  v1 = a1[1];
  v9[0] = *a1;
  v9[1] = v1;
  v3 = *a1;
  v2 = a1[1];
  v9[2] = a1[2];
  v6 = v3;
  v7 = v2;
  v8 = a1[2];
  outlined init with copy of _GraphInputs(v9, v10);
  v4 = specialized static ShouldUseListSectionInlinePickerStyle.evaluate(inputs:)();
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

uint64_t outlined init with copy of UIListContentConfiguration?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall UIKitNavigationController.pushViewController(_:animated:)(UIViewController *_, Swift::Bool animated)
{
  if (v2[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations])
  {
    v8.receiver = v2;
    v8.super_class = type metadata accessor for UIKitNavigationController();
    [(UIViewController *)&v8 pushViewController:_ animated:animated];
  }

  else
  {
    v5 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_platformNavigationPresentationStrategy;
    swift_beginAccess();
    outlined init with copy of _PresentationTransitionOutputs.Content(&v2[v5], &v13);
    if (v14)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v13, v10);
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      if ((*(v6 + 16))())
      {
        v7 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        (*(v7 + 8))(_, animated);
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      v9.receiver = v2;
      v9.super_class = type metadata accessor for UIKitNavigationController();
      [(UIViewController *)&v9 pushViewController:_ animated:animated];
    }
  }
}

uint64_t specialized static ShouldUseListSectionInlinePickerStyle.evaluate(inputs:)()
{
  if (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    v0 = &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2_3>;
    v1 = MEMORY[0x1E697E4F8];
    v2 = MEMORY[0x1E697E4F0];
    type metadata accessor for PickerStyleWriter<SectionPickerStyle>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2_3>, MEMORY[0x1E697E4F8], MEMORY[0x1E697E4F0], MEMORY[0x1E697EC20]);
    v3 = &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>;
LABEL_5:
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>(v3, v0, v1, v2);
    return static SemanticFeature.isEnabled.getter() & 1;
  }

  if (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    v0 = &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>;
    v1 = MEMORY[0x1E697DF30];
    v2 = MEMORY[0x1E697DF28];
    type metadata accessor for PickerStyleWriter<SectionPickerStyle>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    v3 = &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>;
    goto LABEL_5;
  }

  return 0;
}

void type metadata accessor for NavigationStackHostingController<AnyView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

id specialized NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)(char a1, id a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = [a2 transitionCoordinator];
  if (result)
  {
    if (a1)
    {
      *a3 = 1;
      v11 = result;
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14[4] = a5;
      v14[5] = v12;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 1107296256;
      v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
      v14[3] = a6;
      v13 = _Block_copy(v14);

      [v11 animateAlongsideTransition:0 completion:v13];
      _Block_release(v13);
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t static SectionPickerStyle._makeViewList<A>(value:inputs:)()
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
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<Int, [ObjectIdentifier]>);
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

void *specialized _NativeDictionary.copy()(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 56) + 8 * v15) = v18)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      v18 = *(*(v3 + 56) + 8 * v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

double CellHostingView.hostContainerSafeArea.getter()
{
  static Semantics.v4.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    static EdgeInsets.zero.getter();
  }

  else
  {
    _UIHostingView.hostContainerSafeArea.getter();
    return 0.0;
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>();
    type metadata accessor for SectionStyleModifier<MenuPickerOptionSectionStyle>(255, &lazy cache variable for type metadata for SectionStyleModifier<MenuPickerOptionSectionStyle>, lazy protocol witness table accessor for type MenuPickerOptionSectionStyle and conformance MenuPickerOptionSectionStyle, &type metadata for MenuPickerOptionSectionStyle, type metadata accessor for SectionStyleModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for SectionStyleModifier<MenuPickerOptionSectionStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void _s7SwiftUI20SectionStyleModifierVyAA016MenuPickerOptioncD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void CellHostingView.hostKeyboardHeight.getter()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {

    _UIHostingView.hostKeyboardHeight.getter();
  }
}

unint64_t lazy protocol witness table accessor for type MenuPickerOptionSectionStyle and conformance MenuPickerOptionSectionStyle()
{
  result = lazy protocol witness table cache variable for type MenuPickerOptionSectionStyle and conformance MenuPickerOptionSectionStyle;
  if (!lazy protocol witness table cache variable for type MenuPickerOptionSectionStyle and conformance MenuPickerOptionSectionStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuPickerOptionSectionStyle and conformance MenuPickerOptionSectionStyle);
  }

  return result;
}

uint64_t type metadata completion function for SectionPicker()
{
  result = type metadata accessor for PickerStyleConfiguration();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for ViewGraphFeature.modifyViewInputs(inputs:graph:) in conformance ItemHostingViewGraph()
{
  lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
  PropertyList.subscript.getter();
  return PropertyList.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>;
  if (!lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  }

  return result;
}

uint64_t PlatformItemListGenerator.itemList.getter()
{
  if (*(v0 + 104) == *MEMORY[0x1E698D3F8])
  {
    return 0;
  }

  AGGraphGetValue();
}

uint64_t SectionPickerStyle.Body.value.getter(int a1, uint64_t a2, uint64_t a3)
{
  v19[2] = &type metadata for SectionPickerStyle;
  v19[3] = a2;
  v19[4] = &protocol witness table for SectionPickerStyle;
  v19[5] = a3;
  v6 = type metadata accessor for _PickerValue();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  SectionPickerStyle.Body.base.getter(v19 - v7);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a2, a3, v9, v10);
  v11 = type metadata accessor for PickerStyleConfiguration();
  (*(*(v11 - 8) + 8))(v8, v11);
  v12 = type metadata accessor for PickerStyleConfiguration.Content();
  v13 = lazy protocol witness table accessor for type MenuPickerOptionSectionStyle and conformance MenuPickerOptionSectionStyle();
  View.sectionStyle<A, B>(_:in:)(v13, v14, v12, &type metadata for MenuPickerOptionSectionStyle, MEMORY[0x1E697EA18], &protocol witness table for PickerStyleConfiguration<A>.Content, MEMORY[0x1E697EA10], v15);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a1;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for SectionPicker();
  v17 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuPickerOptionSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v19[0] = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v19[1] = v17;
  swift_getWitnessTable();
  swift_getWitnessTable();
  return Group.init<A, B>(subviews:transform:)();
}

uint64_t storeEnumTagSinglePayload for OrnamentDynamicScaleBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DragConfiguration.OperationsWithinApp(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t SectionPickerStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _PickerValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t _PickerValue.Init2.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v17[0] = a3;
  v17[1] = a2;
  v4 = type metadata accessor for PickerStyleConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - v6;
  v8 = type metadata accessor for ResolvedPicker();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - v9;
  v11 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v11 + 16))(v14, Value, a1);
  _PickerValue.Init2.base.getter(v10);
  (*(v5 + 32))(v7, v10, v4);
  return _PickerValue.init(style:configuration:)(v14, v7, a1, v17[0]);
}

uint64_t storeEnumTagSinglePayload for ListContentStyling(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListContentStyling(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t InlinePickerStyle.Body.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v40 = type metadata accessor for PickerStyleConfiguration();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36 = v33 - v5;
  v49 = &type metadata for InlinePickerStyle;
  *&v50 = v3;
  v33[0] = v3;
  v33[1] = v4;
  *(&v50 + 1) = &protocol witness table for InlinePickerStyle;
  v51 = v4;
  v6 = type metadata accessor for _PickerValue();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v33 - v7;
  v9 = type metadata accessor for ResolvedPicker();
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v33 - v10;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>();
  v12 = type metadata accessor for ModifiedContent();
  v35 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v33 - v13;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>();
  v15 = type metadata accessor for ModifiedContent();
  v37 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v33 - v16;
  type metadata accessor for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>();
  v18 = type metadata accessor for ModifiedContent();
  v39 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v33 - v19;
  LODWORD(v49) = *v2;
  v50 = *(v2 + 8);
  InlinePickerStyle.Body.base.getter(v8);
  v21 = v36;
  (*(v38 + 32))(v36, v8, v40);
  v22 = ResolvedPicker.init(configuration:)(v21, v11);
  View.pickerStyle<A, B>(_:in:)(v22, v23, v9, &type metadata for SectionPickerStyle, MEMORY[0x1E697EA18], &protocol witness table for ResolvedPicker<A>, MEMORY[0x1E697EA10], v14);
  (*(v34 + 8))(v11, v9);
  v24 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v47 = &protocol witness table for ResolvedPicker<A>;
  v48 = v24;
  WitnessTable = swift_getWitnessTable();
  View.pickerStyle<A, B>(_:in:)(WitnessTable, v26, v12, &type metadata for SegmentedPickerStyle, MEMORY[0x1E697F860], WitnessTable, MEMORY[0x1E697F858], v17);
  (*(v35 + 8))(v14, v12);
  v27 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v45 = WitnessTable;
  v46 = v27;
  v28 = swift_getWitnessTable();
  ShouldUseListSectionInlinePickerStyle = lazy protocol witness table accessor for type ShouldUseListSectionInlinePickerStyle and conformance ShouldUseListSectionInlinePickerStyle();
  View.pickerStyle<A, B>(_:if:)(ShouldUseListSectionInlinePickerStyle, v15, &type metadata for SectionPickerStyle, v28, ShouldUseListSectionInlinePickerStyle, v20);
  (*(v37 + 8))(v17, v15);
  ShouldUseListSectionInlinePicker = lazy protocol witness table accessor for type StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v43 = v28;
  v44 = ShouldUseListSectionInlinePicker;
  v31 = swift_getWitnessTable();
  View.pickerStyle<A>(_:)(v31, v18, &type metadata for WheelPickerStyle, v31);
  return (*(v39 + 8))(v20, v18);
}

uint64_t InlinePickerStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _PickerValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t _PickerValue.Init2.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ResolvedPicker();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t Picker.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v4 = a1[6];
  v5 = a1[3];
  v6 = type metadata accessor for PickerStyleConfiguration();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - v7;
  v55 = type metadata accessor for ResolvedPicker();
  v64 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v43 - v9;
  v10 = type metadata accessor for PickerStyleConfiguration.Label();
  v51 = a1[2];
  v11 = v51;
  WitnessTable = swift_getWitnessTable();
  v52 = a1[5];
  v89 = v10;
  v90 = v11;
  v91 = WitnessTable;
  v92 = v52;
  type metadata accessor for StaticSourceWriter();
  v50 = type metadata accessor for ModifiedContent();
  v65 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v43 - v12;
  v13 = type metadata accessor for PickerStyleConfiguration.Content();
  v59 = v13;
  v14 = a1[4];
  v60 = swift_getWitnessTable();
  v15 = a1[7];
  v44 = v14;
  v45 = v15;
  v89 = v13;
  v90 = v14;
  v91 = v60;
  v92 = v15;
  type metadata accessor for StaticSourceWriter();
  v47 = type metadata accessor for ModifiedContent();
  v63 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v43 - v16;
  v17 = type metadata accessor for PickerStyleConfiguration.CurrentValueLabel();
  v56 = v17;
  v58 = swift_getWitnessTable();
  v89 = v17;
  v90 = MEMORY[0x1E6981910];
  v91 = v58;
  v92 = MEMORY[0x1E6981900];
  type metadata accessor for OptionalSourceWriter();
  v18 = type metadata accessor for ModifiedContent();
  v61 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v53 = &v43 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v54 = &v43 - v23;
  v24 = v2;

  PickerStyleConfiguration.init(selection:)(v25, v8);
  v26 = v57;
  ResolvedPicker.init(configuration:)(v8, v57);
  *&v27 = v51;
  *(&v27 + 1) = v5;
  *&v28 = v14;
  *(&v28 + 1) = v52;
  v67 = v28;
  v68 = v27;
  v78 = v27;
  v79 = v28;
  v43 = v4;
  v29 = v45;
  v80 = v4;
  v81 = v45;
  v82 = v24;
  v30 = v49;
  v31 = v55;
  View.viewAlias<A, B>(_:_:)(v10, partial apply for closure #1 in Picker.body.getter, v77, v55, v10, v51, &protocol witness table for ResolvedPicker<A>);
  (*(v64 + 8))(v26, v31);
  v73[1] = v68;
  v73[2] = v67;
  v74 = v4;
  v75 = v29;
  v76 = v24;
  v87 = &protocol witness table for ResolvedPicker<A>;
  v88 = &protocol witness table for StaticSourceWriter<A, B>;
  v32 = v50;
  v33 = swift_getWitnessTable();
  v34 = v48;
  View.viewAlias<A, B>(_:_:)(v59, partial apply for closure #2 in Picker.body.getter, v73, v32, v59, v44, v33);
  (*(v65 + 8))(v30, v32);
  v69[1] = v68;
  v69[2] = v67;
  v70 = v43;
  v71 = v29;
  v72 = v24;
  v85 = v33;
  v86 = &protocol witness table for StaticSourceWriter<A, B>;
  v35 = v47;
  v36 = swift_getWitnessTable();
  v37 = v46;
  View.optionalViewAlias<A, B>(_:_:)(v56, partial apply for closure #3 in Picker.body.getter, v69, v35, v56, MEMORY[0x1E6981910], v36, v58, MEMORY[0x1E6981900]);
  (*(v63 + 8))(v34, v35);
  v83 = v36;
  v84 = &protocol witness table for OptionalSourceWriter<A, B>;
  v38 = swift_getWitnessTable();
  v39 = v53;
  ModifiedContent<>.accessibility()(v18, v53);
  v40 = *(v61 + 8);
  v40(v37, v18);
  v41 = v54;
  static ViewBuilder.buildExpression<A>(_:)(v39, v18, v38);
  v40(v39, v18);
  static ViewBuilder.buildExpression<A>(_:)(v41, v18, v38);
  return (v40)(v41, v18);
}

void type metadata accessor for StyleContextAcceptsPredicate<SidebarStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarStyleContext>)
  {
    v0 = type metadata accessor for StyleContextAcceptsPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarStyleContext>);
    }
  }
}

uint64_t PickerStyleConfiguration.init(selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PickerStyleConfiguration();
  *(a2 + *(v4 + 40)) = 1;
  type metadata accessor for Binding();
  type metadata accessor for Array();

  swift_getWitnessTable();
  result = Binding.init<A>(flattening:)();
  *(a2 + *(v4 + 36)) = a1;
  return result;
}

uint64_t ResolvedPicker.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PickerStyleConfiguration();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t closure #1 in Picker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = v11;
  v19[1] = v12;
  v19[2] = v13;
  v19[3] = v14;
  v19[4] = v15;
  v19[5] = v16;
  v17 = type metadata accessor for Picker();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v17 + 68), a2, a5);
  static ViewBuilder.buildExpression<A>(_:)(v10, a2, a5);
  return (*(v8 + 8))(v10, a2);
}

void *initializeWithCopy for WheelPicker(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = v5 + v10 + 8;
  v12 = v6 + v10 + 8;

  v8(v11 & ~v10, v12 & ~v10, v7);
  v13 = ((v10 + 16) & ~v10) + *(v9 + 48) + 7;
  v14 = (a1 + v13) & 0xFFFFFFFFFFFFFFF8;
  v15 = (a2 + v13) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);

  return a1;
}

void type metadata accessor for _ViewModifier_Content<CollectionViewCellModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<CollectionViewCellModifier>)
  {
    lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<CollectionViewCellModifier>);
    }
  }
}

uint64_t destroy for WheelPicker(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 15;

  (*(*(*(a2 + 16) - 8) + 8))(((v3 & 0xFFFFFFFFFFFFFFF8) + *(*(*(a2 + 16) - 8) + 80) + 8) & ~*(*(*(a2 + 16) - 8) + 80));
}

uint64_t closure #2 in Picker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = v13;
  v21[1] = v14;
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v21[5] = v18;
  v19 = type metadata accessor for Picker();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v19 + 72), a4, a7);
  static ViewBuilder.buildExpression<A>(_:)(v12, a4, a7);
  return (*(v10 + 8))(v12, a4);
}

void type metadata accessor for InvertedViewInputPredicate<Solarium>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t partial apply for closure #3 in Picker.body.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v2 + *(type metadata accessor for Picker() + 76));
}

uint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<SidebarStyleContext> and conformance StyleContextAcceptsPredicate<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _PickerValue.init(style:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for _PickerValue() + 52);
  v7 = type metadata accessor for PickerStyleConfiguration();
  return (*(*(v7 - 8) + 32))(a4 + v6, a2, v7);
}

uint64_t initializeWithCopy for _PickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v6 + 48);
  v10 = *(v8 + 16);
  v11 = v8 + 16;
  v12 = *(v8 + 80);
  v13 = (v12 | 7) + v9;
  v15 = ((v13 + a2) & ~(v12 | 7));
  v14 = ((v13 + a1) & ~(v12 | 7));
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = v16 + v12 + 8;
  v19 = v17 + v12 + 8;

  v10(v18 & ~v12, v19 & ~v12, v7);
  v20 = *(v11 + 48) + ((v12 + 16) & ~v12) + 7;
  v21 = (v14 + v20) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v15 + v20) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);

  return a1;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ListCoreCellEnvironment(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t destroy for _PickerValue(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56);
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + a1 + (v8 | 7)) & ~(v8 | 7);

  (*(v7 + 8))((v8 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8, v6);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ListCoreCellEnvironment()
{
  lazy protocol witness table accessor for type ListCoreCellEnvironment and conformance ListCoreCellEnvironment();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t View.pickerStyle<A, B>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v36 = a6;
  v32 = a2;
  v33 = a7;
  v34 = a8;
  v35 = a3;
  v10 = *(a5 - 8);
  v30 = a1;
  v31 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PickerStyleWriter();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  type metadata accessor for StyleContextAcceptsPredicate();
  v21 = type metadata accessor for StaticIf();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v29 - v24;
  (*(v13 + 16))(v16, v30, a4, v23);
  (*(v13 + 32))(v20, v16, a4);
  v26 = v31;
  v27 = v29;
  (*(v31 + 16))(v29, v32, a5);
  v38 = a5;
  v39 = v27;
  v37 = v33;
  ViewModifier.requiring<A>(_:)();
  (*(v18 + 8))(v20, v17);
  (*(v26 + 8))(v27, a5);
  MEMORY[0x18D00A570](v25, v35, v21, v36);
  return (*(v22 + 8))(v25, v21);
}

unint64_t lazy protocol witness table accessor for type ListCoreCellEnvironment and conformance ListCoreCellEnvironment()
{
  result = lazy protocol witness table cache variable for type ListCoreCellEnvironment and conformance ListCoreCellEnvironment;
  if (!lazy protocol witness table cache variable for type ListCoreCellEnvironment and conformance ListCoreCellEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListCoreCellEnvironment and conformance ListCoreCellEnvironment);
  }

  return result;
}

uint64_t View.pickerStyle<A, B>(_:if:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v22 = a4;
  v20[2] = a5;
  v21 = a2;
  v20[1] = a6;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PickerStyleWriter();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v14 = type metadata accessor for StaticIf();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v13, v10, a3);
  StaticIf<>.init<>(_:then:)();
  MEMORY[0x18D00A570](v18, v21, v14, v22);
  return (*(v15 + 8))(v18, v14);
}

double specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, unint64_t *a4@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X6>, double *a7@<X8>)
{
  v134 = *MEMORY[0x1E69E9840];
  v101 = *(a2 + 48);
  v102 = *(a2 + 56);
  *&v109 = *(a2 + 48);
  DWORD2(v109) = *(a2 + 56);
  outlined init with copy of PreferencesInputs(&v101, v130);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    outlined destroy of PreferencesInputs(&v101);
    v11 = *(a2 + 48);
    v12 = *(a2 + 64);
    v118 = *(a2 + 32);
    v119 = v11;
    v120 = v12;
    v121 = *(a2 + 80);
    v13 = *(a2 + 16);
    v116 = *a2;
    v117 = v13;
    v90 = *(a2 + 8);
    v91 = *a2;
    v92 = *(a2 + 16);
    v93 = *(a2 + 24);
    v14 = *(a2 + 36);
    v88 = *(a2 + 40);
    v89 = *(a2 + 28);
    if ((v14 & 0x10) != 0)
    {
      v26 = *(a2 + 32);
      v27 = *(a2 + 64);
      v111 = *(a2 + 48);
      *v112 = v27;
      *&v112[16] = *(a2 + 80);
      v28 = *(a2 + 16);
      v109 = *a2;
      v110[0] = v28;
      v110[1] = v26;
      outlined init with copy of _ViewInputs(a2, v130);
      _ViewInputs.animatedPosition()();
      v15 = _ViewInputs.containerPosition.setter();
    }

    else
    {
      v15 = outlined init with copy of _ViewInputs(a2, &v109);
    }

    v111 = v119;
    *v112 = v120;
    *&v112[16] = v121;
    v109 = v116;
    v110[0] = v117;
    v110[1] = v118;
    a3(&v122, v15, &v109);
    v86 = v14;
    v87 = a7;
    if ((v14 & 0x10) != 0)
    {
      *&v109 = v101;
      DWORD2(v109) = v102;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        v29 = v122;
        *&v109 = v122;
        v80 = LODWORD(v123);
        DWORD2(v109) = LODWORD(v123);
        v30 = PreferencesOutputs.subscript.getter();
        v31 = *MEMORY[0x1E698D3F8];
        v82 = *MEMORY[0x1E698D3F8];
        if ((v30 & 0x100000000) == 0)
        {
          v31 = v30;
        }
      }

      else
      {
        v31 = *MEMORY[0x1E698D3F8];
        v29 = v122;
        v80 = LODWORD(v123);
        v82 = *MEMORY[0x1E698D3F8];
      }

      v84 = v31;
      _DisplayList_Identity.init()();
      v78 = v109;
      v42 = *(a2 + 32);
      v43 = *(a2 + 64);
      v111 = *(a2 + 48);
      *v112 = v43;
      *&v112[16] = *(a2 + 80);
      v44 = *(a2 + 16);
      v109 = *a2;
      v110[0] = v44;
      v110[1] = v42;
      *v130 = v78;
      _ViewInputs.pushIdentity(_:)();
      PropertyList.subscript.getter();
      v76 = v129;
      *&v124 = v91;
      *(&v124 + 1) = v90;
      *&v125[0] = v92;
      *(v125 + 12) = v89;
      DWORD2(v125[0]) = v93;
      DWORD1(v125[1]) = v14;
      *(&v125[1] + 1) = v88;
      _GraphInputs.interfaceIdiom.getter();
      PropertyList.subscript.getter();
      v45 = *(a2 + 32);
      v46 = *(a2 + 64);
      v111 = *(a2 + 48);
      *v112 = v46;
      *&v112[16] = *(a2 + 80);
      v47 = *(a2 + 16);
      v109 = *a2;
      v110[0] = v47;
      v110[1] = v45;
      swift_beginAccess();
      v75 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v48 = *(a2 + 32);
      v49 = *(a2 + 64);
      v111 = *(a2 + 48);
      *v112 = v49;
      *&v112[16] = *(a2 + 80);
      v50 = *(a2 + 16);
      v109 = *a2;
      v110[0] = v50;
      v110[1] = v48;
      v74 = _ViewInputs.animatedPosition()();
      v51 = *(a2 + 32);
      v52 = *(a2 + 64);
      v111 = *(a2 + 48);
      *v112 = v52;
      *&v112[16] = *(a2 + 80);
      v53 = *(a2 + 16);
      v109 = *a2;
      v110[0] = v53;
      v110[1] = v51;
      v54 = _ViewInputs.containerPosition.getter();
      v73 = *(v92 + 16);
      *v130 = v29;
      *&v130[8] = v80;
      v55 = PreferencesOutputs.subscript.getter();
      if ((v55 & 0x100000000) != 0)
      {
        v56 = v82;
      }

      else
      {
        v56 = v55;
      }

      *v130 = v29;
      *&v130[8] = v80;
      v57 = PreferencesOutputs.subscript.getter();
      if ((v57 & 0x100000000) != 0)
      {
        v58 = v82;
      }

      else
      {
        v58 = v57;
      }

      type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(0, a4, a5, a6, type metadata accessor for AccessibilityViewModifierAccessor);
      *v130 = v78;
      v130[4] = v76 & 1;
      *&v130[8] = v103;
      v130[24] = v100;
      *&v130[32] = v59;
      *&v130[40] = a1;
      *&v130[44] = v75;
      *&v131 = __PAIR64__(v54, v74);
      *(&v131 + 1) = __PAIR64__(v56, v73);
      *&v132 = __PAIR64__(v58, v84);
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type DisplayListTransform and conformance DisplayListTransform();
      Attribute.init<A>(body:value:flags:update:)();
      v130[0] = 0;
      PreferencesOutputs.subscript.setter();
    }

    v60 = v122;
    v61 = LODWORD(v123);
    *&v109 = v101;
    DWORD2(v109) = v102;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      *&v109 = v60;
      DWORD2(v109) = v61;
      v62 = PreferencesOutputs.subscript.getter();
      v63 = *MEMORY[0x1E698D3F8];
      v81 = *MEMORY[0x1E698D3F8];
      if ((v62 & 0x100000000) == 0)
      {
        v63 = v62;
      }
    }

    else
    {
      v63 = *MEMORY[0x1E698D3F8];
      v81 = *MEMORY[0x1E698D3F8];
    }

    v85 = v63;
    v83 = *(a2 + 72);
    v64 = *(a2 + 32);
    v65 = *(a2 + 64);
    v111 = *(a2 + 48);
    *v112 = v65;
    *&v112[16] = *(a2 + 80);
    v66 = *(a2 + 16);
    v109 = *a2;
    v110[0] = v66;
    v110[1] = v64;
    v77 = _ViewInputs.position.getter();
    v79 = *(a2 + 60);
    v67 = *(a2 + 48);
    *&v130[32] = *(a2 + 32);
    v131 = v67;
    v132 = *(a2 + 64);
    v133 = *(a2 + 80);
    v68 = *(a2 + 16);
    *v130 = *a2;
    *&v130[16] = v68;
    _ViewInputs.scrapeableParentID.getter();
    *&v103 = v91;
    *(&v103 + 1) = v90;
    v104 = v92;
    v105 = v93;
    v106 = v89;
    v107 = v86;
    v108 = v88;
    _GraphInputs.interfaceIdiom.getter();
    swift_beginAccess();
    v69 = *(v92 + 16);
    *&v109 = v60;
    DWORD2(v109) = v61;
    v70 = PreferencesOutputs.subscript.getter();
    if ((v70 & 0x100000000) != 0)
    {
      v71 = v81;
    }

    else
    {
      v71 = v70;
    }

    type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(0, a4, a5, a6, type metadata accessor for AccessibilityViewModifierAccessor);
    *&v109 = v72;
    *(&v109 + 1) = a1;
    LODWORD(v110[0]) = v99;
    *(v110 + 8) = v100;
    *(&v110[1] + 1) = __PAIR64__(v83, v77);
    *&v111 = __PAIR64__(v69, v79);
    *(&v111 + 1) = __PAIR64__(v85, v93);
    *v112 = v71;
    memset(&v112[8], 0, 152);
    v113 = (v86 & 0x20) == 0;
    v114 = 0;
    swift_unknownObjectWeakInit();
    v115 = 0;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PropertiesTransform and conformance PropertiesTransform();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of PropertiesTransform(&v109);
    AGGraphSetFlags();
    LOBYTE(v124) = 0;
    PreferencesOutputs.subscript.setter();
    v125[1] = v118;
    v126 = v119;
    v127 = v120;
    v128 = v121;
    v124 = v116;
    v125[0] = v117;
    outlined destroy of _ViewInputs(&v124);
    *v87 = v122;
    result = v123;
    v87[1] = v123;
  }

  else
  {
    *&v109 = v101;
    DWORD2(v109) = v102;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 && (*&v109 = v101, DWORD2(v109) = v102, (PreferencesInputs.contains<A>(_:includeHostPreferences:)()))
    {
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      PropertyList.subscript.getter();
      v16 = (v109 >> 4) & 1;
    }

    else
    {
      v16 = 0;
    }

    v96 = *(a2 + 8);
    v98 = *a2;
    v17 = *(a2 + 16);
    v103 = *(a2 + 24);
    v104 = *(a2 + 40);
    v18 = *(a2 + 48);
    v110[1] = *(a2 + 32);
    v19 = *(a2 + 64);
    v111 = v18;
    *v112 = v19;
    *&v112[16] = *(a2 + 80);
    v20 = *(a2 + 16);
    v109 = *a2;
    v110[0] = v20;
    if (v16)
    {
      outlined init with copy of _ViewInputs(a2, v130);
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      PropertyList.subscript.getter();
      *v130 &= ~0x10u;
      v21 = PropertyList.subscript.setter();
      v22 = *(a2 + 48);
      *&v130[32] = *(a2 + 32);
      v131 = v22;
      v132 = *(a2 + 64);
      v133 = *(a2 + 80);
      v23 = *(a2 + 16);
      *v130 = *a2;
      *&v130[16] = v23;
      a3(&v100, v21, v130);
      *v130 = v100;
      *&v130[8] = DWORD2(v100);
      PreferencesOutputs.subscript.getter();
      v24 = swift_beginAccess();
      MEMORY[0x1EEE9AC00](v24);
      *v130 = v101;
      *&v130[8] = v102;
      MEMORY[0x1EEE9AC00](v25);
      PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    }

    else
    {
      v32 = outlined init with copy of _ViewInputs(a2, v130);
      v33 = *(a2 + 48);
      *&v130[32] = *(a2 + 32);
      v131 = v33;
      v132 = *(a2 + 64);
      v133 = *(a2 + 80);
      v34 = *(a2 + 16);
      *v130 = *a2;
      *&v130[16] = v34;
      a3(&v100, v32, v130);
      outlined destroy of PreferencesInputs(&v101);
    }

    v35 = *(a2 + 48);
    *&v130[32] = *(a2 + 32);
    v131 = v35;
    v132 = *(a2 + 64);
    v133 = *(a2 + 80);
    v36 = *(a2 + 16);
    *v130 = *a2;
    *&v130[16] = v36;
    *&v124 = 1024;
    if (_ViewInputs.requestsPlatformItem(for:)())
    {
      *v130 = v100;
      *&v130[8] = DWORD2(v100);
      PreferencesOutputs.subscript.getter();
      swift_beginAccess();
      v37 = *(v17 + 16);
      type metadata accessor for PropertyList.Tracker();
      swift_allocObject();
      v38 = PropertyList.Tracker.init()();
      *v130 = v37;
      *&v130[8] = v38;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PlatformAccessibilityEnv and conformance PlatformAccessibilityEnv();
      Attribute.init<A>(body:value:flags:update:)();

      *v130 = v98;
      *&v130[8] = v96;
      *&v130[16] = v17;
      *&v130[24] = v103;
      *&v130[40] = v104;
      _GraphInputs.platformSystem.getter();
      v39 = *(a2 + 48);
      v125[1] = *(a2 + 32);
      v126 = v39;
      v127 = *(a2 + 64);
      v128 = *(a2 + 80);
      v40 = *(a2 + 16);
      v124 = *a2;
      v125[0] = v40;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PlatformAccessibilityTransform and conformance PlatformAccessibilityTransform();
      Attribute.init<A>(body:value:flags:update:)();
      lazy protocol witness table accessor for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform();
      static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
    }

    *&v130[32] = v110[1];
    v131 = v111;
    v132 = *v112;
    v133 = *&v112[16];
    *v130 = v109;
    *&v130[16] = v110[0];
    outlined destroy of _ViewInputs(v130);
    *a7 = v100;
    result = *(&v100 + 1);
    a7[1] = *(&v100 + 1);
  }

  return result;
}

double protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityScrollableContextModifier@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
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
  return specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)(v4, v8, a3, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityScrollableContextModifier>, lazy protocol witness table accessor for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier, &type metadata for AccessibilityScrollableContextModifier, a4);
}

uint64_t View.sectionStyle<A, B>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v36 = a6;
  v32 = a2;
  v33 = a7;
  v34 = a8;
  v35 = a3;
  v10 = *(a5 - 8);
  v30 = a1;
  v31 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SectionStyleModifier();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  type metadata accessor for StyleContextAcceptsPredicate();
  v21 = type metadata accessor for StaticIf();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v29 - v24;
  (*(v13 + 16))(v16, v30, a4, v23);
  (*(v13 + 32))(v20, v16, a4);
  v26 = v31;
  v27 = v29;
  (*(v31 + 16))(v29, v32, a5);
  v38 = a5;
  v39 = v27;
  v37 = v33;
  ViewModifier.requiring<A>(_:)();
  (*(v18 + 8))(v20, v17);
  (*(v26 + 8))(v27, a5);
  MEMORY[0x18D00A570](v25, v35, v21, v36);
  return (*(v22 + 8))(v25, v21);
}

uint64_t static ViewAlias._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  outlined init with copy of _ViewListInputs(a2, v14);
  type metadata accessor for SourceInput();
  swift_getWitnessTable();
  _GraphInputs.popLast<A, B>(_:)();
  v7 = v9;
  if (v9)
  {
    _GraphInputs.resetCurrentStyleableView()();
    LODWORD(v9) = v6;
    (*(v10 + 16))(&v9, v7, v10, v11, v12 | ((v13 & 1) << 32), v14, a3, a4, v7, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v14);
}

uint64_t storeEnumTagSinglePayload for AnySource(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t static NestedDynamicProperties._makeProperty<A>(in:container:fieldOffset:inputs:)()
{
  static DynamicPropertyCache.fields(of:)();
  _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)();

  return outlined consume of DynamicPropertyCache.Fields.Layout();
}

unint64_t lazy protocol witness table accessor for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollableContextModifier and conformance AccessibilityScrollableContextModifier);
  }

  return result;
}

uint64_t initializeWithCopy for _NavigationSplitReader.SplitPresentationModeLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_weakCopyInit();
  v7 = *(a2 + 16);
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 16) = v7;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 16);

  v10(a1 + v8, a2 + v8, v9);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));

  return a1;
}

uint64_t sub_18BFF9160()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t specialized static _NavigationSplitReader.SplitPresentationModeLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for _NavigationSplitReader.SplitPresentationModeLocation() + 28);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  swift_beginAccess();
  v8 = *(v5 + 16);
  v7 = *(v5 + 20);
  swift_beginAccess();
  if (v8 == *(v6 + 16) && v7 == *(v6 + 20))
  {
    v10 = static UUID.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t destroy for _NavigationSplitReader.SplitPresentationModeLocation(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  v4 = *(a2 + 24);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18BFF9510()
{
  type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>();
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  type metadata accessor for StaticIf();
  type metadata accessor for PickerContentView();
  type metadata accessor for SectionStyleModifier<MenuPickerOptionSectionStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Section();
  type metadata accessor for Section();
  type metadata accessor for StaticIf();
  lazy protocol witness table accessor for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>();
  lazy protocol witness table accessor for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle()
{
  result = lazy protocol witness table cache variable for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle;
  if (!lazy protocol witness table cache variable for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels()
{
  result = lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels;
  if (!lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels;
  if (!lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels;
  if (!lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels;
  if (!lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels;
  if (!lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels);
  }

  return result;
}

void type metadata accessor for Toggle<ToggleStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI6ToggleVyAA0C18StyleConfigurationV5LabelVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t CollectionViewCellModifier.resolvedBody(content:isInSidebar:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (*(v2 + 170) != 1)
  {
    LOBYTE(v5) = 0;
    goto LABEL_9;
  }

  if (*(v2 + 265))
  {
    if ((a1 & 1) == 0)
    {
      LOBYTE(v5) = 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  specialized Environment.wrappedValue.getter(*v3, *(v3 + 8), __src);
  LOBYTE(v5) = __src[0];
  if (LOBYTE(__src[0]) == 1 && (a1 & 1) != 0)
  {
LABEL_8:
    type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
    v5 = static SemanticFeature.isEnabled.getter() ^ 1;
  }

LABEL_9:
  v49 = v5;
  v7 = CollectionViewCellModifier.effectiveListRowInsets(_:)(v5 & 1);
  v9 = v8;
  v11 = v10;
  v13 = v12 + *(v3 + 240);
  v51 = static VerticalAlignment.firstTextBaseline.getter();
  v69 = 0;
  closure #1 in CollectionViewCellModifier.resolvedBody(content:isInSidebar:)(v3, __src, v7, v13, v9, v11);
  v94 = __src[11];
  v95 = __src[12];
  v96[0] = __src[13];
  *(v96 + 9) = *(&__src[13] + 9);
  v91 = __src[8];
  v92 = __src[9];
  v93 = __src[10];
  v87 = __src[4];
  v88 = __src[5];
  v89 = __src[6];
  v90 = __src[7];
  v83 = __src[0];
  v84 = __src[1];
  v85 = __src[2];
  v86 = __src[3];
  v97[11] = __src[11];
  v97[12] = __src[12];
  v98[0] = __src[13];
  *(v98 + 9) = *(&__src[13] + 9);
  v97[8] = __src[8];
  v97[9] = __src[9];
  v97[10] = __src[10];
  v97[4] = __src[4];
  v97[5] = __src[5];
  v97[6] = __src[6];
  v97[7] = __src[7];
  v97[0] = __src[0];
  v97[1] = __src[1];
  v97[2] = __src[2];
  v97[3] = __src[3];
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(&v83, v61);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(v97, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer), MEMORY[0x1E6981F40]);
  *(&v68[11] + 7) = v94;
  *(&v68[12] + 7) = v95;
  *(&v68[13] + 7) = v96[0];
  v68[14] = *(v96 + 9);
  *(&v68[7] + 7) = v90;
  *(&v68[8] + 7) = v91;
  *(&v68[9] + 7) = v92;
  *(&v68[10] + 7) = v93;
  *(&v68[3] + 7) = v86;
  *(&v68[4] + 7) = v87;
  *(&v68[5] + 7) = v88;
  *(&v68[6] + 7) = v89;
  *(v68 + 7) = v83;
  *(&v68[1] + 7) = v84;
  *(&v68[2] + 7) = v85;
  v50 = v69;
  v14 = specialized Environment.wrappedValue.getter(*(v3 + 16), *(v3 + 24));
  v15 = HIBYTE(v14);
  v16 = v14 & 0x100;
  outlined init with copy of AccessibilityScrollableContext(v3 + 280, v67);
  v66[0] = v15 & 1;
  outlined init with copy of AccessibilityScrollableContext(v67, v62);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v56 = 0;
  v57 = 0;
  *&v101 = v16 >> 6;
  *(&v101 + 1) = v101;
  LOBYTE(v102) = 0;
  v77 = 0uLL;
  *&v78 = 0;
  *(&v78 + 1) = 1;
  v79 = 0uLL;
  *&v99[0] = 0;
  BYTE8(v99[0]) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v54);
  __src[6] = v54[6];
  __src[7] = v54[7];
  __src[8] = v54[8];
  __src[2] = v54[2];
  __src[3] = v54[3];
  LOBYTE(__src[9]) = v55;
  __src[4] = v54[4];
  __src[5] = v54[5];
  __src[0] = v54[0];
  __src[1] = v54[1];
  AccessibilityProperties.init(identifier:label:traits:value:visibility:textLayoutProperties:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v61);
  __src[2] = v62[2];
  __src[3] = *v63;
  *(&__src[3] + 15) = *&v63[15];
  __src[0] = v62[0];
  __src[1] = v62[1];
  memcpy(&v65[7], __src, 0x170uLL);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>(v66, type metadata accessor for AccessibilityListCoreCellModifier<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>>);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v17 = *(v3 + 136);
  v103 = *(v3 + 120);
  v104 = v17;
  v105 = *(v3 + 152);
  v106 = *(v3 + 168);
  v18 = *(v3 + 104);
  v101 = *(v3 + 88);
  v102 = v18;
  specialized Environment.wrappedValue.getter(v52);
  v19 = CollectionViewCellModifier.effectiveListRowInsets(_:)(v49 & 1);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = *(v3 + 256);
  v27 = *(v3 + 264);
  v28 = v26;
  if (v26 == 1)
  {
    if (v49)
    {
      v29 = *(v3 + 136);
      v99[2] = *(v3 + 120);
      v99[3] = v29;
      v99[4] = *(v3 + 152);
      v100 = *(v3 + 168);
      v30 = *(v3 + 104);
      v99[0] = *(v3 + 88);
      v99[1] = v30;
      specialized Environment.wrappedValue.getter(&v77);
      v28 = *(&v81 + 1);
      v27 = v82;
      outlined copy of Transaction?(*(&v81 + 1));
      outlined destroy of ListContentStyling(&v77);
    }

    else
    {
      specialized Environment.wrappedValue.getter(*(v3 + 32), *(v3 + 40) | (*(v3 + 41) << 8), v99);
      v28 = *&v99[0];
      v27 = BYTE8(v99[0]);
    }
  }

  v79 = v52[2];
  v80 = v52[3];
  v81 = v52[4];
  LOBYTE(v82) = v53;
  v77 = v52[0];
  v78 = v52[1];
  *a2 = v51;
  *(a2 + 8) = 0;
  *(a2 + 16) = v50;
  v31 = v68[0];
  v32 = v68[1];
  v33 = v68[3];
  *(a2 + 49) = v68[2];
  *(a2 + 33) = v32;
  *(a2 + 17) = v31;
  v34 = v68[7];
  *(a2 + 113) = v68[6];
  v35 = v68[4];
  *(a2 + 97) = v68[5];
  *(a2 + 81) = v35;
  *(a2 + 65) = v33;
  v36 = v68[11];
  *(a2 + 177) = v68[10];
  v37 = v68[8];
  *(a2 + 161) = v68[9];
  *(a2 + 145) = v37;
  *(a2 + 129) = v34;
  v38 = v68[12];
  v39 = v68[13];
  *(a2 + 241) = v68[14];
  *(a2 + 225) = v39;
  *(a2 + 209) = v38;
  *(a2 + 193) = v36;
  memcpy((a2 + 257), v65, 0x177uLL);
  v40 = v75;
  *(a2 + 696) = v74;
  *(a2 + 712) = v40;
  v41 = v77;
  *(a2 + 728) = v76;
  v42 = v71;
  *(a2 + 632) = v70;
  *(a2 + 648) = v42;
  v43 = v73;
  *(a2 + 664) = v72;
  *(a2 + 680) = v43;
  v44 = v78;
  v45 = v79;
  *(a2 + 744) = v41;
  *(a2 + 760) = v44;
  v46 = v80;
  v47 = v81;
  *(a2 + 824) = v82;
  *(a2 + 792) = v46;
  *(a2 + 808) = v47;
  *(a2 + 776) = v45;
  *(a2 + 832) = v19;
  *(a2 + 840) = v21;
  *(a2 + 848) = v23;
  *(a2 + 856) = v25;
  *(a2 + 864) = v7;
  *(a2 + 872) = v13;
  *(a2 + 880) = v9;
  *(a2 + 888) = v11;
  *(a2 + 896) = v28;
  *(a2 + 904) = v27;
  *(a2 + 905) = v49 & 1;
  *(a2 + 906) = v49 & 1;
  return outlined copy of Transaction?(v26);
}

double CollectionViewCellModifier.effectiveListRowInsets(_:)(char a1)
{
  if (a1)
  {
    v2 = *(v1 + 136);
    v20 = *(v1 + 120);
    v21 = v2;
    v22 = *(v1 + 152);
    v23 = *(v1 + 168);
    v3 = *(v1 + 104);
    v18 = *(v1 + 88);
    v19 = v3;
    specialized Environment.wrappedValue.getter(v13);
    outlined destroy of ListContentStyling(v13);
    v4 = *v13;
  }

  else
  {
    v5 = *(v1 + 64);
    v18 = *(v1 + 48);
    v19 = v5;
    LOBYTE(v20) = *(v1 + 80);
    v4 = specialized Environment.wrappedValue.getter();
  }

  v6 = *(v1 + 192);
  v13[0] = *(v1 + 176);
  v13[1] = v6;
  v14[0] = *(v1 + 208);
  *(v14 + 9) = *(v1 + 217);
  v7 = COERCE_DOUBLE(OptionalEdgeInsets.top.getter());
  if ((v8 & 1) == 0)
  {
    v4 = v7;
  }

  v9 = *(v1 + 192);
  v16[2] = *(v1 + 176);
  v16[3] = v9;
  v17[0] = *(v1 + 208);
  *(v17 + 9) = *(v1 + 217);
  OptionalEdgeInsets.leading.getter();
  v10 = *(v1 + 192);
  v15[2] = *(v1 + 176);
  v15[3] = v10;
  v16[0] = *(v1 + 208);
  *(v16 + 9) = *(v1 + 217);
  OptionalEdgeInsets.bottom.getter();
  v11 = *(v1 + 192);
  v14[4] = *(v1 + 176);
  v14[5] = v11;
  v15[0] = *(v1 + 208);
  *(v15 + 9) = *(v1 + 217);
  OptionalEdgeInsets.trailing.getter();
  return v4;
}

double specialized Environment.wrappedValue.getter()
{
  if (v0[32] == 1)
  {
    return *v0;
  }

  v2 = static os_log_type_t.fault.getter();
  v3 = static Log.runtimeIssuesLog.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = *&v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x65736E4965676445, 0xEA00000000007374, &v6);
    _os_log_impl(&dword_18BD4A000, v3, v2, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x18D0110E0](v5, -1, -1);
    MEMORY[0x18D0110E0](v4, -1, -1);
  }

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  outlined destroy of Environment<NavigationEventHandlers>(v0, &lazy cache variable for type metadata for Environment<EdgeInsets>, MEMORY[0x1E697DA60]);

  return v6;
}

uint64_t initializeWithCopy for OutsetByRowInsets(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  outlined copy of Environment<EdgeInsets>.Content(v5, v6, v7, v8, v9);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  v10 = *(a2 + 72);
  LOBYTE(v6) = *(a2 + 80);
  outlined copy of Environment<Bool>.Content(v10, v6);
  *(a1 + 72) = v10;
  *(a1 + 80) = v6;
  v11 = *(a2 + 88);
  v12 = *(a2 + 96);
  v13 = *(a2 + 104);
  v14 = *(a2 + 112);
  v15 = *(a2 + 120);
  v16 = *(a2 + 128);
  v17 = *(a2 + 136);
  v18 = *(a2 + 144);
  outlined copy of Environment<ResolvedSubviewsSizingOptions>.Content(v11, v12, v13, v14, v15, v16, v17, v18);
  *(a1 + 88) = v11;
  *(a1 + 96) = v12;
  *(a1 + 104) = v13;
  *(a1 + 112) = v14;
  *(a1 + 120) = v15;
  *(a1 + 128) = v16;
  *(a1 + 136) = v17;
  *(a1 + 144) = v18;
  *(a1 + 145) = *(a2 + 145);
  return a1;
}

uint64_t outlined copy of Environment<ResolvedSubviewsSizingOptions>.Content(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
    return outlined copy of ResolvedSubviewsSizingOptions(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t destroy for OutsetByRowInsets(uint64_t a1)
{
  outlined consume of Environment<EdgeInsets>.Content(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  outlined consume of Environment<Bool>.Content(*(a1 + 72), *(a1 + 80));
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 120);
  v7 = *(a1 + 128);
  v8 = *(a1 + 136);
  v9 = *(a1 + 144);

  return outlined consume of Environment<ResolvedSubviewsSizingOptions>.Content(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t outlined consume of Environment<ResolvedSubviewsSizingOptions>.Content(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
    return outlined consume of ResolvedSubviewsSizingOptions(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t destroy for AccessibilityListCoreCellModifier(uint64_t result)
{
  v1 = *(result + 78);
  if (*(result + 78))
  {
    if (v1 == 1)
    {
      goto LABEL_7;
    }

    if (v1 != 2)
    {
      return result;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(result + 8);
LABEL_7:
}

uint64_t initializeWithCopy for AccessibilityScrollableContextModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 70);
  if (v4 == 2)
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  else if (v4 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 24) = v6;
    (**(v6 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 68) = *(a2 + 68);
  }

  *(a1 + 70) = v4;

  if (!*(a2 + 352))
  {
    memcpy((a1 + 72), (a2 + 72), 0x128uLL);
    return a1;
  }

  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  v8 = *(a2 + 160);

  if (!v8)
  {
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
LABEL_13:
    *(a1 + 176) = *(a2 + 176);

    goto LABEL_14;
  }

  if (v8 != 1)
  {
    v9 = *(a2 + 168);
    *(a1 + 160) = v8;
    *(a1 + 168) = v9;
    (**(v8 - 8))(a1 + 136, a2 + 136, v8);
    goto LABEL_13;
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
LABEL_14:
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v10 = (a1 + 200);
  v11 = (a2 + 200);
  v12 = *(a2 + 312);
  if (v12 == 1)
  {
    v13 = *(a2 + 312);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 312) = v13;
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 344) = *(a2 + 344);
    v14 = *(a2 + 248);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = v14;
    v15 = *(a2 + 280);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 280) = v15;
    v16 = *(a2 + 216);
    *v10 = *v11;
    *(a1 + 216) = v16;
  }

  else
  {
    *v10 = *v11;
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 225) = *(a2 + 225);
    *(a1 + 227) = *(a2 + 227);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    v17 = *(a2 + 272);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = v17;
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = v12;
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 344) = *(a2 + 344);
  }

  v18 = *(a2 + 352);
  v19 = *(a2 + 360);
  *(a1 + 352) = v18;
  *(a1 + 360) = v19;

  v20 = v19;
  return a1;
}

uint64_t initializeWithCopy for ListCoreCellEnvironment(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v7 = a2 + 72;
  v6 = *(a2 + 72);

  if (v6 == 1)
  {
    *(a1 + 72) = *v7;
    *(a1 + 80) = *(v7 + 8);
  }

  else
  {
    *(a1 + 72) = v6;
    *(a1 + 80) = *(a2 + 80);
  }

  v8 = *(a2 + 152);
  v9 = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v9;
  v10 = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v10;
  if (v8 == 1)
  {
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
  }

  else
  {
    *(a1 + 152) = v8;
    *(a1 + 160) = *(a2 + 160);
  }

  *(a1 + 161) = *(a2 + 161);
  return a1;
}

void destroy for AccessibilityScrollableContextModifier(uint64_t a1)
{
  v2 = *(a1 + 70);
  if (*(a1 + 70))
  {
    if (v2 == 1)
    {
      goto LABEL_7;
    }

    if (v2 != 2)
    {
      goto LABEL_8;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
LABEL_7:

LABEL_8:
  if (!*(a1 + 352))
  {
    return;
  }

  v3 = *(a1 + 160);
  if (!v3)
  {
    goto LABEL_12;
  }

  if (v3 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 136);
LABEL_12:
  }

  if (*(a1 + 312) != 1)
  {
  }

  v4 = *(a1 + 360);
}

uint64_t destroy for ListCoreCellEnvironment(uint64_t a1)
{

  if (*(a1 + 72) != 1)
  {
  }

  result = *(a1 + 152);
  if (result != 1)
  {
  }

  return result;
}

uint64_t specialized static ListCoreCellEnvironment.makeEnvironment(modifier:environment:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  Value = AGGraphGetValue();
  v8 = *(Value + 16);
  v7 = *(Value + 32);
  v31 = *Value;
  v32 = v8;
  v33 = v7;
  v9 = *(Value + 96);
  v11 = *(Value + 48);
  v10 = *(Value + 64);
  v36[0] = *(Value + 80);
  v36[1] = v9;
  v34 = v11;
  v35 = v10;
  v13 = *(Value + 128);
  v12 = *(Value + 144);
  v14 = *(Value + 112);
  *(&v36[4] + 15) = *(Value + 159);
  v36[3] = v13;
  v36[4] = v12;
  v36[2] = v14;
  if (BYTE1(v36[5]) == 1)
  {
    LOBYTE(v19) = 2;
    outlined init with copy of ListCoreCellEnvironment(&v31, &v25);
    EnvironmentValues.textCase.setter();
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v36[0];
    v19 = v31;
    v20 = v32;
    v15 = type metadata accessor for UICellConfigurationState();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    outlined init with copy of ListContentStyling(&v31, &v25);
    EnvironmentValues.configureListStyling(_:state:)(&v19, v5);
    outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(v5, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
    v27 = v21;
    v28 = v22;
    v29 = v23;
    v30 = v24;
    v25 = v19;
    v26 = v20;
    outlined destroy of ListContentStyling(&v25);
  }

  else
  {
    outlined init with copy of ListCoreCellEnvironment(&v31, &v25);
  }

  LOBYTE(v25) = 1;
  type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectableKey>, &type metadata for EnvironmentValues.IsSelectableKey, &protocol witness table for EnvironmentValues.IsSelectableKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSelectableKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectableKey>, &type metadata for EnvironmentValues.IsSelectableKey, &protocol witness table for EnvironmentValues.IsSelectableKey);

  PropertyList.subscript.setter();
  v16 = *(a2 + 8);
  if (v16)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {

    type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey);
    PropertyList.subscript.getter();
  }

  LOBYTE(v25) = BYTE1(v25);
  type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectedKey>, &type metadata for EnvironmentValues.IsSelectedKey, &protocol witness table for EnvironmentValues.IsSelectedKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSelectedKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectedKey>, &type metadata for EnvironmentValues.IsSelectedKey, &protocol witness table for EnvironmentValues.IsSelectedKey);

  PropertyList.subscript.setter();
  if (v16)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v25 = *(v36 + 8);
  v26 = *(&v36[1] + 8);
  type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey);

  PropertyList.subscript.setter();
  if (v16)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v25 = *(&v36[2] + 8);
  v26 = *(&v36[3] + 8);
  type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveListRowInsetsKey>, &type metadata for EffectiveListRowInsetsKey, &protocol witness table for EffectiveListRowInsetsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveListRowInsetsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveListRowInsetsKey>, &type metadata for EffectiveListRowInsetsKey, &protocol witness table for EffectiveListRowInsetsKey);

  PropertyList.subscript.setter();
  if (v16)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v17 = *(&v36[4] + 1);
  *&v25 = *(&v36[4] + 1);
  BYTE8(v25) = v36[5];
  type metadata accessor for InvertedViewInputPredicate<Solarium>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);
  outlined copy of Transaction?(v17);
  outlined copy of Transaction?(v17);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey);

  PropertyList.subscript.setter();
  if (v16)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of ListCoreCellEnvironment(&v31);
  outlined consume of ListItemTint?(v17);
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InvertedViewInputPredicate<Solarium>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static OnScrollVisibilityGeometryAction._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *))
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a2 + 6);
  v6 = *(a2 + 44);
  v25 = *(a2 + 28);
  v26 = v6;
  v27 = v3;
  v7 = *(a2 + 15);
  v13 = *(a2 + 8);
  v9 = *(a2 + 18);
  v8 = *(a2 + 19);
  v12 = *(a2 + 20);
  _ViewInputs.position.getter();
  swift_beginAccess();
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  swift_beginAccess();

  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder and conformance OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder();
  Attribute.init<A>(body:value:flags:update:)();
  v10 = AGGraphSetFlags();
  v15 = v27;
  v16 = v4;
  v17 = v5;
  v18 = v25;
  v19 = v26;
  v20 = v7;
  v21 = v13;
  v22 = v9;
  v23 = v8;
  v24 = v12;
  return a3(v10, &v15);
}

unint64_t lazy protocol witness table accessor for type OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder and conformance OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder()
{
  result = lazy protocol witness table cache variable for type OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder and conformance OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder;
  if (!lazy protocol witness table cache variable for type OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder and conformance OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder and conformance OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder);
  }

  return result;
}

__n128 __swift_memcpy53_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

__n128 GridItem.init(_:spacing:alignment:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, char a6@<W5>, __n128 *a7@<X8>)
{
  v7 = a1[1].n128_u8[0];
  result = *a1;
  *a7 = *a1;
  a7[1].n128_u8[0] = v7;
  a7[1].n128_u64[1] = a2;
  a7[2].n128_u8[0] = a3 & 1;
  a7[2].n128_u64[1] = a4;
  a7[3].n128_u64[0] = a5;
  a7[3].n128_u8[8] = a6 & 1;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>)
  {
    type metadata accessor for ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>();
    type metadata accessor for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type OnPlatformContainerSelectionModifier and conformance OnPlatformContainerSelectionModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(255, &lazy cache variable for type metadata for HStack<SectionStyleConfiguration.Header>, &type metadata for SectionStyleConfiguration.Header, &protocol witness table for SectionStyleConfiguration.Header, MEMORY[0x1E69817F0]);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>()
{
  if (!lazy cache variable for type metadata for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>);
    v0 = type metadata accessor for PlatformItemListGeneratingViewModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, type metadata accessor for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(255, &lazy cache variable for type metadata for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, &type metadata for SectionStyleConfiguration.RawContent, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    type metadata accessor for SectionStyleModifier<MenuSectionStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    lazy protocol witness table accessor for type _PreferenceTransformModifier<PlatformItemList.Key> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, type metadata accessor for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>);
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>();
    lazy protocol witness table accessor for type _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, lazy protocol witness table accessor for type HStack<SectionStyleConfiguration.Header> and conformance HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HStack<SectionStyleConfiguration.Header> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<SectionStyleConfiguration.Header> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<SectionStyleConfiguration.Header> and conformance HStack<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(255, &lazy cache variable for type metadata for HStack<SectionStyleConfiguration.Header>, &type metadata for SectionStyleConfiguration.Header, &protocol witness table for SectionStyleConfiguration.Header, MEMORY[0x1E69817F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<SectionStyleConfiguration.Header> and conformance HStack<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OnPlatformContainerSelectionModifier and conformance OnPlatformContainerSelectionModifier()
{
  result = lazy protocol witness table cache variable for type OnPlatformContainerSelectionModifier and conformance OnPlatformContainerSelectionModifier;
  if (!lazy protocol witness table cache variable for type OnPlatformContainerSelectionModifier and conformance OnPlatformContainerSelectionModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnPlatformContainerSelectionModifier and conformance OnPlatformContainerSelectionModifier);
  }

  return result;
}

void type metadata accessor for MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>()
{
  if (!lazy cache variable for type metadata for MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<PlatformItemListContentModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<OnPlatformContainerSelectionModifier>, lazy protocol witness table accessor for type OnPlatformContainerSelectionModifier and conformance OnPlatformContainerSelectionModifier);
    lazy protocol witness table accessor for type _ViewModifier_Content<PlatformItemListContentModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<OnPlatformContainerSelectionModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<OnPlatformContainerSelectionModifier>, lazy protocol witness table accessor for type OnPlatformContainerSelectionModifier and conformance OnPlatformContainerSelectionModifier);
    v0 = type metadata accessor for MergePlatformItemsView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>)
  {
    type metadata accessor for MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>();
    type metadata accessor for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MergePlatformItemsView<_ViewModifier_Content<OnPlatformContainerSelectionModifier>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>()
{
  if (!lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>)
  {
    v0 = type metadata accessor for PlatformItemListTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>);
    }
  }
}

uint64_t PickerBuilder.Content.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  PickerBuilder.Content.content.getter(a1, v6);
  (*(v8 + 56))(v3, v8);
  (*(v4 + 8))(v6, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  v17 = *(v10 + 8);
  v17(v12, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v17)(v15, AssociatedTypeWitness);
}

uint64_t PickerBuilder.Content.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for NestedDynamicProperties();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, v2, v6);
  return (*(*(v4 - 8) + 32))(a2, v8, v4);
}

uint64_t protocol witness for PickerContent._identifiedView.getter in conformance _TuplePickerContent<A, B>@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TupleView();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t partial apply for closure #1 in _DisabledPickerContent._identifiedView.getter(_BYTE *a1)
{
  result = type metadata accessor for _DisabledPickerContent();
  if (*a1 == 1)
  {
    v4 = *(v1 + *(result + 36) + ((*(*(result - 8) + 80) + 32) & ~*(*(result - 8) + 80))) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4 & 1;
  return result;
}

uint64_t closure #1 in SectionPickerStyle.Body.value.getter@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[3] = a2;
  v26 = a1;
  v27 = a5;
  v7 = type metadata accessor for PickerStyleConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - v9;
  v28[0] = &type metadata for SectionPickerStyle;
  v28[1] = a3;
  v28[2] = &protocol witness table for SectionPickerStyle;
  v28[3] = a4;
  v11 = type metadata accessor for _PickerValue();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v25 - v12;
  v14 = type metadata accessor for SectionPicker();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v25 - v19;
  SectionPickerStyle.Body.base.getter(v13);
  (*(v8 + 32))(v10, v13, v7);
  outlined init with copy of SubviewsCollection(v26, v28);
  KeyPath = swift_getKeyPath();
  SectionPicker.init(labelsVisibility:configuration:children:)(KeyPath, 0, v10, v28, v17);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v17, v14, WitnessTable);
  v23 = *(v15 + 8);
  v23(v17, v14);
  static ViewBuilder.buildExpression<A>(_:)(v20, v14, WitnessTable);
  return (v23)(v20, v14);
}

__n128 SectionPicker.init(labelsVisibility:configuration:children:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  v8 = type metadata accessor for SectionPicker();
  v9 = *(v8 + 36);
  v10 = type metadata accessor for PickerStyleConfiguration();
  (*(*(v10 - 8) + 32))(a5 + v9, a3, v10);
  v11 = a5 + *(v8 + 40);
  v12 = *(a4 + 16);
  *v11 = *a4;
  *(v11 + 16) = v12;
  result = *(a4 + 32);
  v14 = *(a4 + 48);
  *(v11 + 32) = result;
  *(v11 + 48) = v14;
  return result;
}

uint64_t initializeWithCopy for SectionPicker(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v9 + 16;
  v12 = *(v9 + 80);
  v13 = (v12 | 7) + 9;
  v15 = ((a2 + v13) & ~(v12 | 7));
  v14 = ((v13 + a1) & ~(v12 | 7));
  *v14 = *v15;
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = v16 + v12 + 8;
  v19 = v17 + v12 + 8;

  v10(v18 & ~v12, v19 & ~v12, v8);
  v20 = *(v11 + 48) + ((v12 + 16) & ~v12) + 7;
  v21 = (v14 + v20) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v15 + v20) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);
  v23 = (v20 & 0xFFFFFFFFFFFFFFF8) + 9;
  v24 = v14 + v23;
  v25 = v15 + v23;
  v26 = *(v15 + v23 + 31);
  *(v24 + 31) = v26;
  *(v24 + 39) = *(v15 + v23 + 39);
  v27 = **(v26 - 8);

  v27(v24 + 7, v25 + 7, v26);
  v28 = *(v25 + 47);
  *(v24 + 47) = v28;
  *(v24 + 55) = *(v25 + 55);
  *(v24 + 63) = *(v25 + 63);
  v29 = v28;

  return a1;
}

uint64_t destroy for SectionPicker(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (a1 + (v6 | 7) + 9) & ~(v6 | 7);

  (*(v5 + 8))((v6 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6, v4);
  v8 = *(v5 + 64) + ((v6 + 16) & ~v6) + 7;

  v9 = v7 + (v8 & 0xFFFFFFFFFFFFFFF8);
  __swift_destroy_boxed_opaque_existential_1(v9 + 16);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance LabelsHiddenModifier@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 2;
  return result;
}

uint64_t SectionPicker.body.getter(uint64_t a1)
{
  v2 = v1;
  v4 = v2 + *(a1 + 36);
  v5 = *(v4 + *(type metadata accessor for PickerStyleConfiguration() + 36));
  outlined init with copy of SubviewsCollection(v2 + *(a1 + 40), &v26);
  PickerContentView.init(selection:items:)(v5, &v26, v32);
  KeyPath = swift_getKeyPath();
  v25 = 0;
  v7 = swift_getKeyPath();
  v24 = 0;
  v8 = swift_getKeyPath();
  v23 = 0;
  *&v33[0] = 0x4038000000000000;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();

  ScaledMetric.init(wrappedValue:)();
  v22 = v27;
  v21 = v29;
  *&v13 = KeyPath;
  BYTE8(v13) = 0;
  *&v14 = v7;
  BYTE8(v14) = 0;
  v15 = v8;
  v16 = 0uLL;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = v26;
  LOBYTE(v18) = v27;
  *(&v18 + 1) = v28;
  LOBYTE(v19) = v29;
  *(&v19 + 1) = v30;
  v20 = v31;
  v9 = type metadata accessor for PickerContentView();
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle();
  View.toggleStyle<A>(_:)(&v13, v9, &type metadata for CheckmarkToggleStyle, WitnessTable);
  v33[4] = v17;
  v33[5] = v18;
  v33[6] = v19;
  v34 = v20;
  v33[0] = v13;
  v33[1] = v14;
  v33[2] = v15;
  v33[3] = v16;
  outlined destroy of CheckmarkToggleStyle(v33);
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  type metadata accessor for StaticIf();
  type metadata accessor for SectionStyleModifier<MenuPickerOptionSectionStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for Section();
  type metadata accessor for Section();
  lazy protocol witness table accessor for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  StaticIf<>.init<A>(in:then:else:)();
  (*(*(v9 - 8) + 8))(v32, v9);
  return (*(*(v10 - 8) + 8))(&v26, v10);
}

__n128 PickerContentView.init(selection:items:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  v6 = *(a2 + 16);
  *(a3 + 24) = *a2;
  *(a3 + 40) = v6;
  result = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a3 + 56) = result;
  *(a3 + 72) = v8;
  return result;
}

uint64_t View.toggleStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToggleStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t initializeWithCopy for CheckmarkToggleStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  outlined copy of Environment<EdgeInsets>.Content(v8, v9, v10, v11, v12);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v12;
  v13 = *(a2 + 72);
  LOBYTE(v9) = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v13, v9);
  *(a1 + 72) = v13;
  *(a1 + 80) = v9;
  v14 = *(a2 + 88);
  LOBYTE(v9) = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v14, v9);
  *(a1 + 88) = v14;
  *(a1 + 96) = v9;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t initializeWithCopy for PickerContentView(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = a2[2];
  v6 = *(a2 + 3);
  *(a1 + 48) = v6;
  v7 = v6;
  v8 = **(v6 - 8);

  v8(a1 + 24, (a2 + 3), v7);
  v9 = a2[8];
  v10 = a2[9];
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  *(a1 + 80) = a2[10];
  v11 = v9;

  return a1;
}

uint64_t destroy for CheckmarkToggleStyle(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<EdgeInsets>.Content(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  outlined consume of Environment<Selector?>.Content(*(a1 + 72), *(a1 + 80));
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t closure #1 in SectionPicker.body.getter()
{
  type metadata accessor for SectionPicker();
  SectionPicker.styledMenuHeader.getter();
  v6[0] = v8[0];
  v6[1] = v8[1];
  v6[2] = v8[2];
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  v0 = type metadata accessor for StaticIf();
  type metadata accessor for PickerContentView();
  type metadata accessor for SectionStyleModifier<MenuPickerOptionSectionStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v1 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  Section<>.init(header:content:)(v6, partial apply for closure #1 in closure #1 in SectionPicker.body.getter, v0, v1, v7);
  v2 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v7, v2, WitnessTable);
  v4 = *(*(v2 - 8) + 8);
  v4(v7, v2);
  static ViewBuilder.buildExpression<A>(_:)(v8, v2, WitnessTable);
  return (v4)(v8, v2);
}

uint64_t SectionPicker.styledMenuHeader.getter()
{
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  lazy protocol witness table accessor for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels();
  v5 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)();
  v3[0] = v6;
  v3[1] = v7;
  v3[2] = v8;
  v0 = type metadata accessor for StaticIf();
  v1 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v3, v0, v1);
  v6 = v9;
  v7 = v10;
  v8 = v11;
  return static ViewBuilder.buildExpression<A>(_:)(&v6, v0, v1);
}

uint64_t closure #1 in SectionPicker.styledMenuHeader.getter()
{
  v0 = type metadata accessor for SectionPicker();
  SectionPicker.styledHeader.getter(v0);
  v6[0] = v6[1];
  type metadata accessor for PickerStyleConfiguration.Label();
  v1 = type metadata accessor for Optional();
  v5 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v6, v1, WitnessTable);
  v4 = v6[2];
  return static ViewBuilder.buildExpression<A>(_:)(&v4, v1, WitnessTable);
}

uint64_t SectionPicker.styledHeader.getter(uint64_t a1)
{
  if (specialized Environment.wrappedValue.getter(*v1, *(v1 + 8)) == 2)
  {
    v11 = 1;
    type metadata accessor for PickerStyleConfiguration.Label();
    static ToolbarContentBuilder.buildIf<A>(_:)(&v11, &v12);
    v5 = v12;
  }

  else
  {
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(*(a1 + 16), *(a1 + 24), v3, v4);
    v6 = type metadata accessor for PickerStyleConfiguration.Label();
    v7 = static ViewBuilder.buildExpression<A>(_:)(v6, v6, &protocol witness table for PickerStyleConfiguration<A>.Label);
    static ViewBuilder.buildExpression<A>(_:)(v7, v6, &protocol witness table for PickerStyleConfiguration<A>.Label);
    v15 = 0;
    static ToolbarContentBuilder.buildIf<A>(_:)(&v15, &v16);
    v5 = v16;
  }

  v14 = v5;
  type metadata accessor for PickerStyleConfiguration.Label();
  v8 = type metadata accessor for Optional();
  v13 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  WitnessTable = swift_getWitnessTable();
  return static ViewBuilder.buildExpression<A>(_:)(&v14, v8, WitnessTable);
}

uint64_t closure #2 in SectionPicker.styledMenuHeader.getter(uint64_t a1)
{
  if (specialized Environment.wrappedValue.getter(*a1, *(a1 + 8)) == 1)
  {
    v1 = type metadata accessor for SectionPicker();
    SectionPicker.styledHeader.getter(v1);
    LOBYTE(v9) = v10;
    type metadata accessor for PickerStyleConfiguration.Label();
    v2 = type metadata accessor for Optional();
    WitnessTable = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(&v9, v2, WitnessTable);
    v10 = v8;
    static ViewBuilder.buildExpression<A>(_:)(&v10, v2, WitnessTable);
    v9 = v7;
  }

  else
  {
    v9 = 256;
    type metadata accessor for PickerStyleConfiguration.Label();
    type metadata accessor for Optional();
    swift_getWitnessTable();
  }

  static ToolbarContentBuilder.buildIf<A>(_:)(&v9, &v10);
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for Optional();
  v4 = type metadata accessor for Optional();
  swift_getWitnessTable();
  v5 = swift_getWitnessTable();
  return static ViewBuilder.buildExpression<A>(_:)(&v10, v4, v5);
}

uint64_t Section<>.init(header:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(v13 + 16))(v17, a1, v18, v15);
  a2(v19);
  (*(v13 + 8))(a1, a3);
  return Section.init(header:content:footer:)(v17, v11, v20, a3, a4, MEMORY[0x1E6981E70], a5);
}

uint64_t closure #1 in closure #1 in SectionPicker.body.getter(uint64_t a1)
{
  type metadata accessor for PickerContentView();
  type metadata accessor for SectionStyleModifier<MenuPickerOptionSectionStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v2 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(a1, v2, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)(v5, v2, WitnessTable);
  return (*(*(v2 - 8) + 8))(v5, v2);
}

uint64_t destroy for PickerContentView(uint64_t a1)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));

  __swift_destroy_boxed_opaque_existential_1(a1 + 24);
}

uint64_t closure #2 in SectionPicker.body.getter()
{
  v0 = type metadata accessor for SectionPicker();
  SectionPicker.styledHeader.getter(v0);
  v7 = v9[0];
  type metadata accessor for PickerStyleConfiguration.Label();
  v1 = type metadata accessor for Optional();
  type metadata accessor for PickerContentView();
  type metadata accessor for SectionStyleModifier<MenuPickerOptionSectionStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v2 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  Section<>.init(header:content:)(&v7, partial apply for closure #1 in closure #2 in SectionPicker.body.getter, v1, v2, v8);
  v3 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v8, v3, WitnessTable);
  v5 = *(*(v3 - 8) + 8);
  v5(v8, v3);
  static ViewBuilder.buildExpression<A>(_:)(v9, v3, WitnessTable);
  return (v5)(v9, v3);
}

unint64_t lazy protocol witness table accessor for type SplitViewNavigationIndicator and conformance SplitViewNavigationIndicator()
{
  result = lazy protocol witness table cache variable for type SplitViewNavigationIndicator and conformance SplitViewNavigationIndicator;
  if (!lazy protocol witness table cache variable for type SplitViewNavigationIndicator and conformance SplitViewNavigationIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SplitViewNavigationIndicator and conformance SplitViewNavigationIndicator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize>, &type metadata for EnvironmentValues.MenuSectionsControlSize, &protocol witness table for EnvironmentValues.MenuSectionsControlSize, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.MenuSectionsControlSize> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t assignWithTake for MenuSectionStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of Environment<Bool>.Content(v4, v5);
  return a1;
}

double MenuSectionStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v25 = static VerticalAlignment.center.getter();
  *&v46 = 0;
  *(&v46 + 1) = 0xE000000000000000;
  v33[0] = Namespace.wrappedValue.getter();
  _print_unlocked<A, B>(_:_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v46;
  v12 = v11;
  specialized Environment.wrappedValue.getter(v9, v10, v58);
  v13 = v58[0];
  v14 = swift_allocObject();
  *(v14 + 16) = 2;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0xC000000000000000;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0u;
  *(v14 + 120) = 0u;
  *(v14 + 136) = 0;
  *(v14 + 137) = v13;
  v15 = 0;
  if (a2)
  {
    *&v46 = a1;
    *(&v46 + 1) = a2;
    LOBYTE(v47) = a3 & 1;
    type metadata accessor for _EnvironmentKeyWritingModifier<ControlSize>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](v33);
    if (LOBYTE(v33[0]) != 1)
    {
      v15 = 1;
    }
  }

  KeyPath = swift_getKeyPath();
  outlined copy of Environment<Bool>.Content(KeyPath, 0);
  outlined consume of Environment<Bool>.Content(KeyPath, 0);
  v57 = 1;
  v55 = v15;
  v53 = 0;
  v27 = v25;
  LOBYTE(v28) = 1;
  *(&v28 + 1) = *v56;
  DWORD1(v28) = *&v56[3];
  *(&v28 + 1) = partial apply for closure #1 in View.platformItemIdentifier(_:);
  *&v29 = v12;
  BYTE8(v29) = v15;
  *(&v29 + 9) = *v54;
  HIDWORD(v29) = *&v54[3];
  *&v30 = 0;
  *(&v30 + 1) = KeyPath;
  LOBYTE(v31) = 0;
  *(&v31 + 1) = *v52;
  DWORD1(v31) = *&v52[3];
  *(&v31 + 1) = partial apply for closure #2 in View.platformItemChildren<A>(systemItem:primaryAction:menuIndicatorVisibility:controlSize:children:);
  v32 = v14;
  v24 = swift_getKeyPath();
  LOBYTE(v33[0]) = 0;
  v23 = swift_getKeyPath();
  v26[0] = 0;
  v22 = swift_getKeyPath();
  v26[88] = 0;
  v21 = v33[0];
  v48 = v29;
  v49 = v30;
  v50 = v31;
  v51 = v14;
  v46 = v25;
  v47 = v28;
  v33[0] = v25;
  v33[1] = 0;
  v34 = 1;
  *&v35[3] = *&v56[3];
  *v35 = *v56;
  v36 = partial apply for closure #1 in View.platformItemIdentifier(_:);
  v37 = v12;
  v38 = v15;
  *&v39[3] = *&v54[3];
  *v39 = *v54;
  v40 = 0;
  v41 = KeyPath;
  v42 = 0;
  *&v43[3] = *&v52[3];
  *v43 = *v52;
  v44 = partial apply for closure #2 in View.platformItemChildren<A>(systemItem:primaryAction:menuIndicatorVisibility:controlSize:children:);
  v45 = v14;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(&v27, v26);
  outlined destroy of ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(v33);
  v17 = v49;
  *(a4 + 32) = v48;
  *(a4 + 48) = v17;
  *(a4 + 64) = v50;
  v18 = v51;
  result = *&v46;
  v20 = v47;
  *a4 = v46;
  *(a4 + 16) = v20;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 80) = v18;
  *(a4 + 104) = 1;
  *(a4 + 112) = v24;
  *(a4 + 120) = v21;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 128) = v23;
  *(a4 + 152) = 0;
  *(a4 + 153) = 0;
  *(a4 + 160) = v22;
  *(a4 + 168) = 0;
  return result;
}

uint64_t sub_18BFFE9B8()
{

  return swift_deallocObject();
}

uint64_t sub_18BFFE9F0()
{
  v1 = *(v0 + 48);
  if (v1 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1, *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  }

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationVie()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperat;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperat)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<And( 255,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInp,  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp,  type metadata accessor for StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPred,  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp,  lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>,  lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperat);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<And(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<SectionStyleConfiguration.Header>, _PreferenceTransformModifier<PlatformItemList.Key>>, PlatformItemListGeneratingViewModifier<SelectionPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<MenuSectionStyle>>, PlatformItemListContentModifier>, _PreferenceTransformModifier<PlatformItemList.Key>>>>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for OnPlatformContainerSelectionModifier(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v4 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v4;
  }

  else
  {
    *a1 = *a2;
  }

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  outlined copy of Environment<Selector?>.Content(v5, v6);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 65);
  v11 = *(a2 + 64);
  outlined copy of Environment<KeyboardShortcut?>.Content(v7, v8, v9, v11, v10);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v11;
  *(a1 + 65) = v10;
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  return a1;
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_4(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>, type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>>);
    }
  }
}

uint64_t destroy for OnPlatformContainerSelectionModifier(uint64_t a1)
{
  if (*a1)
  {
  }

  outlined consume of Environment<Selector?>.Content(*(a1 + 24), *(a1 + 32));
  outlined consume of Environment<KeyboardShortcut?>.Content(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 65));
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

void type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    _s7SwiftUI25ContainerContextPredicateVyAA04ListcD0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, lazy protocol witness table accessor for type DefaultListNavigationLinkStyle and conformance DefaultListNavigationLinkStyle, &unk_1EFFDC3C8, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v4 = type metadata accessor for StaticIf();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for ToggleStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label);
  }

  return result;
}

uint64_t sub_18BFFF0A0()
{
  lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ResolvedToggleStyle and conformance ResolvedToggleStyle();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type ResolvedToggleStyle and conformance ResolvedToggleStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedToggleStyle and conformance ResolvedToggleStyle;
  if (!lazy protocol witness table cache variable for type ResolvedToggleStyle and conformance ResolvedToggleStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedToggleStyle and conformance ResolvedToggleStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedToggleStyle and conformance ResolvedToggleStyle;
  if (!lazy protocol witness table cache variable for type ResolvedToggleStyle and conformance ResolvedToggleStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedToggleStyle and conformance ResolvedToggleStyle);
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedToggleStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedToggleStyle and conformance ResolvedToggleStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t type metadata completion function for AccessibilityToggleModifier.RepresentationModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>)
  {
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, &unk_1EFFA4A18, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    type metadata accessor for AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultListNavigationLinkStyle and conformance DefaultListNavigationLinkStyle()
{
  result = lazy protocol witness table cache variable for type DefaultListNavigationLinkStyle and conformance DefaultListNavigationLinkStyle;
  if (!lazy protocol witness table cache variable for type DefaultListNavigationLinkStyle and conformance DefaultListNavigationLinkStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultListNavigationLinkStyle and conformance DefaultListNavigationLinkStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>)
  {
    _s7SwiftUI7BindingVySbGMaTm_1(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18], MEMORY[0x1E69808E8]);
    type metadata accessor for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>();
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, &unk_1EFFA4A18, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>();
    type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>)
  {
    type metadata accessor for ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>();
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, KeyboardShortcutBindingBehavior<ToggleStyleConfiguration.Label>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, KeyboardShortcutBindingBehavior<ToggleStyleConfiguration.Label>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>();
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for KeyboardShortcutBindingBehavior<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for KeyboardShortcutBindingBehavior);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, KeyboardShortcutBindingBehavior<ToggleStyleConfiguration.Label>>);
    }
  }
}

void type metadata accessor for AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>)
  {
    lazy protocol witness table accessor for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody();
    v0 = type metadata accessor for AccessibilityToggleModifier.RepresentationModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>()
{
  if (!lazy cache variable for type metadata for InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>(255);
    lazy protocol witness table accessor for type InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>> and conformance InvertedViewInputPredicate<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>);
    v0 = type metadata accessor for InvertedViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody()
{
  result = lazy protocol witness table cache variable for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody;
  if (!lazy protocol witness table cache variable for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody;
  if (!lazy protocol witness table cache variable for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody);
  }

  return result;
}

void type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>)
  {
    v0 = type metadata accessor for AccessibilityLargeContentViewModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, ToggleStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>();
    _s7SwiftUI25ContainerContextPredicateVyAA04ListcD0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, lazy protocol witness table accessor for type LabeledNavigationLinkButtonStyle and conformance LabeledNavigationLinkButtonStyle, &unk_1EFFDC3A8, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LabeledNavigationLinkButtonStyle and conformance LabeledNavigationLinkButtonStyle()
{
  result = lazy protocol witness table cache variable for type LabeledNavigationLinkButtonStyle and conformance LabeledNavigationLinkButtonStyle;
  if (!lazy protocol witness table cache variable for type LabeledNavigationLinkButtonStyle and conformance LabeledNavigationLinkButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledNavigationLinkButtonStyle and conformance LabeledNavigationLinkButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>();
    lazy protocol witness table accessor for type ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance ButtonBehavior<A>(&lazy protocol witness table cache variable for type AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label> and conformance AccessibilityToggleModifier<A>.RepresentationModifier<A1>, type metadata accessor for AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>, type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>);
    lazy protocol witness table accessor for type InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>> and conformance InvertedViewInputPredicate<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, &unk_1EFFA4A18, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    _s7SwiftUI25ContainerContextPredicateVyAA04ListcD0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, lazy protocol witness table accessor for type DefaultListNavigationLinkStyle and conformance DefaultListNavigationLinkStyle, &unk_1EFFDC3C8, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier>(255);
    lazy protocol witness table accessor for type InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>> and conformance InvertedViewInputPredicate<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListNavigationLinkStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>;
  if (!lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>)
  {
    _s7SwiftUI7BindingVySbGMaTm_1(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18], MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>> and conformance InvertedViewInputPredicate<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>>, PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance ButtonBehavior<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedToggleStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody();

  return MEMORY[0x1EEDE2378](a1, a2, a3, v6);
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    _s7SwiftUI25ContainerContextPredicateVyAA04ListcD0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle>, lazy protocol witness table accessor for type LabeledNavigationLinkButtonStyle and conformance LabeledNavigationLinkButtonStyle, &unk_1EFFDC3A8, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<LabeledNavigationLinkButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

uint64_t type metadata accessor for DefaultListNavigationLinkStyle.ListLink()
{
  result = type metadata singleton initialization cache for DefaultListNavigationLinkStyle.ListLink;
  if (!type metadata singleton initialization cache for DefaultListNavigationLinkStyle.ListLink)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DefaultListNavigationLinkStyle.ListLink()
{
  result = type metadata accessor for PrimitiveButtonStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ResolvedToggleStyleBody(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for VStack<DefaultListNavigationLinkStyle.ListLink>()
{
  if (!lazy cache variable for type metadata for VStack<DefaultListNavigationLinkStyle.ListLink>)
  {
    type metadata accessor for DefaultListNavigationLinkStyle.ListLink();
    lazy protocol witness table accessor for type InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>> and conformance InvertedViewInputPredicate<A>(&lazy protocol witness table cache variable for type DefaultListNavigationLinkStyle.ListLink and conformance DefaultListNavigationLinkStyle.ListLink, type metadata accessor for DefaultListNavigationLinkStyle.ListLink);
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<DefaultListNavigationLinkStyle.ListLink>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Toggle<ToggleStyleConfiguration.Label> and conformance Toggle<A>()
{
  result = lazy protocol witness table cache variable for type Toggle<ToggleStyleConfiguration.Label> and conformance Toggle<A>;
  if (!lazy protocol witness table cache variable for type Toggle<ToggleStyleConfiguration.Label> and conformance Toggle<A>)
  {
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for Toggle<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for Toggle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Toggle<ToggleStyleConfiguration.Label> and conformance Toggle<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect>, HandGestureShortcutInteractiveControl> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect>, HandGestureShortcutInteractiveControl>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect>, HandGestureShortcutInteractiveControl>)
  {
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect>, &unk_1EFFA4A98, &type metadata for ArchivesInteractiveControlsEffect, MEMORY[0x1E697E830]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect>, HandGestureShortcutInteractiveControl>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect>, &unk_1EFFA4A98, &type metadata for ArchivesInteractiveControlsEffect, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ResolvedToggleStyleBody.ArchiveBody and conformance ResolvedToggleStyleBody.ArchiveBody();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedToggleStyleBody.ArchiveBody and conformance ResolvedToggleStyleBody.ArchiveBody()
{
  result = lazy protocol witness table cache variable for type ResolvedToggleStyleBody.ArchiveBody and conformance ResolvedToggleStyleBody.ArchiveBody;
  if (!lazy protocol witness table cache variable for type ResolvedToggleStyleBody.ArchiveBody and conformance ResolvedToggleStyleBody.ArchiveBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedToggleStyleBody.ArchiveBody and conformance ResolvedToggleStyleBody.ArchiveBody);
  }

  return result;
}

void type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToggleStyleModifier<DefaultToggleStyle> and conformance ToggleStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type ToggleStyleModifier<DefaultToggleStyle> and conformance ToggleStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type ToggleStyleModifier<DefaultToggleStyle> and conformance ToggleStyleModifier<A>)
  {
    type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<DefaultToggleStyle>, lazy protocol witness table accessor for type DefaultToggleStyle and conformance DefaultToggleStyle, &type metadata for DefaultToggleStyle, type metadata accessor for ToggleStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleStyleModifier<DefaultToggleStyle> and conformance ToggleStyleModifier<A>);
  }

  return result;
}

uint64_t type metadata completion function for NavigationLinkLabel()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultToggleStyle and conformance DefaultToggleStyle()
{
  result = lazy protocol witness table cache variable for type DefaultToggleStyle and conformance DefaultToggleStyle;
  if (!lazy protocol witness table cache variable for type DefaultToggleStyle and conformance DefaultToggleStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultToggleStyle and conformance DefaultToggleStyle);
  }

  return result;
}

void type metadata accessor for ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_4(255, &lazy cache variable for type metadata for NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for NavigationLinkLabel);
    _s7SwiftUI25ContainerContextPredicateVyAA04ListcD0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>, lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle, &type metadata for DefaultButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ToggleStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_18C000CC0()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label> and conformance NavigationLinkLabel<A>()
{
  result = lazy protocol witness table cache variable for type NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label> and conformance NavigationLinkLabel<A>;
  if (!lazy protocol witness table cache variable for type NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label> and conformance NavigationLinkLabel<A>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_4(255, &lazy cache variable for type metadata for NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for NavigationLinkLabel);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationLinkLabel<PrimitiveButtonStyleConfiguration.Label> and conformance NavigationLinkLabel<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>>, ToggleStyleModifier<PlatformFallbackToggleStyle>> and conformance <> ModifiedContent<A(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<_DisclosureIndicator, SquareLayout>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>>, ToggleStyleModifier<PlatformFallbackToggleStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>>, ToggleStyleModifier<PlatformFallbackToggleStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<PlatformFallbackToggleStyle>, lazy protocol witness table accessor for type PlatformFallbackToggleStyle and conformance PlatformFallbackToggleStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>>, ToggleStyleModifier<PlatformFallbackToggleStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>)
  {
    _s7SwiftUI6ToggleVyAA0C18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for Toggle<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for Toggle);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>)
  {
    _s7SwiftUI6ToggleVyAA0C18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<ButtonToggleStyle>, lazy protocol witness table accessor for type ButtonToggleStyle and conformance ButtonToggleStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ToggleStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ButtonToggleStyle and conformance ButtonToggleStyle()
{
  result = lazy protocol witness table cache variable for type ButtonToggleStyle and conformance ButtonToggleStyle;
  if (!lazy protocol witness table cache variable for type ButtonToggleStyle and conformance ButtonToggleStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonToggleStyle and conformance ButtonToggleStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<DefaultListToggleStyle>, lazy protocol witness table accessor for type DefaultListToggleStyle and conformance DefaultListToggleStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultListToggleStyle and conformance DefaultListToggleStyle()
{
  result = lazy protocol witness table cache variable for type DefaultListToggleStyle and conformance DefaultListToggleStyle;
  if (!lazy protocol witness table cache variable for type DefaultListToggleStyle and conformance DefaultListToggleStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultListToggleStyle and conformance DefaultListToggleStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<DefaultListToggleStyle>, lazy protocol witness table accessor for type DefaultListToggleStyle and conformance DefaultListToggleStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<ToolbarToggleStyle>, lazy protocol witness table accessor for type ToolbarToggleStyle and conformance ToolbarToggleStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarToggleStyle and conformance ToolbarToggleStyle()
{
  result = lazy protocol witness table cache variable for type ToolbarToggleStyle and conformance ToolbarToggleStyle;
  if (!lazy protocol witness table cache variable for type ToolbarToggleStyle and conformance ToolbarToggleStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarToggleStyle and conformance ToolbarToggleStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<AccessibilityToggleStyle>, lazy protocol witness table accessor for type AccessibilityToggleStyle and conformance AccessibilityToggleStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityToggleStyle and conformance AccessibilityToggleStyle()
{
  result = lazy protocol witness table cache variable for type AccessibilityToggleStyle and conformance AccessibilityToggleStyle;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleStyle and conformance AccessibilityToggleStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleStyle and conformance AccessibilityToggleStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformFallbackToggleStyle and conformance PlatformFallbackToggleStyle()
{
  result = lazy protocol witness table cache variable for type PlatformFallbackToggleStyle and conformance PlatformFallbackToggleStyle;
  if (!lazy protocol witness table cache variable for type PlatformFallbackToggleStyle and conformance PlatformFallbackToggleStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformFallbackToggleStyle and conformance PlatformFallbackToggleStyle);
  }

  return result;
}

uint64_t sub_18C0017D4()
{
  type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>?(255, &lazy cache variable for type metadata for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>?, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>, MEMORY[0x1E69E6720]);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();

  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>,  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ToggleStyleModifier<ButtonToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for StyleContextAcceptsPredicate<SidebarListStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>)
  {
    v0 = type metadata accessor for StyleContextAcceptsPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ToggleStyleModifier<DefaultListToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToggleStyleModifier<ToolbarToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ToggleStyleModifier<AccessibilityToggleStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for Button<ToggleStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for Button<ToggleStyleConfiguration.Label>)
  {
    v0 = type metadata accessor for Button();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Button<ToggleStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Font?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for [SwiftUIAnySortComparator](255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for Font?(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_1(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for AnyAccessibilityValue?(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_2(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    _s7SwiftUI4FontVSgMaTm_1(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_3(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<EdgeInsets>(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    _s7SwiftUI5ColorVSgMaTm_1(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_5(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_6(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for AccessibilityTableContext?(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_7(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    _sSiSgMaTm_1(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_4(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>)
  {
    _s7SwiftUI5ColorVSgMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>, MEMORY[0x1E69816F0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_4(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>);
    type metadata accessor for StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void FetchRequest.wrappedValue.getter()
{
  FetchRequest.results.getter();
  outlined consume of FetchedResults<A>?<A>(v1, v2);
  v0 = FetchRequest.controller.getter();
  FetchController.results.getter();
}

uint64_t FetchRequest.results.getter()
{
  type metadata accessor for FetchedResults();
  type metadata accessor for Optional();
  type metadata accessor for State();
  return State.wrappedValue.getter();
}

void *FetchController.fetchIfNeeded()()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  v2 = *(v0 + v1);
  if (v2 != 1)
  {
    return v2;
  }

  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80));
  if (result)
  {
    v12[0] = 0;
    if ([result performFetch_])
    {
      v4 = v12[0];
    }

    else
    {
      v5 = v12[0];
      v6 = _convertNSErrorToError(_:)();

      swift_willThrow();
      static os_log_type_t.fault.getter();
      v7 = static Log.runtimeIssuesLog.getter();
      type metadata accessor for _ContiguousArrayStorage<CVarArg>();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_18CD63400;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = v10;
      *(v8 + 56) = MEMORY[0x1E69E6158];
      *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v8 + 32) = v9;
      *(v8 + 40) = v11;
      os_log(_:dso:log:_:_:)();
    }

    *(v0 + v1) = 0;
    return v2;
  }

  __break(1u);
  return result;
}

id partial apply for implicit closure #3 in implicit closure #2 in implicit closure #1 in variable initialization expression of FetchRequest._controller@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;

  return FetchedResults.init(_:)(v3, a2);
}

id FetchedResults.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x80));
  if (!v4 || (result = [v4 fetchedObjects]) == 0)
  {
    result = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
  }

  *a2 = result;
  a2[1] = a1;
  return result;
}

void destroy for PlatformBarUpdater.UpdateContext(uint64_t a1)
{
  v2 = *(a1 + 8);
}

id protocol witness for Collection.endIndex.getter in conformance FetchedResults<A>@<X0>(void *a1@<X8>)
{
  result = FetchedResults.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for PaletteSelectionEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65285 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaletteSelectionEffect(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65285 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 6;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t sub_18C002DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance FetchedResults<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E5F90], MEMORY[0x1E69E5F58]);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E66A8], MEMORY[0x1E69E5F48]);
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *sub_18C00300C(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

void type metadata accessor for StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v4_4>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<TextPlatformItemListFlags>, &type metadata for TextPlatformItemListFlags, &protocol witness table for TextPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier>)
  {
    type metadata accessor for StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LabelGroup<PrimitiveButtonStyleConfiguration.Label> and conformance LabelGroup<A>()
{
  result = lazy protocol witness table cache variable for type LabelGroup<PrimitiveButtonStyleConfiguration.Label> and conformance LabelGroup<A>;
  if (!lazy protocol witness table cache variable for type LabelGroup<PrimitiveButtonStyleConfiguration.Label> and conformance LabelGroup<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v4_4>(255, &lazy cache variable for type metadata for LabelGroup<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for LabelGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabelGroup<PrimitiveButtonStyleConfiguration.Label> and conformance LabelGroup<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier>();
    lazy protocol witness table accessor for type MenuStyleContextViewInputPredicate and conformance MenuStyleContextViewInputPredicate();
    lazy protocol witness table accessor for type StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<MenuStyleContextViewInputPredicate, StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MenuStyleContextViewInputPredicate and conformance MenuStyleContextViewInputPredicate()
{
  result = lazy protocol witness table cache variable for type MenuStyleContextViewInputPredicate and conformance MenuStyleContextViewInputPredicate;
  if (!lazy protocol witness table cache variable for type MenuStyleContextViewInputPredicate and conformance MenuStyleContextViewInputPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuStyleContextViewInputPredicate and conformance MenuStyleContextViewInputPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier>();
    lazy protocol witness table accessor for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<MenuItemSupportsAttributedTitle, PlatformItemListTransformModifier<TextPlatformItemListFlags>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle()
{
  result = lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle;
  if (!lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle;
  if (!lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle;
  if (!lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle;
  if (!lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle;
  if (!lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance MenuItemSupportsAttributedTitle()
{
  lazy protocol witness table accessor for type MenuItemSupportsAttributedTitle and conformance MenuItemSupportsAttributedTitle();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance AllowSectionPickerLabels()
{
  lazy protocol witness table accessor for type AllowSectionPickerLabels and conformance AllowSectionPickerLabels();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t closure #1 in static PlatformItemListGeneratingViewModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for PlatformItemListGeneratingViewModifier();
  v10[3] = a3;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SectionStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t NavigationLinkButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_4(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  return _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_2(v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
}

uint64_t protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance DefaultListNavigationLinkStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, DefaultListNavigationLinkStyle.ListLink>();
  v5 = a2 + *(v4 + 44);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v5, type metadata accessor for PrimitiveButtonStyleConfiguration);
  v6 = type metadata accessor for DefaultListNavigationLinkStyle.ListLink();
  v7 = v5 + *(v6 + 20);
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v8 = v5 + *(v6 + 24);
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  return result;
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, DefaultListNavigationLinkStyle.ListLink>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, DefaultListNavigationLinkStyle.ListLink>)
  {
    type metadata accessor for DefaultListNavigationLinkStyle.ListLink();
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, DefaultListNavigationLinkStyle.ListLink>);
    }
  }
}

_BYTE *initializeWithCopy for DefaultListNavigationLinkStyle.ListLink(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v7 = &a1[v6];
  v8 = &a2[v6];
  type metadata accessor for ButtonAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v25 = *v8;
    v26 = *(v8 + 1);
    v27 = v8[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v26, v27);
    *v7 = v25;
    *(v7 + 1) = v26;
    v7[16] = v27;
    v28 = *(v8 + 5);
    v29 = *(v8 + 24);
    *(v7 + 24) = v29;
    *(v7 + 5) = v28;
    v30 = v29;
LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v31 = *(v8 + 1);
    *v7 = *v8;
    *(v7 + 1) = v31;
    goto LABEL_6;
  }

  v45 = a3;
  v10 = *v8;
  v11 = *(v8 + 1);
  v13 = *(v8 + 2);
  v12 = *(v8 + 3);
  v14 = v8[34];
  v15 = *(v8 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v8, v11, v13, v12, v15, v14);
  *v7 = v10;
  *(v7 + 1) = v11;
  *(v7 + 2) = v13;
  *(v7 + 3) = v12;
  *(v7 + 16) = v15;
  v7[34] = v14;
  v16 = *(v8 + 5);
  v17 = *(v8 + 6);
  v18 = *(v8 + 7);
  v19 = *(v8 + 8);
  LOBYTE(v11) = v8[74];
  LOWORD(v13) = *(v8 + 36);
  outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v13, v11);
  *(v7 + 5) = v16;
  *(v7 + 6) = v17;
  *(v7 + 7) = v18;
  *(v7 + 8) = v19;
  *(v7 + 36) = v13;
  v7[74] = v11;
  a3 = v45;
  v20 = *(type metadata accessor for LinkDestination() + 24);
  v21 = &v7[v20];
  v22 = &v8[v20];
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 16))(v21, v22, v23);
  v24 = type metadata accessor for LinkDestination.Configuration();
  v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_7:
  swift_storeEnumTagMultiPayload();
  v32 = *(a3 + 20);
  v33 = &a1[v32];
  v34 = &a2[v32];
  v35 = *v34;
  v36 = *(v34 + 1);
  v37 = *(v34 + 2);
  v38 = *(v34 + 3);
  v39 = v34[32];
  outlined copy of Environment<EdgeInsets>.Content(*v34, v36, v37, v38, v39);
  *v33 = v35;
  *(v33 + 1) = v36;
  *(v33 + 2) = v37;
  *(v33 + 3) = v38;
  v33[32] = v39;
  v40 = *(a3 + 24);
  v41 = &a1[v40];
  v42 = &a2[v40];
  v43 = *v42;
  LOBYTE(v35) = v42[8];
  outlined copy of Environment<Bool>.Content(*v42, v35);
  *v41 = v43;
  v41[8] = v35;
  return a1;
}

uint64_t destroy for DefaultListNavigationLinkStyle.ListLink(uint64_t a1, uint64_t a2)
{
  v4 = a1 + *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  type metadata accessor for ButtonAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v4, *(v4 + 8), *(v4 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 74));
      v6 = *(type metadata accessor for LinkDestination() + 24);
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v8 = a1 + *(a2 + 20);
  outlined consume of Environment<EdgeInsets>.Content(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
  v9 = (a1 + *(a2 + 24));
  v10 = *v9;
  v11 = *(v9 + 8);

  return outlined consume of Environment<Bool>.Content(v10, v11);
}

uint64_t EnvironmentValues._navigationLinkIndicatorVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);

    PropertyList.Tracker.value<A>(_:for:)();

    result = v3;
    if (v3)
    {
      return result;
    }

    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);
    PropertyList.subscript.getter();
    result = v3;
    if (v3)
    {
      return result;
    }

    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t DefaultListNavigationLinkStyle.ListLink.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  KeyPath = swift_getKeyPath();
  v7 = type metadata accessor for DefaultListNavigationLinkStyle.ListLink();
  v8 = v1 + *(v7 + 20);
  v37 = *(v8 + 32);
  v9 = *(v8 + 16);
  v35 = *v8;
  v36 = v9;
  v10 = specialized Environment.wrappedValue.getter();
  specialized Environment.wrappedValue.getter();
  v12 = v11;
  v13 = static Edge.Set.all.getter();
  v33 = 0;
  v32 = 0;
  v14 = static Edge.Set.vertical.getter();
  specialized Environment.wrappedValue.getter();
  EdgeInsets.negatedInsets.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v34 = 0;
  if (specialized Environment.wrappedValue.getter(*(v1 + *(v7 + 24)), *(v1 + *(v7 + 24) + 8)))
  {
    v23 = 1.0;
  }

  else
  {
    v23 = 0.5;
  }

  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(v1, &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PrimitiveButtonStyleConfiguration);
  v24 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v25 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(&v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v25 + v24);
  v26 = swift_getKeyPath();
  v33 = 0;
  v27 = swift_getKeyPath();
  v32 = 0;
  result = swift_getKeyPath();
  v29 = v33;
  v30 = v32;
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v13;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v14;
  *(a1 + 72) = v16;
  *(a1 + 80) = v18;
  *(a1 + 88) = v20;
  *(a1 + 96) = v22;
  *(a1 + 104) = 0;
  *(a1 + 112) = v23;
  *(a1 + 120) = partial apply for implicit closure #4 in implicit closure #3 in PlatformItemListButtonStyle.makeBody(configuration:);
  *(a1 + 128) = v25;
  *(a1 + 136) = 1;
  *(a1 + 144) = v26;
  *(a1 + 152) = v29;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = v27;
  *(a1 + 184) = 0;
  *(a1 + 185) = v30;
  *(a1 + 192) = result;
  *(a1 + 200) = 0;
  return result;
}

uint64_t sub_18C0040A0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues._navigationLinkIndicatorVisibility.getter();
  *a1 = result;
  return result;
}

uint64_t outlined init with take of PrimitiveButtonStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NavigationLinkLabel.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>?(255, &lazy cache variable for type metadata for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>?, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<_DisclosureIndicator, SquareLayout>, StaticIf<AndOperationViewInputPredicate<InvertedViewInputPredicate<_SemanticFeature<Semantics_v4>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, _PaddingLayout, EmptyModifier>>)>, MEMORY[0x1E69E6720]);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  v11 = *(a1 + 24);
  v16 = v3;
  v17 = v11;
  v18 = v1;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  static ViewBuilder.buildExpression<A>(_:)(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t getEnumTagSinglePayload for ExternalGestureActionModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>, &unk_1F001CE90, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type DisclosureIndicator_PhoneTV and conformance DisclosureIndicator_PhoneTV();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisclosureIndicator_PhoneTV and conformance DisclosureIndicator_PhoneTV()
{
  result = lazy protocol witness table cache variable for type DisclosureIndicator_PhoneTV and conformance DisclosureIndicator_PhoneTV;
  if (!lazy protocol witness table cache variable for type DisclosureIndicator_PhoneTV and conformance DisclosureIndicator_PhoneTV)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureIndicator_PhoneTV and conformance DisclosureIndicator_PhoneTV);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>();
    _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_6(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E697E548], MEMORY[0x1E6980B20]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>);
    }
  }
}

void type metadata accessor for StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>()
{
  if (!lazy cache variable for type metadata for StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>)
  {
    type metadata accessor for ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>();
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>, _ForegroundStyleModifier<DisclosureIndicatorShapeStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>, _ForegroundStyleModifier<DisclosureIndicatorShapeStyle>>)
  {
    type metadata accessor for StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>();
    type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<DisclosureIndicatorShapeStyle>, &unk_1F001CF18, &protocol witness table for DisclosureIndicatorShapeStyle, MEMORY[0x1E6980480]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>, _ForegroundStyleModifier<DisclosureIndicatorShapeStyle>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>)
  {
    type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
    type metadata accessor for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>);
    }
  }
}

double static PlatformButtonActionModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v26 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 40);
  v23 = *(a2 + 24);
  v24 = v8;
  v25[0] = *(a2 + 56);
  *(v25 + 12) = *(a2 + 68);
  v18 = *a2;
  v19 = v7;
  v20 = *(a2 + 24);
  v21 = *(a2 + 40);
  v22[0] = *(a2 + 56);
  *(v22 + 12) = *(a2 + 68);
  a3(&v15);
  v18 = *a2;
  v19 = v7;
  v20 = *(a2 + 24);
  v21 = *(a2 + 40);
  v22[0] = *(a2 + 56);
  *(v22 + 12) = *(a2 + 68);
  v17 = 64;
  if (_ViewInputs.requestsPlatformItem(for:)())
  {
    KeyPath = swift_getKeyPath();
    LODWORD(v18) = v6;
    *(&v18 + 1) = partial apply for specialized closure #1 in Attribute.subscript.getter;
    v19 = KeyPath;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for (())?();
    type metadata accessor for Map<PlatformButtonActionModifier, (())?>();
    lazy protocol witness table accessor for type Map<PlatformButtonActionModifier, (())?> and conformance Map<A, B>();

    v10 = Attribute.init<A>(body:value:flags:update:)();

    v18 = v26;
    v19 = v7;
    v20 = v23;
    v21 = v24;
    v22[0] = v25[0];
    *(v22 + 12) = *(v25 + 12);
    v11 = _ViewInputs.isEnabled.getter();
    if (one-time initialization token for springLoadingBehavior != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();
    *&v18 = __PAIR64__(v11, v10);
    DWORD2(v18) = v12;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PlatformButtonActionTransform.SelectionContent and conformance PlatformButtonActionTransform.SelectionContent();
    v13 = Attribute.init<A>(body:value:flags:update:)();
    v18 = v26;
    v19 = v7;
    v20 = v23;
    v21 = v24;
    v22[0] = v25[0];
    *(v22 + 12) = *(v25 + 12);
    LODWORD(v17) = v13;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PlatformButtonActionTransform.MakeTransform and conformance PlatformButtonActionTransform.MakeTransform();
    LODWORD(v17) = Attribute.init<A>(body:value:flags:update:)();
    lazy protocol witness table accessor for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform();
    static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
  }

  *a4 = v15;
  result = v16;
  a4[1] = v16;
  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>>();
    lazy protocol witness table accessor for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> StaticIf<A, B, C>, lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>);
    lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<DisclosureIndicatorDifferentiatesWithoutColor, ModifiedContent<StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>, _EnvironmentKeyTransformModifier<SymbolVariants>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor()
{
  result = lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor;
  if (!lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor;
  if (!lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor;
  if (!lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor;
  if (!lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor;
  if (!lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>();
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E697E548], MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ForegroundStyleModifier<DisclosureIndicatorShapeStyle> and conformance _ForegroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ForegroundStyleModifier<DisclosureIndicatorShapeStyle> and conformance _ForegroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _ForegroundStyleModifier<DisclosureIndicatorShapeStyle> and conformance _ForegroundStyleModifier<A>)
  {
    type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<DisclosureIndicatorShapeStyle>, &unk_1F001CF18, &protocol witness table for DisclosureIndicatorShapeStyle, MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundStyleModifier<DisclosureIndicatorShapeStyle> and conformance _ForegroundStyleModifier<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance DisclosureIndicatorDifferentiatesWithoutColor()
{
  lazy protocol witness table accessor for type DisclosureIndicatorDifferentiatesWithoutColor and conformance DisclosureIndicatorDifferentiatesWithoutColor();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ToggleStyleConfiguration.Label(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<ToggleStyleConfiguration.Label>, lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label, &type metadata for ToggleStyleConfiguration.Label, &lazy protocol witness table cache variable for type SourceInput<ToggleStyleConfiguration.Label> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SquareLayout(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v9;
  v13[4] = *(a2 + 64);
  v14 = *(a2 + 80);
  v10 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v10;
  v15 = v8;
  v11 = lazy protocol witness table accessor for type SquareLayout and conformance SquareLayout();
  return (*(v11 + 80))(&v15, v13, a3, a4, a5, v11);
}

unint64_t lazy protocol witness table accessor for type SquareLayout and conformance SquareLayout()
{
  result = lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout;
  if (!lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout;
  if (!lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout;
  if (!lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout;
  if (!lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SquareLayout and conformance SquareLayout);
  }

  return result;
}

void type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for LabelStyleWritingModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResolvedFallbackLabel and conformance ResolvedFallbackLabel()
{
  result = lazy protocol witness table cache variable for type ResolvedFallbackLabel and conformance ResolvedFallbackLabel;
  if (!lazy protocol witness table cache variable for type ResolvedFallbackLabel and conformance ResolvedFallbackLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedFallbackLabel and conformance ResolvedFallbackLabel);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LabelStyleWritingModifier<TitleOnlyLabelStyle>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ButtonContainerIsBorderedInput()
{
  lazy protocol witness table accessor for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput();
  PropertyList.subscript.getter();
  return v1;
}

void (*protocol witness for Collection.subscript.read in conformance FetchedResults<A>(uint64_t **a1, uint64_t *a2))(void *a1)
{
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
  v6 = FetchedResults.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance FetchedResults<A>;
}

uint64_t FetchedResults.subscript.getter(uint64_t a1)
{
  v2 = [*v1 objectAtIndex_];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v4;
}

void protocol witness for Collection.subscript.read in conformance FetchedResults<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance LabelIconPlatformItemModifier@<X0>(void (*a1)(void *__return_ptr)@<X2>, void *a2@<X8>)
{
  a1(a2);
  lazy protocol witness table accessor for type LabelIconPlatformItemModifier and conformance LabelIconPlatformItemModifier();
  return static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance FetchedResults<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

void type metadata accessor for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>()
{
  if (!lazy cache variable for type metadata for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>)
  {
    type metadata accessor for AccessibilityAttachment?(255, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
    v0 = type metadata accessor for Focus();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform()
{
  result = lazy protocol witness table cache variable for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform;
  if (!lazy protocol witness table cache variable for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform);
  }

  return result;
}

uint64_t implicit closure #3 in static AccessibilityViewModifier._makeView(modifier:inputs:body:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type PlatformItemListTransform and conformance PlatformItemListTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t sub_18C005E08()
{
  type metadata accessor for AsyncImage.Inner();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ValueActionModifier2<URL?>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type _ValueActionModifier2<URL?> and conformance _ValueActionModifier2<A>, type metadata accessor for _ValueActionModifier2<URL?>);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void type metadata accessor for _ValueActionModifier2<URL?>()
{
  if (!lazy cache variable for type metadata for _ValueActionModifier2<URL?>)
  {
    type metadata accessor for State<LoadingState>(255, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type URL? and conformance <A> A?();
    v0 = type metadata accessor for _ValueActionModifier2();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ValueActionModifier2<URL?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItemListTransform and conformance PlatformItemListTransform()
{
  result = lazy protocol witness table cache variable for type PlatformItemListTransform and conformance PlatformItemListTransform;
  if (!lazy protocol witness table cache variable for type PlatformItemListTransform and conformance PlatformItemListTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListTransform and conformance PlatformItemListTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type URL? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type URL? and conformance <A> A?)
  {
    type metadata accessor for State<LoadingState>(255, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL? and conformance <A> A?);
  }

  return result;
}

uint64_t sub_18C006158()
{
  type metadata accessor for _UnaryViewAdaptor();

  return swift_getWitnessTable();
}

uint64_t implicit closure #1 in static TooltipModifier._makeView(modifier:inputs:body:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type TooltipModifier.TransformPlatformItems and conformance TooltipModifier.TransformPlatformItems();
  return Attribute.init<A>(body:value:flags:update:)();
}

unint64_t lazy protocol witness table accessor for type TooltipModifier.TransformPlatformItems and conformance TooltipModifier.TransformPlatformItems()
{
  result = lazy protocol witness table cache variable for type TooltipModifier.TransformPlatformItems and conformance TooltipModifier.TransformPlatformItems;
  if (!lazy protocol witness table cache variable for type TooltipModifier.TransformPlatformItems and conformance TooltipModifier.TransformPlatformItems)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TooltipModifier.TransformPlatformItems and conformance TooltipModifier.TransformPlatformItems);
  }

  return result;
}

uint64_t closure #1 in View.platformItemIdentifier(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v7 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    for (i = 0; i != v4; ++i)
    {
      if (i >= v3[2])
      {
        __break(1u);
        goto LABEL_9;
      }

      v9 = *(type metadata accessor for PlatformItemList.Item() - 8);
      v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * i;
      *(v10 + 16) = a2;
      *(v10 + 24) = a3;
    }

    *v7 = v3;
  }

  return result;
}

uint64_t type metadata completion function for PickerItemView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, type metadata accessor for ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, type metadata accessor for ViewInputFlagModifier<HasKeyboardShortcut>);
    type metadata accessor for PickerItemView<Subview>(255, &lazy cache variable for type metadata for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>, &type metadata for KeyboardShortcutPickerOptionTraitKey, &protocol witness table for KeyboardShortcutPickerOptionTraitKey, MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>();
    _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E697E548], MEMORY[0x1E6980B20]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>);
    }
  }
}

void type metadata accessor for ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>()
{
  if (!lazy cache variable for type metadata for ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>();
    lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection();
    lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>();
    lazy protocol witness table accessor for type ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>)
  {
    type metadata accessor for ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>();
    type metadata accessor for PickerItemView<Subview>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>, &type metadata for SelectionPlatformItemListFlags, &protocol witness table for SelectionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>);
    }
  }
}

void type metadata accessor for PickerItemView<Subview>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>)
  {
    type metadata accessor for PickerItemView<Subview>(255, &lazy cache variable for type metadata for PickerItemView<Subview>, MEMORY[0x1E6981A60], MEMORY[0x1E6981A58], type metadata accessor for PickerItemView);
    _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>);
    }
  }
}

uint64_t AsyncImage.init(url:scale:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v22 = a3;
  v23 = a4;
  v10 = type metadata accessor for LoadingState(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for URL();
  v15 = *(*(v14 - 8) + 56);
  v15(a5, 1, 1, v14);
  v16 = type metadata accessor for AsyncImage();
  v17 = a5 + v16[12];
  *v13 = 0;
  v15(v13 + *(v11 + 28), 1, 1, v14);
  *(v13 + *(v11 + 32)) = 0x8000000000000000;
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
  *(v17 + *(v18 + 28)) = 0;
  outlined init with take of TaskConfig(v13, v17, type metadata accessor for LoadingState);
  result = outlined assign with take of URL?(a1, a5);
  *(a5 + v16[9]) = a6;
  *(a5 + v16[10]) = a2;
  v20 = (a5 + v16[11]);
  v21 = v23;
  *v20 = v22;
  v20[1] = v21;
  return result;
}

unint64_t lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection()
{
  result = lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection;
  if (!lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection;
  if (!lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewsCollection and conformance SubviewsCollection);
  }

  return result;
}

uint64_t outlined init with take of TaskConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID()
{
  result = lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID;
  if (!lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E697E548]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UTType?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>> and conformance <> ForEach<A, B, C>)
  {
    type metadata accessor for ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<SubviewsCollection, Subview.ID, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

char *initializeWithCopy for AsyncImage(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v24 = *(v7 + 48);
  if (v24(a2, 1, v6))
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[10];
  *&a1[a3[9]] = *&a2[a3[9]];
  *&a1[v9] = *&a2[v9];
  v10 = a3[11];
  v11 = a3[12];
  v12 = &a1[v10];
  v13 = &a2[v10];
  v14 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 1) = v14;
  v15 = &a1[v11];
  v16 = &a2[v11];
  *&a1[v11] = *&a2[v11];
  v17 = type metadata accessor for LoadingState(0);
  v18 = *(v17 + 20);

  if (v24(&v16[v18], 1, v6))
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&v15[v18], &v16[v18], *(*(v19 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&v15[v18], &v16[v18], v6);
    (*(v7 + 56))(&v15[v18], 0, 1, v6);
  }

  v20 = *(v17 + 24);
  v21 = *&v16[v20];
  outlined copy of AsyncImagePhase(v21);
  *&v15[v20] = v21;
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
  *&v15[*(v22 + 28)] = *&v16[*(v22 + 28)];

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>(255);
    lazy protocol witness table accessor for type ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [Binding<Bool>] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<KeyboardShortcut?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t outlined copy of AsyncImagePhase(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  if (!(result >> 62))
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t destroy for AsyncImage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v7 = a1 + *(a2 + 48);

  v8 = type metadata accessor for LoadingState(0);
  v9 = *(v8 + 20);
  if (!v6(v7 + v9, 1, v4))
  {
    (*(v5 + 8))(v7 + v9, v4);
  }

  outlined consume of AsyncImagePhase(*(v7 + *(v8 + 24)));
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, type metadata accessor for ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, type metadata accessor for ViewInputFlagModifier<HasKeyboardShortcut>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [Binding<Bool>] and conformance [A](&lazy protocol witness table cache variable for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<HasKeyboardShortcut>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>();
    lazy protocol witness table accessor for type PickerItemView<Subview> and conformance PickerItemView<A>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void outlined consume of AsyncImagePhase(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

unint64_t lazy protocol witness table accessor for type PickerItemView<Subview> and conformance PickerItemView<A>()
{
  result = lazy protocol witness table cache variable for type PickerItemView<Subview> and conformance PickerItemView<A>;
  if (!lazy protocol witness table cache variable for type PickerItemView<Subview> and conformance PickerItemView<A>)
  {
    type metadata accessor for PickerItemView<Subview>(255, &lazy cache variable for type metadata for PickerItemView<Subview>, MEMORY[0x1E6981A60], MEMORY[0x1E6981A58], type metadata accessor for PickerItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PickerItemView<Subview> and conformance PickerItemView<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_0(255, a2, a3, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGACyxGAA04ViewF0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

char *initializeWithCopy for LoadingState(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(&a2[v6], 1, v7))
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v11 = *(a3 + 24);
  v12 = *&a2[v11];
  outlined copy of AsyncImagePhase(v12);
  *&a1[v11] = v12;
  return a1;
}

uint64_t lazy protocol witness table accessor for type [Binding<Bool>] and conformance [A](unint64_t *a1, void (*a2)(uint64_t))
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

void destroy for LoadingState(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = *(a1 + *(a2 + 24));

  outlined consume of AsyncImagePhase(v7);
}

void *sub_18C007924(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C007A0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PaletteSelectionEffectKey>, &type metadata for PaletteSelectionEffectKey, &protocol witness table for PaletteSelectionEffectKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

char *assignWithTake for LoadingState(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
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
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 32))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  v13 = *(a3 + 24);
  v14 = *&a1[v13];
  *&a1[v13] = *&a2[v13];
  outlined consume of AsyncImagePhase(v14);
  return a1;
}

uint64_t PickerContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of SubviewsCollection(v2 + 24, v14);
  (*(*(a1 - 8) + 16))(v12, v2, a1);
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  v7 = v12[2];
  v8 = v12[4];
  *(v5 + 80) = v12[3];
  *(v5 + 96) = v8;
  v9 = v12[0];
  v10 = v12[1];
  *(v5 + 16) = v6;
  *(v5 + 32) = v9;
  *(v5 + 112) = v13;
  *(v5 + 48) = v10;
  *(v5 + 64) = v7;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>>();
  lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PickerItemView<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<SymbolVariants>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Subview and conformance Subview();
  result = ForEach<>.init(_:content:)();
  *(a2 + 104) = closure #1 in View.collapsingInlinePickerSections();
  *(a2 + 112) = 0;
  return result;
}

uint64_t sub_18C007E84()
{
  outlined consume of Environment<Bool>.Content(*(v0 + 32), *(v0 + 40));

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocObject();
}

uint64_t AsyncImage.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v5 = *(a1 - 8);
  v45 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LoadingState(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = type metadata accessor for AsyncImage.Inner();
  v44 = type metadata accessor for ModifiedContent();
  type metadata accessor for _ValueActionModifier2<URL?>();
  v47 = type metadata accessor for ModifiedContent();
  v48 = type metadata accessor for ModifiedContent();
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v41 - v16;
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v17 = *&v10[*(v8 + 32)];
  outlined copy of AsyncImagePhase(v17);
  outlined destroy of LoadingState(v10, type metadata accessor for LoadingState);
  v18 = (v3 + *(a1 + 44));
  v19 = *v18;
  v20 = v18[1];
  v61 = v17;
  v62 = v19;
  v63 = v20;
  v21 = implicit closure #1 in AsyncImage.body.getter(v3, v11, v12);
  v23 = v22;
  v24 = implicit closure #3 in AsyncImage.body.getter(v3, v11, v12);
  v57 = v21;
  *&v58 = v23;
  *(&v58 + 1) = v24;
  *&v59 = v25;

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00A570](&v64, &v57, v13, MEMORY[0x1E69805D8], WitnessTable);

  outlined consume of AsyncImagePhase(v61);

  v57 = v64;
  v58 = v65;
  v59 = v66;
  v60 = v67;
  v27 = v42;
  (*(v5 + 16))(v42, v3, a1);
  v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v11;
  *(v29 + 24) = v12;
  (*(v5 + 32))(v29 + v28, v27, a1);
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v30 = MEMORY[0x1E69805D0];
  v55 = WitnessTable;
  v56 = MEMORY[0x1E69805D0];
  v31 = swift_getWitnessTable();
  lazy protocol witness table accessor for type URL? and conformance <A> A?();
  v32 = v43;
  View.onChange<A>(of:initial:_:)();

  v33 = v59;
  v34 = v60;
  outlined consume of AsyncImagePhase(v57);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v33);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v34);
  v35 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type _ValueActionModifier2<URL?> and conformance _ValueActionModifier2<A>, type metadata accessor for _ValueActionModifier2<URL?>);
  v53 = v31;
  v54 = v35;
  v51 = swift_getWitnessTable();
  v52 = v30;
  v36 = v48;
  v37 = swift_getWitnessTable();
  v38 = v46;
  static ViewBuilder.buildExpression<A>(_:)(v32, v36, v37);
  v39 = *(v49 + 8);
  v39(v32, v36);
  static ViewBuilder.buildExpression<A>(_:)(v38, v36, v37);
  return (v39)(v38, v36);
}

unint64_t lazy protocol witness table accessor for type Subview and conformance Subview()
{
  result = lazy protocol witness table cache variable for type Subview and conformance Subview;
  if (!lazy protocol witness table cache variable for type Subview and conformance Subview)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Subview and conformance Subview);
  }

  return result;
}

uint64_t outlined destroy of LoadingState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t (*implicit closure #1 in AsyncImage.body.getter(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for AsyncImage();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return partial apply for implicit closure #2 in implicit closure #1 in AsyncImage.body.getter;
}

__n128 closure #1 in PickerContentView.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PickerContentView();
  v11 = PickerContentView.isItemSelected(_:)();
  *&v26 = *(a1 + 96);
  LOBYTE(v39) = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v12 = v33;
  *a5 = v11;
  *(a5 + 8) = v12;
  outlined init with copy of Subview(a1, a5 + 16);
  *&v26 = *(a1 + 96);
  LOBYTE(v39) = 1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = (v33 & 1) == 0;
  *(a5 + 120) = KeyPath;
  *(a5 + 128) = partial apply for closure #1 in View.hoverEffectDisabled(_:);
  *(a5 + 136) = v14;
  v39 = *(a1 + 96);
  v33 = 0uLL;
  BYTE8(v34) = 0;
  *&v34 = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();

  v15 = v26;
  v16 = v27;
  v17 = BYTE8(v27);
  *(a5 + 144) = swift_getKeyPath();
  *(a5 + 152) = v15;
  *(a5 + 168) = v16;
  *(a5 + 176) = v17;

  *(a5 + 184) = v15;
  *(a5 + 200) = v16;
  *(a5 + 208) = v17;
  v18 = swift_getKeyPath();
  (*(*(v10 - 8) + 16))(&v33, a2, v10);
  outlined init with copy of Subview(a1, &v26);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  v20 = v36;
  *(v19 + 64) = v35;
  *(v19 + 80) = v20;
  *(v19 + 96) = v37;
  *(v19 + 112) = v38;
  v21 = v34;
  *(v19 + 32) = v33;
  *(v19 + 48) = v21;
  v22 = v29;
  *(v19 + 152) = v28;
  v23 = v26;
  *(v19 + 136) = v27;
  *(v19 + 120) = v23;
  result = v30;
  v25 = v31;
  *(v19 + 216) = v32;
  *(v19 + 200) = v25;
  *(v19 + 184) = result;
  *(v19 + 168) = v22;
  *(a5 + 216) = v18;
  *(a5 + 224) = partial apply for closure #2 in closure #1 in PickerContentView.body.getter;
  *(a5 + 232) = v19;
  return result;
}

uint64_t sub_18C008938@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18C0089A8@<X0>(_WORD *a1@<X8>)
{
  result = EnvironmentValues.symbolVariants.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_18C008A24()
{
  outlined consume of Environment<Bool>.Content(*(v0 + 32), *(v0 + 40));

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);

  return swift_deallocObject();
}

uint64_t (*implicit closure #3 in AsyncImage.body.getter(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for AsyncImage();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return partial apply for implicit closure #4 in implicit closure #3 in AsyncImage.body.getter;
}

uint64_t PickerContentView.isItemSelected(_:)()
{
  type metadata accessor for Binding();
  type metadata accessor for Array();
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_0(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);

  swift_getWitnessTable();
  v0 = Sequence.compactMap<A>(_:)();

  return v0;
}

unint64_t *initializeBufferWithCopyOfBuffer for AsyncImage.Inner(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  outlined copy of AsyncImagePhase(*a2);
  v6 = a2[1];
  v5 = a2[2];
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v5;

  return a1;
}

uint64_t destroy for AsyncImage.Inner(unint64_t *a1)
{
  outlined consume of AsyncImagePhase(*a1);
}

uint64_t closure #1 in PickerContentView.isItemSelected(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  v14[1] = *(a1 + 96);

  TraitValues.tag<A>(for:)();

  type metadata accessor for Binding();
  v8 = Binding.selecting<A>(_:)();
  v10 = v9;
  v12 = v11;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  return result;
}

uint64_t TraitValues.tag<A>(for:)()
{

  ViewTraitCollection.tag<A>(for:)();
}

uint64_t AsyncImage.Inner.body.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = type metadata accessor for _UnaryViewAdaptor();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = v1[1];
  v14 = *v1;
  outlined copy of AsyncImagePhase(v14);
  v9(&v14);
  outlined consume of AsyncImagePhase(v14);
  _UnaryViewAdaptor.init(_:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v5, v2, WitnessTable);
  v11 = *(v3 + 8);
  v11(v5, v2);
  static ViewBuilder.buildExpression<A>(_:)(v8, v2, WitnessTable);
  return (v11)(v8, v2);
}

uint64_t AsyncImagePhase.image.getter()
{
  if (*v0 >> 62)
  {
    return 0;
  }

  else
  {
  }
}

uint64_t initializeWithCopy for PickerItemView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 16);
  v6 = *(*(v4 - 8) + 80);
  v7 = v6 + 9 + a2;

  v5((v6 + 9 + a1) & ~v6, v7 & ~v6, v4);
  return a1;
}

uint64_t sub_18C0092B0()
{
  type metadata accessor for Toggle();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerItemView<Subview>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>, &type metadata for SelectionPlatformItemListFlags, &protocol witness table for SelectionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t destroy for PickerItemView(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 9) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t assignWithCopy for PickerItemView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((*(v6 + 80) + 9 + a1) & ~*(v6 + 80), (*(v6 + 80) + 9 + a2) & ~*(v6 + 80));
  return a1;
}

void *PickerItemView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Toggle();
  v82 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = (&v69 - v7);
  v8 = type metadata accessor for ModifiedContent();
  v83 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v69 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v69 - v13;
  type metadata accessor for PickerItemView<Subview>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>, &type metadata for SelectionPlatformItemListFlags, &protocol witness table for SelectionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  v87 = v8;
  v14 = type metadata accessor for ModifiedContent();
  v78 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v69 - v19;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v69 - v25;
  v85 = type metadata accessor for _ConditionalContent();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v28 = &v69 - v27;
  if (*(v2 + 8) == 1)
  {
    static ViewBuilder.buildExpression<A>(_:)(v2 + *(a1 + 40), v4, v5);
    static ViewBuilder.buildExpression<A>(_:)(v26, v4, v5);
    WitnessTable = swift_getWitnessTable();
    v91 = &protocol witness table for AccessibilityAttachmentModifier;
    v88 = swift_getWitnessTable();
    v89 = &protocol witness table for PlatformItemListTransformModifier<A>;
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(first:)(v23, v4);
    v29 = *(v20 + 8);
    v29(v23, v4);
    v29(v26, v4);
LABEL_10:
    v96 = swift_getWitnessTable();
    v97 = &protocol witness table for AccessibilityAttachmentModifier;
    v94 = swift_getWitnessTable();
    v95 = &protocol witness table for PlatformItemListTransformModifier<A>;
    v64 = swift_getWitnessTable();
    v92 = v5;
    v93 = v64;
    v65 = v85;
    v66 = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(v28, v65, v66);
    return (*(v84 + 8))(v28, v65);
  }

  else
  {
    v70 = v14;
    v71 = &v69 - v27;
    v103[0] = *v2;
    v30 = v103[0];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    type metadata accessor for [Binding<Bool>]();
    v33 = v32;
    v34 = lazy protocol witness table accessor for type [Binding<Bool>] and conformance [A](&lazy protocol witness table cache variable for type [Binding<Bool>] and conformance [A], type metadata accessor for [Binding<Bool>]);

    v35 = v81;
    v72 = v4;
    v73 = v5;
    Toggle.init<A>(sources:isOn:label:)(v103, KeyPath, partial apply for closure #1 in PickerItemView.body.getter, (&v69 - 6), v4, v33, v5, v34, v81);
    v36 = swift_getWitnessTable();
    v37 = lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    v38 = lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    v39 = lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    v67 = v38;
    v68 = v39;
    v40 = v80;
    v69 = v36;
    View.accessibilityValue<A>(_:description:)(v39, 0, 0, 0, 0, v6, MEMORY[0x1E6980000], v36, v80, v37);
    v41 = *(v82 + 8);
    v82 = v6;
    v41(v35, v6);
    v42 = v79;
    v43 = v87;
    ModifiedContent<>.accessibilityRemoveTraits(_:)(v87, v79);
    v83 = *(v83 + 8);
    result = (v83)(v40, v43);
    v45 = (v30 + 48);
    v46 = -*(v30 + 16);
    v47 = -1;
    v48 = MEMORY[0x1E69E6370];
    v49 = 4;
    while (1)
    {
      if (v46 + v47 == -1)
      {
        v49 = 0;
LABEL_9:
        v103[0] = v49;
        v53 = v76;
        v54 = v87;
        ModifiedContent<>.accessibilityAddTraits(_:)(v103, v87);
        v55 = v42;
        v56 = v83;
        (v83)(v55, v54);
        v100 = v69;
        v101 = &protocol witness table for AccessibilityAttachmentModifier;
        v57 = swift_getWitnessTable();
        v58 = v74;
        View.transformPlatformItemList<A>(_:_:)(&type metadata for SelectionPlatformItemListFlags, closure #3 in PickerItemView.body.getter, 0, v54, &type metadata for SelectionPlatformItemListFlags, v57);
        v56(v53, v54);
        v98 = v57;
        v99 = &protocol witness table for PlatformItemListTransformModifier<A>;
        v59 = v70;
        v60 = swift_getWitnessTable();
        v61 = v75;
        static ViewBuilder.buildExpression<A>(_:)(v58, v59, v60);
        v62 = *(v78 + 8);
        v62(v58, v59);
        v63 = v77;
        static ViewBuilder.buildExpression<A>(_:)(v61, v59, v60);
        v28 = v71;
        v5 = v73;
        static ViewBuilder.buildEither<A, B>(second:)(v63, v72, v59);
        v62(v63, v59);
        v62(v61, v59);
        goto LABEL_10;
      }

      if (++v47 >= *(v30 + 16))
      {
        break;
      }

      v50 = v45 + 24;
      v51 = *v45;
      v52 = *(v45 - 1);
      v103[0] = *(v45 - 2);
      v103[1] = v52;
      v104 = v51;
      _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_0(0, &lazy cache variable for type metadata for Binding<Bool>, v48, MEMORY[0x1E6981948]);
      result = MEMORY[0x18D00ACC0](&v102);
      v45 = v50;
      if (v102 == 1)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _DisclosureIndicator.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  AccessibilityProperties.init()();
  v14 = 0x400000004;
  v15 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v13);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_6(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v6 = swift_allocObject();
  memcpy((v6 + 16), __src, 0x128uLL);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_6(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18CD63400;

  LocalizedStringKey.init(stringLiteral:)();
  *(v7 + 32) = Text.init(_:tableName:bundle:comment:)();
  *(v7 + 40) = v8;
  *(v7 + 48) = v9 & 1;
  *(v7 + 56) = v10;

  swift_beginAccess();
  *(v6 + 40) = v7;
  *(v6 + 48) = 3;

  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  *(a1 + 25) = v3;
  *(a1 + 32) = v6;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_18C00A1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MEMORY[0x18D006560](a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t initializeWithCopy for DisclosureIndicator_PhoneTV(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

void type metadata accessor for [Binding<Bool>]()
{
  if (!lazy cache variable for type metadata for [Binding<Bool>])
  {
    type metadata accessor for PredicateExpressions.Variable<String>(255, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Binding<Bool>]);
    }
  }
}

uint64_t key path getter for EnvironmentValues.pixelLength : EnvironmentValues@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.pixelLength.getter();
  *a1 = v3;
  return result;
}

uint64_t Toggle.init<A>(sources:isOn:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v26 = a8;
  v27 = a7;
  v25 = a5;
  v31 = a3;
  v32 = a4;
  v33 = a1;
  v30 = a9;
  v29 = *(*(a8 + 8) + 8);
  v12 = *(v29 + 8);
  v13 = type metadata accessor for LazySequence();
  v28 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for LazyMapSequence();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  MEMORY[0x18D00CB50](a6, v12, v17);
  v20 = swift_allocObject();
  v20[2] = a5;
  v20[3] = a6;
  v21 = v26;
  v22 = v27;
  v20[4] = v27;
  v20[5] = v21;
  v20[6] = a2;

  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();

  (*(v28 + 8))(v15, v13);
  v34 = v29;
  WitnessTable = swift_getWitnessTable();
  Toggle.init<A>(toggledOn:label:)(v19, v31, v25, v16, v22, WitnessTable, v30);

  return (*(*(a6 - 8) + 8))(v33, a6);
}

uint64_t sub_18C00A614()
{

  return swift_deallocObject();
}

uint64_t closure #1 in PickerItemView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PickerItemView();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v9 + 40), a2, a3);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

double protocol witness for View.body.getter in conformance DisclosureIndicator_PhoneTV@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 25);
  v19 = *(v1 + 24);
  closure #1 in DisclosureIndicator_PhoneTV.body.getter(v3, v4, v20);
  specialized Image.init(systemName:)(0x2E6E6F7276656863, 0xEF64726177726F66);
  *&v14 = v6;

  closure #2 in DisclosureIndicator_PhoneTV.chevron.getter(v7, &v14 + 8);

  v8 = v18;
  *&v21[8] = v14;
  *&v21[24] = v15;
  LOBYTE(v22) = v16;
  *(&v22 + 1) = v17;
  v9 = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = v9;
  v10 = v20[3];
  *(a1 + 32) = v20[2];
  *(a1 + 48) = v10;
  result = *v21;
  v12 = *&v21[16];
  v13 = v22;
  *(a1 + 64) = *v21;
  *(a1 + 80) = v12;
  *(a1 + 112) = v8;
  *(a1 + 96) = v13;
  *(a1 + 120) = v5;
  return result;
}

__n128 closure #1 in DisclosureIndicator_PhoneTV.body.getter@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  specialized Image.init(systemName:)(0x2E6E6F7276656863, 0xEF64726177726F66);
  *&v10[0] = v6;

  closure #2 in DisclosureIndicator_PhoneTV.chevron.getter(v7, v10 + 8);

  if (specialized Environment.wrappedValue.getter(a1, a2 & 1))
  {
    static SymbolVariants.circle.getter();
    SymbolVariants.fill.getter();
  }

  else
  {
    static SymbolVariants.none.getter();
  }

  type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>>();
  lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, Image, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> StaticIf<A, B, C>();
  View.symbolVariant(_:)();

  v8 = v10[3];
  *(a3 + 32) = v10[2];
  *(a3 + 48) = v8;
  *(a3 + 64) = v11;
  result = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue;
  if (!lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue;
  if (!lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue;
  if (!lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue);
  }

  return result;
}

uint64_t closure #2 in DisclosureIndicator_PhoneTV.chevron.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();

  static Font.Weight.semibold.getter();
  v5 = static Font.system(_:design:weight:)();
  result = swift_getKeyPath();
  *a2 = a1;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 32) = v5;
  return result;
}

uint64_t View.accessibilityValue<A>(_:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v24 = a8;
  v22[2] = a9;
  v23 = a6;
  v22[1] = a10;
  v16 = type metadata accessor for Optional();
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v22 - v18;
  v20 = *(a7 - 8);
  (*(v20 + 16))(v22 - v18, a1, a7, v17);
  (*(v20 + 56))(v19, 0, 1, a7);
  outlined copy of Text?(a2, a3, a4, a5);
  AccessibilityValueStorage.init<A>(_:description:)();
  v27 = v25;
  View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityValue(_:), v26, v23, v24);
  return outlined destroy of AccessibilityValueStorage(v25);
}

uint64_t partial apply for closure #1 in View.accessibilityValue(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  outlined destroy of AnyAccessibilityValue?(a1 + 64, &lazy cache variable for type metadata for AccessibilityValueStorage?);

  return outlined init with copy of AccessibilityValueStorage(v3, a1 + 64);
}

uint64_t DisclosureIndicatorShapeStyle._apply(to:)(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 56);
    v4 = *(a1 + 48);

    EnvironmentValues.backgroundProminence.getter();

    static BackgroundProminence.increased.getter();
    if (static BackgroundProminence.== infix(_:_:)())
    {
      type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();
      if (v2)
      {

        PropertyList.Tracker.value<A>(_:for:)();

        if (v4 != 1 || (type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]), lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(), , PropertyList.Tracker.value<A>(_:for:)(), , (v4 & 0x1000000) == 0))
        {
LABEL_14:
          static Color.white.getter();
          goto LABEL_15;
        }
      }

      else
      {
        PropertyList.subscript.getter();
        if ((v4 & 1) == 0)
        {
          goto LABEL_14;
        }

        type metadata accessor for ModifiedContent<DisclosureIndicator_PhoneTV, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>();
        PropertyList.subscript.getter();
        if ((v4 & 0x1000000) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    static _GraphInputs.defaultInterfaceIdiom.getter();
    if (static Solarium.isEnabled(for:)())
    {
      static Color.primary.getter();
LABEL_15:
      Color._apply(to:)();
    }

    return TintShapeStyle._apply(to:)();
  }

  else
  {
    static Color.tertiary.getter();
    Color._apply(to:)();
  }
}

double protocol witness for UnaryLayout.sizeThatFits(in:context:child:) in conformance SquareLayout()
{
  static _ProposedSize.unspecified.getter();
  LayoutProxy.size(in:)();
  if (result <= v1)
  {
    return v1;
  }

  return result;
}

uint64_t ModifiedContent<>.accessibilityRemoveTraits(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  AccessibilityTraitSet.init(traits:)();
  return ModifiedContent<>.update(isEnabled:body:)(1, partial apply for closure #1 in ModifiedContent<>.accessibilityTraits(_:), a1, a2);
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t protocol witness for UnaryLayout.placement(of:in:) in conformance SquareLayout()
{
  static _ProposedSize.unspecified.getter();
  static UnitPoint.center.getter();
  PlacementContext.size.getter();
  return _Placement.init(proposedSize:aligning:in:)();
}

uint64_t assignWithCopy for Toggle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (v8 + 17 + a2) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v10) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 24);
  if (*(v12 + 24) < 0xFFFFFFFFuLL)
  {
    if (v14 >= 0xFFFFFFFF)
    {
      v25 = *v13;
      v26 = *(v13 + 8);
      v27 = *(v13 + 16);
      outlined copy of Environment<AppIntentExecutor?>.Content(*v13, v26, v27);
      *v12 = v25;
      *(v12 + 8) = v26;
      *(v12 + 16) = v27;
      v28 = *(v13 + 24);
      *(v12 + 24) = v28;
      v29 = *(v13 + 40);
      *(v12 + 32) = *(v13 + 32);
      *(v12 + 40) = v29;
      v30 = v28;

      return a1;
    }

LABEL_7:
    v31 = *v13;
    v32 = *(v13 + 32);
    *(v12 + 16) = *(v13 + 16);
    *(v12 + 32) = v32;
    *v12 = v31;
    return a1;
  }

  if (v14 < 0xFFFFFFFF)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v12, *(v12 + 8), *(v12 + 16));

    goto LABEL_7;
  }

  v15 = *v13;
  v16 = *(v13 + 8);
  v17 = *(v13 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v13, v16, v17);
  v18 = *v12;
  v19 = *(v12 + 8);
  v20 = *(v12 + 16);
  *v12 = v15;
  *(v12 + 8) = v16;
  *(v12 + 16) = v17;
  outlined consume of Environment<AppIntentExecutor?>.Content(v18, v19, v20);
  v21 = *(v13 + 24);
  v22 = *(v12 + 24);
  *(v12 + 24) = v21;
  v23 = v21;

  v24 = *(v13 + 40);
  *(v12 + 32) = *(v13 + 32);
  *(v12 + 40) = v24;

  return a1;
}

uint64_t Toggle.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v21 = *(a1 + 16);
  v22 = lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label();
  v4 = *(a1 + 24);
  *&v37 = &type metadata for ToggleStyleConfiguration.Label;
  *(&v37 + 1) = v21;
  *&v38 = v22;
  *(&v38 + 1) = v4;
  type metadata accessor for StaticSourceWriter();
  v5 = type metadata accessor for ModifiedContent();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v12 = *v2;
  v11 = v2[1];
  v13 = *(v2 + 16);

  *&v29 = v12;
  *(&v29 + 1) = v11;
  LOBYTE(v30) = v13;
  v14 = (v2 + *(a1 + 40));
  v15 = v14[1];
  v35[0] = *v14;
  v35[1] = v15;
  v35[2] = v14[2];
  outlined init with copy of AppIntentAction?(v35, &v37);
  ToggleStyleConfiguration.init(toggleState:appIntentAction:)(&v29, v35, v36);
  v31 = v36[2];
  v32 = v36[3];
  v33 = v36[4];
  v34 = v36[5];
  v29 = v36[0];
  v30 = v36[1];
  v16 = v21;
  v25[2] = v21;
  v25[3] = v4;
  v26 = v2;
  outlined init with copy of ToggleStyleConfiguration(v36, &v37);
  v17 = lazy protocol witness table accessor for type ResolvedToggleStyle and conformance ResolvedToggleStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for ToggleStyleConfiguration.Label, partial apply for closure #1 in Toggle.body.getter, v25, &type metadata for ResolvedToggleStyle, &type metadata for ToggleStyleConfiguration.Label, v16, v17);
  outlined destroy of ToggleStyleConfiguration(v36);
  v39 = v31;
  v40 = v32;
  v41 = v33;
  v42 = v34;
  v37 = v29;
  v38 = v30;
  outlined destroy of ResolvedToggleStyle(&v37);
  v27 = v17;
  v28 = &protocol witness table for StaticSourceWriter<A, B>;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v7, v5, WitnessTable);
  v19 = *(v23 + 8);
  v19(v7, v5);
  static ViewBuilder.buildExpression<A>(_:)(v10, v5, WitnessTable);
  return (v19)(v10, v5);
}

uint64_t outlined init with copy of AppIntentAction?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVySbGMaTm_4(0, &lazy cache variable for type metadata for AppIntentAction?, &type metadata for AppIntentAction, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in UICollectionViewListCoordinator.listConfiguration(offset:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UIListSeparatorConfiguration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v7 + 16))(a3, a2, v6);
  }

  v11 = Strong;
  UICollectionViewListCoordinator.separatorConfiguration(indexPath:uikitConfig:)(a1, a2, v9);

  return (*(v7 + 32))(a3, v9, v6);
}

uint64_t ToggleStyleConfiguration.init(toggleState:appIntentAction:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v6 = a2[3];
  v23 = a2[4];
  v24 = *a2;
  v21 = a2[5];
  v22 = a2[2];
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  lazy protocol witness table accessor for type ToggleStateBool and conformance ToggleStateBool();

  v25 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  v27 = v7;
  v28 = v8;
  v29 = v9;
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948]);
  v11 = v10;

  MEMORY[0x18D00ACC0](&v26, v11);

  v13 = v26;
  v14 = a2[3];
  if (v14)
  {
    v15 = v24;
    v20 = v9;
    v16 = v26;
    outlined copy of Environment<AppIntentExecutor?>.Content(v24, v5, v22 & 1);
    v17 = v6;
    v18 = v21;

    result = outlined destroy of AppIntentAction?(a2, &lazy cache variable for type metadata for AppIntentAction?, &type metadata for AppIntentAction);
    v13 = v16;
    v9 = v20;
    v14 = v22 & 1;
    v19 = v23;
  }

  else
  {
    v15 = 0;
    v5 = 0;
    v6 = 0;
    v19 = 0;
    v18 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = v25;
  *(a3 + 16) = v9 == 0;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 41) = v13 == 2;
  *(a3 + 48) = v15;
  *(a3 + 56) = v5;
  *(a3 + 64) = v14;
  *(a3 + 72) = v6;
  *(a3 + 80) = v19;
  *(a3 + 88) = v18;
  return result;
}

uint64_t UICollectionViewListCoordinator.separatorConfiguration(indexPath:uikitConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D40];
  v118 = type metadata accessor for ShadowRowCollection();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v109 - v9;
  v10 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v125 = *(v10 - 8);
  v126 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v124 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v109 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v109 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v109 - v17;
  v129 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v130 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v128 = &v109 - v20;
  v21 = type metadata accessor for ShadowListDataSource();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v109 - v23;
  v25 = type metadata accessor for UIListSeparatorConfiguration();
  v26 = *(*(v25 - 8) + 16);
  v132 = a3;
  v26(a3, a2, v25);
  v27 = *((*v8 & *v4) + 0x88);
  swift_beginAccess();
  v28 = *(v22 + 16);
  v113 = v27;
  v112 = v22 + 16;
  v111 = v28;
  v28(v24, &v4[v27], v21);
  WitnessTable = swift_getWitnessTable();
  v30 = ListCoreDataSource.separatorConfiguration(forRowAt:)(a1, v21, WitnessTable);
  v121 = v31;
  v33 = v32;
  v35 = v34;
  v36 = *(v22 + 8);
  v114 = v24;
  v109 = v21;
  v115 = v22 + 8;
  v110 = v36;
  v36(v24, v21);
  v131 = a1;
  v37 = IndexPath.row.getter();
  v38 = MEMORY[0x1E69DC250];
  if (!v37 || (v39 = v4, v40 = v30, v41 = v128, UICollectionViewListCoordinator.listAppearance.getter(), v42 = *v38, v43 = v127, v44 = v130, v45 = v33, v46 = v129, (*(v127 + 104))(v130, v42, v129), v47 = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)(), v48 = *(v43 + 8), v49 = v44, v38 = MEMORY[0x1E69DC250], v48(v49, v46), v50 = v41, v30 = v40, v4 = v39, v51 = v46, v33 = v45, v48(v50, v51), (v47 & 1) != 0) && (v53 = &v39[*((*MEMORY[0x1E69E7D40] & *v39) + 0x150)], (v53[8] & 1) == 0) && (v52.n128_u64[0] = *v53, *v53 > 0.0))
  {
    v54 = v125;
    v55 = **(&unk_1E7238190 + v30);
    v56 = v120;
    v57 = v126;
    (*(v125 + 104))(v120, v55, v126);
    (*(v54 + 32))(v119, v56, v57);
    UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  }

  v58 = v124;
  v59 = v125;
  v60 = v126;
  (*(v125 + 104))(v124, **(&unk_1E7238190 + v33), v126, v52);
  (*(v59 + 32))(v123, v58, v60);
  UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
  if (v35)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);

    UIColor.init(_:)(v61);
    UIListSeparatorConfiguration.color.setter();
  }

  v62 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v63 = explicitInset #1 <A, B>(of:edge:) in UICollectionViewListCoordinator.separatorConfiguration(indexPath:uikitConfig:)(v62, 0);
  v122 = v35;
  if ((v64 & 1) == 0)
  {
    goto LABEL_15;
  }

  v65 = v128;
  UICollectionViewListCoordinator.listAppearance.getter();
  v66 = *v38;
  v67 = v127;
  v69 = v129;
  v68 = v130;
  (*(v127 + 104))(v130, v66, v129);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UICollectionLayoutListConfiguration.Appearance and conformance UICollectionLayoutListConfiguration.Appearance, MEMORY[0x1E69DC260]);
  v70 = dispatch thunk of static Equatable.== infix(_:_:)();
  v71 = *(v67 + 8);
  v71(v68, v69);
  v71(v65, v69);
  if ((v70 & 1) == 0)
  {
    goto LABEL_25;
  }

  v72 = IndexPath.row.getter();
  v73 = v114;
  v74 = v109;
  v111(v114, &v4[v113], v109);
  v75 = IndexPath.section.getter();
  v76 = swift_getWitnessTable();
  v77 = v116;
  ListDiffable.rowIDs(forSectionAtOffset:)(v75, v74, v76);
  v110(v73, v74);
  v78 = v118;
  v79 = ShadowRowCollection.count.getter(v118);
  result = (*(v117 + 8))(v77, v78);
  if (__OFSUB__(v79, 1))
  {
    __break(1u);
    return result;
  }

  if (v72 < v79 - 1)
  {
LABEL_25:
    v81 = UICollectionViewListCoordinatorBase.collectionView.getter();
    if (!v81 || (v82 = v81, v83 = [v81 traitCollection], v82, v84 = objc_msgSend(v83, sel_userInterfaceIdiom), v83, v84 != 6))
    {
      v85 = static HorizontalAlignment.leadingText.getter();
      v63 = explicitInset #1 <A, B>(of:edge:) in UICollectionViewListCoordinator.separatorConfiguration(indexPath:uikitConfig:)(v85, 0);
      if ((v86 & 1) == 0)
      {
LABEL_15:
        v87 = v63;
        v88 = UIListSeparatorConfiguration.bottomSeparatorInsets.modify();
        *(v89 + 8) = v87;
        v88(v133, 0);
        v90 = v128;
        UICollectionViewListCoordinator.listAppearance.getter();
        v91 = v127;
        v92 = *(v127 + 104);
        v94 = v129;
        v93 = v130;
        v92(v130, *MEMORY[0x1E69DC240], v129);
        v95 = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)();
        v96 = *(v91 + 8);
        v96(v93, v94);
        v96(v90, v94);
        if (v95 & 1) != 0 || (v97 = v128, UICollectionViewListCoordinator.listAppearance.getter(), v99 = v129, v98 = v130, v92(v130, *MEMORY[0x1E69DC248], v129), v100 = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)(), v96(v98, v99), v96(v97, v99), (v100))
        {
          if (!IndexPath.row.getter())
          {
            v101 = UIListSeparatorConfiguration.topSeparatorInsets.modify();
            *(v102 + 8) = v87;
            v101(v133, 0);
          }
        }
      }
    }
  }

  v103 = static HorizontalAlignment.listRowSeparatorTrailing.getter();
  v104 = explicitInset #1 <A, B>(of:edge:) in UICollectionViewListCoordinator.separatorConfiguration(indexPath:uikitConfig:)(v103, 1);
  if ((v105 & 1) == 0)
  {
    v106 = v104;
    v107 = UIListSeparatorConfiguration.bottomSeparatorInsets.modify();
    *(v108 + 24) = v106;
    v107(v133, 0);
  }
}

uint64_t ListCoreDataSource.separatorConfiguration(forRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  v11 = ListDiffable.rowIndex(at:)(&v14 - v9, a1, a2, v6);
  v12 = (*(a3 + 232))(v10, v11, a2, a3);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v12;
}

unint64_t lazy protocol witness table accessor for type ToggleStateBool and conformance ToggleStateBool()
{
  result = lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool;
  if (!lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool;
  if (!lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool;
  if (!lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleStateBool and conformance ToggleStateBool);
  }

  return result;
}

uint64_t ShadowListDataSource.separatorConfiguration(forRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  v39 = a1;
  v40 = v3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v33 - v7;
  v35 = *(v4 - 8);
  v8 = v35;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  v13 = v34;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  (*(v6 + 16))(&v33 - v18, v39, AssociatedTypeWitness, v17);
  v20 = v37;
  *&v19[*(TupleTypeMetadata2 + 48)] = v38;
  v21 = *(v8 + 16);
  v22 = v11;
  v21(v11, v20, v4);
  (*(v13 + 16))(v15, v19, TupleTypeMetadata2);
  v23 = *&v15[*(TupleTypeMetadata2 + 48)];
  updated = type metadata accessor for ShadowListUpdateRecorder();
  v25 = v36;
  v26 = ShadowListUpdateRecorder.initialIndex(_:)(v36, v15, v23, updated);
  v27 = *(v6 + 8);
  v28 = v33;
  v27(v15, v33);
  v29 = (*(v40 + 232))(v25, v26, v4);
  v40 = v30;
  LODWORD(v39) = v31;
  v27(v25, v28);
  (*(v35 + 8))(v22, v4);
  (*(v34 + 8))(v19, TupleTypeMetadata2);
  return v29;
}