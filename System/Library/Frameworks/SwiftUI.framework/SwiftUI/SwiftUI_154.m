_DWORD *storeEnumTagSinglePayload for OptionButton(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 24;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, (v8 & 0xFFFFFFFFFFFFFFF8) + 24);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = (result + v8) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v18 + 8) = a2 & 0x7FFFFFFF;
      *(v18 + 16) = 0;
    }

    else
    {
      *(v18 + 8) = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>);
    }
  }
}

unint64_t ScrollEventConverter.convert(_:in:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [a1 phase];
  if (v6 > 1)
  {
    v9 = v6;
    v10 = *v3;
    type metadata accessor for (UIScrollEvent, PanEvent)();
    v12 = v11;
    [a1 _adjustedAcceleratedDeltaInView_];
    v14 = v3[1] + v13;
    v15 = v3[2];
    v3[1] = v14;
    v3[2] = v16 + v15;
    [a1 locationInView_];
    [a1 timestamp];
    [a1 phase];
    PanEvent.init(globalLocation:phase:timestamp:globalTranslation:touchType:)();
    PanEvent.globalTranslation.getter();
    PanEvent.translation.setter();

    *&v23 = 0;
    if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      *v3 = v10 + 1;
      v3[1] = 0.0;
      v3[2] = 0.0;
    }

    type metadata accessor for _ContiguousArrayStorage<(EventID, PanEvent)>();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    *(inited + 32) = v12;
    v18 = inited + 32;
    *(inited + 40) = v10 ^ a1;
    *(inited + 112) = v24;
    *(inited + 128) = *v25;
    *(inited + 137) = *&v25[9];
    *(inited + 48) = v20;
    *(inited + 64) = v21;
    *(inited + 80) = v22;
    *(inited + 96) = v23;
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC03PanE0VTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (EventID, PanEvent)(v18);
    return v19;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC03PanE0VTt0g5Tf4g_n(v7);
  }
}

void type metadata accessor for (UIScrollEvent, PanEvent)()
{
  if (!lazy cache variable for type metadata for (UIScrollEvent, PanEvent))
  {
    type metadata accessor for UIScrollEvent();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIScrollEvent, PanEvent));
    }
  }
}

unint64_t type metadata accessor for UIScrollEvent()
{
  result = lazy cache variable for type metadata for UIScrollEvent;
  if (!lazy cache variable for type metadata for UIScrollEvent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIScrollEvent);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(EventID, PanEvent)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, PanEvent)>)
  {
    type metadata accessor for (EventID, PanEvent)();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, PanEvent)>);
    }
  }
}

void type metadata accessor for (EventID, PanEvent)()
{
  if (!lazy cache variable for type metadata for (EventID, PanEvent))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (EventID, PanEvent));
    }
  }
}

uint64_t outlined destroy of (EventID, PanEvent)(uint64_t a1)
{
  type metadata accessor for (EventID, PanEvent)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Section.create(isExpanded:content:header:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v29 = a4;
  v30 = a5;
  v32 = a3;
  v31 = a8;
  v13 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26, v27, v22);
  (*(v17 + 16))(v20, v29, a7);
  (*(v13 + 16))(v15, v30, a9);
  Section.init(isExpanded:header:content:footer:)(a1, a2, v32, v24, v20, v15, a6, a7, v31, a9);
  return outlined copy of Binding<Int>?(a1, a2);
}

id PresentationHostingControllerBase.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = specialized UIHostingController.init(rootView:)(a1);
  (*(*(*(v2 + 125) - 8) + 8))(a1);
  return v5;
}

id PresentationHostingControllerBase.init(coder:rootView:)(void *a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3E8);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - v8;
  (*(v6 + 16))(&v14 - v8, v7);
  v10 = UIHostingController.init(coder:rootView:)(a1, v9);
  v11 = *(v6 + 8);
  v12 = v10;
  v11(a2, v5);
  if (v10)
  {
  }

  return v10;
}

id PresentationHostingControllerBase.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PresentationHostingControllerBase();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PresentationHostingControllerBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresentationHostingControllerBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PresentationHostingController.HostingView.defaultBackgroundIsTransparent.getter()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x710);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  return result;
}

void *PresentationHostingController.HostingView.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = specialized PresentationHostingController.HostingView.init(rootView:)(a1);
  (*(*(*(v2 + 224) - 8) + 8))(a1);
  return v5;
}

id PresentationHostingController.HostingView.init(coder:)(void *a1)
{
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x710) + 8) = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PresentationHostingController.HostingView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PresentationHostingController.HostingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresentationHostingController.HostingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PresentationHostingController.defaultBackgroundIsTransparent.getter()
{
  PresentationHostingController.presentationKind.getter(&v3);
  if (!v3)
  {
    if (*(v0 + direct field offset for PresentationHostingController.placement) <= 3u)
    {
      if (*(v0 + direct field offset for PresentationHostingController.placement) > 1u)
      {
        if (*(v0 + direct field offset for PresentationHostingController.placement) != 2)
        {
          goto LABEL_3;
        }
      }

      else if (*(v0 + direct field offset for PresentationHostingController.placement))
      {
        goto LABEL_3;
      }
    }

LABEL_10:
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v1 = static Solarium.isEnabled(for:)();
    return v1 & 1;
  }

  PresentationHostingController.presentationKind.getter(&v4);
  if (v4 != 3)
  {
    goto LABEL_10;
  }

LABEL_3:
  v1 = 0;
  return v1 & 1;
}

double @objc PresentationHostingController.preferredContentSize.getter(void *a1)
{
  v1 = a1;
  PresentationHostingController.preferredContentSize.getter();
  v3 = v2;

  return v3;
}

id PresentationHostingController.preferredContentSize.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_preferredContentSize);
}

void @objc PresentationHostingController.preferredContentSize.setter(void *a1, double a2, double a3)
{
  v5 = a1;
  PresentationHostingController.preferredContentSize.setter(a2, a3);
}

uint64_t PresentationHostingController.preferredContentSize.setter(double a1, double a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in PresentationHostingController.preferredContentSize.setter;
  *(v7 + 24) = v6;
  v12[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed () -> ();
  v12[3] = &block_descriptor_71;
  v8 = _Block_copy(v12);
  v9 = v2;

  [v5 performWithoutAnimation_];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id closure #1 in PresentationHostingController.preferredContentSize.setter(void *a1, double a2, double a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for PresentationHostingController();
  return objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a2, a3);
}

uint64_t closure #1 in PresentationHostingController.sizingOptionsDidChange(from:)(uint64_t a1, uint64_t a2)
{
  v3 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter();

  _ProposedSize.init(width:height:)();
  swift_beginAccess();
  type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();
  ViewGraphGeometryObservers.stopObserving(proposal:)();
  swift_endAccess();

  v5 = a2 + direct field offset for PresentationHostingController.observedSize;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  return result;
}

uint64_t PresentationHostingController.shouldUsePresentationSizing.getter()
{
  UIHostingController.sizingOptions.getter(v7);
  if (!v7[0] && (v3 = [v0 sheetPresentationController]) != 0 && (v4 = v3, v5 = objc_msgSend(v3, sel_presentationStyle), v4, v5 == 2))
  {
    v6 = &v0[direct field offset for PresentationHostingController.lastPresentationOptions];
    swift_beginAccess();
    if (*v6)
    {
      v1 = v6[136] ^ 1;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id UIViewController.nonPresentedAncestor.getter()
{
  v1 = v0;
  v2 = [v1 presentingViewController];
  if (v2)
  {
    while (1)
    {
      v3 = v2;
      result = [v2 view];
      if (!result)
      {
        break;
      }

      v5 = result;
      v6 = [result window];

      if (!v6)
      {

        goto LABEL_7;
      }

      v2 = [v3 presentingViewController];
      v1 = v3;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_7:
  v3 = v1;
LABEL_8:
  v7 = [v3 parentViewController];
  if (v7)
  {
    while (1)
    {
      v8 = v7;
      result = [v7 view];
      if (!result)
      {
        break;
      }

      v9 = result;
      v10 = [result window];

      if (!v10)
      {

        return v3;
      }

      v7 = [v8 parentViewController];
      v3 = v8;
      if (!v7)
      {
        return v8;
      }
    }

LABEL_17:
    __break(1u);
    return result;
  }

  return v3;
}

void closure #2 in PresentationHostingController.sizingOptionsDidChange(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = direct field offset for PresentationHostingController.lastPresentationOptions;
    swift_beginAccess();
    if (*&v8[v9])
    {
      outlined init with copy of PresentationOptionsPreference(&v8[v9], &v43);
      type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
      lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
      if (static SemanticFeature.isEnabled.getter())
      {
        outlined init with copy of PresentationSizing?(&v51, &v38);
        if (v39)
        {
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v38, &v56);
        }

        else
        {
          *(&v57 + 1) = &type metadata for AutomaticPresentationSizing;
          v58 = &protocol witness table for AutomaticPresentationSizing;
        }
      }

      else
      {
        v58 = 0;
        v56 = 0;
        v57 = 0u;
      }

      outlined destroy of PresentationOptionsPreference(&v43);
      if (*(&v57 + 1))
      {
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v56, v59);
        v10 = v8;
        v11 = [v10 presentingViewController];
        if (!v11)
        {

LABEL_27:
          __swift_destroy_boxed_opaque_existential_1(v59);
          return;
        }

        v12 = v11;
        v13 = UIViewController.nonPresentedAncestor.getter();
        v14 = [v13 view];

        if (!v14)
        {
          __break(1u);
          return;
        }

        v37 = *&v10[direct field offset for PresentationHostingController.lastColumnCount];
        ObjectType = swift_getObjectType();
        v43.receiver = v10;
        v43.super_class = ObjectType;
        objc_msgSendSuper2(&v43, sel_preferredContentSize);
        v17 = v16;
        v19 = v18;
        v20 = [v10 traitCollection];

        v21 = [v20 _environmentWrapper];
        if (v21)
        {
          v22 = v21;
          type metadata accessor for EnvironmentWrapper();
          if (swift_dynamicCastClass())
          {
            v23 = a4;
            v24 = a5;
            v25 = v12;
            v26 = v14;
            v27 = v22;
            dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.getter();

            v14 = v26;
            v12 = v25;
            a5 = v24;
            a4 = v23;

            receiver = v43.receiver;
            super_class = v43.super_class;
            v56 = v43;
LABEL_26:
            v43.receiver = receiver;
            v43.super_class = super_class;
            EnvironmentValues.readableWidth.getter();
            v32 = v31;

            v42 = 0;
            v41 = 1;
            v40 = 1;
            outlined init with copy of _Benchmark(v59, &v43);
            v44 = v14;
            v45 = v37;
            v46 = v17;
            v47 = v19;
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = 0;
            v52 = 1;
            v53 = a4;
            v54 = a5;
            v55 = v32;
            specialized UIHostingController.host.getter();
            specialized UIHostingController.host.getter();
            type metadata accessor for _UIHostingView();
            *(&v38 + 1) = swift_getWitnessTable();
            swift_unknownObjectWeakInit();
            specialized SheetSizing.sheetSizeThatFits<A>(host:subview:)(&v38);
            v34 = v33;
            v36 = v35;
            outlined destroy of weak FallbackResponderProvider?(&v38);
            PresentationHostingController.preferredContentSize.setter(v34, v36);

            outlined destroy of SheetSizing(&v43);
            goto LABEL_27;
          }
        }

        EnvironmentValues.init()();
        v56 = v43;
        EnvironmentValues.configureForRoot()();
        v30 = v56.receiver;
        if (one-time initialization token for configuredForPlatform != -1)
        {
          swift_once();
        }

        if (v30)
        {
          if (!static EnvironmentValues.configuredForPlatform || v30 != static EnvironmentValues.configuredForPlatform)
          {
            goto LABEL_25;
          }
        }

        else if (static EnvironmentValues.configuredForPlatform)
        {
          goto LABEL_25;
        }

        EnvironmentValues.plist.setter();
LABEL_25:
        EnvironmentValues._configureForPlatform(traitCollection:)(v20);

        super_class = v56.super_class;
        receiver = v56.receiver;
        goto LABEL_26;
      }
    }

    else
    {

      v58 = 0;
      v56 = 0;
      v57 = 0u;
    }

    outlined destroy of PresentationSizing?(&v56);
  }
}

Class @objc PresentationHostingController.keyCommands.getter(void *a1)
{
  v1 = a1;
  v2 = PresentationHostingController.keyCommands.getter();

  if (v2)
  {
    type metadata accessor for UIKeyCommand();
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t PresentationHostingController.keyCommands.getter()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v9, sel_keyCommands);
  if (v1)
  {
    v2 = v1;
    type metadata accessor for UIKeyCommand();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v10 = v3;
  v4 = *(v0 + direct field offset for PresentationHostingController.lastInteractiveDismissDisabled);
  static Semantics.v6_1.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (v4 & 1) == 0)
  {
    v5 = [objc_opt_self() keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_escapeKeyPressed];
    v6 = v5;
    if (v3)
    {
      v7 = v5;
      MEMORY[0x18D00CC30]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return v10;
    }

    else
    {
      type metadata accessor for RemoteSheetContainerVCKey.Storage?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_18CD69590;
      *(v3 + 32) = v6;
    }
  }

  return v3;
}

void @objc PresentationHostingController.escapeKeyPressed()(void *a1)
{
  v1 = a1;
  protocol witness for PlatformFilePicker.dismiss() in conformance UIDocumentPickerViewController();
}

id closure #1 in PresentationHostingController._canShowWhileLocked()@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v5 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter();

  GraphHost.preferenceValue<A>(_:)();

  if (v8 == 2)
  {
    v7.receiver = a1;
    v7.super_class = ObjectType;
    result = objc_msgSendSuper2(&v7, sel__canShowWhileLocked);
  }

  else
  {
    result = (v8 & 1);
  }

  *a2 = result;
  return result;
}

BOOL @objc PresentationHostingController._canShowWhileLocked()(void *a1)
{
  v1 = a1;
  canShowWhile = PresentationHostingController._canShowWhileLocked()();

  return canShowWhile;
}

