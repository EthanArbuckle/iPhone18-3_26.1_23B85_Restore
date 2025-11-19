uint64_t key path setter for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.consolidationIdentifier : LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 160);

  return v4(v2, v3);
}

uint64_t key path getter for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.segmentNumber : LiteMessageSegmentStoreSchemaV1.LiteMessageSegment@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

void *LiteMessageSegmentStore.messageSegments(for:)(unint64_t a1, unint64_t a2)
{
  v75 = a1;
  v3 = type metadata accessor for Logger();
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = *(v77 + 64);
  v5 = __chkstk_darwin(v3);
  v72 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v74 = &v65 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v65 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s9SwiftData15FetchDescriptorVy12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
  v12 = *(v76 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v76);
  v15 = &v65 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v65 - v19);
  v21 = LiteMessageSegmentStore.context.getter();
  if (v21)
  {
    v22 = v21;
    v71 = v12;
    v68 = &v65;
    __chkstk_darwin(v21);
    *(&v65 - 2) = v75;
    *(&v65 - 1) = a2;
    v82[2] = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment();
    Predicate.init(_:)();
    v23 = *(v17 + 16);
    v80 = v20;
    v23(v11, v20, v16);
    v69 = v17;
    v70 = v16;
    (*(v17 + 56))(v11, 0, 1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGGMd, &_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVy12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGGMR);
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14SortDescriptorVy12iMessageLite0eD20SegmentStoreSchemaV1O0edF0CGMd, &_s10Foundation14SortDescriptorVy12iMessageLite0eD20SegmentStoreSchemaV1O0edF0CGMR) - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_53390;
    swift_getKeyPath();
    SortDescriptor.init<A>(_:order:)();
    lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
    FetchDescriptor.init(predicate:sortBy:)();
    v81 = v15;
    v67 = v22;
    v27 = v79;
    v28 = dispatch thunk of ModelContext.fetch<A>(_:)();
    if (v27)
    {
      v30 = v77;
      v29 = v78;
      v31 = v72;
      v32 = v76;
LABEL_24:
      v58 = Logger.liteSegmentStore.unsafeMutableAddressor();
      (*(v30 + 16))(v31, v58, v29);
      swift_errorRetain();
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v61 = 138412290;
        swift_errorRetain();
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v61 + 4) = v63;
        *v62 = v63;
        _os_log_impl(&dword_0, v59, v60, "Failed to fetch segments: %@", v61, 0xCu);
        outlined destroy of TaskPriority?(v62, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      }

      (*(v30 + 8))(v31, v29);
      lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
      swift_allocError();
      *v64 = 3;
      swift_willThrow();

      (*(v71 + 8))(v81, v32);
      return (*(v69 + 8))(v80, v70);
    }

    else
    {
      v35 = v28;
      v36 = Logger.liteSegmentStore.unsafeMutableAddressor();
      v38 = v77;
      v37 = v78;
      v39 = v74;
      (*(v77 + 16))(v74, v36, v78);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();

      LODWORD(v66) = v41;
      v42 = os_log_type_enabled(v40, v41);
      v43 = v76;
      v79 = v35;
      v73 = v35 >> 62;
      if (!v42)
      {

        (*(v38 + 8))(v39, v37);
        goto LABEL_10;
      }

      v44 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v82[0] = v39;
      *v44 = 134218242;
      if (v35 >> 62)
      {
        goto LABEL_32;
      }

      v45 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
LABEL_8:
      v46 = v75;
      *(v44 + 4) = v45;

      *(v44 + 12) = 2080;
      *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, a2, v82);
      _os_log_impl(&dword_0, v40, v66, "Fetched %ld segments of %s", v44, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v39);

      (*(v77 + 8))(v74, v78);
LABEL_10:
      v40 = v70;
      a2 = v71;
      v47 = v69;
      if (v73)
      {
        while (1)
        {
          v44 = v79;
          v48 = _CocoaArrayWrapper.endIndex.getter();
          if (!v48)
          {
            break;
          }

LABEL_12:
          v82[0] = &_swiftEmptyArrayStorage;
          v40 = v82;
          specialized ContiguousArray.reserveCapacity(_:)();
          if (v48 < 0)
          {
            __break(1u);
LABEL_32:
            v45 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_8;
          }

          v74 = type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
          v39 = type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSOffGridEncryptedMessage, IDSOffGridEncryptedMessage_ptr);
          v47 = 0;
          v49 = v44;
          v75 = v44 & 0xC000000000000001;
          v66 = v44 & 0xFFFFFFFFFFFFFF8;
          v73 = v48;
          while (1)
          {
            a2 = v47 + 1;
            if (__OFADD__(v47, 1))
            {
              break;
            }

            if (v75)
            {
              v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v47 >= *(v66 + 16))
              {
                goto LABEL_28;
              }

              v50 = *(v49 + 8 * v47 + 32);
            }

            v51 = (*(*v50 + 296))();
            v53 = v52;
            v43 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
            outlined consume of Data._Representation(v51, v53);
            if (!v43)
            {

              v30 = v77;
              v29 = v78;
              lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
              swift_allocError();
              *v57 = 4;
              swift_willThrow();

              v32 = v76;
              v31 = v72;
              goto LABEL_24;
            }

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v54 = *(v82[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            ++v47;
            v55 = a2 == v73;
            v40 = v80;
            v56 = v81;
            v49 = v79;
            if (v55)
            {

              (*(v71 + 8))(v56, v76);
              (*(v69 + 8))(v40, v70);
              return v82[0];
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
        }
      }

      else
      {
        v44 = v79;
        v48 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
        if (v48)
        {
          goto LABEL_12;
        }
      }

      (*(a2 + 8))(v81, v43);
      (*(v47 + 8))(v80, v40);
      return &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
    swift_allocError();
    *v33 = 0;
    return swift_willThrow();
  }
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LiteMessageSegmentStore.countMessageSegments(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = type metadata accessor for Logger();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  __chkstk_darwin(v3);
  v35 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s9SwiftData15FetchDescriptorVy12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  __chkstk_darwin(v10);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v31 - v17;
  v19 = LiteMessageSegmentStore.context.getter();
  if (v19)
  {
    v31[1] = v31;
    __chkstk_darwin(v19);
    v31[-2] = countAndFlagsBits;
    v31[-1] = object;
    v38 = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment();
    Predicate.init(_:)();
    (*(v15 + 16))(v9, v18, v14);
    (*(v15 + 56))(v9, 0, 1, v14);
    lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
    FetchDescriptor.init(predicate:sortBy:)();
    v20 = v32;
    v21 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
    if (v20)
    {
      v22 = Logger.liteSegmentStore.unsafeMutableAddressor();
      (*(v36 + 16))(v35, v22, v37);
      swift_errorRetain();
      object = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(object, v23))
      {
        v24 = swift_slowAlloc();
        v32 = v14;
        v25 = v24;
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        swift_errorRetain();
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v27;
        *v26 = v27;
        _os_log_impl(&dword_0, object, v23, "Failed to fetch count: %@", v25, 0xCu);
        outlined destroy of TaskPriority?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        v14 = v32;
      }

      (*(v36 + 8))(v35, v37);
      lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
      swift_allocError();
      *v28 = 6;
      swift_willThrow();

      (*(v33 + 8))(v13, v34);
      (*(v15 + 8))(v18, v14);
    }

    else
    {
      object = v21;

      (*(v33 + 8))(v13, v34);
      (*(v15 + 8))(v18, v14);
    }
  }

  else
  {
    lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
  }

  return object;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LiteMessageSegmentStore.deleteMessageSegments(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = type metadata accessor for Logger();
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  v18 = LiteMessageSegmentStore.context.getter();
  if (v18)
  {
    v49 = &v44;
    v50 = v3;
    v19 = __chkstk_darwin(v18);
    *(&v44 - 2) = countAndFlagsBits;
    *(&v44 - 1) = object;
    v45 = object;
    v20 = v19;
    v53[2] = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment();
    Predicate.init(_:)();
    (*(v14 + 16))(v12, v17, v13);
    v21 = *(v14 + 56);
    v47 = v13;
    v21(v12, 0, 1, v13);
    lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
    v48 = v20;
    v22 = v51;
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    if (v22)
    {
      outlined destroy of TaskPriority?(v12, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
      v23 = Logger.liteSegmentStore.unsafeMutableAddressor();
      v24 = v52;
      v25 = v50;
      (*(v52 + 16))(v7, v23, v50);
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        swift_errorRetain();
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v30;
        *v29 = v30;
        _os_log_impl(&dword_0, v26, v27, "Failed to delete segments: %@", v28, 0xCu);
        outlined destroy of TaskPriority?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v25 = v50;

        v24 = v52;
      }

      (*(v24 + 8))(v7, v25);
      lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
      swift_allocError();
      *v31 = 3;
      swift_willThrow();

      (*(v14 + 8))(v17, v47);
    }

    else
    {
      v44 = countAndFlagsBits;
      outlined destroy of TaskPriority?(v12, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
      v33 = Logger.liteSegmentStore.unsafeMutableAddressor();
      v34 = v52;
      v35 = v46;
      v36 = v50;
      (*(v52 + 16))(v46, v33, v50);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      v51 = v37;
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = v36;
        v41 = swift_slowAlloc();
        v53[0] = v41;
        *v39 = 136315138;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v53);
        v42 = v38;
        v43 = v51;
        _os_log_impl(&dword_0, v51, v42, "Deleted segments of %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);

        (*(v34 + 8))(v35, v40);
      }

      else
      {

        (*(v34 + 8))(v35, v36);
      }

      (*(v14 + 8))(v17, v47);
    }
  }

  else
  {
    lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
  }
}

uint64_t closure #4 in LiteMessageSegmentStore.messageSegments(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SSGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMR);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v24 - v19;
  v21 = *a1;
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v12 + 8))(v15, v11);
  v28 = v24;
  v29 = v25;
  static PredicateExpressions.build_Arg<A>(_:)();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSSGAC5ValueVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSSGAC5ValueVy_SSGGMR);
  a4[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_0(a4);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMR);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMR);
  v22 = v26;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v27 + 8))(v10, v22);
  return (*(v17 + 8))(v20, v16);
}

Swift::Void __swiftcall LiteMessageSegmentStore.deleteAbandonedMessageSegments()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v64 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v7 = &v55[-v6];
  __chkstk_darwin(v5);
  v63 = &v55[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v55[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v55[-v16];
  v18 = type metadata accessor for Date();
  v65 = *(v18 - 8);
  v66 = v18;
  v19 = *(v65 + 64);
  v20 = __chkstk_darwin(v18);
  v58 = &v55[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v23 = &v55[-v22];
  v24 = LiteMessageSegmentStore.context.getter();
  if (v24)
  {
    v25 = v24;
    v67 = v1;
    v68 = v0;
    v26 = Date.init(timeIntervalSinceNow:)();
    v59 = v55;
    __chkstk_darwin(v26);
    *&v55[-16] = v23;
    v69[2] = type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment();
    Predicate.init(_:)();
    v27 = *(v14 + 16);
    v60 = v17;
    v27(v12, v17, v13);
    v61 = v14;
    v62 = v13;
    (*(v14 + 56))(v12, 0, 1, v13);
    lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment, type metadata accessor for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    outlined destroy of TaskPriority?(v12, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMd, &_s10Foundation9PredicateVy12iMessageLite0dC20SegmentStoreSchemaV1O0dcE0C_QPGSgMR);
    v35 = Logger.liteSegmentStore.unsafeMutableAddressor();
    v36 = v67;
    v37 = v63;
    (*(v67 + 16))(v63, v35, v68);
    v38 = v65;
    v39 = v66;
    v40 = v58;
    (*(v65 + 16))(v58, v23, v66);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v23;
    if (v43)
    {
      v45 = swift_slowAlloc();
      v64 = v25;
      v46 = v45;
      v57 = swift_slowAlloc();
      v69[0] = v57;
      *v46 = 136315138;
      lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
      v56 = v42;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v50 = v40;
      v51 = *(v38 + 8);
      v65 = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v51(v50, v39);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v69);

      *(v46 + 4) = v52;
      _os_log_impl(&dword_0, v41, v56, "Deleted segments older than %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);

      (*(v36 + 8))(v63, v68);
      (*(v61 + 8))(v60, v62);
      v51(v44, v39);
    }

    else
    {

      v53 = v40;
      v54 = *(v38 + 8);
      v54(v53, v39);
      (*(v36 + 8))(v37, v68);
      (*(v61 + 8))(v60, v62);
      v54(v23, v39);
    }
  }

  else
  {
    v28 = Logger.liteSegmentStore.unsafeMutableAddressor();
    (*(v1 + 16))(v7, v28, v0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      lazy protocol witness table accessor for type LiteMessageSegmentStoreError and conformance LiteMessageSegmentStoreError();
      swift_allocError();
      *v33 = 0;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_0, v29, v30, "Failed to delete abandoned message segments: %@", v31, 0xCu);
      outlined destroy of TaskPriority?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    (*(v1 + 8))(v7, v0);
  }
}

uint64_t closure #4 in LiteMessageSegmentStore.deleteAbandonedMessageSegments()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29[1] = a2;
  v31 = a3;
  v30 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v29[0] = *(v30 - 8);
  v4 = *(v29[0] + 64);
  __chkstk_darwin(v30);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMR);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGAA4DateVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGAA4DateVGMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v29 - v20;
  v22 = *a1;
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v13 + 8))(v16, v12);
  type metadata accessor for Date();
  static PredicateExpressions.build_Arg<A>(_:)();
  v23 = v29[0];
  v24 = v30;
  (*(v29[0] + 104))(v6, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v30);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10ComparisonVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGAA4DateVGAC5ValueVy_AQGGMd, &_s10Foundation20PredicateExpressionsO10ComparisonVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGAA4DateVGAC5ValueVy_AQGGMR);
  v26 = v31;
  v31[3] = v25;
  v26[4] = lazy protocol witness table accessor for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>();
  __swift_allocate_boxed_opaque_existential_0(v26);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Date> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGAA4DateVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGAA4DateVGMR);
  lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Date> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMR);
  lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  v27 = v32;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v23 + 8))(v6, v24);
  (*(v33 + 8))(v11, v27);
  return (*(v18 + 8))(v21, v17);
}

uint64_t key path setter for LiteMessageSegmentStoreSchemaV1.LiteMessageSegment.dateReceived : LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 256))(v7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LiteMessageSegmentStore.deleteStore()()
{
  v94 = type metadata accessor for Logger();
  v83 = *(v94 - 8);
  v1 = *(v83 + 64);
  v2 = __chkstk_darwin(v94);
  v93 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v81[0] = v81 - v4;
  v5 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for URL();
  v10 = *(v86 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v86);
  v82 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v81 - v15;
  __chkstk_darwin(v14);
  v18 = v81 - v17;
  v19 = *(v0 + 112);
  *(v0 + 112) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_53C40;
  v20 = IMSMSDirectoryURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v95 = 0x8000000000056340;
  v97 = 0xD000000000000013;
  v98 = 0x8000000000056340;
  LODWORD(v92) = enum case for URL.DirectoryHint.inferFromPath(_:);
  v21 = v6[13];
  v90 = v6 + 13;
  v91 = v21;
  v84 = v5;
  (v21)(v9);
  v89 = lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  v22 = v6[1];
  v87 = v6 + 1;
  v88 = v22;
  v22(v9, v5);
  v23 = *(v10 + 8);
  v24 = v86;
  v23(v16, v86);
  v25 = URL.path.getter();
  v27 = v26;
  v28 = v18;
  v29 = v24;
  v23(v28, v24);
  v30 = inited;
  v31 = inited;
  *(inited + 32) = v25;
  v81[1] = v31 + 32;
  *(v30 + 40) = v27;
  v32 = IMSMSDirectoryURL();
  v33 = v82;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v97 = 0xD000000000000013;
  v98 = v95;
  v34 = v84;
  (v91)(v9, v92, v84);
  URL.appending<A>(path:directoryHint:)();
  v88(v9, v34);
  v23(v33, v29);
  v35 = URL.path.getter();
  v37 = v36;
  v23(v16, v29);
  v97 = v35;
  v98 = v37;

  v38._countAndFlagsBits = 1835561773;
  v38._object = 0xE400000000000000;
  String.append(_:)(v38);

  v39 = v98;
  v40 = inited;
  *(inited + 48) = v97;
  v40[7] = v39;
  v41 = IMSMSDirectoryURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v97 = 0xD000000000000013;
  v98 = v95;
  v42 = v84;
  (v91)(v9, v92, v84);
  URL.appending<A>(path:directoryHint:)();
  v88(v9, v42);
  v43 = v86;
  v23(v33, v86);
  v44 = URL.path.getter();
  v46 = v45;
  v47 = v16;
  v48 = v40;
  v23(v47, v43);
  v97 = v44;
  v98 = v46;

  v49._countAndFlagsBits = 1818326829;
  v49._object = 0xE400000000000000;
  String.append(_:)(v49);

  v50 = v98;
  v40[8] = v97;
  v40[9] = v50;
  v95 = objc_opt_self();
  v51 = 0;
  v52 = (v83 + 16);
  v53 = (v83 + 8);
  *&v54 = 138412290;
  v92 = v54;
  v91 = (v83 + 16);
  while (1)
  {
    v57 = v48[v51 + 4];
    v56 = v48[v51 + 5];

    v58 = [v95 defaultManager];
    v59 = String._bridgeToObjectiveC()();

    v97 = 0;
    v60 = [v58 removeItemAtPath:v59 error:&v97];

    if (!v60)
    {
      break;
    }

    v55 = v97;
LABEL_3:
    v51 += 2;
    if (v51 == 6)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      return;
    }
  }

  v61 = v97;
  v62 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v97 = v62;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSError, NSError_ptr);
  if (!swift_dynamicCast())
  {

    goto LABEL_16;
  }

  v63 = v96;
  if ([v96 code] == &dword_4)
  {
    v64 = Logger.liteSegmentStore.unsafeMutableAddressor();
    (*v52)(v93, v64, v94);
    v65 = v63;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = v53;
      v70 = v48;
      v71 = swift_slowAlloc();
      *v68 = v92;
      *(v68 + 4) = v65;
      *v71 = v65;
      v72 = v65;
      _os_log_impl(&dword_0, v66, v67, "File not found, ignoring error: %@", v68, 0xCu);
      outlined destroy of TaskPriority?(v71, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v48 = v70;
      v53 = v69;
      v52 = v91;
    }

    else
    {
      v72 = v66;
      v66 = v65;
    }

    (*v53)(v93, v94);

    goto LABEL_3;
  }

  v73 = Logger.liteSegmentStore.unsafeMutableAddressor();
  v74 = v81[0];
  (*v52)(v81[0], v73, v94);
  v75 = v63;
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v78 = v92;
    *(v78 + 4) = v75;
    *v79 = v75;
    v80 = v75;
    _os_log_impl(&dword_0, v76, v77, "Error removing file: %@", v78, 0xCu);
    outlined destroy of TaskPriority?(v79, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  (*v53)(v74, v94);
  swift_willThrow();
LABEL_16:
}

