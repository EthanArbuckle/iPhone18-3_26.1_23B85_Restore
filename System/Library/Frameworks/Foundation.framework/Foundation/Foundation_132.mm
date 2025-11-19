uint64_t _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV09ByteCountF0O_Tt0B5(char a1)
{
  v2 = v1;
  v17 = &type metadata for AttributeScopes.FoundationAttributes.ByteCountAttribute.Component;
  v18 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component();
  v16[0] = a1;
  v19 = xmmword_1812187D0;
  v20 = 1;
  v21 = 0;
  v4 = *(v2 + 40);
  v25 = *(v2 + 24);
  v26 = v4;
  v27 = *(v2 + 56);
  swift_unknownObjectRetain();
  v5 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v6 = *(v2 + 40);
  v22 = *(v2 + 24);
  v23 = v6;
  v24 = *(v2 + 56);
  swift_unknownObjectRetain();
  v7 = v2;
  v8 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v9 = v5 >> 11;
  v10 = v8 >> 11;
  v15[2] = 0xD00000000000001DLL;
  v15[3] = 0x800000018147CCB0;
  v15[4] = v16;
  AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)partial apply, v15, v7, v5 >> 11, v10);
  v11 = *(&v19 + 1);
  if (*(&v19 + 1) != 1)
  {
    v12 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_181218E20;
    *(v13 + 32) = v12;
    *(v13 + 40) = v11;
    outlined copy of AttributedString.AttributeRunBoundaries?(v12, v11);
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v9, v10, 0, v13);
  }

  return outlined destroy of AttributedString._AttributeValue(v16);
}

uint64_t _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV021InflectionAlternativeF0O_Tt0B5(uint64_t a1)
{
  v2 = v1;
  v19[3] = &type metadata for AttributedString;
  v19[4] = lazy protocol witness table accessor for type AttributedString and conformance AttributedString();
  v19[0] = a1;
  v20 = xmmword_1812187D0;
  v21 = 1;
  v22 = 0;
  v4 = one-time initialization token for name;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute.name;
  v6 = unk_1EA7B25D8;
  v26 = *(v2 + 24);
  v7 = *(v2 + 56);
  v27 = *(v2 + 40);
  v28 = v7;
  swift_unknownObjectRetain();
  v8 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v9 = *(v2 + 40);
  v23 = *(v2 + 24);
  v24 = v9;
  v25 = *(v2 + 56);
  swift_unknownObjectRetain();
  v10 = BigString.UnicodeScalarView.index(roundingDown:)();
  v11 = swift_unknownObjectRelease();
  v12 = v8 >> 11;
  v13 = v10 >> 11;
  MEMORY[0x1EEE9AC00](v11);
  v18[2] = v5;
  v18[3] = v6;
  v18[4] = v19;
  AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)partial apply, v18, v2, v8 >> 11, v13);
  v14 = *(&v20 + 1);
  if (*(&v20 + 1) != 1)
  {
    v15 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_181218E20;
    *(v16 + 32) = v15;
    *(v16 + 40) = v14;
    outlined copy of AttributedString.AttributeRunBoundaries?(v15, v14);
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v12, v13, 0, v16);
  }

  return outlined destroy of AttributedString._AttributeValue(v19);
}

uint64_t _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV011ReplacementnF0O_Tt0g5(uint64_t a1)
{
  v13[3] = MEMORY[0x1E69E6530];
  v13[4] = MEMORY[0x1E69E6540];
  v13[0] = a1;
  v14 = xmmword_1812187D0;
  v15 = 1;
  v16 = 0;
  v2 = *(v1 + 40);
  v20 = *(v1 + 24);
  v21 = v2;
  v22 = *(v1 + 56);
  swift_unknownObjectRetain();
  v3 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v4 = *(v1 + 40);
  v17 = *(v1 + 24);
  v18 = v4;
  v19 = *(v1 + 56);
  swift_unknownObjectRetain();
  v5 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v6 = v3 >> 11;
  v7 = v5 >> 11;
  v12[2] = 0xD000000000000012;
  v12[3] = 0x800000018147CCD0;
  v12[4] = v13;
  AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)partial apply, v12, v1, v3 >> 11, v7);
  v8 = *(&v14 + 1);
  if (*(&v14 + 1) != 1)
  {
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_181218E20;
    *(v10 + 32) = v9;
    *(v10 + 40) = v8;
    outlined copy of AttributedString.AttributeRunBoundaries?(v9, v8);
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v6, v7, 0, v10);
  }

  return outlined destroy of AttributedString._AttributeValue(v13);
}

uint64_t _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV022MarkdownSourcePositionF0O_Tt0B5(_OWORD *a1)
{
  v2 = v1;
  v22[3] = &type metadata for AttributedString.MarkdownSourcePosition;
  v22[4] = lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition and conformance AttributedString.MarkdownSourcePosition();
  v4 = swift_allocObject();
  v22[0] = v4;
  v5 = a1[5];
  v4[5] = a1[4];
  v4[6] = v5;
  *(v4 + 105) = *(a1 + 89);
  v6 = a1[1];
  v4[1] = *a1;
  v4[2] = v6;
  v7 = a1[3];
  v4[3] = a1[2];
  v4[4] = v7;
  v23 = xmmword_1812187D0;
  v24 = 1;
  v25 = 0;
  if (one-time initialization token for name != -1)
  {
    swift_once();
  }

  v8 = static AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute.name;
  v9 = qword_1EA7B25B0;
  v29 = *(v2 + 24);
  v10 = *(v2 + 56);
  v30 = *(v2 + 40);
  v31 = v10;
  swift_unknownObjectRetain();
  v11 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v12 = *(v2 + 40);
  v26 = *(v2 + 24);
  v27 = v12;
  v28 = *(v2 + 56);
  swift_unknownObjectRetain();
  v13 = BigString.UnicodeScalarView.index(roundingDown:)();
  v14 = swift_unknownObjectRelease();
  v15 = v11 >> 11;
  v16 = v13 >> 11;
  MEMORY[0x1EEE9AC00](v14);
  v21[2] = v8;
  v21[3] = v9;
  v21[4] = v22;
  AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)partial apply, v21, v2, v11 >> 11, v16);
  v17 = *(&v23 + 1);
  if (*(&v23 + 1) != 1)
  {
    v18 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_181218E20;
    *(v19 + 32) = v18;
    *(v19 + 40) = v17;
    outlined copy of AttributedString.AttributeRunBoundaries?(v18, v17);
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v15, v16, 0, v19);
  }

  return outlined destroy of AttributedString._AttributeValue(v22);
}

uint64_t _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV013DurationFieldF0O_Tt0B5(char a1)
{
  v2 = v1;
  v17 = &type metadata for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field;
  v18 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field();
  v16[0] = a1;
  v19 = xmmword_1812187D0;
  v20 = 1;
  v21 = 0;
  v4 = *(v2 + 40);
  v25 = *(v2 + 24);
  v26 = v4;
  v27 = *(v2 + 56);
  swift_unknownObjectRetain();
  v5 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v6 = *(v2 + 40);
  v22 = *(v2 + 24);
  v23 = v6;
  v24 = *(v2 + 56);
  swift_unknownObjectRetain();
  v7 = v2;
  v8 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v9 = v5 >> 11;
  v10 = v8 >> 11;
  v15[2] = 0xD000000000000021;
  v15[3] = 0x800000018147DF20;
  v15[4] = v16;
  AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)partial apply, v15, v7, v5 >> 11, v10);
  v11 = *(&v19 + 1);
  if (*(&v19 + 1) != 1)
  {
    v12 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_181218E20;
    *(v13 + 32) = v12;
    *(v13 + 40) = v11;
    outlined copy of AttributedString.AttributeRunBoundaries?(v12, v11);
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v9, v10, 0, v13);
  }

  return outlined destroy of AttributedString._AttributeValue(v16);
}

uint64_t _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV014InflectionRuleF0O_Tt0B5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = &type metadata for InflectionRule;
  v27 = lazy protocol witness table accessor for type InflectionRule and conformance InflectionRule();
  v23[0] = a1;
  v23[1] = a2;
  v25 = BYTE4(a3);
  v24 = a3;
  v28 = xmmword_1812187D0;
  v29 = 1;
  v30 = 0;
  v8 = one-time initialization token for name;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = static AttributeScopes.FoundationAttributes.InflectionRuleAttribute.name;
  v10 = qword_1EA7B2660;
  v34 = *(v4 + 24);
  v11 = *(v4 + 56);
  v35 = *(v4 + 40);
  v36 = v11;
  swift_unknownObjectRetain();
  v12 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v13 = *(v4 + 40);
  v31 = *(v4 + 24);
  v32 = v13;
  v33 = *(v4 + 56);
  swift_unknownObjectRetain();
  v14 = BigString.UnicodeScalarView.index(roundingDown:)();
  v15 = swift_unknownObjectRelease();
  v16 = v12 >> 11;
  v17 = v14 >> 11;
  MEMORY[0x1EEE9AC00](v15);
  v22[2] = v9;
  v22[3] = v10;
  v22[4] = v23;
  AttributedString._InternalRunsSlice.updateEach(with:)(partial apply for closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:), v22, v4, v12 >> 11, v17);
  v18 = *(&v28 + 1);
  if (*(&v28 + 1) != 1)
  {
    v19 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_181218E20;
    *(v20 + 32) = v19;
    *(v20 + 40) = v18;
    outlined copy of AttributedString.AttributeRunBoundaries?(v19, v18);
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v16, v17, 0, v20);
  }

  return outlined destroy of AttributedString._AttributeValue(v23);
}

uint64_t specialized AttributedString.Runs.AttributesSlice1.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *&v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v283.i64[0] = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v5 = &v247 - v4;
  v279.i64[0] = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v279.i64[0]);
  v277 = &v247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v280 = (&v247 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v282 = (&v247 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v247 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v247 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v271 = (&v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v270 = &v247 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v269 = &v247 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v274.i64[0] = &v247 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v273 = &v247 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v272 = &v247 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v275 = &v247 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v247 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v276.i64[0] = &v247 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v247 - v37;
  v40 = (v2 + *(v39 + 44));
  v41 = *v40;
  v281 = v2;
  result = outlined init with copy of FloatingPointRoundingRule?(v2, &v247 - v37, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd);
  if (*(v38 + 26) != 2)
  {
    v43 = *(v38 + 23);
    result = outlined destroy of TermOfAddress?(v38, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd);
    v285.i64[0] = v41 >> 10;
    if (v41 >> 10 == v43 >> 10)
    {
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 2;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      return result;
    }

    v278 = v41;
    v264 = a1;
    v44 = v281;
    v45 = v276.i64[0];
    outlined init with copy of FloatingPointRoundingRule?(v281, v276.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd);
    outlined init with copy of AttributedString.Runs(v45, v16);
    outlined destroy of TermOfAddress?(v45, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd);
    LOBYTE(v45) = v16[*(v279.i64[0] + 28)];
    outlined destroy of AttributedString.Runs(v16);
    v46 = (v283.i64[0] + 8);
    v283.i64[0] += 8;
    v265 = v40;
    if (v45)
    {
      outlined init with copy of FloatingPointRoundingRule?(v44, v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd);
      outlined init with copy of AttributedString.Runs(v33, v13);
      outlined destroy of TermOfAddress?(v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd);
      v47 = v40[2];
      v267 = v40[1];
      *&v268 = v47;
      *(&v268 + 1) = v40[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
      RangeSet.ranges.getter();
      v48 = v284;
      v49 = RangeSet.Ranges.count.getter();
      v282 = *v46;
      result = (v282)(v5, v48);
      if (v49 >= 1)
      {
        v50 = 0;
        while (!__OFADD__(v50, v49))
        {
          v51 = (v50 + v49) / 2;
          RangeSet.ranges.getter();
          v52 = v284;
          RangeSet.Ranges.subscript.getter();
          result = (v282)(v5, v52);
          v53 = v286.i64[0] >> 10;
          if (v285.i64[0] >= v286.i64[0] >> 10)
          {
            v54 = *v288;
            if (v285.i64[0] < *v288 >> 10)
            {
              v257 = v286;
              v256 = v287;
              v65 = *v13;
              AttributedString.Guts.findRun(at:)(v278, *(&v268 + 1), v286.i64);
              v275 = v286.i64[0];
              *&v266 = v287.i64[0];
              *(&v266 + 1) = v286.i64[1];
              v255 = v289;
              v276 = *&v288[8];
              v66 = *(v65 + 72);
              v263 = *(v65 + 80);
              v67 = *(v65 + 88);
              v68 = *(v65 + 96);
              swift_unknownObjectRetain();
              v69 = specialized Rope.subscript.getter(v275, *(&v266 + 1), v266, v66, v263, v67, v68);
              v71 = v70;
              *(&v266 + 1) = v72;
              result = swift_unknownObjectRelease();
              v73 = v69 + (v276.i64[0] >> 11);
              if (__OFADD__(v69, v276.i64[0] >> 11))
              {
                goto LABEL_86;
              }

              LODWORD(v275) = v53 < v276.i64[0] >> 10;
              *&v266 = v71;
              if ((v54 >> 11) < v73)
              {
                v73 = v54 >> 11;
              }

              v74 = *(v65 + 40);
              v321 = *(v65 + 24);
              v322 = v74;
              v323 = *(v65 + 56);
              if (__OFSUB__(v73, v278 >> 11))
              {
                goto LABEL_88;
              }

              swift_unknownObjectRetain();
              v75 = BigString.UTF8View.index(_:offsetBy:)();
              v261 = v76;
              v262 = v75;
              v259 = v78;
              v260 = v77;
              swift_unknownObjectRelease();
              v263 = v65;

              outlined destroy of AttributedString.Runs(v13);
              v79 = v281;
              v80 = v272;
              outlined init with copy of FloatingPointRoundingRule?(v281, v272, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd);
              v81 = v280;
              outlined init with copy of AttributedString.Runs(v80, v280);

              outlined destroy of TermOfAddress?(v80, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd);
              v82 = v273;
              outlined init with copy of FloatingPointRoundingRule?(v79, v273, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd);
              v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd);
              v84 = *(v82 + *(v83 + 36));

              outlined destroy of TermOfAddress?(v82, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd);
              v85 = v79;
              v86 = v274.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v85, v274.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd);
              v253 = v83;
              v272 = *(v86 + *(v83 + 40));

              result = outlined destroy of TermOfAddress?(v86, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd);
              v254 = v84;
              if (!v84[2])
              {
                goto LABEL_90;
              }

              v258 = *v81;
              AttributedString.Guts.findRun(at:)(v278, *(&v268 + 1), v286.i64);
              v251 = *&v288[16];
              v252 = *&v288[8];
              v249 = v289.i64[1];
              v250 = v289.i64[0];
              v311[0] = v286;
              v311[1] = v287;
              v312 = *v288;
              RangeSet.ranges.getter();
              v87 = v284;
              v88 = RangeSet.Ranges.count.getter();
              result = (v282)(v5, v87);
              v89 = v277;
              if (v88 >= 1)
              {
                v90 = 0;
                v91 = vdup_n_s32(v275);
                v92.i64[0] = v91.u32[0];
                v92.i64[1] = v91.u32[1];
                v93 = vcltzq_s64(vshlq_n_s64(v92, 0x3FuLL));
                v256 = vbslq_s8(v93, v255, v256);
                v257 = vbslq_s8(v93, v276, v257);
                while (!__OFADD__(v90, v88))
                {
                  v94 = (v90 + v88) / 2;
                  RangeSet.ranges.getter();
                  v95 = v284;
                  RangeSet.Ranges.subscript.getter();
                  v96 = v95;
                  v97 = v281;
                  result = (v282)(v5, v96);
                  if (v285.i64[0] >= v286.i64[0] >> 10)
                  {
                    v98 = *v288 >> 10;
                    if (v285.i64[0] < *v288 >> 10)
                    {
                      v274.i64[0] = *v288;
                      v99 = *&v288[8];
                      v276.i64[0] = *&v288[16];
                      v100 = v289.i64[0];
                      v101 = v272;
                      if (*(v272 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v272) & 1) == 0)
                      {

                        v175 = *(v258 + 24);
                        v176 = *(v258 + 56);
                        v319 = *(v258 + 40);
                        v320 = v176;
                        v318 = v175;
                        *&v313 = v278;
                        *(&v313 + 1) = v267;
                        v314 = v268;
                        *&v315 = v274.i64[0];
                        *(&v315 + 1) = v99;
                        v316 = v276.i64[0];
                        v317 = v100;
                        v127 = v258;
                        v177 = *(v258 + 24);
                        *&v310 = *(v258 + 56);
                        v178 = *(v258 + 40);
                        v308 = v177;
                        v309 = v178;
                        outlined init with copy of Rope<BigString._Chunk>._Node?(&v308, &v286);
                        v179 = BigString._firstConstraintBreak(in:with:)(&v313, v101);
                        v273 = v180;
                        v274.i64[0] = v179;
                        v275 = v181;
                        v276.i64[0] = v182;

                        outlined destroy of BigString(&v318);
                        v126 = v269;
                      }

                      else
                      {
                        v273 = v100;
                        v275 = v99;
                        AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v311, v254, v292);

                        v102 = v258;
                        v104 = *(v258 + 72);
                        v103 = *(v258 + 80);
                        v105 = *(v258 + 88);
                        v247 = *(v258 + 96);
                        v248 = v105;
                        v106 = v292[0];
                        v107 = v292[1];
                        v254 = v103;
                        v255.i64[0] = v292[4];
                        v108 = v292[2];
                        swift_unknownObjectRetain();
                        v109 = specialized Rope.subscript.getter(v106, v107, v108, v104, v254, v248, v247);
                        swift_unknownObjectRelease();

                        if (__OFADD__(v255.i64[0], v109))
                        {
                          goto LABEL_94;
                        }

                        v111 = *(v102 + 24);
                        v110 = (v102 + 24);
                        v112 = v110[1];
                        v113 = v110[2];
                        v318 = v111;
                        v319 = v112;
                        v320 = v113;
                        if (__OFSUB__(v255.i64[0] + v109, v252 >> 11))
                        {
                          goto LABEL_95;
                        }

                        swift_unknownObjectRetain();
                        v114 = BigString.UTF8View.index(_:offsetBy:)();
                        v116 = v115;
                        v254 = v118;
                        v255.i64[0] = v117;
                        result = swift_unknownObjectRelease();
                        v89 = v277;
                        if (v114 >> 10 >= v98)
                        {
                          v165 = *v110;
                          v166 = v110[2];
                          v309 = v110[1];
                          v310 = v166;
                          v308 = v165;
                          *&v313 = v278;
                          *(&v313 + 1) = v267;
                          v314 = v268;
                          *&v315 = v274.i64[0];
                          *(&v315 + 1) = v275;
                          v316 = v276.i64[0];
                          v317 = v273;
                          v167 = *v110;
                          v168 = v110[1];
                          v326 = *(v110 + 4);
                          v324 = v167;
                          v325 = v168;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v324, &v286);
                          v169 = BigString._firstConstraintBreak(in:with:)(&v313, v272);
                          v285.i64[0] = v170;
                          v278 = v171;
                          v173 = v172;

                          outlined destroy of BigString(&v308);
                          v174 = v98 == v169 >> 10;
                          v126 = v269;
                          v127 = v258;
                          if (!v174)
                          {
                            v273 = v173;
                            v274.i64[0] = v169;
                            v275 = v285.i64[0];
                            v276.i64[0] = v278;
                          }
                        }

                        else
                        {
                          v119 = v110[1];
                          v308 = *v110;
                          v309 = v119;
                          v310 = v110[2];
                          if (v114 >> 10 < v285.i64[0])
                          {
                            goto LABEL_98;
                          }

                          *&v313 = v278;
                          *(&v313 + 1) = v267;
                          v314 = v268;
                          *&v315 = v114;
                          *(&v315 + 1) = v116;
                          v316 = v255.i64[0];
                          v317 = v254;
                          v120 = *v110;
                          v121 = v110[1];
                          v326 = *(v110 + 4);
                          v324 = v120;
                          v325 = v121;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v324, &v286);
                          v122 = BigString._firstConstraintBreak(in:with:)(&v313, v272);
                          v273 = v123;
                          v274.i64[0] = v122;
                          v275 = v124;
                          v276.i64[0] = v125;

                          outlined destroy of BigString(&v308);
                          v126 = v269;
                          v127 = v258;
                        }
                      }

                      v269 = *(v127 + 16);
                      outlined destroy of AttributedString.Runs(v280);
                      outlined init with copy of FloatingPointRoundingRule?(v97, v126, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd);
                      outlined init with copy of AttributedString.Runs(v126, v89);
                      outlined destroy of TermOfAddress?(v126, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd);
                      v183 = v270;
                      outlined init with copy of FloatingPointRoundingRule?(v97, v270, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd);
                      v184 = v253;
                      v185 = v89;
                      v186 = *(v183 + *(v253 + 36));

                      outlined destroy of TermOfAddress?(v183, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd);
                      v187 = v271;
                      outlined init with copy of FloatingPointRoundingRule?(v97, v271, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd);
                      v281 = *(v187 + *(v184 + 40));

                      result = outlined destroy of TermOfAddress?(v187, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd);
                      v271 = v186;
                      if (!v186[2])
                      {
                        goto LABEL_92;
                      }

                      v272 = *v185;
                      AttributedString.Guts.findRun(at:)(v274.u64[0], v273, v286.i64);
                      v270 = *&v288[8];
                      *&v268 = v289.i64[0];
                      *(&v268 + 1) = *&v288[16];
                      v267 = v289.i64[1];
                      v297[0] = v286;
                      v297[1] = v287;
                      v298 = *v288;
                      v285.i64[0] = *(v279.i64[0] + 24);
                      RangeSet.ranges.getter();
                      v188 = v284;
                      v189 = RangeSet.Ranges.count.getter();
                      result = (v282)(v5, v188);
                      if (v189 >= 1)
                      {
                        v190 = 0;
                        v191 = v274.i64[0] >> 10;
                        while (1)
                        {
                          if (__OFADD__(v190, v189))
                          {
                            goto LABEL_85;
                          }

                          v192 = (v190 + v189) / 2;
                          RangeSet.ranges.getter();
                          v193 = v284;
                          RangeSet.Ranges.subscript.getter();
                          result = (v282)(v5, v193);
                          if (v191 >= v286.i64[0] >> 10)
                          {
                            v150 = *v288;
                            v194 = *v288 >> 10;
                            if (v191 < *v288 >> 10)
                            {
                              v280 = *&v288[8];
                              v278 = v289.i64[0];
                              v279.i64[0] = *&v288[16];
                              if (*(v281 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v281) & 1) == 0)
                              {

                                v229 = v272;
                                v230 = *(v272 + 24);
                                v231 = *(v272 + 56);
                                v306 = *(v272 + 40);
                                v307 = v231;
                                v305 = v230;
                                *&v299 = v274.i64[0];
                                *(&v299 + 1) = v275;
                                *&v300 = v276.i64[0];
                                *(&v300 + 1) = v273;
                                v301 = v150;
                                v302 = v280;
                                v303 = v279.i64[0];
                                v304 = v278;
                                v232 = *(v272 + 24);
                                *&v296 = *(v272 + 56);
                                v233 = *(v272 + 40);
                                v294 = v232;
                                v295 = v233;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v294, &v286);
                                v222 = BigString._firstConstraintBreak(in:with:)(&v299, v281);
                                v270 = v235;
                                v271 = v234;
                                *(&v268 + 1) = v236;
                                outlined destroy of BigString(&v305);
                                if (v194 != v222 >> 10)
                                {

                                  v240 = *(v229 + 16);
                                  goto LABEL_73;
                                }

                                RangeSet.ranges.getter();
                                v237 = v284;
                                v238 = RangeSet.Ranges.count.getter();
                                result = (v282)(v5, v237);
                                if (__OFSUB__(v238, 1))
                                {
                                  goto LABEL_101;
                                }

                                v228 = v272;
                                if (v192 != v238 - 1)
                                {
                                  goto LABEL_69;
                                }

LABEL_65:

LABEL_70:
                                v285.i64[0] = *(v228 + 16);
                              }

                              else
                              {
                                AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v297, v271, v293);

                                v195 = v272;
                                v196 = *(v272 + 72);
                                v271 = *(v272 + 80);
                                v197 = *(v272 + 96);
                                v258 = *(v272 + 88);
                                v254 = v293[0];
                                v255.i64[0] = v197;
                                v198 = v293[4];
                                v252 = v293[2];
                                v253 = v293[1];
                                swift_unknownObjectRetain();
                                v271 = specialized Rope.subscript.getter(v254, v253, v252, v196, v271, v258, v255.i64[0]);
                                v255.i64[0] = v199;
                                v258 = v200;
                                swift_unknownObjectRelease();

                                v201 = v271 + v198;
                                if (__OFADD__(v198, v271))
                                {
                                  goto LABEL_96;
                                }

                                v203 = *(v195 + 24);
                                v202 = (v195 + 24);
                                v204 = v203;
                                v205 = v202[1];
                                v206 = v202[2];
                                v305 = v203;
                                v306 = v205;
                                v307 = v206;
                                v271 = &v201[-(v270 >> 11)];
                                if (__OFSUB__(v201, v270 >> 11))
                                {
                                  goto LABEL_97;
                                }

                                v258 = v204;
                                swift_unknownObjectRetain();
                                v207 = BigString.UTF8View.index(_:offsetBy:)();
                                v270 = v209;
                                v271 = v208;
                                *(&v268 + 1) = v210;
                                result = swift_unknownObjectRelease();
                                if (v207 >> 10 < v194)
                                {
                                  v211 = v202[1];
                                  v294 = *v202;
                                  v295 = v211;
                                  v296 = v202[2];
                                  v151 = v264;
                                  v143 = v265;
                                  if (v207 >> 10 < v191)
                                  {
                                    goto LABEL_99;
                                  }

                                  *&v299 = v274.i64[0];
                                  *(&v299 + 1) = v275;
                                  *&v300 = v276.i64[0];
                                  *(&v300 + 1) = v273;
                                  v301 = v207;
                                  v302 = v271;
                                  v303 = v270;
                                  v304 = *(&v268 + 1);
                                  v212 = *v202;
                                  v213 = v202[1];
                                  v214 = v274.i64[0];
                                  v329 = *(v202 + 4);
                                  v327 = v212;
                                  v328 = v213;
                                  outlined init with copy of Rope<BigString._Chunk>._Node?(&v327, &v286);
                                  v150 = BigString._firstConstraintBreak(in:with:)(&v299, v281);
                                  v280 = v215;
                                  v278 = v217;
                                  v279.i64[0] = v216;

                                  outlined destroy of BigString(&v294);
                                  v285.i64[0] = *(v272 + 16);
LABEL_75:
                                  result = outlined destroy of AttributedString.Runs(v277);
                                  v152 = *v143;
                                  v241 = v191 >= *v143 >> 10;
                                  v156 = v256;
                                  v157 = v257;
                                  v163 = v273;
                                  v164 = v269;
                                  v158 = v280;
                                  v161 = v278;
                                  v159 = v279.i64[0];
                                  v160 = v214;
                                  v162 = v285.i64[0];
                                  if (v241)
                                  {
                                    goto LABEL_77;
                                  }

                                  goto LABEL_93;
                                }

                                v218 = *v202;
                                v219 = v202[2];
                                v295 = v202[1];
                                v296 = v219;
                                v294 = v218;
                                *&v299 = v274.i64[0];
                                *(&v299 + 1) = v275;
                                *&v300 = v276.i64[0];
                                *(&v300 + 1) = v273;
                                v301 = v150;
                                v302 = v280;
                                v303 = v279.i64[0];
                                v304 = v278;
                                v220 = *v202;
                                v221 = v202[1];
                                v329 = *(v202 + 4);
                                v327 = v220;
                                v328 = v221;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v327, &v286);
                                v222 = BigString._firstConstraintBreak(in:with:)(&v299, v281);
                                v270 = v224;
                                v271 = v223;
                                *(&v268 + 1) = v225;
                                outlined destroy of BigString(&v294);
                                if (v194 == v222 >> 10)
                                {
                                  RangeSet.ranges.getter();
                                  v226 = v284;
                                  v227 = RangeSet.Ranges.count.getter();
                                  result = (v282)(v5, v226);
                                  v228 = v272;
                                  if (__OFSUB__(v227, 1))
                                  {
                                    goto LABEL_100;
                                  }

                                  if (v192 == v227 - 1)
                                  {
                                    goto LABEL_65;
                                  }

LABEL_69:
                                  RangeSet.ranges.getter();
                                  v239 = v284;
                                  RangeSet.Ranges.subscript.getter();

                                  (v282)(v5, v239);
                                  v280 = v286.i64[1];
                                  v150 = v286.i64[0];
                                  v278 = v287.u64[1];
                                  v279.i64[0] = v287.i64[0];
                                  goto LABEL_70;
                                }

                                v240 = *(v272 + 16);
LABEL_73:
                                v285.i64[0] = v240;
                                v150 = v222;
                                v280 = v271;
                                v278 = *(&v268 + 1);
                                v279.i64[0] = v270;
                              }

                              v151 = v264;
                              v143 = v265;
                              v214 = v274.i64[0];
                              goto LABEL_75;
                            }

                            v190 = v192 + 1;
                            v192 = v189;
                          }

                          v189 = v192;
                          if (v190 >= v192)
                          {
                            goto LABEL_81;
                          }
                        }
                      }

                      goto LABEL_81;
                    }

                    v90 = v94 + 1;
                    v94 = v88;
                  }

                  v88 = v94;
                  if (v90 >= v94)
                  {
                    goto LABEL_80;
                  }
                }

                goto LABEL_84;
              }

              goto LABEL_80;
            }

            v50 = v51 + 1;
            v51 = v49;
          }

          v49 = v51;
          if (v50 >= v51)
          {
            goto LABEL_78;
          }
        }

        goto LABEL_82;
      }

