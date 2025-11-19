uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v3 = v4 - v5;
    if (__OFSUB__(v4, v5))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (!v3)
    {
LABEL_12:
      outlined consume of Data._Representation(result, a2);
      return MEMORY[0x1E69E7CC0];
    }

LABEL_8:
    v6 = result;
    v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v3, 0);
    v9 = Data._copyContents(initializing:)(v11, v8 + 4, v3, v6, a2);
    outlined consume of Data._Representation(v6, a2);
    result = outlined destroy of Data.Iterator(v11);
    if (v9 == v3)
    {
      return v8;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!v2)
  {
    v3 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v10 = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v3 = v10;
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t _LocaleAutoupdating.calendarIdentifier.getter()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static LocaleCache.cache;
  v9 = *(&static LocaleCache.cache + 8);
  v1 = *(&static LocaleCache.cache + 1);
  os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 32));
  if (!v3)
  {
    *&v11[0] = v0;
    *(v11 + 8) = v9;
    LocaleCache.preferences()(v13);
    v5 = v4;
    type metadata accessor for _LocaleICU();
    v2 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
    v11[6] = v13[6];
    v12[0] = v14[0];
    *(v12 + 12) = *(v14 + 12);
    v11[2] = v13[2];
    v11[3] = v13[3];
    v11[4] = v13[4];
    v11[5] = v13[5];
    v11[0] = v13[0];
    v11[1] = v13[1];
    swift_allocObject();
    outlined init with copy of LocalePreferences(v13, &v10);
    v6 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v11, 0);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);
      os_unfair_lock_lock((v1 + 32));
      closure #2 in LocaleCache._currentAndCache.getterpartial apply((v1 + 16), v11);
      os_unfair_lock_unlock((v1 + 32));
      outlined destroy of LocalePreferences(v13);

      v2 = *(&v11[0] + 1);
    }

    else
    {
      outlined destroy of LocalePreferences(v13);
    }
  }

  ObjectType = swift_getObjectType();
  (*(v2 + 200))(ObjectType, v2);
  return swift_unknownObjectRelease();
}

NSConstantValueExpression *HandleUnaryMinus(void *a1)
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v2 = [a1 constantValue];
  if (!_NSIsNSNumber())
  {
    goto LABEL_20;
  }

  v3 = *[v2 objCType];
  if (v3 <= 0x50)
  {
    if (v3 == 67 || v3 == 73 || v3 == 76)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v3 - 99 > 0x10)
  {
LABEL_14:
    if (v3 == 81 || v3 == 83)
    {
LABEL_16:
      v4 = [NSNumber alloc];
      v5 = [v2 unsignedLongLongValue];
      goto LABEL_17;
    }

LABEL_22:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unrecognized numeric type while processing unary minus syntax." userInfo:0]);
  }

  if (((1 << (v3 - 99)) & 0x14241) != 0)
  {
    v4 = [NSNumber alloc];
    v5 = [v2 longLongValue];
LABEL_17:
    v9 = [(NSNumber *)v4 initWithLongLong:-v5];
    goto LABEL_18;
  }

  if (v3 != 100)
  {
    if (v3 == 102)
    {
      v6 = [NSNumber alloc];
      [v2 floatValue];
      *&v8 = 0.0 - v7;
      v9 = [(NSNumber *)v6 initWithFloat:v8];
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v17 = [NSNumber alloc];
  [v2 doubleValue];
  v9 = [(NSNumber *)v17 initWithDouble:0.0 - v18];
LABEL_18:
  v10 = v9;
  if (v9)
  {
    v11 = [[NSConstantValueExpression alloc] initWithObject:v9];

    return v11;
  }

LABEL_20:
  v13 = [[NSNumber alloc] initWithLongLong:0];
  v14 = [[NSConstantValueExpression alloc] initWithObject:v13];
  v15 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v14, a1, 0}];
  FunctionExpression = CreateFunctionExpression(@"from:subtract:", v15);

  return FunctionExpression;
}

uint64_t AttributedString.Runs.subscript.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v100 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v92 - v6;
  v7 = a1[5];
  v123 = a1[4];
  v124[0] = v7;
  *(v124 + 10) = *(a1 + 90);
  v8 = a1[1];
  v120[0] = *a1;
  v120[1] = v8;
  v9 = a1[3];
  v121 = a1[2];
  v122 = v9;
  v10 = *(v3 + 3);
  v124[2] = *(v3 + 1);
  v124[3] = v10;
  v11 = *(v3 + 5);
  v12 = *(v3 + 7);
  v13 = *(v3 + 11);
  v124[6] = *(v3 + 9);
  v124[7] = v13;
  v124[4] = v11;
  v124[5] = v12;
  v14 = *(v3 + 13);
  v15 = *(v3 + 15);
  v16 = *(v3 + 19);
  v124[10] = *(v3 + 17);
  v124[11] = v16;
  v124[8] = v14;
  v124[9] = v15;
  v17 = *(v3 + 21);
  v18 = *(v3 + 23);
  v19 = *(v3 + 25);
  *(v125 + 10) = *(v3 + 210);
  v124[13] = v18;
  v125[0] = v19;
  v124[12] = v17;
  result = specialized Range.contains(_:)(v120);
  if ((result & 1) == 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  v97 = a2;
  AttributedString.Runs._resolveRun(_:)(v120, v113);
  v21 = *(&v121 + 1);
  v22 = v121;
  v23 = *(&v122 + 1);
  v102 = v122;
  v107 = v3;
  if (*(&v122 + 1) == 2 || v113[4] != v121 >> 11)
  {
    v24 = *v3;
    v31 = *(*v3 + 24);
    v32 = *(*v3 + 56);
    v118 = *(*v3 + 40);
    v119 = v32;
    v33 = *(v24 + 40);
    v114 = *(v24 + 24);
    v115 = v33;
    v116 = *(v24 + 56);
    v117 = v31;
    v106 = BigString.startIndex.getter();
    v126[0] = v117;
    v126[1] = v118;
    v127 = v119;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v126, &v110);
    v26 = BigString.UTF8View.index(_:offsetBy:)();
    v28 = v34;
    v98 = v36;
    v99 = v35;
    outlined destroy of BigString(&v117);
  }

  else
  {
    v24 = *v3;
    v25 = *(*v3 + 40);
    v117 = *(*v3 + 24);
    v118 = v25;
    v119 = *(v24 + 56);
    swift_unknownObjectRetain();
    v26 = BigString.UTF8View.index(roundingDown:)();
    v28 = v27;
    v98 = v30;
    v99 = v29;
    swift_unknownObjectRelease();
  }

  v101 = v21;
  if (BYTE8(v124[1]))
  {
    v103 = v23;
    v104 = v22;
    v95 = v26;
    v96 = v24;
    v93 = *(&v124[0] + 1);
    v94 = v28;
    if (*(&v124[0] + 1) == 2)
    {
      v37 = v26;
    }

    else
    {
      v37 = v123;
    }

    v38 = *(type metadata accessor for AttributedString.Runs() + 24);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    v40 = v108;
    v105 = v39;
    v106 = v38;
    RangeSet.ranges.getter();
    v41 = v109;
    v42 = RangeSet.Ranges.count.getter();
    v43 = v100[1];
    result = v43(v40, v41);
    if (v42 < 1)
    {
LABEL_49:
      __break(1u);
    }

    else
    {
      v44 = 0;
      v45 = v37 >> 10;
      while (!__OFADD__(v44, v42))
      {
        v46 = (v44 + v42) / 2;
        v47 = v108;
        RangeSet.ranges.getter();
        v48 = v109;
        RangeSet.Ranges.subscript.getter();
        result = v43(v47, v48);
        v49 = v110;
        if (v45 >= v110 >> 10)
        {
          v50 = v112;
          if (v45 < v112 >> 10)
          {
            v53 = *(&v110 + 1);
            v55 = *(&v111 + 1);
            v54 = v111;
            v26 = v95;
            v24 = v96;
            v23 = v103;
            v22 = v104;
            v56 = v93;
            v28 = v94;
            v58 = v98;
            v57 = v99;
            goto LABEL_22;
          }

          v44 = v46 + 1;
          v46 = v42;
        }

        v42 = v46;
        if (v44 >= v46)
        {
          goto LABEL_49;
        }
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  type metadata accessor for AttributedString.Runs();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v51 = v108;
  RangeSet.ranges.getter();
  v52 = v109;
  RangeSet.Ranges.subscript.getter();
  result = (v100[1])(v51, v52);
  v53 = *(&v110 + 1);
  v49 = v110;
  v55 = *(&v111 + 1);
  v54 = v111;
  v50 = v112;
  v56 = *(&v124[0] + 1);
  if (*(&v124[0] + 1) == 2)
  {
    v58 = v98;
    v57 = v99;
  }

  else
  {
    v58 = v98;
    v57 = v99;
    if (v123 >> 10 < v110 >> 10 || v123 >> 10 >= v112 >> 10)
    {
      goto LABEL_54;
    }
  }

LABEL_22:
  v105 = v55;
  v106 = v54;
  v107 = v53;
  if (v23 == 2)
  {
    v22 = v26;
    v101 = v28;
    v102 = v57;
    v23 = v58;
  }

  v103 = v23;
  v104 = v22;
  v59 = v123;
  if (v56 == 2)
  {
    v59 = v26;
  }

  v108 = v59;
  if (v56 == 2)
  {
    v60 = v28;
  }

  else
  {
    v60 = *(&v123 + 1);
  }

  v100 = v60;
  if (v56 == 2)
  {
    v61 = v57;
  }

  else
  {
    v61 = *&v124[0];
  }

  if (v56 == 2)
  {
    v62 = v58;
  }

  else
  {
    v62 = v56;
  }

  v98 = v62;
  v99 = v61;
  v63 = *(v24 + 72);
  v109 = *(v24 + 80);
  v64 = *(v24 + 88);
  v65 = *(v24 + 96);
  v67 = v113[0];
  v66 = v113[1];
  v68 = v113[2];
  swift_unknownObjectRetain();
  v69 = specialized Rope.subscript.getter(v67, v66, v68, v63, v109, v64, v65);
  v71 = v70;
  v73 = v72;
  v74 = v104;
  result = swift_unknownObjectRelease();
  v75 = v69 + (v74 >> 11);
  if (__OFADD__(v69, v74 >> 11))
  {
    goto LABEL_52;
  }

  if ((v50 >> 11) < v75)
  {
    v75 = v50 >> 11;
  }

  v76 = *(v24 + 40);
  v110 = *(v24 + 24);
  v111 = v76;
  v112 = *(v24 + 56);
  if (__OFSUB__(v75, v108 >> 11))
  {
    goto LABEL_53;
  }

  v77 = v103;
  if (v49 >> 10 >= v74 >> 10)
  {
    v77 = v105;
  }

  v109 = v77;
  if (v49 >> 10 >= v74 >> 10)
  {
    v78 = v106;
  }

  else
  {
    v78 = v102;
  }

  v79 = v101;
  if (v49 >> 10 >= v74 >> 10)
  {
    v79 = v107;
  }

  v106 = v78;
  v107 = v79;
  if (v49 >> 10 < v74 >> 10)
  {
    v49 = v74;
  }

  swift_unknownObjectRetain();
  v80 = BigString.UTF8View.index(_:offsetBy:)();
  v82 = v81;
  v84 = v83;
  v85 = v24;
  v87 = v86;
  swift_unknownObjectRelease();
  v88 = v97;
  *v97 = v71;
  v88[1] = v73;
  v90 = v106;
  v89 = v107;
  v88[2] = v49;
  v88[3] = v89;
  v91 = v109;
  v88[4] = v90;
  v88[5] = v91;
  v88[6] = v80;
  v88[7] = v82;
  v88[8] = v84;
  v88[9] = v87;
  v88[10] = v85;
}

void protocol witness for Collection.subscript.read in conformance AttributedString.Runs(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  *(v1 + 120) = *(*a1 + 32);
  *(v1 + 136) = v2;
  *(v1 + 152) = v1[4];
  *(v1 + 21) = *(v1 + 10);
  v3 = v1[1];
  *(v1 + 88) = *v1;
  *(v1 + 104) = v3;
  outlined destroy of AttributedString.Runs.Run(v1 + 88);

  free(v1);
}

void protocol witness for Collection.formIndex(after:) in conformance AttributedString.Runs(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v113 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v124 = &v103 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v116 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v103 - v9;
  v11 = *a1;
  v12 = v2[1];
  if (*a1 < v12)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v13 = *(a1 + 8);
  *&v123 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v111 = *(a1 + 48);
  v112 = v16;
  v17 = *(a1 + 64);
  v119 = *(a1 + 56);
  v18 = *(a1 + 88);
  v109 = *(a1 + 96);
  v19 = *(a1 + 104);
  v20 = v12 < v11 || v2[12] == 2;
  v21 = v20;
  v22 = v2[9];
  if (!v20)
  {
    if (v18 == 2)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    if (v17 >> 10 < v22 >> 10)
    {
      goto LABEL_77;
    }
  }

  v23 = v2[15];
  v24 = v2[23];
  v103 = v2 + 15;
  v25 = v2[26];
  if (v11 >= v23)
  {
    if (v23 < v11)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v25 == 2)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if (v18 == 2)
    {
      if (!v21)
      {
        goto LABEL_84;
      }

      goto LABEL_21;
    }

    if (v17 >> 10 >= v24 >> 10)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }
  }

  if ((v21 & 1) == 0)
  {
    if (v18 == 2)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (v17 >> 10 < v22 >> 10)
    {
      goto LABEL_81;
    }
  }

LABEL_21:
  if (v23 < v11)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v11 >= v23 && v18 != 2)
  {
    if (v25 == 2)
    {
LABEL_87:
      __break(1u);
      return;
    }

    if (v24 >> 10 < v17 >> 10)
    {
      goto LABEL_79;
    }
  }

  v118 = v11;
  LODWORD(v114) = v19;
  v107 = v18;
  v108 = v17;
  v26 = v15 >> 11;
  v121 = a2;
  v122 = v15 >> 11;
  v126 = v10;
  v127 = v8;
  v120 = v2;
  v125 = v5;
  v110 = v15;
  if (v14 == 1 || (v27 = *v2, v13 != *(*v2 + 96)))
  {
    if (*(v2 + *(a2 + 28)))
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v35 = *(*v2 + 72);
    v34 = *(*v2 + 80);
    v36 = *(*v2 + 88);
    v37 = *(*v2 + 96);
    v38 = *v2;
    swift_unknownObjectRetain();
    v39 = specialized Rope.find<A>(at:in:preferEnd:)(v118, 0, v35, v34, v36, v37);
    *&v123 = v41;
    v117 = v37;
    if (v39 != v37)
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v115 = v40;
    if (v35)
    {
      v42 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v117, v123, v40, v35, v34, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0;
    }

    v27 = v38;
    v26 = v122;
  }

  else
  {
    v117 = v13;
    v115 = v14;
    if (v119 == 2)
    {
      v28 = *(v27 + 72);
      if (v28)
      {
        v29 = v27;
        v30 = *(v27 + 88);
        v31 = *(v29 + 80);
        swift_unknownObjectRetain();
        v32 = v30;
        v27 = v29;
        v33 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v117, v123, v115, v28, v31, v32);
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
      }

      v45 = v33;
      v43 = 1;
      goto LABEL_44;
    }

    v42 = v15 >> 11;
  }

  v43 = v119 == 2;
  if (v119 != 2 && v26 == v42)
  {
    v44 = *(v27 + 40);
    v132 = *(v27 + 24);
    v133 = v44;
    v134 = *(v27 + 56);
    swift_unknownObjectRetain();
    v106 = BigString.UTF8View.index(roundingDown:)();
    swift_unknownObjectRelease();
    v105 = 0;
    v45 = v26;
    goto LABEL_45;
  }

  v45 = v42;
LABEL_44:
  v105 = v43;
  v46 = *(v27 + 24);
  v47 = *(v27 + 56);
  v133 = *(v27 + 40);
  v134 = v47;
  v48 = *(v27 + 40);
  v131[6] = *(v27 + 24);
  v131[7] = v48;
  v131[8] = *(v27 + 56);
  v132 = v46;
  BigString.startIndex.getter();
  v135[0] = v132;
  v135[1] = v133;
  v136 = v134;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v135, &v129);
  v106 = BigString.UTF8View.index(_:offsetBy:)();
  outlined destroy of BigString(&v132);
  v26 = v122;
LABEL_45:
  v49 = *(v27 + 72);
  v50 = *(v27 + 80);
  v51 = *(v27 + 88);
  v122 = *(v27 + 96);
  v52 = v117;
  v53 = v123;
  *&v129 = v117;
  *(&v129 + 1) = v123;
  *&v130 = v115;
  if (__OFADD__(v118, 1))
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v104 = v118 + 1;
  v118 = v27;
  v54 = v115;
  swift_unknownObjectRetain();
  v55 = v53;
  v56 = v51;
  v57 = specialized Rope.subscript.getter(v52, v55, v54, v49, v50, v51, v122);

  v58 = v45 + v57;
  if (__OFADD__(v45, v57))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  specialized Rope.formIndex(after:)(&v129, v49, v50, v56, v122);
  swift_unknownObjectRelease();
  v123 = v129;
  v117 = v130;
  v59 = *(v121 + 24);
  if (v114)
  {
    v114 = v45 + v57;
    v115 = a1;
    v122 = v26;
    (*(v113 + 16))(v124, &v120[v59], v125);
    if (v107 == 2)
    {
      v26 = v106;
    }

    else
    {
      v26 = v108;
    }

    v60 = v126;
    RangeSet.ranges.getter();
    v61 = v127;
    v58 = RangeSet.Ranges.count.getter();
    v62 = *(v116 + 8);
    v62(v60, v61);
    if (v58 >= 1)
    {
      a1 = 0;
      v63 = v26 >> 10;
      while (1)
      {
        while (1)
        {
          if (__OFADD__(a1, v58))
          {
            __break(1u);
            goto LABEL_71;
          }

          v64 = (a1 + v58) / 2;
          v65 = v62;
          v66 = v126;
          RangeSet.ranges.getter();
          v26 = v127;
          RangeSet.Ranges.subscript.getter();
          v67 = v66;
          v62 = v65;
          v65(v67, v26);
          if (v63 >= v129 >> 10)
          {
            break;
          }

          v58 = (a1 + v58) / 2;
          if (a1 >= v64)
          {
            goto LABEL_58;
          }
        }

        v68 = *&v131[0];
        if (v63 < *&v131[0] >> 10)
        {
          break;
        }

        a1 = v64 + 1;
        if (v64 + 1 >= v58)
        {
          goto LABEL_58;
        }
      }

      (*(v113 + 8))(v124, v125);
      v58 = v114;
      a1 = v115;
      v26 = v122;
      if (v114 < (v68 >> 11))
      {
        goto LABEL_60;
      }

      goto LABEL_63;
    }

LABEL_58:
    __break(1u);
  }

  v69 = v126;
  RangeSet.ranges.getter();
  v64 = v109;
  v70 = v127;
  RangeSet.Ranges.subscript.getter();
  v71 = v69;
  v65 = *(v116 + 8);
  v65(v71, v70);
  if (v58 < *&v131[0] >> 11)
  {
LABEL_60:
    if (v105)
    {
      v72 = *(v118 + 24);
      v73 = *(v118 + 56);
      v130 = *(v118 + 40);
      v131[0] = v73;
      v129 = v72;
      v131[3] = *(v118 + 24);
      v74 = *(v118 + 56);
      v131[4] = *(v118 + 40);
      v131[5] = v74;
      BigString.startIndex.getter();
      v137[0] = v129;
      v137[1] = v130;
      v138 = *&v131[0];
      outlined init with copy of Rope<BigString._Chunk>._Node?(v137, v128);
      v75 = BigString.UTF8View.index(_:offsetBy:)();
      v77 = v76;
      v79 = v78;
      v81 = v80;
      outlined destroy of BigString(&v129);
    }

    else
    {
      v90 = *(v118 + 40);
      v129 = *(v118 + 24);
      v130 = v90;
      v131[0] = *(v118 + 56);
      if (__OFSUB__(v58, v26))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      swift_unknownObjectRetain();
      v75 = BigString.UTF8View.index(_:offsetBy:)();
      v77 = v91;
      v79 = v92;
      v81 = v93;
      swift_unknownObjectRelease();
    }

    v94 = v120[*(v121 + 28)];
    v128[0] = 0;
    *a1 = v104;
    *(a1 + 8) = v123;
    *(a1 + 24) = v117;
    *(a1 + 32) = v75;
    *(a1 + 40) = v77;
    *(a1 + 48) = v79;
    *(a1 + 56) = v81;
    *(a1 + 64) = v75;
    *(a1 + 72) = v77;
    *(a1 + 80) = v79;
    *(a1 + 88) = v81;
    *(a1 + 96) = v64;
    *(a1 + 104) = 0;
    *(a1 + 105) = v94;
    return;
  }

LABEL_63:
  v124 = (v64 + 1);
  if (__OFADD__(v64, 1))
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v82 = v120;
  v83 = v126;
  RangeSet.ranges.getter();
  v84 = v127;
  v85 = RangeSet.Ranges.count.getter();
  v65(v83, v84);
  if (v124 == v85)
  {
    v86 = v103;
    v87 = v103[5];
    *(a1 + 64) = v103[4];
    *(a1 + 80) = v87;
    *(a1 + 90) = *(v86 + 90);
    v88 = v86[1];
    *a1 = *v86;
    *(a1 + 16) = v88;
    v89 = v86[3];
    *(a1 + 32) = v86[2];
    *(a1 + 48) = v89;
  }

  else
  {
    RangeSet.ranges.getter();
    v95 = v124;
    RangeSet.Ranges.subscript.getter();
    v65(v83, v84);
    v96 = v129;
    v97 = v130;
    AttributedString.Guts.findRun(at:)(v129, *(&v130 + 1), &v129);
    v98 = v130;
    v99 = v129;
    v100 = *(v131 + 8);
    v101 = *(&v131[1] + 8);
    v102 = v82[*(v121 + 28)];
    LOBYTE(v129) = 0;
    *a1 = *(&v130 + 1);
    *(a1 + 8) = v99;
    *(a1 + 24) = v98;
    *(a1 + 32) = v100;
    *(a1 + 48) = v101;
    *(a1 + 64) = v96;
    *(a1 + 80) = v97;
    *(a1 + 96) = v95;
    *(a1 + 104) = 0;
    *(a1 + 105) = v102;
  }
}