uint64_t getEnumTagSinglePayload for LiteMessageSegmentStoreError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageSegmentStoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO10ComparisonVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGAA4DateVGAC5ValueVy_AQGGMd, &_s10Foundation20PredicateExpressionsO10ComparisonVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGAA4DateVGAC5ValueVy_AQGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Date> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Date> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGAA4DateVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGAA4DateVGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Date> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Comparison<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Date>, PredicateExpressions.Value<Date>> and conformance <> PredicateExpressions.Comparison<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Date> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Date> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Date> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DateVGMR);
    lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
    lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Date> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1.LiteMessageSegment and conformance LiteMessageSegmentStoreSchemaV1.LiteMessageSegment(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSSGAC5ValueVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSSGAC5ValueVy_SSGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Date> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSSGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Date> and conformance <> PredicateExpressions.KeyPath<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_12iMessageLite0fE20SegmentStoreSchemaV1O0feG0CGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SSGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String>, PredicateExpressions.Value<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int>, PredicateExpressions.Value<Int>>> and conformance <> PredicateExpressions.Conjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String>, PredicateExpressions.Value<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int>, PredicateExpressions.Value<Int>>> and conformance <> PredicateExpressions.Conjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String>, PredicateExpressions.Value<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int>, PredicateExpressions.Value<Int>>> and conformance <> PredicateExpressions.Conjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0jI20SegmentStoreSchemaV1O0jiK0CGSSGAC5ValueVy_SSGGAGy_AIy_AQSiGATy_SiGGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0jI20SegmentStoreSchemaV1O0jiK0CGSSGAC5ValueVy_SSGGAGy_AIy_AQSiGATy_SiGGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int>, PredicateExpressions.Value<Int>> and conformance <> PredicateExpressions.Equal<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, String>, PredicateExpressions.Value<String>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int>, PredicateExpressions.Value<Int>>> and conformance <> PredicateExpressions.Conjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int>, PredicateExpressions.Value<Int>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int>, PredicateExpressions.Value<Int>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int>, PredicateExpressions.Value<Int>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSiGAC5ValueVy_SiGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_12iMessageLite0iH20SegmentStoreSchemaV1O0ihJ0CGSiGAC5ValueVy_SiGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Date> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSiGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_12iMessageLite0hG20SegmentStoreSchemaV1O0hgI0CGSiGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Int> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment>, Int>, PredicateExpressions.Value<Int>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Int> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Int> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Int> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SiGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Int> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PredicateExpressions.Variable<LiteMessageSegmentStoreSchemaV1.LiteMessageSegment> and conformance PredicateExpressions.Variable<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t specialized static LiteMessageSegmentStore.makePersistentContainer()()
{
  v29 = type metadata accessor for Logger();
  v28 = *(v29 - 8);
  v0 = *(v28 + 64);
  __chkstk_darwin(v29);
  v27[1] = v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  *&v32 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for URL();
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v31);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v34 = type metadata accessor for ModelConfiguration();
  v30 = *(v34 - 8);
  v15 = v30;
  v16 = *(v30 + 64);
  __chkstk_darwin(v34);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1 and conformance LiteMessageSegmentStoreSchemaV1();
  v33 = Schema.__allocating_init(versionedSchema:)();
  v19 = IMSMSDirectoryURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = 0xD000000000000013;
  v36 = 0x8000000000056340;
  (*(v6 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v14, v31);
  static ModelConfiguration.CloudKitDatabase.none.getter();
  ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
  type metadata accessor for ModelContainer();
  lazy protocol witness table accessor for type LiteMessageSegmentStoreMigrationPlan and conformance LiteMessageSegmentStoreMigrationPlan();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData18ModelConfigurationVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData18ModelConfigurationVGMR);
  v20 = v15;
  v21 = v30;
  v22 = *(v20 + 72);
  v23 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v24 = swift_allocObject();
  v32 = xmmword_53390;
  *(v24 + 16) = xmmword_53390;
  (*(v21 + 16))(v24 + v23, v18, v34);

  v25 = ModelContainer.__allocating_init(for:migrationPlan:configurations:)();
  (*(v21 + 8))(v18, v34);

  return v25;
}

unint64_t lazy protocol witness table accessor for type LiteMessageSegmentStoreSchemaV1 and conformance LiteMessageSegmentStoreSchemaV1()
{
  result = lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1 and conformance LiteMessageSegmentStoreSchemaV1;
  if (!lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1 and conformance LiteMessageSegmentStoreSchemaV1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageSegmentStoreSchemaV1 and conformance LiteMessageSegmentStoreSchemaV1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LiteMessageSegmentStoreMigrationPlan and conformance LiteMessageSegmentStoreMigrationPlan()
{
  result = lazy protocol witness table cache variable for type LiteMessageSegmentStoreMigrationPlan and conformance LiteMessageSegmentStoreMigrationPlan;
  if (!lazy protocol witness table cache variable for type LiteMessageSegmentStoreMigrationPlan and conformance LiteMessageSegmentStoreMigrationPlan)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageSegmentStoreMigrationPlan and conformance LiteMessageSegmentStoreMigrationPlan);
  }

  return result;
}

uint64_t outlined init with copy of (AnyHashable, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Bool __swiftcall LiteMessageServiceSession.hasBlockedFromHandleID(_:)(Swift::String a1)
{
  v1 = String._bridgeToObjectiveC()();
  CMFItemFromString = CreateCMFItemFromString();

  if (CMFItemFromString)
  {
    IsItemBlocked = CMFBlockListIsItemBlocked();
    swift_unknownObjectRelease();
    return IsItemBlocked != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LiteMessage.header.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *v0;

  return v3;
}

uint64_t outlined init with copy of LiteMessageContent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t LiteMessage.append(to:)(uint64_t a1)
{
  v7 = *v1;
  v8 = *(v1 + 8);
  result = protocol witness for BitPackable.append(to:) in conformance LiteMessageHeader(a1);
  if (!v2)
  {
    v5 = *(v1 + 6);
    v6 = *(v1 + 7);
    __swift_project_boxed_opaque_existential_0(v1 + 3, v5);
    return (*(*(v6 + 8) + 8))(a1, v5);
  }

  return result;
}

uint64_t LiteMessage.init(header:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return outlined init with take of LiteMessageContent(a4, a5 + 24);
}

uint64_t outlined init with take of LiteMessageContent(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for LiteMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LiteMessageServiceSession.calculateReachability(with:responseHandler:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v2;
  v11 = a1;
  swift_unknownObjectRetain();
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  v13[5] = v11;
  v13[6] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.calculateReachability(with:responseHandler:), v13);
}

uint64_t closure #1 in LiteMessageServiceSession.calculateReachability(with:responseHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v8 = type metadata accessor for Logger();
  v6[11] = v8;
  v9 = *(v8 - 8);
  v6[12] = v9;
  v10 = *(v9 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v6[16] = v11;
  *v11 = v6;
  v11[1] = closure #1 in LiteMessageServiceSession.calculateReachability(with:responseHandler:);

  return LiteMessageServiceSession.calculateReachability(with:)(a5);
}

uint64_t closure #1 in LiteMessageServiceSession.calculateReachability(with:responseHandler:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 128);
  v7 = *v2;
  v5[17] = v1;

  v8 = v5[15];
  v9 = v5[14];
  if (v3)
  {
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v13 = closure #1 in LiteMessageServiceSession.calculateReachability(with:responseHandler:);
  }

  else
  {
    v5[18] = a1;
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v14;
    v13 = closure #1 in LiteMessageServiceSession.calculateReachability(with:responseHandler:);
  }

  return _swift_task_switch(v13, v10, v12);
}

uint64_t closure #1 in LiteMessageServiceSession.calculateReachability(with:responseHandler:)()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[9];
  v3 = v0[10];

  [v3 reachabilityRequest:v4 updatedWithResult:v1];

  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

{
  v36 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);

  v7 = Logger.availability.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v7, v5);
  v8 = v6;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 136);
    v32 = *(v0 + 96);
    v33 = *(v0 + 88);
    v34 = *(v0 + 104);
    v12 = *(v0 + 72);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v13 = 138412546;
    *(v13 + 4) = v12;
    *v14 = v12;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);
    v18 = *(v0 + 32);
    v19 = v12;
    v20 = Error.localizedDescription.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v35);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_0, v9, v10, "Failed to determinate reachability for: %@ with error: %s", v13, 0x16u);
    outlined destroy of TaskPriority?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v32 + 8))(v34, v33);
  }

  else
  {
    v24 = *(v0 + 96);
    v23 = *(v0 + 104);
    v25 = *(v0 + 88);

    (*(v24 + 8))(v23, v25);
  }

  v26 = *(v0 + 136);
  v27 = *(v0 + 72);
  v28 = *(v0 + 80);
  *(v0 + 40) = *(v0 + 64);
  *(v0 + 48) = LiteMessageServiceSession;
  objc_msgSendSuper2((v0 + 40), "calculateReachabilityWithRequest:responseHandler:", v27, v28);

  v29 = *(v0 + 104);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.calculateReachability(with:responseHandler:)()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in LiteMessageServiceSession.donateHandlesForKeyExchange();

  return closure #1 in LiteMessageServiceSession.calculateReachability(with:responseHandler:)(v5, v6, v7, v2, v3, v4);
}

uint64_t LiteMessageServiceSession.calculateReachability(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v7;
  v2[11] = v6;

  return _swift_task_switch(LiteMessageServiceSession.calculateReachability(with:), v7, v6);
}

{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = v4[10];
    v8 = v4[11];
    v9 = LiteMessageServiceSession.calculateReachability(with:);
  }

  else
  {
    v10 = v4[13];

    v4[20] = a1;
    v7 = v4[10];
    v8 = v4[11];
    v9 = LiteMessageServiceSession.calculateReachability(with:);
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t LiteMessageServiceSession.calculateReachability(with:)()
{
  v73 = v0;
  v1 = [*(v0 + 16) handleIDs];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);

  if (v3 == 1)
  {
    v4 = [*(v0 + 16) handleIDs];
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5[2])
    {
      v6 = *(v0 + 56);
      v7 = *(v0 + 32);
      v8 = *(v0 + 40);
      v10 = *(v0 + 16);
      v9 = *(v0 + 24);
      v11 = v5[4];
      *(v0 + 96) = v11;
      v12 = v5[5];
      *(v0 + 104) = v12;

      v71 = Logger.availability.unsafeMutableAddressor();
      v70 = *(v8 + 16);
      v70(v6);
      v13 = v9;
      v14 = v10;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();

      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 56);
      v19 = *(v0 + 32);
      v20 = *(v0 + 40);
      v21 = *(v0 + 24);
      if (v17)
      {
        v68 = *(v0 + 32);
        v22 = *(v0 + 16);
        v69 = v12;
        v23 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v72 = v66;
        *v23 = 136315650;
        v24 = LiteMessageServiceSession.isLiteMessageActiveOverSatellite.getter();
        v25 = (v24 & 1) == 0;
        if (v24)
        {
          v26 = 4605519;
        }

        else
        {
          v26 = 20047;
        }

        v67 = v18;
        if (v25)
        {
          v27 = 0xE200000000000000;
        }

        else
        {
          v27 = 0xE300000000000000;
        }

        v28 = v11;
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v72);

        *(v23 + 4) = v29;
        v11 = v28;
        *(v23 + 12) = 2112;
        *(v23 + 14) = v22;
        *v65 = v22;
        *(v23 + 22) = 1024;
        v30 = v22;
        v31 = LiteMessageServiceSession.isLiteMessageActiveOverSatellite.getter();

        *(v23 + 24) = v31 & 1;
        _os_log_impl(&dword_0, v15, v16, "Calculating %s grid reachability for request: %@, isLiteMessageActiveOverSatellite: %{BOOL}d", v23, 0x1Cu);
        outlined destroy of TaskPriority?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_0(v66);

        v12 = v69;

        v32 = *(v20 + 8);
        v32(v67, v68);
      }

      else
      {

        v32 = *(v20 + 8);
        v32(v18, v19);
      }

      v39 = *(v0 + 24);
      if (LiteMessageServiceSession.isLiteMessageActiveOverSatellite.getter())
      {
        v40 = *(v0 + 64);
        *(v0 + 112) = static MainActor.shared.getter();
        v41 = swift_task_alloc();
        *(v0 + 120) = v41;
        *v41 = v0;
        v41[1] = LiteMessageServiceSession.calculateReachability(with:);
        v42 = *(v0 + 16);
        v43 = *(v0 + 24);

        return LiteMessageServiceSession.isAvailableForLiteMessage(for:token:with:)(v11, v12, 0, 0xF000000000000000, v42);
      }

      else
      {
        v44 = [*(v0 + 24) networkMonitor];
        if (v44)
        {
          v45 = v44;
          v46 = [v44 immediatelyReachable];

          if (v46)
          {
            v47 = swift_task_alloc();
            *(v0 + 144) = v47;
            *v47 = v0;
            v47[1] = LiteMessageServiceSession.calculateReachability(with:);
            v48 = *(v0 + 16);
            v49 = *(v0 + 24);

            return LiteMessageServiceSession.calculateOnGridReachability(for:with:)(v11, v12, v48);
          }

          else
          {
            v50 = v11;
            v51 = *(v0 + 72);
            v52 = *(v0 + 48);
            v53 = *(v0 + 32);

            (v70)(v52, v71, v53);
            v54 = Logger.logObject.getter();
            v55 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              *v56 = 0;
              _os_log_impl(&dword_0, v54, v55, "No network available", v56, 2u);
            }

            v58 = *(v0 + 40);
            v57 = *(v0 + 48);
            v59 = *(v0 + 24);
            v60 = *(v0 + 32);

            v32(v57, v60);
            v61 = LiteMessageServiceSession.result(for:reachable:)(v50, v12, 0);

            v63 = *(v0 + 48);
            v62 = *(v0 + 56);

            v64 = *(v0 + 8);

            return v64(v61);
          }
        }

        else
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }
      }
    }
  }

  v33 = *(v0 + 72);

  lazy protocol witness table accessor for type LiteMessageReachabilityError and conformance LiteMessageReachabilityError();
  swift_allocError();
  *v34 = 0;
  *(v34 + 8) = 0;
  *(v34 + 16) = 6;
  swift_willThrow();
  v36 = *(v0 + 48);
  v35 = *(v0 + 56);

  v37 = *(v0 + 8);

  return v37();
}

{
  v1 = *(v0 + 168);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 24);

  *(v0 + 136) = LiteMessageServiceSession.result(for:reachable:)(v4, v3, v1);

  v6 = *(v0 + 80);
  v7 = *(v0 + 88);

  return _swift_task_switch(LiteMessageServiceSession.calculateReachability(with:), v6, v7);
}

{
  v1 = v0[9];

  v2 = v0[17];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5(v2);
}

{
  v1 = v0[14];

  v2 = v0[10];
  v3 = v0[11];

  return _swift_task_switch(LiteMessageServiceSession.calculateReachability(with:), v2, v3);
}

{
  v1 = v0[9];

  v2 = v0[16];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[9];

  v2 = v0[20];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5(v2);
}

{
  v1 = v0[13];
  v2 = v0[9];

  v3 = v0[19];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t LiteMessageServiceSession.calculateReachability(with:)(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 120);
  v7 = *v2;
  *(v5 + 128) = v1;

  v8 = *(v5 + 112);
  if (v3)
  {
    v9 = *(v5 + 104);
    v10 = *(v5 + 64);

    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    v14 = LiteMessageServiceSession.calculateReachability(with:);
  }

  else
  {
    v15 = *(v5 + 64);
    *(v5 + 168) = a1 & 1;
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v16;
    v14 = LiteMessageServiceSession.calculateReachability(with:);
  }

  return _swift_task_switch(v14, v11, v13);
}