LABEL_78:
      __break(1u);
    }

    else
    {
      v55 = v275;
      outlined init with copy of FloatingPointRoundingRule?(v44, v275, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd);
      outlined init with copy of AttributedString.Runs(v55, v282);
      outlined destroy of TermOfAddress?(v55, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd);
      v56 = v40[2];
      v280 = v40[1];
      v277 = v56;
      v275 = v40[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
      RangeSet.ranges.getter();
      v57 = v284;
      v58 = RangeSet.Ranges.count.getter();
      v59 = *v46;
      result = (*v46)(v5, v57);
      if (v58 >= 1)
      {
        v60 = 0;
        while (!__OFADD__(v60, v58))
        {
          v61 = (v60 + v58) / 2;
          RangeSet.ranges.getter();
          v62 = v284;
          RangeSet.Ranges.subscript.getter();
          result = (v59)(v5, v62);
          v63 = v286.i64[0] >> 10;
          if (v285.i64[0] >= v286.i64[0] >> 10)
          {
            v64 = *v288;
            if (v285.i64[0] < *v288 >> 10)
            {
              v283 = v286;
              v279 = v287;
              v128 = *v282;
              AttributedString.Guts.findRun(at:)(v278, v275, v286.i64);
              v129 = v286.u64[1];
              *&v284 = v286.i64[0];
              v130 = v287.i64[0];
              v274 = v289;
              v285 = *&v288[8];
              v131 = *(v128 + 72);
              v132 = *(v128 + 80);
              v134 = *(v128 + 88);
              v133 = *(v128 + 96);
              swift_unknownObjectRetain();
              v135 = specialized Rope.subscript.getter(v284, v129, v130, v131, v132, v134, v133);
              v137 = v136;
              v139 = v138;
              result = swift_unknownObjectRelease();
              v140 = v63 < v285.i64[0] >> 10;
              v141 = v135 + (v285.i64[0] >> 11);
              if (__OFADD__(v135, v285.i64[0] >> 11))
              {
                goto LABEL_87;
              }

              if ((v64 >> 11) < v141)
              {
                v141 = v64 >> 11;
              }

              v142 = *(v128 + 40);
              v313 = *(v128 + 24);
              v314 = v142;
              v315 = *(v128 + 56);
              v143 = v265;
              if (__OFSUB__(v141, v278 >> 11))
              {
                goto LABEL_89;
              }

              swift_unknownObjectRetain();
              v144 = BigString.UTF8View.index(_:offsetBy:)();
              v261 = v145;
              v262 = v144;
              v259 = v147;
              v260 = v146;
              swift_unknownObjectRelease();
              v263 = v128;

              outlined destroy of AttributedString.Runs(v282);
              v148 = v276.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v281, v276.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V09ByteCountH0O_GMd);
              v149 = *(v143 + 1);
              v299 = *v143;
              v300 = v149;
              v301 = v143[4];
              *&v266 = v137;

              *(&v266 + 1) = v139;

              specialized AttributedString.Runs.AttributesSlice1.index(after:)(&v299, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMR, &v286);
              result = outlined destroy of TermOfAddress?(v148, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V09ByteCountG0OGMd);
              v150 = v286.i64[0];
              v151 = v264;
              if (v286.i64[0] >> 10 < *v143 >> 10)
              {
                goto LABEL_91;
              }

              v152 = *v143;
              v153 = vdup_n_s32(v140);
              v154.i64[0] = v153.u32[0];
              v154.i64[1] = v153.u32[1];
              v155 = vcltzq_s64(vshlq_n_s64(v154, 0x3FuLL));
              v156 = vbslq_s8(v155, v274, v279);
              v157 = vbslq_s8(v155, v285, v283);
              v158 = v286.i64[1];
              v159 = v287.i64[0];
              v160 = v286.i64[0];
              v161 = v287.u64[1];
              v162 = *v288;
              v275 = v286.i64[1];
              v163 = v287.u64[1];
              v276.i64[0] = v287.i64[0];
              v164 = *v288;
LABEL_77:
              v242 = v266;
              v286 = v266;
              v287 = v157;
              *v288 = v156;
              *&v288[16] = v262;
              v289.i64[0] = v261;
              v289.i64[1] = v260;
              v290 = v259;
              v291 = v263;
              v243 = *(v143 + 1);
              v284 = *(v143 + 3);
              v285 = v243;
              *v143 = v150;
              v143[1] = v158;
              v143[2] = v159;
              v143[3] = v161;
              v143[4] = v162;
              _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV09ByteCountD0O_Tt0g5(v242, v151);
              outlined destroy of AttributedString.Runs.Run(&v286);

              *(v151 + 8) = v152;
              v244 = v284;
              *(v151 + 16) = v285;
              *(v151 + 32) = v244;
              v246 = v275;
              v245 = v276.i64[0];
              *(v151 + 48) = v160;
              *(v151 + 56) = v246;
              *(v151 + 64) = v245;
              *(v151 + 72) = v163;
              *(v151 + 80) = v164;
              return result;
            }

            v60 = v61 + 1;
            v61 = v58;
          }

          v58 = v61;
          if (v60 >= v61)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_83;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
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
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v2 = v1;
  *&v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v284.i64[0] = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285);
  v5 = &v247 - v4;
  v280.i64[0] = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v280.i64[0]);
  v277 = &v247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v281 = (&v247 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v283 = (&v247 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v247 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v247 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v272 = (&v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v271 = &v247 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v270 = &v247 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v275.i64[0] = &v247 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v274 = &v247 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v273 = &v247 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v276 = &v247 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v247 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v278.i64[0] = &v247 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v247 - v37;
  v40 = (v2 + *(v39 + 44));
  v41 = *v40;
  v282 = v2;
  result = outlined init with copy of FloatingPointRoundingRule?(v2, &v247 - v37, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
  if (*(v38 + 26) != 2)
  {
    v43 = *(v38 + 23);
    result = outlined destroy of TermOfAddress?(v38, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
    v286.i64[0] = v41 >> 10;
    if (v41 >> 10 == v43 >> 10)
    {
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      return result;
    }

    v279 = v41;
    v265 = a1;
    v44 = v282;
    v45 = v278.i64[0];
    outlined init with copy of FloatingPointRoundingRule?(v282, v278.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
    outlined init with copy of AttributedString.Runs(v45, v16);
    outlined destroy of TermOfAddress?(v45, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
    LOBYTE(v45) = v16[*(v280.i64[0] + 28)];
    outlined destroy of AttributedString.Runs(v16);
    v46 = (v284.i64[0] + 8);
    v284.i64[0] += 8;
    v266 = v40;
    if (v45)
    {
      outlined init with copy of FloatingPointRoundingRule?(v44, v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
      outlined init with copy of AttributedString.Runs(v33, v13);
      outlined destroy of TermOfAddress?(v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
      v47 = v40[2];
      v268 = v40[1];
      *&v269 = v47;
      *(&v269 + 1) = v40[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
      RangeSet.ranges.getter();
      v48 = v285;
      v49 = RangeSet.Ranges.count.getter();
      v283 = *v46;
      result = (v283)(v5, v48);
      if (v49 >= 1)
      {
        v50 = 0;
        while (!__OFADD__(v50, v49))
        {
          v51 = (v50 + v49) / 2;
          RangeSet.ranges.getter();
          v52 = v285;
          RangeSet.Ranges.subscript.getter();
          result = (v283)(v5, v52);
          v53 = v287.i64[0] >> 10;
          if (v286.i64[0] >= v287.i64[0] >> 10)
          {
            v54 = *v289;
            if (v286.i64[0] < *v289 >> 10)
            {
              v257 = v287;
              v256 = v288;
              v65 = *v13;
              AttributedString.Guts.findRun(at:)(v279, *(&v269 + 1), v287.i64);
              v267 = v287.i64[1];
              v276 = v287.i64[0];
              v255 = v290;
              v278 = *&v289[8];
              v66 = *(v65 + 72);
              v263 = *(v65 + 80);
              v264 = v288.i64[0];
              v67 = *(v65 + 88);
              v68 = *(v65 + 96);
              swift_unknownObjectRetain();
              v69 = specialized Rope.subscript.getter(v276, v267, v264, v66, v263, v67, v68);
              v71 = v70;
              v259 = v72;
              result = swift_unknownObjectRelease();
              v73 = v69 + (v278.i64[0] >> 11);
              if (__OFADD__(v69, v278.i64[0] >> 11))
              {
                goto LABEL_88;
              }

              LODWORD(v276) = v53 < v278.i64[0] >> 10;
              v267 = v71;
              if ((v54 >> 11) < v73)
              {
                v73 = v54 >> 11;
              }

              v74 = *(v65 + 40);
              v322 = *(v65 + 24);
              v323 = v74;
              v324 = *(v65 + 56);
              if (__OFSUB__(v73, v279 >> 11))
              {
                goto LABEL_90;
              }

              swift_unknownObjectRetain();
              v75 = BigString.UTF8View.index(_:offsetBy:)();
              v262 = v76;
              v263 = v75;
              v260 = v78;
              v261 = v77;
              swift_unknownObjectRelease();
              v264 = v65;

              outlined destroy of AttributedString.Runs(v13);
              v79 = v282;
              v80 = v273;
              outlined init with copy of FloatingPointRoundingRule?(v282, v273, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
              v81 = v281;
              outlined init with copy of AttributedString.Runs(v80, v281);

              outlined destroy of TermOfAddress?(v80, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
              v82 = v274;
              outlined init with copy of FloatingPointRoundingRule?(v79, v274, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
              v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
              v84 = *(v82 + *(v83 + 36));

              outlined destroy of TermOfAddress?(v82, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
              v85 = v79;
              v86 = v275.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v85, v275.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
              v253 = v83;
              v273 = *(v86 + *(v83 + 40));

              result = outlined destroy of TermOfAddress?(v86, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
              v254 = v84;
              if (!v84[2])
              {
                goto LABEL_92;
              }

              v258 = *v81;
              AttributedString.Guts.findRun(at:)(v279, *(&v269 + 1), v287.i64);
              v251 = *&v289[16];
              v252 = *&v289[8];
              v249 = v290.i64[1];
              v250 = v290.i64[0];
              v312[0] = v287;
              v312[1] = v288;
              v313 = *v289;
              RangeSet.ranges.getter();
              v87 = v285;
              v88 = RangeSet.Ranges.count.getter();
              result = (v283)(v5, v87);
              v89 = v277;
              if (v88 >= 1)
              {
                v90 = 0;
                v91 = vdup_n_s32(v276);
                v92.i64[0] = v91.u32[0];
                v92.i64[1] = v91.u32[1];
                v93 = vcltzq_s64(vshlq_n_s64(v92, 0x3FuLL));
                v256 = vbslq_s8(v93, v255, v256);
                v257 = vbslq_s8(v93, v278, v257);
                while (!__OFADD__(v90, v88))
                {
                  v94 = (v90 + v88) / 2;
                  RangeSet.ranges.getter();
                  v95 = v285;
                  RangeSet.Ranges.subscript.getter();
                  v96 = v95;
                  v97 = v282;
                  result = (v283)(v5, v96);
                  if (v286.i64[0] >= v287.i64[0] >> 10)
                  {
                    v98 = *v289 >> 10;
                    if (v286.i64[0] < *v289 >> 10)
                    {
                      v278.i64[0] = *v289;
                      v99 = *&v289[8];
                      v100 = *&v289[16];
                      v101 = v290.i64[0];
                      v102 = v273;
                      if (*(v273 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v273) & 1) == 0)
                      {

                        v175 = *(v258 + 24);
                        v176 = *(v258 + 56);
                        v320 = *(v258 + 40);
                        v321 = v176;
                        v319 = v175;
                        *&v314 = v279;
                        *(&v314 + 1) = v268;
                        v315 = v269;
                        *&v316 = v278.i64[0];
                        *(&v316 + 1) = v99;
                        v317 = v100;
                        v128 = v258;
                        v318 = v101;
                        v177 = *(v258 + 24);
                        *&v311 = *(v258 + 56);
                        v178 = *(v258 + 40);
                        v309 = v177;
                        v310 = v178;
                        outlined init with copy of Rope<BigString._Chunk>._Node?(&v309, &v287);
                        v123 = BigString._firstConstraintBreak(in:with:)(&v314, v102);
                        v276 = v179;
                        v274 = v181;
                        v275.i64[0] = v180;

                        outlined destroy of BigString(&v319);
                        v127 = v270;
                      }

                      else
                      {
                        v274 = v101;
                        v275.i64[0] = v100;
                        v276 = v99;
                        AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v312, v254, v293);

                        v103 = v258;
                        v105 = *(v258 + 72);
                        v104 = *(v258 + 80);
                        v106 = *(v258 + 88);
                        v247 = *(v258 + 96);
                        v248 = v106;
                        v107 = v293[0];
                        v108 = v293[1];
                        v254 = v104;
                        v255.i64[0] = v293[4];
                        v109 = v293[2];
                        swift_unknownObjectRetain();
                        v110 = specialized Rope.subscript.getter(v107, v108, v109, v105, v254, v248, v247);
                        swift_unknownObjectRelease();

                        if (__OFADD__(v255.i64[0], v110))
                        {
                          goto LABEL_96;
                        }

                        v112 = *(v103 + 24);
                        v111 = (v103 + 24);
                        v113 = v111[1];
                        v114 = v111[2];
                        v319 = v112;
                        v320 = v113;
                        v321 = v114;
                        if (__OFSUB__(v255.i64[0] + v110, v252 >> 11))
                        {
                          goto LABEL_97;
                        }

                        swift_unknownObjectRetain();
                        v115 = BigString.UTF8View.index(_:offsetBy:)();
                        v117 = v116;
                        v254 = v119;
                        v255.i64[0] = v118;
                        result = swift_unknownObjectRelease();
                        v89 = v277;
                        if (v115 >> 10 >= v98)
                        {
                          v164 = *v111;
                          v165 = v111[2];
                          v310 = v111[1];
                          v311 = v165;
                          v309 = v164;
                          *&v314 = v279;
                          *(&v314 + 1) = v268;
                          v315 = v269;
                          v166 = v278.i64[0];
                          *&v316 = v278.i64[0];
                          *(&v316 + 1) = v276;
                          v317 = v275.i64[0];
                          v318 = v274;
                          v167 = *v111;
                          v168 = v111[1];
                          v327 = *(v111 + 4);
                          v325 = v167;
                          v326 = v168;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v325, &v287);
                          v169 = BigString._firstConstraintBreak(in:with:)(&v314, v273);
                          v286.i64[0] = v170;
                          v279 = v171;
                          v173 = v172;

                          outlined destroy of BigString(&v309);
                          v174 = v98 == v169 >> 10;
                          v123 = v166;
                          v127 = v270;
                          v128 = v258;
                          if (!v174)
                          {
                            v123 = v169;
                            v276 = v286.i64[0];
                            v274 = v173;
                            v275.i64[0] = v279;
                          }
                        }

                        else
                        {
                          v120 = v111[1];
                          v309 = *v111;
                          v310 = v120;
                          v311 = v111[2];
                          if (v115 >> 10 < v286.i64[0])
                          {
                            goto LABEL_100;
                          }

                          *&v314 = v279;
                          *(&v314 + 1) = v268;
                          v315 = v269;
                          *&v316 = v115;
                          *(&v316 + 1) = v117;
                          v317 = v255.i64[0];
                          v318 = v254;
                          v121 = *v111;
                          v122 = v111[1];
                          v327 = *(v111 + 4);
                          v325 = v121;
                          v326 = v122;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v325, &v287);
                          v123 = BigString._firstConstraintBreak(in:with:)(&v314, v273);
                          v276 = v124;
                          v274 = v126;
                          v275.i64[0] = v125;

                          outlined destroy of BigString(&v309);
                          v127 = v270;
                          v128 = v258;
                        }
                      }

                      v278.i64[0] = v123;
                      v270 = *(v128 + 16);
                      outlined destroy of AttributedString.Runs(v281);
                      outlined init with copy of FloatingPointRoundingRule?(v97, v127, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
                      outlined init with copy of AttributedString.Runs(v127, v89);
                      outlined destroy of TermOfAddress?(v127, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
                      v182 = v271;
                      outlined init with copy of FloatingPointRoundingRule?(v97, v271, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
                      v183 = v253;
                      v184 = v89;
                      v185 = *(v182 + *(v253 + 36));

                      outlined destroy of TermOfAddress?(v182, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
                      v186 = v272;
                      outlined init with copy of FloatingPointRoundingRule?(v97, v272, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
                      v282 = *(v186 + *(v183 + 40));

                      result = outlined destroy of TermOfAddress?(v186, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
                      v272 = v185;
                      if (!v185[2])
                      {
                        goto LABEL_94;
                      }

                      v273 = *v184;
                      AttributedString.Guts.findRun(at:)(v278.u64[0], v274, v287.i64);
                      v271 = *&v289[8];
                      *&v269 = v290.i64[0];
                      *(&v269 + 1) = *&v289[16];
                      v268 = v290.i64[1];
                      v298[0] = v287;
                      v298[1] = v288;
                      v299 = *v289;
                      v286.i64[0] = *(v280.i64[0] + 24);
                      RangeSet.ranges.getter();
                      v187 = v285;
                      v188 = RangeSet.Ranges.count.getter();
                      result = (v283)(v5, v187);
                      if (v188 >= 1)
                      {
                        v189 = 0;
                        v190 = v278.i64[0] >> 10;
                        while (1)
                        {
                          if (__OFADD__(v189, v188))
                          {
                            goto LABEL_87;
                          }

                          v191 = (v189 + v188) / 2;
                          RangeSet.ranges.getter();
                          v192 = v285;
                          RangeSet.Ranges.subscript.getter();
                          result = (v283)(v5, v192);
                          if (v190 >= v287.i64[0] >> 10)
                          {
                            v151 = *v289;
                            v193 = *v289 >> 10;
                            if (v190 < *v289 >> 10)
                            {
                              v281 = *&v289[8];
                              v279 = v290.i64[0];
                              v280.i64[0] = *&v289[16];
                              if (*(v282 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v282) & 1) == 0)
                              {

                                v226 = v273;
                                v227 = *(v273 + 24);
                                v228 = *(v273 + 56);
                                v307 = *(v273 + 40);
                                v308 = v228;
                                v306 = v227;
                                *&v300 = v278.i64[0];
                                *(&v300 + 1) = v276;
                                *&v301 = v275.i64[0];
                                *(&v301 + 1) = v274;
                                v302 = v151;
                                v303 = v281;
                                v304 = v280.i64[0];
                                v305 = v279;
                                v229 = *(v273 + 24);
                                *&v297 = *(v273 + 56);
                                v230 = *(v273 + 40);
                                v295 = v229;
                                v296 = v230;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v295, &v287);
                                v231 = BigString._firstConstraintBreak(in:with:)(&v300, v282);
                                v271 = v233;
                                v272 = v232;
                                *(&v269 + 1) = v234;
                                outlined destroy of BigString(&v306);
                                if (v193 == v231 >> 10)
                                {
                                  RangeSet.ranges.getter();
                                  v235 = v285;
                                  v236 = RangeSet.Ranges.count.getter();
                                  result = (v283)(v5, v235);
                                  if (__OFSUB__(v236, 1))
                                  {
                                    goto LABEL_103;
                                  }

                                  if (v191 == v236 - 1)
                                  {
                                  }

                                  else
                                  {
                                    RangeSet.ranges.getter();
                                    v238 = v285;
                                    RangeSet.Ranges.subscript.getter();

                                    (v283)(v5, v238);
                                    v281 = v287.i64[1];
                                    v151 = v287.i64[0];
                                    v279 = v288.u64[1];
                                    v280.i64[0] = v288.i64[0];
                                  }

                                  v162 = *(v273 + 16);
                                  goto LABEL_77;
                                }

                                v151 = v231;
                                v162 = *(v226 + 16);
                              }

                              else
                              {
                                AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v298, v272, v294);

                                v194 = v273;
                                v195 = *(v273 + 72);
                                v272 = *(v273 + 80);
                                v196 = *(v273 + 96);
                                v258 = *(v273 + 88);
                                v254 = v294[0];
                                v255.i64[0] = v196;
                                v197 = v294[4];
                                v252 = v294[2];
                                v253 = v294[1];
                                swift_unknownObjectRetain();
                                v272 = specialized Rope.subscript.getter(v254, v253, v252, v195, v272, v258, v255.i64[0]);
                                v255.i64[0] = v198;
                                v258 = v199;
                                swift_unknownObjectRelease();

                                v200 = v272 + v197;
                                if (__OFADD__(v197, v272))
                                {
                                  goto LABEL_98;
                                }

                                v201 = (v194 + 24);
                                v202 = *(v194 + 24);
                                v203 = *(v194 + 40);
                                v204 = *(v194 + 56);
                                v306 = v202;
                                v307 = v203;
                                v308 = v204;
                                v272 = &v200[-(v271 >> 11)];
                                if (__OFSUB__(v200, v271 >> 11))
                                {
                                  goto LABEL_99;
                                }

                                v258 = v202;
                                swift_unknownObjectRetain();
                                v205 = BigString.UTF8View.index(_:offsetBy:)();
                                v271 = v207;
                                v272 = v206;
                                *(&v269 + 1) = v208;
                                result = swift_unknownObjectRelease();
                                if (v205 >> 10 < v193)
                                {
                                  v209 = v201[1];
                                  v295 = *v201;
                                  v296 = v209;
                                  v297 = v201[2];
                                  v152 = v265;
                                  v143 = v266;
                                  v150 = v259;
                                  if (v205 >> 10 < v190)
                                  {
                                    goto LABEL_101;
                                  }

                                  *&v300 = v278.i64[0];
                                  *(&v300 + 1) = v276;
                                  *&v301 = v275.i64[0];
                                  *(&v301 + 1) = v274;
                                  v302 = v205;
                                  v303 = v272;
                                  v304 = v271;
                                  v305 = *(&v269 + 1);
                                  v210 = *v201;
                                  v211 = v201[1];
                                  v330 = *(v201 + 4);
                                  v328 = v210;
                                  v329 = v211;
                                  outlined init with copy of Rope<BigString._Chunk>._Node?(&v328, &v287);
                                  v151 = BigString._firstConstraintBreak(in:with:)(&v300, v282);
                                  v281 = v212;
                                  v279 = v214;
                                  v280.i64[0] = v213;

                                  outlined destroy of BigString(&v295);
                                  v162 = *(v273 + 16);
LABEL_78:
                                  result = outlined destroy of AttributedString.Runs(v277);
                                  v153 = *v143;
                                  v157 = v256;
                                  v158 = v257;
                                  v163 = v270;
                                  v159 = v281;
                                  v161 = v279;
                                  v160 = v280.i64[0];
                                  if (v190 < *v143 >> 10)
                                  {
                                    goto LABEL_95;
                                  }

                                  goto LABEL_79;
                                }

                                v215 = *v201;
                                v216 = v201[2];
                                v296 = v201[1];
                                v297 = v216;
                                v295 = v215;
                                *&v300 = v278.i64[0];
                                *(&v300 + 1) = v276;
                                *&v301 = v275.i64[0];
                                *(&v301 + 1) = v274;
                                v302 = v151;
                                v303 = v281;
                                v304 = v280.i64[0];
                                v305 = v279;
                                v217 = *v201;
                                v218 = v201[1];
                                v330 = *(v201 + 4);
                                v328 = v217;
                                v329 = v218;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v328, &v287);
                                v219 = BigString._firstConstraintBreak(in:with:)(&v300, v282);
                                v271 = v221;
                                v272 = v220;
                                *(&v269 + 1) = v222;
                                outlined destroy of BigString(&v295);
                                if (v193 == v219 >> 10)
                                {
                                  RangeSet.ranges.getter();
                                  v223 = v285;
                                  v224 = RangeSet.Ranges.count.getter();
                                  result = (v283)(v5, v223);
                                  if (__OFSUB__(v224, 1))
                                  {
                                    goto LABEL_102;
                                  }

                                  v225 = v273;
                                  if (v191 == v224 - 1)
                                  {
                                  }

                                  else
                                  {
                                    RangeSet.ranges.getter();
                                    v237 = v285;
                                    RangeSet.Ranges.subscript.getter();

                                    (v283)(v5, v237);
                                    v281 = v287.i64[1];
                                    v151 = v287.i64[0];
                                    v279 = v288.u64[1];
                                    v280.i64[0] = v288.i64[0];
                                  }

                                  v162 = *(v225 + 16);
                                  goto LABEL_77;
                                }

                                v151 = v219;
                                v162 = *(v273 + 16);
                              }

                              v281 = v272;
                              v279 = *(&v269 + 1);
                              v280.i64[0] = v271;
LABEL_77:
                              v152 = v265;
                              v143 = v266;
                              v150 = v259;
                              goto LABEL_78;
                            }

                            v189 = v191 + 1;
                            v191 = v188;
                          }

                          v188 = v191;
                          if (v189 >= v191)
                          {
                            goto LABEL_83;
                          }
                        }
                      }

                      goto LABEL_83;
                    }

                    v90 = v94 + 1;
                    v94 = v88;
                  }

                  v88 = v94;
                  if (v90 >= v94)
                  {
                    goto LABEL_82;
                  }
                }

                goto LABEL_86;
              }

              goto LABEL_82;
            }

            v50 = v51 + 1;
            v51 = v49;
          }

          v49 = v51;
          if (v50 >= v51)
          {
            goto LABEL_80;
          }
        }

        goto LABEL_84;
      }

LABEL_80:
      __break(1u);
    }

    else
    {
      v55 = v276;
      outlined init with copy of FloatingPointRoundingRule?(v44, v276, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
      outlined init with copy of AttributedString.Runs(v55, v283);
      outlined destroy of TermOfAddress?(v55, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
      v56 = v40[2];
      v281 = v40[1];
      v276 = v40[3];
      v277 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
      RangeSet.ranges.getter();
      v57 = v285;
      v58 = RangeSet.Ranges.count.getter();
      v59 = *v46;
      result = (*v46)(v5, v57);
      if (v58 >= 1)
      {
        v60 = 0;
        while (!__OFADD__(v60, v58))
        {
          v61 = (v60 + v58) / 2;
          RangeSet.ranges.getter();
          v62 = v285;
          RangeSet.Ranges.subscript.getter();
          result = (v59)(v5, v62);
          v63 = v287.i64[0] >> 10;
          if (v286.i64[0] >= v287.i64[0] >> 10)
          {
            v64 = *v289;
            if (v286.i64[0] < *v289 >> 10)
            {
              v284 = v287;
              v280 = v288;
              v129 = *v283;
              AttributedString.Guts.findRun(at:)(v279, v276, v287.i64);
              v130 = v287.u64[1];
              *&v285 = v287.i64[0];
              v131 = v288.i64[0];
              v275 = v290;
              v286 = *&v289[8];
              v132 = *(v129 + 72);
              v133 = *(v129 + 80);
              v135 = *(v129 + 88);
              v134 = *(v129 + 96);
              swift_unknownObjectRetain();
              v136 = specialized Rope.subscript.getter(v285, v130, v131, v132, v133, v135, v134);
              v138 = v137;
              v140 = v139;
              result = swift_unknownObjectRelease();
              v141 = v136 + (v286.i64[0] >> 11);
              if (__OFADD__(v136, v286.i64[0] >> 11))
              {
                goto LABEL_89;
              }

              LODWORD(v285) = v63 < v286.i64[0] >> 10;
              if ((v64 >> 11) < v141)
              {
                v141 = v64 >> 11;
              }

              v142 = *(v129 + 40);
              v314 = *(v129 + 24);
              v315 = v142;
              v316 = *(v129 + 56);
              v143 = v266;
              if (__OFSUB__(v141, v279 >> 11))
              {
                goto LABEL_91;
              }

              swift_unknownObjectRetain();
              v144 = BigString.UTF8View.index(_:offsetBy:)();
              v262 = v145;
              v263 = v144;
              v260 = v147;
              v261 = v146;
              swift_unknownObjectRelease();
              v264 = v129;

              outlined destroy of AttributedString.Runs(v283);
              v148 = v278.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v282, v278.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
              v149 = *(v143 + 1);
              v300 = *v143;
              v301 = v149;
              v302 = v143[4];
              v267 = v138;

              v150 = v140;

              specialized AttributedString.Runs.AttributesSlice1.index(after:)(&v300, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR, &v287);
              result = outlined destroy of TermOfAddress?(v148, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
              v151 = v287.i64[0];
              v152 = v265;
              if (v287.i64[0] >> 10 < *v143 >> 10)
              {
                goto LABEL_93;
              }

              v153 = *v143;
              v154 = vdup_n_s32(v285);
              v155.i64[0] = v154.u32[0];
              v155.i64[1] = v154.u32[1];
              v156 = vcltzq_s64(vshlq_n_s64(v155, 0x3FuLL));
              v157 = vbslq_s8(v156, v275, v280);
              v158 = vbslq_s8(v156, v286, v284);
              v159 = v287.i64[1];
              v160 = v288.i64[0];
              v278.i64[0] = v287.i64[0];
              v161 = v288.u64[1];
              v162 = *v289;
              v276 = v287.i64[1];
              v274 = v288.u64[1];
              v275.i64[0] = v288.i64[0];
              v163 = *v289;
LABEL_79:
              v239 = v267;
              v287.i64[0] = v267;
              v287.i64[1] = v150;
              v288 = v158;
              *v289 = v157;
              *&v289[16] = v263;
              v290.i64[0] = v262;
              v290.i64[1] = v261;
              v291 = v260;
              v292 = v264;
              v240 = *(v143 + 1);
              v285 = *(v143 + 3);
              v286 = v240;
              *v143 = v151;
              v143[1] = v159;
              v143[2] = v160;
              v143[3] = v161;
              v143[4] = v162;
              v241 = _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV016ReplacementIndexD0O_Tt0g5Tf4x_n(v239);
              v243 = v242;
              outlined destroy of AttributedString.Runs.Run(&v287);

              *v152 = v241;
              *(v152 + 8) = v243 & 1;
              *(v152 + 16) = v153;
              v244 = v286;
              *(v152 + 40) = v285;
              *(v152 + 24) = v244;
              v245 = v276;
              *(v152 + 56) = v278.i64[0];
              *(v152 + 64) = v245;
              v246 = v274;
              *(v152 + 72) = v275.i64[0];
              *(v152 + 80) = v246;
              *(v152 + 88) = v163;
              return result;
            }

            v60 = v61 + 1;
            v61 = v58;
          }

          v58 = v61;
          if (v60 >= v61)
          {
            goto LABEL_81;
          }
        }

        goto LABEL_85;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
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
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(int8x16_t *a1@<X8>)
{
  v2 = v1;
  *&v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v293.i64[0] = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295);
  v5 = v259 - v4;
  v287 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v287);
  v286 = v259 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v292.i64[0] = v259 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v294 = (v259 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v259 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v259 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v281 = v259 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v280 = (v259 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v279 = v259 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v284 = v259 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v283 = v259 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v282 = v259 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v285 = v259 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v259 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v291 = v259 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v259 - v37;
  v40 = (v2 + *(v39 + 44));
  v41 = *v40;
  v288 = v2;
  outlined init with copy of FloatingPointRoundingRule?(v2, v259 - v37, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd);
  if (*(v38 + 26) != 2)
  {
    v42 = *(v38 + 23);
    outlined destroy of TermOfAddress?(v38, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
    v289 = v41;
    v296.i64[0] = v41 >> 10;
    if (v41 >> 10 == v42 >> 10)
    {
      _s10Foundation16AttributedStringV22MarkdownSourcePositionVSg_SnyAC5IndexVGtSgWOi0_(&v297);
      v43 = v304;
      a1[8] = v303;
      a1[9] = v43;
      v44 = v306;
      a1[10] = v305;
      a1[11] = v44;
      v45 = v300;
      a1[4] = v299[2];
      a1[5] = v45;
      v46 = v302;
      a1[6] = v301;
      a1[7] = v46;
      v47 = v298;
      *a1 = v297;
      a1[1] = v47;
      v48 = v299[1];
      a1[2] = v299[0];
      a1[3] = v48;
      return;
    }

    v274 = a1;
    v49 = v288;
    v50 = v291;
    outlined init with copy of FloatingPointRoundingRule?(v288, v291, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd);
    outlined init with copy of AttributedString.Runs(v50, v16);
    outlined destroy of TermOfAddress?(v50, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
    v51 = v287;
    LOBYTE(v50) = v16[*(v287 + 7)];
    outlined destroy of AttributedString.Runs(v16);
    v52 = (v293.i64[0] + 8);
    v275 = v40;
    if (v50)
    {
      outlined init with copy of FloatingPointRoundingRule?(v49, v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd);
      outlined init with copy of AttributedString.Runs(v33, v13);
      outlined destroy of TermOfAddress?(v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
      v53 = v40[2];
      v277 = v40[1];
      *&v278 = v53;
      *(&v278 + 1) = v40[3];
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
      RangeSet.ranges.getter();
      v55 = v295;
      v56 = RangeSet.Ranges.count.getter();
      v57 = *v52;
      v293.i64[0] = v52;
      v294 = v57;
      v57(v5, v55);
      if (v56 >= 1)
      {
        v58 = 0;
        while (!__OFADD__(v58, v56))
        {
          v59 = (v58 + v56) / 2;
          RangeSet.ranges.getter();
          v60 = v295;
          RangeSet.Ranges.subscript.getter();
          v294(v5, v60);
          v61 = v297.i64[0] >> 10;
          if (v296.i64[0] >= v297.i64[0] >> 10)
          {
            v62 = *&v299[0];
            if (v296.i64[0] < *&v299[0] >> 10)
            {
              v265 = v297;
              v264 = v298;
              v75 = *v13;
              AttributedString.Guts.findRun(at:)(v289, *(&v278 + 1), v297.i64);
              v285 = v297.u64[1];
              v291 = v297.i64[0];
              v276 = v298.i64[0];
              v263 = *(&v299[1] + 8);
              v268 = *(v299 + 8);
              v77 = *(v75 + 72);
              v76 = *(v75 + 80);
              v78 = *(v75 + 96);
              v272 = *(v75 + 88);
              swift_unknownObjectRetain();
              v79 = specialized Rope.subscript.getter(v291, v285, v276, v77, v76, v272, v78);
              v276 = v80;
              v285 = v81;
              swift_unknownObjectRelease();
              v82 = v79 + (v268.i64[0] >> 11);
              if (__OFADD__(v79, v268.i64[0] >> 11))
              {
                goto LABEL_86;
              }

              LODWORD(v262) = v61 < v268.i64[0] >> 10;
              if ((v62 >> 11) < v82)
              {
                v82 = v62 >> 11;
              }

              v83 = *(v75 + 40);
              v335 = *(v75 + 24);
              v336 = v83;
              v337 = *(v75 + 56);
              if (__OFSUB__(v82, v289 >> 11))
              {
                goto LABEL_88;
              }

              swift_unknownObjectRetain();
              v84 = BigString.UTF8View.index(_:offsetBy:)();
              v271 = v85;
              v272 = v84;
              v269 = v87;
              v270 = v86;
              swift_unknownObjectRelease();
              v273 = v75;

              outlined destroy of AttributedString.Runs(v13);
              v88 = v288;
              v89 = v282;
              outlined init with copy of FloatingPointRoundingRule?(v288, v282, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd);
              v90 = v292.i64[0];
              outlined init with copy of AttributedString.Runs(v89, v292.i64[0]);

              outlined destroy of TermOfAddress?(v89, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
              v91 = v283;
              outlined init with copy of FloatingPointRoundingRule?(v88, v283, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd);
              v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
              v93 = *(v91 + *(v92 + 36));

              outlined destroy of TermOfAddress?(v91, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
              v94 = v88;
              v95 = v284;
              outlined init with copy of FloatingPointRoundingRule?(v94, v284, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd);
              v260 = v92;
              v266 = *(v95 + *(v92 + 40));

              outlined destroy of TermOfAddress?(v95, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
              v261 = v93;
              if (!v93[2])
              {
                goto LABEL_90;
              }

              v267 = *v90;
              AttributedString.Guts.findRun(at:)(v289, *(&v278 + 1), v297.i64);
              v96 = *(&v299[0] + 1);
              v259[1] = *(&v299[1] + 1);
              v259[2] = *&v299[1];
              v259[0] = *&v299[2];
              v326[0] = v297;
              v326[1] = v298;
              v327 = *&v299[0];
              v291 = *(v287 + 6);
              RangeSet.ranges.getter();
              v97 = v295;
              v98 = RangeSet.Ranges.count.getter();
              v294(v5, v97);
              if (v98 >= 1)
              {
                v99 = 0;
                v100 = vdup_n_s32(v262);
                v101.i64[0] = v100.u32[0];
                v101.i64[1] = v100.u32[1];
                v102 = vcltzq_s64(vshlq_n_s64(v101, 0x3FuLL));
                v264 = vbslq_s8(v102, v263, v264);
                v268 = vbslq_s8(v102, v268, v265);
                v290.i64[0] = v5;
                while (!__OFADD__(v99, v98))
                {
                  v103 = (v99 + v98) / 2;
                  v104 = v54;
                  RangeSet.ranges.getter();
                  v105 = v96;
                  v106 = v295;
                  RangeSet.Ranges.subscript.getter();
                  v107 = v106;
                  v96 = v105;
                  v294(v5, v107);
                  if (v296.i64[0] >= v297.i64[0] >> 10)
                  {
                    v108 = *&v299[0];
                    v109 = *&v299[0] >> 10;
                    if (v296.i64[0] < *&v299[0] >> 10)
                    {
                      v110 = *(&v299[0] + 1);
                      v111 = v299[1];
                      v112 = v266;
                      if (*(v266 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v266) & 1) == 0)
                      {

                        v185 = *(v267 + 24);
                        v186 = *(v267 + 40);
                        v334 = *(v267 + 56);
                        v333 = v186;
                        v332 = v185;
                        *&v328 = v289;
                        *(&v328 + 1) = v277;
                        v329 = v278;
                        *&v330 = v108;
                        *(&v330 + 1) = v110;
                        v331 = v111;
                        v187 = *(v267 + 24);
                        *&v325 = *(v267 + 56);
                        v188 = *(v267 + 40);
                        v323 = v187;
                        v324 = v188;
                        outlined init with copy of Rope<BigString._Chunk>._Node?(&v323, &v297);
                        v291 = BigString._firstConstraintBreak(in:with:)(&v328, v112);
                        v283 = v190;
                        v284 = v189;
                        v282 = v191;

                        outlined destroy of BigString(&v332);
                        v136 = v286;
                        v137 = v279;
                        v130 = v290.i64[0];
                      }

                      else
                      {
                        v282 = *(&v111 + 1);
                        v283 = v111;
                        v291 = v108;
                        AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v326, v261, v307);

                        v113 = v267;
                        v114 = *(v267 + 72);
                        v265.i64[0] = *(v267 + 80);
                        v115 = *(v267 + 88);
                        v262 = *(v267 + 96);
                        v263.i64[0] = v115;
                        v261 = v307[0];
                        v116 = v307[1];
                        v117 = v307[4];
                        v118 = v307[2];
                        swift_unknownObjectRetain();
                        v265.i64[0] = specialized Rope.subscript.getter(v261, v116, v118, v114, v265.i64[0], v263.i64[0], v262);
                        swift_unknownObjectRelease();

                        if (__OFADD__(v117, v265.i64[0]))
                        {
                          goto LABEL_94;
                        }

                        v120 = *(v113 + 24);
                        v119 = (v113 + 24);
                        v121 = v119[1];
                        v122 = v119[2];
                        v332 = v120;
                        v333 = v121;
                        v334 = v122;
                        if (__OFSUB__(v117 + v265.i64[0], v105 >> 11))
                        {
                          goto LABEL_95;
                        }

                        swift_unknownObjectRetain();
                        v123 = BigString.UTF8View.index(_:offsetBy:)();
                        v125 = v124;
                        v127 = v126;
                        v265.i64[0] = v128;
                        swift_unknownObjectRelease();
                        if (v123 >> 10 >= v109)
                        {
                          v174 = *v119;
                          v175 = v119[2];
                          v324 = v119[1];
                          v325 = v175;
                          v323 = v174;
                          *&v328 = v289;
                          *(&v328 + 1) = v277;
                          v329 = v278;
                          *&v330 = v291;
                          v284 = v110;
                          *(&v330 + 1) = v110;
                          *&v331 = v283;
                          *(&v331 + 1) = v282;
                          v176 = *v119;
                          v177 = v119[1];
                          v340 = *(v119 + 4);
                          v338 = v176;
                          v339 = v177;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v338, &v297);
                          v178 = BigString._firstConstraintBreak(in:with:)(&v328, v266);
                          v180 = v179;
                          v182 = v181;
                          v184 = v183;

                          outlined destroy of BigString(&v323);
                          v136 = v286;
                          v137 = v279;
                          v130 = v290.i64[0];
                          if (v109 != v178 >> 10)
                          {
                            v291 = v178;
                            v283 = v182;
                            v284 = v180;
                            v282 = v184;
                          }
                        }

                        else
                        {
                          v129 = v119[1];
                          v323 = *v119;
                          v324 = v129;
                          v325 = v119[2];
                          v130 = v290.i64[0];
                          if (v123 >> 10 < v296.i64[0])
                          {
                            goto LABEL_98;
                          }

                          *&v328 = v289;
                          *(&v328 + 1) = v277;
                          v329 = v278;
                          *&v330 = v123;
                          *(&v330 + 1) = v125;
                          *&v331 = v127;
                          *(&v331 + 1) = v265.i64[0];
                          v131 = *v119;
                          v132 = v119[1];
                          v340 = *(v119 + 4);
                          v338 = v131;
                          v339 = v132;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v338, &v297);
                          v291 = BigString._firstConstraintBreak(in:with:)(&v328, v266);
                          v283 = v134;
                          v284 = v133;
                          v282 = v135;

                          outlined destroy of BigString(&v323);
                          v136 = v286;
                          v137 = v279;
                        }
                      }

                      v279 = *(v267 + 16);
                      outlined destroy of AttributedString.Runs(v292.i64[0]);
                      v192 = v288;
                      outlined init with copy of FloatingPointRoundingRule?(v288, v137, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd);
                      outlined init with copy of AttributedString.Runs(v137, v136);
                      outlined destroy of TermOfAddress?(v137, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
                      v193 = v280;
                      outlined init with copy of FloatingPointRoundingRule?(v192, v280, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd);
                      v194 = v260;
                      v195 = v136;
                      v196 = *(v193 + *(v260 + 36));

                      outlined destroy of TermOfAddress?(v193, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
                      v197 = v192;
                      v198 = v281;
                      outlined init with copy of FloatingPointRoundingRule?(v197, v281, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd);
                      v292.i64[0] = *(v198 + *(v194 + 40));

                      outlined destroy of TermOfAddress?(v198, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
                      v280 = v196;
                      if (!v196[2])
                      {
                        goto LABEL_92;
                      }

                      v281 = *v195;
                      AttributedString.Guts.findRun(at:)(v291, v282, v297.i64);
                      v277 = *&v299[1];
                      *&v278 = *(&v299[0] + 1);
                      v267 = *(&v299[1] + 1);
                      v266 = *&v299[2];
                      v312[0] = v297;
                      v312[1] = v298;
                      v313 = *&v299[0];
                      v296.i64[0] = *(v287 + 6);
                      v199 = v195;
                      RangeSet.ranges.getter();
                      v200 = v295;
                      v201 = RangeSet.Ranges.count.getter();
                      v294(v130, v200);
                      if (v201 >= 1)
                      {
                        v202 = 0;
                        v203 = v291 >> 10;
                        while (1)
                        {
                          if (__OFADD__(v202, v201))
                          {
                            goto LABEL_85;
                          }

                          v204 = (v202 + v201) / 2;
                          RangeSet.ranges.getter();
                          v205 = v295;
                          RangeSet.Ranges.subscript.getter();
                          v294(v130, v205);
                          if (v203 >= v297.i64[0] >> 10)
                          {
                            v159 = *&v299[0];
                            v206 = *&v299[0] >> 10;
                            if (v203 < *&v299[0] >> 10)
                            {
                              v288 = *&v299[1];
                              v289 = *(&v299[0] + 1);
                              v287 = *(&v299[1] + 1);
                              if (*(v292.i64[0] + 16) != 1 || (specialized Set.contains(_:)(0, 1, v292.i64[0]) & 1) != 0)
                              {
                                *(&v278 + 1) = v203;
                                AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v312, v280, v308);

                                v207 = v281;
                                v208 = *(v281 + 72);
                                v280 = *(v281 + 80);
                                v209 = *(v281 + 96);
                                v265.i64[0] = *(v281 + 88);
                                v262 = v308[0];
                                v263.i64[0] = v209;
                                v261 = v308[1];
                                v210 = v308[4];
                                v211 = v308[2];
                                swift_unknownObjectRetain();
                                v280 = specialized Rope.subscript.getter(v262, v261, v211, v208, v280, v265.i64[0], v263.i64[0]);
                                v265.i64[0] = v212;
                                swift_unknownObjectRelease();

                                v213 = v280 + v210;
                                if (__OFADD__(v210, v280))
                                {
                                  goto LABEL_96;
                                }

                                v215 = *(v207 + 24);
                                v214 = (v207 + 24);
                                v216 = v214[1];
                                v217 = v214[2];
                                v320 = v215;
                                v321 = v216;
                                v322 = v217;
                                v280 = &v213[-(v278 >> 11)];
                                if (__OFSUB__(v213, v278 >> 11))
                                {
                                  goto LABEL_97;
                                }

                                swift_unknownObjectRetain();
                                v218 = BigString.UTF8View.index(_:offsetBy:)();
                                v220 = v219;
                                v280 = v221;
                                *&v278 = v222;
                                swift_unknownObjectRelease();
                                if (v218 >> 10 < v206)
                                {
                                  v223 = v214[1];
                                  v309 = *v214;
                                  v310 = v223;
                                  v311 = v214[2];
                                  v160 = v274;
                                  v152 = v275;
                                  if (v218 >> 10 < *(&v278 + 1))
                                  {
                                    goto LABEL_99;
                                  }

                                  *&v314 = v291;
                                  *(&v314 + 1) = v284;
                                  *&v315 = v283;
                                  *(&v315 + 1) = v282;
                                  v316 = v218;
                                  v317 = v220;
                                  v318 = v280;
                                  v319 = v278;
                                  v224 = *v214;
                                  v225 = v214[1];
                                  v343 = *(v214 + 4);
                                  v341 = v224;
                                  v342 = v225;
                                  outlined init with copy of Rope<BigString._Chunk>._Node?(&v341, &v297);
                                  v159 = BigString._firstConstraintBreak(in:with:)(&v314, v292.i64[0]);
                                  v288 = v227;
                                  v289 = v226;
                                  v287 = v228;

                                  outlined destroy of BigString(&v309);
                                  v296.i64[0] = *(v281 + 16);
LABEL_71:
                                  v199 = v286;
                                  v203 = *(&v278 + 1);
LABEL_76:
                                  outlined destroy of AttributedString.Runs(v199);
                                  v161 = *v152;
                                  v165 = v264;
                                  v166 = v268;
                                  v171 = v282;
                                  v172 = v283;
                                  v173 = v279;
                                  v168 = v288;
                                  v167 = v289;
                                  v169 = v287;
                                  v170 = v296.i64[0];
                                  if (v203 < *v152 >> 10)
                                  {
                                    goto LABEL_93;
                                  }

                                  goto LABEL_77;
                                }

                                v229 = *v214;
                                v230 = v214[2];
                                v310 = v214[1];
                                v311 = v230;
                                v309 = v229;
                                *&v314 = v291;
                                *(&v314 + 1) = v284;
                                *&v315 = v283;
                                *(&v315 + 1) = v282;
                                v316 = v159;
                                v317 = v289;
                                v318 = v288;
                                v319 = v287;
                                v231 = *v214;
                                v232 = v214[1];
                                v343 = *(v214 + 4);
                                v341 = v231;
                                v342 = v232;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v341, &v297);
                                v233 = BigString._firstConstraintBreak(in:with:)(&v314, v292.i64[0]);
                                v235 = v234;
                                v237 = v236;
                                v280 = v238;
                                outlined destroy of BigString(&v309);
                                if (v206 != v233 >> 10)
                                {

                                  v296.i64[0] = *(v281 + 16);
                                  v159 = v233;
                                  v288 = v237;
                                  v289 = v235;
                                  v287 = v280;
                                  v160 = v274;
                                  v152 = v275;
                                  goto LABEL_71;
                                }

                                v199 = v286;
                                RangeSet.ranges.getter();
                                v239 = v295;
                                v240 = RangeSet.Ranges.count.getter();
                                v294(v130, v239);
                                v241 = v240 - 1;
                                v160 = v274;
                                v203 = *(&v278 + 1);
                                if (!__OFSUB__(v240, 1))
                                {
LABEL_68:
                                  if (v204 == v241)
                                  {
                                  }

                                  else
                                  {
                                    RangeSet.ranges.getter();
                                    v253 = v295;
                                    RangeSet.Ranges.subscript.getter();

                                    v294(v130, v253);
                                    v159 = v297.i64[0];
                                    v288 = v298.i64[0];
                                    v289 = v297.u64[1];
                                    v287 = v298.i64[1];
                                  }

                                  v296.i64[0] = *(v281 + 16);
                                  goto LABEL_75;
                                }

                                __break(1u);
                              }

                              v242 = v281;
                              v243 = *(v281 + 24);
                              v244 = *(v281 + 56);
                              v321 = *(v281 + 40);
                              v322 = v244;
                              v320 = v243;
                              *&v314 = v291;
                              *(&v314 + 1) = v284;
                              *&v315 = v283;
                              *(&v315 + 1) = v282;
                              v316 = v159;
                              v317 = v289;
                              v318 = v288;
                              v319 = v287;
                              v245 = *(v281 + 24);
                              *&v311 = *(v281 + 56);
                              v246 = *(v281 + 40);
                              v309 = v245;
                              v310 = v246;
                              outlined init with copy of Rope<BigString._Chunk>._Node?(&v309, &v297);
                              v247 = BigString._firstConstraintBreak(in:with:)(&v314, v292.i64[0]);
                              v286 = v248;
                              v280 = v249;
                              *(&v278 + 1) = v250;
                              outlined destroy of BigString(&v320);
                              if (v206 == v247 >> 10)
                              {
                                RangeSet.ranges.getter();
                                v251 = v295;
                                v252 = RangeSet.Ranges.count.getter();
                                v294(v130, v251);
                                v241 = v252 - 1;
                                v160 = v274;
                                if (__OFSUB__(v252, 1))
                                {
                                  goto LABEL_100;
                                }

                                goto LABEL_68;
                              }

                              v296.i64[0] = *(v242 + 16);
                              v159 = v247;
                              v288 = v280;
                              v289 = v286;
                              v287 = *(&v278 + 1);
                              v160 = v274;
LABEL_75:
                              v152 = v275;
                              goto LABEL_76;
                            }

                            v202 = v204 + 1;
                            v204 = v201;
                          }

                          v201 = v204;
                          if (v202 >= v204)
                          {
                            goto LABEL_81;
                          }
                        }
                      }

                      goto LABEL_81;
                    }

                    v99 = v103 + 1;
                    v103 = v98;
                  }

                  v98 = v103;
                  v54 = v104;
                  v5 = v290.i64[0];
                  if (v99 >= v103)
                  {
                    goto LABEL_80;
                  }
                }

                goto LABEL_84;
              }

              goto LABEL_80;
            }

            v58 = v59 + 1;
            v59 = v56;
          }

          v56 = v59;
          if (v58 >= v59)
          {
            goto LABEL_78;
          }
        }

        goto LABEL_82;
      }

LABEL_78:
      __break(1u);
    }

    else
    {
      v63 = v285;
      outlined init with copy of FloatingPointRoundingRule?(v49, v285, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd);
      outlined init with copy of AttributedString.Runs(v63, v294);
      outlined destroy of TermOfAddress?(v63, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
      v64 = v40[2];
      v286 = v40[1];
      v283 = v40[3];
      v284 = v64;
      v65 = *(v51 + 6);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
      v293.i64[0] = v65;
      v292.i64[0] = v66;
      RangeSet.ranges.getter();
      v67 = v295;
      v68 = RangeSet.Ranges.count.getter();
      v69 = *v52;
      (*v52)(v5, v67);
      if (v68 >= 1)
      {
        v70 = 0;
        while (!__OFADD__(v70, v68))
        {
          v71 = (v70 + v68) / 2;
          RangeSet.ranges.getter();
          v72 = v295;
          RangeSet.Ranges.subscript.getter();
          v69(v5, v72);
          v73 = v297.i64[0] >> 10;
          if (v296.i64[0] >= v297.i64[0] >> 10)
          {
            v74 = *&v299[0];
            if (v296.i64[0] < *&v299[0] >> 10)
            {
              v293 = v297;
              v292 = v298;
              v138 = *v294;
              AttributedString.Guts.findRun(at:)(v289, v283, v297.i64);
              v139 = v297.u64[1];
              *&v295 = v297.i64[0];
              v140 = v298.i64[0];
              v290 = *(&v299[1] + 8);
              v296 = *(v299 + 8);
              v142 = *(v138 + 72);
              v141 = *(v138 + 80);
              v144 = *(v138 + 88);
              v143 = *(v138 + 96);
              swift_unknownObjectRetain();
              v145 = specialized Rope.subscript.getter(v295, v139, v140, v142, v141, v144, v143);
              v147 = v146;
              v285 = v148;
              swift_unknownObjectRelease();
              v149 = v73 < v296.i64[0] >> 10;
              v150 = v145 + (v296.i64[0] >> 11);
              if (__OFADD__(v145, v296.i64[0] >> 11))
              {
                goto LABEL_87;
              }

              if ((v74 >> 11) < v150)
              {
                v150 = v74 >> 11;
              }

              v151 = *(v138 + 40);
              v328 = *(v138 + 24);
              v329 = v151;
              v330 = *(v138 + 56);
              v152 = v275;
              if (__OFSUB__(v150, v289 >> 11))
              {
                goto LABEL_89;
              }

              swift_unknownObjectRetain();
              v153 = BigString.UTF8View.index(_:offsetBy:)();
              v271 = v154;
              v272 = v153;
              v269 = v156;
              v270 = v155;
              swift_unknownObjectRelease();
              v273 = v138;

              outlined destroy of AttributedString.Runs(v294);
              v157 = v291;
              outlined init with copy of FloatingPointRoundingRule?(v288, v291, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd);
              v158 = *(v152 + 1);
              v314 = *v152;
              v315 = v158;
              v316 = v152[4];
              v276 = v147;

              specialized AttributedString.Runs.AttributesSlice1.index(after:)(&v314, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR, &v297);
              outlined destroy of TermOfAddress?(v157, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd);
              v159 = v297.i64[0];
              v160 = v274;
              if (v297.i64[0] >> 10 < *v152 >> 10)
              {
                goto LABEL_91;
              }

              v161 = *v152;
              v162 = vdup_n_s32(v149);
              v163.i64[0] = v162.u32[0];
              v163.i64[1] = v162.u32[1];
              v164 = vcltzq_s64(vshlq_n_s64(v163, 0x3FuLL));
              v165 = vbslq_s8(v164, v290, v292);
              v166 = vbslq_s8(v164, v296, v293);
              v167 = v297.u64[1];
              v168 = v298.i64[0];
              v291 = v297.i64[0];
              v169 = v298.i64[1];
              v170 = *&v299[0];
              v284 = v297.i64[1];
              v171 = v298.u64[1];
              v172 = v298.i64[0];
              v173 = *&v299[0];
LABEL_77:
              v254 = v276;
              v297.i64[0] = v276;
              v297.i64[1] = v285;
              v298 = v166;
              v299[0] = v165;
              *&v299[1] = v272;
              *(&v299[1] + 1) = v271;
              *&v299[2] = v270;
              *(&v299[2] + 1) = v269;
              v300.i64[0] = v273;
              v255 = *(v152 + 1);
              v295 = *(v152 + 3);
              v296 = v255;
              *v152 = v159;
              v152[1] = v167;
              v152[2] = v168;
              v152[3] = v169;
              v152[4] = v170;
              _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV022MarkdownSourcePositionD0O_Tt0g5(v254, v160);
              outlined destroy of AttributedString.Runs.Run(&v297);

              *(v160 + 112) = v161;
              v256 = v296;
              *(v160 + 136) = v295;
              *(v160 + 120) = v256;
              v257 = v284;
              *(v160 + 152) = v291;
              *(v160 + 160) = v257;
              *(v160 + 168) = v172;
              *(v160 + 176) = v171;
              *(v160 + 184) = v173;
              _NSBundleDeallocatingImmortalBundle(v160, v258);
              return;
            }

            v70 = v71 + 1;
            v71 = v68;
          }

          v68 = v71;
          if (v70 >= v71)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_83;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
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
  }

  __break(1u);
}

uint64_t specialized AttributedString.Runs.AttributesSlice1.Iterator.next()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v292 = a7;
  v293 = a8;
  v290 = a5;
  v291 = a6;
  v301 = a4;
  v302 = a3;
  v12 = v9;
  v297 = a9;
  *&v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v13 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308);
  v15 = &v262 - v14;
  v300.i64[0] = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v300.i64[0]);
  v303 = (&v262 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v304 = (&v262 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v306 = (&v262 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v262 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v262 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v285 = (&v262 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v284 = (&v262 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v283 = &v262 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v288.i64[0] = &v262 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v287 = &v262 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v286 = &v262 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v294 = &v262 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v289 = &v262 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v295.i64[0] = &v262 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v262 - v46;
  v298 = v12 + *(v48 + 44);
  v299 = a1;
  v49 = *v298;
  v305 = a2;
  result = outlined init with copy of FloatingPointRoundingRule?(v12, &v262 - v46, a1);
  if (*(v47 + 26) != 2)
  {
    v51 = *(v47 + 23);
    result = outlined destroy of TermOfAddress?(v47, v302);
    v309.i64[0] = v49 >> 10;
    if (v49 >> 10 == v51 >> 10)
    {
      v52 = v297;
      *v297 = xmmword_1812187D0;
      v52[1] = 0u;
      v52[2] = 0u;
      v52[3] = 0u;
      v52[4] = 0u;
      v52[5] = 0u;
      *(v52 + 12) = 0;
      return result;
    }

    v296 = v49;
    v53 = v295.i64[0];
    v54 = v299;
    outlined init with copy of FloatingPointRoundingRule?(v12, v295.i64[0], v299);
    outlined init with copy of AttributedString.Runs(v53, v26);
    outlined destroy of TermOfAddress?(v53, v302);
    LOBYTE(v53) = v26[*(v300.i64[0] + 28)];
    outlined destroy of AttributedString.Runs(v26);
    v307.i64[0] = v13 + 8;
    v282 = v12;
    v55 = v12;
    if (v53)
    {
      v56 = v289;
      outlined init with copy of FloatingPointRoundingRule?(v55, v289, v54);
      outlined init with copy of AttributedString.Runs(v56, v23);
      outlined destroy of TermOfAddress?(v56, v302);
      v57 = *(v298 + 16);
      v280 = *(v298 + 8);
      *&v281 = v57;
      *(&v281 + 1) = *(v298 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
      RangeSet.ranges.getter();
      v58 = v308;
      v59 = RangeSet.Ranges.count.getter();
      v306 = *v307.i64[0];
      result = (v306)(v15, v58);
      if (v59 >= 1)
      {
        v60 = 0;
        while (!__OFADD__(v60, v59))
        {
          v61 = (v60 + v59) / 2;
          RangeSet.ranges.getter();
          v62 = v308;
          RangeSet.Ranges.subscript.getter();
          result = (v306)(v15, v62);
          v63 = v310.i64[0] >> 10;
          if (v309.i64[0] >= v310.i64[0] >> 10)
          {
            v64 = *v312;
            if (v309.i64[0] < *v312 >> 10)
            {
              v272 = v310;
              v271 = v311;
              v75 = *v23;
              AttributedString.Guts.findRun(at:)(v296, *(&v281 + 1), v310.i64);
              v289 = v310.u64[1];
              v294 = v310.i64[0];
              v270 = v313;
              v295 = *&v312[8];
              v76 = *(v75 + 72);
              v278 = *(v75 + 80);
              v279 = v311.i64[0];
              v77 = *(v75 + 88);
              v78 = *(v75 + 96);
              swift_unknownObjectRetain();
              v79 = specialized Rope.subscript.getter(v294, v289, v279, v76, v278, v77, v78);
              v279 = v80;
              v289 = v81;
              result = swift_unknownObjectRelease();
              v82 = v79 + (v295.i64[0] >> 11);
              if (__OFADD__(v79, v295.i64[0] >> 11))
              {
                goto LABEL_86;
              }

              LODWORD(v294) = v63 < v295.i64[0] >> 10;
              if ((v64 >> 11) < v82)
              {
                v82 = v64 >> 11;
              }

              v83 = *(v75 + 40);
              v345 = *(v75 + 24);
              v346 = v83;
              v347 = *(v75 + 56);
              if (__OFSUB__(v82, v296 >> 11))
              {
                goto LABEL_88;
              }

              swift_unknownObjectRetain();
              v84 = BigString.UTF8View.index(_:offsetBy:)();
              v276 = v85;
              v277 = v84;
              v274 = v87;
              v275 = v86;
              swift_unknownObjectRelease();
              v278 = v75;

              outlined destroy of AttributedString.Runs(v23);
              v88 = v282;
              v89 = v286;
              v90 = v299;
              outlined init with copy of FloatingPointRoundingRule?(v282, v286, v299);
              outlined init with copy of AttributedString.Runs(v89, v304);

              v91 = v302;
              outlined destroy of TermOfAddress?(v89, v302);
              v92 = v287;
              outlined init with copy of FloatingPointRoundingRule?(v88, v287, v90);
              v93 = __swift_instantiateConcreteTypeFromMangledNameV2(v91);
              v94 = *(v92 + *(v93 + 36));

              outlined destroy of TermOfAddress?(v92, v91);
              v95 = v88;
              v96 = v288.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v95, v288.i64[0], v90);
              v268 = v93;
              v286 = *(v96 + *(v93 + 40));

              outlined destroy of TermOfAddress?(v96, v91);
              v269 = v94;
              result = v296;
              if (!v94[2])
              {
                goto LABEL_90;
              }

              v273 = *v304;
              AttributedString.Guts.findRun(at:)(v296, *(&v281 + 1), v310.i64);
              v97 = *&v312[8];
              v266 = v313.i64[0];
              v267 = *&v312[16];
              v265 = v313.i64[1];
              v335[0] = v310;
              v335[1] = v311;
              v336 = *v312;
              RangeSet.ranges.getter();
              v98 = v308;
              v99 = RangeSet.Ranges.count.getter();
              result = (v306)(v15, v98);
              if (v99 >= 1)
              {
                v100 = 0;
                v101 = vdup_n_s32(v294);
                v102.i64[0] = v101.u32[0];
                v102.i64[1] = v101.u32[1];
                v103 = vcltzq_s64(vshlq_n_s64(v102, 0x3FuLL));
                v271 = vbslq_s8(v103, v270, v271);
                v272 = vbslq_s8(v103, v295, v272);
                while (!__OFADD__(v100, v99))
                {
                  v104 = (v100 + v99) / 2;
                  RangeSet.ranges.getter();
                  v105 = v308;
                  RangeSet.Ranges.subscript.getter();
                  result = (v306)(v15, v105);
                  if (v309.i64[0] >= v310.i64[0] >> 10)
                  {
                    v106 = *v312 >> 10;
                    if (v309.i64[0] < *v312 >> 10)
                    {
                      v288.i64[0] = *v312;
                      v107 = *&v312[8];
                      v108 = *&v312[16];
                      v109 = v313.i64[0];
                      v110 = v286;
                      if (*(v286 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v286) & 1) == 0)
                      {

                        v137 = v273;
                        v188 = *(v273 + 24);
                        v189 = *(v273 + 40);
                        v344 = *(v273 + 56);
                        v342 = v188;
                        v343 = v189;
                        *&v337 = v296;
                        *(&v337 + 1) = v280;
                        v338 = v281;
                        *&v339 = v288.i64[0];
                        *(&v339 + 1) = v107;
                        v340 = v108;
                        v341 = v109;
                        v190 = *(v273 + 24);
                        *&v334 = *(v273 + 56);
                        v191 = *(v273 + 40);
                        v332 = v190;
                        v333 = v191;
                        outlined init with copy of Rope<BigString._Chunk>._Node?(&v332, &v310);
                        v192 = BigString._firstConstraintBreak(in:with:)(&v337, v110);
                        v287 = v193;
                        v288.i64[0] = v192;
                        v294 = v195;
                        v295.i64[0] = v194;

                        outlined destroy of BigString(&v342);
                        v136 = v302;
                      }

                      else
                      {
                        v287 = v109;
                        v294 = v108;
                        v295.i64[0] = v107;
                        AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v335, v269, v316);

                        v111 = v273;
                        v113 = *(v273 + 72);
                        v112 = *(v273 + 80);
                        v114 = *(v273 + 88);
                        v263 = *(v273 + 96);
                        v264 = v114;
                        v115 = v316[0];
                        v116 = v316[1];
                        v269 = v112;
                        v270.i64[0] = v316[4];
                        v117 = v316[2];
                        swift_unknownObjectRetain();
                        v118 = specialized Rope.subscript.getter(v115, v116, v117, v113, v269, v264, v263);
                        swift_unknownObjectRelease();

                        if (__OFADD__(v270.i64[0], v118))
                        {
                          goto LABEL_94;
                        }

                        v120 = *(v111 + 24);
                        v119 = (v111 + 24);
                        v121 = v119[1];
                        v122 = v119[2];
                        v342 = v120;
                        v343 = v121;
                        v344 = v122;
                        if (__OFSUB__(v270.i64[0] + v118, v97 >> 11))
                        {
                          goto LABEL_95;
                        }

                        swift_unknownObjectRetain();
                        v123 = BigString.UTF8View.index(_:offsetBy:)();
                        v125 = v124;
                        v127 = v126;
                        v270.i64[0] = v128;
                        result = swift_unknownObjectRelease();
                        if (v123 >> 10 >= v106)
                        {
                          v177 = *v119;
                          v178 = v119[2];
                          v333 = v119[1];
                          v334 = v178;
                          v332 = v177;
                          *&v337 = v296;
                          *(&v337 + 1) = v280;
                          v338 = v281;
                          *&v339 = v288.i64[0];
                          *(&v339 + 1) = v295.i64[0];
                          v340 = v294;
                          v341 = v287;
                          v179 = *v119;
                          v180 = v119[1];
                          v350 = *(v119 + 4);
                          v348 = v179;
                          v349 = v180;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v348, &v310);
                          v181 = BigString._firstConstraintBreak(in:with:)(&v337, v286);
                          v309.i64[0] = v182;
                          v184 = v183;
                          v186 = v185;

                          outlined destroy of BigString(&v332);
                          v187 = v106 == v181 >> 10;
                          v136 = v302;
                          v137 = v273;
                          if (!v187)
                          {
                            v287 = v186;
                            v288.i64[0] = v181;
                            v294 = v184;
                            v295.i64[0] = v309.i64[0];
                          }
                        }

                        else
                        {
                          v129 = v119[1];
                          v332 = *v119;
                          v333 = v129;
                          v334 = v119[2];
                          if (v123 >> 10 < v309.i64[0])
                          {
                            goto LABEL_98;
                          }

                          *&v337 = v296;
                          *(&v337 + 1) = v280;
                          v338 = v281;
                          *&v339 = v123;
                          *(&v339 + 1) = v125;
                          v340 = v127;
                          v341 = v270.i64[0];
                          v130 = *v119;
                          v131 = v119[1];
                          v350 = *(v119 + 4);
                          v348 = v130;
                          v349 = v131;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v348, &v310);
                          v132 = BigString._firstConstraintBreak(in:with:)(&v337, v286);
                          v287 = v133;
                          v288.i64[0] = v132;
                          v294 = v135;
                          v295.i64[0] = v134;

                          outlined destroy of BigString(&v332);
                          v136 = v302;
                          v137 = v273;
                        }
                      }

                      v286 = *(v137 + 16);
                      outlined destroy of AttributedString.Runs(v304);
                      v197 = v282;
                      v196 = v283;
                      v198 = v299;
                      outlined init with copy of FloatingPointRoundingRule?(v282, v283, v299);
                      outlined init with copy of AttributedString.Runs(v196, v303);
                      outlined destroy of TermOfAddress?(v196, v136);
                      v199 = v284;
                      outlined init with copy of FloatingPointRoundingRule?(v197, v284, v198);
                      v200 = v268;
                      v201 = *(v199 + *(v268 + 36));

                      v202 = v199;
                      v203 = v302;
                      outlined destroy of TermOfAddress?(v202, v302);
                      v204 = v197;
                      v205 = v285;
                      outlined init with copy of FloatingPointRoundingRule?(v204, v285, v198);
                      v299 = *(v205 + *(v200 + 40));

                      result = outlined destroy of TermOfAddress?(v205, v203);
                      v296 = v201;
                      if (!v201[2])
                      {
                        goto LABEL_92;
                      }

                      v206 = *v303;
                      AttributedString.Guts.findRun(at:)(v288.u64[0], v287, v310.i64);
                      v207 = *&v312[8];
                      v284 = v313.i64[0];
                      v285 = *&v312[16];
                      v283 = v313.i64[1];
                      v321[0] = v310;
                      v321[1] = v311;
                      v322 = *v312;
                      v305 = *(v300.i64[0] + 24);
                      RangeSet.ranges.getter();
                      v208 = v308;
                      v209 = RangeSet.Ranges.count.getter();
                      result = (v306)(v15, v208);
                      if (v209 >= 1)
                      {
                        v210 = 0;
                        v309.i64[0] = v288.i64[0] >> 10;
                        while (1)
                        {
                          if (__OFADD__(v210, v209))
                          {
                            goto LABEL_85;
                          }

                          v211 = (v210 + v209) / 2;
                          RangeSet.ranges.getter();
                          v212 = v308;
                          RangeSet.Ranges.subscript.getter();
                          result = (v306)(v15, v212);
                          if (v309.i64[0] >= v310.i64[0] >> 10)
                          {
                            v161 = *v312;
                            v213 = *v312 >> 10;
                            if (v309.i64[0] < *v312 >> 10)
                            {
                              v304 = *&v312[8];
                              v301 = v313.i64[0];
                              v302 = *&v312[16];
                              v214 = v299;
                              if (v299[2] == 1 && (specialized Set.contains(_:)(0, 1, v299) & 1) == 0)
                              {
                                goto LABEL_66;
                              }

                              AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v321, v296, v317);

                              v215 = *(v206 + 72);
                              v296 = *(v206 + 80);
                              v216 = *(v206 + 88);
                              *(&v281 + 1) = *(v206 + 96);
                              v282 = v216;
                              v280 = v317[1];
                              *&v281 = v317[0];
                              v300.i64[0] = v317[4];
                              v273 = v317[2];
                              swift_unknownObjectRetain();
                              v296 = specialized Rope.subscript.getter(v281, v280, v273, v215, v296, v282, *(&v281 + 1));
                              *(&v281 + 1) = v217;
                              v282 = v218;
                              swift_unknownObjectRelease();

                              v219 = (v300.i64[0] + v296);
                              if (__OFADD__(v300.i64[0], v296))
                              {
                                goto LABEL_96;
                              }

                              v220 = (v206 + 24);
                              v221 = *(v206 + 24);
                              v222 = *(v206 + 40);
                              v223 = *(v206 + 56);
                              v329 = v221;
                              v330 = v222;
                              v331 = v223;
                              v300.i64[0] = &v219[-(v207 >> 11)];
                              if (__OFSUB__(v219, v207 >> 11))
                              {
                                goto LABEL_97;
                              }

                              v296 = v221;
                              swift_unknownObjectRetain();
                              v224 = BigString.UTF8View.index(_:offsetBy:)();
                              v284 = v225;
                              v285 = v226;
                              v300.i64[0] = v227;
                              result = swift_unknownObjectRelease();
                              if (v224 >> 10 < v213)
                              {
                                v228 = *(v206 + 40);
                                v318 = *v220;
                                v319 = v228;
                                v320 = *(v206 + 56);
                                if (v224 >> 10 < v309.i64[0])
                                {
                                  goto LABEL_99;
                                }

                                v170 = v288.i64[0];
                                *&v323 = v288.i64[0];
                                *(&v323 + 1) = v295.i64[0];
                                *&v324 = v294;
                                *(&v324 + 1) = v287;
                                v325 = v224;
                                v326 = v284;
                                v327 = v300.i64[0];
                                v328 = v285;
                                v229 = *v220;
                                v230 = *(v206 + 40);
                                v353 = *(v206 + 56);
                                v351 = v229;
                                v352 = v230;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v351, &v310);
                                v161 = BigString._firstConstraintBreak(in:with:)(&v323, v299);
                                v304 = v231;
                                v301 = v233;
                                v302 = v232;

                                outlined destroy of BigString(&v318);
                                v172 = *(v206 + 16);
                                v153 = v298;
LABEL_76:
                                result = outlined destroy of AttributedString.Runs(v303);
                                v162 = *v153;
                                v175 = v277;
                                v176 = v278;
                                v166 = v271;
                                v167 = v272;
                                v174 = v286;
                                v173 = v287;
                                v168 = v304;
                                v171 = v301;
                                v169 = v302;
                                if (v309.i64[0] < *v153 >> 10)
                                {
                                  goto LABEL_93;
                                }

                                goto LABEL_77;
                              }

                              v234 = *v220;
                              v235 = *(v206 + 56);
                              v319 = *(v206 + 40);
                              v320 = v235;
                              v318 = v234;
                              *&v323 = v288.i64[0];
                              *(&v323 + 1) = v295.i64[0];
                              *&v324 = v294;
                              *(&v324 + 1) = v287;
                              v325 = v161;
                              v326 = v304;
                              v327 = v302;
                              v328 = v301;
                              v236 = *v220;
                              v237 = *(v206 + 40);
                              v353 = *(v206 + 56);
                              v351 = v236;
                              v352 = v237;
                              outlined init with copy of Rope<BigString._Chunk>._Node?(&v351, &v310);
                              v238 = BigString._firstConstraintBreak(in:with:)(&v323, v299);
                              v240 = v239;
                              v300.i64[0] = v241;
                              v296 = v242;
                              outlined destroy of BigString(&v318);
                              if (v213 == v238 >> 10)
                              {
                                RangeSet.ranges.getter();
                                v213 = v308;
                                v214 = RangeSet.Ranges.count.getter();
                                (v306)(v15, v213);
                                v243 = v214 - 1;
                                if (!__OFSUB__(v214, 1))
                                {
                                  goto LABEL_68;
                                }

                                __break(1u);
LABEL_66:

                                v244 = *(v206 + 24);
                                v245 = *(v206 + 56);
                                v330 = *(v206 + 40);
                                v331 = v245;
                                v329 = v244;
                                *&v323 = v288.i64[0];
                                *(&v323 + 1) = v295.i64[0];
                                *&v324 = v294;
                                *(&v324 + 1) = v287;
                                v325 = v161;
                                v326 = v304;
                                v327 = v302;
                                v328 = v301;
                                v246 = *(v206 + 24);
                                *&v320 = *(v206 + 56);
                                v247 = *(v206 + 40);
                                v318 = v246;
                                v319 = v247;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v318, &v310);
                                v248 = BigString._firstConstraintBreak(in:with:)(&v323, v214);
                                v300.i64[0] = v249;
                                v296 = v250;
                                v285 = v251;
                                outlined destroy of BigString(&v329);
                                if (v213 == v248 >> 10)
                                {
                                  RangeSet.ranges.getter();
                                  v252 = v308;
                                  v253 = RangeSet.Ranges.count.getter();
                                  result = (v306)(v15, v252);
                                  v243 = (v253 - 1);
                                  if (__OFSUB__(v253, 1))
                                  {
                                    goto LABEL_100;
                                  }

LABEL_68:
                                  v153 = v298;
                                  if (v211 == v243)
                                  {
                                  }

                                  else
                                  {
                                    RangeSet.ranges.getter();
                                    v255 = v308;
                                    RangeSet.Ranges.subscript.getter();

                                    (v306)(v15, v255);
                                    v304 = v310.i64[1];
                                    v161 = v310.i64[0];
                                    v301 = v311.i64[1];
                                    v302 = v311.i64[0];
                                  }

                                  v172 = *(v206 + 16);
LABEL_75:
                                  v170 = v288.i64[0];
                                  goto LABEL_76;
                                }

                                v172 = *(v206 + 16);
                                v161 = v248;
                                v304 = v300.i64[0];
                                v302 = v296;
                                v254 = v285;
                              }

                              else
                              {

                                v172 = *(v206 + 16);
                                v161 = v238;
                                v304 = v240;
                                v302 = v300.i64[0];
                                v254 = v296;
                              }

                              v301 = v254;
                              v153 = v298;
                              goto LABEL_75;
                            }

                            v210 = v211 + 1;
                            v211 = v209;
                          }

                          v209 = v211;
                          if (v210 >= v211)
                          {
                            goto LABEL_81;
                          }
                        }
                      }

                      goto LABEL_81;
                    }

                    v100 = v104 + 1;
                    v104 = v99;
                  }

                  v99 = v104;
                  if (v100 >= v104)
                  {
                    goto LABEL_80;
                  }
                }

                goto LABEL_84;
              }

              goto LABEL_80;
            }

            v60 = v61 + 1;
            v61 = v59;
          }

          v59 = v61;
          if (v60 >= v61)
          {
            goto LABEL_78;
          }
        }

        goto LABEL_82;
      }

LABEL_78:
      __break(1u);
    }

    else
    {
      v65 = v294;
      outlined init with copy of FloatingPointRoundingRule?(v55, v294, v54);
      outlined init with copy of AttributedString.Runs(v65, v306);
      outlined destroy of TermOfAddress?(v65, v302);
      v66 = *(v298 + 8);
      v303 = *(v298 + 16);
      v304 = v66;
      v294 = *(v298 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
      RangeSet.ranges.getter();
      v67 = v308;
      v68 = RangeSet.Ranges.count.getter();
      v69 = *v307.i64[0];
      result = (*v307.i64[0])(v15, v67);
      if (v68 >= 1)
      {
        v70 = 0;
        while (!__OFADD__(v70, v68))
        {
          v71 = (v70 + v68) / 2;
          RangeSet.ranges.getter();
          v72 = v308;
          RangeSet.Ranges.subscript.getter();
          result = v69(v15, v72);
          v73 = v310.i64[0] >> 10;
          if (v309.i64[0] >= v310.i64[0] >> 10)
          {
            v74 = *v312;
            if (v309.i64[0] < *v312 >> 10)
            {
              v307 = v310;
              v300 = v311;
              v138 = *v306;
              AttributedString.Guts.findRun(at:)(v296, v294, v310.i64);
              v139 = v310.u64[1];
              *&v308 = v310.i64[0];
              v140 = v311.i64[0];
              v288 = v313;
              v309 = *&v312[8];
              v141 = *(v138 + 72);
              v142 = *(v138 + 80);
              v143 = *(v138 + 88);
              v144 = *(v138 + 96);
              swift_unknownObjectRetain();
              v145 = specialized Rope.subscript.getter(v308, v139, v140, v141, v142, v143, v144);
              v147 = v146;
              v289 = v148;
              result = swift_unknownObjectRelease();
              v149 = v73 < v309.i64[0] >> 10;
              v150 = v145 + (v309.i64[0] >> 11);
              if (__OFADD__(v145, v309.i64[0] >> 11))
              {
                goto LABEL_87;
              }

              if ((v74 >> 11) < v150)
              {
                v150 = v74 >> 11;
              }

              v151 = *(v138 + 40);
              v337 = *(v138 + 24);
              v338 = v151;
              v339 = *(v138 + 56);
              v153 = v298;
              v152 = v299;
              if (__OFSUB__(v150, v296 >> 11))
              {
                goto LABEL_89;
              }

              swift_unknownObjectRetain();
              v154 = BigString.UTF8View.index(_:offsetBy:)();
              v276 = v155;
              v277 = v154;
              v274 = v157;
              v275 = v156;
              swift_unknownObjectRelease();
              v278 = v138;

              outlined destroy of AttributedString.Runs(v306);
              v158 = v295.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v282, v295.i64[0], v152);
              v159 = *(v153 + 16);
              v323 = *v153;
              v324 = v159;
              v325 = *(v153 + 32);
              v279 = v147;

              v160 = v302;
              specialized AttributedString.Runs.AttributesSlice1.index(after:)(&v323, v302, v301, &v310);
              result = outlined destroy of TermOfAddress?(v158, v160);
              v161 = v310.i64[0];
              if (v310.i64[0] >> 10 < *v153 >> 10)
              {
                goto LABEL_91;
              }

              v162 = *v153;
              v163 = vdup_n_s32(v149);
              v164.i64[0] = v163.u32[0];
              v164.i64[1] = v163.u32[1];
              v165 = vcltzq_s64(vshlq_n_s64(v164, 0x3FuLL));
              v166 = vbslq_s8(v165, v288, v300);
              v167 = vbslq_s8(v165, v309, v307);
              v168 = v310.i64[1];
              v169 = v311.i64[0];
              v170 = v310.i64[0];
              v171 = v311.i64[1];
              v172 = *v312;
              v294 = v311.i64[0];
              v295.i64[0] = v310.i64[1];
              v173 = v311.u64[1];
              v174 = *v312;
              v175 = v277;
              v176 = v278;
LABEL_77:
              v256 = v279;
              v310.i64[0] = v279;
              v310.i64[1] = v289;
              v311 = v167;
              *v312 = v166;
              *&v312[16] = v175;
              v313.i64[0] = v276;
              v313.i64[1] = v275;
              v314 = v274;
              v315 = v176;
              v257 = *(v153 + 8);
              v308 = *(v153 + 24);
              v309 = v257;
              *v153 = v161;
              *(v153 + 8) = v168;
              *(v153 + 16) = v169;
              *(v153 + 24) = v171;
              *(v153 + 32) = v172;
              v258 = v297;
              _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV025AssumedFallbackInflectionD0O_Tt0g5Tm(v256, v290, v291, v292, v297);
              outlined destroy of AttributedString.Runs.Run(&v310);

              *(v258 + 3) = v162;
              v259 = v308;
              v258[2] = v309;
              v258[3] = v259;
              v260 = v294;
              v261 = v295.i64[0];
              *(v258 + 8) = v170;
              *(v258 + 9) = v261;
              *(v258 + 10) = v260;
              *(v258 + 11) = v173;
              *(v258 + 12) = v174;
              return result;
            }

            v70 = v71 + 1;
            v71 = v68;
          }

          v68 = v71;
          if (v70 >= v71)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_83;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
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
  }

  __break(1u);
  return result;
}

uint64_t specialized AttributedString.Runs.AttributesSlice1.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  *&v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v284.i64[0] = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285);
  v5 = &v247 - v4;
  v280.i64[0] = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v280.i64[0]);
  v277 = &v247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v281 = (&v247 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v283 = (&v247 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v247 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v247 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v272 = (&v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v271 = &v247 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v270 = &v247 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v275.i64[0] = &v247 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v274 = &v247 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v273 = &v247 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v276 = &v247 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v247 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v278.i64[0] = &v247 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v247 - v37;
  v40 = (v2 + *(v39 + 44));
  v41 = *v40;
  v282 = v2;
  result = outlined init with copy of FloatingPointRoundingRule?(v2, &v247 - v37, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd);
  if (*(v38 + 26) != 2)
  {
    v43 = *(v38 + 23);
    result = outlined destroy of TermOfAddress?(v38, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
    v286.i64[0] = v41 >> 10;
    if (v41 >> 10 == v43 >> 10)
    {
      *a1 = xmmword_1812187D0;
      a1[1] = 0u;
      a1[2] = 0u;
      a1[3] = 0u;
      a1[4] = 0u;
      a1[5] = 0u;
      return result;
    }

    v279 = v41;
    v265 = a1;
    v44 = v282;
    v45 = v278.i64[0];
    outlined init with copy of FloatingPointRoundingRule?(v282, v278.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd);
    outlined init with copy of AttributedString.Runs(v45, v16);
    outlined destroy of TermOfAddress?(v45, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
    LOBYTE(v45) = v16[*(v280.i64[0] + 28)];
    outlined destroy of AttributedString.Runs(v16);
    v46 = (v284.i64[0] + 8);
    v284.i64[0] += 8;
    v266 = v40;
    if (v45)
    {
      outlined init with copy of FloatingPointRoundingRule?(v44, v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd);
      outlined init with copy of AttributedString.Runs(v33, v13);
      outlined destroy of TermOfAddress?(v33, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
      v47 = v40[2];
      v268 = v40[1];
      *&v269 = v47;
      *(&v269 + 1) = v40[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
      RangeSet.ranges.getter();
      v48 = v285;
      v49 = RangeSet.Ranges.count.getter();
      v283 = *v46;
      result = (v283)(v5, v48);
      if (v49 >= 1)
      {
        v50 = 0;
        while (!__OFADD__(v50, v49))
        {
          v51 = (v50 + v49) / 2;
          RangeSet.ranges.getter();
          v52 = v285;
          RangeSet.Ranges.subscript.getter();
          result = (v283)(v5, v52);
          v53 = v287.i64[0] >> 10;
          if (v286.i64[0] >= v287.i64[0] >> 10)
          {
            v54 = *v289;
            if (v286.i64[0] < *v289 >> 10)
            {
              v257 = v287;
              v256 = v288;
              v65 = *v13;
              AttributedString.Guts.findRun(at:)(v279, *(&v269 + 1), v287.i64);
              v267 = v287.i64[1];
              v276 = v287.i64[0];
              v255 = v290;
              v278 = *&v289[8];
              v66 = *(v65 + 72);
              v263 = *(v65 + 80);
              v264 = v288.i64[0];
              v67 = *(v65 + 88);
              v68 = *(v65 + 96);
              swift_unknownObjectRetain();
              v69 = specialized Rope.subscript.getter(v276, v267, v264, v66, v263, v67, v68);
              v71 = v70;
              v259 = v72;
              result = swift_unknownObjectRelease();
              v73 = v69 + (v278.i64[0] >> 11);
              if (__OFADD__(v69, v278.i64[0] >> 11))
              {
                goto LABEL_88;
              }

              LODWORD(v276) = v53 < v278.i64[0] >> 10;
              v267 = v71;
              if ((v54 >> 11) < v73)
              {
                v73 = v54 >> 11;
              }

              v74 = *(v65 + 40);
              v322 = *(v65 + 24);
              v323 = v74;
              v324 = *(v65 + 56);
              if (__OFSUB__(v73, v279 >> 11))
              {
                goto LABEL_90;
              }

              swift_unknownObjectRetain();
              v75 = BigString.UTF8View.index(_:offsetBy:)();
              v262 = v76;
              v263 = v75;
              v260 = v78;
              v261 = v77;
              swift_unknownObjectRelease();
              v264 = v65;

              outlined destroy of AttributedString.Runs(v13);
              v79 = v282;
              v80 = v273;
              outlined init with copy of FloatingPointRoundingRule?(v282, v273, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd);
              v81 = v281;
              outlined init with copy of AttributedString.Runs(v80, v281);

              outlined destroy of TermOfAddress?(v80, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
              v82 = v274;
              outlined init with copy of FloatingPointRoundingRule?(v79, v274, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd);
              v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
              v84 = *(v82 + *(v83 + 36));

              outlined destroy of TermOfAddress?(v82, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
              v85 = v79;
              v86 = v275.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v85, v275.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd);
              v253 = v83;
              v273 = *(v86 + *(v83 + 40));

              result = outlined destroy of TermOfAddress?(v86, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
              v254 = v84;
              if (!v84[2])
              {
                goto LABEL_92;
              }

              v258 = *v81;
              AttributedString.Guts.findRun(at:)(v279, *(&v269 + 1), v287.i64);
              v251 = *&v289[16];
              v252 = *&v289[8];
              v249 = v290.i64[1];
              v250 = v290.i64[0];
              v312[0] = v287;
              v312[1] = v288;
              v313 = *v289;
              RangeSet.ranges.getter();
              v87 = v285;
              v88 = RangeSet.Ranges.count.getter();
              result = (v283)(v5, v87);
              v89 = v277;
              if (v88 >= 1)
              {
                v90 = 0;
                v91 = vdup_n_s32(v276);
                v92.i64[0] = v91.u32[0];
                v92.i64[1] = v91.u32[1];
                v93 = vcltzq_s64(vshlq_n_s64(v92, 0x3FuLL));
                v256 = vbslq_s8(v93, v255, v256);
                v257 = vbslq_s8(v93, v278, v257);
                while (!__OFADD__(v90, v88))
                {
                  v94 = (v90 + v88) / 2;
                  RangeSet.ranges.getter();
                  v95 = v285;
                  RangeSet.Ranges.subscript.getter();
                  v96 = v95;
                  v97 = v282;
                  result = (v283)(v5, v96);
                  if (v286.i64[0] >= v287.i64[0] >> 10)
                  {
                    v98 = *v289 >> 10;
                    if (v286.i64[0] < *v289 >> 10)
                    {
                      v278.i64[0] = *v289;
                      v99 = *&v289[8];
                      v100 = *&v289[16];
                      v101 = v290.i64[0];
                      v102 = v273;
                      if (*(v273 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v273) & 1) == 0)
                      {

                        v175 = *(v258 + 24);
                        v176 = *(v258 + 56);
                        v320 = *(v258 + 40);
                        v321 = v176;
                        v319 = v175;
                        *&v314 = v279;
                        *(&v314 + 1) = v268;
                        v315 = v269;
                        *&v316 = v278.i64[0];
                        *(&v316 + 1) = v99;
                        v317 = v100;
                        v128 = v258;
                        v318 = v101;
                        v177 = *(v258 + 24);
                        *&v311 = *(v258 + 56);
                        v178 = *(v258 + 40);
                        v309 = v177;
                        v310 = v178;
                        outlined init with copy of Rope<BigString._Chunk>._Node?(&v309, &v287);
                        v123 = BigString._firstConstraintBreak(in:with:)(&v314, v102);
                        v276 = v179;
                        v274 = v181;
                        v275.i64[0] = v180;

                        outlined destroy of BigString(&v319);
                        v127 = v270;
                      }

                      else
                      {
                        v274 = v101;
                        v275.i64[0] = v100;
                        v276 = v99;
                        AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v312, v254, v293);

                        v103 = v258;
                        v105 = *(v258 + 72);
                        v104 = *(v258 + 80);
                        v106 = *(v258 + 88);
                        v247 = *(v258 + 96);
                        v248 = v106;
                        v107 = v293[0];
                        v108 = v293[1];
                        v254 = v104;
                        v255.i64[0] = v293[4];
                        v109 = v293[2];
                        swift_unknownObjectRetain();
                        v110 = specialized Rope.subscript.getter(v107, v108, v109, v105, v254, v248, v247);
                        swift_unknownObjectRelease();

                        if (__OFADD__(v255.i64[0], v110))
                        {
                          goto LABEL_96;
                        }

                        v112 = *(v103 + 24);
                        v111 = (v103 + 24);
                        v113 = v111[1];
                        v114 = v111[2];
                        v319 = v112;
                        v320 = v113;
                        v321 = v114;
                        if (__OFSUB__(v255.i64[0] + v110, v252 >> 11))
                        {
                          goto LABEL_97;
                        }

                        swift_unknownObjectRetain();
                        v115 = BigString.UTF8View.index(_:offsetBy:)();
                        v117 = v116;
                        v254 = v119;
                        v255.i64[0] = v118;
                        result = swift_unknownObjectRelease();
                        v89 = v277;
                        if (v115 >> 10 >= v98)
                        {
                          v164 = *v111;
                          v165 = v111[2];
                          v310 = v111[1];
                          v311 = v165;
                          v309 = v164;
                          *&v314 = v279;
                          *(&v314 + 1) = v268;
                          v315 = v269;
                          v166 = v278.i64[0];
                          *&v316 = v278.i64[0];
                          *(&v316 + 1) = v276;
                          v317 = v275.i64[0];
                          v318 = v274;
                          v167 = *v111;
                          v168 = v111[1];
                          v327 = *(v111 + 4);
                          v325 = v167;
                          v326 = v168;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v325, &v287);
                          v169 = BigString._firstConstraintBreak(in:with:)(&v314, v273);
                          v286.i64[0] = v170;
                          v279 = v171;
                          v173 = v172;

                          outlined destroy of BigString(&v309);
                          v174 = v98 == v169 >> 10;
                          v123 = v166;
                          v127 = v270;
                          v128 = v258;
                          if (!v174)
                          {
                            v123 = v169;
                            v276 = v286.i64[0];
                            v274 = v173;
                            v275.i64[0] = v279;
                          }
                        }

                        else
                        {
                          v120 = v111[1];
                          v309 = *v111;
                          v310 = v120;
                          v311 = v111[2];
                          if (v115 >> 10 < v286.i64[0])
                          {
                            goto LABEL_100;
                          }

                          *&v314 = v279;
                          *(&v314 + 1) = v268;
                          v315 = v269;
                          *&v316 = v115;
                          *(&v316 + 1) = v117;
                          v317 = v255.i64[0];
                          v318 = v254;
                          v121 = *v111;
                          v122 = v111[1];
                          v327 = *(v111 + 4);
                          v325 = v121;
                          v326 = v122;
                          outlined init with copy of Rope<BigString._Chunk>._Node?(&v325, &v287);
                          v123 = BigString._firstConstraintBreak(in:with:)(&v314, v273);
                          v276 = v124;
                          v274 = v126;
                          v275.i64[0] = v125;

                          outlined destroy of BigString(&v309);
                          v127 = v270;
                          v128 = v258;
                        }
                      }

                      v278.i64[0] = v123;
                      v270 = *(v128 + 16);
                      outlined destroy of AttributedString.Runs(v281);
                      outlined init with copy of FloatingPointRoundingRule?(v97, v127, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd);
                      outlined init with copy of AttributedString.Runs(v127, v89);
                      outlined destroy of TermOfAddress?(v127, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
                      v182 = v271;
                      outlined init with copy of FloatingPointRoundingRule?(v97, v271, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd);
                      v183 = v253;
                      v184 = v89;
                      v185 = *(v182 + *(v253 + 36));

                      outlined destroy of TermOfAddress?(v182, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
                      v186 = v272;
                      outlined init with copy of FloatingPointRoundingRule?(v97, v272, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd);
                      v282 = *(v186 + *(v183 + 40));

                      result = outlined destroy of TermOfAddress?(v186, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
                      v272 = v185;
                      if (!v185[2])
                      {
                        goto LABEL_94;
                      }

                      v273 = *v184;
                      AttributedString.Guts.findRun(at:)(v278.u64[0], v274, v287.i64);
                      v271 = *&v289[8];
                      *&v269 = v290.i64[0];
                      *(&v269 + 1) = *&v289[16];
                      v268 = v290.i64[1];
                      v298[0] = v287;
                      v298[1] = v288;
                      v299 = *v289;
                      v286.i64[0] = *(v280.i64[0] + 24);
                      RangeSet.ranges.getter();
                      v187 = v285;
                      v188 = RangeSet.Ranges.count.getter();
                      result = (v283)(v5, v187);
                      if (v188 >= 1)
                      {
                        v189 = 0;
                        v190 = v278.i64[0] >> 10;
                        while (1)
                        {
                          if (__OFADD__(v189, v188))
                          {
                            goto LABEL_87;
                          }

                          v191 = (v189 + v188) / 2;
                          RangeSet.ranges.getter();
                          v192 = v285;
                          RangeSet.Ranges.subscript.getter();
                          result = (v283)(v5, v192);
                          if (v190 >= v287.i64[0] >> 10)
                          {
                            v151 = *v289;
                            v193 = *v289 >> 10;
                            if (v190 < *v289 >> 10)
                            {
                              v281 = *&v289[8];
                              v279 = v290.i64[0];
                              v280.i64[0] = *&v289[16];
                              if (*(v282 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v282) & 1) == 0)
                              {

                                v226 = v273;
                                v227 = *(v273 + 24);
                                v228 = *(v273 + 56);
                                v307 = *(v273 + 40);
                                v308 = v228;
                                v306 = v227;
                                *&v300 = v278.i64[0];
                                *(&v300 + 1) = v276;
                                *&v301 = v275.i64[0];
                                *(&v301 + 1) = v274;
                                v302 = v151;
                                v303 = v281;
                                v304 = v280.i64[0];
                                v305 = v279;
                                v229 = *(v273 + 24);
                                *&v297 = *(v273 + 56);
                                v230 = *(v273 + 40);
                                v295 = v229;
                                v296 = v230;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v295, &v287);
                                v231 = BigString._firstConstraintBreak(in:with:)(&v300, v282);
                                v271 = v233;
                                v272 = v232;
                                *(&v269 + 1) = v234;
                                outlined destroy of BigString(&v306);
                                if (v193 == v231 >> 10)
                                {
                                  RangeSet.ranges.getter();
                                  v235 = v285;
                                  v236 = RangeSet.Ranges.count.getter();
                                  result = (v283)(v5, v235);
                                  if (__OFSUB__(v236, 1))
                                  {
                                    goto LABEL_103;
                                  }

                                  if (v191 == v236 - 1)
                                  {
                                  }

                                  else
                                  {
                                    RangeSet.ranges.getter();
                                    v238 = v285;
                                    RangeSet.Ranges.subscript.getter();

                                    (v283)(v5, v238);
                                    v281 = v287.i64[1];
                                    v151 = v287.i64[0];
                                    v279 = v288.u64[1];
                                    v280.i64[0] = v288.i64[0];
                                  }

                                  v162 = *(v273 + 16);
                                  goto LABEL_77;
                                }

                                v151 = v231;
                                v162 = *(v226 + 16);
                              }

                              else
                              {
                                AttributedString.Runs._lastOfMatchingRuns(with:comparing:)(v298, v272, v294);

                                v194 = v273;
                                v195 = *(v273 + 72);
                                v272 = *(v273 + 80);
                                v196 = *(v273 + 96);
                                v258 = *(v273 + 88);
                                v254 = v294[0];
                                v255.i64[0] = v196;
                                v197 = v294[4];
                                v252 = v294[2];
                                v253 = v294[1];
                                swift_unknownObjectRetain();
                                v272 = specialized Rope.subscript.getter(v254, v253, v252, v195, v272, v258, v255.i64[0]);
                                v255.i64[0] = v198;
                                v258 = v199;
                                swift_unknownObjectRelease();

                                v200 = v272 + v197;
                                if (__OFADD__(v197, v272))
                                {
                                  goto LABEL_98;
                                }

                                v201 = (v194 + 24);
                                v202 = *(v194 + 24);
                                v203 = *(v194 + 40);
                                v204 = *(v194 + 56);
                                v306 = v202;
                                v307 = v203;
                                v308 = v204;
                                v272 = &v200[-(v271 >> 11)];
                                if (__OFSUB__(v200, v271 >> 11))
                                {
                                  goto LABEL_99;
                                }

                                v258 = v202;
                                swift_unknownObjectRetain();
                                v205 = BigString.UTF8View.index(_:offsetBy:)();
                                v271 = v207;
                                v272 = v206;
                                *(&v269 + 1) = v208;
                                result = swift_unknownObjectRelease();
                                if (v205 >> 10 < v193)
                                {
                                  v209 = v201[1];
                                  v295 = *v201;
                                  v296 = v209;
                                  v297 = v201[2];
                                  v152 = v265;
                                  v143 = v266;
                                  v150 = v259;
                                  if (v205 >> 10 < v190)
                                  {
                                    goto LABEL_101;
                                  }

                                  *&v300 = v278.i64[0];
                                  *(&v300 + 1) = v276;
                                  *&v301 = v275.i64[0];
                                  *(&v301 + 1) = v274;
                                  v302 = v205;
                                  v303 = v272;
                                  v304 = v271;
                                  v305 = *(&v269 + 1);
                                  v210 = *v201;
                                  v211 = v201[1];
                                  v330 = *(v201 + 4);
                                  v328 = v210;
                                  v329 = v211;
                                  outlined init with copy of Rope<BigString._Chunk>._Node?(&v328, &v287);
                                  v151 = BigString._firstConstraintBreak(in:with:)(&v300, v282);
                                  v281 = v212;
                                  v279 = v214;
                                  v280.i64[0] = v213;

                                  outlined destroy of BigString(&v295);
                                  v162 = *(v273 + 16);
LABEL_78:
                                  result = outlined destroy of AttributedString.Runs(v277);
                                  v153 = *v143;
                                  v157 = v256;
                                  v158 = v257;
                                  v163 = v270;
                                  v159 = v281;
                                  v161 = v279;
                                  v160 = v280.i64[0];
                                  if (v190 < *v143 >> 10)
                                  {
                                    goto LABEL_95;
                                  }

                                  goto LABEL_79;
                                }

                                v215 = *v201;
                                v216 = v201[2];
                                v296 = v201[1];
                                v297 = v216;
                                v295 = v215;
                                *&v300 = v278.i64[0];
                                *(&v300 + 1) = v276;
                                *&v301 = v275.i64[0];
                                *(&v301 + 1) = v274;
                                v302 = v151;
                                v303 = v281;
                                v304 = v280.i64[0];
                                v305 = v279;
                                v217 = *v201;
                                v218 = v201[1];
                                v330 = *(v201 + 4);
                                v328 = v217;
                                v329 = v218;
                                outlined init with copy of Rope<BigString._Chunk>._Node?(&v328, &v287);
                                v219 = BigString._firstConstraintBreak(in:with:)(&v300, v282);
                                v271 = v221;
                                v272 = v220;
                                *(&v269 + 1) = v222;
                                outlined destroy of BigString(&v295);
                                if (v193 == v219 >> 10)
                                {
                                  RangeSet.ranges.getter();
                                  v223 = v285;
                                  v224 = RangeSet.Ranges.count.getter();
                                  result = (v283)(v5, v223);
                                  if (__OFSUB__(v224, 1))
                                  {
                                    goto LABEL_102;
                                  }

                                  v225 = v273;
                                  if (v191 == v224 - 1)
                                  {
                                  }

                                  else
                                  {
                                    RangeSet.ranges.getter();
                                    v237 = v285;
                                    RangeSet.Ranges.subscript.getter();

                                    (v283)(v5, v237);
                                    v281 = v287.i64[1];
                                    v151 = v287.i64[0];
                                    v279 = v288.u64[1];
                                    v280.i64[0] = v288.i64[0];
                                  }

                                  v162 = *(v225 + 16);
                                  goto LABEL_77;
                                }

                                v151 = v219;
                                v162 = *(v273 + 16);
                              }

                              v281 = v272;
                              v279 = *(&v269 + 1);
                              v280.i64[0] = v271;
LABEL_77:
                              v152 = v265;
                              v143 = v266;
                              v150 = v259;
                              goto LABEL_78;
                            }

                            v189 = v191 + 1;
                            v191 = v188;
                          }

                          v188 = v191;
                          if (v189 >= v191)
                          {
                            goto LABEL_83;
                          }
                        }
                      }

                      goto LABEL_83;
                    }

                    v90 = v94 + 1;
                    v94 = v88;
                  }

                  v88 = v94;
                  if (v90 >= v94)
                  {
                    goto LABEL_82;
                  }
                }

                goto LABEL_86;
              }

              goto LABEL_82;
            }

            v50 = v51 + 1;
            v51 = v49;
          }

          v49 = v51;
          if (v50 >= v51)
          {
            goto LABEL_80;
          }
        }

        goto LABEL_84;
      }

LABEL_80:
      __break(1u);
    }

    else
    {
      v55 = v276;
      outlined init with copy of FloatingPointRoundingRule?(v44, v276, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd);
      outlined init with copy of AttributedString.Runs(v55, v283);
      outlined destroy of TermOfAddress?(v55, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
      v56 = v40[2];
      v281 = v40[1];
      v276 = v40[3];
      v277 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
      RangeSet.ranges.getter();
      v57 = v285;
      v58 = RangeSet.Ranges.count.getter();
      v59 = *v46;
      result = (*v46)(v5, v57);
      if (v58 >= 1)
      {
        v60 = 0;
        while (!__OFADD__(v60, v58))
        {
          v61 = (v60 + v58) / 2;
          RangeSet.ranges.getter();
          v62 = v285;
          RangeSet.Ranges.subscript.getter();
          result = (v59)(v5, v62);
          v63 = v287.i64[0] >> 10;
          if (v286.i64[0] >= v287.i64[0] >> 10)
          {
            v64 = *v289;
            if (v286.i64[0] < *v289 >> 10)
            {
              v284 = v287;
              v280 = v288;
              v129 = *v283;
              AttributedString.Guts.findRun(at:)(v279, v276, v287.i64);
              v130 = v287.u64[1];
              *&v285 = v287.i64[0];
              v131 = v288.i64[0];
              v275 = v290;
              v286 = *&v289[8];
              v132 = *(v129 + 72);
              v133 = *(v129 + 80);
              v135 = *(v129 + 88);
              v134 = *(v129 + 96);
              swift_unknownObjectRetain();
              v136 = specialized Rope.subscript.getter(v285, v130, v131, v132, v133, v135, v134);
              v138 = v137;
              v140 = v139;
              result = swift_unknownObjectRelease();
              v141 = v136 + (v286.i64[0] >> 11);
              if (__OFADD__(v136, v286.i64[0] >> 11))
              {
                goto LABEL_89;
              }

              LODWORD(v285) = v63 < v286.i64[0] >> 10;
              if ((v64 >> 11) < v141)
              {
                v141 = v64 >> 11;
              }

              v142 = *(v129 + 40);
              v314 = *(v129 + 24);
              v315 = v142;
              v316 = *(v129 + 56);
              v143 = v266;
              if (__OFSUB__(v141, v279 >> 11))
              {
                goto LABEL_91;
              }

              swift_unknownObjectRetain();
              v144 = BigString.UTF8View.index(_:offsetBy:)();
              v262 = v145;
              v263 = v144;
              v260 = v147;
              v261 = v146;
              swift_unknownObjectRelease();
              v264 = v129;

              outlined destroy of AttributedString.Runs(v283);
              v148 = v278.i64[0];
              outlined init with copy of FloatingPointRoundingRule?(v282, v278.i64[0], &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd);
              v149 = *(v143 + 1);
              v300 = *v143;
              v301 = v149;
              v302 = v143[4];
              v267 = v138;

              v150 = v140;

              specialized AttributedString.Runs.AttributesSlice1.index(after:)(&v300, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMR, &v287);
              result = outlined destroy of TermOfAddress?(v148, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
              v151 = v287.i64[0];
              v152 = v265;
              if (v287.i64[0] >> 10 < *v143 >> 10)
              {
                goto LABEL_93;
              }

              v153 = *v143;
              v154 = vdup_n_s32(v285);
              v155.i64[0] = v154.u32[0];
              v155.i64[1] = v154.u32[1];
              v156 = vcltzq_s64(vshlq_n_s64(v155, 0x3FuLL));
              v157 = vbslq_s8(v156, v275, v280);
              v158 = vbslq_s8(v156, v286, v284);
              v159 = v287.i64[1];
              v160 = v288.i64[0];
              v278.i64[0] = v287.i64[0];
              v161 = v288.u64[1];
              v162 = *v289;
              v276 = v287.i64[1];
              v274 = v288.u64[1];
              v275.i64[0] = v288.i64[0];
              v163 = *v289;
LABEL_79:
              v239 = v267;
              v287.i64[0] = v267;
              v287.i64[1] = v150;
              v288 = v158;
              *v289 = v157;
              *&v289[16] = v263;
              v290.i64[0] = v262;
              v290.i64[1] = v261;
              v291 = v260;
              v292 = v264;
              v240 = *(v143 + 1);
              v285 = *(v143 + 3);
              v286 = v240;
              *v143 = v151;
              v143[1] = v159;
              v143[2] = v160;
              v143[3] = v161;
              v143[4] = v162;
              v241 = _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV018LanguageIdentifierD0O_Tt0g5Tf4x_n(v239);
              v243 = v242;
              outlined destroy of AttributedString.Runs.Run(&v287);

              *v152 = v241;
              *(v152 + 1) = v243;
              *(v152 + 2) = v153;
              v244 = v286;
              *(v152 + 40) = v285;
              *(v152 + 24) = v244;
              v245 = v276;
              *(v152 + 7) = v278.i64[0];
              *(v152 + 8) = v245;
              v246 = v274;
              *(v152 + 9) = v275.i64[0];
              *(v152 + 10) = v246;
              *(v152 + 11) = v163;
              return result;
            }

            v60 = v61 + 1;
            v61 = v58;
          }

          v58 = v61;
          if (v60 >= v61)
          {
            goto LABEL_81;
          }
        }

        goto LABEL_85;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
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
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized AttributedString.Runs.AttributesSlice1.index(after:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v263 = a3;
  v6 = v4;
  v235 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v219 - v10;
  v12 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v14 = a1[3];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  *(&v256 + 1) = *&v6[*(result + 36)];
  v250 = *(*(&v256 + 1) + 16);
  if (!v250)
  {
    goto LABEL_174;
  }

  v247 = *&v6[*(result + 40)];
  v17 = v11;
  v18 = v13;
  v19 = *v6;
  v243 = v14;
  v244 = v12;
  v239 = v18;
  v240 = v15;
  AttributedString.Guts.findRun(at:)(v12, v14, &v282);
  v245 = v284;
  v246 = v283;
  v20 = v285;
  v241 = v282;
  v242 = v286;
  v230 = v288;
  v231 = v287;
  v228 = v289;
  v229 = *(&v288 + 1);
  v21 = *(type metadata accessor for AttributedString.Runs() + 24);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v262 = v21;
  RangeSet.ranges.getter();
  v22 = RangeSet.Ranges.count.getter();
  v23 = *(v9 + 8);
  v259 = v17;
  v260 = v9 + 8;
  v263 = v23;
  result = v23(v17, v8);
  if (v22 < 1)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v24 = 0;
  v25 = v244 >> 10;
  v264 = v6;
  while (1)
  {
    if (__OFADD__(v24, v22))
    {
      __break(1u);
LABEL_170:
      __break(1u);
      goto LABEL_171;
    }

    v15 = (v24 + v22) / 2;
    v26 = v259;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    result = (v263)(v26, v8);
    if (v25 >= v282 >> 10)
    {
      break;
    }

LABEL_4:
    v22 = v15;
    if (v24 >= v15)
    {
      goto LABEL_167;
    }
  }

  v27 = v286;
  if (v25 >= v286 >> 10)
  {
    v24 = v15 + 1;
    v15 = v22;
    goto LABEL_4;
  }

  v238 = v286 >> 10;
  v236 = v287;
  v237 = v288;
  v28 = v247;
  v29 = *(v247 + 16);
  v249 = v19;
  v232 = v286;
  v233 = v25;
  v225 = v8;
  if (v29 == 1)
  {
    result = specialized Set.contains(_:)(0, 1, v247);
    if ((result & 1) == 0)
    {
      v32 = v19[3];
      v257 = v19[4];
      v258 = v32;
      v33 = v19[5];
      *&v256 = v19[6];
      *(&v256 + 1) = v33;
      v34 = v19[7];
      v254 = v19[8];
      v255 = v34;
      v35 = v243;
      v36 = v244;
      *&v295 = v244;
      *(&v295 + 1) = v239;
      *&v296 = v240;
      *(&v296 + 1) = v243;
      *&v297 = v27;
      v38 = v236;
      v37 = v237;
      *(&v297 + 1) = v236;
      v298 = v237;
      v39 = *(&v237 + 1);
      swift_unknownObjectRetain();
      v40 = specialized Set.contains(_:)(0, 0, v28);
      v41 = v37;
      v42 = v36;
      v43 = v258;
      if (v40)
      {
        *&v315 = v258;
        *(&v315 + 1) = v257;
        *&v316 = *(&v256 + 1);
        *(&v316 + 1) = v256;
        *&v317 = v255;
        *(&v317 + 1) = v254;
        BigString.UTF8View.subscript.getter();
        v270 = v42;
        v271 = v239;
        v272 = v240;
        v273 = v35;
        v274 = v42;
        v275 = v239;
        v276 = v240;
        v277 = v35;
        specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v270, &v282);
        result = outlined destroy of BigSubstring.UTF8View(&v300);
        v27 = v232;
        v38 = v236;
        v39 = *(&v237 + 1);
        v41 = v237;
        if (*(&v288 + 1) != 2)
        {
          v27 = v286;
          if (v25 > v286 >> 10)
          {
            goto LABEL_187;
          }

          v38 = v287;
          v39 = *(&v288 + 1);
          v41 = v288;
          v35 = v243;
        }
      }

      *&v265 = v42;
      *(&v265 + 1) = v239;
      *&v266 = v240;
      *(&v266 + 1) = v35;
      *&v267 = v27;
      *(&v267 + 1) = v38;
      v252 = v41;
      v253 = v38;
      *&v268 = v41;
      *(&v268 + 1) = v39;
      v44 = v247;
      if (specialized Collection<>._containsScalarConstraint.getter(v247))
      {
        v45 = v44 + 56;
        v46 = 1 << *(v44 + 32);
        v47 = -1;
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        v48 = v47 & *(v44 + 56);
        v49 = (v46 + 63) >> 6;

        v50 = 0;
        v251 = MEMORY[0x1E69E7CC0];
        while (v48)
        {
LABEL_28:
          v52 = __clz(__rbit64(v48));
          v48 &= v48 - 1;
          v53 = (*(v247 + 48) + ((v50 << 10) | (16 * v52)));
          v54 = v53[1];
          if (v54 >= 2)
          {
            result = specialized Collection.first.getter(*v53, v54);
            if ((result & 0x100000000) == 0)
            {
              v250 = result;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v251 + 2) + 1, 1, v251);
                v251 = result;
              }

              v55 = v250;
              v57 = *(v251 + 2);
              v56 = *(v251 + 3);
              v58 = v57 + 1;
              if (v57 >= v56 >> 1)
              {
                v248 = v57 + 1;
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v251);
                v58 = v248;
                v251 = result;
                v55 = v250;
              }

              v59 = v251;
              *(v251 + 2) = v58;
              *&v59[4 * v57 + 32] = v55;
            }
          }
        }

        while (1)
        {
          v51 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_172;
          }

          if (v51 >= v49)
          {

            v310 = v43;
            v311 = v257;
            *&v312 = *(&v256 + 1);
            *(&v312 + 1) = v256;
            v313 = v255;
            v314 = v254;
            BigString.UnicodeScalarView.subscript.getter();
            v183 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v251);
            v185 = v184;
            v187 = v186;
            v189 = v188;

            swift_unknownObjectRelease();
            result = outlined destroy of BigSubstring.UnicodeScalarView(&v282);
            if (v189 == 2)
            {
              goto LABEL_137;
            }

            if (v233 <= v183 >> 10)
            {
              v27 = v183;
              v252 = v187;
              v253 = v185;
              v39 = v189;
              goto LABEL_137;
            }

            goto LABEL_188;
          }

          v48 = *(v45 + 8 * v51);
          ++v50;
          if (v48)
          {
            v50 = v51;
            goto LABEL_28;
          }
        }
      }

      result = swift_unknownObjectRelease();
LABEL_137:
      if (v238 == v27 >> 10)
      {
        v146 = v259;
        RangeSet.ranges.getter();
        v177 = v225;
        v190 = RangeSet.Ranges.count.getter();
        result = (v263)(v146, v177);
        v179 = v190 - 1;
        v149 = v235;
        if (__OFSUB__(v190, 1))
        {
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

LABEL_139:
        v191 = v249;
        if (v15 == v179)
        {
          v192 = v249[2];
          v194 = v236;
          v193 = v237;
          *v149 = v232;
          v149[1] = v194;
          *(v149 + 1) = __PAIR128__(*(&v237 + 1), v193);
        }

        else
        {
          RangeSet.ranges.getter();
          RangeSet.Ranges.subscript.getter();
          result = (v263)(v146, v177);
          v192 = v191[2];
          v195 = v279;
          *v149 = v278;
          *(v149 + 1) = v195;
        }

        v149[4] = v192;
        return result;
      }

      v180 = v249[2];
      v181 = v235;
      v196 = v252;
      v197 = v253;
      *v235 = v27;
      v181[1] = v197;
      v181[2] = v196;
      v181[3] = v39;
LABEL_166:
      v181[4] = v180;
      return result;
    }
  }

  v30 = *(v264 + 15);
  if (v20 == v30)
  {
    v31 = *(v264 + 22);
    if (*(v264 + 26) == 2)
    {
      if (v31 != 2)
      {
LABEL_89:
        v234 = v241;
        goto LABEL_95;
      }
    }

    else if (v31 == 2 || (*(v264 + 19) ^ *(v264 + 23)) >= 1024)
    {
      goto LABEL_89;
    }
  }

  if (v20 >= v30)
  {
    goto LABEL_180;
  }

  v226 = *(v264 + 15);
  v60 = v19[9];
  v61 = v19[10];
  v62 = v19[11];
  v63 = v19[12];
  v258 = v20;
  swift_unknownObjectRetain();
  v64 = v241;
  v65 = v245;
  v66 = v246;
  specialized Rope.subscript.getter(v241, v246, v245, v60, v61, v62, v63);
  v248 = v67;
  v223 = v68;
  result = swift_unknownObjectRelease();
  v69 = v19[9];
  v70 = v258 + 1;
  v224 = *(&v256 + 1) + 40;
  v71 = v19[12];
  v282 = v64;
  v283 = v66;
  v284 = v65;
  while (2)
  {
    if (v64 != v71)
    {
      goto LABEL_176;
    }

    v245 = v65;
    v234 = v71;
    if (v65)
    {
      v72 = *(v65 + 24 * ((v246 >> ((4 * *(v65 + 18) + 8) & 0x3C)) & 0xF) + 24);
      v73 = v242 + v72;
      if (__OFADD__(v242, v72))
      {
        goto LABEL_181;
      }

      v74 = v264;
      if (v69)
      {
        v75 = v70;
        result = swift_unknownObjectRetain();
        goto LABEL_46;
      }

LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
      goto LABEL_179;
    }

    v75 = v70;
    swift_unknownObjectRetain();
    v76 = specialized Rope._Node.subscript.getter(v246, v69);

    v77 = __OFADD__(v242, v76);
    v73 = v242 + v76;
    if (v77)
    {
      goto LABEL_183;
    }

    v74 = v264;
    if (!v69)
    {
      goto LABEL_175;
    }

LABEL_46:
    if (v246 >= (((-15 << ((4 * *(v69 + 18) + 8) & 0x3C)) - 1) & *(v69 + 18) | (*(v69 + 16) << ((4 * *(v69 + 18) + 8) & 0x3C))))
    {
      goto LABEL_175;
    }

    v222 = v73;
    if (v245)
    {
      v78 = (4 * *(v245 + 18) + 8) & 0x3C;
      v79 = ((v246 >> v78) & 0xF) + 1;
      if (v79 < *(v245 + 16))
      {
        result = swift_unknownObjectRelease();
        v80 = (v79 << v78) | ((-15 << v78) - 1) & v246;
        goto LABEL_52;
      }
    }

    if (specialized Rope._Node.formSuccessor(of:)(&v282, v69))
    {
      result = swift_unknownObjectRelease();
      v80 = v283;
LABEL_52:
      v81 = v284;
      v82 = v282;
    }

    else
    {
      v83 = *(v69 + 18);
      v84 = *(v69 + 16);
      result = swift_unknownObjectRelease();
      v81 = 0;
      v80 = ((-15 << ((4 * v83 + 8) & 0x3C)) - 1) & v83 | (v84 << ((4 * v83 + 8) & 0x3C));
      v82 = v234;
    }

    if (v226 < v75)
    {
      break;
    }

    if (v75 != v226)
    {
      goto LABEL_61;
    }

    v85 = *(v74 + 22);
    if (*(v74 + 26) == 2)
    {
      if (v85 == 2)
      {
        break;
      }

      goto LABEL_61;
    }

    if (v85 == 2 || (*(v74 + 19) ^ *(v74 + 23)) >= 1024)
    {
LABEL_61:
      if (v82 != v19[12])
      {
        goto LABEL_177;
      }

      v220 = v81;
      v221 = v75;
      v241 = v82;
      v219 = v80;
      if (v81)
      {
        v86 = v81 + 24 * ((v80 >> ((4 * *(v81 + 18) + 8) & 0x3C)) & 0xF);
        v87 = *(v86 + 40);
        v253 = *(v86 + 32);

        v227 = v87;
      }

      else
      {
        v88 = v19[9];
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v80, v88);
        v253 = v89;
        v227 = v90;
        result = swift_unknownObjectRelease();
      }

      v91 = 0;
      v92 = v224;
      v93 = v248;
      do
      {
        if (v91 >= *(*(&v256 + 1) + 16))
        {
          goto LABEL_170;
        }

        v257 = v92;
        v258 = v91;
        v95 = *(v92 - 1);
        v94 = *v92;
        if (*(v93 + 16))
        {

          v96 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v94);
          if (v97)
          {
            outlined init with copy of AttributedString._AttributeValue(*(v93 + 56) + 72 * v96, &v300);
          }

          else
          {
            v304 = 0;
            v302 = 0u;
            v303 = 0u;
            v300 = 0u;
            v301 = 0u;
          }
        }

        else
        {
          v304 = 0;
          v302 = 0u;
          v303 = 0u;
          v300 = 0u;
          v301 = 0u;
        }

        if (v253[2])
        {
          v98 = v19;
          v99 = v253;
          v100 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v94);
          v102 = v101;

          if (v102)
          {
            outlined init with copy of AttributedString._AttributeValue(v99[7] + 72 * v100, &v295);
          }

          else
          {
            v299 = 0;
            v297 = 0u;
            v298 = 0u;
            v295 = 0u;
            v296 = 0u;
          }

          v19 = v98;
        }

        else
        {

          v299 = 0;
          v297 = 0u;
          v298 = 0u;
          v295 = 0u;
          v296 = 0u;
        }

        outlined init with copy of FloatingPointRoundingRule?(&v300, &v282, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined init with copy of FloatingPointRoundingRule?(&v295, &v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (v285)
        {
          outlined init with copy of FloatingPointRoundingRule?(&v282, &v270, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          if (!*(&v291 + 1))
          {
            outlined destroy of TermOfAddress?(&v295, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            outlined destroy of TermOfAddress?(&v300, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            outlined destroy of AttributedString._AttributeValue(&v270);
LABEL_91:
            outlined destroy of TermOfAddress?(&v282, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_93:

            goto LABEL_94;
          }

          v267 = v292;
          v268 = v293;
          v269 = v294;
          v265 = v290;
          v266 = v291;
          v103 = v273;
          v252 = v274;
          v251 = __swift_project_boxed_opaque_existential_1(&v270, v273);
          v104 = __swift_project_boxed_opaque_existential_1(&v265, *(&v266 + 1));
          *&v256 = &v219;
          v105 = *(v103 - 8);
          MEMORY[0x1EEE9AC00](v104);
          v107 = &v219 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
          v255 = &v219;
          v109 = MEMORY[0x1EEE9AC00](v108);
          (*(v111 + 16))(&v219 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0), v109);
          v112 = type metadata accessor for Optional();
          v254 = &v219;
          v113 = *(v112 - 8);
          MEMORY[0x1EEE9AC00](v112);
          v115 = &v219 - v114;
          if ((swift_dynamicCast() & 1) == 0)
          {
            outlined destroy of TermOfAddress?(&v295, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            outlined destroy of TermOfAddress?(&v300, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            (*(v105 + 56))(v115, 1, 1, v103);
            (*(v113 + 8))(v115, v112);
            outlined destroy of AttributedString._AttributeValue(&v265);
            outlined destroy of AttributedString._AttributeValue(&v270);
            outlined destroy of TermOfAddress?(&v282, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            v19 = v249;
            goto LABEL_93;
          }

          (*(v105 + 56))(v115, 0, 1, v103);
          (*(v105 + 32))(v107, v115, v103);
          v116 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v105 + 8))(v107, v103);
          outlined destroy of TermOfAddress?(&v295, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v300, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v265);
          outlined destroy of AttributedString._AttributeValue(&v270);
          result = outlined destroy of TermOfAddress?(&v282, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v93 = v248;
          v19 = v249;
          if ((v116 & 1) == 0)
          {
            goto LABEL_93;
          }
        }

        else
        {
          outlined destroy of TermOfAddress?(&v295, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v300, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          if (*(&v291 + 1))
          {
            goto LABEL_91;
          }

          result = outlined destroy of TermOfAddress?(&v282, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        }

        v91 = (v258 + 1);
        v92 = v257 + 2;
      }

      while (v250 != (v258 + 1));

      v69 = v19[9];
      v71 = v19[12];
      v242 = v222;
      v64 = v241;
      v282 = v241;
      v283 = v219;
      v65 = v220;
      v246 = v219;
      v284 = v220;
      v70 = v221 + 1;
      if (!__OFADD__(v221, 1))
      {
        continue;
      }

      __break(1u);
      goto LABEL_89;
    }

    break;
  }

LABEL_168:

LABEL_94:

LABEL_95:
  v117 = v19[9];
  v118 = v19[10];
  v119 = v19[11];
  v120 = v19[12];
  swift_unknownObjectRetain();
  v121 = specialized Rope.subscript.getter(v234, v246, v245, v117, v118, v119, v120);
  swift_unknownObjectRelease();

  if (__OFADD__(v242, v121))
  {
    goto LABEL_178;
  }

  v122 = *(v19 + 5);
  v315 = *(v19 + 3);
  v316 = v122;
  v317 = *(v19 + 7);
  if (__OFSUB__(v242 + v121, v231 >> 11))
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  swift_unknownObjectRetain();
  v123 = BigString.UTF8View.index(_:offsetBy:)();
  v125 = v124;
  v127 = v126;
  v129 = v128;
  swift_unknownObjectRelease();
  v130 = v123 >> 10;
  result = v19[3];
  v132 = v19[5];
  v131 = v19[6];
  v255 = v19[4];
  *&v256 = v132;
  *(&v256 + 1) = v131;
  v133 = v19[8];
  v257 = v19[7];
  v258 = v133;
  if (v123 >> 10 >= v238)
  {
    v142 = v243;
    v143 = v244;
    *&v295 = v244;
    v144 = v239;
    v145 = v240;
    *(&v295 + 1) = v239;
    *&v296 = v240;
    *(&v296 + 1) = v243;
    v146 = v232;
    *&v297 = v232;
    v147 = v236;
    v148 = v237;
    *(&v297 + 1) = v236;
    v298 = v237;
    v149 = *(&v237 + 1);
    v254 = result;
    swift_unknownObjectRetain();
    v150 = specialized Set.contains(_:)(0, 0, v247);
    v151 = v147;
    v152 = v233;
    if (v150)
    {
      v310 = v254;
      v311 = v255;
      v312 = v256;
      v313 = v257;
      v314 = v258;
      BigString.UTF8View.subscript.getter();
      v270 = v143;
      v271 = v144;
      v272 = v145;
      v273 = v243;
      v274 = v143;
      v275 = v144;
      v276 = v145;
      v277 = v243;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v270, &v282);
      v142 = v243;
      result = outlined destroy of BigSubstring.UTF8View(&v300);
      v146 = v232;
      v151 = v236;
      v149 = *(&v237 + 1);
      v148 = v237;
      if (*(&v288 + 1) != 2)
      {
        v146 = v286;
        if (v152 > v286 >> 10)
        {
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

        v151 = v287;
        v149 = *(&v288 + 1);
        v148 = v288;
        v144 = v239;
        v143 = v244;
      }
    }

    *&v265 = v143;
    *(&v265 + 1) = v144;
    *&v266 = v145;
    *(&v266 + 1) = v142;
    *&v267 = v146;
    *(&v267 + 1) = v151;
    v253 = v151;
    *&v268 = v148;
    *(&v268 + 1) = v149;
    v153 = v247;
    if (specialized Collection<>._containsScalarConstraint.getter(v247))
    {
      v154 = v153 + 56;
      v155 = 1 << *(v153 + 32);
      v156 = -1;
      if (v155 < 64)
      {
        v156 = ~(-1 << v155);
      }

      v157 = v156 & *(v153 + 56);
      v158 = (v155 + 63) >> 6;

      v159 = 0;
      v160 = MEMORY[0x1E69E7CC0];
      while (v157)
      {
LABEL_117:
        v162 = __clz(__rbit64(v157));
        v157 &= v157 - 1;
        v163 = (*(v247 + 48) + ((v159 << 10) | (16 * v162)));
        v164 = v163[1];
        if (v164 >= 2)
        {
          result = specialized Collection.first.getter(*v163, v164);
          if ((result & 0x100000000) == 0)
          {
            v252 = result;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v160 + 16) + 1, 1, v160);
              v160 = result;
            }

            v166 = *(v160 + 16);
            v165 = *(v160 + 24);
            v167 = (v166 + 1);
            v168 = v252;
            if (v166 >= v165 >> 1)
            {
              v251 = (v166 + 1);
              v169 = v160;
              v170 = v166;
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v165 > 1), v166 + 1, 1, v169);
              v167 = v251;
              v168 = v252;
              v166 = v170;
              v160 = result;
            }

            *(v160 + 16) = v167;
            *(v160 + 4 * v166 + 32) = v168;
          }
        }
      }

      while (1)
      {
        v161 = v159 + 1;
        if (__OFADD__(v159, 1))
        {
          break;
        }

        if (v161 >= v158)
        {

          v305 = v254;
          v306 = v255;
          v307 = v256;
          v308 = v257;
          v309 = v258;
          BigString.UnicodeScalarView.subscript.getter();
          v171 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v160);
          v258 = v172;
          v174 = v173;
          v176 = v175;

          swift_unknownObjectRelease();
          result = outlined destroy of BigSubstring.UnicodeScalarView(&v282);
          if (v176 == 2)
          {
            goto LABEL_128;
          }

          if (v233 <= v171 >> 10)
          {
            v146 = v171;
            v253 = v258;
            v148 = v174;
            v149 = v176;
            goto LABEL_128;
          }

          goto LABEL_186;
        }

        v157 = *(v154 + 8 * v161);
        ++v159;
        if (v157)
        {
          v159 = v161;
          goto LABEL_117;
        }
      }

LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    result = swift_unknownObjectRelease();
LABEL_128:
    if (v238 == v146 >> 10)
    {
      v146 = v259;
      RangeSet.ranges.getter();
      v177 = v225;
      v178 = RangeSet.Ranges.count.getter();
      result = (v263)(v146, v177);
      v179 = v178 - 1;
      v149 = v235;
      if (!__OFSUB__(v178, 1))
      {
        goto LABEL_139;
      }

      __break(1u);
    }

    v180 = v249[2];
    v181 = v235;
    v182 = v253;
    *v235 = v146;
    v181[1] = v182;
    v181[2] = v148;
    v181[3] = v149;
    goto LABEL_166;
  }

  v134 = v233;
  v135 = v247;
  v136 = v243;
  v137 = v239;
  if (v130 < v233)
  {
    goto LABEL_182;
  }

  *&v295 = v244;
  *(&v295 + 1) = v239;
  *&v296 = v240;
  *(&v296 + 1) = v243;
  *&v297 = v123;
  v138 = v125;
  *(&v297 + 1) = v125;
  *&v298 = v127;
  *(&v298 + 1) = v129;
  if (v233 == v130)
  {
LABEL_165:
    v180 = v249[2];
    v181 = v235;
    *v235 = v123;
    v181[1] = v138;
    v181[2] = v127;
    v181[3] = v129;
    goto LABEL_166;
  }

  v139 = result;
  swift_unknownObjectRetain();
  v140 = specialized Set.contains(_:)(0, 0, v135);
  v254 = v139;
  if ((v140 & 1) == 0)
  {
    v141 = v138;
LABEL_145:
    *&v265 = v244;
    *(&v265 + 1) = v137;
    *&v266 = v240;
    *(&v266 + 1) = v136;
    *&v267 = v123;
    *(&v267 + 1) = v141;
    v138 = v141;
    *&v268 = v127;
    *(&v268 + 1) = v129;
    if (specialized Collection<>._containsScalarConstraint.getter(v135))
    {
      v198 = v135 + 56;
      v199 = 1 << *(v135 + 32);
      v200 = -1;
      if (v199 < 64)
      {
        v200 = ~(-1 << v199);
      }

      v201 = v200 & *(v135 + 56);
      v202 = (v199 + 63) >> 6;

      v203 = 0;
      v264 = MEMORY[0x1E69E7CC0];
      while (v201)
      {
LABEL_154:
        v205 = __clz(__rbit64(v201));
        v201 &= v201 - 1;
        v206 = (*(v135 + 48) + ((v203 << 10) | (16 * v205)));
        v207 = v206[1];
        if (v207 >= 2)
        {
          result = specialized Collection.first.getter(*v206, v207);
          if ((result & 0x100000000) == 0)
          {
            v263 = result;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v264 + 2) + 1, 1, v264);
              v264 = result;
            }

            v208 = v263;
            v210 = *(v264 + 2);
            v209 = *(v264 + 3);
            v211 = v210 + 1;
            if (v210 >= v209 >> 1)
            {
              v262 = v210 + 1;
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v209 > 1), v210 + 1, 1, v264);
              v211 = v262;
              v208 = v263;
              v264 = result;
            }

            v212 = v264;
            *(v264 + 2) = v211;
            *&v212[4 * v210 + 32] = v208;
            v135 = v247;
          }
        }
      }

      while (1)
      {
        v204 = v203 + 1;
        if (__OFADD__(v203, 1))
        {
          goto LABEL_173;
        }

        if (v204 >= v202)
        {

          v310 = v254;
          v311 = v255;
          v312 = v256;
          v313 = v257;
          v314 = v258;
          BigString.UnicodeScalarView.subscript.getter();
          v213 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v264);
          v263 = v214;
          v216 = v215;
          v218 = v217;

          swift_unknownObjectRelease();
          result = outlined destroy of BigSubstring.UnicodeScalarView(&v282);
          if (v218 == 2)
          {
            goto LABEL_165;
          }

          if (v233 <= v213 >> 10)
          {
            v123 = v213;
            v138 = v263;
            v127 = v216;
            v129 = v218;
            goto LABEL_165;
          }

          goto LABEL_190;
        }

        v201 = *(v198 + 8 * v204);
        ++v203;
        if (v201)
        {
          v203 = v204;
          goto LABEL_154;
        }
      }
    }

    result = swift_unknownObjectRelease();
    goto LABEL_165;
  }

  *&v278 = v139;
  *(&v278 + 1) = v255;
  v279 = v256;
  v280 = v257;
  v281 = v258;
  BigString.UTF8View.subscript.getter();
  v270 = v244;
  v271 = v137;
  v272 = v240;
  v273 = v243;
  v274 = v244;
  v275 = v137;
  v276 = v240;
  v277 = v243;
  specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v270, &v282);
  v136 = v243;
  result = outlined destroy of BigSubstring.UTF8View(&v300);
  v141 = v138;
  if (*(&v288 + 1) == 2)
  {
    goto LABEL_145;
  }

  v123 = v286;
  if (v134 <= v286 >> 10)
  {
    v141 = v287;
    v129 = *(&v288 + 1);
    v127 = v288;
    goto LABEL_145;
  }

LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
  return result;
}

uint64_t specialized AttributedString.Runs.AttributesSlice1.index(after:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  return specialized AttributedString.Runs.AttributesSlice1.index(after:)(a1, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021InflectionAlternativeG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021InflectionAlternativeG0OGMR, a2);
}

{
  return specialized AttributedString.Runs.AttributesSlice1.index(after:)(a1, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OGMR, a2);
}

uint64_t specialized AttributedString.Runs.AttributesSlice1.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v193 - v10;
  v12 = *(a3 + 16);
  v273 = *a3;
  v274 = v12;
  *&v275 = *(a3 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021InflectionAlternativeG0OGMd);
  v14 = *(v3 + *(v13 + 36));
  v229 = *(v3 + *(v13 + 40));
  AttributedString.Runs._slicedRunBoundary(roundingDown:attributeNames:constraints:)(&v256, &v273, v14, v229, &v268);
  v237 = v14;
  v231 = v14[2];
  if (!v231)
  {
    goto LABEL_175;
  }

  v210 = a2;
  v214 = *(&v268 + 1);
  v215 = v268;
  v212 = a1;
  v213 = v269;
  v211 = v256;
  v209 = v257;
  v208 = v258;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = *v3;
  v225 = *a3;
  v219 = v17;
  v220 = v15;
  v222 = v16;
  v228 = v18;
  AttributedString.Guts.findRun(at:)(v225, v17, &v256);
  v226 = *(&v256 + 1);
  v223 = v257;
  v224 = v256;
  v236 = *(&v257 + 1);
  v221 = v258;
  v205 = v260;
  v206 = v259;
  v203 = v262;
  v204 = v261;
  v19 = *(type metadata accessor for AttributedString.Runs() + 24);
  a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v240 = v4;
  v238 = v19;
  RangeSet.ranges.getter();
  v3 = v11;
  a3 = RangeSet.Ranges.count.getter();
  a2 = *(v9 + 8);
  v9 += 8;
  (a2)(v11, v8);
  if (a3 < 1)
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v20 = 0;
  v239 = v225 >> 10;
  while (1)
  {
    if (__OFADD__(v20, a3))
    {
      goto LABEL_170;
    }

    v21 = (v20 + a3) / 2;
    RangeSet.ranges.getter();
    v3 = v11;
    RangeSet.Ranges.subscript.getter();
    result = (a2)(v11, v8);
    if (v239 >= v256 >> 10)
    {
      break;
    }

LABEL_4:
    a3 = v21;
    if (v20 >= v21)
    {
      goto LABEL_169;
    }
  }

  v3 = v258;
  if (v239 >= v258 >> 10)
  {
    v20 = v21 + 1;
    v21 = a3;
    goto LABEL_4;
  }

  v216 = v258 >> 10;
  a3 = v259;
  v23 = v260;
  v24 = v261;
  v25 = v229;
  v26 = *(v229 + 16);
  v217 = v261;
  v218 = v258;
  if (v26 == 1)
  {
    result = specialized Set.contains(_:)(0, 1, v229);
    if ((result & 1) == 0)
    {
      v29 = v24;
      v31 = v228[3];
      v30 = v228[4];
      v32 = v228[5];
      v33 = v228[6];
      v34 = v228[7];
      v237 = v228[8];
      v238 = v34;
      v246 = v225;
      v247 = v220;
      v35 = v222;
      v248 = v222;
      v249 = v219;
      v250 = v3;
      v251 = a3;
      v252 = v23;
      v253 = v29;
      swift_unknownObjectRetain();
      v36 = specialized Set.contains(_:)(0, 0, v25);
      v235 = v32;
      v236 = v30;
      v240 = v31;
      v234 = v33;
      if (v36)
      {
        *&v298 = v31;
        *(&v298 + 1) = v30;
        *&v299 = v32;
        *(&v299 + 1) = v33;
        *&v300 = v238;
        *(&v300 + 1) = v237;
        BigString.UTF8View.subscript.getter();
        *&v241 = v225;
        *(&v241 + 1) = v220;
        *&v242 = v35;
        *(&v242 + 1) = v219;
        *&v243 = v225;
        *(&v243 + 1) = v220;
        *&v244 = v35;
        *(&v244 + 1) = v219;
        specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v241, &v256);
        v3 = v218;
        result = outlined destroy of BigSubstring.UTF8View(&v273);
        if (v261 != 2)
        {
          v3 = v258;
          if (v239 > v258 >> 10)
          {
            goto LABEL_192;
          }

          a3 = v259;
          v23 = v260;
          v217 = v261;
        }
      }

      v284 = v225;
      v285 = v220;
      v286 = v222;
      v287 = v219;
      v288 = v3;
      v289 = a3;
      a1 = v217;
      v290 = v23;
      v291 = v217;
      if (specialized Collection<>._containsScalarConstraint.getter(v25))
      {
        v201 = a3;
        v202 = v23;
        v218 = v3;
        v9 = v25 + 56;
        v37 = 1 << *(v25 + 32);
        v38 = -1;
        if (v37 < 64)
        {
          v38 = ~(-1 << v37);
        }

        a2 = v38 & *(v25 + 56);
        v3 = (v37 + 63) >> 6;

        v39 = 0;
        a3 = MEMORY[0x1E69E7CC0];
        v40 = v235;
        a1 = v236;
        v11 = v240;
        v41 = v234;
        while (1)
        {
          if (a2)
          {
            goto LABEL_28;
          }

          do
          {
            v42 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_173;
            }

            if (v42 >= v3)
            {

              v292 = v11;
              v293 = a1;
              v294 = v40;
              v295 = v41;
              v296 = v238;
              v297 = v237;
              BigString.UnicodeScalarView.subscript.getter();
              v172 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(a3);
              v174 = v173;
              v176 = v175;
              v178 = v177;

              swift_unknownObjectRelease();
              result = outlined destroy of BigSubstring.UnicodeScalarView(&v256);
              a1 = v217;
              v9 = v218;
              a3 = v201;
              v11 = v202;
              v115 = v228;
              if (v178 == 2)
              {
                goto LABEL_161;
              }

              if (v239 <= v172 >> 10)
              {
                v9 = v172;
                a3 = v174;
                v11 = v176;
                a1 = v178;
                goto LABEL_161;
              }

LABEL_193:
              __break(1u);
              goto LABEL_194;
            }

            a2 = *(v9 + 8 * v42);
            ++v39;
          }

          while (!a2);
          v39 = v42;
LABEL_28:
          v43 = __clz(__rbit64(a2));
          a2 &= a2 - 1;
          v44 = (*(v229 + 48) + ((v39 << 10) | (16 * v43)));
          v45 = v44[1];
          if (v45 >= 2)
          {
            v46 = specialized Collection.first.getter(*v44, v45);
            if ((v46 & 0x100000000) == 0)
            {
              v233 = v46;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a3 + 16) + 1, 1, a3);
              }

              v48 = *(a3 + 16);
              v47 = *(a3 + 24);
              v49 = (v48 + 1);
              v50 = v233;
              if (v48 >= v47 >> 1)
              {
                v232 = (v48 + 1);
                v51 = a3;
                v52 = v48;
                v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v51);
                v49 = v232;
                v50 = v233;
                v48 = v52;
                a3 = v53;
              }

              *(a3 + 16) = v49;
              *(a3 + 4 * v48 + 32) = v50;
            }
          }
        }
      }

      swift_unknownObjectRelease();
      v9 = v3;
      v11 = v23;
LABEL_160:
      v115 = v228;
      goto LABEL_161;
    }
  }

  v27 = *(v240 + 15);
  v201 = a3;
  v202 = v23;
  if (v236 == v27)
  {
    v28 = *(v240 + 22);
    if (*(v240 + 26) == 2)
    {
      if (v28 != 2)
      {
        goto LABEL_88;
      }
    }

    else if (v28 == 2 || (*(v240 + 19) ^ *(v240 + 23)) >= 1024)
    {
      goto LABEL_88;
    }
  }

  if (v236 >= v27)
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v199 = v27;
  v54 = v228;
  v55 = v228[9];
  v56 = v228[10];
  a3 = v228[11];
  v57 = v228[12];
  swift_unknownObjectRetain();
  v59 = v223;
  v58 = v224;
  v60 = v226;
  specialized Rope.subscript.getter(v224, v226, v223, v55, v56, a3, v57);
  v9 = v61;
  v197 = v62;
  result = swift_unknownObjectRelease();
  v63 = v58;
  v64 = v54[9];
  v65 = v236 + 1;
  v198 = v237 + 5;
  v66 = v54[12];
  *&v256 = v58;
  *(&v256 + 1) = v60;
  *&v257 = v59;
  v227 = v9;
  while (2)
  {
    if (v63 != v66)
    {
      goto LABEL_182;
    }

    v207 = v66;
    if (v59)
    {
      v67 = *(v59 + 24 * ((v226 >> ((4 * *(v59 + 18) + 8) & 0x3C)) & 0xF) + 24);
      v68 = v221 + v67;
      if (!__OFADD__(v221, v67))
      {
        if (v64)
        {
          v69 = v65;
          result = swift_unknownObjectRetain();
          goto LABEL_46;
        }

        goto LABEL_181;
      }

LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    v69 = v65;
    swift_unknownObjectRetain();
    v70 = specialized Rope._Node.subscript.getter(v226, v64);
    a3 = v71;

    v72 = __OFADD__(v221, v70);
    v68 = v221 + v70;
    if (v72)
    {
      goto LABEL_189;
    }

    if (!v64)
    {
      goto LABEL_181;
    }

LABEL_46:
    if (v226 >= (((-15 << ((4 * *(v64 + 18) + 8) & 0x3C)) - 1) & *(v64 + 18) | (*(v64 + 16) << ((4 * *(v64 + 18) + 8) & 0x3C))))
    {
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v196 = v68;
    v223 = v59;
    if (v59)
    {
      v73 = (4 * *(v59 + 18) + 8) & 0x3C;
      v74 = ((v226 >> v73) & 0xF) + 1;
      if (v74 < *(v59 + 16))
      {
        result = swift_unknownObjectRelease();
        v75 = (v74 << v73) | ((-15 << v73) - 1) & v226;
        goto LABEL_52;
      }
    }

    if (specialized Rope._Node.formSuccessor(of:)(&v256, v64))
    {
      result = swift_unknownObjectRelease();
      v75 = *(&v256 + 1);
LABEL_52:
      v76 = v257;
      v77 = v256;
    }

    else
    {
      v78 = *(v64 + 18);
      v79 = *(v64 + 16);
      result = swift_unknownObjectRelease();
      v76 = 0;
      v75 = ((-15 << ((4 * v78 + 8) & 0x3C)) - 1) & v78 | (v79 << ((4 * v78 + 8) & 0x3C));
      v77 = v207;
    }

    if (v199 < v69)
    {
LABEL_93:

      goto LABEL_94;
    }

    v195 = v69;
    v224 = v77;
    a2 = &v256;
    v11 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    a1 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    if (v69 == v199)
    {
      v80 = *(v240 + 22);
      if (*(v240 + 26) == 2)
      {
        v77 = v224;
        if (v80 == 2)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v77 = v224;
        if (v80 != 2)
        {
          v77 = v224;
          if ((*(v240 + 19) ^ *(v240 + 23)) < 1024)
          {
            goto LABEL_93;
          }
        }
      }
    }

    if (v77 != v228[12])
    {
      goto LABEL_183;
    }

    v193 = v75;
    v194 = v76;
    if (v76)
    {
      v81 = v76 + 24 * ((v75 >> ((4 * *(v76 + 18) + 8) & 0x3C)) & 0xF);
      v82 = *(v81 + 32);
      v3 = *(v81 + 40);

      v200 = v3;
    }

    else
    {
      v3 = v228[9];
      a3 = v228[11];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v75, v3);
      v82 = v83;
      v200 = v84;
      swift_unknownObjectRelease();
    }

    v85 = 0;
    v86 = v198;
    v230 = v82;
    do
    {
      if (v85 >= v237[2])
      {
        goto LABEL_171;
      }

      v87 = *(v86 - 1);
      a3 = *v86;
      v238 = v86;
      if (*(v9 + 16))
      {

        v3 = v9;
        v88 = specialized __RawDictionaryStorage.find<A>(_:)(v87, a3);
        if (v89)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v9 + 56) + 72 * v88, &v273);
          if (!*(v82 + 16))
          {
            goto LABEL_78;
          }
        }

        else
        {
          v277 = 0;
          v275 = 0u;
          v276 = 0u;
          v273 = 0u;
          v274 = 0u;
          if (!*(v82 + 16))
          {
LABEL_78:

            goto LABEL_79;
          }
        }
      }

      else
      {
        v277 = 0;
        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;

        if (!*(v82 + 16))
        {
          goto LABEL_78;
        }
      }

      v3 = specialized __RawDictionaryStorage.find<A>(_:)(v87, a3);
      v91 = v90;

      if (v91)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v82 + 56) + 72 * v3, &v268);
        goto LABEL_80;
      }

LABEL_79:
      v272 = 0;
      v270 = 0u;
      v271 = 0u;
      v268 = 0u;
      v269 = 0u;
LABEL_80:
      outlined init with copy of FloatingPointRoundingRule?(&v273, &v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined init with copy of FloatingPointRoundingRule?(&v268, &v263, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (*(&v257 + 1))
      {
        outlined init with copy of FloatingPointRoundingRule?(&v256, &v246, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (!*(&v264 + 1))
        {
          outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v246);
LABEL_90:
          outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_92:

          goto LABEL_93;
        }

        v243 = v265;
        v244 = v266;
        v245 = v267;
        v241 = v263;
        v242 = v264;
        v3 = v249;
        v233 = v250;
        v234 = v85;
        v232 = __swift_project_boxed_opaque_existential_1(&v246, v249);
        a3 = *(&v242 + 1);
        v92 = __swift_project_boxed_opaque_existential_1(&v241, *(&v242 + 1));
        v236 = &v193;
        v93 = *(v3 - 8);
        MEMORY[0x1EEE9AC00](v92);
        v95 = &v193 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
        v235 = &v193;
        v97 = MEMORY[0x1EEE9AC00](v96);
        (*(v99 + 16))(&v193 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0), v97);
        v100 = type metadata accessor for Optional();
        v101 = *(v100 - 8);
        MEMORY[0x1EEE9AC00](v100);
        v103 = &v193 - v102;
        if ((swift_dynamicCast() & 1) == 0)
        {
          outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v93 + 56))(v103, 1, 1, v3);
          (*(v101 + 8))(v103, v100);
          outlined destroy of AttributedString._AttributeValue(&v241);
          outlined destroy of AttributedString._AttributeValue(&v246);
          outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_92;
        }

        (*(v93 + 56))(v103, 0, 1, v3);
        (*(v93 + 32))(v95, v103, v3);
        v104 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v93 + 8))(v95, v3);
        v11 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        a1 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
        outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v241);
        outlined destroy of AttributedString._AttributeValue(&v246);
        outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v9 = v227;
        a2 = &v256;
        v82 = v230;
        v85 = v234;
        if ((v104 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v264 + 1))
        {
          goto LABEL_90;
        }

        outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      ++v85;
      v86 = v238 + 2;
    }

    while (v231 != v85);

    v64 = v228[9];
    v66 = v228[12];
    v221 = v196;
    v63 = v224;
    *&v256 = v224;
    *(&v256 + 1) = v193;
    v59 = v194;
    v226 = v193;
    *&v257 = v194;
    v65 = v195 + 1;
    if (!__OFADD__(v195, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_88:
  v207 = v224;
LABEL_94:
  v105 = v228;
  v106 = v228[9];
  v107 = v228[10];
  v109 = v228[11];
  v108 = v228[12];
  swift_unknownObjectRetain();
  v110 = specialized Rope.subscript.getter(v207, v226, v223, v106, v107, v109, v108);
  swift_unknownObjectRelease();

  if (__OFADD__(v221, v110))
  {
    goto LABEL_184;
  }

  v111 = *(v105 + 5);
  v298 = *(v105 + 3);
  v299 = v111;
  v300 = *(v105 + 7);
  if (__OFSUB__(v221 + v110, v206 >> 11))
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  swift_unknownObjectRetain();
  v9 = BigString.UTF8View.index(_:offsetBy:)();
  a3 = v112;
  v11 = v113;
  a1 = v114;
  result = swift_unknownObjectRelease();
  v115 = v228;
  v116 = v9 >> 10;
  v117 = v228[3];
  v118 = v228[5];
  v236 = v228[4];
  v237 = v118;
  v119 = v228[7];
  v238 = v228[6];
  v240 = v119;
  v120 = v228[8];
  if (v9 >> 10 >= v216)
  {
    v234 = v228[8];
    v141 = v225;
    v142 = v219;
    v143 = v220;
    v246 = v225;
    v247 = v220;
    v144 = v222;
    v248 = v222;
    v249 = v219;
    v145 = v217;
    a2 = v218;
    v250 = v218;
    v147 = v201;
    v146 = v202;
    v251 = v201;
    v252 = v202;
    v253 = v217;
    v148 = v117;
    swift_unknownObjectRetain();
    v149 = specialized Set.contains(_:)(0, 0, v229);
    v235 = v148;
    if (v149)
    {
      v292 = v148;
      v293 = v236;
      v294 = v237;
      v295 = v238;
      v296 = v240;
      v297 = v234;
      BigString.UTF8View.subscript.getter();
      *&v241 = v141;
      *(&v241 + 1) = v143;
      *&v242 = v222;
      *(&v242 + 1) = v142;
      *&v243 = v141;
      *(&v243 + 1) = v143;
      *&v244 = v222;
      *(&v244 + 1) = v142;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v241, &v256);
      v144 = v222;
      result = outlined destroy of BigSubstring.UTF8View(&v273);
      a2 = v218;
      if (v261 != 2)
      {
        a2 = v258;
        if (v239 > v258 >> 10)
        {
          goto LABEL_190;
        }

        v147 = v259;
        v146 = v260;
        v145 = v261;
      }
    }

    v284 = v225;
    v285 = v220;
    v286 = v144;
    v287 = v142;
    v288 = a2;
    v289 = v147;
    v290 = v146;
    v291 = v145;
    v150 = v229;
    if ((specialized Collection<>._containsScalarConstraint.getter(v229) & 1) == 0)
    {
      swift_unknownObjectRelease();
      v115 = v228;
      v165 = v216;
LABEL_143:
      if (a2 >> 10 == v165)
      {
        v9 = v218;
      }

      else
      {
        v9 = a2;
      }

      if (a2 >> 10 == v165)
      {
        a3 = v201;
      }

      else
      {
        a3 = v147;
      }

      if (a2 >> 10 == v165)
      {
        v11 = v202;
      }

      else
      {
        v11 = v146;
      }

      if (a2 >> 10 == v165)
      {
        a1 = v217;
      }

      else
      {
        a1 = v145;
      }

LABEL_161:
      a2 = v115[2];
      v180 = v115[9];
      v179 = v115[10];
      v181 = v115[11];
      v182 = v115[12];
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v215, v214, v213, v180, v179, v181, v182);
      v3 = v183;
      swift_unknownObjectRelease();
      if (one-time initialization token for name == -1)
      {
        if (!*(v3 + 16))
        {
          goto LABEL_177;
        }

        goto LABEL_163;
      }

LABEL_176:
      swift_once();
      if (!*(v3 + 16))
      {
        goto LABEL_177;
      }

LABEL_163:
      v184 = specialized __RawDictionaryStorage.find<A>(_:)(static AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute.name, unk_1EA7B25D8);
      if (v185)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v3 + 56) + 72 * v184, &v268);

        outlined init with copy of Hashable & Sendable(&v268, &v255);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
        result = swift_dynamicCast();
        if (!result)
        {
          goto LABEL_196;
        }

        result = outlined destroy of AttributedString._AttributeValue(&v268);
        *v212 = v254;
        goto LABEL_178;
      }

LABEL_177:

      *v212 = 0;
LABEL_178:
      if (v9 >> 10 >= v211 >> 10)
      {
        v192 = v210;
        *v210 = v211;
        v192[1] = v209;
        *(v192 + 4) = v208;
        *(v192 + 5) = v9;
        *(v192 + 6) = a3;
        *(v192 + 7) = v11;
        *(v192 + 8) = a1;
        *(v192 + 9) = a2;
        return result;
      }

      __break(1u);
      goto LABEL_181;
    }

    a3 = v150 + 56;
    v151 = 1 << *(v150 + 32);
    v152 = -1;
    if (v151 < 64)
    {
      v152 = ~(-1 << v151);
    }

    v3 = v152 & *(v150 + 56);
    v11 = ((v151 + 63) >> 6);

    a1 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v3)
    {
LABEL_132:
      v154 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v155 = (*(v229 + 48) + ((a1 << 10) | (16 * v154)));
      v156 = v155[1];
      if (v156 >= 2)
      {
        v157 = specialized Collection.first.getter(*v155, v156);
        if ((v157 & 0x100000000) == 0)
        {
          v233 = v157;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
          }

          v159 = *(v9 + 16);
          v158 = *(v9 + 24);
          v160 = (v159 + 1);
          v161 = v233;
          if (v159 >= v158 >> 1)
          {
            v232 = (v159 + 1);
            v162 = v9;
            v163 = v159;
            v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v158 > 1), v159 + 1, 1, v162);
            v160 = v232;
            v161 = v233;
            v159 = v163;
            v9 = v164;
          }

          *(v9 + 16) = v160;
          *(v9 + 4 * v159 + 32) = v161;
        }
      }
    }

    while (1)
    {
      v153 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if (v153 >= v11)
      {

        v278 = v235;
        v279 = v236;
        v280 = v237;
        v281 = v238;
        v282 = v240;
        v283 = v234;
        BigString.UnicodeScalarView.subscript.getter();
        v166 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v9);
        v240 = v167;
        v169 = v168;
        v171 = v170;

        swift_unknownObjectRelease();
        result = outlined destroy of BigSubstring.UnicodeScalarView(&v256);
        v115 = v228;
        v165 = v216;
        if (v171 == 2)
        {
          goto LABEL_143;
        }

        if (v239 <= v166 >> 10)
        {
          a2 = v166;
          v147 = v240;
          v146 = v169;
          v145 = v171;
          goto LABEL_143;
        }

        goto LABEL_191;
      }

      v3 = *(a3 + 8 * v153);
      ++a1;
      if (v3)
      {
        a1 = v153;
        goto LABEL_132;
      }
    }

LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v121 = v222;
  v122 = v220;
  v123 = v225;
  if (v116 < v239)
  {
    goto LABEL_188;
  }

  v246 = v225;
  v247 = v220;
  v248 = v222;
  v249 = v219;
  v250 = v9;
  v251 = a3;
  v252 = v11;
  v253 = a1;
  if (v239 == v116)
  {
    goto LABEL_161;
  }

  v124 = v117;
  swift_unknownObjectRetain();
  v125 = specialized Set.contains(_:)(0, 0, v229);
  v235 = v124;
  if ((v125 & 1) == 0 || (v292 = v124, v293 = v236, v294 = v237, v295 = v238, v296 = v240, v297 = v120, BigString.UTF8View.subscript.getter(), *&v241 = v123, *(&v241 + 1) = v122, *&v242 = v222, *(&v242 + 1) = v219, *&v243 = v123, *(&v243 + 1) = v122, *&v244 = v222, *(&v244 + 1) = v219, specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v241, &v256), v121 = v222, result = outlined destroy of BigSubstring.UTF8View(&v273), v261 == 2))
  {
LABEL_103:
    v284 = v123;
    v285 = v122;
    v286 = v121;
    v287 = v219;
    v288 = v9;
    v289 = a3;
    v290 = v11;
    v291 = a1;
    v3 = v229;
    if (specialized Collection<>._containsScalarConstraint.getter(v229))
    {
      v234 = v120;
      v126 = v3 + 56;
      v127 = 1 << *(v3 + 32);
      v128 = -1;
      if (v127 < 64)
      {
        v128 = ~(-1 << v127);
      }

      v129 = v128 & *(v3 + 56);
      a2 = (v127 + 63) >> 6;

      v130 = 0;
      v233 = MEMORY[0x1E69E7CC0];
      while (v129)
      {
LABEL_112:
        v132 = __clz(__rbit64(v129));
        v129 &= v129 - 1;
        v133 = (*(v229 + 48) + ((v130 << 10) | (16 * v132)));
        v134 = v133[1];
        if (v134 >= 2)
        {
          v135 = specialized Collection.first.getter(*v133, v134);
          if ((v135 & 0x100000000) == 0)
          {
            v232 = v135;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v233 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v233 + 2) + 1, 1, v233);
            }

            v136 = v232;
            v3 = *(v233 + 2);
            v137 = *(v233 + 3);
            v138 = v3 + 1;
            if (v3 >= v137 >> 1)
            {
              v231 = v3 + 1;
              v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v3 + 1, 1, v233);
              v138 = v231;
              v136 = v232;
              v233 = v140;
            }

            v139 = v233;
            *(v233 + 2) = v138;
            *&v139[4 * v3 + 32] = v136;
          }
        }
      }

      while (1)
      {
        v131 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          break;
        }

        if (v131 >= a2)
        {

          v278 = v235;
          v279 = v236;
          v280 = v237;
          v281 = v238;
          v282 = v240;
          v283 = v234;
          BigString.UnicodeScalarView.subscript.getter();
          v186 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v233);
          v188 = v187;
          v240 = v189;
          v191 = v190;

          swift_unknownObjectRelease();
          result = outlined destroy of BigSubstring.UnicodeScalarView(&v256);
          v115 = v228;
          if (v191 == 2)
          {
            goto LABEL_161;
          }

          if (v239 <= v186 >> 10)
          {
            v9 = v186;
            a3 = v188;
            v11 = v240;
            a1 = v191;
            goto LABEL_161;
          }

          goto LABEL_195;
        }

        v129 = *(v126 + 8 * v131);
        ++v130;
        if (v129)
        {
          v130 = v131;
          goto LABEL_112;
        }
      }

LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    swift_unknownObjectRelease();
    goto LABEL_160;
  }

  v9 = v258;
  if (v239 <= v258 >> 10)
  {
    a3 = v259;
    v11 = v260;
    a1 = v261;
    goto LABEL_103;
  }

LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
  return result;
}

{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v194 - v10;
  v12 = *(a3 + 16);
  v273 = *a3;
  v274 = v12;
  *&v275 = *(a3 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021LocalizedNumberFormatG0OGMd);
  v14 = *(v3 + *(v13 + 36));
  v230 = *(v3 + *(v13 + 40));
  AttributedString.Runs._slicedRunBoundary(roundingDown:attributeNames:constraints:)(&v256, &v273, v14, v230, &v268);
  v238 = v14;
  v232 = v14[2];
  if (!v232)
  {
    goto LABEL_175;
  }

  v211 = a2;
  v215 = *(&v268 + 1);
  v216 = v268;
  v213 = a1;
  v214 = v269;
  v212 = v256;
  v210 = v257;
  v209 = v258;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = *v3;
  v226 = *a3;
  v220 = v17;
  v221 = v15;
  v223 = v16;
  v229 = v18;
  AttributedString.Guts.findRun(at:)(v226, v17, &v256);
  v227 = *(&v256 + 1);
  v224 = v257;
  v225 = v256;
  v237 = *(&v257 + 1);
  v222 = v258;
  v206 = v260;
  v207 = v259;
  v204 = v262;
  v205 = v261;
  v19 = *(type metadata accessor for AttributedString.Runs() + 24);
  a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v241 = v4;
  v239 = v19;
  RangeSet.ranges.getter();
  v3 = v11;
  a3 = RangeSet.Ranges.count.getter();
  a2 = *(v9 + 8);
  v9 += 8;
  (a2)(v11, v8);
  if (a3 < 1)
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v20 = 0;
  v240 = v226 >> 10;
  while (1)
  {
    if (__OFADD__(v20, a3))
    {
      goto LABEL_170;
    }

    v21 = (v20 + a3) / 2;
    RangeSet.ranges.getter();
    v3 = v11;
    RangeSet.Ranges.subscript.getter();
    result = (a2)(v11, v8);
    if (v240 >= v256 >> 10)
    {
      break;
    }

LABEL_4:
    a3 = v21;
    if (v20 >= v21)
    {
      goto LABEL_169;
    }
  }

  v3 = v258;
  if (v240 >= v258 >> 10)
  {
    v20 = v21 + 1;
    v21 = a3;
    goto LABEL_4;
  }

  v217 = v258 >> 10;
  a3 = v259;
  v23 = v260;
  v24 = v261;
  v25 = v230;
  v26 = *(v230 + 16);
  v218 = v261;
  v219 = v258;
  if (v26 == 1)
  {
    result = specialized Set.contains(_:)(0, 1, v230);
    if ((result & 1) == 0)
    {
      v29 = v24;
      v31 = v229[3];
      v30 = v229[4];
      v32 = v229[5];
      v33 = v229[6];
      v34 = v229[7];
      v238 = v229[8];
      v239 = v34;
      v247 = v226;
      v248 = v221;
      v35 = v223;
      v249 = v223;
      v250 = v220;
      v251 = v3;
      v252 = a3;
      v253 = v23;
      v254 = v29;
      swift_unknownObjectRetain();
      v36 = specialized Set.contains(_:)(0, 0, v25);
      v236 = v32;
      v237 = v30;
      v241 = v31;
      v235 = v33;
      if (v36)
      {
        *&v298 = v31;
        *(&v298 + 1) = v30;
        *&v299 = v32;
        *(&v299 + 1) = v33;
        *&v300 = v239;
        *(&v300 + 1) = v238;
        BigString.UTF8View.subscript.getter();
        *&v242 = v226;
        *(&v242 + 1) = v221;
        *&v243 = v35;
        *(&v243 + 1) = v220;
        *&v244 = v226;
        *(&v244 + 1) = v221;
        *&v245 = v35;
        *(&v245 + 1) = v220;
        specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v242, &v256);
        v3 = v219;
        result = outlined destroy of BigSubstring.UTF8View(&v273);
        if (v261 != 2)
        {
          v3 = v258;
          if (v240 > v258 >> 10)
          {
            goto LABEL_192;
          }

          a3 = v259;
          v23 = v260;
          v218 = v261;
        }
      }

      v284 = v226;
      v285 = v221;
      v286 = v223;
      v287 = v220;
      v288 = v3;
      v289 = a3;
      a1 = v218;
      v290 = v23;
      v291 = v218;
      if (specialized Collection<>._containsScalarConstraint.getter(v25))
      {
        v202 = a3;
        v203 = v23;
        v219 = v3;
        v9 = v25 + 56;
        v37 = 1 << *(v25 + 32);
        v38 = -1;
        if (v37 < 64)
        {
          v38 = ~(-1 << v37);
        }

        a2 = v38 & *(v25 + 56);
        v3 = (v37 + 63) >> 6;

        v39 = 0;
        a3 = MEMORY[0x1E69E7CC0];
        v40 = v236;
        a1 = v237;
        v11 = v241;
        v41 = v235;
        while (1)
        {
          if (a2)
          {
            goto LABEL_28;
          }

          do
          {
            v42 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_173;
            }

            if (v42 >= v3)
            {

              v292 = v11;
              v293 = a1;
              v294 = v40;
              v295 = v41;
              v296 = v239;
              v297 = v238;
              BigString.UnicodeScalarView.subscript.getter();
              v172 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(a3);
              v174 = v173;
              v176 = v175;
              v178 = v177;

              swift_unknownObjectRelease();
              result = outlined destroy of BigSubstring.UnicodeScalarView(&v256);
              a1 = v218;
              v9 = v219;
              a3 = v202;
              v11 = v203;
              v115 = v229;
              if (v178 == 2)
              {
                goto LABEL_161;
              }

              if (v240 <= v172 >> 10)
              {
                v9 = v172;
                a3 = v174;
                v11 = v176;
                a1 = v178;
                goto LABEL_161;
              }

LABEL_193:
              __break(1u);
              goto LABEL_194;
            }

            a2 = *(v9 + 8 * v42);
            ++v39;
          }

          while (!a2);
          v39 = v42;
LABEL_28:
          v43 = __clz(__rbit64(a2));
          a2 &= a2 - 1;
          v44 = (*(v230 + 48) + ((v39 << 10) | (16 * v43)));
          v45 = v44[1];
          if (v45 >= 2)
          {
            v46 = specialized Collection.first.getter(*v44, v45);
            if ((v46 & 0x100000000) == 0)
            {
              v234 = v46;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a3 + 16) + 1, 1, a3);
              }

              v48 = *(a3 + 16);
              v47 = *(a3 + 24);
              v49 = (v48 + 1);
              v50 = v234;
              if (v48 >= v47 >> 1)
              {
                v233 = (v48 + 1);
                v51 = a3;
                v52 = v48;
                v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v51);
                v49 = v233;
                v50 = v234;
                v48 = v52;
                a3 = v53;
              }

              *(a3 + 16) = v49;
              *(a3 + 4 * v48 + 32) = v50;
            }
          }
        }
      }

      swift_unknownObjectRelease();
      v9 = v3;
      v11 = v23;
