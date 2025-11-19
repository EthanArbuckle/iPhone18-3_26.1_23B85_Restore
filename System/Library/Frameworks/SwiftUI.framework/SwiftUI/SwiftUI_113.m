uint64_t partial apply for closure #1 in View.alert<A, B, C>(_:isPresented:actions:message:auxiliaryContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(v2 + 32);
  v15 = *(v2 + 56);
  v16 = *(v2 + 40);
  v8 = (*(*(v6 - 8) + 80) + 80) & ~*(*(v6 - 8) + 80);
  v9 = v8 + *(*(v6 - 8) + 64);
  v10 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 31) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for ModifiedContent() - 8);
  v13 = (v11 + *(v12 + 80) + 32) & ~*(v12 + 80);
  return closure #1 in View.alert<A, B, C>(_:isPresented:actions:message:auxiliaryContent:)(a1, v2 + v8, *(v2 + v10), *(v2 + v10 + 8), *(v2 + v10 + 16), *(v2 + v11), *(v2 + v11 + 8), *(v2 + v11 + 16), a2, *(v2 + v11 + 24), v2 + v13, v2 + ((v13 + *(v12 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80)), v6, v5, v7, v16, *(&v16 + 1), v15, *(&v15 + 1));
}

uint64_t View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:auxiliaryContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v72 = a16;
  v73 = a17;
  v74 = a18;
  v75 = a19;
  v76 = a20;
  v77 = a21;
  v78 = a22;
  v79 = a23;
  v80 = a24;
  v81 = a5;
  v82 = a6;
  v83 = a7;
  v84 = a8;
  v85 = a10;
  v86 = a11;
  v56 = a16;
  v57 = a17;
  v58 = a18;
  v59 = a19;
  v60 = a20;
  v61 = a21;
  v62 = a22;
  v63 = a23;
  v64 = a24;
  v65 = a5;
  v66 = a6;
  v67 = a7;
  v68 = a8;
  v69 = a12;
  v70 = a13;
  v40 = a16;
  v41 = a17;
  v42 = a18;
  v43 = a19;
  v44 = a20;
  v45 = a21;
  v46 = a22;
  v47 = a23;
  v48 = a24;
  v49 = a5;
  v50 = a6;
  v51 = a7;
  v52 = a8;
  v53 = a14;
  v54 = a15;
  v26 = type metadata accessor for Optional();
  v27 = type metadata accessor for Optional();
  v28 = type metadata accessor for Optional();
  WitnessTable = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  return View.alert<A, B, C>(_:isPresented:actions:message:auxiliaryContent:)(a1, a2, a3 & 1, a4, a5, a6, a7, partial apply for closure #1 in View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:auxiliaryContent:), a9, v71, partial apply for closure #2 in View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:auxiliaryContent:), v55, partial apply for closure #3 in View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:auxiliaryContent:), v39, a16, v26, v27, v28, a21, WitnessTable, v30, v31);
}

uint64_t closure #1 in View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:auxiliaryContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v47[1] = a6;
  v48 = a5;
  v51 = a4;
  v57 = a8;
  v56 = a13;
  v16 = *(a7 - 8);
  v54 = a2;
  v55 = v16;
  MEMORY[0x1EEE9AC00](a1);
  v49 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v47[0] = v47 - v19;
  v20 = type metadata accessor for Optional();
  v50 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v47 - v21;
  v52 = a11;
  v53 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Optional();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v47 - v31;
  v60 = a1;
  v61 = v54;
  v62 = a3;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v59);
  if (v59 == 1)
  {
    v33 = v50;
    (*(v50 + 16))(v22, v51, v20);
    if ((*(v53 + 48))(v22, 1, v52) != 1)
    {
      v37 = v53;
      v38 = v22;
      v39 = v52;
      (*(v53 + 32))(v25, v38, v52);
      v40 = v49;
      v48(v25);
      (*(v37 + 8))(v25, v39);
      v54 = v27;
      v41 = v47[0];
      v35 = v56;
      static ViewBuilder.buildExpression<A>(_:)(v40, a7, v56);
      v36 = v55;
      v42 = *(v55 + 8);
      v42(v40, a7);
      static ViewBuilder.buildExpression<A>(_:)(v41, a7, v35);
      v43 = v41;
      v27 = v54;
      v42(v43, a7);
      (*(v36 + 32))(v29, v40, a7);
      v34 = 0;
      goto LABEL_6;
    }

    (*(v33 + 8))(v22, v20);
  }

  v34 = 1;
  v36 = v55;
  v35 = v56;
LABEL_6:
  (*(v36 + 56))(v29, v34, 1, a7);
  static ToolbarContentBuilder.buildIf<A>(_:)(v29, v32);
  v44 = *(v27 + 8);
  v44(v29, v26);
  v58 = v35;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v32, v26, WitnessTable);
  return (v44)(v32, v26);
}

uint64_t closure #2 in View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:auxiliaryContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v46[1] = a6;
  v47 = a5;
  v50 = a4;
  v56 = a7;
  v55 = a13;
  v15 = *(a8 - 8);
  v53 = a2;
  v54 = v15;
  MEMORY[0x1EEE9AC00](a1);
  v48 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v46[0] = v46 - v18;
  v19 = type metadata accessor for Optional();
  v49 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v46 - v20;
  v51 = a10;
  v52 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v46 - v30;
  v59 = a1;
  v60 = v53;
  v61 = a3;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v58);
  if (v58 == 1)
  {
    v32 = v49;
    (*(v49 + 16))(v21, v50, v19);
    if ((*(v52 + 48))(v21, 1, v51) != 1)
    {
      v36 = v52;
      v37 = v21;
      v38 = v51;
      (*(v52 + 32))(v24, v37, v51);
      v39 = v48;
      v47(v24);
      (*(v36 + 8))(v24, v38);
      v53 = v26;
      v40 = v46[0];
      v34 = v55;
      static ViewBuilder.buildExpression<A>(_:)(v39, a8, v55);
      v35 = v54;
      v41 = *(v54 + 8);
      v41(v39, a8);
      static ViewBuilder.buildExpression<A>(_:)(v40, a8, v34);
      v42 = v40;
      v26 = v53;
      v41(v42, a8);
      (*(v35 + 32))(v28, v39, a8);
      v33 = 0;
      goto LABEL_6;
    }

    (*(v32 + 8))(v21, v19);
  }

  v33 = 1;
  v35 = v54;
  v34 = v55;
LABEL_6:
  (*(v35 + 56))(v28, v33, 1, a8);
  static ToolbarContentBuilder.buildIf<A>(_:)(v28, v31);
  v43 = *(v26 + 8);
  v43(v28, v25);
  v57 = v34;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v31, v25, WitnessTable);
  return (v43)(v31, v25);
}

uint64_t closure #3 in View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:auxiliaryContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v43[1] = a6;
  v44 = a5;
  v47 = a4;
  LODWORD(v50) = a3;
  v49 = a2;
  v53 = a7;
  v51 = *(a9 - 8);
  v52 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v45 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v43[0] = v43 - v17;
  v18 = type metadata accessor for Optional();
  v46 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v43 - v19;
  v48 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v43 - v29;
  v56 = a1;
  v57 = v49;
  v58 = v50;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v55);
  if (v55 == 1)
  {
    v31 = v46;
    (*(v46 + 16))(v20, v47, v18);
    if ((*(v48 + 48))(v20, 1, a10) != 1)
    {
      v35 = v48;
      (*(v48 + 32))(v23, v20);
      v36 = v45;
      v44(v23);
      (*(v35 + 8))(v23, a10);
      v50 = v25;
      v37 = v43[0];
      v33 = v52;
      static ViewBuilder.buildExpression<A>(_:)(v36, a9, v52);
      v34 = v51;
      v38 = *(v51 + 8);
      v38(v36, a9);
      static ViewBuilder.buildExpression<A>(_:)(v37, a9, v33);
      v39 = v37;
      v25 = v50;
      v38(v39, a9);
      (*(v34 + 32))(v27, v36, a9);
      v32 = 0;
      goto LABEL_6;
    }

    (*(v31 + 8))(v20, v18);
  }

  v32 = 1;
  v34 = v51;
  v33 = v52;
LABEL_6:
  (*(v34 + 56))(v27, v32, 1, a9);
  static ToolbarContentBuilder.buildIf<A>(_:)(v27, v30);
  v40 = *(v25 + 8);
  v40(v27, v24);
  v54 = v33;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v30, v24, WitnessTable);
  return (v40)(v30, v24);
}

uint64_t ActionsModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = result;
  *(a1 + 56) = 0;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>, StyleContextWriter<DialogActionStyleContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>, StyleContextWriter<DialogActionStyleContext>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>();
    type metadata accessor for StyleContextWriter<DialogActionStyleContext>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>, StyleContextWriter<DialogActionStyleContext>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>();
    type metadata accessor for _ViewModifier_Content<ActionsModifier>(255, &lazy cache variable for type metadata for TextFieldStyleModifier<PlatformItemListTextFieldStyle>, lazy protocol witness table accessor for type PlatformItemListTextFieldStyle and conformance PlatformItemListTextFieldStyle, &type metadata for PlatformItemListTextFieldStyle, type metadata accessor for TextFieldStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>)
  {
    type metadata accessor for _ViewModifier_Content<ActionsModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ActionsModifier>, lazy protocol witness table accessor for type ActionsModifier and conformance ActionsModifier, &unk_1EFFCFD30, MEMORY[0x1E697FDE8]);
    type metadata accessor for _ViewModifier_Content<ActionsModifier>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle, &type metadata for PlatformItemListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<ActionsModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for StyleContextWriter<DialogActionStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextWriter<DialogActionStyleContext>)
  {
    v0 = type metadata accessor for StyleContextWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextWriter<DialogActionStyleContext>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>, StyleContextWriter<DialogActionStyleContext>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, lazy protocol witness table accessor for type _ViewModifier_Content<ActionsModifier> and conformance _ViewModifier_Content<A>, lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ActionsModifier>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>, TextFieldStyleModifier<PlatformItemListTextFieldStyle>>, StyleContextWriter<DialogActionStyleContext>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ActionsModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ActionsModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ActionsModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<ActionsModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ActionsModifier>, lazy protocol witness table accessor for type ActionsModifier and conformance ActionsModifier, &unk_1EFFCFD30, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ActionsModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t specialized FocusState.projectedValue.getter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for GraphHost();

    if ((static GraphHost.isUpdating.getter() & 1) == 0)
    {
      dispatch thunk of AnyLocation.get()();
    }

    return 0;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v3 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    static Binding.constant(_:)();
    return v4;
  }
}

uint64_t @objc InteropResponder.cut(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return outlined destroy of CommandAction?(v4, type metadata accessor for Any?);
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ResponderCommandsKey(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  *a1 = v6;
  return result;
}

uint64_t protocol witness for CommandAction.perform() in conformance StandardCommandAction()
{
  if (*v0)
  {
    return (*v0)();
  }

  return result;
}

uint64_t closure #1 in OnCommandModifier.body(content:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 48);
  if (*(a2 + 56))
  {
    type metadata accessor for GraphHost();

    if (static GraphHost.isUpdating.getter())
    {
      dispatch thunk of AnyLocation.wasRead.setter();

      if ((v4 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch thunk of AnyLocation.get()();

      if ((v9[0] & 1) == 0)
      {
        return result;
      }
    }
  }

  else if (!*(a2 + 48))
  {
    return result;
  }

  v5 = *a2;
  v6 = *v3;
  if (*(*v3 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(*a2), (v8 & 1) != 0))
  {
    outlined init with copy of _Benchmark(*(v6 + 56) + 40 * v7, v9);
    return outlined destroy of CommandAction?(v9, type metadata accessor for CommandAction?);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    outlined destroy of CommandAction?(v9, type metadata accessor for CommandAction?);
    outlined init with copy of _Benchmark(a2 + 8, v9);
    return specialized Dictionary.subscript.setter(v9, v5);
  }
}

__n128 protocol witness for ViewModifier.body(content:) in conformance OnCommandModifier@<Q0>(uint64_t a1@<X8>)
{
  v3 = specialized FocusState.projectedValue.getter(*(v1 + 48), *(v1 + 56));
  v5 = v4;
  v7 = v6 & 1;
  outlined init with copy of OnCommandModifier(v1, v11);
  v8 = swift_allocObject();
  v9 = v11[3];
  *(v8 + 48) = v11[2];
  *(v8 + 64) = v9;
  *(v8 + 80) = v12;
  result = v11[1];
  *(v8 + 16) = v11[0];
  *(v8 + 32) = result;
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 17) = 1;
  *(a1 + 24) = partial apply for closure #1 in OnCommandModifier.body(content:);
  *(a1 + 32) = v8;
  return result;
}

uint64_t View.onCommand(_:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = &unk_1EFFCFE30;
  v8[5] = &protocol witness table for StandardCommandAction;
  v8[1] = a2;
  v8[2] = a3;
  v8[0] = a1;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  outlined copy of AppIntentExecutor?(a2);
  MEMORY[0x18D00A570](v8, a4, &type metadata for OnCommandModifier, a5);
  return outlined destroy of OnCommandModifier(v8);
}

void View.onPasteCommand(of:perform:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  View.onPasteCommand(of:perform:)();
}

void View.onPasteCommand<A>(of:validator:perform:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  View.onPasteCommand<A>(of:validator:perform:)();
}

unint64_t lazy protocol witness table accessor for type OnCommandModifier and conformance OnCommandModifier()
{
  result = lazy protocol witness table cache variable for type OnCommandModifier and conformance OnCommandModifier;
  if (!lazy protocol witness table cache variable for type OnCommandModifier and conformance OnCommandModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnCommandModifier and conformance OnCommandModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRz16CoreTransferable0E0Rd__r__lAA15ModifiedContentVyxAA17OnCommandModifier33_1D7D458D08B5AD38421D04B7C887FEF0LLVGAaBHPxAaBHD1__AiA0cJ0HPyHCHCTm()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type OnCommandModifier and conformance OnCommandModifier();
  return swift_getWitnessTable();
}

uint64_t initializeWithCopy for OnCommandModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  (**(v4 - 8))(a1 + 8, a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for OnCommandModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for OnCommandModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for OnCommandModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OnCommandModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for CommandAction?()
{
  if (!lazy cache variable for type metadata for CommandAction?)
  {
    type metadata accessor for CommandAction();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CommandAction?);
    }
  }
}

unint64_t type metadata accessor for CommandAction()
{
  result = lazy cache variable for type metadata for CommandAction;
  if (!lazy cache variable for type metadata for CommandAction)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CommandAction);
  }

  return result;
}

uint64_t outlined destroy of CommandAction?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _PreferenceTransformModifier<ResponderCommandsKey> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>();
    _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ResponderCommandsKey>, &type metadata for ResponderCommandsKey, &protocol witness table for ResponderCommandsKey, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>, _PreferenceTransformModifier<ResponderCommandsKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>)
  {
    type metadata accessor for _ViewModifier_Content<OnCommandModifier>();
    _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_0(255, &lazy cache variable for type metadata for FocusStateBindingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], type metadata accessor for FocusStateBindingModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<OnCommandModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<OnCommandModifier>)
  {
    lazy protocol witness table accessor for type OnCommandModifier and conformance OnCommandModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<OnCommandModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<OnCommandModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnCommandModifier>, FocusStateBindingModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<OnCommandModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<OnCommandModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<OnCommandModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<OnCommandModifier>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<OnCommandModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<ResponderCommandsKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<ResponderCommandsKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<ResponderCommandsKey> and conformance _PreferenceTransformModifier<A>)
  {
    _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ResponderCommandsKey>, &type metadata for ResponderCommandsKey, &protocol witness table for ResponderCommandsKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<ResponderCommandsKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

uint64_t SearchSuggestionsModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  swift_getWitnessTable();
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = *(a1 + 16);
  v24 = lazy protocol witness table accessor for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions();
  v7 = *(a1 + 24);
  v36 = &type metadata for EnvironmentValues.SearchSuggestions;
  v37 = v6;
  v38 = v24;
  v39 = v7;
  type metadata accessor for StaticSourceWriter();
  v8 = type metadata accessor for ModifiedContent();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v25 = lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions;
  type metadata accessor for ViewInputFlagModifier<SearchHasSuggestions>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<SearchHasSuggestions>, lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions);
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v29 = v6;
  v30 = v7;
  v31 = v3;
  WitnessTable = swift_getWitnessTable();
  View.viewAlias<A, B>(_:_:)(&type metadata for EnvironmentValues.SearchSuggestions, partial apply for closure #1 in SearchSuggestionsModifier.body(content:), v28, v5, &type metadata for EnvironmentValues.SearchSuggestions, v6, WitnessTable);
  v34 = WitnessTable;
  v35 = &protocol witness table for StaticSourceWriter<A, B>;
  v19 = swift_getWitnessTable();
  lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions();
  View.input<A>(_:)();
  (*(v26 + 8))(v10, v8);
  HasCustom = lazy protocol witness table accessor for type ViewInputFlagModifier<HasCustomAccessory> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<SearchHasSuggestions> and conformance ViewInputFlagModifier<A>, &lazy cache variable for type metadata for ViewInputFlagModifier<SearchHasSuggestions>, v25);
  v32 = v19;
  v33 = HasCustom;
  v21 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v14, v11, v21);
  v22 = *(v12 + 8);
  v22(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)(v17, v11, v21);
  return (v22)(v17, v11);
}

uint64_t closure #1 in SearchSuggestionsModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v8, v9, v10);
  static ViewBuilder.buildExpression<A>(_:)(v7, a2, a3);
  return (*(v5 + 8))(v7, a2);
}

uint64_t View.searchSuggestions<A>(_:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchSuggestionsModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  a1(v13);
  (*(v8 + 32))(v15, v10, a4);
  MEMORY[0x18D00A570](v15, a3, v11, v17);
  return (*(v12 + 8))(v15, v11);
}

uint64_t View.searchable<A>(text:placement:prompt:suggestions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v112 = a5;
  v110 = a3;
  v102 = a9;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v97 = &v79 - v23;
  v90 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v90);
  v108 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v25 - 8);
  type metadata accessor for Binding<AttributedString>();
  MEMORY[0x1EEE9AC00](v26);
  v109 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v105 = (&v79 - v29);
  type metadata accessor for SearchModifier<TextField<EmptyView>>();
  MEMORY[0x1EEE9AC00](v30);
  v106 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a13;
  v107 = v32;
  v100 = type metadata accessor for ModifiedContent();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v79 - v33;
  v91 = *v112;

  if (a10)
  {
    v104 = a6;
    v111 = a10;
    v112 = a7;
    v34 = a2;
    v35 = a8;
  }

  else
  {
    v104 = static Text.System.search.getter();
    v111 = v37;
    v112 = v36;
    v34 = a2;
    v35 = v38;
  }

  v83 = v35;
  v84 = v34;
  v103 = a1;
  v85 = a4;
  v86 = a6;
  v87 = a7;
  v88 = a10;
  v89 = a8;
  v96 = a16;
  v94 = a15;
  v95 = a14;
  v93 = a12;
  v92 = a11;
  outlined copy of Text?(a6, a7, a8, a10);

  outlined copy of Text?(a6, a7, a8, a10);
  AttributeContainer.init()();
  v39 = v105;
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v40 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  *v39 = a1;
  v39[1] = v40;
  outlined init with copy of Binding<AttributedString>(v39, v109, type metadata accessor for Binding<AttributedString>);
  v41 = v107;
  v42 = &v106[v107[12]];
  *v42 = 0;
  *(v42 + 1) = 0;
  *(v42 + 8) = 0;
  v43 = v108;
  *v108 = 2;

  v44 = v35 & 1;
  outlined copy of Text.Storage(v104, v112, v35 & 1);
  v43[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v43 + 1) = 2;
  *(v43 + 1) = 0;
  v43[8] = 1;
  v45 = v90;
  AttributedString.init()();
  v43[*(v45 + 40)] = 0;
  v46 = *(v45 + 44);
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v47 = &v43[v46];
  v48 = byte_1EAB095CC;
  *v47 = static SearchFocusUpdate.empty;
  v47[4] = v48;
  v49 = v111;

  v50 = v104;
  v51 = v112;
  v52 = outlined copy of Text.Storage(v104, v112, v44);
  MEMORY[0x18D009CE0](v116, v52);
  Text.assertUnstyled(_:options:)();
  outlined consume of Text.Storage(v50, v51, v44);

  v53 = v106;
  *(v106 + 1) = v50;
  *(v53 + 16) = v51;
  *(v53 + 24) = v44;
  v82 = v44;
  *(v53 + 32) = v49;
  v111 = v49;
  outlined init with copy of Binding<AttributedString>(v109, v53 + v41[11], type metadata accessor for Binding<AttributedString>);
  v54 = v53 + v41[13];
  outlined init with copy of Binding<AttributedString>(v43, v54, type metadata accessor for SearchFieldState);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  *(v54 + *(v55 + 28)) = 0;
  v56 = v53 + v41[10];
  v90 = v83 & 1;
  v117 = 1;
  v57 = v84;
  v116[0] = v103;
  v116[1] = v84;
  v58 = v85;
  v116[2] = v110;
  v116[3] = v85;

  outlined copy of Text.Storage(v50, v112, v44);
  type metadata accessor for Binding<String>();
  MEMORY[0x18D00ACC0](v115);
  v81 = v115[0];
  v80 = v115[1];
  LODWORD(v83) = v117;
  type metadata accessor for Binding<TextSelection?>(0);
  v60 = v59;
  v61 = *(*(v59 - 8) + 56);
  v62 = v97;
  v61(v97, 1, 1, v59);
  type metadata accessor for TextField<EmptyView>(0, &lazy cache variable for type metadata for TextField<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for TextField);
  v64 = *(v63 + 56);
  v61((v56 + v64), 1, 1, v60);
  LOBYTE(v116[0]) = 0;
  v65 = v80;
  *(v56 + 72) = v81;
  *(v56 + 80) = v65;
  *(v56 + 88) = 0u;
  *(v56 + 104) = 0u;
  *(v56 + 120) = 0u;
  *(v56 + 136) = 0u;
  *(v56 + 152) = 0;
  *(v56 + 156) = 0;
  *(v56 + 160) = v83;
  *(v56 + 161) = 2;
  *(v56 + 163) = 0;
  *(v56 + 168) = 0;
  *(v56 + 180) = 0;
  *v56 = v103;
  *(v56 + 8) = v57;
  v66 = v111;
  *(v56 + 16) = v110;
  *(v56 + 24) = v58;
  *(v56 + 32) = 0;
  v67 = v112;
  *(v56 + 40) = v50;
  *(v56 + 48) = v67;
  *(v56 + 56) = v90;
  *(v56 + 64) = v66;
  outlined assign with take of Binding<TextSelection?>?(v62, v56 + v64);

  *v53 = v91;
  outlined consume of Text.Storage(v50, v67, v82);

  outlined consume of Text?(v86, v87, v89, v88);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v108, type metadata accessor for SearchFieldState);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v109, type metadata accessor for Binding<AttributedString>);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v105, type metadata accessor for Binding<AttributedString>);
  v68 = v98;
  v69 = v101;
  v70 = v94;
  MEMORY[0x18D00A570](v53, v101, v107, v94);
  v71 = _s7SwiftUI16SearchFieldStateVWOhTm_2(v53, type metadata accessor for SearchModifier<TextField<EmptyView>>);
  MEMORY[0x1EEE9AC00](v71);
  v72 = v95;
  *(&v79 - 6) = v69;
  *(&v79 - 5) = v72;
  v73 = v96;
  *(&v79 - 4) = v70;
  *(&v79 - 3) = v73;
  v74 = v93;
  *(&v79 - 2) = v92;
  *(&v79 - 1) = v74;
  v75 = lazy protocol witness table accessor for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>();
  v113 = v70;
  v114 = v75;
  v76 = v100;
  WitnessTable = swift_getWitnessTable();
  View.searchSuggestions<A>(_:)(partial apply for closure #1 in View.searchable<A>(text:placement:prompt:suggestions:), (&v79 - 8), v76, v72, WitnessTable);
  return (*(v99 + 8))(v68, v76);
}