BOOL specialized closure #1 in Rope.formIndex(after:)(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (4 * *(a1 + 2) + 8) & 0x3C;
  v4 = ((v2 >> v3) & 0xF) + 1;
  v5 = *a1;
  if (v4 < v5)
  {
    *(a2 + 8) = (v4 << v3) | ((-15 << v3) - 1) & v2;
  }

  return v4 < v5;
}

uint64_t AttributedString._AttributeStorage.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24[-v12];
  v14 = (*(a3 + 24))(a2, a3, v11);
  if (*(a1 + 16))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v18 = v17;

    if (v18)
    {
      outlined init with copy of AttributedString._AttributeValue(*(a1 + 56) + 72 * v16, v25);
      outlined init with copy of Hashable & Sendable(v25, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
      v19 = swift_dynamicCast();
      v20 = *(*(AssociatedTypeWitness - 8) + 56);
      if (v19)
      {
        v21 = *(AssociatedTypeWitness - 8);
        v20(v13, 0, 1, AssociatedTypeWitness);
        (*(v21 + 32))(a4, v13, AssociatedTypeWitness);
        outlined destroy of AttributedString._AttributeValue(v25);
        return v20(a4, 0, 1, AssociatedTypeWitness);
      }

      else
      {
        v20(v13, 1, 1, AssociatedTypeWitness);
        result = (*(v10 + 8))(v13, v9);
        __break(1u);
      }

      return result;
    }
  }

  else
  {
  }

  v23 = *(*(AssociatedTypeWitness - 8) + 56);

  return v23(a4, 1, 1, AssociatedTypeWitness);
}

void (*protocol witness for Collection.subscript.read in conformance AttributedString.Runs(void *a1, _OWORD *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xB0uLL);
  }

  *a1 = v4;
  AttributedString.Runs.subscript.getter(a2, v4);
  return protocol witness for Collection.subscript.read in conformance AttributedString.Runs;
}

unint64_t AttributedString.Runs._resolveRun(_:)@<X0>(unint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = v2[1];
  if (*result < v4)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v7 = *(result + 8);
  v6 = *(result + 16);
  v8 = *(result + 24);
  v9 = *(result + 64);
  v10 = *(result + 88);
  if (v4 >= v3 && v2[12] != 2)
  {
    if (v10 == 2)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v9 >> 10 < v2[9] >> 10)
    {
      goto LABEL_64;
    }
  }

  v11 = v2[15];
  if (v11 < v3)
  {
    goto LABEL_61;
  }

  if (v3 < v11 || v10 == 2)
  {
LABEL_11:
    if (v8 != 1)
    {
      v12 = *v2;
      if (v7 == *(*v2 + 96))
      {
        if (*(result + 56) != 2)
        {
          v16 = *(result + 32) >> 11;
          goto LABEL_53;
        }

        v13 = v12[9];
        if (v13)
        {
          v15 = v12[10];
          v14 = v12[11];
          swift_unknownObjectRetain();
          v16 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v7, v6, v8, v13, v15, v14);
LABEL_41:
          result = swift_unknownObjectRelease();
LABEL_53:
          *a2 = v7;
          a2[1] = v6;
          a2[2] = v8;
          a2[3] = v3;
          a2[4] = v16;
          return result;
        }

        goto LABEL_52;
      }
    }

    result = type metadata accessor for AttributedString.Runs();
    if (*(v2 + *(result + 28)))
    {
      goto LABEL_62;
    }

    v17 = *v2;
    v18 = *(*v2 + 72);
    v19 = *(*v2 + 80);
    if (v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v3 < 0 || v20 < v3)
    {
      goto LABEL_63;
    }

    v21 = *(v17 + 88);
    v7 = *(v17 + 96);
    if (!v18 || v3 >= v19 || (v22 = (v18 + 16), v23 = *(v18 + 16), !*(v18 + 16)))
    {
      v33 = swift_unknownObjectRetain();
      result = specialized Rope._endPath.getter(v33);
      v6 = result;
      v8 = 0;
      if (v18)
      {
LABEL_40:
        v16 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v7, v6, v8, v18, v19, v21);
        goto LABEL_41;
      }

