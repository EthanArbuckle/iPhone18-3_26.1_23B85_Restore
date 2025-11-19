uint64_t AlwaysOnBridge.preferencesDidChange(_:)()
{
  PreferenceValues.subscript.getter();
  if (v4 == -1 || v4 != *(v0 + 44))
  {
    *(v0 + 44) = v4;
    v1 = *(v0 + 48);
    *(v0 + 48) = v3;
    AlwaysOnBridge.timelineRegistrations.didset(v1);
  }
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance AlwaysOnTimelinesKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static AlwaysOnTimelinesKey.defaultValue;
}

uint64_t ContainerBackgroundBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = *a1;
  v27[0] = *a1;
  result = PreferenceValues.seed.getter();
  if (v24 && *(v1 + 145) != 5)
  {
    v4 = *(v1 + 40);
    if (v4)
    {
      v27[0] = v2;
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = *(*v4 + 80);

      v6(v27, partial apply for closure #1 in ContainerBackgroundBridge.preferencesDidChange(_:), v5);
    }

    v8 = ContainerBackgroundBridge.transparentBackgroundSeedTracker.modify();
    if (*(v7 + 4))
    {
      return (v8)(v27, 0);
    }

    else
    {
      v9 = v7;
      swift_weakInit();
      v24 = v2;
      PreferenceValues.subscript.getter();
      if (*v9 == -1 || v26 == -1 || *v9 != v26)
      {
        *v9 = v26;
        v10 = v25;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v12 = Strong;
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13 && (v14 = v13, v15 = *(v12 + 64), v16 = swift_getObjectType(), v17 = type metadata accessor for ContainerBackgroundHost(), (*(*(*(v15 + 16) + 8) + 16))(v23, v17, v17, v16), v14, v23[0]))
          {
            v18 = v23[1];
            ObjectType = swift_getObjectType();
            v20 = (*(v18 + 24))(ObjectType, v18);
            if (v10 == 1)
            {
              v21 = 0;
            }

            else
            {
              v21 = v20;
            }

            if (v10)
            {
              v22 = v21;
            }

            else
            {
              v22 = 1;
            }

            (*(v18 + 8))(16, v22 & 1, ObjectType, v18);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      (v8)(v27, 0);
      return swift_weakDestroy();
    }
  }

  return result;
}

uint64_t sub_18BE0437C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance PopoverPresentation.Key@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static PopoverPresentation.Key.defaultValue;
}

uint64_t outlined destroy of PopoverPresentation?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for PopoverPresentation?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t storeEnumTagSinglePayload for AnyShareConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

void ShareConfigurationBridge.shareConfigurationDidChange(_:)(uint64_t a1)
{
  v2 = *(a1 + 80);
  v47 = *(a1 + 64);
  v48 = v2;
  v49 = *(a1 + 96);
  v3 = *(a1 + 16);
  v43 = *a1;
  v44 = v3;
  v4 = *(a1 + 48);
  v45 = *(a1 + 32);
  v46 = v4;
  v5 = *(a1 + 64);
  if (v5 == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v24 = ViewGraphDelegate.uiViewController.getter(ObjectType, *(*(v6 + 16) + 8));
      swift_unknownObjectRelease();
      if (v24)
      {
        [v24 setActivityItemsConfiguration_];
      }
    }
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v38[0] = *(a1 + 33);
    *(v38 + 15) = *(a1 + 48);
    v14 = *(a1 + 88);
    v36 = *(a1 + 72);
    v37 = v14;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v1 + 24);
      v16 = swift_getObjectType();
      v34[4] = v47;
      v34[5] = v48;
      v35 = v49;
      v34[0] = v43;
      v34[1] = v44;
      v34[2] = v45;
      v34[3] = v46;
      outlined init with copy of AnyShareConfiguration(v34, &v39);
      v23 = v16;
      v25 = v15;
      v17 = ViewGraphDelegate.uiViewController.getter(v16, *(v15[2] + 8));
      if (v17)
      {
        v18 = v17;
        if (v13)
        {
          if (v13 == 1)
          {
            outlined init with copy of AnyShareConfiguration?(a1, &v39);
            v19 = outlined copy of AppIntentExecutor?(v11);
            v20 = v9(v19);
            outlined consume of AnyShareConfiguration.Storage(v9, v10, v11, v12, 1);
            v21 = 2;
            v9 = v20;
            v10 = v11;
            v11 = v12;
            v12 = 0;
          }

          else
          {
            *v42 = v47;
            *&v42[16] = v48;
            *&v42[32] = v49;
            v39 = v43;
            v40 = v44;
            *v41 = v45;
            *&v41[16] = v46;
            outlined init with copy of AnyShareConfiguration(&v39, v28);
            v21 = 2;
          }
        }

        else
        {
          *v42 = v47;
          *&v42[16] = v48;
          *&v42[32] = v49;
          v39 = v43;
          v40 = v44;
          *v41 = v45;
          *&v41[16] = v46;
          outlined init with copy of AnyShareConfiguration(&v39, v28);
          v21 = 0;
        }

        type metadata accessor for UIActivityItemsConfiguration();
        *&v41[1] = v38[0];
        *&v41[16] = *(v38 + 15);
        *&v42[8] = v36;
        *&v42[24] = v37;
        *v30 = v38[0];
        *&v30[15] = *(v38 + 15);
        v32 = v36;
        *&v39 = v9;
        *(&v39 + 1) = v10;
        *&v40 = v11;
        *(&v40 + 1) = v12;
        v41[0] = v21;
        *v42 = v5;
        v28[0] = v9;
        v28[1] = v10;
        v28[2] = v11;
        v28[3] = v12;
        v29 = v21;
        v31 = v5;
        v33 = v37;
        outlined init with copy of AnyShareConfiguration(&v39, v27);
        outlined destroy of AnyShareConfiguration(v28);
        (*(v25[1] + 8))(v23);
        GraphHost.environment.getter();

        v26 = v27[0];
        v22 = UIActivityItemsConfiguration.init(configuration:env:)(&v39, &v26);
        [v18 setActivityItemsConfiguration_];
        outlined destroy of AnyShareConfiguration?(a1);
      }

      else
      {
        outlined destroy of AnyShareConfiguration?(a1);
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t AttributedString.transformingUIKitAttributedForSwiftUI()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for AttributedString.AdaptiveImageGlyph?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v261 = &v253 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v260 = &v253 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v272 = &v253 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v305 = &v253 - v11;
  v315 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v329 = *(v315 - 8);
  MEMORY[0x1EEE9AC00](v315);
  v311 = &v253 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v317 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v316 = &v253 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScopedAttributeContainer<AttributeScopes.SwiftUIAttributes>();
  v322 = v15;
  v326 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v271 = &v253 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v270 = &v253 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v269 = &v253 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v313 = &v253 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v278 = &v253 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v277 = &v253 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v276 = &v253 - v28;
  type metadata accessor for ScopedAttributeContainer<AttributeScopes.UIKitAttributes>();
  v327 = *(v29 - 8);
  v328 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v304 = &v253 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v259 = &v253 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v303 = &v253 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v258 = &v253 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v302 = &v253 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v301 = &v253 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v300 = &v253 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v299 = &v253 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v298 = &v253 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v297 = &v253 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v296 = &v253 - v50;
  v320 = type metadata accessor for AttributeContainer();
  v325 = *(v320 - 8);
  MEMORY[0x1EEE9AC00](v320);
  v268 = &v253 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v295 = &v253 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v257 = &v253 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v267 = &v253 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v294 = &v253 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v256 = &v253 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v266 = &v253 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v293 = &v253 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v292 = &v253 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v291 = &v253 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v312 = &v253 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v290 = &v253 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v275 = &v253 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v289 = &v253 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v274 = &v253 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v288 = &v253 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v273 = &v253 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v287 = &v253 - v85;
  v309 = type metadata accessor for AttributedString.Runs.Index();
  v324 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309);
  v308 = &v253 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = type metadata accessor for AttributedString.Runs.Run();
  v87 = *(v314 - 8);
  MEMORY[0x1EEE9AC00](v314);
  v89 = &v253 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90);
  v286 = &v253 - v91;
  v92 = type metadata accessor for AttributedString.Runs();
  v93 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v253 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<AttributedString.Runs>();
  v97 = v96 - 8;
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v253 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for AttributedString();
  (*(*(v100 - 8) + 16))(a1, v2, v100);
  v318 = a1;
  AttributedString.runs.getter();
  (*(v93 + 16))(v99, v95, v92);
  v101 = *(v97 + 44);
  v102 = v89;
  v103 = lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
  v307 = v99;
  dispatch thunk of Collection.startIndex.getter();
  (*(v93 + 8))(v95, v92);
  v306 = (v324 + 8);
  v282 = (v87 + 16);
  v281 = (v87 + 32);
  v323 = (v325 + 8);
  ++v327;
  v321 = (v326 + 8);
  v280 = (v329 + 48);
  v265 = (v329 + 32);
  v264 = (v329 + 8);
  v279 = (v87 + 8);
  v255 = (v329 + 16);
  v254 = (v329 + 56);
  v319 = v102;
  v284 = v101;
  v285 = v92;
  v283 = v103;
  while (1)
  {
    v108 = v308;
    v109 = v307;
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0]);
    v110 = v309;
    v111 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v306)(v108, v110);
    if (v111)
    {
      break;
    }

    v112 = dispatch thunk of Collection.subscript.read();
    v113 = v286;
    v114 = v314;
    (*v282)(v286);
    v112(&v332, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v281)(v102, v113, v114);
    v115 = v287;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v116 = type metadata accessor for AttributeScopes.UIKitAttributes();
    v117 = lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes and conformance AttributeScopes.UIKitAttributes, MEMORY[0x1E69DBE88]);
    v118 = v296;
    v325 = v117;
    v326 = v116;
    AttributeContainer.subscript.getter();

    v119 = *v323;
    v120 = v320;
    (*v323)(v115, v320);
    swift_getKeyPath();
    v121 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.BackgroundColorAttribute and conformance AttributeScopes.UIKitAttributes.BackgroundColorAttribute();
    v122 = v328;
    v310 = v121;
    ScopedAttributeContainer.subscript.getter();

    v324 = *v327;
    (v324)(v118, v122);
    v123 = v332;
    v329 = v119;
    if (v332)
    {
      v124 = v102;
      v125 = v273;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930]);
      v126 = v276;
      AttributeContainer.subscript.getter();

      (v119)(v125, v120);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute();
      v127 = v322;
      ScopedAttributeContainer.subscript.getter();

      (*v321)(v126, v127);
      if (v332)
      {
      }

      else
      {
        v128 = v316;
        AttributedString.Runs.Run.range.getter();
        type metadata accessor for UIKitPlatformColorDefinition();
        v129 = v123;
        v130 = Color.init(_platformColor:definition:)();
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
        v131 = AttributedString.subscript.modify();
        v330 = v130;
        AttributedSubstring.subscript.setter();
        v131(&v332, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v128, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v330 = 0;
        v132 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v132(&v332, 0);

        outlined destroy of AttributedString.AdaptiveImageGlyph?(v128, type metadata accessor for Range<AttributedString.Index>);
      }

      v120 = v320;
      v102 = v124;
    }

    v133 = v288;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v134 = v297;
    AttributeContainer.subscript.getter();

    v135 = v329;
    (v329)(v133, v120);
    swift_getKeyPath();
    v136 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute();
    v137 = v328;
    v310 = v136;
    ScopedAttributeContainer.subscript.getter();

    (v324)(v134, v137);
    v138 = v332;
    if (v332)
    {
      v139 = v102;
      v140 = v274;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930]);
      v141 = v277;
      AttributeContainer.subscript.getter();

      v135(v140, v120);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
      v142 = v322;
      ScopedAttributeContainer.subscript.getter();

      (*v321)(v141, v142);
      if (v332)
      {
      }

      else
      {
        v143 = v316;
        AttributedString.Runs.Run.range.getter();
        type metadata accessor for UIKitPlatformColorDefinition();
        v144 = v138;
        v145 = Color.init(_platformColor:definition:)();
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
        v146 = AttributedString.subscript.modify();
        v330 = v145;
        AttributedSubstring.subscript.setter();
        v146(&v332, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v143, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v330 = 0;
        v147 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v147(&v332, 0);

        outlined destroy of AttributedString.AdaptiveImageGlyph?(v143, type metadata accessor for Range<AttributedString.Index>);
      }

      v120 = v320;
      v102 = v139;
    }

    v148 = v289;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v149 = v298;
    AttributeContainer.subscript.getter();

    v150 = v329;
    (v329)(v148, v120);
    swift_getKeyPath();
    v151 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    v152 = v328;
    v310 = v151;
    ScopedAttributeContainer.subscript.getter();

    (v324)(v149, v152);
    v153 = v332;
    if (v332)
    {
      v154 = v102;
      v155 = v275;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930]);
      v156 = v278;
      AttributeContainer.subscript.getter();

      v150(v155, v120);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();
      v157 = v322;
      ScopedAttributeContainer.subscript.getter();

      (*v321)(v156, v157);
      if (v332)
      {
      }

      else
      {
        v158 = v316;
        AttributedString.Runs.Run.range.getter();
        v159 = v153;
        v160 = Font.init(_:)();
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
        v161 = AttributedString.subscript.modify();
        v330 = v160;
        AttributedSubstring.subscript.setter();
        v161(&v332, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v158, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v330 = 0;
        v162 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v162(&v332, 0);

        outlined destroy of AttributedString.AdaptiveImageGlyph?(v158, type metadata accessor for Range<AttributedString.Index>);
      }

      v120 = v320;
      v102 = v154;
    }

    v163 = v290;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v164 = v299;
    AttributeContainer.subscript.getter();

    (v329)(v163, v120);
    swift_getKeyPath();
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.KernAttribute and conformance AttributeScopes.UIKitAttributes.KernAttribute();
    v165 = v328;
    ScopedAttributeContainer.subscript.getter();

    (v324)(v164, v165);
    if ((v333 & 1) == 0)
    {
      v310 = v332;
      v166 = v312;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930]);
      v167 = v313;
      AttributeContainer.subscript.getter();

      (v329)(v166, v120);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute();
      v168 = v322;
      ScopedAttributeContainer.subscript.getter();

      (*v321)(v167, v168);
      if (v333 == 1)
      {
        v169 = v332;
        v170 = v316;
        AttributedString.Runs.Run.range.getter();
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
        v171 = AttributedString.subscript.modify();
        v330 = v310;
        LOBYTE(v331) = 0;
        AttributedSubstring.subscript.setter();
        v171(&v332, 0);
        v120 = v320;
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v170, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v330 = v169;
        LOBYTE(v331) = 1;
        v172 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v172(&v332, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v170, type metadata accessor for Range<AttributedString.Index>);
      }
    }

    v173 = v291;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v174 = v300;
    AttributeContainer.subscript.getter();

    (v329)(v173, v120);
    swift_getKeyPath();
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.TrackingAttribute and conformance AttributeScopes.UIKitAttributes.TrackingAttribute();
    v175 = v328;
    ScopedAttributeContainer.subscript.getter();

    (v324)(v174, v175);
    if ((v333 & 1) == 0)
    {
      v310 = v332;
      v176 = v312;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930]);
      v177 = v313;
      AttributeContainer.subscript.getter();

      (v329)(v176, v120);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute();
      v178 = v322;
      ScopedAttributeContainer.subscript.getter();

      (*v321)(v177, v178);
      if (v333 == 1)
      {
        v179 = v332;
        v180 = v316;
        AttributedString.Runs.Run.range.getter();
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
        v181 = AttributedString.subscript.modify();
        v330 = v310;
        LOBYTE(v331) = 0;
        AttributedSubstring.subscript.setter();
        v181(&v332, 0);
        v120 = v320;
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v180, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v330 = v179;
        LOBYTE(v331) = 1;
        v182 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v182(&v332, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v180, type metadata accessor for Range<AttributedString.Index>);
      }
    }

    v183 = v292;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v184 = v301;
    AttributeContainer.subscript.getter();

    (v329)(v183, v120);
    swift_getKeyPath();
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.BaselineOffsetAttribute and conformance AttributeScopes.UIKitAttributes.BaselineOffsetAttribute();
    v185 = v328;
    ScopedAttributeContainer.subscript.getter();

    (v324)(v184, v185);
    if ((v333 & 1) == 0)
    {
      v310 = v332;
      v186 = v312;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930]);
      v187 = v313;
      AttributeContainer.subscript.getter();

      (v329)(v186, v120);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute();
      v188 = v322;
      ScopedAttributeContainer.subscript.getter();

      (*v321)(v187, v188);
      if (v333 == 1)
      {
        v189 = v332;
        v190 = v316;
        AttributedString.Runs.Run.range.getter();
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
        v191 = AttributedString.subscript.modify();
        v330 = v310;
        LOBYTE(v331) = 0;
        AttributedSubstring.subscript.setter();
        v191(&v332, 0);
        v120 = v320;
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v190, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v330 = v189;
        LOBYTE(v331) = 1;
        v192 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v192(&v332, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v190, type metadata accessor for Range<AttributedString.Index>);
      }
    }

    v193 = v293;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v194 = v302;
    AttributeContainer.subscript.getter();

    (v329)(v193, v120);
    swift_getKeyPath();
    v195 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute();
    v196 = v328;
    ScopedAttributeContainer.subscript.getter();

    (v324)(v194, v196);
    if ((v333 & 1) == 0)
    {
      v310 = v195;
      v197 = v332;
      v198 = v102;
      v199 = v266;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930]);
      v200 = v269;
      AttributeContainer.subscript.getter();

      (v329)(v199, v120);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute();
      v201 = v120;
      v202 = v322;
      ScopedAttributeContainer.subscript.getter();

      (*v321)(v200, v202);
      if (v333 == 1)
      {
        v203 = (~v197 & 9) == 0 || v197 == 0;
        v204 = (v197 >> 1) & 1;
        if (v203)
        {
          LODWORD(v204) = 1;
        }

        v205 = v204 | (v197 >> 15) & 1;
        if (v205)
        {
          v206 = 0;
        }

        else
        {
          v206 = v197;
        }

        v207 = v256;
        AttributedString.Runs.Run.attributes.getter();
        swift_getKeyPath();
        v208 = v258;
        AttributeContainer.subscript.getter();

        (v329)(v207, v201);
        swift_getKeyPath();
        v209 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.StrikethroughColorAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughColorAttribute();
        v210 = v328;
        v263 = v209;
        ScopedAttributeContainer.subscript.getter();

        (v324)(v208, v210);
        if (v332)
        {
          if (v205)
          {

            v205 = 1;
          }

          else
          {
            type metadata accessor for UIKitPlatformColorDefinition();
            v205 = Color.init(_platformColor:definition:)();
          }
        }

        v211 = v316;
        AttributedString.Runs.Run.range.getter();
        outlined copy of Text.LineStyle?(v206, v205);
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
        v310 = v205;
        v212 = AttributedString.subscript.modify();
        v330 = v206;
        v331 = v205;
        AttributedSubstring.subscript.setter();
        v212(&v332, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v211, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v330 = 0;
        LOBYTE(v331) = 1;
        v213 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v213(&v332, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v211, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v330 = 0;
        v102 = v319;
        v214 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v214(&v332, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v211, type metadata accessor for Range<AttributedString.Index>);
        outlined consume of Text.LineStyle?(v206, v310);
        v120 = v320;
      }

      else
      {
        outlined consume of Text.LineStyle?(v332, v333);
        v102 = v198;
      }
    }

    v215 = v294;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v216 = v303;
    AttributeContainer.subscript.getter();

    (v329)(v215, v120);
    swift_getKeyPath();
    v217 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute();
    v218 = v328;
    ScopedAttributeContainer.subscript.getter();

    (v324)(v216, v218);
    if ((v333 & 1) == 0)
    {
      v310 = v217;
      v219 = v332;
      v220 = v267;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930]);
      v221 = v270;
      AttributeContainer.subscript.getter();

      (v329)(v220, v120);
      swift_getKeyPath();
      v222 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute();
      v223 = v322;
      ScopedAttributeContainer.subscript.getter();

      (*v321)(v221, v223);
      if (v333 == 1)
      {
        v263 = v222;
        v224 = (~v219 & 9) == 0 || v219 == 0;
        v225 = (v219 >> 1) & 1;
        if (v224)
        {
          LODWORD(v225) = 1;
        }

        v226 = v225 | (v219 >> 15) & 1;
        if (v226)
        {
          v227 = 0;
        }

        else
        {
          v227 = v219;
        }

        v228 = v257;
        AttributedString.Runs.Run.attributes.getter();
        swift_getKeyPath();
        v229 = v259;
        AttributeContainer.subscript.getter();

        (v329)(v228, v120);
        swift_getKeyPath();
        v230 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.UnderlineColorAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineColorAttribute();
        v231 = v328;
        v262 = v230;
        ScopedAttributeContainer.subscript.getter();

        (v324)(v229, v231);
        if (v332)
        {
          if (v226)
          {

            v226 = 1;
          }

          else
          {
            type metadata accessor for UIKitPlatformColorDefinition();
            v226 = Color.init(_platformColor:definition:)();
          }
        }

        v232 = v316;
        AttributedString.Runs.Run.range.getter();
        outlined copy of Text.LineStyle?(v227, v226);
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
        v233 = AttributedString.subscript.modify();
        v330 = v227;
        v331 = v226;
        AttributedSubstring.subscript.setter();
        v233(&v332, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v232, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v330 = 0;
        LOBYTE(v331) = 1;
        v234 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v234(&v332, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v232, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        v330 = 0;
        v102 = v319;
        v235 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v235(&v332, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v232, type metadata accessor for Range<AttributedString.Index>);
        outlined consume of Text.LineStyle?(v227, v226);
        v120 = v320;
      }

      else
      {
        outlined consume of Text.LineStyle?(v332, v333);
        v102 = v319;
      }
    }

    v236 = v295;
    AttributedString.Runs.Run.attributes.getter();
    swift_getKeyPath();
    v237 = v304;
    AttributeContainer.subscript.getter();

    v238 = v329;
    (v329)(v236, v120);
    swift_getKeyPath();
    v239 = lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute();
    v240 = v305;
    v241 = v328;
    v326 = v239;
    ScopedAttributeContainer.subscript.getter();
    v242 = v240;

    (v324)(v237, v241);
    v243 = v120;
    v244 = *v280;
    v245 = v315;
    if ((*v280)(v242, 1, v315) == 1)
    {
      (*v279)(v102, v314);
      outlined destroy of AttributedString.AdaptiveImageGlyph?(v242, type metadata accessor for AttributedString.AdaptiveImageGlyph?);
    }

    else
    {
      (*v265)(v311, v242, v245);
      v246 = v268;
      AttributedString.Runs.Run.attributes.getter();
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.SwiftUIAttributes();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930]);
      v247 = v271;
      AttributeContainer.subscript.getter();

      v238(v246, v243);
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute();
      v248 = v272;
      v249 = v322;
      ScopedAttributeContainer.subscript.getter();
      v250 = v315;

      (*v321)(v247, v249);
      v251 = v244(v248, 1, v250);
      outlined destroy of AttributedString.AdaptiveImageGlyph?(v248, type metadata accessor for AttributedString.AdaptiveImageGlyph?);
      if (v251 == 1)
      {
        v104 = v316;
        AttributedString.Runs.Run.range.getter();
        v105 = v260;
        (*v255)(v260, v311, v250);
        v329 = *v254;
        (v329)(v105, 0, 1, v250);
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
        v106 = AttributedString.subscript.modify();
        outlined init with copy of AttributedString.AdaptiveImageGlyph?(v105, v261);
        v102 = v319;
        AttributedSubstring.subscript.setter();
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v105, type metadata accessor for AttributedString.AdaptiveImageGlyph?);
        v106(&v332, 0);
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v104, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.Runs.Run.range.getter();
        (v329)(v105, 1, 1, v315);
        v107 = AttributedString.subscript.modify();
        AttributedSubstring.subscript.setter();
        v107(&v332, 0);
        v250 = v315;
        outlined destroy of AttributedString.AdaptiveImageGlyph?(v104, type metadata accessor for Range<AttributedString.Index>);
      }

      (*v264)(v311, v250);
      (*v279)(v102, v314);
    }
  }

  return outlined destroy of AttributedString.AdaptiveImageGlyph?(v109, type metadata accessor for IndexingIterator<AttributedString.Runs>);
}