uint64_t View.searchable<A>(text:placement:prompt:suggestions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LODWORD(v93) = a8;
  v90 = a7;
  v92 = a6;
  v91 = a5;
  v108 = a1;
  v109 = a3;
  v106 = a2;
  v102 = a9;
  v103 = a14;
  v104 = a16;
  v100 = a12;
  v101 = a15;
  v99 = a11;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v94 = &v82 - v18;
  v89 = type metadata accessor for SearchFieldState(0) - 8;
  MEMORY[0x1EEE9AC00](v89);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v86 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedString>();
  MEMORY[0x1EEE9AC00](v23);
  v107 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v82 - v26);
  type metadata accessor for SearchModifier<TextField<EmptyView>>();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v105 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a13;
  v97 = type metadata accessor for ModifiedContent();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v82 - v31;
  LODWORD(v91) = *v91;

  LOWORD(v81) = 256;
  v80 = 0;
  v32 = Text.init(_:tableName:bundle:comment:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v88 = v36;
  v39 = v36 & 1;
  outlined copy of Text.Storage(v32, v34, v39);

  AttributeContainer.init()();
  v92 = a4;
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v40 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  *v27 = v108;
  v27[1] = v40;
  v93 = v27;
  v41 = v105;
  outlined init with copy of Binding<AttributedString>(v27, v107, type metadata accessor for Binding<AttributedString>);
  v42 = &v41[v29[12]];
  *v42 = 0;
  *(v42 + 1) = 0;
  *(v42 + 8) = 0;
  *v20 = 2;

  v90 = v32;
  v43 = v34;
  outlined copy of Text.Storage(v32, v34, v39);
  v20[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v20 + 1) = 2;
  *(v20 + 1) = 0;
  v20[8] = 1;
  v44 = v89;
  AttributedString.init()();
  v20[*(v44 + 48)] = 0;
  v45 = *(v44 + 52);
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v46 = &v20[v45];
  v47 = byte_1EAB095CC;
  *v46 = static SearchFocusUpdate.empty;
  v46[4] = v47;

  v48 = v90;
  v49 = outlined copy of Text.Storage(v90, v34, v39);
  MEMORY[0x18D009CE0](v113, v49);
  Text.assertUnstyled(_:options:)();
  outlined consume of Text.Storage(v48, v34, v39);

  *(v41 + 1) = v48;
  *(v41 + 2) = v34;
  v41[24] = v39;
  *(v41 + 4) = v38;
  v50 = &v41[v29[11]];
  v84 = v38;
  outlined init with copy of Binding<AttributedString>(v107, v50, type metadata accessor for Binding<AttributedString>);
  v51 = v29[13];
  v87 = v29;
  v52 = &v41[v51];
  outlined init with copy of Binding<AttributedString>(v20, &v41[v51], type metadata accessor for SearchFieldState);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  *&v52[*(v53 + 28)] = 0;
  v54 = v29[10];
  v85 = v39;
  v55 = &v41[v54];
  v89 = v88 & 1;
  v114 = 1;
  v56 = v106;
  v113[0] = v108;
  v113[1] = v106;
  v57 = v92;
  v113[2] = v109;
  v113[3] = v92;

  outlined copy of Text.Storage(v48, v43, v39);
  type metadata accessor for Binding<String>();
  MEMORY[0x18D00ACC0](v112);
  v83 = v112[0];
  v82 = v112[1];
  LODWORD(v86) = v114;
  type metadata accessor for Binding<TextSelection?>(0);
  v59 = v58;
  v60 = *(*(v58 - 8) + 56);
  v61 = v94;
  v60(v94, 1, 1, v58);
  type metadata accessor for TextField<EmptyView>(0, &lazy cache variable for type metadata for TextField<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for TextField);
  v88 = v20;
  v63 = *(v62 + 56);
  v60(&v55[v63], 1, 1, v59);
  LOBYTE(v113[0]) = 0;
  v64 = v82;
  *(v55 + 9) = v83;
  *(v55 + 10) = v64;
  *(v55 + 88) = 0u;
  *(v55 + 104) = 0u;
  *(v55 + 120) = 0u;
  *(v55 + 136) = 0u;
  v55[152] = 0;
  *(v55 + 39) = 0;
  v55[160] = v86;
  *(v55 + 161) = 2;
  v55[163] = 0;
  *(v55 + 21) = 0;
  v55[180] = 0;
  v65 = v109;
  *v55 = v108;
  *(v55 + 1) = v56;
  *(v55 + 2) = v65;
  *(v55 + 3) = v57;
  *(v55 + 16) = 0;
  *(v55 + 5) = v48;
  *(v55 + 6) = v43;
  v66 = v84;
  *(v55 + 7) = v89;
  *(v55 + 8) = v66;
  outlined assign with take of Binding<TextSelection?>?(v61, &v55[v63]);

  v67 = v105;
  *v105 = v91;
  LOBYTE(v57) = v85;
  outlined consume of Text.Storage(v48, v43, v85);

  outlined consume of Text.Storage(v48, v43, v57);

  _s7SwiftUI16SearchFieldStateVWOhTm_2(v88, type metadata accessor for SearchFieldState);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v107, type metadata accessor for Binding<AttributedString>);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v93, type metadata accessor for Binding<AttributedString>);
  v68 = v95;
  v69 = v98;
  v70 = v101;
  MEMORY[0x18D00A570](v67, v98, v87, v101);
  v71 = _s7SwiftUI16SearchFieldStateVWOhTm_2(v67, type metadata accessor for SearchModifier<TextField<EmptyView>>);
  MEMORY[0x1EEE9AC00](v71);
  *(&v82 - 6) = v69;
  v73 = v103;
  v72 = v104;
  *(&v82 - 5) = v103;
  *(&v82 - 4) = v70;
  v75 = v99;
  v74 = v100;
  *(&v82 - 3) = v72;
  v80 = v75;
  v81 = v74;
  v76 = lazy protocol witness table accessor for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>();
  v110 = v70;
  v111 = v76;
  v77 = v97;
  WitnessTable = swift_getWitnessTable();
  View.searchSuggestions<A>(_:)(partial apply for closure #1 in View.searchable<A>(text:placement:prompt:suggestions:), (&v82 - 8), v77, v73, WitnessTable);
  return (*(v96 + 8))(v68, v77);
}

uint64_t closure #1 in View.searchable<A>(text:placement:prompt:suggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  v15(v12);
  static ViewBuilder.buildExpression<A>(_:)(v10, a4, a6);
  v16 = *(v8 + 8);
  v16(v10, a4);
  static ViewBuilder.buildExpression<A>(_:)(v14, a4, a6);
  return (v16)(v14, a4);
}

uint64_t View.searchable<A, B>(text:placement:prompt:suggestions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v103 = a8;
  v102 = a7;
  v110 = a6;
  v113 = a1;
  v114 = a3;
  v105 = a9;
  v112 = a15;
  v106 = a14;
  v107 = a5;
  v101 = a13;
  v104 = a11;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v96 = &v87 - v18;
  v91 = type metadata accessor for SearchFieldState(0) - 8;
  MEMORY[0x1EEE9AC00](v91);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v94 = (&v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Binding<AttributedString>();
  v92 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v87 - v27);
  v29 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchModifier<TextField<EmptyView>>();
  v109 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v108 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a10;
  v98 = type metadata accessor for ModifiedContent();
  v97 = *(v98 - 8);
  v35 = MEMORY[0x1EEE9AC00](v98);
  v95 = &v87 - v36;
  v93 = *v107;
  (*(v29 + 16))(v32, v110, a12, v35);
  v37 = v25;

  v100 = a12;
  v38 = a2;
  v39 = Text.init<A>(_:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v90 = v43;
  LODWORD(v107) = v43 & 1;
  outlined copy of Text.Storage(v39, v41, v43 & 1);

  AttributeContainer.init()();
  v46 = v113;
  v92 = a4;
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection();
  v111 = v38;
  v47 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  *v28 = v46;
  v28[1] = v47;
  v94 = v28;
  v110 = v37;
  v48 = v37;
  v50 = v108;
  v49 = v109;
  outlined init with copy of Binding<AttributedString>(v28, v48, type metadata accessor for Binding<AttributedString>);
  v51 = &v50[v49[12]];
  *v51 = 0;
  *(v51 + 1) = 0;
  *(v51 + 8) = 0;
  *v20 = 2;

  v52 = v45;

  v53 = v41;
  v54 = v41;
  v55 = v107;
  outlined copy of Text.Storage(v39, v54, v107);
  v20[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v20 + 1) = 2;
  *(v20 + 1) = 0;
  v20[8] = 1;
  v56 = v91;
  AttributedString.init()();
  v20[*(v56 + 48)] = 0;
  v57 = *(v56 + 52);
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v89 = v20;
  v58 = &v20[v57];
  v59 = byte_1EAB095CC;
  *v58 = static SearchFocusUpdate.empty;
  v58[4] = v59;

  v60 = outlined copy of Text.Storage(v39, v53, v55);
  MEMORY[0x18D009CE0](v118, v60);
  Text.assertUnstyled(_:options:)();
  outlined consume of Text.Storage(v39, v53, v55);

  *(v50 + 1) = v39;
  *(v50 + 2) = v53;
  v50[24] = v55;
  *(v50 + 4) = v52;
  outlined init with copy of Binding<AttributedString>(v110, &v50[v49[11]], type metadata accessor for Binding<AttributedString>);
  v61 = &v50[v49[13]];
  outlined init with copy of Binding<AttributedString>(v20, v61, type metadata accessor for SearchFieldState);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
  *(v61 + *(v62 + 28)) = 0;
  v63 = &v50[v49[10]];
  v91 = v90 & 1;
  v119 = 1;
  v118[0] = v113;
  v118[1] = v111;
  v64 = v92;
  v118[2] = v114;
  v118[3] = v92;

  outlined copy of Text.Storage(v39, v53, v55);
  type metadata accessor for Binding<String>();
  MEMORY[0x18D00ACC0](v117);
  v88 = v117[0];
  v87 = v117[1];
  LODWORD(v90) = v119;
  type metadata accessor for Binding<TextSelection?>(0);
  v66 = v65;
  v67 = *(*(v65 - 8) + 56);
  v68 = v96;
  v67(v96, 1, 1, v65);
  type metadata accessor for TextField<EmptyView>(0, &lazy cache variable for type metadata for TextField<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for TextField);
  v70 = *(v69 + 56);
  v67(&v63[v70], 1, 1, v66);
  LOBYTE(v118[0]) = 0;
  v71 = v87;
  *(v63 + 9) = v88;
  *(v63 + 10) = v71;
  *(v63 + 88) = 0u;
  *(v63 + 104) = 0u;
  *(v63 + 120) = 0u;
  *(v63 + 136) = 0u;
  v63[152] = 0;
  *(v63 + 39) = 0;
  v63[160] = v90;
  *(v63 + 161) = 2;
  v63[163] = 0;
  *(v63 + 21) = 0;
  v63[180] = 0;
  v72 = v114;
  v73 = v111;
  *v63 = v113;
  *(v63 + 1) = v73;
  *(v63 + 2) = v72;
  *(v63 + 3) = v64;
  *(v63 + 16) = 0;
  *(v63 + 5) = v39;
  *(v63 + 6) = v53;
  *(v63 + 7) = v91;
  *(v63 + 8) = v52;
  outlined assign with take of Binding<TextSelection?>?(v68, &v63[v70]);

  v74 = v108;
  *v108 = v93;
  LOBYTE(v73) = v107;
  outlined consume of Text.Storage(v39, v53, v107);

  outlined consume of Text.Storage(v39, v53, v73);

  _s7SwiftUI16SearchFieldStateVWOhTm_2(v89, type metadata accessor for SearchFieldState);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v110, type metadata accessor for Binding<AttributedString>);
  _s7SwiftUI16SearchFieldStateVWOhTm_2(v94, type metadata accessor for Binding<AttributedString>);
  v75 = v95;
  v76 = v99;
  v77 = v101;
  MEMORY[0x18D00A570](v74, v99, v109, v101);
  v78 = _s7SwiftUI16SearchFieldStateVWOhTm_2(v74, type metadata accessor for SearchModifier<TextField<EmptyView>>);
  MEMORY[0x1EEE9AC00](v78);
  *(&v87 - 8) = v76;
  v79 = v104;
  v80 = v100;
  *(&v87 - 7) = v104;
  *(&v87 - 6) = v80;
  v81 = v106;
  *(&v87 - 5) = v77;
  *(&v87 - 4) = v81;
  v82 = v102;
  *(&v87 - 3) = v112;
  *(&v87 - 2) = v82;
  *(&v87 - 1) = v103;
  v83 = lazy protocol witness table accessor for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>();
  v115 = v77;
  v116 = v83;
  v84 = v98;
  WitnessTable = swift_getWitnessTable();
  View.searchSuggestions<A>(_:)(partial apply for closure #1 in View.searchable<A, B>(text:placement:prompt:suggestions:), (&v87 - 10), v84, v79, WitnessTable);
  return (*(v97 + 8))(v75, v84);
}

uint64_t closure #1 in View.searchable<A, B>(text:placement:prompt:suggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  v16(v13);
  static ViewBuilder.buildExpression<A>(_:)(v11, a4, a7);
  v17 = *(v9 + 8);
  v17(v11, a4);
  static ViewBuilder.buildExpression<A>(_:)(v15, a4, a7);
  return (v17)(v15, a4);
}

uint64_t SearchCustomAccessoryModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  swift_getWitnessTable();
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = *(a1 + 16);
  v24 = lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory();
  v7 = *(a1 + 24);
  v36 = &type metadata for EnvironmentValues.SearchCustomAccessory;
  v37 = v6;
  v38 = v24;
  v39 = v7;
  type metadata accessor for OptionalSourceWriter();
  v8 = type metadata accessor for ModifiedContent();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v25 = lazy protocol witness table accessor for type HasCustomAccessory and conformance HasCustomAccessory;
  type metadata accessor for ViewInputFlagModifier<SearchHasSuggestions>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<HasCustomAccessory>, lazy protocol witness table accessor for type HasCustomAccessory and conformance HasCustomAccessory);
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v29 = v6;
  v30 = v7;
  v31 = v3;
  WitnessTable = swift_getWitnessTable();
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for EnvironmentValues.SearchCustomAccessory, partial apply for closure #1 in SearchCustomAccessoryModifier.body(content:), v28, v5, &type metadata for EnvironmentValues.SearchCustomAccessory, v6, WitnessTable, v24, v7);
  v34 = WitnessTable;
  v35 = &protocol witness table for OptionalSourceWriter<A, B>;
  v19 = swift_getWitnessTable();
  lazy protocol witness table accessor for type HasCustomAccessory and conformance HasCustomAccessory();
  View.input<A>(_:)();
  (*(v26 + 8))(v10, v8);
  HasCustom = lazy protocol witness table accessor for type ViewInputFlagModifier<HasCustomAccessory> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<HasCustomAccessory> and conformance ViewInputFlagModifier<A>, &lazy cache variable for type metadata for ViewInputFlagModifier<HasCustomAccessory>, v25);
  v32 = v19;
  v33 = HasCustom;
  v21 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v14, v11, v21);
  v22 = *(v12 + 8);
  v22(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)(v17, v11, v21);
  return (v22)(v17, v11);
}

uint64_t closure #1 in SearchCustomAccessoryModifier.body(content:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 == 1)
  {
    v6 = *(type metadata accessor for SearchCustomAccessoryModifier() + 36);
    v11 = *(a2 - 8);
    (*(v11 + 16))(a3, &a1[v6], a2);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v7 = *(a2 - 8);
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a3, v8, 1, a2);
}

uint64_t View.customSearchAccessory<A>(isActive:accessory:)(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v19 = a4;
  v8 = a1;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchCustomAccessoryModifier();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  a2(v14);
  *v16 = v8;
  (*(v9 + 32))(&v16[*(v12 + 36)], v11, a5);
  MEMORY[0x18D00A570](v16, v19, v12, v20);
  return (*(v13 + 8))(v16, v12);
}

unint64_t lazy protocol witness table accessor for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>()
{
  result = lazy protocol witness table cache variable for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>;
  if (!lazy protocol witness table cache variable for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>)
  {
    type metadata accessor for SearchModifier<TextField<EmptyView>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchModifier<TextField<EmptyView>> and conformance SearchModifier<A>);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzAaBRd__r__lAA15ModifiedContentVyxAA25SearchSuggestionsModifierVyqd__GGAaBHPxAaBHD1__AgA0cH0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for SearchCustomAccessoryModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void AVKitCaptureButtonBridge.attachInteraction()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v3 + 16) + 8));
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = [objc_opt_self() _cameraShutterConfigurationsWithOptionsProvider_];
      type metadata accessor for _UIPhysicalButtonConfiguration();
      lazy protocol witness table accessor for type _UIPhysicalButtonConfiguration and conformance NSObject();
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = objc_allocWithZone(MEMORY[0x1E69DD638]);
      isa = Set._bridgeToObjectiveC()().super.isa;

      v9 = [v7 initWithConfigurations:isa delegate:v1];

      v10 = v9;
      [v5 swiftui:v10 addManagedInteraction:?];

      v11 = *(v1 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_interaction);
      *(v1 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_interaction) = v10;
    }
  }

  else
  {
    __break(1u);
  }
}

char *AVKitCaptureButtonBridge.dispatchCameraCapture(_:)(void *a1)
{
  if ([a1 _numberOfStages] < 2)
  {
    goto LABEL_5;
  }

  v3 = [a1 _stage];
  result = [a1 _numberOfStages];
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    return result;
  }

  if (v3 == result - 1)
  {
    v5 = [a1 _stagePhase] != 1;
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  result = [a1 _numberOfStages];
  if (result == 1)
  {
    result = [a1 _state];
    if (!v5)
    {
      if (result == 1)
      {
        return result;
      }

      v6 = &selRef__state;
      goto LABEL_12;
    }
  }

  else if (!v5)
  {
    return result;
  }

  v6 = &selRef__stagePhase;
LABEL_12:
  result = [a1 *v6];
  v7 = *(v1 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_dispatch);
  if (v7)
  {
    if (result >= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = result;
    }

    v10 = 0;
    v9 = v8;

    v7(&v10, &v9);
    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7);
  }

  return result;
}

char *specialized AVKitCaptureButtonBridge._physicalButtonInteraction(_:handle:withActiveActions:)(void *a1)
{
  result = [a1 _button];
  if (result == 5)
  {

    return AVKitCaptureButtonBridge.dispatchCameraCapture(_:)(a1);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_dispatch);
    if (v4)
    {

      v5 = [a1 _button];
      v6 = 0x200000102uLL >> (8 * v5);
      if (v5 >= 6)
      {
        LOBYTE(v6) = 2;
      }

      v10 = v6;
      v7 = [a1 _state];
      v8 = 4;
      if (v7 < 4)
      {
        v8 = v7;
      }

      v9 = v8;
      v4(&v10, &v9);
      return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4);
    }
  }

  return result;
}

unint64_t type metadata accessor for _UIPhysicalButtonConfiguration()
{
  result = lazy cache variable for type metadata for _UIPhysicalButtonConfiguration;
  if (!lazy cache variable for type metadata for _UIPhysicalButtonConfiguration)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _UIPhysicalButtonConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIPhysicalButtonConfiguration and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIPhysicalButtonConfiguration and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIPhysicalButtonConfiguration and conformance NSObject)
  {
    type metadata accessor for _UIPhysicalButtonConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIPhysicalButtonConfiguration and conformance NSObject);
  }

  return result;
}

uint64_t View.containerValue<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v7 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - v9;
  v11 = type metadata accessor for _ContainerValueWritingModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v17 - v14);
  (*(v8 + 16))(v10, a2, v7, v13);
  _ContainerValueWritingModifier.init(keyPath:value:)(a1, v10, v15);

  MEMORY[0x18D00A570](v15, a3, v11, v17);
  return (*(v12 + 8))(v15, v11);
}

uint64_t View.tabItem<A>(_:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a5;
  v34 = a2;
  v33 = a1;
  v37 = a7;
  v38 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v36 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityShowsLabelIcon>, lazy protocol witness table accessor for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon, &type metadata for AccessibilityShowsLabelIcon, MEMORY[0x1E697FD28]);
  v32 = v10;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for ModifiedContent();
  v49[12] = a6;
  v49[13] = &protocol witness table for UpdateDefaultTabFill;
  v30[1] = a6;
  WitnessTable = swift_getWitnessTable();
  v13 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>();
  v49[10] = WitnessTable;
  v49[11] = v13;
  v49[8] = swift_getWitnessTable();
  v49[9] = &protocol witness table for AccessibilityAttachmentModifier;
  v49[6] = swift_getWitnessTable();
  v49[7] = &protocol witness table for AccessibilityDetachedPropertyWriterModifier;
  v14 = swift_getWitnessTable();
  v49[0] = MEMORY[0x1E69806B0];
  v49[1] = v11;
  v49[2] = &type metadata for TabItem.TraitKey;
  v49[3] = MEMORY[0x1E69806A0];
  v49[4] = v14;
  v49[5] = &protocol witness table for TabItem.TraitKey;
  v30[2] = type metadata accessor for PlatformItemTraitWriter();
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v30 - v17;
  v19 = type metadata accessor for ModifiedContent();
  v31 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v30 - v20;
  v39 = a3;
  v40 = v38;
  v41 = v35;
  v42 = a6;
  v22 = v33;
  v43 = v33;
  v44 = v34;
  v23 = v35;
  View.platformItemLabelTrait<A, B>(for:_:)();
  v24 = swift_getWitnessTable();
  v47 = v23;
  v48 = v24;
  v25 = swift_getWitnessTable();
  v49[0] = 0;
  MEMORY[0x18D00A570](v49, v15, &type metadata for TabPlatformIdentified, v25);
  (*(v16 + 8))(v18, v15);
  KeyPath = swift_getKeyPath();
  v22();
  v49[0] = AnyView.init<A>(_:)();
  v27 = lazy protocol witness table accessor for type TabPlatformIdentified and conformance TabPlatformIdentified();
  v45 = v25;
  v46 = v27;
  v28 = swift_getWitnessTable();
  View.containerValue<A>(_:_:)(KeyPath, v49, v19, v28);

  return (*(v31 + 8))(v21, v19);
}

uint64_t closure #1 in View.tabItem<A>(_:)@<X0>(uint64_t (*a1)(double)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - v16;
  v18 = a1(v15);
  MEMORY[0x18D00A570](v18, a2, &type metadata for UpdateDefaultTabFill, a3);
  (*(v7 + 8))(v9, a2);
  v22[2] = a3;
  v22[3] = &protocol witness table for UpdateDefaultTabFill;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, WitnessTable);
  v20 = *(v11 + 8);
  v20(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)(v17, v10, WitnessTable);
  return (v20)(v17, v10);
}

uint64_t key path getter for ContainerValues.tabItemLabel_v0 : ContainerValues@<X0>(void *a1@<X8>)
{
  result = ContainerValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance TabPlatformIdentified@<X0>(uint64_t a1@<X8>)
{
  result = Namespace.wrappedValue.getter();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t (*ContainerValues.tabItemLabel_v0.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  ContainerValues.subscript.getter();
  return ContainerValues.tabItemLabel_v0.modify;
}

uint64_t ContainerValues.tabItemLabel_v0.modify(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return ContainerValues.subscript.setter();
  }

  ContainerValues.subscript.setter();
}

void UITabBarController.identifiedViewTree.getter(uint64_t a1@<X8>)
{
  v3 = [v1 selectedViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for TabHostingController(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + direct field offset for UIHostingController.host);
      type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>(0, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>();
      v7 = v6;
      ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

      outlined init with copy of _IdentifiedViewTree(v23, v22);
      if (v22[168] != 2 || (v8 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(*&v22[40], *&v22[104]), vorrq_s8(*&v22[72], *&v22[136])), vorrq_s8(vorrq_s8(*&v22[56], *&v22[120]), vorrq_s8(*&v22[88], *&v22[152]))), vorrq_s8(*&v22[8], *&v22[24])), *&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | *v22))
      {
        outlined destroy of _IdentifiedViewTree(v22);
        outlined init with copy of _IdentifiedViewTree(v23, v22);
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v11 = *(v9 + 2);
        v10 = *(v9 + 3);
        if (v11 >= v10 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
        }

        outlined destroy of _IdentifiedViewTree(v23);
        *(v9 + 2) = v11 + 1;
        v12 = &v9[176 * v11];
        v14 = *&v22[16];
        v13 = *&v22[32];
        *(v12 + 2) = *v22;
        *(v12 + 3) = v14;
        *(v12 + 4) = v13;
        v15 = *&v22[96];
        v17 = *&v22[48];
        v16 = *&v22[64];
        *(v12 + 7) = *&v22[80];
        *(v12 + 8) = v15;
        *(v12 + 5) = v17;
        *(v12 + 6) = v16;
        v19 = *&v22[128];
        v18 = *&v22[144];
        v20 = *&v22[112];
        *(v12 + 185) = *&v22[153];
        *(v12 + 10) = v19;
        *(v12 + 11) = v18;
        *(v12 + 9) = v20;
        if (!*(v9 + 2))
        {
          goto LABEL_8;
        }

LABEL_12:
        v21 = 1;
        goto LABEL_13;
      }

      outlined destroy of _IdentifiedViewTree(v23);

      outlined destroy of _IdentifiedViewTree(v22);
    }

    else
    {
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_12;
  }

LABEL_8:

  v9 = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  v21 = 2;
  *(a1 + 8) = 0u;
