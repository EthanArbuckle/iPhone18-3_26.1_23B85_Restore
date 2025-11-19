Swift::Void __swiftcall PasswordViewController.loadView()()
{
  v39.receiver = v0;
  v39.super_class = type metadata accessor for PasswordViewController();
  objc_msgSendSuper2(&v39, sel_loadView);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setTranslatesAutoresizingMaskIntoConstraints_];
    v3 = objc_opt_self();
    v4 = [v3 secondarySystemBackgroundColor];
    [v2 setBackgroundColor_];

    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v40._object = 0x80000001D4088C50;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7._countAndFlagsBits = 0xD000000000000024;
    v7._object = 0x80000001D4088C20;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0xD000000000000019;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, paperKitBundle, v8, v40)._countAndFlagsBits;
    v10 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

    [v5 setText_];

    v11 = [v3 secondaryLabelColor];
    [v5 setTextColor_];

    v12 = PasswordViewController.textField.getter();
    [v2 addSubview_];
    v13 = v12;
    [v2 addSubview_];
    v14 = [v13 bottomAnchor];
    v15 = [v2 centerYAnchor];
    v37 = [v14 constraintEqualToAnchor_];

    LODWORD(v16) = 1144750080;
    [v37 setPriority_];
    v17 = [v13 bottomAnchor];

    v18 = [v2 keyboardLayoutGuide];
    v19 = [v18 topAnchor];

    v36 = [v17 constraintLessThanOrEqualToAnchor:v19 constant:-2.0];
    v38 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D4065C70;
    v21 = [v13 widthAnchor];

    v22 = [v5 widthAnchor];
    v23 = [v21 constraintEqualToAnchor_];

    *(v20 + 32) = v23;
    v24 = [v13 centerXAnchor];

    v25 = [v2 centerXAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v20 + 40) = v26;
    v27 = [v5 centerXAnchor];
    v28 = [v2 centerXAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    *(v20 + 48) = v29;
    v30 = [v5 bottomAnchor];

    v31 = [v13 topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:-*&v0[OBJC_IVAR____TtC8PaperKit22PasswordViewController_distanceFromLabelToTextField]];

    *(v20 + 56) = v32;
    *(v20 + 64) = v36;
    *(v20 + 72) = v37;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v33 = v36;
    v34 = v37;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v38 activateConstraints_];
  }
}

void closure #1 in PasswordViewController.textFieldShouldReturn(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in PasswordViewController.textFieldShouldReturn(_:);
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_19_0;
    v7 = _Block_copy(aBlock);
    v8 = a3;

    [v5 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }
}

id closure #1 in closure #1 in PasswordViewController.textFieldShouldReturn(_:)(void *a1)
{
  v2 = MEMORY[0x1DA6CCED0](0, 0xE000000000000000);
  [a1 setText_];

  return [a1 becomeFirstResponder];
}

id PasswordViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC8PaperKit22PasswordViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8PaperKit22PasswordViewController_distanceFromLabelToTextField] = 0x4034000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit22PasswordViewController_distanceFromTopOfKeyboard] = 0x4000000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit22PasswordViewController____lazy_storage___textField] = 0;
  if (a2)
  {
    v7 = MEMORY[0x1DA6CCED0](a1, a2);
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for PasswordViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id PasswordViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8PaperKit22PasswordViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8PaperKit22PasswordViewController_distanceFromLabelToTextField] = 0x4034000000000000;
  *&v1[OBJC_IVAR____TtC8PaperKit22PasswordViewController_distanceFromTopOfKeyboard] = 0x4000000000000000;
  *&v1[OBJC_IVAR____TtC8PaperKit22PasswordViewController____lazy_storage___textField] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PasswordViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PasswordViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PasswordViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

void CalculateDocumentController.mathDidUpdateExpressions(_:newExpressions:removedExpressions:mathItems:)(unint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v236 = &v197 - v11;
  v12 = type metadata accessor for CalculateExpression.Base();
  v239 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for DispatchWorkItemFlags();
  v224 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v213 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for DispatchQoS();
  v222 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v215 = &v197 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = type metadata accessor for UUID();
  v240 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v238 = &v197 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v242 = &v197 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v227 = &v197 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v218 = &v197 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v233 = &v197 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v220 = &v197 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v221 = &v197 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v228 = &v197 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v197 - v34;
  v36 = v4 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v207 = v12;
    v229 = Strong;
    v231 = *(v36 + 8);
    if (one-time initialization token for mathLogger != -1)
    {
      goto LABEL_102;
    }

    while (1)
    {
      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, mathLogger);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      v41 = os_log_type_enabled(v39, v40);
      v219 = a2;
      v243 = isUniquelyReferenced_nonNull_native;
      if (v41)
      {
        v42 = swift_slowAlloc();
        *v42 = 134218496;
        *(v42 + 4) = *(a1 + 16);

        *(v42 + 12) = 2048;
        *(v42 + 14) = *(a2 + 16);

        *(v42 + 22) = 2048;
        *(v42 + 24) = *(a3 + 16);

        _os_log_impl(&dword_1D38C4000, v39, v40, "CalculateDocumentController mathDidUpdateExpressions: updated: %ld, new: %ld, removed: %ld", v42, 0x20u);
        v43 = v42;
        isUniquelyReferenced_nonNull_native = v243;
        MEMORY[0x1DA6D0660](v43, -1, -1);
      }

      else
      {
      }

      v206 = v14;
      v217 = a1;
      a2 = a4[2];
      v234 = v5;
      v230 = a3;
      if (a2)
      {
        v14 = (a4 + 4);
        v241 = (v240 + 16);
        a3 = v240 + 8;
        a4 = MEMORY[0x1E69E7CC8];
        v5 = 40;
        while (1)
        {
          outlined init with copy of FindResult(v14, &aBlock);
          v45 = v247;
          v46 = v248;
          __swift_project_boxed_opaque_existential_1(&aBlock, v247);
          (*(v46 + 3))(v45, v46);
          outlined init with copy of FindResult(&aBlock, &v252);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v250 = a4;
          a1 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
          v48 = a4[2];
          v49 = (v47 & 1) == 0;
          v50 = v48 + v49;
          if (__OFADD__(v48, v49))
          {
            goto LABEL_100;
          }

          v51 = v47;
          if (a4[3] >= v50)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, isUniquelyReferenced_nonNull_native);
            v52 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
            if ((v51 & 1) != (v53 & 1))
            {
LABEL_105:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a1 = v52;
          }

          isUniquelyReferenced_nonNull_native = v243;
          a4 = v250;
          if (v51)
          {
            v44 = v250[7] + 40 * a1;
            __swift_destroy_boxed_opaque_existential_0(v44);
            outlined init with take of CalculateMathItem(&v252, v44);
            (*a3)(v35, isUniquelyReferenced_nonNull_native);
          }

          else
          {
            v250[(a1 >> 6) + 8] |= 1 << a1;
            v54 = v240;
            (*(v240 + 16))(a4[6] + *(v240 + 72) * a1, v35, isUniquelyReferenced_nonNull_native);
            outlined init with take of CalculateMathItem(&v252, a4[7] + 40 * a1);
            (*(v54 + 8))(v35, isUniquelyReferenced_nonNull_native);
            v55 = a4[2];
            v56 = __OFADD__(v55, 1);
            v57 = v55 + 1;
            if (v56)
            {
              goto LABEL_101;
            }

            a4[2] = v57;
          }

          __swift_destroy_boxed_opaque_existential_0(&aBlock);
          v14 += 40;
          if (!--a2)
          {
            goto LABEL_20;
          }
        }
      }

      a4 = MEMORY[0x1E69E7CC8];
LABEL_20:
      a2 = 1;
      v216 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v58 = MEMORY[0x1E69E7CC0];
      v251 = MEMORY[0x1E69E7CC0];
      v59 = v217;

      v35 = v219;

      specialized Set.union<A>(_:)(v59, v35);
      v14 = 0;
      a1 = v60 + 56;
      v61 = *(v60 + 56);
      v237 = v60;
      v62 = 1 << *(v60 + 32);
      v63 = -1;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      v5 = v63 & v61;
      v226 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionUUIDs;
      v232 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionStrokeGroups;
      v225 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionsToSolve;
      v64 = (v62 + 63) >> 6;
      v235 = v240 + 32;
      v241 = (v240 + 8);
      v223 = v231 + 48;
      v208 = v231 + 32;
      v211 = &v246;
      v210 = (v224 + 8);
      v209 = (v222 + 8);
      v205 = *MEMORY[0x1E6992250];
      v204 = *MEMORY[0x1E6992100];
      v203 = (v239 + 104);
      v202 = v231 + 24;
      v201 = xmmword_1D4058CF0;
      v239 = v58;
      v224 = v240 + 16;
      a3 = v221;
      v222 = v64;
      if ((v63 & v61) != 0)
      {
        do
        {
LABEL_29:
          while (1)
          {
            v66 = __clz(__rbit64(v5));
            v5 &= v5 - 1;
            v67 = v240;
            a2 = *(v240 + 16);
            v35 = v228;
            (a2)(v228, *(v237 + 48) + *(v240 + 72) * (v66 | (v14 << 6)), isUniquelyReferenced_nonNull_native);
            (*(v67 + 32))(a3, v35, isUniquelyReferenced_nonNull_native);
            if (a4[2])
            {
              v68 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
              if (v69)
              {
                break;
              }
            }

            (*v241)(a3, isUniquelyReferenced_nonNull_native);
            v64 = v222;
            if (!v5)
            {
              goto LABEL_25;
            }
          }

          outlined init with copy of FindResult(a4[7] + 40 * v68, &aBlock);
          v200 = *v241;
          v200(a3, isUniquelyReferenced_nonNull_native);
          outlined init with take of CalculateMathItem(&aBlock, &v252);
          v71 = v254;
          v70 = v255;
          __swift_project_boxed_opaque_existential_1(&v252, v254);
          v72 = (*(v70 + 16))(v71, v70);
          v74 = v254;
          v73 = v255;
          __swift_project_boxed_opaque_existential_1(&v252, v254);
          v75 = v220;
          (*(v73 + 24))(v74, v73);
          v76 = v218;
          v77 = v75;
          v78 = v243;
          (a2)(v218, v77, v243);
          swift_beginAccess();
          specialized Set._Variant.insert(_:)(v233, v76);
          swift_endAccess();
          v79 = v78;
          v200(v233, v78);
          v80 = v220;
          (a2)(v233, v220, v79);
          v82 = v254;
          v81 = v255;
          __swift_project_boxed_opaque_existential_1(&v252, v254);
          v83 = (*(v81 + 32))(v82, v81);
          swift_beginAccess();
          specialized Dictionary.subscript.setter(v83, v233);
          swift_endAccess();
          ObjectType = swift_getObjectType();
          v85 = *(v231 + 48);
          v198 = ObjectType;
          v86 = v85(v80);
          if (v86)
          {
            v87 = v86;

            v239 = CalculateExpression.expression.getter();
            v89 = v88;
            v91 = v254;
            v90 = v255;
            __swift_project_boxed_opaque_existential_1(&v252, v254);
            v92 = (*(v90 + 8))(v91, v90);
            if (v239 == v92 && v89 == v93)
            {

              v94 = v215;
            }

            else
            {
              v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v94 = v215;
              if ((v117 & 1) == 0)
              {
                v119 = v254;
                v118 = v255;
                __swift_project_boxed_opaque_existential_1(&v252, v254);
                v120 = *(v118 + 8);
                v121 = v118;
                v94 = v215;
                v120(v119, v121);
                CalculateExpression.expression.setter();
              }
            }

            aBlock = v72;
            (*(v231 + 32))(v87, &aBlock, v198);

            MEMORY[0x1DA6CD190](v122);
            if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v239 = v251;
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v116 = static OS_dispatch_queue.main.getter();
            outlined init with copy of FindResult(&v252, &v250);
            v123 = swift_allocObject();
            v124 = v87;
            v125 = v234;
            *(v123 + 16) = v234;
            *(v123 + 24) = v124;
            v199 = v124;
            outlined init with take of CalculateMathItem(&v250, v123 + 32);
            v248 = partial apply for closure #2 in CalculateDocumentController.mathDidUpdateExpressions(_:newExpressions:removedExpressions:mathItems:);
            v249 = v123;
            aBlock = MEMORY[0x1E69E9820];
            v245 = 1107296256;
            v246 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            v247 = &block_descriptor_32_0;
            v126 = _Block_copy(&aBlock);

            v127 = v125;

            static DispatchQoS.unspecified.getter();
            aBlock = MEMORY[0x1E69E7CC0];
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
            v128 = v94;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
            lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
            v112 = v214;
            v113 = v213;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            MEMORY[0x1DA6CD890](0, v128, v113, v126);
            v129 = v126;
            v111 = v128;
            _Block_release(v129);
          }

          else
          {
            v96 = v254;
            v95 = v255;
            __swift_project_boxed_opaque_existential_1(&v252, v254);
            v239 = (*(v95 + 8))(v96, v95);
            v199 = v97;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12CalculateKeya_yptGMd);
            inited = swift_initStackObject();
            *(inited + 16) = v201;
            v99 = v205;
            *(inited + 32) = v205;
            *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber);
            v100 = v216;
            *(inited + 40) = v216;
            v101 = v99;
            v102 = v100;
            _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo12CalculateKeya_ypTt0g5Tf4g_n(inited);
            swift_setDeallocating();
            outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo12CalculateKeya_yptMd);
            v103 = v254;
            v104 = v255;
            __swift_project_boxed_opaque_existential_1(&v252, v254);
            (*(v104 + 24))(v103, v104);
            (*v203)(v206, v204, v207);
            type metadata accessor for CalculateExpression();
            swift_allocObject();
            v105 = CalculateExpression.init(_:options:base:id:)();

            MEMORY[0x1DA6CD190](v106);
            if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v239 = v251;
            aBlock = v72;
            (*(v231 + 24))(v105, &aBlock, v198);
            type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v198 = static OS_dispatch_queue.main.getter();
            outlined init with copy of FindResult(&v252, &v250);
            v107 = swift_allocObject();
            v108 = v234;
            *(v107 + 16) = v234;
            *(v107 + 24) = v105;
            outlined init with take of CalculateMathItem(&v250, v107 + 32);
            v248 = partial apply for closure #3 in CalculateDocumentController.mathDidUpdateExpressions(_:newExpressions:removedExpressions:mathItems:);
            v249 = v107;
            aBlock = MEMORY[0x1E69E9820];
            v245 = 1107296256;
            v246 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            v247 = &block_descriptor_26;
            v109 = _Block_copy(&aBlock);
            v110 = v108;
            v199 = v105;

            v111 = v215;
            static DispatchQoS.unspecified.getter();
            aBlock = MEMORY[0x1E69E7CC0];
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
            lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
            v112 = v214;
            v113 = v213;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v114 = v109;
            v115 = v109;
            v116 = v198;
            MEMORY[0x1DA6CD890](0, v111, v113, v115);
            _Block_release(v114);
          }

          v35 = v200;

          (*v210)(v113, v112);
          (*v209)(v111, v212);
          v130 = v254;
          v131 = v255;
          __swift_project_boxed_opaque_existential_1(&v252, v254);
          if ((*(v131 + 40))(v130, v131))
          {
            v132 = v218;
            CalculateExpression.id.getter();
            swift_beginAccess();
            v133 = v233;
            specialized Set._Variant.insert(_:)(v233, v132);
            swift_endAccess();

            v134 = v133;
            isUniquelyReferenced_nonNull_native = v243;
            a2 = v241;
            (v35)(v134, v243);
          }

          else
          {
            v135 = v233;
            CalculateExpression.id.getter();
            swift_beginAccess();
            v136 = v35;
            v137 = v236;
            specialized Set._Variant.remove(_:)(v135, v236);
            swift_endAccess();

            isUniquelyReferenced_nonNull_native = v243;
            a2 = v241;
            (v136)(v135, v243);
            v138 = v137;
            v35 = v136;
            outlined destroy of StocksKitCurrencyCache.Provider?(v138, &_s10Foundation4UUIDVSgMd);
          }

          a3 = v221;
          v64 = v222;
          (v35)(v220, isUniquelyReferenced_nonNull_native);
          __swift_destroy_boxed_opaque_existential_0(&v252);
        }

        while (v5);
      }

      while (1)
      {
LABEL_25:
        v65 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_99;
        }

        if (v65 >= v64)
        {
          break;
        }

        v5 = *(a1 + 8 * v65);
        ++v14;
        if (v5)
        {
          v14 = v65;
          goto LABEL_29;
        }
      }

      v139 = v230 + 56;
      v140 = 1 << *(v230 + 32);
      v141 = -1;
      if (v140 < 64)
      {
        v141 = ~(-1 << v140);
      }

      a2 = v141 & *(v230 + 56);
      v228 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_trackedExpressionsForTokens;
      v5 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_trackedExpressionsForResults;
      v220 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_resultDrawings;
      v14 = (v140 + 63) >> 6;
      v218 = (v231 + 40);

      a3 = 0;
      a1 = v234;
      v35 = v241;
      v222 = v139;
      v221 = v5;
      while (a2)
      {
LABEL_57:
        v143 = *(v230 + 48);
        v144 = v240;
        v237 = *(v240 + 72);
        v145 = v227;
        (*(v240 + 16))(v227, v143 + v237 * (__clz(__rbit64(a2)) | (a3 << 6)), isUniquelyReferenced_nonNull_native);
        v146 = v242;
        (*(v144 + 32))(v242, v145, isUniquelyReferenced_nonNull_native);
        swift_beginAccess();
        v147 = v236;
        specialized Set._Variant.remove(_:)(v146, v236);
        swift_endAccess();
        outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s10Foundation4UUIDVSgMd);
        v148 = v228;
        swift_beginAccess();
        v149 = specialized __RawDictionaryStorage.find<A>(_:)(v146);
        v151 = v150;
        if (v150)
        {
          v152 = v149;
          v153 = swift_isUniquelyReferenced_nonNull_native();
          v154 = *&v148[a1];
          v250 = v154;
          *&v148[a1] = 0x8000000000000000;
          if (!v153)
          {
            specialized _NativeDictionary.copy()();
            v154 = v250;
          }

          (*v241)(*(v154 + 48) + v152 * v237, v243);
          outlined init with take of WeakCalculateExpression(*(v154 + 56) + 8 * v152, &v252);
          specialized _NativeDictionary._delete(at:)(v152, v154);
          *&v148[a1] = v154;
        }

        else
        {
          v252 = 0;
        }

        v253 = (v151 & 1) == 0;
        swift_endAccess();
        outlined destroy of StocksKitCurrencyCache.Provider?(&v252, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd);
        v5 = v221;
        swift_beginAccess();
        v155 = specialized __RawDictionaryStorage.find<A>(_:)(v242);
        v156 = a1;
        v158 = v157;
        if (v157)
        {
          v159 = v155;
          v160 = swift_isUniquelyReferenced_nonNull_native();
          v161 = *(v156 + v5);
          v250 = v161;
          *(v156 + v5) = 0x8000000000000000;
          if (!v160)
          {
            specialized _NativeDictionary.copy()();
            v161 = v250;
          }

          (*v241)(*(v161 + 48) + v159 * v237, v243);
          outlined init with take of WeakCalculateExpression(*(v161 + 56) + 8 * v159, &v252);
          specialized _NativeDictionary._delete(at:)(v159, v161);
          *(v156 + v5) = v161;
        }

        else
        {
          v252 = 0;
        }

        a1 = v156;
        v253 = (v158 & 1) == 0;
        swift_endAccess();
        outlined destroy of StocksKitCurrencyCache.Provider?(&v252, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd);
        swift_beginAccess();
        v162 = v236;
        v163 = v242;
        specialized Set._Variant.remove(_:)(v242, v236);
        swift_endAccess();
        outlined destroy of StocksKitCurrencyCache.Provider?(v162, &_s10Foundation4UUIDVSgMd);
        swift_beginAccess();
        v164 = specialized __RawDictionaryStorage.find<A>(_:)(v163);
        isUniquelyReferenced_nonNull_native = v243;
        if (v165)
        {
          v166 = v164;
          v167 = v232;
          v168 = swift_isUniquelyReferenced_nonNull_native();
          v169 = *(a1 + v167);
          v252 = v169;
          *(a1 + v167) = 0x8000000000000000;
          if (!v168)
          {
            specialized _NativeDictionary.copy()();
            v169 = v252;
          }

          (*v241)(*(v169 + 48) + v166 * v237, isUniquelyReferenced_nonNull_native);

          specialized _NativeDictionary._delete(at:)(v166, v169);
          *(a1 + v167) = v169;
        }

        swift_endAccess();
        v170 = v220;
        swift_beginAccess();
        v171 = specialized __RawDictionaryStorage.find<A>(_:)(v242);
        if (v172)
        {
          v173 = v171;
          v174 = swift_isUniquelyReferenced_nonNull_native();
          v175 = *&v170[a1];
          v252 = v175;
          *&v170[a1] = 0x8000000000000000;
          if (!v174)
          {
            specialized _NativeDictionary.copy()();
            v175 = v252;
          }

          (*v241)(*(v175 + 48) + v173 * v237, isUniquelyReferenced_nonNull_native);

          specialized _NativeDictionary._delete(at:)(v173, v175);
          *&v170[a1] = v175;
        }

        swift_endAccess();
        v176 = swift_getObjectType();
        v177 = v231;
        if ((*(v231 + 48))(v242, v176, v231))
        {
          (*(v177 + 40))();
          isUniquelyReferenced_nonNull_native = v243;
        }

        a2 &= a2 - 1;
        v35 = v241;
        (*v241)(v242, isUniquelyReferenced_nonNull_native);
        v139 = v222;
      }

      while (1)
      {
        v142 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if (v142 >= v14)
        {

          v178 = v239;
          if (v239 >> 62)
          {
            v195 = v239;
            v196 = __CocoaSet.count.getter();
            v178 = v195;
            v179 = v196;
          }

          else
          {
            v179 = *((v239 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v180 = v219;
          v181 = v238;
          if (v179)
          {
            if (v179 < 1)
            {
              __break(1u);
              goto LABEL_105;
            }

            v182 = 0;
            v183 = v178 & 0xC000000000000001;
            do
            {
              if (v183)
              {
                v184 = MEMORY[0x1DA6CE0C0](v182);
              }

              else
              {
                v184 = *(v178 + 8 * v182 + 32);
              }

              CalculateExpression.id.getter();
              if (a4[2] && (v185 = specialized __RawDictionaryStorage.find<A>(_:)(v181), (v186 & 1) != 0))
              {
                outlined init with copy of FindResult(a4[7] + 40 * v185, &v252);
                v187 = *v35;
                (*v35)(v238, isUniquelyReferenced_nonNull_native);
                outlined init with take of CalculateMathItem(&v252, &aBlock);
                v188 = v247;
                v189 = v248;
                __swift_project_boxed_opaque_existential_1(&aBlock, v247);
                v190 = *(v189 + 3);
                v191 = v233;
                v192 = v188;
                isUniquelyReferenced_nonNull_native = v243;
                v193 = v189;
                a1 = v234;
                v190(v192, v193);
                CalculateDocumentController.trackTokens(for:itemUUID:)(v184, v191);

                v194 = v191;
                v35 = v241;
                v187(v194, isUniquelyReferenced_nonNull_native);
                v181 = v238;
                __swift_destroy_boxed_opaque_existential_0(&aBlock);
              }

              else
              {

                (*v35)(v181, isUniquelyReferenced_nonNull_native);
              }

              ++v182;
              v178 = v239;
            }

            while (v179 != v182);

            v180 = v219;
          }

          else
          {
          }

          if (*(v180 + 2) || *(v217 + 16) || *(v230 + 16))
          {
            [objc_opt_self() cancelPreviousPerformRequestsWithTarget:a1 selector:sel_sendExpressionsChanged object:0];
            [a1 performSelector:sel_sendExpressionsChanged withObject:0 afterDelay:0.1];
          }

          swift_unknownObjectRelease();

          return;
        }

        a2 = *(v139 + 8 * v142);
        ++a3;
        if (a2)
        {
          a3 = v142;
          goto LABEL_57;
        }
      }

LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      swift_once();
    }
  }
}