uint64_t sub_18BE078A4@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.uiKit.getter();
  result = type metadata accessor for AttributeScopes.UIKitAttributes();
  *a1 = result;
  return result;
}

uint64_t sub_18BE079D0@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.swiftUI.getter();
  result = type metadata accessor for AttributeScopes.SwiftUIAttributes();
  *a1 = result;
  return result;
}

void type metadata accessor for AttributedString.AdaptiveImageGlyph?()
{
  if (!lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?)
  {
    type metadata accessor for AttributedString.AdaptiveImageGlyph();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?);
    }
  }
}

void type metadata accessor for Range<AttributedString.Index>()
{
  if (!lazy cache variable for type metadata for Range<AttributedString.Index>)
  {
    type metadata accessor for AttributedString.Index();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<AttributedString.Index>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_6(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_7(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for ScopedAttributeContainer<AttributeScopes.SwiftUIAttributes>()
{
  if (!lazy cache variable for type metadata for ScopedAttributeContainer<AttributeScopes.SwiftUIAttributes>)
  {
    type metadata accessor for AttributeScopes.SwiftUIAttributes();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930]);
    v0 = type metadata accessor for ScopedAttributeContainer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScopedAttributeContainer<AttributeScopes.SwiftUIAttributes>);
    }
  }
}

void type metadata accessor for ScopedAttributeContainer<AttributeScopes.UIKitAttributes>()
{
  if (!lazy cache variable for type metadata for ScopedAttributeContainer<AttributeScopes.UIKitAttributes>)
  {
    type metadata accessor for AttributeScopes.UIKitAttributes();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes and conformance AttributeScopes.UIKitAttributes, MEMORY[0x1E69DBE88]);
    v0 = type metadata accessor for ScopedAttributeContainer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScopedAttributeContainer<AttributeScopes.UIKitAttributes>);
    }
  }
}

void type metadata accessor for IndexingIterator<AttributedString.Runs>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<AttributedString.Runs>)
  {
    type metadata accessor for AttributedString.Runs();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<AttributedString.Runs>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.BackgroundColorAttribute and conformance AttributeScopes.UIKitAttributes.BackgroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.BackgroundColorAttribute and conformance AttributeScopes.UIKitAttributes.BackgroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.BackgroundColorAttribute and conformance AttributeScopes.UIKitAttributes.BackgroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.BackgroundColorAttribute and conformance AttributeScopes.UIKitAttributes.BackgroundColorAttribute);
  }

  return result;
}

uint64_t outlined destroy of AttributedString.AdaptiveImageGlyph?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.BaselineOffsetAttribute and conformance AttributeScopes.UIKitAttributes.BaselineOffsetAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.BaselineOffsetAttribute and conformance AttributeScopes.UIKitAttributes.BaselineOffsetAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.BaselineOffsetAttribute and conformance AttributeScopes.UIKitAttributes.BaselineOffsetAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.BaselineOffsetAttribute and conformance AttributeScopes.UIKitAttributes.BaselineOffsetAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.UIKitAttributes.AdaptiveImageGlyphAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.TrackingAttribute and conformance AttributeScopes.UIKitAttributes.TrackingAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.TrackingAttribute and conformance AttributeScopes.UIKitAttributes.TrackingAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.TrackingAttribute and conformance AttributeScopes.UIKitAttributes.TrackingAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.TrackingAttribute and conformance AttributeScopes.UIKitAttributes.TrackingAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.KernAttribute and conformance AttributeScopes.UIKitAttributes.KernAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.KernAttribute and conformance AttributeScopes.UIKitAttributes.KernAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.KernAttribute and conformance AttributeScopes.UIKitAttributes.KernAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.KernAttribute and conformance AttributeScopes.UIKitAttributes.KernAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ForegroundColorAttribute and conformance AttributeScopes.UIKitAttributes.ForegroundColorAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughStyleAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzAaBRd__r__lAA15ModifiedContentVyxAA35AccessibilityRepresentationModifier33_AAF5C5EDB558810623EAFD84FD4E7390LLVyqd__GGAaBHPxAaBHD1__AhA0cH0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

void static AccessibilityRepresentationModifier._makeView(modifier:inputs:body:)(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v59 = a5;
  v115 = *MEMORY[0x1E69E9840];
  v8 = a2[3];
  v9 = a2[1];
  v111 = a2[2];
  v112 = v8;
  v10 = a2[3];
  v113 = a2[4];
  v11 = a2[1];
  v109 = *a2;
  v110 = v11;
  v79 = v111;
  v80 = v10;
  v81 = a2[4];
  v12 = *a1;
  v114 = *(a2 + 20);
  LODWORD(v82) = *(a2 + 20);
  v77 = v109;
  v78 = v9;
  a3(&v63);
  v13 = v112;
  v14 = DWORD2(v112);
  *&v77 = v112;
  DWORD2(v77) = DWORD2(v112);
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    *a6 = v63;
    a6[1] = v64;
    return;
  }

  LODWORD(v56) = v12;
  v15 = BYTE4(v111);
  v16 = MEMORY[0x1E698D3F8];
  v54 = a6;
  v57 = a4;
  v55 = v14;
  if ((BYTE4(v111) & 0x20) == 0)
  {
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    goto LABEL_16;
  }

  lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();
  PropertyList.subscript.getter();
  if (v77 == 1)
  {
    *&v77 = v63;
    DWORD2(v77) = v64;
    v17 = PreferencesOutputs.subscript.getter();
    v18 = AGSubgraphGetCurrent();
    if (!v18)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v19 = v18;
    v20 = *v16;
    if ((v17 & 0x100000000) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = v17;
    }

    LOBYTE(v77) = 1;
    v52 = 1;
    v53 = v21 | (v20 << 32);
    v51 = 255;
    if ((v15 & 0x40) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v19 = 0;
    if ((v15 & 0x40) != 0)
    {
LABEL_11:
      v79 = v111;
      v80 = v112;
      v81 = v113;
      LODWORD(v82) = v114;
      v77 = v109;
      v78 = v110;
      v22 = _ViewInputs.position.getter();
      UniqueID.init()();
      v23 = v65;
      v24 = AGSubgraphGetCurrent();
      if (!v24)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v25 = *v16;
      LOBYTE(v96) = 1;
      v26 = 1;
      v27 = DWORD2(v113) | (v22 << 32);
      v28 = HIDWORD(v112) | (v25 << 32);
      v29 = 255;
      goto LABEL_15;
    }
  }

  v23 = 0;
  v24 = 0;
  v26 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
LABEL_15:
  v50 = v19;
  *&v105 = v27;
  *(&v105 + 1) = v28;
  *&v106 = 0;
  *(&v106 + 1) = v29;
  v107 = v23;
  *&v108 = v26;
  *(&v108 + 1) = v24;
LABEL_16:
  v30 = v63;
  v31 = v64;
  *&v77 = v63;
  DWORD2(v77) = v64;
  v49 = PreferencesOutputs.subscript.getter();
  *&v77 = v30;
  DWORD2(v77) = v31;
  v58 = PreferencesOutputs.subscript.getter();
  v77 = MEMORY[0x1E69E7CC0];
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  LOBYTE(v65) = 0;
  GraphHost.intern<A>(_:for:id:)();

  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  LOBYTE(v77) = 0;
  PreferencesOutputs.subscript.setter();
  *&v77 = v13;
  DWORD2(v77) = v55;
  v33 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v34 = 0;
  if (v33)
  {
    if ((v58 & 0x100000000) != 0)
    {
      v35 = PreferenceValues.init()();
      *&v65 = v77;
      MEMORY[0x18D00B7D0](v35);
      LOBYTE(v96) = 0;
      GraphHost.intern<A>(_:for:id:)();
    }

    v34 = AGGraphCreateIndirectAttribute2();
    LOBYTE(v77) = 0;
    PreferencesOutputs.subscript.setter();
  }

  v62 = v56;
  type metadata accessor for AccessibilityRepresentationModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(v57 - 8) + 64))
  {
    closure #1 in static AccessibilityRepresentationModifier._makeView(modifier:inputs:body:)(1, v57);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v102 = v109;
  v103 = v110;
  v104 = v111;
  v37 = _GraphInputs.accessibilityEnabled.getter();
  v98 = v111;
  v99 = v112;
  v100 = v113;
  v101 = v114;
  v96 = v109;
  v97 = v110;
  v92 = v105;
  v93 = v106;
  v94 = v107;
  v95 = v108;
  v38 = AGSubgraphGetCurrent();
  if (!v38)
  {
    __break(1u);
    goto LABEL_31;
  }

  v56 = &v49;
  v39 = *MEMORY[0x1E698D3F8];
  v40 = v33 ^ 1;
  v41 = v49;
  if ((v49 & 0x100000000) != 0)
  {
    v41 = *MEMORY[0x1E698D3F8];
  }

  if ((v58 & 0x100000000) == 0)
  {
    v39 = v58;
  }

  v68 = v98;
  v69 = v99;
  v70 = v100;
  v66 = v96;
  v67 = v97;
  v61 = 0;
  v60 = v40 & 1;
  *(&v76[3] + 8) = v95;
  *(&v76[2] + 8) = v94;
  *(&v76[1] + 8) = v93;
  *(v76 + 8) = v92;
  *&v65 = __PAIR64__(v37, OffsetAttribute2);
  *(&v65 + 1) = __PAIR64__(v41, v39);
  *&v71 = __PAIR64__(IndirectAttribute2, v101);
  BYTE8(v71) = 0;
  HIDWORD(v71) = v34;
  LOBYTE(v72) = v40 & 1;
  *(&v72 + 1) = v38;
  v73 = v53;
  v74 = v51;
  *&v75 = 0;
  LODWORD(v58) = v34;
  v42 = v50;
  *(&v75 + 1) = v52;
  *&v76[0] = v50;
  BYTE8(v76[4]) = 0;
  MEMORY[0x1EEE9AC00](v38);
  v43 = type metadata accessor for AccessibilityProxyTransform();
  v48[2] = v43;
  v48[3] = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(&v109, &v77);
  v44 = v42;
  _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOcTm_0(&v105, &v77, &lazy cache variable for type metadata for AccessibilityGeometryUpdater?, &type metadata for AccessibilityGeometryUpdater);
  _s7SwiftUI7BindingVySbGMaTm_11(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v65, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, v48, v43, MEMORY[0x1E69E73E0], v45, MEMORY[0x1E69E7410], v46);
  v89 = v76[1];
  v90 = v76[2];
  v91[0] = v76[3];
  *(v91 + 9) = *(&v76[3] + 9);
  v85 = v73;
  v86 = v74;
  v87 = v75;
  v88 = v76[0];
  v81 = v69;
  v82 = v70;
  v83 = v71;
  v84 = v72;
  v77 = v65;
  v78 = v66;
  v79 = v67;
  v80 = v68;
  (*(*(v43 - 8) + 8))(&v77, v43);
  AGGraphSetIndirectDependency();
  if (v33)
  {
    AGGraphSetIndirectDependency();
  }

  _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOhTm_0(&v105, &lazy cache variable for type metadata for AccessibilityGeometryUpdater?, &type metadata for AccessibilityGeometryUpdater);

  v47 = v54;
  *v54 = v63;
  v47[1] = v64;
}

uint64_t closure #1 in static AccessibilityRepresentationModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for AccessibilityRepresentationModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t outlined init with copy of AccessibilityGeometryUpdater?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI7BindingVySbGMaTm_11(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t initializeWithCopy for AccessibilityProxyTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v3;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 105) = *(a2 + 105);
  v4 = *(a2 + 120);
  *(a1 + 120) = v4;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 168) = *(a2 + 168);
  v5 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v5;
  v6 = *(a2 + 176);
  *(a1 + 176) = v6;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 232) = *(a2 + 232);
  v7 = *(a2 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = v7;
  v8 = *(a2 + 240);
  *(a1 + 240) = v8;
  *(a1 + 248) = *(a2 + 248);

  v9 = v4;
  v10 = v6;
  v11 = v8;
  return a1;
}

void destroy for AccessibilityProxyTransform(uint64_t a1)
{

  v2 = *(a1 + 240);
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute);
  }

  return result;
}

uint64_t ForEach.makeID(index:offset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  ForEach.data.getter();
  v9 = v4;
  v10 = *(a3 + 24);
  v11 = *(a3 + 40);
  type metadata accessor for ForEach.IDGenerator();
  ForEach.IDGenerator.makeID(data:index:offset:)();
  (*(v5 + 8))(v7, v4);
}

uint64_t static AccessibilityChildrenModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v37 = *(a2 + 32);
  v38 = v6;
  v8 = *(a2 + 48);
  v39 = *(a2 + 64);
  v9 = *(a2 + 16);
  v35 = *a2;
  v36 = v9;
  v31 = v37;
  v32 = v8;
  v33 = *(a2 + 64);
  v10 = *a1;
  v40 = *(a2 + 80);
  v34 = *(a2 + 80);
  v29 = v35;
  v30 = v7;
  a3(&v24);
  v27 = *(a2 + 48);
  v28 = *(a2 + 56);
  *&v29 = *(a2 + 48);
  DWORD2(v29) = *(a2 + 56);
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v12 = v25;
  if (result)
  {
    *&v29 = v24;
    DWORD2(v29) = v25;
    v13 = PreferencesOutputs.subscript.getter();

    LODWORD(v29) = v10;
    type metadata accessor for AccessibilityChildrenModifier();
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    if (*(*(type metadata accessor for AccessibilityRepresentationModifier() - 8) + 64))
    {
      closure #1 in static AccessibilityChildrenModifier._makeView(modifier:inputs:body:)(1);
    }

    AGGraphCreateOffsetAttribute2();
    _GraphValue.init(_:)();
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v29 = v35;
    v30 = v36;
    static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
    *a4 = v21;
    *(a4 + 8) = v22;
    *(a4 + 12) = v23;
    if (one-time initialization token for contain != -1)
    {
      swift_once();
    }

    *&v29 = static AccessibilityChildBehavior.contain;

    v15 = Attribute.init<A>(body:value:flags:update:)();

    *&v29 = v27;
    DWORD2(v29) = v28;
    v16 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (v16)
    {
      _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c9ContainerE0V_Tt5B5(v15, &v35, v21, v22, 1, 0, 0, 0, 0, 0);
    }

    LOBYTE(v29) = (v16 & 1) == 0;
    PreferencesOutputs.subscript.setter();
    v17 = *(a4 + 8);
    *&v29 = *a4;
    DWORD2(v29) = v17;
    v18 = PreferencesOutputs.subscript.getter();
    v19 = *MEMORY[0x1E698D3F8];
    if ((v18 & 0x100000000) != 0)
    {
      v20 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v20 = v18;
    }

    if ((v13 & 0x100000000) == 0)
    {
      v19 = v13;
    }

    *&v29 = __PAIR64__(v19, v20);
    type metadata accessor for AccessibilityChildrenModifier.BridgedAttachment();
    swift_getWitnessTable();
    _GraphValue.init<A>(_:)();
    _s7SwiftUI25AccessibilityViewModifierPAAE04makeC19PropertiesTransform8modifier6inputs7outputs14AttributeGraph0L0VyAA0C8NodeListVGSgAA01_M5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10AttachmentE0V_Tt2B5(v21, &v35, *a4, *(a4 + 8));
    return PreferencesOutputs.subscript.setter();
  }

  else
  {
    v14 = v26;
    *a4 = v24;
    *(a4 + 8) = v12;
    *(a4 + 12) = v14;
  }

  return result;
}

uint64_t static ForEach.makeWithKeyPath(_:id:content:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v7[1] = a2;

  return ForEach.init(_:idGenerator:content:)();
}

uint64_t View.accessibilityChildren<A>(children:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessibilityChildrenModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  a1(v13);
  (*(v8 + 32))(v15, v10, a4);
  MEMORY[0x18D00A570](v15, a3, v11, v17);
  return (*(v12 + 8))(v15, v11);
}

id protocol witness for static UITraitBridgedEnvironmentKey.read(from:) in conformance EnvironmentValues.MaxAllowedDynamicRangeKey@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = [a1 _headroomUsage];
  if (result)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityChildrenModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t closure #1 in static AccessibilityChildrenModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v5[2] = type metadata accessor for AccessibilityChildrenModifier();
  v6 = type metadata accessor for AccessibilityRepresentationModifier();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v5, v6, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v7;
}

uint64_t ImageRenderer._uiImage.getter()
{
  ImageRenderer.accessSeed()();

  v0 = ImageRendererHost.platformImage.getter();

  return v0;
}

uint64_t ImageRendererHost.platformImage.getter()
{
  v1 = ImageRendererHost.cgImage.getter();
  swift_beginAccess();
  if (!*(v0 + 144))
  {
    if (v1)
    {
      ImageRendererHost.cgImageScale.getter();
      v3 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v1 scale:0 orientation:v2];
    }

    else
    {
      v3 = 0;
    }

    swift_beginAccess();
    *(v0 + 144) = v3;
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v4 = *(v0 + 144);
  swift_unknownObjectRetain();

  if (v4)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t UIHostingController.rootView.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  specialized UIHostingController.rootView.setter(a1);
  v5 = *(*(*((v4 & v3) + 0x50) - 8) + 8);

  return v5(a1);
}

void specialized UIHostingController.rootView.setter(uint64_t a1)
{
  v3 = *(v1 + direct field offset for UIHostingController.host);
  specialized _UIHostingView.rootView.setter(a1);
}

uint64_t _UIHostingView.rootView.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  specialized _UIHostingView.rootView.setter(a1);
  v5 = *(*(*((v4 & v3) + 0x50) - 8) + 8);

  return v5(a1);
}