LABEL_13:
  *a1 = v9;
  *(a1 + 168) = v21;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance TabViewContentToolbarHost()
{
  lazy protocol witness table accessor for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t ChildIndexProjection.hash(into:)()
{
  outlined init with copy of _VariadicView_Children(v0 + 16, v5);
  v1 = 0;
  if (_VariadicView_Children.endIndex.getter())
  {
    while (1)
    {
      _VariadicView_Children.subscript.getter();
      result = _VariadicView_Children.endIndex.getter();
      if (v1 >= result)
      {
        break;
      }

      ++v1;
      _ViewList_View.viewID.getter();
      AnyHashable.hash(into:)();
      outlined destroy of AnyHashable(v3);
      outlined destroy of _VariadicView_Children.Element(v4);
      if (v1 == _VariadicView_Children.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_4:
    v6 = v1;
    return outlined destroy of EnumeratedSequence<_VariadicView_Children>(v5, &lazy cache variable for type metadata for IndexingIterator<_VariadicView_Children>, lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children, MEMORY[0x1E69E6CF0]);
  }

  return result;
}

uint64_t ChildIndexProjection.get(base:)()
{
  outlined init with copy of _VariadicView_Children(v0 + 16, v3);
  specialized Sequence.first(where:)(partial apply for closure #1 in ChildIndexProjection.get(base:), v4);
  outlined destroy of EnumeratedSequence<_VariadicView_Children>(v3, &lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>, lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children, MEMORY[0x1E69E6E48]);
  if (v5)
  {
    v1 = *&v4[0];
    outlined destroy of _VariadicView_Children.Element(v4 + 8);
  }

  else
  {
    outlined destroy of (offset: Int, element: _VariadicView_Children.Element)?(v4);
    return 0;
  }

  return v1;
}

uint64_t closure #1 in ChildIndexProjection.get(base:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of (offset: Int, element: _VariadicView_Children.Element)(a1, v6);
  _ViewList_View.viewID.getter();
  outlined destroy of _VariadicView_Children.Element(&v7);
  v3 = MEMORY[0x18D00E7E0](v5, a2);
  outlined destroy of AnyHashable(v5);
  return v3 & 1;
}

uint64_t ChildIndexProjection.set(base:newValue:)(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = result;
    v5 = _VariadicView_Children.endIndex.getter();
    result = _VariadicView_Children.endIndex.getter();
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = _VariadicView_Children.endIndex.getter();
      if ((v5 & 0x8000000000000000) == 0 && result >= v5)
      {
        if (v5 > a2)
        {
          outlined destroy of AnyHashable(v4);
          _VariadicView_Children.subscript.getter();
          _ViewList_View.viewID.getter();
          return outlined destroy of _VariadicView_Children.Element(v6);
        }

        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ChildIndexProjection.__deallocating_deinit()
{
  outlined destroy of _VariadicView_Children(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Projection.get(base:) in conformance ChildIndexProjection@<X0>(uint64_t a1@<X8>)
{
  result = ChildIndexProjection.get(base:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ChildIndexProjection()
{
  Hasher.init(_seed:)();
  ChildIndexProjection.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ChildIndexProjection()
{
  Hasher.init(_seed:)();
  ChildIndexProjection.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for View.body.getter in conformance TabBarBottomAccessoryView@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
}

void @objc UIKitTabBarBottomAccessory.frame.setter(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, SEL *a7)
{
  ObjectType = swift_getObjectType();
  v25.receiver = a1;
  v25.super_class = ObjectType;
  v14 = a1;
  objc_msgSendSuper2(&v25, sel_bounds);
  v16 = v15;
  v18 = v17;
  v24.receiver = v14;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, *a7, a2, a3, a4, a5);
  v23.receiver = v14;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, sel_bounds);
  if (v16 != v20 || v18 != v19)
  {
    v22 = specialized _UIHostingView.base.getter();
    UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();
  }
}

uint64_t type metadata accessor for UIKitTabBarBottomAccessory()
{
  result = type metadata singleton initialization cache for UIKitTabBarBottomAccessory;
  if (!type metadata singleton initialization cache for UIKitTabBarBottomAccessory)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *vtable thunk for _UIHostingView.__allocating_init(rootView:) dispatching to UIKitTabBarBottomAccessory.__allocating_init(rootView:)()
{
  v1 = objc_allocWithZone(v0);

  v3 = specialized _UIHostingView.init(rootView:)(v2);
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x1C0) + 8) = &protocol witness table for UIKitTabBarBottomAccessory;
  swift_unknownObjectWeakAssign();
  v4 = v3;
  v5 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();

  return v4;
}

void type metadata accessor for TabItemLabel_v0?()
{
  if (!lazy cache variable for type metadata for TabItemLabel_v0?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TabItemLabel_v0?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ContainerValueWritingModifier<TabItemLabel_v0?> and conformance _ContainerValueWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ContainerValueWritingModifier<TabItemLabel_v0?> and conformance _ContainerValueWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _ContainerValueWritingModifier<TabItemLabel_v0?> and conformance _ContainerValueWritingModifier<A>)
  {
    type metadata accessor for _ContainerValueWritingModifier<TabItemLabel_v0?>(255, &lazy cache variable for type metadata for _ContainerValueWritingModifier<TabItemLabel_v0?>, type metadata accessor for TabItemLabel_v0?, MEMORY[0x1E69809E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ContainerValueWritingModifier<TabItemLabel_v0?> and conformance _ContainerValueWritingModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ChildIndexProjection and conformance ChildIndexProjection(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChildIndexProjection();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of (offset: Int, element: _VariadicView_Children.Element)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (offset: Int, element: _VariadicView_Children.Element)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (offset: Int, element: _VariadicView_Children.Element)?(uint64_t a1)
{
  type metadata accessor for _ContainerValueWritingModifier<TabItemLabel_v0?>(0, &lazy cache variable for type metadata for (offset: Int, element: _VariadicView_Children.Element)?, type metadata accessor for (offset: Int, element: _VariadicView_Children.Element), MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _ContainerValueWritingModifier<TabItemLabel_v0?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of EnumeratedSequence<_VariadicView_Children>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>(0, a2, a3, MEMORY[0x1E697FFD0], a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _ContainerValueWritingModifier.init(keyPath:value:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v5 = *a1;
  *a3 = a1;
  v6 = *(v5 + *MEMORY[0x1E69E6CE8] + 8);
  v7 = type metadata accessor for _ContainerValueWritingModifier();
  v8 = *(*(v6 - 8) + 32);
  v9 = a3 + *(v7 + 28);

  return v8(v9, a2, v6);
}

void specialized UIKitTabBarBottomAccessory.hostingView<A>(_:willUpdate:)(uint64_t a1)
{
  v3 = UIHostingViewBase.traitCollectionOverride.getter();
  if (!v3)
  {
    v3 = [v1 traitCollection];
  }

  v4 = v3;
  [v3 tabAccessoryEnvironment];
  type metadata accessor for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>, &type metadata for TabViewBottomAccessoryPlacementKey, &protocol witness table for TabViewBottomAccessoryPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>, &type metadata for TabViewBottomAccessoryPlacementKey, &protocol witness table for TabViewBottomAccessoryPlacementKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<TabPlatformIdentified> and conformance _ViewModifier_Content<A>();
    lazy protocol witness table accessor for type _TraitWritingModifier<TabPlatformIdentifierKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TabPlatformIdentified>, lazy protocol witness table accessor for type TabPlatformIdentified and conformance TabPlatformIdentified, &type metadata for TabPlatformIdentified, MEMORY[0x1E697FDE8]);
    type metadata accessor for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TabPlatformIdentifierKey>, &type metadata for TabPlatformIdentifierKey, &protocol witness table for TabPlatformIdentifierKey, MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TabPlatformIdentified>, _TraitWritingModifier<TabPlatformIdentifierKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<TabPlatformIdentified> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<TabPlatformIdentified> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<TabPlatformIdentified> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TabPlatformIdentified>, lazy protocol witness table accessor for type TabPlatformIdentified and conformance TabPlatformIdentified, &type metadata for TabPlatformIdentified, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<TabPlatformIdentified> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<TabPlatformIdentifierKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<TabPlatformIdentifierKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<TabPlatformIdentifierKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TabPlatformIdentifierKey>, &type metadata for TabPlatformIdentifierKey, &protocol witness table for TabPlatformIdentifierKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<TabPlatformIdentifierKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect>();
    lazy protocol witness table accessor for type VStack<AnyView> and conformance VStack<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect>)
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>(255, &lazy cache variable for type metadata for VStack<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E6981860]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<VStack<AnyView>, MayNotInsertCALayersEffect>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type VStack<AnyView> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<AnyView> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<AnyView> and conformance VStack<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewBottomAccessoryPlacementKey>(255, &lazy cache variable for type metadata for VStack<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E6981860]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<AnyView> and conformance VStack<A>);
  }

  return result;
}

void type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t specialized static SystemTabConstants.maxTabs(in:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 & 1) != 0 || v1 == 2)
  {
    return 8;
  }

  else
  {
    return 5;
  }
}

void UICollectionViewListCoordinator.updateLeadingHeaderMargin(collectionView:hasGlobalHeader:existingView:)(void *a1, char a2, char *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  *&v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E7D40];
  v70 = ObjectType;
  if (a2)
  {
    v15 = v11;
    v16 = v4;
    v17 = specialized UICollectionViewListCoordinatorBase.numberOfSections(in:)();
    if (v17 < 0)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v18 = v17;
    v19 = 0;
    while (v18 != v19)
    {
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      v16 = v4;
      v20 = specialized UICollectionViewListCoordinatorBase.collectionView(_:numberOfItemsInSection:)(v19++);
      if (v20 >= 1)
      {
        MEMORY[0x18D000680](0, v19 - 1);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v10 + 8))(COERCE_DOUBLE(*&v13), v15);
        v13 = COERCE_DOUBLE([a1 cellForItemAtIndexPath_]);

        if (v13 != 0.0)
        {
          type metadata accessor for AnyListCollectionViewCell();
          v22 = swift_dynamicCastClass();
          if (v22)
          {
            v23 = v22;
            v24 = *&v13;
            v25 = [v23 contentView];
            [v25 frame];
            v27 = v26;
            v29 = v28;
            v31 = v30;
            v33 = v32;

            v72.origin.x = v27;
            v72.origin.y = v29;
            v72.size.width = v31;
            v72.size.height = v33;
            MinX = CGRectGetMinX(v72);
            v35 = [v23 contentView];

            [v35 bounds];
            v37 = v36;
            v39 = v38;

            v40 = static HorizontalAlignment.listRowSeparatorLeading.getter();
            v41 = *((*v14 & *v23) + 0x68);
            *&v42 = COERCE_DOUBLE(v41(v40, v37, v39));
            if (v43)
            {
              v44 = static HorizontalAlignment.leadingText.getter();
              v45 = COERCE_DOUBLE(v41(v44, v37, v39));
              v13 = *&v46;

              v47 = 0.0;
              if ((LOBYTE(v13) & 1) == 0)
              {
                v47 = v45;
              }
            }

            else
            {
              v13 = *&v42;

              v47 = v13;
            }

            *(v4 + *((*v14 & *v4) + 0x348)) = MinX + v47;
          }

          else
          {
          }
        }

        break;
      }
    }
  }

  else
  {
    *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x348)) = 0;
  }

  v71 = a3;
  v16 = [a1 visibleSupplementaryViewsOfKind_];
  v68 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionReusableView);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = v4;
  v69 = a1;
  if (v18 >> 62)
  {
LABEL_29:
    v48 = __CocoaSet.count.getter();
    if (!v48)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v48 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v48)
    {
      goto LABEL_30;
    }
  }

  if (v48 < 1)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  v50 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x348);
  do
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v51 = MEMORY[0x18D00E9C0](v49, v18);
    }

    else
    {
      v51 = *(v18 + 8 * v49 + 32);
    }

    v52 = v51;
    type metadata accessor for TableCollectionViewCell();
    v53 = swift_dynamicCastClass();
    if (v53)
    {
      *(v53 + direct field offset for TableCollectionViewCell.headerLeadingMargin) = *(v14 + v50);
      v54 = *(v53 + direct field offset for ListCollectionViewCellBase.host);
      if (v54)
      {
        type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>();
        lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>);
        v55 = v54;
        ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
      }
    }

    ++v49;
  }

  while (v48 != v49);
LABEL_30:

  v13 = *&v71;
  if (*&v71 != 0.0)
  {
    v56 = v71;
    goto LABEL_38;
  }

  v57 = static UICollectionViewListCoordinatorBase.globalHeaderKind.getter();
  v58 = MEMORY[0x18D00C850](v57);

  v59 = [v69 visibleSupplementaryViewsOfKind_];

  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v16 >> 62)
  {
LABEL_45:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_34;
    }

LABEL_46:

    return;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_46;
  }

LABEL_34:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v60 = MEMORY[0x18D00E9C0](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v60 = *(v16 + 32);
  }

  v61 = v60;

  v56 = v61;
LABEL_38:
  type metadata accessor for TableGlobalHeader();
  v62 = swift_dynamicCastClass();
  if (v62)
  {
    v63 = *(v14 + *((*MEMORY[0x1E69E7D40] & *v14) + 0x348));
    v64 = *(v62 + OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_headerLeadingMargin);
    v65 = v62;
    *(v62 + OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_headerLeadingMargin) = v63;
    v66 = *&v13;
    if (v64 != v63)
    {
      [v65 setNeedsUpdateConfiguration];
    }
  }

  else
  {
    v67 = *&v13;
  }
}

uint64_t closure #2 in UICollectionViewListCoordinator.listConfiguration(offset:environment:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = UICollectionViewListCoordinatorBase.leadingSwipeActionsConfiguration(indexPath:)(a1);

  return v4;
}

id closure #3 in UICollectionViewListCoordinator.listConfiguration(offset:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v8 = Strong;
  v11[0] = a3;
  v11[1] = a4;

  v9 = UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:)(a1, v11);

  outlined consume of EnvironmentValues?(v11[0]);
  return v9;
}

BOOL closure #2 in implicit closure #1 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v15 - v11;
  (*(v7 + 80))(a1, a3, v7, v10);
  swift_getAssociatedConformanceWitness();
  v13 = dispatch thunk of Collection.isEmpty.getter();
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  return (v13 & 1) == 0;
}

void closure #3 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    UICollectionViewListCoordinator.updateLeadingHeaderMargin(collectionView:hasGlobalHeader:existingView:)(a2, a3 & 1, 0);
  }
}

char *UICollectionViewListCoordinator.collectionView(_:viewForSupplementaryElementOfKind:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = MEMORY[0x1E69E7D40];
  v11 = type metadata accessor for ShadowListDataSource();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v30 = a1;
  v31 = a3;
  v32 = UICollectionViewListCoordinatorBase.collectionView(_:viewForSupplementaryElementOfKind:at:)(a1, a2, a3, a4);
  v15 = *((*v10 & *v5) + 0x88);
  swift_beginAccess();
  v16 = *(v12 + 16);
  v16(v14, &v5[v15], v11);
  LOBYTE(a3) = ShadowListDataSource.hasGlobalHeader.getter(v11);
  v17 = *(v12 + 8);
  v17(v14, v11);
  if (a3)
  {
    v16(v14, &v5[v15], v11);
    v18 = ShadowListDataSource.hasGlobalHeader.getter(v11);
    v17(v14, v11);
    v19 = v32;
    v20 = v32;
    UICollectionViewListCoordinator.updateLeadingHeaderMargin(collectionView:hasGlobalHeader:existingView:)(v30, v18 & 1, v19);
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v21 == v31)
  {

    v24 = v32;
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v24 = v32;
    if ((v23 & 1) == 0)
    {
      return v24;
    }
  }

  type metadata accessor for TableCollectionViewCell();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    *(v25 + direct field offset for TableCollectionViewCell.headerLeadingMargin) = *&v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0x348)];
    v26 = *(v25 + direct field offset for ListCollectionViewCellBase.host);
    if (v26)
    {
      type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>();
      lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>);
      v27 = v24;
      v28 = v26;
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    }
  }

  return v24;
}

char *@objc UICollectionViewListCoordinator.collectionView(_:viewForSupplementaryElementOfKind:at:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  v14 = UICollectionViewListCoordinator.collectionView(_:viewForSupplementaryElementOfKind:at:)(v12, v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v14;
}

uint64_t closure #1 in UICollectionViewListCoordinator.collectionView(_:sceneActivationConfigurationForItemAt:point:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    type metadata accessor for [SceneList.Namespace : SceneList]();
    Value = AGGraphGetValue();
    v4 = *Value;
    if (*(*Value + 16))
    {

      v5 = specialized __RawDictionaryStorage.find<A>(_:)(0, 0, 2);
      if (v6)
      {
        v7 = (*(v4 + 56) + 24 * v5);
        v8 = *v7;
        v9 = v7[1];
        v10 = v7[2];

        *a2 = v8;
        a2[1] = v9;
        a2[2] = v10;
        return result;
      }
    }
  }

  result = EnvironmentValues.init()();
  *a2 = MEMORY[0x1E69E7CC0];
  return result;
}

Class @objc UICollectionViewListCoordinator.collectionView(_:sceneActivationConfigurationForItemAt:point:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  v11 = specialized UICollectionViewListCoordinator.collectionView(_:sceneActivationConfigurationForItemAt:point:)(v9);

  (*(v6 + 8))(v8, v5);

  return v11;
}

uint64_t closure #1 in UICollectionViewListCoordinator.collectionView(_:contextMenuConfigurationForItemsAt:point:)(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v69 = a4;
  v6 = *a3;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40];
  v70 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v8 & v6) + 0x328);
  v68 = *((v8 & v6) + 0x338);
  v11 = type metadata accessor for ShadowListDataSource();
  v88 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v64 - v12;
  v67 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = type metadata accessor for Optional();
  v14 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v16 = &v64 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v80 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v79 = &v64 - v23;
  v24 = *((v8 & v6) + 0x340);
  v87 = a3;
  v25 = *((v8 & v6) + 0x330);
  v66 = v24;
  v65 = v25;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = Set.init()();
  v90 = v26;
  v27 = *(a2 + 16);
  if (v27)
  {
    v72 = v14;
    v28 = *((*v7 & *v87) + 0x88);
    v29 = *(type metadata accessor for IndexPath() - 8);
    v30 = a2 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    swift_beginAccess();
    v31 = *(v29 + 72);
    v32 = *(v88 + 16);
    v88 += 16;
    v84 = (v88 - 8);
    v85 = v32;
    v83 = (v17 + 48);
    v74 = (v17 + 16);
    v75 = (v17 + 32);
    v73 = (v17 + 8);
    ++v72;
    v76 = v31;
    v77 = v28;
    do
    {
      v33 = v86;
      v85(v86, &v87[v28], v11);
      WitnessTable = swift_getWitnessTable();
      ListCoreDataSource.selectionValue(forRowAt:)(v30, v11, WitnessTable, v16);
      (*v84)(v33, v11);
      if ((*v83)(v16, 1, AssociatedTypeWitness) == 1)
      {
        v26 = (*v72)(v16, v82);
      }

      else
      {
        v35 = v79;
        (*v75)(v79, v16, AssociatedTypeWitness);
        (*v74)(v81, v35, AssociatedTypeWitness);
        type metadata accessor for Set();
        v36 = AssociatedTypeWitness;
        v37 = v11;
        v38 = v16;
        v39 = v80;
        v31 = v76;
        Set.insert(_:)();
        v40 = *v73;
        v41 = v39;
        v16 = v38;
        v11 = v37;
        AssociatedTypeWitness = v36;
        (*v73)(v41, v36);
        v42 = v35;
        v28 = v77;
        v26 = v40(v42, v36);
      }

      v30 += v31;
      --v27;
    }

    while (v27);
  }

  MEMORY[0x1EEE9AC00](v26);
  *&v43 = v67;
  *(&v43 + 1) = v65;
  *&v44 = v68;
  *(&v44 + 1) = v66;
  *(&v64 - 3) = v43;
  *(&v64 - 2) = v44;
  LODWORD(v62) = v69;
  v63._rawValue = &v90;
  static Update.ensure<A>(_:)();
  v45 = v89;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  v46 = MEMORY[0x1E69E7CC0];
  v89 = MEMORY[0x1E69E7CC0];
  v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v48 = MEMORY[0x1E69E7CC8];
  v49 = v71;
  v71[8] = 0;
  *(v49 + 16) = v48;
  *(v49 + 24) = v47;
  *(v49 + 32) = v46;
  *(v49 + 40) = v48;
  *(v49 + 48) = 0;
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
  v50 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  v51 = (*(*(v50 - 8) + 80) + 32) & ~*(*(v50 - 8) + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_18CD63400;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v53 = __swift_project_value_buffer(v50, static MenuVisitor.MenuStackGroup.empty);
  outlined init with copy of ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(v53, v52 + v51, type metadata accessor for MenuVisitor.MenuStackGroup);
  *(v49 + 56) = v52;
  v54 = *(v70 + 32);
  v55 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  (*(*(v55 - 8) + 56))(v49 + v54, 1, 1, v55);
  *v49 = 0;
  MenuVisitor.visit(_:uniqueNames:)(v45, &v89);

  v56 = *(v49 + 32);

  outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(v49, type metadata accessor for MenuVisitor);
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v91.value.super.isa = 0;
  v91.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v58, v57, 0, v91, 0, 0xFFFFFFFFFFFFFFFFLL, v56, v63);
  v60 = v59;

  return v60;
}

uint64_t closure #1 in closure #1 in UICollectionViewListCoordinator.collectionView(_:contextMenuConfigurationForItemsAt:point:)@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  swift_getFunctionTypeMetadata1();
  v4 = *AGGraphGetValue();
  v7 = *a1;

  v4(&v6, &v7);

  *a2 = v6;
  return result;
}

id @objc UICollectionViewListCoordinator.collectionView(_:contextMenuConfigurationForItemsAt:point:)(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for IndexPath();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = a1;
  v8 = specialized UICollectionViewListCoordinator.collectionView(_:contextMenuConfigurationForItemsAt:point:)(v6, v5);

  return v8;
}

uint64_t closure #1 in UICollectionViewListCoordinator.collectionView(_:contextMenuConfiguration:highlightPreviewForItemAt:)@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v2 = type metadata accessor for _RowVisitationContext();
  result = _RowVisitationContext.wantsClippedBackground.getter(v2);
  *a1 = result & 1;
  return result;
}

id @objc UICollectionViewListCoordinator.collectionView(_:contextMenuConfiguration:highlightPreviewForItemAt:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(id, char *))
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  v17 = a6(v14, v13);

  (*(v11 + 8))(v13, v10);

  return v17;
}

uint64_t closure #1 in closure #1 in UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TableHeaderView?(0, &lazy cache variable for type metadata for ContextMenuPreviewAction?, &type metadata for ContextMenuPreviewAction, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v5 = *(Value + 16);
  *(a1 + 16) = v5;

  return outlined copy of ContextMenuPreviewAction?(v4, v3, v5);
}

void @objc UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  specialized UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(v8, v9, a5);

  swift_unknownObjectRelease();
}

void *TableGlobalHeader.Wrapper.body.getter@<X0>(uint64_t a1@<X8>)
{
  __src[0] = static HorizontalAlignment.center.getter();
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  closure #1 in TableGlobalHeader.Wrapper.body.getter(v1, &__src[3]);
  KeyPath = swift_getKeyPath();
  v4 = *(v1 + 8);
  __src[33] = KeyPath;
  __src[34] = v4;
  v5 = static Animation.interpolatingSpring(duration:bounce:initialVelocity:)();
  v6 = *v1;
  __src[35] = v5;
  LOBYTE(__src[36]) = v6;
  v7 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  memcpy(__dst, __src, 0x121uLL);
  v18 = 0;
  result = memcpy(a1, __dst, 0x128uLL);
  *(a1 + 296) = v7;
  *(a1 + 304) = v9;
  *(a1 + 312) = v11;
  *(a1 + 320) = v13;
  *(a1 + 328) = v15;
  *(a1 + 336) = v18;
  return result;
}

uint64_t closure #1 in TableGlobalHeader.Wrapper.body.getter@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  if (*(a1 + 2))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  if (*(a1 + 2))
  {
    v5 = 0x4038000000000000;
  }

  else
  {
    v5 = 0x4020000000000000;
  }

  v6 = static Edge.Set.all.getter();
  outlined init with copy of TableHeaderView?(a1 + 16, v17, &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView);
  BYTE8(v18) = v6;
  *&v19 = 0x4026000000000000;
  *(&v19 + 1) = v5;
  *&v20 = 0x4026000000000000;
  *(&v20 + 1) = v5;
  LOBYTE(v21) = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(v9) = v21;
  v8[5] = v19;
  v8[6] = v20;
  v8[3] = v17[3];
  v8[4] = v18;
  v8[0] = v17[0];
  v8[1] = v17[1];
  v8[2] = v17[2];
  v22 = v10;
  v23 = v11;
  v21 = v9;
  v28 = v16;
  v26 = v14;
  v27 = v15;
  v24 = v12;
  v25 = v13;
  outlined init with copy of ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(v17, v8, type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>);
  *a2 = v4;
  outlined init with copy of ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(v8, (a2 + 1), type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>);
  outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(v17, type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>);
  return outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(v8, type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>);
}

void TableGlobalHeader.updateConfiguration(using:)(uint64_t a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = MEMORY[0x1E69DC0B8];
  v65 = &v55 - v9;
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], v7);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v55 - v11;
  v12 = type metadata accessor for UICellConfigurationState();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>();
  v17 = v16;
  v56 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v55 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v55 - v23;
  v57 = a1;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v70 = v3;
  v78.receiver = v3;
  v78.super_class = ObjectType;
  objc_msgSendSuper2(&v78, sel__bridgedUpdateConfigurationUsingState_, isa);

  if (*&v3[OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_headerLeadingMargin] + -24.0 > 0.0)
  {
    v25 = *&v3[OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_headerLeadingMargin] + -24.0;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = v21 + *(v17 + 56);
  *v26 = 1;
  MEMORY[0x18D007050]();
  *(v26 + 9) = 0;
  v26[80] = 1;
  *(v26 + 11) = 0;
  v26[96] = 1;
  *(v26 + 97) = 1;
  v27 = type metadata accessor for UIHostingConfigurationStorage(0);
  v28 = v27[9];
  v29 = *(v13 + 56);
  v60 = v13 + 56;
  v61 = v29;
  v29(&v26[v28], 1, 1, v12);
  v59 = v27;
  v26[v27[10]] = 0;
  *&v26[v27[11] + 8] = 0;
  swift_unknownObjectWeakInit();
  v58 = *(v13 + 16);
  v71 = v13 + 16;
  v58(v15, a1, v12);
  v30 = UICellConfigurationState.isEditing.getter();
  v31 = UICellConfigurationState.isSelected.getter();
  v32 = UICellConfigurationState.isPinned.getter();
  LOBYTE(v27) = UICellConfigurationState.isFocused.getter();
  (*(v13 + 8))(v15, v12);
  v33 = OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_globalHeader;
  v34 = v70;
  swift_beginAccess();
  outlined init with copy of TableHeaderView?(&v34[v33], (v21 + 2), &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView);
  *v21 = v30 & 1;
  *(v21 + 1) = v31 & 1;
  *(v21 + 2) = v32 & 1;
  *(v21 + 3) = v27 & 1;
  v21[1] = v25;
  *v26 = 0;
  static Edge.Set.all.getter();
  v35 = v69;
  outlined init with copy of ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(v21, v69, type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>);
  v36 = v56;
  v37 = v35 + *(v56 + 56);
  v38 = *(v37 + 24);
  v74 = *(v37 + 8);
  v75 = v38;
  v76[0] = *(v37 + 40);
  *(v76 + 9) = *(v37 + 49);
  OptionalEdgeInsets.init(_:edges:)();
  OptionalEdgeInsets.adding(_:)();
  v55 = type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>;
  outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(v21, type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>);
  v39 = v76[5];
  *(v37 + 8) = v76[4];
  *(v37 + 24) = v39;
  *(v37 + 40) = v77[0];
  *(v37 + 49) = *(v77 + 9);
  *(v37 + 97) = 0;
  v73[3] = v12;
  v73[4] = MEMORY[0x1E69DC0B0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  v41 = v57;
  v42 = v58;
  v58(boxed_opaque_existential_1, v57, v12);
  *(&v75 + 1) = v36;
  *&v76[0] = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView> and conformance UIHostingConfiguration<A, B>, type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>);
  v43 = __swift_allocate_boxed_opaque_existential_1(&v74);
  v44 = v69;
  v45 = v62;
  outlined init with copy of ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(v69, v62, type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>);
  outlined init with copy of _Benchmark(v73, &v72);
  type metadata accessor for UIConfigurationState();
  v46 = v63;
  v47 = swift_dynamicCast();
  v61(v46, v47 ^ 1u, 1, v12);
  outlined assign with take of UICellConfigurationState?(v46, v45 + *(v36 + 56) + v59[9], &lazy cache variable for type metadata for UICellConfigurationState?, v64);
  outlined init with take of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(v45, v43);
  outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(v44, v55);
  __swift_destroy_boxed_opaque_existential_1(v73);
  v48 = v70;
  MEMORY[0x18D00DB90](&v74);
  v49 = v66;
  static UIBackgroundConfiguration.listHeader()();
  *(&v75 + 1) = v12;
  *&v76[0] = MEMORY[0x1E69DC0B0];
  v50 = __swift_allocate_boxed_opaque_existential_1(&v74);
  v42(v50, v41, v12);
  v51 = v65;
  UIBackgroundConfiguration.updated(for:)();
  v53 = v67;
  v52 = v68;
  (*(v67 + 8))(v49, v68);
  __swift_destroy_boxed_opaque_existential_1(&v74);
  (*(v53 + 56))(v51, 0, 1, v52);
  MEMORY[0x18D00DBB0](v51);
  v54 = [v48 contentView];
  [v54 addInteraction_];
}