LABEL_52:
      v16 = 0;
      goto LABEL_53;
    }

    v36 = *(v17 + 88);
    v37 = v19;
    v38 = *(v17 + 96);
    v24 = *(v18 + 18);
    result = swift_unknownObjectRetain_n();
    if (v24)
    {
      v25 = v3;
      v26 = v24;
      v27 = v18;
      do
      {
        v28 = *v22;
        if (*v22)
        {
          v29 = 0;
          v30 = (v27 + 32);
          while (1)
          {
            v31 = *v30;
            v30 += 3;
            v32 = v25 - v31;
            if (__OFSUB__(v25, v31))
            {
              goto LABEL_56;
            }

            if (__OFADD__(v32, 1))
            {
              goto LABEL_57;
            }

            if (v32 + 1 < 1)
            {
              v28 = v29;
              goto LABEL_28;
            }

            ++v29;
            v25 = v32;
            if (v28 == v29)
            {
              goto LABEL_37;
            }
          }
        }

        v32 = v25;
LABEL_37:
        if (v32)
        {
          goto LABEL_59;
        }

        v25 = 0;
LABEL_28:
        v26 = (v28 << ((4 * v24 + 8) & 0x3C)) | ((-15 << ((4 * v24 + 8) & 0x3C)) - 1) & v26;
        v8 = *(v27 + 24 + 24 * v28);
        swift_unknownObjectRetain();
        result = swift_unknownObjectRelease();
        v22 = (v8 + 16);
        LOBYTE(v24) = *(v8 + 18);
        v27 = v8;
      }

      while (v24);
      v23 = *v22;
      if (*v22)
      {
        goto LABEL_46;
      }

      v35 = 0;
      if (!v25)
      {
LABEL_51:
        swift_unknownObjectRelease();
        v6 = v26 & 0xFFFFFFFFFFFFF0FFLL | (v35 << 8);
        v19 = v37;
        v7 = v38;
        v21 = v36;
        goto LABEL_40;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    else
    {
      v26 = 0;
      v25 = v3;
      v8 = v18;
LABEL_46:
      v34 = 0;
      v35 = v25 & ~(v25 >> 63);
      while ((v25 ^ v34) != 0x8000000000000000)
      {
        if (v35 == v34)
        {
          goto LABEL_51;
        }

        if (v23 == ++v34)
        {
          v35 = v23;
          if (v25 != v34)
          {
            goto LABEL_55;
          }

          goto LABEL_51;
        }
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v2[26] != 2)
  {
    if (v2[23] >> 10 < v9 >> 10)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    goto LABEL_11;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t specialized Rope.formIndex(after:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*result != a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v6 = result;
  if (*(result + 8) >= (((-15 << ((4 * *(a2 + 18) + 8) & 0x3C)) - 1) & *(a2 + 18) | (*(a2 + 16) << ((4 * *(a2 + 18) + 8) & 0x3C))))
  {
    goto LABEL_10;
  }

  v8 = *(result + 16);
  if (!v8 || (result = specialized closure #1 in Rope.formIndex(after:)((v8 + 16), result), (result & 1) == 0))
  {
    result = specialized Rope._Node.formSuccessor(of:)(v6, a2);
    if ((result & 1) == 0)
    {
      v9 = ((-15 << ((4 * *(a2 + 18) + 8) & 0x3C)) - 1) & *(a2 + 18) | (*(a2 + 16) << ((4 * *(a2 + 18) + 8) & 0x3C));
      *v6 = a5;
      v6[1] = v9;
      v6[2] = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t specialized Rope._Node.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  result = swift_isUniquelyReferenced_nonNull();
  v8 = *v3;
  if ((result & 1) == 0)
  {
    v9 = specialized Rope._Node.copy()(*v3);
    v11 = v10;
    v13 = v12;
    result = swift_unknownObjectRelease();
    *v3 = v9;
    v3[1] = v11;
    v8 = v9;
    v3[2] = v13;
  }

  if (*(v8 + 18))
  {
    v14 = v3[1];
    v15 = v8 + 24 * *(v8 + 16);
    v16 = *(v15 + 8);
    v17 = v14 - v16;
    if (__OFSUB__(v14, v16))
    {
      __break(1u);
    }

    else
    {
      v18 = v3[2];
      v19 = *(v15 + 16);
      v20 = v18 - v19;
      if (!__OFSUB__(v18, v19))
      {

        swift_unknownObjectRetain();
        result = specialized Rope._Node.append(_:)(a1, a2, a3);
        v23 = *(v15 + 8);
        v24 = v17 + v23;
        if (!__OFADD__(v17, v23))
        {
          v25 = *(v15 + 16);
          v26 = __OFADD__(v20, v25);
          v27 = v20 + v25;
          if (!v26)
          {
            v28 = result;
            v29 = v22;
            v30 = v21;
            swift_unknownObjectRelease();
            v3[1] = v24;
            v3[2] = v27;
            if (!v28)
            {
              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              return 0;
            }

            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            specialized closure #2 in Rope._Node.append(_:)((v8 + 16), v8 + 24);
            swift_unknownObjectRelease();

            if (*(v8 + 16) == 15)
            {
              v31 = specialized Rope._Node.split(keeping:)(8);
              specialized Rope._Node._appendNode(_:)(v28, v30, v29);

              swift_unknownObjectRelease();
              return v31;
            }

            specialized Rope._Node._appendNode(_:)(v28, v30, v29);

            swift_unknownObjectRelease();
            return 0;
          }

LABEL_22:
          __break(1u);
          return result;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if (*(v8 + 16) == 15)
  {
    v31 = specialized Rope._Node.split(keeping:)(8);
    specialized Rope._Node._appendItem(_:)(a1, a2, a3);
    return v31;
  }

  specialized Rope._Node._appendItem(_:)(a1, a2, a3);
  return 0;
}

uint64_t specialized Range.contains(_:)(uint64_t *a1)
{
  v2 = *a1;
  if (*a1 < *v1)
  {
    return 0;
  }

  v4 = a1[8];
  v5 = a1[11];
  if (*v1 < v2 || v1[11] == 2)
  {
    goto LABEL_8;
  }

  if (v5 == 2)
  {
    return 0;
  }

  if (v4 >> 10 < v1[8] >> 10)
  {
    return 0;
  }

LABEL_8:
  v7 = v1[14];
  if (v2 < v7)
  {
    return 1;
  }

  if (v7 < v2 || v1[25] == 2)
  {
    return 0;
  }

  v9 = v4 >> 10 < v1[22] >> 10;
  return v5 == 2 || v9;
}

void (*AttributedString.subscript.modify(uint64_t *a1))(uint64_t *a1)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x270uLL);
  }

  v5 = v4;
  v46 = a1;
  *a1 = v4;
  *(v4 + 608) = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  v8 = &unk_1EA7B2000;
  v9 = &static AttributedString.Guts._nextVersion;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_14;
  }

  v10 = &static AttributedString.Guts._nextVersion;
  v11 = *(v7 + 24);
  v12 = *(v7 + 56);
  *(v5 + 432) = *(v7 + 40);
  *(v5 + 448) = v12;
  *(v5 + 416) = v11;
  v13 = *(v7 + 72);
  v14 = *(v7 + 80);
  v15 = *(v7 + 88);
  v16 = *(v7 + 96);
  type metadata accessor for AttributedString.Guts();
  v7 = swift_allocObject();
  v17 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(v5 + 416, v5 + 112);
  v18 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v18);
  if (v13)
  {
    v19 = v15 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19;
  if (v20 != v17)
  {
    goto LABEL_23;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v9 = v10;
    *(v7 + 16) = atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    v21 = *(v5 + 416);
    v22 = *(v5 + 432);
    *(v7 + 56) = *(v5 + 448);
    *(v7 + 40) = v22;
    *(v7 + 24) = v21;
    *(v7 + 72) = v13;
    *(v7 + 80) = v14;
    *(v7 + 88) = v15;
    *(v7 + 96) = v16;
    *(v7 + 104) = MEMORY[0x1E69E7CC0];

    *v2 = v7;
LABEL_14:
    if (v8[147] != -1)
    {
      swift_once();
    }

    v10 = v9;
    *(v7 + 16) = atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
    v23 = *(v7 + 24);
    v24 = *(v7 + 56);
    *(v5 + 480) = *(v7 + 40);
    *(v5 + 496) = v24;
    *(v5 + 464) = v23;
    v25 = BigString.startIndex.getter();
    v16 = v26;
    v13 = v27;
    v14 = v28;
    v29 = BigString.endIndex.getter();
    *(v5 + 272) = v7;
    *(v5 + 280) = v25;
    *(v5 + 288) = v16;
    *(v5 + 296) = v13;
    *(v5 + 304) = v14;
    *(v5 + 312) = v29;
    *(v5 + 320) = v30;
    *(v5 + 328) = v31;
    *(v5 + 336) = v32;
    *(v5 + 344) = 0;
    lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();

    dispatch thunk of RangeExpression.relative<A>(to:)();
    v33 = *(v5 + 320);
    *(v5 + 144) = *(v5 + 304);
    *(v5 + 160) = v33;
    *(v5 + 176) = *(v5 + 336);
    v34 = *(v5 + 288);
    *(v5 + 112) = *(v5 + 272);
    *(v5 + 128) = v34;
    outlined destroy of AttributedString.CharacterView(v5 + 112);
    v35 = *(v5 + 208);
    v36 = *(v5 + 232);
    v37 = *(v5 + 248);
    *(v5 + 352) = *(v5 + 192);
    *(v5 + 368) = v35;
    *(v5 + 384) = v36;
    *(v5 + 400) = v37;
    *(v5 + 264) = 0;
    *(v5 + 192) = v7;
    v38 = *(v7 + 40);
    v39 = *(v7 + 56);
    *(v5 + 512) = *(v7 + 24);
    *(v5 + 528) = v38;
    *(v5 + 544) = v39;
    swift_unknownObjectRetain();

    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(v5);
    v47 = *(v5 + 64);
    v40 = *(v5 + 80);
    v48 = *(v5 + 96);
    *(v5 + 200) = *(v5 + 48);
    *(v5 + 216) = v47;
    *(v5 + 232) = v40;
    *(v5 + 248) = v48;
    v8 = v46;
    if (one-time initialization token for currentIdentity != -1)
    {
      swift_once();
    }

    v41 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v42 = *(v41 + 16);
    v15 = v42 + 1;
    *(v5 + 616) = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v41 + 16) = v15;
    os_unfair_lock_unlock((v41 + 24));
    *(v5 + 264) = v15;
    BigString.init()();
    *(v5 + 272) = 0;
    MEMORY[0x1865D26B0](v5 + 272, 8);
    v16 = *(v5 + 272);
    type metadata accessor for AttributedString.Guts();
    v15 = swift_allocObject();
    if (BigString.isEmpty.getter())
    {
      break;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  *(v15 + 16) = atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
  v43 = *(v5 + 560);
  v44 = *(v5 + 576);
  *(v15 + 56) = *(v5 + 592);
  *(v15 + 40) = v44;
  *(v15 + 24) = v43;
  *(v15 + 72) = 0;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0;
  *(v15 + 96) = v16;
  *(v15 + 104) = MEMORY[0x1E69E7CC0];

  *v2 = v15;
  return AttributedString.subscript.modify;
}

{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x290uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 544) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  *(v6 + 552) = v8;
  v9 = type metadata accessor for DiscontiguousAttributedSubstring();
  v10 = *(*(v9 - 8) + 64);
  if (v4)
  {
    v85 = swift_coroFrameAlloc();
    *(v6 + 560) = v85;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v85 = malloc(*(*(v9 - 8) + 64));
    *(v6 + 560) = v85;
    v11 = malloc(v10);
  }

  v12 = v11;
  *(v6 + 568) = v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
  v78 = *(v90 - 8);
  if (v4)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(*(v90 - 8) + 64));
  }

  v14 = v13;
  *(v6 + 576) = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  *(v6 + 584) = v15;
  v84 = v15;
  v16 = *(*(v15 - 8) + 64);
  v68 = v12;
  v82 = v9;
  v80 = *(v15 - 8);
  if (v4)
  {
    v83 = swift_coroFrameAlloc();
    *(v6 + 592) = v83;
    v79 = swift_coroFrameAlloc();
    *(v6 + 600) = v79;
    *(v6 + 608) = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v83 = malloc(v16);
    *(v6 + 592) = v83;
    v79 = malloc(v16);
    *(v6 + 600) = v79;
    *(v6 + 608) = malloc(v16);
    v17 = malloc(v16);
  }

  v77 = v17;
  *(v6 + 616) = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v2;
  v20 = &unk_1EA7B2000;
  v21 = MEMORY[0x1E69E7CC0];
  v22 = &static AttributedString.Guts._nextVersion;
  if (isUniquelyReferenced_nonNull_native)
  {
    v86 = *v2;
    goto LABEL_27;
  }

  v23 = *(v19 + 24);
  v24 = *(v19 + 56);
  *(v6 + 256) = *(v19 + 40);
  *(v6 + 272) = v24;
  *(v6 + 240) = v23;
  v25 = *(v19 + 72);
  v26 = *(v19 + 80);
  v21 = *(v19 + 88);
  v27 = *(v19 + 96);
  type metadata accessor for AttributedString.Guts();
  v86 = swift_allocObject();
  v28 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(v6 + 240, v6 + 432);
  v29 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v29);
  if (v25)
  {
    v30 = v21 == 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = v30;
  if (v31 != v28)
  {
    goto LABEL_55;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v22 = &static AttributedString.Guts._nextVersion;
    *(v86 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v32 = *(v6 + 240);
    v33 = *(v6 + 256);
    *(v86 + 56) = *(v6 + 272);
    *(v86 + 40) = v33;
    *(v86 + 24) = v32;
    *(v86 + 72) = v25;
    *(v86 + 80) = v26;
    *(v86 + 88) = v21;
    *(v86 + 96) = v27;
    v21 = MEMORY[0x1E69E7CC0];
    *(v86 + 104) = MEMORY[0x1E69E7CC0];

    *v2 = v86;
LABEL_27:
    v27 = v90;
    v34 = v14;
    if (v20[147] != -1)
    {
LABEL_51:
      swift_once();
    }

    v14 = v86;
    *(v86 + 16) = atomic_fetch_add_explicit(v22, 1uLL, memory_order_relaxed);
    v35 = *(v86 + 24);
    v36 = *(v86 + 56);
    *(v6 + 304) = *(v86 + 40);
    *(v6 + 320) = v36;
    *(v6 + 288) = v35;
    v37 = BigString.startIndex.getter();
    v75 = v38;
    v76 = v37;
    v73 = v40;
    v74 = v39;
    v41 = BigString.endIndex.getter();
    v71 = v42;
    v72 = v41;
    v69 = v44;
    v70 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMd);
    RangeSet.ranges.getter();
    v26 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
    v45 = dispatch thunk of Collection.count.getter();
    v81 = v2;
    if (!v45)
    {
      (*(v78 + 8))(v34, v27);
      v20 = MEMORY[0x1E69E7CC0];
      goto LABEL_35;
    }

    v25 = v45;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45 & ~(v45 >> 63), 0);
    v20 = v21;
    dispatch thunk of Collection.startIndex.getter();
    if ((v25 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  do
  {
    v46 = dispatch thunk of Collection.subscript.read();
    v91 = v47[1];
    v92 = *v47;
    v87 = *(v47 + 56);
    v88 = *(v47 + 40);
    v46(v6 + 480, 0);
    v49 = *(v21 + 16);
    v48 = *(v21 + 24);
    if (v49 >= v48 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
    }

    *(v21 + 16) = v49 + 1;
    v50 = (v21 + (v49 << 6));
    v50[2] = v92;
    v50[3] = v91;
    v50[4] = v88;
    v50[5] = v87;
    dispatch thunk of Collection.formIndex(after:)();
    --v25;
  }

  while (v25);
  (*(v78 + 8))(v34, v27);
  v2 = v81;
  v14 = v86;
LABEL_35:
  *(v6 + 520) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySny19CollectionsInternal9BigStringV5IndexVGGMd);
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  v90 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [Range<BigString.Index>] and conformance [A], &_sSaySny19CollectionsInternal9BigStringV5IndexVGGMd);
  RangeSet.init<A>(_:)();
  *(v6 + 176) = v76;
  *(v6 + 184) = v75;
  *(v6 + 192) = v74;
  *(v6 + 200) = v73;
  *(v6 + 208) = v72;
  *(v6 + 216) = v71;
  *(v6 + 224) = v70;
  *(v6 + 232) = v69;
  RangeSet.init(_:)();
  RangeSet.intersection(_:)();
  v27 = v80 + 8;
  v51 = *(v80 + 8);
  *(v6 + 624) = v51;
  *(v6 + 632) = (v80 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v89 = v51;
  v51(v79, v84);
  (*(v80 + 16))(v83, v77, v84);
  v26 = v82;
  *(v85 + *(v82 + 24)) = 0;
  *v85 = v14;

  RangeSet.ranges.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v21 = dispatch thunk of Sequence._copyToContiguousArray()();
  v52 = *(v21 + 16);
  if (v52)
  {
    v53 = 0;
    v54 = *(v14 + 40);
    v55 = *(v14 + 56);
    *(v6 + 336) = *(v14 + 24);
    *(v6 + 352) = v54;
    *(v6 + 368) = v55;
    v34 = v52 - 1;
    v2 = 32;
    while (1)
    {
      v56 = *(v21 + v2);
      v57 = *(v21 + v2 + 16);
      v58 = *(v21 + v2 + 48);
      *(v6 + 144) = *(v21 + v2 + 32);
      *(v6 + 160) = v58;
      *(v6 + 112) = v56;
      *(v6 + 128) = v57;
      swift_unknownObjectRetain();
      v22 = (v6 + 336);
      BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();
      v93 = *(v6 + 48);
      v94 = *(v6 + 64);
      v95 = *(v6 + 80);
      v96 = *(v6 + 96);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
      }

      outlined destroy of BigSubstring.UnicodeScalarView(v6);
      if (v53 >= *(v21 + 16))
      {
        break;
      }

      v59 = (v21 + v2);
      v59[2] = v95;
      v59[3] = v96;
      *v59 = v93;
      v59[1] = v94;
      if (v34 == v53)
      {
        v2 = v81;
        v26 = v82;
        goto LABEL_44;
      }

      v60 = *(v14 + 40);
      v61 = *(v14 + 56);
      *(v6 + 336) = *(v14 + 24);
      *(v6 + 352) = v60;
      *(v6 + 368) = v61;
      v2 += 64;
      if (++v53 >= *(v21 + 16))
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_44:
  *(v6 + 528) = v21;
  v25 = *(v26 + 20);

  v20 = v85;
  RangeSet.init<A>(_:)();
  v89(v83, v84);

  v27 = v68;
  outlined init with take of AttributedString.Runs(v85, v68, type metadata accessor for DiscontiguousAttributedSubstring);
  if (one-time initialization token for currentIdentity != -1)
  {
    swift_once();
  }

  v21 = static AttributedString.currentIdentity;
  os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
  v62 = *(v21 + 16);
  v63 = v62 + 1;
  *(v6 + 640) = v62 + 1;
  if (__OFADD__(v62, 1))
  {
    __break(1u);
    goto LABEL_53;
  }

  *(v21 + 16) = v63;
  os_unfair_lock_unlock((v21 + 24));
  v64 = *(v26 + 24);
  *(v6 + 648) = v64;
  *(v68 + v64) = v63;
  BigString.init()();
  *(v6 + 536) = 0;
  MEMORY[0x1865D26B0](v6 + 536, 8);
  v25 = *(v6 + 536);
  type metadata accessor for AttributedString.Guts();
  v21 = swift_allocObject();
  if ((BigString.isEmpty.getter() & 1) == 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(v21 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v65 = *(v6 + 384);
  v66 = *(v6 + 400);
  *(v21 + 56) = *(v6 + 416);
  *(v21 + 40) = v66;
  *(v21 + 24) = v65;
  *(v21 + 72) = 0;
  *(v21 + 80) = 0;
  *(v21 + 88) = 0;
  *(v21 + 96) = v25;
  *(v21 + 104) = MEMORY[0x1E69E7CC0];

  *v2 = v21;
  return AttributedString.subscript.modify;
}

uint64_t AttributedSubstring.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

  v41 = v14;
  v44 = v17;
  v45 = v10;
  v46 = a3;
  v47 = a4;
  v48 = a1;
  v18 = *v5;
  v19 = *(*v5 + 24);
  v20 = *(*v5 + 56);
  v55 = *(*v5 + 40);
  v56 = v20;
  v54 = v19;
  v21 = v18[9];
  v22 = v18[10];
  v23 = v18[12];
  v49 = v18[11];
  type metadata accessor for AttributedString.Guts();
  v24 = swift_allocObject();
  v25 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v54, &v50);
  v26 = swift_unknownObjectRetain();
  v43 = v22;
  v27 = v49;
  v42 = v23;
  specialized Rope._endPath.getter(v26);
  if (v21)
  {
    v28 = v27 == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28;
  if (v29 != v25)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_15:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v31 = v55;
  *(v24 + 24) = v54;
  *(v24 + 16) = add_explicit;
  *(v24 + 40) = v31;
  *(v24 + 56) = v56;
  v32 = v43;
  *(v24 + 72) = v21;
  *(v24 + 80) = v32;
  v33 = v42;
  *(v24 + 88) = v27;
  *(v24 + 96) = v33;
  *(v24 + 104) = MEMORY[0x1E69E7CC0];

  *v5 = v24;
  a4 = v47;
  a1 = v48;
  v10 = v45;
  a3 = v46;
  v17 = v44;
  v14 = v41;
LABEL_11:
  (*(v11 + 16))(v13, a1, v10);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    v34 = *(v11 + 8);
    v34(v13, v10);
    v35 = *(v5 + 24);
    v50 = *(v5 + 8);
    v51 = v35;
    v36 = *(v5 + 56);
    v52 = *(v5 + 40);
    v53 = v36;
    AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(a3, &v50, a3, a4);
    return (v34)(a1, v10);
  }

  else
  {
    (*(v14 + 32))(v17, v13, AssociatedTypeWitness);
    v38 = *(v5 + 24);
    v50 = *(v5 + 8);
    v51 = v38;
    v39 = *(v5 + 56);
    v52 = *(v5 + 40);
    v53 = v39;
    AttributedString.Guts.setAttributeValue<A>(_:forKey:in:)(v17, a3, &v50, a3, a4);
    (*(v11 + 8))(a1, v10);
    return (*(v14 + 8))(v17, AssociatedTypeWitness);
  }
}

void AttributedString.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 264) == *(*a1 + 616))
  {
    v2 = *(v1 + 608);
    v3 = *(v1 + 192);

    *v2 = v3;
    v4 = *(v1 + 240);
    *(v1 + 304) = *(v1 + 224);
    *(v1 + 320) = v4;
    *(v1 + 336) = *(v1 + 256);
    v5 = *(v1 + 208);
    *(v1 + 272) = *(v1 + 192);
    *(v1 + 288) = v5;
    outlined destroy of AttributedSubstring(v1 + 272);

    free(v1);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

{
  v1 = *a1;
  v2 = *(*a1 + 568);
  if (*(v2 + *(*a1 + 648)) == *(*a1 + 640))
  {
    v3 = *(v1 + 616);
    v4 = *(v1 + 608);
    v5 = *(v1 + 600);
    v6 = *(v1 + 592);
    v7 = *(v1 + 576);
    v10 = *(v1 + 560);
    v11 = *(v1 + 552);
    v8 = *(v1 + 544);
    (*(v1 + 624))(v3, *(v1 + 584));
    v9 = *v2;

    *v8 = v9;
    _s10Foundation16AttributedStringV4RunsVWOhTm_1(v2, type metadata accessor for DiscontiguousAttributedSubstring);
    free(v3);
    free(v4);
    free(v5);
    free(v6);
    free(v7);
    free(v2);
    free(v10);
    free(v11);

    free(v1);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t outlined init with copy of AttributedString.Runs(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString.Runs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(v4 + 40);
  v25 = *(v4 + 24);
  v26 = v8;
  v27 = *(v4 + 56);
  swift_unknownObjectRetain();
  v9 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v10 = *(v4 + 40);
  v22 = *(v4 + 24);
  v23 = v10;
  v24 = *(v4 + 56);
  swift_unknownObjectRetain();
  v11 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v12 = v9 >> 11;
  v13 = v11 >> 11;
  v19[2] = a3;
  v19[3] = a4;
  AttributedString._InternalRunsSlice.updateEach(with:)(partial apply for closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:), v19, v5, v12, v11 >> 11);
  v14 = *(a4 + 32);
  result = v14(&v20, a3, a4);
  if (v21 != 1)
  {
    outlined consume of AttributedString.AttributeRunBoundaries?(v20, v21);
    v14(&v20, a3, a4);
    v16 = v21;
    if (v21 == 1)
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v18 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_181218E20;
      *(v17 + 32) = v18;
      *(v17 + 40) = v16;
    }

    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v12, v13, 0, v17);
  }

  return result;
}

char *closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(uint64_t *a1, uint64_t a2, uint64_t a3, BOOL *a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 24);
  v11 = v10(a5, a6);
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    goto LABEL_6;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *a1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v18 = *a1;
LABEL_4:

    v19 = *(v18 + 56) + 72 * v13;
    v53 = *v19;
    v21 = *(v19 + 32);
    v20 = *(v19 + 48);
    v22 = *(v19 + 64);
    v54 = *(v19 + 16);
    v55 = v21;
    v57 = v22;
    v56 = v20;
    specialized _NativeDictionary._delete(at:)(v13, v18);
    *a1 = v18;
LABEL_6:
    v23 = v10(a5, a6);
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v23, v24, &v53, v51);

    outlined destroy of TermOfAddress?(v51, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v25 = *(&v54 + 1) != 0;
    result = outlined destroy of TermOfAddress?(&v53, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    *a4 = v25;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v27 = static _DictionaryStorage.copy(original:)();
  v18 = v27;
  if (!*(v17 + 16))
  {
LABEL_22:

    goto LABEL_4;
  }

  result = (v27 + 64);
  v28 = (v17 + 64);
  v29 = ((1 << *(v18 + 32)) + 63) >> 6;
  if (v18 != v17 || result >= &v28[8 * v29])
  {
    result = memmove(result, v28, 8 * v29);
  }

  v30 = 0;
  *(v18 + 16) = *(v17 + 16);
  v31 = 1 << *(v17 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v17 + 64);
  v34 = (v31 + 63) >> 6;
  v45 = v34;
  if (v33)
  {
    do
    {
      v35 = __clz(__rbit64(v33));
      v50 = (v33 - 1) & v33;
LABEL_20:
      v38 = v35 | (v30 << 6);
      v47 = 16 * v38;
      v39 = (*(v17 + 48) + 16 * v38);
      v48 = v39[1];
      v49 = *v39;
      v46 = 72 * v38;
      outlined init with copy of AttributedString._AttributeValue(*(v17 + 56) + 72 * v38, &v53);
      v40 = (*(v18 + 48) + v47);
      *v40 = v49;
      v40[1] = v48;
      v41 = *(v18 + 56) + v46;
      *v41 = v53;
      v42 = v54;
      v43 = v55;
      v44 = v56;
      *(v41 + 64) = v57;
      *(v41 + 32) = v43;
      *(v41 + 48) = v44;
      *(v41 + 16) = v42;

      v34 = v45;
      v33 = v50;
    }

    while (v50);
  }

  v36 = v30;
  while (1)
  {
    v30 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v30 >= v34)
    {
      goto LABEL_22;
    }

    v37 = *(v17 + 64 + 8 * v30);
    ++v36;
    if (v37)
    {
      v35 = __clz(__rbit64(v37));
      v50 = (v37 - 1) & v37;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

char *specialized _NativeDictionary._delete(at:)(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 72 * v3);
        v15 = (v14 + 72 * v6);
        if (v3 != v6 || result >= v15 + 72)
        {
          result = memmove(result, v15, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 80 * v3);
        v15 = (v14 + 80 * v6);
        if (v3 != v6 || result >= v15 + 80)
        {
          result = memmove(result, v15, 0x50uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  v14 = *a3;
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v7 = type metadata accessor for _BridgedURL();
    v8 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v7 = type metadata accessor for _SwiftURL();
    v8 = &protocol witness table for _SwiftURL;
  }

  v15 = v14;
  v9 = v8[11];
  swift_unknownObjectRetain();
  v9(a1, a2 & 1, &v15);
  v10 = (v8[56])(v7, v8);
  v12 = v11;
  result = swift_unknownObjectRelease();
  *a4 = v10;
  a4[1] = v12;
  return result;
}

uint64_t protocol witness for _URLProtocol.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:) in conformance _SwiftURL(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = String.init(cString:)();
  v8 = v7;
  v12 = a2 ^ 1;
  v11[0] = v4;
  v11[1] = v5;
  v9 = swift_allocObject();
  _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v6, v8, 0, &v12, v11);
  return v9;
}

uint64_t one-time initialization function for currentIdentity()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySi_GMd);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  static AttributedString.currentIdentity = result;
  return result;
}

uint64_t static PredicateExpressions.build_NotEqual<A, B>(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.NotEqual();
  return (*(*(a4 - 8) + 16))(a5 + *(v8 + 60), a2, a4);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.NotEqual<A, B>(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.NilLiteral<A>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t specialized static Calendar._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftCalendar();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____NSSwiftCalendar__lock);
    v6 = a1;
    os_unfair_lock_lock((v5 + 32));
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 32));
  }

  else
  {
    type metadata accessor for _CalendarBridged();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _CalendarBridged and conformance _CalendarBridged, type metadata accessor for _CalendarBridged);
    v9 = a1;
  }

  *a2 = v7;
  a2[1] = v8;
  return 1;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v15 >= v16 + 1))
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (48 * v3 < (48 * v6) || v17 >= v18 + 3 || v3 != v6)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t StringProtocol.enumerateSubstrings<A>(in:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v29 = a4;
  v30 = a2;
  v27 = a3;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  StringProtocol._ephemeralString.getter();
  v28 = String._bridgeToObjectiveCImpl()();

  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = StringProtocol._toUTF16Offsets(_:)();
  v19 = v18 - result;
  if (__OFSUB__(v18, result))
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    v21 = v9;
    v22 = v19;
    (*(v14 + 16))(&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v21, a5);
    v23 = (*(v14 + 80) + 64) & ~*(v14 + 80);
    v24 = swift_allocObject();
    *(v24 + 2) = a5;
    *(v24 + 3) = a6;
    *(v24 + 4) = a7;
    *(v24 + 5) = a8;
    v25 = v29;
    *(v24 + 6) = v27;
    *(v24 + 7) = v25;
    (*(v14 + 32))(&v24[v23], v16, a5);
    aBlock[4] = partial apply for closure #1 in StringProtocol.enumerateSubstrings<A>(in:options:_:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed String?, @unowned _NSRange, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    aBlock[3] = &block_descriptor_85_0;
    v26 = _Block_copy(aBlock);

    [v28 enumerateSubstringsInRange:v20 options:v22 usingBlock:{v30, v26}];
    _Block_release(v26);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_18097396C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t AttributedString.Runs._isPartial.getter()
{
  result = type metadata accessor for AttributedString.Runs();
  if ((*(v0 + *(result + 28)) & 1) == 0)
  {
    if (v0[12] == 2 || v0[26] == 2)
    {
      __break(1u);
      return result;
    }

    v2 = v0[9];
    v3 = v0[23];
    if ((BigString.startIndex.getter() ^ v2) <= 0x3FF)
    {
      return (BigString.endIndex.getter() ^ v3) > 0x3FF;
    }
  }

  return 1;
}

unint64_t specialized IndexingIterator.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v247 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v264 = &v222 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v222 - v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  v11 = v2 + *(result + 36);
  if (*v11 == v2[15])
  {
    v12 = v2[26];
    if (*(v11 + 11) == 2)
    {
      if (v12 != 2)
      {
        goto LABEL_8;
      }

LABEL_7:
      *(a1 + 80) = 0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return result;
    }

    if (v12 != 2 && (*(v11 + 8) ^ v2[23]) < 1024)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v267 = v7;
  v223 = v2 + 15;
  v13 = *(v11 + 1);
  v286 = *v11;
  v14 = *(v11 + 5);
  v290 = *(v11 + 4);
  v291[0] = v14;
  *(v291 + 10) = *(v11 + 90);
  v16 = *(v11 + 2);
  v15 = *(v11 + 3);
  v233 = v11;
  v288 = v16;
  v289 = v15;
  v287 = v13;
  v17 = v286;
  v245 = *(&v290 + 1);
  v260 = v290;
  v263 = *(&v291[0] + 1);
  v244 = *&v291[0];
  v18 = *(v2 + 3);
  v292 = *(v2 + 1);
  v293 = v18;
  v19 = *(v2 + 5);
  v20 = *(v2 + 7);
  v21 = *(v2 + 11);
  v296 = *(v2 + 9);
  v297 = v21;
  v294 = v19;
  v295 = v20;
  v22 = *(v2 + 13);
  v23 = *(v2 + 15);
  v24 = *(v2 + 19);
  v300 = *(v2 + 17);
  v301 = v24;
  v298 = v22;
  v299 = v23;
  v25 = *(v2 + 21);
  v26 = *(v2 + 23);
  v27 = *(v2 + 25);
  *(v304 + 10) = *(v2 + 210);
  v303 = v26;
  v304[0] = v27;
  v302 = v25;
  v28 = v292;
  v246 = v296;
  v29 = *(&v297 + 1);
  result = specialized Range.contains(_:)(&v286);
  if (v17 < v28 || (result & 1) == 0)
  {
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
    goto LABEL_246;
  }

  v30 = v28 < v17 || v29 == 2;
  v31 = v30;
  if (!v30)
  {
    if (v263 == 2)
    {
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    if (v260 >> 10 < v246 >> 10)
    {
      goto LABEL_253;
    }
  }

  if (v299 < v17)
  {
    goto LABEL_242;
  }

  v243 = v31;
  v250 = *(&v304[0] + 1);
  v242 = v299;
  v32 = v17 < v299 || v263 == 2;
  v33 = v32;
  v239 = v33;
  if (!v32)
  {
    if (v250 == 2)
    {
LABEL_261:
      __break(1u);
      goto LABEL_262;
    }

    if (v303 >> 10 < v260 >> 10)
    {
      goto LABEL_254;
    }
  }

  v240 = v303;
  v241 = a1;
  v258 = v287;
  v259 = *(&v286 + 1);
  v254 = v289;
  v255 = *(&v288 + 1);
  v256 = v288;
  v257 = *(&v289 + 1);
  v253 = v288 >> 11;
  v262 = *(&v287 + 1);
  v265 = v2;
  v266 = v4;
  v269 = v6;
  v251 = v17;
  if (*(&v287 + 1) == 1 || (v34 = *v2, v259 != *(*v2 + 96)))
  {
    result = type metadata accessor for AttributedString.Runs();
    if (*(v2 + *(result + 28)))
    {
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
      goto LABEL_251;
    }

    v41 = v6;
    v34 = *v2;
    v43 = *(*v2 + 72);
    v42 = *(*v2 + 80);
    v268 = v42;
    if (!v43)
    {
      v42 = 0;
    }

    if (v17 < 0 || v42 < v17)
    {
      goto LABEL_250;
    }

    v44 = *(v34 + 96);
    v252 = *(v34 + 88);
    if (v43)
    {
      v46 = (v43 + 16);
      v45 = *(v43 + 16);
      if (*(v43 + 16))
      {
        if (v17 < v268)
        {
          v248 = v44;
          v47 = *(v43 + 18);
          result = swift_unknownObjectRetain_n();
          if (!v47)
          {
            v48 = 0;
            v61 = v43;
LABEL_62:
            v62 = 0;
            v63 = v45;
            v64 = v17 & ~(v17 >> 63);
            while ((v17 ^ v62) != 0x8000000000000000)
            {
              if (v64 == v62)
              {
                goto LABEL_67;
              }

              if (v63 == ++v62)
              {
                v17 -= v62;
                v64 = v63;
                if (v17)
                {
                  goto LABEL_227;
                }

                goto LABEL_67;
              }
            }

            goto LABEL_237;
          }

          v261 = v34;
          v48 = v47;
          v49 = v43;
          do
          {
            v50 = *v46;
            if (*v46)
            {
              v52 = 0;
              v53 = (v49 + 32);
              while (1)
              {
                v54 = *v53;
                v53 += 3;
                v55 = v17 - v54;
                if (__OFSUB__(v17, v54))
                {
                  goto LABEL_231;
                }

                if (__OFADD__(v55, 1))
                {
                  goto LABEL_232;
                }

                if (v55 + 1 < 1)
                {
                  v50 = v52;
                  goto LABEL_45;
                }

                ++v52;
                v17 = v55;
                if (v50 == v52)
                {
                  goto LABEL_54;
                }
              }
            }

            v55 = v17;
LABEL_54:
            if (v55)
            {
              goto LABEL_238;
            }

            v17 = 0;
LABEL_45:
            v48 = (v50 << ((4 * v47 + 8) & 0x3C)) | ((-15 << ((4 * v47 + 8) & 0x3C)) - 1) & v48;
            v51 = *(v49 + 24 + 24 * v50);
            swift_unknownObjectRetain();
            result = swift_unknownObjectRelease();
            v46 = (v51 + 16);
            LOBYTE(v47) = *(v51 + 18);
            v49 = v51;
          }

          while (v47);
          v61 = v51;
          v45 = *v46;
          if (*v46)
          {
            v41 = v269;
            v34 = v261;
            goto LABEL_62;
          }

          v41 = v269;
          v34 = v261;
          v64 = 0;
          if (!v17)
          {
LABEL_67:
            v59 = v61;
            swift_unknownObjectRelease();
            v58 = v48 & 0xFFFFFFFFFFFFF0FFLL | (v64 << 8);
            v44 = v248;
            v57 = v252;
            v237 = v58;
            goto LABEL_57;
          }

LABEL_227:
          __break(1u);
LABEL_228:
          v125 = v266;
          v124 = v261;
          v153 = 0;
          if (!v17)
          {
LABEL_180:
            v154 = v61;
            swift_unknownObjectRelease();
            v127 = v64 & 0xFFFFFFFFFFFFF0FFLL | (v153 << 8);
            v128 = v154;
            v126 = v259;
            goto LABEL_181;
          }

LABEL_229:
          __break(1u);
          goto LABEL_230;
        }
      }
    }

    v56 = swift_unknownObjectRetain();
    v57 = v252;
    v58 = specialized Rope._endPath.getter(v56);
    v59 = 0;
    v237 = v58;
    if (v43)
    {
LABEL_57:
      v60 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v44, v58, v59, v43, v268, v57);
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0;
    }

    v6 = v41;
  }

  else
  {
    if (v257 == 2)
    {
      v35 = *(v34 + 72);
      if (v35)
      {
        v37 = *(v34 + 80);
        v36 = *(v34 + 88);
        swift_unknownObjectRetain();
        v39 = v258;
        v38 = v259;
        v40 = v262;
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v259, v258, v262, v35, v37, v36);
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = v258;
        v38 = v259;
        v40 = v262;
      }

      v225 = 0;
      LODWORD(v252) = 1;
      v237 = v39;
      v238 = v40;
      v248 = v38;
      goto LABEL_75;
    }

    v44 = v259;
    v237 = v258;
    v59 = v262;
    v60 = v253;
  }

  LODWORD(v252) = v257 == 2;
  v225 = v257 != 2;
  v248 = v44;
  v238 = v59;
  if (v257 != 2 && v253 == v60)
  {
    v65 = *(v34 + 40);
    v283 = *(v34 + 24);
    v284 = v65;
    v261 = v34;
    v285 = *(v34 + 56);
    swift_unknownObjectRetain();
    v249 = BigString.UTF8View.index(roundingDown:)();
    v235 = v67;
    v236 = v66;
    v234 = v68;
    swift_unknownObjectRelease();
    LODWORD(v252) = 0;
    goto LABEL_76;
  }

LABEL_75:
  v69 = *(v34 + 24);
  v70 = *(v34 + 56);
  v284 = *(v34 + 40);
  v285 = v70;
  v71 = *(v34 + 40);
  v280 = *(v34 + 24);
  v281 = v71;
  v261 = v34;
  v282 = *(v34 + 56);
  v283 = v69;
  BigString.startIndex.getter();
  v268 = v72;
  v305[0] = v283;
  v305[1] = v284;
  v306 = v285;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v305, &v271);
  v249 = BigString.UTF8View.index(_:offsetBy:)();
  v235 = v74;
  v236 = v73;
  v234 = v75;
  outlined destroy of BigString(&v283);