char *CalculateDocumentController.calculateDocumentProvider.getter()
{
  v1 = v0;
  if (one-time initialization token for mathLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, mathLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D38C4000, v3, v4, "Generate Calculate Document Provider", v5, 2u);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
  if (swift_unknownObjectWeakLoadStrong() && (v7 = *(v6 + 8), ObjectType = swift_getObjectType(), v9 = (*(v7 + 8))(ObjectType, v7), swift_unknownObjectRelease(), v9))
  {
    v10 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionUUIDs;
    swift_beginAccess();
    v11 = *(v1 + v10);
    v12 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionsToSolve;
    swift_beginAccess();
    v13 = *(v1 + v12);
    v14 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionStrokeGroups;
    swift_beginAccess();
    v15 = *(v1 + v14);
    v16 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_resultDrawings;
    swift_beginAccess();
    v17 = *(v1 + v16);

    v18 = CalculateDocument.pkCalculateDocumentProvider(sessionExpressionUUIDs:expressionsToSolve:expressionStrokeGroups:resultDrawings:)(v11, v13, v15, v17);

    return v18;
  }

  else
  {
    v20 = objc_allocWithZone(type metadata accessor for CalculateDocumentProvider());

    return [v20 init];
  }
}

uint64_t protocol witness for CalculateMathItem.expressionString.getter in conformance PKMathRecognitionItem()
{
  v1 = [*v0 expression];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void protocol witness for CalculateMathItem.uuid.getter in conformance PKMathRecognitionItem()
{
  v1 = [*v0 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

id protocol witness for CalculateMathItem.strokeGroupIdentifier.getter in conformance PKMathRecognitionItem()
{
  v1 = [*v0 strokeGroupIdentifier];

  return v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DrawingIdentifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810]([v1 hash]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DrawingIdentifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810]([v1 hash]);
  return Hasher._finalize()();
}

void *one-time initialization function for controllers()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit17DrawingIdentifier33_8D2F688A48D6891537C9DABEFCA94965LLV_AC27CalculateDocumentControllerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static CalculateDocumentController.controllers = result;
  return result;
}

id CalculateDocumentController.init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers] = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_trackedExpressionsForResults;
  *&v0[v6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVTt0g5Tf4g_n(v5);
  v7 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_trackedExpressionsForTokens;
  *&v0[v7] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVTt0g5Tf4g_n(v5);
  *&v0[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = MEMORY[0x1E69E7CD0];
  *&v0[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionUUIDs] = MEMORY[0x1E69E7CD0];
  v9 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionStrokeGroups;
  *&v0[v9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So8NSNumberCTt0g5Tf4g_n(v5);
  v10 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_resultDrawings;
  *&v0[v10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So9PKDrawingCTt0g5Tf4g_n(v5);
  *&v0[OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionsToSolve] = v8;
  v15.receiver = v0;
  v15.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v15, sel_init);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in CalculateDocumentController.init(), v13);

  return v11;
}

uint64_t closure #1 in CalculateDocumentController.init()()
{
  return MEMORY[0x1EEE6DFA0](closure #1 in CalculateDocumentController.init(), 0, 0);
}

{
  *(v0 + 16) = type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CalculateDocumentController.init(), v2, v1);
}

{

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](closure #1 in CalculateDocumentController.init(), 0, 0);
}

{
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CalculateDocumentController.init(), v2, v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CalculateDocumentController.document.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
  *(v3 + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong() && (v4 = *(v3 + 8), ObjectType = swift_getObjectType(), v6 = (*(v4 + 8))(ObjectType, v4), v7 = swift_unknownObjectRelease(), v6))
  {
    MEMORY[0x1EEE9AC00](v7);
    withObservationTracking<A>(_:onChange:)();

    return swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t closure #1 in CalculateDocumentController.trackExpressions(in:)()
{
  MEMORY[0x1DA6CACA0]();

  dispatch thunk of CalculateDocument.declaredSymbols.getter();
}

void (*implicit closure #1 in CalculateDocumentController.trackExpressions(in:)())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return partial apply for closure #2 in implicit closure #1 in CalculateDocumentController.trackExpressions(in:);
}

void closure #2 in implicit closure #1 in CalculateDocumentController.trackExpressions(in:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    v10 = swift_weakLoadStrong();
    if (v10)
    {
      v11 = v10;
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v22 = static OS_dispatch_queue.main.getter();
      v12 = swift_allocObject();
      v23 = v5;
      v13 = v12;
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      swift_weakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      *(v15 + 24) = v14;
      aBlock[4] = partial apply for closure #1 in closure #2 in implicit closure #1 in CalculateDocumentController.trackExpressions(in:);
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_30;
      v16 = _Block_copy(aBlock);
      v21 = v11;
      v17 = v16;

      static DispatchQoS.unspecified.getter();
      v24 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      v20 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v18 = v22;
      MEMORY[0x1DA6CD890](0, v7, v3, v17);
      _Block_release(v17);

      (*(v1 + 8))(v3, v0);
      (*(v23 + 8))(v7, v20);
    }

    else
    {
    }
  }
}

void closure #1 in closure #2 in implicit closure #1 in CalculateDocumentController.trackExpressions(in:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:sel_sendExpressionsChanged object:0];
      v2 = [v1 performSelector:sel_sendExpressionsChanged withObject:0 afterDelay:0.1];
      MEMORY[0x1EEE9AC00](v2);
      withObservationTracking<A>(_:onChange:)();
    }
  }
}

uint64_t CalculateDocumentController.cleanupObservers()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = v3 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    while (v6 < *(v3 + 16))
    {
      outlined init with copy of WeakObserver(v7, v13);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        outlined init with take of WeakObserver(v13, v12);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
          v8 = v14;
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v8 = v14;
        }

        *(v8 + 16) = v11 + 1;
        result = outlined init with take of WeakObserver(v12, v8 + 16 * v11 + 32);
      }

      else
      {
        result = outlined destroy of WeakObserver(v13);
      }

      ++v6;
      v7 += 16;
      if (v4 == v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_13:

    *(v1 + v2) = v8;
  }

  return result;
}

Swift::Bool __swiftcall CalculateDocumentController.updateGraphableVariables()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_SS5valuetMd);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v158 - v2;
  *&v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v194);
  v200 = &v158 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v158 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v158 - v12;
  v14 = type metadata accessor for UUID();
  v193 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v199 = &v158 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v187 = &v158 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v158 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v195 = &v158 - v25;
  v206 = &type metadata for PencilAndPaperFeatureFlags;
  v207 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  v205[0] = 7;
  v26 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v205);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  v192 = v13;
  v27 = v0 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v28 = *(v27 + 8);
  ObjectType = swift_getObjectType();
  v30 = (*(v28 + 8))(ObjectType, v28);
  swift_unknownObjectRelease();
  if (!v30)
  {
    return 0;
  }

  v189 = v11;
  v175 = v8;
  v178 = v1;
  v169 = v0;
  v190 = v17;
  CalculateDocument.id.getter();

  v31 = v193;
  v32 = v193[4];
  v171 = v193 + 4;
  v170 = v32;
  v32(v195, v24, v14);
  v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (one-time initialization token for controllers != -1)
  {
LABEL_119:
    swift_once();
  }

  swift_beginAccess();
  v34 = *(static CalculateDocumentController.controllers + 8);
  v186 = static CalculateDocumentController.controllers + 64;
  v35 = 1 << *(static CalculateDocumentController.controllers + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & v34;
  v185 = (v35 + 63) >> 6;
  v182 = (v31 + 56);
  v197 = (v31 + 16);
  v181 = (v31 + 48);
  v38 = (v31 + 8);
  v184 = static CalculateDocumentController.controllers;

  v39 = 0;
  v173 = v33;
  v202 = v14;
  v196 = (v31 + 8);
  v188 = v3;
LABEL_9:
  v40 = v186;
  v41 = v185;
  while (v37)
  {
LABEL_18:
    v44 = *(v184[7] + ((v39 << 9) | (8 * __clz(__rbit64(v37)))));
    v45 = v44 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
    Strong = swift_unknownObjectWeakLoadStrong();
    v198 = v44;
    if (Strong)
    {
      v47 = *(v45 + 1);
      v48 = swift_getObjectType();
      v49 = *(v47 + 8);
      v50 = v44;
      v51 = v49(v48, v47);
      swift_unknownObjectRelease();
      if (v51)
      {
        v52 = v192;
        CalculateDocument.id.getter();

        v53 = 0;
        v14 = v202;
        goto LABEL_24;
      }

      v53 = 1;
      v14 = v202;
    }

    else
    {
      v54 = v44;
      v53 = 1;
    }

    v52 = v192;
LABEL_24:
    v37 &= v37 - 1;
    v55 = *v182;
    (*v182)(v52, v53, 1, v14);
    v56 = v189;
    v191 = *v197;
    v191(v189, v195, v14);
    v55(v56, 0, 1, v14);
    v57 = *(v194 + 48);
    v58 = v200;
    outlined init with copy of Date?(v52, v200, &_s10Foundation4UUIDVSgMd);
    outlined init with copy of Date?(v56, v58 + v57, &_s10Foundation4UUIDVSgMd);
    v31 = *v181;
    if ((*v181)(v58, 1, v14) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s10Foundation4UUIDVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_s10Foundation4UUIDVSgMd);
      v42 = v200;
      v59 = v200 + v57;
      v60 = v202;
      v61 = (v31)(v59, 1, v202);
      v14 = v60;
      v3 = v188;
      if (v61 != 1)
      {
        goto LABEL_11;
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s10Foundation4UUIDVSgMd);
LABEL_29:
      v66 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
      v31 = v198;
      swift_beginAccess();
      v67 = *&v31[v66];
      v68 = *(v67 + 16);
      if (v68)
      {
        v168 = v67 + 32;

        v69 = 0;
        v38 = v196;
        v174 = v37;
        v167 = v67;
        v166 = v68;
        while (v69 < *(v67 + 16))
        {
          v172 = v69;
          outlined init with copy of WeakObserver(v168 + 16 * v69, v204);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v70 = v204[1];
            v71 = swift_getObjectType();
            v72 = (*(v70 + 32))(v71, v70);
            swift_unknownObjectRelease();
            v31 = (v72 + 64);
            v73 = 1 << *(v72 + 32);
            if (v73 < 64)
            {
              v74 = ~(-1 << v73);
            }

            else
            {
              v74 = -1;
            }

            v75 = v74 & *(v72 + 64);
            v76 = (v73 + 63) >> 6;
            v179 = v72;

            v14 = 0;
            v77 = v173;
            v176 = (v72 + 64);
            v177 = v76;
            while (v75)
            {
              v79 = v3;
LABEL_47:
              v81 = __clz(__rbit64(v75)) | (v14 << 6);
              v82 = v179;
              v83 = *(v179 + 48);
              v180 = v193[9];
              v33 = v197;
              v84 = v191;
              v191(v79, (v83 + v180 * v81), v202);
              v85 = (*(v82 + 56) + 16 * v81);
              v86 = v79;
              v87 = *v85;
              v88 = v85[1];
              v89 = (v86 + *(v178 + 48));
              v183 = v87;
              *v89 = v87;
              v89[1] = v88;
              v90 = v199;
              v84(v199);
              swift_bridgeObjectRetain_n();
              v31 = v77;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v203 = v77;
              v3 = specialized __RawDictionaryStorage.find<A>(_:)(v90);
              v93 = *(v77 + 2);
              v94 = (v92 & 1) == 0;
              v95 = v93 + v94;
              if (__OFADD__(v93, v94))
              {
                goto LABEL_116;
              }

              v96 = v92;
              v97 = v88;
              if (*(v31 + 3) >= v95)
              {
                v37 = v174;
                v76 = v177;
                if (isUniquelyReferenced_nonNull_native)
                {
                  v98 = v31;
                }

                else
                {
                  v173 = v31;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSSGMd);
                  v105 = static _DictionaryStorage.copy(original:)();
                  v98 = v105;
                  if (v173[2])
                  {
                    v106 = (v105 + 64);
                    v107 = v173 + 8;
                    v108 = ((1 << v98[32]) + 63) >> 6;
                    v160 = v173 + 8;
                    if (v98 != v173 || v106 >= &v107[v108])
                    {
                      memmove(v106, v160, 8 * v108);
                      v107 = v160;
                    }

                    v109 = 0;
                    v110 = v173;
                    *(v98 + 2) = v173[2];
                    v111 = 1 << *(v110 + 32);
                    v112 = v110[8];
                    if (v111 < 64)
                    {
                      v113 = ~(-1 << v111);
                    }

                    else
                    {
                      v113 = -1;
                    }

                    v114 = v113 & v112;
                    v115 = (v111 + 63) >> 6;
                    v159 = v115;
                    v201 = v98;
                    if (v114)
                    {
                      do
                      {
                        v165 = (v114 - 1) & v114;
                        v116 = __clz(__rbit64(v114)) | (v109 << 6);
                        v117 = v173;
LABEL_70:
                        v163 = v116;
                        v121 = v117[6];
                        v164 = v116 * v180;
                        v191(v187, (v121 + v116 * v180), v202);
                        v122 = v173[7];
                        v161 = 16 * v163;
                        v123 = (v122 + 16 * v163);
                        v125 = *v123;
                        v124 = v123[1];
                        v163 = v125;
                        v162 = v124;
                        v170(*(v98 + 6) + v164, v187, v202);
                        v126 = (*(v201 + 56) + v161);
                        v127 = v162;
                        *v126 = v163;
                        v126[1] = v127;

                        v107 = v160;
                        v115 = v159;
                        v114 = v165;
                      }

                      while (v165);
                    }

                    v118 = v109;
                    while (1)
                    {
                      v109 = v118 + 1;
                      if (__OFADD__(v118, 1))
                      {
                        goto LABEL_122;
                      }

                      if (v109 >= v115)
                      {
                        break;
                      }

                      v119 = v107[v109];
                      ++v118;
                      if (v119)
                      {
                        v120 = __clz(__rbit64(v119));
                        v165 = (v119 - 1) & v119;
                        v117 = v173;
                        v116 = v120 | (v109 << 6);
                        goto LABEL_70;
                      }
                    }
                  }
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v95, isUniquelyReferenced_nonNull_native);
                v98 = v203;
                v99 = specialized __RawDictionaryStorage.find<A>(_:)(v199);
                v37 = v174;
                v76 = v177;
                if ((v96 & 1) != (v100 & 1))
                {
                  goto LABEL_123;
                }

                v3 = v99;
              }

              v31 = v176;
              if (v96)
              {
                v33 = v98;
                v78 = (*(v98 + 7) + 16 * v3);
                *v78 = v183;
                v78[1] = v97;
              }

              else
              {
                v33 = v98;
                *&v98[8 * (v3 >> 6) + 64] |= 1 << v3;
                v191((*(v98 + 6) + v3 * v180), v199, v202);
                v101 = (*(v98 + 7) + 16 * v3);
                *v101 = v183;
                v101[1] = v97;
                v102 = *(v98 + 2);
                v103 = __OFADD__(v102, 1);
                v104 = v102 + 1;
                if (v103)
                {
                  goto LABEL_117;
                }

                *(v98 + 2) = v104;
              }

              v75 &= v75 - 1;
              (*v196)(v199, v202);
              v3 = v188;
              outlined destroy of StocksKitCurrencyCache.Provider?(v188, &_s10Foundation4UUIDV3key_SS5valuetMd);
              v77 = v33;
            }

            while (1)
            {
              v80 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_115;
              }

              if (v80 >= v76)
              {
                v173 = v77;

                outlined destroy of WeakObserver(v204);

                v14 = v202;
                v38 = v196;
                v67 = v167;
                v68 = v166;
                goto LABEL_32;
              }

              v75 = *&v31[8 * v80];
              ++v14;
              if (v75)
              {
                v79 = v3;
                v14 = v80;
                goto LABEL_47;
              }
            }
          }

          outlined destroy of WeakObserver(v204);
LABEL_32:
          v69 = v172 + 1;
          if (v172 + 1 == v68)
          {

            goto LABEL_9;
          }
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      goto LABEL_12;
    }

    v62 = v200;
    v63 = v175;
    v3 = &_s10Foundation4UUIDVSgMd;
    outlined init with copy of Date?(v200, v175, &_s10Foundation4UUIDVSgMd);
    if ((v31)(v62 + v57, 1, v202) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v189, &_s10Foundation4UUIDVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v192, &_s10Foundation4UUIDVSgMd);
      v14 = v202;
      (*v196)(v63, v202);
      v42 = v200;
LABEL_11:
      outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s10Foundation4UUIDVSg_ADtMd);
      goto LABEL_12;
    }

    v64 = v187;
    v31 = v202;
    v170(v187, (v200 + v57), v202);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    LODWORD(v201) = dispatch thunk of static Equatable.== infix(_:_:)();
    v65 = *v196;
    (*v196)(v64, v31);
    outlined destroy of StocksKitCurrencyCache.Provider?(v189, &_s10Foundation4UUIDVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v192, &_s10Foundation4UUIDVSgMd);
    v65(v63, v31);
    outlined destroy of StocksKitCurrencyCache.Provider?(v200, &_s10Foundation4UUIDVSgMd);
    v14 = v31;
    v3 = v188;
    if (v201)
    {
      goto LABEL_29;
    }

LABEL_12:

    v40 = v186;
    v41 = v185;
    v38 = v196;
  }

  while (1)
  {
    v43 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    if (v43 >= v41)
    {
      break;
    }

    v37 = *&v40[8 * v43];
    ++v39;
    if (v37)
    {
      v39 = v43;
      goto LABEL_18;
    }
  }

  v130 = CalculateDocumentController.expressions.getter();
  v132 = v130;
  if (v130 >> 62)
  {
    v133 = __CocoaSet.count.getter();
  }

  else
  {
    v133 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v134 = v190;
  if (!v133)
  {

    v128 = 0;
    (*v38)(v195, v14);
LABEL_113:

    return v128;
  }

  if (v133 >= 1)
  {
    v128 = 0;
    v135 = 0;
    v199 = v132 & 0xC000000000000001;
    *&v131 = 136380931;
    v194 = v131;
    v200 = v133;
    v201 = v33;
    v197 = v132;
    while (1)
    {
      if (v199)
      {
        MEMORY[0x1DA6CE0C0](v135, v132);
      }

      else
      {
      }

      CalculateExpression.id.getter();
      if (*(v33 + 16) && (v136 = specialized __RawDictionaryStorage.find<A>(_:)(v134), (v137 & 1) != 0))
      {
        v138 = (*(v33 + 56) + 16 * v136);
        v139 = *v138;
        v140 = v138[1];
        v141 = *v38;

        v198 = v141;
        v141(v134, v14);
      }

      else
      {
        v198 = *v38;
        v198(v134, v14);
        v139 = 0;
        v140 = 0;
      }

      v142 = CalculateExpression.graphableVariable.getter();
      if (!v143)
      {
        break;
      }

      if (!v140)
      {
        goto LABEL_97;
      }

      if (v142 != v139 || v143 != v140)
      {
        v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v132 = v197;
        if ((v157 & 1) == 0)
        {
          goto LABEL_98;
        }

LABEL_110:

        goto LABEL_83;
      }

      swift_bridgeObjectRelease_n();
      v132 = v197;
LABEL_83:
      v33 = v201;
      if (v200 == ++v135)
      {

        v198(v195, v14);
        goto LABEL_113;
      }
    }

    if (v140)
    {
LABEL_97:

LABEL_98:
      if (one-time initialization token for mathLogger != -1)
      {
        swift_once();
      }

      v144 = type metadata accessor for Logger();
      __swift_project_value_buffer(v144, mathLogger);

      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v204[0] = v148;
        *v147 = v194;
        v149 = CalculateExpression.expression.getter();
        v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v150, v204);

        *(v147 + 4) = v151;
        *(v147 + 12) = 2080;
        if (v140)
        {
          v152 = v139;
        }

        else
        {
          v152 = 0x3E656E6F6E3CLL;
        }

        if (v140)
        {
          v153 = v140;
        }

        else
        {
          v153 = 0xE600000000000000;
        }

        v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v153, v204);
        v14 = v202;

        *(v147 + 14) = v154;
        _os_log_impl(&dword_1D38C4000, v145, v146, "Update graphable variable for expression: %{private}s, variable: %s", v147, 0x16u);
        swift_arrayDestroy();
        v155 = v148;
        v134 = v190;
        MEMORY[0x1DA6D0660](v155, -1, -1);
        v156 = v147;
        v38 = v196;
        MEMORY[0x1DA6D0660](v156, -1, -1);
      }

      v132 = v197;
      CalculateExpression.graphableVariable.setter();

      v128 = 1;
      goto LABEL_83;
    }

    goto LABEL_110;
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t CalculateDocumentController.expressions.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v34 = v2;
  v35 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = MEMORY[0x1E69E7CC0];
  if (!Strong)
  {
    return v8;
  }

  v9 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  if ((*(v9 + 8))(ObjectType, v9))
  {
    v11 = MEMORY[0x1DA6CACA0]();
    swift_unknownObjectRelease();

    return v11;
  }

  else
  {
    v31 = ObjectType;
    v13 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_expressionUUIDs;
    swift_beginAccess();
    v14 = *(v1 + v13);
    v27 = v8;
    v36 = v8;
    v15 = v14 + 56;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 56);
    v19 = (v16 + 63) >> 6;
    v32 = v9;
    v33 = v14;
    v29 = v9 + 48;
    v30 = v35 + 16;
    v28 = v35 + 8;
    result = swift_bridgeObjectRetain_n();
    v20 = 0;
    if (!v18)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_7:
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v22 = v34;
        v23 = v35;
        (*(v35 + 16))(v5, *(v33 + 48) + *(v35 + 72) * (v21 | (v20 << 6)), v34);
        v24 = (*(v32 + 48))(v5, v31);
        result = (*(v23 + 8))(v5, v22);
        if (v24)
        {
          break;
        }

        if (!v18)
        {
          goto LABEL_9;
        }
      }

      MEMORY[0x1DA6CD190](result);
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v27 = v36;
    }

    while (v18);