uint64_t PresentationHostingController.willTransition(to:with:)(void *a1, void *a2)
{
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_willTransitionToTraitCollection_withTransitionCoordinator_, a1, a2);
  v5 = &v2[direct field offset for PresentationHostingController.delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    if (((*(v7 + 24))(ObjectType, v7) & 1) != 0 && [a1 horizontalSizeClass] == 2)
    {
      (*(v7 + 32))(ObjectType, v7);
      v9 = swift_allocObject();
      *(v9 + 16) = v2;
      v12[4] = partial apply for closure #1 in PresentationHostingController.willTransition(to:with:);
      v12[5] = v9;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
      v12[3] = &block_descriptor_28_0;
      v10 = _Block_copy(v12);
      v11 = v2;

      [a2 animateAlongsideTransition:v10 completion:0];
      _Block_release(v10);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void closure #1 in PresentationHostingController.willTransition(to:with:)(int a1, id a2)
{
  v3 = [a2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setHidden_];

    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    v8[4] = partial apply for closure #1 in closure #1 in PresentationHostingController.willTransition(to:with:);
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed () -> ();
    v8[3] = &block_descriptor_34_1;
    v6 = _Block_copy(v8);
    v7 = a2;

    [v7 dismissViewControllerAnimated:0 completion:v6];
    _Block_release(v6);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in closure #1 in PresentationHostingController.willTransition(to:with:)(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setHidden_];
  }

  else
  {
    __break(1u);
  }
}

void @objc PresentationHostingController.willTransition(to:with:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  PresentationHostingController.willTransition(to:with:)(v6, a4);

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall PresentationHostingController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewWillDisappear_, a1);
  v4 = direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively;
  v5 = v1;
  v6 = [v5 presentingViewController];

  v7 = v5;
  if (v6)
  {
    v8 = v5;
    while (1)
    {
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        break;
      }

      v7 = v10;

      if (v7[direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively] == 1)
      {
        v2[v4] = 1;
      }

      v9 = v6;
      v6 = [v7 presentingViewController];

      v8 = v7;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v7 = v8;
  }

LABEL_8:
  if ([v5 isBeingDismissed])
  {
    v11 = [v5 transitionCoordinator];
    if (v11)
    {
      v12 = v11;
      if ([v11 isInteractive])
      {
        v13 = swift_allocObject();
        *(v13 + 16) = v5;
        v16[4] = partial apply for closure #1 in PresentationHostingController.viewWillDisappear(_:);
        v16[5] = v13;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 1107296256;
        v16[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        v16[3] = &block_descriptor_22_1;
        v14 = _Block_copy(v16);
        v15 = v5;

        [v12 notifyWhenInteractionChangesUsingBlock_];

        _Block_release(v14);
        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t closure #1 in PresentationHostingController.viewWillDisappear(_:)(void *a1, uint64_t a2)
{
  result = [a1 isInteractive];
  if ((result & 1) == 0)
  {
    result = [a1 isCancelled];
    if ((result & 1) == 0)
    {
      v5 = a2 + direct field offset for PresentationHostingController.delegate;
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v6 = *(v5 + 8);
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(a2, ObjectType, v6);

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void @objc PresentationHostingController.viewWillDisappear(_:)(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  PresentationHostingController.viewWillDisappear(_:)(a3);
}

Swift::Void __swiftcall PresentationHostingController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidDisappear_, a1);
  if ([v2 isBeingDismissed])
  {
    v4 = &v2[direct field offset for PresentationHostingController.delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 1);
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(v2, v2[direct field offset for PresentationHostingController.wasPreempted], v2[direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively], ObjectType, v5);
      swift_unknownObjectRelease();
    }

    v7 = &v2[direct field offset for PresentationHostingController.secondaryDismissDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 1);
      v9 = swift_getObjectType();
      (*(v8 + 8))(v2, v2[direct field offset for PresentationHostingController.wasPreempted], v9, v8);
      swift_unknownObjectRelease();
    }

    *(v7 + 1) = 0;
    swift_unknownObjectWeakAssign();
  }

  v2[direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively] = 0;
}

void @objc PresentationHostingController.viewDidDisappear(_:)(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  PresentationHostingController.viewDidDisappear(_:)(a3);
}

uint64_t closure #1 in PresentationHostingController.configureDetents(of:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = PresentationOptionsPreference.differenceMessage(from:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t closure #1 in PresentationHostingController.updateDetentsSelection(of:using:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in closure #1 in PresentationHostingController.updateDetentsSelection(of:using:);
  *(v5 + 24) = v4;
  v10[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed () -> ();
  v10[3] = &block_descriptor_44_0;
  v6 = _Block_copy(v10);
  v7 = a1;
  v8 = a2;

  [v7 animateChanges_];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t PresentationHostingController.update(_:)(uint64_t a1)
{
  PresentationHostingController.presentationKind.getter(&v4);
  type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  v2 = *(a1 + 8);
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  LOBYTE(v4) = 3;
  type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey>, &type metadata for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, &protocol witness table for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  specialized UIHostingController.host.getter();
  LOBYTE(v4) = _UIHostingView.wantsTransparentBackground.getter();
  type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation>, &type metadata for ContainerBackgroundKeys.TransparentPresentation, &protocol witness table for ContainerBackgroundKeys.TransparentPresentation, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  if (EnvironmentValues.isVisionEnabled.getter())
  {
    v4 = 0uLL;
    EnvironmentValues.backgroundInfo.setter();
    v4 = xmmword_18CD6E1E0;
    EnvironmentValues.backgroundMaterial.setter();
  }

  return UIHostingController.update(_:)(a1);
}

id @objc PresentationHostingController._showcaseView.getter(void *a1)
{
  v1 = a1;
  v2 = PresentationHostingController._showcaseView.getter();

  return v2;
}

id PresentationHostingController._showcaseView.getter()
{
  v0 = specialized UIHostingController.host.getter();
  type metadata accessor for _UIHostingView();
  v1 = v0;
  swift_getWitnessTable();
  ViewRendererHost.preferenceValue<A>(_:)();

  if (v8 == 1)
  {
    outlined destroy of PresentationOptionsPreference?(v7, &lazy cache variable for type metadata for _NavigationTransitionOutputs?, &type metadata for _NavigationTransitionOutputs);
  }

  else
  {
    outlined init with copy of _NavigationTransitionOutputs.Content(v7, v6);
    outlined destroy of _NavigationTransitionOutputs(v7);
    v7[0] = *v6;
    v7[1] = *&v6[16];
    v8 = *&v6[32];
    outlined init with copy of _NavigationTransitionOutputs.Content(v7, v6);
    if (*&v6[32])
    {
      v4[0] = *&v6[8];
      v4[1] = *&v6[24];
      v5 = *&v6[40];
      v2 = UIHostingController.findMatchedTransitionDestinationView<A>(id:namespace:)(v4, *v6, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
      outlined destroy of AnyHashable(v4);
      outlined destroy of _NavigationTransitionOutputs.Content(v7);
      return v2;
    }

    outlined destroy of _NavigationTransitionOutputs.Content(v7);
  }

  return 0;
}

uint64_t PresentationHostingController.__ivar_destroyer()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + direct field offset for PresentationHostingController.delegate);
  outlined destroy of weak FallbackResponderProvider?(v0 + direct field offset for PresentationHostingController.secondaryDismissDelegate);
  outlined destroy of PresentationOptionsPreference?(v0 + direct field offset for PresentationHostingController.lastPresentationOptions, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
  outlined destroy of PresentationOptionsPreference?(v0 + direct field offset for PresentationHostingController.lastPreferenceForSheetControllerConfiguration, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
}

uint64_t @objc PresentationHostingController.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of weak FallbackResponderProvider?(a1 + direct field offset for PresentationHostingController.delegate);
  outlined destroy of weak FallbackResponderProvider?(a1 + direct field offset for PresentationHostingController.secondaryDismissDelegate);
  outlined destroy of PresentationOptionsPreference?(a1 + direct field offset for PresentationHostingController.lastPresentationOptions, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
  outlined destroy of PresentationOptionsPreference?(a1 + direct field offset for PresentationHostingController.lastPreferenceForSheetControllerConfiguration, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
}

unint64_t lazy protocol witness table accessor for type PresentationHostingControllerPresenterKind and conformance PresentationHostingControllerPresenterKind()
{
  result = lazy protocol witness table cache variable for type PresentationHostingControllerPresenterKind and conformance PresentationHostingControllerPresenterKind;
  if (!lazy protocol witness table cache variable for type PresentationHostingControllerPresenterKind and conformance PresentationHostingControllerPresenterKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationHostingControllerPresenterKind and conformance PresentationHostingControllerPresenterKind);
  }

  return result;
}

void specialized PresentationDimmingBehavior.setLargestUndimmedDetentIdentifier(of:detents:)(void *a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v4 = [objc_opt_self() largeDetent];
    v5 = [v4 identifier];

    v6 = [objc_opt_self() appearanceWithSmallestDimmedDetentIdentifier_];
    [a1 _setStandardAppearance_];
  }

  else
  {

    [a1 setLargestUndimmedDetentIdentifier_];
  }
}

void *specialized PresentationHostingController.HostingView.init(rootView:)(uint64_t a1)
{
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x710) + 8) = 0;
  swift_unknownObjectWeakInit();

  return specialized _UIHostingView.init(rootView:)(a1);
}

void specialized PresentationHostingController.init(rootView:)()
{
  *(v0 + direct field offset for PresentationHostingController.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for PresentationHostingController.secondaryDismissDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for PresentationHostingController.bridgedPresentationWantsTransparentBackground) = 0;
  *(v0 + direct field offset for PresentationHostingController.presentingBridgeKind) = 3;
  *(v0 + direct field offset for PresentationHostingController.placement) = 7;
  *(v0 + direct field offset for PresentationHostingController.lastColumnCount) = 0;
  *(v0 + direct field offset for PresentationHostingController.lastInteractiveDismissDisabled) = 2;
  *(v0 + direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively) = 0;
  *(v0 + direct field offset for PresentationHostingController.wasPreempted) = 0;
  v1 = (v0 + direct field offset for PresentationHostingController.lastPresentationOptions);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  v1[6] = 0u;
  v1[7] = 0u;
  *(v1 + 122) = 0u;
  v2 = (v0 + direct field offset for PresentationHostingController.lastPreferenceForSheetControllerConfiguration);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  *(v2 + 122) = 0u;
  v3 = v0 + direct field offset for PresentationHostingController.observedSize;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(v0 + direct field offset for PresentationHostingController.isDelayingRemotePresentation) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized PresentationHostingController.init(coder:)()
{
  *(v0 + direct field offset for PresentationHostingController.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for PresentationHostingController.secondaryDismissDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for PresentationHostingController.bridgedPresentationWantsTransparentBackground) = 0;
  *(v0 + direct field offset for PresentationHostingController.presentingBridgeKind) = 3;
  *(v0 + direct field offset for PresentationHostingController.placement) = 7;
  *(v0 + direct field offset for PresentationHostingController.lastColumnCount) = 0;
  *(v0 + direct field offset for PresentationHostingController.lastInteractiveDismissDisabled) = 2;
  *(v0 + direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively) = 0;
  *(v0 + direct field offset for PresentationHostingController.wasPreempted) = 0;
  v1 = (v0 + direct field offset for PresentationHostingController.lastPresentationOptions);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  v1[6] = 0u;
  v1[7] = 0u;
  *(v1 + 122) = 0u;
  v2 = (v0 + direct field offset for PresentationHostingController.lastPreferenceForSheetControllerConfiguration);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  *(v2 + 122) = 0u;
  v3 = v0 + direct field offset for PresentationHostingController.observedSize;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(v0 + direct field offset for PresentationHostingController.isDelayingRemotePresentation) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for PresentationSizing?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined destroy of PresentationOptionsPreference?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for RemoteSheetContainerVCKey.Storage?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t assignWithCopy for PresentationState(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of PresentationState.Base(a1);
    v4 = *(a2 + 234);
    if (v4 <= 5)
    {
      if (*(a2 + 234) <= 2u)
      {
        if (!*(a2 + 234))
        {
          *a1 = *a2;
          v17 = *(a2 + 1);

          if (v17)
          {
            v18 = *(a2 + 2);
            *(a1 + 8) = v17;
            *(a1 + 16) = v18;
          }

          else
          {
            *(a1 + 8) = *(a2 + 8);
          }

          *(a1 + 24) = *(a2 + 3);
          v66 = *(a2 + 7);
          if (v66)
          {
            *(a1 + 56) = v66;
            *(a1 + 64) = *(a2 + 8);
            (**(v66 - 8))(a1 + 32, (a2 + 2));
          }

          else
          {
            v70 = a2[2];
            v71 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v70;
            *(a1 + 48) = v71;
          }

          *(a1 + 72) = *(a2 + 72);
          *(a1 + 73) = *(a2 + 73);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 105) = *(a2 + 105);
          v72 = *(a2 + 14);
          *(a1 + 112) = v72;
          *(a1 + 120) = *(a2 + 30);
          *(a1 + 234) = 0;
          goto LABEL_98;
        }

        if (v4 != 1)
        {
          v5 = *a2;
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 1);
          v6 = *(a2 + 2);
          v7 = v5;

          if (v6)
          {
            v8 = *(a2 + 3);
            *(a1 + 16) = v6;
            *(a1 + 24) = v8;
          }

          else
          {
            *(a1 + 16) = a2[1];
          }

          *(a1 + 32) = *(a2 + 4);
          v46 = *(a2 + 8);
          if (v46)
          {
            *(a1 + 64) = v46;
            *(a1 + 72) = *(a2 + 9);
            (**(v46 - 8))(a1 + 40, a2 + 40);
          }

          else
          {
            v50 = *(a2 + 40);
            v51 = *(a2 + 56);
            *(a1 + 72) = *(a2 + 9);
            *(a1 + 56) = v51;
            *(a1 + 40) = v50;
          }

          *(a1 + 80) = *(a2 + 80);
          *(a1 + 81) = *(a2 + 81);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 13);
          *(a1 + 112) = *(a2 + 112);
          *(a1 + 113) = *(a2 + 113);
          v52 = 2;
LABEL_103:
          *(a1 + 234) = v52;

          return a1;
        }

        *a1 = *a2;
        v27 = *(a2 + 1);

        if (v27)
        {
          v28 = *(a2 + 2);
          *(a1 + 8) = v27;
          *(a1 + 16) = v28;
        }

        else
        {
          *(a1 + 8) = *(a2 + 8);
        }

        *(a1 + 24) = *(a2 + 3);
        v80 = *(a2 + 7);
        if (v80)
        {
          *(a1 + 56) = v80;
          *(a1 + 64) = *(a2 + 8);
          (**(v80 - 8))(a1 + 32, (a2 + 2));
        }

        else
        {
          v83 = a2[2];
          v84 = a2[3];
          *(a1 + 64) = *(a2 + 8);
          *(a1 + 32) = v83;
          *(a1 + 48) = v84;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 73) = *(a2 + 73);
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 96) = *(a2 + 12);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 105) = *(a2 + 105);
        v72 = *(a2 + 14);
        *(a1 + 112) = v72;
        *(a1 + 120) = *(a2 + 30);
        v79 = 1;
LABEL_97:
        *(a1 + 234) = v79;
LABEL_98:

        v85 = v72;
        return a1;
      }

      switch(v4)
      {
        case 3u:
          v21 = *a2;
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 1);
          v22 = *(a2 + 2);
          v23 = v21;

          if (v22)
          {
            v24 = *(a2 + 3);
            *(a1 + 16) = v22;
            *(a1 + 24) = v24;
          }

          else
          {
            *(a1 + 16) = a2[1];
          }

          *(a1 + 32) = *(a2 + 4);
          v68 = *(a2 + 8);
          if (v68)
          {
            *(a1 + 64) = v68;
            *(a1 + 72) = *(a2 + 9);
            (**(v68 - 8))(a1 + 40, a2 + 40);
          }

          else
          {
            v75 = *(a2 + 40);
            v76 = *(a2 + 56);
            *(a1 + 72) = *(a2 + 9);
            *(a1 + 56) = v76;
            *(a1 + 40) = v75;
          }

          *(a1 + 80) = *(a2 + 80);
          *(a1 + 81) = *(a2 + 81);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 13);
          *(a1 + 112) = *(a2 + 112);
          *(a1 + 113) = *(a2 + 113);
          v52 = 3;
          goto LABEL_103;
        case 4u:
          *a1 = *a2;
          v31 = *(a2 + 1);

          if (v31)
          {
            v32 = *(a2 + 2);
            *(a1 + 8) = v31;
            *(a1 + 16) = v32;
          }

          else
          {
            *(a1 + 8) = *(a2 + 8);
          }

          *(a1 + 24) = *(a2 + 3);
          v81 = *(a2 + 7);
          if (v81)
          {
            *(a1 + 56) = v81;
            *(a1 + 64) = *(a2 + 8);
            (**(v81 - 8))(a1 + 32, (a2 + 2));
          }

          else
          {
            v86 = a2[2];
            v87 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v86;
            *(a1 + 48) = v87;
          }

          *(a1 + 72) = *(a2 + 72);
          *(a1 + 73) = *(a2 + 73);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 105) = *(a2 + 105);
          v52 = 4;
          goto LABEL_103;
        case 5u:
          v11 = *a2;
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 1);
          v12 = *(a2 + 2);
          v13 = v11;

          if (v12)
          {
            v14 = *(a2 + 3);
            *(a1 + 16) = v12;
            *(a1 + 24) = v14;
          }

          else
          {
            *(a1 + 16) = a2[1];
          }

          *(a1 + 32) = *(a2 + 4);
          v48 = *(a2 + 8);
          if (v48)
          {
            *(a1 + 64) = v48;
            *(a1 + 72) = *(a2 + 9);
            (**(v48 - 8))(a1 + 40, a2 + 40);
          }

          else
          {
            v59 = *(a2 + 40);
            v60 = *(a2 + 56);
            *(a1 + 72) = *(a2 + 9);
            *(a1 + 56) = v60;
            *(a1 + 40) = v59;
          }

          *(a1 + 80) = *(a2 + 80);
          *(a1 + 81) = *(a2 + 81);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 13);
          *(a1 + 112) = *(a2 + 112);
          *(a1 + 113) = *(a2 + 113);
          v52 = 5;
          goto LABEL_103;
      }

      goto LABEL_39;
    }

    if (*(a2 + 234) > 8u)
    {
      switch(v4)
      {
        case 9u:
          *a1 = *a2;
          v25 = *(a2 + 1);

          if (v25)
          {
            v26 = *(a2 + 2);
            *(a1 + 8) = v25;
            *(a1 + 16) = v26;
          }

          else
          {
            *(a1 + 8) = *(a2 + 8);
          }

          *(a1 + 24) = *(a2 + 3);
          v69 = *(a2 + 7);
          if (v69)
          {
            *(a1 + 56) = v69;
            *(a1 + 64) = *(a2 + 8);
            (**(v69 - 8))(a1 + 32, (a2 + 2));
          }

          else
          {
            v77 = a2[2];
            v78 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v77;
            *(a1 + 48) = v78;
          }

          *(a1 + 72) = *(a2 + 72);
          *(a1 + 73) = *(a2 + 73);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 105) = *(a2 + 105);
          v72 = *(a2 + 14);
          *(a1 + 112) = v72;
          *(a1 + 120) = *(a2 + 120);
          v79 = 9;
          goto LABEL_97;
        case 0xAu:
          *a1 = *a2;
          v33 = *(a2 + 1);

          if (v33)
          {
            v34 = *(a2 + 2);
            *(a1 + 8) = v33;
            *(a1 + 16) = v34;
          }

          else
          {
            *(a1 + 8) = *(a2 + 8);
          }

          *(a1 + 24) = *(a2 + 3);
          v82 = *(a2 + 7);
          if (v82)
          {
            *(a1 + 56) = v82;
            *(a1 + 64) = *(a2 + 8);
            (**(v82 - 8))(a1 + 32, (a2 + 2));
          }

          else
          {
            v88 = a2[2];
            v89 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v88;
            *(a1 + 48) = v89;
          }

          *(a1 + 72) = *(a2 + 72);
          *(a1 + 73) = *(a2 + 73);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 105) = *(a2 + 105);
          *(a1 + 106) = *(a2 + 106);
          v52 = 10;
          goto LABEL_103;
        case 0xBu:
          *a1 = *a2;
          v15 = *(a2 + 1);

          if (v15)
          {
            v16 = *(a2 + 2);
            *(a1 + 8) = v15;
            *(a1 + 16) = v16;
          }

          else
          {
            *(a1 + 8) = *(a2 + 8);
          }

          *(a1 + 24) = *(a2 + 3);
          v49 = *(a2 + 7);
          if (v49)
          {
            *(a1 + 56) = v49;
            *(a1 + 64) = *(a2 + 8);
            (**(v49 - 8))(a1 + 32, (a2 + 2));
          }

          else
          {
            v61 = a2[2];
            v62 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v61;
            *(a1 + 48) = v62;
          }

          *(a1 + 72) = *(a2 + 72);
          *(a1 + 73) = *(a2 + 73);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 105) = *(a2 + 105);
          v52 = 11;
          goto LABEL_103;
      }

      goto LABEL_39;
    }

    if (v4 == 6)
    {
      *a1 = *a2;
      v19 = *(a2 + 1);

      if (v19)
      {
        v20 = *(a2 + 2);
        *(a1 + 8) = v19;
        *(a1 + 16) = v20;
      }

      else
      {
        *(a1 + 8) = *(a2 + 8);
      }

      *(a1 + 24) = *(a2 + 3);
      v67 = *(a2 + 7);
      if (v67)
      {
        *(a1 + 56) = v67;
        *(a1 + 64) = *(a2 + 8);
        (**(v67 - 8))(a1 + 32, (a2 + 2));
      }

      else
      {
        v73 = a2[2];
        v74 = a2[3];
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 32) = v73;
        *(a1 + 48) = v74;
      }

      *(a1 + 72) = *(a2 + 72);
      *(a1 + 73) = *(a2 + 73);
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 96) = *(a2 + 12);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 105) = *(a2 + 105);
      v52 = 6;
      goto LABEL_103;
    }

    if (v4 != 7)
    {
      if (v4 == 8)
      {
        *a1 = *a2;
        v9 = *(a2 + 1);

        if (v9)
        {
          v10 = *(a2 + 2);
          *(a1 + 8) = v9;
          *(a1 + 16) = v10;
        }

        else
        {
          *(a1 + 8) = *(a2 + 8);
        }

        *(a1 + 24) = *(a2 + 3);
        v47 = *(a2 + 7);
        if (v47)
        {
          *(a1 + 56) = v47;
          *(a1 + 64) = *(a2 + 8);
          (**(v47 - 8))(a1 + 32, (a2 + 2));
        }

        else
        {
          v53 = a2[2];
          v54 = a2[3];
          *(a1 + 64) = *(a2 + 8);
          *(a1 + 32) = v53;
          *(a1 + 48) = v54;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 73) = *(a2 + 73);
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 96) = *(a2 + 12);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 105) = *(a2 + 105);
        v55 = *(a2 + 14);
        *(a1 + 112) = v55;
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 128) = *(a2 + 16);
        v56 = *(a2 + 17);

        v57 = v55;

        if (v56)
        {
          v58 = *(a2 + 18);
          *(a1 + 136) = v56;
          *(a1 + 144) = v58;
        }

        else
        {
          *(a1 + 136) = *(a2 + 136);
        }

        *(a1 + 152) = *(a2 + 19);
        v63 = *(a2 + 23);
        if (v63)
        {
          *(a1 + 184) = v63;
          *(a1 + 192) = *(a2 + 24);
          (**(v63 - 8))(a1 + 160, (a2 + 10));
        }

        else
        {
          v64 = a2[10];
          v65 = a2[11];
          *(a1 + 192) = *(a2 + 24);
          *(a1 + 160) = v64;
          *(a1 + 176) = v65;
        }

        *(a1 + 200) = *(a2 + 200);
        *(a1 + 201) = *(a2 + 201);
        *(a1 + 208) = *(a2 + 26);
        *(a1 + 216) = *(a2 + 27);
        *(a1 + 224) = *(a2 + 28);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 233) = *(a2 + 233);
        v52 = 8;
        goto LABEL_103;
      }

LABEL_39:
      v35 = *a2;
      v36 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v36;
      *a1 = v35;
      v37 = a2[3];
      v38 = a2[4];
      v39 = a2[6];
      *(a1 + 80) = a2[5];
      *(a1 + 96) = v39;
      *(a1 + 48) = v37;
      *(a1 + 64) = v38;
      v40 = a2[7];
      v41 = a2[8];
      v42 = a2[10];
      *(a1 + 144) = a2[9];
      *(a1 + 160) = v42;
      *(a1 + 112) = v40;
      *(a1 + 128) = v41;
      v43 = a2[11];
      v44 = a2[12];
      v45 = a2[13];
      *(a1 + 219) = *(a2 + 219);
      *(a1 + 192) = v44;
      *(a1 + 208) = v45;
      *(a1 + 176) = v43;
      return a1;
    }

    v29 = *a2;
    *a1 = *a2;
    *(a1 + 234) = 7;
    v30 = v29;
  }

  return a1;
}

__n128 __swift_memcpy235_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 219) = *(a2 + 219);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t assignWithTake for PresentationState(uint64_t result, _OWORD *a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of PresentationState.Base(result);
    v4 = a2[13];
    v3[12] = a2[12];
    v3[13] = v4;
    *(v3 + 219) = *(a2 + 219);
    v5 = a2[9];
    v3[8] = a2[8];
    v3[9] = v5;
    v6 = a2[11];
    v3[10] = a2[10];
    v3[11] = v6;
    v7 = a2[5];
    v3[4] = a2[4];
    v3[5] = v7;
    v8 = a2[7];
    v3[6] = a2[6];
    v3[7] = v8;
    v9 = a2[1];
    *v3 = *a2;
    v3[1] = v9;
    v10 = a2[3];
    v3[2] = a2[2];
    v3[3] = v10;
    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 235))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 234);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PresentationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 234) = 0;
    *(result + 232) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 235) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 235) = 0;
    }

    if (a2)
    {
      *(result + 234) = -a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for PresentationState.Base(uint64_t a1, __int128 *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *(a1 + 234);
  if (v4 >= 0xC)
  {
    v4 = *a1 + 12;
  }

  if (v4 > 5)
  {
    if (v4 > 8)
    {
      if (v4 == 9)
      {
LABEL_35:

        if (*(a1 + 8))
        {
        }

        if (*(a1 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 32);
        }

        v5 = *(a1 + 112);
        goto LABEL_41;
      }

      if (v4 != 10 && v4 != 11)
      {
        goto LABEL_42;
      }
    }

    else if (v4 != 6)
    {
      if (v4 != 7)
      {

        if (*(a1 + 8))
        {
        }

        if (*(a1 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 32);
        }

        if (*(a1 + 136))
        {
        }

        if (*(a1 + 184))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 160);
        }

        goto LABEL_34;
      }

      v5 = *a1;
LABEL_41:

      goto LABEL_42;
    }

LABEL_30:

    if (*(a1 + 8))
    {
    }

    if (*(a1 + 56))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 32);
    }

    goto LABEL_34;
  }

  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 != 2)
      {
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if (v4 == 4)
  {
    goto LABEL_30;
  }

LABEL_22:

  if (*(a1 + 16))
  {
  }

  if (*(a1 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 40);
  }

LABEL_34:

LABEL_42:
  v6 = *(a2 + 234);
  if (v6 >= 0xC)
  {
    v6 = *a2 + 12;
  }

  if (v6 <= 5)
  {
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        v23 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        v24 = *(a2 + 2);
        v25 = v23;

        if (v24)
        {
          v26 = *(a2 + 3);
          *(a1 + 16) = v24;
          *(a1 + 24) = v26;
        }

        else
        {
          *(a1 + 16) = a2[1];
        }

        *(a1 + 32) = *(a2 + 4);
        v70 = *(a2 + 8);
        if (v70)
        {
          *(a1 + 64) = v70;
          *(a1 + 72) = *(a2 + 9);
          (**(v70 - 8))(a1 + 40, a2 + 40);
        }

        else
        {
          v77 = *(a2 + 40);
          v78 = *(a2 + 56);
          *(a1 + 72) = *(a2 + 9);
          *(a1 + 56) = v78;
          *(a1 + 40) = v77;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 81) = *(a2 + 81);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 96) = *(a2 + 12);
        *(a1 + 104) = *(a2 + 13);
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 113) = *(a2 + 113);
        v54 = 3;
      }

      else if (v6 == 4)
      {
        *a1 = *a2;
        v33 = *(a2 + 1);

        if (v33)
        {
          v34 = *(a2 + 2);
          *(a1 + 8) = v33;
          *(a1 + 16) = v34;
        }

        else
        {
          *(a1 + 8) = *(a2 + 8);
        }

        *(a1 + 24) = *(a2 + 3);
        v83 = *(a2 + 7);
        if (v83)
        {
          *(a1 + 56) = v83;
          *(a1 + 64) = *(a2 + 8);
          (**(v83 - 8))(a1 + 32, (a2 + 2));
        }

        else
        {
          v88 = a2[2];
          v89 = a2[3];
          *(a1 + 64) = *(a2 + 8);
          *(a1 + 32) = v88;
          *(a1 + 48) = v89;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 73) = *(a2 + 73);
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 96) = *(a2 + 12);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 105) = *(a2 + 105);
        v54 = 4;
      }

      else
      {
        v13 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        v14 = *(a2 + 2);
        v15 = v13;

        if (v14)
        {
          v16 = *(a2 + 3);
          *(a1 + 16) = v14;
          *(a1 + 24) = v16;
        }

        else
        {
          *(a1 + 16) = a2[1];
        }

        *(a1 + 32) = *(a2 + 4);
        v50 = *(a2 + 8);
        if (v50)
        {
          *(a1 + 64) = v50;
          *(a1 + 72) = *(a2 + 9);
          (**(v50 - 8))(a1 + 40, a2 + 40);
        }

        else
        {
          v61 = *(a2 + 40);
          v62 = *(a2 + 56);
          *(a1 + 72) = *(a2 + 9);
          *(a1 + 56) = v62;
          *(a1 + 40) = v61;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 81) = *(a2 + 81);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 96) = *(a2 + 12);
        *(a1 + 104) = *(a2 + 13);
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 113) = *(a2 + 113);
        v54 = 5;
      }

      goto LABEL_144;
    }

    if (!v6)
    {
      *a1 = *a2;
      v19 = *(a2 + 1);

      if (v19)
      {
        v20 = *(a2 + 2);
        *(a1 + 8) = v19;
        *(a1 + 16) = v20;
      }

      else
      {
        *(a1 + 8) = *(a2 + 8);
      }

      *(a1 + 24) = *(a2 + 3);
      v68 = *(a2 + 7);
      if (v68)
      {
        *(a1 + 56) = v68;
        *(a1 + 64) = *(a2 + 8);
        (**(v68 - 8))(a1 + 32, (a2 + 2));
      }

      else
      {
        v72 = a2[2];
        v73 = a2[3];
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 32) = v72;
        *(a1 + 48) = v73;
      }

      *(a1 + 72) = *(a2 + 72);
      *(a1 + 73) = *(a2 + 73);
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 96) = *(a2 + 12);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 105) = *(a2 + 105);
      v74 = *(a2 + 14);
      *(a1 + 112) = v74;
      *(a1 + 120) = *(a2 + 30);
      *(a1 + 234) = 0;
      goto LABEL_139;
    }

    if (v6 != 1)
    {
      if (v6 == 2)
      {
        v7 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        v8 = *(a2 + 2);
        v9 = v7;

        if (v8)
        {
          v10 = *(a2 + 3);
          *(a1 + 16) = v8;
          *(a1 + 24) = v10;
        }

        else
        {
          *(a1 + 16) = a2[1];
        }

        *(a1 + 32) = *(a2 + 4);
        v48 = *(a2 + 8);
        if (v48)
        {
          *(a1 + 64) = v48;
          *(a1 + 72) = *(a2 + 9);
          (**(v48 - 8))(a1 + 40, a2 + 40);
        }

        else
        {
          v52 = *(a2 + 40);
          v53 = *(a2 + 56);
          *(a1 + 72) = *(a2 + 9);
          *(a1 + 56) = v53;
          *(a1 + 40) = v52;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 81) = *(a2 + 81);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 96) = *(a2 + 12);
        *(a1 + 104) = *(a2 + 13);
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 113) = *(a2 + 113);
        v54 = 2;
LABEL_144:
        *(a1 + 234) = v54;

        return a1;
      }

      goto LABEL_80;
    }

    *a1 = *a2;
    v29 = *(a2 + 1);

    if (v29)
    {
      v30 = *(a2 + 2);
      *(a1 + 8) = v29;
      *(a1 + 16) = v30;
    }

    else
    {
      *(a1 + 8) = *(a2 + 8);
    }

    *(a1 + 24) = *(a2 + 3);
    v82 = *(a2 + 7);
    if (v82)
    {
      *(a1 + 56) = v82;
      *(a1 + 64) = *(a2 + 8);
      (**(v82 - 8))(a1 + 32, (a2 + 2));
    }

    else
    {
      v85 = a2[2];
      v86 = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 32) = v85;
      *(a1 + 48) = v86;
    }

    *(a1 + 72) = *(a2 + 72);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 105) = *(a2 + 105);
    v74 = *(a2 + 14);
    *(a1 + 112) = v74;
    *(a1 + 120) = *(a2 + 30);
    v81 = 1;
LABEL_138:
    *(a1 + 234) = v81;
LABEL_139:

    v87 = v74;
    return a1;
  }

  if (v6 > 8)
  {
    if (v6 != 9)
    {
      if (v6 == 10)
      {
        *a1 = *a2;
        v35 = *(a2 + 1);

        if (v35)
        {
          v36 = *(a2 + 2);
          *(a1 + 8) = v35;
          *(a1 + 16) = v36;
        }

        else
        {
          *(a1 + 8) = *(a2 + 8);
        }

        *(a1 + 24) = *(a2 + 3);
        v84 = *(a2 + 7);
        if (v84)
        {
          *(a1 + 56) = v84;
          *(a1 + 64) = *(a2 + 8);
          (**(v84 - 8))(a1 + 32, (a2 + 2));
        }

        else
        {
          v90 = a2[2];
          v91 = a2[3];
          *(a1 + 64) = *(a2 + 8);
          *(a1 + 32) = v90;
          *(a1 + 48) = v91;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 73) = *(a2 + 73);
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 96) = *(a2 + 12);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 105) = *(a2 + 105);
        *(a1 + 106) = *(a2 + 106);
        v54 = 10;
        goto LABEL_144;
      }

      if (v6 == 11)
      {
        *a1 = *a2;
        v17 = *(a2 + 1);

        if (v17)
        {
          v18 = *(a2 + 2);
          *(a1 + 8) = v17;
          *(a1 + 16) = v18;
        }

        else
        {
          *(a1 + 8) = *(a2 + 8);
        }

        *(a1 + 24) = *(a2 + 3);
        v51 = *(a2 + 7);
        if (v51)
        {
          *(a1 + 56) = v51;
          *(a1 + 64) = *(a2 + 8);
          (**(v51 - 8))(a1 + 32, (a2 + 2));
        }

        else
        {
          v63 = a2[2];
          v64 = a2[3];
          *(a1 + 64) = *(a2 + 8);
          *(a1 + 32) = v63;
          *(a1 + 48) = v64;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 73) = *(a2 + 73);
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 96) = *(a2 + 12);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 105) = *(a2 + 105);
        v54 = 11;
        goto LABEL_144;
      }