id TableGlobalHeader.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_globalHeader];
  *v4 = xmmword_18CD633F0;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 63) = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_headerLeadingMargin] = 0;
  v5 = OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_barInteraction;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithStyle_];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>()
{
  if (!lazy cache variable for type metadata for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>)
  {
    type metadata accessor for _UnaryViewAdaptor<TableGlobalHeader.Wrapper>();
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<TableGlobalHeader.Wrapper> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<TableGlobalHeader.Wrapper>);
    v0 = type metadata accessor for UIHostingConfiguration();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>);
    }
  }
}

void type metadata accessor for _UnaryViewAdaptor<TableGlobalHeader.Wrapper>()
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<TableGlobalHeader.Wrapper>)
  {
    lazy protocol witness table accessor for type TableGlobalHeader.Wrapper and conformance TableGlobalHeader.Wrapper();
    v0 = type metadata accessor for _UnaryViewAdaptor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UnaryViewAdaptor<TableGlobalHeader.Wrapper>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableGlobalHeader.Wrapper and conformance TableGlobalHeader.Wrapper()
{
  result = lazy protocol witness table cache variable for type TableGlobalHeader.Wrapper and conformance TableGlobalHeader.Wrapper;
  if (!lazy protocol witness table cache variable for type TableGlobalHeader.Wrapper and conformance TableGlobalHeader.Wrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableGlobalHeader.Wrapper and conformance TableGlobalHeader.Wrapper);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t type metadata accessor for UIConfigurationState()
{
  result = lazy cache variable for type metadata for UIConfigurationState;
  if (!lazy cache variable for type metadata for UIConfigurationState)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIConfigurationState);
  }

  return result;
}

uint64_t outlined init with take of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for TableHeaderView?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Class specialized UICollectionViewListCoordinator.collectionView(_:sceneActivationConfigurationForItemAt:point:)(void *a1)
{
  if (!static AppGraph.shared)
  {
    return 0;
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [a1 cellForItemAtIndexPath_];

  if (!v3)
  {
    goto LABEL_7;
  }

  type metadata accessor for AnyListCollectionViewCell();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

    goto LABEL_7;
  }

  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x98))(__dst);

  if (*(&__dst[1] + 1) == 1)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(__dst, &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?, &type metadata for PlatformItemList.Item.SecondaryNavigationBehavior);
LABEL_7:
    memset(v30, 0, sizeof(v30));
    v31 = 0;
    goto LABEL_8;
  }

  outlined init with copy of TableHeaderView?(__dst, v30, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
  outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(__dst);
LABEL_8:
  outlined init with copy of TableHeaderView?(v30, __dst, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
  if (!*(&__dst[1] + 1))
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(v30, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);

    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(__dst, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
    return 0;
  }

  v27 = __dst[0];
  v28 = __dst[1];
  v29 = *&__dst[2];
  static Update.ensure<A>(_:)();
  v23 = __dst[0];
  v24 = *&__dst[1];
  v5 = *(&v28 + 1);
  v6 = v29;
  __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
  v7 = (*(v6 + 16))(v5, v6);
  SceneList.windowGroup(presenting:)(v7, __src);
  if (!__src[68])
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(v30, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);

    outlined destroy of AnyNavigationLinkPresentedValue(&v27);
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(__src, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item);
    return 0;
  }

  memcpy(__dst, __src, 0x231uLL);
  v8 = *(&__dst[8] + 1);
  v9 = *&__dst[9];
  v10 = BYTE8(__dst[9]);
  v11 = *(&v28 + 1);
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
  v13 = (*(v12 + 128))(v8, v9, v10, v11, v12);
  if (!v13)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(v30, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);

    outlined destroy of AnyNavigationLinkPresentedValue(&v27);
    outlined destroy of SceneList.Item(__dst);
    return 0;
  }

  v14.super.isa = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DD308]) init];
  __src[3] = type metadata accessor for UIWindowSceneProminentPlacement();
  __src[4] = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UIWindowSceneProminentPlacement and conformance UIWindowSceneProminentPlacement, MEMORY[0x1E69DC1C8]);
  __swift_allocate_boxed_opaque_existential_1(__src);
  MEMORY[0x18D001CA0]();
  UIWindowSceneActivationRequestOptions.placement.setter();
  v16 = v15;
  v17 = [a1 window];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 windowScene];
  }

  else
  {
    v19 = 0;
  }

  [v16 setRequestingScene_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIWindowSceneActivationConfiguration);
  v21 = v16;
  v32.value.super.super.isa = v16;
  v32.is_nil = 0;
  v22 = UIWindowSceneActivationConfiguration.init(userActivity:options:preview:)(v14, v32, v33).super.isa;

  outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior?(v30, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
  outlined destroy of AnyNavigationLinkPresentedValue(&v27);
  outlined destroy of SceneList.Item(__dst);
  return v22;
}

id specialized UICollectionViewListCoordinator.collectionView(_:contextMenuConfigurationForItemsAt:point:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Binding();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  v40 = a2;
  if (*(a2 + 16) == 1)
  {
    v14 = type metadata accessor for IndexPath();
    v38 = *(v14 - 8);
    v39 = v14;
    v37 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v16 = [a1 cellForItemAtIndexPath_];

    if (v16)
    {
      type metadata accessor for AnyListCollectionViewCell();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x70))();

        if (v18)
        {
          v19 = v18;
          v20 = [v18 identifier];
          type metadata accessor for ContextMenuIdentity();
          v21 = swift_dynamicCastClass();
          if (v21)
          {
            v22 = v21;
            v23 = v38;
            v24 = v39;
            (*(v38 + 16))(v13, v40 + v37, v39);
            (*(v23 + 56))(v13, 0, 1, v24);
            v25 = OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_sourceIndexPath;
            swift_beginAccess();
            outlined assign with take of UICellConfigurationState?(v13, v22 + v25, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
            swift_endAccess();
          }

          swift_unknownObjectRelease();
          return v19;
        }
      }

      else
      {
      }
    }
  }

  v27 = MEMORY[0x1E69E7D40];
  v28 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x110);
  swift_beginAccess();
  (*(v8 + 16))(v10, &v3[v28], v7);
  LODWORD(v28) = (*(*(v6 - 8) + 48))(v10, 1, v6);
  (*(v8 + 8))(v10, v7);
  if (v28 == 1)
  {
    return 0;
  }

  UICollectionViewListCoordinatorBase.selectionStorage.getter();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v29 = WeakSelectionBasedStorage.$menu.getter();
  if ((v29 & 0x100000000) != 0)
  {
    return 0;
  }

  v30 = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = v40;
  *(v31 + 24) = v3;
  *(v31 + 32) = v30;
  v32 = objc_opt_self();
  aBlock[4] = partial apply for closure #1 in UICollectionViewListCoordinator.collectionView(_:contextMenuConfigurationForItemsAt:point:);
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  aBlock[3] = &block_descriptor_40_1;
  v33 = _Block_copy(aBlock);

  v34 = v3;

  v35 = [v32 configurationWithIdentifier:0 previewProvider:0 actionProvider:v33];

  _Block_release(v33);
  [v35 setPreferredMenuElementOrder_];
  return v35;
}

id specialized UICollectionViewListCoordinator.collectionView(_:contextMenuConfiguration:highlightPreviewForItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v43 = a1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v2;
  v8 = (v7 + 816);
  v44 = (v7 + 832);
  v9 = *((v6 & v5) + 0x328);
  v10 = *((v6 & v5) + 0x338);
  v11 = type metadata accessor for ShadowListDataSource();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v13;
  _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6_1>, MEMORY[0x1E697E518], MEMORY[0x1E697E510], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6_1> and conformance _SemanticFeature<A>();
  v15 = static SemanticFeature.isEnabled.getter();
  v16 = *((*v4 & *v2) + 0x88);
  swift_beginAccess();
  (*(v12 + 16))(v14, &v3[v16], v11);
  *&v17 = v9;
  *(&v17 + 1) = *v8;
  v18 = v45;
  *&v19 = v10;
  *(&v19 + 1) = *v44;
  v48 = v19;
  v47 = v17;
  WitnessTable = swift_getWitnessTable();
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(v18, partial apply for closure #1 in UICollectionViewListCoordinator.collectionView(_:contextMenuConfiguration:highlightPreviewForItemAt:), v46, v11, MEMORY[0x1E69E6370], WitnessTable, &v49);
  (*(v12 + 8))(v14, v11);
  if (v49 == 2)
  {
    if (v15)
    {
      v21 = 0;
      goto LABEL_6;
    }

    return 0;
  }

  if (((v15 | v49) & 1) == 0)
  {
    return 0;
  }

  v21 = v15 ^ 1 | v49;
LABEL_6:
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v23 = [v43 cellForItemAtIndexPath_];

  result = 0;
  if (!v23)
  {
    return result;
  }

  type metadata accessor for AnyListCollectionViewCell();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;
    v27 = v23;
    v28 = [v26 window];
    if (v28)
    {

      v29 = MEMORY[0x18D00ABE0]();
      v53 = 0u;
      v54 = 0u;
      v55 = 6;
      if ((*((*MEMORY[0x1E69E7D40] & *v26) + 0x90))(v29))
      {
        type metadata accessor for ViewResponder();
        if (swift_dynamicCastClass())
        {
          v56[0] = 4;
          hostingViewCoordinateSpace.getter();
          v52 = 1;
          dispatch thunk of ViewResponder.addContentPath(to:kind:in:observer:)();

          outlined destroy of CoordinateSpace(&v49);
        }

        else
        {
        }
      }

      v49 = v53;
      v50 = v54;
      v51 = v55;
      if (v21 & 1 | ((Path.isEmpty.getter() & 1) == 0))
      {
        v30 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
        v31 = [v26 traitCollection];
        v32 = [v31 userInterfaceIdiom];

        if (v32 != 6)
        {
          v33 = [objc_opt_self() clearColor];
          [v30 setBackgroundColor_];
        }

        if (Path.isEmpty.getter())
        {
          v35 = *(&v49 + 1);
          v34 = v49;
          v37 = *(&v50 + 1);
          v36 = v50;
          v38 = v51;
        }

        else
        {
          v40 = [v26 contentView];
          [v40 frame];

          Path.offsetBy(dx:dy:)();
          outlined destroy of Path(&v49);
          v34 = v56[0];
          v35 = v56[1];
          v36 = v56[2];
          v37 = v56[3];
          v38 = v57;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBezierPath);
          outlined copy of Path.Storage(v34, v35, v36, v37, v38);
          v41 = UIBezierPath.init(_:)(v56);
          [v30 setVisiblePath_];
        }

        v39 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:v26 parameters:v30];

        outlined consume of Path.Storage(v34, v35, v36, v37, v38);
        static Update.end()();
        goto LABEL_22;
      }

      outlined destroy of Path(&v49);
      static Update.end()();
    }

    else
    {
    }
  }

  v39 = 0;
LABEL_22:

  return v39;
}

uint64_t specialized UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:)(void *a1, void *a2, void *a3)
{
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &aBlock - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 identifier];
  type metadata accessor for ContextMenuIdentity();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    (*(v10 + 56))(v8, 1, 1, v9);
    return outlined destroy of UICollectionLayoutListConfiguration.ContentHuggingElements?(v8, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
  }

  v16 = OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_sourceIndexPath;
  v17 = v15;
  swift_beginAccess();
  outlined init with copy of IndexPath?(v17 + v16, v8);
  swift_unknownObjectRelease();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of UICollectionLayoutListConfiguration.ContentHuggingElements?(v8, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
  }

  (*(v10 + 32))(v13, v8, v9);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [a1 cellForItemAtIndexPath_];

  if (v19)
  {
    type metadata accessor for AnyListCollectionViewCell();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x78))();

      if (v21)
      {
        if ((*(v21 + 316) & 1) != 0 || (Attribute = AGWeakAttributeGetAttribute(), Attribute == *MEMORY[0x1E698D3F8]) || (v23 = Attribute, v24 = AGGraphClearUpdate(), v38 = 17, MEMORY[0x1EEE9AC00](v24), *(&aBlock - 4) = v23, type metadata accessor for TableHeaderView?(0, &lazy cache variable for type metadata for ContextMenuPreviewAction?, &type metadata for ContextMenuPreviewAction, MEMORY[0x1E69E6720]), static Update.dispatchImmediately<A>(reason:_:)(), AGGraphSetUpdate(), v25 = v34, v34 > 0xFDu))
        {
          (*(v10 + 8))(v13, v9);
        }

        v27 = aBlock;
        v28 = v33;
        if ((v34 & 0x80) != 0)
        {
          [a3 setPreferredCommitStyle_];
          v31 = swift_allocObject();
          *(v31 + 16) = v27;
          *(v31 + 24) = v28;
          *(v31 + 32) = v25 & 1;
          v36 = partial apply for closure #3 in UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:);
          v37 = v31;
          aBlock = MEMORY[0x1E69E9820];
          v33 = 1107296256;
          v34 = thunk for @escaping @callee_guaranteed () -> ();
          v35 = &block_descriptor_28;
          v30 = _Block_copy(&aBlock);
        }

        else
        {
          [a3 setPreferredCommitStyle_];
          v29 = swift_allocObject();
          *(v29 + 16) = v27;
          *(v29 + 24) = v28;
          v36 = partial apply for closure #2 in UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:);
          v37 = v29;
          aBlock = MEMORY[0x1E69E9820];
          v33 = 1107296256;
          v34 = thunk for @escaping @callee_guaranteed () -> ();
          v35 = &block_descriptor_34_0;
          v30 = _Block_copy(&aBlock);
          outlined copy of ContextMenuPreviewAction(v27, v28, v25);
        }

        [a3 addAnimations_];
        _Block_release(v30);
        outlined consume of ContextMenuPreviewAction?(v27, v28, v25);
      }
    }

    else
    {
    }
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t outlined destroy of UICollectionLayoutListConfiguration.ContentHuggingElements?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of IndexPath?(uint64_t a1, uint64_t a2)
{
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of ContextMenuPreviewAction?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return outlined consume of ContextMenuPreviewAction(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined consume of ContextMenuPreviewAction(uint64_t a1, uint64_t a2, char a3)
{

  if (a3 < 0)
  {
  }

  return result;
}

uint64_t outlined copy of ContextMenuPreviewAction(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }
}

uint64_t outlined copy of ContextMenuPreviewAction?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return outlined copy of ContextMenuPreviewAction(a1, a2, a3);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6_1> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6_1> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6_1> and conformance _SemanticFeature<A>)
  {
    _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_0(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6_1>, MEMORY[0x1E697E518], MEMORY[0x1E697E510], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6_1> and conformance _SemanticFeature<A>);
  }

  return result;
}

uint64_t outlined assign with take of UICellConfigurationState?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of TableHeaderView?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for TableHeaderView?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t destroy for TableGlobalHeader.Wrapper(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    if (result == 1)
    {
      return result;
    }
  }

  if (*(a1 + 80))
  {
  }

  else
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 40);
  }
}

uint64_t initializeWithCopy for TableGlobalHeader.Wrapper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  if (!v4)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    v7 = *(a2 + 80);
    if ((v7 & 1) == 0)
    {
LABEL_7:
      v8 = *(a2 + 64);
      *(a1 + 64) = v8;
      (**(v8 - 8))(a1 + 40, a2 + 40);
      goto LABEL_8;
    }

LABEL_5:
    *(a1 + 40) = *(a2 + 40);

LABEL_8:
    *(a1 + 80) = v7;
    *(a1 + 81) = *(a2 + 81);
    return a1;
  }

  if (v4 != 1)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v4;
    *(a1 + 32) = *(a2 + 32);

    v7 = *(a2 + 80);
    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 79) = *(a2 + 79);
  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  return a1;
}

uint64_t assignWithCopy for TableGlobalHeader.Wrapper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4 != 1)
  {
    if (v5 == 1)
    {
      outlined destroy of TableHeaderView(a1 + 16);
      *(a1 + 16) = *(a2 + 16);
      v10 = *(a2 + 48);
      v9 = *(a2 + 64);
      v11 = *(a2 + 32);
      *(a1 + 79) = *(a2 + 79);
      *(a1 + 48) = v10;
      *(a1 + 64) = v9;
      *(a1 + 32) = v11;
      return a1;
    }

    if (v4)
    {
      if (v5)
      {
        *(a1 + 16) = *(a2 + 16);

        *(a1 + 24) = *(a2 + 24);

        *(a1 + 32) = *(a2 + 32);

        if (a1 == a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(a1 + 16, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
        v15 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v15;
        if (a1 == a2)
        {
          goto LABEL_24;
        }
      }
    }

    else if (v5)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);

      if (a1 == a2)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v16 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = v16;
      if (a1 == a2)
      {
        goto LABEL_24;
      }
    }

    outlined destroy of TableColumnCollection.Backing(a1 + 40);
    if (*(a2 + 80))
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 80) = 1;
    }

    else
    {
      v17 = *(a2 + 64);
      *(a1 + 64) = v17;
      *(a1 + 72) = *(a2 + 72);
      (**(v17 - 8))(a1 + 40, a2 + 40);
      *(a1 + 80) = 0;
    }

    goto LABEL_24;
  }

  if (!v5)
  {
    v12 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v12;
    v13 = *(a2 + 80);
    if ((v13 & 1) == 0)
    {
LABEL_14:
      v14 = *(a2 + 64);
      *(a1 + 64) = v14;
      *(a1 + 72) = *(a2 + 72);
      (**(v14 - 8))(a1 + 40, a2 + 40);
      *(a1 + 80) = v13;
      goto LABEL_24;
    }

LABEL_12:
    *(a1 + 40) = *(a2 + 40);

    *(a1 + 80) = v13;
LABEL_24:
    *(a1 + 81) = *(a2 + 81);
    *(a1 + 82) = *(a2 + 82);
    return a1;
  }

  if (v5 != 1)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);

    v13 = *(a2 + 80);
    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  *(a1 + 32) = v6;
  return a1;
}

__n128 __swift_memcpy83_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for TableGlobalHeader.Wrapper(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 1) = *(a2 + 1);
  *(result + 2) = *(a2 + 2);
  *(result + 3) = *(a2 + 3);
  *(result + 8) = *(a2 + 8);
  v3 = *(result + 24);
  if (v3 == 1)
  {
    v4 = *(a2 + 64);
    *(result + 48) = *(a2 + 48);
    *(result + 64) = v4;
    *(result + 79) = *(a2 + 79);
    v5 = *(a2 + 32);
    *(result + 16) = *(a2 + 16);
    *(result + 32) = v5;
    return result;
  }

  v6 = *(a2 + 24);
  if (v6 == 1)
  {
    v7 = result;
    outlined destroy of TableHeaderView(result + 16);
    result = v7;
    v8 = *(a2 + 64);
    *(v7 + 48) = *(a2 + 48);
    *(v7 + 64) = v8;
    *(v7 + 79) = *(a2 + 79);
    v9 = *(a2 + 32);
    *(v7 + 16) = *(a2 + 16);
    *(v7 + 32) = v9;
    return result;
  }

  if (v3)
  {
    if (v6)
    {
      *(result + 16) = *(a2 + 16);
      v10 = result;

      *(v10 + 24) = v6;

      *(v10 + 32) = *(a2 + 32);

      result = v10;
      if (v10 == a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = result;
      outlined destroy of UIHostingConfiguration<_UnaryViewAdaptor<TableGlobalHeader.Wrapper>, EmptyView>(result + 16, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
      result = v12;
      *(v12 + 16) = *(a2 + 16);
      *(v12 + 32) = *(a2 + 32);
      if (v12 == a2)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

  *(result + 16) = *(a2 + 16);
  *(result + 32) = *(a2 + 32);
  if (result != a2)
  {
LABEL_10:
    v11 = result;
    outlined destroy of TableColumnCollection.Backing(result + 40);
    result = v11;
    *(v11 + 40) = *(a2 + 40);
    *(v11 + 56) = *(a2 + 56);
    *(v11 + 65) = *(a2 + 65);
  }

LABEL_11:
  *(result + 81) = *(a2 + 81);
  *(result + 82) = *(a2 + 82);
  return result;
}

uint64_t getEnumTagSinglePayload for TableGlobalHeader.Wrapper(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 83))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for TableGlobalHeader.Wrapper(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 83) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 83) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<TableHeaderView?, _PaddingLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<TableHeaderView?, _PaddingLayout>)
  {
    type metadata accessor for TableHeaderView?(255, &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<TableHeaderView?, _PaddingLayout>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout>, ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout>, ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout>, type metadata accessor for ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>);
    _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag>, MEMORY[0x1E6980A98], MEMORY[0x1E6980A90], MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout>, ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>();
    _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_0(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>)
  {
    type metadata accessor for VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>();
    type metadata accessor for TableHeaderView?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>);
    }
  }
}

void type metadata accessor for VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>()
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>)
  {
    _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(255, &lazy cache variable for type metadata for TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>, type metadata accessor for (StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)> and conformance TupleView<A>();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>);
    }
  }
}

void type metadata accessor for (StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)()
{
  if (!lazy cache variable for type metadata for (StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>))
  {
    type metadata accessor for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>();
    type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(255);
    type metadata accessor for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>));
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>()
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>)
  {
    type metadata accessor for InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>();
    _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<Divider, OpacityRendererEffect>, &type metadata for Divider, MEMORY[0x1E697FCA0], MEMORY[0x1E697E830]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>);
    }
  }
}

void type metadata accessor for InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>()
{
  if (!lazy cache variable for type metadata for InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>)
  {
    type metadata accessor for OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>();
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium> and conformance OrOperationViewInputPredicate<A, B>, type metadata accessor for OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>);
    v0 = type metadata accessor for InvertedViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>);
    }
  }
}

void type metadata accessor for OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>()
{
  if (!lazy cache variable for type metadata for OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>)
  {
    v0 = type metadata accessor for OrOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>()
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)
  {
    type metadata accessor for InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)> and conformance TupleView<A>)
  {
    _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(255, &lazy cache variable for type metadata for TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>, type metadata accessor for (StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)> and conformance TupleView<A>);
  }

  return result;
}

void type metadata accessor for TableHeaderView?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout>, type metadata accessor for ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>, _AnimationModifier<Bool>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>>();
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, ModifiedContent<Divider, OpacityRendererEffect>, EmptyView>, ModifiedContent<ModifiedContent<TableHeaderView?, _PaddingLayout>, _FlexFrameLayout>, StaticIf<InvertedViewInputPredicate<OrOperationViewInputPredicate<IsVisionEnabledPredicate, Solarium>>, Divider, EmptyView>)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag> and conformance ViewInputFlagModifier<A>)
  {
    _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag>, MEMORY[0x1E6980A98], MEMORY[0x1E6980A90], MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t specialized RandomAccessCollection.lowerBound(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v4 >= 1)
  {
    v7 = result;
    v8 = a3;
    while (1)
    {
      v9 = v4 >> 1;
      v10 = v8 + (v4 >> 1);
      if (__OFADD__(v8, v4 >> 1))
      {
        break;
      }

      if (v10 < a3 || v10 > a4)
      {
        goto LABEL_18;
      }

      v12 = v8 + (v4 >> 1);
      result = v7(&v12);
      if (result)
      {
        if (v10 >= a4)
        {
          __break(1u);
          return a3;
        }

        v8 = v10 + 1;
        v9 = v4 + ~v9;
      }

      v4 = v9;
      if (v9 <= 0)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return a3;
}

uint64_t closure #1 in Sections.sectionIDs.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = _ViewList_ID.init()();
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v3 <= 0x7FFFFFFF)
  {
    v5 = v3;
    return _ViewList_ID.Canonical.init(id:)(&v5, a2);
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in Sections.sectionIDs.getter@<X0>(uint64_t a1@<X8>)
{
  dispatch thunk of _ViewList_ID_Views.subscript.getter();
  v3[0] = v3[2];
  v3[1] = v3[3];
  return _ViewList_ID.Canonical.init(id:)(v3, a1);
}

uint64_t Sections.init(from:useFooters:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  outlined init with copy of _VariadicView_Children(a1, a3);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 40))(v6, v7);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 32))(&v36, v9, v10);
  if (v36 && (v11 = specialized Set.contains(_:)(MEMORY[0x1E697F730], v36), , !v11) && v8)
  {
    v12 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
    result = outlined destroy of _VariadicView_Children(a1);
    v14 = &outlined read-only object #0 of Sections.init(from:useFooters:);
    if (!v12)
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    *(a3 + 64) = v14;
    *(a3 + 72) = 0;
    v15 = MEMORY[0x1E69E7CD0];
    *(a3 + 80) = 0;
    *(a3 + 88) = v15;
  }

  else
  {
    LOBYTE(v24) = v8 == 0;
    if (a2)
    {
      v16 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v16 = 0;
    }

    *(&v24 + 1) = MEMORY[0x1E69E7CC0];
    *&v25 = v16;
    *(&v25 + 1) = MEMORY[0x1E69E7CC0];
    LOBYTE(v26) = 0;
    *(&v26 + 1) = MEMORY[0x1E69E7CD0];
    LOBYTE(v27) = 0;
    *(&v27 + 1) = 0;
    v28[0] = v8 == 0;
    v29 = MEMORY[0x1E69E7CC0];
    v30 = v16;
    v31 = MEMORY[0x1E69E7CC0];
    v32 = 0;
    v33 = MEMORY[0x1E69E7CD0];
    v34 = 0;
    v35 = 0;
    outlined init with copy of SectionedIdentifierAccumulator(&v24, &v36);
    outlined destroy of SectionedIdentifierAccumulator(v28);
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    outlined init with copy of _VariadicView_Children(a1, &v20);
    lazy protocol witness table accessor for type SectionedIdentifierAccumulator and conformance SectionedIdentifierAccumulator();
    _ViewList_Backing.visitViews<A>(applying:from:)();
    outlined destroy of _VariadicView_Children(a1);
    outlined destroy of _ViewList_Backing(&v20);
    v17 = v37;
    *(a3 + 64) = *(&v36 + 1);
    *(a3 + 72) = v38;
    v18 = *(&v38 + 1);
    *(a3 + 80) = v17;
    *(a3 + 88) = v18;
    if (v8)
    {
      v20 = v36;
      v21 = v37;
      v22 = v38;
      v23 = v39;

      result = outlined destroy of SectionedIdentifierAccumulator(&v20);
    }

    else
    {
      v19 = *(&v37 + 1);
      v20 = v36;
      v21 = v37;
      v22 = v38;
      v23 = v39;

      outlined destroy of SectionedIdentifierAccumulator(&v20);
      type metadata accessor for _ViewList_ID._Views<[_ViewList_ID]>();
      result = swift_allocObject();
      v8 = result;
      *(result + 24) = v19;
      *(result + 16) = 1;
    }
  }

  *(a3 + 96) = v8;
  return result;
}