LABEL_9:
    while (1)
    {
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v25 >= v19)
      {

        swift_unknownObjectRelease();
        return v27;
      }

      v18 = *(v15 + 8 * v25);
      ++v20;
      if (v18)
      {
        v20 = v25;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CalculateDocumentController.graphableExpressions.getter()
{
  v0 = CalculateDocumentController.expressions.getter();
  v1 = v0;
  v13 = MEMORY[0x1E69E7CC0];
  if (v0 >> 62)
  {
LABEL_22:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA6CE0C0](v3, v1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v8 = v13;
            goto LABEL_24;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_22;
          }

          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_19;
          }
        }

        if (CalculateExpression.isGraphable.getter())
        {
          break;
        }

        v11 = &type metadata for PencilAndPaperFeatureFlags;
        v12 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
        v10[0] = 7;
        v5 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_0(v10);
        if (v5)
        {
          CalculateExpression.graphableVariable.getter();
          if (v6)
          {
          }

          else
          {
            v7 = *(CalculateExpression.graphableVariables.getter() + 16);

            if (!v7)
            {

              goto LABEL_5;
            }
          }

          goto LABEL_15;
        }

LABEL_5:
        ++v3;
        if (v4 == v2)
        {
          goto LABEL_20;
        }
      }

LABEL_15:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_5;
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_24:

  return v8;
}

void CalculateDocumentController.mathResultDrawing(_:forItem:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_resultDrawings;
  swift_beginAccess();
  v11 = *&v2[v10];
  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = v14;
    if (v14)
    {
      v16 = v15;
      swift_unknownObjectRelease();
      if (a1 && (v14 == a1 || ([a1 isEqual_] & 1) != 0))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (!a1)
    {
      return;
    }
  }

  else
  {
    swift_endAccess();
    if (!a1)
    {
      return;
    }
  }

  v16 = 0;
LABEL_10:

  (*(v7 + 16))(v9, a2, v6);
  swift_beginAccess();
  v17 = a1;
  specialized Dictionary.subscript.setter(a1, v9);
  swift_endAccess();
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v3 selector:sel_sendExpressionsChanged object:0];
  [v3 performSelector:sel_sendExpressionsChanged withObject:0 afterDelay:0.1];
LABEL_11:
}

void CalculateDocumentController.updateTokens(expression:itemUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  v4 = type metadata accessor for CalculateExpression.GraphableType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v39 = CalculateExpression.pkTokens.getter();
  v11 = CalculateExpression.isActuallyGraphable.getter();
  v44 = &type metadata for PencilAndPaperFeatureFlags;
  v45 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v43[0]) = 7;
  v12 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v43);
  v37 = v4;
  v38 = v11;
  if ((v12 & 1) == 0)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v14 = CalculateExpression.graphableVariable.getter();
    if (!v15)
    {
      goto LABEL_8;
    }

LABEL_5:
    v16 = v14;
    v17 = v15;
    v43[0] = v14;
    v43[1] = v15;
    MEMORY[0x1EEE9AC00](v14);
    *(&v36 - 2) = v43;
    if (specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v36 - 4), v13))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D4058CF0;
      *(v18 + 32) = v16;
      *(v18 + 40) = v17;
    }

    else
    {
    }

    goto LABEL_8;
  }

  v13 = CalculateExpression.graphableVariables.getter();
  v14 = CalculateExpression.graphableVariable.getter();
  if (v15)
  {
    goto LABEL_5;
  }

LABEL_8:
  v19 = [objc_allocWithZone(MEMORY[0x1E6978498]) init];
  if (v38)
  {
    CalculateExpression.graphableType.getter();
    v20 = v37;
    (*(v5 + 104))(v7, *MEMORY[0x1E69920D8], v37);
    v21 = static CalculateExpression.GraphableType.== infix(_:_:)();
    v22 = *(v5 + 8);
    v22(v7, v20);
    v22(v10, v20);
    if (v21)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = v39;
  [v19 setExpressionFeatures_];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 setGraphableVariables_];

  v26 = specialized _arrayConditionalCast<A, B>(_:)(v24);

  if (v26)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionToken);
    v27 = Array._bridgeToObjectiveC()().super.isa;

    [v19 setTokens_];
  }

  v28 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
  swift_beginAccess();
  v29 = *(v3 + v28);
  v30 = v29[2];
  if (v30)
  {
    v31 = (v29 + 4);
    v39 = v29;

    do
    {
      outlined init with copy of WeakObserver(v31, v41);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v32 = v42;
        ObjectType = swift_getObjectType();
        v44 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionItemAttributes);
        v45 = &protocol witness table for PKMathRecognitionItemAttributes;
        v43[0] = v19;
        v34 = *(v32 + 24);
        v35 = v19;
        v34(v43, v40, ObjectType, v32);
        swift_unknownObjectRelease();
        outlined destroy of WeakObserver(v41);
        outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s8PaperKit25PKCalculateItemAttributes_pSgMd);
      }

      else
      {
        outlined destroy of WeakObserver(v41);
      }

      v31 += 16;
      --v30;
    }

    while (v30);
  }

  else
  {
  }
}

void specialized Set.union<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4, v12);
      (*(v5 + 32))(v7, v14, v4);
      specialized Set._Variant.insert(_:)(v10, v7);
      (*(v5 + 8))(v10, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void CalculateDocumentController.trackResult(for:itemUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  if (CalculateExpression.isActuallyGraphable.getter() || (CalculateExpression.isDeclaration.getter() & 1) != 0)
  {
    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(a2, &v28);
    swift_endAccess();
    outlined destroy of StocksKitCurrencyCache.Provider?(&v28, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd);
    return;
  }

  if ((CalculateExpression.needsEvaluation.getter() & 1) == 0)
  {
    CalculateDocumentController.sendResultForExpression(_:itemUUID:)(a1, a2);
  }

  CalculateExpression.id.getter();
  v13 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_trackedExpressionsForResults;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (!*(v14 + 16) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v16 & 1) == 0))
  {
    v28 = 0;
    v29 = 1;
    outlined destroy of StocksKitCurrencyCache.Provider?(&v28, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd);
    swift_endAccess();
    (*(v7 + 8))(v12, v6);
LABEL_16:
    CalculateExpression.id.getter();
    swift_weakInit();
    swift_weakAssign();
    v29 = 0;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v28, v9);
    v26 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v26);
    *(&v27 - 4) = v3;
    *(&v27 - 3) = a1;
    *(&v27 - 2) = a2;
    withObservationTracking<A>(_:onChange:)();
    return;
  }

  outlined init with copy of WeakCalculateExpression(*(v14 + 56) + 8 * v15, &v28);
  v29 = 0;
  Strong = swift_weakLoadStrong();
  outlined destroy of StocksKitCurrencyCache.Provider?(&v28, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd);
  swift_endAccess();
  (*(v7 + 8))(v12, v6);
  if (!Strong)
  {
    goto LABEL_16;
  }

  if (Strong != a1)
  {
    goto LABEL_16;
  }

  if (one-time initialization token for mathLogger != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, mathLogger);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30[0] = v22;
    *v21 = 136380675;
    v23 = CalculateExpression.expression.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v30);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1D38C4000, v19, v20, "Already tracked result for: %{private}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1DA6D0660](v22, -1, -1);
    MEMORY[0x1DA6D0660](v21, -1, -1);
  }
}

uint64_t closure #2 in CalculateDocumentController.mathDidUpdateExpressions(_:newExpressions:removedExpressions:mathItems:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  (*(v10 + 24))(v9, v10);
  CalculateDocumentController.trackResult(for:itemUUID:)(a2, v8);
  return (*(v6 + 8))(v8, v5);
}

void CalculateDocumentController.trackTokens(for:itemUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  if ((CalculateExpression.needsEvaluation.getter() & 1) == 0)
  {
    CalculateDocumentController.updateTokens(expression:itemUUID:)(a1, a2);
  }

  CalculateExpression.id.getter();
  v13 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_trackedExpressionsForTokens;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (!*(v14 + 16) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v16 & 1) == 0))
  {
    v28 = 0;
    v29 = 1;
    outlined destroy of StocksKitCurrencyCache.Provider?(&v28, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd);
    swift_endAccess();
    (*(v7 + 8))(v12, v6);
LABEL_13:
    CalculateExpression.id.getter();
    swift_weakInit();
    swift_weakAssign();
    v29 = 0;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v28, v9);
    v26 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v26);
    *(&v27 - 4) = v3;
    *(&v27 - 3) = a1;
    *(&v27 - 2) = a2;
    withObservationTracking<A>(_:onChange:)();
    return;
  }

  outlined init with copy of WeakCalculateExpression(*(v14 + 56) + 8 * v15, &v28);
  v29 = 0;
  Strong = swift_weakLoadStrong();
  outlined destroy of StocksKitCurrencyCache.Provider?(&v28, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd);
  swift_endAccess();
  (*(v7 + 8))(v12, v6);
  if (!Strong)
  {
    goto LABEL_13;
  }

  if (Strong != a1)
  {
    goto LABEL_13;
  }

  if (one-time initialization token for mathLogger != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, mathLogger);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30[0] = v22;
    *v21 = 136380675;
    v23 = CalculateExpression.expression.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v30);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1D38C4000, v19, v20, "Already tracked tokens for: %{private}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1DA6D0660](v22, -1, -1);
    MEMORY[0x1DA6D0660](v21, -1, -1);
  }
}

uint64_t CalculateDocumentController.findMatchingGraphableForOrphanedGraphable(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  v4 = MEMORY[0x1EEE9AC00](v66);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v67 = &v58 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - v12;
  v78 = type metadata accessor for UUID();
  v14 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v65 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v77 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit19GraphableExpressionVSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v79 = &v58 - v19;
  v20 = type metadata accessor for GraphableExpression(0);
  v70 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_22;
  }

  v64 = v14;
  v24 = *(v22 + 8);
  v25 = Strong;
  ObjectType = swift_getObjectType();
  v27 = *(v24 + 8);
  v74 = ObjectType;
  v76 = v24;
  v28 = v27(ObjectType, v24);
  if (!v28)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v38 = *(v70 + 56);

    return v38(a2, 1, 1, v20);
  }

  v29 = v28;
  v75 = v25;
  v30 = MEMORY[0x1DA6CACA0]();
  v31 = v30;
  if (v30 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v60 = v6;
    v61 = v13;
    v62 = v11;
    v63 = a2;
    v6 = 0;
    v80 = v29;
    v81 = v31 & 0xC000000000000001;
    v69 = v31 & 0xFFFFFFFFFFFFFF8;
    v72 = (v70 + 48);
    v73 = v76 + 64;
    v71 = (v64 + 48);
    while (v81)
    {
      v13 = MEMORY[0x1DA6CE0C0](v6, v31);
      v33 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_28;
      }

LABEL_14:
      v11 = v20;
      v34 = CalculateExpression.expression.getter();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
      CRRegister.wrappedValue.getter();
      if (v34 == v83 && v36 == v84)
      {
      }

      else
      {
        a2 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((a2 & 1) == 0)
        {

          v20 = v11;
          goto LABEL_7;
        }
      }

      v37 = v79;
      (*(v76 + 64))(v13, v74);
      v20 = v11;
      if ((*v72)(v37, 1, v11) != 1)
      {
        swift_unknownObjectRelease();

        v40 = v68;
        outlined init with take of GraphableExpression(v37, v68);
        v41 = v40;
        v42 = v63;
        outlined init with take of GraphableExpression(v41, v63);
        v43 = *(v70 + 56);
        v44 = v42;
        v45 = 0;
        return v43(v44, v45, 1, v20);
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s8PaperKit19GraphableExpressionVSgMd);
      CRRegister.wrappedValue.getter();
      a2 = v77;
      UUID.init(uuidString:)();

      if ((*v71)(a2, 1, v78) != 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(a2, &_s10Foundation4UUIDVSgMd);
        v46 = CalculateExpression.expression.getter();
        v81 = v47;
        v82 = v46;
        v48 = v65;
        CalculateExpression.id.getter();
        v79 = UUID.uuidString.getter();
        v77 = v49;
        (*(v64 + 8))(v48, v78);
        v50 = v11;
        v51 = type metadata accessor for Color(0);
        v52 = *(*(v51 - 8) + 56);
        v53 = v61;
        v52(v61, 1, 1, v51);
        outlined init with copy of Date?(v53, v62, &_s8PaperKit5ColorVSgMd);
        v83 = 0;
        v84 = 0xE000000000000000;
        v54 = v63;
        CRRegister.init(wrappedValue:)();
        v83 = 0;
        v84 = 0xE000000000000000;
        CRRegister.init(wrappedValue:)();
        v78 = *(v50 + 6);
        v55 = v67;
        v52(v67, 1, 1, v51);
        v56 = v60;
        outlined init with copy of Date?(v55, v60, &_s8PaperKit5ColorVSgMd);
        lazy protocol witness table accessor for type Color? and conformance <A> A?();
        CRRegister.init(wrappedValue:)();
        outlined destroy of StocksKitCurrencyCache.Provider?(v55, &_s8PaperKit5ColorVSgMd);
        v59 = v50;
        v83 = 0;
        v84 = 0xE000000000000000;
        CRRegister.init(wrappedValue:)();
        UnknownProperties.init()();
        v83 = v82;
        v84 = v81;
        CRRegister.wrappedValue.setter();
        v83 = v79;
        v84 = v77;
        CRRegister.wrappedValue.setter();
        v57 = v62;
        outlined init with copy of Date?(v62, v55, &_s8PaperKit5ColorVSgMd);
        outlined init with copy of Date?(v55, v56, &_s8PaperKit5ColorVSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
        CRRegister.wrappedValue.setter();
        outlined destroy of StocksKitCurrencyCache.Provider?(v55, &_s8PaperKit5ColorVSgMd);
        v83 = 0;
        v84 = 0xE000000000000000;
        CRRegister.wrappedValue.setter();
        swift_unknownObjectRelease();

        outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s8PaperKit5ColorVSgMd);
        outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s8PaperKit5ColorVSgMd);
        return (*(v70 + 56))(v54, 0, 1, v59);
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(a2, &_s10Foundation4UUIDVSgMd);
LABEL_7:
      ++v6;
      v29 = v80;
      if (v33 == i)
      {

        a2 = v63;
        goto LABEL_32;
      }
    }

    if (v6 >= *(v69 + 16))
    {
      goto LABEL_29;
    }

    v13 = *(v31 + 8 * v6 + 32);

    v33 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_32:
  swift_unknownObjectRelease();
  v43 = *(v70 + 56);
  v44 = a2;
  v45 = 1;
  return v43(v44, v45, 1, v20);
}

uint64_t CalculateDocumentController.sendResultForExpression(_:itemUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = CalculateExpression.result.getter();
  if (v5)
  {
    v6 = v5;
    if (![v5 isTrivial])
    {
      v13 = [v6 formattedResult];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v14;

      v9 = CalculateExpression.result.getter();
      if (v9)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }
  }

  v7 = 0;
  v8 = 0;
  v9 = CalculateExpression.result.getter();
  if (v9)
  {
LABEL_5:
    v10 = v9;
    v11 = [v9 unitType];

    v12 = v11 == 16;
    goto LABEL_8;
  }

LABEL_7:
  v12 = 0;
LABEL_8:
  v15 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
  swift_beginAccess();
  v16 = *(v3 + v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + 32;

    do
    {
      outlined init with copy of WeakObserver(v18, v22);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = v23;
        ObjectType = swift_getObjectType();
        (*(v19 + 8))(v7, v8, a2, v12, ObjectType, v19);
        swift_unknownObjectRelease();
      }

      outlined destroy of WeakObserver(v22);
      v18 += 16;
      --v17;
    }

    while (v17);
  }
}

Swift::Void __swiftcall CalculateDocumentController.sendExpressionsChanged()()
{
  v1 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;

    do
    {
      outlined init with copy of WeakObserver(v4, v7);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = v8;
        ObjectType = swift_getObjectType();
        (*(v5 + 16))(ObjectType, v5);
        swift_unknownObjectRelease();
      }

      outlined destroy of WeakObserver(v7);
      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

void (*implicit closure #3 in CalculateDocumentController.trackResult(for:itemUUID:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  (*(v5 + 32))(v10 + v9, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  return partial apply for closure #2 in implicit closure #3 in CalculateDocumentController.trackResult(for:itemUUID:);
}

uint64_t closure #1 in CalculateDocumentController.trackTokens(for:itemUUID:)()
{
  CalculateExpression.plain.getter();

  CalculateExpression.graphableVariable.getter();
}

void (*implicit closure #2 in CalculateDocumentController.trackTokens(for:itemUUID:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  (*(v5 + 32))(v10 + v9, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  return partial apply for closure #2 in implicit closure #2 in CalculateDocumentController.trackTokens(for:itemUUID:);
}

void closure #2 in implicit closure #3 in CalculateDocumentController.trackResult(for:itemUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v30 = a5;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v35 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v34 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v33 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    if (v15)
    {
      v25 = v15;
      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)(a3, v37);
      swift_endAccess();
      outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVSgMd);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v26 = static OS_dispatch_queue.main.getter();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      swift_weakInit();
      (*(v11 + 16))(&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
      v18 = v28;
      v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v16;
      *(v20 + 24) = v17;
      (*(v11 + 32))(v20 + v19, &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      aBlock[4] = v31;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = v32;
      v21 = _Block_copy(aBlock);

      v22 = v33;
      static DispatchQoS.unspecified.getter();
      v37[0] = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v23 = v35;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v24 = v26;
      MEMORY[0x1DA6CD890](0, v22, v23, v21);
      _Block_release(v21);

      (*(v29 + 8))(v23, v18);
      (*(v34 + 8))(v22, v27);
    }

    else
    {
    }
  }
}

void closure #1 in closure #2 in implicit closure #3 in CalculateDocumentController.trackResult(for:itemUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      a4();
    }

    else
    {
    }
  }
}

uint64_t CalculateDocumentController.resultForExpressionWithUUID(_:locale:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_document;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    if ((*(v7 + 48))(a1, ObjectType, v7))
    {
      v9 = CalculateExpression.result.getter();
      if (v9)
      {
        v10 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd);
        v11 = type metadata accessor for Locale();
        v12 = *(v11 - 8);
        v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1D4058CF0;
        (*(v12 + 16))(v14 + v13, a2, v11);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v10 setLocales_];

        if (([v10 isTrivial] & 1) == 0)
        {
          v16 = [v10 formattedResult];
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          swift_unknownObjectRelease();

          return v17;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeakObserver(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WeakObserver(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

uint64_t specialized static CalculateDocumentController.cleanupStaleControllers()()
{
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit17DrawingIdentifier33_8D2F688A48D6891537C9DABEFCA94965LLV_AC27CalculateDocumentControllerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (one-time initialization token for controllers != -1)
  {
LABEL_17:
    swift_once();
  }

  swift_beginAccess();
  v0 = static CalculateDocumentController.controllers;
  v1 = static CalculateDocumentController.controllers + 64;
  v2 = 1 << *(static CalculateDocumentController.controllers + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(static CalculateDocumentController.controllers + 8);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_11:
    while (1)
    {
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = (v6 << 9) | (8 * v8);
      v10 = *(v0[7] + v9);
      v11 = *(v0[6] + v9);
      v12 = v10;
      CalculateDocumentController.cleanupObservers()();
      v13 = OBJC_IVAR____TtC8PaperKit27CalculateDocumentController_observers;
      swift_beginAccess();
      if (*(*&v12[v13] + 16))
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          break;
        }
      }

      if (!v4)
      {
        goto LABEL_7;
      }
    }

    swift_unknownObjectRelease();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v11, isUniquelyReferenced_nonNull_native);
  }

  while (1)
  {
LABEL_7:
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *&v1[8 * v7];
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_11;
    }
  }

  static CalculateDocumentController.controllers = v16;
}

uint64_t objectdestroy_12Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of GraphableExpression(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphableExpression(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_22Tm()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void partial apply for closure #1 in CalculateDocumentController.trackResult(for:itemUUID:)()
{
  v0 = CalculateExpression.result.getter();
}

uint64_t objectdestroy_38Tm_0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in CalculateDocumentController.init()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in CalculateDocumentController.init()();
}

unint64_t lazy protocol witness table accessor for type DrawingIdentifier and conformance DrawingIdentifier()
{
  result = lazy protocol witness table cache variable for type DrawingIdentifier and conformance DrawingIdentifier;
  if (!lazy protocol witness table cache variable for type DrawingIdentifier and conformance DrawingIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DrawingIdentifier and conformance DrawingIdentifier);
  }

  return result;
}

uint64_t UUID.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        goto LABEL_21;
      }

      if (a1 > a1 >> 32)
      {
        goto LABEL_25;
      }

      v9 = __DataStorage._bytes.getter();
      if (!v9)
      {
        goto LABEL_30;
      }

      v10 = v9;
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(a1, v11))
      {
        goto LABEL_27;
      }

      v12 = a1 - v11 + v10;
      MEMORY[0x1DA6C8120]();
      if (v12)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_24;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v15 = *(a1 + 16);
    v16 = __DataStorage._bytes.getter();
    if (!v16)
    {
      goto LABEL_28;
    }

    v17 = v16;
    v18 = __DataStorage._offset.getter();
    if (!__OFSUB__(v15, v18))
    {
      v19 = v15 - v18 + v17;
      MEMORY[0x1DA6C8120]();
      if (!v19)
      {
        goto LABEL_29;
      }

LABEL_21:
      UUID.init(uuid:)();
      return outlined consume of Data._Representation(a1, a2);
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    MEMORY[0x1DA6C8120]();
LABEL_29:
    __break(1u);
LABEL_30:
    result = MEMORY[0x1DA6C8120]();
    __break(1u);
    return result;
  }

  if (v4 != 2)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v8 == 16)
  {
    goto LABEL_8;
  }