LABEL_76:
  v48 = *&v291[1];
  v76 = (v267 + 8);
  v268 = v267 + 8;
  v224 = BYTE8(v291[1]);
  if (BYTE8(v291[1]))
  {
    v77 = v6;
    if (v263 == 2)
    {
      v78 = v249;
    }

    else
    {
      v78 = v260;
    }

    type metadata accessor for AttributedString.Runs();
    RangeSet.ranges.getter();
    v79 = RangeSet.Ranges.count.getter();
    v267 = *v76;
    result = (v267)(v9, v77);
    if (v79 >= 1)
    {
      v80 = 0;
      v81 = v78 >> 10;
      while (!__OFADD__(v80, v79))
      {
        v82 = (v80 + v79) / 2;
        RangeSet.ranges.getter();
        v83 = v269;
        RangeSet.Ranges.subscript.getter();
        result = (v267)(v9, v83);
        v84 = v271;
        if (v81 >= v271 >> 10)
        {
          v85 = *&v273[0];
          if (v81 < *&v273[0] >> 10)
          {
            goto LABEL_91;
          }

          v80 = v82 + 1;
          v82 = v79;
        }

        v79 = v82;
        if (v80 >= v82)
        {
          goto LABEL_230;
        }
      }

LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
      goto LABEL_239;
    }

LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
    goto LABEL_235;
  }

  type metadata accessor for AttributedString.Runs();
  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  v86 = *v76;
  (*v76)(v9, v6);
  v84 = v271;
  v231 = v272;
  v232 = *(&v271 + 1);
  v230 = *(&v272 + 1);
  v85 = *&v273[0];
  v87 = v261;
  v267 = v86;
  if (v263 != 2 && (v260 >> 10 < v271 >> 10 || v260 >> 10 >= *&v273[0] >> 10))
  {
    __break(1u);
LABEL_91:
    v231 = v272;
    v232 = *(&v271 + 1);
    v230 = *(&v272 + 1);
    v87 = v261;
  }

  if (v252)
  {
    v88 = v249;
  }

  else
  {
    v88 = v256;
  }

  if (v252)
  {
    v89 = v236;
  }

  else
  {
    v89 = v255;
  }

  v90 = v254;
  if (v252)
  {
    v90 = v235;
  }

  v228 = v90;
  v229 = v89;
  if (v252)
  {
    v91 = v234;
  }

  else
  {
    v91 = v257;
  }

  v92 = v260;
  if (v263 == 2)
  {
    v92 = v249;
  }

  v226 = v92;
  v227 = v91;
  if (v263 == 2)
  {
    v93 = v236;
  }

  else
  {
    v93 = v245;
  }

  v94 = v244;
  if (v263 == 2)
  {
    v94 = v235;
  }

  v244 = v94;
  v245 = v93;
  if (v263 == 2)
  {
    v95 = v234;
  }

  else
  {
    v95 = v263;
  }

  v236 = v95;
  v96 = *(v87 + 72);
  v97 = *(v87 + 80);
  v98 = *(v87 + 96);
  v249 = *(v87 + 88);
  swift_unknownObjectRetain();
  v99 = specialized Rope.subscript.getter(v248, v237, v238, v96, v97, v249, v98);
  v101 = v100;
  v249 = v102;
  result = swift_unknownObjectRelease();
  if (v84 >> 10 >= v88 >> 10)
  {
    v103 = v84;
  }

  else
  {
    v103 = v88;
  }

  if (v84 >> 10 >= v88 >> 10)
  {
    v104 = v232;
  }

  else
  {
    v104 = v229;
  }

  if (v84 >> 10 >= v88 >> 10)
  {
    v105 = v231;
  }

  else
  {
    v105 = v228;
  }

  if (v84 >> 10 >= v88 >> 10)
  {
    v106 = v230;
  }

  else
  {
    v106 = v227;
  }

  v107 = v99 + (v88 >> 11);
  if (__OFADD__(v99, v88 >> 11))
  {
    goto LABEL_243;
  }

  v248 = v101;
  if ((v85 >> 11) < v107)
  {
    v107 = v85 >> 11;
  }

  v109 = *(v87 + 24);
  v108 = (v87 + 24);
  v110 = v108[1];
  v111 = v108[2];
  v235 = v108;
  v277 = v109;
  v278 = v110;
  v279 = v111;
  if (__OFSUB__(v107, v226 >> 11))
  {
    goto LABEL_244;
  }

  v112 = v103;
  v113 = v104;
  v237 = v105;
  v238 = v106;
  swift_unknownObjectRetain();
  v114 = BigString.UTF8View.index(_:offsetBy:)();
  v116 = v115;
  v118 = v117;
  v120 = v119;
  result = swift_unknownObjectRelease();
  v121 = v241;
  v122 = v249;
  *v241 = v248;
  v121[1] = v122;
  v121[2] = v112;
  v121[3] = v113;
  v123 = v238;
  v121[4] = v237;
  v121[5] = v123;
  v121[6] = v114;
  v121[7] = v116;
  v124 = v261;
  v121[8] = v118;
  v121[9] = v120;
  v121[10] = v124;
  if (v243)
  {
    v17 = v251;
    v125 = v266;
    v127 = v258;
    v126 = v259;
    v128 = v262;
    v129 = v240;
    if (v251 < v242)
    {
      goto LABEL_139;
    }

    if (v250 != 2)
    {
      if (v263 == 2)
      {
        goto LABEL_139;
      }

      v130 = v260 >> 10;
      goto LABEL_138;
    }

    goto LABEL_263;
  }

  v128 = v262;
  v125 = v266;
  v17 = v251;
  v127 = v258;
  v126 = v259;
  v129 = v240;
  if (v263 == 2)
  {
LABEL_262:
    __break(1u);
    goto LABEL_263;
  }

  v130 = v260 >> 10;
  if (v260 >> 10 < v246 >> 10)
  {
    goto LABEL_255;
  }

  if (v251 >= v242)
  {
    if (v250 != 2)
    {
LABEL_138:
      if (v130 >= v129 >> 10)
      {
LABEL_258:
        __break(1u);
        goto LABEL_259;
      }

      goto LABEL_139;
    }

LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

LABEL_139:
  if (!v239)
  {
    if (v250 == 2)
    {
LABEL_264:
      __break(1u);
      return result;
    }

    if (v129 >> 10 < v260 >> 10)
    {
      goto LABEL_256;
    }
  }

  if (v128 == 1 || v126 != *(v124 + 96))
  {
    result = type metadata accessor for AttributedString.Runs();
    if (*(v265 + *(result + 28)))
    {
LABEL_251:
      __break(1u);
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    v138 = *(v124 + 80);
    v258 = *(v124 + 72);
    if (v258)
    {
      v139 = v138;
    }

    else
    {
      v139 = 0;
    }

    if (v17 < 0 || v139 < v17)
    {
      goto LABEL_252;
    }

    v140 = *(v124 + 88);
    v259 = *(v124 + 96);
    v262 = v138;
    v250 = v140;
    if (v258)
    {
      v141 = (v258 + 16);
      v142 = *(v258 + 16);
      if (*(v258 + 16))
      {
        if (v17 < v138)
        {
          v143 = *(v258 + 18);
          swift_unknownObjectRetain_n();

          if (v143)
          {
            v64 = v143;
            v144 = v258;
            do
            {
              v145 = *v141;
              if (*v141)
              {
                v147 = 0;
                v148 = (v144 + 32);
                while (1)
                {
                  v149 = *v148;
                  v148 += 3;
                  v150 = v17 - v149;
                  if (__OFSUB__(v17, v149))
                  {
                    goto LABEL_233;
                  }

                  if (__OFADD__(v150, 1))
                  {
                    goto LABEL_234;
                  }

                  if (v150 + 1 < 1)
                  {
                    v145 = v147;
                    goto LABEL_159;
                  }

                  ++v147;
                  v17 = v150;
                  if (v145 == v147)
                  {
                    goto LABEL_168;
                  }
                }
              }

              v150 = v17;
LABEL_168:
              if (v150)
              {
                goto LABEL_240;
              }

              v17 = 0;
LABEL_159:
              v64 = (v145 << ((4 * v143 + 8) & 0x3C)) | ((-15 << ((4 * v143 + 8) & 0x3C)) - 1) & v64;
              v146 = *(v144 + 24 + 24 * v145);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v141 = (v146 + 16);
              LOBYTE(v143) = *(v146 + 18);
              v144 = v146;
            }

            while (v143);
            v61 = v146;
            v142 = *v141;
            if (!*v141)
            {
              goto LABEL_228;
            }

            v125 = v266;
            v124 = v261;
          }

          else
          {
            v64 = 0;
            v61 = v258;
            v125 = v266;
          }

          v152 = 0;
          v153 = v17 & ~(v17 >> 63);
          while ((v17 ^ v152) != 0x8000000000000000)
          {
            if (v153 == v152)
            {
              goto LABEL_180;
            }

            if (v142 == ++v152)
            {
              v153 = v142;
              if (v17 != v152)
              {
                goto LABEL_229;
              }

              goto LABEL_180;
            }
          }

LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
          goto LABEL_241;
        }
      }
    }

    v151 = swift_unknownObjectRetain();
    v126 = v259;
    v127 = specialized Rope._endPath.getter(v151);
    v128 = 0;
    v125 = v266;
LABEL_181:
    v155 = v225;
    if (v258)
    {
      v156 = v127;
      v157 = v128;
      v158 = v262;
      v261 = v124;
      v262 = v128;
      v159 = v127;
      v160 = v225;
      v131 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v126, v156, v157, v258, v158, v250);
      v124 = v261;
      swift_unknownObjectRelease();
      v155 = v160;
      v127 = v159;
      v128 = v262;
    }

    else
    {
      v131 = 0;
    }
  }

  else
  {
    if (v252)
    {
      v131 = *(v124 + 72);
      if (v131)
      {
        v132 = v126;
        v134 = *(v124 + 80);
        v133 = *(v124 + 88);

        swift_unknownObjectRetain();
        v135 = v134;
        v128 = v262;
        v136 = v133;
        v126 = v132;
        v137 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v132, v127, v262, v131, v135, v136);
        swift_unknownObjectRelease();
        v131 = v137;
      }

      else
      {
      }
    }

    else
    {

      v131 = v253;
    }

    v155 = v225;
  }

  v161 = v253 == v131 && v155;
  v262 = v128;
  v250 = v131;
  if (v161)
  {
    v162 = *(v124 + 40);
    v274 = *(v124 + 24);
    v275 = v162;
    v276 = *(v124 + 56);
    swift_unknownObjectRetain();
    v248 = BigString.UTF8View.index(roundingDown:)();
    v163 = v126;
    result = swift_unknownObjectRelease();
    v164 = v127;
  }

  else
  {
    v165 = *v235;
    v166 = v235[1];
    v167 = v235[2];
    v259 = v126;
    v275 = v166;
    v276 = v167;
    v168 = *(v124 + 40);
    v273[6] = *(v124 + 24);
    v273[7] = v168;
    v273[8] = *(v124 + 56);
    v274 = v165;
    BigString.startIndex.getter();
    v258 = v169;
    v249 = v170;
    v164 = v127;
    v163 = v259;
    v307[0] = v274;
    v307[1] = v275;
    v308 = v276;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v307, &v271);
    v124 = v261;
    v128 = v262;
    v248 = BigString.UTF8View.index(_:offsetBy:)();
    result = outlined destroy of BigString(&v274);
  }

  v171 = *(v124 + 72);
  v172 = *(v124 + 80);
  v173 = v124;
  v174 = *(v124 + 88);
  v249 = *(v173 + 96);
  *&v271 = v163;
  *(&v271 + 1) = v164;
  *&v272 = v128;
  if (__OFADD__(v251, 1))
  {
    goto LABEL_245;
  }

  v246 = v251 + 1;
  swift_unknownObjectRetain();
  v258 = v164;
  v259 = v172;
  v175 = v174;
  v176 = v249;
  v177 = specialized Rope.subscript.getter(v163, v164, v128, v171, v172, v175, v249);

  v251 = (v250 + v177);
  if (__OFADD__(v250, v177))
  {
LABEL_246:
    __break(1u);
    goto LABEL_247;
  }

  if (v163 != v176)
  {
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  result = specialized Rope._endPath.getter(v171);
  if (v258 >= result)
  {
LABEL_248:
    __break(1u);
    goto LABEL_249;
  }

  v178 = v163;
  if (v262 && (v179 = (4 * *(v262 + 18) + 8) & 0x3C, v180 = ((v258 >> v179) & 0xF) + 1, v180 < *(v262 + 16)))
  {
    swift_unknownObjectRelease();
    v250 = (v180 << v179) | ((-15 << v179) - 1) & v258;
    v181 = v269;
    v182 = v267;
    v183 = v224;
    v184 = v265;
  }

  else
  {
    v185 = specialized Rope._Node.formSuccessor(of:)(&v271, v171);
    v183 = v224;
    v186 = v265;
    if (v185)
    {
      swift_unknownObjectRelease();
      v250 = *(&v271 + 1);
    }

    else
    {
      v187 = specialized Rope._endPath.getter(v171);
      swift_unknownObjectRelease();
      *&v271 = v178;
      *(&v271 + 1) = v187;
      v250 = v187;
      *&v272 = 0;
    }

    v181 = v269;
    v182 = v267;
    v184 = v186;
  }

  v258 = v271;
  v259 = v272;
  v262 = type metadata accessor for AttributedString.Runs();
  if (v183)
  {
    (*(v247 + 16))(v264, v184 + *(v262 + 24), v125);
    if (v263 == 2)
    {
      v188 = v248;
    }

    else
    {
      v188 = v260;
    }

    RangeSet.ranges.getter();
    v184 = RangeSet.Ranges.count.getter();
    result = (v182)(v9, v181);
    v182 = v251;
    if (v184 >= 1)
    {
      v181 = 0;
      v189 = v188 >> 10;
      v190 = v269;
      while (!__OFADD__(v181, v184))
      {
        v48 = (v181 + v184) / 2;
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        result = (v267)(v9, v190);
        if (v189 < v271 >> 10)
        {
          v184 = (v181 + v184) / 2;
          if (v181 >= v48)
          {
            goto LABEL_214;
          }
        }

        else
        {
          v191 = *&v273[0];
          if (v189 < *&v273[0] >> 10)
          {
            result = (*(v247 + 8))(v264, v125);
            v181 = v269;
            v192 = v261;
            v184 = v265;
            if (v182 < (v191 >> 11))
            {
              goto LABEL_216;
            }

            goto LABEL_219;
          }

          v181 = v48 + 1;
          if (v48 + 1 >= v184)
          {
            goto LABEL_214;
          }
        }
      }

      goto LABEL_236;
    }

LABEL_214:
    __break(1u);
  }

  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  result = (v182)(v9, v181);
  v192 = v261;
  v182 = v251;
  if (v251 < *&v273[0] >> 11)
  {
LABEL_216:
    if (v252)
    {
      v193 = *v235;
      v194 = v235[2];
      v272 = v235[1];
      v273[0] = v194;
      v271 = v193;
      v273[3] = *(v192 + 24);
      v195 = *(v192 + 56);
      v273[4] = *(v192 + 40);
      v273[5] = v195;
      BigString.startIndex.getter();
      v309[0] = v271;
      v309[1] = v272;
      v310 = *&v273[0];
      outlined init with copy of Rope<BigString._Chunk>._Node?(v309, v270);
      v196 = BigString.UTF8View.index(_:offsetBy:)();
      v198 = v197;
      v200 = v199;
      v202 = v201;
      result = outlined destroy of BigString(&v271);
    }

    else
    {
      v205 = *(v192 + 40);
      v271 = *(v192 + 24);
      v272 = v205;
      v273[0] = *(v192 + 56);
      if (__OFSUB__(v182, v253))
      {
LABEL_259:
        __break(1u);
        goto LABEL_260;
      }

      swift_unknownObjectRetain();
      v196 = BigString.UTF8View.index(_:offsetBy:)();
      v198 = v206;
      v200 = v207;
      v202 = v208;
      result = swift_unknownObjectRelease();
    }

    v209 = v250;
    v211 = v258;
    v210 = v259;
    v212 = *(v184 + *(v262 + 28));
    v270[0] = 0;
    v213 = v233;
    *v233 = v246;
    v213[1] = v211;
    v213[2] = v209;
    v213[3] = v210;
    v213[4] = v196;
    v213[5] = v198;
    v213[6] = v200;
    v213[7] = v202;
    v213[8] = v196;
    v213[9] = v198;
    v213[10] = v200;
    v213[11] = v202;
    v213[12] = v48;
    *(v213 + 104) = 0;
    *(v213 + 105) = v212;
    return result;
  }

LABEL_219:
  v269 = v48 + 1;
  if (__OFADD__(v48, 1))
  {
    goto LABEL_257;
  }

  RangeSet.ranges.getter();
  v203 = RangeSet.Ranges.count.getter();
  v204 = v267;
  v267(v9, v181);
  if (v269 == v203)
  {
    return memmove(v233, v223, 0x6AuLL);
  }

  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  v204(v9, v181);
  v214 = v271;
  v215 = v272;
  result = AttributedString.Guts.findRun(at:)(v271, *(&v272 + 1), &v271);
  v216 = v272;
  v217 = v271;
  v218 = *(v273 + 8);
  v219 = *(&v273[1] + 8);
  v220 = *(v184 + *(v262 + 28));
  LOBYTE(v271) = 0;
  v221 = v233;
  *v233 = *(&v272 + 1);
  *(v221 + 1) = v217;
  v221[3] = v216;
  *(v221 + 2) = v218;
  *(v221 + 3) = v219;
  *(v221 + 4) = v214;
  *(v221 + 5) = v215;
  v221[12] = v269;
  *(v221 + 104) = 0;
  *(v221 + 105) = v220;
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for AttributedString.Runs.Run(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

id _sSD10FoundationE36_unconditionallyBridgeFromObjectiveCySDyxq_GSo12NSDictionaryCSgFZSo21NSAttributedStringKeya_ypTt0g5(void *a1)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for NSAttributedStringKey(0);
  if (v2 == MEMORY[0x1E69E6158])
  {

    swift_unknownObjectRetain();
    v3 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (v3)
    {
      return v3;
    }

    v41 = [a1 count];
    if (!v41)
    {
      return MEMORY[0x1E69E7CC8];
    }

    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v6 = static _DictionaryStorage.allocate(capacity:)();
    v43 = *(v6 + 48);
    v44 = *(v6 + 56);

    v45 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v43, v44, a1, v42);
    if (v45 < 0 || v42 < v45)
    {
LABEL_69:
      __break(1u);
    }

    *(v6 + 16) = v45;
    if (!v45)
    {
      goto LABEL_65;
    }

    v46 = v45 - 1;
    v47 = v6 + 64;
    while (1)
    {
      while (1)
      {
        if ((*(v47 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v46))
        {
          goto LABEL_55;
        }

        v52 = (*(v6 + 48) + 16 * v46);
        v53 = *v52;
        v54 = v52[1];

        v55 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v54);
        v57 = v56;

        if ((v57 & 1) == 0)
        {
          break;
        }

        v58 = *(v6 + 48) + 16 * v46;

        outlined destroy of String(v58);
        __swift_destroy_boxed_opaque_existential_1(*(v6 + 56) + 32 * v46);
        v59 = *(v6 + 16);
        v60 = __OFSUB__(v59, 1);
        v61 = v59 - 1;
        if (v60)
        {
          goto LABEL_67;
        }

        *(v6 + 16) = v61;

LABEL_55:
        if (--v46 < 0)
        {
          goto LABEL_65;
        }
      }

      *(v47 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      if (v46 < v55)
      {
        *(*(v6 + 48) + 16 * v55) = *(*(v6 + 48) + 16 * v46);
        v48 = *(v6 + 56);
        v49 = (v48 + 32 * v46);
        v50 = v49[1];
        v51 = (v48 + 32 * v55);
        *v51 = *v49;
        v51[1] = v50;
        goto LABEL_55;
      }

      if (v55 == v46)
      {
        goto LABEL_55;
      }

      v62 = *(v6 + 48);
      v63 = (v62 + 16 * v55);
      v64 = (v62 + 16 * v46);
      v65 = *v63;
      v66 = v63[1];
      v67 = v64[1];
      *v63 = *v64;
      v63[1] = v67;
      *v64 = v65;
      v64[1] = v66;
      v68 = *(v6 + 56);
      v69 = (v68 + 32 * v55);
      v70 = (v68 + 32 * v46);
      outlined init with take of Any(v69, v72);
      outlined init with take of Any(v70, v69);
      outlined init with take of Any(v72, v70);
      if (v46 < 0)
      {
        goto LABEL_65;
      }
    }
  }

  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  swift_unknownObjectRetain();
  v3 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v3)
  {
    return v3;
  }

  v4 = [a1 count];
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd);
  v6 = static _DictionaryStorage.allocate(capacity:)();
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);
  v9 = a1;

  _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_So21NSAttributedStringKeya_ypTt3g5Tf4xxnn_n(v7, v8, v9, v5);
  if (v10 < 0 || v5 < v10)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  *(v6 + 16) = v10;
  if (!v10)
  {

LABEL_65:

    return v6;
  }

  v71 = v9;
  v11 = v10 - 1;
  v12 = v6 + 64;
  while (1)
  {
    if ((*(v12 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
    {
      goto LABEL_10;
    }

    v17 = *(*(v6 + 48) + 8 * v11);
    isTaggedPointer = _objc_isTaggedPointer(v17);
    v19 = v17;
    v20 = v19;
    if ((isTaggedPointer & 1) == 0)
    {
      goto LABEL_17;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v19);
    if (TaggedPointerTag)
    {
      break;
    }

    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v26)
    {
      goto LABEL_27;
    }

    [v20 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
LABEL_32:
    Hasher.init(_seed:)();
    String.hash(into:)();
    v27 = Hasher._finalize()();

    v28 = -1 << *(v6 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) != 0)
    {
      v31 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_42;
    }

    v32 = 0;
    v33 = (63 - v28) >> 6;
    do
    {
      if (++v30 == v33 && (v32 & 1) != 0)
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v34 = v30 == v33;
      if (v30 == v33)
      {
        v30 = 0;
      }

      v32 |= v34;
      v35 = *(v12 + 8 * v30);
    }

    while (v35 == -1);
    v31 = __clz(__rbit64(~v35)) + (v30 << 6);
LABEL_42:
    *(v12 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    if (v11 < v31)
    {
      *(*(v6 + 48) + 8 * v31) = *(*(v6 + 48) + 8 * v11);
      v13 = *(v6 + 56);
      v14 = (v13 + 32 * v11);
      v15 = v14[1];
      v16 = (v13 + 32 * v31);
      *v16 = *v14;
      v16[1] = v15;
LABEL_10:
      if (--v11 < 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v31 == v11)
      {
        goto LABEL_10;
      }

      v36 = *(v6 + 48);
      v37 = *(v36 + 8 * v31);
      *(v36 + 8 * v31) = *(v36 + 8 * v11);
      *(v36 + 8 * v11) = v37;
      v38 = *(v6 + 56);
      v39 = (v38 + 32 * v31);
      v40 = (v38 + 32 * v11);
      outlined init with take of Any(v39, v72);
      outlined init with take of Any(v40, v39);
      outlined init with take of Any(v72, v40);
      if (v11 < 0)
      {
LABEL_45:

        goto LABEL_65;
      }
    }
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_32;
    }

LABEL_17:
    *&v72[0] = 0;
    if (__CFStringIsCF())
    {
      if (!*&v72[0])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v22 = v20;
      String.init(_nativeStorage:)();
      if (v23 || (*&v72[0] = [v22 length]) == 0)
      {

        goto LABEL_32;
      }
    }

    String.init(_cocoaString:)();
    goto LABEL_32;
  }

  result = [v20 UTF8String];
  if (!result)
  {
    goto LABEL_70;
  }

  result = String.init(utf8String:)(result);
  if (v25)
  {
LABEL_27:

    goto LABEL_32;
  }

  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

void closure #1 in AttributedString.init(_:attributeTable:options:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, void **a7, unint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t a12, _BYTE *a13)
{
  v402 = a3;
  v403 = a8;
  v392 = a7;
  v393 = a4;
  v411 = a6;
  v14 = a1;
  v394 = a13;
  v391[1] = a12;
  v404 = a11;
  v401 = a9;
  v452 = *MEMORY[0x1E69E9840];
  v15 = *a10;
  v399 = a10[1];
  v400 = v15;
  v16 = a10[2];
  v397 = a10[3];
  v398 = v16;
  v17 = a10[4];
  v395 = a10[5];
  v396 = v17;
  v430 = MEMORY[0x1E69E7CC8];
  v431 = MEMORY[0x1E69E7CD0];
  v18 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;
  v409 = @"NSCocoaErrorDomain";
  v23 = 0;
  v426 = 0;
  v427 = v22;

  v416 = a5;
  v420 = v18;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v21)
        {
          v24 = v23;
          goto LABEL_17;
        }

        if (v22 <= v23 + 1)
        {
          v25 = v23 + 1;
        }

        else
        {
          v25 = v22;
        }

        v26 = v25 - 1;
        do
        {
          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_371:
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
LABEL_374:
            __break(1u);
LABEL_375:
            __break(1u);
            goto LABEL_376;
          }

          if (v24 >= v22)
          {
            v21 = 0;
            v446[0] = 0;
            v23 = v26;
            v444 = 0u;
            v445 = 0u;
            goto LABEL_18;
          }

          v21 = *(v18 + 8 * v24);
          ++v23;
        }

        while (!v21);
        v23 = v24;
LABEL_17:
        v27 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v28 = v27 | (v24 << 6);
        v29 = *(*(v14 + 48) + 8 * v28);
        outlined init with copy of Any(*(v14 + 56) + 32 * v28, &v439);
        *&v444 = v29;
        outlined init with take of Any(&v439, (&v444 + 8));
        v30 = v29;
LABEL_18:
        v450[0] = v444;
        v450[1] = v445;
        v451 = v446[0];
        v31 = v444;
        if (!v444)
        {

          v427 = v431;
          v428 = v430;
          v362 = v403;
          v426 = *v403;
          v364 = v399;
          v363 = v400;
          *&v444 = v400;
          *(&v444 + 1) = v399;
          v365 = v397;
          v366 = v398;
          *&v445 = v398;
          *(&v445 + 1) = v397;
          v368 = v395;
          v367 = v396;
          v446[0] = v396;
          v446[1] = v395;
          v369 = v401;
          *v369 = BigString.UTF16View.index(_:offsetBy:)();
          v369[1] = v370;
          v369[2] = v371;
          v369[3] = v372;
          *&v439 = v363;
          *(&v439 + 1) = v364;
          *&v440 = v366;
          *(&v440 + 1) = v365;
          *&v441 = v367;
          *(&v441 + 1) = v368;
          v373 = BigString.UnicodeScalarView.index(roundingUp:)();
          *v362 = v373;
          v362[1] = v374;
          v362[2] = v375;
          v362[3] = v376;
          v377 = (v373 >> 11) - (v426 >> 11);
          if (v377 > 0)
          {
            v378 = v404;
            v380 = v427;
            v379 = v428;
            if (*v404 >= 1)
            {
              v381 = v404[1];
              v382 = v404[2];

              if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v381, v379))
              {
                v383 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v382, v380);

                if (v383)
                {

                  if (!__OFADD__(*v404, v377))
                  {
                    *v404 += v377;
                    return;
                  }

LABEL_376:
                  __break(1u);
                  goto LABEL_377;
                }
              }

              else
              {
              }

              v378 = v404;
              v384 = *v404;
              if (*v404 >= 1)
              {
                v385 = v404[1];
                v386 = v404[2];

                specialized Rope.append(_:)(v384, v385, v386);
                v378 = v404;
              }
            }

            *v378 = v377;
            v378[1] = v379;
            v378[2] = v380;

            v387 = v394;
            if ((*v394 & 1) == 0)
            {
              v388 = specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v379);

              *v387 = v388 & 1;
              return;
            }
          }

          return;
        }

        outlined init with take of Any((v450 + 8), &v448);
        isTaggedPointer = _objc_isTaggedPointer(v31);
        v33 = v31;
        v34 = v33;
        v428 = v33;
        if (!isTaggedPointer)
        {
          goto LABEL_25;
        }

        TaggedPointerTag = _objc_getTaggedPointerTag(v33);
        if (!TaggedPointerTag)
        {
          LOWORD(v437[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v52 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          v54 = v34;
          if (v53)
          {
            v40 = v53;
            v55 = v52;

            v41 = v55;
          }

          else
          {
            [v34 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v40 = *(&v439 + 1);
            v41 = v439;
          }

          goto LABEL_59;
        }

        if (TaggedPointerTag == 22)
        {
          v48 = [v34 UTF8String];
          if (v48)
          {
            v49 = String.init(utf8String:)(v48);
            if (v50)
            {
              v51 = v49;
              v40 = v50;

              v41 = v51;
              goto LABEL_59;
            }

LABEL_377:
            __break(1u);
          }

          __break(1u);
LABEL_379:
          __break(1u);
LABEL_380:
          __break(1u);
        }

        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v391[-2] = v34;
          v36 = v426;
          v37 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v38 = v34;
          v40 = v39;
          v426 = v36;

          v41 = v37;
          goto LABEL_24;
        }

LABEL_25:
        LOBYTE(v439) = 0;
        *&v444 = 0;
        LOBYTE(v437[0]) = 0;
        LOBYTE(v432) = 0;
        IsCF = __CFStringIsCF();
        if (!IsCF)
        {
          v44 = v34;
          v45 = String.init(_nativeStorage:)();
          if (v46)
          {
            v40 = v46;
            v47 = v45;

            v41 = v47;
            goto LABEL_59;
          }

          *&v444 = [v44 length];
          if (!v444)
          {

            goto LABEL_34;
          }

LABEL_57:
          v41 = String.init(_cocoaString:)();
          goto LABEL_58;
        }

        v43 = v444;
        if (!v444)
        {

LABEL_34:
          v41 = 0;
          v40 = 0xE000000000000000;
          goto LABEL_59;
        }

        if (v432 != 1)
        {
          if (v437[0])
          {
            if (v439 == 1)
            {
              MEMORY[0x1EEE9AC00](IsCF);
              v391[-4] = v34;
              v391[-3] = &v444;
              LODWORD(v391[-2]) = 1536;
              v391[-1] = v43;
              v56 = v426;
              v57 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v58 = v34;
              v40 = v59;
              v426 = v56;
              v60 = HIBYTE(v59) & 0xF;
              if ((v59 & 0x2000000000000000) == 0)
              {
                v60 = v57 & 0xFFFFFFFFFFFFLL;
              }

              if (v60)
              {
                v61 = v57;

                v41 = v61;
LABEL_24:
                v18 = v420;
                goto LABEL_59;
              }

              v18 = v420;
            }

            else
            {
              v63 = [v34 lengthOfBytesUsingEncoding_];
              MEMORY[0x1EEE9AC00](v63);
              v391[-4] = v34;
              v391[-3] = &v444;
              LODWORD(v391[-2]) = 134217984;
              v391[-1] = v64;
              v65 = v426;
              v66 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v67 = v34;
              v40 = v68;
              v426 = v65;
              v69 = HIBYTE(v68) & 0xF;
              if ((v68 & 0x2000000000000000) == 0)
              {
                v69 = v66 & 0xFFFFFFFFFFFFLL;
              }

              if (v69)
              {
                v70 = v66;

                v41 = v70;
                goto LABEL_59;
              }
            }
          }

          goto LABEL_57;
        }

        if (v439)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v41 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_58:
        v40 = v62;
LABEL_59:
        if (!*(a5 + 16))
        {

          goto LABEL_6;
        }

        v71 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v40);
        v73 = v72;

        if (v73)
        {
          break;
        }

LABEL_6:

        __swift_destroy_boxed_opaque_existential_1(&v448);
        v22 = v427;
      }

      v74 = *(a5 + 56) + 16 * v71;
      v75 = *(v74 + 8);
      v425 = *v74;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v77 = type metadata accessor for Optional();
      v78 = *(v77 - 8);
      v422 = *(v78 + 64);
      MEMORY[0x1EEE9AC00](v77);
      v421 = v391 - v79;
      v80 = v449;
      v81 = __swift_project_boxed_opaque_existential_1(&v448, v449);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v83 = *(*(v80 - 8) + 64);
      v423 = AssociatedTypeWitness;
      i = v75;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v304 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
        (*(v306 + 16))(v391 - ((v305 + 15) & 0xFFFFFFFFFFFFFFF0), v81, v80, v304);
        v84 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        goto LABEL_64;
      }

      if (v83 != 8)
      {
        goto LABEL_371;
      }

      v84 = *v81;
      swift_unknownObjectRetain();