LABEL_80:
      v37 = *a2;
      v38 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v38;
      *a1 = v37;
      v39 = a2[3];
      v40 = a2[4];
      v41 = a2[6];
      *(a1 + 80) = a2[5];
      *(a1 + 96) = v41;
      *(a1 + 48) = v39;
      *(a1 + 64) = v40;
      v42 = a2[7];
      v43 = a2[8];
      v44 = a2[10];
      *(a1 + 144) = a2[9];
      *(a1 + 160) = v44;
      *(a1 + 112) = v42;
      *(a1 + 128) = v43;
      v45 = a2[11];
      v46 = a2[12];
      v47 = a2[13];
      *(a1 + 219) = *(a2 + 219);
      *(a1 + 192) = v46;
      *(a1 + 208) = v47;
      *(a1 + 176) = v45;
      return a1;
    }

    *a1 = *a2;
    v27 = *(a2 + 1);

    if (v27)
    {
      v28 = *(a2 + 2);
      *(a1 + 8) = v27;
      *(a1 + 16) = v28;
    }

    else
    {
      *(a1 + 8) = *(a2 + 8);
    }

    *(a1 + 24) = *(a2 + 3);
    v71 = *(a2 + 7);
    if (v71)
    {
      *(a1 + 56) = v71;
      *(a1 + 64) = *(a2 + 8);
      (**(v71 - 8))(a1 + 32, (a2 + 2));
    }

    else
    {
      v79 = a2[2];
      v80 = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 32) = v79;
      *(a1 + 48) = v80;
    }

    *(a1 + 72) = *(a2 + 72);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 105) = *(a2 + 105);
    v74 = *(a2 + 14);
    *(a1 + 112) = v74;
    *(a1 + 120) = *(a2 + 120);
    v81 = 9;
    goto LABEL_138;
  }

  if (v6 == 6)
  {
    *a1 = *a2;
    v21 = *(a2 + 1);

    if (v21)
    {
      v22 = *(a2 + 2);
      *(a1 + 8) = v21;
      *(a1 + 16) = v22;
    }

    else
    {
      *(a1 + 8) = *(a2 + 8);
    }

    *(a1 + 24) = *(a2 + 3);
    v69 = *(a2 + 7);
    if (v69)
    {
      *(a1 + 56) = v69;
      *(a1 + 64) = *(a2 + 8);
      (**(v69 - 8))(a1 + 32, (a2 + 2));
    }

    else
    {
      v75 = a2[2];
      v76 = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 32) = v75;
      *(a1 + 48) = v76;
    }

    *(a1 + 72) = *(a2 + 72);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 105) = *(a2 + 105);
    v54 = 6;
    goto LABEL_144;
  }

  if (v6 != 7)
  {
    *a1 = *a2;
    v11 = *(a2 + 1);

    if (v11)
    {
      v12 = *(a2 + 2);
      *(a1 + 8) = v11;
      *(a1 + 16) = v12;
    }

    else
    {
      *(a1 + 8) = *(a2 + 8);
    }

    *(a1 + 24) = *(a2 + 3);
    v49 = *(a2 + 7);
    if (v49)
    {
      *(a1 + 56) = v49;
      *(a1 + 64) = *(a2 + 8);
      (**(v49 - 8))(a1 + 32, (a2 + 2));
    }

    else
    {
      v55 = a2[2];
      v56 = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 32) = v55;
      *(a1 + 48) = v56;
    }

    *(a1 + 72) = *(a2 + 72);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 105) = *(a2 + 105);
    v57 = *(a2 + 14);
    *(a1 + 112) = v57;
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 16);
    v58 = *(a2 + 17);

    v59 = v57;

    if (v58)
    {
      v60 = *(a2 + 18);
      *(a1 + 136) = v58;
      *(a1 + 144) = v60;
    }

    else
    {
      *(a1 + 136) = *(a2 + 136);
    }

    *(a1 + 152) = *(a2 + 19);
    v65 = *(a2 + 23);
    if (v65)
    {
      *(a1 + 184) = v65;
      *(a1 + 192) = *(a2 + 24);
      (**(v65 - 8))(a1 + 160, (a2 + 10));
    }

    else
    {
      v66 = a2[10];
      v67 = a2[11];
      *(a1 + 192) = *(a2 + 24);
      *(a1 + 160) = v66;
      *(a1 + 176) = v67;
    }

    *(a1 + 200) = *(a2 + 200);
    *(a1 + 201) = *(a2 + 201);
    *(a1 + 208) = *(a2 + 26);
    *(a1 + 216) = *(a2 + 27);
    *(a1 + 224) = *(a2 + 28);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 233) = *(a2 + 233);
    v54 = 8;
    goto LABEL_144;
  }

  v31 = *a2;
  *a1 = *a2;
  *(a1 + 234) = 7;
  v32 = v31;
  return a1;
}