LABEL_17:
  v13 = type metadata accessor for CRCodingError();
  lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError();
  swift_allocError();
  strcpy(v14, "Invalid UUID.");
  *(v14 + 7) = -4864;
  (*(*(v13 - 8) + 104))(v14, *MEMORY[0x1E6995188], v13);
  swift_willThrow();
  return outlined consume of Data._Representation(a1, a2);
}

uint64_t UUID.data()()
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = UUID.uuid.getter();
  v10 = v0;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  UUID.uuid.getter();
  return specialized Data.init(bytes:count:)(&v9, 16);
}

uint64_t UUID.asUInt64Hash.getter()
{
  v14 = *MEMORY[0x1E69E9840];
  v13[0] = UUID.uuid.getter();
  v13[1] = v0;
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v13, &v14);
  if (v1[2] < 8uLL)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v2 = v1;
  v3 = swift_retain_n();
  _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCs10ArraySliceVyAEG_Tt0g5(v3, (v3 + 32), 0, 17);
  v5 = v4;
  v7 = v6;
  v8 = *(v2 + 16);

  if (v8 < 0x10)
  {
    goto LABEL_5;
  }

  _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCs10ArraySliceVyAEG_Tt0g5(v2, (v2 + 32), 8, 33);
  v10 = v9;
  outlined consume of Data._Representation(v9, v11);
  outlined consume of Data._Representation(v5, v7);
  return v10 ^ v5;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError()
{
  result = lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError;
  if (!lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError)
  {
    type metadata accessor for CRCodingError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError);
  }

  return result;
}

uint64_t specialized static UUID.< infix(_:_:)()
{
  v20 = UUID.uuid.getter();
  LOWORD(v21) = v0;
  BYTE2(v21) = v1;
  BYTE3(v21) = v2;
  BYTE4(v21) = v3;
  BYTE5(v21) = v4;
  BYTE6(v21) = v5;
  HIBYTE(v21) = v6;
  v18 = UUID.uuid.getter();
  LOWORD(v19) = v7;
  BYTE2(v19) = v8;
  BYTE3(v19) = v9;
  BYTE4(v19) = v10;
  BYTE5(v19) = v11;
  BYTE6(v19) = v12;
  HIBYTE(v19) = v13;
  v14 = bswap64(v20);
  v15 = bswap64(v18);
  if (v14 == v15 && (v14 = bswap64(v21), v15 = bswap64(v19), v14 == v15))
  {
    v16 = 0;
  }

  else if (v14 < v15)
  {
    v16 = -1;
  }

  else
  {
    v16 = 1;
  }

  return v16 >> 31;
}

uint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t StepperButton.addTarget(_:action:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8PaperKit13StepperButton_contentButton);
  outlined init with copy of Any?(a1, v15);
  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v13 = 0;
  }

  [v6 addTarget:v13 action:a2 forControlEvents:a3];
  return swift_unknownObjectRelease();
}

char *StepperButton.init(image:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8PaperKit13StepperButton_contentButton;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v5 = OBJC_IVAR____TtC8PaperKit13StepperButton_imageView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v6 = OBJC_IVAR____TtC8PaperKit13StepperButton_imageConfiguration;
  *&v1[v6] = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:19.0];
  *&v1[OBJC_IVAR____TtC8PaperKit13StepperButton_image] = a1;
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v47 = a1;
  v7 = objc_msgSendSuper2(&v48, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = OBJC_IVAR____TtC8PaperKit13StepperButton_contentButton;
  v9 = *&v7[OBJC_IVAR____TtC8PaperKit13StepperButton_contentButton];
  v10 = v7;
  [v9 setUserInteractionEnabled_];
  [*&v7[v8] setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = v10;
  v12 = *&v7[v8];
  v13 = v11;
  [v13 addSubview_];
  v14 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D405B630;
  v16 = [*&v7[v8] topAnchor];
  v17 = [v13 topAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v15 + 32) = v18;
  v19 = [*&v7[v8] leadingAnchor];
  v20 = [v13 leadingAnchor];

  v21 = [v19 &selRef:v20 setFindInteractionEnabled:? + 5];
  *(v15 + 40) = v21;
  v22 = [*&v7[v8] bottomAnchor];
  v23 = [v13 bottomAnchor];

  v24 = [v22 &selRef:v23 setFindInteractionEnabled:? + 5];
  *(v15 + 48) = v24;
  v25 = [*&v7[v8] trailingAnchor];
  v26 = [v13 trailingAnchor];

  v27 = [v25 &selRef:v26 setFindInteractionEnabled:? + 5];
  *(v15 + 56) = v27;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v29 = v14;
  [v14 activateConstraints_];

  v30 = OBJC_IVAR____TtC8PaperKit13StepperButton_imageView;
  v31 = *&v13[OBJC_IVAR____TtC8PaperKit13StepperButton_image];
  v32 = *&v13[OBJC_IVAR____TtC8PaperKit13StepperButton_imageConfiguration];
  v33 = *&v13[OBJC_IVAR____TtC8PaperKit13StepperButton_imageView];
  v34 = [v31 imageWithConfiguration_];
  [v33 setImage_];

  [*&v13[v30] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v7[v8] addSubview_];
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D405B640;
  v36 = [*&v13[v30] centerXAnchor];
  v37 = [v13 centerXAnchor];

  v38 = [v36 constraintEqualToAnchor_];
  *(v35 + 32) = v38;
  v39 = [*&v13[v30] centerYAnchor];
  v40 = [v13 centerYAnchor];

  v41 = [v39 constraintEqualToAnchor_];
  *(v35 + 40) = v41;
  v42 = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints_];

  StepperButton.updateUI()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D4058CF0;
  v44 = type metadata accessor for UITraitUserInterfaceStyle();
  v45 = MEMORY[0x1E69DC0F8];
  *(v43 + 32) = v44;
  *(v43 + 40) = v45;
  MEMORY[0x1DA6CDBA0](v43, sel_updateUI);

  swift_unknownObjectRelease();

  return v13;
}

void StepperButton.updateUI()()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit13StepperButton_contentButton];
  v19.receiver = v0;
  v19.super_class = ObjectType;
  [v2 setEnabled_];
  v18.receiver = v0;
  v18.super_class = ObjectType;
  LODWORD(v2) = objc_msgSendSuper2(&v18, sel_isHighlighted);
  v3 = objc_opt_self();
  v4 = &selRef_tertiarySystemFillColor;
  if (!v2)
  {
    v4 = &selRef_quaternarySystemFillColor;
  }

  v5 = [v3 *v4];
  [v0 setBackgroundColor_];

  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceStyle];

  v8 = objc_opt_self();
  v9 = v8;
  if (v7 == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if (v7 == 2)
  {
    v11 = &selRef_systemGrayColor;
  }

  else
  {
    v11 = &selRef_systemGray3Color;
  }

  if (v7 == 2)
  {
    v12 = &selRef_systemGray3Color;
  }

  else
  {
    v12 = &selRef_systemGrayColor;
  }

  v13 = [v8 *v11];
  v14 = [v9 *v12];
  v15 = *&v0[OBJC_IVAR____TtC8PaperKit13StepperButton_imageView];
  v17.receiver = v0;
  v17.super_class = ObjectType;
  if (objc_msgSendSuper2(&v17, sel_isEnabled))
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  [v15 setTintColor_];
  [v15 setOverrideUserInterfaceStyle_];
}

id @objc StepperButton.isSelected.getter(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

void @objc StepperButton.isSelected.setter(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  StepperButton.updateUI()();
}

uint64_t StepperButton.removeTarget(_:action:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC8PaperKit13StepperButton_contentButton);
  outlined init with copy of Any?(a1, v15);
  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v13 = 0;
  }

  [v6 removeTarget:v13 action:a2 forControlEvents:a3];
  return swift_unknownObjectRelease();
}

void specialized StepperButton.init(coder:)()
{
  v1 = OBJC_IVAR____TtC8PaperKit13StepperButton_contentButton;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v2 = OBJC_IVAR____TtC8PaperKit13StepperButton_imageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v3 = OBJC_IVAR____TtC8PaperKit13StepperButton_imageConfiguration;
  *(v0 + v3) = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:19.0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t CanvasCalculateDocumentIndex.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1DA6CE840](*&v1);
}

Swift::Int CanvasCalculateDocumentIndex.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA6CE840](*&v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CanvasCalculateDocumentIndex()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA6CE840](*&v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CanvasCalculateDocumentIndex()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA6CE840](*&v2);
  return Hasher._finalize()();
}

Swift::Int CalculateDocumentExpressionSolvingBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

uint64_t CanvasCalculateDocument.graphableExpression(for:)@<X0>(uint64_t a1@<X8>)
{
  return CanvasCalculateDocument.graphableExpression(for:)(a1);
}

{
  v2 = type metadata accessor for GraphableExpression(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t lazy protocol witness table accessor for type CanvasCalculateDocumentIndex and conformance CanvasCalculateDocumentIndex()
{
  result = lazy protocol witness table cache variable for type CanvasCalculateDocumentIndex and conformance CanvasCalculateDocumentIndex;
  if (!lazy protocol witness table cache variable for type CanvasCalculateDocumentIndex and conformance CanvasCalculateDocumentIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasCalculateDocumentIndex and conformance CanvasCalculateDocumentIndex);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CalculateDocumentExpressionSolvingBehavior and conformance CalculateDocumentExpressionSolvingBehavior()
{
  result = lazy protocol witness table cache variable for type CalculateDocumentExpressionSolvingBehavior and conformance CalculateDocumentExpressionSolvingBehavior;
  if (!lazy protocol witness table cache variable for type CalculateDocumentExpressionSolvingBehavior and conformance CalculateDocumentExpressionSolvingBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalculateDocumentExpressionSolvingBehavior and conformance CalculateDocumentExpressionSolvingBehavior);
  }

  return result;
}

uint64_t AnyCanvasElementView.isEditingCanvasElement.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v31 - v14;
  v16 = MEMORY[0x1E69E7D40];
  v17 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))(v13);
  if (v17)
  {
    v18 = v17;
    (*((*v16 & *v17) + 0x448))();

    v19 = *(v3 + 56);
    v20 = v19(v15, 0, 1, v2);
  }

  else
  {
    v19 = *(v3 + 56);
    v20 = v19(v15, 1, 1, v2);
  }

  (*((*v16 & *v1) + 0xE8))(v20);
  v19(v12, 0, 1, v2);
  v21 = *(v34 + 48);
  outlined init with copy of CRKeyPath?(v15, v6);
  outlined init with copy of CRKeyPath?(v12, &v6[v21]);
  v22 = *(v3 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    v24 = v3;
    v25 = v33;
    outlined init with copy of CRKeyPath?(v6, v33);
    if (v22(&v6[v21], 1, v2) != 1)
    {
      v26 = *(v3 + 32);
      v27 = v32;
      v26(v32, &v6[v21], v2);
      lazy protocol witness table accessor for type CRKeyPath and conformance CRKeyPath();
      v28 = v25;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v24 + 8);
      v29(v27, v2);
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence9CRKeyPathVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence9CRKeyPathVSgMd);
      v29(v28, v2);
      outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence9CRKeyPathVSgMd);
      return v23 & 1;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence9CRKeyPathVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence9CRKeyPathVSgMd);
    (*(v3 + 8))(v25, v2);
    goto LABEL_9;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence9CRKeyPathVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence9CRKeyPathVSgMd);
  if (v22(&v6[v21], 1, v2) != 1)
  {
LABEL_9:
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence9CRKeyPathVSg_ADtMd);
    v23 = 0;
    return v23 & 1;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence9CRKeyPathVSgMd);
  v23 = 1;
  return v23 & 1;
}

uint64_t AnyCanvasElementView.weakCanvasElement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v19 - v13;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    v15 = 1;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    (*(v8 + 16))(v11, v14, v7);
    WeakTagged_10.tag.getter();
    v19 = v21;
    v20 = v22;
    MEMORY[0x1DA6CB7A0](v7);
    lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
    WeakTagged_10.init(_:id:)();
    v16 = *(v8 + 8);
    v16(v11, v7);
    v16(v14, v7);
    v15 = 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v17 - 8) + 56))(a1, v15, 1, v17);
}

uint64_t AnyCanvasElementView.resizeHandles.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1D0))();
  if ((~v1 & 6) != 0)
  {
    if ((v1 & 2) == 0)
    {
      return MEMORY[0x1E69E7CD0];
    }

    v2 = &outlined read-only object #1 of static ResizeHandleType.handles(for:);
  }

  else
  {
    v2 = &outlined read-only object #0 of static ResizeHandleType.handles(for:);
  }

  return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8PaperKit16ResizeHandleTypeO_SayAFGTt0g5Tf4g_n(v2);
}

BOOL AnyCanvasElementView.hasLiveEditModification.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x298))(v4);
  (*((*v1 & *v0) + 0x2A0))(v5, v2);
  return (static CGAffineTransform.== infix(_:_:)() & 1) == 0;
}

double AnyCanvasElementView.selectionCoordinateSpace.getter@<D0>(_OWORD *a1@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

void __swiftcall AnyCanvasElementView.boundsTransform()(CGAffineTransform *__return_ptr retstr)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x280))();
  CGAffineTransformMakeTranslation(&v7, -v3, -v4);
  v5 = *&v7.c;
  v6 = *&v7.tx;
  *&retstr->a = *&v7.a;
  *&retstr->c = v5;
  *&retstr->tx = v6;
}

void __swiftcall AnyCanvasElementView.paperBoundsTransform()(CGAffineTransform *__return_ptr retstr)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(&v26);
    v5 = v28;
    v6 = v29;
    AnyCanvasElementView.paperBoundsTransform()(&v24);
    CGAffineTransformMakeScale(&t1, v24.a, v24.a);
    v7 = *&t1.a;
    v8 = *&t1.c;
    v9 = *&t1.tx;
    *&t1.a = v26;
    *&t1.c = v27;
    t1.tx = v5;
    t1.ty = v6;
    *&t2.a = v7;
    *&t2.c = v8;
    *&t2.tx = v9;
    CGAffineTransformConcat(&v21, &t1, &t2);
    v19 = *&v21.a;
    v20 = *&v21.c;
    tx = v21.tx;
    ty = v21.ty;

    v13 = v19;
    v12 = v20;
  }

  else
  {
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
    }

    else
    {
      v15 = MEMORY[0x1E69E7D40];
      v16 = v1;
      v17 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
      if (v17)
      {
        v18 = v17;
        (*((*v15 & *v17) + 0x858))(&v24);

        v1 = v16;
        if ((v25 & 1) == 0)
        {
          v13 = *&v24.a;
          v12 = *&v24.c;
          tx = v24.tx;
          ty = v24.ty;
          goto LABEL_6;
        }
      }
    }

    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(&v26);
    v13 = v26;
    v12 = v27;
    tx = v28;
    ty = v29;
  }

LABEL_6:
  *&retstr->a = v13;
  *&retstr->c = v12;
  retstr->tx = tx;
  retstr->ty = ty;
}

void __swiftcall AnyCanvasElementView.orientationTransform()(CGAffineTransform *__return_ptr retstr)
{
  AnyCanvasElementView.paperBoundsTransform()(&v10);
  tx = v10.tx;
  ty = v10.ty;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2D0))();
  [v1 bounds];
  CGImagePropertyOrientation.originAlignedTransform(_:)(&v11, v12);
  *&t1.a = *&v10.a;
  *&t1.c = *&v10.c;
  t1.tx = tx;
  t1.ty = ty;
  t2 = v11;
  CGAffineTransformConcat(&v7, &t1, &t2);
  v5 = *&v7.c;
  v6 = *&v7.tx;
  *&retstr->a = *&v7.a;
  *&retstr->c = v5;
  *&retstr->tx = v6;
}

Swift::Void __swiftcall AnyCanvasElementView.didBeginDrawing()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))();
  if (v2)
  {
    v3 = v2;
    (*((*v1 & *v2) + 0x860))();
  }
}

Swift::Void __swiftcall AnyCanvasElementView.didEndDrawing()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))();
  if (v1)
  {
    v2 = v1;
    AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
  }
}

Swift::Bool __swiftcall AnyCanvasElementView.intersects(_:canvasBounds:)(__C::CGRect _, __C::CGRect canvasBounds)
{
  height = _.size.height;
  width = _.size.width;
  y = _.origin.y;
  x = _.origin.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    [v2 bounds];
    v13 = x;
    v14 = y;
    v15 = width;
    v16 = height;
    goto LABEL_5;
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x290))(&v22);
  a = v22.a;
  b = v22.b;
  c = v22.c;
  d = v22.d;
  v21 = v22;
  ty = v22.ty;
  tx = v22.tx;
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = 1.0;
  v23.size.height = 1.0;
  v24 = CGRectApplyAffineTransform(v23, &v21);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v12 = CGRectIntersectsRect(v24, v27);
  if (v12)
  {
    v21.a = a;
    v21.b = b;
    v21.c = c;
    v21.d = d;
    v21.tx = tx;
    v21.ty = ty;
    CGAffineTransformInvert(&v20, &v21);
    v21 = v20;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v26 = CGRectApplyAffineTransform(v25, &v21);
    v13 = 0.0;
    v14 = 0.0;
    v15 = 1.0;
    v16 = 1.0;
LABEL_5:
    LOBYTE(v12) = CGRectIntersectsRect(v26, *&v13);
  }

  return v12;
}

id AnyCanvasElementView.dragInteractionPreviewForLifting(item:session:)()
{
  result = [v0 window];
  if (result)
  {

    return [objc_allocWithZone(MEMORY[0x1E69DD068]) initWithView_];
  }

  return result;
}

id AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDragging] = 0;
  v6[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isContextMenuInteractionVisible] = 0;
  v6[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDetectedFormField] = 0;
  v6[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext] = 0;
  v6[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_suppressRoundedCorners] = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v6[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isSelected] = 0;
  v18.receiver = v6;
  v18.super_class = type metadata accessor for AnyCanvasElementView();
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a3, a4, a5, a6);
  v14 = [v13 layer];
  v15 = [objc_opt_self() blueColor];
  v16 = [v15 CGColor];

  [v14 setBorderColor_];
  return v13;
}

Swift::Void __swiftcall AnyCanvasElementView.updateFrame()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = specialized static AnyCanvasElementView.convert(_:to:)(Strong, v1, v3, v5, v7);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v0 setFrame_];

  [v0 setNeedsLayout];
}

id AnyCanvasElementView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnyCanvasElementView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void @objc AnyCanvasElementView.contextMenuInteraction(_:willDisplayMenuFor:animator:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, char a6)
{
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = a1;
  specialized AnyCanvasElementView.contextMenuInteraction(_:willDisplayMenuFor:animator:)(a6);

  swift_unknownObjectRelease();
}