unint64_t lazy protocol witness table accessor for type SectionedIdentifierAccumulator and conformance SectionedIdentifierAccumulator()
{
  result = lazy protocol witness table cache variable for type SectionedIdentifierAccumulator and conformance SectionedIdentifierAccumulator;
  if (!lazy protocol witness table cache variable for type SectionedIdentifierAccumulator and conformance SectionedIdentifierAccumulator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionedIdentifierAccumulator and conformance SectionedIdentifierAccumulator);
  }

  return result;
}

void type metadata accessor for _ViewList_ID._Views<[_ViewList_ID]>()
{
  if (!lazy cache variable for type metadata for _ViewList_ID._Views<[_ViewList_ID]>)
  {
    type metadata accessor for [_ViewList_ID]();
    lazy protocol witness table accessor for type [_ViewList_ID] and conformance <A> [A]();
    lazy protocol witness table accessor for type [_ViewList_ID] and conformance [A]();
    v0 = type metadata accessor for _ViewList_ID._Views();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewList_ID._Views<[_ViewList_ID]>);
    }
  }
}

void type metadata accessor for [_ViewList_ID]()
{
  if (!lazy cache variable for type metadata for [_ViewList_ID])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [_ViewList_ID]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [_ViewList_ID] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [_ViewList_ID] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [_ViewList_ID] and conformance <A> [A])
  {
    type metadata accessor for [_ViewList_ID]();
    lazy protocol witness table accessor for type _ViewList_ID and conformance _ViewList_ID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [_ViewList_ID] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewList_ID and conformance _ViewList_ID()
{
  result = lazy protocol witness table cache variable for type _ViewList_ID and conformance _ViewList_ID;
  if (!lazy protocol witness table cache variable for type _ViewList_ID and conformance _ViewList_ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_ID and conformance _ViewList_ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [_ViewList_ID] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [_ViewList_ID] and conformance [A];
  if (!lazy protocol witness table cache variable for type [_ViewList_ID] and conformance [A])
  {
    type metadata accessor for [_ViewList_ID]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [_ViewList_ID] and conformance [A]);
  }

  return result;
}

Swift::Bool __swiftcall Sections.hasFooter(at:)(Swift::Int at)
{
  v2 = *(v1 + 80);
  if (!v2)
  {
    return 0;
  }

  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x18D00F6C0](*(v2 + 40), at);
  v5 = -1 << *(v2 + 32);
  v6 = v4 & ~v5;
  if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(v2 + 48) + 8 * v6);
    result = v8 == at;
    if (v8 == at)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

Swift::Int __swiftcall Sections.startOffset(forSectionAt:)(Swift::Int forSectionAt)
{
  if (forSectionAt < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(v1 + 64);
  if (*(v2 + 16) <= forSectionAt)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return forSectionAt;
  }

  v3 = v2 + 16 * forSectionAt;
  v6 = *(v3 + 32);
  v5 = v3 + 32;
  v4 = v6;
  v7 = *(v1 + 72) == 1 && (*(v5 + 8) & 1) == 0;
  forSectionAt = v4 + v7;
  if (__OFADD__(v4, v7))
  {
    goto LABEL_10;
  }

  return forSectionAt;
}

Swift::Int __swiftcall Sections.footerOffset(forSectionAt:)(Swift::Int forSectionAt)
{
  v3 = *(v1 + 80);
  if (!v3 || !specialized Set.contains(_:)(forSectionAt, v3))
  {
    goto LABEL_13;
  }

  v4 = forSectionAt + 1;
  if (__OFADD__(forSectionAt, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v1 + 64);
  if (v4 >= *(v5 + 16))
  {
    v6 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  }

  else
  {
    if (v4 < 0)
    {
LABEL_12:
      __break(1u);
LABEL_13:
      _StringGuts.grow(_:)(24);

      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v9);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v6 = *(v5 + 16 * v4 + 32);
  }

  v7 = __OFSUB__(v6, 1);
  result = v6 - 1;
  if (v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t Sections.rowIDs(forSectionAt:)@<X0>(Swift::Int a1@<X0>, uint64_t *a2@<X8>)
{
  result = Sections.startOffset(forSectionAt:)(a1);
  v6 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  v8 = *(v2 + 64);
  if (v6 >= *(v8 + 16))
  {
    v9 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  }

  else
  {
    if (v6 < 0)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v9 = *(v8 + 16 * v6 + 32);
  }

  result = Sections.hasFooter(at:)(a1);
  if ((result & 1) != 0 && __OFSUB__(v9--, 1))
  {
    goto LABEL_21;
  }

  if (v9 < v7)
  {
    goto LABEL_16;
  }

  v11 = *(v2 + 96);
  result = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *a2 = v7;
  a2[1] = v9;
  a2[2] = v11;
  a2[3] = closure #1 in Sections.rowIDs(forSectionAt:);
  a2[4] = 0;
}

uint64_t closure #1 in Sections.rowIDs(forSectionAt:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;

  return _ViewList_ID.Canonical.init(id:)(v5, a2);
}

Swift::Int Sections.firstIndexPath<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  __swift_project_boxed_opaque_existential_1(v5, v10);
  v33 = 2;
  v12 = (*(v11 + 80))(a1, &v33, a2, a3, v10, v11);
  if ((v13 & 1) == 0)
  {
    v17 = v12;
    v18 = *(v5 + 72);
    v19 = *(v5 + 64);

    if (v18 == 1)
    {
    }

    v20 = *(v19 + 16);

    MEMORY[0x1EEE9AC00](v21);
    v32[2] = v5;
    v32[3] = v17;
    v22 = specialized RandomAccessCollection.lowerBound(_:)(partial apply for closure #1 in Sections.firstIndexPath<A>(for:), v32, 0, v20);
    v23 = *(v19 + 16);
    if (v22 >= v23)
    {
      goto LABEL_24;
    }

    v24 = v22;
    result = Sections.startOffset(forSectionAt:)(v22);
    v25 = v17 - result;
    if (__OFSUB__(v17, result))
    {
      __break(1u);
    }

    else
    {
      if (v24 + 1 >= v23)
      {
        v26 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
      }

      else
      {
        if (v24 < -1)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v26 = *(v19 + 16 * (v24 + 1) + 32);
      }

      result = Sections.startOffset(forSectionAt:)(v24);
      v27 = v26 - result;
      if (!__OFSUB__(v26, result))
      {
        result = v25 & ~(v25 >> 63);
        if (result < v27)
        {
LABEL_23:
          MEMORY[0x18D000680](result, v24);
          v30 = type metadata accessor for IndexPath();
          return (*(*(v30 - 8) + 56))(a4, 0, 1, v30);
        }

        if (v25 <= 0 && !v27)
        {
          result = NSNotFound.getter();
          goto LABEL_23;
        }

        v28 = v25 & ~(v25 >> 63);
        if (v18)
        {
        }

        v29 = *(v19 + 16);

        if (v24 < v29 - 1)
        {
          result = v28 - v27;
          if (!__OFSUB__(v28, v27))
          {
            ++v24;
            goto LABEL_23;
          }

LABEL_28:
          __break(1u);
          return result;
        }

LABEL_24:
        v31 = type metadata accessor for IndexPath();
        return (*(*(v31 - 8) + 56))(a4, 1, 1, v31);
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v14 = type metadata accessor for IndexPath();
  v15 = *(*(v14 - 8) + 56);

  return v15(a4, 1, 1, v14);
}

Swift::Int Sections.firstIndexPath(of:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = a1[1];
  __swift_project_boxed_opaque_existential_1(v3, *(v3 + 24));
  v25[6] = *a1;
  v25[7] = v6;
  v25[5] = 2;
  v7 = ViewList.firstOffset(of:style:)();
  if ((v8 & 1) == 0)
  {
    v12 = v7;
    v13 = *(v3 + 72);
    v14 = *(v3 + 64);

    if (v13 == 1)
    {
    }

    v15 = *(v14 + 16);

    MEMORY[0x1EEE9AC00](v16);
    v25[2] = v3;
    v25[3] = v12;
    v17 = specialized RandomAccessCollection.lowerBound(_:)(partial apply for closure #1 in Sections.firstIndexPath(of:), v25, 0, v15);
    result = Sections.startOffset(forSectionAt:)(v17);
    v18 = v12 - result;
    if (__OFSUB__(v12, result))
    {
      __break(1u);
    }

    else
    {
      v19 = v17 + 1;
      if (!__OFADD__(v17, 1))
      {
        if (v19 >= *(v14 + 16))
        {
          v20 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
        }

        else
        {
          if (v19 < 0)
          {
LABEL_29:
            __break(1u);
            return result;
          }

          v20 = *(v14 + 16 * v19 + 32);
        }

        result = Sections.startOffset(forSectionAt:)(v17);
        v21 = v20 - result;
        if (!__OFSUB__(v20, result))
        {
          if ((v18 & ~(v18 >> 63)) >= v21)
          {
            if (v18 > 0 || v21)
            {
              if (v13)
              {
              }

              v23 = *(v14 + 16);

              if (v17 < v23 - 1)
              {
                if (!__OFSUB__(v18 & ~(v18 >> 63), v21))
                {
                  goto LABEL_18;
                }

                __break(1u);
              }

              v24 = type metadata accessor for IndexPath();
              return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
            }

            NSNotFound.getter();
          }

LABEL_18:
          MEMORY[0x18D000680]();
          v22 = type metadata accessor for IndexPath();
          return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v9 = type metadata accessor for IndexPath();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, 1, 1, v9);
}

void *closure #1 in Sections.firstIndexPath<A>(for:)(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 64);
    if (v3 >= *(v5 + 16))
    {
      v6 = dispatch thunk of _ViewList_ID_Views.endIndex.getter();
      return (v6 < a3);
    }

    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = *(v5 + 16 * v3 + 32);
      return (v6 < a3);
    }
  }

  __break(1u);
  return result;
}

uint64_t destroy for Sections(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for Sections(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  *(a1 + 72) = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v8;
  *(a1 + 96) = *(a2 + 96);
  v9 = v5;

  return a1;
}

uint64_t assignWithCopy for Sections(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithTake for Sections(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t getEnumTagSinglePayload for Sections.Item(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Sections.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t PickerContent.keyboardShortcut(_:modifiers:localization:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1[1];
  v6 = *a3;
  v8[0] = *a1;
  v8[1] = v5;
  v8[2] = a2;
  v9 = v6;
  return PickerContent.keyboardShortcut(_:)(v8, a4, a5);
}

uint64_t View.pickerKeyboardShortcut(_:modifiers:)()
{

  View._trait<A>(_:_:)();
}

uint64_t View.pickerKeyboardShortcut(_:modifiers:localization:)()
{

  View._trait<A>(_:_:)();
}

void static KeyboardShortcutPickerOptionTraitKey.defaultValue.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t instantiation function for generic protocol witness table for _KeyboardShortcutPickerContent<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _KeyboardShortcutPickerContent(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) == 0 && ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFFFFFFFE7)
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *(v10 + 16) = *(v11 + 16);
    *(v10 + 24) = *(v11 + 24);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  return v3;
}

uint64_t assignWithCopy for _KeyboardShortcutPickerContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);

  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  return a1;
}

uint64_t assignWithTake for _KeyboardShortcutPickerContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);

  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  return a1;
}

void storeEnumTagSinglePayload for _KeyboardShortcutPickerContent(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFE)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          *v18 = 0;
          *(v18 + 8) = 0;
          *(v18 + 24) = 0;
          *(v18 + 16) = 0;
          *v18 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v18 + 8) = a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 25);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t type metadata completion function for NSSwiftMutableAttributedString()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_7SwiftUI21_ScrollableLayoutItemVs5NeverOTg5(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v26 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v26;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v23 = a3 + v8;
      a1(v24, &v23);
      if (v4)
      {
        goto LABEL_22;
      }

      v26 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v6 = v26;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 104 * v13;
      v15 = v24[0];
      v16 = v24[2];
      *(v14 + 48) = v24[1];
      *(v14 + 64) = v16;
      *(v14 + 32) = v15;
      v17 = v24[3];
      v18 = v24[4];
      v19 = v24[5];
      *(v14 + 128) = v25;
      *(v14 + 96) = v18;
      *(v14 + 112) = v19;
      *(v14 + 80) = v17;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v8)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation19AttributedStringKey_pXpG_AF0eF0V5IndexVs5NeverOTg5(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v16 = type metadata accessor for AttributedString.Index();
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v20 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v10 = v20;
  v11 = (a3 + 32);
  v15 = v6 + 32;
  while (1)
  {
    v19 = *v11;
    v17(&v19);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v20 = v10;
    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
      v10 = v20;
    }

    *(v10 + 16) = v13 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v16);
    ++v11;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI16_ViewListOutputsVG_14AttributeGraph0I0VyAF0fG0_pGs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v14 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v14;
  for (i = a3 + 32; ; i += 72)
  {
    a1(&v13, i);
    if (v3)
    {
      break;
    }

    v9 = v13;
    v14 = v5;
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (v11 >= v10 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v5 = v14;
    }

    *(v5 + 16) = v11 + 1;
    *(v5 + 4 * v11 + 32) = v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence<>.max()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString.Index();
  MEMORY[0x1EEE9AC00](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10.n128_f64[0]);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
        v21 = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t specialized Sequence<>.min()@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X8>)
{
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(result + 56);
    v13 = *(v12 + v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + (v15 | (v14 << 6)));
      if (v16 < v13)
      {
        v13 = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        goto LABEL_20;
      }

      v7 = *(result + 64 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(result + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    v13 = 3;
LABEL_20:
    *a2 = v13;
  }

  return result;
}

uint64_t specialized Sequence<>.min()@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>, uint8x16_t a3@<Q1>)
{
  v3 = *(result + 16);
  if (!v3)
  {
    *a2 = 3;
    return result;
  }

  v4 = *(result + 32);
  v5 = v3 - 1;
  if (v3 != 1)
  {
    if (v3 < 5)
    {
      v6 = 1;
      goto LABEL_17;
    }

    if (v3 >= 0x21)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFE0;
      v8 = vdupq_n_s8(v4);
      v9 = (result + 49);
      v10 = v5 & 0xFFFFFFFFFFFFFFE0;
      a3 = v8;
      do
      {
        v8 = vminq_u8(v9[-1], v8);
        a3 = vminq_u8(*v9, a3);
        v9 += 2;
        v10 -= 32;
      }

      while (v10);
      v11 = vminq_u8(v8, a3);
      v11.i8[0] = vminvq_u8(v11);
      v4 = v11.i32[0];
      if (v5 == v7)
      {
        goto LABEL_15;
      }

      if ((v5 & 0x1C) == 0)
      {
        v6 = v7 | 1;
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v12 = vdup_n_s16(v4);
    v13 = (v7 + result + 33);
    v14 = v7 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v15 = *v13++;
      a3.i32[0] = v15;
      a3.i64[0] = vmovl_u8(*a3.i8).u64[0];
      v12 = vmin_u16(*a3.i8, (*&v12 & 0xFF00FF00FF00FFLL));
      v14 += 4;
    }

    while (v14);
    LOBYTE(v4) = vminv_u16(v12);
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_15;
    }

LABEL_17:
    v16 = v3 - v6;
    v17 = (v6 + result + 32);
    do
    {
      v19 = *v17++;
      v18 = v19;
      if (v19 < v4)
      {
        LOBYTE(v4) = v18;
      }

      --v16;
    }

    while (v16);
  }

LABEL_15:
  *a2 = v4;
  return result;
}

uint64_t specialized Sequence<>.min()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString.Index();
  MEMORY[0x1EEE9AC00](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10.n128_f64[0]);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
        v21 = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t specialized Collection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v24 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - v7;
  v9 = type metadata accessor for AttributedString.Index();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v23 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<AttributedString.Index>();
  v22[1] = type metadata accessor for AttributedString.UnicodeScalarView();
  v22[0] = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView, MEMORY[0x1E69686C0]);
  dispatch thunk of Collection.index(after:)();
  v16 = v8;
  (*(v10 + 16))(v8, a1, v9);
  v17 = v24;
  v18 = *(v10 + 32);
  v18(v16 + *(v24 + 56), v12, v9);
  outlined init with copy of Range<AttributedString.Index>(v16, v5, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v19 = *(v17 + 56);
  v18(v15, v5, v9);
  v20 = *(v10 + 8);
  v20(&v5[v19], v9);
  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v16, v5, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v18(&v15[*(v23 + 44)], &v5[*(v17 + 56)], v9);
  v20(v5, v9);
  dispatch thunk of Collection.subscript.getter();
  return outlined destroy of Range<AttributedString.Index>?(v15, type metadata accessor for Range<AttributedString.Index>);
}

uint64_t specialized Sequence.filter(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(0, &lazy cache variable for type metadata for <<opaque return type of AttributedString.Keys.makeIterator()>>.0);
  v8 = v7;
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v27 = a3;
  AttributedString.Keys.makeIterator()();

  swift_getOpaqueTypeConformance2();
  dispatch thunk of IteratorProtocol.next()();
  v11 = v23;
  if (v23)
  {
    v12 = MEMORY[0x1E69E7CC0];
    v21 = a1;
    v22 = a2;
    while (1)
    {
      v16 = v24;
      v25[0] = v11;
      v25[1] = v24;
      v17 = a1(v25);
      if (v3)
      {
        break;
      }

      if (v17)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
          v12 = v26;
        }

        v14 = *(v12 + 16);
        v13 = *(v12 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v12 = v26;
        }

        *(v12 + 16) = v14 + 1;
        v15 = v12 + 16 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v16;
        a1 = v21;
      }

      swift_getOpaqueTypeConformance2();
      dispatch thunk of IteratorProtocol.next()();
      v11 = v23;
      if (!v23)
      {
        goto LABEL_12;
      }
    }

    (*(v20 + 8))(v10, v8);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_12:
    (*(v20 + 8))(v10, v8);
  }

  return v12;
}

void specialized Sequence.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v5 = type metadata accessor for ToolbarStorage.Entry(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = 0;
  v37 = a3;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v33 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v21 = v13;
    if (!v19)
    {
      break;
    }

LABEL_8:
    v22 = *(v36 + 72);
    outlined init with copy of Range<AttributedString.Index>(*(v37 + 56) + v22 * (__clz(__rbit64(v19)) | (v13 << 6)), v9, type metadata accessor for ToolbarStorage.Entry);
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v9, v12, type metadata accessor for ToolbarStorage.Entry);
    v23 = v34(v12);
    if (v3)
    {
      outlined destroy of Range<AttributedString.Index>?(v12, type metadata accessor for ToolbarStorage.Entry);

      return;
    }

    v19 &= v19 - 1;
    if (v23)
    {
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v12, v32, type metadata accessor for ToolbarStorage.Entry);
      v24 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
        v24 = v38;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v33 = v27 + 1;
        v31 = v27;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1);
        v28 = v33;
        v27 = v31;
        v24 = v38;
      }

      *(v24 + 16) = v28;
      v29 = *(v36 + 80);
      v33 = v24;
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v32, v24 + ((v29 + 32) & ~v29) + v27 * v22, type metadata accessor for ToolbarStorage.Entry);
    }

    else
    {
      outlined destroy of Range<AttributedString.Index>?(v12, type metadata accessor for ToolbarStorage.Entry);
    }
  }

  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v13);
    ++v21;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void thunk for @callee_unowned @convention(block) (@unowned NSDictionary, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a5 + 16))(a5, isa, a2, a3, a4);
}

uint64_t thunk for @callee_unowned @convention(block) (@unowned Swift.AnyObject?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of Any?(a1, v17);
  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x1EEE9AC00](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  (*(a5 + 16))(a5, v15, a2, a3, a4);
  return swift_unknownObjectRelease();
}

uint64_t NSSwiftMutableAttributedString.resolver.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

uint64_t NSSwiftMutableAttributedString.copyOnWriteTracker.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  swift_getWitnessTable();
  v4 = type metadata accessor for NSSwiftAttributedSubstring.CopyOnWriteState();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v8, &v1[v3], v5);
  if (v8[1])
  {
    return (*(*(v4 - 8) + 32))(a1, v8, v4);
  }

  (*(v6 + 8))(v8, v5);
  NSSwiftAttributedStringProtocol.copyOnWriteState<>()(a1);
  (*(*(v4 - 8) + 16))(v9, a1, v4);
  swift_beginAccess();
  (*(v6 + 40))(&v1[v3], v9, v5);
  return swift_endAccess();
}

uint64_t NSSwiftMutableAttributedString.copyOnWriteTracker.setter(uint64_t a1)
{
  swift_getObjectType();
  swift_getWitnessTable();
  v3 = type metadata accessor for NSSwiftAttributedSubstring.CopyOnWriteState();
  (*(*(v3 - 8) + 32))(v7, a1, v3);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 40))(&v1[v4], v7, v5);
  return swift_endAccess();
}

uint64_t NSSwiftMutableAttributedString.invalidateStringCache()()
{
  swift_beginAccess();
  AttributedString.CStringCache.invalidate()();
  swift_endAccess();
  swift_beginAccess();
  AttributedString.UTF16Cache.invalidate()();
  return swift_endAccess();
}

uint64_t NSSwiftMutableAttributedString.fastCStringBuffer()()
{
  v1 = type metadata accessor for AttributedString();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, &v0[*((*MEMORY[0x1E69E7D40] & *v0) + 0x60)], v1, v3);
  swift_beginAccess();
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  v6 = AttributedString.CStringCache.buffer<A>(for:maxLength:)();
  swift_endAccess();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t NSSwiftMutableAttributedString.fastUTF16Buffer()()
{
  v1 = type metadata accessor for AttributedString();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, &v0[*((*MEMORY[0x1E69E7D40] & *v0) + 0x60)], v1, v3);
  swift_beginAccess();
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  v6 = AttributedString.UTF16Cache.buffer<A>(for:maxLength:)();
  swift_endAccess();
  (*(v2 + 8))(v5, v1);
  return v6;
}

unint64_t NSSwiftMutableAttributedString.copy()@<X0>(Class *a1@<X8>)
{
  v2.location = NSAttributedString.range.getter();
  isa = NSSwiftMutableAttributedString.attributedSubstring(from:)(v2).super.isa;
  result = type metadata accessor for NSAttributedString();
  a1[3] = result;
  *a1 = isa;
  return result;
}

NSAttributedString __swiftcall NSSwiftMutableAttributedString.attributedSubstring(from:)(__C::_NSRange from)
{
  length = from.length;
  location = from.location;
  swift_getObjectType();
  NSSwiftMutableAttributedString.copyOnWriteTracker.getter(v6);
  swift_getWitnessTable();
  type metadata accessor for NSSwiftAttributedSubstring.CopyOnWriteState();
  v3.location = location;
  v3.length = length;
  isa = NSSwiftAttributedSubstring.CopyOnWriteState.substring(in:)(v3).super.isa;
  NSSwiftMutableAttributedString.copyOnWriteTracker.setter(v6);
  return isa;
}

uint64_t NSSwiftMutableAttributedString.mutableCopy()@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v10 = &v20 - v9;
  v11 = type metadata accessor for AttributedString();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, &v1[*((v6 & v4) + 0x60)], v12);
  v16 = *((*v5 & *v1) + 0x68);
  swift_beginAccess();
  (*(v8 + 16))(v10, &v1[v16], v7);
  v17 = objc_allocWithZone(ObjectType);
  v18 = specialized NSSwiftMutableAttributedString.init(value:resolver:)(v14, v10);
  result = (*(v8 + 8))(v10, v7);
  a1[3] = ObjectType;
  *a1 = v18;
  return result;
}

uint64_t @objc NSSwiftMutableAttributedString.copy()(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

Swift::Bool __swiftcall NSSwiftMutableAttributedString.isEqual(to:)(NSAttributedString to)
{
  v2.value.location = 0;
  v2.value.length = 0;
  v2.is_nil = 1;
  return NSAttributedString.isCharacterAndRunwiseEqual(to:in:)(to, v2);
}

uint64_t @objc NSSwiftMutableAttributedString.isEqual(to:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = NSSwiftMutableAttributedString.isEqual(to:)(v4);

  return a1 & 1;
}

uint64_t @objc NSSwiftMutableAttributedString.length.getter(void *a1)
{
  v1 = a1;
  v2 = NSSwiftMutableAttributedString.length.getter();

  return v2;
}

uint64_t NSSwiftMutableAttributedString.length.getter()
{
  v1 = type metadata accessor for AttributedString.UTF16View();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, &v0[*((*MEMORY[0x1E69E7D40] & *v0) + 0x60)], v5, v7);
  AttributedString.utf16.getter();
  (*(v6 + 8))(v9, v5);
  v10 = AttributedString.UTF16View.count.getter();
  (*(v2 + 8))(v4, v1);
  return v10;
}

id NSSwiftMutableAttributedString._stringProxy.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    type metadata accessor for NSSwiftMutableAttributedString.StringImplementation();
    v4 = v0;
    v5 = NSSwiftMutableAttributedString.StringImplementation.__allocating_init(_:)(v0);
    v6 = [objc_allocWithZone(SUINSStringProxy) initWithImplementation_];

    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