uint64_t getEnumTagSinglePayload for PresentationState.Base(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 235))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 234);
  if (v3 >= 0xD)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PresentationState.Base(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 219) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 235) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 235) = 0;
    }

    if (a2)
    {
      *(result + 234) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for PresentationState.Base(uint64_t a1)
{
  result = *(a1 + 234);
  if (result >= 0xC)
  {
    return (*a1 + 12);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PresentationState.Base(uint64_t result, unsigned int a2)
{
  if (a2 > 0xB)
  {
    *(result + 218) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 12;
    LOBYTE(a2) = 12;
  }

  *(result + 234) = a2;
  return result;
}

Swift::Void __swiftcall PresentationState.dismiss(willPresentAgain:hasNoModifier:)(Swift::Bool willPresentAgain, Swift::Bool hasNoModifier)
{
  outlined init with copy of PresentationState.Base(v2, v11);
  if (v15 > 7u)
  {
    if (v15 == 8)
    {

      outlined destroy of SheetPreference(&v14);
    }

    else
    {
      if (v15 != 9)
      {
LABEL_12:
        outlined destroy of PresentationState.Base(v11);
        return;
      }
    }

LABEL_14:
    outlined destroy of SheetPreference(v11);
    return;
  }

  if (v15 >= 2u)
  {
    if (v15 != 4)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v5 = v13;
  v20 = v11[4];
  v21[0] = v12[0];
  *(v21 + 10) = *(v12 + 10);
  v16 = v11[0];
  v17 = v11[1];
  v18 = v11[2];
  v19 = v11[3];
  if (hasNoModifier && (type metadata accessor for _SemanticFeature<Semantics_v6>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]), lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>(), (static SemanticFeature.isEnabled.getter() & 1) != 0))
  {

    v6 = 4;
    v7 = v11;
  }

  else
  {
    v7 = (v11 + 8);
    *&v11[0] = v5;
    if (willPresentAgain)
    {
      v6 = 5;
    }

    else
    {
      v6 = 2;
    }
  }

  v8 = v21[0];
  v7[4] = v20;
  v7[5] = v8;
  *(v7 + 90) = *(v21 + 10);
  v9 = v17;
  *v7 = v16;
  v7[1] = v9;
  v10 = v19;
  v7[2] = v18;
  v7[3] = v10;
  v15 = v6;
  PresentationState.base.willset(v11);
  outlined assign with take of PresentationState.Base(v11, v2);
}

uint64_t PresentationState.isDismissingFromSheetBridge.getter()
{
  outlined init with copy of PresentationState.Base(v0, &v3);
  result = 0;
  switch(v6[106])
  {
    case 2:
    case 3:
    case 5:

      v2 = &v4;
      goto LABEL_8;
    case 4:
      goto LABEL_7;
    case 6:
    case 0xA:
      goto LABEL_3;
    case 7:
    case 0xB:
      outlined destroy of PresentationState.Base(&v3);
      return 0;
    case 8:

      outlined destroy of SheetPreference(v6);
LABEL_7:
      v2 = &v3;
LABEL_8:
      outlined destroy of SheetPreference(v2);
      result = 1;
      break;
    case 0xC:
      return result;
    default:

LABEL_3:
      outlined destroy of SheetPreference(&v3);
      result = 0;
      break;
  }

  return result;
}

uint64_t PresentationState.isDismissalPreemptable.getter()
{
  outlined init with copy of PresentationState.Base(v0, &v3);
  result = 0;
  switch(v6[106])
  {
    case 2:
    case 3:

      outlined destroy of SheetPreference(v4);
      return 1;
    case 4:
    case 6:
    case 0xA:
      goto LABEL_7;
    case 5:

      v2 = v4;
      goto LABEL_8;
    case 7:
    case 0xB:
      outlined destroy of PresentationState.Base(&v3);
      return 0;
    case 8:

      outlined destroy of SheetPreference(v6);
      goto LABEL_7;
    case 0xC:
      return result;
    default:

LABEL_7:
      v2 = &v3;
LABEL_8:
      outlined destroy of SheetPreference(v2);
      return 0;
  }
}

uint64_t PresentationState.enqueueDelayedPresentation_IsDismissing(_:animated:)(uint64_t a1, char a2)
{
  PresentationState.Base.lastPresentation.getter(v6);
  if (!*&v6[0])
  {
    return _ss11AnyHashableVSgWOhTm_3(v6, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
  }

  v11[4] = v6[4];
  v12[0] = v7[0];
  *(v12 + 10) = *(v7 + 10);
  v11[0] = v6[0];
  v11[1] = v6[1];
  v11[2] = v6[2];
  v11[3] = v6[3];
  outlined init with copy of SheetPreference(a1, v6);
  v8 = PresentationState.Base.presentedVC.getter();
  v9 = a2 & 1;
  outlined init with copy of SheetPreference(v11, v10);
  v10[106] = 8;
  PresentationState.base.willset(v6);
  outlined destroy of SheetPreference(v11);
  return outlined assign with take of PresentationState.Base(v6, v2);
}

void PresentationState.delayedPresentation.getter(uint64_t a1@<X8>)
{
  outlined init with copy of PresentationState.Base(v1, &v12);
  switch(v22)
  {
    case 10:
      v8 = v18;
      goto LABEL_7;
    case 9:

      v8 = v20;
LABEL_7:
      v9 = *v17;
      *(a1 + 64) = v16;
      *(a1 + 80) = v9;
      *(a1 + 90) = *&v17[10];
      v10 = v13;
      *a1 = v12;
      *(a1 + 16) = v10;
      v11 = v15;
      *(a1 + 32) = v14;
      *(a1 + 48) = v11;
      *(a1 + 112) = 0;
      *(a1 + 120) = v8;
      return;
    case 8:
      v3 = v19;
      v4 = v20;
      v5 = *v17;
      *(a1 + 64) = v16;
      *(a1 + 80) = v5;
      *(a1 + 90) = *&v17[10];
      v6 = v13;
      *a1 = v12;
      *(a1 + 16) = v6;
      v7 = v15;
      *(a1 + 32) = v14;
      *(a1 + 48) = v7;
      *(a1 + 112) = v3;
      *(a1 + 120) = v4;
      outlined destroy of SheetPreference(&v21);
      break;
    default:
      *(a1 + 105) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      outlined destroy of PresentationState.Base(&v12);
      break;
  }
}

Swift::Void __swiftcall PresentationState.presentationDidBeginInteractiveDismissal()()
{
  outlined init with copy of PresentationState.Base(v0, v5);
  if (v7 > 6u)
  {
    if (v7 > 9u)
    {
      if (v7 == 10)
      {
        goto LABEL_15;
      }

      if (v7 != 11)
      {
        return;
      }
    }

    else if (v7 != 7)
    {
      if (v7 == 8)
      {

        outlined destroy of SheetPreference(&v6);
      }

      else
      {
      }

      goto LABEL_15;
    }

    outlined destroy of PresentationState.Base(v5);
    return;
  }

  if (v7 <= 3u)
  {
    if (v7 < 2u)
    {
      v1 = *&v5[64];
      v12 = *&v5[64];
      v13[0] = *&v5[80];
      *(v13 + 10) = *&v5[90];
      v2 = *v5;
      v8 = *v5;
      v9 = *&v5[16];
      v3 = *&v5[32];
      v10 = *&v5[32];
      v11 = *&v5[48];
      *v5 = *&v5[112];
      *&v5[56] = *&v5[48];
      *&v5[72] = v1;
      *&v5[88] = v13[0];
      *&v5[98] = *(v13 + 10);
      *&v5[8] = v2;
      *&v5[24] = v9;
      *&v5[40] = v3;
      v7 = 3;
      PresentationState.base.willset(v5);
      outlined assign with take of PresentationState.Base(v5, v0);
      return;
    }

    goto LABEL_10;
  }

  if (v7 != 5)
  {
LABEL_15:
    v4 = v5;
    goto LABEL_16;
  }

LABEL_10:

  v4 = &v5[8];
LABEL_16:
  outlined destroy of SheetPreference(v4);
}

Swift::Void __swiftcall PresentationState.presentationDidDisappear()()
{
  outlined init with copy of PresentationState.Base(v0, &v10);
  switch(v18)
  {
    case 2:
    case 3:

      v1 = &v10 + 8;
      goto LABEL_6;
    case 4:
    case 6:
    case 10:
      goto LABEL_3;
    case 5:
      *&v3 = v10;
      v9 = 7;
      PresentationState.base.willset(&v3);
      outlined assign with take of PresentationState.Base(&v3, v0);
      outlined destroy of SheetPreference(&v10 + 8);
      return;
    case 7:
    case 11:
      outlined destroy of PresentationState.Base(&v10);
      goto LABEL_7;
    case 8:

      v7 = v14;
      v8[0] = v15[0];
      *(v8 + 10) = *(v15 + 10);
      v3 = v10;
      v4 = v11;
      v5 = v12;
      v6 = v13;
      outlined destroy of SheetPreference(v17);
      goto LABEL_12;
    case 9:

      v7 = v14;
      v8[0] = v15[0];
      *(v8 + 10) = *(v15 + 10);
      v3 = v10;
      v4 = v11;
      v5 = v12;
      v6 = v13;
LABEL_12:
      v14 = v7;
      v15[0] = v8[0];
      *(v15 + 10) = *(v8 + 10);
      v10 = v3;
      v11 = v4;
      v12 = v5;
      v13 = v6;
      v2 = 11;
      goto LABEL_8;
    case 12:
      goto LABEL_7;
    default:

LABEL_3:
      v1 = &v10;
LABEL_6:
      outlined destroy of SheetPreference(v1);
LABEL_7:
      memset(v17, 0, sizeof(v17));
      v16 = 0u;
      v14 = 0u;
      memset(v15, 0, sizeof(v15));
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v2 = 12;
LABEL_8:
      v18 = v2;
      PresentationState.base.willset(&v10);
      outlined assign with take of PresentationState.Base(&v10, v0);
      return;
  }
}

Swift::Void __swiftcall PresentationState.dismissInspector()()
{
  outlined init with copy of PresentationState.Base(v0, v1);
  if (v4 >= 2u)
  {
    if (v4 == 6)
    {
      outlined destroy of SheetPreference(v1);
    }

    else
    {
      outlined destroy of PresentationState.Base(v1);
    }
  }

  else
  {

    *(v10 + 10) = *&v2[10];
    v9 = v1[4];
    v10[0] = *v2;
    v7 = v1[2];
    v8 = v1[3];
    v5 = v1[0];
    v6 = v1[1];
    *&v2[10] = *(v10 + 10);
    v4 = 6;
    PresentationState.base.willset(v1);
    outlined assign with take of PresentationState.Base(v1, v0);
  }
}

uint64_t PresentationState.Base.description.getter()
{
  outlined init with copy of PresentationState.Base(v0, v83);
  v1 = 0xEE006E6F69746174;
  v2 = 0x6E65736572506F6ELL;
  switch(v91)
  {
    case 1:
      v3 = *&v83[112];
      v4 = v84;
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      *&v56 = 0x65746E6573657270;
      *(&v56 + 1) = 0xEA00000000002864;
      outlined init with copy of SheetPreference(&v77, v75);
      outlined init with copy of SheetPreference?(v75, &v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v63)
      {
        v73 = v67;
        v74[0] = v68[0];
        *(v74 + 10) = *(v68 + 10);
        v69 = v63;
        v70 = v64;
        v71 = v65;
        v72 = v66;
        *&v63 = *(&v64 + 1);
        v25 = String.init<A>(describing:)();
        v27 = v26;
        outlined destroy of SheetPreference(&v69);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        v25 = 7104878;
        _ss11AnyHashableVSgWOhTm_3(&v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v27 = 0xE300000000000000;
      }

      MEMORY[0x18D00C9B0](v25, v27);

      MEMORY[0x18D00C9B0](0x6E6573657270202CLL, 0xEF203A4356646574);
      *&v75[0] = v3;
      v49 = String.init<A>(describing:)();
      MEMORY[0x18D00C9B0](v49);

      MEMORY[0x18D00C9B0](0x203A646565732029, 0xE800000000000000);
      if (v4 == -1)
      {
        goto LABEL_58;
      }

      if (v4)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 2:
      v12 = 7104878;
      v13 = *v83;
      v81 = *&v83[72];
      v82[0] = *&v83[88];
      *(v82 + 10) = *&v83[98];
      v77 = *&v83[8];
      v78 = *&v83[24];
      v79 = *&v83[40];
      v80 = *&v83[56];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      *&v56 = 0xD00000000000001BLL;
      *(&v56 + 1) = 0x800000018CD56B90;
      if (!v13)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    case 3:
      v12 = 7104878;
      v13 = *v83;
      v81 = *&v83[72];
      v82[0] = *&v83[88];
      *(v82 + 10) = *&v83[98];
      v77 = *&v83[8];
      v78 = *&v83[24];
      v79 = *&v83[40];
      v80 = *&v83[56];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      *&v56 = 0xD000000000000018;
      *(&v56 + 1) = 0x800000018CD56B70;
      if (v13)
      {
LABEL_7:
        *&v75[0] = v13;
        v14 = String.init<A>(describing:)();
        v16 = v15;
      }

      else
      {
LABEL_14:
        v16 = 0xE300000000000000;
        v14 = 7104878;
      }

      MEMORY[0x18D00C9B0](v14, v16);

      MEMORY[0x18D00C9B0](0x203A7473616C202CLL, 0xE800000000000000);
      outlined init with copy of SheetPreference(&v77, v75);
      outlined init with copy of SheetPreference?(v75, &v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (!v63)
      {
        goto LABEL_60;
      }

      goto LABEL_24;
    case 4:
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v17 = 0x800000018CD56B50;
      v18 = 0xD00000000000001CLL;
      goto LABEL_19;
    case 5:
      v13 = *v83;
      v81 = *&v83[72];
      v82[0] = *&v83[88];
      *(v82 + 10) = *&v83[98];
      v77 = *&v83[8];
      v78 = *&v83[24];
      v79 = *&v83[40];
      v80 = *&v83[56];
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      *&v56 = 0xD000000000000019;
      *(&v56 + 1) = 0x800000018CD56B30;
      *&v75[0] = v13;
      v31 = String.init<A>(describing:)();
      MEMORY[0x18D00C9B0](v31);

      MEMORY[0x18D00C9B0](0x203A7473616C202CLL, 0xE800000000000000);
      outlined init with copy of SheetPreference(&v77, v75);
      outlined init with copy of SheetPreference?(v75, &v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v63)
      {
LABEL_24:
        v73 = v67;
        v74[0] = v68[0];
        *(v74 + 10) = *(v68 + 10);
        v69 = v63;
        v70 = v64;
        v71 = v65;
        v72 = v66;
        *&v63 = *(&v64 + 1);
        v12 = String.init<A>(describing:)();
        v33 = v32;
        outlined destroy of SheetPreference(&v69);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        v12 = 7104878;
LABEL_60:
        _ss11AnyHashableVSgWOhTm_3(&v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v33 = 0xE300000000000000;
      }

      MEMORY[0x18D00C9B0](v12, v33);

      MEMORY[0x18D00C9B0](41, 0xE100000000000000);

      goto LABEL_71;
    case 6:
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v17 = 0x800000018CD56A10;
      v18 = 0xD000000000000011;
      goto LABEL_19;
    case 7:
      v38 = *v83;
      _StringGuts.grow(_:)(25);

      *&v77 = 0xD000000000000016;
      *(&v77 + 1) = 0x800000018CD56B10;
      *&v75[0] = v38;
      v39 = String.init<A>(describing:)();
      MEMORY[0x18D00C9B0](v39);

      MEMORY[0x18D00C9B0](41, 0xE100000000000000);

      v1 = 0x800000018CD56B10;
      v2 = 0xD000000000000016;
      goto LABEL_73;
    case 8:
      v19 = 7104878;
      v20 = *&v83[112];
      v21 = v84;
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      v75[4] = v89;
      v76[0] = *v90;
      *(v76 + 10) = *&v90[10];
      v75[0] = v85;
      v75[1] = v86;
      v75[2] = v87;
      v75[3] = v88;
      *&v69 = 0;
      *(&v69 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(80);
      v62 = v69;
      MEMORY[0x18D00C9B0](0xD000000000000024, 0x800000018CD56AE0);
      outlined init with copy of SheetPreference(&v77, &v69);
      outlined init with copy of SheetPreference?(&v69, &v56, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v56)
      {
        v67 = v60;
        v68[0] = v61[0];
        *(v68 + 10) = *(v61 + 10);
        v63 = v56;
        v64 = v57;
        v65 = v58;
        v66 = v59;
        *&v56 = *(&v57 + 1);
        v22 = String.init<A>(describing:)();
        v24 = v23;
        outlined destroy of SheetPreference(&v63);
        _ss11AnyHashableVSgWOhTm_3(&v69, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        _ss11AnyHashableVSgWOhTm_3(&v56, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(&v69, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      MEMORY[0x18D00C9B0](v22, v24);

      MEMORY[0x18D00C9B0](0x6E6573657270202CLL, 0xEF203A4356646574);
      if (v20)
      {
        *&v69 = v20;
        v42 = String.init<A>(describing:)();
        v44 = v43;
      }

      else
      {
        v44 = 0xE300000000000000;
        v42 = 7104878;
      }

      MEMORY[0x18D00C9B0](v42, v44);

      MEMORY[0x18D00C9B0](0x74616D696E61202CLL, 0xEC000000203A6465);
      if (v21)
      {
        v45 = 1702195828;
      }

      else
      {
        v45 = 0x65736C6166;
      }

      if (v21)
      {
        v46 = 0xE400000000000000;
      }

      else
      {
        v46 = 0xE500000000000000;
      }

      MEMORY[0x18D00C9B0](v45, v46);

      MEMORY[0x18D00C9B0](0x203A7473616C202CLL, 0xE800000000000000);
      outlined init with copy of SheetPreference(v75, &v69);
      outlined init with copy of SheetPreference?(&v69, &v56, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v56)
      {
        v67 = v60;
        v68[0] = v61[0];
        *(v68 + 10) = *(v61 + 10);
        v63 = v56;
        v64 = v57;
        v65 = v58;
        v66 = v59;
        *&v56 = *(&v57 + 1);
        v19 = String.init<A>(describing:)();
        v48 = v47;
        outlined destroy of SheetPreference(&v63);
        _ss11AnyHashableVSgWOhTm_3(&v69, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        _ss11AnyHashableVSgWOhTm_3(&v56, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(&v69, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v48 = 0xE300000000000000;
      }

      MEMORY[0x18D00C9B0](v19, v48);

      MEMORY[0x18D00C9B0](41, 0xE100000000000000);

      v1 = *(&v62 + 1);
      v2 = v62;
      outlined destroy of SheetPreference(v75);
      goto LABEL_72;
    case 9:
      v3 = *&v83[112];
      v34 = v84;
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(84);
      v56 = v75[0];
      MEMORY[0x18D00C9B0](0xD000000000000033, 0x800000018CD56AA0);
      outlined init with copy of SheetPreference(&v77, v75);
      outlined init with copy of SheetPreference?(v75, &v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v63)
      {
        v73 = v67;
        v74[0] = v68[0];
        *(v74 + 10) = *(v68 + 10);
        v69 = v63;
        v70 = v64;
        v71 = v65;
        v72 = v66;
        *&v63 = *(&v64 + 1);
        v35 = String.init<A>(describing:)();
        v37 = v36;
        outlined destroy of SheetPreference(&v69);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        v35 = 7104878;
        _ss11AnyHashableVSgWOhTm_3(&v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v37 = 0xE300000000000000;
      }

      MEMORY[0x18D00C9B0](v35, v37);

      MEMORY[0x18D00C9B0](0x6E6573657270202CLL, 0xEF203A4356646574);
      *&v75[0] = v3;
      v54 = String.init<A>(describing:)();
      MEMORY[0x18D00C9B0](v54);

      MEMORY[0x18D00C9B0](0x74616D696E61202CLL, 0xEC000000203A6465);
      if (v34)
      {
        v50 = 1702195828;
      }

      else
      {
        v50 = 0x65736C6166;
      }

      if (v34)
      {
        v51 = 0xE400000000000000;
      }

      else
      {
        v51 = 0xE500000000000000;
      }

      goto LABEL_69;
    case 10:
      v8 = v83[106];
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      v56 = v75[0];
      MEMORY[0x18D00C9B0](0xD000000000000030, 0x800000018CD56A60);
      outlined init with copy of SheetPreference(&v77, v75);
      outlined init with copy of SheetPreference?(v75, &v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v63)
      {
        v73 = v67;
        v74[0] = v68[0];
        *(v74 + 10) = *(v68 + 10);
        v69 = v63;
        v70 = v64;
        v71 = v65;
        v72 = v66;
        *&v63 = *(&v64 + 1);
        v9 = String.init<A>(describing:)();
        v11 = v10;
        outlined destroy of SheetPreference(&v69);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        v9 = 7104878;
        _ss11AnyHashableVSgWOhTm_3(&v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v11 = 0xE300000000000000;
      }

      MEMORY[0x18D00C9B0](v9, v11);

      MEMORY[0x18D00C9B0](0x74616D696E61202CLL, 0xEC000000203A6465);
      if (v8)
      {
        v40 = 1702195828;
      }

      else
      {
        v40 = 0x65736C6166;
      }

      if (v8)
      {
        v41 = 0xE400000000000000;
      }

      else
      {
        v41 = 0xE500000000000000;
      }

      MEMORY[0x18D00C9B0](v40, v41);
      goto LABEL_70;
    case 11:
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v17 = 0x800000018CD56A30;
      v18 = 0xD000000000000024;
LABEL_19:
      *&v56 = v18;
      *(&v56 + 1) = v17;
      outlined init with copy of SheetPreference(&v77, v75);
      outlined init with copy of SheetPreference?(v75, &v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v63)
      {
        v73 = v67;
        v74[0] = v68[0];
        *(v74 + 10) = *(v68 + 10);
        v69 = v63;
        v70 = v64;
        v71 = v65;
        v72 = v66;
        *&v63 = *(&v64 + 1);
        v28 = String.init<A>(describing:)();
        v30 = v29;
        outlined destroy of SheetPreference(&v69);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        v28 = 7104878;
        _ss11AnyHashableVSgWOhTm_3(&v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v30 = 0xE300000000000000;
      }

      MEMORY[0x18D00C9B0](v28, v30);

      MEMORY[0x18D00C9B0](41, 0xE100000000000000);
      goto LABEL_71;
    case 12:
      goto LABEL_73;
    default:
      v3 = *&v83[112];
      v4 = v84;
      v81 = *&v83[64];
      v82[0] = *&v83[80];
      *(v82 + 10) = *&v83[90];
      v77 = *v83;
      v78 = *&v83[16];
      v79 = *&v83[32];
      v80 = *&v83[48];
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v56 = v75[0];
      MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD56BB0);
      outlined init with copy of SheetPreference(&v77, v75);
      outlined init with copy of SheetPreference?(v75, &v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v63)
      {
        v73 = v67;
        v74[0] = v68[0];
        *(v74 + 10) = *(v68 + 10);
        v69 = v63;
        v70 = v64;
        v71 = v65;
        v72 = v66;
        *&v63 = *(&v64 + 1);
        v5 = String.init<A>(describing:)();
        v7 = v6;
        outlined destroy of SheetPreference(&v69);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      }

      else
      {
        v5 = 7104878;
        _ss11AnyHashableVSgWOhTm_3(&v63, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        _ss11AnyHashableVSgWOhTm_3(v75, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        v7 = 0xE300000000000000;
      }

      MEMORY[0x18D00C9B0](v5, v7);

      MEMORY[0x18D00C9B0](0x6E6573657270202CLL, 0xEF203A4356646574);
      *&v75[0] = v3;
      v52 = String.init<A>(describing:)();
      MEMORY[0x18D00C9B0](v52);

      MEMORY[0x18D00C9B0](0x203A646565732029, 0xE800000000000000);
      if (v4 == -1)
      {
LABEL_58:
        v51 = 0xE700000000000000;
        v50 = 0x64696C61766E69;
      }

      else if (v4)
      {
LABEL_57:
        LODWORD(v75[0]) = v4;
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v53;
      }

      else
      {
LABEL_53:
        v50 = 0x7974706D65;
        v51 = 0xE500000000000000;
      }

LABEL_69:
      MEMORY[0x18D00C9B0](v50, v51);

LABEL_70:

LABEL_71:
      v1 = *(&v56 + 1);
      v2 = v56;
LABEL_72:
      outlined destroy of SheetPreference(&v77);
LABEL_73:
      *v83 = 0x2E65736142;
      *&v83[8] = 0xE500000000000000;
      MEMORY[0x18D00C9B0](v2, v1);

      return *v83;
  }
}

void type metadata accessor for _SemanticFeature<Semantics_v6>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t static ToolbarEdges.bars.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v4();
  v5 = VerticalEdge.Set.contains(_:)();
  v6 = MEMORY[0x1E69E7CD0];
  if (v5)
  {
    memset(v12, 0, sizeof(v12));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeSet.update(with:isUnique:)(v12, isUniquelyReferenced_nonNull_native, v13);
    outlined destroy of ToolbarPlacement.Role?(v13, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
    memset(v12, 0, 24);
    *&v12[24] = xmmword_18CD79D60;
    v8 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeSet.update(with:isUnique:)(v12, v8, v13);
    outlined destroy of ToolbarPlacement.Role?(v13, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
    memset(v12, 0, 24);
    *&v12[24] = xmmword_18CD6A6D0;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeSet.update(with:isUnique:)(v12, v9, v13);
    outlined destroy of ToolbarPlacement.Role?(v13, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
  }

  (v4)(a1, a2);
  if (VerticalEdge.Set.contains(_:)())
  {
    memset(v12, 0, 24);
    *&v12[24] = xmmword_18CD7DD20;
    v10 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeSet.update(with:isUnique:)(v12, v10, v13);
    outlined destroy of ToolbarPlacement.Role?(v13, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
  }

  return v6;
}

uint64_t InferredToolbarModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = *(a1 + 16);
  swift_getWitnessTable();
  v4 = type metadata accessor for _ViewModifier_Content();
  v5 = *(a1 + 24);
  type metadata accessor for InferredToolbarModifier.OnScrollStateChange();
  v22 = v4;
  type metadata accessor for ModifiedContent();
  type metadata accessor for EdgesPredicate();
  type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(255);
  type metadata accessor for StaticIf();
  type metadata accessor for ModifiedContent();
  type metadata accessor for EdgesPredicate();
  type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(255);
  v20 = type metadata accessor for StaticIf();
  v21 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v44 = WitnessTable;
  v45 = &protocol witness table for InferredToolbarModifier<A>.OnScrollStateChange;
  v6 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v42 = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>);
  v43 = MEMORY[0x1E697E100];
  v39 = v6;
  v40 = swift_getWitnessTable();
  v7 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v37 = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>);
  v38 = MEMORY[0x1E697E100];
  v34 = v7;
  v35 = swift_getWitnessTable();
  v46 = v3;
  v47 = v21;
  v48 = v5;
  v49 = swift_getWitnessTable();
  type metadata accessor for ToolbarReader();
  v8 = type metadata accessor for StaticIf();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v28 = v3;
  v29 = v5;
  v30 = v24;
  v26 = v3;
  v27 = v5;
  v15 = lazy protocol witness table accessor for type EnableInferredToolbar and conformance EnableInferredToolbar();
  v16 = WitnessTable;
  StaticIf<>.init(_:then:else:)();
  v31 = v15;
  v32 = &protocol witness table for ToolbarReader<A, B>;
  v33 = v16;
  v17 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v8, v17);
  v18 = *(v9 + 8);
  v18(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)(v14, v8, v17);
  return (v18)(v14, v8);
}

uint64_t closure #1 in InferredToolbarModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a1;
  v46 = a4;
  v6 = type metadata accessor for InferredToolbarModifier();
  v43 = *(v6 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v36 - v7;
  v41 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v6;
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for InferredToolbarModifier.OnScrollStateChange();
  type metadata accessor for ModifiedContent();
  v61 = a2;
  v62 = &type metadata for TopToolbarEdges;
  v63 = a3;
  v64 = &protocol witness table for TopToolbarEdges;
  v39 = a3;
  type metadata accessor for EdgesPredicate();
  type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(255);
  type metadata accessor for StaticIf();
  type metadata accessor for ModifiedContent();
  v61 = a2;
  v62 = &type metadata for BottomToolbarEdges;
  v63 = a3;
  v64 = &protocol witness table for BottomToolbarEdges;
  type metadata accessor for EdgesPredicate();
  type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(255);
  type metadata accessor for StaticIf();
  v47 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v60 = &protocol witness table for InferredToolbarModifier<A>.OnScrollStateChange;
  v10 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v12 = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>);
  v56 = v11;
  v57 = v12;
  v58 = MEMORY[0x1E697E100];
  v13 = swift_getWitnessTable();
  v54 = v10;
  v55 = v13;
  v14 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>);
  v51 = v15;
  v52 = v16;
  v53 = MEMORY[0x1E697E100];
  v17 = swift_getWitnessTable();
  v49 = v14;
  v50 = v17;
  v18 = v47;
  v38 = swift_getWitnessTable();
  v19 = a2;
  v61 = a2;
  v62 = v18;
  v20 = v39;
  v63 = v39;
  v64 = v38;
  v21 = type metadata accessor for ToolbarReader();
  v37 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v36 - v26;
  v28 = v45;
  (*(v41 + 16))(v48, v45, a2, v25);
  v29 = v43;
  v30 = v42;
  v31 = v40;
  (*(v43 + 16))(v42, v28, v40);
  v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v20;
  (*(v29 + 32))(v33 + v32, v30, v31);
  ToolbarReader.init(edges:content:)(v48, partial apply for closure #1 in closure #1 in InferredToolbarModifier.body(content:), v33, v19, v23);
  static ViewBuilder.buildExpression<A>(_:)(v23, v21, &protocol witness table for ToolbarReader<A, B>);
  v34 = *(v37 + 8);
  v34(v23, v21);
  static ViewBuilder.buildExpression<A>(_:)(v27, v21, &protocol witness table for ToolbarReader<A, B>);
  return (v34)(v27, v21);
}

uint64_t closure #1 in closure #1 in InferredToolbarModifier.body(content:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v30 = *v7;
  v31 = v7[2];
  v27 = v7[3];
  v28 = v7[1];
  v8 = type metadata accessor for InferredToolbarModifier();
  v9 = (v6 + *(v8 + 36));
  v11 = *v9;
  v10 = v9[1];
  *&__dst[0] = v11;
  *(&__dst[0] + 1) = v10;
  type metadata accessor for State<InferredToolbarState>(0, &lazy cache variable for type metadata for State<InferredToolbarState>, &type metadata for InferredToolbarState, MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  swift_getWitnessTable();
  v12 = type metadata accessor for _ViewModifier_Content();
  v13 = type metadata accessor for InferredToolbarModifier.OnScrollStateChange();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00A570](v38, v41, v12, v13, WitnessTable);

  v39[0] = v38[0];
  *&v39[1] = *&v38[1];
  *&__dst[0] = __PAIR64__(v28, v30);
  *(&__dst[0] + 1) = __PAIR64__(v27, v31);
  InferredToolbarModifier.topSafeArea(toolbar:)(__dst, v8);
  memcpy(__dst, v41, 0x198uLL);
  v15 = type metadata accessor for ModifiedContent();
  v36[0] = v4;
  v36[1] = &type metadata for TopToolbarEdges;
  v36[2] = v2;
  v36[3] = &protocol witness table for TopToolbarEdges;
  type metadata accessor for EdgesPredicate();
  type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(255);
  v16 = type metadata accessor for StaticIf();
  v34 = WitnessTable;
  v35 = &protocol witness table for InferredToolbarModifier<A>.OnScrollStateChange;
  v29 = swift_getWitnessTable();
  MEMORY[0x18D00A570](__src, __dst, v15, v16, v29);
  memcpy(v37, __dst, sizeof(v37));
  (*(*(v16 - 8) + 8))(v37, v16);

  memcpy(v33, __src, sizeof(v33));
  v41[0] = __PAIR64__(v28, v30);
  v41[1] = __PAIR64__(v27, v31);
  InferredToolbarModifier.bottomSafeArea(toolbar:)(v41, v8);
  memcpy(v36, __dst, 0x240uLL);
  v17 = type metadata accessor for ModifiedContent();
  v41[0] = v4;
  v41[1] = &type metadata for BottomToolbarEdges;
  v41[2] = v2;
  v41[3] = &protocol witness table for BottomToolbarEdges;
  type metadata accessor for EdgesPredicate();
  type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(255);
  v18 = type metadata accessor for StaticIf();
  v19 = swift_getWitnessTable();
  v20 = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>);
  __src[128] = v19;
  __src[129] = v20;
  __src[130] = MEMORY[0x1E697E100];
  v21 = swift_getWitnessTable();
  __src[126] = v29;
  __src[127] = v21;
  v22 = swift_getWitnessTable();
  MEMORY[0x18D00A570](v41, v36, v17, v18, v22);
  memcpy(v38, v36, sizeof(v38));
  (*(*(v18 - 8) + 8))(v38, v18);
  memcpy(v39, v33, sizeof(v39));
  (*(*(v17 - 8) + 8))(v39, v17);
  memcpy(__src, v41, 0x3F0uLL);
  v23 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>);
  swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(__src, v23, v24);
  memcpy(__dst, __src, sizeof(__dst));
  v25 = *(*(v23 - 8) + 8);
  v25(__dst, v23);
  memcpy(__src, v36, 0x3F0uLL);
  static ViewBuilder.buildExpression<A>(_:)(__src, v23, v24);
  memcpy(v41, __src, 0x3F0uLL);
  return v25(v41, v23);
}

uint64_t InferredToolbarModifier.topSafeArea(toolbar:)(_OWORD *a1, uint64_t a2)
{
  *__dst = *a1;
  InferredToolbarModifier.navigationBar(toolbar:)(__dst, v6);
  memcpy(__dst, v6, 0x178uLL);
  v3 = static HorizontalAlignment.center.getter();
  v4 = *(a2 + 24);
  v6[0] = *(a2 + 16);
  v6[1] = &type metadata for TopToolbarEdges;
  v6[2] = v4;
  v6[3] = &protocol witness table for TopToolbarEdges;
  type metadata accessor for EdgesPredicate();
  memcpy(v6, __dst, 0x178uLL);
  v6[47] = 1;
  v6[48] = 0;
  v7 = 0;
  v8 = v3;
  type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(0);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>);
  return StaticIf<>.init<>(_:then:)();
}

uint64_t InferredToolbarModifier.bottomSafeArea(toolbar:)(unint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  closure #1 in InferredToolbarModifier.bottomBar(toolbar:)(*a1, a1[1], v3, v4, v5, v8);
  v6 = static HorizontalAlignment.center.getter();
  v11 = v4;
  v12 = &type metadata for BottomToolbarEdges;
  v13 = v5;
  v14 = &protocol witness table for BottomToolbarEdges;
  type metadata accessor for EdgesPredicate();
  v8[34] = xmmword_18CD6A6D0;
  v9 = 512;
  v10 = v6;
  type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(0);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>);
  return StaticIf<>.init<>(_:then:)();
}

uint64_t closure #2 in InferredToolbarModifier.body(content:)()
{
  type metadata accessor for InferredToolbarModifier();
  swift_getWitnessTable();
  v0 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  v2 = static ViewBuilder.buildExpression<A>(_:)(WitnessTable, v0, WitnessTable);

  return static ViewBuilder.buildExpression<A>(_:)(v2, v0, WitnessTable);
}

uint64_t InferredToolbarModifier.bar<A>(toolbar:edge:content:)@<X0>(unsigned int *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a7;
  v54 = a5;
  v52 = a4;
  v50 = a3;
  v53 = a8;
  type metadata accessor for ModifiedContent<Divider, _OpacityEffect>?();
  v49 = a6;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  v47 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41[-v16];
  v19 = *a1;
  v18 = a1[1];
  v20 = a1[2];
  v21 = a1[3];
  v22 = a2 & 1;
  v23 = 3;
  if ((a2 & 1) == 0)
  {
    v23 = 0;
  }

  memset(v59, 0, 24);
  v59[3] = v23;
  v59[4] = 0;
  v56 = __PAIR64__(v18, v19);
  v57 = __PAIR64__(v21, v20);
  ToolbarProxy_V1.appearance(in:)(v59, v58);
  outlined destroy of ToolbarAppearanceConfiguration(v58);
  v24 = v54;
  v25 = 1.0;
  if (v58[24] == 1)
  {
    goto LABEL_7;
  }

  v42 = v20;
  v43 = v19;
  v44 = v18;
  v45 = v11;
  v26 = (v46 + *(v54 + 36));
  v28 = *v26;
  v27 = v26[1];
  v56 = v28;
  v57 = v27;
  type metadata accessor for State<InferredToolbarState>(0, &lazy cache variable for type metadata for State<InferredToolbarState>, &type metadata for InferredToolbarState, MEMORY[0x1E6981790]);
  result = State.wrappedValue.getter();
  v30 = v55;
  if (*(v55 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(v22);
    if (v31)
    {
      v25 = *(*(v30 + 56) + 8 * result);

      v24 = v54;
      v11 = v45;
      v18 = v44;
      v19 = v43;
      v20 = v42;
LABEL_7:
      v56 = __PAIR64__(v18, v19);
      v57 = __PAIR64__(v21, v20);
      v32 = *(v24 + 16);
      v33 = *(v24 + 24);
      v34 = specialized InferredToolbarModifier.backgroundStyle(in:toolbar:opacity:)(v59);
      MEMORY[0x1EEE9AC00](v34);
      v35 = v49;
      *&v41[-80] = v32;
      *&v41[-72] = v35;
      v36 = v51;
      *&v41[-64] = v33;
      *&v41[-56] = v36;
      v41[-48] = v22;
      *&v41[-40] = v25;
      v37 = v52;
      *&v41[-32] = v50;
      *&v41[-24] = v37;
      *&v41[-16] = v38;
      static HorizontalAlignment.center.getter();
      VStack.init(alignment:spacing:content:)();

      outlined destroy of ToolbarPlacement.Role(v59);
      v39 = swift_getWitnessTable();
      static ViewBuilder.buildExpression<A>(_:)(v14, v11, v39);
      v40 = *(v12 + 8);
      v40(v14, v11);
      static ViewBuilder.buildExpression<A>(_:)(v17, v11, v39);
      return (v40)(v17, v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in InferredToolbarModifier.bar<A>(toolbar:edge:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>, double a7@<D0>)
{
  v43 = a3;
  v37 = a2;
  v44 = a1;
  v45 = a6;
  v39 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ModifiedContent();
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for ModifiedContent();
  v42 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
  v18 = type metadata accessor for ModifiedContent();
  v41 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v36 = &v36 - v23;
  v38 = a7;
  v37(v22);
  static Alignment.center.getter();
  View.frame(width:height:alignment:)();
  (*(v39 + 8))(v11, a4);
  static Edge.Set.horizontal.getter();
  v54[7] = a5;
  v54[8] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v40 + 8))(v14, v12);
  v54[0] = v43;
  static Edge.Set.all.getter();
  v54[5] = WitnessTable;
  v54[6] = MEMORY[0x1E697E5D8];
  v25 = swift_getWitnessTable();
  View.background<A>(_:ignoresSafeAreaEdges:)();
  (*(v42 + 8))(v17, v15);
  v26 = lazy protocol witness table accessor for type _BackgroundStyleModifier<AnyShapeStyle> and conformance _BackgroundStyleModifier<A>();
  v54[3] = v25;
  v54[4] = v26;
  v27 = swift_getWitnessTable();
  v28 = v36;
  static ViewBuilder.buildExpression<A>(_:)(v20, v18, v27);
  v29 = v41;
  v30 = *(v41 + 8);
  v30(v20, v18);
  v31 = v44 & 1;
  if (v44)
  {
    v32 = v38;
  }

  else
  {
    v32 = 0.0;
  }

  if (v44)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v38;
  }

  v52 = v32;
  v53 = (v44 & 1) == 0;
  v54[0] = &v52;
  (*(v29 + 16))(v20, v28, v18);
  v50 = v33;
  v51 = v31;
  v54[1] = v20;
  v54[2] = &v50;
  type metadata accessor for ModifiedContent<Divider, _OpacityEffect>?();
  v49[0] = v34;
  v49[1] = v18;
  v49[2] = v34;
  v46 = lazy protocol witness table accessor for type ModifiedContent<Divider, _OpacityEffect>? and conformance <A> A?();
  v47 = v27;
  v48 = v46;
  static ViewBuilder.buildBlock<each A>(_:)(v54, 3uLL, v49);
  v30(v28, v18);
  return (v30)(v20, v18);
}

void *InferredToolbarModifier.navigationBar(toolbar:)@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  closure #1 in InferredToolbarModifier.navigationBar(toolbar:)(*a1, a1[1], __src);
  lazy protocol witness table accessor for type MoveTransition and conformance MoveTransition();
  v3 = AnyTransition.init<A>(_:)();
  result = memcpy(a2, __src, 0x170uLL);
  a2[46] = v3;
  return result;
}

void *closure #1 in InferredToolbarModifier.navigationBar(toolbar:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = HIDWORD(a1);
  v7 = HIDWORD(a2);
  memset(v25, 0, 40);
  outlined init with copy of ToolbarPlacement.Storage(v25, v21);
  if (*(&v21[1] + 1) == 7)
  {
    v8 = outlined destroy of ToolbarPlacement(v25);
LABEL_5:
    v16 = a3;
    *&v21[0] = __PAIR64__(v6, v4);
    *(&v21[0] + 1) = __PAIR64__(v7, v3);
    MEMORY[0x1EEE9AC00](v8);
    v15[4] = v4;
    v15[5] = v6;
    v15[6] = v3;
    v15[7] = v7;
    v10 = type metadata accessor for InferredToolbarModifier();
    type metadata accessor for HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>();
    v12 = v11;
    v13 = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>);
    InferredToolbarModifier.bar<A>(toolbar:edge:content:)(v21, 0, partial apply for closure #1 in closure #1 in InferredToolbarModifier.navigationBar(toolbar:), v15, v10, v12, v13, v25);
    a3 = v16;
    memcpy(v21, v25, 0x169uLL);
    _s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAA7DividerVAA14_OpacityEffectVGSg_AKyAKyAKyAA6HStackVyAIyAA7ForEachVySayAA07ToolbarE0V5EntryVGAY2IDVAA07BarItemH0VG_AA6SpacerVA3_A5_A3_tGGAA12_FrameLayoutVGAA08_PaddingW0VGAA24_BackgroundStyleModifierVyAA08AnyShapeZ0VGGAQtGGAKyAA05EmptyH0VA9_G_GWOi_(v21);
    goto LABEL_6;
  }

  v22 = v21[0];
  v23 = v21[1];
  *&v24 = *&v21[2];
  v17 = v4;
  v18 = v6;
  v19 = v3;
  v20 = v7;
  v9 = ToolbarProxy_V1.visibility(in:)(&v22);
  outlined destroy of ToolbarPlacement.Role(&v22);
  v8 = outlined destroy of ToolbarPlacement(v25);
  if (v9 != 2)
  {
    goto LABEL_5;
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v21[0] = v22;
  BYTE8(v21[0]) = BYTE8(v22);
  *&v21[1] = v23;
  BYTE8(v21[1]) = BYTE8(v23);
  v21[2] = v24;
  _s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAA7DividerVAA14_OpacityEffectVGSg_AKyAKyAKyAA6HStackVyAIyAA7ForEachVySayAA07ToolbarE0V5EntryVGAY2IDVAA07BarItemH0VG_AA6SpacerVA3_A5_A3_tGGAA12_FrameLayoutVGAA08_PaddingW0VGAA24_BackgroundStyleModifierVyAA08AnyShapeZ0VGGAQtGGAKyAA05EmptyH0VA9_G_GWOi0_(v21);
LABEL_6:
  memcpy(v25, v21, 0x16AuLL);
  return memcpy(a3, v25, 0x16AuLL);
}

double closure #1 in closure #1 in InferredToolbarModifier.navigationBar(toolbar:)@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v25 = 1;
  closure #1 in closure #1 in closure #1 in InferredToolbarModifier.navigationBar(toolbar:)(a1, &v13);
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v37[8] = v21;
  v37[9] = v22;
  v37[10] = v23;
  v37[4] = v17;
  v37[5] = v18;
  v37[6] = v19;
  v37[7] = v20;
  v37[0] = v13;
  v37[1] = v14;
  v37[2] = v15;
  v37[3] = v16;
  outlined init with copy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(&v26, &v12, type metadata accessor for TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>);
  outlined destroy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v37, type metadata accessor for TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>);
  *&v24[119] = v33;
  *&v24[135] = v34;
  *&v24[151] = v35;
  *&v24[167] = v36;
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[7] = v26;
  *&v24[23] = v27;
  *&v24[39] = v28;
  v5 = *&v24[144];
  *(a2 + 145) = *&v24[128];
  *(a2 + 161) = v5;
  *(a2 + 177) = *&v24[160];
  v6 = *&v24[80];
  *(a2 + 81) = *&v24[64];
  *(a2 + 97) = v6;
  v7 = *&v24[112];
  *(a2 + 113) = *&v24[96];
  *(a2 + 129) = v7;
  v8 = *&v24[16];
  *(a2 + 17) = *v24;
  *(a2 + 33) = v8;
  result = *&v24[32];
  v10 = *&v24[48];
  *(a2 + 49) = *&v24[32];
  v11 = v25;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 192) = *&v24[175];
  *(a2 + 65) = v10;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in InferredToolbarModifier.navigationBar(toolbar:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = HIDWORD(a1);
  v4 = type metadata accessor for ToolbarStorage.Entry(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  memset(v86, 0, 24);
  *(&v86[1] + 8) = xmmword_18CD90770;
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  v85 = -1;
  v81 = MEMORY[0x1E69E7CC0];
  v65 = v3;
  v13 = *AGGraphGetInputValue();
  v66 = &v82;
  v67 = &v81;
  v14 = v13;
  specialized ToolbarBridge.adjustEntries(in:_:)(v86, closure #1 in ToolbarProxy_V1.callAsFunction(in:placement:showSeparator:)partial apply, v15);

  v16 = v81;
  v17 = *(v81 + 16);
  v62 = v5;
  if (v17)
  {
    outlined init with copy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v81 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v17 - 1), v12, type metadata accessor for ToolbarStorage.Entry);

    ToolbarStorage.Entry.id.getter(&v75);
    outlined destroy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v12, type metadata accessor for ToolbarStorage.Entry);
  }

  else
  {
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
  }

  KeyPath = swift_getKeyPath();
  outlined init with copy of ToolbarStorage.Entry.ID?(&v75, &v70, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6720], type metadata accessor for State<InferredToolbarState>);
  v19 = swift_allocObject();
  v20 = v72;
  *(v19 + 56) = v71[1];
  *(v19 + 72) = v20;
  *(v19 + 88) = v73;
  v21 = v71[0];
  *(v19 + 24) = v70;
  *(v19 + 16) = 0;
  *(v19 + 104) = v74;
  *(v19 + 40) = v21;
  v68 = KeyPath;
  v69 = v16;
  type metadata accessor for [ToolbarStorage.Entry]();
  v23 = v22;
  lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A]();
  v63 = lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID();
  v64 = v23;
  ForEach.init(_:idGenerator:content:)();
  outlined destroy of ToolbarPlacement.Role?(&v75, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID);
  outlined destroy of Toolbar.BarLocation(v86);

  outlined destroy of ToolbarPlacement.Role?(&v82, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
  v59 = v70;
  v60 = *(&v71[0] + 1);
  v61 = *&v71[0];
  v57 = *(&v71[1] + 1);
  v58 = *&v71[1];
  memset(v86, 0, 40);
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  v85 = -1;
  v24 = MEMORY[0x1E69E7CC0];
  v81 = MEMORY[0x1E69E7CC0];
  InputValue = AGGraphGetInputValue();
  MEMORY[0x1EEE9AC00](InputValue);
  v27 = v26;
  specialized ToolbarBridge.adjustEntries(in:_:)(v86, closure #1 in ToolbarProxy_V1.callAsFunction(in:placement:showSeparator:)partial apply, v28);

  v29 = v81;
  v30 = *(v81 + 16);
  if (v30)
  {
    outlined init with copy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v81 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * (v30 - 1), v9, type metadata accessor for ToolbarStorage.Entry);

    ToolbarStorage.Entry.id.getter(&v75);
    outlined destroy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v9, type metadata accessor for ToolbarStorage.Entry);
  }

  else
  {
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
  }

  v31 = swift_getKeyPath();
  outlined init with copy of ToolbarStorage.Entry.ID?(&v75, &v70, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6720], type metadata accessor for State<InferredToolbarState>);
  v32 = swift_allocObject();
  v33 = v72;
  *(v32 + 56) = v71[1];
  *(v32 + 72) = v33;
  *(v32 + 88) = v73;
  v34 = v71[0];
  *(v32 + 24) = v70;
  *(v32 + 16) = 0;
  *(v32 + 104) = v74;
  *(v32 + 40) = v34;
  v68 = v31;
  v69 = v29;
  ForEach.init(_:idGenerator:content:)();
  outlined destroy of ToolbarPlacement.Role?(&v75, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID);
  outlined destroy of Toolbar.BarLocation(v86);

  outlined destroy of ToolbarPlacement.Role?(&v82, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
  v56 = v70;
  v35 = v71[0];
  v54 = *(&v71[1] + 1);
  v55 = *&v71[1];
  memset(v86, 0, 24);
  *(&v86[1] + 8) = xmmword_18CD7DD20;
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  v85 = -1;
  v81 = v24;
  v36 = AGGraphGetInputValue();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v37;
  specialized ToolbarBridge.adjustEntries(in:_:)(v86, closure #1 in ToolbarProxy_V1.callAsFunction(in:placement:showSeparator:)partial apply, v39);

  v40 = v81;
  v41 = *(v81 + 16);
  if (v41)
  {
    v42 = v53;
    outlined init with copy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v81 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * (v41 - 1), v53, type metadata accessor for ToolbarStorage.Entry);

    ToolbarStorage.Entry.id.getter(&v75);
    outlined destroy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v42, type metadata accessor for ToolbarStorage.Entry);
  }

  else
  {
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
  }

  v43 = swift_getKeyPath();
  outlined init with copy of ToolbarStorage.Entry.ID?(&v75, &v70, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6720], type metadata accessor for State<InferredToolbarState>);
  v44 = swift_allocObject();
  v45 = v72;
  *(v44 + 56) = v71[1];
  *(v44 + 72) = v45;
  *(v44 + 88) = v73;
  v46 = v71[0];
  *(v44 + 24) = v70;
  *(v44 + 16) = 0;
  *(v44 + 104) = v74;
  *(v44 + 40) = v46;
  v68 = v43;
  v69 = v40;
  ForEach.init(_:idGenerator:content:)();
  outlined destroy of ToolbarPlacement.Role?(&v75, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID);
  outlined destroy of Toolbar.BarLocation(v86);

  outlined destroy of ToolbarPlacement.Role?(&v82, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
  v47 = *&v71[0];
  v48 = *(&v71[1] + 1);
  LOBYTE(v69) = 1;
  LOBYTE(v68) = 1;
  *a2 = v59;
  v49 = v60;
  *(a2 + 16) = v61;
  *(a2 + 24) = v49;
  v50 = v57;
  *(a2 + 32) = v58;
  *(a2 + 40) = v50;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = v56;
  *(a2 + 80) = v35;
  *(a2 + 96) = v55;
  *(a2 + 104) = v54;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *(a2 + 128) = v70;
  *(a2 + 144) = v47;
  *(a2 + 152) = *(v71 + 8);
  *(a2 + 168) = v48;
}

void *closure #1 in InferredToolbarModifier.bottomBar(toolbar:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = a2;
  v10 = a1;
  v12 = HIDWORD(a1);
  v13 = HIDWORD(a2);
  memset(v35, 0, 24);
  *&v35[3] = xmmword_18CD7DD20;
  outlined init with copy of ToolbarPlacement.Storage(v35, v34);
  if (*(&v34[1] + 1) == 7)
  {
    v14 = outlined destroy of ToolbarPlacement(v35);
LABEL_5:
    v28 = a6;
    *&v34[0] = __PAIR64__(v12, v10);
    *(&v34[0] + 1) = __PAIR64__(v13, v9);
    MEMORY[0x1EEE9AC00](v14);
    v22[2] = a4;
    v22[3] = a5;
    v23 = v10;
    v24 = v12;
    v25 = v9;
    v26 = v13;
    v27 = a3;
    v16 = type metadata accessor for InferredToolbarModifier();
    type metadata accessor for ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>(0);
    v18 = v17;
    v19 = lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    InferredToolbarModifier.bar<A>(toolbar:edge:content:)(v34, 1, partial apply for closure #1 in closure #1 in InferredToolbarModifier.bottomBar(toolbar:), v22, v16, v18, v19, v35);
    a6 = v28;
    memcpy(v33, v35, 0x209uLL);
    LOBYTE(v34[0]) = 2;
    lazy protocol witness table accessor for type MoveTransition and conformance MoveTransition();
    v20 = AnyTransition.init<A>(_:)();
    memcpy(v34, v33, 0x210uLL);
    *&v34[33] = v20;
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6VStackVyAA9TupleViewVyAGyAA7DividerVAA14_OpacityEffectVGSg_AGyAGyAGyAGyAA6HStackVyAKyAA7ForEachVys10ArraySliceVyAA07ToolbarE0V5EntryVGA_2IDVAA07BarItemI0VG_AKyAA6SpacerV_AUySayA_GA2_A4_GA7_tGSgA5_tGGAA16_FlexFrameLayoutVGAA01_yZ0VGAA08_PaddingZ0VGAA24_BackgroundStyleModifierVyAA13AnyShapeStyleVGGAQtGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGAGyAA05EmptyI0VA18_G_GWOi_(v34);
    goto LABEL_6;
  }

  v33[0] = v34[0];
  v33[1] = v34[1];
  *&v33[2] = *&v34[2];
  v29 = v10;
  v30 = v12;
  v31 = v9;
  v32 = v13;
  v15 = ToolbarProxy_V1.visibility(in:)(v33);
  outlined destroy of ToolbarPlacement.Role(v33);
  v14 = outlined destroy of ToolbarPlacement(v35);
  if (v15 != 2)
  {
    goto LABEL_5;
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v34[0] = *&v33[0];
  BYTE8(v34[0]) = BYTE8(v33[0]);
  *&v34[1] = *&v33[1];
  BYTE8(v34[1]) = BYTE8(v33[1]);
  v34[2] = v33[2];
  _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6VStackVyAA9TupleViewVyAGyAA7DividerVAA14_OpacityEffectVGSg_AGyAGyAGyAGyAA6HStackVyAKyAA7ForEachVys10ArraySliceVyAA07ToolbarE0V5EntryVGA_2IDVAA07BarItemI0VG_AKyAA6SpacerV_AUySayA_GA2_A4_GA7_tGSgA5_tGGAA16_FlexFrameLayoutVGAA01_yZ0VGAA08_PaddingZ0VGAA24_BackgroundStyleModifierVyAA13AnyShapeStyleVGGAQtGGAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGAGyAA05EmptyI0VA18_G_GWOi0_(v34);
LABEL_6:
  memcpy(v35, v34, 0x219uLL);
  return memcpy(a6, v35, 0x219uLL);
}

double closure #1 in closure #1 in InferredToolbarModifier.bottomBar(toolbar:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static VerticalAlignment.center.getter();
  v37 = 1;
  closure #1 in closure #1 in closure #1 in InferredToolbarModifier.bottomBar(toolbar:)(a1, a2, &v22);
  v48 = v32;
  v49 = v33;
  v50 = v34;
  v51 = v35;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v38 = v22;
  v39 = v23;
  v52[10] = v32;
  v52[11] = v33;
  v52[12] = v34;
  v52[13] = v35;
  v52[6] = v28;
  v52[7] = v29;
  v52[8] = v30;
  v52[9] = v31;
  v52[2] = v24;
  v52[3] = v25;
  v52[4] = v26;
  v52[5] = v27;
  v52[0] = v22;
  v52[1] = v23;
  outlined init with copy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(&v38, v21, type metadata accessor for TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>);
  outlined destroy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v52, type metadata accessor for TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>);
  *&v36[167] = v48;
  *&v36[183] = v49;
  *&v36[199] = v50;
  *&v36[215] = v51;
  *&v36[103] = v44;
  *&v36[119] = v45;
  *&v36[135] = v46;
  *&v36[151] = v47;
  *&v36[39] = v40;
  *&v36[55] = v41;
  *&v36[71] = v42;
  *&v36[87] = v43;
  *&v36[7] = v38;
  *&v36[23] = v39;
  v7 = v37;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v8 = *&v36[160];
  *(a3 + 193) = *&v36[176];
  v9 = *&v36[208];
  *(a3 + 209) = *&v36[192];
  *(a3 + 225) = v9;
  v10 = *&v36[96];
  *(a3 + 129) = *&v36[112];
  v11 = *&v36[144];
  *(a3 + 145) = *&v36[128];
  *(a3 + 161) = v11;
  *(a3 + 177) = v8;
  v12 = *&v36[32];
  *(a3 + 65) = *&v36[48];
  v13 = *&v36[80];
  *(a3 + 81) = *&v36[64];
  *(a3 + 97) = v13;
  *(a3 + 113) = v10;
  v14 = *&v36[16];
  *(a3 + 17) = *v36;
  *(a3 + 33) = v14;
  *(a3 + 49) = v12;
  v15 = v26;
  v16 = v27;
  v17 = v24;
  *(a3 + 296) = v25;
  *(a3 + 312) = v15;
  v18 = v28;
  *(a3 + 328) = v16;
  *(a3 + 344) = v18;
  result = *&v22;
  v20 = v23;
  *(a3 + 248) = v22;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  *(a3 + 240) = *&v36[223];
  *(a3 + 264) = v20;
  *(a3 + 280) = v17;
  return result;
}

void closure #1 in closure #1 in closure #1 in InferredToolbarModifier.bottomBar(toolbar:)(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v118 = a1;
  *(&v118 + 1) = a2;
  v74 = a2;
  v5 = type metadata accessor for ToolbarStorage.Entry(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v116, 0, sizeof(v116));
  v117 = xmmword_18CD90760;
  v112 = 13;
  v113 = 0u;
  v114 = 0u;
  v115 = 2;
  v99 = 0uLL;
  *&v100[0] = 0;
  v75 = xmmword_18CD90760;
  *(v100 + 8) = xmmword_18CD90760;
  v103[0] = 13;
  memset(&v103[1], 0, 32);
  LOBYTE(v103[5]) = 2;
  v9 = ToolbarProxy_V1.count(in:placement:)(&v99, v103);
  outlined destroy of ToolbarPlacement.Role?(v103, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
  outlined destroy of Toolbar.BarLocation(&v99);
  if (v9 < 2)
  {
    if (v9 < 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v9 = v9 >> 1;
  }

  *&v99 = MEMORY[0x1E69E7CC0];
  InputValue = AGGraphGetInputValue();
  MEMORY[0x1EEE9AC00](InputValue);
  v12 = v11;
  specialized ToolbarBridge.adjustEntries(in:_:)(v116, partial apply for closure #1 in ToolbarProxy_V1.callAsFunction<A>(in:placement:range:), v13);

  v14 = v99;
  if (*(v99 + 16) < v9)
  {
    __break(1u);
  }

  else
  {
    v72 = v6;
    v73 = v8;
    v15 = v74;
    v68 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = v99 + v68;
    KeyPath = swift_getKeyPath();
    v103[0] = v14;
    v103[1] = v16;
    v103[2] = 0;
    v103[3] = (2 * v9) | 1;
    *v96 = KeyPath;
    type metadata accessor for ArraySlice<ToolbarStorage.Entry>(0);
    v19 = v18;
    v20 = lazy protocol witness table accessor for type ArraySlice<ToolbarStorage.Entry> and conformance ArraySlice<A>();
    v21 = lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID();

    v69 = v21;
    v65 = v20;
    v66 = v19;
    ForEach.init(_:idGenerator:content:)();
    outlined destroy of Toolbar.BarLocation(v116);

    outlined destroy of ToolbarItemPlacement.Role(&v112);
    v109 = v120;
    v110 = v121;
    v111 = v122;
    v107 = v118;
    v108 = v119;
    *v96 = a1;
    *&v96[8] = v15;
    v67 = HIDWORD(v15);
    v99 = 0uLL;
    *&v100[0] = 0;
    *(v100 + 8) = v75;
    v103[0] = 4;
    memset(&v103[1], 0, 32);
    LOBYTE(v103[5]) = 2;
    v22 = ToolbarProxy_V1.count(in:placement:)(&v99, v103);
    outlined destroy of ToolbarPlacement.Role?(v103, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
    outlined destroy of Toolbar.BarLocation(&v99);
    if (v22)
    {
      v87 = 0uLL;
      *&v88[0] = 0;
      *(v88 + 8) = v75;
      *v96 = 4;
      memset(&v96[8], 0, 32);
      v96[40] = 2;
      *&v85[0] = MEMORY[0x1E69E7CC0];
      v23 = AGGraphGetInputValue();
      MEMORY[0x1EEE9AC00](v23);
      v25 = v24;
      specialized ToolbarBridge.adjustEntries(in:_:)(&v87, partial apply for closure #1 in ToolbarProxy_V1.callAsFunction(in:placement:showSeparator:), v26);

      v27 = *&v85[0];
      v28 = *(*&v85[0] + 16);
      v29 = a1;
      if (v28)
      {
        v30 = v73;
        outlined init with copy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(*&v85[0] + v68 + *(v72 + 72) * (v28 - 1), v73, type metadata accessor for ToolbarStorage.Entry);

        ToolbarStorage.Entry.id.getter(v103);
        outlined destroy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(v30, type metadata accessor for ToolbarStorage.Entry);
      }

      else
      {
        v106 = 0;
        v104 = 0u;
        v105 = 0u;
        memset(v103, 0, sizeof(v103));
      }

      v32 = swift_getKeyPath();
      outlined init with copy of ToolbarStorage.Entry.ID?(v103, &v99, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6720], type metadata accessor for State<InferredToolbarState>);
      v33 = swift_allocObject();
      v34 = v101[0];
      *(v33 + 56) = v100[1];
      *(v33 + 72) = v34;
      *(v33 + 88) = v101[1];
      v35 = v100[0];
      *(v33 + 24) = v99;
      *(v33 + 16) = 0;
      *(v33 + 104) = v102;
      *(v33 + 40) = v35;
      *&v83[0] = v27;
      *&v81[0] = v32;
      type metadata accessor for [ToolbarStorage.Entry]();
      lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A]();
      ForEach.init(_:idGenerator:content:)();
      outlined destroy of ToolbarPlacement.Role?(v103, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID);
      outlined destroy of Toolbar.BarLocation(&v87);

      outlined destroy of ToolbarPlacement.Role?(v96, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
      v63 = *(&v100[0] + 1);
      v64 = *(&v99 + 1);
      v72 = *&v100[1];
      v73 = v99;
      v70 = *&v100[0];
      v71 = *(&v100[1] + 1);
      LOBYTE(v83[0]) = 1;
      LOBYTE(v81[0]) = 1;
      v31 = 1;
      v62 = 1;
    }

    else
    {
      v72 = 0;
      v73 = 0;
      v63 = 0;
      v64 = 0;
      v70 = 0;
      v71 = 0;
      v62 = 0;
      v31 = 0;
      v29 = a1;
    }

    memset(v94, 0, sizeof(v94));
    v95 = v75;
    v90 = 13;
    v91 = 0u;
    v92 = 0u;
    v93 = 2;
    *v96 = v29;
    *&v96[4] = HIDWORD(a1);
    *&v96[8] = v74;
    *&v96[12] = v67;
    v99 = 0uLL;
    *&v100[0] = 0;
    *(v100 + 8) = v75;
    v103[0] = 13;
    memset(&v103[1], 0, 32);
    LOBYTE(v103[5]) = 2;
    v36 = ToolbarProxy_V1.count(in:placement:)(&v99, v103);
    outlined destroy of ToolbarPlacement.Role?(v103, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
    outlined destroy of Toolbar.BarLocation(&v99);
    if (v36 <= 1)
    {
      v37 = 0;
    }

    else
    {
      v37 = v36 >> 1;
    }

    if (v36 <= 1)
    {
      v38 = 0;
    }

    else
    {
      v38 = v36;
    }

    *&v99 = MEMORY[0x1E69E7CC0];
    v39 = AGGraphGetInputValue();
    MEMORY[0x1EEE9AC00](v39);
    v41 = v40;
    specialized ToolbarBridge.adjustEntries(in:_:)(v94, closure #1 in ToolbarProxy_V1.callAsFunction<A>(in:placement:range:)partial apply, v42);

    v43 = v99;
    v44 = *(v99 + 16);
    if (v44 >= v37 && v44 >= v38)
    {
      v45 = v99 + v68;
      v46 = swift_getKeyPath();
      v103[0] = v43;
      v103[1] = v45;
      v103[2] = v37;
      v103[3] = (2 * v38) | 1;
      *&v87 = v46;

      ForEach.init(_:idGenerator:content:)();
      outlined destroy of Toolbar.BarLocation(v94);

      outlined destroy of ToolbarItemPlacement.Role(&v90);
      v85[2] = *&v96[32];
      v85[3] = v97;
      v85[0] = *v96;
      v85[1] = *&v96[16];
      v81[2] = v109;
      v81[3] = v110;
      v81[0] = v107;
      v81[1] = v108;
      v78 = v109;
      v79 = v110;
      v76 = v107;
      v77 = v108;
      *&v99 = 0;
      v61 = v31;
      *(&v99 + 1) = v31;
      *&v100[0] = v73;
      v47 = v63;
      v48 = v64;
      *(&v100[0] + 1) = v64;
      *&v100[1] = v70;
      *(&v100[1] + 1) = v63;
      *&v101[0] = v72;
      *(&v101[0] + 1) = v71;
      *(v80 + 8) = v99;
      *(&v80[3] + 8) = v101[0];
      *&v101[1] = 0;
      v49 = v62;
      BYTE8(v101[1]) = v62;
      *(&v80[2] + 8) = v100[1];
      *(&v80[1] + 8) = v100[0];
      *(&v80[4] + 1) = *(v101 + 9);
      v83[2] = *&v96[32];
      v83[3] = v97;
      v83[0] = *v96;
      v83[1] = *&v96[16];
      v86 = v98;
      v82 = v111;
      *&v80[0] = v111;
      v84 = v98;
      *(&v80[5] + 8) = *v96;
      *(&v80[9] + 1) = v98;
      *(&v80[8] + 8) = v97;
      *(&v80[7] + 8) = *&v96[32];
      *(&v80[6] + 8) = *&v96[16];
      v50 = v108;
      *a3 = v107;
      a3[1] = v50;
      v51 = v78;
      v52 = v79;
      v53 = v80[1];
      a3[4] = v80[0];
      a3[5] = v53;
      a3[2] = v51;
      a3[3] = v52;
      v54 = v80[2];
      v55 = v80[3];
      v56 = v80[5];
      a3[8] = v80[4];
      a3[9] = v56;
      a3[6] = v54;
      a3[7] = v55;
      v57 = v80[6];
      v58 = v80[7];
      v59 = v80[9];
      a3[12] = v80[8];
      a3[13] = v59;
      a3[10] = v57;
      a3[11] = v58;
      outlined init with copy of ToolbarStorage.Entry.ID?(v81, v103, &lazy cache variable for type metadata for ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, type metadata accessor for ArraySlice<ToolbarStorage.Entry>, lazy protocol witness table accessor for type ArraySlice<ToolbarStorage.Entry> and conformance ArraySlice<A>, type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>);
      v60 = MEMORY[0x1E69E6720];
      outlined init with copy of ToolbarStorage.Entry.ID?(&v99, v103, &lazy cache variable for type metadata for TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, type metadata accessor for TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>, MEMORY[0x1E69E6720], type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>);
      outlined init with copy of ToolbarStorage.Entry.ID?(v83, v103, &lazy cache variable for type metadata for ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, type metadata accessor for ArraySlice<ToolbarStorage.Entry>, lazy protocol witness table accessor for type ArraySlice<ToolbarStorage.Entry> and conformance ArraySlice<A>, type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>);
      outlined destroy of TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?(v85, &lazy cache variable for type metadata for ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, type metadata accessor for ArraySlice<ToolbarStorage.Entry>, lazy protocol witness table accessor for type ArraySlice<ToolbarStorage.Entry> and conformance ArraySlice<A>, type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>);
      v103[0] = 0;
      v103[1] = v61;
      v103[2] = v73;
      v103[3] = v48;
      v103[4] = v70;
      v103[5] = v47;
      *&v104 = v72;
      *(&v104 + 1) = v71;
      *&v105 = 0;
      BYTE8(v105) = v49;
      outlined destroy of TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?(v103, &lazy cache variable for type metadata for TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, type metadata accessor for TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>, v60, type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>);
      v88[1] = v109;
      v88[2] = v110;
      v89 = v111;
      v87 = v107;
      v88[0] = v108;
      outlined destroy of TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?(&v87, &lazy cache variable for type metadata for ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, type metadata accessor for ArraySlice<ToolbarStorage.Entry>, lazy protocol witness table accessor for type ArraySlice<ToolbarStorage.Entry> and conformance ArraySlice<A>, type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>);
      return;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

double static InferredToolbarModifier.OnScrollStateChange._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v32 = a4;
  v74 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  v8 = a2[1];
  v52 = a2[2];
  v53 = v7;
  v9 = a2[3];
  v54 = a2[4];
  v10 = a2[1];
  v50 = *a2;
  v51 = v10;
  v46 = v52;
  v47 = v9;
  v48 = a2[4];
  v11 = *a1;
  v55 = *(a2 + 20);
  v49 = *(a2 + 20);
  v44 = v50;
  v45 = v8;
  outlined init with copy of _ViewInputs(&v50, &v38);
  PreferenceKeys.add(_:)();
  v56[2] = v46;
  v56[3] = v47;
  v56[4] = v48;
  v57 = v49;
  v56[0] = v44;
  v56[1] = v45;
  v40[0] = v46;
  v40[1] = v47;
  v40[2] = v48;
  LODWORD(v40[3]) = v49;
  v38 = v44;
  v39 = v45;
  v12 = outlined init with copy of _ViewInputs(v56, v58);
  a3(v41, v12, &v38);
  v58[2] = v40[0];
  v58[3] = v40[1];
  v58[4] = v40[2];
  v59 = v40[3];
  v58[0] = v38;
  v58[1] = v39;
  outlined destroy of _ViewInputs(v58);
  *&v14 = *(&v41[0] + 1);
  v13 = *&v41[0];
  *&v38 = *&v41[0];
  *v33 = v14;
  DWORD2(v38) = DWORD2(v41[0]);
  v15 = PreferencesOutputs.subscript.getter();
  if ((v15 & 0x100000000) == 0)
  {
    v16 = v15;
    v37 = v11;
    type metadata accessor for InferredToolbarModifier.OnScrollStateChange();
    type metadata accessor for _GraphValue();
    v30 = _GraphValue.value.getter();
    v41[2] = v52;
    v41[3] = v53;
    v41[4] = v54;
    v42 = v55;
    v41[0] = v50;
    v41[1] = v51;
    v17 = _ViewInputs.position.getter();
    v31 = a5;
    v28 = HIDWORD(v53);
    v29 = DWORD2(v54);
    v18 = DWORD2(v51);
    default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(&v34);
    v19 = v35;
    v20 = v36;
    _s7SwiftUI19ScrollGeometryStateVSgWOi0_(&v38);
    v64 = v40[2];
    v65 = v40[3];
    *v66 = v40[4];
    *&v66[13] = *(&v40[4] + 13);
    v60 = v38;
    v61 = v39;
    v62 = v40[0];
    v63 = v40[1];
    v67 = v38;
    v68 = v39;
    v69 = v40[0];
    v70 = v40[1];
    v71 = v40[2];
    v72 = v40[3];
    v73[0] = v40[4];
    *(v73 + 13) = *(&v40[4] + 13);
    *&v43[49] = v40[2];
    *&v43[53] = v40[3];
    *&v43[57] = v73[0];
    *(&v43[60] + 1) = *(&v40[4] + 13);
    *&v43[33] = v38;
    *&v43[37] = v39;
    *&v43[41] = v40[0];
    *&v43[45] = v40[1];
    *&v43[17] = v40[2];
    *&v43[21] = v40[3];
    *&v43[25] = *v66;
    *&v43[29] = *&v66[16];
    *&v43[1] = v38;
    *&v43[5] = v39;
    *&v43[9] = v40[0];
    *&v43[13] = v40[1];
    *&v38 = __PAIR64__(v16, v30);
    *(&v38 + 1) = __PAIR64__(v29, v17);
    *&v39 = __PAIR64__(v18, v28);
    *(&v39 + 1) = v34;
    LODWORD(v40[0]) = v19;
    BYTE4(v40[0]) = v20;
    DWORD2(v40[0]) = 0;
    v21 = memcpy(v40 + 12, v43, 0x101uLL);
    MEMORY[0x1EEE9AC00](v21);
    v26 = type metadata accessor for InferredToolbarModifier.ScrollGeometryActionBinding();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for State<InferredToolbarState>(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v38, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, &v25, v26, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
    a5 = v31;
    AGGraphSetFlags();
  }

  v40[0] = v46;
  v40[1] = v47;
  v40[2] = v48;
  LODWORD(v40[3]) = v49;
  v38 = v44;
  v39 = v45;
  outlined destroy of _ViewInputs(&v38);
  *a5 = v13;
  result = v33[0];
  a5[1] = *&v33[0];
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance InferredToolbarModifier<A>.OnScrollStateChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t InferredToolbarModifier.ScrollGeometryActionBinding.modifier.getter()
{
  type metadata accessor for InferredToolbarModifier.OnScrollStateChange();
  v0 = *AGGraphGetValue();

  return v0;
}

uint64_t *InferredToolbarModifier.ScrollGeometryActionBinding.updateValue()()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (v2 != *AGGraphGetValue() >> 1)
  {
    *(v1 + 40) = *AGGraphGetValue() >> 1;
    *(v1 + 28) = 0xFFFFFFFFLL;
    *(v1 + 36) = 0;
    _s7SwiftUI19ScrollGeometryStateVSgWOi0_(__dst);
    v170 = __dst[4];
    v171 = __dst[5];
    *v172 = __dst[6];
    *&v172[13] = *(&__dst[6] + 13);
    v166 = __dst[0];
    v167 = __dst[1];
    v168 = __dst[2];
    v169 = __dst[3];
    v173 = __dst[0];
    v178 = __dst[5];
    v179[0] = __dst[6];
    *(v179 + 13) = *(&__dst[6] + 13);
    v174 = __dst[1];
    v175 = __dst[2];
    v177 = __dst[4];
    v176 = __dst[3];
    v3 = __dst[5];
    *(v1 + 240) = __dst[4];
    *(v1 + 256) = v3;
    *(v1 + 272) = v179[0];
    *(v1 + 285) = *(v179 + 13);
    v4 = v174;
    *(v1 + 176) = v173;
    *(v1 + 192) = v4;
    v5 = v176;
    *(v1 + 208) = v175;
    *(v1 + 224) = v5;
    v6 = v171;
    *(v1 + 112) = v170;
    *(v1 + 128) = v6;
    v7 = *&v172[16];
    *(v1 + 144) = *v172;
    *(v1 + 160) = v7;
    v8 = v167;
    *(v1 + 48) = v166;
    *(v1 + 64) = v8;
    v9 = v169;
    *(v1 + 80) = v168;
    *(v1 + 96) = v9;
  }

  type metadata accessor for State<InferredToolbarState>(0, &lazy cache variable for type metadata for [ScrollGeometryState], MEMORY[0x1E697F7D0], MEMORY[0x1E69E62F8]);
  result = AGGraphGetValue();
  if (v11)
  {
    v12 = *result;

    if ((UpdateCycleDetector.dispatch(label:isDebug:)() & 1) == 0)
    {
    }

    AGGraphClearUpdate();
    type metadata accessor for InferredToolbarModifier.ScrollGeometryActionBinding();
    type metadata accessor for CGPoint(0);
    Value = AGGraphGetValue();
    v14 = *Value;
    v15 = Value[1];
    AGGraphSetUpdate();
    AGGraphClearUpdate();
    v16 = AGGraphGetValue();
    v87 = v16[1];
    v89 = *v16;
    AGGraphSetUpdate();
    AGGraphClearUpdate();
    memcpy(__dst, v1, 0x12DuLL);
    AlertTransformModifier.Transform.transform.getter(&v104);
    AGGraphSetUpdate();
    v17 = v104;
    v83 = v106;
    v85 = v105;
    static ScrollGeometryState.zero.getter();
    v133[4] = __dst[4];
    v133[5] = __dst[5];
    v133[6] = __dst[6];
    v133[0] = __dst[0];
    v133[1] = __dst[1];
    v133[2] = __dst[2];
    v133[3] = __dst[3];
    v80 = __dst[7];
    v132 = BYTE3(__dst[7]);
    v131 = *(&__dst[7] + 1);
    v81 = DWORD2(__dst[7]);
    v82 = DWORD1(__dst[7]);
    v18 = memcpy(__dst, v1, 0x12DuLL);
    *v101 = v89;
    *&v101[16] = v87;
    v19 = MEMORY[0x18D00B390](v18);
    *v91 = v17;
    *&v91[16] = v85;
    *&v91[32] = v83;
    InferredToolbarModifier.ScrollGeometryActionBinding.findBestStates(in:position:size:transform:)(v12, v91, &v104, v14, v15, v19, v20);

    v140 = v108;
    v141 = v109;
    v142 = *v110;
    v136 = v104;
    v137 = v105;
    v139 = v107;
    v138 = v106;
    v21 = v110[16];
    v135 = v110[19];
    v134 = *&v110[17];
    v22 = *&v110[20];
    v23 = *&v110[24];
    v79 = v110[28];
    v149 = v115;
    v150 = v116;
    v151 = v117;
    v145 = v111;
    v146 = v112;
    v148 = v114;
    v147 = v113;
    v90 = v118;
    v144 = v120;
    v143 = v119;
    v88 = v121;
    v86 = v122;
    v84 = v123;
    _s7SwiftUI19ScrollGeometryStateVSgWOi0_(&v152);
    v24 = swift_allocObject();
    v25 = v157;
    v24[5] = v156;
    v24[6] = v25;
    v24[7] = v158[0];
    *(v24 + 125) = *(v158 + 13);
    v26 = v153;
    v24[1] = v152;
    v24[2] = v26;
    v27 = v155;
    v24[3] = v154;
    v24[4] = v27;
    v28 = *(v1 + 80);
    *&v91[51] = *(v1 + 96);
    v29 = *(v1 + 128);
    *&v91[67] = *(v1 + 112);
    *&v91[83] = v29;
    *&v91[99] = *(v1 + 144);
    v30 = *(v1 + 64);
    *&v91[3] = *(v1 + 48);
    v31 = *(v1 + 160);
    LOWORD(v94) = *(v1 + 161);
    BYTE2(v94) = *(v1 + 163);
    v32 = *(v1 + 164);
    v33 = *(v1 + 168);
    v34 = *(v1 + 172);
    v161 = v134;
    v162 = v135;
    *&v91[19] = v30;
    *&v91[35] = v28;
    v159[1] = v137;
    v159[0] = v136;
    v159[6] = v142;
    v159[5] = v141;
    v159[4] = v140;
    v159[2] = v138;
    v159[3] = v139;
    v160 = v21;
    v78 = v22;
    v163 = v22;
    v164 = v23;
    v165 = v79;
    if (_s7SwiftUI19ScrollGeometryStateVSgWOg(v159) == 1)
    {
      __dst[4] = *&v91[67];
      __dst[5] = *&v91[83];
      __dst[6] = *&v91[99];
      __dst[0] = *&v91[3];
      __dst[1] = *&v91[19];
      __dst[3] = *&v91[51];
      __dst[2] = *&v91[35];
      *(&__dst[7] + 1) = v94;
      BYTE3(__dst[7]) = BYTE2(v94);
      LOBYTE(__dst[7]) = v31;
      *(&__dst[7] + 4) = __PAIR64__(v33, v32);
      BYTE12(__dst[7]) = v34;
      if (_s7SwiftUI19ScrollGeometryStateVSgWOg(__dst) == 1)
      {
LABEL_7:
        v128 = v156;
        v129 = v157;
        v130[0] = v158[0];
        *(v130 + 13) = *(v158 + 13);
        v124 = v152;
        v125 = v153;
        v126 = v154;
        v127 = v155;
        v35 = v80;
        goto LABEL_20;
      }
    }

    else
    {
      __dst[4] = *&v91[67];
      __dst[5] = *&v91[83];
      __dst[6] = *&v91[99];
      __dst[0] = *&v91[3];
      __dst[1] = *&v91[19];
      __dst[3] = *&v91[51];
      __dst[2] = *&v91[35];
      *(&__dst[7] + 1) = v94;
      BYTE3(__dst[7]) = BYTE2(v94);
      LOBYTE(__dst[7]) = v31;
      *(&__dst[7] + 4) = __PAIR64__(v33, v32);
      BYTE12(__dst[7]) = v34;
      if (_s7SwiftUI19ScrollGeometryStateVSgWOg(__dst) != 1)
      {
        *&v101[64] = *&v91[67];
        *&v101[80] = *&v91[83];
        *&v101[96] = *&v91[99];
        *v101 = *&v91[3];
        *&v101[16] = *&v91[19];
        *&v101[32] = *&v91[35];
        *&v101[48] = *&v91[51];
        v108 = v140;
        v109 = v141;
        *v110 = v142;
        v104 = v136;
        v105 = v137;
        v106 = v138;
        v107 = v139;
        v36 = v21;
        if ((MEMORY[0x18D004CD0](&v104, v101) & 1) != 0 && v21 == v31)
        {
          v37 = v78;
          if (static WeakAttribute.== infix(_:_:)())
          {
            goto LABEL_7;
          }

          v35 = v80;
LABEL_12:
          __dst[4] = v140;
          __dst[5] = v141;
          __dst[6] = v142;
          __dst[0] = v136;
          __dst[1] = v137;
          __dst[3] = v139;
          __dst[2] = v138;
          LOBYTE(__dst[7]) = v36;
          BYTE3(__dst[7]) = v135;
          *(&__dst[7] + 1) = v134;
          *(&__dst[7] + 4) = __PAIR64__(v23, v37);
          BYTE12(__dst[7]) = v79;
          v38 = _s7SwiftUI19ScrollGeometryStateVSgWOg(__dst);
          v39 = &v136;
          if (v38 == 1)
          {
            v39 = v133;
          }

          v40 = v39[5];
          v41 = &v134;
          *&v101[64] = v39[4];
          *&v101[80] = v40;
          if (v38 == 1)
          {
            v41 = &v131;
            v42 = v35;
          }

          else
          {
            v42 = v36;
          }

          v44 = v81;
          v43 = v82;
          if (v38 != 1)
          {
            v43 = v37;
            v44 = v23;
          }

          *&v101[96] = v39[6];
          v45 = v39[1];
          *v101 = *v39;
          *&v101[16] = v45;
          v46 = v39[3];
          *&v101[32] = v39[2];
          *&v101[48] = v46;
          v102 = *v41;
          v103 = *(v41 + 2);
          v108 = *&v101[64];
          v109 = *&v101[80];
          *v110 = *&v101[96];
          v104 = *v101;
          v105 = v45;
          v106 = *&v101[32];
          v107 = v46;
          v110[16] = v42;
          *&v110[17] = v102;
          v110[19] = v103;
          *&v110[20] = v43;
          *&v110[24] = v44;
          _s7SwiftUI19ScrollGeometryStateVSgWOi_(&v104);
          v128 = v108;
          v129 = v109;
          v130[0] = *v110;
          *(v130 + 13) = *&v110[13];
          v124 = v104;
          v125 = v105;
          v126 = v106;
          v127 = v107;
LABEL_20:
          v47 = *(v1 + 288);
          v102 = *(v1 + 289);
          v103 = *(v1 + 291);
          v48 = *(v1 + 292);
          v49 = *(v1 + 296);
          v50 = *(v1 + 300);
          v51 = *(v1 + 208);
          *&v101[51] = *(v1 + 224);
          v52 = *(v1 + 256);
          *&v101[67] = *(v1 + 240);
          *&v101[83] = v52;
          *&v101[99] = *(v1 + 272);
          v53 = *(v1 + 192);
          *&v101[3] = *(v1 + 176);
          *&v101[19] = v53;
          *&v101[35] = v51;
          v104 = v145;
          v105 = v146;
          v109 = v150;
          *v110 = v151;
          v107 = v148;
          v108 = v149;
          v106 = v147;
          v110[16] = v90;
          v110[19] = v144;
          *&v110[17] = v143;
          *&v110[20] = v88;
          *&v110[24] = v86;
          v110[28] = v84;
          if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v104) == 1)
          {
            __dst[4] = *&v101[67];
            __dst[5] = *&v101[83];
            __dst[6] = *&v101[99];
            __dst[0] = *&v101[3];
            __dst[1] = *&v101[19];
            __dst[3] = *&v101[51];
            __dst[2] = *&v101[35];
            *(&__dst[7] + 1) = v102;
            BYTE3(__dst[7]) = v103;
            LOBYTE(__dst[7]) = v47;
            *(&__dst[7] + 4) = __PAIR64__(v49, v48);
            BYTE12(__dst[7]) = v50;
            if (_s7SwiftUI19ScrollGeometryStateVSgWOg(__dst) == 1)
            {
LABEL_32:
              *&v91[64] = v128;
              *&v91[80] = v129;
              *&v91[96] = v130[0];
              *&v91[109] = *(v130 + 13);
              *v91 = v124;
              *&v91[16] = v125;
              *&v91[32] = v126;
              *&v91[48] = v127;
              if (_s7SwiftUI19ScrollGeometryStateVSgWOg(v91) != 1 || (v66 = v24[6], __dst[4] = v24[5], __dst[5] = v66, __dst[6] = v24[7], *(&__dst[6] + 13) = *(v24 + 125), v67 = v24[2], __dst[0] = v24[1], __dst[1] = v67, v68 = v24[4], __dst[2] = v24[3], __dst[3] = v68, _s7SwiftUI19ScrollGeometryStateVSgWOg(__dst) != 1))
              {
                AGGraphClearUpdate();
                memcpy(__dst, v1, 0x12DuLL);
                v69 = InferredToolbarModifier.ScrollGeometryActionBinding.modifier.getter();
                v71 = v70;
                v73 = v72;
                AGGraphSetUpdate();
                LOBYTE(__dst[0]) = 17;
                v74 = swift_allocObject();
                v75 = v129;
                *(v74 + 80) = v128;
                *(v74 + 96) = v75;
                *(v74 + 112) = v130[0];
                *(v74 + 125) = *(v130 + 13);
                v76 = v125;
                *(v74 + 16) = v124;
                *(v74 + 32) = v76;
                v77 = v127;
                *(v74 + 48) = v126;
                *(v74 + 64) = v77;
                *(v74 + 144) = v69;
                *(v74 + 152) = v71;
                *(v74 + 160) = v73;
                *(v74 + 168) = v24;

                static Update.enqueueAction(reason:_:)();
              }
            }
          }

          else
          {
            __dst[4] = *&v101[67];
            __dst[5] = *&v101[83];
            __dst[6] = *&v101[99];
            __dst[0] = *&v101[3];
            __dst[1] = *&v101[19];
            __dst[3] = *&v101[51];
            __dst[2] = *&v101[35];
            *(&__dst[7] + 1) = v102;
            BYTE3(__dst[7]) = v103;
            LOBYTE(__dst[7]) = v47;
            *(&__dst[7] + 4) = __PAIR64__(v49, v48);
            BYTE12(__dst[7]) = v50;
            if (_s7SwiftUI19ScrollGeometryStateVSgWOg(__dst) != 1)
            {
              v98 = *&v101[67];
              v99 = *&v101[83];
              v100 = *&v101[99];
              v94 = *&v101[3];
              v95 = *&v101[19];
              v96 = *&v101[35];
              v97 = *&v101[51];
              *&v91[64] = v149;
              *&v91[80] = v150;
              *&v91[96] = v151;
              *v91 = v145;
              *&v91[16] = v146;
              *&v91[32] = v147;
              *&v91[48] = v148;
              if (MEMORY[0x18D004CD0](v91, &v94) & 1) != 0 && v90 == v47 && (static WeakAttribute.== infix(_:_:)())
              {
                goto LABEL_32;
              }
            }
          }

          __dst[4] = v149;
          __dst[5] = v150;
          __dst[6] = v151;
          __dst[0] = v145;
          __dst[1] = v146;
          __dst[3] = v148;
          __dst[2] = v147;
          LOBYTE(__dst[7]) = v90;
          BYTE3(__dst[7]) = v144;
          *(&__dst[7] + 1) = v143;
          *(&__dst[7] + 4) = __PAIR64__(v86, v88);
          BYTE12(__dst[7]) = v84;
          v54 = _s7SwiftUI19ScrollGeometryStateVSgWOg(__dst);
          v55 = &v145;
          if (v54 == 1)
          {
            v55 = v133;
          }

          v56 = v55[5];
          v57 = &v143;
          v98 = v55[4];
          v99 = v56;
          if (v54 == 1)
          {
            v57 = &v131;
            v58 = v35;
          }

          else
          {
            v58 = v90;
          }

          v60 = v81;
          v59 = v82;
          if (v54 != 1)
          {
            v59 = v88;
            v60 = v86;
          }

          v100 = v55[6];
          v61 = v55[1];
          v94 = *v55;
          v95 = v61;
          v62 = v55[3];
          v96 = v55[2];
          v97 = v62;
          v92 = *v57;
          v93 = *(v57 + 2);
          *&v91[64] = v98;
          *&v91[80] = v99;
          *&v91[96] = v100;
          *v91 = v94;
          *&v91[16] = v61;
          *&v91[32] = v96;
          *&v91[48] = v62;
          v91[112] = v58;
          *&v91[113] = v92;
          v91[115] = v93;
          *&v91[116] = v59;
          *&v91[120] = v60;
          _s7SwiftUI19ScrollGeometryStateVSgWOi_(v91);
          v63 = *&v91[80];
          v24[5] = *&v91[64];
          v24[6] = v63;
          v24[7] = *&v91[96];
          *(v24 + 125) = *&v91[109];
          v64 = *&v91[16];
          v24[1] = *v91;
          v24[2] = v64;
          v65 = *&v91[48];
          v24[3] = *&v91[32];
          v24[4] = v65;
          goto LABEL_32;
        }

        v35 = v80;
LABEL_11:
        v37 = v78;
        goto LABEL_12;
      }
    }

    v35 = v80;
    v36 = v21;
    goto LABEL_11;
  }

  return result;
}

double InferredToolbarModifier.ScrollGeometryActionBinding.findBestStates(in:position:size:transform:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v47 = a2[1];
  v48 = *a2;
  v45 = *(a2 + 1);
  v46 = *(a2 + 2);
  _s7SwiftUI19ScrollGeometryStateVSgWOi0_(&v90);
  v80 = v94;
  v81 = v95;
  *v82 = v96[0];
  *&v82[13] = *(v96 + 13);
  v76 = v90;
  v77 = v91;
  v78 = v92;
  v79 = v93;
  v83 = v90;
  v84 = v91;
  v85 = v92;
  v86 = v93;
  v87 = v94;
  v88 = v95;
  v89[0] = v96[0];
  *(v89 + 13) = *(v96 + 13);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + (v8 << 7) - 96);
    for (i = v8 - 1; ; --i)
    {
      v11 = v9[5];
      v12 = v9[3];
      v73 = v9[4];
      v74 = v11;
      v13 = v9[5];
      v75[0] = v9[6];
      *(v75 + 12) = *(v9 + 108);
      v14 = v9[1];
      v69 = *v9;
      v70 = v14;
      v15 = v9[3];
      v17 = *v9;
      v16 = v9[1];
      v71 = v9[2];
      v72 = v15;
      v94 = v73;
      v95 = v13;
      v96[0] = v9[6];
      *(v96 + 12) = *(v9 + 108);
      v90 = v17;
      v91 = v16;
      v92 = v71;
      v93 = v12;
      ScrollGeometryState.transform.getter();
      v18 = v53;
      if (v53 != 1)
      {
        v19 = *(&v53 + 1);
        v20 = v54;
        v21 = v55;
        v65 = a4;
        v66 = a5;
        v67 = a6;
        v68 = a7;
        hostingViewCoordinateSpace.getter();
        *&v53 = v61;
        BYTE8(v55) = 1;
        *&v90 = v48;
        *(&v90 + 1) = v47;
        v91 = v45;
        v92 = v46;
        CGRect.convert(to:transform:)();
        outlined destroy of CoordinateSpace(&v53);
        v94 = v73;
        v95 = v74;
        v96[0] = v75[0];
        v90 = v69;
        v91 = v70;
        v92 = v71;
        v93 = v72;
        ScrollGeometry.bounds.getter();
        v61 = v22;
        v62 = v23;
        v63 = v24;
        v64 = v25;
        hostingViewCoordinateSpace.getter();
        *&v53 = v60;
        BYTE8(v55) = 1;
        *&v90 = v18;
        *(&v90 + 1) = v19;
        v91 = v20;
        v92 = v21;
        CGRect.convert(to:transform:)();
        outlined destroy of CoordinateSpace(&v53);
        v26 = v65;
        v27 = v66;
        v28 = v67;
        v29 = v68;
        v30 = v61;
        v31 = v62;
        v32 = v63;
        v33 = v64;
        if (v66 == v62)
        {
          v94 = v73;
          v95 = v74;
          v96[0] = v75[0];
          *(v96 + 12) = *(v75 + 12);
          v90 = v69;
          v91 = v70;
          v92 = v71;
          v93 = v72;
          _s7SwiftUI19ScrollGeometryStateVSgWOi_(&v90);
          v80 = v94;
          v81 = v95;
          *v82 = v96[0];
          *&v82[13] = *(v96 + 13);
          v76 = v90;
          v77 = v91;
          v78 = v92;
          v79 = v93;
        }

        v97.origin.x = v26;
        v97.origin.y = v27;
        v97.size.width = v28;
        v97.size.height = v29;
        MaxY = CGRectGetMaxY(v97);
        v98.origin.x = v30;
        v98.origin.y = v31;
        v98.size.width = v32;
        v98.size.height = v33;
        v35 = CGRectGetMaxY(v98);
        outlined consume of EnvironmentValues?(v18);
        if (MaxY == v35)
        {
          v94 = v73;
          v95 = v74;
          v96[0] = v75[0];
          *(v96 + 12) = *(v75 + 12);
          v90 = v69;
          v91 = v70;
          v92 = v71;
          v93 = v72;
          _s7SwiftUI19ScrollGeometryStateVSgWOi_(&v90);
          v87 = v94;
          v88 = v95;
          v89[0] = v96[0];
          *(v89 + 13) = *(v96 + 13);
          v83 = v90;
          v84 = v91;
          v85 = v92;
          v86 = v93;
        }

        v94 = v80;
        v95 = v81;
        v96[0] = *v82;
        *(v96 + 13) = *&v82[13];
        v90 = v76;
        v91 = v77;
        v92 = v78;
        v93 = v79;
        if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v90) != 1)
        {
          v57 = v87;
          v58 = v88;
          v59[0] = v89[0];
          *(v59 + 13) = *(v89 + 13);
          v53 = v83;
          v54 = v84;
          v55 = v85;
          v56 = v86;
          if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v53) != 1)
          {
            break;
          }
        }
      }

      if (!i)
      {
        break;
      }

      v9 -= 8;
    }
  }

  v36 = v88;
  a3[12] = v87;
  a3[13] = v36;
  a3[14] = v89[0];
  *(a3 + 237) = *(v89 + 13);
  v37 = v84;
  a3[8] = v83;
  a3[9] = v37;
  v38 = v86;
  a3[10] = v85;
  a3[11] = v38;
  v39 = v81;
  a3[4] = v80;
  a3[5] = v39;
  v40 = *&v82[16];
  a3[6] = *v82;
  a3[7] = v40;
  v41 = v77;
  *a3 = v76;
  a3[1] = v41;
  result = *&v78;
  v43 = v79;
  a3[2] = v78;
  a3[3] = v43;
  return result;
}

uint64_t specialized closure #5 in InferredToolbarModifier.ScrollGeometryActionBinding.updateValue()(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v9 = a1[5];
  v36 = a1[4];
  v37 = v9;
  v38[0] = a1[6];
  *(v38 + 13) = *(a1 + 109);
  v10 = a1[1];
  v32 = *a1;
  v33 = v10;
  v11 = a1[3];
  v34 = a1[2];
  v35 = v11;
  if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v32) != 1)
  {
    v29 = v36;
    v30 = v37;
    v31[0] = v38[0];
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    *&v17 = a2;
    *(&v17 + 1) = a3;
    *&v18 = a4;
    type metadata accessor for State<InferredToolbarState>(0, &lazy cache variable for type metadata for Binding<InferredToolbarState>, &type metadata for InferredToolbarState, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](v24);
    InferredToolbarState.update(edge:to:)(0);
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  swift_beginAccess();
  v12 = a5[6];
  v29 = a5[5];
  v30 = v12;
  v31[0] = a5[7];
  *(v31 + 13) = *(a5 + 125);
  v13 = a5[2];
  v25 = a5[1];
  v26 = v13;
  v14 = a5[4];
  v27 = a5[3];
  v28 = v14;
  result = _s7SwiftUI19ScrollGeometryStateVSgWOg(&v25);
  if (result != 1)
  {
    v21 = v29;
    v22 = v30;
    v23 = v31[0];
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v20 = v28;
    type metadata accessor for State<InferredToolbarState>(0, &lazy cache variable for type metadata for Binding<InferredToolbarState>, &type metadata for InferredToolbarState, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v16);
    InferredToolbarState.update(edge:to:)(1);
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t static InferredToolbarState.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type VerticalEdge and conformance VerticalEdge();
  v9 = MEMORY[0x1E697DFA8];

  return MEMORY[0x1EEE68930](a1, a2, v9, a3, v8, a4);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance InferredToolbarUserDefaultFeature()
{
  lazy protocol witness table accessor for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature();

  return static UserDefaultKeyedFeature.isEnabled.getter();
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance InferredToolbarUserDefaultFeature@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature();
  result = (*(v4 + 16))(a1, v4);
  *a2 = result & 1;
  return result;
}

uint64_t View.inferToolbar()(uint64_t a1, uint64_t a2)
{
  v6[0] = specialized InferredToolbarState.init()();
  v6[1] = 0;
  type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(0, &lazy cache variable for type metadata for InferredToolbarModifier<AllToolbarEdges>, &type metadata for AllToolbarEdges, &protocol witness table for AllToolbarEdges, type metadata accessor for InferredToolbarModifier);
  MEMORY[0x18D00A570](v6, a1, v4, a2);
}

BOOL specialized static ViewInputPredicate.evaluate(listInputs:)()
{
  type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    return 0;
  }

  v0 = lazy protocol witness table accessor for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature();
  if (((*(v0 + 16))(&type metadata for InferredToolbarUserDefaultFeature, v0) & 1) == 0)
  {
    return 0;
  }

  lazy protocol witness table accessor for type DocumentGroupConfiguration.DocumentKey and conformance DocumentGroupConfiguration.DocumentKey();
  PropertyList.subscript.getter();
  return v2 == *MEMORY[0x1E698D3F8];
}

unint64_t lazy protocol witness table accessor for type InferredToolbarModifier<AllToolbarEdges> and conformance InferredToolbarModifier<A>()
{
  result = lazy protocol witness table cache variable for type InferredToolbarModifier<AllToolbarEdges> and conformance InferredToolbarModifier<A>;
  if (!lazy protocol witness table cache variable for type InferredToolbarModifier<AllToolbarEdges> and conformance InferredToolbarModifier<A>)
  {
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for InferredToolbarModifier<AllToolbarEdges>, &type metadata for AllToolbarEdges, &protocol witness table for AllToolbarEdges, type metadata accessor for InferredToolbarModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InferredToolbarModifier<AllToolbarEdges> and conformance InferredToolbarModifier<A>);
  }

  return result;
}

uint64_t type metadata completion function for InferredToolbarModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for InferredToolbarModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v10[1] = v11[1];
  }

  return v3;
}

uint64_t destroy for InferredToolbarModifier(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for InferredToolbarModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  return a1;
}

uint64_t assignWithCopy for InferredToolbarModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v7[1] = v8[1];

  return a1;
}