LABEL_160:
      v115 = v229;
      goto LABEL_161;
    }
  }

  v27 = *(v241 + 15);
  v202 = a3;
  v203 = v23;
  if (v237 == v27)
  {
    v28 = *(v241 + 22);
    if (*(v241 + 26) == 2)
    {
      if (v28 != 2)
      {
        goto LABEL_88;
      }
    }

    else if (v28 == 2 || (*(v241 + 19) ^ *(v241 + 23)) >= 1024)
    {
      goto LABEL_88;
    }
  }

  if (v237 >= v27)
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v200 = v27;
  v54 = v229;
  v55 = v229[9];
  v56 = v229[10];
  a3 = v229[11];
  v57 = v229[12];
  swift_unknownObjectRetain();
  v59 = v224;
  v58 = v225;
  v60 = v227;
  specialized Rope.subscript.getter(v225, v227, v224, v55, v56, a3, v57);
  v9 = v61;
  v198 = v62;
  result = swift_unknownObjectRelease();
  v63 = v58;
  v64 = v54[9];
  v65 = v237 + 1;
  v199 = v238 + 5;
  v66 = v54[12];
  *&v256 = v58;
  *(&v256 + 1) = v60;
  *&v257 = v59;
  v228 = v9;
  while (2)
  {
    if (v63 != v66)
    {
      goto LABEL_182;
    }

    v208 = v66;
    if (v59)
    {
      v67 = *(v59 + 24 * ((v227 >> ((4 * *(v59 + 18) + 8) & 0x3C)) & 0xF) + 24);
      v68 = v222 + v67;
      if (!__OFADD__(v222, v67))
      {
        if (v64)
        {
          v69 = v65;
          result = swift_unknownObjectRetain();
          goto LABEL_46;
        }

        goto LABEL_181;
      }

LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    v69 = v65;
    swift_unknownObjectRetain();
    v70 = specialized Rope._Node.subscript.getter(v227, v64);
    a3 = v71;

    v72 = __OFADD__(v222, v70);
    v68 = v222 + v70;
    if (v72)
    {
      goto LABEL_189;
    }

    if (!v64)
    {
      goto LABEL_181;
    }

LABEL_46:
    if (v227 >= (((-15 << ((4 * *(v64 + 18) + 8) & 0x3C)) - 1) & *(v64 + 18) | (*(v64 + 16) << ((4 * *(v64 + 18) + 8) & 0x3C))))
    {
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v197 = v68;
    v224 = v59;
    if (v59)
    {
      v73 = (4 * *(v59 + 18) + 8) & 0x3C;
      v74 = ((v227 >> v73) & 0xF) + 1;
      if (v74 < *(v59 + 16))
      {
        result = swift_unknownObjectRelease();
        v75 = (v74 << v73) | ((-15 << v73) - 1) & v227;
        goto LABEL_52;
      }
    }

    if (specialized Rope._Node.formSuccessor(of:)(&v256, v64))
    {
      result = swift_unknownObjectRelease();
      v75 = *(&v256 + 1);
LABEL_52:
      v76 = v257;
      v77 = v256;
    }

    else
    {
      v78 = *(v64 + 18);
      v79 = *(v64 + 16);
      result = swift_unknownObjectRelease();
      v76 = 0;
      v75 = ((-15 << ((4 * v78 + 8) & 0x3C)) - 1) & v78 | (v79 << ((4 * v78 + 8) & 0x3C));
      v77 = v208;
    }

    if (v200 < v69)
    {
LABEL_93:

      goto LABEL_94;
    }

    v196 = v69;
    v225 = v77;
    a2 = &v256;
    v11 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    a1 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    if (v69 == v200)
    {
      v80 = *(v241 + 22);
      if (*(v241 + 26) == 2)
      {
        v77 = v225;
        if (v80 == 2)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v77 = v225;
        if (v80 != 2)
        {
          v77 = v225;
          if ((*(v241 + 19) ^ *(v241 + 23)) < 1024)
          {
            goto LABEL_93;
          }
        }
      }
    }

    if (v77 != v229[12])
    {
      goto LABEL_183;
    }

    v194 = v75;
    v195 = v76;
    if (v76)
    {
      v81 = v76 + 24 * ((v75 >> ((4 * *(v76 + 18) + 8) & 0x3C)) & 0xF);
      v82 = *(v81 + 32);
      v3 = *(v81 + 40);

      v201 = v3;
    }

    else
    {
      v3 = v229[9];
      a3 = v229[11];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v75, v3);
      v82 = v83;
      v201 = v84;
      swift_unknownObjectRelease();
    }

    v85 = 0;
    v86 = v199;
    v231 = v82;
    do
    {
      if (v85 >= v238[2])
      {
        goto LABEL_171;
      }

      v87 = *(v86 - 1);
      a3 = *v86;
      v239 = v86;
      if (*(v9 + 16))
      {

        v3 = v9;
        v88 = specialized __RawDictionaryStorage.find<A>(_:)(v87, a3);
        if (v89)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v9 + 56) + 72 * v88, &v273);
          if (!*(v82 + 16))
          {
            goto LABEL_78;
          }
        }

        else
        {
          v277 = 0;
          v275 = 0u;
          v276 = 0u;
          v273 = 0u;
          v274 = 0u;
          if (!*(v82 + 16))
          {
LABEL_78:

            goto LABEL_79;
          }
        }
      }

      else
      {
        v277 = 0;
        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;

        if (!*(v82 + 16))
        {
          goto LABEL_78;
        }
      }

      v3 = specialized __RawDictionaryStorage.find<A>(_:)(v87, a3);
      v91 = v90;

      if (v91)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v82 + 56) + 72 * v3, &v268);
        goto LABEL_80;
      }