Class @objc NSSwiftMutableAttributedString.stringProxy()(void *a1)
{
  v1 = a1;
  isa = NSSwiftMutableAttributedString.stringProxy()().super.super.isa;

  return isa;
}

id NSSwiftMutableAttributedString.StringImplementation.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  ObjectType = swift_getObjectType();
  *&v3[direct field offset for NSSwiftMutableAttributedString.StringImplementation.str] = a1;
  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id NSSwiftMutableAttributedString._mutableStringProxy.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    type metadata accessor for NSSwiftMutableAttributedString.StringImplementation();
    v4 = v0;
    v5 = NSSwiftMutableAttributedString.StringImplementation.__allocating_init(_:)(v0);
    v6 = [objc_allocWithZone(SUINSMutableStringProxy) initWithImplementation_];

    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

Class @objc NSSwiftMutableAttributedString.mutableStringProxy()(void *a1)
{
  v1 = a1;
  isa = NSSwiftMutableAttributedString.mutableStringProxy()().super.super.super.isa;

  return isa;
}

Class @objc NSSwiftMutableAttributedString.attributedSubstring(from:)(void *a1, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  v6 = a1;
  v7.location = a3;
  v7.length = a4;
  v8.super.isa = NSSwiftMutableAttributedString.attributedSubstring(from:)(v7).super.isa;

  return v8.super.isa;
}

uint64_t NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(void **a1, uint64_t *a2, char *a3, char *a4, int a5)
{
  LODWORD(v256) = a5;
  v253 = a4;
  v251 = a3;
  v228 = a2;
  v266 = a1;
  v6 = *v5;
  v7 = *MEMORY[0x1E69E7D40];
  v223 = *MEMORY[0x1E69E7D40] & *v5;
  v263 = v5;
  v226 = *((v7 & v6) + 0x50);
  v225 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v224 = &v215 - v8;
  v241 = type metadata accessor for AttributeContainer();
  v237 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v239 = &v215 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v227 = &v215 - v11;
  v259 = type metadata accessor for AttributedString.Runs();
  v262 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v250 = &v215 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for AttributedString.Runs.Run();
  v233 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v238 = &v215 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v248 = &v215 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v252 = &v215 - v17;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v244 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v243 = &v215 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v242 = &v215 - v21;
  v258 = type metadata accessor for AttributedString.Index();
  v254 = *(v258 - 1);
  MEMORY[0x1EEE9AC00](v258);
  v220 = &v215 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v222 = &v215 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v219 = &v215 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v221 = &v215 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v229 = &v215 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v267 = &v215 - v32;
  v265 = type metadata accessor for AttributedString();
  v33 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v249 = &v215 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v247 = &v215 - v36;
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v235 = (&v215 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v215 - v40;
  type metadata accessor for Range<AttributedString.Index>();
  v236 = v42;
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v218 = &v215 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v217 = &v215 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v216 = &v215 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v261 = &v215 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v268 = &v215 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v246 = &v215 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v245 = &v215 - v56;
  v57 = type metadata accessor for OSSignpostID();
  v58 = *(v57 - 1);
  MEMORY[0x1EEE9AC00](v57);
  v260 = &v215 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v215 - v61;
  type metadata accessor for OSSignposter?(0);
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v215 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for signposter != -1)
  {
LABEL_38:
    v213 = v33;
    v214 = v64;
    swift_once();
    v64 = v214;
    v33 = v213;
  }

  v67 = __swift_project_value_buffer(v64, signposter);
  outlined init with copy of Range<AttributedString.Index>(v67, v66, type metadata accessor for OSSignposter?);
  v68 = type metadata accessor for OSSignposter();
  v69 = *(v68 - 8);
  v70 = *(v69 + 48);
  v257 = v68;
  v71 = v70(v66, 1);
  v264 = v33;
  if (v71 == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v66, type metadata accessor for OSSignposter?);
    v72 = 0;
  }

  else
  {
    static OSSignpostID.new.getter(v62);
    v73 = OSSignposter.logHandle.getter();
    LODWORD(v255) = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v74 = swift_slowAlloc();
      *v74 = 67109120;
      *(v74 + 1) = v228 == 0;
      v75 = v43;
      v76 = v74;
      v77 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_18BD4A000, v73, v255, v77, "attributes", "effectiveRange: %{BOOL}d", v76, 8u);
      v78 = v76;
      v43 = v75;
      MEMORY[0x18D0110E0](v78, -1, -1);
    }

    v58[2](v260, v62, v57);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v79 = OSSignpostIntervalState.init(id:isOpen:)();
    (v58[1])(v62, v57);
    v72 = v79;
    (*(v69 + 8))(v66, v257);
    v33 = v264;
  }

  v80 = v263;
  v81 = *((*MEMORY[0x1E69E7D40] & *v263) + 0x60);
  v83 = v33 + 16;
  v82 = *(v33 + 2);
  v84 = v247;
  v82(v247, &v81[v263], v265);
  v230 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  Range<>.init<A>(_:in:)();
  v85 = v43[6];
  if (v85(v41, 1, v236) == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v41, type metadata accessor for Range<AttributedString.Index>?);
    v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_35:
    $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v72, "attributes");

    return v86;
  }

  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v41, v245, type metadata accessor for Range<AttributedString.Index>);
  v82(v84, &v81[v80], v265);
  v255 = v83;
  v257 = v82;
  v260 = v81;
  v215 = v72;
  if (v256)
  {
    v87 = v267;
    AttributedString.startIndex.getter();
    v88 = *(v264 + 1);
    v89 = v84;
    v90 = v265;
    v88(v89, v265);
    v91 = v249;
    v82(v249, &v81[v80], v90);
    v92 = v229;
    AttributedString.endIndex.getter();
    v88(v91, v90);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v93 = v258;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v95 = v254;
    v96 = v254[4];
    v97 = v242;
    v96(v242, v87, v93);
    v98 = v244;
    v96((v97 + *(v244 + 48)), v92, v93);
    v99 = v243;
    outlined init with copy of Range<AttributedString.Index>(v97, v243, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v100 = *(v98 + 48);
    v96(v246, v99, v93);
    v101 = v95[1];
    v101(v99 + v100, v93);
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v97, v99, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v102 = v236;
    v96(&v246[*(v236 + 36)], (v99 + *(v98 + 48)), v93);
    v101(v99, v93);
    v103 = v263;
    v104 = v227;
    v105 = v259;
    v106 = v250;
LABEL_14:
    v108 = v247;
    v109 = v265;
    v257(v247, &v260[v103], v265);
    AttributedString.runs.getter();
    v110 = *(v264 + 1);
    v264 += 8;
    v254 = v110;
    (v110)(v108, v109);
    v111 = v252;
    v112 = v106;
    v113 = v245;
    AttributedString.Runs.subscript.getter();
    v114 = *(v262 + 8);
    v262 += 8;
    v253 = v114;
    (v114)(v112, v105);
    applyFixup #1 <A>(to:) in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v103, v104);
    if (!v228)
    {
      v182 = v104;
      v183 = *((*MEMORY[0x1E69E7D40] & *v103) + 0x68);
      swift_beginAccess();
      v184 = v225;
      v185 = v224;
      v186 = v226;
      (*(v225 + 16))(v224, v103 + v183, v226);
      v86 = (*(*(*(v223 + 88) + 8) + 32))(v182, v186);
      (*(v184 + 8))(v185, v186);
      (v237[1])(v182, v241);
      (*(v233 + 8))(v111, v240);
      outlined destroy of Range<AttributedString.Index>?(v246, type metadata accessor for Range<AttributedString.Index>);
      v187 = v113;
LABEL_34:
      outlined destroy of Range<AttributedString.Index>?(v187, type metadata accessor for Range<AttributedString.Index>);
      v72 = v215;
      goto LABEL_35;
    }

    AttributedString.Runs.Run.range.getter();
    v251 = *(v102 + 36);
    v266 = (v95 + 2);
    v115 = (v95 + 1);
    v235 = (v237 + 1);
    v237 = v95 + 4;
    v234 = (v233 + 8);
    v233 += 32;
    v116 = v247;
    v62 = v258;
    v117 = v267;
    v118 = v246;
    v249 = v115;
    while (1)
    {
      v119 = v261;
      AttributedString.Runs.Run.range.getter();
      v120 = v119 + *(v102 + 36);
      v258 = *v266;
      (v258)(v117, v120, v62);
      outlined destroy of Range<AttributedString.Index>?(v119, type metadata accessor for Range<AttributedString.Index>);
      v121 = static AttributedString.Index.== infix(_:_:)();
      v256 = *v115;
      v256(v117, v62);
      v122 = v260;
      if ((v121 & 1) == 0 || (static AttributedString.Index.< infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v123 = v102;
      v57 = v263;
      v124 = v116;
      v125 = v116;
      v126 = v261;
      v127 = v265;
      v257(v124, &v122[v263], v265);
      v41 = v250;
      AttributedString.runs.getter();
      (v254)(v125, v127);
      v66 = v268;
      v128 = v248;
      AttributedString.Runs.subscript.getter();
      v43 = v253;
      (v253)(v41, v259);
      v129 = v239;
      applyFixup #1 <A>(to:) in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v57, v239);
      (*v235)(v129, v241);
      AttributedString.Runs.Run.range.getter();
      v130 = v258;
      (v258)(v267, v126 + *(v123 + 36), v62);
      v58 = v267;
      outlined destroy of Range<AttributedString.Index>?(v126, type metadata accessor for Range<AttributedString.Index>);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
      v33 = v62;
      v64 = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((v64 & 1) == 0)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v131 = v242;
      v132 = v268;
      v130(v242, v268, v62);
      outlined destroy of Range<AttributedString.Index>?(v132, type metadata accessor for Range<AttributedString.Index>);
      v133 = v244;
      v134 = *v237;
      (*v237)(v131 + *(v244 + 48), v58, v62);
      v135 = v243;
      outlined init with copy of Range<AttributedString.Index>(v131, v243, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v136 = *(v133 + 48);
      v134(v268, v135, v62);
      v137 = (v135 + v136);
      v115 = v249;
      v138 = v256;
      v256(v137, v62);
      v139 = v131;
      v102 = v236;
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v139, v135, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v134(&v251[v268], (v135 + *(v133 + 48)), v62);
      v138(v135, v62);
      v140 = v247;
      v141 = v265;
      v257(v247, &v260[v263], v265);
      AttributedString.runs.getter();
      (v254)(v140, v141);
      v142 = v238;
      AttributedString.Runs.subscript.getter();
      (v253)(v41, v259);
      v143 = *v234;
      v144 = v128;
      v145 = v240;
      (*v234)(v144, v240);
      v146 = v252;
      v143(v252, v145);
      v147 = v142;
      v117 = v267;
      (*v233)(v146, v147, v145);
      v118 = v246;
      v116 = v140;
    }

    v148 = v261;
    AttributedString.Runs.Run.range.getter();
    (v258)(v117, v148, v62);
    outlined destroy of Range<AttributedString.Index>?(v148, type metadata accessor for Range<AttributedString.Index>);
    v149 = static AttributedString.Index.== infix(_:_:)();
    v256(v117, v62);
    if (v149)
    {
      v232 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
      do
      {
        if ((dispatch thunk of static Comparable.> infix(_:_:)() & 1) == 0)
        {
          break;
        }

        v150 = v263;
        v151 = v265;
        v152 = v257;
        v257(v116, &v122[v263], v265);
        v153 = v268;
        v154 = v116;
        AttributedStringProtocol.index(beforeCharacter:)();
        v155 = v116;
        v156 = v254;
        (v254)(v155, v151);
        v152(v154, &v122[v150], v151);
        v57 = v153;
        v157 = v250;
        AttributedString.runs.getter();
        v156(v154, v151);
        v41 = v248;
        AttributedString.Runs.subscript.getter();
        v158 = v157;
        v58 = v253;
        (v253)(v158, v259);
        v159 = v239;
        applyFixup #1 <A>(to:) in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v150, v239);
        (*v235)(v159, v241);
        v160 = v261;
        AttributedString.Runs.Run.range.getter();
        v161 = v229;
        v66 = v258;
        (v258)(v229, v160, v62);
        outlined destroy of Range<AttributedString.Index>?(v160, type metadata accessor for Range<AttributedString.Index>);
        v43 = v251;
        v33 = v62;
        v64 = dispatch thunk of static Comparable.<= infix(_:_:)();
        if ((v64 & 1) == 0)
        {
          goto LABEL_37;
        }

        v162 = *v237;
        v163 = v242;
        (*v237)(v242, v161, v62);
        v164 = v244;
        (v66)(v163 + *(v244 + 48), v43 + v57, v62);
        v231 = type metadata accessor for Range<AttributedString.Index>;
        outlined destroy of Range<AttributedString.Index>?(v268, type metadata accessor for Range<AttributedString.Index>);
        v165 = v243;
        outlined init with copy of Range<AttributedString.Index>(v163, v243, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v166 = *(v164 + 48);
        v162(v268, v165, v62);
        v167 = v256;
        v256((v165 + v166), v62);
        v168 = v265;
        v169 = v247;
        _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v163, v165, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v162(v43 + v268, (v165 + *(v164 + 48)), v62);
        v167(v165, v62);
        v257(v169, &v260[v263], v168);
        v170 = v250;
        AttributedString.runs.getter();
        (v254)(v169, v168);
        v171 = v238;
        AttributedString.Runs.subscript.getter();
        (v253)(v170, v259);
        v172 = *v234;
        v173 = v240;
        (*v234)(v248, v240);
        v167(v267, v62);
        v172(v252, v173);
        v174 = v171;
        v118 = v246;
        (*v233)(v252, v174, v173);
        v175 = v261;
        AttributedString.Runs.Run.range.getter();
        (v258)(v267, v175, v62);
        v176 = v175;
        v116 = v169;
        v177 = v267;
        outlined destroy of Range<AttributedString.Index>?(v176, v231);
        LOBYTE(v172) = static AttributedString.Index.== infix(_:_:)();
        v256(v177, v62);
        v122 = v260;
      }

      while ((v172 & 1) != 0);
    }

    v178 = v217;
    AttributedString.Runs.Run.range.getter();
    v179 = v219;
    v180 = v258;
    (v258)(v219, v178, v62);
    outlined destroy of Range<AttributedString.Index>?(v178, type metadata accessor for Range<AttributedString.Index>);
    v267 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      v181 = v221;
      (*v237)(v221, v179, v62);
    }

    else
    {
      v256(v179, v62);
      v181 = v221;
      v180(v221, v118, v62);
    }

    v188 = v222;
    v189 = v236;
    v190 = v218;
    v191 = *(v236 + 36);
    AttributedString.Runs.Run.range.getter();
    v192 = v220;
    (v258)(v220, v190 + *(v189 + 36), v62);
    outlined destroy of Range<AttributedString.Index>?(v190, type metadata accessor for Range<AttributedString.Index>);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      (*v237)(v188, v192, v62);
    }

    else
    {
      v256(v192, v62);
      (v258)(v188, v118 + v191, v62);
    }

    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v193 = *v237;
      v194 = v181;
      v195 = v261;
      v196 = v242;
      (*v237)(v242, v194, v62);
      v197 = v244;
      v193((v196 + *(v244 + 48)), v188, v62);
      v198 = v243;
      outlined init with copy of Range<AttributedString.Index>(v196, v243, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v199 = *(v197 + 48);
      v200 = v216;
      v193(v216, v198, v62);
      v201 = (v198 + v199);
      v202 = v256;
      v256(v201, v62);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v196, v198, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v193((v200 + *(v236 + 36)), (v198 + *(v197 + 48)), v62);
      v202(v198, v62);
      outlined init with copy of Range<AttributedString.Index>(v200, v195, type metadata accessor for Range<AttributedString.Index>);
      v203 = v263;
      v257(v247, &v260[v263], v265);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
      v204 = _NSRange.init<A, B>(_:in:)();
      v205 = v228;
      *v228 = v204;
      v205[1] = v206;
      v207 = *((*MEMORY[0x1E69E7D40] & *v203) + 0x68);
      swift_beginAccess();
      v208 = v225;
      v209 = v203 + v207;
      v210 = v224;
      v211 = v226;
      (*(v225 + 16))(v224, v209, v226);
      v212 = v227;
      v86 = (*(*(*(v223 + 88) + 8) + 32))(v227, v211);
      (*(v208 + 8))(v210, v211);
      outlined destroy of Range<AttributedString.Index>?(v200, type metadata accessor for Range<AttributedString.Index>);
      outlined destroy of Range<AttributedString.Index>?(v268, type metadata accessor for Range<AttributedString.Index>);
      (*v235)(v212, v241);
      (*v234)(v252, v240);
      outlined destroy of Range<AttributedString.Index>?(v246, type metadata accessor for Range<AttributedString.Index>);
      v187 = v245;
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  v107 = v235;
  Range<>.init<A>(_:in:)();
  v102 = v236;
  result = (v85)(v107, 1, v236);
  if (result != 1)
  {
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v107, v246, type metadata accessor for Range<AttributedString.Index>);
    v104 = v227;
    v105 = v259;
    v106 = v250;
    v103 = v80;
    v95 = v254;
    goto LABEL_14;
  }

LABEL_41:
  __break(1u);
  return result;
}

Class @objc NSSwiftMutableAttributedString.attributes(at:effectiveRange:)(void *a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v6 = a1;
  NSSwiftMutableAttributedString.attributes(at:effectiveRange:)(a3, a4);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

Class @objc NSSwiftMutableAttributedString.attributes(at:longestEffectiveRange:in:)(void *a1, uint64_t a2, void **a3, uint64_t *a4, char *a5, char *a6)
{
  v10 = a1;
  NSSwiftMutableAttributedString.attributes(at:longestEffectiveRange:in:)(a3, a4, a5, a6);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

uint64_t static OSSignpostID.new.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for OSSignposter?(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OSSignpostID?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, signposter);
  outlined init with copy of Range<AttributedString.Index>(v9, v5, type metadata accessor for OSSignposter?);
  v10 = type metadata accessor for OSSignposter();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v5, type metadata accessor for OSSignposter?);
    v12 = type metadata accessor for OSSignpostID();
    v13 = *(v12 - 8);
    (*(v13 + 56))(v8, 1, 1, v12);
    static OSSignpostID.exclusive.getter();
    result = (*(v13 + 48))(v8, 1, v12);
    if (result != 1)
    {
      return outlined destroy of Range<AttributedString.Index>?(v8, type metadata accessor for OSSignpostID?);
    }
  }

  else
  {
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    (*(v11 + 8))(v5, v10);
    v15 = type metadata accessor for OSSignpostID();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v8, 0, 1, v15);
    return (*(v16 + 32))(a1, v8, v15);
  }

  return result;
}

uint64_t applyFixup #1 <A>(to:) in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *MEMORY[0x1E69E7D40];
  type metadata accessor for Range<AttributedString.Index>();
  v27[2] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v28 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributeContainer();
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v31 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v5 & v4) + 0x50);
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v27 - v13;
  v15 = *((v5 & v4) + 0x58);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v29 = type metadata accessor for TextAttributeValidationRecord();
  v16 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v18 = v27 - v17;
  AttributedString.Runs.Run.attributes.getter();
  v19 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x68);
  swift_beginAccess();
  v20 = v30;
  v21 = *(v30 + 16);
  v27[1] = a1;
  v21(v14, a1 + v19, v11);
  (*(v15 + 40))(a2, v11, v15);
  (*(v20 + 8))(v14, v11);
  (*(v16 + 8))(v18, v29);
  v22 = v31;
  AttributedString.Runs.Run.attributes.getter();
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer, MEMORY[0x1E69688E0]);
  v23 = v32;
  LOBYTE(v19) = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v33 + 8))(v22, v23);
  if ((v19 & 1) == 0)
  {
    v25 = v28;
    AttributedString.Runs.Run.range.getter();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
    v26 = AttributedString.subscript.modify();
    AttributedSubstring.setAttributes(_:)();
    v26(v34, 0);
    return outlined destroy of Range<AttributedString.Index>?(v25, type metadata accessor for Range<AttributedString.Index>);
  }

  return result;
}