void specialized AnyCanvasElementView.init(coder:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDragging) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isContextMenuInteractionVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDetectedFormField) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_suppressRoundedCorners) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double specialized static AnyCanvasElementView.convert(_:to:)(void *a1, double a2, double a3, double a4, double a5)
{
  if (a1)
  {
    v6 = a2;
    v7 = a3;
    v8 = a4;
    v9 = a5;
    AnyCanvasElementView.paperBoundsTransform()(&v34);
    v31 = *&v34.a;
    v32 = *&v34.c;
    v30 = *&v34.tx;
    v10 = [a1 window];
    v11 = 1.0;
    v12 = 1.0;
    if (v10)
    {
      v13 = v10;
      v14 = [v10 screen];

      [v14 scale];
      v12 = v15;
    }

    v16 = MEMORY[0x1E69E7D40];
    v17 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x90))();
    if (v17)
    {
      v18 = v17;
      v19 = (*((*v16 & *v17) + 0x450))();

      if (v19)
      {
        [v19 zoomScale];
        v11 = v20;
      }
    }

    a5 = v9;
    a4 = v8;
    a3 = v7;
    a2 = v6;
    v22 = v31;
    v21 = v32;
    v23 = v30;
  }

  else
  {
    v21 = xmmword_1D4059310;
    v22 = xmmword_1D4059320;
    v23 = 0uLL;
    v11 = 1.0;
    v12 = 1.0;
  }

  *&v33.a = v22;
  *&v33.c = v21;
  *&v33.tx = v23;
  v35 = CGRectApplyAffineTransform(*&a2, &v33);
  v36.origin.x = CGRect.rounded(scale:)(v11 * v12, v35.origin.x, v35.origin.y, v35.size.width, v35.size.height);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  CGRectGetMinY(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  CGRectGetWidth(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  CGRectGetHeight(v39);
  return MinX;
}

void specialized AnyCanvasElementView.contextMenuInteraction(_:willDisplayMenuFor:animator:)(char a1)
{
  *(v1 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isContextMenuInteractionVisible) = a1;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    v4 = v2;
    v5 = v3;

    if (v3)
    {
      v5[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_hasDraggingCanvasElement] = *(v1 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDragging);
      [v5 setHidden_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t outlined init with copy of CRKeyPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CRKeyPath and conformance CRKeyPath()
{
  result = lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath;
  if (!lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath)
  {
    type metadata accessor for CRKeyPath();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath);
  }

  return result;
}

double TextBox.frame.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t (*TextBox.frame.modify(uint64_t *a1))()
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

uint64_t TextBox.$frame.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);

  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for TextBox.$frame : TextBox(uint64_t a1)
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

uint64_t TextBox.$frame.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*TextBox.$frame.modify(void *a1))(uint64_t a1, char a2)
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

double TextBox.rotation.getter()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for TextBox.rotation : TextBox@<D0>(double *a1@<X8>)
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for TextBox.rotation : TextBox()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t TextBox.rotation.setter()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*TextBox.rotation.modify(uint64_t *a1))()
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
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t TextBox.$rotation.getter()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for TextBox.$rotation : TextBox()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for TextBox.$rotation : TextBox(uint64_t a1)
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
  type metadata accessor for TextBox(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t TextBox.$rotation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for TextBox(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*TextBox.$rotation.modify(void *a1))()
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
  *(v5 + 12) = *(type metadata accessor for TextBox(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t TextBox.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TextBox(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TextBox.text.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TextBox(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TextBox.isFixedWidth.getter()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for TextBox.isFixedWidth : TextBox@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for TextBox.isFixedWidth : TextBox()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t TextBox.isFixedWidth.setter()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*TextBox.isFixedWidth.modify(uint64_t *a1))()
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
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t TextBox.$isFixedWidth.getter()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for TextBox.$isFixedWidth : TextBox()
{
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for TextBox.$isFixedWidth : TextBox(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for TextBox(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t TextBox.$isFixedWidth.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for TextBox(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*TextBox.$isFixedWidth.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
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
  *(v5 + 12) = *(type metadata accessor for TextBox(0) + 28);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

uint64_t TextBox.init()()
{
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  CRRegister.init(wrappedValue:)();
  type metadata accessor for TextBox(0);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:)();
  CRRegister.init(wrappedValue:)();
  return UnknownProperties.init()();
}

BOOL TextBox.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v94 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v78 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v78 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
  v93 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v84 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v78 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v92 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v83 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v85 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v78 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v82 = &v78 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v78 - v29;
  v95 = type metadata accessor for TextBox.Partial(0);
  MEMORY[0x1EEE9AC00](v95);
  v32 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TextBox.Partial(v2, v32, type metadata accessor for TextBox.Partial);
  v96 = a1;
  v33 = TextBox.Partial.canMerge(delta:)(a1);
  outlined destroy of TextBox.Partial(v32, type metadata accessor for TextBox.Partial);
  if (!v33)
  {
    return v33;
  }

  v80 = v33;
  v79 = v6;
  v81 = v4;
  outlined init with copy of Date?(v2, v30, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v34 = v2;
  v78 = v23;
  v35 = *(v23 + 48);
  v36 = v35(v30, 1, v22);
  outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v36 == 1)
  {
    v37 = v21;
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v96, v34, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v38 = v34;
  }

  else
  {
    outlined init with copy of Date?(v96, v27, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v35(v27, 1, v22) == 1)
    {
      v37 = v21;
      outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
      v38 = v34;
    }

    else
    {
      v39 = v78;
      v40 = v82;
      (*(v78 + 32))(v82, v27, v22);
      v38 = v34;
      if (!v35(v34, 1, v22))
      {
        CRRegister.merge(delta:)();
      }

      v37 = v21;
      (*(v39 + 8))(v40, v22);
    }
  }

  v41 = v88;
  v42 = v95;
  v43 = v95[5];
  v44 = v37;
  outlined init with copy of Date?(v38 + v43, v37, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v45 = *(v92 + 48);
  v46 = v45(v37, 1, v41);
  outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v47 = v42[5];
  v88 = v38;
  if (v46 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v96 + v47, v38 + v43, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v48 = v38;
  }

  else
  {
    v49 = v85;
    outlined init with copy of Date?(v96 + v47, v85, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    if (v45(v49, 1, v41) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
      v48 = v88;
    }

    else
    {
      v50 = v92;
      v51 = v83;
      (*(v92 + 32))(v83, v49, v41);
      v52 = v88;
      v53 = v45(v88 + v43, 1, v41);
      v48 = v52;
      if (!v53)
      {
        CRRegister.merge(delta:)();
      }

      (*(v50 + 8))(v51, v41);
    }
  }

  v54 = v95;
  v55 = v95[6];
  v56 = v89;
  outlined init with copy of Date?(v48 + v55, v89, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  v57 = *(v93 + 48);
  v58 = v90;
  v59 = v57(v56, 1, v90);
  outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  v60 = v54[6];
  if (v59 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v96 + v60, v48 + v55, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  }

  else
  {
    v61 = v86;
    outlined init with copy of Date?(v96 + v60, v86, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
    if (v57(v61, 1, v58) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
      v62 = v81;
      v48 = v88;
      goto LABEL_24;
    }

    v63 = v93;
    v64 = v84;
    (*(v93 + 32))(v84, v61, v58);
    v48 = v88;
    if (!v57(v88 + v55, 1, v58))
    {
      CRAttributedString.Partial.merge(delta:)();
    }

    (*(v63 + 8))(v64, v58);
  }

  v62 = v81;
LABEL_24:
  v65 = v95;
  v66 = v95[7];
  v67 = v91;
  outlined init with copy of Date?(v48 + v66, v91, &_s9Coherence10CRRegisterVySbGSgMd);
  v68 = v48;
  v69 = *(v94 + 48);
  v70 = v69(v67, 1, v62);
  outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence10CRRegisterVySbGSgMd);
  v71 = v65[7];
  if (v70 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v96 + v71, v68 + v66, &_s9Coherence10CRRegisterVySbGSgMd);
    LOBYTE(v33) = v80;
  }

  else
  {
    v72 = v87;
    outlined init with copy of Date?(v96 + v71, v87, &_s9Coherence10CRRegisterVySbGSgMd);
    v73 = v69(v72, 1, v62);
    LOBYTE(v33) = v80;
    if (v73 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence10CRRegisterVySbGSgMd);
    }

    else
    {
      v74 = v62;
      v75 = v94;
      v76 = v79;
      (*(v94 + 32))(v79, v72, v74);
      if (!v69(v88 + v66, 1, v74))
      {
        CRRegister.merge(delta:)();
      }

      (*(v75 + 8))(v76, v74);
    }
  }

  return v33;
}

BOOL TextBox.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v60 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v59 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
  v63 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v69 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v66 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v59 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v59 - v28;
  outlined init with copy of Date?(a1, v25, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v30 = *(v27 + 48);
  if (v30(v25, 1, v26) == 1)
  {
    v22 = v25;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v31 = v70;
    v32 = v71;
    v33 = v69;
    goto LABEL_6;
  }

  (*(v27 + 32))(v29, v25, v26);
  outlined init with copy of Date?(v72, v22, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v30(v22, 1, v26) == 1)
  {
    (*(v27 + 8))(v29, v26);
    goto LABEL_5;
  }

  v51 = CRRegister.canMerge(delta:)();
  v52 = *(v27 + 8);
  v52(v29, v26);
  v52(v22, v26);
  v31 = v70;
  v32 = v71;
  v33 = v69;
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v34 = type metadata accessor for TextBox.Partial(0);
  outlined init with copy of Date?(a1 + v34[5], v17, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v35 = v66;
  v36 = *(v66 + 48);
  if (v36(v17, 1, v18) == 1)
  {
    v33 = v17;
    v37 = v67;
LABEL_10:
    outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v39 = v68;
    goto LABEL_11;
  }

  v71 = a1;
  v38 = v61;
  (*(v35 + 32))(v61, v17, v18);
  outlined init with copy of Date?(v72 + v34[5], v33, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (v36(v33, 1, v18) == 1)
  {
    (*(v35 + 8))(v38, v18);
    v37 = v67;
    a1 = v71;
    goto LABEL_10;
  }

  v53 = CRRegister.canMerge(delta:)();
  v54 = *(v35 + 8);
  v54(v38, v18);
  v54(v33, v18);
  v37 = v67;
  v39 = v68;
  a1 = v71;
  if ((v53 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  outlined init with copy of Date?(a1 + v34[6], v31, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  v40 = v63;
  v41 = *(v63 + 48);
  if (v41(v31, 1, v39) == 1)
  {
    v32 = v31;
    v43 = v64;
    v42 = v65;
  }

  else
  {
    v44 = a1;
    (*(v40 + 32))(v37, v31, v39);
    outlined init with copy of Date?(v72 + v34[6], v32, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
    v45 = v41(v32, 1, v39);
    v46 = v40;
    v43 = v64;
    v42 = v65;
    if (v45 != 1)
    {
      v55 = CRAttributedString.Partial.canMerge(delta:)();
      v56 = *(v46 + 8);
      v56(v37, v39);
      v56(v32, v39);
      a1 = v44;
      if ((v55 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v46 + 8))(v37, v39);
    a1 = v44;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
LABEL_16:
  v47 = v62;
  outlined init with copy of Date?(a1 + v34[7], v62, &_s9Coherence10CRRegisterVySbGSgMd);
  v48 = *(v43 + 48);
  if (v48(v47, 1, v42) == 1)
  {
LABEL_19:
    outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence10CRRegisterVySbGSgMd);
    return 1;
  }

  v49 = v59;
  (*(v43 + 32))(v59, v47, v42);
  v47 = v60;
  outlined init with copy of Date?(v72 + v34[7], v60, &_s9Coherence10CRRegisterVySbGSgMd);
  if (v48(v47, 1, v42) == 1)
  {
    (*(v43 + 8))(v49, v42);
    goto LABEL_19;
  }

  v57 = CRRegister.canMerge(delta:)();
  v58 = *(v43 + 8);
  v58(v49, v42);
  v58(v47, v42);
  return (v57 & 1) != 0;
}

uint64_t TextBox.Partial.visitReferences(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  outlined init with copy of Date?(v1, &v24 - v12, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v15 + 8))(v13, v14);
  }

  v16 = type metadata accessor for TextBox.Partial(0);
  outlined init with copy of Date?(v1 + v16[5], v10, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v18 + 8))(v10, v17);
  }

  outlined init with copy of Date?(v1 + v16[6], v7, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v7, 1, v19) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  }

  else
  {
    CRAttributedString.Partial.visitReferences(_:)();
    (*(v20 + 8))(v7, v19);
  }

  outlined init with copy of Date?(v1 + v16[7], v4, &_s9Coherence10CRRegisterVySbGSgMd);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v4, 1, v21) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence10CRRegisterVySbGSgMd);
  }

  CRRegister.visitReferences(_:)();
  return (*(v22 + 8))(v4, v21);
}

uint64_t TextBox.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v12 = *(v11 - 8);
  v54 = *(v12 + 56);
  v55 = v11;
  v53 = v12 + 56;
  v54(a2, 1, 1);
  v13 = type metadata accessor for TextBox.Partial(0);
  v14 = v13[5];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v59 = v14;
  v51 = v16 + 56;
  v52 = v17;
  v17(a2 + v14, 1, 1, v15);
  v18 = v13[6];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
  v20 = (*(v19 - 8) + 56);
  v48 = *v20;
  v49 = v18;
  v48(a2 + v18, 1, 1, v19);
  v21 = v13[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v25 = v23 + 56;
  v62 = a2;
  v24(a2 + v21, 1, 1, v22);
  v26 = v61;
  dispatch thunk of CRDecoder.keyedContainer()();
  v61 = v26;
  if (v26)
  {

    v27 = v62;
    return outlined destroy of TextBox.Partial(v27, type metadata accessor for TextBox.Partial);
  }

  v42[1] = v20;
  v43 = v15;
  v45 = v19;
  v46 = v25;
  v47 = v24;
  v44 = v21;
  v28 = v57;
  v29 = v58;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    v30 = v56;
    v31 = v61;
    CRRegister.init(from:)();
    v32 = v31;
    v33 = v59;
    if (v31)
    {
      goto LABEL_13;
    }

    (v54)(v30, 0, 1, v55);
    outlined assign with take of UUID?(v30, v62, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v33 = v59;
    v32 = v61;
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(from:)();
    if (v32)
    {
LABEL_13:

      v27 = v62;
      return outlined destroy of TextBox.Partial(v27, type metadata accessor for TextBox.Partial);
    }

    v52(v28, 0, 1, v43);
    outlined assign with take of UUID?(v28, v62 + v33, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  v34 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v35 = v47;
  v36 = v45;
  if (v34)
  {
    lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
    CRAttributedString.Partial.init(from:)();
    if (v32)
    {
      goto LABEL_13;
    }

    v48(v29, 0, 1, v36);
    outlined assign with take of UUID?(v29, v62 + v49, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  }

  v38 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v39 = v44;
  if (v38)
  {
    v40 = v50;
    CRRegister.init(from:)();

    v27 = v62;
    if (v32)
    {
      return outlined destroy of TextBox.Partial(v27, type metadata accessor for TextBox.Partial);
    }

    v41 = v62;
    v35(v40, 0, 1, v22);
    return outlined assign with take of UUID?(v40, v41 + v39, &_s9Coherence10CRRegisterVySbGSgMd);
  }

  else
  {
  }
}

uint64_t TextBox.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v49 = &v46 - v1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v53 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v46 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  v21 = v58;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v21)
  {
    v47 = v13;
    v48 = v10;
    v46 = v7;
    v23 = v56;
    v24 = v57;
    v58 = 0;
    outlined init with copy of Date?(v57, v16, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      (*(v18 + 32))(v20, v16, v17);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
      v25 = v58;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v18 + 8))(v20, v17);
      if (v25)
      {
      }

      v58 = 0;
    }

    v26 = type metadata accessor for TextBox.Partial(0);
    v27 = v24 + v26[5];
    v28 = v48;
    outlined init with copy of Date?(v27, v48, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v29 = v54;
    v30 = v11;
    v31 = (*(v54 + 48))(v28, 1, v11);
    v32 = v23;
    v33 = v55;
    if (v31 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v34 = v47;
      (*(v29 + 32))(v47, v28, v30);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
      v35 = v58;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v29 + 8))(v34, v30);
      if (v35)
      {
      }

      v58 = 0;
    }

    v36 = v57;
    v37 = v51;
    outlined init with copy of Date?(v57 + v26[6], v51, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
    v38 = (*(v33 + 48))(v37, 1, v32);
    v40 = v52;
    v39 = v53;
    if (v38 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
      goto LABEL_16;
    }

    v41 = v46;
    (*(v33 + 32))(v46, v37, v32);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Partial and conformance CRAttributedString<A>.Partial, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
    v42 = v58;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v33 + 8))(v41, v32);
    if (!v42)
    {
      v58 = 0;
LABEL_16:
      v43 = v36 + v26[7];
      v44 = v49;
      v45 = v50;
      outlined init with copy of Date?(v43, v49, &_s9Coherence10CRRegisterVySbGSgMd);
      if ((*(v39 + 48))(v44, 1, v45) == 1)
      {

        return outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence10CRRegisterVySbGSgMd);
      }

      else
      {
        (*(v39 + 32))(v40, v44, v45);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Bool> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySbGMd);
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
        (*(v39 + 8))(v40, v45);
      }
    }
  }

  return result;
}

uint64_t protocol witness for ShapeTextBox.text.getter in conformance TextBox@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for ShapeTextBox.text.setter in conformance TextBox(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for ShapeTextBox.textResizeBehavior.getter in conformance TextBox@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  result = CRRegister.wrappedValue.getter();
  v3 = 2;
  if (!v4)
  {
    v3 = 3;
  }

  *a1 = v3;
  return result;
}

_BYTE *protocol witness for ShapeTextBox.textResizeBehavior.setter in conformance TextBox(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
    return CRRegister.wrappedValue.setter();
  }

  return result;
}

uint64_t protocol witness for ShapeTextBox.isFixedWidth.getter in conformance TextBox()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for ShapeTextBox.emptyStringAttributes.getter in conformance TextBox@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t TextBox.shared(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 3;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t TextBox.thumbnail.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRAsset();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t TextBox.render<A>(in:id:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[7] = a1;
  return MEMORY[0x1EEE6DFA0](TextBox.render<A>(in:id:capsule:options:), 0, 0);
}

uint64_t TextBox.render<A>(in:id:capsule:options:)()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v1 + 56);
  v5 = *(v1 + 40);
  *(v0 + 16) = *(v1 + 24);
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  _s8PaperKit21ShapeTextBoxRenderingC20unrotatedRenderFrame_2inSo6CGRectVx_AGSgt9Coherence4CRDTRzAA0cdE0RzlFZAA0dE0V_Tt1g5(v2, v0 + 16);
  _s8PaperKit21ShapeTextBoxRenderingC6render_2in0G5Frame7optionsyx_So12CGContextRefaSo6CGRectVAA0A17RenderableOptionsVt9Coherence4CRDTRzAA0cdE0RzlFZAA0dE0V_Tt3g5(v2, v3, v1, v6, v7, v8, v9);
  v10 = *(v0 + 8);

  return v10();
}

void _s8PaperKit21ShapeTextBoxRenderingC6render_2in0G5Frame7optionsyx_So12CGContextRefaSo6CGRectVAA0A17RenderableOptionsVt9Coherence4CRDTRzAA0cdE0RzlFZAA0C0V_Tt3g5(uint64_t a1, CGContext *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - v16;
  v18 = type metadata accessor for Shape(0);
  (*(v15 + 16))(v17, a1 + *(v18 + 52), v14);
  v19 = CRAttributedString.attributedString.getter();
  v20 = [v19 string];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23 == 0xE000000000000000;
  }

  if (v24)
  {

    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v15 + 8))(v17, v14);
    if ((v25 & 1) == 0)
    {
      CGContextSaveGState(a2);
      v26 = (off_1F4F68418[0])();
      v48.origin.x = a4;
      v48.origin.y = a5;
      v48.size.width = a6;
      v48.size.height = a7;
      MidX = CGRectGetMidX(v48);
      v49.origin.x = a4;
      v49.origin.y = a5;
      v49.size.width = a6;
      v49.size.height = a7;
      MidY = CGRectGetMidY(v49);
      CGAffineTransformMakeRotation(&t1, v26);
      tx = t1.tx;
      ty = t1.ty;
      v40 = *&t1.a;
      v39 = *&t1.c;
      CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
      a = t1.a;
      b = t1.b;
      v44 = a7;
      v43 = a6;
      c = t1.c;
      d = t1.d;
      v42 = a5;
      v41 = a4;
      v35 = t1.tx;
      v36 = t1.ty;
      *&t2.a = v40;
      *&t2.c = v39;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&v45, &t1, &t2);
      v37 = v45.tx;
      v38 = v45.ty;
      v40 = *&v45.a;
      v39 = *&v45.c;
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v35;
      t1.ty = v36;
      CGAffineTransformInvert(&t2, &t1);
      *&t1.a = v40;
      *&t1.c = v39;
      t1.tx = v37;
      t1.ty = v38;
      CGAffineTransformConcat(&v45, &t1, &t2);
      t1 = v45;
      CGContextConcatCTM(a2, &t1);
      UIGraphicsPushContext(a2);
      specialized draw #1 <A>() in static ShapeTextBoxRendering.render<A>(_:in:renderFrame:options:)(a1, a3, a2, v41, v42, v43, v44);
      UIGraphicsPopContext();
      CGContextRestoreGState(a2);
    }
  }
}

void _s8PaperKit21ShapeTextBoxRenderingC6render_2in0G5Frame7optionsyx_So12CGContextRefaSo6CGRectVAA0A17RenderableOptionsVt9Coherence4CRDTRzAA0cdE0RzlFZAA0dE0V_Tt3g5(uint64_t a1, CGContext *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - v16;
  v18 = type metadata accessor for TextBox(0);
  (*(v15 + 16))(v17, a1 + *(v18 + 24), v14);
  v19 = CRAttributedString.attributedString.getter();
  v20 = [v19 string];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23 == 0xE000000000000000;
  }

  if (v24)
  {

    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v15 + 8))(v17, v14);
    if ((v25 & 1) == 0)
    {
      CGContextSaveGState(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
      CRRegister.wrappedValue.getter();
      a = t1.a;
      v48.origin.x = a4;
      v48.origin.y = a5;
      v48.size.width = a6;
      v48.size.height = a7;
      MidX = CGRectGetMidX(v48);
      v49.origin.x = a4;
      v49.origin.y = a5;
      v49.size.width = a6;
      v49.size.height = a7;
      MidY = CGRectGetMidY(v49);
      CGAffineTransformMakeRotation(&t1, a);
      tx = t1.tx;
      ty = t1.ty;
      v40 = *&t1.a;
      v39 = *&t1.c;
      CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
      v31 = t1.a;
      b = t1.b;
      v44 = a7;
      v43 = a6;
      c = t1.c;
      d = t1.d;
      v42 = a5;
      v41 = a4;
      v35 = t1.tx;
      v36 = t1.ty;
      *&t2.a = v40;
      *&t2.c = v39;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&v45, &t1, &t2);
      v37 = v45.tx;
      v38 = v45.ty;
      v40 = *&v45.a;
      v39 = *&v45.c;
      t1.a = v31;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v35;
      t1.ty = v36;
      CGAffineTransformInvert(&t2, &t1);
      *&t1.a = v40;
      *&t1.c = v39;
      t1.tx = v37;
      t1.ty = v38;
      CGAffineTransformConcat(&v45, &t1, &t2);
      t1 = v45;
      CGContextConcatCTM(a2, &t1);
      UIGraphicsPushContext(a2);
      specialized draw #1 <A>() in static ShapeTextBoxRendering.render<A>(_:in:renderFrame:options:)(a1, a3, a2, v41, v42, v43, v44);
      UIGraphicsPopContext();
      CGContextRestoreGState(a2);
    }
  }
}