uint64_t LiteMessageServiceSession.networkDataAvailable.getter()
{
  v1 = [v0 networkMonitor];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 immediatelyReachable];

    return v3;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LiteMessageReachabilityError and conformance LiteMessageReachabilityError()
{
  result = lazy protocol witness table cache variable for type LiteMessageReachabilityError and conformance LiteMessageReachabilityError;
  if (!lazy protocol witness table cache variable for type LiteMessageReachabilityError and conformance LiteMessageReachabilityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageReachabilityError and conformance LiteMessageReachabilityError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12iMessageLite0bA17ReachabilityErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t getEnumTagSinglePayload for LiteMessageReachabilityError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageReachabilityError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for LiteMessageReachabilityError(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t closure #1 in LiteMessageServiceSession.calculateReachability(with:responseHandler:)partial apply()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return closure #1 in LiteMessageServiceSession.calculateReachability(with:responseHandler:)(v5, v6, v7, v2, v3, v4);
}

id LiteMessageServiceSession.result(for:reachable:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = [v4 service];
  v9 = [v8 internalName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = objc_allocWithZone(IMServiceReachabilityHandleResult);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithHandleID:v11 service:v9 isReachable:a3 & 1 supportsEncryption:1];

  v13 = [v4 service];
  v14 = [v13 internalName];

  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So33IMServiceReachabilityHandleResultCtGMd, &_ss23_ContiguousArrayStorageCySS_So33IMServiceReachabilityHandleResultCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_53390;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = v12;

  v16 = v12;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So33IMServiceReachabilityHandleResultCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(inited + 32, &_sSS_So33IMServiceReachabilityHandleResultCtMd, &_sSS_So33IMServiceReachabilityHandleResultCtMR);
  v17 = objc_allocWithZone(IMServiceReachabilityResult);
  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMServiceReachabilityHandleResult, IMServiceReachabilityHandleResult_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  LOBYTE(v21) = 0;
  v19 = [v17 initWithService:v14 error:0 handleResults:isa isFinal:1 allAreReachable:a3 & 1 allSupportEncryption:a3 & 1 didCheckServer:v21];

  return v19;
}

uint64_t LiteMessageServiceSession.calculateOnGridReachability(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = type metadata accessor for Logger();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[27] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[28] = v9;
  v4[29] = v8;

  return _swift_task_switch(LiteMessageServiceSession.calculateOnGridReachability(for:with:), v9, v8);
}

uint64_t LiteMessageServiceSession.calculateOnGridReachability(for:with:)()
{
  v73 = v0;
  v1 = [*(v0 + 160) context];
  v2 = [v1 chatIdentifier];

  if (v2)
  {
    v3 = *(v0 + 208);
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v9 = Logger.availability.unsafeMutableAddressor();
    *(v0 + 240) = v9;
    v10 = *(v5 + 16);
    *(v0 + 248) = v10;
    *(v0 + 256) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v3, v9, v4);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);
    v70 = v14;
    v71 = *(v0 + 208);
    if (v13)
    {
      v69 = v10;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v6;
      v19 = v17;
      v72 = v17;
      *v16 = 136315138;
      v20 = v9;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v8, &v72);

      *(v16 + 4) = v21;
      v9 = v20;
      _os_log_impl(&dword_0, v11, v12, "Calculating on grid reachability for chat %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);

      v10 = v69;
    }

    else
    {
    }

    v31 = *(v15 + 8);
    v31(v71, v70);
    *(v0 + 264) = v31;
    v32 = [*(v0 + 168) chatForChatIdentifier:v2 style:45 updatingAccount:0];
    *(v0 + 272) = v32;

    if (v32)
    {
      v33 = String._bridgeToObjectiveC()();
      v34 = String._bridgeToObjectiveC()();
      v35 = IMGetCachedDomainBoolForKey();

      if ((v35 & 1) != 0 || (v36 = [v32 recipient], (*(v0 + 280) = v36) == 0))
      {
        v39 = *(v0 + 256);
        (*(v0 + 248))(*(v0 + 200), *(v0 + 240), *(v0 + 176));
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 67109120;
          *(v42 + 4) = v35;
          _os_log_impl(&dword_0, v40, v41, "Calculating on grid reachability for off grid recipient: %{BOOL}d", v42, 8u);
        }

        v43 = *(v0 + 264);
        v44 = *(v0 + 200);
        v45 = *(v0 + 176);
        v46 = *(v0 + 184);

        v43(v44, v45);
        v47 = swift_task_alloc();
        *(v0 + 288) = v47;
        *v47 = v0;
        v47[1] = LiteMessageServiceSession.calculateOnGridReachability(for:with:);
        v48 = *(v0 + 160);
        v49 = *(v0 + 168);
        v51 = *(v0 + 144);
        v50 = *(v0 + 152);

        return LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:)(v51, v50, v48, v35);
      }

      else
      {
        v37 = v36;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 312;
        *(v0 + 24) = LiteMessageServiceSession.calculateOnGridReachability(for:with:);
        v38 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd, &_sSccySbs5NeverOGMR);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
        *(v0 + 104) = &block_descriptor_27;
        *(v0 + 112) = v38;
        [v37 isOffGridModeWithCompletion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }
    }

    else
    {
      v52 = *(v0 + 216);
      v53 = *(v0 + 192);
      v54 = *(v0 + 176);

      v10(v53, v9, v54);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_0, v55, v56, "Lite chat not found", v57, 2u);
      }

      v59 = *(v0 + 184);
      v58 = *(v0 + 192);
      v60 = *(v0 + 168);
      v61 = *(v0 + 176);
      v63 = *(v0 + 144);
      v62 = *(v0 + 152);

      v31(v58, v61);
      v64 = LiteMessageServiceSession.result(for:reachable:)(v63, v62, 0);
      v66 = *(v0 + 200);
      v65 = *(v0 + 208);
      v67 = *(v0 + 192);

      v68 = *(v0 + 8);

      return v68(v64);
    }
  }

  else
  {
    v22 = *(v0 + 216);
    v24 = *(v0 + 144);
    v23 = *(v0 + 152);

    lazy protocol witness table accessor for type LiteMessageReachabilityError and conformance LiteMessageReachabilityError();
    swift_allocError();
    *v25 = v24;
    *(v25 + 8) = v23;
    *(v25 + 16) = 4;
    swift_willThrow();
    v27 = *(v0 + 200);
    v26 = *(v0 + 208);
    v28 = *(v0 + 192);

    v29 = *(v0 + 8);

    return v29();
  }
}

{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *v0;

  return _swift_task_switch(LiteMessageServiceSession.calculateOnGridReachability(for:with:), v2, v1);
}

{

  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  (*(v0 + 248))(*(v0 + 200), *(v0 + 240), *(v0 + 176));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_0, v3, v4, "Calculating on grid reachability for off grid recipient: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 264);
  v7 = *(v0 + 200);
  v8 = *(v0 + 176);
  v9 = *(v0 + 184);

  v6(v7, v8);
  v10 = swift_task_alloc();
  *(v0 + 288) = v10;
  *v10 = v0;
  v10[1] = LiteMessageServiceSession.calculateOnGridReachability(for:with:);
  v11 = *(v0 + 160);
  v12 = *(v0 + 168);
  v14 = *(v0 + 144);
  v13 = *(v0 + 152);

  return LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:)(v14, v13, v11, v1);
}

{
  v1 = *(v0 + 216);

  v2 = *(v0 + 304);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);

  v6 = *(v0 + 8);

  return v6(v2);
}

{
  v1 = *(v0 + 216);

  v2 = *(v0 + 296);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t LiteMessageServiceSession.calculateOnGridReachability(for:with:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v7 = v4[28];
    v8 = v4[29];
    v9 = LiteMessageServiceSession.calculateOnGridReachability(for:with:);
  }

  else
  {
    v4[38] = a1;
    v7 = v4[28];
    v8 = v4[29];
    v9 = LiteMessageServiceSession.calculateOnGridReachability(for:with:);
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t LiteMessageServiceSession.isAvailableForLiteMessage(for:token:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[28] = a5;
  v6[29] = v5;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = type metadata accessor for Logger();
  v6[30] = v7;
  v8 = *(v7 - 8);
  v6[31] = v8;
  v9 = *(v8 + 64) + 15;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[36] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[37] = v11;
  v6[38] = v10;

  return _swift_task_switch(LiteMessageServiceSession.isAvailableForLiteMessage(for:token:with:), v11, v10);
}

uint64_t LiteMessageServiceSession.isAvailableForLiteMessage(for:token:with:)()
{
  v1 = *(v0 + 216);
  if (v1 >> 60 != 15)
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 192);
    outlined copy of Data._Representation(*(v0 + 208), v1);
    v4 = String._bridgeToObjectiveC()();
    v5 = IMChatCanonicalIDSIDsForAddress();

    if (v5 && (v6 = *(v0 + 208), v7 = *(v0 + 216), isa = Data._bridgeToObjectiveC()().super.isa, v9 = IDSCopyIDForTokenWithID(), v5, isa, v9))
    {
      v11 = *(v0 + 208);
      v10 = *(v0 + 216);
      v12 = [objc_allocWithZone(IDSURI) initWithPrefixedURI:v9];

      outlined consume of Data?(v11, v10);
      if (v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      outlined consume of Data?(*(v0 + 208), *(v0 + 216));
    }
  }

  v13 = *(v0 + 192);
  v14 = *(v0 + 200);
  v15 = objc_allocWithZone(IDSURI);
  v16 = String._bridgeToObjectiveC()();
  v12 = [v15 initWithUnprefixedURI:v16];

  if (!v12)
  {
    v36 = *(v0 + 288);
    v38 = *(v0 + 192);
    v37 = *(v0 + 200);

    lazy protocol witness table accessor for type LiteMessageReachabilityError and conformance LiteMessageReachabilityError();
    swift_allocError();
    *v39 = v38;
    *(v39 + 8) = v37;
    *(v39 + 16) = 0;
    swift_willThrow();

    goto LABEL_18;
  }

LABEL_8:
  *(v0 + 312) = v12;
  v17 = [*(v0 + 224) context];
  v18 = [v17 senderLastAddressedHandle];

  if (v18)
  {
    v19 = [objc_allocWithZone(IDSURI) initWithUnprefixedURI:v18];
    *(v0 + 320) = v19;

    if (v19)
    {
      v20 = *(v0 + 232);
      v21 = LiteMessageServiceSession.offGridMessenger.getter();
      *(v0 + 328) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_53F20;
      *(inited + 32) = v12;
      v23 = v12;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo6IDSURIC_Tt0g5Tf4g_n(inited);
      swift_setDeallocating();
      v24 = *(inited + 16);
      swift_arrayDestroy();
      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
      lazy protocol witness table accessor for type IDSURI and conformance NSObject();
      v25 = Set._bridgeToObjectiveC()().super.isa;
      *(v0 + 336) = v25;

      v26 = [objc_allocWithZone(IDSOffGridDeliveryQueryOptions) init];
      *(v0 + 344) = v26;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 184;
      *(v0 + 24) = LiteMessageServiceSession.isAvailableForLiteMessage(for:token:with:);
      v27 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySo6IDSURICSo29IDSOffGridDeliveryQueryResultCGs5Error_pGMd, &_sSccySDySo6IDSURICSo29IDSOffGridDeliveryQueryResultCGs5Error_pGMR);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [IDSURI : IDSOffGridDeliveryQueryResult];
      *(v0 + 104) = &block_descriptor_5;
      *(v0 + 112) = v27;
      [v21 resultsForDestinationURIs:v25 senderURI:v19 options:v26 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }
  }

  v28 = *(v0 + 288);
  v29 = *(v0 + 224);

  v30 = [v29 context];
  v31 = [v30 senderLastAddressedHandle];

  if (v31)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    lazy protocol witness table accessor for type LiteMessageReachabilityError and conformance LiteMessageReachabilityError();
    swift_allocError();
    *v35 = v32;
    *(v35 + 8) = v34;
  }

  else
  {
    lazy protocol witness table accessor for type LiteMessageReachabilityError and conformance LiteMessageReachabilityError();
    swift_allocError();
    *v35 = 0;
    *(v35 + 8) = 0;
  }

  *(v35 + 16) = 1;
  swift_willThrow();

LABEL_18:
  v41 = *(v0 + 272);
  v40 = *(v0 + 280);
  v43 = *(v0 + 256);
  v42 = *(v0 + 264);

  v44 = *(v0 + 8);

  return v44(0);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 352) = v3;
  v4 = *(v1 + 304);
  v5 = *(v1 + 296);
  if (v3)
  {
    v6 = LiteMessageServiceSession.isAvailableForLiteMessage(for:token:with:);
  }

  else
  {
    v6 = LiteMessageServiceSession.isAvailableForLiteMessage(for:token:with:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);
  v4 = *(v0 + 288);

  v5 = *(v0 + 184);

  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*(v5 + 16))
    {
      goto LABEL_3;
    }

LABEL_16:
    v43 = *(v0 + 312);
    v6 = *(v0 + 320);
    v44 = *(v0 + 192);
    v45 = *(v0 + 200);

    lazy protocol witness table accessor for type LiteMessageReachabilityError and conformance LiteMessageReachabilityError();
    swift_allocError();
    *v46 = v44;
    *(v46 + 8) = v45;
    *(v46 + 16) = 3;
    swift_willThrow();

    goto LABEL_17;
  }

  if (!__CocoaDictionary.count.getter())
  {
    goto LABEL_16;
  }

LABEL_3:
  v6 = specialized Dictionary.subscript.getter(*(v0 + 312), v5);

  if (!v6 || ![v6 hasUsableSenderKey])
  {
    v24 = *(v0 + 312);
    v9 = (v0 + 256);
    v26 = *(v0 + 248);
    v25 = *(v0 + 256);
    v27 = *(v0 + 240);
    v28 = Logger.availability.unsafeMutableAddressor();
    (*(v26 + 16))(v25, v28, v27);
    v29 = v24;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 312);
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v33;
      *v35 = v33;
      v36 = v33;
      _os_log_impl(&dword_0, v30, v31, "%@ does not have usable sender keys", v34, 0xCu);
      outlined destroy of TaskPriority?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      v33 = v30;
      v30 = v36;
    }

    v23 = 0;
    goto LABEL_14;
  }

  v7 = [v6 status];
  if (!v7)
  {
    v67 = *(v0 + 312);
    v9 = (v0 + 272);
    v68 = *(v0 + 272);
    v69 = *(v0 + 240);
    v70 = *(v0 + 248);
    v71 = Logger.availability.unsafeMutableAddressor();
    (*(v70 + 16))(v68, v71, v69);
    v72 = v67;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();

    v73 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 312);
    if (v73)
    {
      v62 = v6;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      *(v63 + 4) = v61;
      *v64 = v61;
      v65 = v61;
      v66 = "Unknown status for: %@";
      goto LABEL_25;
    }

LABEL_26:

    v23 = 0;
    v6 = *(v0 + 320);
LABEL_14:

    v38 = *(v0 + 272);
    v37 = *(v0 + 280);
    v40 = *(v0 + 256);
    v39 = *(v0 + 264);
    (*(*(v0 + 248) + 8))(*v9, *(v0 + 240));

    v41 = *(v0 + 8);
    v42 = v23;
    goto LABEL_18;
  }

  if (v7 == &dword_0 + 2)
  {
    v52 = *(v0 + 312);
    v9 = (v0 + 264);
    v53 = *(v0 + 264);
    v54 = *(v0 + 240);
    v55 = *(v0 + 248);
    v56 = Logger.availability.unsafeMutableAddressor();
    (*(v55 + 16))(v53, v56, v54);
    v57 = v52;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();

    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 312);
    if (v60)
    {
      v62 = v6;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      *(v63 + 4) = v61;
      *v64 = v61;
      v65 = v61;
      v66 = "Invalid status for: %@";
LABEL_25:
      _os_log_impl(&dword_0, v58, v59, v66, v63, 0xCu);
      outlined destroy of TaskPriority?(v64, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      v6 = v58;
      v61 = v62;
      v58 = v65;
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (v7 == &dword_0 + 1)
  {
    v8 = *(v0 + 312);
    v9 = (v0 + 280);
    v10 = *(v0 + 280);
    v11 = *(v0 + 240);
    v12 = *(v0 + 248);
    v13 = Logger.availability.unsafeMutableAddressor();
    (*(v12 + 16))(v10, v13, v11);
    v14 = v8;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 312);
    if (v17)
    {
      v19 = v6;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v18;
      *v21 = v18;
      v22 = v18;
      _os_log_impl(&dword_0, v15, v16, "%@ available for iMessage Lite", v20, 0xCu);
      outlined destroy of TaskPriority?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      v6 = v15;
      v18 = v19;
      v15 = v22;
    }

    v6 = *(v0 + 320);
    v23 = 1;
    goto LABEL_14;
  }

  v74 = *(v0 + 312);
  v43 = *(v0 + 320);
  v75 = *(v0 + 192);
  v76 = *(v0 + 200);
  lazy protocol witness table accessor for type LiteMessageReachabilityError and conformance LiteMessageReachabilityError();
  swift_allocError();
  *v77 = v75;
  *(v77 + 8) = v76;
  *(v77 + 16) = 2;
  swift_willThrow();

LABEL_17:
  v48 = *(v0 + 272);
  v47 = *(v0 + 280);
  v50 = *(v0 + 256);
  v49 = *(v0 + 264);

  v41 = *(v0 + 8);
  v42 = 0;
LABEL_18:

  return v41(v42);
}

{
  v1 = v0[43];
  v2 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[36];

  swift_willThrow();

  v8 = v0[44];
  v10 = v0[34];
  v9 = v0[35];
  v12 = v0[32];
  v11 = v0[33];

  v13 = v0[1];

  return v13(0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 224) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = type metadata accessor for Logger();
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 128) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 136) = v10;
  *(v5 + 144) = v9;

  return _swift_task_switch(LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:), v10, v9);
}