uint64_t NSSwiftMutableAttributedString.attribute(attrName:location:effectiveRange:rangeLimit:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(_BYTE *, uint64_t)@<X4>, int a6@<W5>, unint64_t *a7@<X8>)
{
  v8 = v7;
  v192 = a6;
  v164 = a5;
  v181 = a4;
  v195 = a2;
  v12 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x58);
  v13 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x50);
  swift_getAssociatedTypeWitness();
  v152 = v12;
  swift_getAssociatedConformanceWitness();
  v157 = type metadata accessor for TextAttributeValidationRecord();
  v155 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v154 = &v144[-v14];
  v162 = type metadata accessor for AttributeContainer();
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v156 = &v144[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v160 = &v144[-v17];
  v151 = type metadata accessor for AttributedString.Runs();
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v144[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v159 = type metadata accessor for AttributedString.Runs.Run();
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v163 = &v144[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = v13;
  v148 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v147 = &v144[-v21];
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v166 = &v144[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Range<AttributedString.Index>();
  v167 = v24;
  v165 = *(v24 - 1);
  MEMORY[0x1EEE9AC00](v24);
  v146 = &v144[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v169 = &v144[-v27];
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v177 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v176 = &v144[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v171 = &v144[-v31];
  type metadata accessor for ClosedRange<AttributedString.Index>();
  v170 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v174 = &v144[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v175 = type metadata accessor for AttributedString.UnicodeScalarView();
  v173 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v190 = &v144[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Slice<AttributedString.UnicodeScalarView>();
  v172 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v178 = &v144[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v191 = type metadata accessor for AttributedString.UTF16View();
  v196 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v189 = &v144[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v193 = type metadata accessor for AttributedString();
  v197 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v194 = &v144[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v187 = type metadata accessor for AttributedString.Index();
  v180 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v179 = &v144[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40);
  v188 = &v144[-v41];
  v183 = type metadata accessor for OSSignpostID();
  v168 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v43 = &v144[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v144[-v45];
  type metadata accessor for OSSignposter?(0);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v144[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for signposter != -1)
  {
    v143 = v48;
    swift_once();
    v48 = v143;
  }

  v51 = __swift_project_value_buffer(v48, signposter);
  outlined init with copy of Range<AttributedString.Index>(v51, v50, type metadata accessor for OSSignposter?);
  v52 = type metadata accessor for OSSignposter();
  v53 = *(v52 - 8);
  v54 = (*(v53 + 48))(v50, 1, v52);
  v184 = a7;
  v186 = v8;
  v185 = a1;
  if (v54 == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v50, type metadata accessor for OSSignposter?);
    v55 = 0;
  }

  else
  {
    static OSSignpostID.new.getter(v46);
    v56 = a1;
    v57 = OSSignposter.logHandle.getter();
    v145 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v182 = a3;
      v60 = v59;
      v199 = v59;
      *v58 = 136315394;
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v199);

      *(v58 + 4) = v63;
      *(v58 + 12) = 1024;
      *(v58 + 14) = v182 == 0;
      v64 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_18BD4A000, v57, v145, v64, "attribute", "key: %s, effectiveRange: %{BOOL}d", v58, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v60);
      v65 = v60;
      a3 = v182;
      MEMORY[0x18D0110E0](v65, -1, -1);
      v66 = v58;
      a7 = v184;
      MEMORY[0x18D0110E0](v66, -1, -1);
    }

    v67 = v168;
    v68 = v183;
    v168[2](v43, v46, v183);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v55 = OSSignpostIntervalState.init(id:isOpen:)();
    (v67[1])(v46, v68);
    (*(v53 + 8))(v50, v52);
    v8 = v186;
    a1 = v185;
  }

  v69 = v195;
  v70 = v197;
  v183 = v55;
  if (!a3)
  {
    v73 = MEMORY[0x1E69E7D40];
    v74 = *(v197 + 16);
    v196 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x60);
    v76 = v193;
    v75 = v194;
    v74(v194, v8 + v196, v193);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
    v77 = v166;
    Range<>.init<A>(_:in:)();
    if (v165[6](v77, 1, v167) == 1)
    {
      outlined destroy of Range<AttributedString.Index>?(v77, type metadata accessor for Range<AttributedString.Index>?);
      v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      type metadata accessor for [AnyHashable : Any]();
      a7[3] = v79;
      *a7 = v78;
    }

    else
    {
      v121 = v77;
      v122 = v76;
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v121, v169, type metadata accessor for Range<AttributedString.Index>);
      v123 = *((*v73 & *v8) + 0x68);
      swift_beginAccess();
      v124 = a1;
      v125 = v148;
      v126 = v8 + v123;
      v127 = v147;
      v128 = v70;
      v129 = v153;
      (*(v148 + 16))(v147, v126, v153);
      (*(v152 + 32))(&v199, v124, v129);
      (*(v125 + 8))(v127, v129);
      v74(v75, v8 + v196, v122);
      v130 = v149;
      AttributedString.runs.getter();
      (*(v128 + 8))(v75, v122);
      v131 = v163;
      AttributedString.Runs.subscript.getter();
      (*(v150 + 8))(v130, v151);
      v132 = v160;
      AttributedString.Runs.Run.attributes.getter();
      v133 = v200;
      v134 = v201;
      __swift_project_boxed_opaque_existential_1(&v199, v200);
      v135 = v154;
      (*(v134 + 32))(v132, v133, v134);
      (*(v155 + 8))(v135, v157);
      v136 = v156;
      AttributedString.Runs.Run.attributes.getter();
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer, MEMORY[0x1E69688E0]);
      v137 = v162;
      LOBYTE(v133) = dispatch thunk of static Equatable.== infix(_:_:)();
      v138 = *(v161 + 8);
      v138(v136, v137);
      if ((v133 & 1) == 0)
      {
        v139 = v146;
        AttributedString.Runs.Run.range.getter();
        lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
        v140 = AttributedString.subscript.modify();
        AttributedSubstring.setAttributes(_:)();
        v140(v198, 0);
        v131 = v163;
        outlined destroy of Range<AttributedString.Index>?(v139, type metadata accessor for Range<AttributedString.Index>);
      }

      v141 = v200;
      v142 = v201;
      __swift_project_boxed_opaque_existential_1(&v199, v200);
      (*(*(v142 + 8) + 16))(v132, v141);
      v138(v132, v137);
      (*(v158 + 8))(v131, v159);
      outlined destroy of Range<AttributedString.Index>?(v169, type metadata accessor for Range<AttributedString.Index>);
      __swift_destroy_boxed_opaque_existential_1(&v199);
    }

    goto LABEL_25;
  }

  if (v192)
  {
    result = NSSwiftMutableAttributedString.length.getter();
    v72 = v194;
    goto LABEL_14;
  }

  result = v164 + v181;
  v72 = v194;
  if (!__OFADD__(v181, v164))
  {
LABEL_14:
    if (__OFSUB__(result, v69))
    {
      __break(1u);
    }

    else
    {
      v163 = (result - v69);
      v182 = a3;
      v80 = v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x60);
      v81 = *(v70 + 16);
      v82 = v193;
      v169 = (v70 + 16);
      v168 = v81;
      (v81)(v72, v80, v193);
      v83 = v189;
      AttributedString.utf16.getter();
      v84 = *(v70 + 8);
      v197 = v70 + 8;
      v167 = v84;
      v84(v72, v82);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View, MEMORY[0x1E6968810]);
      v85 = v179;
      v86 = v191;
      dispatch thunk of Collection.startIndex.getter();
      v87 = v188;
      dispatch thunk of Collection.index(_:offsetBy:)();
      v88 = v180;
      v89 = *(v180 + 8);
      v90 = v187;
      v166 = (v180 + 8);
      v165 = v89;
      (v89)(v85, v187);
      v91 = v196 + 8;
      v164 = *(v196 + 8);
      v164(v83, v86);
      v179 = v80;
      AttributedString.unicodeScalars.getter();
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if (result)
      {
        v92 = *(v88 + 16);
        v196 = v91;
        v93 = v171;
        v92(v171, v87, v90);
        v94 = v177;
        v92((v93 + *(v177 + 48)), v87, v90);
        v95 = v176;
        outlined init with copy of Range<AttributedString.Index>(v93, v176, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v96 = *(v94 + 48);
        v97 = *(v88 + 32);
        v98 = v174;
        v97(v174, v95, v90);
        v99 = v165;
        (v165)(&v95[v96], v90);
        _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v93, v95, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v97((v98 + *(v170 + 36)), &v95[*(v94 + 48)], v90);
        v99(v95, v90);
        v100 = v178;
        v101 = v190;
        specialized Collection.subscript.getter(v98, v178);
        outlined destroy of Range<AttributedString.Index>?(v98, type metadata accessor for ClosedRange<AttributedString.Index>);
        (*(v173 + 8))(v101, v175);
        v102 = v193;
        v103 = v194;
        (v168)(v194, v179, v193);
        v104 = v189;
        AttributedString.utf16.getter();
        v167(v103, v102);
        v105 = v188;
        v106 = AttributedString.UTF16View.distance(from:to:)();
        result = (v164)(v104, v191);
        v107 = v195;
        v108 = __OFADD__(v195, v106);
        v109 = v195 + v106;
        if (!v108)
        {
          if (v192)
          {
            v110 = 0;
          }

          else
          {
            v110 = v181;
          }

          if (!__OFSUB__(v109, v110))
          {
            v111 = v105;
            v112 = v184;
            *v184 = 0u;
            *(v112 + 1) = 0u;
            MEMORY[0x1EEE9AC00](result);
            v113 = v182;
            *&v144[-16] = v114;
            *&v144[-8] = v113;
            v116 = v115;
            v117 = v185;
            v120 = NSSwiftMutableAttributedString.enumerateAttribute(_:in:options:using:)(v185, v118, v119, 2uLL, partial apply for closure #2 in NSSwiftMutableAttributedString.attribute(attrName:location:effectiveRange:rangeLimit:), &v144[-32]);
            MEMORY[0x1EEE9AC00](v120);
            *&v144[-32] = v113;
            *&v144[-24] = v109;
            *&v144[-16] = v107;
            NSSwiftMutableAttributedString.enumerateAttribute(_:in:options:using:)(v117, v107, v163, 0, partial apply for closure #3 in NSSwiftMutableAttributedString.attribute(attrName:location:effectiveRange:rangeLimit:), &v144[-48]);
            outlined destroy of Range<AttributedString.Index>?(v100, type metadata accessor for Slice<AttributedString.UnicodeScalarView>);
            v116(v111, v187);
LABEL_25:
            $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v183, "attribute");
          }

          goto LABEL_29;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_30:
  __break(1u);
  return result;
}

id @objc NSSwiftMutableAttributedString.attribute(_:at:effectiveRange:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v9 = a1;
  NSSwiftMutableAttributedString.attribute(_:at:effectiveRange:)(v8, a4, a5, v18);

  v10 = v19;
  if (v19)
  {
    v11 = __swift_project_boxed_opaque_existential_1(v18, v19);
    v12 = *(v10 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id @objc NSSwiftMutableAttributedString.attribute(_:at:longestEffectiveRange:in:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(_BYTE *, uint64_t))
{
  v12 = a3;
  v13 = a1;
  NSSwiftMutableAttributedString.attribute(_:at:longestEffectiveRange:in:)(v12, a4, a5, a6, a7, v22);

  v14 = v23;
  if (v23)
  {
    v15 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x1EEE9AC00](v15);
    v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t NSSwiftMutableAttributedString.enumerateAttribute(_:in:options:using:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(_OWORD *), uint64_t a6)
{
  v7 = v6;
  v55 = a6;
  v63 = a3;
  v64 = a4;
  v62 = a2;
  v61 = type metadata accessor for AttributedString();
  v58 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Range<AttributedString.Index>();
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for OSSignpostID();
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v47[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47[-v19];
  type metadata accessor for OSSignposter?(0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for signposter != -1)
  {
    v46 = v22;
    swift_once();
    v22 = v46;
  }

  v25 = __swift_project_value_buffer(v22, signposter);
  outlined init with copy of Range<AttributedString.Index>(v25, v24, type metadata accessor for OSSignposter?);
  v26 = type metadata accessor for OSSignposter();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v24, 1, v26);
  v54 = a1;
  if (v28 == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v24, type metadata accessor for OSSignposter?);
    v29 = 0;
  }

  else
  {
    v50 = a5;
    static OSSignpostID.new.getter(v20);
    v30 = a1;
    v31 = OSSignposter.logHandle.getter();
    v32 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v33 = swift_slowAlloc();
      v48 = v32;
      v34 = v33;
      v49 = swift_slowAlloc();
      v65[0] = v49;
      *v34 = 136315650;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v65);

      *(v34 + 4) = v37;
      *(v34 + 12) = 1024;
      v38 = v64;
      *(v34 + 14) = (v64 >> 1) & 1;
      *(v34 + 18) = 1024;
      *(v34 + 20) = (v38 >> 20) & 1;
      v39 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_18BD4A000, v31, v48, v39, "enumerateAttribute", "key: %s, reversed: %{BOOL}d, longestEffectiveRangeNotRequired: %{BOOL}d", v34, 0x18u);
      v40 = v49;
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x18D0110E0](v40, -1, -1);
      MEMORY[0x18D0110E0](v34, -1, -1);
    }

    v41 = v52;
    v42 = v53;
    (*(v52 + 16))(v51, v20, v53);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v29 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v41 + 8))(v20, v42);
    (*(v27 + 8))(v24, v26);
    a5 = v50;
  }

  v43 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x60);
  (*(v58 + 16))(v59, &v7[v43], v61);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  v44 = v60;
  Range<>.init<A>(_:in:)();
  result = (*(v56 + 48))(v44, 1, v57);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v44, v15, type metadata accessor for Range<AttributedString.Index>);
    closure #1 in NSSwiftMutableAttributedString.enumerateAttribute(_:in:options:using:)(&v7[v43], v7, v54, v15, v64, a5, v55);
    outlined destroy of Range<AttributedString.Index>?(v15, type metadata accessor for Range<AttributedString.Index>);
    $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v29, "enumerateAttribute");
  }

  return result;
}

uint64_t NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(char **a1, char **a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, char *), uint64_t a5)
{
  v185 = a5;
  v184 = a4;
  v229 = a3;
  v251 = a2;
  v245 = a1;
  v255 = *MEMORY[0x1E69E9840];
  v6 = *v5;
  v7 = *MEMORY[0x1E69E7D40];
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v183 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v209 = &v180 - v11;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v208 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v207 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v206 = &v180 - v15;
  v16 = *((v7 & v6) + 0x50);
  v225 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v220 = &v180 - v18;
  v252 = v5;
  v19 = *((v7 & v6) + 0x58);
  swift_getAssociatedTypeWitness();
  v222 = v19;
  v221 = v16;
  swift_getAssociatedConformanceWitness();
  v211 = type metadata accessor for TextAttributeValidationRecord();
  v240 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v210 = &v180 - v20;
  v234 = type metadata accessor for AttributeContainer();
  v232 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v219 = &v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v239 = &v180 - v23;
  v247 = type metadata accessor for AttributedString.Runs();
  v241 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v236 = &v180 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for AttributedSubstring();
  v231 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v235 = &v180 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for AttributedString.Runs.Run();
  v226 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v205 = &v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v213 = &v180 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v227 = &v180 - v30;
  v253 = type metadata accessor for AttributedString.Index();
  v224 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v182 = &v180 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v195 = &v180 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v212 = &v180 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v223 = &v180 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v237 = &v180 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v238 = &v180 - v41;
  v190 = type metadata accessor for AttributedString();
  v244 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v189 = &v180 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = &v180 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v203 = &v180 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v228 = &v180 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v243 = &v180 - v51;
  type metadata accessor for Range<AttributedString.Index>();
  v248 = *(v52 - 8);
  v249 = v52;
  MEMORY[0x1EEE9AC00](v52);
  v202 = &v180 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v192 = &v180 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v193 = &v180 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v250 = &v180 - v59;
  v242 = type metadata accessor for OSSignpostID();
  v60 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v62 = &v180 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v180 - v64;
  type metadata accessor for OSSignposter?(0);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v180 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for signposter != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v70 = __swift_project_value_buffer(v67, signposter);
    outlined init with copy of Range<AttributedString.Index>(v70, v69, type metadata accessor for OSSignposter?);
    v71 = type metadata accessor for OSSignposter();
    v72 = *(v71 - 8);
    v73 = (*(v72 + 48))(v69, 1, v71);
    v204 = v45;
    if (v73 == 1)
    {
      outlined destroy of Range<AttributedString.Index>?(v69, type metadata accessor for OSSignposter?);
      v181 = 0;
    }

    else
    {
      static OSSignpostID.new.getter(v65);
      v74 = OSSignposter.logHandle.getter();
      v75 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v76 = swift_slowAlloc();
        *v76 = 67109376;
        v77 = v229;
        *(v76 + 4) = (v229 >> 1) & 1;
        *(v76 + 8) = 1024;
        *(v76 + 10) = (v77 >> 20) & 1;
        v78 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_18BD4A000, v74, v75, v78, "enumerateAttributes", "reversed: %{BOOL}d, longestEffectiveRangeNotRequired: %{BOOL}d", v76, 0xEu);
        MEMORY[0x18D0110E0](v76, -1, -1);
      }

      v79 = v242;
      (*(v60 + 2))(v62, v65, v242);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v181 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v60 + 1))(v65, v79);
      (*(v72 + 8))(v69, v71);
    }

    v80 = v250;
    v60 = v252;
    v81 = v244;
    v82 = v244[2];
    v242 = *((*MEMORY[0x1E69E7D40] & *v252) + 0x60);
    v188 = v244 + 2;
    v187 = v82;
    (v82)(v189, &v252[v242], v190);
    v83 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
    v84 = v243;
    v186 = v83;
    Range<>.init<A>(_:in:)();
    v85 = v249;
    v86 = *(v248 + 48);
    v201 = v248 + 48;
    v200 = v86;
    v87 = v86(v84, 1, v249);
    v69 = v213;
    v88 = v223;
    if (v87 == 1)
    {
      __break(1u);
    }

    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v84, v80, type metadata accessor for Range<AttributedString.Index>);
    v89 = *(v85 + 36);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v194 = v89;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    if ((v229 & 2) != 0)
    {
      v94 = v189;
      v95 = v190;
      (v187)(v189, &v60[v242], v190);
      v96 = v237;
      AttributedStringProtocol.index(beforeCharacter:)();
      v97 = v94;
      v93 = v96;
      (v81[1])(v97, v95);
      v92 = v224;
    }

    else
    {
      v92 = v224;
      v93 = v237;
      v224[2](v237, v80, v253);
    }

    v99 = v92[4];
    v98 = (v92 + 4);
    v100 = v238;
    v230 = v99;
    v99(v238, v93, v253);
    v254 = 0;
    v218 = &v60[*((*MEMORY[0x1E69E7D40] & *v60) + 0x68)];
    swift_beginAccess();
    v101 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v197 = 0;
    v245 = (v231 + 8);
    v244 = v241 + 1;
    v241 = (v98 - 16);
    v251 = (v98 - 24);
    v217 = (v225 + 16);
    v199 = v222 + 40;
    v216 = (v225 + 8);
    v198 = (v240 + 8);
    ++v232;
    v191 = (v248 + 56);
    v215 = (v226 + 8);
    v196 = (v226 + 32);
    v224 = v98;
    v214 = (v98 + 16);
    v237 = v101;
    while (1)
    {
      v102 = v250;
      if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0 || (dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
      {
        (*v251)(v100, v253);
        v90 = type metadata accessor for Range<AttributedString.Index>;
        v91 = v102;
        goto LABEL_39;
      }

      v103 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
      v104 = v235;
      v248 = v103;
      AttributedString.subscript.getter();
      v105 = v236;
      AttributedSubstring.runs.getter();
      v231 = *v245;
      (v231)(v104, v246);
      AttributedString.Runs.subscript.getter();
      v243 = *v244;
      (v243)(v105, v247);
      v240 = *v241;
      (v240)(v88, v100, v253);
      if ((v229 & 0x100000) == 0)
      {
        break;
      }

LABEL_34:
      v164 = v220;
      v165 = v221;
      (*v217)(v220, v218, v221);
      v166 = v227;
      swift_beginAccess();
      v167 = v219;
      AttributedString.Runs.Run.attributes.getter();
      swift_endAccess();
      v168 = (*(*(v222 + 8) + 32))(v167, v165);
      (*v232)(v167, v234);
      (*v216)(v164, v165);
      swift_beginAccess();
      v169 = v193;
      AttributedString.Runs.Run.range.getter();
      swift_endAccess();
      (v187)(v189, &v60[v242], v190);
      v170 = _NSRange.init<A, B>(_:in:)();
      v184(v168, v170, v171, &v254);

      swift_beginAccess();
      AttributedString.Runs.Run.range.getter();
      swift_endAccess();
      v172 = v183;
      next #1 <A>(_:) in NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(v169, v229, v60, v183);
      outlined destroy of Range<AttributedString.Index>?(v169, type metadata accessor for Range<AttributedString.Index>);
      v173 = *v251;
      v88 = v223;
      v174 = v253;
      (*v251)(v223, v253);
      (*v215)(v166, v233);
      v100 = v238;
      v173(v238, v174);
      if ((*v214)(v172, 1, v174) == 1)
      {
        outlined destroy of Range<AttributedString.Index>?(v250, type metadata accessor for Range<AttributedString.Index>);
        v90 = type metadata accessor for AttributedString.Index?;
        v91 = v172;
        goto LABEL_39;
      }

      v175 = v182;
      v176 = v253;
      v177 = v230;
      v230(v182, v172, v253);
      v177(v100, v175, v176);
      if (v254)
      {
        v173(v100, v253);
        v90 = type metadata accessor for Range<AttributedString.Index>;
        v91 = v250;
        goto LABEL_39;
      }
    }

    swift_beginAccess();
    swift_beginAccess();
    v65 = v224;
    while (1)
    {
      v106 = v212;
      (v240)(v212, v88, v253);
      v107 = v250;
      if (dispatch thunk of static Comparable.<= infix(_:_:)())
      {
        v108 = v253;
        v109 = dispatch thunk of static Comparable.< infix(_:_:)();
        v110 = v108;
        v62 = *v251;
        (*v251)(v106, v110);
        if (v109)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v62 = *v251;
        (*v251)(v106, v253);
      }

      if ((specialized getter of runMightBeBrokenByDirt #1 in NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(v229, v107, v60, v227, v88) & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_23:
      v111 = v235;
      AttributedString.subscript.getter();
      v112 = v236;
      AttributedSubstring.runs.getter();
      (v231)(v111, v246);
      swift_beginAccess();
      AttributedString.Runs.subscript.getter();
      swift_endAccess();
      (v243)(v112, v247);
      v113 = v239;
      AttributedString.Runs.Run.attributes.getter();
      v114 = v220;
      v115 = v221;
      (*v217)(v220, v218, v221);
      v116 = v210;
      (*(v222 + 40))(v113, v115);
      (*v216)(v114, v115);
      (*v198)(v116, v211);
      v117 = v219;
      AttributedString.Runs.Run.attributes.getter();
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer, MEMORY[0x1E69688E0]);
      v118 = v234;
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v119 = *v232;
      (*v232)(v117, v118);
      v120 = v238;
      v67 = dispatch thunk of static Comparable.<= infix(_:_:)();
      v226 = v119;
      if (v45)
      {
        break;
      }

      if ((v67 & 1) == 0)
      {
        goto LABEL_41;
      }

      v131 = v206;
      v132 = v253;
      v133 = v240;
      (v240)(v206, v120, v253);
      v134 = v208;
      v133(v131 + *(v208 + 48), v120, v132);
      v135 = v207;
      outlined init with copy of Range<AttributedString.Index>(v131, v207, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v136 = *(v134 + 48);
      v137 = v193;
      v138 = v230;
      v230(v193, v135, v132);
      (v62)(v135 + v136, v132);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v131, v135, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v139 = v249;
      v138((v137 + *(v249 + 36)), v135 + *(v134 + 48), v132);
      v140 = (v62)(v135, v132);
      MEMORY[0x1EEE9AC00](v140);
      v141 = v239;
      *(&v180 - 2) = v69;
      *(&v180 - 1) = v141;
      v127 = v203;
      v142 = v197;
      _s10Foundation16AttributedStringV9transform8updating4bodySnyAC5IndexVGSgAI_yACzxYKXEtxYKs5ErrorRzlF();
      v197 = v142;
      outlined destroy of Range<AttributedString.Index>?(v137, type metadata accessor for Range<AttributedString.Index>);
      v130 = v139;
LABEL_28:
      v143 = v228;
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v127, v228, type metadata accessor for Range<AttributedString.Index>?);
      v144 = v143;
      v145 = v204;
      outlined init with copy of Range<AttributedString.Index>(v144, v204, type metadata accessor for Range<AttributedString.Index>?);
      v146 = v200(v145, 1, v130);
      v225 = v62;
      if (v146 == 1)
      {
        outlined destroy of Range<AttributedString.Index>?(v145, type metadata accessor for Range<AttributedString.Index>?);
      }

      else
      {
        v147 = v238;
        v148 = v253;
        (v62)(v238, v253);
        v149 = v145;
        v150 = v192;
        _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v149, v192, type metadata accessor for Range<AttributedString.Index>);
        (v240)(v147, v150, v148);
        outlined destroy of Range<AttributedString.Index>?(v150, type metadata accessor for Range<AttributedString.Index>);
      }

      v151 = v235;
      AttributedString.subscript.getter();
      v152 = v236;
      AttributedSubstring.runs.getter();
      v153 = v231;
      (v231)(v151, v246);
      v154 = v205;
      AttributedString.Runs.subscript.getter();
      (v243)(v152, v247);
      v155 = *v215;
      v156 = v227;
      v157 = v233;
      (*v215)(v227, v233);
      (*v196)(v156, v154, v157);
      AttributedString.subscript.getter();
      AttributedSubstring.runs.getter();
      v153(v151, v246);
      v88 = v223;
      swift_beginAccess();
      AttributedString.Runs.subscript.getter();
      swift_endAccess();
      (v243)(v152, v247);
      v158 = v202;
      AttributedString.Runs.Run.range.getter();
      v155(v154, v157);
      v159 = v209;
      next #1 <A>(_:) in NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(v158, v229, v252, v209);
      outlined destroy of Range<AttributedString.Index>?(v158, type metadata accessor for Range<AttributedString.Index>);
      outlined destroy of Range<AttributedString.Index>?(v228, type metadata accessor for Range<AttributedString.Index>?);
      if ((*v214)(v159, 1, v253) == 1)
      {
        outlined destroy of Range<AttributedString.Index>?(v159, type metadata accessor for AttributedString.Index?);
        (v226)(v239, v234);
        v69 = v213;
        v155(v213, v233);
        v60 = v252;
        goto LABEL_34;
      }

      v160 = v253;
      (v225)(v88, v253);
      v161 = v195;
      v162 = v159;
      v65 = v224;
      v163 = v230;
      v230(v195, v162, v160);
      v163(v88, v161, v160);
      (v226)(v239, v234);
      v69 = v213;
      v155(v213, v233);
      v60 = v252;
    }

    if (v67)
    {
      v121 = v206;
      v122 = v253;
      v123 = v240;
      (v240)(v206, v120, v253);
      v124 = v208;
      v123(v121 + *(v208 + 48), v120, v122);
      v125 = v207;
      outlined init with copy of Range<AttributedString.Index>(v121, v207, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v126 = *(v124 + 48);
      v127 = v203;
      v128 = v230;
      v230(v203, v125, v122);
      (v62)(v125 + v126, v122);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v121, v125, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v129 = *(v124 + 48);
      v130 = v249;
      v128((v127 + *(v249 + 36)), v125 + v129, v122);
      (v62)(v125, v122);
      (*v191)(v127, 0, 1, v130);
      goto LABEL_28;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v179 = v67;
    swift_once();
    v67 = v179;
  }

  v90 = type metadata accessor for Range<AttributedString.Index>;
  v91 = v80;
LABEL_39:
  outlined destroy of Range<AttributedString.Index>?(v91, v90);
  $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v181, "enumerateAttributes");
}

uint64_t next #1 <A>(_:) in NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  if ((a2 & 2) != 0)
  {
    if (static AttributedString.Index.== infix(_:_:)())
    {
      v24 = type metadata accessor for AttributedString.Index();
      (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
    }

    else
    {
      (*(v9 + 16))(v11, &a3[*((*MEMORY[0x1E69E7D40] & *a3) + 0x60)], v8);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
      AttributedStringProtocol.index(beforeCharacter:)();
      (*(v9 + 8))(v11, v8);
      v25 = type metadata accessor for AttributedString.Index();
      (*(*(v25 - 8) + 56))(v17, 0, 1, v25);
    }
  }

  else
  {
    type metadata accessor for Range<AttributedString.Index>();
    v19 = *(v18 + 36);
    v20 = static AttributedString.Index.== infix(_:_:)();
    v21 = type metadata accessor for AttributedString.Index();
    v22 = *(v21 - 8);
    v23 = v22;
    if (v20)
    {
      (*(v22 + 56))(v14, 1, 1, v21);
    }

    else
    {
      (*(v22 + 16))(v14, a1 + v19, v21);
      (*(v23 + 56))(v14, 0, 1, v21);
    }

    v17 = v14;
  }

  return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v17, a4, type metadata accessor for AttributedString.Index?);
}

uint64_t specialized getter of runMightBeBrokenByDirt #1 in NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v36 = a1;
  v37 = a2;
  v38 = a3;
  type metadata accessor for Range<AttributedString.Index>();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.Runs.Run();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AttributedString.Index();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  swift_beginAccess();
  (*(v10 + 16))(v12, a4, v9);
  AttributedString.Runs.Run.range.getter();
  v23 = v12;
  v24 = v36;
  (*(v10 + 8))(v23, v9);
  next #1 <A>(_:) in NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(v8, v24, v38, v15);
  outlined destroy of Range<AttributedString.Index>?(v8, type metadata accessor for Range<AttributedString.Index>);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v15, type metadata accessor for AttributedString.Index?);
    v25 = 0;
  }

  else
  {
    v27 = *(v17 + 32);
    v26 = v17 + 32;
    v27(v22, v15, v16);
    v28 = (v26 - 16);
    v29 = (v26 - 24);
    if ((v24 & 2) != 0)
    {
      v32 = v35;
      swift_beginAccess();
      (*v28)(v19, v32, v16);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
      v31 = dispatch thunk of static Comparable.>= infix(_:_:)();
    }

    else
    {
      v30 = v35;
      swift_beginAccess();
      (*v28)(v19, v30, v16);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
      v31 = dispatch thunk of static Comparable.<= infix(_:_:)();
    }

    v25 = v31;
    v33 = *v29;
    (*v29)(v19, v16);
    v33(v22, v16);
  }

  return v25 & 1;
}

uint64_t closure #1 in NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for AttributeContainer();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Range<AttributedString.Index>();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AttributedString.Runs.Run.range.getter();
  (*(v5 + 16))(v7, a3, v4);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
  v11 = AttributedString.subscript.modify();
  AttributedSubstring.setAttributes(_:)();
  (*(v5 + 8))(v7, v4);
  v11(v13, 0);
  return outlined destroy of Range<AttributedString.Index>?(v10, type metadata accessor for Range<AttributedString.Index>);
}