LABEL_64:
      v85 = v425;
      v86 = swift_conformsToProtocol2();
      v424 = v391;
      if (v86)
      {
        if (v85)
        {
          break;
        }
      }

      v418 = v78;
      v419 = v77;
      v414 = v391;
      v96 = v423;
      v97 = *(v423 - 8);
      MEMORY[0x1EEE9AC00](v86);
      v99 = v391 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
      v413 = v391;
      *&v444 = v84;
      MEMORY[0x1EEE9AC00](v100);
      v102 = v391 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        (*(v97 + 56))(v102, 0, 1, v96);
        v103 = *(v97 + 32);
        v103(v99, v102, v96);
        v104 = v421;
        v103(v421, v99, v96);
        v105 = v96;
        goto LABEL_87;
      }

      (*(v97 + 56))(v102, 1, 1, v96);
      (*(v418 + 8))(v102, v419);
      v106 = v409;
      v107 = _objc_isTaggedPointer(v409);
      v108 = v106;
      v109 = v108;
      v412 = v84;
      if (!v107)
      {
        goto LABEL_81;
      }

      v110 = _objc_getTaggedPointerTag(v108);
      switch(v110)
      {
        case 0:
          LOWORD(v437[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v186)
          {
            [(__CFString *)v109 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            goto LABEL_147;
          }

          goto LABEL_144;
        case 0x16:
          v184 = [(__CFString *)v109 UTF8String];
          if (!v184)
          {
            goto LABEL_381;
          }

          String.init(utf8String:)(v184);
          if (!v185)
          {
            __break(1u);
LABEL_381:
            __break(1u);
LABEL_382:
            __break(1u);
LABEL_383:
            __break(1u);
LABEL_384:
            __break(1u);
LABEL_385:
            __break(1u);
LABEL_386:
            __break(1u);
LABEL_387:
            __break(1u);
LABEL_388:
            __break(1u);
LABEL_389:
            __break(1u);
LABEL_390:
            __break(1u);
LABEL_391:
            __break(1u);
            goto LABEL_392;
          }

LABEL_144:

          goto LABEL_147;
        case 2:
          MEMORY[0x1EEE9AC00](v110);
          v391[-2] = v109;
          v111 = v426;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v426 = v111;

          goto LABEL_147;
      }

LABEL_81:
      LOBYTE(v439) = 0;
      *&v444 = 0;
      LOBYTE(v437[0]) = 0;
      LOBYTE(v432) = 0;
      v118 = __CFStringIsCF();
      if (!v118)
      {
        v172 = v109;
        String.init(_nativeStorage:)();
        if (v173 || (*&v444 = [(__CFString *)v172 length], !v444))
        {

          goto LABEL_147;
        }

LABEL_146:
        String.init(_cocoaString:)();
        goto LABEL_147;
      }

      v119 = v444;
      if (!v444)
      {
        goto LABEL_144;
      }

      if (v432 != 1)
      {
        if (v437[0])
        {
          if (v439 == 1)
          {
            MEMORY[0x1EEE9AC00](v118);
            v391[-4] = v109;
            v391[-3] = &v444;
            LODWORD(v391[-2]) = 1536;
            v391[-1] = v119;
          }

          else
          {
            v190 = [(__CFString *)v109 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v190);
            v391[-4] = v109;
            v391[-3] = &v444;
            LODWORD(v391[-2]) = 134217984;
            v391[-1] = v191;
          }

          v192 = v426;
          v193 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v426 = v192;
          v195 = HIBYTE(v194) & 0xF;
          if ((v194 & 0x2000000000000000) == 0)
          {
            v195 = v193 & 0xFFFFFFFFFFFFLL;
          }

          if (v195)
          {
            goto LABEL_144;
          }
        }

        goto LABEL_146;
      }

      if (v439)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_147:
      v196 = objc_allocWithZone(NSError);
      v197 = String._bridgeToObjectiveCImpl()();

      v198 = [v196 initWithDomain:v197 code:4866 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v199 = [v198 domain];
      v425 = v198;
      if (!v199)
      {
        v205 = v107;
LABEL_159:
        v207 = 0;
        v209 = 0xE000000000000000;
        goto LABEL_223;
      }

      v200 = v199;
      v201 = _objc_isTaggedPointer(v199);
      v202 = v200;
      v203 = v202;
      if ((v201 & 1) == 0)
      {
        goto LABEL_153;
      }

      v204 = _objc_getTaggedPointerTag(v202);
      if (v204)
      {
        if (v204 != 22)
        {
          if (v204 == 2)
          {
            v205 = v107;
            MEMORY[0x1EEE9AC00](v204);
            v391[-2] = v203;
            v206 = v426;
            v207 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v209 = v208;
            v426 = v206;

            goto LABEL_223;
          }

LABEL_153:
          LOBYTE(v439) = 0;
          *&v444 = 0;
          LOBYTE(v437[0]) = 0;
          LOBYTE(v432) = 0;
          v210 = __CFStringIsCF();
          if (!v210)
          {
            v205 = v107;
            v212 = v203;
            v213 = String.init(_nativeStorage:)();
            if (v214)
            {
              v207 = v213;
              v209 = v214;

              goto LABEL_223;
            }

            *&v444 = [v212 length];
            if (!v444)
            {

              goto LABEL_159;
            }

            goto LABEL_220;
          }

          v211 = v444;
          if (!v444)
          {
            v205 = v107;

            goto LABEL_159;
          }

          if (v432 == 1)
          {
            v205 = v107;
            if (v439)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v218 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_221;
          }

          if ((v437[0] & 1) == 0)
          {
            v205 = v107;
LABEL_220:
            v218 = String.init(_cocoaString:)();
LABEL_221:
            v207 = v218;
            v209 = v219;
            goto LABEL_222;
          }

          v205 = v107;
          if (v439 == 1)
          {
            MEMORY[0x1EEE9AC00](v210);
            v391[-4] = v203;
            v391[-3] = &v444;
            LODWORD(v391[-2]) = 1536;
            v391[-1] = v211;
          }

          else
          {
            v226 = [v203 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v226);
            v391[-4] = v203;
            v391[-3] = &v444;
            LODWORD(v391[-2]) = 134217984;
            v391[-1] = v227;
          }

          v228 = v426;
          v229 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v209 = v230;
          v426 = v228;
          v231 = HIBYTE(v230) & 0xF;
          if ((v230 & 0x2000000000000000) == 0)
          {
            v231 = v229 & 0xFFFFFFFFFFFFLL;
          }

          if (!v231)
          {

            goto LABEL_220;
          }

          v207 = v229;
          goto LABEL_168;
        }

        v205 = v107;
        v215 = [v203 UTF8String];
        if (!v215)
        {
          goto LABEL_389;
        }

        v216 = String.init(utf8String:)(v215);
        if (!v217)
        {
          goto LABEL_388;
        }
      }

      else
      {
        v205 = v107;
        LOWORD(v437[0]) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v216 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v217)
        {
          [v203 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v209 = *(&v439 + 1);
          v207 = v439;
          goto LABEL_222;
        }
      }

      v207 = v216;
      v209 = v217;
LABEL_168:

LABEL_222:
LABEL_223:
      v254 = v109;
      v255 = v254;
      if (!v205)
      {
        goto LABEL_228;
      }

      v256 = _objc_getTaggedPointerTag(v254);
      if (v256)
      {
        if (v256 == 22)
        {
          v265 = [(__CFString *)v255 UTF8String];
          if (!v265)
          {
            goto LABEL_383;
          }

          v266 = String.init(utf8String:)(v265);
          v18 = v420;
          v95 = v425;
          if (!v267)
          {
            goto LABEL_382;
          }

LABEL_241:
          v257 = v266;
          v259 = v267;

          goto LABEL_258;
        }

        if (v256 == 2)
        {
          MEMORY[0x1EEE9AC00](v256);
          v391[-2] = v255;
          v257 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v259 = v258;

          v18 = v420;
          v95 = v425;
          goto LABEL_258;
        }

LABEL_228:
        LOBYTE(v439) = 0;
        *&v444 = 0;
        LOBYTE(v437[0]) = 0;
        LOBYTE(v432) = 0;
        v260 = __CFStringIsCF();
        if (v260)
        {
          v261 = v444;
          v95 = v425;
          if (v444)
          {
            if (v432 == 1)
            {
              v18 = v420;
              if (v439)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v257 = String.init<A>(_immortalCocoaString:count:encoding:)();
              v259 = v268;
              goto LABEL_258;
            }

            if (v437[0])
            {
              if (v439 == 1)
              {
                MEMORY[0x1EEE9AC00](v260);
                v391[-4] = v255;
                v391[-3] = &v444;
                LODWORD(v391[-2]) = 1536;
                v391[-1] = v261;
              }

              else
              {
                v269 = [(__CFString *)v255 lengthOfBytesUsingEncoding:4];
                MEMORY[0x1EEE9AC00](v269);
                v391[-4] = v255;
                v391[-3] = &v444;
                LODWORD(v391[-2]) = 134217984;
                v391[-1] = v270;
              }

              v271 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v259 = v272;
              v273 = HIBYTE(v272) & 0xF;
              if ((v272 & 0x2000000000000000) == 0)
              {
                v273 = v271 & 0xFFFFFFFFFFFFLL;
              }

              if (v273)
              {
                v257 = v271;

                goto LABEL_257;
              }
            }

LABEL_256:
            v257 = String.init(_cocoaString:)();
            v259 = v274;
            goto LABEL_257;
          }

LABEL_236:
          v257 = 0;
          v259 = 0xE000000000000000;
        }

        else
        {
          v262 = v255;
          v263 = String.init(_nativeStorage:)();
          v95 = v425;
          if (!v264)
          {
            *&v444 = [(__CFString *)v262 length];
            if (v444)
            {
              goto LABEL_256;
            }

            goto LABEL_236;
          }

          v257 = v263;
          v259 = v264;
        }

LABEL_257:
        v18 = v420;
        goto LABEL_258;
      }

      LOWORD(v437[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v266 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      v18 = v420;
      v95 = v425;
      if (v267)
      {
        goto LABEL_241;
      }

      [(__CFString *)v255 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v259 = *(&v439 + 1);
      v257 = v439;
LABEL_258:
      if (v207 == v257 && v209 == v259)
      {
LABEL_308:

        goto LABEL_310;
      }

      v275 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v275 & 1) == 0)
      {
        goto LABEL_372;
      }

LABEL_310:
      swift_willThrow();
      swift_unknownObjectRelease();
      v426 = 0;
      v94 = v428;
LABEL_311:
      v14 = v415;
      a5 = v416;
      v22 = v427;
      if ((v411 & 1) == 0)
      {

        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_1(&v448);
        v389 = *v392;
        *v392 = v95;
        v390 = v95;

        *v393 = 1;
        return;
      }

      __swift_destroy_boxed_opaque_existential_1(&v448);
    }

    v87 = v86;
    swift_getAssociatedTypeWitness();
    swift_unknownObjectRetain();
    v88 = swift_dynamicCastUnknownClass();
    if (!v88)
    {
      swift_unknownObjectRelease();
      v112 = v409;
      v113 = _objc_isTaggedPointer(v409);
      v114 = v112;
      v115 = v114;
      v412 = v84;
      if (v113)
      {
        v116 = _objc_getTaggedPointerTag(v114);
        switch(v116)
        {
          case 0:
            LOWORD(v437[0]) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v189)
            {
              [(__CFString *)v115 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_190;
            }

            goto LABEL_182;
          case 0x16:
            v187 = [(__CFString *)v115 UTF8String];
            if (!v187)
            {
              goto LABEL_385;
            }

            String.init(utf8String:)(v187);
            if (!v188)
            {
              goto LABEL_384;
            }

            goto LABEL_182;
          case 2:
            MEMORY[0x1EEE9AC00](v116);
            v391[-2] = v115;
            v117 = v426;
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v426 = v117;

            goto LABEL_190;
        }
      }

      LOBYTE(v439) = 0;
      *&v444 = 0;
      LOBYTE(v437[0]) = 0;
      LOBYTE(v432) = 0;
      v159 = __CFStringIsCF();
      if (v159)
      {
        v160 = v444;
        if (!v444)
        {
LABEL_182:

          goto LABEL_190;
        }

        if (v432 == 1)
        {
          if (v439)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_190:
          v232 = objc_allocWithZone(NSError);
          v233 = String._bridgeToObjectiveCImpl()();

          v95 = [v232 initWithDomain:v233 code:4866 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v234 = [v95 domain];
          LODWORD(v425) = v113;
          if (!v234)
          {
            goto LABEL_204;
          }

          v235 = v234;
          v236 = _objc_isTaggedPointer(v234);
          v237 = v235;
          v238 = v237;
          if (v236)
          {
            v239 = _objc_getTaggedPointerTag(v237);
            if (v239)
            {
              if (v239 != 22)
              {
                if (v239 == 2)
                {
                  MEMORY[0x1EEE9AC00](v239);
                  v391[-2] = v238;
                  v240 = v426;
                  v241 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v243 = v242;
                  v426 = v240;

                  goto LABEL_271;
                }

                goto LABEL_196;
              }

              v249 = [v238 UTF8String];
              if (!v249)
              {
                goto LABEL_391;
              }

              v250 = String.init(utf8String:)(v249);
              if (!v251)
              {
                goto LABEL_390;
              }
            }

            else
            {
              LOWORD(v437[0]) = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v250 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v251)
              {
                [v238 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v243 = *(&v439 + 1);
                v241 = v439;
                goto LABEL_270;
              }
            }

            v241 = v250;
            v243 = v251;
LABEL_210:

LABEL_270:
LABEL_271:
            v282 = v115;
            v283 = v282;
            if (!v425)
            {
              goto LABEL_276;
            }

            v284 = _objc_getTaggedPointerTag(v282);
            if (v284)
            {
              if (v284 != 22)
              {
                if (v284 == 2)
                {
                  MEMORY[0x1EEE9AC00](v284);
                  v391[-2] = v283;
                  v285 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v287 = v286;

LABEL_305:
                  v18 = v420;
LABEL_306:
                  if (v241 == v285 && v243 == v287)
                  {
                    goto LABEL_308;
                  }

                  v303 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v303 & 1) == 0)
                  {
                    goto LABEL_374;
                  }

                  goto LABEL_310;
                }

LABEL_276:
                LOBYTE(v439) = 0;
                *&v444 = 0;
                LOBYTE(v437[0]) = 0;
                LOBYTE(v432) = 0;
                v288 = __CFStringIsCF();
                if (v288)
                {
                  v289 = v444;
                  if (v444)
                  {
                    if (v432 == 1)
                    {
                      v18 = v420;
                      if (v439)
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      v285 = String.init<A>(_immortalCocoaString:count:encoding:)();
                      v287 = v296;
                      goto LABEL_306;
                    }

                    if (v437[0])
                    {
                      if (v439 == 1)
                      {
                        MEMORY[0x1EEE9AC00](v288);
                        v391[-4] = v283;
                        v391[-3] = &v444;
                        LODWORD(v391[-2]) = 1536;
                        v391[-1] = v289;
                      }

                      else
                      {
                        v297 = [(__CFString *)v283 lengthOfBytesUsingEncoding:4];
                        MEMORY[0x1EEE9AC00](v297);
                        v391[-4] = v283;
                        v391[-3] = &v444;
                        LODWORD(v391[-2]) = 134217984;
                        v391[-1] = v298;
                      }

                      v299 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v287 = v300;
                      v301 = HIBYTE(v300) & 0xF;
                      if ((v300 & 0x2000000000000000) == 0)
                      {
                        v301 = v299 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v301)
                      {
                        v285 = v299;

                        goto LABEL_305;
                      }
                    }

                    goto LABEL_304;
                  }
                }

                else
                {
                  v290 = v283;
                  v291 = String.init(_nativeStorage:)();
                  if (v292)
                  {
                    v285 = v291;
                    v287 = v292;

                    goto LABEL_305;
                  }

                  *&v444 = [(__CFString *)v290 length];
                  if (v444)
                  {
LABEL_304:
                    v285 = String.init(_cocoaString:)();
                    v287 = v302;
                    goto LABEL_305;
                  }
                }

                v285 = 0;
                v287 = 0xE000000000000000;
                goto LABEL_305;
              }

              v293 = [(__CFString *)v283 UTF8String];
              if (!v293)
              {
                goto LABEL_387;
              }

              v294 = String.init(utf8String:)(v293);
              v18 = v420;
              if (!v295)
              {
                goto LABEL_386;
              }
            }

            else
            {
              LOWORD(v437[0]) = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v294 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              v18 = v420;
              if (!v295)
              {
                [(__CFString *)v283 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v287 = *(&v439 + 1);
                v285 = v439;
                goto LABEL_306;
              }
            }

            v285 = v294;
            v287 = v295;

            goto LABEL_306;
          }

LABEL_196:
          LOBYTE(v439) = 0;
          *&v444 = 0;
          LOBYTE(v437[0]) = 0;
          LOBYTE(v432) = 0;
          v244 = __CFStringIsCF();
          if (v244)
          {
            v245 = v444;
            if (v444)
            {
              if (v432 == 1)
              {
                if (v439)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                v252 = String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_269;
              }

              if (v437[0])
              {
                if (v439 == 1)
                {
                  MEMORY[0x1EEE9AC00](v244);
                  v391[-4] = v238;
                  v391[-3] = &v444;
                  LODWORD(v391[-2]) = 1536;
                  v391[-1] = v245;
                }

                else
                {
                  v276 = [v238 lengthOfBytesUsingEncoding_];
                  MEMORY[0x1EEE9AC00](v276);
                  v391[-4] = v238;
                  v391[-3] = &v444;
                  LODWORD(v391[-2]) = 134217984;
                  v391[-1] = v277;
                }

                v278 = v426;
                v279 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v243 = v280;
                v426 = v278;
                v281 = HIBYTE(v280) & 0xF;
                if ((v280 & 0x2000000000000000) == 0)
                {
                  v281 = v279 & 0xFFFFFFFFFFFFLL;
                }

                if (v281)
                {
                  v241 = v279;
                  goto LABEL_210;
                }
              }

LABEL_268:
              v252 = String.init(_cocoaString:)();
LABEL_269:
              v241 = v252;
              v243 = v253;
              goto LABEL_270;
            }
          }

          else
          {
            v246 = v238;
            v247 = String.init(_nativeStorage:)();
            if (v248)
            {
              v241 = v247;
              v243 = v248;

              goto LABEL_271;
            }

            *&v444 = [v246 length];
            if (v444)
            {
              goto LABEL_268;
            }
          }

LABEL_204:
          v241 = 0;
          v243 = 0xE000000000000000;
          goto LABEL_271;
        }

        if (v437[0])
        {
          if (v439 == 1)
          {
            MEMORY[0x1EEE9AC00](v159);
            v391[-4] = v115;
            v391[-3] = &v444;
            LODWORD(v391[-2]) = 1536;
            v391[-1] = v160;
          }

          else
          {
            v220 = [(__CFString *)v115 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v220);
            v391[-4] = v115;
            v391[-3] = &v444;
            LODWORD(v391[-2]) = 134217984;
            v391[-1] = v221;
          }

          v222 = v426;
          v223 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v426 = v222;
          v225 = HIBYTE(v224) & 0xF;
          if ((v224 & 0x2000000000000000) == 0)
          {
            v225 = v223 & 0xFFFFFFFFFFFFLL;
          }

          if (v225)
          {
            goto LABEL_182;
          }
        }
      }

      else
      {
        v182 = v115;
        String.init(_nativeStorage:)();
        if (v183 || (*&v444 = [(__CFString *)v182 length], !v444))
        {

          goto LABEL_190;
        }
      }

      String.init(_cocoaString:)();
      goto LABEL_190;
    }

    v89 = v88;
    v418 = v78;
    v419 = v77;
    v90 = swift_getAssociatedTypeWitness();
    v414 = v391;
    v91 = MEMORY[0x1EEE9AC00](v90);
    v92 = v89;
    v93 = v426;
    (*(v87 + 32))(v92, v85, v87, v91);
    v94 = v428;
    if (v93)
    {
      swift_unknownObjectRelease_n();
      v95 = v93;
      v426 = 0;
      v18 = v420;
      goto LABEL_311;
    }

    v426 = 0;
    swift_unknownObjectRelease_n();
    v104 = v421;
    v105 = v423;
    swift_dynamicCast();
    v97 = *(v105 - 8);
LABEL_87:
    v120 = (*(v97 + 56))(v104, 0, 1, v105);
    v410 = v391;
    v414 = *(v97 + 64);
    MEMORY[0x1EEE9AC00](v120);
    v408 = v121;
    v122 = v391 - v121;
    v413 = v391;
    v124 = MEMORY[0x1EEE9AC00](v123);
    v126 = v391 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
    v127 = v418;
    v128 = v104;
    v129 = v419;
    (*(v418 + 16))(v126, v128, v419, v124);
    if ((*(v97 + 48))(v126, 1, v105) == 1)
    {
      v130 = *(v127 + 8);
      v130(v126, v129);
      v131 = (*(i + 24))();
      v447 = 0;
      memset(v446, 0, sizeof(v446));
      v444 = 0u;
      v445 = 0u;
      specialized AttributedString._AttributeStorage.subscript.setter(&v444, v131, v132);

      v130(v421, v129);
      v14 = v415;
      a5 = v416;
      v18 = v420;
      v22 = v427;
      goto LABEL_353;
    }

    v412 = v97;
    (*(v97 + 32))(v122, v126, v105);
    v133 = i;
    v134 = v425;
    v422 = (*(i + 24))(v425, i);
    v413 = v135;
    v407 = v391;
    v136 = MEMORY[0x1EEE9AC00](v422);
    v137 = v408;
    v138 = v391 - v408;
    v139 = *(v97 + 16);
    v405 = v122;
    v140 = v122;
    v141 = v423;
    v142 = v139(v391 - v408, v140, v423, v136);
    v406 = v391;
    v143 = MEMORY[0x1EEE9AC00](v142);
    v144(v391 - v137, v391 - v137, v141, v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
    swift_dynamicCast();
    (*(v133 + 32))(&v439, v134, v133);
    *&v446[1] = v439;
    LOBYTE(v446[3]) = (*(v133 + 40))(v134, v133) & 1;
    v145 = (*(v133 + 48))(v134, v133);
    v146 = v412 + 8;
    v425 = *(v412 + 8);
    v425(v138, v141);
    v447 = v145;
    outlined init with copy of AttributedString._AttributeValue?(&v444, &v439);
    v412 = v146;
    if (!*(&v440 + 1))
    {
      outlined destroy of TermOfAddress?(&v439, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v161 = specialized __RawDictionaryStorage.find<A>(_:)(v422, v413);
      v18 = v420;
      if (v162)
      {
        v163 = v161;
        v164 = v430;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v427;
        if (isUniquelyReferenced_nonNull_native)
        {
          v166 = v164;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v330 = static _DictionaryStorage.copy(original:)();
          v166 = v330;
          if (v164[2])
          {
            v331 = (v330 + 64);
            v332 = 1 << *(v166 + 32);
            v407 = v164 + 8;
            v333 = (v332 + 63) >> 6;
            if (v166 != v164 || v331 >= &v407[v333])
            {
              memmove(v331, v407, 8 * v333);
            }

            v334 = 0;
            *(v166 + 16) = v164[2];
            v335 = 1 << *(v164 + 32);
            if (v335 < 64)
            {
              v336 = ~(-1 << v335);
            }

            else
            {
              v336 = -1;
            }

            v337 = v336 & v164[8];
            v338 = (v335 + 63) >> 6;
            v408 = v338;
            if (v337)
            {
              do
              {
                v339 = __clz(__rbit64(v337));
                i = (v337 - 1) & v337;
LABEL_345:
                v342 = v339 | (v334 << 6);
                v343 = 16 * v342;
                v344 = v164[7];
                v345 = (v164[6] + 16 * v342);
                v346 = v345[1];
                v414 = *v345;
                v347 = 72 * v342;
                outlined init with copy of AttributedString._AttributeValue(v344 + 72 * v342, &v439);
                v348 = (*(v166 + 48) + v343);
                *v348 = v414;
                v348[1] = v346;
                v349 = *(v166 + 56) + v347;
                *v349 = v439;
                v350 = v440;
                v351 = v441;
                v352 = v442;
                *(v349 + 64) = v443;
                *(v349 + 32) = v351;
                *(v349 + 48) = v352;
                *(v349 + 16) = v350;

                v338 = v408;
                v337 = i;
              }

              while (i);
            }

            v340 = v334;
            while (1)
            {
              v334 = v340 + 1;
              if (__OFADD__(v340, 1))
              {
                goto LABEL_380;
              }

              if (v334 >= v338)
              {
                break;
              }

              v341 = v407[v334];
              ++v340;
              if (v341)
              {
                v339 = __clz(__rbit64(v341));
                i = (v341 - 1) & v341;
                goto LABEL_345;
              }
            }

            v18 = v420;
            v22 = v427;
          }
        }

        v167 = *(v166 + 56) + 72 * v163;
        v439 = *v167;
        v169 = *(v167 + 32);
        v168 = *(v167 + 48);
        v170 = *(v167 + 64);
        v440 = *(v167 + 16);
        v441 = v169;
        v443 = v170;
        v442 = v168;
        specialized _NativeDictionary._delete(at:)(v163, v166);
        v430 = v166;
        a5 = v416;
        v171 = v422;
      }

      else
      {
        v443 = 0;
        v441 = 0u;
        v442 = 0u;
        v439 = 0u;
        v440 = 0u;
        a5 = v416;
        v22 = v427;
        v171 = v422;
      }

      goto LABEL_352;
    }

    v437[2] = v441;
    v437[3] = v442;
    v438 = v443;
    v437[0] = v439;
    v437[1] = v440;
    outlined init with copy of AttributedString._AttributeValue(v437, &v432);
    v147 = v413;
    v148 = v430;
    v149 = swift_isUniquelyReferenced_nonNull_native();
    v429 = v148;
    v150 = specialized __RawDictionaryStorage.find<A>(_:)(v422, v147);
    v152 = *(v148 + 2);
    v153 = (v151 & 1) == 0;
    v154 = __OFADD__(v152, v153);
    v155 = v152 + v153;
    v18 = v420;
    if (v154)
    {
      goto LABEL_373;
    }

    v156 = v151;
    if (*(v148 + 3) < v155)
    {
      break;
    }

    if (v149)
    {
      v157 = v148;
LABEL_107:
      a5 = v416;
      v22 = v427;
      if ((v156 & 1) == 0)
      {
        goto LABEL_349;
      }

      goto LABEL_108;
    }

    v407 = v150;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v307 = static _DictionaryStorage.copy(original:)();
    v157 = v307;
    if (*(v148 + 2))
    {
      v308 = (v307 + 64);
      v309 = v148 + 64;
      v310 = ((1 << *(v157 + 32)) + 63) >> 6;
      v406 = v148 + 64;
      if (v157 != v148 || v308 >= &v309[8 * v310])
      {
        memmove(v308, v309, 8 * v310);
      }

      v311 = 0;
      *(v157 + 16) = *(v148 + 2);
      v312 = 1 << v148[32];
      if (v312 < 64)
      {
        v313 = ~(-1 << v312);
      }

      else
      {
        v313 = -1;
      }

      v314 = v313 & *(v148 + 8);
      v315 = (v312 + 63) >> 6;
      v408 = v315;
      v22 = v427;
      if (!v314)
      {
        goto LABEL_323;
      }

      while (1)
      {
        v316 = __clz(__rbit64(v314));
        for (i = (v314 - 1) & v314; ; i = (v318 - 1) & v318)
        {
          v319 = v316 | (v311 << 6);
          v320 = 16 * v319;
          v321 = *(v148 + 7);
          v322 = (*(v148 + 6) + 16 * v319);
          v323 = v322[1];
          v414 = *v322;
          v324 = 72 * v319;
          outlined init with copy of AttributedString._AttributeValue(v321 + 72 * v319, &v439);
          v325 = (*(v157 + 48) + v320);
          *v325 = v414;
          v325[1] = v323;
          v326 = *(v157 + 56) + v324;
          *v326 = v439;
          v327 = v440;
          v328 = v441;
          v329 = v442;
          *(v326 + 64) = v443;
          *(v326 + 32) = v328;
          *(v326 + 48) = v329;
          *(v326 + 16) = v327;

          v18 = v420;
          v315 = v408;
          v314 = i;
          v22 = v427;
          if (i)
          {
            break;
          }

LABEL_323:
          v317 = v311;
          do
          {
            v311 = v317 + 1;
            if (__OFADD__(v317, 1))
            {
              goto LABEL_379;
            }

            if (v311 >= v315)
            {
              goto LABEL_348;
            }

            v318 = v406[v311];
            ++v317;
          }

          while (!v318);
          v316 = __clz(__rbit64(v318));
        }
      }
    }

    v22 = v427;
LABEL_348:

    v150 = v407;
    a5 = v416;
    if ((v156 & 1) == 0)
    {
LABEL_349:
      *(v157 + 8 * (v150 >> 6) + 64) |= 1 << v150;
      v353 = (*(v157 + 48) + 16 * v150);
      v354 = v422;
      v355 = v413;
      *v353 = v422;
      v353[1] = v355;
      v356 = *(v157 + 56) + 72 * v150;
      *v356 = v432;
      v357 = v433;
      v358 = v434;
      v359 = v435;
      *(v356 + 64) = v436;
      *(v356 + 32) = v358;
      *(v356 + 48) = v359;
      *(v356 + 16) = v357;
      v360 = *(v157 + 16);
      v154 = __OFADD__(v360, 1);
      v361 = v360 + 1;
      if (v154)
      {
        goto LABEL_375;
      }

      *(v157 + 16) = v361;

      outlined destroy of AttributedString._AttributeValue(v437);
      v439 = 0u;
      v440 = 0u;
      v441 = 0u;
      v442 = 0u;
      v443 = 0;
      v171 = v354;
      goto LABEL_351;
    }

LABEL_108:
    v174 = *(v157 + 56) + 72 * v150;
    v176 = *(v174 + 16);
    v175 = *(v174 + 32);
    v177 = *(v174 + 48);
    v443 = *(v174 + 64);
    v442 = v177;
    v439 = *v174;
    v440 = v176;
    v441 = v175;
    v178 = *(v157 + 56) + 72 * v150;
    v179 = v433;
    v180 = v434;
    v181 = v435;
    *(v178 + 64) = v436;
    *(v178 + 32) = v180;
    *(v178 + 48) = v181;
    *(v178 + 16) = v179;
    *v178 = v432;
    outlined destroy of AttributedString._AttributeValue(v437);
    v171 = v422;
LABEL_351:
    v430 = v157;
LABEL_352:
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v171, v413, &v439, &v444);
    outlined destroy of TermOfAddress?(&v444, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v439, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

    v425(v405, v423);
    (*(v418 + 8))(v421, v419);
    v14 = v415;
LABEL_353:
    __swift_destroy_boxed_opaque_existential_1(&v448);
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v155, v149);
  v157 = v429;
  v150 = specialized __RawDictionaryStorage.find<A>(_:)(v422, v147);
  if ((v156 & 1) == (v158 & 1))
  {
    goto LABEL_107;
  }

LABEL_392:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_So21NSAttributedStringKeya_ypTt3g5Tf4xxnn_n(uint64_t a1, uint64_t a2, id a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  if (!a2)
  {
LABEL_16:
    __break(1u);
    return;
  }

  [a3 _getObjects_andKeys_count_];
  if (a4 < 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a4)
  {
    type metadata accessor for NSAttributedStringKey(0);
    v7 = a1 - 8;
    v8 = a4;
    do
    {
      if (v8 > a4)
      {
        __break(1u);
        goto LABEL_13;
      }

      v14 = *(v7 + 8 * v8);
      swift_unknownObjectRetain();
      swift_dynamicCast();
      *(v7 + 8 * v8--) = v13;
    }

    while (v8);
    v9 = (a2 + 8 * a4 - 8);
    v10 = (a2 + 32 * a4 - 32);
    v11 = a4;
    while (v11 <= a4)
    {
      --v11;
      v12 = *v9--;
      v14 = v12;
      swift_unknownObjectRetain();
      swift_dynamicCast();
      outlined init with take of Any(&v13, v10);
      v10 -= 2;
      if (!v11)
      {
        return;
      }
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }
}

uint64_t AttributedString.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v109;
  v113[6] = *MEMORY[0x1E69E9840];
  v4 = one-time initialization token for _loadedScopeCache;
  v5 = a1;
  v94 = v5;
  if (v4 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v6 = _loadedScopeCache;
    MEMORY[0x1EEE9AC00](v5);
    os_unfair_lock_lock(v6 + 10);
    closure #1 in _loadDefaultAttributes()partial apply(v113);
    os_unfair_lock_unlock(v6 + 10);
    v7 = v113[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14AttributeScope_pXpGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 32) = &type metadata for AttributeScopes.FoundationAttributes;
    *(inited + 40) = &protocol witness table for AttributeScopes.FoundationAttributes;
    v113[0] = v7;
    specialized Array.append<A>(contentsOf:)(inited);
    v9 = v113[0];
    v10 = *(v113[0] + 16);
    if (v10)
    {
      v113[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
      v11 = v113[0];
      v12 = v9 + 40;
      do
      {
        v13 = static AttributeScope.scopeDescription.getter(*(v12 - 8));

        v113[0] = v11;
        v2 = *(v11 + 16);
        v14 = *(v11 + 24);
        if (v2 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v2 + 1, 1);
          v11 = v113[0];
        }

        *(v11 + 16) = v2 + 1;
        *(v11 + 8 * v2 + 32) = v13;
        v12 += 16;
        --v10;
      }

      while (v10);
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    v97 = *(v11 + 16);
    if (!v97)
    {
      break;
    }

    v15 = 0;
    v96 = v11 + 32;
    v16 = MEMORY[0x1E69E7CC8];
    v95 = v11;
    while (v15 < *(v11 + 16))
    {
      v17 = *(v96 + 8 * v15);
      v98 = v15 + 1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113[0] = v16;
      v19 = v17 + 64;
      v20 = 1 << *(v17 + 32);
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v22 = v21 & *(v17 + 64);
      v23 = (v20 + 63) >> 6;
      v100 = v17;

      v24 = 0;
      v99 = v23;
      while (v22)
      {
        v25 = v24;
LABEL_24:
        v26 = (v25 << 10) | (16 * __clz(__rbit64(v22)));
        v27 = (*(v100 + 48) + v26);
        v28 = *v27;
        v2 = v27[1];
        v101 = *(*(v100 + 56) + v26);

        *&v102 = v28;
        v3 = v16;
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v2);
        v31 = *(v16 + 16);
        v32 = (v29 & 1) == 0;
        v33 = v31 + v32;
        if (__OFADD__(v31, v32))
        {
          __break(1u);
          v69 = [v16 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v69);
          v70 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v72 = HIBYTE(v71) & 0xF;
          if ((v71 & 0x2000000000000000) == 0)
          {
            v72 = v70 & 0xFFFFFFFFFFFFLL;
          }

          if (v72)
          {
LABEL_77:

            goto LABEL_81;
          }

LABEL_79:

          goto LABEL_80;
        }

        v34 = v29;
        if (*(v16 + 24) >= v33)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd);
            isUniquelyReferenced_nonNull_native = v16;
            v41 = static _DictionaryStorage.copy(original:)();
            v16 = v41;
            if (*(isUniquelyReferenced_nonNull_native + 16))
            {
              v42 = (v41 + 64);
              isUniquelyReferenced_nonNull_native = (v3 + 64);
              v43 = ((1 << *(v16 + 32)) + 63) >> 6;
              if (v16 != v3 || v42 >= isUniquelyReferenced_nonNull_native + 8 * v43)
              {
                memmove(v42, v3 + 64, 8 * v43);
              }

              v44 = 0;
              *(v16 + 16) = *(v3 + 2);
              v45 = 1 << v3[32];
              if (v45 < 64)
              {
                v46 = ~(-1 << v45);
              }

              else
              {
                v46 = -1;
              }

              v47 = v46 & *(v3 + 8);
              v90 = (v45 + 63) >> 6;
              if (v47)
              {
                do
                {
                  v91 = (v47 - 1) & v47;
                  v92 = v44;
                  v48 = __clz(__rbit64(v47)) | (v44 << 6);
LABEL_47:
                  v52 = 16 * v48;
                  v53 = (*(v3 + 6) + v52);
                  v55 = *v53;
                  v54 = v53[1];
                  v56 = *(*(v3 + 7) + v52);
                  v57 = (*(v16 + 48) + v52);
                  *v57 = v55;
                  v57[1] = v54;
                  *(*(v16 + 56) + v52) = v56;

                  v47 = v91;
                  v44 = v92;
                }

                while (v91);
              }

              v49 = v44;
              while (1)
              {
                v50 = v49 + 1;
                if (__OFADD__(v49, 1))
                {
                  __break(1u);
                }

                if (v50 >= v90)
                {
                  break;
                }

                v51 = *(isUniquelyReferenced_nonNull_native + 8 * v50);
                ++v49;
                if (v51)
                {
                  v91 = (v51 - 1) & v51;
                  v92 = v50;
                  v48 = __clz(__rbit64(v51)) | (v50 << 6);
                  goto LABEL_47;
                }
              }
            }

            v113[0] = v16;
          }

          v3 = v102;
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native & 1);
          v16 = v113[0];
          v3 = v102;
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v102, v2);
          if ((v34 & 1) != (v36 & 1))
          {
            goto LABEL_105;
          }

          v30 = v35;
        }

        v22 &= v22 - 1;
        if (v34)
        {

          *(*(v16 + 56) + 16 * v30) = v101;
        }

        else
        {
          *(v16 + 8 * (v30 >> 6) + 64) |= 1 << v30;
          v37 = (*(v16 + 48) + 16 * v30);
          *v37 = v3;
          v37[1] = v2;
          *(*(v16 + 56) + 16 * v30) = v101;
          v38 = *(v16 + 16);
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
          if (v39)
          {
            __break(1u);
            goto LABEL_79;
          }

          *(v16 + 16) = v40;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v24 = v25;
        v23 = v99;
      }

      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
          goto LABEL_63;
        }

        if (v25 >= v23)
        {
          break;
        }

        v22 = *(v19 + 8 * v25);
        ++v24;
        if (v22)
        {
          goto LABEL_24;
        }
      }

      v15 = v98;
      v3 = v109;
      v11 = v95;
      if (v98 == v97)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_98:
    v5 = swift_once();
  }

  v16 = MEMORY[0x1E69E7CC8];