LABEL_79:
      v272 = 0;
      v270 = 0u;
      v271 = 0u;
      v268 = 0u;
      v269 = 0u;
LABEL_80:
      outlined init with copy of FloatingPointRoundingRule?(&v273, &v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined init with copy of FloatingPointRoundingRule?(&v268, &v263, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (*(&v257 + 1))
      {
        outlined init with copy of FloatingPointRoundingRule?(&v256, &v247, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (!*(&v264 + 1))
        {
          outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v247);
LABEL_90:
          outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_92:

          goto LABEL_93;
        }

        v244 = v265;
        v245 = v266;
        v246 = v267;
        v242 = v263;
        v243 = v264;
        v3 = v250;
        v234 = v251;
        v235 = v85;
        v233 = __swift_project_boxed_opaque_existential_1(&v247, v250);
        a3 = *(&v243 + 1);
        v92 = __swift_project_boxed_opaque_existential_1(&v242, *(&v243 + 1));
        v237 = &v194;
        v93 = *(v3 - 8);
        MEMORY[0x1EEE9AC00](v92);
        v95 = &v194 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
        v236 = &v194;
        v97 = MEMORY[0x1EEE9AC00](v96);
        (*(v99 + 16))(&v194 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0), v97);
        v100 = type metadata accessor for Optional();
        v101 = *(v100 - 8);
        MEMORY[0x1EEE9AC00](v100);
        v103 = &v194 - v102;
        if ((swift_dynamicCast() & 1) == 0)
        {
          outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v93 + 56))(v103, 1, 1, v3);
          (*(v101 + 8))(v103, v100);
          outlined destroy of AttributedString._AttributeValue(&v242);
          outlined destroy of AttributedString._AttributeValue(&v247);
          outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_92;
        }

        (*(v93 + 56))(v103, 0, 1, v3);
        (*(v93 + 32))(v95, v103, v3);
        v104 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v93 + 8))(v95, v3);
        v11 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        a1 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
        outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v242);
        outlined destroy of AttributedString._AttributeValue(&v247);
        outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v9 = v228;
        a2 = &v256;
        v82 = v231;
        v85 = v235;
        if ((v104 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v273, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v264 + 1))
        {
          goto LABEL_90;
        }

        outlined destroy of TermOfAddress?(&v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      ++v85;
      v86 = v239 + 2;
    }

    while (v232 != v85);

    v64 = v229[9];
    v66 = v229[12];
    v222 = v197;
    v63 = v225;
    *&v256 = v225;
    *(&v256 + 1) = v194;
    v59 = v195;
    v227 = v194;
    *&v257 = v195;
    v65 = v196 + 1;
    if (!__OFADD__(v196, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_88:
  v208 = v225;
LABEL_94:
  v105 = v229;
  v106 = v229[9];
  v107 = v229[10];
  v109 = v229[11];
  v108 = v229[12];
  swift_unknownObjectRetain();
  v110 = specialized Rope.subscript.getter(v208, v227, v224, v106, v107, v109, v108);
  swift_unknownObjectRelease();

  if (__OFADD__(v222, v110))
  {
    goto LABEL_184;
  }

  v111 = *(v105 + 5);
  v298 = *(v105 + 3);
  v299 = v111;
  v300 = *(v105 + 7);
  if (__OFSUB__(v222 + v110, v207 >> 11))
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  swift_unknownObjectRetain();
  v9 = BigString.UTF8View.index(_:offsetBy:)();
  a3 = v112;
  v11 = v113;
  a1 = v114;
  result = swift_unknownObjectRelease();
  v115 = v229;
  v116 = v9 >> 10;
  v117 = v229[3];
  v118 = v229[5];
  v237 = v229[4];
  v238 = v118;
  v119 = v229[7];
  v239 = v229[6];
  v241 = v119;
  v120 = v229[8];
  if (v9 >> 10 >= v217)
  {
    v235 = v229[8];
    v141 = v226;
    v142 = v220;
    v143 = v221;
    v247 = v226;
    v248 = v221;
    v144 = v223;
    v249 = v223;
    v250 = v220;
    v145 = v218;
    a2 = v219;
    v251 = v219;
    v147 = v202;
    v146 = v203;
    v252 = v202;
    v253 = v203;
    v254 = v218;
    v148 = v117;
    swift_unknownObjectRetain();
    v149 = specialized Set.contains(_:)(0, 0, v230);
    v236 = v148;
    if (v149)
    {
      v292 = v148;
      v293 = v237;
      v294 = v238;
      v295 = v239;
      v296 = v241;
      v297 = v235;
      BigString.UTF8View.subscript.getter();
      *&v242 = v141;
      *(&v242 + 1) = v143;
      *&v243 = v223;
      *(&v243 + 1) = v142;
      *&v244 = v141;
      *(&v244 + 1) = v143;
      *&v245 = v223;
      *(&v245 + 1) = v142;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v242, &v256);
      v144 = v223;
      result = outlined destroy of BigSubstring.UTF8View(&v273);
      a2 = v219;
      if (v261 != 2)
      {
        a2 = v258;
        if (v240 > v258 >> 10)
        {
          goto LABEL_190;
        }

        v147 = v259;
        v146 = v260;
        v145 = v261;
      }
    }

    v284 = v226;
    v285 = v221;
    v286 = v144;
    v287 = v142;
    v288 = a2;
    v289 = v147;
    v290 = v146;
    v291 = v145;
    v150 = v230;
    if ((specialized Collection<>._containsScalarConstraint.getter(v230) & 1) == 0)
    {
      swift_unknownObjectRelease();
      v115 = v229;
      v165 = v217;
LABEL_143:
      if (a2 >> 10 == v165)
      {
        v9 = v219;
      }

      else
      {
        v9 = a2;
      }

      if (a2 >> 10 == v165)
      {
        a3 = v202;
      }

      else
      {
        a3 = v147;
      }

      if (a2 >> 10 == v165)
      {
        v11 = v203;
      }

      else
      {
        v11 = v146;
      }

      if (a2 >> 10 == v165)
      {
        a1 = v218;
      }

      else
      {
        a1 = v145;
      }

LABEL_161:
      a2 = v115[2];
      v180 = v115[9];
      v179 = v115[10];
      v181 = v115[11];
      v182 = v115[12];
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v216, v215, v214, v180, v179, v181, v182);
      v3 = v183;
      swift_unknownObjectRelease();
      if (one-time initialization token for name == -1)
      {
        if (!*(v3 + 16))
        {
          goto LABEL_177;
        }

        goto LABEL_163;
      }

LABEL_176:
      swift_once();
      if (!*(v3 + 16))
      {
        goto LABEL_177;
      }

LABEL_163:
      v184 = specialized __RawDictionaryStorage.find<A>(_:)(static AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.name, unk_1EA7B24E0);
      if (v185)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v3 + 56) + 72 * v184, &v268);

        outlined init with copy of Hashable & Sendable(&v268, &v255);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
        result = swift_dynamicCast();
        if (!result)
        {
          goto LABEL_196;
        }

        result = outlined destroy of AttributedString._AttributeValue(&v268);
        v186 = 0;
        goto LABEL_178;
      }