double _s8PaperKit21ShapeTextBoxRenderingC20unrotatedRenderFrame_2inSo6CGRectVx_AGSgt9Coherence4CRDTRzAA0cdE0RzlFZAA0C0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  v11 = off_1F4F684A8;
  v12 = type metadata accessor for Shape(0);
  v13 = v11();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *(v12 + 52);
  v55 = v5;
  v21 = *(v5 + 16);
  v21(v10, a1 + v20, v4);
  off_1F4F6C2D8();
  v54 = v57;
  v22 = off_1F4F6C2F0[0]();
  v23 = v22;
  if ((*(a2 + 32) & 1) == 0)
  {
    Width = CGRectGetWidth(*a2) + -48.0;
    if ((v23 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  Width = 1.79769313e308;
  if (v22)
  {
LABEL_5:
    v58.origin.x = v13;
    v58.origin.y = v15;
    v58.size.width = v17;
    v58.size.height = v19;
    Width = CGRectGetWidth(v58);
  }

LABEL_6:
  v25 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
  v26 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  [v26 setTextContainer_];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
  v21(v7, v10, v4);
  v28 = type metadata accessor for CRTextStorage();
  v29 = objc_allocWithZone(v28);
  v53 = v10;
  v30 = v29;
  v29[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = 0;
  v29[OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes] = 0;
  v21(&v29[OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString], v7, v4);
  v31 = specialized static CRTextStorage.viewAttributedString(from:darkMode:)(v7, 0);
  *&v30[OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString] = v31;
  v32 = v31;
  [v32 fixAttributesInRange_];

  v56.receiver = v30;
  v56.super_class = v28;
  v33 = objc_msgSendSuper2(&v56, sel_init);
  v34 = *(v55 + 8);
  v34(v7, v4);
  [v27 setTextStorage_];

  v35 = v27;
  [v35 addTextLayoutManager_];
  v36 = [v35 documentRange];

  [v26 ensureLayoutForRange_];
  [v26 usageBoundsForTextContainer];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  [v25 lineFragmentPadding];
  v46 = -v45;
  v59.origin.x = v38;
  v59.origin.y = v40;
  v59.size.width = v42;
  v59.size.height = v44;
  v60 = CGRectInset(v59, v46, 0.0);
  v47 = v60.size.width;
  if (v54)
  {
    v48 = v53;
    if (v54)
    {
      v63.origin.x = v13;
      v63.origin.y = v15;
      v63.size.width = v17;
      v63.size.height = v19;
      MidX = CGRectGetMidX(v63);

      v34(v48, v4);
      return MidX + v47 * -0.5;
    }

    else
    {
      x = v60.origin.x;
      v34(v53, v4);

      return v13 + x;
    }
  }

  else
  {
    v61.origin.x = v13;
    v61.origin.y = v15;
    v61.size.width = v17;
    v61.size.height = v19;
    v50 = CGRectGetMidX(v61) - v47 * 0.5;
    v62.origin.x = v13;
    v62.origin.y = v15;
    v62.size.width = v17;
    v62.size.height = v19;
    CGRectGetMidY(v62);

    v34(v53, v4);
  }

  return v50;
}

void _s8PaperKit21ShapeTextBoxRenderingC20unrotatedRenderFrame_2inSo6CGRectVx_AGSgt9Coherence4CRDTRzAA0cdE0RzlFZAA0dE0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for TextBox(0);
  v12 = protocol witness for SignatureProvider.frame.getter in conformance Signature();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *(v11 + 24);
  v51 = v4;
  v52 = v5;
  v20 = *(v5 + 16);
  v20(v10, a1 + v19, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  CRRegister.wrappedValue.getter();
  v50 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  CRRegister.wrappedValue.getter();
  v21 = v54;
  if ((*(a2 + 32) & 1) == 0)
  {
    Width = CGRectGetWidth(*a2) + -48.0;
    v23 = v10;
    if (!v21)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  Width = 1.79769313e308;
  v23 = v10;
  if (v54)
  {
LABEL_5:
    v55.origin.x = v12;
    v55.origin.y = v14;
    v55.size.width = v16;
    v55.size.height = v18;
    Width = CGRectGetWidth(v55);
  }

LABEL_6:
  v24 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
  v48 = v24;
  v25 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  [v25 setTextContainer_];
  v26 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
  v27 = v51;
  v20(v7, v23, v51);
  v28 = type metadata accessor for CRTextStorage();
  v49 = v23;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  v30[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = 0;
  v30[OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes] = 0;
  v20(&v30[OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString], v7, v27);
  v31 = specialized static CRTextStorage.viewAttributedString(from:darkMode:)(v7, 0);
  *&v30[OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString] = v31;
  v32 = v31;
  [v32 fixAttributesInRange_];

  v53.receiver = v30;
  v53.super_class = v29;
  v33 = objc_msgSendSuper2(&v53, sel_init);
  v34 = *(v52 + 8);
  v34(v7, v27);
  [v26 setTextStorage_];

  v35 = v26;
  [v35 addTextLayoutManager_];
  v36 = [v35 documentRange];

  [v25 ensureLayoutForRange_];
  v37 = v48;
  [v25 usageBoundsForTextContainer];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  [v37 lineFragmentPadding];
  v47 = -v46;
  v56.origin.x = v39;
  v56.origin.y = v41;
  v56.size.width = v43;
  v56.size.height = v45;
  CGRectInset(v56, v47, 0.0);
  if (v50)
  {
    v34(v49, v27);
  }

  else
  {
    v57.origin.x = v12;
    v57.origin.y = v14;
    v57.size.width = v16;
    v57.size.height = v18;
    CGRectGetMidX(v57);

    v34(v49, v27);
  }
}

__C::CGRect __swiftcall TextBox.renderFrame(in:)(__C::CGRect_optional *in)
{
  _s8PaperKit21ShapeTextBoxRenderingC20unrotatedRenderFrame_2inSo6CGRectVx_AGSgt9Coherence4CRDTRzAA0cdE0RzlFZAA0dE0V_Tt1g5(v1, in);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  v28 = v5 - v9 * 0.0;
  v29 = v3 - v7 * 0.0;
  v33.origin.x = v3;
  v33.origin.y = v5;
  v33.size.width = v7;
  v26 = v7;
  v27 = v9;
  v33.size.height = v9;
  MidX = CGRectGetMidX(v33);
  v34.origin.x = v3;
  v34.origin.y = v5;
  v34.size.width = v7;
  v34.size.height = v9;
  MidY = CGRectGetMidY(v34);
  CGAffineTransformMakeRotation(&t1, t1.a);
  tx = t1.tx;
  ty = t1.ty;
  v22 = *&t1.c;
  v24 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v18 = t1.tx;
  v19 = t1.ty;
  *&t2.a = v24;
  *&t2.c = v22;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v30, &t1, &t2);
  v20 = v30.tx;
  v21 = v30.ty;
  v23 = *&v30.c;
  v25 = *&v30.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v18;
  t1.ty = v19;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v25;
  *&t1.c = v23;
  t1.tx = v20;
  t1.ty = v21;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1.a = v26;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v27;
  t1.tx = v29;
  t1.ty = v28;
  t2 = v30;
  CGAffineTransformConcat(&v30, &t1, &t2);
  t1 = v30;
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = 1.0;
  v35.size.height = 1.0;
  return CGRectApplyAffineTransform(v35, &t1);
}

Swift::Void __swiftcall TextBox.apply(_:)(CGAffineTransform *a1)
{
  ty = a1->ty;
  tx = a1->tx;
  type metadata accessor for TextBox(0);
  v29 = *&a1->c;
  v30 = *&a1->a;
  v2 = protocol witness for SignatureProvider.frame.getter in conformance Signature();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  v27 = v4 - v8 * 0.0;
  v28 = v2 - v6 * 0.0;
  v36.origin.x = v2;
  v36.origin.y = v4;
  v36.size.width = v6;
  v25 = v6;
  v26 = v8;
  v36.size.height = v8;
  MidX = CGRectGetMidX(v36);
  v37.origin.x = v2;
  v37.origin.y = v4;
  v37.size.width = v6;
  v37.size.height = v8;
  MidY = CGRectGetMidY(v37);
  CGAffineTransformMakeRotation(&t1, t1.a);
  v11 = t1.tx;
  v12 = t1.ty;
  v21 = *&t1.c;
  v23 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v17 = t1.tx;
  v18 = t1.ty;
  *&t2.a = v23;
  *&t2.c = v21;
  t2.tx = v11;
  t2.ty = v12;
  CGAffineTransformConcat(&v33, &t1, &t2);
  v19 = v33.tx;
  v20 = v33.ty;
  v22 = *&v33.c;
  v24 = *&v33.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v17;
  t1.ty = v18;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = v24;
  *&t1.c = v22;
  t1.tx = v19;
  t1.ty = v20;
  CGAffineTransformConcat(&v33, &t1, &t2);
  t1.a = v25;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v26;
  t1.tx = v28;
  t1.ty = v27;
  t2 = v33;
  CGAffineTransformConcat(&v33, &t1, &t2);
  t2 = v33;
  *&v33.a = v30;
  *&v33.c = v29;
  v33.tx = tx;
  v33.ty = ty;
  CGAffineTransformConcat(&t1, &t2, &v33);
  specialized CanvasElement.coordinateSpace.setter();
  CRAttributedString<>.apply(_:)(&a1->a);
}

void TextBox.update<A>(use:ref:pdfAnnotation:in:capsule:options:)(unint64_t *a1, uint64_t a2, void *a3, __C::CGRect_optional *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v60 = a6;
  v61 = a7;
  v59 = a5;
  v56 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v63 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v54 - v17;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  type metadata accessor for CanvasElementPDFAnnotation();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;
    v55 = a8;
    *(v23 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation) = 2;
    v25 = *MEMORY[0x1E69780D8];
    v62 = a3;
    [v24 setType_];
    v26 = a4;
    v64 = TextBox.renderFrame(in:)(a4);
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    v31 = [v24 page];
    if (v31)
    {
      v32 = v31;
      [v31 boundsForBox_];
      v34 = v33;
      v36 = v35;

      v65.origin.x = x;
      v65.origin.y = y;
      v65.size.width = width;
      v65.size.height = height;
      MinX = CGRectGetMinX(v65);
      v66.origin.x = x;
      v66.origin.y = y;
      v66.size.width = width;
      v66.size.height = height;
      v38 = v36 + v34 + v34 - CGRectGetMaxY(v66);
      v67.origin.x = x;
      v67.origin.y = y;
      v67.size.width = width;
      v67.size.height = height;
      v39 = CGRectGetWidth(v67);
      v68.origin.x = x;
      v68.origin.y = y;
      v68.size.width = width;
      v68.size.height = height;
      height = CGRectGetHeight(v68);
      width = v39;
      x = MinX;
      y = v38;
    }

    v40 = v58;
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    v70 = CGRectIntegral(v69);
    [v24 setBounds_];
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v19 + 8))(v21, v18);
    [v24 setModificationDate_];

    outlined init with copy of Date?(v56, v16, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    v42 = v63;
    v43 = (*(v63 + 48))(v16, 1, v40);
    v44 = v55;
    if (v43 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      v45 = v61;
      v46 = v59;
      v47 = v26;
    }

    else
    {
      (*(v42 + 32))(v57, v16, v40);
      v48 = v22;
      v46 = v59;
      v47 = v26;
      if (v22 >> 62)
      {
        if (v22 >> 62 != 1)
        {
          (*(v63 + 8))(v57, v40);
          v45 = v61;
          goto LABEL_11;
        }

        v48 = (v22 & 0x3FFFFFFFFFFFFFFFLL);
      }

      outlined copy of PaperDocument.PDFDocumentUse(v22);
      v49 = type metadata accessor for TextBox(0);
      v50 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_2(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);
      v51 = v57;
      v52 = v49;
      v45 = v61;
      specialized CanvasElementPDFAnnotation.encodeCanvasElement<A, B>(_:_:ref:writeCanvasElement:capsule:)(v48, v57, 1, v46, v52, v61, v50, &protocol witness table for TextBox, v44);
      outlined consume of PaperDocument.PDFDocumentUse(v22);
      (*(v63 + 8))(v51, v40);
    }

LABEL_11:
    v53 = type metadata accessor for TextBox(0);
    CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)(v47, v9, v46, v60, v45, v53, v44, &protocol witness table for TextBox);
  }
}

double TextBox.hdrHeadroom(in:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return specialized TextBox.hdrHeadroom(in:)();
}

uint64_t TextBox.asyncHdrHeadroom<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](TextBox.asyncHdrHeadroom<A>(in:), 0, 0);
}

uint64_t TextBox.asyncHdrHeadroom<A>(in:)()
{
  type metadata accessor for Capsule();
  swift_getWitnessTable();
  v1.n128_f64[0] = specialized TextBox.hdrHeadroom(in:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t (*protocol witness for CanvasElement.frame.modify in conformance TextBox(uint64_t *a1))()
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

uint64_t (*protocol witness for CanvasElement.rotation.modify in conformance TextBox(uint64_t *a1))()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for CanvasElement.shared(_:) in conformance TextBox@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 3;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t protocol witness for PaperRenderable.render<A>(in:id:capsule:options:) in conformance TextBox(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[7] = a1;
  return MEMORY[0x1EEE6DFA0](protocol witness for PaperRenderable.render<A>(in:id:capsule:options:) in conformance TextBox, 0, 0);
}

double protocol witness for PaperRenderable.hdrHeadroom(in:) in conformance TextBox()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  CRAttributedString.runs.getter();
  v4 = CRAttributedString.Runs<>.maxHDRHeadroom.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t TextBox.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TextBox.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t TextBox.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v56 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v43 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v43 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = type metadata accessor for MergeResult();
  v23 = *(v22 - 8);
  v57 = v22;
  v58 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v26 = *(v13 + 8);
  v26(v21, v12);
  (*(v13 + 16))(v15, v18, v12);
  CRRegister.projectedValue.setter();
  v26(v18, v12);
  MergeResult.merge(_:)();
  v27 = *(v58 + 8);
  v58 += 8;
  v55 = v27;
  v27(v25, v57);
  v53 = type metadata accessor for TextBox(0);
  v28 = v43;
  v29 = v45;
  CRRegister.projectedValue.getter();
  v30 = v44;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v31 = v47;
  v32 = *(v47 + 8);
  v32(v28, v29);
  (*(v31 + 16))(v46, v30, v29);
  CRRegister.projectedValue.setter();
  v32(v30, v29);
  MergeResult.merge(_:)();
  v33 = v57;
  v34 = v55;
  v55(v25, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  CRAttributedString.merge(_:)();
  MergeResult.merge(_:)();
  v34(v25, v33);
  v35 = v48;
  v36 = v50;
  CRRegister.projectedValue.getter();
  v37 = v49;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v38 = v52;
  v39 = *(v52 + 8);
  v39(v35, v36);
  (*(v38 + 16))(v51, v37, v36);
  CRRegister.projectedValue.setter();
  v39(v37, v36);
  MergeResult.merge(_:)();
  v40 = v57;
  v41 = v55;
  v55(v25, v57);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return v41(v25, v40);
}

uint64_t TextBox.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v2 = *(v1 - 8);
  v55 = v1;
  v56 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v54 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySb_GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v51 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v47 - v25;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v27 = *(v18 + 8);
  v27(v20, v17);
  v27(v23, v17);
  v28 = v50;
  type metadata accessor for TextBox(0);
  v29 = v48;
  CRRegister.projectedValue.getter();
  v30 = v49;
  CRRegister.projectedValue.getter();
  v58 = v16;
  CRRegister.actionUndoingDifference(from:)();
  v31 = *(v51 + 8);
  v31(v30, v10);
  v32 = v29;
  v33 = v52;
  v31(v32, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v34 = v28;
  CRAttributedString.actionUndoingDifference(from:)();
  v35 = v53;
  v36 = v55;
  CRRegister.projectedValue.getter();
  v37 = v54;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v38 = *(v56 + 8);
  v38(v37, v36);
  v38(v35, v36);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd);
  if ((*(*(v39 - 8) + 48))(v26, 1, v39) == 1 && (v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd), (*(*(v40 - 8) + 48))(v58, 1, v40) == 1) && (v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GMd), (*(*(v41 - 8) + 48))(v34, 1, v41) == 1) && (v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySb_GMd), (*(*(v42 - 8) + 48))(v33, 1, v42) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v43 = type metadata accessor for TextBox.MutatingAction(0);
    (*(*(v43 - 8) + 56))(v57, 1, 1, v43);
  }

  else
  {
    v44 = v57;
    outlined init with copy of Date?(v26, v57, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v45 = type metadata accessor for TextBox.MutatingAction(0);
    outlined init with copy of Date?(v58, v44 + v45[5], &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v34, v44 + v45[6], &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMd);
    outlined init with copy of Date?(v33, v44 + v45[7], &_s9Coherence10CRRegisterV14MutatingActionVySb_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    (*(*(v45 - 1) + 56))(v44, 0, 1, v45);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence10CRRegisterV14MutatingActionVySb_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
}

uint64_t TextBox.apply(_:)(uint64_t a1)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v35 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit7TextBoxV14MutatingActionVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - v17;
  v19 = type metadata accessor for TextBox.MutatingAction(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(v38, v18, &_s8PaperKit7TextBoxV14MutatingActionVSgMd);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s8PaperKit7TextBoxV14MutatingActionVSgMd);
  }

  outlined init with take of TextBox.MutatingAction(v18, v22);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  (*(v10 + 16))(v12, v15, v9);
  CRRegister.projectedValue.setter();
  (*(v10 + 8))(v15, v9);
  type metadata accessor for TextBox(0);
  v24 = v30;
  v25 = v33;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v26 = v32;
  (*(v32 + 16))(v31, v24, v25);
  CRRegister.projectedValue.setter();
  (*(v26 + 8))(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  CRAttributedString.apply(_:)();
  v27 = v34;
  v28 = v37;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v29 = v36;
  (*(v36 + 16))(v35, v27, v28);
  CRRegister.projectedValue.setter();
  (*(v29 + 8))(v27, v28);
  return outlined destroy of TextBox.Partial(v22, type metadata accessor for TextBox.MutatingAction);
}

uint64_t TextBox.hasDelta(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  CRRegister.projectedValue.getter();
  v35 = a1;
  CRRegister.projectedValue.getter();
  v19 = CRRegister.hasDelta(from:)();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  if (v19 & 1) != 0 || (type metadata accessor for TextBox(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v21 = CRRegister.hasDelta(from:)(), v22 = *(v34 + 8), v22(v8, v6), v22(v11, v6), (v21) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd), (CRAttributedString.hasDelta(from:)()) || (v23 = v30, v24 = v33, CRRegister.projectedValue.getter(), v25 = v31, CRRegister.projectedValue.getter(), v26 = CRRegister.hasDelta(from:)(), v27 = *(v32 + 8), v27(v25, v24), v27(v23, v24), (v26))
  {
    v28 = 1;
  }

  else
  {
    v28 = UnknownProperties.hasDelta(from:)();
  }

  return v28 & 1;
}

uint64_t TextBox.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40[1] = a1;
  v4 = type metadata accessor for UnknownProperties();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v7 = *(v6 - 8);
  v48 = v6;
  v49 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v47 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v43 = v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v41 = v40 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v40 - v24;
  v40[0] = v2;
  outlined init with copy of TextBox.Partial(v2, a2, type metadata accessor for TextBox);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v26 = *(v20 + 8);
  v26(v22, v19);
  (*(v20 + 16))(v22, v25, v19);
  CRRegister.projectedValue.setter();
  v26(v25, v19);
  v27 = type metadata accessor for TextBox(0);
  CRRegister.projectedValue.getter();
  v28 = v41;
  CRRegister.copy(renamingReferences:)();
  v29 = v42;
  v30 = *(v42 + 8);
  v30(v16, v14);
  (*(v29 + 16))(v16, v28, v14);
  CRRegister.projectedValue.setter();
  v30(v28, v14);
  v32 = v43;
  v31 = v44;
  CRAttributedString.copy(renamingReferences:)();
  (*(v45 + 40))(a2 + *(v27 + 24), v32, v31);
  v34 = v47;
  v33 = v48;
  CRRegister.projectedValue.getter();
  v35 = v46;
  CRRegister.copy(renamingReferences:)();
  v36 = v49;
  v37 = *(v49 + 8);
  v37(v34, v33);
  (*(v36 + 16))(v34, v35, v33);
  CRRegister.projectedValue.setter();
  v37(v35, v33);
  v38 = v50;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v51 + 40))(a2 + *(v27 + 32), v38, v52);
}

uint64_t TextBox.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UnknownProperties();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v25 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v41 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v42 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v43 = 0u;
  v44 = 0u;
  CRRegister.init(wrappedValue:)();
  v12 = type metadata accessor for TextBox(0);
  v13 = v12[5];
  *&v43 = 0;
  v38 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  v14 = v12[6];
  v15 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:)();
  v16 = v12[7];
  LOBYTE(v43) = 0;
  CRRegister.init(wrappedValue:)();
  v17 = v12[8];
  UnknownProperties.init()();
  v18 = v45;
  CRRegister.init(defaultState:)();
  if (v18)
  {
    return outlined destroy of TextBox.Partial(a1, type metadata accessor for TextBox);
  }

  v45 = v15;
  v27 = v14;
  v26 = v16;
  v19 = v41;
  (*(v39 + 40))(a1, v11, v40);
  v20 = v42;
  CRRegister.init(defaultState:)();
  (*(v19 + 40))(a1 + v13, v20, v36);
  v21 = v37;
  CRAttributedString.init(defaultState:)();
  (*(v33 + 40))(a1 + v27, v21, v34);
  v22 = v35;
  CRRegister.init(defaultState:)();
  (*(v30 + 40))(a1 + v26, v22, v31);
  v23 = v32;
  UnknownProperties.init(defaultState:)();
  return (*(v28 + 40))(a1 + v17, v23, v29);
}

uint64_t TextBox.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v16 = *(v0 - 8);
  v17 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  type metadata accessor for TextBox(0);
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (CRRegister.projectedValue.getter(), v11 = CRRegister.isDefaultState.getter(), (*(v8 + 8))(v10, v7), (v11) && (CRRegister.projectedValue.getter(), v12 = CRRegister.isDefaultState.getter(), (*(v4 + 8))(v6, v3), (v12) && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd), (CRAttributedString.isDefaultState.getter()))
  {
    v13 = v17;
    CRRegister.projectedValue.getter();
    v14 = CRRegister.isDefaultState.getter();
    (*(v16 + 8))(v2, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t TextBox.visitReferences(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v1 = *(v0 - 8);
  v14 = v0;
  v15 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v9 + 8))(v11, v8);
  type metadata accessor for TextBox(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  CRAttributedString.visitReferences(_:)();
  v12 = v14;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v15 + 8))(v3, v12);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t TextBox.newRefs(from:)(uint64_t a1)
{
  v31[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v2 = *(v1 - 8);
  v35 = v1;
  v36 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v34 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v33 = v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v31 - v17;
  v37 = MEMORY[0x1E69E7CD0];
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v19 = CRRegister.newRefs(from:)();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  specialized Set.formUnion<A>(_:)(v19);
  type metadata accessor for TextBox(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v21 = CRRegister.newRefs(from:)();
  v22 = *(v32 + 8);
  v22(v8, v6);
  v22(v11, v6);
  specialized Set.formUnion<A>(_:)(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v23 = CRAttributedString.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v23);
  v24 = v33;
  v25 = v35;
  CRRegister.projectedValue.getter();
  v26 = v34;
  CRRegister.projectedValue.getter();
  v27 = CRRegister.newRefs(from:)();
  v28 = *(v36 + 8);
  v28(v26, v25);
  v28(v24, v25);
  specialized Set.formUnion<A>(_:)(v27);
  v29 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v29);
  return v37;
}

Swift::Bool __swiftcall TextBox.needToFinalizeTimestamps()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v17 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  CRRegister.projectedValue.getter();
  v11 = CRRegister.needToFinalizeTimestamps()();
  (*(v8 + 8))(v10, v7);
  v14 = v11 || (type metadata accessor for TextBox(0), CRRegister.projectedValue.getter(), v12 = CRRegister.needToFinalizeTimestamps()(), (*(v4 + 8))(v6, v3), v12) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd), CRAttributedString.needToFinalizeTimestamps()()) || (CRRegister.projectedValue.getter(), v13 = CRRegister.needToFinalizeTimestamps()(), (*(v17 + 8))(v2, v0), v13) || UnknownProperties.needToFinalizeTimestamps()();
  return v14;
}

uint64_t TextBox.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v14 + 16))(v16, v19, v13);
  CRRegister.projectedValue.setter();
  (*(v14 + 8))(v19, v13);
  type metadata accessor for TextBox(0);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  (*(v8 + 16))(v25, v12, v7);
  CRRegister.projectedValue.setter();
  (*(v8 + 8))(v12, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  CRAttributedString.finalizeTimestamps(_:)();
  v20 = v26;
  v21 = v28;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v22 = v29;
  (*(v29 + 16))(v27, v20, v21);
  CRRegister.projectedValue.setter();
  (*(v22 + 8))(v20, v21);
  return MEMORY[0x1DA6CBA30](a1);
}