void AccessibilityProxyTransform.updateValue()()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 248);
  if (*AGGraphGetValue() == 1 && (v2 & 1) == 0)
  {
    *(v0 + 248) = 1;
    v5 = v1;
    AGGraphClearUpdate();
    v3 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v4 = type metadata accessor for AccessibilityProxyTransform();
    AccessibilityProxyTransform.makeOutputs()(v4);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

unint64_t _s7SwiftUI25AccessibilityViewModifierPAAE04makeC19PropertiesTransform8modifier6inputs7outputs14AttributeGraph0L0VyAA0C8NodeListVGSgAA01_M5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10AttachmentE0V_Tt2B5(unsigned int a1, __int128 *a2, uint64_t a3, int a4)
{

  return _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5Tm(a1, a2, a3, a4, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, &type metadata for AccessibilityAttachmentModifier);
}

void @objc UIHostingBackgroundView.frame.setter(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  UIHostingBackgroundView.frame.setter(a2, a3, a4, a5);
}

void UIHostingBackgroundView.frame.setter(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v20.receiver = v4;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_bounds);
  v11 = v10;
  v13 = v12;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_setFrame_, a1, a2, a3, a4);
  v14 = swift_getObjectType();
  v20.receiver = v4;
  v20.super_class = v14;
  objc_msgSendSuper2(&v20, sel_bounds);
  if (v11 != v16 || v13 != v15)
  {
    v18 = _UIHostingView.base.getter();
    UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();
  }
}

id UIHostingBackgroundView.frame.getter(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, *a1);
}

void *UIHostingContentView.makeBackgroundHost()()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = *(v1 + 0x718);
  v17 = *(v1 + 0x700);
  v16 = *(v1 + 1800);
  v18 = v16;
  v19 = v2;
  v3 = type metadata accessor for UIHostingConfiguration();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = v16;
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  UIHostingContentView._configuration.getter(v6);
  (*(v8 + 16))(v11, &v6[*(v3 + 52)], v7);
  (*(v4 + 8))(v6, v3);
  v12 = objc_allocWithZone(type metadata accessor for UIHostingBackgroundView());
  v13 = specialized _UIHostingView.init(rootView:)(v11);
  LODWORD(v3) = _UIHostingView.isHiddenForReuse.getter() & 1;
  if (v3 != (_UIHostingView.isHiddenForReuse.getter() & 1))
  {
    v14 = _UIHostingView.isHiddenForReuse.getter();
    _UIHostingView.isHiddenForReuse.setter(v14 & 1);
  }

  (*(v8 + 8))(v11, v7);
  return v13;
}

uint64_t ContextMenuModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v69 = a2;
  swift_getWitnessTable();
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = *(a1 + 16);
  v7 = type metadata accessor for ContextMenuModifierCore();
  v56 = v5;
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v9 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>();
  v58 = v10;
  v60 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for StaticIf();
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v55 - v12;
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>();
  v65 = v11;
  v13 = type metadata accessor for ModifiedContent();
  v66 = *(v13 - 8);
  v67 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v55 - v16;
  v55 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v68 = v9;
  v59 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v55 - v21;
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v7;
  v57 = *(v7 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v55 - v28;
  (*(v22 + 16))(v25, v3 + *(a1 + 44), v6, v27);
  v30 = *v3;
  if (*v3)
  {
    specialized Environment.wrappedValue.getter(*(v3 + 3), *(v3 + 32), v85);
    v31 = v85[0];
    (*(v22 + 32))(v29, v25, v6);
    v32 = type metadata accessor for ContextMenuModifierCore();
    *&v29[*(v32 + 36)] = v30;
    v29[*(v32 + 40)] = v31;
    v33 = v56;
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x18D00A570](v29, v33, v71, WitnessTable);
    swift_getKeyPath();
    specialized Environment.wrappedValue.getter(*(v3 + 1), *(v3 + 16), v85);
    LOBYTE(v85[0]) = v85[0] == v30;
    v83 = WitnessTable;
    v84 = &protocol witness table for ContextMenuModifierCore<A>;
    v35 = swift_getWitnessTable();
    View.environment<A>(_:_:)();

    v36 = (*(v55 + 8))(v19, v8);
    v56 = &v55;
    MEMORY[0x1EEE9AC00](v36);
    MEMORY[0x1EEE9AC00](v37);
    v38 = lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
    v39 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
    v81 = v35;
    v82 = v39;
    v40 = v68;
    v41 = swift_getWitnessTable();
    v79 = v41;
    v80 = MEMORY[0x1E697FC98];
    v42 = swift_getWitnessTable();
    v43 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v77 = v42;
    v78 = v43;
    v54 = swift_getWitnessTable();
    v44 = v61;
    StaticIf<>.init(_:then:else:)();
    v74 = v38;
    v75 = v41;
    v76 = v54;
    v45 = v65;
    v46 = swift_getWitnessTable();
    v47 = v62;
    View.sharingPickerHost()(v45, v46);
    (*(v63 + 8))(v44, v45);
    (*(v57 + 8))(v29, v71);
    IsSharingPicker = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v72 = v46;
    v73 = IsSharingPicker;
    v49 = v67;
    v50 = swift_getWitnessTable();
    v51 = v64;
    static ViewBuilder.buildExpression<A>(_:)(v47, v49, v50);
    v52 = *(v66 + 8);
    v52(v47, v49);
    static ViewBuilder.buildExpression<A>(_:)(v51, v49, v50);
    v52(v51, v49);
    return (*(v59 + 8))(v70, v40);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_18BE0AB3C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isPresentingContextMenu.getter();
  *a1 = result & 1;
  return result;
}

uint64_t initializeWithCopy for ContextMenuModifierCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  return a1;
}

uint64_t View.portalGroup(kind:id:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v9 = a1;
  v10 = v6;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalTargetRendererEffect, EmptyModifier>(0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>);
  return MEMORY[0x18D00A570](&v9, a3, v7, a4);
}

uint64_t closure #1 in ContextMenuModifier.body(content:)(uint64_t a1)
{
  type metadata accessor for ContextMenuModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ContextMenuModifierCore();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - v4;
  v10[2] = swift_getWitnessTable();
  v10[3] = &protocol witness table for ContextMenuModifierCore<A>;
  WitnessTable = swift_getWitnessTable();
  v7 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  v10[0] = WitnessTable;
  v10[1] = v7;
  v8 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(a1, v2, v8);
  static ViewBuilder.buildExpression<A>(_:)(v5, v2, v8);
  return (*(v3 + 8))(v5, v2);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  return specialized Environment.wrappedValue.getter(a1, a2, outlined copy of Environment<Bool>.Content, 0x6564724F756E654DLL, 0xE900000000000072, outlined consume of Environment<Bool>.Content, a3);
}

{
  return specialized Environment.wrappedValue.getter(a1, a2, outlined copy of Environment<Bool>.Content, 0x536C6F72746E6F43, 0xEB00000000657A69, outlined consume of Environment<Bool>.Content, a3);
}

{
  return specialized Environment.wrappedValue.getter(a1, a2, outlined copy of Environment<Bool>.Content, 0x5463696D616E7944, 0xEF657A6953657079, outlined consume of Environment<Bool>.Content, a3);
}

{
  return specialized Environment.wrappedValue.getter(a1, a2, outlined copy of Environment<Bool>.Content, 0x686353726F6C6F43, 0xEB00000000656D65, outlined consume of Environment<Bool>.Content, a3);
}

{
  return specialized Environment.wrappedValue.getter(a1, a2, outlined copy of Environment<Bool>.Content, 0x694474756F79614CLL, 0xEF6E6F6974636572, outlined consume of Environment<Bool>.Content, a3);
}

{
  return specialized Environment.wrappedValue.getter(a1, a2, outlined copy of Environment<Bool>.Content, 0x6E656E696D6F7250, 0xEA00000000006563, outlined consume of Environment<Bool>.Content, a3);
}

{
  return specialized Environment.wrappedValue.getter(a1, a2, outlined copy of Environment<Bool>.Content, 0x69536E6F74747542, 0xEC000000676E697ALL, outlined consume of Environment<Bool>.Content, a3);
}

{
  return specialized Environment.wrappedValue.getter(a1, a2, outlined copy of Environment<Bool>.Content, 0x6F72506567646142, 0xEF65636E656E696DLL, outlined consume of Environment<Bool>.Content, a3);
}

uint64_t closure #1 in static ContextMenuModifierCore._makeView(modifier:inputs:body:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, __int128 *))
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  v33 = *(a1 + 32);
  v34 = v8;
  v35 = *(a1 + 64);
  v36 = *(a1 + 80);
  v9 = *(a1 + 16);
  v31 = *a1;
  v32 = v9;
  LOBYTE(v23[0]) = 1;
  outlined init with copy of _ViewInputs(a1, &v25);
  lazy protocol witness table accessor for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey();
  PropertyList.subscript.setter();
  if (a2)
  {
    v10 = *(a1 + 60);
    v11 = *(a1 + 48);
    v27 = *(a1 + 32);
    v28 = v11;
    v29 = *(a1 + 64);
    v30 = *(a1 + 80);
    v12 = *(a1 + 16);
    v25 = *a1;
    v26 = v12;
    *&v25 = __PAIR64__(_ViewInputs.position.getter(), v10);
    *(&v25 + 1) = a3;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform();
    Attribute.init<A>(body:value:flags:update:)();
    _ViewInputs.transform.setter();
  }

  v21[2] = v33;
  v21[3] = v34;
  v21[4] = v35;
  v22 = v36;
  v21[0] = v31;
  v21[1] = v32;
  v17 = v33;
  v18 = v34;
  v19 = v35;
  v20 = v36;
  v15 = v31;
  v16 = v32;
  v13 = outlined init with copy of _ViewInputs(v21, &v25);
  a4(v13, &v15);
  v23[2] = v17;
  v23[3] = v18;
  v23[4] = v19;
  v24 = v20;
  v23[0] = v15;
  v23[1] = v16;
  outlined destroy of _ViewInputs(v23);
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v25 = v31;
  v26 = v32;
  return outlined destroy of _ViewInputs(&v25);
}

uint64_t type metadata completion function for ContextMenuResponder()
{
  return type metadata completion function for ContextMenuResponder();
}

{
  return swift_initClassMetadata2();
}

uint64_t closure #2 in implicit closure #3 in static ContextMenuModifierCore._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v2 = type metadata accessor for ContextMenuModifierCore();
  v3 = *(v2 + 40);
  v7[2] = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_0, v7, &type metadata for MenuOrder, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuOrderKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t implicit closure #3 in static ContextMenuModifierCore._makeView(modifier:inputs:body:)()
{
  type metadata accessor for ContextMenuModifierCore();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  closure #2 in implicit closure #3 in static ContextMenuModifierCore._makeView(modifier:inputs:body:)(1);

  return AGGraphCreateOffsetAttribute2();
}

uint64_t closure #1 in ContextMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)(uint64_t a1)
{
  v2 = type metadata accessor for ContextMenuModifierCore();
  v3 = *(v2 + 36);
  v8[2] = v2;
  v4 = MEMORY[0x1E697DFC0];
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, closure #1 in static PointerOffset.of(_:)partial apply, v8, v4, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t ContextMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  v17 = *(a1 + 48);
  v18 = v6;
  v7 = *(a1 + 16);
  v16[0] = *a1;
  v19 = *(a1 + 80);
  v16[1] = v7;
  v16[2] = v5;
  closure #1 in ContextMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)(1);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v9 = _ViewOutputs.viewResponders()();

  v10 = _ViewInputs.animatedPosition()();
  v11 = HIDWORD(v17);
  swift_beginAccess();
  v12 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v13 = _ViewInputs.containerPosition.getter();
  v14 = _ViewInputs.isEnabled.getter();
  result = outlined destroy of _ViewInputs(v16);
  *a3 = OffsetAttribute2;
  *(a3 + 4) = v9;
  *(a3 + 8) = v10;
  *(a3 + 12) = v11;
  *(a3 + 16) = v12;
  *(a3 + 20) = v13;
  *(a3 + 24) = v14;
  *(a3 + 32) = a2;
  return result;
}

uint64_t UIViewSnapshotResponder.init(inputs:space:displayList:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0;
  *(v2 + 264) = 1;
  *(v2 + 272) = 0;
  *(v2 + 268) = 0;
  *(v2 + 280) = 0;
  *(v2 + 288) = 0;
  *(v2 + 216) = v3;
  *(v2 + 268) = AGCreateWeakAttribute();
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    *a3 = result;
    *(a3 + 4) = BYTE4(result) & 1;
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v5 = result;
    outlined copy of Environment<Selector?>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018CD3F3A0, v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v5, 0);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<MenuOrderKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<MenuOrderKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuOrderKey>);
    }
  }
}

uint64_t getEnumTagSinglePayload for ActiveContextMenu(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t result@<X0>, char a2@<W1>, void (*a3)(uint64_t, void)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void (*a6)(uint64_t, void)@<X5>, _BYTE *a7@<X8>)
{
  if (a2)
  {
    *a7 = result;
  }

  else
  {
    v17[12] = v7;
    v17[13] = v8;
    v12 = result;
    a3(result, 0);
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v17);
      _os_log_impl(&dword_18BD4A000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x18D0110E0](v16, -1, -1);
      MEMORY[0x18D0110E0](v15, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    a6(v12, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a7 = result;
  }

  else
  {
    v17[12] = v7;
    v17[13] = v8;
    v12 = result;
    a3(result, 0);
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v17);
      _os_log_impl(&dword_18BD4A000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x18D0110E0](v16, -1, -1);
      MEMORY[0x18D0110E0](v15, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    a6(v12, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a7 = result & 1;
  }

  else
  {
    v17[12] = v7;
    v17[13] = v8;
    v12 = result;
    a3(result, 0);
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v17);
      _os_log_impl(&dword_18BD4A000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x18D0110E0](v16, -1, -1);
      MEMORY[0x18D0110E0](v15, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    a6(v12, 0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContextMenuResponderFilter and conformance ContextMenuResponderFilter()
{
  result = lazy protocol witness table cache variable for type ContextMenuResponderFilter and conformance ContextMenuResponderFilter;
  if (!lazy protocol witness table cache variable for type ContextMenuResponderFilter and conformance ContextMenuResponderFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContextMenuResponderFilter and conformance ContextMenuResponderFilter);
  }

  return result;
}

uint64_t initializeWithCopy for ContextMenuResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t type metadata accessor for UIViewSnapshotResponder()
{
  result = type metadata singleton initialization cache for UIViewSnapshotResponder;
  if (!type metadata singleton initialization cache for UIViewSnapshotResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #2 in ContextMenuModifier.body(content:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v32 = a3;
  type metadata accessor for ContextMenuModifier();
  swift_getWitnessTable();
  v4 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ContextMenuModifierCore();
  v28[1] = v4;
  v5 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v28[2] = v5;
  v6 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - v8;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>();
  v10 = type metadata accessor for ModifiedContent();
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - v14;
  v16 = *a2;
  if (!*a2)
  {
    goto LABEL_7;
  }

  v17 = *(a2 + 1);
  v18 = *(a2 + 16);
  specialized Environment.wrappedValue.getter(v17, v18, &v41);
  if (v16 != LODWORD(v41) || (specialized Environment.wrappedValue.getter(v17, v18, &v41), v19 = 0.0, BYTE4(v41) == 1))
  {
    v19 = 1.0;
  }

  v41 = v19;
  WitnessTable = swift_getWitnessTable();
  v40 = &protocol witness table for ContextMenuModifierCore<A>;
  v20 = swift_getWitnessTable();
  v21 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  v37 = v20;
  v38 = v21;
  v22 = swift_getWitnessTable();
  MEMORY[0x18D00A570](&v41, v6, MEMORY[0x1E697FCA0], v22);
  if (*a2)
  {
    LODWORD(v41) = *a2;
    v35 = v22;
    v36 = MEMORY[0x1E697FC98];
    v23 = swift_getWitnessTable();
    View.portalGroup(kind:id:)(1, &v41, v7, v23);
    (*(v29 + 8))(v9, v7);
    v24 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v33 = v23;
    v34 = v24;
    v25 = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(v12, v10, v25);
    v26 = *(v30 + 8);
    v26(v12, v10);
    static ViewBuilder.buildExpression<A>(_:)(v15, v10, v25);
    return (v26)(v15, v10);
  }

  else
  {
LABEL_7:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double static ContextMenuModifierCore._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, double *a5@<X8>)
{
  v69 = *MEMORY[0x1E69E9840];
  v36 = *a1;
  v8 = a2[3];
  v65 = a2[2];
  v66 = v8;
  v67 = a2[4];
  v68 = *(a2 + 20);
  v9 = a2[1];
  v63 = *a2;
  v64 = v9;
  v44 = *(a2 + 14);
  v43 = *(a2 + 6);
  v10 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *&v57 = v43;
  DWORD2(v57) = v44;
  v11 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v10 & 1) != 0 || (v11)
  {
    v35 = a5;
    lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
    v33 = v63;
    PropertyList.subscript.getter();
    v32 = v57;
    UniqueID.init()();
    v31 = v57;
    closure #1 in static ContextMenuModifierCore._makeView(modifier:inputs:body:)(&v63, v10 & 1, v57, a3);
    LODWORD(v45) = v36;
    type metadata accessor for ContextMenuModifierCore();
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v59 = v65;
    v60 = v66;
    v61 = v67;
    LODWORD(v62[0]) = v68;
    v57 = v63;
    v58 = v64;
    v14 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v57, 1, &v51);
    MEMORY[0x1EEE9AC00](v14);
    *&v57 = &type metadata for AllPlatformItemListFlags;
    *(&v57 + 1) = a4;
    *&v58 = &protocol witness table for AllPlatformItemListFlags;
    *(&v58 + 1) = v15;
    v34 = v15;
    v16 = type metadata accessor for PlatformItemListGenerator();
    v29 = v16;
    WitnessTable = swift_getWitnessTable();
    outlined init with copy of _ViewInputs(&v63, &v57);
    type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v51, closure #1 in Attribute.init<A>(_:)partial apply, &v27, v16, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
    v60 = v54;
    v61 = v55;
    v62[0] = v56[0];
    *(v62 + 12) = *(v56 + 12);
    v57 = v51;
    v58 = v52;
    v59 = v53;
    (*(*(v16 - 8) + 8))(&v57, v16);
    v19 = v45;
    if (v10)
    {
      *&v51 = v41;
      DWORD2(v51) = LODWORD(v42);
      if ((PreferencesOutputs.subscript.getter() & 0x100000000) == 0)
      {
        v40 = v36;
        _GraphValue.value.getter();
        v53 = v65;
        v54 = v66;
        v55 = v67;
        LODWORD(v56[0]) = v68;
        v51 = v63;
        v52 = v64;
        v39[0] = v41;
        *&v39[1] = v42;
        type metadata accessor for ContextMenuResponder(0);
        v20 = swift_allocObject();
        *(v20 + 308) = 0;
        *(v20 + 316) = 1;
        *(v20 + 320) = 0;
        *(v20 + 296) = 0;
        *(v20 + 304) = 0;
        outlined init with copy of _ViewInputs(&v63, &v45);
        outlined init with copy of _ViewInputs(&v63, &v45);

        *(v20 + 296) = AGCreateWeakAttribute();
        v47 = v65;
        v48 = v66;
        v49 = v67;
        v50 = v68;
        v45 = v63;
        v46 = v64;
        v37 = 0;
        v38 = v31;
        v21 = UIViewSnapshotResponder.init(inputs:space:displayList:)(&v45, &v38);
        ContextMenuResponderFilter.init<A>(modifier:inputs:outputs:responder:)(&v51, v21, &v45);
        v51 = v45;
        v52 = v46;
        *&v53 = v47;
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type ContextMenuResponderFilter and conformance ContextMenuResponderFilter();
        Attribute.init<A>(body:value:flags:update:)();
        outlined destroy of ContextMenuResponderFilter(&v45);
        LOBYTE(v51) = 0;
        v22 = PreferencesOutputs.subscript.setter();
        if ((v32 & 1) == 0)
        {
          *&v51 = v43;
          DWORD2(v51) = v44;
          MEMORY[0x1EEE9AC00](v22);
          v29 = &v63;
          outlined init with copy of PreferencesInputs(&v43, v39);
          PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
        }

        *&v51 = v43;
        DWORD2(v51) = v44;
        MEMORY[0x1EEE9AC00](v22);
        v27 = a4;
        v28 = v34;
        LODWORD(v29) = v36;
        outlined init with copy of PreferencesInputs(&v43, v39);
        PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
      }
    }

    static Semantics.v3.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) == 0)
    {
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      v23 = PropertyList.subscript.getter();
      MEMORY[0x1EEE9AC00](v23);
      v27 = a4;
      v28 = v34;
      v29 = __PAIR64__(v24, v19);
      *&v51 = v43;
      DWORD2(v51) = v44;
      MEMORY[0x1EEE9AC00](v25);
      outlined init with copy of PreferencesInputs(&v43, v39);
      PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    }

    v26 = v35;
    *v35 = v41;
    result = v42;
    v26[1] = v42;
  }

  else
  {
    v59 = v65;
    v60 = v66;
    v61 = v67;
    LODWORD(v62[0]) = v68;
    v57 = v63;
    v58 = v64;
    (a3)();
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ActiveContextMenu(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for StyleContextWriter<MenuStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>)
  {
    v0 = type metadata accessor for StyleContextWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>);
    }
  }
}

_DWORD *initializeWithCopy for ContextMenuModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v5 = a2 + 27;
  *a1 = *a2;
  v6 = a1 + 27;
  v7 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v8 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  outlined copy of Environment<Selector?>.Content(*v8, v10);
  *v7 = v9;
  *(v7 + 8) = v10;
  v11 = v6 & 0xFFFFFFFFFFFFFFF8;
  v12 = v5 & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v5 & 0xFFFFFFFFFFFFFFF8);
  LOBYTE(v9) = *(v12 + 8);
  outlined copy of Environment<Selector?>.Content(v13, v9);
  *v11 = v13;
  *(v11 + 8) = v9;
  v14 = *(*(a3 + 16) - 8);
  (*(v14 + 16))((*(v14 + 80) + 9 + v11) & ~*(v14 + 80), (*(v14 + 80) + 9 + v12) & ~*(v14 + 80));
  return a1;
}