uint64_t LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:)()
{
  v1 = [*(v0 + 80) context];
  v2 = [v1 chatIdentifier];

  if (v2)
  {
    v3 = [*(v0 + 88) chatForChatIdentifier:v2 style:45 updatingAccount:0];
    *(v0 + 152) = v3;

    if (!v3)
    {
      v12 = *(v0 + 128);
      v14 = *(v0 + 104);
      v13 = *(v0 + 112);
      v15 = *(v0 + 96);

      v16 = Logger.availability.unsafeMutableAddressor();
      (*(v14 + 16))(v13, v16, v15);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_0, v17, v18, "Chat not found", v19, 2u);
      }

      v21 = *(v0 + 104);
      v20 = *(v0 + 112);
      v22 = *(v0 + 88);
      v23 = *(v0 + 96);
      v25 = *(v0 + 64);
      v24 = *(v0 + 72);

      (*(v21 + 8))(v20, v23);
      v26 = LiteMessageServiceSession.result(for:reachable:)(v25, v24, 0);
      goto LABEL_18;
    }

    if (*(v0 + 224) == 1)
    {
      [v3 setWasDowngradedToLiteMessage:0];
    }

    else if (([v3 wasDowngradedToLiteMessage] & 1) == 0)
    {
LABEL_17:
      v31 = *(v0 + 128);
      v32 = *(v0 + 88);
      v34 = *(v0 + 64);
      v33 = *(v0 + 72);

      v26 = LiteMessageServiceSession.result(for:reachable:)(v34, v33, 0);

LABEL_18:
      v36 = *(v0 + 112);
      v35 = *(v0 + 120);

      v37 = *(v0 + 8);

      return v37(v26);
    }

    specialized LiteMessageServiceSession.isExchangingLiteMessages(in:isRecipientOffGrid:)(v3, *(v0 + 224));
    if (v27)
    {
      v28 = [v3 recipient];
      *(v0 + 160) = v28;
      if (v28)
      {
        v29 = v28;
        v30 = swift_task_alloc();
        *(v0 + 168) = v30;
        *v30 = v0;
        v30[1] = LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:);

        return specialized LiteMessageServiceSession.lastActiveToken(for:)(v29);
      }

      else
      {
        v38 = swift_task_alloc();
        *(v0 + 208) = v38;
        *v38 = v0;
        v38[1] = LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:);
        v39 = *(v0 + 80);
        v40 = *(v0 + 88);
        v42 = *(v0 + 64);
        v41 = *(v0 + 72);

        return LiteMessageServiceSession.isAvailableForLiteMessage(for:token:with:)(v42, v41, 0, 0xF000000000000000, v39);
      }
    }

    goto LABEL_17;
  }

  v4 = *(v0 + 128);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  lazy protocol witness table accessor for type LiteMessageReachabilityError and conformance LiteMessageReachabilityError();
  swift_allocError();
  *v7 = v6;
  *(v7 + 8) = v5;
  *(v7 + 16) = 4;
  swift_willThrow();
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);

  v10 = *(v0 + 8);

  return v10();
}

{
  v34 = v0;
  v1 = *(v0 + 184);
  if (v1 >> 60 == 15)
  {

    v2 = swift_task_alloc();
    *(v0 + 208) = v2;
    *v2 = v0;
    v2[1] = LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = *(v0 + 72);
    v6 = *(v0 + 64);
    v7 = 0;
    v8 = 0xF000000000000000;
  }

  else
  {
    v9 = *(v0 + 176);
    v10 = *(v0 + 120);
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    v13 = Logger.availability.unsafeMutableAddressor();
    (*(v12 + 16))(v10, v13, v11);
    outlined copy of Data._Representation(v9, v1);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    outlined consume of Data?(v9, v1);
    if (os_log_type_enabled(v14, v15))
    {
      v17 = *(v0 + 176);
      v16 = *(v0 + 184);
      v18 = *(v0 + 104);
      v31 = *(v0 + 96);
      v32 = *(v0 + 120);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136315138;
      outlined copy of Data._Representation(v17, v16);
      v21 = Data.description.getter();
      v23 = v22;
      outlined consume of Data?(v17, v16);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v33);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v14, v15, "Will determine iMessage Lite availability using last active token: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);

      (*(v18 + 8))(v32, v31);
    }

    else
    {
      v25 = *(v0 + 120);
      v26 = *(v0 + 96);
      v27 = *(v0 + 104);

      (*(v27 + 8))(v25, v26);
    }

    outlined copy of Data._Representation(*(v0 + 176), *(v0 + 184));
    v28 = swift_task_alloc();
    *(v0 + 192) = v28;
    *v28 = v0;
    v28[1] = LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v3 = *(v0 + 80);
    v29 = *(v0 + 88);
    v5 = *(v0 + 72);
    v6 = *(v0 + 64);
  }

  return LiteMessageServiceSession.isAvailableForLiteMessage(for:token:with:)(v6, v5, v7, v8, v3);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  outlined consume of Data?(v1, v2);
  LOBYTE(v1) = *(v0 + 24);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);

  v8 = LiteMessageServiceSession.result(for:reachable:)(v7, v6, v1);

  v10 = *(v0 + 112);
  v9 = *(v0 + 120);

  v11 = *(v0 + 8);

  return v11(v8);
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  v7 = LiteMessageServiceSession.result(for:reachable:)(v6, v5, v1);

  v9 = *(v0 + 112);
  v8 = *(v0 + 120);

  v10 = *(v0 + 8);

  return v10(v7);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);

  outlined consume of Data?(v1, v2);

  v5 = *(v0 + 200);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = *(v0 + 128);

  v2 = *(v0 + 216);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v9 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = a2;

  v6 = *(v3 + 144);
  v7 = *(v3 + 136);

  return _swift_task_switch(LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:), v7, v6);
}

uint64_t LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:)(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[4] = v1;
  *(v4 + 24) = a1;
  v4[2] = v2;
  v5 = v3[24];
  v6 = v3[23];
  v7 = v3[22];
  v8 = *v2;
  v4[25] = v1;

  outlined consume of Data?(v7, v6);
  v9 = v3[18];
  v10 = v3[17];
  if (v1)
  {
    v11 = LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:);
  }

  else
  {
    v11 = LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:);
  }

  return _swift_task_switch(v11, v10, v9);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v1;
  *(v4 + 48) = a1;
  v4[5] = v2;
  v5 = v3[26];
  v6 = *v2;
  v4[27] = v1;

  v7 = v3[18];
  v8 = v3[17];
  if (v1)
  {
    v9 = LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:);
  }

  else
  {
    v9 = LiteMessageServiceSession.calculateOnGridReachability(for:with:isRecipientOffGrid:);
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSData?) -> () with result type (Bool, Data?)(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0xF000000000000000;
  }

  v9 = *(*(v5 + 64) + 40);
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = v8;

  return _swift_continuation_resume(v5);
}

void *specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSOffGridDeliveryQueryResult, IDSOffGridDeliveryQueryResult_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_34174()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo6IDSURIC_Tt0g5Tf4g_n(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6IDSURICGMd, &_ss11_SetStorageCySo6IDSURICGMR);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So33IMServiceReachabilityHandleResultCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo33IMServiceReachabilityHandleResultCGMd, &_ss18_DictionaryStorageCySSSo33IMServiceReachabilityHandleResultCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id specialized LiteMessageServiceSession.siblingChats(of:haveLastMessageOlderThan:)(void *a1, double a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Date();
  v9 = *(v46 - 8);
  v10 = *(v9 + 8);
  __chkstk_darwin(v46);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() sharedInstance];
  result = [a1 chatIdentifier];
  if (!result)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v15 = result;
  v47 = v12;
  v42 = v8;
  v16 = [v13 allExistingChatsWithIdentifier:result];

  type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IMDChat, IMDChat_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = v5;
  v44 = v4;
  if (v17 >> 62)
  {
LABEL_29:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_30:

    return &dword_0 + 1;
  }

  v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
  if (!v18)
  {
    goto LABEL_30;
  }

LABEL_4:
  v19 = 0;
  v45 = (v9 + 8);
  while (1)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_28;
      }

      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    result = [v20 service];
    if (!result)
    {
      __break(1u);
      goto LABEL_32;
    }

    v23 = result;
    v24 = [result internalName];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v26;

    if (v25 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v9 != v27)
    {
      break;
    }

LABEL_6:
    ++v19;
    if (v22 == v18)
    {
      goto LABEL_30;
    }
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v29 & 1) != 0 || (v30 = [objc_opt_self() sharedInstance], v31 = objc_msgSend(v30, "lastMessageForChatWithRowID:", objc_msgSend(v21, "rowID")), v30, !v31))
  {
LABEL_22:

    goto LABEL_6;
  }

  v32 = [v31 time];
  if (!v32)
  {
LABEL_21:

    goto LABEL_22;
  }

  v9 = v47;
  v33 = v32;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceNow.getter();
  if (fabs(v34) >= a2)
  {
    (*v45)(v9, v46);
    goto LABEL_21;
  }

  v35 = Logger.availability.unsafeMutableAddressor();
  v37 = v42;
  v36 = v43;
  v38 = v44;
  (*(v43 + 16))(v42, v35, v44);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_0, v39, v40, "We have a more recent message in chat that is not iMessage Lite", v41, 2u);
  }

  (*(v36 + 8))(v37, v38);
  (*v45)(v47, v46);
  return 0;
}

void specialized LiteMessageServiceSession.isExchangingLiteMessages(in:isRecipientOffGrid:)(void *a1, char a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v90 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v90 - v14;
  v16 = __chkstk_darwin(v13);
  v94 = &v90 - v17;
  __chkstk_darwin(v16);
  v92 = (&v90 - v18);
  v19 = type metadata accessor for Date();
  v93 = *(v19 - 8);
  v20 = *(v93 + 64);
  __chkstk_darwin(v19);
  v95 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_opt_self() sharedInstance];
  v23 = [v22 lastMessageForChatWithRowID:{objc_msgSend(a1, "rowID")}];

  if (!v23)
  {
    v32 = Logger.availability.unsafeMutableAddressor();
    (*(v5 + 16))(v9, v32, v4);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "No last message found in chat", v35, 2u);
    }

    (*(v5 + 8))(v9, v4);
    return;
  }

  v96 = v4;
  v24 = v23;
  v25 = [v24 service];
  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_12:

    goto LABEL_13;
  }

  v90 = v19;
  v91 = v24;
  v26 = v25;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v29)
  {
    v24 = v91;
    goto LABEL_12;
  }

  if (v27 != v30 || v29 != v31)
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v24 = v91;
    if (v41)
    {
      goto LABEL_17;
    }

LABEL_13:

    v36 = Logger.availability.unsafeMutableAddressor();
    v37 = v96;
    (*(v5 + 16))(v12, v36, v96);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "Last message is not iMessage Lite", v40, 2u);
    }

    (*(v5 + 8))(v12, v37);
    [a1 setWasDowngradedToLiteMessage:0];

    return;
  }

  v24 = v91;
LABEL_17:
  v42 = [v24 time];

  if (v42)
  {
    v43 = v95;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = [objc_opt_self() sharedInstanceForBagType:1];
    v45 = v96;
    if (a2)
    {
      v46 = String._bridgeToObjectiveC()();
      v47 = [v44 objectForKey:v46];

      v48 = v90;
      if (v47)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v98 = 0u;
        v99 = 0u;
      }

      v56 = v94;
      v100 = v98;
      v101 = v99;
      if (!*(&v99 + 1))
      {

        outlined destroy of TaskPriority?(&v100, &_sypSgMd, &_sypSgMR);
        goto LABEL_36;
      }

      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_36:
        *&v60 = 86400.0;
LABEL_40:
        v59 = *&v60;
LABEL_41:
        Date.timeIntervalSinceNow.getter();
        v62 = fabs(v61);
        if (v62 >= v59)
        {
          v65 = Logger.availability.unsafeMutableAddressor();
          (*(v5 + 16))(v56, v65, v45);
          v66 = v24;
          v67 = a1;
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            *&v100 = v92;
            *v70 = 134218498;
            *(v70 + 4) = v59;
            *(v70 + 12) = 2080;
            v72 = [v67 chatIdentifier];

            if (v72)
            {
              v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v75 = v74;

              v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v100);

              *(v70 + 14) = v76;
              *(v70 + 22) = 2112;
              *(v70 + 24) = v66;
              *v71 = v23;
              v77 = v66;
              _os_log_impl(&dword_0, v68, v69, "Found last iMessage Lite > %f for %s for %@ ", v70, 0x20u);
              outlined destroy of TaskPriority?(v71, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

              __swift_destroy_boxed_opaque_existential_0(v92);

              (*(v5 + 8))(v94, v96);
LABEL_48:
              (*(v93 + 8))(v95, v90);
              return;
            }

            __break(1u);
            goto LABEL_56;
          }

          (*(v5 + 8))(v56, v45);
        }

        else
        {
          v63 = [objc_opt_self() sharedFeatureFlags];
          v64 = [v63 isOneChatEnabled];

          if (v64 & 1) != 0 || (specialized LiteMessageServiceSession.siblingChats(of:haveLastMessageOlderThan:)(a1, v62))
          {
            (*(v93 + 8))(v43, v48);

            return;
          }

          [a1 setWasDowngradedToLiteMessage:0];
          v78 = Logger.availability.unsafeMutableAddressor();
          v79 = v92;
          (*(v5 + 16))(v92, v78, v45);
          v80 = a1;
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            *&v100 = v84;
            *v83 = 136315138;
            v85 = [v80 chatIdentifier];

            if (v85)
            {
              v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v88 = v87;

              v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v100);

              *(v83 + 4) = v89;
              _os_log_impl(&dword_0, v81, v82, "Last message is not a Lite Message or not under the time limit for %s", v83, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v84);

              (*(v5 + 8))(v92, v96);
              goto LABEL_48;
            }

LABEL_56:
            __break(1u);
            return;
          }

          (*(v5 + 8))(v79, v45);
        }

        (*(v93 + 8))(v43, v48);
        return;
      }

LABEL_34:
      v57 = v97;
      [v97 doubleValue];
      v59 = v58;

      goto LABEL_41;
    }

    v54 = String._bridgeToObjectiveC()();
    v55 = [v44 objectForKey:v54];

    v48 = v90;
    if (v55)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v98 = 0u;
      v99 = 0u;
    }

    v56 = v94;
    v100 = v98;
    v101 = v99;
    if (*(&v99 + 1))
    {
      type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        goto LABEL_34;
      }
    }

    else
    {

      outlined destroy of TaskPriority?(&v100, &_sypSgMd, &_sypSgMR);
    }

    *&v60 = 1800.0;
    goto LABEL_40;
  }

  v49 = Logger.availability.unsafeMutableAddressor();
  v50 = v96;
  (*(v5 + 16))(v15, v49, v96);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "No time found for last lite message", v53, 2u);
  }

  else
  {
  }

  (*(v5 + 8))(v15, v50);
}

uint64_t specialized LiteMessageServiceSession.lastActiveToken(for:)(uint64_t a1)
{
  v1[21] = a1;
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v3;
  v1[24] = v2;

  return _swift_task_switch(specialized LiteMessageServiceSession.lastActiveToken(for:), v3, v2);
}

uint64_t specialized LiteMessageServiceSession.lastActiveToken(for:)()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = specialized LiteMessageServiceSession.lastActiveToken(for:);
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySb_10Foundation4DataVSgts5NeverOGMd, &_sSccySb_10Foundation4DataVSgts5NeverOGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSData?) -> () with result type (Bool, Data?);
  v0[13] = &block_descriptor_34;
  v0[14] = v2;
  [v1 cachedOffGridModeAndLastPublisherWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *v0;

  return _swift_task_switch(specialized LiteMessageServiceSession.lastActiveToken(for:), v2, v1);
}