LABEL_51:
  v2 = v16;

  v58 = [v94 string];
  isUniquelyReferenced_nonNull_native = &selRef_lastEditorFormattedName;
  if (v58)
  {
    v59 = v58;
    isTaggedPointer = _objc_isTaggedPointer(v58);
    v61 = v59;
    v16 = v61;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v61);
      switch(TaggedPointerTag)
      {
        case 0:
          v107[0] = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v67)
          {
            goto LABEL_77;
          }

          [v16 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          goto LABEL_81;
        case 0x16:
          v65 = [v16 UTF8String];
          if (v65)
          {
            String.init(utf8String:)(v65);
            if (v66)
            {
              goto LABEL_68;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_105:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_106;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_82;
      }
    }

    LOBYTE(v108[0]) = 0;
    v113[0] = 0;
    LOBYTE(v107[0]) = 0;
    v112 = 0;
    if (!__CFStringIsCF())
    {
LABEL_63:
      v63 = v16;
      String.init(_nativeStorage:)();
      if (v64 || (v68 = [v63 *(isUniquelyReferenced_nonNull_native + 96)], (*(v3 + 19) = v68) == 0))
      {

        goto LABEL_82;
      }

      goto LABEL_80;
    }

    if (v113[0])
    {
      if (v112 == 1)
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_81;
      }

LABEL_80:
      String.init(_cocoaString:)();
LABEL_81:

      goto LABEL_82;
    }