uint64_t ContextMenuModifier.init(menuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = swift_getKeyPath();
  *(a3 + 16) = 0;
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  v6 = type metadata accessor for ContextMenuModifier();
  v7 = *(*(a2 - 8) + 32);
  v8 = a3 + *(v6 + 44);

  return v7(v8, a1, a2);
}

uint64_t destroy for ContextMenuModifier(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Selector?>.Content(*((a1 + 11) & 0xFFFFFFFFFFFFFFF8), *(((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + 8));
  v4 = (a1 + 27) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Selector?>.Content(*v4, *(v4 + 8));
  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (v4 + *(v5 + 80) + 9) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.contextMenu<A>(menuItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a7;
  v19 = a6;
  v20 = a1;
  v21 = a5;
  v22 = a2;
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  type metadata accessor for ModifiedContent();
  v30 = a6;
  v31 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>);
  swift_getWitnessTable();
  v10 = type metadata accessor for ZStack();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  swift_getWitnessTable();
  v13 = type metadata accessor for ContextMenuModifier();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v24 = a3;
  v25 = a4;
  v17 = v21;
  v26 = v21;
  v27 = v19;
  v28 = v20;
  v29 = v22;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  ContextMenuModifier.init(menuView:)(v12, v10, v16);
  MEMORY[0x18D00A570](v16, a3, v13, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t closure #1 in View.contextMenu<A>(menuItems:)@<X0>(void (*a1)(double)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - v16;
  a1(v15);
  View.styleContext<A>(_:)();
  (*(v7 + 8))(v9, a2);
  v18 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>);
  v22[2] = a3;
  v22[3] = v18;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, WitnessTable);
  v20 = *(v11 + 8);
  v20(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)(v17, v10, WitnessTable);
  return (v20)(v17, v10);
}

_DWORD *assignWithCopy for ContextMenuModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v5 = a2 + 27;
  *a1 = *a2;
  v6 = a1 + 27;
  v7 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v8 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  outlined copy of Environment<Selector?>.Content(*v8, v10);
  v11 = *v7;
  v12 = *(v7 + 8);
  *v7 = v9;
  *(v7 + 8) = v10;
  outlined consume of Environment<Selector?>.Content(v11, v12);
  v13 = v6 & 0xFFFFFFFFFFFFFFF8;
  v14 = v5 & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v5 & 0xFFFFFFFFFFFFFFF8);
  LOBYTE(v9) = *(v14 + 8);
  outlined copy of Environment<Selector?>.Content(v15, v9);
  v16 = *v13;
  v17 = *(v13 + 8);
  *v13 = v15;
  *(v13 + 8) = v9;
  outlined consume of Environment<Selector?>.Content(v16, v17);
  v18 = *(*(a3 + 16) - 8);
  (*(v18 + 24))((*(v18 + 80) + 9 + v13) & ~*(v18 + 80), (*(v18 + 80) + 9 + v14) & ~*(v18 + 80));
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContextMenuModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ProvidesContextMenuInteraction()
{
  lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
  PropertyList.subscript.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect()
{
  result = lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect;
  if (!lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect;
  if (!lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect;
  if (!lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect;
  if (!lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect;
  if (!lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect;
  if (!lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect;
  if (!lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PortalGroupRendererEffect and conformance PortalGroupRendererEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey()
{
  result = lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey;
  if (!lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey;
  if (!lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey;
  if (!lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey;
  if (!lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey;
  if (!lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasContextMenuInteractionKey and conformance HasContextMenuInteractionKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform()
{
  result = lazy protocol witness table cache variable for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform;
  if (!lazy protocol witness table cache variable for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions()
{
  result = lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions;
  if (!lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions;
  if (!lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions;
  if (!lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions;
  if (!lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions);
  }

  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance MainMenuItem.Template.Options(void *a1, uint64_t *a2)
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

double static Divider._makeView(view:inputs:)@<D0>(__int128 *a1@<X1>, double *a2@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  v4 = a1[1];
  v34 = a1[2];
  v35 = v3;
  v5 = a1[3];
  v36 = a1[4];
  v6 = a1[1];
  v32 = *a1;
  v33 = v6;
  v28 = v34;
  v29 = v5;
  v30 = a1[4];
  v37 = *(a1 + 20);
  v31 = *(a1 + 20);
  v26 = v32;
  v27 = v4;
  *&v22[0] = v3;
  DWORD2(v22[0]) = DWORD2(v3);
  outlined init with copy of _ViewInputs(&v32, v24);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    PreferenceKeys.remove(_:)();
    _ViewInputs.requestedTextRepresentation.setter();
  }

  if ((BYTE4(v34) & 4) != 0)
  {
    v8 = (BYTE4(v34) & 8) == 0;
    v7 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    PropertyList.subscript.getter();
    v7 = v24[0];
    v8 = 2;
  }

  LOBYTE(v24[0]) = v8;
  DWORD1(v24[0]) = v7;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type Divider.Child and conformance Divider.Child();
  LODWORD(v14[0]) = Attribute.init<A>(body:value:flags:update:)();
  v22[2] = v28;
  v22[3] = v29;
  v22[4] = v30;
  v23 = v31;
  v22[0] = v26;
  v22[1] = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v16 = v26;
  v17 = v27;
  outlined init with copy of _ViewInputs(v22, v24);
  lazy protocol witness table accessor for type ResolvedDivider and conformance ResolvedDivider();
  static View.makeDebuggableView(view:inputs:)();
  v24[2] = v18;
  v24[3] = v19;
  v24[4] = v20;
  v25 = v21;
  v24[0] = v16;
  v24[1] = v17;
  outlined destroy of _ViewInputs(v24);
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.getter();
  v9 = v16;
  if (v16)
  {
    v10 = *(&v16 + 1);
    v18 = v34;
    v19 = v35;
    v20 = v36;
    v21 = v37;
    v16 = v32;
    v17 = v33;
    if ((*(v10 + 8))(&v16, v9, v10))
    {
      v14[2] = v34;
      v14[3] = v35;
      v14[4] = v36;
      v15 = v37;
      v14[0] = v32;
      v14[1] = v33;
      (*(v10 + 16))(v14, &v12, v9, v10);
    }
  }

  v18 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v16 = v26;
  v17 = v27;
  outlined destroy of _ViewInputs(&v16);
  *a2 = v12;
  result = v13;
  a2[1] = v13;
  return result;
}

unint64_t lazy protocol witness table accessor for type Divider.Child and conformance Divider.Child()
{
  result = lazy protocol witness table cache variable for type Divider.Child and conformance Divider.Child;
  if (!lazy protocol witness table cache variable for type Divider.Child and conformance Divider.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Divider.Child and conformance Divider.Child);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedDivider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedDivider and conformance ResolvedDivider();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

unint64_t lazy protocol witness table accessor for type ResolvedDivider and conformance ResolvedDivider()
{
  result = lazy protocol witness table cache variable for type ResolvedDivider and conformance ResolvedDivider;
  if (!lazy protocol witness table cache variable for type ResolvedDivider and conformance ResolvedDivider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedDivider and conformance ResolvedDivider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedDivider and conformance ResolvedDivider;
  if (!lazy protocol witness table cache variable for type ResolvedDivider and conformance ResolvedDivider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedDivider and conformance ResolvedDivider);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance DividerStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for DividerStyleModifier<DefaultDividerStyle>()
{
  if (!lazy cache variable for type metadata for DividerStyleModifier<DefaultDividerStyle>)
  {
    lazy protocol witness table accessor for type DefaultDividerStyle and conformance DefaultDividerStyle();
    v0 = type metadata accessor for DividerStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DividerStyleModifier<DefaultDividerStyle>);
    }
  }
}

void type metadata accessor for ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>>)
  {
    type metadata accessor for DividerStyleModifier<PlainDividerStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Divider, DividerStyleModifier<PlainDividerStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t UIHostingController.sizingOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = direct field offset for UIHostingController.sizingOptions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6 = v4;
  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x3D8))(&v6);
}

uint64_t sub_18BE0DD1C()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type DividerStyleModifier<DefaultDividerStyle> and conformance DividerStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type DividerStyleModifier<DefaultDividerStyle> and conformance DividerStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type DividerStyleModifier<DefaultDividerStyle> and conformance DividerStyleModifier<A>)
  {
    type metadata accessor for DividerStyleModifier<DefaultDividerStyle>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DividerStyleModifier<DefaultDividerStyle> and conformance DividerStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultDividerStyle and conformance DefaultDividerStyle()
{
  result = lazy protocol witness table cache variable for type DefaultDividerStyle and conformance DefaultDividerStyle;
  if (!lazy protocol witness table cache variable for type DefaultDividerStyle and conformance DefaultDividerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultDividerStyle and conformance DefaultDividerStyle);
  }

  return result;
}

void type metadata accessor for DividerStyleModifier<PlainDividerStyle>()
{
  if (!lazy cache variable for type metadata for DividerStyleModifier<PlainDividerStyle>)
  {
    lazy protocol witness table accessor for type PlainDividerStyle and conformance PlainDividerStyle();
    v0 = type metadata accessor for DividerStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DividerStyleModifier<PlainDividerStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlainDividerStyle and conformance PlainDividerStyle()
{
  result = lazy protocol witness table cache variable for type PlainDividerStyle and conformance PlainDividerStyle;
  if (!lazy protocol witness table cache variable for type PlainDividerStyle and conformance PlainDividerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainDividerStyle and conformance PlainDividerStyle);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for DividerShape<A>(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void type metadata accessor for ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout>)
  {
    type metadata accessor for _ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout>();
    lazy protocol witness table accessor for type DividerShape<Rectangle> and conformance DividerShape<A>(&lazy protocol witness table cache variable for type _ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>()
{
  if (!lazy cache variable for type metadata for _ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>)
  {
    type metadata accessor for DividerShape<Rectangle>();
    lazy protocol witness table accessor for type DividerShape<Rectangle> and conformance DividerShape<A>(&lazy protocol witness table cache variable for type DividerShape<Rectangle> and conformance DividerShape<A>, type metadata accessor for DividerShape<Rectangle>);
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<DividerShape<Rectangle>, PlainDividerShapeStyle>);
    }
  }
}

void type metadata accessor for DividerShape<Rectangle>()
{
  if (!lazy cache variable for type metadata for DividerShape<Rectangle>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v0 = type metadata accessor for DividerShape();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DividerShape<Rectangle>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type DividerShape<Rectangle> and conformance DividerShape<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void *type metadata accessor for ResolvedBorderedButton()
{
  return &unk_1EFFABCF8;
}

{
  return &unk_1EFFDE848;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>>();
    lazy protocol witness table accessor for type ResolvedBorderedButton and conformance ResolvedBorderedButton();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>, MEMORY[0x1E69816F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>, MEMORY[0x1E69816F0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ResolvedBorderedButton, _EnvironmentKeyWritingModifier<Image.Scale>>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Image.Scale>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ResolvedBorderedButton and conformance ResolvedBorderedButton()
{
  result = lazy protocol witness table cache variable for type ResolvedBorderedButton and conformance ResolvedBorderedButton;
  if (!lazy protocol witness table cache variable for type ResolvedBorderedButton and conformance ResolvedBorderedButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderedButton and conformance ResolvedBorderedButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedBorderedButton and conformance ResolvedBorderedButton;
  if (!lazy protocol witness table cache variable for type ResolvedBorderedButton and conformance ResolvedBorderedButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderedButton and conformance ResolvedBorderedButton);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for ButtonBorderShape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape()
{
  result = lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape;
  if (!lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape;
  if (!lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape;
  if (!lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape;
  if (!lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderShape and conformance ResolvedBorderShape);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PlatformAccessibilityTransform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 9) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Rectangle and conformance Rectangle()
{
  result = lazy protocol witness table cache variable for type Rectangle and conformance Rectangle;
  if (!lazy protocol witness table cache variable for type Rectangle and conformance Rectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rectangle and conformance Rectangle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandGestureShortcutInteractiveControl.BorderShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t AccessibilityChildBehaviorBox.isEqual(to:)()
{
  type metadata accessor for AccessibilityChildBehaviorBox();
  result = swift_dynamicCastClass();
  if (result)
  {

    v1 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v1 & 1;
  }

  return result;
}

uint64_t static ViewBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t Optional<A>.ChildTableColumn.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t type metadata completion function for PagingScrollView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30TransformScrollStorageModifierVyAA0fG10Indicators33_333E2209AFE841F0F3215E9AA4F7EA22LLVGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(255, a2, a3, a4, type metadata accessor for TransformScrollStorageModifier);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for ContextMenuModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *storeEnumTagSinglePayload for AccessibilityLargeContentViewModifier(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

unint64_t View.appIntentIntelligenceProvider<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a5;
  v8[6] = a6;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.appIntentIntelligenceProvider<A>(_:), v8, MEMORY[0x1E69E73E0], MEMORY[0x1E697F288], v6, &v10);
  v9 = v10;
  View.scrapeableAttachment(_:)();
  return outlined consume of ScrapeableContent.Content?(v9);
}

uint64_t partial apply for closure #1 in View.appIntentIntelligenceProvider<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = swift_allocObject();
  *(v6 + 40) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 16));
  result = (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);
  *a2 = v6 | 0x4000000000000000;
  return result;
}

uint64_t sub_18BE0F168()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

unint64_t outlined consume of ScrapeableContent.Content?(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined consume of ScrapeableContent.Content(result);
  }

  return result;
}

unint64_t outlined consume of ScrapeableContent.Content(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) <= 3)
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  else
  {
    if (v1 > 5)
    {
      if (v1 != 6 && v1 != 7 && v1 != 8)
      {
        return result;
      }
    }

    if (v1 == 4 || v1 == 5)
    {
    }
  }

  return result;
}

uint64_t outlined copy of AccessibilityActionKind.ActionKind(uint64_t result, uint64_t a2, char a3, unint64_t a4)
{
  if (a4 >= 5)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t View.accessibilityAction<A>(_:label:image:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = swift_allocObject();
  v18[2] = a10;
  v18[3] = a11;
  v18[4] = a12;
  v18[5] = a13;
  v18[6] = a7;
  v18[7] = a8;

  View.accessibilityAction<A>(_:label:image:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in View.accessibilityAction<A>(_:label:image:_:), v18, a9, a10, a11, a12, a13);
}

{
  v26 = a7;
  v27 = a9;
  v24[0] = a1;
  v28 = a10;
  v19 = *(a11 - 8);
  v24[1] = a13;
  v25 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v21 = v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI23AccessibilityAttachmentVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_18CD63400;
  (*(v19 + 16))(v21, v24[0], a11);
  outlined copy of Text?(a2, a3, a4, a5);

  AnyAccessibilityAction.init<A>(action:label:image:handler:bridged:)(v21, a2, a3, a4, a5, a6, v26, a8, v22 + 32, 0, a11);
  v29 = v22;
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  View.accessibility<A>(_:_:isEnabled:)(&type metadata for AccessibilityProperties.ActionsKey, &v29, 1, v28, &type metadata for AccessibilityProperties.ActionsKey, v25);
}

uint64_t sub_18BE0F35C()
{

  return swift_deallocObject();
}

_OWORD *initializeWithCopy for AccessibilityActionKind(_OWORD *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 >= 5)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v7 = result;
    outlined copy of Text.Storage(*a2, v5, v6);
    *v7 = v4;
    *(v7 + 1) = v5;
    *(v7 + 16) = v6;
    *(v7 + 3) = v2;

    return v7;
  }

  else
  {
    v3 = *(a2 + 16);
    *result = *a2;
    result[1] = v3;
  }

  return result;
}

uint64_t AccessibilityActionStorage.init(action:category:label:image:handler:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v26 = *(a11 - 8);
  (*(v26 + 16))(a9, a1, a11);
  v18 = type metadata accessor for AccessibilityActionStorage();
  v19 = (a9 + v18[9]);
  v20 = a2[1];
  *v19 = *a2;
  v19[1] = v20;
  v21 = (a9 + v18[10]);
  *v21 = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  *(a9 + v18[11]) = a7;
  v22 = (a9 + v18[12]);
  *v22 = a8;
  v22[1] = a10;
  v23 = AccessibilityActionHandlerSeed;
  *(a9 + v18[13]) = AccessibilityActionHandlerSeed;
  AccessibilityActionHandlerSeed = v23 + 1;
  v24 = *(v26 + 8);

  return v24(a1, a11);
}

uint64_t destroy for AccessibilityActionKind(uint64_t result)
{
  if (*(result + 24) >= 5uLL)
  {
    outlined consume of Text.Storage(*result, *(result + 8), *(result + 16));
  }

  return result;
}

uint64_t outlined consume of AccessibilityActionKind.ActionKind(uint64_t result, uint64_t a2, char a3, unint64_t a4)
{
  if (a4 >= 5)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t View.accessibilityAction(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *, void, void, void, void, void, uint64_t, uint64_t, uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v21 = *a1;
  v12 = v21;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  outlined copy of AccessibilityActionKind.ActionKind(v12, v13, v14, v15);
  v17 = lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction();

  a8(&v21, 0, 0, 0, 0, 0, a7, v16, a4, &type metadata for AccessibilityVoidAction, a5, v17);

  return outlined consume of AccessibilityActionKind.ActionKind(v21, v22, v23, v24);
}

uint64_t destroy for AccessibilityActionStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v4 + 24);
  LODWORD(v6) = -1;
  if (v5 < 0xFFFFFFFF)
  {
    v6 = *(v4 + 24);
  }

  if (v5 >= 2 && v6 - 2 < 0)
  {
    outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));
  }

  v7 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle, &type metadata for PlatformItemListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SceneList.Namespace(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v6 == 1)
      {
        return v3 == v4;
      }

      return 0;
    }

    if (v6 != 2 || (v5 | v4) != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    if (v3 != v4 || a1[1] != v5)
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return 1;
}

void type metadata accessor for Binding<TabViewCustomization>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL static UIKitPresentationModeLocation.== infix(_:_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v2 = v1;

      return Strong == v2;
    }

    return 0;
  }

  if (v1)
  {

    return 0;
  }

  return 1;
}

uint64_t outlined init with copy of MatchedTransitionSourceModifier(uint64_t a1, uint64_t a2)
{
  initializeWithCopy for MatchedTransitionSourceModifier(a2, a1);
  return a2;
}

{
  (off_1EFFEA108->initializeWithCopy)(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect()
{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect);
  }

  return result;
}

char *protocol witness for PlatformGroupFactory.makePlatformGroup() in conformance MatchedTransitionSourceSourceMarkingEffect()
{
  outlined init with copy of MatchedTransitionSourceSourceMarkingEffect(v0, v3);
  v1 = objc_allocWithZone(type metadata accessor for MatchedTransitionSourceMarkingView());
  return MatchedTransitionSourceMarkingView.init(effect:)(v3);
}

double FlipForRTLFrame.value.getter@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  AGGraphGetValue();
  ViewFrame.init(origin:size:)();
  v2 = *AGGraphGetValue();
  if (v2 != 2 && *AGGraphGetValue() == (v2 & 1))
  {
    Value = AGGraphGetValue();
    MEMORY[0x18D00BD30](*Value);
    ViewFrame.origin.setter();
  }

  *a1 = v5;
  a1[1] = v6;
  result = *&v7;
  a1[2] = v7;
  return result;
}

_BYTE *FlipForRTLDisplayList.value.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 24) == *MEMORY[0x1E698D3F8])
  {
    DisplayList.init()();
    v3 = v12;
    v4 = v13;
    v5 = v14;
    if (*(v12 + 16))
    {
LABEL_3:
      result = AGGraphGetValue();
      v7 = *result;
      if (v7 != 2 && (result = AGGraphGetValue(), *result == (v7 & 1)))
      {
        AGGraphGetValue();
        ViewSize.width.getter();
        v10 = v9;
        type metadata accessor for CGPoint(0);
        AGGraphGetValue();
        AGGraphGetValue();
        v11 = swift_allocObject();
        *(v11 + 16) = 0xBFF0000000000000;
        *(v11 + 24) = 0;
        *(v11 + 32) = 0;
        *(v11 + 40) = 0x3FF0000000000000;
        *(v11 + 48) = v10;
        *(v11 + 56) = 0;
        *(v11 + 88) = 0;
        AGGraphGetValue();
        MEMORY[0x18D00B390]();
        DisplayList.Version.init(forUpdate:)();
        DisplayList.Item.init(_:frame:identity:version:)();
        return DisplayList.init(_:)();
      }

      else
      {
        *a1 = v3;
        *(a1 + 8) = v4;
        *(a1 + 12) = v5;
      }

      return result;
    }
  }

  else
  {
    Value = AGGraphGetValue();
    v3 = *Value;
    v4 = *(Value + 8);
    v5 = *(Value + 12);

    if (*(v3 + 16))
    {
      goto LABEL_3;
    }
  }

  return DisplayList.init()();
}

uint64_t type metadata completion function for ProgressView()
{
  result = type metadata accessor for ProgressView.Base();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ProgressView.Base()
{
  result = type metadata accessor for CustomProgressView();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for CustomProgressView()
{
  result = type metadata accessor for ProgressViewValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t ProgressView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  *&v38 = a1[2];
  v2 = v38;
  *(&v38 + 1) = v3;
  *&v39 = v4;
  *(&v39 + 1) = v5;
  v6 = type metadata accessor for CustomProgressView();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - v14;
  *&v38 = v2;
  *(&v38 + 1) = v3;
  *&v39 = v4;
  *(&v39 + 1) = v5;
  v16 = type metadata accessor for ProgressView.Base();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (v29 - v18);
  v20 = type metadata accessor for _ConditionalContent();
  v30 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v29 - v22;
  (*(v17 + 16))(v19, v29[1], v16, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v19[1];
    v34 = *v19;
    v35 = v24;
    v25 = v19[3];
    v36 = v19[2];
    v37 = v25;
    static ViewBuilder.buildEither<A, B>(second:)(&v34, v6, &type metadata for FoundationProgressView);
    v38 = v34;
    v39 = v35;
    v40 = v36;
    v41 = v37;
    outlined destroy of FoundationProgressView(&v38);
  }

  else
  {
    (*(v7 + 32))(v15, v19, v6);
    static ViewBuilder.buildExpression<A>(_:)(v15, v6, &protocol witness table for CustomProgressView<A, B>);
    static ViewBuilder.buildExpression<A>(_:)(v12, v6, &protocol witness table for CustomProgressView<A, B>);
    static ViewBuilder.buildEither<A, B>(first:)(v9, v6);
    v26 = *(v7 + 8);
    v26(v9, v6);
    v26(v12, v6);
    v26(v15, v6);
  }

  v32 = &protocol witness table for CustomProgressView<A, B>;
  v33 = &protocol witness table for FoundationProgressView;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v23, v20, WitnessTable);
  return (*(v30 + 8))(v23, v20);
}

uint64_t destroy for CustomProgressView(unsigned __int16 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = v6 + ((v6 + v7) & ~v7);
  if ((v9 + 1) > 0xA)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 10;
  }

  v11 = *(a1 + v10);
  v12 = v11 - 2;
  if (v11 < 2)
  {
LABEL_18:
    if (v11 != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v10 <= 3)
  {
    v13 = v10;
  }

  else
  {
    v13 = 4;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *a1;
      if (v10 < 4)
      {
        goto LABEL_30;
      }
    }

    else if (v13 == 3)
    {
      v14 = *a1 | (*(a1 + 2) << 16);
      if (v10 < 4)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v14 = *a1;
      if (v10 < 4)
      {
        goto LABEL_30;
      }
    }

LABEL_17:
    v11 = v14 + 2;
    goto LABEL_18;
  }

  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = *a1;
  if (v10 >= 4)
  {
    goto LABEL_17;
  }

LABEL_30:
  if ((v14 | (v12 << (8 * v10))) == 0xFFFFFFFF)
  {
LABEL_19:
    v15 = ~v7;
    v16 = *(v5 + 8);
    v16(a1, v4);
    v16(((a1 + v8) & v15), v4);
  }

LABEL_20:
  v17 = *(a2 + 16);
  v18 = *(v17 - 8);
  v19 = (a1 + v10 + *(v18 + 80) + 1) & ~*(v18 + 80);
  if (!(*(v18 + 48))(v19, 1, v17))
  {
    (*(v18 + 8))(v19, v17);
  }

  v20 = *(a2 + 24);
  v21 = *(v20 - 8);
  v22 = *(v18 + 64) + v19;
  if (!*(v18 + 84))
  {
    ++v22;
  }

  v23 = (v22 + *(v21 + 80)) & ~*(v21 + 80);
  if (!(*(*(v20 - 8) + 48))(v23, 1, v20))
  {
    (*(v21 + 8))(v23, v20);
  }
}

uint64_t closure #3 in static CustomProgressView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v6 = type metadata accessor for CustomProgressView();
  v7 = *(v6 + 56);
  v11[2] = v6;
  v12 = type metadata accessor for Optional();
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:), v11, v12, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v13;
}

uint64_t closure #4 in static CustomProgressView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v6 = type metadata accessor for CustomProgressView();
  v7 = *(v6 + 60);
  v13[2] = v6;
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AnyView?);
  v9 = v8;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_7, v13, v9, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14;
}

void type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>)
  {
    type metadata accessor for ResolvedProgressView(255);
    type metadata accessor for OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>);
    }
  }
}

uint64_t type metadata completion function for OptionalSourceWriter()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BE10E84()
{
  type metadata accessor for CustomProgressView();
  type metadata accessor for _ConditionalContent();
  return swift_getWitnessTable();
}

uint64_t initializeWithCopy for ProgressView(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = v8 + v9;
  v11 = ((v8 + v9) & ~v9) + v8;
  if ((v11 + 1) > 0xA)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 10;
  }

  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v15 = *(v13 - 8);
  v16 = *(v15 + 80);
  v17 = v12 + v16 + 1;
  if (*(v15 + 84))
  {
    v18 = *(v15 + 64);
  }

  else
  {
    v18 = *(v15 + 64) + 1;
  }

  v19 = *(v14 - 8);
  v20 = *(v19 + 80);
  v21 = (v18 + v20 + (v17 & ~v16)) & ~v20;
  if (*(v19 + 84))
  {
    v22 = *(*(v14 - 8) + 64);
  }

  else
  {
    v22 = *(*(v14 - 8) + 64) + 1;
  }

  if (((v22 + 7 + v21) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x40)
  {
    v23 = 64;
  }

  else
  {
    v23 = ((v22 + 7 + v21) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v24 = *(a2 + v23);
  if (v24 >= 2 && v23 != 0)
  {
    v24 = *a2 + 2;
  }

  if (v24 == 1)
  {
    v26 = *a2;
    *a1 = *a2;
    v27 = *(a2 + 4);
    v28 = v26;
    if (v27)
    {
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 32) = v27;
      v29 = *(a2 + 6);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = v29;
    }

    else
    {
      v34 = *(a2 + 12);
      *(a1 + 8) = *(a2 + 4);
      *(a1 + 24) = v34;
      *(a1 + 40) = *(a2 + 20);
    }

    v35 = (a1 + 56);
    v36 = a2 + 28;
    v37 = 1;
    goto LABEL_49;
  }

  v30 = *(a2 + v12);
  v31 = v30 - 2;
  if (v30 >= 2)
  {
    if (v12 <= 3)
    {
      v32 = v12;
    }

    else
    {
      v32 = 4;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v33 = *a2;
        if (v12 < 4)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v32 == 3)
        {
          v33 = *a2 | (*(a2 + 2) << 16);
          if (v12 < 4)
          {
            goto LABEL_38;
          }

          goto LABEL_36;
        }

        v33 = *a2;
        if (v12 < 4)
        {
LABEL_38:
          v30 = (v33 | (v31 << (8 * v12))) + 2;
          goto LABEL_39;
        }
      }

LABEL_36:
      v30 = v33 + 2;
      goto LABEL_39;
    }

    if (v32)
    {
      v33 = *a2;
      if (v12 < 4)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }
  }

LABEL_39:
  __n = v18;
  v60 = v13;
  v38 = ~v16;
  v61 = *(v14 - 8);
  v62 = v22 + 7;
  v58 = v22;
  if (v30 == 1)
  {
    v57 = v23;
    v39 = ~v9;
    v40 = *(v7 + 16);
    v41 = v6;
    v55 = *(v13 - 8);
    v56 = v12 + v16 + 1;
    v42 = v11;
    v54 = v12;
    v40(a1, a2, v6);
    v43 = (v10 + a1) & v39;
    v44 = (a2 + v10) & v39;
    v23 = v57;
    v40(v43, v44, v41);
    v17 = v56;
    *(v42 + a1) = *(a2 + v42);
    v12 = v54;
    v15 = v55;
    v45 = 1;
  }

  else
  {
    v45 = 0;
    *a1 = *a2;
    *(a1 + 8) = a2[4];
  }

  v46 = ~v20;
  *(a1 + v12) = v45;
  v47 = ((v17 + a1) & v38);
  v48 = ((a2 + v17) & v38);
  if ((*(v15 + 48))(v48, 1, v60))
  {
    v49 = __n;
    memcpy(v47, v48, __n);
  }

  else
  {
    (*(v15 + 16))(v47, v48, v60);
    (*(v15 + 56))(v47, 0, 1, v60);
    v49 = __n;
  }

  v50 = &v48[v49];
  v51 = ((v47 + v49 + v20) & v46);
  v52 = (&v50[v20] & v46);
  if ((*(v61 + 48))(v52, 1, v14))
  {
    memcpy(v51, v52, v58);
  }

  else
  {
    (*(v61 + 16))(v51, v52, v14);
    (*(v61 + 56))(v51, 0, 1, v14);
  }

  v37 = 0;
  v35 = ((v51 + v62) & 0xFFFFFFFFFFFFFFF8);
  v36 = ((v52 + v62) & 0xFFFFFFFFFFFFFFF8);
LABEL_49:
  *v35 = *v36;
  *(a1 + v23) = v37;

  return a1;
}

uint64_t destroy for ProgressView(unsigned __int16 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = v6 + ((v6 + v7) & ~v7);
  if ((v9 + 1) > 0xA)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 10;
  }

  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = v10 + v14 + 1;
  if (*(v13 + 84))
  {
    v16 = *(v13 + 64);
  }

  else
  {
    v16 = *(v13 + 64) + 1;
  }

  v17 = *(v11 - 8);
  v18 = *(v17 + 80);
  v19 = *(v17 + 64);
  if (!*(v17 + 84))
  {
    ++v19;
  }

  v20 = ((v19 + 7 + ((v16 + v18 + (v15 & ~v14)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v21 = 64;
  if (v20 > 0x40)
  {
    v21 = v20;
  }

  v22 = *(a1 + v21);
  if (v22 >= 2 && v21 != 0)
  {
    v22 = *a1 + 2;
  }

  if (v22 == 1)
  {

    if (*(a1 + 4))
    {
    }

    goto LABEL_42;
  }

  v24 = *(a1 + v10);
  v25 = v24 - 2;
  if (v24 >= 2)
  {
    if (v10 <= 3)
    {
      v26 = v10;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *a1;
        if (v10 < 4)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v26 == 3)
        {
          v27 = *a1 | (*(a1 + 2) << 16);
          if (v10 < 4)
          {
            goto LABEL_35;
          }

          goto LABEL_33;
        }

        v27 = *a1;
        if (v10 < 4)
        {
LABEL_35:
          v24 = (v27 | (v25 << (8 * v10))) + 2;
          goto LABEL_36;
        }
      }

LABEL_33:
      v24 = v27 + 2;
      goto LABEL_36;
    }

    if (v26)
    {
      v27 = *a1;
      if (v10 < 4)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }
  }

LABEL_36:
  v38 = v16;
  v28 = ~v14;
  if (v24 == 1)
  {
    v37 = v12;
    v29 = ~v7;
    v30 = *(v5 + 8);
    v31 = v4;
    v36 = v10 + v14 + 1;
    v30(a1, v4);
    v32 = (a1 + v8) & v29;
    v12 = v37;
    v30(v32, v31);
    v15 = v36;
  }

  v33 = (a1 + v15) & v28;
  if (!(*(v13 + 48))(v33, 1, v12))
  {
    (*(v13 + 8))(v33, v12);
  }

  v34 = (v33 + v38 + v18) & ~v18;
  if (!(*(v17 + 48))(v34, 1, v11))
  {
    (*(v17 + 8))(v34, v11);
  }

LABEL_42:
}

uint64_t initializeWithCopy for CustomProgressView(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = v8 + v9;
  v11 = ((v8 + v9) & ~v9) + v8;
  if ((v11 + 1) > 0xA)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 10;
  }

  v13 = a2[v12];
  v14 = v13 - 2;
  if (v13 >= 2)
  {
    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = *a2;
      if (v12 < 4)
      {
LABEL_21:
        if ((v16 | (v14 << (8 * v12))) != 0xFFFFFFFF)
        {
          goto LABEL_22;
        }

LABEL_19:
        v17 = ~v9;
        v18 = *(v7 + 16);
        v18(a1, a2, v6);
        v18((v10 + a1) & v17, (&a2[v10] & v17), v6);
        *(v11 + a1) = a2[v11];
        v19 = 1;
        goto LABEL_23;
      }
    }

    else if (v15 == 2)
    {
      v16 = *a2;
      if (v12 < 4)
      {
        goto LABEL_21;
      }
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
      if (v12 < 4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = *a2;
      if (v12 < 4)
      {
        goto LABEL_21;
      }
    }

    v13 = v16 + 2;
  }

LABEL_18:
  if (v13 == 1)
  {
    goto LABEL_19;
  }

LABEL_22:
  v19 = 0;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 4);
LABEL_23:
  *(a1 + v12) = v19;
  v20 = *(a3 + 16);
  v21 = *(v20 - 8);
  v22 = *(v21 + 80);
  v23 = v12 + v22 + 1;
  v24 = ((v23 + a1) & ~v22);
  v25 = (&a2[v23] & ~v22);
  if ((*(v21 + 48))(v25, 1, v20))
  {
    v26 = *(v21 + 84);
    v27 = *(v21 + 64);
    if (v26)
    {
      v28 = *(v21 + 64);
    }

    else
    {
      v28 = v27 + 1;
    }

    memcpy(v24, v25, v28);
  }

  else
  {
    (*(v21 + 16))(v24, v25, v20);
    v30 = *(v21 + 56);
    v29 = v21 + 56;
    v30(v24, 0, 1, v20);
    v26 = *(v29 + 28);
    v27 = *(v29 + 8);
  }

  if (v26)
  {
    v31 = v27;
  }

  else
  {
    v31 = v27 + 1;
  }

  v32 = *(a3 + 24);
  v33 = *(v32 - 8);
  v34 = *(v33 + 80);
  v35 = v31 + v34;
  v36 = ((v24 + v35) & ~v34);
  v37 = ((v25 + v35) & ~v34);
  if ((*(v33 + 48))(v37, 1, v32))
  {
    v38 = *(v33 + 84);
    v39 = *(v33 + 64);
    if (v38)
    {
      v40 = *(v33 + 64);
    }

    else
    {
      v40 = v39 + 1;
    }

    memcpy(v36, v37, v40);
  }

  else
  {
    (*(v33 + 16))(v36, v37, v32);
    v42 = *(v33 + 56);
    v41 = v33 + 56;
    v42(v36, 0, 1, v32);
    v38 = *(v41 + 28);
    v39 = *(v41 + 8);
  }

  if (v38)
  {
    v43 = v39;
  }

  else
  {
    v43 = v39 + 1;
  }

  *((v36 + v43 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v37 + v43 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CustomProgressView<A, B>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t closure #1 in static CustomProgressView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for CustomProgressView();
  v6 = type metadata accessor for ProgressViewValue(0);
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

uint64_t closure #2 in static CustomProgressView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v6 = type metadata accessor for CustomProgressView();
  v7 = *(v6 + 52);
  v11[2] = v6;
  v12 = type metadata accessor for Optional();
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, v12, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v13;
}

unint64_t instantiation function for generic protocol witness table for ProgressViewStyleConfiguration.Actions(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel()
{
  result = lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ProgressViewStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

uint64_t closure #1 in static OptionalSourceWriter._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v9[2] = type metadata accessor for OptionalSourceWriter();
  v10 = type metadata accessor for Optional();
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, v10, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11;
}

uint64_t AnySource.init<A>(_:)(int a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  type metadata accessor for Optional();
  v13 = a3;
  swift_getWitnessTable();
  v5 = type metadata accessor for SourceFormula();
  AGCreateWeakAttribute();
  v9 = a1;
  IsNil = type metadata accessor for AnySource.IsNil();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Stack<AnySource>(0, &lazy cache variable for type metadata for Attribute<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v9, closure #1 in Attribute.init<A>(_:)partial apply, v10, IsNil, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v5;
}

double static CustomProgressView._makeView(view:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v11 = *a1;
  v12 = a2[3];
  v40 = a2[2];
  v41 = v12;
  v42 = a2[4];
  v43 = *(a2 + 20);
  v13 = a2[1];
  v38 = *a2;
  v39 = v13;
  LODWORD(v36) = v11;
  v29 = a3;
  v30 = a4;
  *&v31 = a5;
  *(&v31 + 1) = a6;
  type metadata accessor for CustomProgressView();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(type metadata accessor for ProgressViewValue(0) - 8) + 64))
  {
    closure #1 in static CustomProgressView._makeView(view:inputs:)(1, a3, a4, a5, a6);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  LODWORD(v29) = v11;
  _GraphValue.value.getter();
  if (*(*(type metadata accessor for Optional() - 8) + 64))
  {
    closure #2 in static CustomProgressView._makeView(view:inputs:)(1, a3, a4, a5, a6);
  }

  HIDWORD(v21) = AGGraphCreateOffsetAttribute2();
  LODWORD(v29) = v11;
  _GraphValue.value.getter();
  LODWORD(v21) = OffsetAttribute2;
  if (*(*(type metadata accessor for Optional() - 8) + 64))
  {
    closure #3 in static CustomProgressView._makeView(view:inputs:)(1, a3, a4, a5, a6);
  }

  v15 = a3;
  v16 = AGGraphCreateOffsetAttribute2();
  _GraphValue.value.getter();
  closure #4 in static CustomProgressView._makeView(view:inputs:)(1, v15, a4, a5, a6);
  v17 = AGGraphCreateOffsetAttribute2();
  type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>();
  lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel();
  type metadata accessor for OptionalSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label();
  type metadata accessor for OptionalSourceWriter();
  type metadata accessor for ModifiedContent();
  v36 = v21;
  v37 = COERCE_DOUBLE(__PAIR64__(v17, v16));
  type metadata accessor for CustomProgressView.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v32 = v40;
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v31 = v39;
  v27 = lazy protocol witness table accessor for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>> and conformance <> ModifiedContent<A, B>();
  v28 = &protocol witness table for OptionalSourceWriter<A, B>;
  WitnessTable = swift_getWitnessTable();
  v26 = &protocol witness table for OptionalSourceWriter<A, B>;
  swift_getWitnessTable();
  static View.makeDebuggableView(view:inputs:)();
  v29 = v41;
  v30 = __PAIR64__(HIDWORD(v38), DWORD2(v41));
  v23 = v41;
  v24 = DWORD2(v41);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v18 = PreferencesOutputs.subscript.setter();
    v23 = v29;
    v24 = v30;
    MEMORY[0x1EEE9AC00](v18);
    outlined init with copy of PreferencesInputs(&v29, &v22);
    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  }

  *a7 = v36;
  result = v37;
  a7[1] = v37;
  return result;
}

uint64_t type metadata completion function for ResolvedProgressView()
{
  result = type metadata accessor for ProgressViewValue(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>()
{
  if (!lazy cache variable for type metadata for OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>)
  {
    lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions();
    v0 = type metadata accessor for OptionalSourceWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions()
{
  result = lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ProgressViewStyleConfiguration.CurrentValueLabel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>();
    _s10Foundation4DateVACSLAAWlTm_1(&lazy protocol witness table cache variable for type ResolvedProgressView and conformance ResolvedProgressView, type metadata accessor for ResolvedProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t static OptionalSourceWriter._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for OptionalSourceWriter();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(type metadata accessor for Optional() - 8) + 64))
  {
    closure #1 in static OptionalSourceWriter._makeInputs(modifier:inputs:)(1, a3, a4, a5, a6);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  AnySource.init<A>(_:)(OffsetAttribute2, a4, a6);
  type metadata accessor for SourceInput();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type AnySource and conformance AnySource();
  return _GraphInputs.append<A, B>(_:to:)();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnySource.IsNil<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t type metadata completion function for ResolvedProgressViewStyle()
{
  result = type metadata accessor for ProgressViewStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ProgressViewStyleConfiguration()
{
  result = type metadata accessor for ProgressViewValue(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedProgressViewStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s10Foundation4DateVACSLAAWlTm_2(&lazy protocol witness table cache variable for type ResolvedProgressViewStyle and conformance ResolvedProgressViewStyle, type metadata accessor for ResolvedProgressViewStyle);

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>)
  {
    type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(255, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for ProgressView);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>);
    }
  }
}

void type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = &type metadata for ProgressViewStyleConfiguration.Label;
    v8[1] = &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel;
    v8[2] = &protocol witness table for ProgressViewStyleConfiguration.Label;
    v8[3] = &protocol witness table for ProgressViewStyleConfiguration.CurrentValueLabel;
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = &type metadata for ProgressViewStyleConfiguration.Label;
    v8[1] = &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel;
    v8[2] = &protocol witness table for ProgressViewStyleConfiguration.Label;
    v8[3] = &protocol witness table for ProgressViewStyleConfiguration.CurrentValueLabel;
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel> and conformance ProgressView<A, B>()
{
  result = lazy protocol witness table cache variable for type ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel> and conformance ProgressView<A, B>;
  if (!lazy protocol witness table cache variable for type ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel> and conformance ProgressView<A, B>)
  {
    type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(255, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for ProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel> and conformance ProgressView<A, B>);
  }

  return result;
}

unsigned __int16 *assignWithCopy for CustomProgressView(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = type metadata accessor for Date();
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    v9 = *(v7 + 80);
    v55 = v8 + v9;
    v10 = ((v8 + v9) & ~v9) + v8;
    if ((v10 + 1) > 0xA)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 10;
    }

    v12 = *(a1 + v11);
    v13 = v12 - 2;
    if (v12 < 2)
    {
LABEL_21:
      v16 = ~v9;
      if (v12 == 1)
      {
        v17 = *(v7 + 8);
        v17(a1, v6);
        v17(((a1 + v55) & v16), v6);
      }

      v18 = *(a2 + v11);
      v19 = v18 - 2;
      if (v18 >= 2)
      {
        if (v11 <= 3)
        {
          v20 = v11;
        }

        else
        {
          v20 = 4;
        }

        if (v20 <= 1)
        {
          if (!v20)
          {
            goto LABEL_37;
          }

          v21 = *a2;
          if (v11 < 4)
          {
LABEL_40:
            if ((v21 | (v19 << (8 * v11))) != 0xFFFFFFFF)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }
        }

        else if (v20 == 2)
        {
          v21 = *a2;
          if (v11 < 4)
          {
            goto LABEL_40;
          }
        }

        else if (v20 == 3)
        {
          v21 = *a2 | (*(a2 + 2) << 16);
          if (v11 < 4)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v21 = *a2;
          if (v11 < 4)
          {
            goto LABEL_40;
          }
        }

        v18 = v21 + 2;
      }

LABEL_37:
      if (v18 != 1)
      {
LABEL_41:
        v23 = 0;
        v24 = *a2;
        a1[4] = a2[4];
        *a1 = v24;
        goto LABEL_42;
      }

LABEL_38:
      v22 = *(v7 + 16);
      v22(a1, a2, v6);
      v22(((a1 + v55) & v16), ((a2 + v55) & v16), v6);
      *(a1 + v10) = *(a2 + v10);
      v23 = 1;
LABEL_42:
      *(a1 + v11) = v23;
      goto LABEL_43;
    }

    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v14 == 3)
        {
          v15 = *a1 | (*(a1 + 2) << 16);
          if (v11 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v12 = v15 + 2;
          goto LABEL_21;
        }

        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v12 = (v15 | (v13 << (8 * v11))) + 2;
      goto LABEL_21;
    }

    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = *a1;
    if (v11 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_43:
  v25 = *(type metadata accessor for Date() - 8);
  v26 = *(v25 + 64) + ((*(v25 + 64) + *(v25 + 80)) & ~*(v25 + 80));
  v27 = 10;
  if (v26 + 1 > 0xA)
  {
    v27 = v26 + 1;
  }

  v28 = *(a3 + 16);
  v29 = *(v28 - 8);
  v30 = *(v29 + 80);
  v31 = v27 + v30 + 1;
  v32 = ((a1 + v31) & ~v30);
  v33 = ((a2 + v31) & ~v30);
  v34 = *(v29 + 48);
  v35 = v34(v32, 1, v28);
  v36 = v34(v33, 1, v28);
  if (v35)
  {
    if (!v36)
    {
      (*(v29 + 16))(v32, v33, v28);
      (*(v29 + 56))(v32, 0, 1, v28);
      goto LABEL_56;
    }

    v37 = *(v29 + 84);
    v38 = *(v29 + 64);
  }

  else
  {
    if (!v36)
    {
      (*(v29 + 24))(v32, v33, v28);
      goto LABEL_56;
    }

    (*(v29 + 8))(v32, v28);
    v37 = *(v29 + 84);
    v38 = *(v29 + 64);
  }

  if (v37)
  {
    v39 = v38;
  }

  else
  {
    v39 = v38 + 1;
  }

  memcpy(v32, v33, v39);
LABEL_56:
  v40 = *(v29 + 64);
  if (!*(v29 + 84))
  {
    ++v40;
  }

  v41 = *(a3 + 24);
  v42 = *(v41 - 8);
  v43 = *(v42 + 80);
  v44 = v40 + v43;
  v45 = ((v32 + v44) & ~v43);
  v46 = ((v33 + v44) & ~v43);
  v47 = *(v42 + 48);
  v48 = v47(v45, 1, v41);
  v49 = v47(v46, 1, v41);
  if (v48)
  {
    if (!v49)
    {
      (*(v42 + 16))(v45, v46, v41);
      (*(v42 + 56))(v45, 0, 1, v41);
      goto LABEL_69;
    }

    v50 = *(v42 + 84);
    v51 = *(v42 + 64);
  }

  else
  {
    if (!v49)
    {
      (*(v42 + 24))(v45, v46, v41);
      goto LABEL_69;
    }

    (*(v42 + 8))(v45, v41);
    v50 = *(v42 + 84);
    v51 = *(v42 + 64);
  }

  if (v50)
  {
    v52 = v51;
  }

  else
  {
    v52 = v51 + 1;
  }

  memcpy(v45, v46, v52);
LABEL_69:
  if (*(v42 + 84))
  {
    v53 = *(v42 + 64);
  }

  else
  {
    v53 = *(v42 + 64) + 1;
  }

  *((v45 + v53 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v46 + v53 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t outlined init with copy of ProgressViewValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI17ProgressViewValueOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI17ProgressViewValueOWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t View.optionalViewAlias<A, B>(_:_:)(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a7;
  v24 = a4;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v26 = a5;
  v27 = a6;
  v28 = a8;
  v29 = a9;
  v17 = type metadata accessor for OptionalSourceWriter();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v23 - v20;
  a2(v19);
  (*(v14 + 32))(v21, v16, v13);
  MEMORY[0x18D00A570](v21, v24, v17, v25);
  return (*(v18 + 8))(v21, v17);
}

uint64_t partial apply for closure #2 in CustomProgressView.Child.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t outlined destroy of ClosedRange<Date>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSNy10Foundation4DateVGWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSNy10Foundation4DateVGWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSNy10Foundation4DateVGWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSNy10Foundation4DateVGWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSNy10Foundation4DateVGWOhTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for ClosedRange<Date>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL protocol witness for Rule.value.getter in conformance AnySource.IsNil<A>@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = AnySource.IsNil.value.getter(*v2, *(a1 + 16));
  *a2 = result;
  return result;
}

BOOL AnySource.IsNil.value.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  Optional<A>.ChildTableColumn.content.getter(&v9 - v5);
  v7 = (*(*(a2 - 8) + 48))(v6, 1, a2) == 1;
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t ResolvedProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ProgressViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProgressViewValue(v2, v9, type metadata accessor for ProgressViewValue);
  v13 = type metadata accessor for ResolvedProgressView(0);
  v14 = *(v2 + v13[5]);
  v15 = *(v2 + v13[6]);
  v16 = *(v2 + v13[7]);
  outlined init with copy of ProgressViewValue(v9, v6, type metadata accessor for ProgressViewValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _sSNy10Foundation4DateVGWOhTm_1(v6, type metadata accessor for ClosedRange<Date>);
    v17 = 0;
    v18 = 0;
    v19 = 1;
  }

  else
  {
    v18 = *v6;
    v19 = v6[8];
    v17 = v6[9];
  }

  _sSNy10Foundation4DateVGWObTm_0(v9, v12, type metadata accessor for ProgressViewValue);
  v20 = &v12[v10[5]];
  *v20 = v18;
  v20[8] = v19;
  v12[v10[6]] = v17;
  v12[v10[7]] = v14 ^ 1;
  v12[v10[8]] = v15 ^ 1;
  v12[v10[9]] = v16 ^ 1;
  return _sSNy10Foundation4DateVGWObTm_0(v12, a1, type metadata accessor for ProgressViewStyleConfiguration);
}

uint64_t ResolvedProgressViewStyle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProgressViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for ProgressView);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  _s7SwiftUI17ProgressViewValueOWOcTm_0(v1, v11, type metadata accessor for ProgressViewStyleConfiguration);
  _s7SwiftUI17ProgressViewValueOWOcTm_0(v11, v8, type metadata accessor for ProgressViewStyleConfiguration);
  type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(0, &lazy cache variable for type metadata for CustomProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for CustomProgressView);
  v16 = v15;
  v17 = *(v15 + 52);
  v14[v17] = 1;
  v18 = *(v15 + 56);
  v14[v18] = 1;
  _s7SwiftUI17ProgressViewValueOWOcTm_0(v8, v14, type metadata accessor for ProgressViewValue);
  v14[v17] = v8[v3[7]];
  v14[v18] = v8[v3[8]];
  if (v8[v3[9]])
  {
    _sSNy10Foundation4DateVGWOhTm_2(v8, type metadata accessor for ProgressViewStyleConfiguration);
    v19 = 0;
  }

  else
  {
    v19 = AnyView.init<A>(_:)();
    _sSNy10Foundation4DateVGWOhTm_2(v8, type metadata accessor for ProgressViewStyleConfiguration);
  }

  *&v14[*(v16 + 60)] = v19;
  _sSNy10Foundation4DateVGWOhTm_2(v11, type metadata accessor for ProgressViewStyleConfiguration);
  type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base, type metadata accessor for ProgressView.Base);
  swift_storeEnumTagMultiPayload();
  _s7SwiftUI17ProgressViewValueOWOcTm_0(v1, v5, type metadata accessor for ProgressViewStyleConfiguration);
  v20 = &v5[v3[5]];
  v21 = *v20;
  v22 = v20[8];
  _sSNy10Foundation4DateVGWOhTm_2(v5, type metadata accessor for ProgressViewStyleConfiguration);
  specialized AccessibilityProgressViewModifier.body(content:)(v14, v21, v22, a1);
  return outlined destroy of ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(v14);
}

uint64_t specialized AccessibilityProgressViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(a1, v14);
  type metadata accessor for ProgressViewStyleModifier<DefaultProgressViewStyle>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(&v25);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v16 = swift_allocObject();
  memcpy((v16 + 16), v24, 0x128uLL);
  _s7SwiftUI17ProgressViewValueOWOcTm_0(v14, v11, type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>);
  v17 = &v11[*(v9 + 44)];
  *v17 = v16;
  v17[1] = v15;
  AccessibilityTraitSet.init(traits:)();
  v18 = v23[14];
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v16 + 16, 0, v18);
  outlined init with take of ProgressViewValue(v11, a4, type metadata accessor for ModifiedContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>);
  v19 = (a4 + *(v9 + 44));
  v20 = *v19;
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v20 + 16, 0x4000000040uLL);
  _sSNy10Foundation4DateVGWOhTm_2(v14, type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>);
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v20 + 16, 1024, 1024);
  v25 = a2;
  v26 = a3 & 1;
  v27 = 0;
  lazy protocol witness table accessor for type AccessibilityProgressValue and conformance AccessibilityProgressValue();
  lazy protocol witness table accessor for type AccessibilityProgressValue and conformance AccessibilityProgressValue();
  lazy protocol witness table accessor for type AccessibilityProgressValue and conformance AccessibilityProgressValue();
  AccessibilityValueStorage.init<A>(_:description:)();
  v21 = *v19;
  swift_beginAccess();
  outlined init with copy of AccessibilityValueStorage(v24, &v25);

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e59AttachmentModifierVRs_rlE18accessibilityValueyACyxAEGAA0eI7G35VFyAA0E10PropertiesVzXEfU_SbAIXEfU_AFTf1cn_n(v21 + 80, &v25);
  outlined destroy of AccessibilityValueStorage?(v21 + 80);
  outlined init with copy of AccessibilityValueStorage(&v25, v21 + 80);
  outlined destroy of AccessibilityValueStorage(&v25);
  swift_endAccess();
  outlined destroy of AccessibilityValueStorage(v24);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e59AttachmentModifierVRs_rlE18accessibilityValueyACyxAEGAA0eI7G35VFyAA0E10PropertiesVzXEfU_SbAIXEfU_AFTf1cn_n(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AccessibilityValueStorage?(a1, &v6);
  if (*(&v7 + 1) == 1)
  {
    return 2;
  }

  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  closure #1 in closure #1 in ModifiedContent<>.accessibilityValue(_:)(v5, a2, &v9);
  if (v2)
  {
    result = outlined destroy of AccessibilityValueStorage(v5);
    __break(1u);
  }

  else
  {
    outlined destroy of AccessibilityValueStorage(v5);
    return v9;
  }

  return result;
}

uint64_t outlined init with copy of AccessibilityValueStorage?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(uint64_t a1)
{
  type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for ProgressView);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ProgressViewStyleModifier<DefaultProgressViewStyle> and conformance ProgressViewStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type ProgressViewStyleModifier<DefaultProgressViewStyle> and conformance ProgressViewStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleModifier<DefaultProgressViewStyle> and conformance ProgressViewStyleModifier<A>)
  {
    type metadata accessor for ProgressViewStyleModifier<DefaultProgressViewStyle>(255, &lazy cache variable for type metadata for ProgressViewStyleModifier<DefaultProgressViewStyle>, lazy protocol witness table accessor for type DefaultProgressViewStyle and conformance DefaultProgressViewStyle, &type metadata for DefaultProgressViewStyle, type metadata accessor for ProgressViewStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleModifier<DefaultProgressViewStyle> and conformance ProgressViewStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(void))
{
  if (!*a2)
  {
    _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(255, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for ProgressView);
    type metadata accessor for ProgressViewStyleModifier<CircularProgressViewStyle>(255, a3, a4);
    v7 = type metadata accessor for ModifiedContent();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<CircularProgressViewStyle>, lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle);
    v7 = v6;
    type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>.Storage(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>, MEMORY[0x1E697F960]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>>()
{
  if (!lazy cache variable for type metadata for Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>, MEMORY[0x1E697F960]);
    v0 = type metadata accessor for Group();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>> and conformance <A> Group<A>)
  {
    type metadata accessor for Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>> and conformance <A> Group<A>);
  }

  return result;
}

void type metadata accessor for ProgressViewStyleModifier<CircularProgressViewStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ProgressViewStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle()
{
  result = lazy protocol witness table cache variable for type CircularProgressViewStyle and conformance CircularProgressViewStyle;
  if (!lazy protocol witness table cache variable for type CircularProgressViewStyle and conformance CircularProgressViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CircularProgressViewStyle and conformance CircularProgressViewStyle);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>.Storage(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<LinearProgressViewStyle>, lazy protocol witness table accessor for type LinearProgressViewStyle and conformance LinearProgressViewStyle);
    v7 = v6;
    type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>, MEMORY[0x1E697F960]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LinearProgressViewStyle and conformance LinearProgressViewStyle()
{
  result = lazy protocol witness table cache variable for type LinearProgressViewStyle and conformance LinearProgressViewStyle;
  if (!lazy protocol witness table cache variable for type LinearProgressViewStyle and conformance LinearProgressViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearProgressViewStyle and conformance LinearProgressViewStyle);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<LinearProgressViewStyle>, lazy protocol witness table accessor for type LinearProgressViewStyle and conformance LinearProgressViewStyle);
    v7 = v6;
    type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<CircularProgressViewStyle>, lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<CircularProgressViewStyle>, lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle);
    lazy protocol witness table accessor for type ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel> and conformance ProgressView<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t ProgressViewStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v3 + 24))(a1, v4, v3, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(v6 + 8);
  v14(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v14)(v12, AssociatedTypeWitness);
}

uint64_t destroy for LinearProgressViewStyle(uint64_t a1)
{
  outlined consume of Environment<Color?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Bool>.Content(*(a1 + 16), *(a1 + 24));
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ProgressViewStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

unsigned __int16 *assignWithCopy for ProgressView(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v61 = type metadata accessor for Date();
    v6 = *(*(v61 - 8) + 64);
    v60 = *(v61 - 8);
    v7 = *(v60 + 80);
    v59 = v6 + v7;
    v8 = ((v6 + v7) & ~v7) + v6;
    v57 = v8;
    if ((v8 + 1) > 0xA)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 10;
    }

    v10 = *(a3 + 16);
    v11 = *(a3 + 24);
    v12 = *(v10 - 8);
    v13 = *(v12 + 80);
    v65 = v9 + v13 + 1;
    if (*(v12 + 84))
    {
      v14 = *(v12 + 64);
    }

    else
    {
      v14 = *(v12 + 64) + 1;
    }

    v15 = *(v11 - 8);
    v16 = *(v15 + 80);
    __n = v14;
    v17 = (v14 + v16 + (v65 & ~v13)) & ~v16;
    v68 = v15;
    if (*(v15 + 84))
    {
      v18 = *(*(v11 - 8) + 64);
    }

    else
    {
      v18 = *(*(v11 - 8) + 64) + 1;
    }

    v66 = v18 + 7;
    v19 = 64;
    if (((v18 + 7 + v17) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x40)
    {
      v19 = ((v18 + 7 + v17) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    v20 = *(a1 + v19);
    v69 = v19;
    v21 = v19;
    if (v20 >= 2 && v19 != 0)
    {
      v20 = *a1 + 2;
    }

    v58 = ~v7;
    v64 = ~v13;
    v63 = ~v16;
    if (v20 == 1)
    {
      v23 = *(a3 + 16);

      if (*(a1 + 4))
      {
      }

      goto LABEL_45;
    }

    v24 = *(a1 + v9);
    v25 = v24 - 2;
    if (v24 >= 2)
    {
      if (v9 <= 3)
      {
        v26 = v9;
      }

      else
      {
        v26 = 4;
      }

      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v27 = *a1;
          if (v9 < 4)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
            if (v9 < 4)
            {
              goto LABEL_37;
            }

            goto LABEL_35;
          }

          v27 = *a1;
          if (v9 < 4)
          {
LABEL_37:
            v24 = (v27 | (v25 << (8 * v9))) + 2;
            goto LABEL_38;
          }
        }

LABEL_35:
        v24 = v27 + 2;
        goto LABEL_38;
      }

      if (v26)
      {
        v27 = *a1;
        if (v9 < 4)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }
    }

LABEL_38:
    v62 = v18;
    if (v24 == 1)
    {
      v28 = *(a3 + 16);
      v29 = v11;
      v30 = *(v60 + 8);
      v30(a1, v61);
      v30(((a1 + v59) & v58), v61);
      v11 = v29;
      v10 = v28;
    }

    v31 = (a1 + v65) & v64;
    v23 = v10;
    if (!(*(v12 + 48))(v31, 1, v10))
    {
      (*(v12 + 8))(v31, v23);
    }

    v32 = (v31 + __n + v16) & v63;
    if (!(*(v68 + 48))(v32, 1, v11))
    {
      (*(v68 + 8))(v32, v11);
    }

    v18 = v62;
LABEL_45:

    v33 = *(a2 + v69);
    if (v21)
    {
      v34 = v33 >= 2;
    }

    else
    {
      v34 = 0;
    }

    if (v34)
    {
      v33 = *a2 + 2;
    }

    if (v33 == 1)
    {
      v35 = *a2;
      *a1 = *a2;
      v36 = *(a2 + 4);
      v37 = v35;
      if (v36)
      {
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = *(a2 + 6);
      }

      else
      {
        v42 = *(a2 + 4);
        v43 = *(a2 + 20);
        *(a1 + 12) = *(a2 + 12);
        *(a1 + 20) = v43;
        *(a1 + 4) = v42;
      }

      v44 = a1 + 28;
      v45 = a2 + 28;
      v46 = 1;
LABEL_82:
      *v44 = *v45;
      *(a1 + v69) = v46;

      return a1;
    }

    v38 = *(a2 + v9);
    v39 = v38 - 2;
    if (v38 >= 2)
    {
      if (v9 <= 3)
      {
        v40 = v9;
      }

      else
      {
        v40 = 4;
      }

      if (v40 > 1)
      {
        if (v40 == 2)
        {
          v41 = *a2;
          if (v9 < 4)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v40 == 3)
          {
            v41 = *a2 | (*(a2 + 2) << 16);
            if (v9 < 4)
            {
              goto LABEL_71;
            }

            goto LABEL_69;
          }

          v41 = *a2;
          if (v9 < 4)
          {
LABEL_71:
            v38 = (v41 | (v39 << (8 * v9))) + 2;
            goto LABEL_72;
          }
        }

LABEL_69:
        v38 = v41 + 2;
        goto LABEL_72;
      }

      if (v40)
      {
        v41 = *a2;
        if (v9 < 4)
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }
    }

LABEL_72:
    v56 = v11;
    if (v38 == 1)
    {
      v47 = *(v60 + 16);
      v47(a1, a2, v61);
      v47(((a1 + v59) & v58), ((a2 + v59) & v58), v61);
      *(a1 + v57) = *(a2 + v57);
      v48 = 1;
    }

    else
    {
      v48 = 0;
      v49 = *a2;
      a1[4] = a2[4];
      *a1 = v49;
    }

    *(a1 + v9) = v48;
    v50 = ((a1 + v65) & v64);
    v51 = ((a2 + v65) & v64);
    if ((*(v12 + 48))(v51, 1, v23))
    {
      memcpy(v50, v51, __n);
    }

    else
    {
      (*(v12 + 16))(v50, v51, v23);
      (*(v12 + 56))(v50, 0, 1, v23);
    }

    v52 = &v51[__n];
    v53 = ((v50 + __n + v16) & v63);
    v54 = (&v52[v16] & v63);
    if ((*(v68 + 48))(v54, 1, v56))
    {
      memcpy(v53, v54, v18);
    }

    else
    {
      (*(v68 + 16))(v53, v54, v56);
      (*(v68 + 56))(v53, 0, 1, v56);
    }

    v46 = 0;
    v44 = ((v53 + v66) & 0xFFFFFFFFFFFFFFF8);
    v45 = ((v54 + v66) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_82;
  }

  return a1;
}

uint64_t *assignWithCopy for LinearProgressViewStyle(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Color?>.Content(v6, v7);
  v8 = a2[2];
  v9 = *(a2 + 24);
  outlined copy of Environment<Bool>.Content(v8, v9);
  v10 = a1[2];
  v11 = *(a1 + 24);
  a1[2] = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Bool>.Content(v10, v11);
  a1[4] = a2[4];

  return a1;
}

void type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)> and conformance TupleView<A>(a4, a5);
    v8 = type metadata accessor for VStack();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>()
{
  if (!lazy cache variable for type metadata for HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.CurrentValueLabel?);
    lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory? and conformance <A> A?(&lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel? and conformance <A> A?, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.CurrentValueLabel?);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>();
    type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for AnyAccessibilityValue?(255, a3);
    v4 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)> and conformance TupleView<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>)
  {
    type metadata accessor for TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>(255);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>);
    }
  }
}