{
  v1 = *(v0 + 176);

  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  if (*(v0 + 144) != 1)
  {
    goto LABEL_11;
  }

  if (v3 >> 60 != 15)
  {
    v4 = v3 >> 62;
    if ((v3 >> 62) <= 1)
    {
      if (!v4)
      {
        if ((v3 & 0xFF000000000000) != 0)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      v5 = v2;
      v6 = v2 >> 32;
LABEL_10:
      if (v5 != v6)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (v4 == 2)
    {
      v5 = *(v2 + 16);
      v6 = *(v2 + 24);
      goto LABEL_10;
    }

LABEL_11:
    outlined consume of Data?(v2, v3);
  }

  v2 = 0;
  v3 = 0xF000000000000000;
LABEL_13:
  v7 = *(v0 + 8);

  return v7(v2, v3);
}

id LiteMessageServiceSession.processPreferredServiceType(_:for:expiresAfter:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v92 = a4;
  v93 = a1;
  v96 = a3;
  v89 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 1);
  v94 = v5;
  v95 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v85 = &v85 - v12;
  v13 = __chkstk_darwin(v11);
  v86 = &v85 - v14;
  v15 = __chkstk_darwin(v13);
  v87 = &v85 - v16;
  __chkstk_darwin(v15);
  v88 = &v85 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v85 - v20;
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v97 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = objc_opt_self();
  v27 = [v26 sharedFeatureFlags];
  v28 = [v27 isOneChatEnabled];

  if (v28)
  {
    v91 = v4;
    v29 = v4;
    goto LABEL_5;
  }

  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_39;
  }

  v31 = result;
  v32 = [result anySessionForServiceName:IMServiceNameiMessage];

  v91 = v32;
  v29 = v4;
  if (v32)
  {
LABEL_5:
    v33 = [v26 sharedFeatureFlags];
    v34 = [v33 isOneChatEnabled];

    if (v34)
    {
      v35 = 0;
      v36 = v23;
      goto LABEL_9;
    }

    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v37 = result;
      v36 = v23;
      v35 = [result anySessionForServiceName:IMServiceNameRCS];

LABEL_9:
      v38 = v94;
      v39 = v96;
      v94 = v29;
      outlined init with copy of TaskPriority?(v92, v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v40 = *(v36 + 48);
      v41 = v40(v21, 1, v22);
      v90 = v22;
      if (v41 == 1)
      {
        static Double.defaultSMSDowngradeTimeInterval.getter();
        v42 = v97;
        Date.init(timeIntervalSinceNow:)();
        v43 = v40(v21, 1, v22);
        v44 = v35;
        if (v43 != 1)
        {
          outlined destroy of TaskPriority?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }
      }

      else
      {
        v42 = v97;
        (*(v36 + 32))(v97, v21, v22);
        v44 = v35;
      }

      v45 = Logger.liteSession.unsafeMutableAddressor();
      v46 = v95;
      v47 = *(v95 + 16);
      switch(v93)
      {
        case -1:
          v58 = v86;
          v47(v86, v45, v38);

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v63 = v39;
            v64 = v62;
            v98 = v62;
            *v61 = 136315138;
            *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v63, &v98);
            v65 = "Unspecified service preference, dropping selection %s";
LABEL_24:
            _os_log_impl(&dword_0, v59, v60, v65, v61, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v64);
          }

          break;
        case 0:
          v53 = v88;
          v47(v88, v45, v38);

          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v98 = v57;
            *v56 = 136315138;
            *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v39, &v98);
            _os_log_impl(&dword_0, v54, v55, "%s requested upgrade to iMessage", v56, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v57);

            (*(v46 + 8))(v88, v38);
          }

          else
          {

            (*(v46 + 8))(v53, v38);
          }

          v74 = String._bridgeToObjectiveC()();
          v75 = v91;
          [v91 clearDowngradeRequestForHandleID:v74];

          v76 = v90;
          if (!v35)
          {
            goto LABEL_36;
          }

          v77 = v35;
          v78 = String._bridgeToObjectiveC()();
          [v77 clearDowngradeRequestForHandleID:v78];
          goto LABEL_35;
        case 1:
          v48 = v87;
          v47(v87, v45, v38);

          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v98 = v52;
            *v51 = 136315138;
            *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v96, &v98);
            _os_log_impl(&dword_0, v49, v50, "%s requested downgrade to SMS", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v52);

            (*(v46 + 8))(v87, v38);
          }

          else
          {

            (*(v46 + 8))(v48, v38);
          }

          v79 = String._bridgeToObjectiveC()();
          isa = Date._bridgeToObjectiveC()().super.isa;
          v81 = IMServiceNameSMS;
          v75 = v91;
          [v91 downgradeRequestedForHandleID:v79 expirationDate:isa preferredService:IMServiceNameSMS];

          v76 = v90;
          if (!v35)
          {
            goto LABEL_36;
          }

          v82 = v35;
          v77 = String._bridgeToObjectiveC()();
          v78 = Date._bridgeToObjectiveC()().super.isa;
          [v82 downgradeRequestedForHandleID:v77 expirationDate:v78 preferredService:v81];

LABEL_35:
LABEL_36:
          v83 = [v94 broadcasterForChatListeners];
          v84 = String._bridgeToObjectiveC()();
          [v83 serviceSwitchRequestReceivedForChatWithIdentifier:v84];
          swift_unknownObjectRelease();

          return (*(v36 + 8))(v97, v76);
        default:
          v58 = v85;
          v47(v85, v45, v38);

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v67 = v39;
            v64 = v66;
            v98 = v66;
            *v61 = 136315138;
            *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v67, &v98);
            v65 = "Unknown service preference, dropping selection %s";
            goto LABEL_24;
          }

          break;
      }

      (*(v46 + 8))(v58, v38);
      return (*(v36 + 8))(v42, v90);
    }

LABEL_39:
    __break(1u);
    return result;
  }

  v68 = Logger.liteSession.unsafeMutableAddressor();
  v70 = v94;
  v69 = v95;
  (*(v95 + 16))(v10, v68, v94);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_0, v71, v72, "No service session found for preferred service request", v73, 2u);
  }

  return (*(v69 + 8))(v10, v70);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?) -> ()(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {

    v5 = v2;
    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {

    v7 = 0xF000000000000000;
  }

  v4(v2, v7);
  outlined consume of Data?(v2, v7);
}

Swift::Void __swiftcall LiteMessageServiceSession.sendUpgradeMessagesIfNeeded()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = v0;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in LiteMessageServiceSession.sendUpgradeMessagesIfNeeded(), v8);
}

uint64_t closure #1 in LiteMessageServiceSession.sendUpgradeMessagesIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v9;
  v4[8] = v8;

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.sendUpgradeMessagesIfNeeded(), v9, v8);
}

uint64_t closure #1 in LiteMessageServiceSession.sendUpgradeMessagesIfNeeded()()
{
  v1 = specialized LiteMessageServiceSession.downgradeRequestedHandles.getter();
  *(v0 + 72) = v1;
  if (!*(v1 + 16))
  {
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);

    v11 = Logger.liteSession.unsafeMutableAddressor();
    (*(v10 + 16))(v8, v11, v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 32);
    v15 = *(v0 + 40);
    v17 = *(v0 + 24);
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v12, v13, "No downgraded handles to upgrade", v18, 2u);
    }

    (*(v16 + 8))(v15, v17);
LABEL_16:
    v32 = *(v0 + 40);

    v33 = *(v0 + 8);

    return v33();
  }

  v2 = *(v1 + 32);
  *(v0 + 120) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 64);
  if (!v5)
  {
    v19 = 0;
    v20 = ((63 - v4) >> 6) - 1;
    while (v20 != v19)
    {
      v6 = v19 + 1;
      v5 = *(v1 + 8 * v19++ + 72);
      if (v5)
      {
        goto LABEL_12;
      }
    }

    v31 = *(v0 + 48);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    specialized LiteMessageServiceSession.downgradeRequestedHandles.setter();
    goto LABEL_16;
  }

  v6 = 0;
LABEL_12:
  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  v21 = *(v1 + 48);
  v22 = (v6 << 10) | (16 * __clz(__rbit64(v5)));
  v24 = *(v21 + v22);
  v23 = *(v21 + v22 + 8);
  *(v0 + 96) = v23;
  v25 = (*(v1 + 56) + v22);
  v26 = *v25;
  v27 = v25[1];
  *(v0 + 104) = v27;

  v28 = swift_task_alloc();
  *(v0 + 112) = v28;
  *v28 = v0;
  v28[1] = closure #1 in LiteMessageServiceSession.sendUpgradeMessagesIfNeeded();
  v29 = *(v0 + 16);

  return LiteMessageServiceSession.sendUpgradeMessage(to:from:)(v24, v23, v26, v27);
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v8 = *v0;

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return _swift_task_switch(closure #1 in LiteMessageServiceSession.sendUpgradeMessagesIfNeeded(), v6, v5);
}

void closure #1 in LiteMessageServiceSession.sendUpgradeMessagesIfNeeded()()
{
  v1 = *(v0 + 88);
  v2 = (*(v0 + 80) - 1) & *(v0 + 80);
  if (v2)
  {
    v3 = *(v0 + 72);
LABEL_7:
    *(v0 + 80) = v2;
    *(v0 + 88) = v1;
    v5 = *(v3 + 48);
    v6 = (v1 << 10) | (16 * __clz(__rbit64(v2)));
    v7 = *(v5 + v6);
    v8 = *(v5 + v6 + 8);
    *(v0 + 96) = v8;
    v9 = (*(v3 + 56) + v6);
    v11 = *v9;
    v10 = v9[1];
    *(v0 + 104) = v10;

    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = closure #1 in LiteMessageServiceSession.sendUpgradeMessagesIfNeeded();
    v13 = *(v0 + 16);

    LiteMessageServiceSession.sendUpgradeMessage(to:from:)(v7, v8, v11, v10);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 72);
      if (v4 >= (((1 << *(v0 + 120)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v14 = *(v0 + 48);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    specialized LiteMessageServiceSession.downgradeRequestedHandles.setter();
    v15 = *(v0 + 40);

    v16 = *(v0 + 8);

    v16();
  }
}

uint64_t LiteMessageServiceSession.sendUpgradeMessage(to:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = type metadata accessor for Logger();
  v5[30] = v6;
  v7 = *(v6 - 8);
  v5[31] = v7;
  v8 = *(v7 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[36] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[37] = v10;
  v5[38] = v9;

  return _swift_task_switch(LiteMessageServiceSession.sendUpgradeMessage(to:from:), v10, v9);
}

uint64_t LiteMessageServiceSession.sendUpgradeMessage(to:from:)()
{
  v74 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = objc_allocWithZone(IDSURI);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithUnprefixedURI:v4];
  v0[39] = v5;

  if (v5)
  {
    v7 = v0[27];
    v6 = v0[28];
    v8 = objc_allocWithZone(IDSURI);
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 initWithUnprefixedURI:v9];
    v0[40] = v10;

    if (v10)
    {
      v11 = v0[35];
      v12 = v0[30];
      v13 = v0[31];
      v14 = v0[28];
      v15 = v0[26];
      v16 = Logger.liteSession.unsafeMutableAddressor();
      v0[41] = v16;
      v17 = *(v13 + 16);
      v0[42] = v17;
      v0[43] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v17(v11, v16, v12);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      v20 = os_log_type_enabled(v18, v19);
      v21 = v0[35];
      v22 = v0[30];
      v23 = v0[31];
      if (v20)
      {
        v69 = v0[27];
        v70 = v0[28];
        v71 = v0[35];
        v24 = v0[25];
        v25 = v0[26];
        v26 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v26 = 136315394;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v73);
        *(v26 + 12) = 2080;
        *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v73);
        _os_log_impl(&dword_0, v18, v19, "Sending upgrade message to %s from %s", v26, 0x16u);
        swift_arrayDestroy();

        v27 = *(v23 + 8);
        v27(v71, v22);
      }

      else
      {

        v27 = *(v23 + 8);
        v27(v21, v22);
      }

      v0[44] = v27;
      v60 = v0[29];
      v61 = LiteMessageServiceSession.offGridMessenger.getter();
      v0[45] = v61;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = LiteMessageServiceSession.sendUpgradeMessage(to:from:);
      v62 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo30IDSOffGridServiceUpdateMessageC_SSts5Error_pGMd, &_sSccySo30IDSOffGridServiceUpdateMessageC_SSts5Error_pGMR);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridEncryptedMessage?, @unowned NSString?, @unowned NSError?) -> () with result type (IDSOffGridEncryptedMessage, String);
      v0[13] = &block_descriptor_6;
      v0[14] = v62;
      [v61 __im_sendServiceUpdateMessageWithPreferredService:0 recipientURI:v5 fromURI:v10 options:0 completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v44 = v0[36];
    v45 = v0[34];
    v46 = v0[30];
    v47 = v0[31];
    v48 = v0[28];

    v49 = Logger.liteSession.unsafeMutableAddressor();
    (*(v47 + 16))(v45, v49, v46);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[34];
    v55 = v0[30];
    v54 = v0[31];
    if (v52)
    {
      v72 = v0[34];
      v57 = v0[27];
      v56 = v0[28];
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v73 = v59;
      *v58 = 136315138;
      *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v56, &v73);
      _os_log_impl(&dword_0, v50, v51, "Cannot send upgrade message from handle %s, got nil IDSURI", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);

      (*(v54 + 8))(v72, v55);
    }

    else
    {

      (*(v54 + 8))(v53, v55);
    }
  }

  else
  {
    v28 = v0[36];
    v29 = v0[33];
    v30 = v0[30];
    v31 = v0[31];
    v32 = v0[26];

    v33 = Logger.liteSession.unsafeMutableAddressor();
    (*(v31 + 16))(v29, v33, v30);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[33];
    v38 = v0[30];
    v39 = v0[31];
    if (v36)
    {
      v41 = v0[25];
      v40 = v0[26];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v73 = v43;
      *v42 = 136315138;
      *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v40, &v73);
      _os_log_impl(&dword_0, v34, v35, "Cannot send upgrade message to handle %s, got nil IDSURI", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    (*(v39 + 8))(v37, v38);
  }

  v64 = v0[34];
  v63 = v0[35];
  v66 = v0[32];
  v65 = v0[33];

  v67 = v0[1];

  return v67();
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 368) = v3;
  v4 = *(v1 + 304);
  v5 = *(v1 + 296);
  if (v3)
  {
    v6 = LiteMessageServiceSession.sendUpgradeMessage(to:from:);
  }

  else
  {
    v6 = LiteMessageServiceSession.sendUpgradeMessage(to:from:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{
  v1 = *(v0 + 360);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);

  v4 = *(v0 + 160);

  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);

  v9 = *(v0 + 8);

  return v9();
}

{
  v39 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 328);
  v6 = *(v0 + 288);
  v7 = *(v0 + 256);
  v8 = *(v0 + 240);

  swift_willThrow();

  v4(v7, v5, v8);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 368);
    v13 = *(v0 + 312);
    v12 = *(v0 + 320);
    v36 = *(v0 + 256);
    v37 = *(v0 + 352);
    v34 = *(v0 + 248);
    v35 = *(v0 + 240);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v18 = *(v0 + 184);
    v19 = Error.localizedDescription.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v38);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_0, v9, v10, "Could not send service update message: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    v37(v36, v35);
  }

  else
  {
    v22 = *(v0 + 368);
    v23 = *(v0 + 352);
    v24 = *(v0 + 312);
    v26 = *(v0 + 248);
    v25 = *(v0 + 256);
    v27 = *(v0 + 240);

    v23(v25, v27);
  }

  v29 = *(v0 + 272);
  v28 = *(v0 + 280);
  v31 = *(v0 + 256);
  v30 = *(v0 + 264);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t LiteMessageServiceSession.sendDowngradeMessageIfNecessary(to:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = type metadata accessor for Logger();
  v5[30] = v6;
  v7 = *(v6 - 8);
  v5[31] = v7;
  v8 = *(v7 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[37] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[38] = v10;
  v5[39] = v9;

  return _swift_task_switch(LiteMessageServiceSession.sendDowngradeMessageIfNecessary(to:from:), v10, v9);
}

uint64_t LiteMessageServiceSession.sendDowngradeMessageIfNecessary(to:from:)()
{
  v88 = v0;
  if (*(specialized LiteMessageServiceSession.downgradeRequestedHandles.getter() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v0[25], v0[26]);
    if (v1)
    {
      v2 = v0[37];
      v3 = v0[33];
      v4 = v0[30];
      v5 = v0[31];

      v6 = Logger.liteSession.unsafeMutableAddressor();
      (*(v5 + 16))(v3, v6, v4);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.info.getter();
      v9 = os_log_type_enabled(v7, v8);
      v10 = v0[33];
      v11 = v0[30];
      v12 = v0[31];
      if (v9)
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_0, v7, v8, "Handle already downgraded. No need to redowngrade.", v13, 2u);
      }

      (*(v12 + 8))(v10, v11);
      goto LABEL_20;
    }
  }

  v15 = v0[25];
  v14 = v0[26];

  v16 = objc_allocWithZone(IDSURI);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithUnprefixedURI:v17];
  v0[40] = v18;

  if (!v18)
  {
    v41 = v0[37];
    v42 = v0[34];
    v43 = v0[30];
    v44 = v0[31];
    v45 = v0[26];

    v46 = Logger.liteSession.unsafeMutableAddressor();
    (*(v44 + 16))(v42, v46, v43);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    v49 = os_log_type_enabled(v47, v48);
    v50 = v0[34];
    v51 = v0[30];
    v52 = v0[31];
    if (v49)
    {
      v54 = v0[25];
      v53 = v0[26];
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v87 = v56;
      *v55 = 136315138;
      *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v53, &v87);
      _os_log_impl(&dword_0, v47, v48, "Cannot send downgrade message to handle %s, got nil IDSURI", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
    }

    (*(v52 + 8))(v50, v51);
    goto LABEL_20;
  }

  v20 = v0[27];
  v19 = v0[28];
  v21 = objc_allocWithZone(IDSURI);
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 initWithUnprefixedURI:v22];
  v0[41] = v23;

  if (!v23)
  {
    v57 = v0[37];
    v58 = v0[35];
    v59 = v0[30];
    v60 = v0[31];
    v61 = v0[28];

    v62 = Logger.liteSession.unsafeMutableAddressor();
    (*(v60 + 16))(v58, v62, v59);

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    v65 = os_log_type_enabled(v63, v64);
    v66 = v0[35];
    v68 = v0[30];
    v67 = v0[31];
    if (v65)
    {
      v86 = v0[35];
      v70 = v0[27];
      v69 = v0[28];
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v87 = v72;
      *v71 = 136315138;
      *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v69, &v87);
      _os_log_impl(&dword_0, v63, v64, "Cannot send downgrade message from handle %s, got nil IDSURI", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);

      (*(v67 + 8))(v86, v68);
    }

    else
    {

      (*(v67 + 8))(v66, v68);
    }