uint64_t assignWithTake for InferredToolbarModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v7[1] = v8[1];

  return a1;
}

void type metadata accessor for ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>)
  {
    type metadata accessor for _UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>(255);
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, MEMORY[0x1E697F528], MEMORY[0x1E697F518], MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>);
    }
  }
}

void type metadata accessor for _UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = type metadata accessor for _UnaryViewAdaptor();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>)
  {
    type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>();
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for ModifiedContent<EmptyView, _FrameLayout>, MEMORY[0x1E6981E70], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>);
    }
  }
}

void type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>()
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>);
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Divider, _OpacityEffect>?()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Divider, _OpacityEffect>?)
  {
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for ModifiedContent<Divider, _OpacityEffect>, &type metadata for Divider, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Divider, _OpacityEffect>?);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, type metadata accessor for ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>);
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>)
  {
    type metadata accessor for TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>);
    }
  }
}

void type metadata accessor for (ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)()
{
  if (!lazy cache variable for type metadata for (ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>))
  {
    type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>(255, &lazy cache variable for type metadata for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, type metadata accessor for [ToolbarStorage.Entry], lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>));
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>();
    lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>);
    lazy protocol witness table accessor for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for ModifiedContent<EmptyView, _FrameLayout>, MEMORY[0x1E6981E70], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>, type metadata accessor for ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>);
    lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>();
    lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>);
    lazy protocol witness table accessor for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>(255, a3, a4);
    a5();
    v7 = type metadata accessor for _InsetViewModifier();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>();
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>)
  {
    type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>();
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for ModifiedContent<EmptyView, _FrameLayout>, MEMORY[0x1E6981E70], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>);
    }
  }
}