LABEL_68:
  }

LABEL_82:
  BigString.init(_:)();
  v108[0] = 0;
  MEMORY[0x1865D26B0](v108, 8);
  v73 = v108[0];
  *(v3 + 10) = 0;
  *(v3 + 11) = 0;
  *(v3 + 12) = v73;
  *(v3 + 8) = 0;
  *(v3 + 9) = 0;
  v74 = BigString.startIndex.getter();
  *(v3 + 4) = v74;
  *(v3 + 5) = v75;
  *(v3 + 6) = v76;
  *(v3 + 7) = v77;
  *v3 = v74;
  *(v3 + 1) = v75;
  *(v3 + 2) = v76;
  *(v3 + 3) = v77;
  v104 = 0;
  v105 = MEMORY[0x1E69E7CC8];
  v106 = MEMORY[0x1E69E7CD0];
  v103 = 0;
  v78 = [v94 *(isUniquelyReferenced_nonNull_native + 96)];
  v79 = swift_allocObject();
  *(v79 + 16) = v2;
  *(v79 + 24) = 1;
  *(v79 + 32) = &v111;
  *(v79 + 40) = v109;
  *(v79 + 48) = &v110;
  *(v79 + 56) = *(v3 + 152);
  *(v79 + 72) = *(v3 + 168);
  *(v79 + 88) = *(v3 + 184);
  *(v79 + 104) = &v104;
  *(v79 + 112) = &v112;
  *(v79 + 120) = &v103;
  v80 = swift_allocObject();
  *(v80 + 16) = partial apply for closure #1 in AttributedString.init(_:attributeTable:options:);
  *(v80 + 24) = v79;
  v108[4] = partial apply for thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v108[5] = v80;
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 1107296256;
  v108[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v108[3] = &block_descriptor_2;
  v81 = _Block_copy(v108);

  outlined init with copy of BigString(v113, v107);

  [v94 enumerateAttributesInRange:0 options:v78 usingBlock:{0, v81}];
  _Block_release(v81);
  LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

  if (v78)
  {
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v16 = *(v3 + 8);
  if (v16)
  {
LABEL_106:
    swift_willThrow();
    v89 = v16;
    outlined destroy of BigString(v113);

    swift_unknownObjectRelease();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v82 = v104;
  if (v104 >= 1)
  {
    v83 = v105;
    v84 = v106;

    specialized Rope.append(_:)(v82, v83, v84);
  }

  v101 = *(v3 + 72);
  v102 = *(v3 + 88);
  type metadata accessor for AttributedString.Guts();
  v80 = swift_allocObject();
  v85 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(v113, v108);
  if (v101)
  {
    v86 = v102 == 0;
  }

  else
  {
    v86 = 1;
  }

  v87 = v86;
  swift_unknownObjectRetain();
  if (v87 != v85)
  {
    goto LABEL_100;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_101:
    swift_once();
  }

  *(v80 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  *(v80 + 24) = *(v3 + 152);
  *(v80 + 40) = *(v3 + 168);
  *(v80 + 56) = *(v3 + 184);
  *(v80 + 88) = v102;
  *(v80 + 72) = v101;
  *(v80 + 104) = MEMORY[0x1E69E7CC0];
  if (v103 == 1)
  {
    AttributedString.Guts.adjustConstrainedAttributesForUntrustedRuns()();
  }

  outlined destroy of BigString(v113);

  result = swift_unknownObjectRelease();
  *a2 = v80;
  return result;
}

id AttributedString.init<A>(_:including:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = static AttributeScope.scopeDescription.getter(a2);

  v5 = [a1 string];
  v6 = &selRef_lastEditorFormattedName;
  if (v5)
  {
    v7 = v5;
    isTaggedPointer = _objc_isTaggedPointer(v5);
    v9 = v7;
    v10 = v9;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v9);
      switch(TaggedPointerTag)
      {
        case 0:
          LOWORD(v45) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v16)
          {
          }

          else
          {
            [v10 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
          }

LABEL_21:

          goto LABEL_22;
        case 0x16:
          result = [v10 UTF8String];
          if (result)
          {
            result = String.init(utf8String:)(result);
            if (v15)
            {
              goto LABEL_8;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return result;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          v6 = &selRef_lastEditorFormattedName;
          goto LABEL_22;
      }
    }

    v40[0] = 0;
    v41[0] = 0;
    LOBYTE(v45) = 0;
    LOBYTE(v43[0]) = 0;
    if (__CFStringIsCF())
    {
LABEL_8:

      goto LABEL_22;
    }

    v12 = v10;
    String.init(_nativeStorage:)();
    if (v13 || (v41[0] = [v12 length]) == 0)
    {

      goto LABEL_22;
    }

    String.init(_cocoaString:)();
    goto LABEL_21;
  }

LABEL_22:
  BigString.init(_:)();
  v41[0] = 0;
  MEMORY[0x1865D26B0](v41, 8);
  *&v46 = 0;
  *(&v46 + 1) = v41[0];
  v44 = 0;
  v45 = 0uLL;
  v17 = BigString.startIndex.getter();
  v43[1] = v18;
  v43[2] = v19;
  v43[3] = v20;
  v42[0] = v17;
  v42[1] = v18;
  v42[2] = v19;
  v42[3] = v20;
  v43[0] = v17;
  v37 = 0;
  v38 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CD0];
  v36 = 0;
  v21 = [a1 v6[12]];
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = 0;
  *(v22 + 32) = &v44;
  *(v22 + 40) = v42;
  *(v22 + 48) = v43;
  *(v22 + 56) = v47;
  *(v22 + 72) = v48;
  *(v22 + 88) = v49;
  *(v22 + 104) = &v37;
  *(v22 + 112) = &v45;
  *(v22 + 120) = &v36;
  v23 = swift_allocObject();
  *(v23 + 16) = closure #1 in AttributedString.init(_:attributeTable:options:)partial apply;
  *(v23 + 24) = v22;
  v41[4] = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v41[5] = v23;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 1107296256;
  v41[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v41[3] = &block_descriptor_116;
  v24 = _Block_copy(v41);

  outlined init with copy of BigString(&v47, v40);

  [a1 enumerateAttributesInRange:0 options:v21 usingBlock:{0, v24}];
  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v25 = v44;
  if (v44)
  {
    swift_willThrow();
    v26 = v25;
    outlined destroy of BigString(&v47);

    return swift_unknownObjectRelease();
  }

  v27 = v37;
  if (v37 >= 1)
  {
    v28 = v38;
    v29 = v39;

    specialized Rope.append(_:)(v27, v28, v29);
  }

  v33 = v45;
  v34 = v46;
  type metadata accessor for AttributedString.Guts();
  v23 = swift_allocObject();
  v30 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v47, v41);
  if (v33)
  {
    v31 = v34 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31;
  swift_unknownObjectRetain();
  if (v32 != v30)
  {
    goto LABEL_39;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_40:
    swift_once();
  }

  *(v23 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  *(v23 + 24) = v47;
  *(v23 + 40) = v48;
  *(v23 + 56) = v49;
  *(v23 + 88) = v34;
  *(v23 + 72) = v33;
  *(v23 + 104) = MEMORY[0x1E69E7CC0];
  if (v36 == 1)
  {
    AttributedString.Guts.adjustConstrainedAttributesForUntrustedRuns()();
  }

  outlined destroy of BigString(&v47);

  result = swift_unknownObjectRelease();
  *a3 = v23;
  return result;
}

{
  v50 = *MEMORY[0x1E69E9840];
  v4 = static AttributeScope.scopeDescription.getter(a2);

  v5 = [a1 string];
  v6 = &selRef_lastEditorFormattedName;
  if (v5)
  {
    v7 = v5;
    isTaggedPointer = _objc_isTaggedPointer(v5);
    v9 = v7;
    v10 = v9;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v9);
      switch(TaggedPointerTag)
      {
        case 0:
          LOWORD(v45) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v16)
          {
          }

          else
          {
            [v10 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
          }

LABEL_21:

          goto LABEL_22;
        case 0x16:
          result = [v10 UTF8String];
          if (result)
          {
            result = String.init(utf8String:)(result);
            if (v15)
            {
              goto LABEL_8;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return result;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          v6 = &selRef_lastEditorFormattedName;
          goto LABEL_22;
      }
    }

    v40[0] = 0;
    v41[0] = 0;
    LOBYTE(v45) = 0;
    LOBYTE(v43[0]) = 0;
    if (__CFStringIsCF())
    {
LABEL_8:

      goto LABEL_22;
    }

    v12 = v10;
    String.init(_nativeStorage:)();
    if (v13 || (v41[0] = [v12 length]) == 0)
    {

      goto LABEL_22;
    }

    String.init(_cocoaString:)();
    goto LABEL_21;
  }

LABEL_22:
  BigString.init(_:)();
  v41[0] = 0;
  MEMORY[0x1865D26B0](v41, 8);
  *&v46 = 0;
  *(&v46 + 1) = v41[0];
  v44 = 0;
  v45 = 0uLL;
  v17 = BigString.startIndex.getter();
  v43[1] = v18;
  v43[2] = v19;
  v43[3] = v20;
  v42[0] = v17;
  v42[1] = v18;
  v42[2] = v19;
  v42[3] = v20;
  v43[0] = v17;
  v37 = 0;
  v38 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CD0];
  v36 = 0;
  v21 = [a1 v6[12]];
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = 0;
  *(v22 + 32) = &v44;
  *(v22 + 40) = v42;
  *(v22 + 48) = v43;
  *(v22 + 56) = v47;
  *(v22 + 72) = v48;
  *(v22 + 88) = v49;
  *(v22 + 104) = &v37;
  *(v22 + 112) = &v45;
  *(v22 + 120) = &v36;
  v23 = swift_allocObject();
  *(v23 + 16) = closure #1 in AttributedString.init(_:attributeTable:options:)partial apply;
  *(v23 + 24) = v22;
  v41[4] = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v41[5] = v23;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 1107296256;
  v41[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v41[3] = &block_descriptor_102;
  v24 = _Block_copy(v41);

  outlined init with copy of BigString(&v47, v40);

  [a1 enumerateAttributesInRange:0 options:v21 usingBlock:{0, v24}];
  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v25 = v44;
  if (v44)
  {
    swift_willThrow();
    v26 = v25;
    outlined destroy of BigString(&v47);

    return swift_unknownObjectRelease();
  }

  v27 = v37;
  if (v37 >= 1)
  {
    v28 = v38;
    v29 = v39;

    specialized Rope.append(_:)(v27, v28, v29);
  }

  v33 = v45;
  v34 = v46;
  type metadata accessor for AttributedString.Guts();
  v23 = swift_allocObject();
  v30 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v47, v41);
  if (v33)
  {
    v31 = v34 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31;
  swift_unknownObjectRetain();
  if (v32 != v30)
  {
    goto LABEL_39;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_40:
    swift_once();
  }

  *(v23 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  *(v23 + 24) = v47;
  *(v23 + 40) = v48;
  *(v23 + 56) = v49;
  *(v23 + 88) = v34;
  *(v23 + 72) = v33;
  *(v23 + 104) = MEMORY[0x1E69E7CC0];
  if (v36 == 1)
  {
    AttributedString.Guts.adjustConstrainedAttributesForUntrustedRuns()();
  }

  outlined destroy of BigString(&v47);

  result = swift_unknownObjectRelease();
  *a3 = v23;
  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{
  outlined consume of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136));

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for AttributedString.Runs() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(type metadata accessor for ICULegacyNumberFormatter.Signature(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = *(type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0) + 36);
    v11 = type metadata accessor for FloatingPointRoundingRule();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v7 = *(type metadata accessor for NumberFormatStyleConfiguration.Collection(0) + 36);
    v8 = type metadata accessor for FloatingPointRoundingRule();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_2()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance Locale(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftLocale();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale);
    v6 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale + 8);
    result = swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged);
    result = a1;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Locale()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 488))(ObjectType, v1);
}

uint64_t _NSSetFloatValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    [a3 floatValue];

    return (Implementation)(a1, Name);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

Swift::String __swiftcall NSBundle.localizedString(forKey:value:table:localizations:)(Swift::String forKey, Swift::String_optional value, Swift::String_optional table, Swift::OpaquePointer localizations)
{
  v5 = v4;
  object = table.value._object;
  v7 = value.value._object;
  v8 = *(localizations._rawValue + 2);
  if (v8)
  {
    v44 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v10 = v44;
    v11 = localizations._rawValue + 32;
    do
    {
      v12 = Locale.Language.minimalIdentifier.getter();
      v43 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        v42 = v12;
        v17 = v13;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v12 = v42;
        v10 = v43;
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v11 += 96;
      --v8;
    }

    while (v8);
    v5 = v4;
  }

  v18 = String._bridgeToObjectiveCImpl()();
  if (v7)
  {
    v7 = String._bridgeToObjectiveCImpl()();
  }

  if (object)
  {
    object = String._bridgeToObjectiveCImpl()();
  }

  v19 = [v5 localizedStringForKey:v18 value:v7 table:object localizations:_ContiguousArrayBuffer._asCocoaArray()()];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (!v19)
  {
    goto LABEL_21;
  }

  isTaggedPointer = _objc_isTaggedPointer(v19);
  v21 = v19;
  v22 = v21;
  if (!isTaggedPointer)
  {
    goto LABEL_38;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v21);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v36 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v37)
    {
      v38 = v36;
      v39 = v37;
    }

    else
    {
      [v22 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v38 = v43;
      v39 = v45;
    }

    goto LABEL_31;
  }

  if (TaggedPointerTag == 22)
  {
    v28 = [v22 UTF8String];
    if (v28)
    {
      v28 = String.init(utf8String:)(v28);
      if (v27)
      {
        v34 = v28;
        v35 = v27;

        v28 = v34;
        v27 = v35;
        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_38:
    if (__CFStringIsCF())
    {

LABEL_21:
      v28 = 0;
      v27 = 0xE000000000000000;
      goto LABEL_34;
    }

    v29 = v22;
    v30 = String.init(_nativeStorage:)();
    if (v31)
    {
      v32 = v30;
      v33 = v31;

      v27 = v33;
      v28 = v32;
      goto LABEL_34;
    }

    if (![v29 length])
    {

      goto LABEL_21;
    }

    v38 = String.init(_cocoaString:)();
    v39 = v40;
LABEL_31:

    v27 = v39;
    v28 = v38;
    goto LABEL_34;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v26 = v25;

  v27 = v26;
  v28 = v24;
LABEL_34:
  result._object = v27;
  result._countAndFlagsBits = v28;
  return result;
}

uint64_t Locale.Language.minimalIdentifier.getter()
{
  v0 = MEMORY[0x1E69E5758];

  return Locale.Language.minimalIdentifier.getter(v0);
}

uint64_t LocalizedStringResource.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed String?, @unowned _NSRange, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  if (a2)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)(a2);
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v12(v13, v15, a3, a4, a5, a6, a7);
}

uint64_t closure #1 in StringProtocol.enumerateSubstrings<A>(in:options:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v19 = 0;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFADD__(a3, a4))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  result = StringProtocol._toUTF16Indices(_:)();
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  if (__OFADD__(a5, a6))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = StringProtocol._toUTF16Indices(_:)();
  result = a8(v12, a2, v15, v14, v16, v17, &v19);
  if (v19 == 1)
  {
    *a7 = v19;
  }

  return result;
}

uint64_t static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.Conjunction();
  return (*(*(a4 - 8) + 16))(a5 + *(v8 + 52), a2, a4);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.Conjunction<A, B>(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

uint64_t static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v23 = a8;
  v24 = a3;
  v25 = a2;
  v15 = *(a4 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v15 + 16);
  v19(v18, v16);
  (v19)(a9, v18, a4);
  if (one-time initialization token for nextID != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static PredicateExpressions.VariableID.nextID, 1uLL, memory_order_relaxed);
  v26[0] = a4;
  v26[1] = a6;
  v26[2] = a5;
  v26[3] = a7;
  v26[4] = v23;
  v26[5] = a10;
  *(a9 + *(type metadata accessor for PredicateExpressions.OptionalFlatMap() + 72)) = add_explicit;
  v26[0] = add_explicit;
  v25(v26);
  return (*(v15 + 8))(v18, a4);
}

{
  return static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

{
  return static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.CollectionIndexSubscript<A, B>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.CollectionIndexSubscript<A, B>(a1);
}

uint64_t static PredicateExpressions.build_contains<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.SequenceContains();
  return (*(*(a4 - 8) + 16))(a5 + *(v8 + 68), a2, a4);
}