uint64_t TextBox.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v69 = &v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v81 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v68 - v7;
  v9 = type metadata accessor for CRCodableVersion();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v68 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v68 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v80 = &v68 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v68 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v68 - v29;
  v79 = type metadata accessor for TextBox(0);
  v85 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v31 = *(v10 + 104);
  v83 = *MEMORY[0x1E6995288];
  v84 = v10 + 104;
  v82 = v31;
  v31(v27);
  v32 = static CRCodableVersion.== infix(_:_:)();
  v33 = *(v10 + 8);
  v33(v27, v9);
  if (v32)
  {
    return (*(v10 + 32))(v86, v30, v9);
  }

  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  (*(v81 + 8))(v8, v6);
  v81 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_2(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298]);
  v35 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v36 = (v35 & 1) == 0;
  if (v35)
  {
    v37 = v30;
  }

  else
  {
    v37 = v22;
  }

  if (v36)
  {
    v38 = v30;
  }

  else
  {
    v38 = v22;
  }

  v33(v37, v9);
  v39 = *(v10 + 32);
  v40 = v80;
  v39(v80, v38, v9);
  v39(v30, v40, v9);
  v82(v27, v83, v9);
  v41 = static CRCodableVersion.== infix(_:_:)();
  v33(v27, v9);
  if (v41)
  {
    goto LABEL_24;
  }

  v42 = v33;
  v43 = v78;
  v44 = v76;
  CRRegister.projectedValue.getter();
  v80 = (v10 + 8);
  v45 = v39;
  v46 = v42;
  v47 = v74;
  CRRegister.minEncodingVersion.getter();
  (*(v77 + 8))(v44, v43);
  v48 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v49 = (v48 & 1) == 0;
  v50 = (v48 & 1) != 0 ? v30 : v47;
  v51 = v49 ? v30 : v47;
  v52 = v46;
  v39 = v45;
  v52(v50, v9);
  v53 = v75;
  v45(v75, v51, v9);
  v45(v30, v53, v9);
  v82(v27, v83, v9);
  v54 = static CRCodableVersion.== infix(_:_:)();
  v52(v27, v9);
  if (v54)
  {
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v55 = v72;
  CRAttributedString.minEncodingVersion.getter();
  v56 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v57 = (v56 & 1) == 0;
  v58 = (v56 & 1) != 0 ? v30 : v55;
  if (v57)
  {
    v55 = v30;
  }

  v52(v58, v9);
  v59 = v73;
  v45(v73, v55, v9);
  v45(v30, v59, v9);
  v82(v27, v83, v9);
  v60 = static CRCodableVersion.== infix(_:_:)();
  v52(v27, v9);
  if (v60)
  {
LABEL_24:
    v61 = v86;
  }

  else
  {
    v63 = v69;
    v64 = v71;
    CRRegister.projectedValue.getter();
    v65 = v68;
    CRRegister.minEncodingVersion.getter();
    (*(v70 + 8))(v63, v64);
    v66 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v67 = v86;
    if (v66)
    {
      v52(v30, v9);
      v61 = v67;
      v62 = v65;
      return (v39)(v61, v62, v9);
    }

    v52(v65, v9);
    v61 = v67;
  }

  v62 = v30;
  return (v39)(v61, v62, v9);
}

uint64_t TextBox.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v48 = a1;
  v60 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v11 = *(v10 - 8);
  v52 = v10;
  v53 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v49 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v48 - v28;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v30 = *(v16 + 8);
  v30(v18, v15);
  v30(v21, v15);
  type metadata accessor for TextBox(0);
  v31 = v50;
  v32 = v52;
  CRRegister.projectedValue.getter();
  v33 = v51;
  CRRegister.projectedValue.getter();
  v61 = v26;
  CRRegister.observableDifference(from:with:)();
  v34 = *(v53 + 8);
  v34(v33, v32);
  v35 = v55;
  v34(v31, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  CRAttributedString.observableDifference(from:with:)();
  v36 = v56;
  v37 = v58;
  CRRegister.projectedValue.getter();
  v38 = v57;
  CRRegister.projectedValue.getter();
  v39 = v49;
  CRRegister.observableDifference(from:with:)();
  v40 = *(v59 + 8);
  v40(v38, v37);
  v40(v36, v37);
  v41 = type metadata accessor for CRValueObservableDifference();
  v42 = *(*(v41 - 8) + 48);
  if (v42(v29, 1, v41) == 1 && v42(v61, 1, v41) == 1 && (v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GMd), (*(*(v43 - 8) + 48))(v35, 1, v43) == 1) && v42(v39, 1, v41) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v44 = type metadata accessor for TextBox.ObservableDifference(0);
    (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
  }

  else
  {
    v45 = v60;
    outlined init with copy of Date?(v29, v60, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v46 = type metadata accessor for TextBox.ObservableDifference(0);
    outlined init with copy of Date?(v61, v45 + v46[5], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v35, v45 + v46[6], &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd);
    outlined init with copy of Date?(v39, v45 + v46[7], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v29, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    (*(*(v46 - 1) + 56))(v45, 0, 1, v46);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence27CRValueObservableDifferenceOSgMd);
}

uint64_t TextBox.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v16 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v0)
  {
    v14 = v3;
    v15 = v6;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v8 + 8))(v10, v7);
    type metadata accessor for TextBox(0);
    v12 = v15;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v17 + 8))(v12, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope> and conformance CRAttributedString<A>, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v13 = v14;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Bool> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySbGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v16 + 8))(v13, v1);
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t TextBox.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a1;
  v86 = type metadata accessor for UnknownProperties();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v92 = (&v77 - v5);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd);
  v88 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v83 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v77 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v100 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v96 = *(v10 - 8);
  v97 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v77 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v90 = *(v103 - 1);
  MEMORY[0x1EEE9AC00](v103);
  v98 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v93 = *(v13 - 8);
  v94 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v77 - v14;
  type metadata accessor for CGRect(0);
  v16 = v15;
  v17 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_2(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v107 = 0u;
  v108 = 0u;
  v101 = v16;
  CRRegister.init(wrappedValue:)();
  v18 = type metadata accessor for TextBox(0);
  v19 = v18[5];
  *&v107 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  v20 = v18[6];
  lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:)();
  v21 = v18[7];
  LOBYTE(v107) = 0;
  CRRegister.init(wrappedValue:)();
  v22 = v18[8];
  v105 = a2;
  UnknownProperties.init()();
  v23 = v104;
  v24 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v23)
  {
    goto LABEL_2;
  }

  v81 = v17;
  v80 = v20;
  v79 = v21;
  v26 = v103;
  v78 = v22;
  v99 = 0;
  v104 = v24;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v27 = v99;
    CRRegister.init(from:)();
    if (v27)
    {

LABEL_2:

      v25 = v105;
      return outlined destroy of TextBox.Partial(v25, type metadata accessor for TextBox);
    }

    v29 = v19;
    v99 = 0;
    v28 = v105;
    (*(v93 + 40))();
  }

  else
  {
    v28 = v105;
    v29 = v19;
  }

  v30 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v31 = v100;
  if (v30)
  {
    v33 = v98;
    v32 = v99;
    CRRegister.init(from:)();
    if (v32)
    {
      goto LABEL_16;
    }

    v99 = 0;
    (*(v90 + 40))(v28 + v29, v33, v26);
  }

  v34 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v36 = v96;
  v35 = v97;
  v37 = v95;
  if (!v34)
  {
    goto LABEL_14;
  }

  v38 = v99;
  CRAttributedString.init(from:)();
  if (v38)
  {
LABEL_16:

    v25 = v28;
    return outlined destroy of TextBox.Partial(v25, type metadata accessor for TextBox);
  }

  v99 = 0;
  (*(v36 + 40))(v28 + v80, v37, v35);
LABEL_14:
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v39 = v89;
    v40 = v99;
    CRRegister.init(from:)();
    if (v40)
    {
      goto LABEL_16;
    }

    v99 = 0;
    (*(v31 + 40))(v28 + v79, v39, v87);
  }

  v42 = v99;
  v43 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
  if (v42)
  {
    goto LABEL_16;
  }

  v99 = 0;
  v44 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v43);

  *&v107 = v44;
  specialized Set._Variant.remove(_:)(0x656D617266, 0xE500000000000000);

  specialized Set._Variant.remove(_:)(0x6E6F697461746F72, 0xE800000000000000);

  specialized Set._Variant.remove(_:)(1954047348, 0xE400000000000000);

  specialized Set._Variant.remove(_:)(0x5764657869467369, 0xEC00000068746469);

  v45 = v107;
  v46 = v107 + 56;
  v47 = 1 << *(v107 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v107 + 56);
  v50 = (v47 + 63) >> 6;
  v51 = (v88 + 56);

  v52 = 0;
  v103 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v53 = v52;
    if (!v49)
    {
      break;
    }

LABEL_27:
    v54 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v55 = (*(v45 + 48) + ((v52 << 10) | (16 * v54)));
    v57 = *v55;
    v56 = v55[1];

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v59 = v91;
      v102 = *(v91 + 48);
      v60 = v92;
      *v92 = v57;
      v60[1] = v56;
      v61 = v60;

      v62 = v99;
      AnyCRDT.init(from:)();
      v99 = v62;
      if (v62)
      {
LABEL_42:

        swift_bridgeObjectRelease_n();
        v25 = v105;
        return outlined destroy of TextBox.Partial(v25, type metadata accessor for TextBox);
      }

      (*v51)(v61, 0, 1, v59);
      v63 = v82;
      outlined init with take of (String, AnyCRDT)(v61, v82);
      outlined init with take of (String, AnyCRDT)(v63, v83);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v103[2] + 1, 1, v103);
      }

      v64 = v88;
      v66 = v103[2];
      v65 = v103[3];
      v67 = v83;
      if (v66 >= v65 >> 1)
      {
        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65 > 1, v66 + 1, 1, v103);
        v64 = v88;
        v103 = v69;
        v67 = v83;
      }

      v68 = v103;
      v103[2] = v66 + 1;
      outlined init with take of (String, AnyCRDT)(v67, v68 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v66);
    }

    else
    {

      v58 = v92;
      (*v51)(v92, 1, 1, v91);
      outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_sSS_9Coherence7AnyCRDTVtSgMd);
    }
  }

  while (1)
  {
    v52 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v52 >= v50)
    {
      break;
    }

    v49 = *(v46 + 8 * v52);
    ++v53;
    if (v49)
    {
      goto LABEL_27;
    }
  }

  v70 = v103;
  if (v103[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd);
    v71 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v71 = MEMORY[0x1E69E7CC8];
  }

  v72 = v86;
  v73 = v85;
  v74 = v84;
  v75 = v78;
  v109 = v71;
  v76 = v99;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v70, 1, &v109);
  if (v76)
  {

    goto LABEL_2;
  }

  UnknownProperties.init(_:)();

  return (*(v73 + 40))(v105 + v75, v74, v72);
}

uint64_t TextBox.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v72 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v77 = *(v2 - 8);
  v78 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v71 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v65 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v79 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v63 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v64 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v67 = *(v23 - 8);
  v24 = v67;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v63 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v63 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v74 = &v63 - v33;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v34 = *(v24 + 8);
  v34(v26, v23);
  v35 = v29;
  v36 = v23;
  v34(v35, v23);
  type metadata accessor for TextBox(0);
  v37 = v69;
  CRRegister.projectedValue.getter();
  v38 = v73;
  CRRegister.projectedValue.getter();
  v80 = v22;
  CRRegister.delta(_:from:)();
  v39 = *(v79 + 8);
  v39(v38, v14);
  v40 = v37;
  v41 = v36;
  v42 = v75;
  v73 = v14;
  v39(v40, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  CRAttributedString.delta(_:from:)();
  v43 = v70;
  v44 = v78;
  CRRegister.projectedValue.getter();
  v45 = v76;
  v46 = v71;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v47 = *(v77 + 8);
  v47(v46, v44);
  v47(v43, v44);
  v48 = v67;
  v49 = v74;
  if ((*(v67 + 48))(v74, 1, v41) == 1 && (*(v79 + 48))(v80, 1, v73) == 1 && (v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd), (*(*(v50 - 8) + 48))(v42, 1, v50) == 1) && (*(v77 + 48))(v45, 1, v78) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v51 = type metadata accessor for TextBox.Partial(0);
    (*(*(v51 - 8) + 56))(v72, 1, 1, v51);
  }

  else
  {
    v52 = v63;
    outlined init with copy of Date?(v49, v63, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v53 = v64;
    outlined init with copy of Date?(v80, v64, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v54 = v65;
    outlined init with copy of Date?(v42, v65, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
    v55 = v66;
    outlined init with copy of Date?(v45, v66, &_s9Coherence10CRRegisterVySbGSgMd);
    v56 = v72;
    (*(v48 + 56))(v72, 1, 1, v41);
    v57 = type metadata accessor for TextBox.Partial(0);
    v58 = v57[5];
    (*(v79 + 56))(v56 + v58, 1, 1, v73);
    v59 = v57[6];
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
    (*(*(v60 - 8) + 56))(v56 + v59, 1, 1, v60);
    v61 = v57[7];
    (*(v77 + 56))(v56 + v61, 1, 1, v78);
    outlined assign with take of UUID?(v52, v56, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined assign with take of UUID?(v53, v56 + v58, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    outlined assign with take of UUID?(v54, v56 + v59, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
    outlined assign with take of UUID?(v55, v56 + v61, &_s9Coherence10CRRegisterVySbGSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v42 = v75;
    v45 = v76;
    (*(*(v57 - 1) + 56))(v56, 0, 1, v57);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v45, &_s9Coherence10CRRegisterVySbGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
}

BOOL TextBox.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v56 = &v50 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v61 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v62 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v50 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v50 - v26;
  outlined init with copy of Date?(a1, v20, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    (*(v22 + 32))(v27, v20, v21);
    CRRegister.projectedValue.getter();
    v28 = CRRegister.canMerge(delta:)();
    v29 = *(v22 + 8);
    v29(v24, v21);
    v29(v27, v21);
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  v30 = type metadata accessor for TextBox.Partial(0);
  v31 = a1;
  outlined init with copy of Date?(a1 + v30[5], v13, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v32 = v62;
  if ((*(v62 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v33 = v54;
    (*(v32 + 32))(v54, v13, v14);
    type metadata accessor for TextBox(0);
    v34 = v55;
    CRRegister.projectedValue.getter();
    v35 = CRRegister.canMerge(delta:)();
    v36 = *(v32 + 8);
    v36(v34, v14);
    v36(v33, v14);
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  v37 = v58;
  outlined init with copy of Date?(v31 + v30[6], v58, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  v39 = v59;
  v38 = v60;
  if ((*(v59 + 48))(v37, 1, v60) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
    v40 = v61;
  }

  else
  {
    v41 = v53;
    (*(v39 + 32))(v53, v37, v38);
    type metadata accessor for TextBox(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
    v42 = CRAttributedString.canMerge(delta:)();
    (*(v39 + 8))(v41, v38);
    v40 = v61;
    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  v43 = v56;
  outlined init with copy of Date?(v31 + v30[7], v56, &_s9Coherence10CRRegisterVySbGSgMd);
  v44 = v57;
  if ((*(v40 + 48))(v43, 1, v57) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVySbGSgMd);
    return 1;
  }

  v45 = v51;
  (*(v40 + 32))(v51, v43, v44);
  type metadata accessor for TextBox(0);
  v46 = v52;
  CRRegister.projectedValue.getter();
  v47 = CRRegister.canMerge(delta:)();
  v48 = *(v40 + 8);
  v48(v46, v44);
  v48(v45, v44);
  return (v47 & 1) != 0;
}

BOOL TextBox.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v78 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v6 = *(v5 - 8);
  v79 = v5;
  v80 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v62 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v75 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
  v76 = *(v14 - 8);
  v77 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v62 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v74 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v67 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v65 = &v62 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v62 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v62 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v62 - v35;
  v37 = TextBox.canMerge(delta:)(a1);
  if (v37)
  {
    v63 = v37;
    v64 = a1;
    outlined init with copy of Date?(a1, v26, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v38 = (*(v28 + 48))(v26, 1, v27);
    v66 = v1;
    if (v38 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      (*(v28 + 32))(v36, v26, v27);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v28 + 16))(v30, v33, v27);
      CRRegister.projectedValue.setter();
      v39 = *(v28 + 8);
      v39(v33, v27);
      v39(v36, v27);
    }

    v40 = v80;
    v41 = type metadata accessor for TextBox.Partial(0);
    v42 = v64;
    v43 = v73;
    outlined init with copy of Date?(v64 + v41[5], v73, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v44 = v74;
    v45 = (*(v74 + 48))(v43, 1, v18);
    v46 = v76;
    if (v45 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v47 = *(v44 + 32);
      v62 = v41;
      v48 = v65;
      v47(v65, v43, v18);
      type metadata accessor for TextBox(0);
      v49 = v67;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v44 + 16))(v68, v49, v18);
      CRRegister.projectedValue.setter();
      v50 = *(v44 + 8);
      v51 = v49;
      v40 = v80;
      v50(v51, v18);
      v52 = v48;
      v41 = v62;
      v50(v52, v18);
    }

    v53 = v75;
    outlined init with copy of Date?(v42 + v41[6], v75, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
    v54 = v77;
    if ((*(v46 + 48))(v53, 1, v77) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd);
    }

    else
    {
      v55 = v69;
      (*(v46 + 32))(v69, v53, v54);
      type metadata accessor for TextBox(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
      CRAttributedString.merge(delta:)();
      (*(v46 + 8))(v55, v54);
    }

    v56 = v78;
    outlined init with copy of Date?(v42 + v41[7], v78, &_s9Coherence10CRRegisterVySbGSgMd);
    v57 = v79;
    if ((*(v40 + 48))(v56, 1, v79) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence10CRRegisterVySbGSgMd);
    }

    else
    {
      v58 = v70;
      (*(v40 + 32))(v70, v56, v57);
      type metadata accessor for TextBox(0);
      v59 = v71;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v40 + 16))(v72, v59, v57);
      CRRegister.projectedValue.setter();
      v60 = *(v40 + 8);
      v60(v59, v57);
      v60(v58, v57);
    }

    LOBYTE(v37) = v63;
  }

  return v37;
}

uint64_t protocol witness for CRDT.context.getter in conformance TextBox(uint64_t a1)
{
  v2 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_2(&lazy protocol witness table cache variable for type TextBox and conformance TextBox, type metadata accessor for TextBox);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRType.visitReferences(_:) in conformance TextBox(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v3 = *(v2 - 8);
  v17 = v2;
  v18 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v11 + 8))(v13, v10);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  CRAttributedString.visitReferences(_:)();
  v14 = v17;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v18 + 8))(v5, v14);
  return UnknownProperties.visitReferences(_:)();
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance TextBox(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TextBox.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t specialized draw #1 <A>() in static ShapeTextBoxRendering.render<A>(_:in:renderFrame:options:)(uint64_t a1, uint64_t a2, void *a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v38 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &aBlock[-1] - v15;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
  v18 = type metadata accessor for Shape(0);
  v19 = *(v14 + 16);
  v19(v16, a1 + *(v18 + 52), v13);
  v20 = type metadata accessor for CRTextStorage();
  v21 = objc_allocWithZone(v20);
  v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = 0;
  v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes] = 0;
  v19(&v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString], v16, v13);
  v22 = specialized static CRTextStorage.viewAttributedString(from:darkMode:)(v16, 0);
  *&v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString] = v22;
  v23 = v22;
  [v23 fixAttributesInRange_];

  v40.receiver = v21;
  v40.super_class = v20;
  v24 = objc_msgSendSuper2(&v40, sel_init);
  (*(v14 + 8))(v16, v13);
  v25 = v24[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode];
  v24[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = *(a2 + 1);
  CRTextStorage.darkMode.didset(v25);
  v26 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
  [v27 setTextStorage_];
  [v27 addTextLayoutManager_];
  [v26 setTextContainer_];
  v28 = [v26 documentRange];
  v29 = [v28 location];

  CGAffineTransformMakeTranslation(&v41, a4, a5);
  v30 = swift_allocObject();
  v31 = *&v41.c;
  *(v30 + 16) = *&v41.a;
  *(v30 + 32) = v31;
  *(v30 + 48) = *&v41.tx;
  v32 = v38;
  *(v30 + 64) = v38;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for closure #1 in draw #1 <A>() in static ShapeTextBoxRendering.render<A>(_:in:renderFrame:options:);
  *(v33 + 24) = v30;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_31;
  v34 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v35 = v32;

  v36 = [v26 enumerateTextLayoutFragmentsFromLocation:v29 options:4 usingBlock:v34];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();

  _Block_release(v34);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }

  return result;
}

{
  v38 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &aBlock[-1] - v15;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
  v18 = type metadata accessor for TextBox(0);
  v19 = *(v14 + 16);
  v19(v16, a1 + *(v18 + 24), v13);
  v20 = type metadata accessor for CRTextStorage();
  v21 = objc_allocWithZone(v20);
  v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = 0;
  v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_isFixingAttributes] = 0;
  v19(&v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString], v16, v13);
  v22 = specialized static CRTextStorage.viewAttributedString(from:darkMode:)(v16, 0);
  *&v21[OBJC_IVAR____TtC8PaperKit13CRTextStorage_viewAttributedString] = v22;
  v23 = v22;
  [v23 fixAttributesInRange_];

  v40.receiver = v21;
  v40.super_class = v20;
  v24 = objc_msgSendSuper2(&v40, sel_init);
  (*(v14 + 8))(v16, v13);
  v25 = v24[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode];
  v24[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = *(a2 + 1);
  CRTextStorage.darkMode.didset(v25);
  v26 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
  [v27 setTextStorage_];
  [v27 addTextLayoutManager_];
  [v26 setTextContainer_];
  v28 = [v26 documentRange];
  v29 = [v28 location];

  CGAffineTransformMakeTranslation(&v41, a4, a5);
  v30 = swift_allocObject();
  v31 = *&v41.c;
  *(v30 + 16) = *&v41.a;
  *(v30 + 32) = v31;
  *(v30 + 48) = *&v41.tx;
  v32 = v38;
  *(v30 + 64) = v38;
  v33 = swift_allocObject();
  *(v33 + 16) = closure #1 in draw #1 <A>() in static ShapeTextBoxRendering.render<A>(_:in:renderFrame:options:)partial apply;
  *(v33 + 24) = v30;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)partial apply;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_58;
  v34 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v35 = v32;

  v36 = [v26 enumerateTextLayoutFragmentsFromLocation:v29 options:4 usingBlock:v34];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();

  _Block_release(v34);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static TextBox.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v37 = a1;
  CRRegister.projectedValue.getter();
  v38 = a2;
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v15 + 8);
  v21(v17, v14);
  v21(v20, v14);
  if (a1 & 1) != 0 && (type metadata accessor for TextBox(0), CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd), v22 = dispatch thunk of static Equatable.== infix(_:_:)(), v23 = *(v36 + 8), v23(v10, v8), v23(v13, v8), (v22) && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope> and conformance CRAttributedString<A>, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd), (dispatch thunk of static Equatable.== infix(_:_:)()) && (v24 = v32, v25 = v35, CRRegister.projectedValue.getter(), v26 = v33, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Bool> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySbGMd), v27 = dispatch thunk of static Equatable.== infix(_:_:)(), v28 = *(v34 + 8), v28(v26, v25), v28(v24, v25), (v27))
  {
    v29 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t specialized TextBox.indexableTextContent<A>(in:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit20IndexableTextContentVGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D4058CF0;
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v1 = CRAttributedString.attributedString.getter();
  v2 = [v1 string];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;

  return v0;
}

double specialized TextBox.hdrHeadroom(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  type metadata accessor for TextBox(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  CRAttributedString.runs.getter();
  v4 = CRAttributedString.Runs<>.maxHDRHeadroom.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t outlined init with take of TextBox.MutatingAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextBox.MutatingAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TextBox.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of TextBox.Partial(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata completion function for TextBox()
{
  type metadata accessor for CRRegister<CGRect>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CRRegister<CGFloat>(319, &lazy cache variable for type metadata for CRRegister<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E6995070]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CRRegister<CGFloat>(319, &lazy cache variable for type metadata for CRAttributedString<TextAttributeScope>, lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope, &type metadata for TextAttributeScope, MEMORY[0x1E69952D8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CRRegister<Bool>();
        if (v3 <= 0x3F)
        {
          type metadata accessor for UnknownProperties();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for CRRegister<Bool>()
{
  if (!lazy cache variable for type metadata for CRRegister<Bool>)
  {
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CRRegister<Bool>);
    }
  }
}

void type metadata completion function for TextBox.ObservableDifference()
{
  type metadata accessor for CRValueObservableDifference?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRAttributedString<TextAttributeScope>.ObservableDifference?, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GMd);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for TextBox.MutatingAction()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRAttributedString<TextAttributeScope>.MutatingAction?, &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Bool>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySb_GMd);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for TextBox.Partial()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>?, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>?, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRAttributedString<TextAttributeScope>.Partial?, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Bool>?, &_s9Coherence10CRRegisterVySbGMd);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void PPKTextFormattingViewController.viewDidAppear(_:)(char a1)
{
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidAppear_, a1 & 1);
  v3 = OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_observationTimer;
  v4 = *&v1[OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_observationTimer];
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = partial apply for closure #1 in PPKTextFormattingViewController.viewDidAppear(_:);
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  v10[3] = &block_descriptor_32;
  v7 = _Block_copy(v10);

  v8 = [v5 scheduledTimerWithTimeInterval:1 repeats:v7 block:0.1];
  _Block_release(v7);
  v9 = *&v1[v3];
  *&v1[v3] = v8;
}

void closure #1 in PPKTextFormattingViewController.viewDidAppear(_:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    [a1 invalidate];
    return;
  }

  v3 = Strong;
  v4 = [v3 presentedViewController];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  if ([v3 isFirstResponder] & 1) != 0 || (objc_msgSend(v5, sel_isFirstResponder))
  {

LABEL_6:
    v6 = [v3 presentedViewController];

    if (v6)
    {

      return;
    }

    if ([v3 isFirstResponder])
    {
      [v3 resignFirstResponder];
      v7 = *&v3[OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_lastFirstResponder];
      if (v7)
      {
        [v7 becomeFirstResponder];
      }
    }

    goto LABEL_13;
  }

  v8 = [v3 firstResponder];
  v9 = *&v3[OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_lastFirstResponder];
  *&v3[OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_lastFirstResponder] = v8;

  [v3 becomeFirstResponder];
LABEL_13:
}

id TextStyleRepresentable.makeUIViewController(context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30UITextFormattingViewControllerC5UIKitE0B10DescriptorVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v17 - v6;
  v8 = [objc_allocWithZone(type metadata accessor for PPKTextFormattingViewController()) initWithConfiguration_];
  swift_getWitnessTable();
  type metadata accessor for UIViewControllerRepresentableContext();
  UIViewControllerRepresentableContext.coordinator.getter();
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  type metadata accessor for TextStyleRepresentable.Coordinator();
  swift_getWitnessTable();
  UITextFormattingViewController.delegate.setter();
  swift_unknownObjectRetain();
  TextFormattingState.formattingAttributes.getter(v9, v10);
  swift_unknownObjectRelease();
  UITextFormattingViewController.FormattingDescriptor.init(attributes:)();
  v11 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  UITextFormattingViewController.formattingDescriptor.setter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      if ([v8 respondsToSelector_] && objc_msgSend(v8, sel_respondsToSelector_, sel__setInternalDelegate_) && objc_msgSend(v8, sel_respondsToSelector_, sel__setShouldDeferFontPickerPresentationToViewController_))
      {
        [v8 performSelector:sel__setEditResponder_ withObject:v15 withObject:0];
        [v8 performSelector:sel__setInternalDelegate_ withObject:v15 withObject:0];
        [v8 performSelector:sel__setShouldDeferFontPickerPresentationToViewController_ withObject:v13 withObject:0];
      }
    }

    else
    {
      v15 = v13;
    }
  }

  v17[8] = v9;
  v17[9] = v10;
  v17[10] = v3;
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = v8;
  v17[5] = v3;
  withObservationTracking<A>(_:onChange:)();

  return v8;
}