uint64_t closure #1 in CircularProgressViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  CircularProgressViewStyle.fractionCompletedView(configuration:)(a1, &v26 - v8);
  if (*(a1 + *(type metadata accessor for ProgressViewStyleConfiguration(0) + 24)) == 1)
  {
    CircularProgressViewStyle.labels(configuration:)(a1, &v52);
    v10 = v53;
    v11 = v54;
    v12 = v55;
    v29 = v56;
    v30 = v52;
    v28 = v57;
    v36 = v59;
    v37 = v58;
    v34 = v62;
    v35 = v60;
    v32 = v61;
    v33 = v63;
    v31 = v64;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v28 = 0;
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v31 = 0;
    v32 = 1;
    v33 = 0;
  }

  CircularProgressViewStyle.labels(configuration:)(a1, &v38);
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(v9, v6, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>);
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(v6, a2, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>);
  type metadata accessor for (StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)(0, &lazy cache variable for type metadata for (StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>), type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>);
  v14 = *(v13 + 48);
  *(v51 + 8) = v38;
  *(&v51[3] + 8) = v41;
  *(&v51[4] + 8) = v42;
  *(&v51[5] + 8) = v43;
  v15 = (a2 + v14);
  v17 = v29;
  v16 = v30;
  *&v45 = v30;
  *(&v45 + 1) = v10;
  *&v46 = v11;
  *(&v46 + 1) = v12;
  v27 = v6;
  v18 = v28;
  *&v47 = v29;
  *(&v47 + 1) = v28;
  *&v48 = v37;
  *(&v48 + 1) = v36;
  *&v49 = v35;
  *(&v49 + 1) = v32;
  *&v50 = v34;
  *(&v50 + 1) = v33;
  *&v51[0] = v31;
  *(&v51[6] + 1) = v44;
  *(&v51[1] + 8) = v39;
  *(&v51[2] + 8) = v40;
  v19 = v50;
  v15[4] = v49;
  v15[5] = v19;
  v20 = v48;
  v15[2] = v47;
  v15[3] = v20;
  v21 = v46;
  *v15 = v45;
  v15[1] = v21;
  v22 = v51[6];
  v15[11] = v51[5];
  v15[12] = v22;
  v23 = v51[4];
  v15[9] = v51[3];
  v15[10] = v23;
  v24 = v51[2];
  v15[7] = v51[1];
  v15[8] = v24;
  v15[6] = v51[0];
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(&v45, &v52, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>);
  outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(v9, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>);
  v68 = v41;
  v69 = v42;
  v70 = v43;
  v65 = v38;
  v66 = v39;
  v52 = v16;
  v53 = v10;
  v54 = v11;
  v55 = v12;
  v56 = v17;
  v57 = v18;
  v58 = v37;
  v59 = v36;
  v60 = v35;
  v61 = v32;
  v62 = v34;
  v63 = v33;
  v64 = v31;
  v71 = v44;
  v67 = v40;
  outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(&v52, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>);
  return outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(v27, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>);
}