LABEL_177:

      v186 = 1;
LABEL_178:
      *v213 = v186;
      if (v9 >> 10 >= v212 >> 10)
      {
        v193 = v211;
        *v211 = v212;
        v193[1] = v210;
        *(v193 + 4) = v209;
        *(v193 + 5) = v9;
        *(v193 + 6) = a3;
        *(v193 + 7) = v11;
        *(v193 + 8) = a1;
        *(v193 + 9) = a2;
        return result;
      }

      __break(1u);
      goto LABEL_181;
    }

    a3 = v150 + 56;
    v151 = 1 << *(v150 + 32);
    v152 = -1;
    if (v151 < 64)
    {
      v152 = ~(-1 << v151);
    }

    v3 = v152 & *(v150 + 56);
    v11 = ((v151 + 63) >> 6);

    a1 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v3)
    {
LABEL_132:
      v154 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v155 = (*(v230 + 48) + ((a1 << 10) | (16 * v154)));
      v156 = v155[1];
      if (v156 >= 2)
      {
        v157 = specialized Collection.first.getter(*v155, v156);
        if ((v157 & 0x100000000) == 0)
        {
          v234 = v157;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
          }

          v159 = *(v9 + 16);
          v158 = *(v9 + 24);
          v160 = (v159 + 1);
          v161 = v234;
          if (v159 >= v158 >> 1)
          {
            v233 = (v159 + 1);
            v162 = v9;
            v163 = v159;
            v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v158 > 1), v159 + 1, 1, v162);
            v160 = v233;
            v161 = v234;
            v159 = v163;
            v9 = v164;
          }

          *(v9 + 16) = v160;
          *(v9 + 4 * v159 + 32) = v161;
        }
      }
    }

    while (1)
    {
      v153 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if (v153 >= v11)
      {

        v278 = v236;
        v279 = v237;
        v280 = v238;
        v281 = v239;
        v282 = v241;
        v283 = v235;
        BigString.UnicodeScalarView.subscript.getter();
        v166 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v9);
        v241 = v167;
        v169 = v168;
        v171 = v170;

        swift_unknownObjectRelease();
        result = outlined destroy of BigSubstring.UnicodeScalarView(&v256);
        v115 = v229;
        v165 = v217;
        if (v171 == 2)
        {
          goto LABEL_143;
        }

        if (v240 <= v166 >> 10)
        {
          a2 = v166;
          v147 = v241;
          v146 = v169;
          v145 = v171;
          goto LABEL_143;
        }

        goto LABEL_191;
      }

      v3 = *(a3 + 8 * v153);
      ++a1;
      if (v3)
      {
        a1 = v153;
        goto LABEL_132;
      }
    }

LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v121 = v223;
  v122 = v221;
  v123 = v226;
  if (v116 < v240)
  {
    goto LABEL_188;
  }

  v247 = v226;
  v248 = v221;
  v249 = v223;
  v250 = v220;
  v251 = v9;
  v252 = a3;
  v253 = v11;
  v254 = a1;
  if (v240 == v116)
  {
    goto LABEL_161;
  }

  v124 = v117;
  swift_unknownObjectRetain();
  v125 = specialized Set.contains(_:)(0, 0, v230);
  v236 = v124;
  if ((v125 & 1) == 0 || (v292 = v124, v293 = v237, v294 = v238, v295 = v239, v296 = v241, v297 = v120, BigString.UTF8View.subscript.getter(), *&v242 = v123, *(&v242 + 1) = v122, *&v243 = v223, *(&v243 + 1) = v220, *&v244 = v123, *(&v244 + 1) = v122, *&v245 = v223, *(&v245 + 1) = v220, specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v242, &v256), v121 = v223, result = outlined destroy of BigSubstring.UTF8View(&v273), v261 == 2))
  {
LABEL_103:
    v284 = v123;
    v285 = v122;
    v286 = v121;
    v287 = v220;
    v288 = v9;
    v289 = a3;
    v290 = v11;
    v291 = a1;
    v3 = v230;
    if (specialized Collection<>._containsScalarConstraint.getter(v230))
    {
      v235 = v120;
      v126 = v3 + 56;
      v127 = 1 << *(v3 + 32);
      v128 = -1;
      if (v127 < 64)
      {
        v128 = ~(-1 << v127);
      }

      v129 = v128 & *(v3 + 56);
      a2 = (v127 + 63) >> 6;

      v130 = 0;
      v234 = MEMORY[0x1E69E7CC0];
      while (v129)
      {
LABEL_112:
        v132 = __clz(__rbit64(v129));
        v129 &= v129 - 1;
        v133 = (*(v230 + 48) + ((v130 << 10) | (16 * v132)));
        v134 = v133[1];
        if (v134 >= 2)
        {
          v135 = specialized Collection.first.getter(*v133, v134);
          if ((v135 & 0x100000000) == 0)
          {
            v233 = v135;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v234 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v234 + 2) + 1, 1, v234);
            }

            v136 = v233;
            v3 = *(v234 + 2);
            v137 = *(v234 + 3);
            v138 = v3 + 1;
            if (v3 >= v137 >> 1)
            {
              v232 = v3 + 1;
              v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v3 + 1, 1, v234);
              v138 = v232;
              v136 = v233;
              v234 = v140;
            }

            v139 = v234;
            *(v234 + 2) = v138;
            *&v139[4 * v3 + 32] = v136;
          }
        }
      }

      while (1)
      {
        v131 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          break;
        }

        if (v131 >= a2)
        {

          v278 = v236;
          v279 = v237;
          v280 = v238;
          v281 = v239;
          v282 = v241;
          v283 = v235;
          BigString.UnicodeScalarView.subscript.getter();
          v187 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v234);
          v189 = v188;
          v241 = v190;
          v192 = v191;

          swift_unknownObjectRelease();
          result = outlined destroy of BigSubstring.UnicodeScalarView(&v256);
          v115 = v229;
          if (v192 == 2)
          {
            goto LABEL_161;
          }

          if (v240 <= v187 >> 10)
          {
            v9 = v187;
            a3 = v189;
            v11 = v241;
            a1 = v192;
            goto LABEL_161;
          }

          goto LABEL_195;
        }

        v129 = *(v126 + 8 * v131);
        ++v130;
        if (v129)
        {
          v130 = v131;
          goto LABEL_112;
        }
      }

LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    swift_unknownObjectRelease();
    goto LABEL_160;
  }

  v9 = v258;
  if (v240 <= v258 >> 10)
  {
    a3 = v259;
    v11 = v260;
    a1 = v261;
    goto LABEL_103;
  }

LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
  return result;
}

uint64_t specialized AttributedString.Runs.AttributesSlice1.subscript.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v203 - v10);
  v12 = *(a3 + 16);
  v285 = *a3;
  v286 = v12;
  *&v287 = *(a3 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OGMd);
  v14 = *(v3 + *(v13 + 36));
  v239 = *(v3 + *(v13 + 40));
  AttributedString.Runs._slicedRunBoundary(roundingDown:attributeNames:constraints:)(&v268, &v285, v14, v239, &v280);
  v247 = v14;
  v241 = v14[2];
  if (!v241)
  {
    goto LABEL_172;
  }

  v220 = a2;
  v224 = *(&v280 + 1);
  v225 = v280;
  v222 = a1;
  v223 = v281;
  v221 = v268;
  v219 = v269;
  v218 = v270;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = *v3;
  v235 = *a3;
  v229 = v17;
  v230 = v15;
  v232 = v16;
  v238 = v18;
  AttributedString.Guts.findRun(at:)(v235, v17, &v268);
  v236 = *(&v268 + 1);
  v233 = v269;
  v234 = v268;
  v246 = *(&v269 + 1);
  v231 = v270;
  v215 = v272;
  v216 = v271;
  v213 = v274;
  v214 = v273;
  v19 = *(type metadata accessor for AttributedString.Runs() + 24);
  a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v250 = v4;
  v248 = v19;
  RangeSet.ranges.getter();
  v3 = v11;
  a1 = RangeSet.Ranges.count.getter();
  a2 = v9[1];
  ++v9;
  (a2)(v11, v8);
  if (a1 < 1)
  {
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v20 = 0;
  v249 = v235 >> 10;
  while (1)
  {
    if (__OFADD__(v20, a1))
    {
      goto LABEL_167;
    }

    v21 = (v20 + a1) / 2;
    RangeSet.ranges.getter();
    v3 = v11;
    RangeSet.Ranges.subscript.getter();
    (a2)(v11, v8);
    if (v249 >= v268 >> 10)
    {
      break;
    }

LABEL_4:
    a1 = v21;
    if (v20 >= v21)
    {
      goto LABEL_166;
    }
  }

  v3 = v270;
  if (v249 >= v270 >> 10)
  {
    v20 = v21 + 1;
    v21 = a1;
    goto LABEL_4;
  }

  v226 = v270 >> 10;
  v22 = v271;
  v23 = v272;
  v24 = v273;
  v25 = v239;
  v26 = *(v239 + 16);
  v227 = v273;
  v228 = v270;
  if (v26 == 1 && (specialized Set.contains(_:)(0, 1, v239) & 1) == 0)
  {
    v29 = v24;
    v31 = v238[3];
    v30 = v238[4];
    v32 = v238[5];
    v33 = v238[6];
    v34 = v238[7];
    v247 = v238[8];
    v248 = v34;
    v256 = v235;
    v257 = v230;
    v35 = v232;
    v258 = v232;
    v259 = v229;
    v260 = v3;
    v261 = v22;
    v262 = v23;
    v263 = v29;
    swift_unknownObjectRetain();
    v36 = specialized Set.contains(_:)(0, 0, v25);
    v245 = v32;
    v246 = v30;
    v250 = v31;
    v244 = v33;
    if (v36)
    {
      *&v310 = v31;
      *(&v310 + 1) = v30;
      *&v311 = v32;
      *(&v311 + 1) = v33;
      *&v312 = v248;
      *(&v312 + 1) = v247;
      BigString.UTF8View.subscript.getter();
      *&v251 = v235;
      *(&v251 + 1) = v230;
      *&v252 = v35;
      *(&v252 + 1) = v229;
      *&v253 = v235;
      *(&v253 + 1) = v230;
      *&v254 = v35;
      *(&v254 + 1) = v229;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v251, &v268);
      v3 = v228;
      outlined destroy of BigSubstring.UTF8View(&v285);
      if (v273 != 2)
      {
        v3 = v270;
        if (v249 > v270 >> 10)
        {
          goto LABEL_189;
        }

        v22 = v271;
        v23 = v272;
        v227 = v273;
      }
    }

    v296 = v235;
    v297 = v230;
    v298 = v232;
    v299 = v229;
    v300 = v3;
    v301 = v22;
    v11 = v227;
    v302 = v23;
    v303 = v227;
    v9 = v22;
    if (specialized Collection<>._containsScalarConstraint.getter(v25))
    {
      v211 = v22;
      v212 = v23;
      v228 = v3;
      v9 = (v25 + 56);
      v37 = 1 << *(v25 + 32);
      v38 = -1;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      a2 = v38 & *(v25 + 56);
      v3 = (v37 + 63) >> 6;

      v39 = 0;
      a3 = MEMORY[0x1E69E7CC0];
      v40 = v245;
      v11 = v246;
      a1 = v250;
      v41 = v244;
      while (1)
      {
        if (a2)
        {
          goto LABEL_28;
        }

        do
        {
          v42 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_170;
          }

          if (v42 >= v3)
          {

            v304 = a1;
            v305 = v11;
            v306 = v40;
            v307 = v41;
            v308 = v248;
            v309 = v247;
            BigString.UnicodeScalarView.subscript.getter();
            v176 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(a3);
            v178 = v177;
            v180 = v179;
            v182 = v181;

            swift_unknownObjectRelease();
            outlined destroy of BigSubstring.UnicodeScalarView(&v268);
            v11 = v227;
            a3 = v228;
            v9 = v211;
            a1 = v212;
            v115 = v238;
            if (v182 == 2)
            {
              goto LABEL_158;
            }

            if (v249 <= v176 >> 10)
            {
              a3 = v176;
              v9 = v178;
              a1 = v180;
              v11 = v182;
              goto LABEL_158;
            }

LABEL_190:
            __break(1u);
            goto LABEL_191;
          }

          a2 = v9[v42];
          ++v39;
        }

        while (!a2);
        v39 = v42;
LABEL_28:
        v43 = __clz(__rbit64(a2));
        a2 &= a2 - 1;
        v44 = (*(v239 + 48) + ((v39 << 10) | (16 * v43)));
        v45 = v44[1];
        if (v45 >= 2)
        {
          v46 = specialized Collection.first.getter(*v44, v45);
          if ((v46 & 0x100000000) == 0)
          {
            v243 = v46;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a3 + 16) + 1, 1, a3);
            }

            v48 = *(a3 + 16);
            v47 = *(a3 + 24);
            v49 = (v48 + 1);
            v50 = v243;
            if (v48 >= v47 >> 1)
            {
              v242 = (v48 + 1);
              v51 = a3;
              v52 = v48;
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v51);
              v49 = v242;
              v50 = v243;
              v48 = v52;
              a3 = v53;
            }

            *(a3 + 16) = v49;
            *(a3 + 4 * v48 + 32) = v50;
          }
        }
      }
    }

    swift_unknownObjectRelease();
    a3 = v3;
    a1 = v23;
LABEL_157:
    v115 = v238;
    goto LABEL_158;
  }

  v27 = v250[15];
  v211 = v22;
  v212 = v23;
  if (v246 == v27)
  {
    v28 = v250[22];
    if (v250[26] == 2)
    {
      if (v28 != 2)
      {
        goto LABEL_88;
      }
    }

    else if (v28 == 2 || (v250[19] ^ v250[23]) >= 0x400)
    {
      goto LABEL_88;
    }
  }

  if (v246 >= v27)
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v209 = v27;
  v54 = v238;
  v55 = v238[9];
  v56 = v238[10];
  v57 = v238[11];
  v58 = v238[12];
  swift_unknownObjectRetain();
  v60 = v233;
  v59 = v234;
  v61 = v236;
  specialized Rope.subscript.getter(v234, v236, v233, v55, v56, v57, v58);
  v9 = v62;
  v207 = v63;
  swift_unknownObjectRelease();
  v64 = v59;
  v65 = v54[9];
  v66 = v246 + 1;
  a1 = &v268;
  v208 = (v247 + 5);
  a3 = v54[11];
  v67 = v54[12];
  *&v268 = v59;
  *(&v268 + 1) = v61;
  *&v269 = v60;
  v237 = v9;
  while (2)
  {
    if (v64 != v67)
    {
      goto LABEL_179;
    }

    v217 = v67;
    if (v60)
    {
      v68 = *(v60 + 24 * ((v236 >> ((4 * *(v60 + 18) + 8) & 0x3C)) & 0xF) + 24);
      v69 = v231 + v68;
      if (!__OFADD__(v231, v68))
      {
        if (v65)
        {
          v70 = v66;
          swift_unknownObjectRetain();
          goto LABEL_46;
        }

        goto LABEL_178;
      }

LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

    v70 = v66;
    swift_unknownObjectRetain();
    v71 = specialized Rope._Node.subscript.getter(v236, v65);

    v72 = __OFADD__(v231, v71);
    v69 = v231 + v71;
    if (v72)
    {
      goto LABEL_186;
    }

    a1 = &v268;
    if (!v65)
    {
      goto LABEL_178;
    }

LABEL_46:
    if (v236 >= (((-15 << ((4 * *(v65 + 18) + 8) & 0x3C)) - 1) & *(v65 + 18) | (*(v65 + 16) << ((4 * *(v65 + 18) + 8) & 0x3C))))
    {
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

    v206 = v69;
    v233 = v60;
    if (v60)
    {
      v73 = (4 * *(v60 + 18) + 8) & 0x3C;
      v74 = ((v236 >> v73) & 0xF) + 1;
      if (v74 < *(v60 + 16))
      {
        swift_unknownObjectRelease();
        v75 = (v74 << v73) | ((-15 << v73) - 1) & v236;
        goto LABEL_52;
      }
    }

    if (specialized Rope._Node.formSuccessor(of:)(&v268, v65))
    {
      swift_unknownObjectRelease();
      v75 = *(&v268 + 1);
LABEL_52:
      v76 = v269;
      v77 = v268;
    }

    else
    {
      v78 = *(v65 + 18);
      a3 = *(v65 + 16);
      swift_unknownObjectRelease();
      v76 = 0;
      v75 = ((-15 << ((4 * v78 + 8) & 0x3C)) - 1) & v78 | (a3 << ((4 * v78 + 8) & 0x3C));
      v77 = v217;
    }

    if (v209 < v70)
    {
LABEL_93:

      goto LABEL_94;
    }

    v205 = v70;
    v234 = v77;
    a2 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    v11 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    if (v70 == v209)
    {
      v79 = v250[22];
      if (v250[26] == 2)
      {
        v77 = v234;
        if (v79 == 2)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v77 = v234;
        if (v79 != 2)
        {
          v77 = v234;
          if ((v250[19] ^ v250[23]) < 0x400)
          {
            goto LABEL_93;
          }
        }
      }
    }

    if (v77 != v238[12])
    {
      goto LABEL_180;
    }

    v203 = v75;
    v204 = v76;
    if (v76)
    {
      v80 = v76 + 24 * ((v75 >> ((4 * *(v76 + 18) + 8) & 0x3C)) & 0xF);
      v81 = *(v80 + 32);
      v3 = *(v80 + 40);

      v210 = v3;
    }

    else
    {
      v3 = v238[9];
      a3 = v238[11];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v75, v3);
      v81 = v82;
      v210 = v83;
      swift_unknownObjectRelease();
    }

    v84 = 0;
    v85 = v208;
    v240 = v81;
    do
    {
      if (v84 >= v247[2])
      {
        goto LABEL_168;
      }

      v86 = *(v85 - 1);
      a3 = *v85;
      v248 = v85;
      if (v9[2])
      {

        v3 = v9;
        v87 = specialized __RawDictionaryStorage.find<A>(_:)(v86, a3);
        if (v88)
        {
          outlined init with copy of AttributedString._AttributeValue(v9[7] + 72 * v87, &v285);
          if (!*(v81 + 16))
          {
            goto LABEL_78;
          }
        }

        else
        {
          v289 = 0;
          v287 = 0u;
          v288 = 0u;
          v285 = 0u;
          v286 = 0u;
          if (!*(v81 + 16))
          {
LABEL_78:

            goto LABEL_79;
          }
        }
      }

      else
      {
        v289 = 0;
        v287 = 0u;
        v288 = 0u;
        v285 = 0u;
        v286 = 0u;

        if (!*(v81 + 16))
        {
          goto LABEL_78;
        }
      }

      v3 = specialized __RawDictionaryStorage.find<A>(_:)(v86, a3);
      v90 = v89;

      if (v90)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v81 + 56) + 72 * v3, &v280);
        goto LABEL_80;
      }

LABEL_79:
      v284 = 0;
      v282 = 0u;
      v283 = 0u;
      v280 = 0u;
      v281 = 0u;
LABEL_80:
      outlined init with copy of FloatingPointRoundingRule?(&v285, &v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined init with copy of FloatingPointRoundingRule?(&v280, &v275, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (*(&v269 + 1))
      {
        outlined init with copy of FloatingPointRoundingRule?(&v268, &v256, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (!*(&v276 + 1))
        {
          outlined destroy of TermOfAddress?(&v280, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v285, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v256);
LABEL_90:
          outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_92:

          goto LABEL_93;
        }

        v253 = v277;
        v254 = v278;
        v255 = v279;
        v251 = v275;
        v252 = v276;
        v3 = v259;
        v243 = v260;
        v244 = v84;
        v242 = __swift_project_boxed_opaque_existential_1(&v256, v259);
        v91 = __swift_project_boxed_opaque_existential_1(&v251, *(&v252 + 1));
        v246 = &v203;
        v92 = *(v3 - 8);
        MEMORY[0x1EEE9AC00](v91);
        v94 = &v203 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
        v245 = &v203;
        v96 = MEMORY[0x1EEE9AC00](v95);
        (*(v98 + 16))(&v203 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0), v96);
        v99 = type metadata accessor for Optional();
        v100 = *(v99 - 8);
        MEMORY[0x1EEE9AC00](v99);
        v102 = &v203 - v101;
        if ((swift_dynamicCast() & 1) == 0)
        {
          outlined destroy of TermOfAddress?(&v280, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v285, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v92 + 56))(v102, 1, 1, v3);
          (*(v100 + 8))(v102, v99);
          outlined destroy of AttributedString._AttributeValue(&v251);
          outlined destroy of AttributedString._AttributeValue(&v256);
          outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_92;
        }

        (*(v92 + 56))(v102, 0, 1, v3);
        (*(v92 + 32))(v94, v102, v3);
        v103 = dispatch thunk of static Equatable.== infix(_:_:)();
        v104 = *(v92 + 8);
        a3 = v92 + 8;
        v104(v94, v3);
        a2 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        v11 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
        outlined destroy of TermOfAddress?(&v280, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v285, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v251);
        outlined destroy of AttributedString._AttributeValue(&v256);
        outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v9 = v237;
        a1 = &v268;
        v81 = v240;
        v84 = v244;
        if ((v103 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v280, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v285, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v276 + 1))
        {
          goto LABEL_90;
        }

        outlined destroy of TermOfAddress?(&v268, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      ++v84;
      v85 = v248 + 2;
    }

    while (v241 != v84);

    v65 = v238[9];
    a3 = v238[11];
    v67 = v238[12];
    v231 = v206;
    v64 = v234;
    *&v268 = v234;
    *(&v268 + 1) = v203;
    v60 = v204;
    v236 = v203;
    *&v269 = v204;
    v66 = v205 + 1;
    if (!__OFADD__(v205, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_88:
  v217 = v234;
LABEL_94:
  v105 = v238;
  v106 = v238[9];
  v107 = v238[10];
  v108 = v238[11];
  v109 = v238[12];
  swift_unknownObjectRetain();
  v110 = specialized Rope.subscript.getter(v217, v236, v233, v106, v107, v108, v109);
  swift_unknownObjectRelease();

  if (__OFADD__(v231, v110))
  {
    goto LABEL_181;
  }

  v111 = *(v105 + 5);
  v310 = *(v105 + 3);
  v311 = v111;
  v312 = *(v105 + 7);
  if (__OFSUB__(v231 + v110, v216 >> 11))
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  swift_unknownObjectRetain();
  a3 = BigString.UTF8View.index(_:offsetBy:)();
  v9 = v112;
  a1 = v113;
  v11 = v114;
  swift_unknownObjectRelease();
  v115 = v238;
  v116 = a3 >> 10;
  v117 = v238[3];
  v118 = v238[5];
  v246 = v238[4];
  v247 = v118;
  v119 = v238[7];
  v248 = v238[6];
  v250 = v119;
  v120 = v238[8];
  if (a3 >> 10 >= v226)
  {
    v244 = v238[8];
    v145 = v235;
    v146 = v229;
    v147 = v230;
    v256 = v235;
    v257 = v230;
    v148 = v232;
    v258 = v232;
    v259 = v229;
    v149 = v227;
    a2 = v228;
    v260 = v228;
    v9 = v211;
    v150 = v212;
    v261 = v211;
    v262 = v212;
    v263 = v227;
    v151 = v117;
    swift_unknownObjectRetain();
    v152 = specialized Set.contains(_:)(0, 0, v239);
    v245 = v151;
    if (v152)
    {
      v304 = v151;
      v305 = v246;
      v306 = v247;
      v307 = v248;
      v308 = v250;
      v309 = v244;
      BigString.UTF8View.subscript.getter();
      *&v251 = v145;
      *(&v251 + 1) = v147;
      *&v252 = v232;
      *(&v252 + 1) = v146;
      *&v253 = v145;
      *(&v253 + 1) = v147;
      *&v254 = v232;
      *(&v254 + 1) = v146;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v251, &v268);
      v148 = v232;
      outlined destroy of BigSubstring.UTF8View(&v285);
      a2 = v228;
      if (v273 != 2)
      {
        a2 = v270;
        if (v249 > v270 >> 10)
        {
          goto LABEL_187;
        }

        v9 = v271;
        v150 = v272;
        v149 = v273;
      }
    }

    v296 = v235;
    v297 = v230;
    v298 = v148;
    v299 = v146;
    v300 = a2;
    v301 = v9;
    v302 = v150;
    v303 = v149;
    v153 = v239;
    if ((specialized Collection<>._containsScalarConstraint.getter(v239) & 1) == 0)
    {
      swift_unknownObjectRelease();
      v115 = v238;
      v169 = v226;
LABEL_143:
      if (a2 >> 10 == v169)
      {
        a3 = v228;
      }

      else
      {
        a3 = a2;
      }

      if (a2 >> 10 == v169)
      {
        v9 = v211;
        a1 = v212;
      }

      else
      {
        a1 = v150;
      }

      if (a2 >> 10 == v169)
      {
        v11 = v227;
      }

      else
      {
        v11 = v149;
      }

LABEL_158:
      a2 = v115[2];
      v184 = v115[9];
      v183 = v115[10];
      v185 = v115[11];
      v186 = v115[12];
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v225, v224, v223, v184, v183, v185, v186);
      v3 = v187;
      swift_unknownObjectRelease();
      if (one-time initialization token for name == -1)
      {
        if (!*(v3 + 16))
        {
          goto LABEL_174;
        }

        goto LABEL_160;
      }

LABEL_173:
      swift_once();
      if (!*(v3 + 16))
      {
        goto LABEL_174;
      }

LABEL_160:
      v188 = specialized __RawDictionaryStorage.find<A>(_:)(static AttributeScopes.FoundationAttributes.InflectionRuleAttribute.name, unk_1EA7B2660);
      if (v189)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v3 + 56) + 72 * v188, &v280);

        outlined init with copy of Hashable & Sendable(&v280, &v267);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
        if (!swift_dynamicCast())
        {
          goto LABEL_193;
        }

        result = outlined destroy of AttributedString._AttributeValue(&v280);
        v191 = v265;
        v192 = v266;
        v193 = v222;
        *v222 = v264;
        *(v193 + 20) = v192;
        *(v193 + 4) = v191;
        goto LABEL_175;
      }

LABEL_174:

      v201 = v222;
      *v222 = xmmword_1812187D0;
      *(v201 + 20) = 0;
      *(v201 + 4) = 0;
LABEL_175:
      if (a3 >> 10 >= v221 >> 10)
      {
        v202 = v220;
        *v220 = v221;
        v202[1] = v219;
        *(v202 + 4) = v218;
        *(v202 + 5) = a3;
        *(v202 + 6) = v9;
        *(v202 + 7) = a1;
        *(v202 + 8) = v11;
        *(v202 + 9) = a2;
        return result;
      }

      __break(1u);
      goto LABEL_178;
    }

    a1 = v153 + 56;
    v154 = 1 << *(v153 + 32);
    v155 = -1;
    if (v154 < 64)
    {
      v155 = ~(-1 << v154);
    }

    v156 = v155 & *(v153 + 56);
    v11 = ((v154 + 63) >> 6);

    v3 = 0;
    a3 = MEMORY[0x1E69E7CC0];
    while (v156)
    {
LABEL_132:
      v158 = __clz(__rbit64(v156));
      v156 &= v156 - 1;
      v159 = (*(v239 + 48) + ((v3 << 10) | (16 * v158)));
      v160 = v159[1];
      if (v160 >= 2)
      {
        v161 = specialized Collection.first.getter(*v159, v160);
        if ((v161 & 0x100000000) == 0)
        {
          v243 = v161;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a3 + 16) + 1, 1, a3);
          }

          v163 = *(a3 + 16);
          v162 = *(a3 + 24);
          v164 = (v163 + 1);
          v165 = v243;
          if (v163 >= v162 >> 1)
          {
            v242 = (v163 + 1);
            v166 = a3;
            v167 = v163;
            v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v162 > 1), v163 + 1, 1, v166);
            v164 = v242;
            v165 = v243;
            v163 = v167;
            a3 = v168;
          }

          *(a3 + 16) = v164;
          *(a3 + 4 * v163 + 32) = v165;
        }
      }
    }

    while (1)
    {
      v157 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v157 >= v11)
      {

        v290 = v245;
        v291 = v246;
        v292 = v247;
        v293 = v248;
        v294 = v250;
        v295 = v244;
        BigString.UnicodeScalarView.subscript.getter();
        v170 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(a3);
        v172 = v171;
        v250 = v173;
        v175 = v174;

        swift_unknownObjectRelease();
        outlined destroy of BigSubstring.UnicodeScalarView(&v268);
        v115 = v238;
        v169 = v226;
        if (v175 == 2)
        {
          goto LABEL_143;
        }

        if (v249 <= v170 >> 10)
        {
          a2 = v170;
          v9 = v172;
          v150 = v250;
          v149 = v175;
          goto LABEL_143;
        }

        goto LABEL_188;
      }

      v156 = *(a1 + 8 * v157);
      ++v3;
      if (v156)
      {
        v3 = v157;
        goto LABEL_132;
      }
    }

LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v121 = v232;
  v122 = v230;
  v123 = v235;
  if (v116 < v249)
  {
    goto LABEL_185;
  }

  v256 = v235;
  v257 = v230;
  v258 = v232;
  v259 = v229;
  v260 = a3;
  v261 = v9;
  v262 = a1;
  v263 = v11;
  if (v249 == v116)
  {
    goto LABEL_158;
  }

  v124 = v117;
  swift_unknownObjectRetain();
  v125 = specialized Set.contains(_:)(0, 0, v239);
  v245 = v124;
  if ((v125 & 1) == 0 || (v304 = v124, v305 = v246, v306 = v247, v307 = v248, v308 = v250, v309 = v120, BigString.UTF8View.subscript.getter(), *&v251 = v123, *(&v251 + 1) = v122, *&v252 = v232, *(&v252 + 1) = v229, *&v253 = v123, *(&v253 + 1) = v122, *&v254 = v232, *(&v254 + 1) = v229, specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v251, &v268), v121 = v232, outlined destroy of BigSubstring.UTF8View(&v285), v273 == 2))
  {
LABEL_103:
    v296 = v123;
    v297 = v122;
    v298 = v121;
    v299 = v229;
    v300 = a3;
    v301 = v9;
    v302 = a1;
    v303 = v11;
    v126 = v239;
    if (specialized Collection<>._containsScalarConstraint.getter(v239))
    {
      v244 = v120;
      v127 = v126 + 56;
      v128 = 1 << *(v126 + 32);
      v129 = -1;
      if (v128 < 64)
      {
        v129 = ~(-1 << v128);
      }

      v3 = v129 & *(v126 + 56);
      a2 = (v128 + 63) >> 6;

      v130 = 0;
      v131 = MEMORY[0x1E69E7CC0];
      while (v3)
      {
LABEL_112:
        v133 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v134 = (*(v239 + 48) + ((v130 << 10) | (16 * v133)));
        v135 = v134[1];
        if (v135 >= 2)
        {
          v136 = specialized Collection.first.getter(*v134, v135);
          if ((v136 & 0x100000000) == 0)
          {
            v243 = v136;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v131 + 2) + 1, 1, v131);
            }

            v137 = v131;
            v138 = *(v131 + 2);
            v139 = v137;
            v140 = *(v137 + 3);
            v141 = (v138 + 1);
            v142 = v243;
            if (v138 >= v140 >> 1)
            {
              v242 = (v138 + 1);
              v144 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v140 > 1), v138 + 1, 1, v139);
              v141 = v242;
              v142 = v243;
              v139 = v144;
            }

            *(v139 + 2) = v141;
            v143 = &v139[4 * v138];
            v131 = v139;
            *(v143 + 8) = v142;
          }
        }
      }

      while (1)
      {
        v132 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          break;
        }

        if (v132 >= a2)
        {

          v290 = v245;
          v291 = v246;
          v292 = v247;
          v293 = v248;
          v294 = v250;
          v295 = v244;
          BigString.UnicodeScalarView.subscript.getter();
          v194 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v131);
          v196 = v195;
          v198 = v197;
          v200 = v199;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v268);
          v115 = v238;
          if (v200 == 2)
          {
            goto LABEL_158;
          }

          if (v249 <= v194 >> 10)
          {
            a3 = v194;
            v9 = v196;
            a1 = v198;
            v11 = v200;
            goto LABEL_158;
          }

          goto LABEL_192;
        }

        v3 = *(v127 + 8 * v132);
        ++v130;
        if (v3)
        {
          v130 = v132;
          goto LABEL_112;
        }
      }

LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
      goto LABEL_173;
    }

    swift_unknownObjectRelease();
    goto LABEL_157;
  }

  a3 = v270;
  if (v249 <= v270 >> 10)
  {
    v9 = v271;
    a1 = v272;
    v11 = v273;
    goto LABEL_103;
  }

LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  v264 = xmmword_1812187D0;
  v266 = 0;
  v265 = 0;
  result = outlined consume of AttributedString.AttributeRunBoundaries?(0, 1);
  __break(1u);
  return result;
}