void type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>)
  {
    type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>();
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, MEMORY[0x1E697F528], MEMORY[0x1E697F518], MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>);
    }
  }
}

void type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>()
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>);
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<Divider, _OpacityEffect>?();
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>);
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>)
  {
    type metadata accessor for TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>);
    }
  }
}

void type metadata accessor for (ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)()
{
  if (!lazy cache variable for type metadata for (ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>))
  {
    type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>(255, &lazy cache variable for type metadata for ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, type metadata accessor for ArraySlice<ToolbarStorage.Entry>, lazy protocol witness table accessor for type ArraySlice<ToolbarStorage.Entry> and conformance ArraySlice<A>);
    type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>(255, &lazy cache variable for type metadata for TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, type metadata accessor for TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>));
    }
  }
}

void type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID();
    v6 = type metadata accessor for ForEach();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)()
{
  if (!lazy cache variable for type metadata for (Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer))
  {
    type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>(255, &lazy cache variable for type metadata for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, type metadata accessor for [ToolbarStorage.Entry], lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer));
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>();
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>();
    lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>);
    lazy protocol witness table accessor for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>, type metadata accessor for _UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>);
    lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>);
    lazy protocol witness table accessor for type StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnableInferredToolbar and conformance EnableInferredToolbar()
{
  result = lazy protocol witness table cache variable for type EnableInferredToolbar and conformance EnableInferredToolbar;
  if (!lazy protocol witness table cache variable for type EnableInferredToolbar and conformance EnableInferredToolbar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnableInferredToolbar and conformance EnableInferredToolbar);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in InferredToolbarModifier.body(content:)(uint64_t a1)
{
  type metadata accessor for InferredToolbarModifier();

  return closure #1 in closure #1 in InferredToolbarModifier.body(content:)(a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type MoveTransition and conformance MoveTransition()
{
  result = lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition;
  if (!lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoveTransition and conformance MoveTransition);
  }

  return result;
}

uint64_t specialized InferredToolbarModifier.backgroundStyle(in:toolbar:opacity:)(uint64_t a1)
{
  ToolbarProxy_V1.appearance(in:)(a1, v3);
  v1 = v4;

  outlined destroy of ToolbarAppearanceConfiguration(v3);
  if (v1)
  {
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(0, &lazy cache variable for type metadata for _OpacityShapeStyle<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E697F5B0]);
    lazy protocol witness table accessor for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>();
  }

  else
  {
    static Material.bar.getter();
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(0, &lazy cache variable for type metadata for _OpacityShapeStyle<Material>, MEMORY[0x1E6981C98], MEMORY[0x1E6981AD0], MEMORY[0x1E697F5B0]);
    lazy protocol witness table accessor for type _OpacityShapeStyle<Material> and conformance _OpacityShapeStyle<A>();
  }

  return AnyShapeStyle.init<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type _BackgroundStyleModifier<AnyShapeStyle> and conformance _BackgroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _BackgroundStyleModifier<AnyShapeStyle> and conformance _BackgroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundStyleModifier<AnyShapeStyle> and conformance _BackgroundStyleModifier<A>)
  {
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundStyleModifier<AnyShapeStyle> and conformance _BackgroundStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Divider, _OpacityEffect>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Divider, _OpacityEffect>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Divider, _OpacityEffect>? and conformance <A> A?)
  {
    type metadata accessor for ModifiedContent<Divider, _OpacityEffect>?();
    lazy protocol witness table accessor for type ModifiedContent<Divider, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Divider, _OpacityEffect>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Divider, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Divider, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Divider, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for ModifiedContent<Divider, _OpacityEffect>, &type metadata for Divider, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Divider, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t outlined destroy of ToolbarPlacement.Role?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for State<InferredToolbarState>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ToolbarStorage.Entry.ID?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined destroy of TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t objectdestroy_6Tm_0()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
    if (*(v0 + 104) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 64);
    }
  }

  return swift_deallocObject();
}