LABEL_20:
    v77 = v0[35];
    v76 = v0[36];
    v79 = v0[33];
    v78 = v0[34];
    v80 = v0[32];

    v81 = v0[1];

    return v81();
  }

  v24 = v0[36];
  v25 = v0[30];
  v26 = v0[31];
  v27 = v0[28];
  v28 = v0[26];
  v29 = Logger.liteSession.unsafeMutableAddressor();
  v0[42] = v29;
  v30 = *(v26 + 16);
  v0[43] = v30;
  v0[44] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v30(v24, v29, v25);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v0[36];
  v35 = v0[30];
  v36 = v0[31];
  if (v33)
  {
    v83 = v0[27];
    v84 = v0[28];
    v85 = v0[36];
    v37 = v0[25];
    v38 = v0[26];
    v39 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v87);
    *(v39 + 12) = 2080;
    *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v87);
    _os_log_impl(&dword_0, v31, v32, "Sending downgrade message to %s from %s", v39, 0x16u);
    swift_arrayDestroy();

    v40 = *(v36 + 8);
    v40(v85, v35);
  }

  else
  {

    v40 = *(v36 + 8);
    v40(v34, v35);
  }

  v0[45] = v40;
  v73 = v0[29];
  v74 = LiteMessageServiceSession.offGridMessenger.getter();
  v0[46] = v74;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = LiteMessageServiceSession.sendDowngradeMessageIfNecessary(to:from:);
  v75 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo30IDSOffGridServiceUpdateMessageC_SSts5Error_pGMd, &_sSccySo30IDSOffGridServiceUpdateMessageC_SSts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridEncryptedMessage?, @unowned NSString?, @unowned NSError?) -> () with result type (IDSOffGridEncryptedMessage, String);
  v0[13] = &block_descriptor_4;
  v0[14] = v75;
  [v74 __im_sendServiceUpdateMessageWithPreferredService:1 recipientURI:v18 fromURI:v23 options:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 376) = v3;
  v4 = *(v1 + 312);
  v5 = *(v1 + 304);
  if (v3)
  {
    v6 = LiteMessageServiceSession.sendDowngradeMessageIfNecessary(to:from:);
  }

  else
  {
    v6 = LiteMessageServiceSession.sendDowngradeMessageIfNecessary(to:from:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{
  v1 = *(v0 + 368);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v4 = *(v0 + 296);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = *(v0 + 208);
  v7 = *(v0 + 216);
  v9 = *(v0 + 200);

  v10 = *(v0 + 160);

  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  [v6 sentDowngradeRequestToHandleID:v11 fromID:v12];

  v14 = *(v0 + 280);
  v13 = *(v0 + 288);
  v16 = *(v0 + 264);
  v15 = *(v0 + 272);
  v17 = *(v0 + 256);

  v18 = *(v0 + 8);

  return v18();
}

{
  v40 = v0;
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 336);
  v6 = *(v0 + 296);
  v7 = *(v0 + 256);
  v8 = *(v0 + 240);

  swift_willThrow();

  v4(v7, v5, v8);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 376);
    v13 = *(v0 + 320);
    v12 = *(v0 + 328);
    v37 = *(v0 + 256);
    v38 = *(v0 + 360);
    v35 = *(v0 + 248);
    v36 = *(v0 + 240);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v18 = *(v0 + 184);
    v19 = Error.localizedDescription.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v39);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_0, v9, v10, "Could not send service update message: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    v38(v37, v36);
  }

  else
  {
    v22 = *(v0 + 376);
    v23 = *(v0 + 360);
    v24 = *(v0 + 320);
    v26 = *(v0 + 248);
    v25 = *(v0 + 256);
    v27 = *(v0 + 240);

    v23(v25, v27);
  }

  v29 = *(v0 + 280);
  v28 = *(v0 + 288);
  v31 = *(v0 + 264);
  v30 = *(v0 + 272);
  v32 = *(v0 + 256);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_386A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in LiteMessageServiceSession.sendUpgradeMessagesIfNeeded()()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in LiteMessageServiceSession.familyDidChange();

  return closure #1 in LiteMessageServiceSession.sendUpgradeMessagesIfNeeded()(v3, v4, v5, v2);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v22 = *v6;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t specialized LiteMessageServiceSession.downgradeRequestedHandles.getter()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = [objc_opt_self() synchronousDatabase];

  v2 = String._bridgeToObjectiveC()();

  aBlock[4] = partial apply for closure #1 in LiteMessageServiceSession.downgradeRequestedHandles.getter;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?) -> ();
  aBlock[3] = &block_descriptor_10;
  v3 = _Block_copy(aBlock);

  [v1 fetchDataForKey:v2 completionHandler:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = v4;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);

  return v6;
}

uint64_t specialized LiteMessageServiceSession.downgradeRequestedHandles.setter()
{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = 0;
  v2 = [v0 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v12];

  v3 = v12;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = [objc_opt_self() synchronousDatabase];
    v8 = Data._bridgeToObjectiveC()().super.isa;

    v9 = String._bridgeToObjectiveC()();

    [v7 storeData:v8 forKey:v9];
    swift_unknownObjectRelease();

    return outlined consume of Data._Representation(v4, v6);
  }

  else
  {
    v11 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t specialized LiteMessageServiceSession.sentDowngradeRequest(toHandleID:fromID:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Logger.liteSession.unsafeMutableAddressor();
  (*(v9 + 16))(v12, v13, v8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = a3;
    v17 = a1;
    v18 = v16;
    v23 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, a2, &v23);
    *(v18 + 12) = 2080;
    *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, a4, &v23);
    _os_log_impl(&dword_0, v14, v15, "Noting chat %s was downgraded for fromID %s", v18, 0x16u);
    swift_arrayDestroy();

    a1 = v17;
    a3 = v22;
  }

  (*(v9 + 8))(v12, v8);
  v19 = specialized LiteMessageServiceSession.downgradeRequestedHandles.getter();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v19;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a4, a1, a2, isUniquelyReferenced_nonNull_native);

  return specialized LiteMessageServiceSession.downgradeRequestedHandles.setter();
}