void @objc NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(void *a1, int a2, char **a3, char **a4, uint64_t a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v12[2] = v10;
  v11 = a1;
  NSSwiftMutableAttributedString.enumerateAttributes(in:options:using:)(a3, a4, a5, partial apply for thunk for @callee_unowned @convention(block) (@unowned NSDictionary, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> (), v12);
  _Block_release(v10);
}

uint64_t closure #1 in NSSwiftMutableAttributedString.enumerateAttribute(_:in:options:using:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(_OWORD *), uint64_t a7)
{
  v22 = a6;
  v23 = a7;
  v20 = a4;
  v21 = a5;
  v10 = *a2;
  v11 = *MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v20 - v14;
  v16 = *((v11 & v10) + 0x68);
  swift_beginAccess();
  (*(v13 + 16))(v15, &a2[v16], v12);
  (*(*((v11 & v10) + 0x58) + 32))(v24, a3, v12);
  (*(v13 + 8))(v15, v12);
  v17 = v25;
  v18 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  ValidatingTextAttributeDefinition.enumerate(fixing:in:options:using:)(a1, v20, v21, v22, v23, v17, v18);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t ValidatingTextAttributeDefinition.enumerate(fixing:in:options:using:)(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(_OWORD *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v54 = a7;
  v59 = a4;
  v60 = a5;
  v62 = a3;
  v63 = a1;
  v52 = a2;
  v10 = type metadata accessor for AttributedString.Runs.Validated();
  type metadata accessor for (value: Any?, range: _NSRange)();
  v56 = v11;
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for LazyMapSequence();
  v57 = swift_getWitnessTable();
  v13 = type metadata accessor for CoalescingAdjacentRangesWithSameValue();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v44 - v14;
  v15 = v10;
  v48 = v10;
  v51 = type metadata accessor for LazySequence();
  v55 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v61 = &v44 - v16;
  type metadata accessor for Range<AttributedString.Index>();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a6 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v23 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v44 - v26;
  v58 = v12;
  v53 = *(v12 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v49 = &v44 - v30;
  v31 = *(v20 + 16);
  v31(v23, v8, a6, v29);
  outlined init with copy of Range<AttributedString.Index>(v52, v19, type metadata accessor for Range<AttributedString.Index>);
  v32 = v54;
  AttributedString.Runs.Validated.init(definition:base:range:reversed:longestEffectiveRangeNotRequired:)(v23, v63, v19, (v62 >> 1) & 1, (v62 >> 20) & 1, a6, v54, v27);
  v33 = v48;
  MEMORY[0x18D00CB50](v48, WitnessTable);
  (*(v24 + 8))(v27, v33);
  (v31)(v23, v47, a6);
  v34 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v35 = (v21 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = a6;
  *(v36 + 24) = v32;
  (*(v20 + 32))(v36 + v34, v23, a6);
  v37 = v49;
  *(v36 + v35) = v63;
  v38 = v51;
  swift_getWitnessTable();
  v39 = v61;
  LazySequenceProtocol.map<A>(_:)();

  (*(v55 + 8))(v39, v38);
  if ((v62 & 0x100000) != 0)
  {
    v40 = v58;
    Sequence<>.sink(into:)(v59, v60, v58);
  }

  else
  {
    v41 = v44;
    v40 = v58;
    Sequence<>.coalescingAdjacentRangesWithSameValue()(v58, v44);
    v42 = v46;
    swift_getWitnessTable();
    Sequence<>.sink(into:)(v59, v60, v42);
    (*(v45 + 8))(v41, v42);
  }

  return (*(v53 + 8))(v37, v40);
}

void @objc NSSwiftMutableAttributedString.enumerateAttribute(_:in:options:using:)(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, void *aBlock)
{
  v12 = _Block_copy(aBlock);
  v15[2] = v12;
  v13 = a3;
  v14 = a1;
  NSSwiftMutableAttributedString.enumerateAttribute(_:in:options:using:)(v13, a4, a5, a6, partial apply for thunk for @callee_unowned @convention(block) (@unowned Swift.AnyObject?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> (), v15);
  _Block_release(v12);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.replaceCharacters(in:with:)(__C::_NSRange in, NSAttributedString with)
{
  v3 = v2;
  isa = with.super.isa;
  length = in.length;
  location = in.location;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v39 = *MEMORY[0x1E69E7D40] & *v2;
  v41 = *((v6 & v5) + 0x50);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](in.location);
  v8 = &v34 - v7;
  v42 = type metadata accessor for AttributedString();
  v9 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSSwiftMutableAttributedString.beginEditing()();
  if (NSNotFound.getter() == location)
  {

    NSSwiftMutableAttributedString.endEditing()();
  }

  else
  {
    v20 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
    v35 = v9;
    v21 = *(v9 + 16);
    v22 = v42;
    v21(v11, &v3[v20], v42);
    v23 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
    v36 = location;
    v37 = v23;
    Range<>.init<A>(_:in:)();
    if ((*(v17 + 48))(v14, 1, v16) != 1)
    {
      v24 = v19;
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v14, v19, type metadata accessor for Range<AttributedString.Index>);
      v25 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
      swift_beginAccess();
      v26 = v41;
      (*(v38 + 16))(v8, &v3[v25], v41);
      v27 = *(*(v39 + 88) + 8);
      isa = isa;
      AttributedString.init<A>(converting:using:)(isa, v8, v26, v27, v11);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
      v39 = v24;
      AttributedString.replaceSubrange<A, B>(_:with:)();
      NSSwiftMutableAttributedString.invalidateStringCache()();
      v28 = [v3 string];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      swift_beginAccess();
      (*(v27 + 56))(v29, v31, v26, v27);
      swift_endAccess();

      v32 = [(objc_class *)isa length];
      if (!__OFSUB__(v32, length))
      {
        v33.location = v36;
        v33.length = length;
        NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(3uLL, v33, v32 - length);
        (*(v35 + 8))(v11, v22);
        outlined destroy of Range<AttributedString.Index>?(v39, type metadata accessor for Range<AttributedString.Index>);
        NSSwiftMutableAttributedString.endEditing()();
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.beginEditing()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSSwiftMutableAttributedString.copyOnWriteTracker.getter(v15);
  swift_getWitnessTable();
  type metadata accessor for NSSwiftAttributedSubstring.CopyOnWriteState();
  NSSwiftAttributedSubstring.CopyOnWriteState.ensureReadyForWrite()();
  NSSwiftMutableAttributedString.copyOnWriteTracker.setter(v15);
  v7 = MEMORY[0x1E69E7D40];
  (*(v4 + 16))(v6, &v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)], v3);
  v8 = *((*v7 & *v1) + 0x70);
  swift_beginAccess();
  v9 = *&v1[v8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v1[v8] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    *&v1[v8] = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v6, v3);
  *&v1[v8] = v9;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_beginEditing);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(NSTextStorageEditActions _, __C::_NSRange range, Swift::Int changeInLength)
{
  length = range.length;
  v134 = changeInLength;
  location = range.location;
  ObjectType = swift_getObjectType();
  v6 = *v3;
  v7 = *MEMORY[0x1E69E7D40];
  v117 = *MEMORY[0x1E69E7D40] & *v3;
  type metadata accessor for PartialRangeFrom<AttributedString.Index>();
  v111 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v110 = &v104 - v11;
  v116 = type metadata accessor for AttributedSubstring();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v118 = &v104 - v14;
  type metadata accessor for PartialRangeUpTo<AttributedString.Index>();
  v113 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v104 - v18;
  v119 = type metadata accessor for AttributedString.Index();
  v121 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v122 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v128 = (&v104 - v23);
  type metadata accessor for Range<AttributedString.Index>();
  v137 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v104 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v106 = &v104 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v109 = &v104 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v124 = &v104 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v132 = &v104 - v34;
  v35 = type metadata accessor for AttributedString();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v104 - v40;
  v42 = *((v7 & v6) + 0x70);
  swift_beginAccess();
  v43 = *(v3 + v42);
  v44 = *(v43 + 16);
  if (!v44)
  {
    goto LABEL_29;
  }

  v45 = *(v36 + 16);
  v130 = v36 + 16;
  v45(v41, v43 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * (v44 - 1), v35);
  v141.receiver = v3;
  v141.super_class = ObjectType;
  objc_msgSendSuper2(&v141, sel_beginEditing);
  v135 = v3;
  v140.receiver = v3;
  v140.super_class = ObjectType;
  v107 = ObjectType;
  objc_msgSendSuper2(&v140, sel_edited_range_changeInLength_, _, location, length, v134);
  v131 = v41;
  v126 = v45;
  v45(v38, v41, v35);
  v46 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  v47 = v128;
  v127 = v38;
  v123 = v46;
  Range<>.init<A>(_:in:)();
  v48 = *(v25 + 48);
  v49 = v48(v47, 1, v137);
  v50 = v36;
  v136 = v35;
  if (v49 == 1)
  {
    v51 = v135;
LABEL_7:
    outlined destroy of Range<AttributedString.Index>?(v47, type metadata accessor for Range<AttributedString.Index>?);
    v56 = swift_getObjectType();
    v142.receiver = v51;
    v142.super_class = v56;
    objc_msgSendSuper2(&v142, sel_endEditing);
    (*(v50 + 8))(v131, v136);
    return;
  }

  v125 = v36;
  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v47, v132, type metadata accessor for Range<AttributedString.Index>);
  if (__OFADD__(length, v134))
  {
    __break(1u);
    goto LABEL_25;
  }

  v51 = v135;
  v52 = v136;
  v53 = *((*MEMORY[0x1E69E7D40] & *v135) + 0x60);
  v54 = v127;
  v55 = v126;
  v126(v127, &v135[v53], v136);
  v47 = v122;
  Range<>.init<A>(_:in:)();
  if (v48(v47, 1, v137) == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v132, type metadata accessor for Range<AttributedString.Index>);
    v50 = v125;
    goto LABEL_7;
  }

  v57 = v124;
  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v47, v124, type metadata accessor for Range<AttributedString.Index>);
  v134 = v53;
  v55(v54, &v51[v53], v52);
  v58 = v120;
  AttributedString.startIndex.getter();
  v59 = *(v125 + 8);
  v60 = v54;
  v61 = v58;
  v125 += 8;
  v59(v60, v52);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  v62 = v119;
  v63 = dispatch thunk of static Comparable.> infix(_:_:)();
  v64 = v121;
  v65 = *(v121 + 8);
  v65(v58, v62);
  if ((v63 & 1) == 0)
  {
    goto LABEL_15;
  }

  AttributedString.startIndex.getter();
  v66 = dispatch thunk of static Comparable.> infix(_:_:)();
  v65(v58, v62);
  if ((v66 & 1) == 0)
  {
    goto LABEL_15;
  }

  location = v65;
  length = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v67 = v112;
  v128 = *(v64 + 16);
  v128(v112, v57, v62);
  v122 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type PartialRangeUpTo<AttributedString.Index> and conformance PartialRangeUpTo<A>, type metadata accessor for PartialRangeUpTo<AttributedString.Index>);
  AttributedString.subscript.getter();
  outlined destroy of Range<AttributedString.Index>?(v67, type metadata accessor for PartialRangeUpTo<AttributedString.Index>);
  (*(*(*(v117 + 88) + 8) + 16))(&v142);
  receiver = v142.receiver;
  v69 = v132;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v70 = v108;
  v128(v108, v69, v62);
  v71 = v114;
  AttributedString.subscript.getter();
  outlined destroy of Range<AttributedString.Index>?(v70, type metadata accessor for PartialRangeUpTo<AttributedString.Index>);
  v72 = v109;
  v73 = v118;
  specialized AttributedStringProtocol.suffix<A>(whereValueIn:differsComparedTo:)(receiver, v109);

  v74 = *(v115 + 8);
  v75 = v71;
  v76 = v116;
  v74(v75, v116);
  v74(v73, v76);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    outlined init with copy of Range<AttributedString.Index>(v72, v106, type metadata accessor for Range<AttributedString.Index>);
    v77 = v135;
    v126(v127, &v135[v134], v136);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
    v61 = v120;
    v78 = _NSRange.init<A, B>(_:in:)();
    v138.receiver = v77;
    v138.super_class = v107;
    objc_msgSendSuper2(&v138, sel_edited_range_changeInLength_, 1, v78, v79, 0);
  }

  outlined destroy of Range<AttributedString.Index>?(v72, type metadata accessor for Range<AttributedString.Index>);
  v65 = location;
LABEL_15:
  v81 = v136;
  v80 = v137;
  v82 = *(v137 + 36);
  v83 = v127;
  v126(v127, &v135[v134], v136);
  AttributedString.endIndex.getter();
  v59(v83, v81);
  LOBYTE(v83) = static AttributedString.Index.< infix(_:_:)();
  v65(v61, v62);
  if (v83)
  {
    v84 = *(v80 + 36);
    AttributedString.endIndex.getter();
    v85 = static AttributedString.Index.< infix(_:_:)();
    v65(v61, v62);
    if (v85)
    {
      v86 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
      v87 = v124;
      length = v86;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v88 = v87 + v82;
        v89 = v110;
        location = *(v121 + 16);
        (location)(v110, v88, v62);
        lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type PartialRangeFrom<AttributedString.Index> and conformance PartialRangeFrom<A>, type metadata accessor for PartialRangeFrom<AttributedString.Index>);
        v90 = v118;
        AttributedString.subscript.getter();
        outlined destroy of Range<AttributedString.Index>?(v89, type metadata accessor for PartialRangeFrom<AttributedString.Index>);
        (*(*(*(v117 + 88) + 8) + 16))(&v142);
        v91 = v142.receiver;
        v92 = v132;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v93 = v92 + v84;
          v94 = v105;
          (location)(v105, v93, v62);
          v95 = v114;
          AttributedString.subscript.getter();
          outlined destroy of Range<AttributedString.Index>?(v94, type metadata accessor for PartialRangeFrom<AttributedString.Index>);
          v96 = v104;
          specialized AttributedStringProtocol.prefix<A>(whereValueIn:differsComparedTo:)(v91, v104);

          v97 = *(v115 + 8);
          v98 = v116;
          v97(v95, v116);
          v97(v90, v98);
          if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
          {
            outlined init with copy of Range<AttributedString.Index>(v96, v106, type metadata accessor for Range<AttributedString.Index>);
            v99 = v135;
            v126(v127, &v135[v134], v136);
            lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
            v100 = _NSRange.init<A, B>(_:in:)();
            v139.receiver = v99;
            v139.super_class = v107;
            objc_msgSendSuper2(&v139, sel_edited_range_changeInLength_, 1, v100, v101, 0);
          }

          outlined destroy of Range<AttributedString.Index>?(v96, type metadata accessor for Range<AttributedString.Index>);
          goto LABEL_22;
        }

        goto LABEL_28;
      }

      goto LABEL_26;
    }
  }

LABEL_22:
  outlined destroy of Range<AttributedString.Index>?(v124, type metadata accessor for Range<AttributedString.Index>);
  outlined destroy of Range<AttributedString.Index>?(v132, type metadata accessor for Range<AttributedString.Index>);
  v102 = v135;
  v103 = swift_getObjectType();
  v142.receiver = v102;
  v142.super_class = v103;
  objc_msgSendSuper2(&v142, sel_endEditing);
  v59(v131, v136);
}

void @objc NSSwiftMutableAttributedString.replaceCharacters(in:with:)(void *a1, uint64_t a2, Swift::Int a3, Swift::Int a4, void *a5)
{
  v8 = a5;
  v10 = a1;
  v9.location = a3;
  v9.length = a4;
  NSSwiftMutableAttributedString.replaceCharacters(in:with:)(v9, v8);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.replaceCharacters(in:with:)(__C::_NSRange in, Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  length = in.length;
  location = in.location;
  v6 = NSSwiftMutableAttributedString._mutableStringProxy.getter();
  v7 = MEMORY[0x18D00C850](countAndFlagsBits, object);
  [v6 replaceCharactersInRange:location withString:{length, v7}];
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.setAttributes(_:range:)(Swift::OpaquePointer_optional _, __C::_NSRange range)
{
  v42.location = *&_.is_nil;
  v42.length = range.location;
  rawValue = _.value._rawValue;
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  v39 = *MEMORY[0x1E69E7D40] & *v2;
  v37 = *((v4 & v3) + 0x50);
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](_.value._rawValue);
  v34 = &v32 - v5;
  v6 = type metadata accessor for AttributeContainer();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSSwiftMutableAttributedString.beginEditing()();
  v21 = *(v10 + 16);
  v33 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v21(v12, v2 + v33, v9);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  Range<>.init<A>(_:in:)();
  v22 = *(v18 + 48);
  v35 = v17;
  if (v22(v15, 1, v17) == 1)
  {
    __break(1u);
  }

  else
  {
    v32 = v20;
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v15, v20, type metadata accessor for Range<AttributedString.Index>);
    v23 = v8;
    AttributeContainer.init()();
    swift_beginAccess();
    v25 = v36;
    v24 = v37;
    v26 = v34;
    (*(v36 + 16))();
    if (rawValue)
    {
      v27 = rawValue;
    }

    else
    {
      v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v28 = *(*(v39 + 88) + 8);
    v29 = *(v28 + 40);

    v29(v27, v23, 1, v24, v28);

    (*(v25 + 8))(v26, v24);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
    v30 = v32;
    v31 = AttributedString.subscript.modify();
    AttributedSubstring.setAttributes(_:)();
    v31(v43, 0);
    NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(1uLL, v42, 0);
    (*(v40 + 8))(v23, v41);
    outlined destroy of Range<AttributedString.Index>?(v30, type metadata accessor for Range<AttributedString.Index>);
    NSSwiftMutableAttributedString.endEditing()();
  }
}

uint64_t @objc NSSwiftMutableAttributedString.setAttributes(_:range:)(void *a1, uint64_t a2, void *a3, Swift::Bool a4, Swift::Int a5)
{
  v7 = a3;
  if (a3)
  {
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a1;
  v13.value._rawValue = v7;
  v13.is_nil = a4;
  v10.location = a5;
  NSSwiftMutableAttributedString.setAttributes(_:range:)(v13, v10);
}

uint64_t NSSwiftMutableAttributedString.addAttribute(_:value:range:)(void *a1, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  _sSny10Foundation16AttributedStringV5IndexVGSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringKey, Any)>, type metadata accessor for (NSAttributedStringKey, Any), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = a1;
  outlined init with copy of Any(a2, inited + 40);
  v9 = a1;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Range<AttributedString.Index>?(inited + 32, type metadata accessor for (NSAttributedStringKey, Any));
  v11.location = a3;
  v11.length = a4;
  NSSwiftMutableAttributedString.addAttributes(_:range:)(v10, v11);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.addAttributes(_:range:)(Swift::OpaquePointer _, __C::_NSRange range)
{
  v3 = v2;
  length = range.length;
  location = range.location;
  rawValue = _._rawValue;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v80 = *MEMORY[0x1E69E7D40] & *v2;
  v79 = *((v6 & v5) + 0x50);
  v65 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](_._rawValue);
  v78 = &v57 - v7;
  v77 = type metadata accessor for AttributeContainer();
  v63 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for AttributedString.Runs.Index();
  v72 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for AttributedString.Runs.Run();
  v64 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString.Runs();
  v68 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v67 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = type metadata accessor for AttributedSubstring();
  v59 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v60 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<AttributedString.Runs>();
  v66 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributedString();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v82 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v73 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v61 = &v57 - v28;
  NSSwiftMutableAttributedString.beginEditing()();
  if (NSNotFound.getter() == location)
  {

    NSSwiftMutableAttributedString.endEditing()();
  }

  else
  {
    v29 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
    (*(v18 + 16))(v20, &v3[v29], v17);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
    v30 = v82;
    v58 = location;
    Range<>.init<A>(_:in:)();
    if ((*(v25 + 48))(v30, 1, v24) == 1)
    {
      __break(1u);
    }

    else
    {
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v30, v61, type metadata accessor for Range<AttributedString.Index>);
      v31 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
      v71 = v29;
      v32 = v60;
      v70 = v31;
      AttributedString.subscript.getter();
      v33 = v67;
      AttributedSubstring.runs.getter();
      (*(v59 + 8))(v32, v69);
      v34 = v68;
      (*(v68 + 16))(v16, v33, v11);
      v35 = *(v66 + 9);
      v36 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
      dispatch thunk of Collection.startIndex.getter();
      (*(v34 + 8))(v33, v11);
      v37 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
      v82 = v3;
      v68 = v37;
      swift_beginAccess();
      ++v72;
      v67 = (v64 + 2);
      v66 = (v65 + 2);
      ++v65;
      ++v64;
      ++v63;
      v69 = v36;
      while (1)
      {
        v38 = v83;
        dispatch thunk of Collection.endIndex.getter();
        lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0]);
        v39 = v84;
        v40 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v72)(v38, v39);
        if (v40)
        {
          break;
        }

        v41 = dispatch thunk of Collection.subscript.read();
        v42 = v74;
        v43 = v24;
        v44 = v75;
        (*v67)(v74);
        v41(v85, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v45 = v76;
        AttributedString.Runs.Run.attributes.getter();
        v46 = v78;
        v47 = v16;
        v48 = v35;
        v49 = v11;
        v50 = v79;
        (*v66)(v78, &v82[v68], v79);
        (*(*(*(v80 + 88) + 8) + 40))(rawValue, v45, 0, v50);
        v51 = v50;
        v11 = v49;
        (*v65)(v46, v51);
        v52 = v73;
        AttributedString.Runs.Run.range.getter();
        v53 = v44;
        v24 = v43;
        (*v64)(v42, v53);
        v54 = AttributedString.subscript.modify();
        AttributedSubstring.setAttributes(_:)();
        v54(v85, 0);
        v55 = v52;
        v35 = v48;
        v16 = v47;
        outlined destroy of Range<AttributedString.Index>?(v55, type metadata accessor for Range<AttributedString.Index>);
        (*v63)(v45, v77);
      }

      outlined destroy of Range<AttributedString.Index>?(v16, type metadata accessor for IndexingIterator<AttributedString.Runs>);
      v56.location = v58;
      v56.length = length;
      NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(1uLL, v56, 0);
      outlined destroy of Range<AttributedString.Index>?(v61, type metadata accessor for Range<AttributedString.Index>);
      NSSwiftMutableAttributedString.endEditing()();
    }
  }
}

uint64_t @objc NSSwiftMutableAttributedString.addAttribute(_:value:range:)(void *a1, uint64_t a2, void *a3, uint64_t a4, Swift::Int a5, Swift::Int a6)
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  NSSwiftMutableAttributedString.addAttribute(_:value:range:)(v9, v12, a5, a6);

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t @objc NSSwiftMutableAttributedString.addAttributes(_:range:)(void *a1, uint64_t a2, uint64_t a3, Swift::Int a4, Swift::Int a5)
{
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a1;
  v10.location = a4;
  v10.length = a5;
  NSSwiftMutableAttributedString.addAttributes(_:range:)(v8, v10);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.removeAttribute(_:range:)(NSAttributedStringKey _, __C::_NSRange range)
{
  v3 = v2;
  v71 = range;
  v91 = _;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v98 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](_);
  v104 = &v70 - v5;
  v8 = *((v7 & v6) + 0x58);
  swift_getAssociatedTypeWitness();
  v96 = v8;
  v105 = v4;
  swift_getAssociatedConformanceWitness();
  v90 = type metadata accessor for TextAttributeValidationRecord();
  v97 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v70 - v9;
  v88 = type metadata accessor for AttributeContainer();
  v73 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v103 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for AttributedString.Runs.Index();
  v99 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for AttributedString.Runs.Run();
  v72 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v70 - v14;
  v15 = type metadata accessor for AttributedString.Runs();
  v100 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v92 = (&v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for AttributedSubstring();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v77 = (&v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for IndexingIterator<AttributedString.Runs>();
  v78 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AttributedString();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v83 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v70 - v32;
  NSSwiftMutableAttributedString.beginEditing()();
  v34 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  (*(v21 + 16))(v23, &v3[v34], v20);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  Range<>.init<A>(_:in:)();
  if ((*(v29 + 48))(v26, 1, v28) == 1)
  {
    __break(1u);
  }

  else
  {
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v26, v33, type metadata accessor for Range<AttributedString.Index>);
    v35 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
    v82 = v34;
    v36 = v77;
    v84 = v28;
    v81 = v35;
    AttributedString.subscript.getter();
    v37 = v92;
    AttributedSubstring.runs.getter();
    (*(v79 + 8))(v36, v80);
    v38 = v100;
    v39 = v93;
    (*(v100 + 16))(v93, v37, v15);
    v40 = *(v78 + 9);
    v41 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
    dispatch thunk of Collection.startIndex.getter();
    (*(v38 + 8))(v37, v15);
    v100 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
    swift_beginAccess();
    v92 = (v99 + 1);
    v78 = (v72 + 2);
    v77 = (v72 + 4);
    v99 = (v98 + 2);
    v42 = v96;
    v75 = v96 + 40;
    ++v98;
    v74 = (v97 + 8);
    ++v73;
    ++v72;
    v43 = v33;
    v86 = v15;
    v85 = v33;
    v80 = v40;
    v79 = v41;
    v76 = v3;
    while (1)
    {
      v50 = v94;
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0]);
      v51 = v95;
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v92)(v50, v51);
      if (v52)
      {
        break;
      }

      v53 = dispatch thunk of Collection.subscript.read();
      v54 = v87;
      v55 = v102;
      (*v78)(v87);
      v53(v107, 0);
      dispatch thunk of Collection.formIndex(after:)();
      (*v77)(v101, v54, v55);
      v56 = v103;
      AttributedString.Runs.Run.attributes.getter();
      v57 = v100;
      v97 = *v99;
      v58 = v104;
      v59 = v105;
      (v97)(v104, &v3[v100], v105);
      v60 = v89;
      (*(v42 + 40))(v56, v59, v42);
      v61 = *v98;
      (*v98)(v58, v59);
      (*v74)(v60, v90);
      v62 = &v3[v57];
      v63 = v97;
      (v97)(v58, v62, v59);
      v64 = *(v42 + 8);
      v65 = (*(v64 + 32))(v56, v59, v64);
      v61(v58, v59);
      v66 = specialized __RawDictionaryStorage.find<A>(_:)(v91);
      if (v67)
      {
        v68 = v66;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v106 = v65;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v65 = v106;
        }

        outlined init with take of Any((*(v65 + 56) + 32 * v68), v107);
        specialized _NativeDictionary._delete(at:)(v68, v65);
      }

      else
      {
        memset(v107, 0, sizeof(v107));
      }

      outlined destroy of Any?(v107);
      v3 = v76;
      v44 = v104;
      v45 = v105;
      v63(v104, &v76[v100], v105);
      v46 = v103;
      (*(v64 + 40))(v65, v103, 1, v45, v64);

      v61(v44, v45);
      v47 = v83;
      v48 = v101;
      AttributedString.Runs.Run.range.getter();
      v49 = AttributedString.subscript.modify();
      AttributedSubstring.setAttributes(_:)();
      v49(v107, 0);
      outlined destroy of Range<AttributedString.Index>?(v47, type metadata accessor for Range<AttributedString.Index>);
      (*v73)(v46, v88);
      (*v72)(v48, v102);
      v42 = v96;
      v39 = v93;
      v43 = v85;
    }

    outlined destroy of Range<AttributedString.Index>?(v39, type metadata accessor for IndexingIterator<AttributedString.Runs>);
    NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(1uLL, v71, 0);
    outlined destroy of Range<AttributedString.Index>?(v43, type metadata accessor for Range<AttributedString.Index>);
    NSSwiftMutableAttributedString.endEditing()();
  }
}