double CircularProgressViewStyle.fractionCompletedView(configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ProgressViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v61[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ArchivableCircularProgressView(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61[-v12];
  v14 = *v2;
  v15 = *(v2 + 8);
  v16 = *(v2 + 32);
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(a1, v7, type metadata accessor for ProgressViewStyleConfiguration);
  v17 = v16;
  if (!v16)
  {
    v17 = specialized Environment.wrappedValue.getter(v14, v15);
  }

  *v10 = xmmword_18CD8A050;
  _s7SwiftUI30ProgressViewStyleConfigurationVWObTm_0(v7, v10 + *(v8 + 24), type metadata accessor for ProgressViewStyleConfiguration);
  *(v10 + *(v8 + 28)) = v17;
  _s7SwiftUI30ProgressViewStyleConfigurationVWObTm_0(v10, v13, type metadata accessor for ArchivableCircularProgressView);
  _s7SwiftUI30ProgressViewStyleConfigurationVWObTm_0(v13, a2, type metadata accessor for ArchivableCircularProgressView);
  v18 = v16;
  if (!v16)
  {
    v18 = specialized Environment.wrappedValue.getter(v14, v15);
  }

  v65 = v18;
  v62 = v15;
  v63 = v14;
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(0);
  v20 = a2 + *(v19 + 44);
  KeyPath = swift_getKeyPath();
  v84 = 0;
  v71 = 0x4034000000000000;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  swift_retain_n();
  ScaledMetric.init(wrappedValue:)();
  v21 = v72;
  v22 = v74;
  v23 = v76;
  v24 = v77;
  v83 = v73;
  v82 = v75;
  v71 = 0x402C000000000000;
  ScaledMetric.init(wrappedValue:)();
  v25 = v72;
  v26 = v74;
  v27 = v76;
  v28 = v77;
  v81 = v73;
  v80 = v75;
  v71 = 0x4042800000000000;
  ScaledMetric.init(wrappedValue:)();
  v29 = v72;
  v30 = v73;
  v31 = v74;
  v32 = v75;
  v33 = v76;
  v34 = v77;
  v79 = v73;
  v78 = v75;
  v35 = v84;
  v36 = v83;
  v37 = v82;
  v38 = v81;
  v39 = v80;
  *v20 = KeyPath;
  *(v20 + 8) = v35;
  *(v20 + 16) = v21;
  *(v20 + 24) = v36;
  *(v20 + 32) = v22;
  *(v20 + 40) = v37;
  *(v20 + 48) = v23;
  *(v20 + 56) = v24;
  *(v20 + 64) = v25;
  *(v20 + 72) = v38;
  *(v20 + 80) = v26;
  *(v20 + 88) = v39;
  *(v20 + 96) = v27;
  *(v20 + 104) = v28;
  *(v20 + 112) = v29;
  *(v20 + 120) = v30;
  *(v20 + 128) = v31;
  *(v20 + 136) = v32;
  *(v20 + 144) = v33;
  *(v20 + 152) = v34;
  *(v20 + 160) = v65;
  v40 = v16;
  *(v20 + 168) = 0;
  if (!v16)
  {
    v40 = specialized Environment.wrappedValue.getter(v63, v62);
  }

  v65 = v40;
  v41 = swift_getKeyPath();
  v70 = 0;
  v71 = 0x4034000000000000;

  ScaledMetric.init(wrappedValue:)();
  v42 = v72;
  v43 = v74;
  v44 = v76;
  v45 = v77;
  v69 = v73;
  v68 = v75;
  v71 = 0x402C000000000000;
  ScaledMetric.init(wrappedValue:)();
  v46 = v72;
  v47 = v74;
  v48 = v76;
  v49 = v77;
  v67 = v73;
  v66 = v75;
  v71 = 0x4042800000000000;
  ScaledMetric.init(wrappedValue:)();
  v50 = v72;
  v51 = v73;
  v52 = v74;
  v53 = v75;
  result = v76;
  v55 = v77;
  v56 = v70;
  v57 = v69;
  v58 = v68;
  v59 = v67;
  v60 = v66;
  *(v20 + 176) = v41;
  *(v20 + 184) = v56;
  *(v20 + 192) = v42;
  *(v20 + 200) = v57;
  *(v20 + 208) = v43;
  *(v20 + 216) = v58;
  *(v20 + 224) = v44;
  *(v20 + 232) = v45;
  *(v20 + 240) = v46;
  *(v20 + 248) = v59;
  *(v20 + 256) = v47;
  *(v20 + 264) = v60;
  *(v20 + 272) = v48;
  *(v20 + 280) = v49;
  *(v20 + 288) = v50;
  *(v20 + 296) = v51;
  *(v20 + 304) = v52;
  *(v20 + 312) = v53;
  *(v20 + 320) = result;
  *(v20 + 328) = v55;
  *(v20 + 336) = v65;
  *(v20 + 344) = 1;
  return result;
}

double CircularUIKitProgressView.resolvedWidth.getter()
{
  specialized Environment.wrappedValue.getter(*v0, *(v0 + 8), &v3);
  _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for ScaledMetric<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
  ScaledMetric.wrappedValue.getter();
  return v2;
}

unint64_t type metadata accessor for UIColor()
{
  result = lazy cache variable for type metadata for UIColor;
  if (!lazy cache variable for type metadata for UIColor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIColor);
  }

  return result;
}

double static _LayoutDirectionBehaviorEffect._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v7 = a2[1];
  v45 = a2[2];
  v46 = v6;
  v8 = a2[3];
  v47 = a2[4];
  v9 = a2[1];
  v43 = *a2;
  v44 = v9;
  v57 = v45;
  v58 = v8;
  v59 = a2[4];
  v10 = *a1;
  v48 = *(a2 + 20);
  v60 = *(a2 + 20);
  v55 = v43;
  v56 = v7;
  v11 = _ViewInputs.layoutDirection.getter();
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v42 = v48;
  v37 = v43;
  v38 = v44;
  swift_beginAccess();
  *&v49 = __PAIR64__(*(v44 + 16), v10);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(&v43, &v55);
  lazy protocol witness table accessor for type FlipForRTLEnvironment and conformance FlipForRTLEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v57 = v45;
  v58 = v46;
  v59 = v47;
  v60 = v48;
  v55 = v43;
  v56 = v44;
  swift_beginAccess();
  v12 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v57 = v45;
  v58 = v46;
  v59 = v47;
  v60 = v48;
  v55 = v43;
  v56 = v44;
  v13 = _ViewInputs.animatedPosition()();
  *&v55 = __PAIR64__(v12, v10);
  *(&v55 + 1) = __PAIR64__(HIDWORD(v46), v13);
  LODWORD(v56) = v11;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type FlipForRTLTransform and conformance FlipForRTLTransform();
  Attribute.init<A>(body:value:flags:update:)();
  _ViewInputs.transform.setter();
  v57 = v45;
  v58 = v46;
  v59 = v47;
  v60 = v48;
  v55 = v43;
  v56 = v44;
  v14 = _ViewInputs.position.getter();
  v15 = DWORD2(v47);
  v49 = v43;
  v50 = v44;
  v51 = v45;
  v16 = _GraphInputs.pixelLength.getter();
  *&v55 = __PAIR64__(v14, v10);
  *(&v55 + 1) = __PAIR64__(v11, v15);
  LODWORD(v56) = v16;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type FlipForRTLFrame and conformance FlipForRTLFrame();
  Attribute.init<A>(body:value:flags:update:)();
  v17 = ViewFrame.origin.modify();
  v17(&v55, 0);
  AGGraphCreateOffsetAttribute2();
  _ViewInputs.position.setter();
  AGGraphCreateOffsetAttribute2();
  _ViewInputs.size.setter();
  v57 = v45;
  v58 = v46;
  v59 = v47;
  v60 = v48;
  v55 = v43;
  v56 = v44;
  *&v55 = __PAIR64__(_ViewInputs.containerPosition.getter(), v10);
  DWORD2(v55) = v11;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for CGPoint(0);
  lazy protocol witness table accessor for type FlipForRTLContainerPosition and conformance FlipForRTLContainerPosition();
  Attribute.init<A>(body:value:flags:update:)();
  _ViewInputs.containerPosition.setter();
  v51 = v39;
  v52 = v40;
  v53 = v41;
  v54 = v42;
  v49 = v37;
  v50 = v38;
  v33 = v39;
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v31 = v37;
  v32 = v38;
  v18 = outlined init with copy of _ViewInputs(&v49, &v55);
  a3(&v27, v18, &v31);
  v57 = v33;
  v58 = v34;
  v59 = v35;
  v60 = v36;
  v55 = v31;
  v56 = v32;
  outlined destroy of _ViewInputs(&v55);
  *&v31 = v46;
  DWORD2(v31) = DWORD2(v46);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    _DisplayList_Identity.init()();
    v19 = v31;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v31 = v43;
    v32 = v44;
    LODWORD(v29) = v19;
    _ViewInputs.pushIdentity(_:)();
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v31 = v43;
    v32 = v44;
    v20 = _ViewInputs.animatedPosition()();
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v31 = v43;
    v32 = v44;
    swift_beginAccess();
    v21 = CachedEnvironment.animatedSize(for:)();
    swift_endAccess();
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v31 = v43;
    v32 = v44;
    v22 = a4;
    v23 = _ViewInputs.containerPosition.getter();
    v29 = v27;
    v30 = LODWORD(v28);
    v24 = PreferencesOutputs.subscript.getter();
    v25 = *MEMORY[0x1E698D3F8];
    if ((v24 & 0x100000000) == 0)
    {
      v25 = v24;
    }

    *&v31 = __PAIR64__(v10, v19);
    *(&v31 + 1) = __PAIR64__(v21, v20);
    *&v32 = __PAIR64__(v23, v11);
    a4 = v22;
    DWORD2(v32) = v25;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type FlipForRTLDisplayList and conformance FlipForRTLDisplayList();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v31) = 0;
    PreferencesOutputs.subscript.setter();
  }

  v33 = v39;
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v31 = v37;
  v32 = v38;
  outlined destroy of _ViewInputs(&v31);
  *a4 = v27;
  result = v28;
  a4[1] = v28;
  return result;
}