uint64_t sub_39448()
{

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in LiteMessageServiceSession.downgradeRequestedHandles.getter(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    v14 = v2;
    v15 = v3;
    v16 = v4;
    v5 = v2;
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_53380;
    *(v8 + 32) = type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSDictionary, NSDictionary_ptr);
    *(v8 + 40) = type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
    outlined copy of Data._Representation(a1, a2);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
    outlined consume of Data?(a1, a2);

    if (v13)
    {
      if (swift_dynamicCast())
      {
        v9 = v11;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      outlined destroy of TaskPriority?(v12, &_sypSgMd, &_sypSgMR);
      v9 = 0;
    }

    swift_beginAccess();
    v10 = *(v5 + 16);
    *(v5 + 16) = v9;
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return outlined init with copy of Any(a2 + 32, a1 + 32);
}

uint64_t sub_39648()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t LiteMessageContext.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LiteMessageContext.unencryptedIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t LiteMessageContext.senderID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t LiteMessageContext.recipientID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t LiteMessageContext.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiteMessageContext() + 36);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LiteMessageContext()
{
  result = type metadata singleton initialization cache for LiteMessageContext;
  if (!type metadata singleton initialization cache for LiteMessageContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LiteMessageContext.init(identifier:unencryptedIdentifier:senderID:recipientID:isFromMe:date:sentOrReceivedOnSatellite:preferredService:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  v15 = type metadata accessor for LiteMessageContext();
  v16 = v15[9];
  v17 = type metadata accessor for Date();
  result = (*(*(v17 - 8) + 32))(a9 + v16, a11, v17);
  *(a9 + v15[10]) = a12;
  *(a9 + v15[11]) = a13;
  *(a9 + v15[12]) = a14;
  return result;
}

uint64_t sub_3995C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_39A1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for LiteMessageContext()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for IDSOffGridPreferredServiceType(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for IDSCommandID(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t LiteMessageAcknowledgement.init(associatedMessageType:)(uint64_t a1)
{
  if (a1 <= 2999)
  {
    if (a1 <= 2002)
    {
      switch(a1)
      {
        case 2000:
          return 0;
        case 2001:
          return 1;
        case 2002:
          return 2;
      }
    }

    else
    {
      if (a1 <= 2004)
      {
        if (a1 == 2003)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }

      if (a1 == 2005)
      {
        return 5;
      }

      if (a1 == 2006)
      {
        return 6;
      }
    }

    return 14;
  }

  if (a1 <= 3002)
  {
    if (a1 == 3000)
    {
      return 7;
    }

    else if (a1 == 3001)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }

  else
  {
    if (a1 > 3004)
    {
      if (a1 == 3005)
      {
        return 12;
      }

      if (a1 == 3006)
      {
        return 13;
      }

      return 14;
    }

    if (a1 == 3003)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LiteMessageAcknowledgement@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LiteMessageAcknowledgement.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t specialized LiteMessageAcknowledgement.init(rawValue:)(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LiteMessageAcknowledgement and conformance LiteMessageAcknowledgement()
{
  result = lazy protocol witness table cache variable for type LiteMessageAcknowledgement and conformance LiteMessageAcknowledgement;
  if (!lazy protocol witness table cache variable for type LiteMessageAcknowledgement and conformance LiteMessageAcknowledgement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageAcknowledgement and conformance LiteMessageAcknowledgement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiteMessageAcknowledgement and conformance LiteMessageAcknowledgement;
  if (!lazy protocol witness table cache variable for type LiteMessageAcknowledgement and conformance LiteMessageAcknowledgement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageAcknowledgement and conformance LiteMessageAcknowledgement);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiteMessageAcknowledgement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteMessageAcknowledgement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t LiteMessageEncodingError.errorDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {

    _StringGuts.grow(_:)(29);

    v3 = 0xD00000000000001BLL;
    goto LABEL_5;
  }

  if (a3 == 1)
  {

    _StringGuts.grow(_:)(35);

    v3 = 0xD000000000000021;
LABEL_5:
    v6 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v4._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v4);

    return v6;
  }

  if (a1 | a2)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t IMMessageItem.liteData.getter()
{
  v5 = v1;
  v6 = v0;
  v82 = xmmword_54310;
  v83 = 0;
  if ([v0 isAssociatedMessageItem] && LiteMessageAcknowledgement.init(associatedMessageType:)(objc_msgSend(v0, "associatedMessageType")) != 14)
  {
    v7 = &dword_0 + 2;
  }

  else
  {
    v7 = [v0 isReply];
  }

  if (LiteMessageType.isCoreType.getter(v7))
  {
    v4 = LiteMessageServiceSession.PendingSMSMessage.init(guid:fallbackHash:)(v7, 0, 0, v8);
    v3 = v9;
    v2 = v10;
    if (v1)
    {
      return outlined consume of Data._Representation(0, 0xC000000000000000);
    }
  }

  else
  {
    lazy protocol witness table accessor for type LiteMessageEncodingError and conformance LiteMessageEncodingError();
    v5 = swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    swift_willThrow();
    if (v5)
    {
      return outlined consume of Data._Representation(0, 0xC000000000000000);
    }
  }

  if ([v6 isAssociatedMessageItem] && LiteMessageAcknowledgement.init(associatedMessageType:)(objc_msgSend(v6, "associatedMessageType")) != 14)
  {
    v13 = 2;
  }

  else
  {
    v13 = [v6 isReply];
  }

  v14 = [v6 expressiveSendStyleID];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19.value._countAndFlagsBits = v16;
  v19.value._object = v18;
  LOBYTE(v20) = LiteMessageEffect.init(expressiveSendStyleID:)(v19);
  v21 = v20;
  if (!v13)
  {
    v38 = [v6 plainBody];
    if (!v38)
    {
      v39 = [v6 body];
      if (!v39)
      {
        v42 = 0;
        v44 = 0xE000000000000000;
        goto LABEL_29;
      }

      v41 = v39;
      v38 = [v39 string];
    }

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

LABEL_29:
    v79 = &type metadata for LiteTextMessageContent;
    v80 = &protocol witness table for LiteTextMessageContent;
    associatedMessageGUID._object = LiteMessageServiceSession.PendingSMSMessage.init(guid:fallbackHash:)(v42, v44, v21, v40);
    v77 = v45;
    v78 = v46;
    goto LABEL_49;
  }

  if (v13 == 1)
  {
    v22 = [v6 threadIdentifier];
    if (v22)
    {
      v23 = v22;
      v24 = IMMessageThreadIdentifierGetOriginatorGUID();

      if (v24)
      {
        v90 = v4;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = [v6 plainBody];
        if (!v28)
        {
          v29 = [v6 body];
          if (!v29)
          {
            v31 = 0;
            v33 = 0xE000000000000000;
            goto LABEL_24;
          }

          v30 = v29;
          v28 = [v29 string];
        }

        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

LABEL_24:
        v34._countAndFlagsBits = v31;
        v34._object = v33;
        v35._countAndFlagsBits = v25;
        v35._object = v27;
        LiteReplyMessageContent.init(text:threadOriginatorGUID:effect:)(&v88, v34, v35, v21);
        v79 = &type metadata for LiteReplyMessageContent;
        v80 = &protocol witness table for LiteReplyMessageContent;
        v36 = swift_allocObject();
        associatedMessageGUID._object = v36;
        threadOriginatorGUID = v88.threadOriginatorGUID;
        *(v36 + 16) = v88.text;
        *(v36 + 32) = threadOriginatorGUID;
        *(v36 + 48) = v88.effect.value;
        LOBYTE(v4) = v90;
        goto LABEL_49;
      }
    }

    v54 = [v6 threadIdentifier];
    if (v54)
    {
      v55 = v54;
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      lazy protocol witness table accessor for type LiteMessageEncodingError and conformance LiteMessageEncodingError();
      v5 = swift_allocError();
      *v59 = v56;
      *(v59 + 8) = v58;
    }

    else
    {
      lazy protocol witness table accessor for type LiteMessageEncodingError and conformance LiteMessageEncodingError();
      v5 = swift_allocError();
      *v59 = 0;
      *(v59 + 8) = 0;
    }

    *(v59 + 16) = 0;
    goto LABEL_48;
  }

  v47 = [v6 associatedMessageGUID];
  v48 = IMAssociatedMessageDecodeGUID();

  if (!v48)
  {
    v60 = [v6 associatedMessageGUID];
    if (v60)
    {
      v61 = v60;
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      lazy protocol witness table accessor for type LiteMessageEncodingError and conformance LiteMessageEncodingError();
      v5 = swift_allocError();
      *v65 = v62;
      *(v65 + 8) = v64;
    }

    else
    {
      lazy protocol witness table accessor for type LiteMessageEncodingError and conformance LiteMessageEncodingError();
      v5 = swift_allocError();
      *v65 = 0;
      *(v65 + 8) = 0;
    }

    *(v65 + 16) = 1;
    goto LABEL_48;
  }

  v90 = v4;
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  v52 = LiteMessageAcknowledgement.init(associatedMessageType:)([v6 associatedMessageType]);
  if (v52 != iMessageLite_LiteMessageAcknowledgement_unknownDefault)
  {
    v66 = v52;
    associatedMessageGUID._countAndFlagsBits = v49;
    v87 = v52;
    v86 = 6;
    lazy protocol witness table accessor for type LiteMessageAcknowledgement and conformance LiteMessageAcknowledgement();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v85 == v84)
    {
      v67 = [v6 associatedMessageEmoji];
      if (v67)
      {
        v68 = v67;
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

LABEL_44:
        v72._countAndFlagsBits = associatedMessageGUID._countAndFlagsBits;
        v72._object = v51;
        v73.value._countAndFlagsBits = v69;
        v73.value._object = v71;
        LiteAcknowledgmentMessageContent.init(associatedMessageType:associatedMessageGUID:emoji:)(&v89, v66, v72, v73);
        v79 = &type metadata for LiteAcknowledgmentMessageContent;
        v80 = &protocol witness table for LiteAcknowledgmentMessageContent;
        v74 = swift_allocObject();
        associatedMessageGUID._object = v74;
        v75 = *&v89.associatedMessageGUID._object;
        *(v74 + 16) = *&v89.associatedMessageType;
        *(v74 + 32) = v75;
        *(v74 + 48) = v89.emoji.value._object;
        LOBYTE(v4) = v90;
        goto LABEL_49;
      }
    }

    else
    {
      v87 = v66;
      v86 = 13;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
    }

    v69 = 0;
    v71 = 0;
    goto LABEL_44;
  }

  lazy protocol witness table accessor for type LiteMessageEncodingError and conformance LiteMessageEncodingError();
  v5 = swift_allocError();
  *v53 = xmmword_537F0;
  *(v53 + 16) = 2;
  LOBYTE(v4) = v90;
LABEL_48:
  swift_willThrow();
LABEL_49:
  if (v5)
  {
    outlined consume of Data._Representation(v82, *(&v82 + 1));
  }

  else
  {
    LiteMessage.init(header:content:)(v4, v3, v2, &associatedMessageGUID._object, v81);
    LiteMessage.append(to:)(&v82);
    outlined destroy of LiteMessage(v81);
    return v82;
  }
}

uint64_t IMMessageItem.liteAssociatedMessageType.getter()
{
  v1 = [v0 associatedMessageType];

  return LiteMessageAcknowledgement.init(associatedMessageType:)(v1);
}

unint64_t lazy protocol witness table accessor for type LiteMessageEncodingError and conformance LiteMessageEncodingError()
{
  result = lazy protocol witness table cache variable for type LiteMessageEncodingError and conformance LiteMessageEncodingError;
  if (!lazy protocol witness table cache variable for type LiteMessageEncodingError and conformance LiteMessageEncodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageEncodingError and conformance LiteMessageEncodingError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12iMessageLite0bA13EncodingErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_3A85C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3A89C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 49, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BitCollection.appendChatIdentifier(_:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  v2 = String._bridgeToObjectiveC()();
  IsPhoneNumber = IMStringIsPhoneNumber();

  BitCollection.appendLeastSignificantBits(from:count:)(IsPhoneNumber, 1u);
  if (IsPhoneNumber)
  {
    lazy protocol witness table accessor for type String and conformance String();
    Collection<>.trimmingPrefix<A>(_:)();
    if (!((v13 ^ v12) >> 14))
    {

LABEL_6:
      lazy protocol witness table accessor for type BitCollection.LiteRelayEncodingError and conformance BitCollection.LiteRelayEncodingError();
      swift_allocError();
      swift_willThrow();
      return;
    }

    v4 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5s6UInt64VSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5i9VGXEfU_s6L7V_SsTG5SiTf1cn_n(v12, v13, v14, v15, 10);
    if ((v5 & 0x100) != 0)
    {
      v4 = specialized _parseInteger<A, B>(ascii:radix:)(v12, v13, v14, v15, 10);
    }

    v6 = v4;
    v7 = v5;

    if (v7)
    {
      goto LABEL_6;
    }

    v9._countAndFlagsBits = 43;
    v9._object = 0xE100000000000000;
    v10 = String.hasPrefix(_:)(v9);
    BitCollection.appendLeastSignificantBits(from:count:)(v10, 1u);
    do
    {
      BitCollection.appendLeastSignificantBits(from:count:)(v6 & 0x7F | ((v6 > 0x7F) << 7), 8u);
      v11 = v6 >= 0x80;
      v6 >>= 7;
    }

    while (v11);
  }

  else
  {
    v8._countAndFlagsBits = countAndFlagsBits;
    String.liteEscapedText.getter();
    BitCollection.appendAsCompressedBytes(_:)(v8);
  }
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5s6UInt64VSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5i9VGXEfU_s6L7V_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5s6UInt64VSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5h9VGXEfU_s6L7V_SsTG5SiTf1nnc_nTf4xnn_n(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5s6UInt64VSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5h9VGXEfU_s6L7V_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type BitCollection.LiteRelayEncodingError and conformance BitCollection.LiteRelayEncodingError()
{
  result = lazy protocol witness table cache variable for type BitCollection.LiteRelayEncodingError and conformance BitCollection.LiteRelayEncodingError;
  if (!lazy protocol witness table cache variable for type BitCollection.LiteRelayEncodingError and conformance BitCollection.LiteRelayEncodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitCollection.LiteRelayEncodingError and conformance BitCollection.LiteRelayEncodingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BitCollection.LiteRelayEncodingError and conformance BitCollection.LiteRelayEncodingError;
  if (!lazy protocol witness table cache variable for type BitCollection.LiteRelayEncodingError and conformance BitCollection.LiteRelayEncodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BitCollection.LiteRelayEncodingError and conformance BitCollection.LiteRelayEncodingError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t IMMessageItem.smsLiteRelayData(chatIdentifier:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v51 = xmmword_54310;
  v52 = 0;
  IMMessageItem.smsLiteRelayHeader.getter(v53);
  if (v3)
  {
    return outlined consume of Data._Representation(0, 0xC000000000000000);
  }

  v8 = 0;
  if ((IMMessageItem.smsLiteRelayMessageType.getter() & 1) == 0)
  {
    v17 = [v2 plainBody];
    if (!v17)
    {
      v18 = [v2 body];
      if (!v18)
      {
        v20 = 0;
        v22 = 0xE000000000000000;
        goto LABEL_11;
      }

      v19 = v18;
      v17 = [v18 string];
    }

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

LABEL_11:

    v23 = LiteMessageServiceSession.PendingSMSMessage.init(guid:fallbackHash:)(v20, v22, a1, a2);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v48 = &type metadata for LiteRelayTextMessageContent;
    v49 = &protocol witness table for LiteRelayTextMessageContent;
    v30 = swift_allocObject();
    *&v47 = v30;
    v30[2] = v23;
    v30[3] = v25;
    v30[4] = v27;
    v30[5] = v29;
    goto LABEL_24;
  }

  v9 = [v2 associatedMessageGUID];
  v10 = IMAssociatedMessageDecodeGUID();

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = IMMessageItem.liteAssociatedMessageType.getter();
    if (v14 != iMessageLite_LiteMessageAcknowledgement_unknownDefault)
    {
      v36 = v14;
      v63 = v11;
      v61 = v14;
      v60 = 6;
      lazy protocol witness table accessor for type LiteMessageAcknowledgement and conformance LiteMessageAcknowledgement();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if ((v59 == v58 || (v61 = v36, v60 = 13, dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v59 == v58)) && (v37 = [v4 associatedMessageEmoji]) != 0)
      {
        v38 = v37;
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0;
      }

      v42._countAndFlagsBits = v63;
      v42._object = v13;
      v43.value._countAndFlagsBits = v39;
      v43.value._object = v41;
      v44._countAndFlagsBits = a1;
      v44._object = a2;
      LiteRelayAcknowledgmentMessageContent.init(associatedMessageType:associatedMessageGUID:emoji:chatIdentifier:)(&v62, v36, v42, v43, v44);
      v48 = &type metadata for LiteRelayAcknowledgmentMessageContent;
      v49 = &protocol witness table for LiteRelayAcknowledgmentMessageContent;
      v45 = swift_allocObject();
      *&v47 = v45;
      v46 = *&v62.associatedMessageGUID._object;
      *(v45 + 16) = *&v62.associatedMessageType;
      *(v45 + 32) = v46;
      *(v45 + 48) = *&v62.emoji.value._object;
      *(v45 + 64) = v62.chatIdentifier._object;
      goto LABEL_24;
    }

    lazy protocol witness table accessor for type LiteMessageEncodingError and conformance LiteMessageEncodingError();
    v8 = swift_allocError();
    *v15 = xmmword_537F0;
    v16 = 2;
  }

  else
  {
    v31 = [v4 associatedMessageGUID];
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      lazy protocol witness table accessor for type LiteMessageEncodingError and conformance LiteMessageEncodingError();
      v8 = swift_allocError();
      *v15 = v33;
      *(v15 + 8) = v35;
    }

    else
    {
      lazy protocol witness table accessor for type LiteMessageEncodingError and conformance LiteMessageEncodingError();
      v8 = swift_allocError();
      *v15 = 0;
      *(v15 + 8) = 0;
    }

    v16 = 1;
  }

  *(v15 + 16) = v16;
  swift_willThrow();
LABEL_24:
  if (v8)
  {
    outlined consume of Data._Representation(v51, *(&v51 + 1));
    v57 = v54;
    outlined destroy of String?(&v57);
    v56 = v55;
    return outlined destroy of String?(&v56);
  }

  else
  {
    LiteRelayMessage.init(header:content:)(v53, &v47, v50);
    LiteRelayMessage.append(to:)(&v51);
    outlined destroy of LiteRelayMessage(v50);
    return v51;
  }
}

void IMMessageItem.smsLiteRelayHeader.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = IMMessageItem.smsLiteRelayMessageType.getter();
  if (!v1)
  {
    v9 = v8 & 1;
    if (static BitCollection.LiteRelayEncodingError.__derived_enum_equals(_:_:)())
    {
      LiteRelayMessageHeader.init(messageType:chatIdentifier:backwardsCompatibilityText:)(&v21, v9, 0, 0);
      v10 = *&v21.chatIdentifier.value._object;
      *a1 = *&v21.messageType;
      *(a1 + 16) = v10;
      *(a1 + 32) = v21.backwardsCompatibilityText.value._object;
    }

    else
    {
      v11 = Logger.liteRelaySession.unsafeMutableAddressor();
      (*(v4 + 16))(v7, v11, v3);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v22 = v15;
        *v14 = 136315138;
        v20[7] = v9;
        v16 = String.init<A>(describing:)();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v22);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_0, v12, v13, "Header: Unsupported message type: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
      }

      (*(v4 + 8))(v7, v3);
      lazy protocol witness table accessor for type LiteMessageEncodingError and conformance LiteMessageEncodingError();
      swift_allocError();
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 2;
      swift_willThrow();
    }
  }
}

uint64_t outlined destroy of String?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id IMMessageItem.smsLiteRelayMessageType.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 isAssociatedMessageItem] && IMMessageItem.liteAssociatedMessageType.getter() != 14)
  {
    return &dword_0 + 1;
  }

  result = [v0 isReply];
  if (result)
  {
    v7 = Logger.liteRelaySession.unsafeMutableAddressor();
    (*(v2 + 16))(v5, v7, v1);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "This is a reply, but we don't support that yet. Throw error.", v10, 2u);
    }

    (*(v2 + 8))(v5, v1);
    lazy protocol witness table accessor for type LiteMessageEncodingError and conformance LiteMessageEncodingError();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_3C4BC()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_3C504()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t LiteRelayMessage.header.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
}

uint64_t LiteRelayMessage.append(to:)(uint64_t a1)
{
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  result = protocol witness for BitPackable.append(to:) in conformance LiteRelayMessageHeader();
  if (!v2)
  {
    v5 = *(v1 + 8);
    v6 = *(v1 + 9);
    __swift_project_boxed_opaque_existential_0(v1 + 5, v5);
    return (*(*(v6 + 8) + 8))(a1, v5);
  }

  return result;
}

uint64_t LiteRelayMessage.init(header:content:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(a1 + 32);
  return outlined init with take of LiteMessageContent(a2, a3 + 40);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LiteRelayMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for LiteRelayMessage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void LiteRelayTextMessageContent.append(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7._countAndFlagsBits = a2;
  String.liteEscapedText.getter();
  BitCollection.appendAsCompressedBytes(_:)(v7);

  if (!v8)
  {
    v9._countAndFlagsBits = a4;
    v9._object = a5;
    BitCollection.appendChatIdentifier(_:)(v9);
  }
}

void protocol witness for BitPackable.append(to:) in conformance LiteRelayTextMessageContent()
{
  v1._countAndFlagsBits = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  String.liteEscapedText.getter();
  BitCollection.appendAsCompressedBytes(_:)(v1);

  if (!v5)
  {
    v6._countAndFlagsBits = v3;
    v6._object = v4;
    BitCollection.appendChatIdentifier(_:)(v6);
  }
}

uint64_t LiteRelayMessageHeader.chatIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t LiteRelayMessageHeader.backwardsCompatibilityText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t LiteRelayAcknowledgmentMessageContent.chatIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

unint64_t lazy protocol witness table accessor for type LiteMessageContentError and conformance LiteMessageContentError()
{
  result = lazy protocol witness table cache variable for type LiteMessageContentError and conformance LiteMessageContentError;
  if (!lazy protocol witness table cache variable for type LiteMessageContentError and conformance LiteMessageContentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageContentError and conformance LiteMessageContentError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiteMessageContentError and conformance LiteMessageContentError;
  if (!lazy protocol witness table cache variable for type LiteMessageContentError and conformance LiteMessageContentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteMessageContentError and conformance LiteMessageContentError);
  }

  return result;
}

void __swiftcall LiteRelayAcknowledgmentMessageContent.init(associatedMessageType:associatedMessageGUID:emoji:chatIdentifier:)(iMessageLite::LiteRelayAcknowledgmentMessageContent *__return_ptr retstr, iMessageLite::LiteMessageAcknowledgement associatedMessageType, Swift::String associatedMessageGUID, Swift::String_optional emoji, Swift::String chatIdentifier)
{
  retstr->associatedMessageType = associatedMessageType;
  retstr->associatedMessageGUID = associatedMessageGUID;
  retstr->emoji = emoji;
  retstr->chatIdentifier = chatIdentifier;
}

unint64_t lazy protocol witness table accessor for type LiteRelayEncodingError and conformance LiteRelayEncodingError()
{
  result = lazy protocol witness table cache variable for type LiteRelayEncodingError and conformance LiteRelayEncodingError;
  if (!lazy protocol witness table cache variable for type LiteRelayEncodingError and conformance LiteRelayEncodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteRelayEncodingError and conformance LiteRelayEncodingError);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LiteRelayAcknowledgmentMessageContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for LiteRelayAcknowledgmentMessageContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LiteRelayMessageHeader.append(to:)()
{
  result = LiteRelayMessageType.rawValue.getter(*v0);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    do
    {
      if (v2 >= 8)
      {
        v3 = v2 & 7 | 8;
      }

      else
      {
        v3 = v2 & 7;
      }

      BitCollection.appendLeastSignificantBits(from:count:)(v3, 4u);
      v4 = v2 > 7;
      v2 >>= 3;
    }

    while (v4);
    result = static BitCollection.LiteRelayEncodingError.__derived_enum_equals(_:_:)();
    if ((result & 1) == 0)
    {
      if (*(v0 + 16))
      {
        v5 = *(v0 + 8);
        v6 = *(v0 + 16);
      }

      else
      {
        v5 = 0;
        v6 = 0xE000000000000000;
      }

      v7._countAndFlagsBits = v5;
      v7._object = v6;
      BitCollection.appendChatIdentifier(_:)(v7);

      if (!v8)
      {
        if (*(v0 + 32))
        {
          v9 = *(v0 + 24);
          v10 = *(v0 + 32);
        }

        else
        {
          v9 = 0;
          v10 = 0xE000000000000000;
        }

        v11._countAndFlagsBits = v9;
        v11._object = v10;
        BitCollection.appendAsCompressedBytes(_:)(v11);
      }
    }
  }

  return result;
}

void __swiftcall LiteRelayMessageHeader.init(messageType:chatIdentifier:backwardsCompatibilityText:)(iMessageLite::LiteRelayMessageHeader *__return_ptr retstr, iMessageLite::LiteRelayMessageType messageType, Swift::String_optional chatIdentifier, Swift::String_optional backwardsCompatibilityText)
{
  retstr->messageType = messageType & 1;
  retstr->chatIdentifier = chatIdentifier;
  retstr->backwardsCompatibilityText = backwardsCompatibilityText;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LiteRelayMessageHeader(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for LiteRelayMessageHeader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

iMessageLite::LiteRelayMessageType_optional __swiftcall LiteRelayMessageType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = iMessageLite_LiteRelayMessageType_acknowledgment;
  }

  else
  {
    v1.value = iMessageLite_LiteRelayMessageType_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance LiteRelayMessageType@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type LiteRelayMessageType and conformance LiteRelayMessageType()
{
  result = lazy protocol witness table cache variable for type LiteRelayMessageType and conformance LiteRelayMessageType;
  if (!lazy protocol witness table cache variable for type LiteRelayMessageType and conformance LiteRelayMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteRelayMessageType and conformance LiteRelayMessageType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiteRelayMessageType(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteRelayMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void LiteTextMessageContent.append(to:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5._countAndFlagsBits = a2;
  String.liteEscapedText.getter();
  BitCollection.appendAsCompressedBytes(_:)(v5);
  if (v6)
  {
  }

  else
  {

    if (a4 != 13)
    {
      v7 = LiteMessageEffect.rawValue.getter(a4);
      if (v7 < 0)
      {
        __break(1u);
      }

      else
      {
        v8 = v7;
        do
        {
          if (v8 >= 8)
          {
            v9 = v8 & 7 | 8;
          }

          else
          {
            v9 = v8 & 7;
          }

          BitCollection.appendLeastSignificantBits(from:count:)(v9, 4u);
          v10 = v8 > 7;
          v8 >>= 3;
        }

        while (v10);
      }
    }
  }
}

void LiteReplyMessageContent.append(to:)()
{
  v1._countAndFlagsBits = *v0;
  v2 = *(v0 + 8);
  String.liteEscapedText.getter();
  BitCollection.appendAsCompressedBytes(_:)(v1);
  if (v3)
  {
  }

  else
  {

    BitCollection.append16UUIDBytes(_:)(*(v0 + 16));
    if (!v4)
    {
      v5 = *(v0 + 32);
      if (v5 != 13)
      {
        v6 = LiteMessageEffect.rawValue.getter(v5);
        if (v6 < 0)
        {
          __break(1u);
        }

        else
        {
          v7 = v6;
          do
          {
            if (v7 >= 8)
            {
              v8 = v7 & 7 | 8;
            }

            else
            {
              v8 = v7 & 7;
            }

            BitCollection.appendLeastSignificantBits(from:count:)(v8, 4u);
            v9 = v7 > 7;
            v7 >>= 3;
          }

          while (v9);
        }
      }
    }
  }
}

void __swiftcall LiteReplyMessageContent.init(text:threadOriginatorGUID:effect:)(iMessageLite::LiteReplyMessageContent *__return_ptr retstr, Swift::String text, Swift::String threadOriginatorGUID, iMessageLite::LiteMessageEffect_optional effect)
{
  retstr->text = text;
  retstr->threadOriginatorGUID = threadOriginatorGUID;
  retstr->effect = effect;
}

void __swiftcall LiteAcknowledgmentMessageContent.init(associatedMessageType:associatedMessageGUID:emoji:)(iMessageLite::LiteAcknowledgmentMessageContent *__return_ptr retstr, iMessageLite::LiteMessageAcknowledgement associatedMessageType, Swift::String associatedMessageGUID, Swift::String_optional emoji)
{
  retstr->associatedMessageType = associatedMessageType;
  retstr->associatedMessageGUID = associatedMessageGUID;
  retstr->emoji = emoji;
}

uint64_t LiteMultipackMessageContent.append(to:)(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v11 = a2 + 32;
    while (1)
    {
      v9 = xmmword_54310;
      v10 = 0;
      LiteMessage.append(to:)(&v9);
      v5 = v9;
      if (v2)
      {
        return outlined consume of Data._Representation(v9, *(&v9 + 1));
      }

      v6 = v10;
      result = BitCollection.endIndex.getter(v9, *(&v9 + 1), v10);
      if (result < 0)
      {
        break;
      }

      v7 = result;
      ++v4;
      do
      {
        BitCollection.appendLeastSignificantBits(from:count:)(v7 & 0x7F | ((v7 > 0x7F) << 7), 8u);
        v8 = v7 > 0x7F;
        v7 >>= 7;
      }

      while (v8);
      BitCollection.append(_:)(v5, *(&v5 + 1), v6);
      result = outlined consume of Data._Representation(v5, *(&v5 + 1));
      if (v4 == v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiteTextMessageContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for LiteTextMessageContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LiteReplyMessageContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for LiteReplyMessageContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiteAcknowledgmentMessageContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for LiteAcknowledgmentMessageContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LiteMessageServiceSession.encryptAndSendMessageItem(_:chatIdentifier:chatStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 400) = a4;
  *(v5 + 184) = a3;
  *(v5 + 192) = v4;
  *(v5 + 168) = a1;
  *(v5 + 176) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 208) = v7;
  v8 = *(v7 - 8);
  *(v5 + 216) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 240) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 248) = v11;
  *(v5 + 256) = v10;

  return _swift_task_switch(LiteMessageServiceSession.encryptAndSendMessageItem(_:chatIdentifier:chatStyle:), v11, v10);
}

uint64_t LiteMessageServiceSession.encryptAndSendMessageItem(_:chatIdentifier:chatStyle:)()
{
  v88 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 400);
  v4 = *(v0 + 176);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 chatForChatIdentifier:v5 style:v3 updatingAccount:1];
  *(v0 + 264) = v6;

  if (v6)
  {
    if ([v6 style] == 45)
    {
      v7 = *(v0 + 168);
      IMMessageItem.canSendAsLiteMessage.getter();
      if (v8)
      {
        v9 = IMDChat.participantURI.getter();
        *(v0 + 272) = v9;
        if (v9)
        {
          v10 = v9;
          v11 = *(v0 + 192);
          v12 = LiteMessageServiceSession.senderURI(for:)();
          *(v0 + 280) = v12;
          if (v12)
          {
            v13 = v12;
            v14 = *(v0 + 168);
            v15 = IMMessageItem.liteData.getter();
            *(v0 + 288) = v15;
            *(v0 + 296) = v16;
            v34 = *(v0 + 168);
            v35 = v15;
            log = v16;
            v36.super.isa = Data._bridgeToObjectiveC()().super.isa;
            v87[0] = 0x2D6574696CLL;
            v87[1] = 0xE500000000000000;
            v37 = [v34 guid];
            if (v37)
            {
              v38 = v37;
              v39 = *(v0 + 216);
              v79 = *(v0 + 232);
              v81 = *(v0 + 208);
              v83 = *(v0 + 168);
              v40 = objc_opt_self();
              v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v43 = v42;

              v44._countAndFlagsBits = v41;
              v44._object = v43;
              String.append(_:)(v44);

              v45._countAndFlagsBits = 0x617461642ELL;
              v45._object = 0xE500000000000000;
              String.append(_:)(v45);
              v46 = String._bridgeToObjectiveC()();

              [v40 writeDataPayloadToDisk:v36.super.isa fileName:v46];

              v47 = objc_allocWithZone(IDSOffGridMessage);
              v48 = v35;
              outlined copy of Data._Representation(v35, log);
              v49 = v13;
              v50 = v10;
              isa = Data._bridgeToObjectiveC()().super.isa;
              v78 = [v47 initWithMessage:isa senderURI:v49 recipientURI:v50];
              *(v0 + 304) = v78;

              outlined consume of Data._Representation(v48, log);
              v52 = Logger.liteSession.unsafeMutableAddressor();
              *(v0 + 312) = v52;
              v53 = *(v39 + 16);
              *(v0 + 320) = v53;
              *(v0 + 328) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
              v53(v79, v52, v81);
              v54 = v49;
              v55 = v50;
              v56 = v83;
              v57 = Logger.logObject.getter();
              v58 = static os_log_type_t.default.getter();
              if (!os_log_type_enabled(v57, v58))
              {
                v70 = *(v0 + 232);
                v71 = *(v0 + 208);
                v72 = *(v0 + 216);

                v69 = *(v72 + 8);
                v69(v70, v71);
LABEL_23:
                *(v0 + 336) = v69;
                v73 = *(v0 + 192);
                v74 = LiteMessageServiceSession.offGridMessenger.getter();
                *(v0 + 344) = v74;
                *(v0 + 16) = v0;
                *(v0 + 56) = v0 + 144;
                *(v0 + 24) = LiteMessageServiceSession.encryptAndSendMessageItem(_:chatIdentifier:chatStyle:);
                v75 = swift_continuation_init();
                *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo26IDSOffGridEncryptedMessageC_SSts5Error_pGMd, &_sSccySo26IDSOffGridEncryptedMessageC_SSts5Error_pGMR);
                *(v0 + 80) = _NSConcreteStackBlock;
                *(v0 + 88) = 1107296256;
                *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned IDSOffGridEncryptedMessage?, @unowned NSString?, @unowned NSError?) -> () with result type (IDSOffGridEncryptedMessage, String);
                *(v0 + 104) = &block_descriptor_7;
                *(v0 + 112) = v75;
                [v74 encryptOffGridMessage:v78 completion:v0 + 80];
                v37 = (v0 + 16);

                return _swift_continuation_await(v37);
              }

              v82 = v58;
              loga = v57;
              v59 = *(v0 + 168);
              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              v84 = swift_slowAlloc();
              v87[0] = v84;
              *v60 = 136315650;
              v62 = [v59 guid];

              if (v62)
              {
                v80 = *(v0 + 232);
                v76 = *(v0 + 216);
                v77 = *(v0 + 208);
                v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v65 = v64;

                v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, v87);

                *(v60 + 4) = v66;
                *(v60 + 12) = 2112;
                *(v60 + 14) = v54;
                *(v60 + 22) = 2112;
                *(v60 + 24) = v55;
                *v61 = v13;
                v61[1] = v10;
                v67 = v54;
                v68 = v55;
                _os_log_impl(&dword_0, loga, v82, "Encrypting message %s (senderURI: %@, recipientURI: %@", v60, 0x20u);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                swift_arrayDestroy();

                __swift_destroy_boxed_opaque_existential_0(v84);

                v69 = *(v76 + 8);
                v69(v80, v77);
                goto LABEL_23;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            return _swift_continuation_await(v37);
          }

          v32 = *(v0 + 240);

          lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
          swift_allocError();
          *v33 = xmmword_537F0;
          *(v33 + 16) = 768;
          swift_willThrow();

          goto LABEL_12;
        }

        v31 = *(v0 + 240);

        lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
        swift_allocError();
        *v23 = 0;
        *(v23 + 8) = 0;
LABEL_11:
        *(v23 + 16) = 768;
        swift_willThrow();
LABEL_12:

        goto LABEL_13;
      }

      v25 = *(v0 + 240);

      lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
      swift_allocError();
      v24 = xmmword_537E0;
    }

    else
    {
      v22 = *(v0 + 240);

      lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
      swift_allocError();
      v24 = xmmword_537D0;
    }

    *v23 = v24;
    goto LABEL_11;
  }

  v17 = *(v0 + 240);
  v18 = *(v0 + 400);
  v20 = *(v0 + 176);
  v19 = *(v0 + 184);

  lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
  swift_allocError();
  *v21 = v20;
  *(v21 + 8) = v19;
  *(v21 + 16) = v18;
  *(v21 + 17) = 0;
  swift_willThrow();

LABEL_13:
  v27 = *(v0 + 224);
  v26 = *(v0 + 232);
  v28 = *(v0 + 200);

  v29 = *(v0 + 8);

  return v29();
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 352) = v3;
  v4 = *(v1 + 256);
  v5 = *(v1 + 248);
  if (v3)
  {
    v6 = LiteMessageServiceSession.encryptAndSendMessageItem(_:chatIdentifier:chatStyle:);
  }

  else
  {
    v6 = LiteMessageServiceSession.encryptAndSendMessageItem(_:chatIdentifier:chatStyle:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = *(v2 + 256);
  v6 = *(v2 + 248);
  if (v0)
  {
    v7 = LiteMessageServiceSession.encryptAndSendMessageItem(_:chatIdentifier:chatStyle:);
  }

  else
  {
    v7 = LiteMessageServiceSession.encryptAndSendMessageItem(_:chatIdentifier:chatStyle:);
  }

  return _swift_task_switch(v7, v6, v5);
}

{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[37];
  v4 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[30];

  swift_willThrow();
  outlined consume of Data._Representation(v5, v3);

  v10 = v0[44];
  v12 = v0[28];
  v11 = v0[29];
  v13 = v0[25];

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[37];
  v5 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[30];

  outlined consume of Data._Representation(v6, v4);
  v11 = v0[49];
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[25];

  v15 = v0[1];

  return v15();
}

void LiteMessageServiceSession.encryptAndSendMessageItem(_:chatIdentifier:chatStyle:)()
{
  v77 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 200);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 160);
  *(v0 + 360) = v4;
  *(v0 + 368) = v5;

  UUID.init(uuidString:)();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    v9 = *(v0 + 296);
    v8 = *(v0 + 304);
    v11 = *(v0 + 280);
    v10 = *(v0 + 288);
    v12 = *(v0 + 272);
    v73 = *(v0 + 264);
    v13 = *(v0 + 240);
    v14 = *(v0 + 200);

    outlined destroy of UUID?(v14);
    lazy protocol witness table accessor for type LiteMessageSendError and conformance LiteMessageSendError();
    swift_allocError();
    *v15 = v3;
    *(v15 + 8) = v5;
    *(v15 + 16) = 256;
    swift_willThrow();

    outlined consume of Data._Representation(v10, v9);
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 200);

    v19 = *(v0 + 8);

    v19();
  }

  else
  {
    v20 = *(v0 + 320);
    v72 = v4;
    v74 = *(v0 + 328);
    v21 = *(v0 + 312);
    v22 = *(v0 + 224);
    v23 = *(v0 + 200);
    v24 = *(v0 + 208);
    v25 = *(v0 + 168);
    v71 = UUID.uuidString.getter();
    v27 = v26;
    *(v0 + 376) = v26;
    (*(v7 + 8))(v23, v6);
    v20(v22, v21, v24);
    v28 = v25;

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 168);
      v32 = swift_slowAlloc();
      v76[0] = swift_slowAlloc();
      *v32 = 136315394;
      v33 = [v31 guid];
      v34 = v27;

      if (!v33)
      {
        __break(1u);
        return;
      }

      v75 = *(v0 + 336);
      v68 = *(v0 + 216);
      v69 = *(v0 + 208);
      v70 = *(v0 + 224);
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v76);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2080;
      *(v32 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v34, v76);
      _os_log_impl(&dword_0, v29, v30, "Reassigning %s to %s", v32, 0x16u);
      swift_arrayDestroy();

      v75(v70, v69);
      v39 = v72;
    }

    else
    {
      v40 = *(v0 + 336);
      v42 = *(v0 + 216);
      v41 = *(v0 + 224);
      v43 = *(v0 + 208);

      v40(v41, v43);
      v39 = v72;
    }

    v44 = *(v0 + 280);
    v45 = *(v0 + 192);
    v46 = *(v0 + 168);
    LiteMessageServiceSession.removePreviousServiceOriginal(of:)(v46);
    v47 = [v46 guid];
    [v46 setFallbackHash:v47];

    v48 = String._bridgeToObjectiveC()();
    [v46 setGuid:v48];

    v49 = [v44 unprefixedURI];
    if (!v49)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = String._bridgeToObjectiveC()();
    }

    v50 = *(v0 + 280);
    v51 = *(v0 + 264);
    v52 = *(v0 + 192);
    v53 = *(v0 + 168);
    [v53 setDestinationCallerID:v49];

    [v53 setErrorCode:0];
    [v53 setIsPendingSatelliteSend:0];
    v54 = [v50 unprefixedURI];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58._countAndFlagsBits = v55;
    v58._object = v57;
    IMDChat.updateLastAddressedHandleWithMatchingSIM(to:)(v58);

    LiteMessageServiceSession.transportType.getter();
    v59 = LiteOutgoingMessageContext.topic.getter(0);
    v61 = v60;
    v63 = v62;
    v64 = swift_task_alloc();
    *(v0 + 384) = v64;
    *v64 = v0;
    v64[1] = LiteMessageServiceSession.encryptAndSendMessageItem(_:chatIdentifier:chatStyle:);
    v65 = *(v0 + 264);
    v66 = *(v0 + 192);
    v67 = *(v0 + 168);

    LiteMessageServiceSession.sendEncryptedMessage(_:to:item:context:)(v39, v65, v67, v59 & 1, v61, v63);
  }
}