double _s7SwiftUI19ScrollGeometryStateVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 108) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 124) = 1;
  return result;
}

uint64_t getEnumTagSinglePayload for InferredToolbarModifier.ScrollGeometryActionBinding(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 301))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 36);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for InferredToolbarModifier.ScrollGeometryActionBinding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 300) = 0;
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 301) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 301) = 0;
    }

    if (a2)
    {
      *(result + 36) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s7SwiftUI19ScrollGeometryStateVSgWOg(uint64_t a1)
{
  if (*(a1 + 124))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy253_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 237) = *(a2 + 237);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InferredToolbarModifier.ScrollGeometryActionBinding.Candidates(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 253))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InferredToolbarModifier.ScrollGeometryActionBinding.Candidates(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 252) = 0;
    *(result + 248) = 0;
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

  *(result + 253) = v3;
  return result;
}

void type metadata accessor for State<InferredToolbarState>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static BackgroundTaskProtocol<>.runTasks(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return static BackgroundTaskProtocol.runTasks(_:identifier:)(a1, v9, a2, a3, a4);
}

uint64_t _sScG7addTask8priority9operationyScPSg_xyYaYAcntF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TaskPriority?(a1, v12);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = swift_allocObject();
  v19[2] = *(a4 + 16);
  v19[3] = a2;
  v19[4] = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t static BackgroundTaskProtocol<>.runTasks(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return static BackgroundTaskProtocol.runTasks(_:identifier:)(a1, a2, a2, a3, a4);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = a4;
  v27[1] = a5;
  outlined init with copy of TaskPriority?(a3, v13);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    outlined destroy of TaskPriority?(v13);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter();
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_(v21 + 32, v27, a6, v26);

      v22 = v26[0];
      outlined destroy of TaskPriority?(a3);

      return v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a4;
  v23[4] = a5;
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t BackgroundTask.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

void static BackgroundTask.urlSession.getter(uint64_t (**a1)()@<X8>)
{
  a1[3] = &type metadata for UnidentifiedURLSessionBackgroundTask;
  a1[4] = &protocol witness table for UnidentifiedURLSessionBackgroundTask;
  *a1 = protocol witness for static PreferenceKey._isReadableByHost.getter in conformance AccessibilityLargeContentViewTree.Key;
  a1[1] = 0;
}

uint64_t static BackgroundTask.urlSession(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1, uint64_t a2)@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  a3[3] = &type metadata for URLSessionBackgroundTask;
  a3[4] = &protocol witness table for URLSessionBackgroundTask;
  *a3 = partial apply for closure #1 in URLSessionBackgroundTask.init(identifier:);
  a3[1] = v6;
}

uint64_t static BackgroundTask.urlSession(matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for UnidentifiedURLSessionBackgroundTask;
  a3[4] = &protocol witness table for UnidentifiedURLSessionBackgroundTask;
  *a3 = a1;
  a3[1] = a2;
}

uint64_t static BackgroundTask.appRefresh(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for AppRefreshBackgroundTask;
  a3[4] = &protocol witness table for AppRefreshBackgroundTask;
  *a3 = a1;
  a3[1] = a2;
}

uint64_t Scene.backgroundTask<A, B>(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v14 = type metadata accessor for BackgroundTask();
  (*(*(v14 - 8) + 16))(v17, a1, v14);
  v18 = a2;
  v19 = a3;
  v15 = type metadata accessor for BackgroundTaskModifier();

  a8(v17, a4, v15, a7);
  return (*(*(v15 - 8) + 8))(v17, v15);
}

uint64_t static BackgroundTaskProtocol.currentTasks()(uint64_t a1, uint64_t a2)
{
  v12[6] = a1;
  v12[7] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for TaskActionsContainer();
  static Update.ensure<A>(_:)();
  v13[0] = (*(a2 + 40))(a1, a2);
  v13[1] = v4;
  type metadata accessor for TaskActionsContainer.ContainerEntry();
  v5 = type metadata accessor for Array();
  MEMORY[0x18D00C560](v14, v13, v14[2], MEMORY[0x1E69E6158], v5, MEMORY[0x1E69E6168]);

  if (v14[0])
  {
    v13[0] = v14[0];
    MEMORY[0x1EEE9AC00](v6);
    v12[2] = a1;
    v12[3] = a2;
    v7 = type metadata accessor for BackgroundTaskEntry();
    WitnessTable = swift_getWitnessTable();
    v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in static BackgroundTaskProtocol.currentTasks(), v12, v5, v7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

    return v10;
  }

  else
  {
    type metadata accessor for BackgroundTaskEntry();
    return static Array._allocateUninitialized(_:)();
  }
}

uint64_t closure #1 in static BackgroundTaskProtocol.currentTasks()@<X0>(uint64_t *a1@<X8>)
{
  if (static AppGraph.shared)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    type metadata accessor for TaskActionsContainer.Key();

    swift_getWitnessTable();
    GraphHost.preferenceValue<A>(_:)();
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    result = TaskActionsContainer.init()();
    *a1 = result;
  }

  return result;
}

uint64_t TaskActionsContainer.init()()
{
  type metadata accessor for TaskActionsContainer.ContainerEntry();
  v0 = type metadata accessor for Array();
  v1 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v2 = static Array._allocateUninitialized(_:)();
  v3 = specialized Dictionary.init(dictionaryLiteral:)(v2, v1, v0, MEMORY[0x1E69E6168]);

  return v3;
}

uint64_t static BackgroundTaskProtocol.runTasks(_:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](static BackgroundTaskProtocol.runTasks(_:identifier:), 0, 0);
}

uint64_t static BackgroundTaskProtocol.runTasks(_:identifier:)()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = static BackgroundTaskProtocol.currentTasks()(v1, v2);
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v0[7] = v4;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = static BackgroundTaskProtocol.runTasks(_:identifier:);
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return (partial apply for closure #1 in static BackgroundTaskProtocol.runTasks(actions:))(v8, v6, v7);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Result();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[13] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v6[14] = v9;
  v6[15] = *(v9 + 64);
  v6[16] = swift_task_alloc();
  v10 = swift_getAssociatedTypeWitness();
  v6[17] = v10;
  v11 = *(v10 - 8);
  v6[18] = v11;
  v6[19] = *(v11 + 64);
  v6[20] = swift_task_alloc();
  type metadata accessor for TaskPriority?(0);
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t closure #1 in static BackgroundTaskProtocol.runTasks(actions:)()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v23 = v2;
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 112);
  v25 = *(v0 + 152);
  v7 = *(v0 + 104);
  v27 = v1;
  v28 = *(v0 + 64);
  v8 = *(v0 + 32);
  v26 = *(v0 + 40);
  v9 = *(v0 + 24);
  v10 = type metadata accessor for TaskPriority();
  v24 = *(v0 + 48);
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  v11 = v2;
  v12 = v5;
  (*(v3 + 16))(v11, v8, v5);
  (*(v6 + 16))(v4, v9, v7);
  v13 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v14 = (v25 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v24;
  *(v15 + 48) = v26;
  (*(v3 + 32))(v15 + v13, v23, v12);
  (*(v6 + 32))(v15 + v14, v4, v7);

  v16 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(0, 0, v27, &async function pointer to partial apply for closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), v15, v28);
  *(v0 + 176) = v16;
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v18 = *(v0 + 96);
  v19 = *(v0 + 64);
  v20 = MEMORY[0x1E69E73E0];
  v21 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v18, v16, v19, v20, v21);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

{
  (*(v0[10] + 16))(v0[11], v0[12], v0[9]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[12];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[9];
    v4 = v0[10];
    (*(v0[7] + 64))();

    (*(v4 + 8))(v2, v3);
  }

  else
  {
    v5 = v0[11];
    v6 = v0[8];
    v7 = v0[2];
    (*(v0[10] + 8))(v0[12], v0[9]);

    (*(*(v6 - 8) + 32))(v7, v5, v6);
  }

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v6;
  *(v5 + 48) = v3;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = specialized closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DBF8](v8, AssociatedTypeWitness, AssociatedTypeWitness, 0, 0, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), v5, AssociatedTypeWitness);
}

uint64_t closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[11] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[12] = v9;
  v7[13] = *(v9 + 64);
  v7[14] = swift_task_alloc();
  type metadata accessor for TaskPriority?(0);
  v7[15] = swift_task_alloc();
  v10 = swift_getAssociatedTypeWitness();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();
  v11 = type metadata accessor for BackgroundTaskEntry();
  v7[19] = v11;
  v12 = *(v11 - 8);
  v7[20] = v12;
  v7[21] = *(v12 + 64);
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)()
{
  if (MEMORY[0x18D00CDE0](*(v0 + 48), *(v0 + 152)))
  {
    v1 = 0;
    v37 = *(v0 + 168);
    v47 = *(v0 + 160);
    v48 = (v47 + 16);
    v45 = *(*(v0 + 80) + 48);
    v46 = (v47 + 32);
    v38 = *(v0 + 96);
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v5 = *(v47 + 16);
        v5(*(v0 + 192), *(v0 + 48) + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v1, *(v0 + 152));
        v6 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v21 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v37 != 8)
        {
          __break(1u);
          return MEMORY[0x1EEE6DB30](v21, v22, v23, v24, v25, v26, WitnessTable);
        }

        v28 = *(v0 + 192);
        v29 = *(v0 + 152);
        *(v0 + 16) = v21;
        v5 = *v48;
        (*v48)(v28, v0 + 16, v29);
        swift_unknownObjectRelease();
        v6 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_11:
          __break(1u);
          break;
        }
      }

      v8 = *(v0 + 72);
      v7 = *(v0 + 80);
      v9 = *(v0 + 56);
      v10 = *v46;
      (*v46)(*(v0 + 184), *(v0 + 192), *(v0 + 152));
      if (v45(v9, v8, v7))
      {
        v11 = *(v0 + 176);
        v42 = v11;
        v12 = *(v0 + 152);
        v40 = *(v0 + 184);
        v41 = v12;
        v13 = *(v0 + 120);
        v14 = *(v0 + 112);
        v44 = *(v0 + 168);
        v15 = *(v0 + 88);
        v39 = *(v0 + 64);
        v16 = type metadata accessor for TaskPriority();
        v43 = *(v0 + 72);
        (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
        v5(v11, v40, v12);
        (*(v38 + 16))(v14, v39, v15);
        v17 = (*(v47 + 80) + 48) & ~*(v47 + 80);
        v18 = (v44 + *(v38 + 80) + v17) & ~*(v38 + 80);
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        *(v19 + 24) = 0;
        *(v19 + 32) = v43;
        v10(v19 + v17, v42, v41);
        (*(v38 + 32))(v19 + v18, v14, v15);
        v20 = type metadata accessor for TaskGroup();
        _sScG7addTask8priority9operationyScPSg_xyYaYAcntF(v13, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), v19, v20);
        outlined destroy of TaskPriority?(v13);
      }

      v2 = *(v0 + 152);
      v3 = *(v0 + 48);
      (*(v47 + 8))(*(v0 + 184), v2);
      ++v1;
    }

    while (v6 != MEMORY[0x18D00CDE0](v3, v2));
  }

  v31 = *(v0 + 72);
  v30 = *(v0 + 80);
  *(v0 + 24) = **(v0 + 40);
  (*(v30 + 64))(v31, v30);
  v32 = swift_allocObject();
  *(v0 + 200) = v32;
  v32[2] = v31;
  v32[3] = v30;
  v32[4] = v31;
  v33 = swift_task_alloc();
  *(v0 + 208) = v33;
  v33[2] = v31;
  v33[3] = v30;
  v33[4] = partial apply for implicit closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v33[5] = v32;
  v34 = swift_task_alloc();
  *(v0 + 216) = v34;
  v35 = type metadata accessor for TaskGroup();
  WitnessTable = swift_getWitnessTable();
  *v34 = v0;
  v34[1] = closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v22 = *(v0 + 144);
  v26 = *(v0 + 128);
  v21 = *(v0 + 32);
  v23 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.BackgroundTaskProtocol.Response, @in_guaranteed A.BackgroundTaskProtocol.Response) -> (@out A.BackgroundTaskProtocol.Response);
  v24 = v33;
  v25 = v35;

  return MEMORY[0x1EEE6DB30](v21, v22, v23, v24, v25, v26, WitnessTable);
}

void closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[17] + 8))(v2[18], v2[16]);

    v4 = v3[1];

    v4();
  }
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)()
{
  v1 = v0[3];
  v2 = (v1 + *(type metadata accessor for BackgroundTaskEntry() + 36));
  v7 = (*v2 + **v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
  v4 = v0[4];
  v5 = v0[2];

  return v7(v5, v4);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.BackgroundTaskProtocol.Response, @in_guaranteed A.BackgroundTaskProtocol.Response) -> (@out A.BackgroundTaskProtocol.Response)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a2, a3);
  v5 = *(v4 + 8);

  return v5();
}

void *static BackgroundTaskProtocol.runTasks(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static BackgroundTaskProtocol.runTasks(from:)(a1, a2, a3);
}

{
  v5 = static BackgroundTaskProtocol.currentTasks(in:)();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;
  return &async function pointer to partial apply for closure #1 in static BackgroundTaskProtocol.runTasks(actions:);
}

uint64_t closure #1 in static BackgroundTaskProtocol.currentTasks(in:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for TaskActionsContainer.Key();
  swift_getWitnessTable();
  WidgetBundleHost.readPreference<A>(_:)();
  v15[0] = (*(a2 + 40))(a1, a2);
  v15[1] = v6;
  type metadata accessor for TaskActionsContainer.ContainerEntry();
  v7 = type metadata accessor for Array();
  MEMORY[0x18D00C560](v16, v15, v16[2], MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);

  if (v16[0])
  {
    v15[0] = v16[0];
    MEMORY[0x1EEE9AC00](v8);
    v14[2] = a1;
    v14[3] = a2;
    v9 = type metadata accessor for BackgroundTaskEntry();
    WitnessTable = swift_getWitnessTable();
    v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in static BackgroundTaskProtocol.currentTasks(in:), v14, v7, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
  }

  else
  {
    type metadata accessor for BackgroundTaskEntry();
    result = static Array._allocateUninitialized(_:)();
    v12 = result;
  }

  *a3 = v12;
  return result;
}

uint64_t closure #2 in static BackgroundTaskProtocol.currentTasks()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for BackgroundTask();
  (*(*(v9 - 8) + 16))(v14, a1, v9);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v14, v15);
  type metadata accessor for BackgroundTaskProtocol();
  swift_dynamicCast();
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  (*(v6 + 32))(a3, v8, a2);
  v12 = (a3 + *(type metadata accessor for BackgroundTaskEntry() + 36));
  *v12 = v11;
  v12[1] = v10;
}

uint64_t static BackgroundTaskProtocol.currentTasks(in:)()
{
  type metadata accessor for BackgroundTaskEntry();
  type metadata accessor for Array();
  static Update.ensure<A>(_:)();
  return v1;
}

uint64_t closure #1 in static BackgroundTaskProtocol.currentTasks<A>(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for TaskActionsContainer.Key();
  swift_getWitnessTable();
  WidgetHost.readPreference<A>(_:)();
  v20[0] = (*(a3 + 40))(a2, a3);
  v20[1] = v8;
  type metadata accessor for TaskActionsContainer.ContainerEntry();
  v9 = type metadata accessor for Array();
  MEMORY[0x18D00C560](v21, v20, v21[2], MEMORY[0x1E69E6158], v9, MEMORY[0x1E69E6168]);

  if (v21[0])
  {
    v19 = a4;
    v20[0] = v21[0];
    MEMORY[0x1EEE9AC00](v10);
    v11 = *(v7 + 80);
    v12 = *(v7 + 88);
    v18[2] = a2;
    v18[3] = v11;
    v18[4] = a3;
    v18[5] = v12;
    v13 = type metadata accessor for BackgroundTaskEntry();
    WitnessTable = swift_getWitnessTable();
    v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in static BackgroundTaskProtocol.currentTasks<A>(in:), v18, v9, v13, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);

    a4 = v19;
  }

  else
  {
    type metadata accessor for BackgroundTaskEntry();
    result = static Array._allocateUninitialized(_:)();
    v16 = result;
  }

  *a4 = v16;
  return result;
}

uint64_t closure #1 in closure #1 in static BackgroundTaskProtocol.currentTasks<A>(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for BackgroundTask();
  (*(*(v9 - 8) + 16))(v14, a1, v9);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v14, v15);
  type metadata accessor for BackgroundTaskProtocol();
  swift_dynamicCast();
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  (*(v6 + 32))(a3, v8, a2);
  v12 = (a3 + *(type metadata accessor for BackgroundTaskEntry() + 36));
  *v12 = v11;
  v12[1] = v10;
}