unint64_t lazy protocol witness table accessor for type FlipForRTLEnvironment and conformance FlipForRTLEnvironment()
{
  result = lazy protocol witness table cache variable for type FlipForRTLEnvironment and conformance FlipForRTLEnvironment;
  if (!lazy protocol witness table cache variable for type FlipForRTLEnvironment and conformance FlipForRTLEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlipForRTLEnvironment and conformance FlipForRTLEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FlipForRTLFrame and conformance FlipForRTLFrame()
{
  result = lazy protocol witness table cache variable for type FlipForRTLFrame and conformance FlipForRTLFrame;
  if (!lazy protocol witness table cache variable for type FlipForRTLFrame and conformance FlipForRTLFrame)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlipForRTLFrame and conformance FlipForRTLFrame);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FlipForRTLContainerPosition and conformance FlipForRTLContainerPosition()
{
  result = lazy protocol witness table cache variable for type FlipForRTLContainerPosition and conformance FlipForRTLContainerPosition;
  if (!lazy protocol witness table cache variable for type FlipForRTLContainerPosition and conformance FlipForRTLContainerPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlipForRTLContainerPosition and conformance FlipForRTLContainerPosition);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>);
    }
  }
}

uint64_t destroy for OptionalSourceWriter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

uint64_t partial apply for closure #3 in CustomProgressView.Child.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t outlined init with take of ProgressViewValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI17ProgressViewValueOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI17ProgressViewValueOWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AccessibilityProgressValue and conformance AccessibilityProgressValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue;
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue;
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue;
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue);
  }

  return result;
}

uint64_t outlined destroy of AccessibilityValueStorage?(uint64_t a1)
{
  type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DefaultProgressViewStyle and conformance DefaultProgressViewStyle()
{
  result = lazy protocol witness table cache variable for type DefaultProgressViewStyle and conformance DefaultProgressViewStyle;
  if (!lazy protocol witness table cache variable for type DefaultProgressViewStyle and conformance DefaultProgressViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultProgressViewStyle and conformance DefaultProgressViewStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ProgressViewStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_18BE174BC()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>.Storage(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<LinearProgressViewStyle>, lazy protocol witness table accessor for type LinearProgressViewStyle and conformance LinearProgressViewStyle);
    lazy protocol witness table accessor for type ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel> and conformance ProgressView<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in DefaultProgressViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(0, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<LinearProgressViewStyle>, lazy protocol witness table accessor for type LinearProgressViewStyle and conformance LinearProgressViewStyle);
  v92 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v86 - v6;
  type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v86 - v8;
  v9 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v93 = &v86 - v13;
  v14 = type metadata accessor for ProgressViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v86 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v86 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v86 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v86 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v86 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v86 - v33;
  type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(0, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<CircularProgressViewStyle>, lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle);
  v94 = v35;
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v86 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v86 - v40;
  if (*(v39 + v14[6]) == 1)
  {
    _s7SwiftUI17ProgressViewValueOWOcTm_1(v39, v34, type metadata accessor for ProgressViewStyleConfiguration);
    _s7SwiftUI17ProgressViewValueOWOcTm_1(v34, v31, type metadata accessor for ProgressViewStyleConfiguration);
    _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for CustomProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for CustomProgressView);
    v43 = v42;
    v44 = *(v42 + 52);
    v41[v44] = 1;
    v45 = *(v42 + 56);
    v41[v45] = 1;
    _s7SwiftUI17ProgressViewValueOWOcTm_1(v31, v41, type metadata accessor for ProgressViewValue);
    v41[v44] = v31[v14[7]];
    v41[v45] = v31[v14[8]];
    if (v31[v14[9]])
    {
      outlined destroy of ProgressViewValue(v31, type metadata accessor for ProgressViewStyleConfiguration);
      v46 = 0;
    }

    else
    {
      v46 = AnyView.init<A>(_:)();
      outlined destroy of ProgressViewValue(v31, type metadata accessor for ProgressViewStyleConfiguration);
    }

    *&v41[*(v43 + 60)] = v46;
    outlined destroy of ProgressViewValue(v34, type metadata accessor for ProgressViewStyleConfiguration);
    _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base, type metadata accessor for ProgressView.Base);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v55 = swift_getKeyPath();
    v56 = v95;
    v57 = &v41[*(v94 + 36)];
    *v57 = KeyPath;
    v57[8] = 0;
    *(v57 + 2) = v55;
    v57[24] = 0;
    *(v57 + 4) = 0;
    outlined init with take of ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>(v41, v56, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<CircularProgressViewStyle>, lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle);
  }

  else
  {
    v47 = v39;
    _s7SwiftUI17ProgressViewValueOWOcTm_1(v39, v11, type metadata accessor for ProgressViewValue);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of ProgressViewValue(v11, type metadata accessor for ClosedRange<Date>);
      _s7SwiftUI17ProgressViewValueOWOcTm_1(v47, v28, type metadata accessor for ProgressViewStyleConfiguration);
      _s7SwiftUI17ProgressViewValueOWOcTm_1(v28, v25, type metadata accessor for ProgressViewStyleConfiguration);
      _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for CustomProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for CustomProgressView);
      v49 = v48;
      v50 = *(v48 + 52);
      v51 = v90;
      v90[v50] = 1;
      v52 = *(v48 + 56);
      *(v51 + v52) = 1;
      _s7SwiftUI17ProgressViewValueOWOcTm_1(v25, v51, type metadata accessor for ProgressViewValue);
      *(v51 + v50) = v25[v14[7]];
      *(v51 + v52) = v25[v14[8]];
      if (v25[v14[9]])
      {
        outlined destroy of ProgressViewValue(v25, type metadata accessor for ProgressViewStyleConfiguration);
        v53 = 0;
      }

      else
      {
        v53 = AnyView.init<A>(_:)();
        outlined destroy of ProgressViewValue(v25, type metadata accessor for ProgressViewStyleConfiguration);
      }

      v65 = v93;
      *(v51 + *(v49 + 60)) = v53;
      outlined destroy of ProgressViewValue(v28, type metadata accessor for ProgressViewStyleConfiguration);
      _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base, type metadata accessor for ProgressView.Base);
      swift_storeEnumTagMultiPayload();
      v66 = swift_getKeyPath();
      v67 = swift_getKeyPath();
      v68 = v51 + *(v92 + 36);
      *v68 = v66;
      *(v68 + 8) = 0;
      *(v68 + 16) = v67;
      *(v68 + 24) = 0;
      *(v68 + 32) = 0;
      outlined init with take of ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>(v51, v65, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<LinearProgressViewStyle>, lazy protocol witness table accessor for type LinearProgressViewStyle and conformance LinearProgressViewStyle);
    }

    else
    {
      outlined destroy of ProgressViewValue(v11, type metadata accessor for ProgressViewValue);
      if (*(v47 + v14[5] + 8))
      {
        v58 = v88;
        _s7SwiftUI17ProgressViewValueOWOcTm_1(v47, v88, type metadata accessor for ProgressViewStyleConfiguration);
        v59 = v86;
        _s7SwiftUI17ProgressViewValueOWOcTm_1(v58, v86, type metadata accessor for ProgressViewStyleConfiguration);
        _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for CustomProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for CustomProgressView);
        v61 = v60;
        v62 = *(v60 + 52);
        v37[v62] = 1;
        v63 = *(v60 + 56);
        v37[v63] = 1;
        _s7SwiftUI17ProgressViewValueOWOcTm_1(v59, v37, type metadata accessor for ProgressViewValue);
        v37[v62] = *(v59 + v14[7]);
        v37[v63] = *(v59 + v14[8]);
        if (*(v59 + v14[9]))
        {
          outlined destroy of ProgressViewValue(v59, type metadata accessor for ProgressViewStyleConfiguration);
          v64 = 0;
        }

        else
        {
          v64 = AnyView.init<A>(_:)();
          outlined destroy of ProgressViewValue(v59, type metadata accessor for ProgressViewStyleConfiguration);
        }

        *&v37[*(v61 + 60)] = v64;
        outlined destroy of ProgressViewValue(v58, type metadata accessor for ProgressViewStyleConfiguration);
        _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base, type metadata accessor for ProgressView.Base);
        swift_storeEnumTagMultiPayload();
        v76 = swift_getKeyPath();
        v77 = swift_getKeyPath();
        v78 = &v37[*(v94 + 36)];
        *v78 = v76;
        v78[8] = 0;
        *(v78 + 2) = v77;
        v78[24] = 0;
        *(v78 + 4) = 0;
        v79 = v37;
        v80 = v91;
        outlined init with take of ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>(v79, v91, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<CircularProgressViewStyle>, lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle);
      }

      else
      {
        v69 = v87;
        _s7SwiftUI17ProgressViewValueOWOcTm_1(v47, v87, type metadata accessor for ProgressViewStyleConfiguration);
        _s7SwiftUI17ProgressViewValueOWOcTm_1(v69, v20, type metadata accessor for ProgressViewStyleConfiguration);
        _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for CustomProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for CustomProgressView);
        v71 = v70;
        v72 = *(v70 + 52);
        v73 = v89;
        v89[v72] = 1;
        v74 = *(v70 + 56);
        *(v73 + v74) = 1;
        _s7SwiftUI17ProgressViewValueOWOcTm_1(v20, v73, type metadata accessor for ProgressViewValue);
        *(v73 + v72) = v20[v14[7]];
        *(v73 + v74) = v20[v14[8]];
        if (v20[v14[9]])
        {
          outlined destroy of ProgressViewValue(v20, type metadata accessor for ProgressViewStyleConfiguration);
          v75 = 0;
        }

        else
        {
          v75 = AnyView.init<A>(_:)();
          outlined destroy of ProgressViewValue(v20, type metadata accessor for ProgressViewStyleConfiguration);
        }

        *(v73 + *(v71 + 60)) = v75;
        outlined destroy of ProgressViewValue(v69, type metadata accessor for ProgressViewStyleConfiguration);
        _s7SwiftUI12ProgressViewVyAA0cD18StyleConfigurationV5LabelVAE012CurrentValueG0VGMaTm_0(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base, type metadata accessor for ProgressView.Base);
        swift_storeEnumTagMultiPayload();
        v81 = swift_getKeyPath();
        v82 = swift_getKeyPath();
        v80 = v91;
        v83 = v73 + *(v92 + 36);
        *v83 = v81;
        *(v83 + 8) = 0;
        *(v83 + 16) = v82;
        *(v83 + 24) = 0;
        *(v83 + 32) = 0;
        outlined init with take of ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>(v73, v80, &lazy cache variable for type metadata for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, &lazy cache variable for type metadata for ProgressViewStyleModifier<LinearProgressViewStyle>, lazy protocol witness table accessor for type LinearProgressViewStyle and conformance LinearProgressViewStyle);
      }

      v65 = v93;
      type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>.Storage, MEMORY[0x1E697F948]);
      swift_storeEnumTagMultiPayload();
      outlined init with take of _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>(v80, v65, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>, MEMORY[0x1E697F960], type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>);
    }

    v84 = v95;
    type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>.Storage, MEMORY[0x1E697F948]);
    swift_storeEnumTagMultiPayload();
    outlined init with take of _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>(v65, v84, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>, MEMORY[0x1E697F960], type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>.Storage);
  }

  type metadata accessor for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>>>.Storage, MEMORY[0x1E697F948]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t outlined destroy of ProgressViewValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI17ProgressViewValueOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void (*a5)(void))
{
  type metadata accessor for ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t initializeWithCopy for LinearProgressViewStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = a2[2];
  v7 = *(a2 + 24);
  outlined copy of Environment<Bool>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = a2[4];

  return a1;
}