unint64_t TextFormattingState.formattingAttributes.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Color(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = (v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVGMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = v56 - v7;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v9 = (*(a2 + 88))(a1, a2);
  v10 = (*(a2 + 112))(a1, a2);
  v11 = (*(a2 + 16))(a1, a2);
  v13 = v12;
  v14 = (*(a2 + 40))(a1, a2);
  v15 = MEMORY[0x1DA6CCED0](v11, v13);

  v16 = objc_opt_self();
  v17 = [v16 fontWithName:v15 size:v14];

  if (v17)
  {
    if (v9)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    v19 = [v17 fontDescriptor];
    v20 = [v19 fontDescriptorWithSymbolicTraits_];

    if (v20)
    {
      v21 = *MEMORY[0x1E69DB648];
      v22 = v20;
      [v17 pointSize];
      v23 = [v16 fontWithDescriptor:v22 size:?];

      v65 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
      *&v64 = v23;
      outlined init with take of Any(&v64, v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v8;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v21, isUniquelyReferenced_nonNull_native);

      v25 = v61;
      v26 = v62;
      goto LABEL_9;
    }
  }

  v25 = v61;
  v26 = v8;
LABEL_9:
  v27 = *MEMORY[0x1E69DB650];
  v28 = v60;
  v58 = *(a2 + 184);
  v58(a1, a2);
  outlined init with take of Color(v28, v25);
  v29 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  outlined destroy of Color(v25);
  v59 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
  v65 = v59;
  *&v64 = v29;
  outlined init with take of Any(&v64, v63);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v26;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v27, v30);
  v31 = v62;
  v32 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v32 setAlignment_];
  v33 = *MEMORY[0x1E69DB688];
  v65 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
  *&v64 = v32;
  outlined init with take of Any(&v64, v63);
  v57 = v32;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v31;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v33, v34);
  v35 = v62;
  v36 = (*(a2 + 136))(a1, a2);
  v56[1] = a2 + 184;
  if (v36)
  {
    v37 = *MEMORY[0x1E69DB758];
    v65 = MEMORY[0x1E69E6530];
    *&v64 = 1;
    outlined init with take of Any(&v64, v63);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v35;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v37, v38);
    v39 = v62;
    v40 = *MEMORY[0x1E69DB750];
    v41 = v58;
    v58(a1, a2);
    v42 = v61;
    outlined init with take of Color(v28, v61);
    v43 = &off_1E845F000;
    v44 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    outlined destroy of Color(v42);
    v65 = v59;
    *&v64 = v44;
    outlined init with take of Any(&v64, v63);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v39;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v40, v45);
    v35 = v62;
  }

  else
  {
    v41 = v58;
    v43 = 0x1FA9B7000;
  }

  if ((*(a2 + 160))(a1, a2))
  {
    v46 = *MEMORY[0x1E69DB6B8];
    v65 = MEMORY[0x1E69E6530];
    *&v64 = 1;
    outlined init with take of Any(&v64, v63);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v35;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v46, v47);
    v48 = v62;
    v49 = *MEMORY[0x1E69DB6B0];
    v50 = v43;
    v51 = v60;
    v41(a1, a2);
    v52 = v61;
    outlined init with take of Color(v51, v61);
    v53 = [objc_allocWithZone(MEMORY[0x1E69DC888]) v50 + 3514];
    outlined destroy of Color(v52);
    v65 = v59;
    *&v64 = v53;
    outlined init with take of Any(&v64, v63);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v48;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v49, v54);

    return v62;
  }

  else
  {
  }

  return v35;
}

uint64_t closure #1 in TextStyleRepresentable.observeFormattingState(update:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v5 = a3[2];
  swift_unknownObjectRetain();
  v5(a2, v3);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVySSGMd);
  v6 = v3[5];
  swift_unknownObjectRetain();
  v6(a2, v3);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVySiGMd);
  v7 = v3[23];
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVGMd);
  __swift_allocate_boxed_opaque_existential_1(v17);
  swift_unknownObjectRetain();
  v7(a2, v3);
  swift_unknownObjectRelease();
  v8 = v3[8];
  swift_unknownObjectRetain();
  v9 = v8(a2, v3);
  LOBYTE(v8) = v10;
  swift_unknownObjectRelease();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVySo15NSTextAlignmentVGMd);
  v17[4] = v9;
  v18 = v8 & 1;
  v11 = v3[11];
  swift_unknownObjectRetain();
  LOWORD(v11) = v11(a2, v3);
  swift_unknownObjectRelease();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVySbGMd);
  v21 = v12;
  v20 = v11 & 0x101;
  v13 = v3[14];
  swift_unknownObjectRetain();
  LOWORD(v11) = v13(a2, v3);
  swift_unknownObjectRelease();
  v23 = v12;
  v22 = v11 & 0x101;
  v14 = v3[20];
  swift_unknownObjectRetain();
  LOWORD(v11) = v14(a2, v3);
  swift_unknownObjectRelease();
  v25 = v12;
  v24 = v11 & 0x101;
  v15 = v3[17];
  swift_unknownObjectRetain();
  LOWORD(v3) = v15(a2, v3);
  swift_unknownObjectRelease();
  v27 = v12;
  v26 = v3 & 0x101;
  return swift_arrayDestroy();
}

uint64_t (*implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = type metadata accessor for TextStyleRepresentable();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v13, a2, v8);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  (*(v9 + 32))(v10 + 5, v13, v8);
  v11 = a1;
  return partial apply for closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:);
}

uint64_t closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18[-v8];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = type metadata accessor for TextStyleRepresentable();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v18, a2, v12);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = v11;
  (*(v13 + 32))(v15 + 7, v18, v12);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:), v15);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30UITextFormattingViewControllerC5UIKitE0B10DescriptorVSgMd);
  v7[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[21] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:), v9, v8);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[19];
    v4 = v0[20];
    v6 = v0[17];
    v5 = v0[18];
    v7 = type metadata accessor for TextStyleRepresentable();
    swift_unknownObjectRetain();
    TextFormattingState.formattingAttributes.getter(v5, v3);
    swift_unknownObjectRelease();
    UITextFormattingViewController.FormattingDescriptor.init(attributes:)();
    v8 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    UITextFormattingViewController.formattingDescriptor.setter();
    v9 = *(v7 + 16);
    v0[10] = v9;
    v10 = *(v7 + 24);
    v0[11] = v10;
    v0[12] = v6;
    v0[4] = v9;
    v0[5] = v10;
    v0[6] = v2;
    v0[7] = v6;
    withObservationTracking<A>(_:onChange:)();
  }

  v11 = v0[1];

  return v11();
}

id TextStyleRepresentable.makeCoordinator()()
{
  v1 = *v0;
  v2 = v0[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRetain();
  v4 = 1.0;
  if (Strong)
  {
    if (AnyCanvas.isHDRActive.getter())
    {
      swift_getKeyPath();
      lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (Strong[OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR])
      {
        v4 = *&Strong[OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet + 40];
      }
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 traitCollection];

    v8 = [v7 userInterfaceStyle];
    v9 = v8 == 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  v11 = v10;
  if (v10)
  {
  }

  v12 = objc_allocWithZone(type metadata accessor for TextStyleRepresentable.Coordinator());
  return TextStyleRepresentable.Coordinator.init(formattingState:maximumLinearExposure:shouldUseDarkGridInDarkMode:colorPickerShowsGridOnly:)(v1, v2, v9, v11 != 0, v4);
}

id TextStyleRepresentable.Coordinator.init(formattingState:maximumLinearExposure:shouldUseDarkGridInDarkMode:colorPickerShowsGridOnly:)(uint64_t a1, uint64_t a2, char a3, char a4, double a5)
{
  v6 = &v5[direct field offset for TextStyleRepresentable.Coordinator._formattingState];
  *v6 = a1;
  v6[1] = a2;
  *&v5[direct field offset for TextStyleRepresentable.Coordinator.maximumLinearExposure] = a5;
  v5[direct field offset for TextStyleRepresentable.Coordinator.shouldUseDarkGridInDarkMode] = a3;
  v5[direct field offset for TextStyleRepresentable.Coordinator.colorPickerShowsGridOnly] = a4;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for TextStyleRepresentable.Coordinator();
  return objc_msgSendSuper2(&v8, sel_init);
}

void UITextFormattingViewController.ChangeValue.apply<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v67 = &v64 - v7;
  v8 = type metadata accessor for Color(0);
  v66 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v64 - v15;
  v16 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v20, v3, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x1E69DC490])
  {
    (*(v17 + 96))(v20, v16);
    v22 = *v20;
    v23 = (*(a3 + 104))(v68, a2, a3);
LABEL_9:
    *v24 = v22;
    v24[1] = 0;
    v23(v68, 0);
    return;
  }

  v64 = a2;
  if (v21 == *MEMORY[0x1E69DC4A0])
  {
    (*(v17 + 96))(v20, v16);
    v22 = *v20;
    v23 = (*(a3 + 128))(v68, v64, a3);
    goto LABEL_9;
  }

  if (v21 == *MEMORY[0x1E69DC4C0])
  {
    (*(v17 + 96))(v20, v16);
    v22 = *v20;
    v23 = (*(a3 + 152))(v68, v64, a3);
    goto LABEL_9;
  }

  if (v21 == *MEMORY[0x1E69DC448])
  {
    (*(v17 + 96))(v20, v16);
    v22 = *v20;
    v23 = (*(a3 + 176))(v68, v64, a3);
    goto LABEL_9;
  }

  if (v21 == *MEMORY[0x1E69DC498])
  {
    (*(v17 + 96))(v20, v16);
    v25 = *v20;
    v26 = [v25 familyName];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = a3;
    v31 = *(a3 + 32);
    v32 = v64;
    v33 = v31(v68, v64, v30);
    v35 = v34;
    *v34 = v27;
    v34[1] = v29;

    *(v35 + 16) = 0;
    v33(v68, 0);
    [v25 pointSize];
    if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v36 > -9.22337204e18)
    {
      if (v36 < 9.22337204e18)
      {
        v37 = v36;
        v38 = (v30)[7](v68, v32, v30);
        *v39 = v37;
        *(v39 + 8) = 0;
        v38(v68, 0);
        v40 = [v25 fontDescriptor];
        v41 = [v40 symbolicTraits];

        v42 = (v30)[13](v68, v32, v30);
        *v43 = (v41 & 2) != 0;
        v43[1] = 0;
        v42(v68, 0);
        v44 = (v30)[16](v68, v32, v30);
        *v45 = v41 & 1;
        v45[1] = 0;
        v44(v68, 0);

        return;
      }

      goto LABEL_42;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v21 == *MEMORY[0x1E69DC4A8])
  {
    (*(v17 + 96))(v20, v16);
    v46 = *v20;
    if ((*v20 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v46 <= -9.22337204e18)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v46 >= 9.22337204e18)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v47 = v46;
    v48 = (*(a3 + 56))(v68, v64, a3);
LABEL_21:
    *v49 = v47;
    *(v49 + 8) = 0;
    v48(v68, 0);
    return;
  }

  if (v21 != *MEMORY[0x1E69DC4B8])
  {
    if (v21 == *MEMORY[0x1E69DC450])
    {
      (*(v17 + 96))(v20, v16);
      v53 = *v20;
      v54 = UITextFormattingViewControllerTextAlignment.nsTextAlignment.getter();
      v55 = (*(a3 + 80))(v68, v64, a3);
      *v56 = v54;
      *(v56 + 8) = 0;
      v55(v68, 0);

      return;
    }

    if (v21 == *MEMORY[0x1E69DC468])
    {
      v57 = v64;
      v58 = (*(a3 + 40))(v64, a3);
      if (__OFADD__(v58, 1))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      if (v58 + 1 >= 192)
      {
        v47 = 192;
      }

      else
      {
        v47 = v58 + 1;
      }
    }

    else
    {
      if (v21 != *MEMORY[0x1E69DC460])
      {
        (*(v17 + 8))(v20, v16);
        return;
      }

      v57 = v64;
      v63 = (*(a3 + 40))(v64, a3);
      if (__OFSUB__(v63, 1))
      {
        goto LABEL_47;
      }

      if (v63 - 1 <= 7)
      {
        v47 = 7;
      }

      else
      {
        v47 = v63 - 1;
      }
    }

    v48 = (*(a3 + 56))(v68, v57, a3);
    goto LABEL_21;
  }

  (*(v17 + 96))(v20, v16);
  v50 = *v20;
  v51 = [v50 CGColor];
  v52 = v67;
  Color.init(cgColor:)(v51, v67);

  if ((*(v66 + 48))(v52, 1, v8))
  {

    outlined destroy of Color?(v52);
  }

  else
  {
    outlined init with take of Color(v52, v13);
    v59 = v65;
    outlined init with take of Color(v13, v65);
    outlined init with copy of Color(v59, v10);
    v60 = (*(a3 + 200))(v68, v64, a3);
    v62 = v61;
    outlined assign with take of Color(v10, v61);
    *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVGMd) + 28)) = 0;
    v60(v68, 0);

    outlined destroy of Color(v59);
  }
}

id TextStyleRepresentable.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextStyleRepresentable.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata instantiation function for TextStyleRepresentable()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for TextStyleRepresentable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for TextStyleRepresentable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance TextStyleRepresentable<A>@<X0>(void *a1@<X8>)
{
  result = TextStyleRepresentable.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance TextStyleRepresentable<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance TextStyleRepresentable<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance TextStyleRepresentable<A>()
{
  swift_getWitnessTable();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t UITextFormattingViewControllerTextAlignment.nsTextAlignment.getter()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v6 = 0;
LABEL_8:

    return v6;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
    {
      v6 = 2;
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        return 2;
      }

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
      {
        v6 = 3;
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          return 3;
        }

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
        if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
        {
          v6 = 1;
        }

        else
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v23)
          {
            return 1;
          }

          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;
          if (v24 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v26 != v27)
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v6 = 4;
        }
      }
    }

    goto LABEL_8;
  }

  return 0;
}

void one-time initialization function for miniMenu()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D40664F0;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITextFormattingViewControllerComponentGroup);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D405B640;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITextFormattingViewControllerComponent);
  v2 = *MEMORY[0x1E69DE5E0];
  v3 = static UITextFormattingViewControllerComponent.component(_:_:)();

  *(v1 + 32) = v3;
  v4 = *MEMORY[0x1E69DE668];
  v5 = static UITextFormattingViewControllerComponent.component(_:_:)();

  *(v1 + 40) = v5;
  v6 = static UITextFormattingViewControllerComponentGroup.group(_:)();

  *(v0 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D405B640;
  v8 = *MEMORY[0x1E69DE608];
  v9 = static UITextFormattingViewControllerComponent.component(_:_:)();

  *(v7 + 32) = v9;
  v10 = *MEMORY[0x1E69DE600];
  v11 = static UITextFormattingViewControllerComponent.component(_:_:)();

  *(v7 + 40) = v11;
  v12 = static UITextFormattingViewControllerComponentGroup.group(_:)();

  *(v0 + 40) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D405CEB0;
  v14 = *MEMORY[0x1E69DE630];
  v15 = static UITextFormattingViewControllerComponent.component(_:_:)();

  *(v13 + 32) = v15;
  v16 = static UITextFormattingViewControllerComponentGroup.group(_:)();

  *(v0 + 48) = v16;
  v17 = objc_allocWithZone(MEMORY[0x1E69DD0C8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v17 initWithGroups_];

  static UITextFormattingViewControllerConfiguration.miniMenu = v19;
}

id specialized PPKTextFormattingViewController.viewWillDisappear(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_observationTimer);
  if (v1)
  {
    [v1 invalidate];
  }

  result = *(v0 + OBJC_IVAR____TtC8PaperKitP33_27F002B93C9F4F9167064F394416CE3031PPKTextFormattingViewController_lastFirstResponder);
  if (result)
  {

    return [result becomeFirstResponder];
  }

  return result;
}

uint64_t specialized TextStyleRepresentable.Coordinator.textFormattingViewController(_:didChangeValue:)()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = swift_unknownObjectRetain();
  UITextFormattingViewController.ChangeValue.apply<A>(to:)(v3, v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t specialized TextStyleRepresentable.Coordinator.textFormattingViewController(_:shouldPresentColorPicker:)(void *a1)
{
  [a1 _setShowsGridOnly_];
  [a1 setSupportsAlpha_];
  [a1 _setShouldUseDarkGridInDarkMode_];
  [a1 setMaxGain_];
  return 1;
}

uint64_t outlined destroy of Color?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Color(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Color(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Color(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Color(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas()
{
  result = lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas;
  if (!lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas)
  {
    type metadata accessor for AnyCanvas();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in closure #2 in implicit closure #1 in TextStyleRepresentable.observeFormattingState(update:)(a1, v6, v7, v8, (v1 + 7), v4, v5);
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t MagicPaperUsageScratchToDeleteEvent.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1868852853;
    v6 = 0xD000000000000016;
    if (a1 == 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0x747865745F6D756ELL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6C69636E65507369;
    v2 = 0x6874616D5F6D756ELL;
    v3 = 0xD000000000000012;
    if (a1 != 3)
    {
      v3 = 0x6F7274735F6D756ELL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656C61636F6CLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}