uint64_t partial apply for closure #1 in URLSessionBackgroundTask.init(identifier:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) == a1 && *(v2 + 24) == a2)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t get_witness_table_7SwiftUI5SceneRzs8SendableRd__sACRd_0_r_0_lAA15ModifiedContentVyxAA22BackgroundTaskModifierVyqd__qd_0_GGAaBHpxAaBHD1__AhA01_cI0HPyHCHCTm()
{
  type metadata accessor for BackgroundTaskModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

void protocol witness for BackgroundTaskProtocol.register() in conformance AppRefreshBackgroundTask()
{
  v1 = *v0;
  v2 = v0[1];
  if (one-time initialization token for shared != -1)
  {
    v3 = *v0;
    v4 = v0[1];
    swift_once();
    v2 = v4;
    v1 = v3;
  }

  BGTaskSchedulerWrapper.observeTask(_:)(*&v1);
}

uint64_t protocol witness for BackgroundTaskProtocol.predicate(_:) in conformance AppRefreshBackgroundTask(void *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  if (*a1 == *v1 && v2 == v1[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t static BackgroundTaskModifier.makeRegistration(modifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  type metadata accessor for BackgroundTaskModifier();
  type metadata accessor for _GraphValue();
  v13 = _GraphValue.value.getter();
  type metadata accessor for TaskActionsContainer.Key();
  swift_getWitnessTable();
  v15 = type metadata accessor for _PreferenceTransformModifier();
  v16 = type metadata accessor for BackgroundTaskModifier.Registration();
  WitnessTable = swift_getWitnessTable();
  v5 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v13, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v14, v16, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  v7 = AGCreateWeakAttribute();
  v8 = v7;
  v9 = HIDWORD(v7);
  LOBYTE(v13) = 17;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = v8;
  *(v10 + 36) = v9;
  static Update.enqueueAction(reason:_:)();

  return v12;
}

uint64_t closure #1 in closure #1 in static BackgroundTaskModifier.makeRegistration(modifier:)()
{
  type metadata accessor for TaskActionsContainer.Key();
  swift_getWitnessTable();
  type metadata accessor for _PreferenceTransformModifier();

  return AGGraphGetWeakValue();
}

uint64_t BackgroundTaskModifier.Registration.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BackgroundTaskModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

Swift::Void __swiftcall BackgroundTaskModifier.Registration.updateValue()()
{
  v1 = v0;
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for TaskActionsContainer.Key();
  WitnessTable = swift_getWitnessTable();
  v6 = type metadata accessor for _PreferenceTransformModifier();
  if (!AGGraphGetOutputValue())
  {
    BackgroundTaskModifier.Registration.modifier.getter(v21);
    v7 = type metadata accessor for BackgroundTask();
    (*(*(v7 - 8) + 16))(v18, v21, v7);
    v8 = type metadata accessor for BackgroundTaskModifier();
    (*(*(v8 - 8) + 8))(v21, v8);
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v10 + 32))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  BackgroundTaskModifier.Registration.modifier.getter(v21);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v3;
  v12 = v21[1];
  *(v11 + 32) = v21[0];
  *(v11 + 48) = v12;
  *(v11 + 64) = v21[2];
  *(v11 + 80) = v22;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v4, WitnessTable, v13, v14);
  *&v21[0] = _PreferenceTransformModifier.init(key:transform:)();
  *(&v21[0] + 1) = v15;
  MEMORY[0x1EEE9AC00](*&v21[0]);
  v17[2] = v1;
  v17[3] = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v21, partial apply for closure #1 in StatefulRule.value.setter, v17, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v16);
}

uint64_t closure #1 in closure #1 in BackgroundTaskModifier.Registration.updateValue()(void *a1)
{
  type metadata accessor for TaskActionsContainer.ContainerEntry();
  v2 = type metadata accessor for Array();
  v3 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  type metadata accessor for _ContiguousArrayStorage();
  swift_initStackObject();
  v4 = static Array._adoptStorage(_:count:)();
  v6 = v5;
  v7 = type metadata accessor for BackgroundTask();
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  *v6 = (*(v9 + 40))(v8, v9);
  v6[1] = v10;
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v11 = static Array._adoptStorage(_:count:)();
  v13 = v12;
  (*(*(v7 - 8) + 16))(v20, a1, v7);
  v14 = a1[5];
  v15 = a1[6];
  v16 = v21;
  v17 = v20[1];
  *v13 = v20[0];
  *(v13 + 16) = v17;
  *(v13 + 32) = v16;
  *(v13 + 40) = v14;
  *(v13 + 48) = v15;
  _finalizeUninitializedArray<A>(_:)();
  v6[2] = v11;
  _finalizeUninitializedArray<A>(_:)();

  v18 = specialized Dictionary.init(dictionaryLiteral:)(v4, v3, v2, MEMORY[0x1E69E6168]);

  return v18;
}

uint64_t static TaskActionsContainer.Key.reduce(value:nextValue:)(uint64_t a1, void (*a2)(void))
{
  a2();
  type metadata accessor for TaskActionsContainer.ContainerEntry();
  type metadata accessor for Array();
  type metadata accessor for Dictionary();
  return Dictionary.merge(_:uniquingKeysWith:)();
}

uint64_t static BackgroundTaskModifier._makeScene(modifier:inputs:body:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(int *, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  v11 = a2[1];
  v16[0] = *a2;
  v16[1] = v11;
  v17[0] = a2[2];
  *(v17 + 12) = *(a2 + 44);
  v15 = v10;
  static BackgroundTaskModifier.makeRegistration(modifier:)(&v15, a5, a6);
  v12 = type metadata accessor for TaskActionsContainer.Key();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _PreferenceTransformModifier();
  _GraphValue.init(_:)();
  return a7(&v15, v16, a3, a4, v12, WitnessTable);
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance TaskActionsContainer<A, B>.Key@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static TaskActionsContainer.Key.defaultValue.getter(*(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t protocol witness for static PreferenceKey._isReadableByHost.getter in conformance TaskActionsContainer<A, B>.Key(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0700](a1, WitnessTable);
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v7;
    v8[4] = v6;

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in static BackgroundTaskModifier.makeRegistration(modifier:)()
{
  AGGraphClearUpdate();
  closure #1 in closure #1 in static BackgroundTaskModifier.makeRegistration(modifier:)();

  return AGGraphSetUpdate();
}

uint64_t partial apply for closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, a2, a3, v10, v8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[6];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, v12, v13, v14, v1 + v8, v1 + v11, v6, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.BackgroundTaskProtocol.Response, @in_guaranteed A.BackgroundTaskProtocol.Response) -> (@out A.BackgroundTaskProtocol.Response)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 32);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed A.BackgroundTaskProtocol.Response, @in_guaranteed A.BackgroundTaskProtocol.Response) -> (@out A.BackgroundTaskProtocol.Response)(a1, a2, a3, v8);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for BackgroundTaskEntry() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, v12, v13, v1 + v8, v1 + v11, v6, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRTA(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScSy7SwiftUI22TextEditorModificationVG_Tg5(a1, v4);
}

uint64_t initializeWithCopy for BackgroundTaskModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;

  return a1;
}

uint64_t *assignWithCopy for BackgroundTaskModifier(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;

  return a1;
}

uint64_t assignWithTake for BackgroundTaskModifier(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t instantiation function for generic protocol witness table for TaskActionsContainer<A, B>.Key(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #1 in static TaskActionsContainer.Key.reduce(value:nextValue:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TaskActionsContainer.ContainerEntry();
  result = static Array.+ infix(_:_:)();
  *a1 = result;
  return result;
}

uint64_t View.accessibilityAutomationType(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  return View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E6980050], &v4, 1, a2, MEMORY[0x1E6980050], a3);
}

unint64_t lazy protocol witness table accessor for type AXAutomationType and conformance AXAutomationType()
{
  result = lazy protocol witness table cache variable for type AXAutomationType and conformance AXAutomationType;
  if (!lazy protocol witness table cache variable for type AXAutomationType and conformance AXAutomationType)
  {
    type metadata accessor for AXAutomationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AXAutomationType and conformance AXAutomationType);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance AXAutomationType(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t assignWithCopy for FocusItem.ViewItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithTake for FocusItem.ViewItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for FocusItem(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of FocusItem.Base(a1);
    v4 = *(a2 + 32);
    if (v4 == 2)
    {
      swift_unknownObjectWeakTakeInit();
      v5 = 2;
    }

    else if (v4 == 1)
    {
      swift_unknownObjectWeakTakeInit();
      v5 = 1;
    }

    else
    {
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      v5 = *(a2 + 32);
    }

    *(a1 + 32) = v5;
  }

  *(a1 + 33) = *(a2 + 33);
  swift_weakTakeAssign();
  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  return a1;
}

uint64_t assignWithCopy for FocusItem.Base(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 32);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 == 2 || v4 == 1)
    {
      MEMORY[0x18D011290](a1);
    }

    else
    {
    }

    v5 = *(a2 + 32);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      swift_unknownObjectWeakCopyInit();
      v6 = 2;
    }

    else
    {
      if (v5 != 1)
      {
        *a1 = *a2;
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 8) = *(a2 + 8);
        v7 = *(a2 + 24);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = v7;
        *(a1 + 32) = 0;

        return a1;
      }

      swift_unknownObjectWeakCopyInit();
      v6 = 1;
    }

    *(a1 + 32) = v6;
  }

  return a1;
}

uint64_t initializeWithTake for FocusItem.Base(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2 >= 3)
  {
    v2 = *a2 + 3;
  }

  if (v2 == 2)
  {
    result = swift_unknownObjectWeakTakeInit();
    v3 = 2;
  }

  else if (v2 == 1)
  {
    result = swift_unknownObjectWeakTakeInit();
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v4;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t assignWithTake for FocusItem.Base(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 32);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 == 2 || v4 == 1)
    {
      MEMORY[0x18D011290](a1);
    }

    else
    {
    }

    v5 = *(a2 + 32);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      swift_unknownObjectWeakTakeInit();
      v6 = 2;
    }

    else if (v5 == 1)
    {
      swift_unknownObjectWeakTakeInit();
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
    }

    *(a1 + 32) = v6;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for FocusItem.Base(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FocusItem.Base(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for FocusItem.Base(uint64_t a1)
{
  result = *(a1 + 32);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for FocusItem.Base(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 32) = a2;
  return result;
}

void specialized RangeReplaceableCollection.removeFirst()(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_10;
  }

  if (!__CocoaSet.count.getter())
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v5 = MEMORY[0x18D00E9C0](0, v3);
    v4 = v5;
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);

LABEL_6:
    (*(*v4 + 112))(v6, v5);

    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v6, a1);
    specialized RangeReplaceableCollection.removeFirst(_:)(1);
    return;
  }

  __break(1u);
}

{
  if (*(*v1 + 16))
  {
    outlined init with copy of FocusStoreList.Item(*v1 + 32, a1);

    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
  }

  else
  {
    __break(1u);
  }
}

void type metadata accessor for (FocusItem.Base, FocusItem.Base)()
{
  if (!lazy cache variable for type metadata for (FocusItem.Base, FocusItem.Base))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (FocusItem.Base, FocusItem.Base));
    }
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedTokenFieldStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle(&lazy protocol witness table cache variable for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle, type metadata accessor for ResolvedTokenFieldStyle);

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedTokenFieldStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle(&lazy protocol witness table cache variable for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle, type metadata accessor for ResolvedTokenFieldStyle);

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t TokenFieldStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TokenFieldStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

char *initializeBufferWithCopyOfBuffer for ResolvedTokenFieldStyle(char *a1, char *a2)
{
  v4 = type metadata accessor for TokenFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = (v6 + ((v5 + 16) & ~v5));
  }

  else
  {
    *(a1 + 1) = *(a2 + 1);
    type metadata accessor for Binding<AttributedString>();
    v8 = *(v7 + 32);
    v9 = type metadata accessor for AttributedString();
    v10 = *(*(v9 - 8) + 16);

    v10(&a1[v8], &a2[v8], v9);
    v11 = *(v4 + 24);
    v12 = &a1[v11];
    v13 = &a2[v11];
    if (*&a2[v11 + 24])
    {
      v14 = *v13;
      v15 = *(v13 + 1);
      v16 = v13[16];
      outlined copy of Text.Storage(*v13, v15, v16);
      *v12 = v14;
      *(v12 + 1) = v15;
      v12[16] = v16;
      *(v12 + 3) = *(v13 + 3);
    }

    else
    {
      v17 = *(v13 + 1);
      *v12 = *v13;
      *(v12 + 1) = v17;
    }

    v18 = *(v4 + 28);
    v19 = &a1[v18];
    v20 = &a2[v18];
    v21 = *(v20 + 1);
    *v19 = *v20;
    *(v19 + 1) = v21;
  }

  return a1;
}

uint64_t destroy for ResolvedTokenFieldStyle(uint64_t a1)
{

  type metadata accessor for Binding<AttributedString>();
  v3 = *(v2 + 32);
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  v5 = a1 + *(type metadata accessor for TokenFieldConfiguration(0) + 24);
  if (*(v5 + 24))
  {
    outlined consume of Text.Storage(*v5, *(v5 + 8), *(v5 + 16));
  }
}

char *initializeWithCopy for ResolvedTokenFieldStyle(char *a1, char *a2)
{
  v4 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v4;
  type metadata accessor for Binding<AttributedString>();
  v6 = *(v5 + 32);
  v7 = type metadata accessor for AttributedString();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  v9 = type metadata accessor for TokenFieldConfiguration(0);
  v10 = *(v9 + 24);
  v11 = &a1[v10];
  v12 = &a2[v10];
  if (*&a2[v10 + 24])
  {
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = v12[16];
    outlined copy of Text.Storage(*v12, v14, v15);
    *v11 = v13;
    *(v11 + 1) = v14;
    v11[16] = v15;
    *(v11 + 3) = *(v12 + 3);
  }

  else
  {
    v16 = *(v12 + 1);
    *v11 = *v12;
    *(v11 + 1) = v16;
  }

  v17 = *(v9 + 28);
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v20;

  return a1;
}

char *assignWithCopy for ResolvedTokenFieldStyle(char *a1, char *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  type metadata accessor for Binding<AttributedString>();
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  v7 = type metadata accessor for TokenFieldConfiguration(0);
  v8 = *(v7 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = *&a1[v8 + 24];
  v12 = *&a2[v8 + 24];
  if (v11)
  {
    if (v12)
    {
      v13 = *v10;
      v14 = *(v10 + 1);
      v15 = v10[16];
      outlined copy of Text.Storage(*v10, v14, v15);
      v16 = *v9;
      v17 = *(v9 + 8);
      v18 = *(v9 + 16);
      *v9 = v13;
      *(v9 + 8) = v14;
      *(v9 + 16) = v15;
      outlined consume of Text.Storage(v16, v17, v18);
      *(v9 + 24) = *(v10 + 3);
    }

    else
    {
      outlined destroy of Text(v9);
      v22 = *(v10 + 1);
      *v9 = *v10;
      *(v9 + 16) = v22;
    }
  }

  else if (v12)
  {
    v19 = *v10;
    v20 = *(v10 + 1);
    v21 = v10[16];
    outlined copy of Text.Storage(*v10, v20, v21);
    *v9 = v19;
    *(v9 + 8) = v20;
    *(v9 + 16) = v21;
    *(v9 + 24) = *(v10 + 3);
  }

  else
  {
    v23 = *(v10 + 1);
    *v9 = *v10;
    *(v9 + 16) = v23;
  }

  v24 = *(v7 + 28);
  v25 = &a1[v24];
  v26 = &a2[v24];
  v27 = *(v26 + 1);
  *v25 = *v26;
  *(v25 + 1) = v27;

  return a1;
}

char *initializeWithTake for ResolvedTokenFieldStyle(char *a1, char *a2)
{
  v4 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v4;
  type metadata accessor for Binding<AttributedString>();
  v6 = *(v5 + 32);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = type metadata accessor for TokenFieldConfiguration(0);
  v9 = *(v8 + 24);
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 1) = v12;
  *&a1[*(v8 + 28)] = *&a2[*(v8 + 28)];
  return a1;
}

char *assignWithTake for ResolvedTokenFieldStyle(char *a1, char *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  type metadata accessor for Binding<AttributedString>();
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  v7 = type metadata accessor for TokenFieldConfiguration(0);
  v8 = *(v7 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  if (!*&a1[v8 + 24])
  {
    goto LABEL_5;
  }

  if (!*(v10 + 3))
  {
    outlined destroy of Text(v9);
LABEL_5:
    v15 = *(v10 + 1);
    *v9 = *v10;
    *(v9 + 16) = v15;
    goto LABEL_6;
  }

  v11 = v10[16];
  v12 = *v9;
  v13 = *(v9 + 8);
  v14 = *(v9 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  outlined consume of Text.Storage(v12, v13, v14);
  *(v9 + 24) = *(v10 + 3);

LABEL_6:
  *&a1[*(v7 + 28)] = *&a2[*(v7 + 28)];

  return a1;
}

uint64_t type metadata completion function for ResolvedTokenFieldStyle()
{
  result = type metadata accessor for TokenFieldConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TokenFieldConfiguration(char *a1, char *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    *(a1 + 1) = *(a2 + 1);
    type metadata accessor for Binding<AttributedString>();
    v9 = *(v8 + 32);
    v10 = type metadata accessor for AttributedString();
    v11 = *(*(v10 - 8) + 16);

    v11(&a1[v9], &a2[v9], v10);
    v12 = *(a3 + 24);
    v13 = &a1[v12];
    v14 = &a2[v12];
    if (*&a2[v12 + 24])
    {
      v15 = *v14;
      v16 = *(v14 + 1);
      v17 = v14[16];
      outlined copy of Text.Storage(*v14, v16, v17);
      *v13 = v15;
      *(v13 + 1) = v16;
      v13[16] = v17;
      *(v13 + 3) = *(v14 + 3);
    }

    else
    {
      v18 = *(v14 + 1);
      *v13 = *v14;
      *(v13 + 1) = v18;
    }

    v19 = *(a3 + 28);
    v20 = &a1[v19];
    v21 = &a2[v19];
    v22 = *(v21 + 1);
    *v20 = *v21;
    *(v20 + 1) = v22;
  }

  return a1;
}

uint64_t destroy for TokenFieldConfiguration(uint64_t a1, uint64_t a2)
{

  type metadata accessor for Binding<AttributedString>();
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = a1 + *(a2 + 24);
  if (*(v7 + 24))
  {
    outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
  }
}

char *initializeWithCopy for TokenFieldConfiguration(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  type metadata accessor for Binding<AttributedString>();
  v8 = *(v7 + 32);
  v9 = type metadata accessor for AttributedString();
  v10 = *(*(v9 - 8) + 16);

  v10(&a1[v8], &a2[v8], v9);
  v11 = *(a3 + 24);
  v12 = &a1[v11];
  v13 = &a2[v11];
  if (*&a2[v11 + 24])
  {
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = v13[16];
    outlined copy of Text.Storage(*v13, v15, v16);
    *v12 = v14;
    *(v12 + 1) = v15;
    v12[16] = v16;
    *(v12 + 3) = *(v13 + 3);
  }

  else
  {
    v17 = *(v13 + 1);
    *v12 = *v13;
    *(v12 + 1) = v17;
  }

  v18 = *(a3 + 28);
  v19 = &a1[v18];
  v20 = &a2[v18];
  v21 = *(v20 + 1);
  *v19 = *v20;
  *(v19 + 1) = v21;

  return a1;
}

char *assignWithCopy for TokenFieldConfiguration(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  type metadata accessor for Binding<AttributedString>();
  v7 = *(v6 + 32);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 24);
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *&a1[v9 + 24];
  v13 = *&a2[v9 + 24];
  if (v12)
  {
    if (v13)
    {
      v14 = *v11;
      v15 = *(v11 + 1);
      v16 = v11[16];
      outlined copy of Text.Storage(*v11, v15, v16);
      v17 = *v10;
      v18 = *(v10 + 8);
      v19 = *(v10 + 16);
      *v10 = v14;
      *(v10 + 8) = v15;
      *(v10 + 16) = v16;
      outlined consume of Text.Storage(v17, v18, v19);
      *(v10 + 24) = *(v11 + 3);
    }

    else
    {
      outlined destroy of Text(v10);
      v23 = *(v11 + 1);
      *v10 = *v11;
      *(v10 + 16) = v23;
    }
  }

  else if (v13)
  {
    v20 = *v11;
    v21 = *(v11 + 1);
    v22 = v11[16];
    outlined copy of Text.Storage(*v11, v21, v22);
    *v10 = v20;
    *(v10 + 8) = v21;
    *(v10 + 16) = v22;
    *(v10 + 24) = *(v11 + 3);
  }

  else
  {
    v24 = *(v11 + 1);
    *v10 = *v11;
    *(v10 + 16) = v24;
  }

  v25 = *(a3 + 28);
  v26 = &a1[v25];
  v27 = &a2[v25];
  v28 = *(v27 + 1);
  *v26 = *v27;
  *(v26 + 1) = v28;

  return a1;
}

char *initializeWithTake for TokenFieldConfiguration(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  type metadata accessor for Binding<AttributedString>();
  v8 = *(v7 + 32);
  v9 = type metadata accessor for AttributedString();
  (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
  v10 = *(a3 + 24);
  v11 = *(a3 + 28);
  v12 = &a1[v10];
  v13 = &a2[v10];
  v14 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 1) = v14;
  *&a1[v11] = *&a2[v11];
  return a1;
}

char *assignWithTake for TokenFieldConfiguration(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  type metadata accessor for Binding<AttributedString>();
  v7 = *(v6 + 32);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 24);
  v10 = &a1[v9];
  v11 = &a2[v9];
  if (!*&a1[v9 + 24])
  {
    goto LABEL_5;
  }

  if (!*(v11 + 3))
  {
    outlined destroy of Text(v10);
LABEL_5:
    v16 = *(v11 + 1);
    *v10 = *v11;
    *(v10 + 16) = v16;
    goto LABEL_6;
  }

  v12 = v11[16];
  v13 = *v10;
  v14 = *(v10 + 8);
  v15 = *(v10 + 16);
  *v10 = *v11;
  *(v10 + 16) = v12;
  outlined consume of Text.Storage(v13, v14, v15);
  *(v10 + 24) = *(v11 + 3);

LABEL_6:
  *&a1[*(a3 + 28)] = *&a2[*(a3 + 28)];

  return a1;
}

uint64_t lazy protocol witness table accessor for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for TokenFieldStyleModifier<AutomaticTokenFieldStyle>()
{
  if (!lazy cache variable for type metadata for TokenFieldStyleModifier<AutomaticTokenFieldStyle>)
  {
    lazy protocol witness table accessor for type AutomaticTokenFieldStyle and conformance AutomaticTokenFieldStyle();
    v0 = type metadata accessor for TokenFieldStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TokenFieldStyleModifier<AutomaticTokenFieldStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticTokenFieldStyle and conformance AutomaticTokenFieldStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticTokenFieldStyle and conformance AutomaticTokenFieldStyle;
  if (!lazy protocol witness table cache variable for type AutomaticTokenFieldStyle and conformance AutomaticTokenFieldStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticTokenFieldStyle and conformance AutomaticTokenFieldStyle);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TokenFieldConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of ResolvedTokenFieldStyle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

SwiftUI::NSHostingSceneBridgingOptions __swiftcall NSHostingSceneBridgingOptions.init(rawValue:)(Swift::Int rawValue)
{
  result.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions()
{
  result = lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions;
  if (!lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions;
  if (!lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions;
  if (!lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions;
  if (!lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions);
  }

  return result;
}

void *assignWithCopy for AnimatedValueTrack<A>.PacedPathSource(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void *assignWithTake for AnimatedValueTrack<A>.PacedPathSource(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t AnimatedValueTrackSource.keyPath<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v10, a2, v6);
  a3[3] = type metadata accessor for PrependingKeyPathSource();
  a3[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  PrependingKeyPathSource.init(base:keyPath:)(v8, a1, a2, boxed_opaque_existential_1);
}

uint64_t PrependingKeyPathSource.init(base:keyPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for PrependingKeyPathSource();
  *(a4 + *(result + 44)) = a2;
  return result;
}

uint64_t PrependingKeyPathSource.update(value:mix:at:)(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_modifyAtWritableKeyPath();
  (*(*(a4 + 32) + 24))(v8, *(a4 + 24), a1, a2);
  return v7(&v10, 0);
}

uint64_t PrependingKeyPathSource.update(velocity:mix:at:)(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_modifyAtWritableKeyPath();
  (*(*(a4 + 32) + 32))(v8, *(a4 + 24), a1, a2);
  return v7(&v10, 0);
}

uint64_t static PrependingKeyPathSource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AnyKeyPath();
  v4 = type metadata accessor for PrependingKeyPathSource();
  return MEMORY[0x18D00E580](*(a1 + *(v4 + 44)), *(a2 + *(v4 + 44))) & 1;
}

uint64_t AnimatedValueTrack<A>.PacedPathSource.init(duration:keyframes:interpolation:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AnimatedValueKeyframe();
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = *(v8 - 8);
  v27 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = *a2;
  v17 = MEMORY[0x1E69E63B0];
  swift_getTupleTypeMetadata2();
  v18 = static Array._allocateUninitialized(_:)();
  v19 = specialized Dictionary.init(dictionaryLiteral:)(v18, v17, v8, MEMORY[0x1E69E63D0]);

  v33 = v19;
  if (MEMORY[0x18D00CDE0](a1, v8))
  {
    v28 = v16;
    v29 = a3;
    v30 = a4;
    v20 = 0;
    v31 = (v12 + 16);
    v21 = 0.0;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v12 + 16))(v15, a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v20, v8);
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v27 != 8)
        {
          __break(1u);
          return result;
        }

        v32 = *&result;
        (*v31)(v15, &v32, v8);
        swift_unknownObjectRelease();
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          v25 = v33;
          a3 = v29;
          a4 = v30;
          LOBYTE(v16) = v28;
          goto LABEL_13;
        }
      }

      (*(v12 + 32))(v11, v15, v8);
      (*(v12 + 56))(v11, 0, 1, v8);
      v32 = v21;
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      v21 = v21 + 1.0;
      ++v20;
      if (v23 == MEMORY[0x18D00CDE0](a1, v8))
      {
        goto LABEL_11;
      }
    }
  }

  v25 = v19;
LABEL_13:
  LOBYTE(v32) = v16;
  return AnimatedValueTrack<A>.VectorPath.init(keyframes:interpolation:)(v25, &v32, a3, a4);
}