{
  v1 = [*(v0 + 168) fallbackHash];
  if (v1)
  {
    v2 = v1;
    if ([*(v0 + 168) isSatelliteMessageRetry])
    {
      v3 = [objc_opt_self() sharedInstance];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 anySessionForServiceName:IMServiceNameiMessage];

        if (v5)
        {
          v6 = [*(v0 + 168) guid];
          if (v6)
          {
            v7 = v6;
            v9 = *(v0 + 368);
            v8 = *(v0 + 376);
            v10 = *(v0 + 280);
            v11 = *(v0 + 240);

            v12 = [v10 prefixedURI];
            if (!v12)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v12 = String._bridgeToObjectiveC()();
            }

            v13 = [*(v0 + 272) prefixedURI];
            if (!v13)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v13 = String._bridgeToObjectiveC()();
            }

            v15 = *(v0 + 288);
            v14 = *(v0 + 296);
            [v5 sendCrossServiceAssociationMessageWithReplacementGUID:v7 messageGUID:v2 callerID:v12 toID:v13];
            outlined consume of Data._Representation(v15, v14);

            goto LABEL_14;
          }

LABEL_19:

          __break(1u);
          return;
        }
      }

      else
      {

        __break(1u);
      }

      __break(1u);
      goto LABEL_19;
    }

    v20 = *(v0 + 368);
    v19 = *(v0 + 376);
    v22 = *(v0 + 288);
    v21 = *(v0 + 296);
    v23 = *(v0 + 240);

    outlined consume of Data._Representation(v22, v21);
  }

  else
  {
    v16 = *(v0 + 368);
    v17 = *(v0 + 376);
    v18 = *(v0 + 240);
    outlined consume of Data._Representation(*(v0 + 288), *(v0 + 296));
  }

LABEL_14:
  v24 = *(v0 + 304);
  v26 = *(v0 + 272);
  v25 = *(v0 + 280);
  v27 = *(v0 + 264);
  v28 = *(v0 + 224);
  v29 = *(v0 + 232);
  v30 = *(v0 + 200);

  v31 = *(v0 + 8);

  v31();
}

id LiteMessageServiceSession.senderURI(for:)()
{
  IMDChat.bestSendingHandle.getter();
  if (!v1)
  {
    v2 = [v0 account];
    v3 = [v2 loginID];

    if (!v3)
    {
      return 0;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4 = objc_allocWithZone(IDSURI);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithUnprefixedURI:v5];

  return v6;
}

void LiteMessageServiceSession.removePreviousServiceOriginal(of:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v70 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v70 - v13;
  __chkstk_darwin(v12);
  v16 = &v70 - v15;
  v17 = [a1 guid];
  if (!v17)
  {
    return;
  }

  v74 = v4;
  v18 = v17;
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v71 = objc_opt_self();
  v21 = [v71 sharedInstance];
  v22 = [v21 itemWithGUID:v18];

  if (!v22)
  {
    v28 = Logger.liteSession.unsafeMutableAddressor();
    v29 = v74;
    (*(v74 + 16))(v8, v28, v3);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v3;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v75 = v34;
      *v33 = 136315138;
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v20, &v75);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_0, v30, v31, "No existing item found for %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);

      (*(v29 + 8))(v8, v32);
    }

    else
    {

      (*(v29 + 8))(v8, v3);
    }

    return;
  }

  v72 = v3;
  v23 = [v22 service];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v36 = [v1 service];
  v37 = [v36 internalName];

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  if (v27)
  {
    if (v25 == v38 && v27 == v40)
    {

LABEL_14:
      v42 = Logger.liteSession.unsafeMutableAddressor();
      v43 = v74;
      v44 = v72;
      (*(v74 + 16))(v11, v42, v72);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v75 = v48;
        *v47 = 136315138;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v20, &v75);

        *(v47 + 4) = v49;
        _os_log_impl(&dword_0, v45, v46, "Existing item for %s is already iMessage Lite", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
      }

      else
      {
      }

      (*(v43 + 8))(v11, v44);
      return;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v50 = v22;
  v51 = [v22 isFromMe];
  v52 = Logger.liteSession.unsafeMutableAddressor();
  v53 = *(v74 + 16);
  if (v51)
  {
    v54 = v72;
    v53(v16, v52, v72);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v75 = v58;
      *v57 = 136315138;
      v59 = v73;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v20, &v75);
      _os_log_impl(&dword_0, v55, v56, "Removing previous service record for %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      v50 = v22;

      (*(v74 + 8))(v16, v54);
    }

    else
    {

      (*(v74 + 8))(v16, v54);
      v59 = v73;
    }

    v66 = [v71 sharedInstance];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_53390;
    *(v67 + 56) = &type metadata for String;
    *(v67 + 32) = v59;
    *(v67 + 40) = v20;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v69 = [v66 deleteMessageGUIDs:isa];
  }

  else
  {
    v60 = v72;
    v53(v14, v52, v72);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v75 = v64;
      *v63 = 136315138;
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v20, &v75);

      *(v63 + 4) = v65;
      _os_log_impl(&dword_0, v61, v62, "Existing item for %s is not from me", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
    }

    else
    {
    }

    (*(v74 + 8))(v14, v60);
  }
}

uint64_t LiteMessageServiceSession.sendEncryptedMessage(_:to:item:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 164) = a4;
  *(v7 + 48) = a3;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = type metadata accessor for Logger();
  *(v7 + 80) = v8;
  v9 = *(v8 - 8);
  *(v7 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 104) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 112) = v12;
  *(v7 + 120) = v11;

  return _swift_task_switch(LiteMessageServiceSession.sendEncryptedMessage(_:to:item:context:), v12, v11);
}