uint64_t type metadata completion function for ArchivableCircularProgressView()
{
  result = type metadata accessor for ProgressViewStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BE18664()
{
  type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(255);
  lazy protocol witness table accessor for type TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>);
  return swift_getOpaqueTypeConformance2();
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_0(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>);
    a3(255);
    a4(255);
    v7 = type metadata accessor for StaticIf();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for (StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for (StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)(255, a3, a4, a5);
    v6 = type metadata accessor for TupleView();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_0(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>);
    }
  }
}

void type metadata accessor for ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>(255);
    type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void type metadata accessor for HStack<ProgressViewStyleConfiguration.Label?>()
{
  if (!lazy cache variable for type metadata for HStack<ProgressViewStyleConfiguration.Label?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.Label?);
    lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory? and conformance <A> A?(&lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.Label? and conformance <A> A?, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.Label?);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<ProgressViewStyleConfiguration.Label?>);
    }
  }
}

uint64_t *assignWithTake for LinearProgressViewStyle(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Color?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = a1[2];
  v10 = *(a1 + 24);
  a1[2] = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Bool>.Content(v9, v10);
  a1[4] = a2[4];

  return a1;
}

uint64_t protocol witness for ProgressViewStyle.makeBody(configuration:) in conformance CircularProgressViewStyle(uint64_t a1)
{
  type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  v9[1] = *v1;
  v9[2] = v6;
  v10 = *(v1 + 32);
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>();
  closure #1 in CircularProgressViewStyle.makeBody(configuration:)(a1, &v5[*(v7 + 44)]);
  Spacing.init()();
  lazy protocol witness table accessor for type TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>);
  View.spacing(_:)();

  return outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(v5, type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>);
}

uint64_t outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t CircularProgressViewStyle.labels(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  static Semantics.v5.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (result = specialized Environment.wrappedValue.getter(v5, v6), result == 2))
  {
    v8 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  else
  {
    v15 = static HorizontalAlignment.center.getter();
    closure #1 in CircularProgressViewStyle.labels(configuration:)(a1, &v18);
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29[0] = v18;
    v29[1] = v19;
    v29[2] = v20;
    v29[3] = v21;
    outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>(&v25, v30, type metadata accessor for TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>);
    outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(v29, type metadata accessor for TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>);
    *&v17[55] = v28;
    *&v17[39] = v27;
    *&v17[23] = v26;
    *&v17[7] = v25;
    *&v16[17] = *&v17[16];
    *&v16[33] = *&v17[32];
    *&v16[49] = *&v17[48];
    v16[0] = 1;
    *&v16[64] = *(&v28 + 1);
    *&v16[1] = *v17;
    static Color.secondary.getter();
    type metadata accessor for VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>(0);
    lazy protocol witness table accessor for type TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>);
    View.defaultForegroundColor(_:)();

    v30[2] = *&v16[16];
    v30[3] = *&v16[32];
    v30[4] = *&v16[48];
    v31 = *&v16[64];
    v30[0] = v15;
    v30[1] = *v16;
    result = outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(v30, type metadata accessor for VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>);
    v9 = v18;
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v13 = v22;
    v14 = v23;
    v8 = v24;
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  *(a2 + 96) = v8;
  return result;
}

uint64_t closure #1 in CircularProgressViewStyle.labels(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v5 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v6 = *(a1 + *(v5 + 28));
  v7 = static VerticalAlignment.center.getter();
  LOBYTE(v5) = *(a1 + *(v5 + 32));
  v8 = static Font.caption.getter();
  result = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 17) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 41) = v5;
  *(a2 + 48) = result;
  *(a2 + 56) = v8;
  return result;
}

uint64_t outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *initializeWithCopy for ArchivableCircularProgressView(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 16);
    v11(v7, v8, v10);
    type metadata accessor for ClosedRange<Date>();
    v11(&v7[*(v12 + 36)], &v8[*(v12 + 36)], v10);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    v7[*(v13 + 48)] = v8[*(v13 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  v14 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v15 = v14[5];
  v16 = &v7[v15];
  v17 = &v8[v15];
  *v16 = *v17;
  v16[8] = v17[8];
  v7[v14[6]] = v8[v14[6]];
  v7[v14[7]] = v8[v14[7]];
  v7[v14[8]] = v8[v14[8]];
  v7[v14[9]] = v8[v14[9]];
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));

  return a1;
}

uint64_t destroy for ArchivableCircularProgressView(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 24);
  type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for Date();
    v4 = *(*(v3 - 8) + 8);
    v4(v2, v3);
    type metadata accessor for ClosedRange<Date>();
    v4(v2 + *(v5 + 36), v3);
  }
}

uint64_t destroy for CircularUIKitProgressView(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<Selector?>.Content(*(a1 + 32), *(a1 + 40));
  outlined consume of Environment<Selector?>.Content(*(a1 + 64), *(a1 + 72));
  outlined consume of Environment<Selector?>.Content(*(a1 + 80), *(a1 + 88));
  outlined consume of Environment<Selector?>.Content(*(a1 + 112), *(a1 + 120));
  outlined consume of Environment<Selector?>.Content(*(a1 + 128), *(a1 + 136));
}

uint64_t CircularUIKitProgressView.updateUIView(_:context:)(void *a1, __int128 *a2)
{
  v4 = a2[1];
  v5 = *(a2 + 32);
  v6 = *(v2 + 160);
  if (*(v2 + 168))
  {
    v12 = a2[1];
    v13 = *a2;
    v20 = *(v2 + 96);
    v21 = *(v2 + 112);
    v22 = *(v2 + 128);
    v23 = *(v2 + 144);
    v16 = *(v2 + 32);
    v17 = *(v2 + 48);
    v18 = *(v2 + 64);
    v19 = *(v2 + 80);
    v24 = *(v2 + 160);
    LOBYTE(v25) = *(v2 + 168);
    [a1 _setCustomWidth_];
    v4 = v12;
    if (!v6)
    {
      static Color.secondary.getter();

      v4 = v12;
    }

    goto LABEL_5;
  }

  if (v6)
  {
LABEL_5:
    v15 = v4;
    LOBYTE(v16) = v5;
    swift_retain_n();
    RepresentableContextValues.environment.getter();
    v14 = v26;
    dispatch thunk of AnyColorBox.resolve(in:)();

    Color.Resolved.kitColor.getter();
    objc_opt_self();
    v6 = swift_dynamicCastObjCClassUnconditional();
  }

  v7 = [a1 color];
  if (v7)
  {
    v8 = v7;
    if (v6)
    {
      type metadata accessor for UIColor();
      v9 = v6;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

LABEL_13:
    [a1 setColor_];
    v9 = v6;
LABEL_14:

    goto LABEL_15;
  }

  if (v6)
  {
    goto LABEL_13;
  }

LABEL_15:
}

void type metadata accessor for ScaledMetric<CGFloat>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Child and conformance Child()
{
  result = lazy protocol witness table cache variable for type Child and conformance Child;
  if (!lazy protocol witness table cache variable for type Child and conformance Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Child and conformance Child);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FlipForRTLTransform and conformance FlipForRTLTransform()
{
  result = lazy protocol witness table cache variable for type FlipForRTLTransform and conformance FlipForRTLTransform;
  if (!lazy protocol witness table cache variable for type FlipForRTLTransform and conformance FlipForRTLTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlipForRTLTransform and conformance FlipForRTLTransform);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance IgnoreViewRespondersModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

void *initializeWithCopy for OptionalSourceWriter(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

uint64_t outlined init with take of ClosedRange<Date>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _sSNy10Foundation4DateVGWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _sSNy10Foundation4DateVGWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for ProgressView);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ProgressViewStyleModifier<DefaultProgressViewStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory? and conformance <A> A?(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyAccessibilityValue?(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of ProgressViewStyleConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI30ProgressViewStyleConfigurationVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithCopy for CircularUIKitProgressView(uint64_t a1, uint64_t a2)
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
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v10, v11);
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v14 = *(a2 + 112);
  v15 = *(a2 + 120);
  outlined copy of Environment<Selector?>.Content(v14, v15);
  *(a1 + 112) = v14;
  *(a1 + 120) = v15;
  v16 = *(a2 + 128);
  v17 = *(a2 + 136);
  outlined copy of Environment<Selector?>.Content(v16, v17);
  *(a1 + 128) = v16;
  *(a1 + 136) = v17;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t _s7SwiftUI19UIViewRepresentablePAAE9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVtFZAA021CircularUIKitProgressF0V_Tt2B5()
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(0, &lazy cache variable for type metadata for PlatformViewRepresentableAdaptor<CircularUIKitProgressView>);
    Attribute.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

void type metadata accessor for PlatformViewRepresentableAdaptor<UIKitPasteControl>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for PlatformViewRepresentableAdaptor();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for MutableBox<AccessibilityAttachment>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_6(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<LabelsVisibilityKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LabelsVisibilityKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

uint64_t specialized Environment.wrappedValue.getter(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x696C696269736956, 0xEA00000000007974, &v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    return v8;
  }

  return result;
}

{
  if ((a2 & 1) == 0)
  {
    v2 = result;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018CD3F8A0, &v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    return v8;
  }

  return result;
}

{
  if ((a2 & 1) == 0)
  {
    v2 = result;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x800000018CD3F860, &v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    return v8;
  }

  return result;
}

{
  if ((a2 & 1) == 0)
  {
    v2 = result;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000018CD3F1A0, &v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    return v8;
  }

  return result;
}

{
  if ((a2 & 1) == 0)
  {
    v2 = result;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000018CD3F530, &v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    return v8;
  }

  return result;
}

{
  if ((a2 & 1) == 0)
  {
    v2 = result;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000018CD3F5C0, v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    return v7[2];
  }

  return result;
}

uint64_t CustomProgressView.Child.value.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a2;
  v11 = a1;
  v34 = a7;
  v31 = HIDWORD(a1);
  v12 = HIDWORD(a2);
  type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel();
  v56 = &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel;
  v57 = a4;
  v58 = v30;
  v59 = a6;
  type metadata accessor for OptionalSourceWriter();
  v32 = type metadata accessor for ModifiedContent();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v26 - v17;
  type metadata accessor for ProgressViewValue(0);
  v28 = v11;
  Value = AGGraphGetValue();
  outlined init with copy of ProgressViewValue(Value, v16, type metadata accessor for ProgressViewValue);
  v19 = type metadata accessor for ResolvedProgressView(0);
  v16[v19[5]] = 0;
  v16[v19[6]] = 0;
  v16[v19[7]] = 0;
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AnyView?);
  v27 = v12;
  *&v16[*(v14 + 36)] = *AGGraphGetValue();
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v50 = v11;
  LODWORD(v11) = v31;
  v51 = v31;
  v52 = v35;
  v53 = v12;
  v20 = lazy protocol witness table accessor for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>> and conformance <> ModifiedContent<A, B>();

  v21 = v29;
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for ProgressViewStyleConfiguration.CurrentValueLabel, partial apply for closure #2 in CustomProgressView.Child.value.getter, v45, v14, &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel, a4, v20, v30, a6);
  _sSNy10Foundation4DateVGWOhTm_1(v16, type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>);
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = v28;
  v42 = v11;
  v43 = v35;
  v44 = v27;
  v54 = v20;
  v55 = &protocol witness table for OptionalSourceWriter<A, B>;
  v22 = v32;
  WitnessTable = swift_getWitnessTable();
  v24 = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label();
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for ProgressViewStyleConfiguration.Label, partial apply for closure #3 in CustomProgressView.Child.value.getter, v36, v22, &type metadata for ProgressViewStyleConfiguration.Label, a3, WitnessTable, v24, a5);
  return (*(v33 + 8))(v21, v22);
}

uint64_t View.accessibility(removeTraits:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5[2] = 0;
  v5[3] = v3;
  return View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityTraits(_:), v5, a2, a3);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _FlipForRTLEffect()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type Child and conformance Child();
  Attribute.init<A>(body:value:flags:update:)();
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

unint64_t lazy protocol witness table accessor for type FlipForRTLDisplayList and conformance FlipForRTLDisplayList()
{
  result = lazy protocol witness table cache variable for type FlipForRTLDisplayList and conformance FlipForRTLDisplayList;
  if (!lazy protocol witness table cache variable for type FlipForRTLDisplayList and conformance FlipForRTLDisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlipForRTLDisplayList and conformance FlipForRTLDisplayList);
  }

  return result;
}

uint64_t sub_18BE1AACC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t assignWithCopy for HostingContentViewRootModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v6 = (a1 + 72);
  v7 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v9 = (a2 + 72);
  v8 = *(a2 + 72);
  if (v7 == 1)
  {
    if (v8 == 1)
    {
      v10 = *v9;
      *(a1 + 80) = *(a2 + 80);
      *v6 = v10;
    }

    else
    {
      *(a1 + 72) = v8;
      *(a1 + 80) = *(a2 + 80);
    }
  }

  else if (v8 == 1)
  {
    outlined destroy of ListItemTint(a1 + 72);
    v11 = *(a2 + 80);
    *v6 = *v9;
    *(a1 + 80) = v11;
  }

  else
  {
    *(a1 + 72) = v8;

    *(a1 + 80) = *(a2 + 80);
  }

  v12 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v12;
  v13 = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v13;
  v14 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v14;
  v15 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = v15;
  v16 = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = v16;
  v17 = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 168) = v17;
  *(a1 + 184) = *(a2 + 184);
  v18 = *(a3 + 32);
  v19 = type metadata accessor for UICellConfigurationState();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v21(a1 + v18, 1, v19);
  v23 = v21(a2 + v18, 1, v19);
  if (!v22)
  {
    if (!v23)
    {
      (*(v20 + 24))(a1 + v18, a2 + v18, v19);
      return a1;
    }

    (*(v20 + 8))(a1 + v18, v19);
    goto LABEL_13;
  }

  if (v23)
  {
LABEL_13:
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v18), (a2 + v18), *(*(v24 - 8) + 64));
    return a1;
  }

  (*(v20 + 16))(a1 + v18, a2 + v18, v19);
  (*(v20 + 56))(a1 + v18, 0, 1, v19);
  return a1;
}

uint64_t assignWithCopy for ContentConfigurationBasedRootEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v6 = (a1 + 72);
  v7 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v9 = (a2 + 72);
  v8 = *(a2 + 72);
  if (v7 == 1)
  {
    if (v8 == 1)
    {
      v10 = *v9;
      *(a1 + 80) = *(a2 + 80);
      *v6 = v10;
    }

    else
    {
      *(a1 + 72) = v8;
      *(a1 + 80) = *(a2 + 80);
    }
  }

  else if (v8 == 1)
  {
    outlined destroy of ListItemTint(a1 + 72);
    v11 = *(a2 + 80);
    *v6 = *v9;
    *(a1 + 80) = v11;
  }

  else
  {
    *(a1 + 72) = v8;

    *(a1 + 80) = *(a2 + 80);
  }

  *(a1 + 81) = *(a2 + 81);
  v12 = *(a3 + 24);
  v13 = type metadata accessor for UICellConfigurationState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(a1 + v12, 1, v13);
  v17 = v15(a2 + v12, 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      (*(v14 + 24))(a1 + v12, a2 + v12, v13);
      return a1;
    }

    (*(v14 + 8))(a1 + v12, v13);
    goto LABEL_13;
  }

  if (v17)
  {
LABEL_13:
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v12), (a2 + v12), *(*(v18 - 8) + 64));
    return a1;
  }

  (*(v14 + 16))(a1 + v12, a2 + v12, v13);
  (*(v14 + 56))(a1 + v12, 0, 1, v13);
  return a1;
}

double static AccessibilityActionKind.default.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void type metadata accessor for ListItemTint?()
{
  if (!lazy cache variable for type metadata for ListItemTint?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ListItemTint?);
    }
  }
}

uint64_t storeEnumTagSinglePayload for BorderedButtonStyle_CarCatalyst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void SwiftUIGlue2.systemDefaultDynamicTypeSize.getter(char *a1@<X8>)
{
  v2 = _UIApplicationDefaultContentSizeCategory();
  DynamicTypeSize.init(uiSizeCategory:)(v2, &v4);
  v3 = v4;
  if (v4 == 12)
  {
    v3 = 3;
  }

  *a1 = v3;
}

uint64_t protocol witness for static StyleableView.defaultStyleModifier.getter in conformance ResolvedLabeledContent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultStyleModifier != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = static ResolvedLabeledContent.defaultStyleModifier;
  v3 = byte_1EAB096C0;
  *a1 = static ResolvedLabeledContent.defaultStyleModifier;
  *(a1 + 8) = v3;

  return outlined copy of Environment<Bool>.Content(v2, v3);
}

uint64_t outlined copy of Environment<ListItemTint?>.Content(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return outlined copy of Transaction?(result);
  }

  else
  {
  }
}

uint64_t outlined consume of Environment<ListItemTint?>.Content(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return outlined consume of ListItemTint?(result);
  }

  else
  {
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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