{
  (*(*(a3 - 8) + 16))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.CollectionContainsCollection();
  return (*(*(a4 - 8) + 16))(a5 + *(v8 + 76), a2, a4);
}

{
  (*(*(a3 - 8) + 16))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.StringContainsRegex();
  return (*(*(a4 - 8) + 16))(a5 + *(v8 + 68), a2, a4);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.Comparison<A, B>(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.SequenceContains<A, B>(uint64_t a1)
{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = 0;
  v9 = 0;
  v10 = *a3;
  v11 = *result;
  v12 = *(result + 8);
  v13 = *a4;
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *a5;
  v33 = 1;
  v17 = 0uLL;
  v18 = 0x3000000000000;
  v19 = *a6;
  if (v12)
  {
    v20 = 0;
    v21 = 0uLL;
  }

  else
  {
    v20 = 0;
    v21 = 0uLL;
    if (v11)
    {
      v33 = 0;
      v38 = xmmword_18121B8E0;
      v39 = xmmword_181223220;
      v40 = 0x2020E0906030100;
      v41 = 0;
      v42 = 3327;
      v32 = v11;
      v30 = v13;
      v31 = v10;
      v29 = v16;
      result = Date.FormatStyle.DateFieldCollection.collection(date:)(&v32, v34);
      v16 = v29;
      v13 = v30;
      v10 = v31;
      v17 = v34[0];
      v21 = v34[1];
      v18 = v35;
      v9 = v36;
      v20 = v11;
      v8 = v37;
    }
  }

  if (v14)
  {
    v22 = v15;
  }

  else
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    if ((v18 & 0xFF000000000000) == 0x3000000000000)
    {
      v9 = 0;
      v23 = 0;
      v18 = 0x2020E0906030000;
      LOBYTE(v24) = 1;
      v21 = xmmword_181223220;
      v17 = xmmword_18121B8E0;
      LOWORD(v25) = 12;
      LOBYTE(v8) = -1;
    }

    else
    {
      v24 = v18 >> 8;
      v23 = v18;
      v25 = v8 >> 8;
    }

    v26 = v23 & 0xFFFFFFFFFFFF00FFLL | (v24 << 8);
    v27 = v18 & 0xFF00000000000000;
    if (v14 == 2)
    {
      v27 = 0x100000000000000;
    }

    if (v14 == 3)
    {
      LOWORD(v25) = 0;
      v27 = 0x100000000000000;
    }

    v18 = v27 | v18 & 0xFFFFFF0000 | v26 | 0x1000000000000;
    LOWORD(v8) = v8 | (v25 << 8);
  }

  v28 = v33;
  *a7 = v17;
  *(a7 + 16) = v21;
  *(a7 + 32) = v18;
  *(a7 + 40) = v9;
  *(a7 + 48) = v8;
  *(a7 + 56) = v20;
  *(a7 + 64) = v28;
  *(a7 + 72) = v10;
  *(a7 + 88) = v16;
  *(a7 + 104) = v13;
  *(a7 + 120) = v19;
  *(a7 + 121) = 1;
  return result;
}

uint64_t Date.FormatStyle.year(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v2[5];
  v33 = v2[4];
  v34 = v5;
  v35[0] = v2[6];
  *(v35 + 10) = *(v2 + 106);
  v6 = v2[1];
  v29 = *v2;
  v30 = v6;
  v7 = v2[3];
  v31 = v2[2];
  v32 = v7;
  v8 = *(&v30 + 1);
  v9 = v30;
  v10 = *(&v31 + 1);
  v11 = v31;
  v12 = v7;
  if ((v31 & 0xFF000000000000) == 0x3000000000000)
  {
    if (v4 == 255)
    {
      v19 = *(v2 + 66);
      v20 = *(v2 + 82);
      v21 = *(v2 + 98);
      v22 = *(v2 + 114);
      v18 = *(v2 + 50);
      v16[0] = v29;
      v16[1] = v30;
      v16[2] = v31;
      v17 = v7;
      v14 = a2;
      Date.FormatStyle.symbols.getter(v23);
      a2 = v14;
      v13 = v23[0];
      v9 = v24;
      v8 = v25;
      v11 = v26;
      v10 = v27;
      v12 = v28;
      if ((v26 & 0xFF000000000000) == 0x3000000000000)
      {
        v3 = v23[1];
        LOBYTE(v4) = v24;
      }

      else
      {
        LOBYTE(v4) = -1;
      }
    }

    else
    {
      v8 = 0;
      v10 = 0;
      LOBYTE(v16[0]) = 1;
      v11 = 0x2020E0906030100;
      v12 = 3327;
      v9 = 50660863;
      v13 = 3;
    }
  }

  else
  {
    v13 = v29;
  }

  *a2 = v13;
  *(a2 + 8) = v3;
  *(a2 + 16) = v9 & 0xFFFFFFFFFFFFFF00 | v4;
  *(a2 + 24) = v8;
  *(a2 + 32) = v11;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12;
  *(a2 + 66) = *(v2 + 66);
  *(a2 + 82) = *(v2 + 82);
  *(a2 + 98) = *(v2 + 98);
  *(a2 + 114) = *(v2 + 114);
  *(a2 + 50) = *(v2 + 50);
  return outlined init with copy of Date.FormatStyle(&v29, v16);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance Date.FormatStyle@<X0>(Swift::String *a1@<X8>, Foundation::Date a2@<D0>)
{
  v4 = Date.FormatStyle.format(_:)(a2);
  result = v4._countAndFlagsBits;
  *a1 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Date.AttributedStyle(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

uint64_t URLRequest.allHTTPHeaderFields.getter()
{
  v1 = *(*v0 + 16);
  v2 = [v1 allHTTPHeaderFields];
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  v4 = MEMORY[0x1E69E7CA0] + 8;
  v5 = MEMORY[0x1E69E6158];
  swift_unknownObjectRetain();
  if (v5 != v4)
  {
    v6 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (v6)
    {
      goto LABEL_11;
    }

    v38 = [v3 count];
    if (!v38)
    {
      goto LABEL_37;
    }

    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v40 = v9[6];
    v41 = v9[7];

    result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_SSTt3g5Tf4xxnn_n(v40, v41, v3, v39);
    if (result < 0 || v39 < result)
    {
      goto LABEL_43;
    }

    v9[2] = result;
    if (!result)
    {
      goto LABEL_36;
    }

    v42 = result - 1;
    v43 = v9 + 8;
    while (1)
    {
      if ((*(v43 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v42))
      {
        goto LABEL_28;
      }

      v45 = (v9[6] + 16 * v42);
      v46 = *v45;
      v47 = v45[1];

      v48 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v47);
      v50 = v49;

      if (v50)
      {
        v51 = v9[6];

        outlined destroy of String(v51 + 16 * v42);
        result = outlined destroy of String(v9[7] + 16 * v42);
        v52 = v9[2];
        v27 = __OFSUB__(v52, 1);
        v53 = v52 - 1;
        if (v27)
        {
          goto LABEL_41;
        }

        v9[2] = v53;

        goto LABEL_28;
      }

      *(v43 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      if (v42 < v48)
      {
        v44 = 16 * v48;
        *(v9[6] + v44) = *(v9[6] + 16 * v42);
        *(v9[7] + v44) = *(v9[7] + 16 * v42);
LABEL_28:
        if (--v42 < 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v48 == v42)
        {
          goto LABEL_28;
        }

        v54 = v9[6];
        v55 = (v54 + 16 * v48);
        v56 = (v54 + 16 * v42);
        v57 = *v55;
        v58 = v55[1];
        v59 = v56[1];
        *v55 = *v56;
        v55[1] = v59;
        *v56 = v57;
        v56[1] = v58;
        v60 = v9[7];
        v61 = (v60 + 16 * v48);
        v62 = (v60 + 16 * v42);
        v63 = *v61;
        v64 = v61[1];
        v65 = v62[1];
        *v61 = *v62;
        v61[1] = v65;
        *v62 = v63;
        v62[1] = v64;
        if (v42 < 0)
        {
          goto LABEL_36;
        }
      }
    }
  }

  v6 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v6)
  {
LABEL_11:
    v9 = v6;
LABEL_38:

    return v9;
  }

  v7 = [v3 count];
  if (!v7)
  {
LABEL_37:
    v9 = MEMORY[0x1E69E7CC8];
    goto LABEL_38;
  }

  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v9 = static _DictionaryStorage.allocate(capacity:)();
  v10 = v9[6];
  v11 = v9[7];

  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v10, v11, v3, v8);
  if (result < 0 || v8 < result)
  {
    goto LABEL_42;
  }

  v9[2] = result;
  if (!result)
  {
LABEL_36:

    goto LABEL_38;
  }

  v13 = result - 1;
  v14 = v9 + 8;
  while (1)
  {
    if ((*(v14 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13))
    {
      goto LABEL_13;
    }

    v19 = (v9[6] + 16 * v13);
    v20 = *v19;
    v21 = v19[1];

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
    v24 = v23;

    if (v24)
    {
      break;
    }

    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    if (v13 < v22)
    {
      *(v9[6] + 16 * v22) = *(v9[6] + 16 * v13);
      v15 = v9[7];
      v16 = (v15 + 32 * v13);
      v17 = v16[1];
      v18 = (v15 + 32 * v22);
      *v18 = *v16;
      v18[1] = v17;
LABEL_13:
      if (--v13 < 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v22 == v13)
      {
        goto LABEL_13;
      }

      v29 = v9[6];
      v30 = (v29 + 16 * v22);
      v31 = (v29 + 16 * v13);
      v32 = *v30;
      v33 = v30[1];
      v34 = v31[1];
      *v30 = *v31;
      v30[1] = v34;
      *v31 = v32;
      v31[1] = v33;
      v35 = v9[7];
      v36 = (v35 + 32 * v22);
      v37 = (v35 + 32 * v13);
      outlined init with take of Any(v36, v66);
      outlined init with take of Any(v37, v36);
      outlined init with take of Any(v66, v37);
      if (v13 < 0)
      {
        goto LABEL_36;
      }
    }
  }

  v25 = v9[6] + 16 * v13;

  outlined destroy of String(v25);
  result = __swift_destroy_boxed_opaque_existential_1(v9[7] + 32 * v13);
  v26 = v9[2];
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (!v27)
  {
    v9[2] = v28;

    goto LABEL_13;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

char *_sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_SSTt3g5Tf4xxnn_n(char *result, uint64_t a2, id a3, uint64_t a4)
{
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a2)
  {
    v6 = result;
    result = [a3 _getObjects_andKeys_count_];
    if ((a4 & 0x8000000000000000) == 0)
    {
      if (!a4)
      {
        return a4;
      }

      v7 = &v6[8 * a4 - 8];
      v8 = &v6[16 * a4 - 8];
      v9 = a4;
      do
      {
        if (v9 > a4)
        {
          __break(1u);
          goto LABEL_13;
        }

        --v9;
        v7 -= 8;
        swift_unknownObjectRetain();
        result = swift_dynamicCast();
        *(v8 - 1) = v13;
        *v8 = v14;
        v8 -= 16;
      }

      while (v9);
      v10 = a2 + 8 * a4 - 8;
      v11 = (a2 + 16 * a4 - 8);
      v12 = a4;
      while (v12 <= a4)
      {
        --v12;
        v10 -= 8;
        swift_unknownObjectRetain();
        result = swift_dynamicCast();
        *(v11 - 1) = v13;
        *v11 = v14;
        v11 -= 2;
        if (!v12)
        {
          return a4;
        }
      }

LABEL_13:
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t Slice<>.withUnsafeBytes<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v17 = a4;
  v18 = a1;
  v19 = a2;
  v20 = a6;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17 - v13;
  dispatch thunk of Collection.startIndex.getter();
  v15 = dispatch thunk of Collection.distance(from:to:)();
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  v22 = v10;
  v23 = v17;
  v24 = a5;
  v25 = v9;
  v26 = v15;
  v27 = v7;
  v28 = v18;
  v29 = v19;
  return (*(a5 + 8))(partial apply for closure #1 in Slice<>.withUnsafeBytes<A>(_:), v21);
}

uint64_t closure #1 in Slice<>.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a1)
  {
    v6 = a3 + a1;
  }

  else
  {
    v6 = 0;
  }

  type metadata accessor for Slice();
  v7 = dispatch thunk of Collection.distance(from:to:)();
  if (v6)
  {
    v8 = v7 + v6;
  }

  else
  {
    v8 = 0;
  }

  return a5(v6, v8);
}

Swift::Void __swiftcall Data._Representation.reserveCapacity(_:)(Swift::Int a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1 < 1)
  {
    return;
  }

  v2 = a1;
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      outlined consume of Data._Representation(*v1, *(v1 + 8));
      if (v2 <= 0xE)
      {
        *v1 = 0;
        *(v1 + 8) = 0;
      }

      else
      {
        v16 = v1;
        type metadata accessor for __DataStorage();
        v17 = swift_allocObject();
        __DataStorage.init(capacity:)(v2);
        if (v2 > 0x7FFFFFFE)
        {
          type metadata accessor for Data.RangeReference();
          v29 = swift_allocObject();
          *(v29 + 16) = 0;
          *(v29 + 24) = 0;
          *v16 = v29;
          v16[1] = v17 | 0x8000000000000000;
        }

        else
        {
          *v16 = 0;
          v16[1] = v17 | 0x4000000000000000;
        }
      }

      return;
    }

    v31 = *v1;
    v32 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    if ((*((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) & 0x7FFFFFFFFFFFFFFFuLL) >= a1)
    {
      return;
    }

    outlined consume of Data._Representation(v4, v3);
    v9 = v1;
    *v1 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v11 = *(v31 + 16);
    v10 = *(v31 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (v12)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    v14 = v32;
    if (v13 > v2)
    {
      v2 = v13;
    }

    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(v2, 0);

    *v9 = v31;
    v9[1] = v14 | 0x8000000000000000;
  }

  else
  {
    if (!v5)
    {
      if (a1 <= 0xE)
      {
        return;
      }

      v6 = v1;
      outlined consume of Data._Representation(*v1, *(v1 + 8));
      if (v2 <= 0x7FFFFFFE)
      {
        v31 = v4;
        LOWORD(v32) = v3;
        BYTE2(v32) = BYTE2(v3);
        BYTE3(v32) = BYTE3(v3);
        BYTE4(v32) = BYTE4(v3);
        BYTE5(v32) = BYTE5(v3);
        type metadata accessor for __DataStorage();
        v7 = swift_allocObject();
        __DataStorage.init(bytes:length:)(&v31, BYTE6(v3));
        LODWORD(v31) = 0;
        HIDWORD(v31) = BYTE6(v3);
        v32 = v7;
        Data.InlineSlice.reserveCapacity(_:)(v2);
        v8 = v32 | 0x4000000000000000;
        *v6 = v31;
        v6[1] = v8;
        return;
      }

      v31 = v4;
      LOWORD(v32) = v3;
      BYTE2(v32) = BYTE2(v3);
      BYTE3(v32) = BYTE3(v3);
      BYTE4(v32) = BYTE4(v3);
      BYTE5(v32) = BYTE5(v3);
      type metadata accessor for __DataStorage();
      v18 = swift_allocObject();
      __DataStorage.init(bytes:length:)(&v31, BYTE6(v3));
      type metadata accessor for Data.RangeReference();
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      *(v19 + 24) = BYTE6(v3);
      v31 = v19;
      v32 = v18;
      Data.LargeSlice.ensureUniqueReference()();
      v20 = v31;
      v22 = *(v31 + 16);
      v21 = *(v31 + 24);
      v12 = __OFSUB__(v21, v22);
      v23 = v21 - v22;
      if (!v12)
      {
        v24 = v32;
        if (v23 > v2)
        {
          v2 = v23;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(v2, 0);

        *v6 = v20;
        v6[1] = v24 | 0x8000000000000000;
        return;
      }

      goto LABEL_32;
    }

    v31 = *v1;
    v32 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    if ((*((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) & 0x7FFFFFFFFFFFFFFFuLL) >= a1)
    {
      return;
    }

    outlined consume of Data._Representation(v4, v3);
    if (v2 <= 0x7FFFFFFE)
    {
      *v1 = xmmword_181234410;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      Data.InlineSlice.reserveCapacity(_:)(v2);
      v15 = v32 | 0x4000000000000000;
      *v1 = v31;
      *(v1 + 8) = v15;
      return;
    }

    if (v4 >> 32 < v4)
    {
      goto LABEL_33;
    }

    type metadata accessor for Data.RangeReference();
    v25 = swift_allocObject();
    *(v25 + 16) = v4;
    *(v25 + 24) = v4 >> 32;
    v30 = v25;

    Data.LargeSlice.ensureUniqueReference()();
    v27 = *(v30 + 16);
    v26 = *(v30 + 24);
    v12 = __OFSUB__(v26, v27);
    v28 = v26 - v27;
    if (v12)
    {
      goto LABEL_34;
    }

    if (v28 > v2)
    {
      v2 = v28;
    }

    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(v2, 0);

    outlined consume of Data._Representation(v4, v3);
    *v1 = v30;
    *(v1 + 8) = v3 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
  }
}

__n128 protocol witness for DataProtocol.regions.getter in conformance UnsafeRawBufferPointer@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

void type metadata completion function for String.LocalizationValue.FormatArgument.CodableStorage()
{
  type metadata accessor for (AttributedString, options: UInt)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (Date, String.LocalizationValue.FormatArgument.DateArgumentFormatStyle)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (Range<Date>, Date.IntervalFormatStyle)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (Int, String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle)(319, &lazy cache variable for type metadata for (Int, String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle), type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        if (v3 <= 0x3F)
        {
          type metadata accessor for (Int, String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle)(319, &lazy cache variable for type metadata for (Double, String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle), type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
          if (v4 <= 0x3F)
          {
            type metadata accessor for (NSDecimal, String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle)();
            if (v5 <= 0x3F)
            {
              type metadata accessor for ([LocalizedStringResource], ListFormatStyle<StringStyle, [String]>)();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for (AttributedString, options: UInt)()
{
  if (!lazy cache variable for type metadata for (AttributedString, options: UInt))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttributedString, options: UInt));
    }
  }
}

void type metadata accessor for (Range<Date>, Date.IntervalFormatStyle)()
{
  if (!lazy cache variable for type metadata for (Range<Date>, Date.IntervalFormatStyle))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation4DateVGMd);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Range<Date>, Date.IntervalFormatStyle));
    }
  }
}

void type metadata accessor for IntegerFormatStyle<Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t type metadata completion function for FloatingPointFormatStyle.Currency()
{
  result = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.Format()
{
  type metadata accessor for IntegerFormatStyle<Int>(319, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for FloatingPointFormatStyle);
  if (v0 <= 0x3F)
  {
    type metadata accessor for IntegerFormatStyle<Int>(319, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>.Currency, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for FloatingPointFormatStyle.Currency);
    if (v1 <= 0x3F)
    {
      type metadata accessor for IntegerFormatStyle<Int>(319, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>.Percent, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for FloatingPointFormatStyle.Percent);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (NSDecimal, String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle)()
{
  if (!lazy cache variable for type metadata for (NSDecimal, String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle))
  {
    type metadata accessor for NSDecimal(255);
    type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NSDecimal, String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle));
    }
  }
}

uint64_t type metadata completion function for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format()
{
  result = type metadata accessor for NSDecimal.FormatStyle(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NSDecimal.FormatStyle.Currency(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for NSDecimal.FormatStyle.Percent(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

NSString *_NSFullMethodName(objc_class *a1, const char *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v10[0] = 0;
  if (v4 == a1)
  {
    v5 = 43;
  }

  else
  {
    v5 = 45;
  }

  if (v4)
  {
    Name = class_getName(v4);
  }

  else
  {
    Name = "nil";
  }

  v7 = sel_getName(a2);
  asprintf(v10, "%c[%s %s]", v5, Name, v7);
  if (!v10[0])
  {
    return 0;
  }

  v8 = [NSString stringWithUTF8String:?];
  free(v10[0]);
  return v8;
}

void type metadata accessor for (Date, String.LocalizationValue.FormatArgument.DateArgumentFormatStyle)()
{
  if (!lazy cache variable for type metadata for (Date, String.LocalizationValue.FormatArgument.DateArgumentFormatStyle))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Date, String.LocalizationValue.FormatArgument.DateArgumentFormatStyle));
    }
  }
}

void type metadata accessor for (Int, String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t type metadata completion function for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format()
{
  type metadata accessor for IntegerFormatStyle<Int>(319, &lazy cache variable for type metadata for IntegerFormatStyle<Int>, lazy protocol witness table accessor for type Int and conformance Int, MEMORY[0x1E69E6530], type metadata accessor for IntegerFormatStyle);
  if (v0 <= 0x3F)
  {
    type metadata accessor for IntegerFormatStyle<Int>(319, &lazy cache variable for type metadata for IntegerFormatStyle<Int>.Currency, lazy protocol witness table accessor for type Int and conformance Int, MEMORY[0x1E69E6530], type metadata accessor for IntegerFormatStyle.Currency);
    if (v1 <= 0x3F)
    {
      type metadata accessor for IntegerFormatStyle<Int>(319, &lazy cache variable for type metadata for IntegerFormatStyle<Int>.Percent, lazy protocol witness table accessor for type Int and conformance Int, MEMORY[0x1E69E6530], type metadata accessor for IntegerFormatStyle.Percent);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CurrencyFormatStyleConfiguration.Collection()
{
  type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.Precision?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.Grouping?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for CurrencyFormatStyleConfiguration.SignDisplayStrategy?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for FloatingPointRoundingRule?();
            if (v5 <= 0x3F)
            {
              type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.RoundingIncrement?);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Double?(319, &lazy cache variable for type metadata for NumberFormatStyleConfiguration.Notation?);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for NSDecimal.FormatStyle()
{
  result = type metadata accessor for NumberFormatStyleConfiguration.Collection(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSRunLoop.SchedulerTimeType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1865CD090](*&v2);
  return Hasher._finalize()();
}

uint64_t type metadata completion function for NSDecimal.FormatStyle.Currency()
{
  result = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for ([LocalizedStringResource], ListFormatStyle<StringStyle, [String]>)()
{
  if (!lazy cache variable for type metadata for ([LocalizedStringResource], ListFormatStyle<StringStyle, [String]>))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation23LocalizedStringResourceVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation15ListFormatStyleVyAA06StringD0VSaySSGGMd);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for ([LocalizedStringResource], ListFormatStyle<StringStyle, [String]>));
    }
  }
}