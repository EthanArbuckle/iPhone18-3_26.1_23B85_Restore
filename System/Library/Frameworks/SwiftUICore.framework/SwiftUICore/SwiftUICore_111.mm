uint64_t StyledTextResponder.__allocating_init(view:styles:inputs:)(int a1, int a2, uint64_t a3)
{
  v6 = swift_allocObject();
  StyledTextResponder.init(view:styles:inputs:)(a1, a2, a3);
  return v6;
}

Swift::Void __swiftcall StyledTextResponderFilter.updateValue()()
{
  v1 = *v0;
  StyledTextResponder.update()();
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for AnyGesture<()>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_18DDAB4D0;
    *(v2 + 32) = v1;

    AGGraphSetOutputValue();
  }
}

uint64_t StyledTextResponder.view.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 16);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
}

uint64_t key path getter for StyledTextResponder.view : StyledTextResponder@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 16);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
}

uint64_t StyledTextResponder.view.setter()
{
  AGGraphSetValue();
}

void (*StyledTextResponder.view.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x2CuLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 20) = *(v1 + 40);
  Value = AGGraphGetValue();
  v6 = *(Value + 8);
  v7 = *(Value + 16);
  *v4 = *Value;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  return StyledTextResponder.view.modify;
}

void StyledTextResponder.view.modify(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v1[3] = **a1;
  v3 = *(v1 + 16);
  v1[4] = v2;
  *(v1 + 40) = v3;
  AGGraphSetValue();

  free(v1);
}

_DWORD *(*StyledTextResponder.$view.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return StyledTextResponder.$view.modify;
}

uint64_t StyledTextResponder.styles.getter@<X0>(void *a1@<X8>)
{
  *a1 = *AGGraphGetValue();
}

uint64_t (*StyledTextResponder.styles.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = *(v1 + 44);
  *a1 = *AGGraphGetValue();

  return StyledTextResponder.styles.modify;
}

uint64_t StyledTextResponder.styles.modify(void *a1)
{
  a1[1] = *a1;
  AGGraphSetValue();
}

_DWORD *(*StyledTextResponder.$styles.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 44);
  return StyledTextResponder.$styles.modify;
}

uint64_t StyledTextResponder.inputs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v4 = *(v1 + 112);
  v10 = *(v1 + 96);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 128);
  v6 = *(v1 + 64);
  v9[0] = *(v1 + 48);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _ViewInputs(v9, v8);
}

uint64_t StyledTextResponder.helper.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  v4 = *(v1 + 256);
  v21 = *(v1 + 240);
  v22 = v4;
  v5 = *(v1 + 160);
  v6 = *(v1 + 192);
  v17 = *(v1 + 176);
  v7 = v17;
  v18 = v6;
  v8 = *(v1 + 192);
  v9 = *(v1 + 224);
  v19 = *(v1 + 208);
  v10 = v19;
  v20 = v9;
  v11 = *(v1 + 160);
  v16[0] = *(v1 + 144);
  v12 = v16[0];
  v16[1] = v11;
  v13 = *(v1 + 256);
  *(a1 + 96) = v21;
  *(a1 + 112) = v13;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 272);
  *(a1 + 128) = *(v1 + 272);
  *a1 = v12;
  *(a1 + 16) = v5;
  return outlined init with copy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(v16, &v15);
}

uint64_t StyledTextResponder.helper.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 256);
  v12[6] = *(v1 + 240);
  v12[7] = v3;
  v13 = *(v1 + 272);
  v4 = *(v1 + 192);
  v12[2] = *(v1 + 176);
  v12[3] = v4;
  v5 = *(v1 + 224);
  v12[4] = *(v1 + 208);
  v12[5] = v5;
  v6 = *(v1 + 160);
  v12[0] = *(v1 + 144);
  v12[1] = v6;
  v7 = *(a1 + 80);
  *(v1 + 208) = *(a1 + 64);
  *(v1 + 224) = v7;
  v8 = *(a1 + 112);
  *(v1 + 240) = *(a1 + 96);
  *(v1 + 256) = v8;
  *(v1 + 272) = *(a1 + 128);
  v9 = *(a1 + 48);
  *(v1 + 176) = *(a1 + 32);
  *(v1 + 192) = v9;
  v10 = *(a1 + 16);
  *(v1 + 144) = *a1;
  *(v1 + 160) = v10;
  return outlined destroy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(v12);
}

void *StyledTextResponder.childSubgraph.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 280);
  v2 = v1;
  return v1;
}

void StyledTextResponder.childSubgraph.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 280);
  *(v1 + 280) = a1;
}

void *StyledTextResponder.childViewSubgraph.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 288);
  v2 = v1;
  return v1;
}

void StyledTextResponder.childViewSubgraph.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 288);
  *(v1 + 288) = a1;
}

uint64_t StyledTextResponder.gestureGraph.getter()
{
  if (*(v0 + 296))
  {
    v1 = *(v0 + 296);
  }

  else
  {
    type metadata accessor for GestureGraph();
    v2 = swift_allocObject();

    v1 = specialized GestureGraph.init(rootResponder:)(v3, v2);
    *(v0 + 296) = v1;
  }

  return v1;
}

uint64_t (*StyledTextResponder.gestureGraph.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = StyledTextResponder.gestureGraph.getter();
  return StyledTextResponder.gestureGraph.modify;
}

uint64_t StyledTextResponder.bindingBridge.getter()
{
  if (*(v0 + 304))
  {
    v1 = *(v0 + 304);
  }

  else
  {
    v1 = closure #1 in StyledTextResponder.bindingBridge.getter(v0);
    *(v0 + 304) = v1;
    *(v0 + 312) = v2;
  }

  return v1;
}

uint64_t StyledTextResponder.bindingBridge.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
}

uint64_t closure #1 in StyledTextResponder.bindingBridge.getter(uint64_t a1)
{
  v2 = *(a1 + 96);
  v12[2] = *(a1 + 80);
  v12[3] = v2;
  v12[4] = *(a1 + 112);
  v13 = *(a1 + 128);
  v3 = *(a1 + 64);
  v12[0] = *(a1 + 48);
  v12[1] = v3;
  outlined init with copy of _ViewInputs(v12, v11);
  v4 = *(StyledTextResponder.gestureGraph.getter() + 208);

  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA30EventBindingBridgeFactoryInputV_Tt2g5(*&v12[0]))
  {
    v6 = (*(v5 + 8))(v4, a1, &protocol witness table for StyledTextResponder);
    v8 = v7;

    outlined destroy of _ViewInputs(v12);
    v9 = *(a1 + 296);
    swift_beginAccess();
    *(v9 + 200) = v8;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*StyledTextResponder.bindingBridge.modify(uint64_t *a1))(uint64_t a1)
{
  a1[2] = v1;
  *a1 = StyledTextResponder.bindingBridge.getter();
  a1[1] = v3;
  return StyledTextResponder.bindingBridge.modify;
}

uint64_t StyledTextResponder._gestureContainer.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 320) = a1;
  return swift_unknownObjectRelease();
}

uint64_t StyledTextResponder.gestureContainer.getter()
{
  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  swift_beginAccess();
  v1 = *(v0 + 160);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 216);
  if (!v2)
  {
    return 0;
  }

  v18[0] = 0;
  v3 = one-time initialization token for kitLink;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static NSAttributedStringKey.kitLink;
  v6 = [v4 length];
  v7 = swift_allocObject();
  *(v7 + 16) = v18;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in NSAttributedString.hasLinkAttributes.getter;
  *(v8 + 24) = v7;
  *&v21 = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
  *(&v21 + 1) = v8;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v20 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  *(&v20 + 1) = &block_descriptor_12;
  v9 = _Block_copy(&aBlock);

  [v4 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, v9}];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v18[0];

  if (v11 != 1)
  {
    return 0;
  }

  swift_beginAccess();
  if (*(v0 + 320))
  {
    return swift_unknownObjectRetain();
  }

  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  v12 = *(v0 + 96);
  v21 = *(v0 + 80);
  v22 = v12;
  v23 = *(v0 + 112);
  v24 = *(v0 + 128);
  v13 = *(v0 + 64);
  aBlock = *(v0 + 48);
  v20 = v13;
  v14 = aBlock;
  outlined init with copy of _ViewInputs(&aBlock, v18);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA28GestureContainerFactoryInputV_Tt2g5(v14))
  {
    v16 = (*(v15 + 8))(v0, &protocol witness table for StyledTextResponder);
    outlined destroy of _ViewInputs(&aBlock);
    *(v0 + 320) = v16;
    swift_unknownObjectRelease();
    if (*(v0 + 320))
    {
      return swift_unknownObjectRetain();
    }

    goto LABEL_15;
  }

LABEL_16:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t StyledTextResponder.eventSources.getter()
{
  v0 = StyledTextResponder.bindingBridge.getter();
  v1 = (*(*v0 + 160))(v0);

  return v1;
}

uint64_t StyledTextResponder.isValid.getter()
{
  swift_beginAccess();
  if (*(v0 + 320))
  {
    return AGSubgraphIsValid();
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall StyledTextResponder.detachContainer()()
{
  swift_beginAccess();
  *(v0 + 320) = 0;
  swift_unknownObjectRelease();
}

uint64_t StyledTextResponder.features.getter@<X0>(__int16 *a1@<X8>)
{
  result = AGSubgraphIsValid();
  if (!result)
  {
    goto LABEL_9;
  }

  result = swift_beginAccess();
  v4 = *(v1 + 160);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 216);
  if (!v5)
  {
    goto LABEL_9;
  }

  v17 = 0;
  v6 = one-time initialization token for kitLink;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = static NSAttributedStringKey.kitLink;
  v9 = [v7 length];
  v10 = swift_allocObject();
  *(v10 + 16) = &v17;
  v11 = swift_allocObject();
  *(v11 + 16) = closure #1 in NSAttributedString.hasLinkAttributes.getterpartial apply;
  *(v11 + 24) = v10;
  v16[4] = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v16[3] = &block_descriptor_15;
  v12 = _Block_copy(v16);

  [v7 enumerateAttribute:v8 inRange:0 options:v9 usingBlock:{0, v12}];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v14 = v17;

    if (v14)
    {
      v15 = 2;
LABEL_10:
      *a1 = v15;
      return result;
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

SwiftUI::ViewResponder::HitTestPolicy __swiftcall StyledTextResponder.hitTestPolicy(options:)(SwiftUI::ViewResponder::ContainsPointsOptions options)
{
  v3 = v1;
  result = swift_beginAccess();
  *v3 = *(v2 + 160) == 0;
  return result;
}

uint64_t StyledTextResponder.containsGlobalPoints(_:cacheKey:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, double *a4@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = *a3;
  result = swift_beginAccess();
  if (!*(v4 + 160))
  {
    *a4 = 0.0;
    a4[1] = 0.0;
    *(a4 + 2) = MEMORY[0x1E69E7CC0];
    return result;
  }

  swift_beginAccess();
  v10 = *(v4 + 160);
  if (v10)
  {
    v12 = *(v4 + 168);
    v11 = *(v4 + 176);
    v13 = *(v4 + 184);
    v14 = *(v4 + 272);
    if (!v14 || (v15 = *(v4 + 248), (v15 & 0x100000000) != 0) || (a2 & 0x100000000) != 0 || v15 != a2)
    {
      v18 = *(a1 + 16);
      v14 = MEMORY[0x1E69E7CC0];
      if (v18)
      {
        v42 = v8;
        if (v18 >> 59)
        {
          goto LABEL_37;
        }

        v41 = v11;
        isStackAllocationSafe = outlined copy of ShapeStyledResponderData<StyledTextContentView>?(v10);
        if (16 * v18) < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
        {
          v40 = &v40;
          MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          v21 = &v40 - v20;
          memcpy(&v40 - v20, (a1 + 32), 16 * v18);
          v47[0] = v21;
          v47[1] = v18;
          v22 = *(v4 + 192);
          v23 = *(v4 + 208);
          v24 = *(v4 + 224);
          v25 = *(v4 + 232);
          v43 = 1;
          v44 = 0u;
          v45 = 0u;
          v46 = 2;
          if (v22 || v24 != 0.0 || v25 != 0.0)
          {
            aBlock = v22;
            v49 = v23;
            v50 = *&v24;
            v51 = v25;
            specialized ViewTransform.convertGlobalToSpace(_:_:)(&v43, &aBlock, v47);
          }

          outlined destroy of CoordinateSpace(&v43);
          v26 = *(v4 + 144);
          v27 = *(v4 + 152);
          *&aBlock = v13;
          LOBYTE(v43) = 0;
          if (_ShapeStyle_Pack.isClear(name:)(&v43) && (*&aBlock = v13, LOBYTE(v43) = 1, _ShapeStyle_Pack.isClear(name:)(&v43)))
          {
            v16 = 0;
          }

          else
          {
            specialized ShapeStyledLeafView.contains(points:size:)(v21, v18, v12, &aBlock, v26, v27);
            v16 = aBlock;
          }

          outlined consume of ShapeStyledResponderData<StyledTextContentView>?(v10);
          v17 = 1.0;
          v14 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v39 = swift_slowAlloc();
          v40 = v4;
          specialized closure #1 in closure #1 in ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)(v39, v18, a1, v4 + 144, v12, v41 & 1, v13, &aBlock, v14);
          MEMORY[0x193AC4820](v39, -1, -1);
          outlined consume of ShapeStyledResponderData<StyledTextContentView>?(v10);
          v17 = *(&aBlock + 1);
          v16 = aBlock;
          v14 = v49;
        }

        v8 = v42;
      }

      else
      {
        v16 = 0;
        v17 = 0.0;
      }

      *(v4 + 248) = a2 & 0x1FFFFFFFFLL;
      *(v4 + 256) = v16;
      *(v4 + 264) = v17;
      *(v4 + 272) = v14;
    }

    else
    {
      v16 = *(v4 + 256);
      v17 = *(v4 + 264);
    }
  }

  else
  {
    v16 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v17 = 0.0;
  }

  swift_endAccess();
  result = AGSubgraphIsValid();
  if (!result)
  {
    goto LABEL_33;
  }

  v28 = *(v4 + 160);
  if (!v28)
  {
    goto LABEL_33;
  }

  v29 = *(v28 + 216);
  if (!v29)
  {
    goto LABEL_33;
  }

  v42 = v8;
  LOBYTE(v43) = 0;
  v30 = one-time initialization token for kitLink;
  v31 = v29;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = static NSAttributedStringKey.kitLink;
  v33 = [v31 length];
  v34 = swift_allocObject();
  *(v34 + 16) = &v43;
  v35 = swift_allocObject();
  *(v35 + 16) = closure #1 in NSAttributedString.hasLinkAttributes.getterpartial apply;
  *(v35 + 24) = v34;
  v50 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v51 = *&v35;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v49 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  *(&v49 + 1) = &block_descriptor_26;
  v36 = _Block_copy(&aBlock);

  [v31 enumerateAttribute:v32 inRange:0 options:v33 usingBlock:{0, v36}];

  _Block_release(v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_37:
    __break(1u);
  }

  v38 = v43;

  if ((v38 & ((v42 & 2) == 0)) != 0)
  {
    v17 = 16.0;
  }

LABEL_33:
  *a4 = v16;
  a4[1] = v17;
  *(a4 + 2) = v14;
  return result;
}

uint64_t StyledTextResponder.addContentPath(to:kind:in:observer:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  swift_beginAccess();
  if (a4)
  {
    v9 = swift_unknownObjectRetain();
    specialized closure #1 in ContentResponderHelper.addContentPath(to:kind:in:observer:)(v9, a5, v5 + 144);
    swift_unknownObjectRelease();
  }

  v10 = *(v5 + 160);
  if (!v10)
  {
    return swift_endAccess();
  }

  v11 = *(v5 + 168);
  v12 = *(v5 + 184);
  v13 = *(v5 + 144);
  v14 = *(v5 + 152);
  if (v8 == 1)
  {

    goto LABEL_6;
  }

  v27 = one-time initialization token for v3;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_22;
    }
  }

  else if (static Semantics.forced >= v28)
  {
LABEL_22:
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    goto LABEL_26;
  }

LABEL_6:
  specialized ShapeStyledResponderData.contentPath(size:)(v11, v12, &v33, v13, v14);
  v15 = *&v33.origin.x;
  v16 = *&v33.origin.y;
  v17 = *&v33.size.width;
  v18 = *&v33.size.height;
  v19 = v34;
  v36 = v33;
  v37 = v34;
  if (v34 <= 2u)
  {
    if (v34 >= 2u)
    {
      IsNull = CGRectIsNull(*(*&v33.origin.x + 16));
      if (IsNull)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v20 = CGRectIsNull(v33);
      IsNull = outlined consume of Path.Storage(v15, v16, v17, v18, v19);
      if (v20)
      {
LABEL_9:
        outlined consume of ShapeStyledResponderData<StyledTextContentView>?(v10);
        v22 = v15;
        v23 = v16;
        v24 = v17;
        v25 = v18;
        v26 = v19;
LABEL_27:
        outlined consume of Path.Storage(v22, v23, v24, v25, v26);
        return swift_endAccess();
      }
    }

LABEL_24:
    v29 = *(v5 + 208);
    v38 = *(v5 + 192);
    v39 = v29;
    v40 = *(v5 + 224);
    v30.n128_f64[0] = MEMORY[0x1EEE9AC00](IsNull);
    Path.mapPoints(_:)(partial apply for closure #1 in Path.convert(to:transform:), v35, v30);
    outlined consume of Path.Storage(v15, v16, v17, v18, v19);
    Path.formTrivialUnion(_:)(v35);
    outlined destroy of Path(v35);
    outlined consume of ShapeStyledResponderData<StyledTextContentView>?(v10);
    return swift_endAccess();
  }

  if (v34 != 5)
  {
    if (v34 != 6)
    {
      goto LABEL_36;
    }

LABEL_26:
    outlined consume of ShapeStyledResponderData<StyledTextContentView>?(v10);
    v22 = v15;
    v23 = v16;
    v24 = v17;
    v25 = v18;
    v26 = 6;
    goto LABEL_27;
  }

  if (*(*&v33.origin.x + 16))
  {
    if (*(*&v33.origin.x + 16) != 1)
    {
      outlined copy of Path.Storage(*&v33.origin.x, *&v33.origin.y, *&v33.size.width, *&v33.size.height, 5u);
      if (one-time initialization token for bufferCallbacks != -1)
      {
        swift_once();
      }

LABEL_33:
      IsEmpty = RBPathIsEmpty();
      IsNull = outlined consume of Path.Storage(v15, v16, v17, v18, 5u);
      if (IsEmpty)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

LABEL_20:
    outlined copy of Path.Storage(*&v33.origin.x, *&v33.origin.y, *&v33.size.width, *&v33.size.height, 5u);
    goto LABEL_33;
  }

  if (*(*&v33.origin.x + 24))
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_36:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall StyledTextResponder.extendPrintTree(string:)(Swift::String *string)
{
  swift_beginAccess();
  v2 = *(v1 + 240);
  v3 = *(v1 + 256);
  v4 = *(v1 + 208);
  v20 = *(v1 + 224);
  v21 = v2;
  v22 = v3;
  v5 = *(v1 + 176);
  v6 = *(v1 + 192);
  v7 = *(v1 + 144);
  v19[1] = *(v1 + 160);
  v19[2] = v5;
  v23 = *(v1 + 272);
  v19[3] = v6;
  v19[4] = v4;
  v16 = 0;
  v17 = 0;
  memset(v14, 0, sizeof(v14));
  v15 = 2;
  v18[0] = v6;
  v18[1] = v4;
  v18[2] = v20;
  v19[0] = v7;
  outlined init with copy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(v19, &v12);
  specialized ApplyViewTransform.convert(to:transform:)(v14, v18);
  outlined destroy of CoordinateSpace(v14);
  outlined destroy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(v19);
  v8 = v16;
  v9 = v17;
  v12 = 0;
  v13 = 0xE000000000000000;
  MEMORY[0x193ABEDD0](91, 0xE100000000000000);
  v10 = Double.description.getter();
  MEMORY[0x193ABEDD0](v10);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v11 = Double.description.getter();
  MEMORY[0x193ABEDD0](v11);

  MEMORY[0x193ABEDD0](4202589, 0xE300000000000000);
  v14[0] = v8;
  v14[1] = v9;
  type metadata accessor for (CGFloat, CGFloat)();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v12, v13);
}

uint64_t StyledTextResponder.bindEvent(_:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = static GestureContainerFeature.isEnabledOverride;
  if (static GestureContainerFeature.isEnabledOverride != 2)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  if (static CoreTesting.isRunning)
  {
    return 0;
  }

  if (one-time initialization token for envValue != -1)
  {
    swift_once();
  }

  v2 = static GestureContainerFeature.envValue;
  if (static GestureContainerFeature.envValue != 2)
  {
    goto LABEL_17;
  }

  if (one-time initialization token for userDefaultsValue != -1)
  {
    swift_once();
  }

  v2 = static GestureContainerFeature.userDefaultsValue;
  if (static GestureContainerFeature.userDefaultsValue != 2)
  {
LABEL_17:
    if (v2)
    {
      goto LABEL_18;
    }

    return 0;
  }

  v16 = &type metadata for GestureContainerFeature.IOSFeature;
  v17 = COERCE_DOUBLE(lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature());
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v14);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v4 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (!dyld_program_sdk_at_least())
    {
      return 0;
    }
  }

  else if (static Semantics.forced < v4)
  {
    return 0;
  }

LABEL_18:
  outlined init with copy of AnyTrackedValue(a1, v13);
  HitTestableEvent.init(_:)(v13, v14);
  if (v15 == 1)
  {
    return 0;
  }

  v6 = 0;
  if (v20)
  {
    v7 = 0;
  }

  else
  {
    v7 = v19;
  }

  if ((v7 & 0x20) == 0)
  {
    v6 = ++static ViewResponder.hitTestKey;
  }

  if ((v7 & 4) != 0)
  {
    v13[0] = v7;
    LOBYTE(v12) = (v7 & 0x20) != 0;
    v10 = ViewResponder.singlePointHitTest(globalPoint:cacheKey:options:)(v6 | (v12 << 32), v13, *&v16, v17);
    outlined destroy of GesturePhase<TappableSpatialEvent>(v14, &lazy cache variable for type metadata for HitTestableEvent?, &type metadata for HitTestableEvent, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
    result = v10;
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    hitPoints(point:radius:)(*&v16, v17, v18);
    v11 = v7;
    v12 = 0;
    LOBYTE(v13[0]) = (v7 & 0x20) != 0;
    ViewResponder.hitTest(globalPoints:weights:mask:cacheKey:options:)(v8, v9, &v12, v6 | (LOBYTE(v13[0]) << 32), &v11, v13);
    outlined destroy of GesturePhase<TappableSpatialEvent>(v14, &lazy cache variable for type metadata for HitTestableEvent?, &type metadata for HitTestableEvent, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);

    result = v13[0];
    if (!v13[0])
    {
      return 0;
    }
  }

  return result;
}

void StyledTextResponder.makeGesture(inputs:)(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v7[4] = a1[4];
  v7[5] = v4;
  v8[0] = a1[6];
  *(v8 + 12) = *(a1 + 108);
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v6 = a1[3];
  v7[2] = a1[2];
  v7[3] = v6;

  specialized AnyGestureResponder.makeWrappedGesture(inputs:makeChild:)(v7, v2, a2);
}

uint64_t ResolvedStyledText.gesture.getter()
{
  v1 = *(v0 + 216);
  if (!v1)
  {
LABEL_7:
    type metadata accessor for AnyGestureStorage<EmptyGesture<()>>();
    return swift_allocObject();
  }

  v15 = 0;
  v2 = one-time initialization token for kitLink;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static NSAttributedStringKey.kitLink;
  v5 = [v3 length];
  v6 = swift_allocObject();
  *(v6 + 16) = &v15;
  v7 = swift_allocObject();
  *(v7 + 16) = closure #1 in NSAttributedString.hasLinkAttributes.getterpartial apply;
  *(v7 + 24) = v6;
  aBlock[4] = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_49_0;
  v8 = _Block_copy(aBlock);

  [v3 enumerateAttribute:v4 inRange:0 options:v5 usingBlock:{0, v8}];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v11 = v15;

    if (v11 == 1)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v0;
      *(v12 + 24) = v0;
      type metadata accessor for AnyGestureStorage<SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>>();
      v13 = swift_allocObject();
      *(v13 + 16) = partial apply for closure #1 in ResolvedStyledText.gesture.getter;
      *(v13 + 24) = v12;
      swift_retain_n();
      return v13;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall StyledTextResponder.resetGesture()()
{
  swift_beginAccess();
  v1 = *(v0 + 280);
  *(v0 + 280) = 0;

  swift_beginAccess();
  v2 = *(v0 + 288);
  *(v0 + 288) = 0;
}

uint64_t StyledTextResponder.__ivar_destroyer()
{
  v1 = *(v0 + 96);
  v8[2] = *(v0 + 80);
  v8[3] = v1;
  v8[4] = *(v0 + 112);
  v9 = *(v0 + 128);
  v2 = *(v0 + 64);
  v8[0] = *(v0 + 48);
  v8[1] = v2;
  outlined destroy of _ViewInputs(v8);

  v3 = *(v0 + 256);
  v10[6] = *(v0 + 240);
  v10[7] = v3;
  v11 = *(v0 + 272);
  v4 = *(v0 + 192);
  v10[2] = *(v0 + 176);
  v10[3] = v4;
  v5 = *(v0 + 224);
  v10[4] = *(v0 + 208);
  v10[5] = v5;
  v6 = *(v0 + 160);
  v10[0] = *(v0 + 144);
  v10[1] = v6;
  outlined destroy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(v10);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for AnyGestureResponder.inputs.getter in conformance StyledTextResponder@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v4 = *(v1 + 112);
  v10 = *(v1 + 96);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 128);
  v6 = *(v1 + 64);
  v9[0] = *(v1 + 48);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _ViewInputs(v9, v8);
}

void *protocol witness for AnyGestureResponder.childSubgraph.getter in conformance StyledTextResponder()
{
  swift_beginAccess();
  v1 = *(v0 + 280);
  v2 = v1;
  return v1;
}

void protocol witness for AnyGestureResponder.childSubgraph.setter in conformance StyledTextResponder(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 280);
  *(v1 + 280) = a1;
}

void *protocol witness for AnyGestureResponder.childViewSubgraph.getter in conformance StyledTextResponder()
{
  swift_beginAccess();
  v1 = *(v0 + 288);
  v2 = v1;
  return v1;
}

void protocol witness for AnyGestureResponder.childViewSubgraph.setter in conformance StyledTextResponder(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 288);
  *(v1 + 288) = a1;
}

uint64_t protocol witness for AnyGestureContainingResponder.eventSources.getter in conformance StyledTextResponder()
{
  v0 = StyledTextResponder.bindingBridge.getter();
  v1 = (*(*v0 + 160))(v0);

  return v1;
}

uint64_t protocol witness for AnyGestureContainingResponder.detachContainer() in conformance StyledTextResponder()
{
  swift_beginAccess();
  *(v0 + 320) = 0;
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for AnyGestureContainingResponder.isValid.getter in conformance StyledTextResponder()
{
  swift_beginAccess();
  if (*(v0 + 320))
  {
    return AGSubgraphIsValid();
  }

  else
  {
    return 0;
  }
}

double closure #1 in ResolvedStyledText.gesture.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;

  specialized Gesture<>.openURLOnEnded()(partial apply for closure #1 in closure #1 in ResolvedStyledText.gesture.getter, v10);

  v11 = swift_allocObject();
  *(v11 + 16) = _ViewInputs.base.modify;
  *(v11 + 24) = 0;
  *a3 = v13;
  *(a3 + 16) = v14;
  result = *&v15;
  *(a3 + 32) = v15;
  *(a3 + 48) = v16;
  *(a3 + 56) = partial apply for specialized closure #1 in MapGesture.init(_:);
  *(a3 + 64) = v11;
  return result;
}

uint64_t closure #1 in closure #1 in ResolvedStyledText.gesture.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v54 = a4;
  v55 = a3;
  v56 = a5;
  v11 = MEMORY[0x1E6968FB0];
  v12 = MEMORY[0x1E69E6720];
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v53 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v51 - v23;
  v25 = a2[3];
  v60 = a2[2];
  *v61 = v25;
  *&v61[10] = *(a2 + 58);
  v26 = a2[1];
  v58 = *a2;
  v59 = v26;
  v52 = a1;
  outlined init with copy of GesturePhase<TappableSpatialEvent>(a1, v18, &lazy cache variable for type metadata for URL?, v11, v12, type metadata accessor for URL?);
  v27 = *(v20 + 48);
  if (v27(v18, 1, v19) != 1)
  {
    (*(v20 + 32))(v24, v18, v19);
    v35 = v55[27];
    v36 = *(v54 + 216);
    if (v35)
    {
      v37 = v56;
      if (!v36)
      {
        goto LABEL_31;
      }

      type metadata accessor for NSAttributedString();
      v38 = v36;
      v39 = v35;
      v40 = static NSObject.== infix(_:_:)();

      if ((v40 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v37 = v56;
      if (v36)
      {
        goto LABEL_31;
      }
    }

    if (v61[25] > 1u)
    {
      if (v61[25] != 2)
      {
LABEL_31:
        type metadata accessor for URL?(0, &lazy cache variable for type metadata for GesturePhase<URL>, MEMORY[0x1E6968FB0], type metadata accessor for GesturePhase);
        swift_storeEnumTagMultiPayload();
        return (*(v20 + 8))(v24, v19);
      }
    }

    else if (!v61[25])
    {
      if (v59 == 1)
      {
        (*(v20 + 56))(v37, 1, 1, v19);
      }

      else
      {
        (*(v20 + 16))(v37, v24, v19);
        (*(v20 + 56))(v37, 0, 1, v19);
      }

      goto LABEL_31;
    }

    (*(v20 + 16))(v37, v24, v19);
    goto LABEL_31;
  }

  v54 = v19;
  outlined destroy of GesturePhase<TappableSpatialEvent>(v18, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], type metadata accessor for URL?);
  v28 = *(&v60 + 1);
  v29 = *v61;
  if (v61[25] - 1 >= 2)
  {
    if (v61[25])
    {
      v34 = MEMORY[0x1E6968FB0];
      goto LABEL_22;
    }

    if (v59 == 1)
    {
      (*(v20 + 56))(v56, 1, 1, v54);
      type metadata accessor for URL?(0, &lazy cache variable for type metadata for GesturePhase<URL>, MEMORY[0x1E6968FB0], type metadata accessor for GesturePhase);
      return swift_storeEnumTagMultiPayload();
    }
  }

  v30 = *(*v55 + 288);
  v31 = outlined init with copy of GesturePhase<TappableSpatialEvent>(&v58, v57, &lazy cache variable for type metadata for GesturePhase<TappableSpatialEvent>, &type metadata for TappableSpatialEvent, type metadata accessor for GesturePhase, type metadata accessor for AnyGesture<()>);
  v30(v31, v28, v29, a6, a7);
  outlined destroy of GesturePhase<TappableSpatialEvent>(&v58, &lazy cache variable for type metadata for GesturePhase<TappableSpatialEvent>, &type metadata for TappableSpatialEvent, type metadata accessor for GesturePhase, type metadata accessor for AnyGesture<()>);
  v32 = v54;
  if (v27(v15, 1, v54) == 1)
  {
    v33 = MEMORY[0x1E6968FB0];
    outlined destroy of GesturePhase<TappableSpatialEvent>(v15, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], type metadata accessor for URL?);
    v34 = v33;
LABEL_22:
    type metadata accessor for URL?(0, &lazy cache variable for type metadata for GesturePhase<URL>, v34, type metadata accessor for GesturePhase);
    return swift_storeEnumTagMultiPayload();
  }

  v41 = v20;
  v42 = *(v20 + 32);
  v43 = v53;
  v42(v53, v15, v32);
  v44 = v52;
  outlined destroy of GesturePhase<TappableSpatialEvent>(v52, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], type metadata accessor for URL?);
  v45 = *(v41 + 16);
  v45(v44, v43, v32);
  v46 = *(v41 + 56);
  v46(v44, 0, 1, v32);
  if (v61[25] <= 1u)
  {
    v47 = v56;
    if (!v61[25])
    {
      v48 = v56;
      if (v59 == 1)
      {
        v49 = 1;
      }

      else
      {
        v45(v56, v43, v32);
        v48 = v47;
        v49 = 0;
      }

      v46(v48, v49, 1, v32);
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  if (v61[25] == 2)
  {
LABEL_27:
    v45(v56, v43, v32);
  }

LABEL_34:
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for GesturePhase<URL>, MEMORY[0x1E6968FB0], type metadata accessor for GesturePhase);
  swift_storeEnumTagMultiPayload();
  return (*(v41 + 8))(v43, v32);
}

uint64_t specialized Gesture<>.openURLOnEnded()(uint64_t a1, uint64_t a2)
{
  v17[0] = a1;
  v17[1] = a2;
  type metadata accessor for MainActor();
  v2 = one-time initialization token for v7;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = static Semantics.v7;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v14;
  v14[2] = v17;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  v6 = &static Semantics.forced;
  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for specialized closure #1 in Gesture<>.openURLOnEnded(), v14);
  }

  if (static Semantics.forced >= v4)
  {
    goto LABEL_12;
  }

LABEL_7:
  v15 = 0xD000000000000032;
  v16 = 0x800000018DD7B040;
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  v8 = v15;
  v7 = v16;
  if (pthread_main_np())
  {
    goto LABEL_13;
  }

  LOBYTE(v6) = static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v9 = static Log.runtimeIssuesLog;
    if (os_log_type_enabled(static Log.runtimeIssuesLog, v6))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v15);

      *(v10 + 4) = v8;
      _os_log_impl(&dword_18D018000, v9, v6, "%s This warning will become a runtime crash in a future version of SwiftUI.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x193AC4820](v11, -1, -1);
      MEMORY[0x193AC4820](v10, -1, -1);
    }

    else
    {
LABEL_13:
    }

    v7 = swift_allocObject();
    *(v7 + 16) = partial apply for specialized closure #1 in Gesture<>.openURLOnEnded();
    *(v7 + 24) = v5;
    v5 = 0;
    _sxs5Error_pIgrzo_xsAA_pIegrzo_s8SendableRzlTR7SwiftUI14OpenURLGesture33_E86B54AF130CC92E23B03D8EFE1DCF2ELLVyAC15ModifierGestureVyAC014StateContainerQ0VyAC18ResolvedStyledTextC7gestureAELLAC03AnyQ0VyytGvg0R0L_VAC20TappableSpatialEventV10Foundation3URLVGAC09SingleTapQ0VyATGGG_Tg5TA_0();
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
  }
}

uint64_t OpenURLGesture.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, a1, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  (*(v5 + 32))(v10 + v9, v8, a1);
  Gesture.onEnded(_:)(partial apply for closure #1 in OpenURLGesture.body.getter, v10, v11, v12, a2);
}

uint64_t closure #1 in OpenURLGesture.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for OpenURLGesture() + 36));
  v4 = v3[1];
  v13 = *v3;
  *v14 = v4;
  *&v14[15] = *(v3 + 31);
  specialized Environment.wrappedValue.getter(&v9);
  v5 = v9;
  v6 = v10;
  v7 = v11;
  v13 = v9;
  *v14 = v10;
  v14[16] = v11;
  v14[17] = v12;
  specialized OpenURLAction._open(_:prefersInApp:completion:)(a1, 2, &v13);

  return outlined consume of OpenURLAction.Handler(v5, *(&v5 + 1), v6, *(&v6 + 1), v7);
}

uint64_t protocol witness for GestureStateProtocol.init() in conformance State #1 in ResolvedStyledText.gesture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t outlined init with copy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized GestureGraph.init(rootResponder:)(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  *(a2 + 184) = 0;
  swift_weakInit();
  *(a2 + 200) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for EventBindingManager();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 48) = MEMORY[0x1E69E7CC8];
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(a2 + 208) = v3;
  v5 = MEMORY[0x1E698D3F8];
  v6 = vld1q_dup_f32(v5);
  *(a2 + 232) = v6;
  *(a2 + 248) = v6;
  *(a2 + 272) = 0x7FF0000000000000;
  if (specialized static GestureContainerFeature.isEnabled.getter())
  {
    *(a2 + 184) = &protocol witness table for StyledTextResponder;
    swift_weakAssign();
    GraphHost.Data.init()(v16);
    v7 = AGSubgraphGetCurrent();
    v8 = *(&v16[0] + 1);
    AGSubgraphSetCurrent();
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 99))
    {
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 16963;
        *&v14[0] = v8;
        type metadata accessor for AGSubgraphRef(0);
        AGGraphAddTraceEvent();
      }
    }

    *(a2 + 216) = Attribute.init<A>(body:value:flags:update:)();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(v4);
    type metadata accessor for [EventID : EventType]();
    v9 = Attribute.init<A>(body:value:flags:update:)();

    *(a2 + 220) = v9;
    *(a2 + 224) = Attribute.init<A>(body:value:flags:update:)();
    *(a2 + 228) = Attribute.init<A>(body:value:flags:update:)();
    *(a2 + 264) = Attribute.init<A>(body:value:flags:update:)();
    v14[4] = v16[4];
    v14[5] = v16[5];
    v15 = v17;
    v14[0] = v16[0];
    v14[1] = v16[1];
    v14[2] = v16[2];
    v14[3] = v16[3];
    outlined init with copy of GraphHost.Data(v16, v13);
    v10 = GraphHost.init(data:)(v14);
    v11 = *(v10 + 208);
    swift_beginAccess();
    *(v11 + 24) = &protocol witness table for GestureGraph;
    swift_unknownObjectWeakAssign();

    $defer #1 () in GestureGraph.init(rootResponder:)();

    outlined destroy of GraphHost.Data(v16);

    return v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t outlined copy of ShapeStyledResponderData<StyledTextContentView>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void type metadata accessor for AnyGestureStorage<EmptyGesture<()>>()
{
  if (!lazy cache variable for type metadata for AnyGestureStorage<EmptyGesture<()>>)
  {
    type metadata accessor for AnyGesture<()>(255, &lazy cache variable for type metadata for EmptyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for EmptyGesture);
    lazy protocol witness table accessor for type EmptyGesture<()> and conformance EmptyGesture<A>();
    v0 = type metadata accessor for AnyGestureStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyGestureStorage<EmptyGesture<()>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EmptyGesture<()> and conformance EmptyGesture<A>()
{
  result = lazy protocol witness table cache variable for type EmptyGesture<()> and conformance EmptyGesture<A>;
  if (!lazy protocol witness table cache variable for type EmptyGesture<()> and conformance EmptyGesture<A>)
  {
    type metadata accessor for AnyGesture<()>(255, &lazy cache variable for type metadata for EmptyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for EmptyGesture);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyGesture<()> and conformance EmptyGesture<A>);
  }

  return result;
}

void type metadata accessor for AnyGestureStorage<SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>>()
{
  if (!lazy cache variable for type metadata for AnyGestureStorage<SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>>)
  {
    type metadata accessor for SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>();
    lazy protocol witness table accessor for type SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>> and conformance SizeGesture<A>(&lazy protocol witness table cache variable for type SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>);
    v0 = type metadata accessor for AnyGestureStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyGestureStorage<SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>>);
    }
  }
}

void type metadata accessor for SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>()
{
  if (!lazy cache variable for type metadata for SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>)
  {
    type metadata accessor for _MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>();
    lazy protocol witness table accessor for type SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>> and conformance SizeGesture<A>(&lazy protocol witness table cache variable for type _MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()> and conformance _MapGesture<A, B>, type metadata accessor for _MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>);
    v0 = type metadata accessor for SizeGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>);
    }
  }
}

void type metadata accessor for _MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>()
{
  if (!lazy cache variable for type metadata for _MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>)
  {
    type metadata accessor for OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>();
    lazy protocol witness table accessor for type SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>> and conformance SizeGesture<A>(&lazy protocol witness table cache variable for type OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>> and conformance OpenURLGesture<A>, type metadata accessor for OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>);
    v0 = type metadata accessor for _MapGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>);
    }
  }
}

void type metadata accessor for OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>()
{
  if (!lazy cache variable for type metadata for OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>)
  {
    type metadata accessor for ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>();
    lazy protocol witness table accessor for type SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>> and conformance SizeGesture<A>(&lazy protocol witness table cache variable for type ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>);
    v0 = type metadata accessor for OpenURLGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>);
    }
  }
}

void type metadata accessor for ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>)
  {
    type metadata accessor for StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>();
    type metadata accessor for ShapeStyledResponderData<StyledTextContentView>(255, &lazy cache variable for type metadata for SingleTapGesture<TappableSpatialEvent>, &type metadata for TappableSpatialEvent, &protocol witness table for TappableSpatialEvent, type metadata accessor for SingleTapGesture);
    lazy protocol witness table accessor for type SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>> and conformance SizeGesture<A>(&lazy protocol witness table cache variable for type StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL> and conformance StateContainerGesture<A, B, C>, type metadata accessor for StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>);
    lazy protocol witness table accessor for type SingleTapGesture<TappableSpatialEvent> and conformance SingleTapGesture<A>();
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>);
    }
  }
}

void type metadata accessor for StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>()
{
  if (!lazy cache variable for type metadata for StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>)
  {
    type metadata accessor for State #1 in ResolvedStyledText.gesture.getter();
    type metadata accessor for URL();
    v0 = type metadata accessor for StateContainerGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>);
    }
  }
}

uint64_t type metadata accessor for State #1 in ResolvedStyledText.gesture.getter()
{
  result = type metadata singleton initialization cache for State #1 in ResolvedStyledText.gesture.getter;
  if (!type metadata singleton initialization cache for State #1 in ResolvedStyledText.gesture.getter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SingleTapGesture<TappableSpatialEvent> and conformance SingleTapGesture<A>()
{
  result = lazy protocol witness table cache variable for type SingleTapGesture<TappableSpatialEvent> and conformance SingleTapGesture<A>;
  if (!lazy protocol witness table cache variable for type SingleTapGesture<TappableSpatialEvent> and conformance SingleTapGesture<A>)
  {
    type metadata accessor for ShapeStyledResponderData<StyledTextContentView>(255, &lazy cache variable for type metadata for SingleTapGesture<TappableSpatialEvent>, &type metadata for TappableSpatialEvent, &protocol witness table for TappableSpatialEvent, type metadata accessor for SingleTapGesture);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleTapGesture<TappableSpatialEvent> and conformance SingleTapGesture<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>> and conformance SizeGesture<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_51Tm()
{

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in Gesture<>.openURLOnEnded()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];
  KeyPath = swift_getKeyPath();
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 47) = 0;
}

uint64_t *initializeBufferWithCopyOfBuffer for State #1 in ResolvedStyledText.gesture.getter(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for State #1 in ResolvedStyledText.gesture.getter(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *initializeWithCopy for State #1 in ResolvedStyledText.gesture.getter(void *a1, const void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v7 = *(*(v6 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *assignWithCopy for State #1 in ResolvedStyledText.gesture.getter(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 24))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *initializeWithTake for State #1 in ResolvedStyledText.gesture.getter(void *a1, const void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v7 = *(*(v6 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v5 + 32))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *assignWithTake for State #1 in ResolvedStyledText.gesture.getter(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 32))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 40))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void type metadata completion function for State #1 in ResolvedStyledText.gesture.getter()
{
  type metadata accessor for URL?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t type metadata completion function for OpenURLGesture()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for OpenURLGesture(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 35 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 34);
    v17 = *(v11 + 32);
    outlined copy of Environment<OpenURLAction>.Content(*v11, v13, v14, v15, v17, v16);
    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    *(v10 + 24) = v15;
    *(v10 + 32) = v17;
    *(v10 + 34) = v16;
  }

  return v3;
}

uint64_t destroy for OpenURLGesture(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 34);
  v10 = *(v4 + 32);

  return outlined consume of Environment<OpenURLAction>.Content(v5, v6, v7, v8, v10, v9);
}

uint64_t initializeWithCopy for OpenURLGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 34);
  v14 = *(v8 + 32);
  outlined copy of Environment<OpenURLAction>.Content(*v8, v10, v11, v12, v14, v13);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  *(v7 + 32) = v14;
  *(v7 + 34) = v13;
  return a1;
}

uint64_t assignWithCopy for OpenURLGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 34);
  v14 = *(v8 + 32);
  outlined copy of Environment<OpenURLAction>.Content(*v8, v10, v11, v12, v14, v13);
  v15 = *v7;
  v16 = *(v7 + 8);
  v17 = *(v7 + 16);
  v18 = *(v7 + 24);
  v19 = *(v7 + 34);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  v20 = *(v7 + 32);
  *(v7 + 32) = v14;
  *(v7 + 34) = v13;
  outlined consume of Environment<OpenURLAction>.Content(v15, v16, v17, v18, v20, v19);
  return a1;
}

uint64_t initializeWithTake for OpenURLGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 31);
  v10 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 31) = v9;
  return a1;
}

uint64_t assignWithTake for OpenURLGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 32);
  v9 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v7 + 34);
  v11 = *v9;
  v12 = *(v9 + 8);
  v13 = *(v9 + 16);
  v14 = *(v9 + 24);
  v15 = *(v9 + 34);
  v16 = *(v7 + 16);
  *v9 = *v7;
  *(v9 + 16) = v16;
  v17 = *(v9 + 32);
  *(v9 + 32) = v8;
  *(v9 + 34) = v10;
  outlined consume of Environment<OpenURLAction>.Content(v11, v12, v13, v14, v17, v15);
  return a1;
}

uint64_t getEnumTagSinglePayload for OpenURLGesture(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_23;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 35;
  v9 = (((v6 + 7) & 0xFFFFFFF8) + 35) & 0xFFFFFFFB;
  v10 = (a2 - v7 + 0xFFFFFF) >> 24;
  v11 = v9 == 3 ? v10 + 1 : 2;
  v12 = v11 < 0x100 ? 1 : 2;
  v13 = v11 >= 2 ? v12 : 0;
  if (!v13)
  {
    goto LABEL_23;
  }

  if (v13 != 2)
  {
    v14 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_18;
    }

LABEL_23:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 34);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v14 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_23;
  }

LABEL_18:
  v15 = (v14 << 24) - 0x1000000;
  if (v9 == 3)
  {
    v18 = *a1 | (*(a1 + 2) << 16);
  }

  else
  {
    v15 = 0;
    v18 = *a1;
  }

  return v7 + (v18 | v15) + 1;
}

void storeEnumTagSinglePayload for OpenURLGesture(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 35;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v11 = ((a3 - v8 + 0xFFFFFF) >> 24) + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    if (v14)
    {
      if (v14 != 2)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

LABEL_32:
        if (v7 < 0xFE)
        {
          v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v18 + 16) = 0;
            *(v18 + 24) = 0;
            *(v18 + 34) = 0;
            *(v18 + 32) = 0;
            *v18 = a2 - 255;
            *(v18 + 8) = 0;
          }

          else
          {
            *(v18 + 34) = -a2;
          }
        }

        else
        {
          v17 = *(v6 + 56);

          v17();
        }

        return;
      }

      *&a1[v10] = 0;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 35);
  if (v10 == 3)
  {
    v16 = HIBYTE(v15) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    if (!v14)
    {
      return;
    }
  }

  else
  {
    *a1 = v15;
    if (!v14)
    {
      return;
    }
  }

  if (v14 == 2)
  {
    *&a1[v10] = v16;
  }

  else
  {
    a1[v10] = v16;
  }
}

uint64_t partial apply for closure #1 in OpenURLGesture.body.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for OpenURLGesture() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in OpenURLGesture.body.getter(a1, v4);
}

unint64_t specialized MutableCollection.swapAt(_:_:)(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v7 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(v3 + 16);
      v6 = *(v4 + 16);
      if (v6 > result)
      {
        v2 = a2;
        v5 = 632 * result;
        outlined init with copy of PlatformItem(v4 + 32 + 632 * result, v9);
        if (v6 > v2)
        {
          v6 = 632 * v2;
          outlined init with copy of PlatformItem(v4 + 32 + 632 * v2, v8);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
LABEL_6:
        if (*(v4 + 16) <= v7)
        {
          __break(1u);
        }

        else
        {
          result = outlined assign with take of PlatformItem(v8, v4 + 32 + v5);
          *(v3 + 16) = v4;
          if (*(v4 + 16) > v2)
          {
            result = outlined assign with take of PlatformItem(v9, v4 + 32 + v6);
            *(v3 + 16) = v4;
            return result;
          }
        }

        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

{
  if (result != a2)
  {
    v11 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v3;
      v12 = *(*v3 + 16);
      if (v12 > result)
      {
        v2 = a2;
        if (v12 > a2)
        {
          v13 = v4 + 32 + 40 * result;
          v20 = *v13;
          v19 = *(v13 + 8);
          v18 = *(v13 + 16);
          v17 = *(v13 + 24);
          v9 = *(v13 + 32);
          v14 = v4 + 32 + 40 * a2;
          v10 = *v14;
          v5 = *(v14 + 8);
          v6 = *(v14 + 16);
          v7 = *(v14 + 24);
          v8 = *(v14 + 32);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
LABEL_6:
            v15 = v4 + 32 + 40 * v11;
            *v15 = v10;
            *(v15 + 8) = v5;
            *(v15 + 16) = v6;
            *(v15 + 24) = v7;
            *(v15 + 32) = v8;
            v16 = v4 + 32 + 40 * v2;
            *v16 = v20;
            *(v16 + 8) = v19;
            *(v16 + 16) = v18;
            *(v16 + 24) = v17;
            *(v16 + 32) = v9;
            *v3 = v4;
            return result;
          }

LABEL_11:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          v4 = result;
          goto LABEL_6;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

{
  if (result != a2)
  {
    v7 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v3;
      v8 = *(*v3 + 16);
      if (v8 > result)
      {
        v2 = a2;
        if (v8 > a2)
        {
          v5 = *(v4 + 32 + 8 * result);
          v6 = *(v4 + 32 + 8 * a2);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
LABEL_6:
            *(v4 + 32 + 8 * v7) = v6;
            *(v4 + 32 + 8 * v2) = v5;
            *v3 = v4;
            return result;
          }

LABEL_11:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          v4 = result;
          goto LABEL_6;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

{
  if (result != a2)
  {
    v9 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *v3;
      v10 = *(*v3 + 16);
      if (v10 > result)
      {
        v4 = a2;
        v5 = &v74;
        v8 = 208 * result;
        v11 = (v2 + 32 + 208 * result);
        v74 = *v11;
        v12 = v11[1];
        v13 = v11[2];
        v14 = v11[4];
        v77 = v11[3];
        v78 = v14;
        v75 = v12;
        v76 = v13;
        v15 = v11[5];
        v16 = v11[6];
        v17 = v11[8];
        v81 = v11[7];
        v82 = v17;
        v79 = v15;
        v80 = v16;
        v18 = v11[9];
        v19 = v11[10];
        v20 = v11[11];
        *(v85 + 12) = *(v11 + 188);
        v84 = v19;
        v85[0] = v20;
        v83 = v18;
        if (v10 > a2)
        {
          v7 = &v86;
          v6 = 208 * a2;
          v21 = (v2 + 32 + 208 * a2);
          v86 = *v21;
          v22 = v21[1];
          v23 = v21[2];
          v24 = v21[4];
          v89 = v21[3];
          v90 = v24;
          v87 = v22;
          v88 = v23;
          v25 = v21[5];
          v26 = v21[6];
          v27 = v21[8];
          v93 = v21[7];
          v94 = v27;
          v91 = v25;
          v92 = v26;
          v28 = v21[9];
          v29 = v21[10];
          v30 = v21[11];
          *(v97 + 12) = *(v21 + 188);
          v96 = v29;
          v97[0] = v30;
          v95 = v28;
          outlined init with copy of LayoutGestureBox.Child(&v74, v72);
          outlined init with copy of LayoutGestureBox.Child(&v86, v72);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v2 = result;
LABEL_6:
        if (*(v2 + 16) <= v9)
        {
          __break(1u);
        }

        else
        {
          v31 = v2 + 32;
          v32 = (v2 + 32 + v8);
          v70[0] = *v32;
          v33 = v32[1];
          v34 = v32[2];
          v35 = v32[4];
          v70[3] = v32[3];
          v70[4] = v35;
          v70[1] = v33;
          v70[2] = v34;
          v36 = v32[5];
          v37 = v32[6];
          v38 = v32[8];
          v70[7] = v32[7];
          v70[8] = v38;
          v70[5] = v36;
          v70[6] = v37;
          v39 = v32[9];
          v40 = v32[10];
          v41 = v32[11];
          *&v71[12] = *(v32 + 188);
          v70[10] = v40;
          *v71 = v41;
          v70[9] = v39;
          *v32 = v86;
          v42 = v87;
          v43 = v88;
          v44 = v90;
          v32[3] = v89;
          v32[4] = v44;
          v32[1] = v42;
          v32[2] = v43;
          v45 = v91;
          v46 = v92;
          v47 = v94;
          v32[7] = v93;
          v32[8] = v47;
          v32[5] = v45;
          v32[6] = v46;
          v48 = v95;
          v49 = v96;
          v50 = v97[0];
          *(v32 + 188) = *(v7 + 188);
          v32[10] = v49;
          v32[11] = v50;
          v32[9] = v48;
          result = outlined destroy of LayoutGestureBox.Child(v70);
          if (*(v2 + 16) > v4)
          {
            v51 = (v31 + v6);
            v72[0] = *(v31 + v6);
            v52 = *(v31 + v6 + 16);
            v53 = *(v31 + v6 + 32);
            v54 = *(v31 + v6 + 64);
            v72[3] = *(v31 + v6 + 48);
            v72[4] = v54;
            v72[1] = v52;
            v72[2] = v53;
            v55 = *(v31 + v6 + 80);
            v56 = *(v31 + v6 + 96);
            v57 = *(v31 + v6 + 128);
            v72[7] = *(v31 + v6 + 112);
            v72[8] = v57;
            v72[5] = v55;
            v72[6] = v56;
            v58 = *(v31 + v6 + 144);
            v59 = *(v31 + v6 + 160);
            v60 = *(v31 + v6 + 176);
            *(v73 + 12) = *(v31 + v6 + 188);
            v72[10] = v59;
            v73[0] = v60;
            v72[9] = v58;
            *v51 = v74;
            v61 = v75;
            v62 = v76;
            v63 = v78;
            v51[3] = v77;
            v51[4] = v63;
            v51[1] = v61;
            v51[2] = v62;
            v64 = v79;
            v65 = v80;
            v66 = v82;
            v51[7] = v81;
            v51[8] = v66;
            v51[5] = v64;
            v51[6] = v65;
            v67 = v83;
            v68 = v84;
            v69 = v85[0];
            *(v51 + 188) = *(v5 + 188);
            v51[10] = v68;
            v51[11] = v69;
            v51[9] = v67;
            result = outlined destroy of LayoutGestureBox.Child(v72);
            *v3 = v2;
            return result;
          }
        }

        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

Swift::Void __swiftcall MultiViewResponder.updateChildren(_:)(Swift::tuple_value_OpaquePointer_changed_Bool a1)
{
  if (a1.changed)
  {
    v3 = *(*v1 + 320);

    v3(v2);
  }
}

uint64_t MultiViewResponder.bindEvent(_:)(uint64_t a1)
{
  v3 = (*(*v1 + 208))();
  v4 = v3;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_16:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x193AC03C0](v7, v4);
      if (__OFADD__(v7, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v8 = *(v4 + 8 * v7 + 32);

      if (__OFADD__(v7, 1))
      {
        goto LABEL_12;
      }
    }

    v9 = (*(*v8 + 96))(a1);

    ++v7;
    if (v9)
    {
      goto LABEL_14;
    }
  }

  v9 = 0;
LABEL_14:

  return v9;
}

SwiftUI::ViewResponder::HitTestPolicy __swiftcall MultiViewResponder.hitTestPolicy(options:)(SwiftUI::ViewResponder::ContainsPointsOptions options)
{
  v3 = v1;
  if ((*(*v2 + 168))(options.rawValue) >= 0.001)
  {
    result = swift_beginAccess();
    if (static HitTestPassThroughFeature.overrideValue == 2)
    {
      if (one-time initialization token for v7 != -1)
      {
        swift_once();
      }

      v6 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      result = swift_beginAccess();
      if (byte_1ED53C51C)
      {
        result = dyld_program_sdk_at_least();
        if (result)
        {
          goto LABEL_12;
        }

LABEL_14:
        v5 = 0;
        goto LABEL_15;
      }

      if (static Semantics.forced < v6)
      {
        goto LABEL_14;
      }
    }

    else if ((static HitTestPassThroughFeature.overrideValue & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_12:
    v5 = 2;
    goto LABEL_15;
  }

  v5 = 1;
LABEL_15:
  *v3 = v5;
  return result;
}

unint64_t MultiViewResponder.containsGlobalPoints(_:cacheKey:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, double *a4@<X8>)
{
  v5 = v4;
  v9 = *a3;
  v32[0] = *a3;
  v10 = (*(*v4 + 176))(&v31, v32);
  if (v31 == 1)
  {
    result = (*(*v4 + 208))(v10);
    *a4 = 0.0;
    a4[1] = 0.0;
    *(a4 + 2) = result;
    return result;
  }

  v30 = a2 & 0x100000000;
  v12 = *(v4 + 9);
  if (!v12 || (v13 = *(v4 + 6), (v13 & 0x100000000) != 0) || v30 || v13 != a2)
  {
    v15 = *(*v4 + 208);
    result = v15();
    v16 = result;
    if (result >> 62)
    {
      result = __CocoaSet.count.getter();
      v17 = result;
      if (result)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_12:
        v29 = a4;
        if (v17 < 1)
        {
          __break(1u);
          return result;
        }

        v18 = 0;
        v19 = 0;
        a2 = a2;
        v20 = 0.0;
        do
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x193AC03C0](v18, v16);
          }

          else
          {
            v21 = *(v16 + 8 * v18 + 32);
          }

          v32[0] = v9;
          (*(*v21 + 176))(&v31, v32);
          if (v31 == 1)
          {
          }

          else
          {
            v31 = v9;
            v22 = *(*v21 + 184);
            LOBYTE(v32[0]) = v30 != 0;
            v22(v32, a1, a2 | ((v30 != 0) << 32), &v31);

            v23 = v32[0];
            v24 = *&v32[1];

            v19 |= v23;
            if (v20 <= v24)
            {
              v20 = v24;
            }
          }

          ++v18;
        }

        while (v17 != v18);

        a4 = v29;
        v26 = (v15)(v25);
LABEL_26:
        v28 = v26;
        *(v5 + 6) = v30 | a2;
        *(v5 + 7) = v19;
        v5[8] = v20;
        *(v5 + 9) = v26;

        *a4 = v19;
        a4[1] = v20;
        *(a4 + 2) = v28;
        return result;
      }
    }

    v19 = 0;
    a2 = a2;
    v20 = 0.0;
    v26 = (v15)(v27);
    goto LABEL_26;
  }

  v14 = *(v4 + 8);
  *a4 = v4[7];
  *(a4 + 1) = v14;
  *(a4 + 2) = v12;
}

uint64_t MultiViewResponder.addContentPath(to:kind:in:observer:)(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v10 = *a2;
  if (!a4)
  {
    goto LABEL_14;
  }

  v23 = a3;
  swift_beginAccess();
  v11 = v5[10];
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_9:
    v25 = a5;
    swift_unknownObjectWeakInit();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5[10] = v11;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  v8 = 0;
  v13 = v11 + 32;
  while (1)
  {
    if (v8 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    outlined init with copy of ContentPathObservers.Observer(v13, v24);
    Strong = swift_unknownObjectWeakLoadStrong();
    outlined destroy of ContentPathObservers.Observer(v24);
    if (Strong)
    {
      swift_unknownObjectRelease();
      if (Strong == a4)
      {
        break;
      }
    }

    ++v8;
    v13 += 16;
    if (v12 == v8)
    {
      goto LABEL_9;
    }
  }

  while (1)
  {
    swift_endAccess();
    v8 = v23;
LABEL_14:
    v18 = (*(*v5 + 208))();
    v11 = v18;
    if (v18 >> 62)
    {
LABEL_23:
      v19 = __CocoaSet.count.getter();
      if (!v19)
      {
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
      }
    }

    if (v19 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_26:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
    v5[10] = v11;
LABEL_10:
    v17 = *(v11 + 16);
    v16 = *(v11 + 24);
    if (v17 >= v16 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v11);
    }

    *(v11 + 16) = v17 + 1;
    outlined init with take of ContentPathObservers.Observer(v24, v11 + 16 * v17 + 32);
    v5[10] = v11;
  }

  v20 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x193AC03C0](v20, v11);
    }

    else
    {
      v21 = *(v11 + 8 * v20 + 32);
    }

    ++v20;
    v26[0] = v10;
    (*(*v21 + 192))(a1, v26, v8, a4, a5);
  }

  while (v19 != v20);
}

uint64_t MultiViewResponder.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  ContentPathObservers.add(observer:)(a1, a2);
  return swift_endAccess();
}

uint64_t MultiViewResponder.features.getter@<X0>(_WORD *a1@<X8>)
{
  v3 = (*(*v1 + 208))();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v7 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x193AC03C0](v6, v4);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      (*(*v8 + 216))(&v11);

      v7 |= v11;
      ++v6;
      if (v9 == i)
      {
        goto LABEL_15;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v8 = *(v4 + 8 * v6 + 32);

    v9 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v7 = 0;
LABEL_15:

  *a1 = v7;
  return result;
}

void (*MultiViewResponder.children.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 40);

  return MultiViewResponder.children.modify;
}

void MultiViewResponder.children.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    MultiViewResponder.children.setter(v4);
  }

  else
  {
    MultiViewResponder.children.setter(v3);
  }

  free(v2);
}

uint64_t MultiViewResponder.__allocating_init()()
{
  v0 = swift_allocObject();
  MultiViewResponder.init()();
  return v0;
}

uint64_t MultiViewResponder.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = v1;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v2 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v3 = *(v2 + 208);

  swift_beginAccess();
  *(v0 + 24) = v3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

Swift::Void __swiftcall MultiViewResponder.childrenDidChange()()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v3, v6);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = v7;
        ObjectType = swift_getObjectType();
        (*(v4 + 8))(v0, ObjectType, v4);
        swift_unknownObjectRelease();
      }

      outlined destroy of ContentPathObservers.Observer(v6);
      v3 += 16;
      --v2;
    }

    while (v2);
  }

  swift_endAccess();
}

Swift::Void __swiftcall MultiViewResponder.resetGesture()()
{
  v1 = (*(*v0 + 208))();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x193AC03C0](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    (*(*v5 + 120))();
  }

LABEL_10:
}

uint64_t MultiViewResponder.__ivar_destroyer()
{
}

uint64_t MultiViewResponder.deinit()
{
  outlined destroy of weak ViewGraphDelegate?(v0 + 16);
  swift_weakDestroy();

  return v0;
}

uint64_t MultiViewResponder.__deallocating_deinit()
{
  outlined destroy of weak ViewGraphDelegate?(v0 + 16);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AC03C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return destroy for _AnyRadialGradient;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AC03C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return destroy for Image.ResizableProvider;
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for EventGraphHost()
{
  result = lazy cache variable for type metadata for EventGraphHost;
  if (!lazy cache variable for type metadata for EventGraphHost)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for EventGraphHost);
  }

  return result;
}

uint64_t ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v5 = *a2;
  if ((*a2 & 0x20) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  v7 = (*a2 & 0x20 | a1 & 0x100000000) != 0;
  if ((v5 & 0x20) == 0 && (a1 & 0x100000000) != 0)
  {
    v7 = 0;
    v6 = ++static ViewResponder.hitTestKey;
  }

  if ((v5 & 4) != 0)
  {
    v13[0] = v5;
    return ViewResponder.singlePointHitTest(globalPoint:cacheKey:options:)(v6 | (v7 << 32), v13, a3, a4);
  }

  else
  {
    hitPoints(point:radius:)(a3, a4, a5);
    v11 = v5;
    v12 = 0;
    LOBYTE(v13[0]) = v7;
    ViewResponder.hitTest(globalPoints:weights:mask:cacheKey:options:)(v8, v9, &v12, v6 | (v7 << 32), &v11, v13);

    return v13[0];
  }
}

id HitTestBindingResponder.__allocating_init(inputs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 120) = *(a1 + 32);
  *(v2 + 136) = v3;
  *(v2 + 152) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 88) = *a1;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 168) = *(a1 + 80);
  *(v2 + 104) = v4;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v6 = MEMORY[0x1E69E7CC0];
    *(v2 + 176) = result;
    *(v2 + 40) = v6;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = v6;
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v7 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v8 = *(v7 + 208);

    swift_beginAccess();
    *(v2 + 24) = v8;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HitTestBindingResponder.bindEvent(_:)(uint64_t a1)
{
  outlined init with copy of AnyTrackedValue(a1, v10);
  HitTestableEvent.init(_:)(v10, v11);
  if (v12 == 1)
  {
    return MultiViewResponder.bindEvent(_:)(a1);
  }

  v3 = 0;
  if (v17)
  {
    v4 = 0;
  }

  else
  {
    v4 = v16;
  }

  if ((v4 & 0x20) == 0)
  {
    v3 = ++static ViewResponder.hitTestKey;
  }

  if ((v4 & 4) != 0)
  {
    v10[0] = v4;
    LOBYTE(v9) = (v4 & 0x20) != 0;
    v7 = ViewResponder.singlePointHitTest(globalPoint:cacheKey:options:)(v3 | (v9 << 32), v10, v13, v14);
    outlined destroy of HitTestableEvent?(v11);
    result = v7;
    if (!v7)
    {
      return MultiViewResponder.bindEvent(_:)(a1);
    }
  }

  else
  {
    hitPoints(point:radius:)(v13, v14, v15);
    v8 = v4;
    v9 = 0;
    LOBYTE(v10[0]) = (v4 & 0x20) != 0;
    ViewResponder.hitTest(globalPoints:weights:mask:cacheKey:options:)(v5, v6, &v9, v3 | (LOBYTE(v10[0]) << 32), &v8, v10);
    outlined destroy of HitTestableEvent?(v11);

    result = v10[0];
    if (!v10[0])
    {
      return MultiViewResponder.bindEvent(_:)(a1);
    }
  }

  return result;
}

uint64_t HitTestBindingResponder.__allocating_init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)(v7, a2);
}

uint64_t ViewResponder.singlePointHitTest(globalPoint:cacheKey:options:)(unint64_t a1, uint64_t *a2, double a3, double a4)
{
  v8 = *a2;
  v24 = *a2;
  v9 = *(*v4 + 176);
  v9(&v23, &v24);
  if (v23 == 1)
  {
    return 0;
  }

  _sSay7SwiftUI13ViewResponderCGMaTm_5(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18DDA6EB0;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v23 = v8;
  v11 = HIDWORD(a1) & 1;
  *&v12 = a1;
  (*(*v4 + 184))(&v24);

  v13 = v25;
  if ((v24 & 1) == 0)
  {

    return 0;
  }

  if (v25 >> 62)
  {
LABEL_29:
    v16 = __CocoaSet.count.getter();
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_30:

    goto LABEL_31;
  }

  v16 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_8:
  v21 = v9;
  v22 = v4;
  v14 = 0;
  v9 = (v13 + 32);
  v17 = 0.0;
  v11 = *&v12 | (v11 << 32);
  while (!__OFSUB__(v16--, 1))
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x193AC03C0](v16, v13);
    }

    else
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v4 = *(v9 + v16);
    }

    v24 = v8;
    v19 = ViewResponder.singlePointHitTest(globalPoint:cacheKey:options:)(v11, &v24, a3, a4);
    v12 = v20;

    if (v19)
    {
      if (v17 < v12)
      {
        if (!v14)
        {
          v17 = v12;
          v14 = v19;
          goto LABEL_12;
        }

        if (v19 != v14)
        {
          v17 = v12;
          v14 = v19;
        }
      }
    }

LABEL_12:
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_24:

  v9 = v21;
  v4 = v22;
  if (!v14 || v17 <= 0.0)
  {
LABEL_31:
    v24 = v8;
    v9(&v23, &v24);

    if (!v23)
    {

      return v4;
    }

    return 0;
  }

  return v14;
}

void hitPoints(point:radius:)(double a1, double a2, double a3)
{
  v3 = fabs(a3);
  v4 = 1.0;
  v5 = 4.0;
  if (v3 > 1.0)
  {
    v4 = 60.0;
    if (v3 <= 60.0)
    {
      v5 = fmax(v3 / 6.0, 4.0);
      v4 = v3;
    }

    else
    {
      v5 = 10.0;
    }
  }

  v6 = ceil(v4 / v5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v7 = v6;
  if (v6 >= 6)
  {
    v8 = 6;
  }

  else
  {
    v8 = v6;
  }

  _sSay7SwiftUI13ViewResponderCGMaTm_5(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18DDA6EB0;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18DDA6EB0;
  *(v10 + 32) = 0x4038000000000000;
  if (v7 < 1)
  {
    goto LABEL_28;
  }

  v12 = v10;
  if (v7 != 1)
  {
    v13.f64[0] = a1;
    v13.f64[1] = a2;
    v14 = 1;
    v15 = 4;
    v38 = v13;
    *&v11 = v5;
    while (v14 != v8)
    {
      ++v14;
      v40 = v11;
      v18 = __sincos_stret(6.28318531 / v15);
      *&v17 = v18.__cosval;
      *&v16 = v18.__sinval;
      v19 = v38;
      v11 = v40;
      v20 = v15;
      v21 = xmmword_18DDAA020;
      do
      {
        v23 = *(v9 + 16);
        v22 = *(v9 + 24);
        if (v23 >= v22 >> 1)
        {
          v33 = v17;
          v35 = v16;
          v31 = v21;
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v9);
          v21 = v31;
          v17 = v33;
          v16 = v35;
          v19 = v38;
          v11 = v40;
          v9 = v29;
        }

        *(v9 + 16) = v23 + 1;
        *(v9 + 16 * v23 + 32) = vaddq_f64(vmulq_n_f64(v21, *&v11), v19);
        v25 = *(v12 + 16);
        v24 = *(v12 + 24);
        if (v25 >= v24 >> 1)
        {
          v34 = v17;
          v36 = v16;
          v32 = v21;
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v12);
          v21 = v32;
          v17 = v34;
          v16 = v36;
          v19 = v38;
          v11 = v40;
          v12 = v30;
        }

        *(v12 + 16) = v25 + 1;
        *(v12 + 8 * v25 + 32) = 24.0 / v15;
        v26 = vmulq_n_f64(v21, *&v17);
        v27 = vmulq_n_f64(v21, *&v16);
        v28 = vextq_s8(v27, v27, 8uLL);
        *&v21.f64[0] = *&vsubq_f64(v26, v28);
        v21.f64[1] = vaddq_f64(v26, v28).f64[1];
        --v20;
      }

      while (v20);
      v15 += 4;
      *&v11 = v5 + *&v11;
      if (v14 == v8)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_25;
  }
}

uint64_t ViewResponder.hitTest(globalPoints:weights:mask:cacheKey:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = *a5;
  v54 = *a5;
  v13 = *(*v6 + 176);
  result = v13(v52, &v54);
  if (v52[0] == 1)
  {
    goto LABEL_2;
  }

  v41 = v13;
  *v52 = v12;
  v43 = HIDWORD(a4) & 1;
  v42 = a4;
  v15 = (*(*v6 + 184))(&v54, a1, a4 | (v43 << 32), v52);
  v16 = v55;
  v50 = v56;
  v17 = *(a1 + 16);
  v44 = a6;
  v45 = v6;
  if (!v17)
  {
    v19 = 0.0;
    a6 = v11;
    v20 = v11;
    goto LABEL_14;
  }

  v18 = v54;
  v48 = v54;
  if ((v11 & 1) != 0 || (v54 & 1) == 0)
  {
    a6 = v11 | 1;
    v19 = 0.0;
    v20 = v11;
    if (v17 == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

  if (!*(a2 + 16))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v19 = *(a2 + 32) + 0.0;
  if ((*(*v6 + 168))(v15) <= 0.5)
  {
    a6 = v11;
    v20 = v11;
  }

  else
  {
    v20 = v11 | 1;
    a6 = v11;
  }

  v18 = v48;
  if (v17 != 1)
  {
LABEL_36:
    v32 = (a2 + 40);
    v33 = 1;
    v47 = v17;
    while (v33 <= 0x3F)
    {
      v34 = 1 << v33;
      if (((1 << v33) & v11) != 0 || ((1 << v33) & v18) == 0)
      {
        goto LABEL_38;
      }

      if (v33 >= *(a2 + 16))
      {
        goto LABEL_70;
      }

      v36 = v11;
      v37 = v20;
      v19 = v19 + *v32;
      v6 = v45;
      if ((*(*v45 + 168))(v15) <= 0.5)
      {
        v20 = v37 & ~v34;
      }

      else
      {
        v20 = v37 | v34;
      }

      v11 = v36;
      v17 = v47;
      v18 = v48;
LABEL_39:
      ++v33;
      ++v32;
      if (v17 == v33)
      {
        goto LABEL_14;
      }
    }

    v34 = 0;
LABEL_38:
    a6 |= v34;
    goto LABEL_39;
  }

LABEL_14:
  v40 = v20;
  v6 = v45;
  v16 = v16 * (v19 * (*(*v45 + 168))(v15));
  if (v16 == 0.0)
  {

    *v44 = 0;
    v44[1] = 0;
    v44[2] = 0;
    return result;
  }

  v17 = v50;
  if (v50 >> 62)
  {
LABEL_71:
    v21 = __CocoaSet.count.getter();
    if (v21)
    {
      goto LABEL_18;
    }

    goto LABEL_72;
  }

  v21 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21)
  {
LABEL_18:
    v22 = v17;
    v23 = v17 & 0xC000000000000001;
    v24 = v22 & 0xFFFFFFFFFFFFFF8;
    v25 = v22 + 32;
    v26 = 0.0;
    v27 = 0.0;
    v46 = v23;
    v49 = 0;
    while (1)
    {
      if (__OFSUB__(v21--, 1))
      {
        __break(1u);
LABEL_51:

        v27 = v27 * 1.2;
        v6 = v45;
        goto LABEL_52;
      }

      v29 = v26;
      if (v23)
      {
        v6 = MEMORY[0x193AC03C0](v21, v50);
      }

      else
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          result = static Semantics.forced >= a6;
          goto LABEL_62;
        }

        if (v21 >= *(v24 + 16))
        {
          goto LABEL_60;
        }

        v6 = *(v25 + 8 * v21);
      }

      *v52 = a6;
      v53[0] = v12;
      ViewResponder.hitTest(globalPoints:weights:mask:cacheKey:options:)(&v54, a1, a2, v52, v42 | (v43 << 32), v53);

      if (v54)
      {
        a6 = v56;
        v30 = v55;
        if (v27 >= v55)
        {
        }

        else if (v26 >= v55)
        {

          v27 = v30;
        }

        else if (v49)
        {
          v6 = v54;
          v31 = v56;

          a6 = v31;
          v23 = v46;
          if (v6 != v49)
          {
            v27 = v26;
          }

          v26 = v30;
          v49 = v6;
        }

        else
        {
          v26 = v55;
          v27 = v29;
          v49 = v54;
        }
      }

      if (!v21)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_72:

  v49 = 0;
  v26 = 0.0;
  v27 = 0.0;
LABEL_52:
  swift_beginAccess();
  result = static HitTestPassThroughFeature.overrideValue;
  a6 = v44;
  v38 = v41;
  if (static HitTestPassThroughFeature.overrideValue == 2)
  {
    if (one-time initialization token for v7 != -1)
    {
      swift_once();
    }

    LODWORD(a6) = static Semantics.v7;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if ((byte_1ED53C51C & 1) == 0)
    {
      goto LABEL_61;
    }

    result = dyld_program_sdk_at_least();
LABEL_62:
    a6 = v44;
    v38 = v41;
  }

  if (!v49)
  {
    goto LABEL_68;
  }

  v39 = fmax(v27, 8.0);
  if (result)
  {
    v39 = 0.0;
  }

  if (v39 < v26)
  {
    *a6 = v49;
    *(a6 + 8) = v16;
    *(a6 + 16) = v40;
  }

  else
  {
LABEL_68:
    v53[0] = v12;
    v38(&v51, v53);

    if (v51)
    {
LABEL_2:
      *a6 = 0;
      *(a6 + 8) = 0;
      *(a6 + 16) = 0;
      return result;
    }

    *a6 = v6;
    *(a6 + 8) = v16;
    *(a6 + 16) = v40;
  }

  return result;
}

uint64_t outlined destroy of HitTestableEvent?(uint64_t a1)
{
  type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for HitTestableEvent?, &type metadata for HitTestableEvent, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void DefaultLayoutViewResponder.makeGesture(inputs:)(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[5];
  v35[4] = a1[4];
  v35[5] = v5;
  *v36 = a1[6];
  *&v36[12] = *(a1 + 108);
  v6 = a1[1];
  v35[0] = *a1;
  v35[1] = v6;
  v7 = a1[3];
  v35[2] = a1[2];
  v35[3] = v7;
  specialized _GestureInputs.makeDefaultOutputs<A>()(v32);
  v8 = v32[0];
  v9 = v32[1];
  v10 = v33;
  v11 = v34;
  if (!AGSubgraphIsValid())
  {
    goto LABEL_9;
  }

  v31 = v11;
  v30 = v8;
  v12 = AGSubgraphGetCurrent();
  if (!v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  v14 = v10;
  v15 = v36[24];
  v16 = v9;
  v17 = AGSubgraphGetGraph();
  v18 = AGSubgraphCreate();

  v19 = *(v3 + 184);
  *(v3 + 184) = v18;
  v20 = v18;

  AGSubgraphAddChild2();
  if (!*(v3 + 184))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  AGSubgraphAddChild();
  v9 = v16;
  v10 = v14;
  v11 = v31;
  if ((v15 & 0x10) == 0)
  {
    goto LABEL_7;
  }

  v21 = AGSubgraphGetGraph();
  v22 = AGSubgraphCreate();

  v23 = *(v3 + 192);
  *(v3 + 192) = v22;
  v24 = v22;

  v25 = *(v3 + 184);
  if (v25)
  {
    v26 = v25;
    AGSubgraphAddChild2();

LABEL_7:
    v27 = *(v3 + 184);
    if (v27)
    {
      v28 = v27;
      AGGraphClearUpdate();
      v29 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      LODWORD(v8) = v30;
      closure #1 in DefaultLayoutViewResponder.makeGesture(inputs:)(v3, v35, v30 | (v9 << 32), v10);
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
LABEL_9:
      *a2 = v8;
      *(a2 + 4) = v9;
      *(a2 + 8) = v10;
      *(a2 + 16) = v11;
      return;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
}

Swift::Void __swiftcall DefaultLayoutViewResponder.resetGesture()()
{
  v1 = v0[25];
  v0[25] = 0;
  v0[26] = 0;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1);
  v2 = v0[23];
  v0[23] = 0;

  v3 = v0[24];
  v0[24] = 0;

  v4 = (*(*v0 + 208))();
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x193AC03C0](i, v5);
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    (*(*v8 + 120))();
  }

LABEL_10:
}

uint64_t DefaultLayoutViewResponder.__allocating_init(inputs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DefaultLayoutViewResponder.init(inputs:)(a1);
  return v2;
}

uint64_t DefaultLayoutResponderFilter.children.getter()
{
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
}

uint64_t key path getter for DefaultLayoutResponderFilter.children : DefaultLayoutResponderFilter@<X0>(void *a1@<X8>)
{
  type metadata accessor for [ViewResponder](0);
  *a1 = *AGGraphGetValue();
}

uint64_t DefaultLayoutResponderFilter.children.setter()
{
  type metadata accessor for [ViewResponder](0);
  AGGraphSetValue();
}

uint64_t (*DefaultLayoutResponderFilter.children.modify(uint64_t a1))(void *a1)
{
  *(a1 + 24) = *v1;
  type metadata accessor for [ViewResponder](0);
  *(a1 + 16) = v3;
  *a1 = *AGGraphGetValue();

  return DefaultLayoutResponderFilter.children.modify;
}

uint64_t DefaultLayoutResponderFilter.children.modify(void *a1)
{
  a1[1] = *a1;
  AGGraphSetValue();
}

uint64_t (*DefaultLayoutResponderFilter.$children.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return DefaultLayoutResponderFilter.$children.modify;
}

uint64_t DefaultLayoutResponderFilter.init(children:responder:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

Swift::Void __swiftcall DefaultLayoutResponderFilter.updateValue()()
{
  v1 = *(v0 + 8);
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v2)
  {
    v3 = *(*v1 + 320);

    v3(v4);
  }

  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18DDAB4D0;
    *(v5 + 32) = v1;

    AGGraphSetOutputValue();
  }
}

uint64_t DefaultLayoutViewResponder.inputs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v4 = *(v1 + 152);
  v10 = *(v1 + 136);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 168);
  v6 = *(v1 + 104);
  v9[0] = *(v1 + 88);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _ViewInputs(v9, v8);
}

uint64_t DefaultLayoutViewResponder.__allocating_init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DefaultLayoutViewResponder.init(inputs:viewSubgraph:)(a1, a2);
  return v4;
}

uint64_t DefaultLayoutViewResponder.init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *(v2 + 120) = *(a1 + 32);
  *(v2 + 136) = v3;
  *(v2 + 152) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 88) = *a1;
  *(v2 + 200) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 168) = *(a1 + 80);
  *(v2 + 104) = v4;
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 176) = a2;
  *(v2 + 40) = v5;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = v5;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v6 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v7 = *(v6 + 208);

  swift_beginAccess();
  *(v2 + 24) = v7;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t specialized _GestureInputs.makeDefaultOutputs<A>()@<X0>(uint64_t a1@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 120);
  v11 = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  type metadata accessor for DefaultRule<GesturePhase<()>>();
  lazy protocol witness table accessor for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>(&lazy protocol witness table cache variable for type DefaultRule<GesturePhase<()>> and conformance DefaultRule<A>, type metadata accessor for DefaultRule<GesturePhase<()>>);
  v4 = Attribute.init<A>(body:value:flags:update:)();
  if ((v3 & 8) != 0)
  {
    v11 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for DefaultRule<GestureDebug.Data>();
    lazy protocol witness table accessor for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>(&lazy protocol witness table cache variable for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>, type metadata accessor for DefaultRule<GestureDebug.Data>);
    v5 = Attribute.init<A>(body:value:flags:update:)();
  }

  else
  {
    v5 = *MEMORY[0x1E698D3F8];
  }

  v11 = *(v1 + 96);
  v12 = *(v1 + 104);
  outlined init with copy of PreferencesInputs(&v11, &v9);
  PreferencesInputs.makeIndirectOutputs()(&v9);

  v6 = v9;
  v7 = v10;

  *a1 = v4;
  *(a1 + 4) = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return result;
}

uint64_t closure #1 in DefaultLayoutViewResponder.makeGesture(inputs:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v62 = *MEMORY[0x1E69E9840];
  *&v54 = a1;

  v6 = Attribute.init<A>(body:value:flags:update:)();

  v7 = AGGraphGetAttributeGraph();
  if (!AGGraphGetContext())
  {
    __break(1u);
  }

  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v10 = HIDWORD(v8);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v9;
  *(v12 + 28) = v10;
  v13 = *(a1 + 200);
  *(a1 + 200) = partial apply for closure #1 in closure #1 in DefaultLayoutViewResponder.makeGesture(inputs:);
  *(a1 + 208) = v12;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v13);

  v15 = *(a2 + 16);
  v16 = *(a2 + 40);
  v48 = *(a2 + 24);
  v49 = v16;
  v17 = *(a2 + 72);
  *v50 = *(a2 + 56);
  *&v50[16] = v17;
  *v33 = *(a2 + 96);
  *&v33[12] = *(a2 + 108);
  v18 = *(a1 + 104);
  v52 = *(a1 + 88);
  *v53 = v18;
  v19 = *(a1 + 120);
  v20 = *(a1 + 136);
  v21 = *(a1 + 152);
  *&v53[64] = *(a1 + 168);
  *&v53[32] = v20;
  *&v53[48] = v21;
  *&v53[16] = v19;
  v22 = *(a1 + 192);
  if (v22)
  {
    v23 = *(a1 + 192);
LABEL_6:
    v25 = *(a2 + 88);
    v34 = *a2;
    v35 = v15;
    v36 = *(a2 + 24);
    v37 = *(a2 + 40);
    v38[0] = *(a2 + 56);
    *(v38 + 12) = *(a2 + 68);
    outlined init with copy of _GestureInputs(a2, &v54);
    outlined init with copy of _ViewInputs(&v52, &v54);
    v26 = v22;
    outlined destroy of _ViewInputs(&v34);
    v27 = *v53;
    v51 = v52;
    v48 = *&v53[8];
    v49 = *&v53[24];
    *v50 = *&v53[40];
    *&v50[12] = *&v53[52];
    swift_beginAccess();
    v28 = v27[3];
    v39[1] = v27[2];
    v39[2] = v28;
    v29 = v27[5];
    v39[3] = v27[4];
    v39[4] = v29;
    v39[0] = v27[1];
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
    v30 = swift_allocObject();
    memmove((v30 + 16), v27 + 1, 0x50uLL);
    outlined init with copy of CachedEnvironment(v39, &v54);

    v54 = v51;
    v56 = v48;
    v57 = v49;
    v58 = *v50;
    v59 = *&v50[16];
    v55 = v30;
    v60 = v23;
    v61[0] = *v33;
    *(v61 + 12) = *&v33[12];
    _s7SwiftUI13LayoutGesturePAAE05_makeD07gesture6inputsAA01_D7OutputsVyytGAA11_GraphValueVyxG_AA01_D6InputsVtFZAA07DefaultcD0V_Tt2B5(v6, &v54, &v40);
    specialized _GestureOutputs.overrideDefaultValues(_:)(v40, *(&v40 + 1), v41, a3, a4);

    v40 = v51;
    v42 = v48;
    v43 = v49;
    v44 = *v50;
    v45 = *&v50[16];
    v41 = v30;
    v46 = v23;
    v47[0] = *v33;
    *(v47 + 12) = *&v33[12];
    return outlined destroy of _GestureInputs(&v40);
  }

  v24 = *(a1 + 184);
  if (v24)
  {
    v23 = v24;
    v22 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in DefaultLayoutViewResponder.makeGesture(inputs:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = _threadTransactionID();
    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v4, a2, 1, 1);
  }

  return result;
}

uint64_t DefaultLayoutViewResponder.__ivar_destroyer()
{
  v1 = *(v0 + 136);
  v4[2] = *(v0 + 120);
  v4[3] = v1;
  v4[4] = *(v0 + 152);
  v5 = *(v0 + 168);
  v2 = *(v0 + 104);
  v4[0] = *(v0 + 88);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);

  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v0 + 200));
}

uint64_t protocol witness for AnyGestureResponder.inputs.getter in conformance GestureResponder<A>@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v4 = *(v1 + 152);
  v10 = *(v1 + 136);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 168);
  v6 = *(v1 + 104);
  v9[0] = *(v1 + 88);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _ViewInputs(v9, v8);
}

unint64_t lazy protocol witness table accessor for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter()
{
  result = lazy protocol witness table cache variable for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter;
  if (!lazy protocol witness table cache variable for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter);
  }

  return result;
}

void type metadata accessor for DefaultRule<GesturePhase<()>>()
{
  if (!lazy cache variable for type metadata for DefaultRule<GesturePhase<()>>)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(255, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
    lazy protocol witness table accessor for type GesturePhase<()> and conformance GesturePhase<A>();
    v0 = type metadata accessor for DefaultRule();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DefaultRule<GesturePhase<()>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GesturePhase<()> and conformance GesturePhase<A>()
{
  result = lazy protocol witness table cache variable for type GesturePhase<()> and conformance GesturePhase<A>;
  if (!lazy protocol witness table cache variable for type GesturePhase<()> and conformance GesturePhase<A>)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(255, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GesturePhase<()> and conformance GesturePhase<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for DefaultRule<GestureDebug.Data>()
{
  if (!lazy cache variable for type metadata for DefaultRule<GestureDebug.Data>)
  {
    v0 = type metadata accessor for DefaultRule();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DefaultRule<GestureDebug.Data>);
    }
  }
}

uint64_t static ViewResponder.ContainsPointsResult.passthrough(to:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = a1;
}

uint64_t ViewResponder.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v2 = *(v1 + 208);

  swift_beginAccess();
  *(v0 + 24) = v2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ViewResponder.deinit()
{
  outlined destroy of weak ViewGraphDelegate?(v0 + 16);
  swift_weakDestroy();
  return v0;
}

uint64_t ViewResponder.description.getter()
{
  MEMORY[0x193ABEDD0](0x2865646F6ELL, 0xE500000000000000);
  _print_unlocked<A, B>(_:_:)();
  v1 = MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  v2 = (*(*v0 + 224))(v1);
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0;
}

double ViewResponder.ContainsPointsCache.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *ViewResponder.ContainsPointsResult.init(mask:priority:children:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = *result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

uint64_t ViewResponder.ContainsPointsCache.fetch(key:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr)@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = v3[3];
  if (!v7 || (*v3 & 0x100000000) != 0 || (a1 & 0x100000000) != 0 || *v3 != a1)
  {
    a2(v13);
    v10 = v13[0];
    v11 = v13[1];
    v12 = v13[2];

    *v4 = a1 & 0x1FFFFFFFFLL;
    v4[1] = v10;
    v4[2] = v11;
    v4[3] = v12;
    *a3 = v10;
    a3[1] = v11;
    a3[2] = v12;
  }

  else
  {
    v8 = v3[2];
    *a3 = v3[1];
    a3[1] = v8;
    a3[2] = v7;
  }

  return result;
}

uint64_t ViewResponder.containsGlobalPoints(_:cacheKey:options:)@<X0>(void *a1@<X8>)
{
  result = (*(*v1 + 208))();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = result;
  return result;
}

uint64_t ViewResponder.init(host:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t ViewResponder.parent.setter(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (!a1)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = v1[3];
        ObjectType = swift_getObjectType();
        v6 = type metadata accessor for EventGraphHost();
        (*(v4 + 16))(v10, v6, v6, ObjectType, v4);
        swift_unknownObjectRelease();
        if (v10[0])
        {
          v7 = v10[1];
          v8 = swift_getObjectType();
          (*(v7 + 8))(v8, v7);
          swift_unknownObjectRelease();
          v9 = EventBindingManager.willRemoveResponder(_:)(v1);
          (*(*v1 + 120))(v9);
        }
      }
    }
  }

  swift_weakAssign();
}

uint64_t ViewResponder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v2 = *(v1 + 208);

  swift_beginAccess();
  *(v0 + 24) = v2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ViewResponder.__allocating_init(host:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  swift_beginAccess();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t key path setter for ViewResponder.parent : ViewResponder(uint64_t *a1)
{
  ViewResponder.parent.willset(*a1);
  swift_beginAccess();
  return swift_weakAssign();
}

uint64_t ViewResponder.parent.willset(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    if (!a1)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v4 = v1[3];
        ObjectType = swift_getObjectType();
        v6 = type metadata accessor for EventGraphHost();
        (*(v4 + 16))(v10, v6, v6, ObjectType, v4);
        result = swift_unknownObjectRelease();
        if (v10[0])
        {
          v7 = v10[1];
          v8 = swift_getObjectType();
          (*(v7 + 8))(v8, v7);
          swift_unknownObjectRelease();
          v9 = EventBindingManager.willRemoveResponder(_:)(v1);
          (*(*v1 + 120))(v9);
        }
      }
    }
  }

  return result;
}

void (*ViewResponder.parent.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  swift_beginAccess();
  *(v4 + 64) = swift_weakLoadStrong();
  return ViewResponder.parent.modify;
}

void ViewResponder.parent.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {

    ViewResponder.parent.willset(v4);
    swift_weakAssign();
  }

  else
  {
    if (swift_weakLoadStrong())
    {

      if (!v3)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v5 = *(v2[9] + 24);
          ObjectType = swift_getObjectType();
          v7 = type metadata accessor for EventGraphHost();
          (*(v5 + 16))(v7, v7, ObjectType, v5);
          swift_unknownObjectRelease();
          if (v2[6])
          {
            v8 = v2[9];
            v9 = v2[7];
            v10 = swift_getObjectType();
            (*(v9 + 8))(v10, v9);
            swift_unknownObjectRelease();
            v11 = EventBindingManager.willRemoveResponder(_:)(v8);
            (*(*v8 + 120))(v11);
          }
        }
      }
    }

    swift_weakAssign();
  }

  free(v2);
}

Swift::Int ViewResponder.HitTestPolicy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t ViewResponder.ContainsPointsResult.children.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void static ViewResponder.ContainsPointsResult.stop.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
}

void *ViewResponder.descriptionChildren.getter()
{
  v1 = (*(*v0 + 208))();
  v2 = specialized _arrayForceCast<A, B>(_:)(v1);

  return v2;
}

Swift::Void __swiftcall ViewResponder.printTree(depth:)(Swift::Int depth)
{
  v2 = v1;
  v21 = indentString(_:)(depth);
  v22 = v4;
  MEMORY[0x193ABEDD0](43, 0xE100000000000000);
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  v5 = MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  v6 = (*(*v1 + 224))(v5);
  MEMORY[0x193ABEDD0](v6);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  (*(*v1 + 240))(&v21);
  v8 = v21;
  v7 = v22;
  if (one-time initialization token for events != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.events);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v20);
    _os_log_impl(&dword_18D018000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x193AC4820](v13, -1, -1);
    MEMORY[0x193AC4820](v12, -1, -1);
  }

  v14 = (*(*v2 + 208))();
  v15 = v14;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_15:

    return;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_7:
  v17 = __OFADD__(depth, 1);
  v18 = depth + 1;
  if (v17)
  {
    __break(1u);
  }

  else if (v16 >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AC03C0](i, v15);
      }

      else
      {
      }

      ViewResponder.printTree(depth:)(v18);
    }

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t indentString(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      do
      {
        MEMORY[0x193ABEDD0](8316, 0xE200000000000000);
        --v1;
      }

      while (v1);
      return 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ViewResponder.__ivar_destroyer()
{
  outlined destroy of weak ViewGraphDelegate?(v0 + 16);

  return swift_weakDestroy();
}

uint64_t ViewResponder.__deallocating_deinit()
{

  outlined destroy of weak ViewGraphDelegate?(v0 + 16);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void *protocol witness for CustomRecursiveStringConvertible.descriptionChildren.getter in conformance ViewResponder()
{
  v1 = (*(**v0 + 208))();
  v2 = specialized _arrayForceCast<A, B>(_:)(v1);

  return v2;
}

uint64_t static ViewGraph.eventGraphHost.getter()
{
  specialized static GraphHost.currentHost.getter();
  v0 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 208);

    ObjectType = swift_getObjectType();
    v3 = type metadata accessor for EventGraphHost();
    (*(v1 + 16))(&v5, v3, v3, ObjectType, v1);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t specialized closure #1 in sequence<A>(first:next:)(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
  }

  else if (v2)
  {
    v7 = *a1;

    a2(&v8, &v7);

    v5 = v8;

    *a1 = v5;
    return v5;
  }

  return v2;
}

uint64_t specialized closure #1 in sequence<A>(first:next:)@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  result = specialized closure #1 in sequence<A>(first:next:)(a1, a2);
  *a3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ViewResponder.HitTestPolicy and conformance ViewResponder.HitTestPolicy()
{
  result = lazy protocol witness table cache variable for type ViewResponder.HitTestPolicy and conformance ViewResponder.HitTestPolicy;
  if (!lazy protocol witness table cache variable for type ViewResponder.HitTestPolicy and conformance ViewResponder.HitTestPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewResponder.HitTestPolicy and conformance ViewResponder.HitTestPolicy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions()
{
  result = lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions;
  if (!lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions;
  if (!lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions;
  if (!lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions;
  if (!lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewResponder.ContainsPointsOptions and conformance ViewResponder.ContainsPointsOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewResponder.Features and conformance ViewResponder.Features()
{
  result = lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features;
  if (!lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features;
  if (!lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features;
  if (!lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features;
  if (!lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewResponder.Features and conformance ViewResponder.Features);
  }

  return result;
}

uint64_t initializeWithCopy for ViewResponder.ContainsPointsCache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for ViewResponder.ContainsPointsCache(uint64_t a1, int *a2)
{
  v3 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v3;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = *(a2 + 2);
  *(a1 + 24) = *(a2 + 3);

  return a1;
}

uint64_t assignWithTake for ViewResponder.ContainsPointsCache(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *assignWithCopy for ViewResponder.ContainsPointsResult(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for ViewResponder.ContainsPointsResult(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

uint64_t TrivialContentPathObserver.contentPathDidChange(for:changes:transform:finished:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  result = (*(a7 + 16))(a1, a6, a7);
  *a5 = 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ContentPathChanges and conformance ContentPathChanges()
{
  result = lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges;
  if (!lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges;
  if (!lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges;
  if (!lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges;
  if (!lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentPathChanges and conformance ContentPathChanges);
  }

  return result;
}

uint64_t BlurStyle.init(radius:isOpaque:dither:hardEdges:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 9) = a2;
  return result;
}

double (*BlurStyle.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

void BlurStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 9);
  if (*v2 != 0.0)
  {
    v7 = fabs(v4);
    if (v7 >= 65536.0)
    {
      v8 = 9;
    }

    else
    {
      v8 = 13;
    }

    ProtobufEncoder.encodeVarint(_:)(v8);
    if (v7 < 65536.0)
    {
      v9 = a1[1];
      v10 = v9 + 4;
      if (!__OFADD__(v9, 4))
      {
        *&v4 = v4;
        if (a1[2] >= v10)
        {
          a1[1] = v10;
          *(*a1 + v9) = LODWORD(v4);
          goto LABEL_12;
        }

        goto LABEL_19;
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      *ProtobufEncoder.growBufferSlow(to:)(v10) = LODWORD(v4);
      goto LABEL_12;
    }

    v11 = a1[1];
    v10 = v11 + 8;
    if (__OFADD__(v11, 8))
    {
      goto LABEL_18;
    }

    if (a1[2] < v10)
    {
      *ProtobufEncoder.growBufferSlow(to:)(v10) = v4;
    }

    else
    {
      a1[1] = v10;
      *(*a1 + v11) = v4;
    }
  }

LABEL_12:
  if (v5)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  if (v6)
  {
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }
}

unint64_t BlurStyle.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    v9 = 0.0;
LABEL_58:
    v3[3] = 0;
    *a2 = v9;
    *(a2 + 8) = v7;
    *(a2 + 9) = v8;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v10 = v3[4];
      if (v5 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v5)
      {
        goto LABEL_56;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_56:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v11 = result >> 3;
    v12 = result & 7;
    if (result >> 3 == 3)
    {
      break;
    }

    if (v11 == 2)
    {
      if ((result & 7) != 0)
      {
        if (v12 != 2)
        {
          goto LABEL_56;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        v14 = v3[1] + result;
        if (v6 < v14)
        {
          goto LABEL_56;
        }

        v3[3] = 16;
        v3[4] = v14;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v7 = result != 0;
    }

    else if (v11 == 1)
    {
      if (v12 == 5)
      {
        v17 = v3[1];
        if (v6 < (v17 + 1))
        {
          goto LABEL_56;
        }

        v18 = *v17;
        v3[1] = v17 + 1;
        v9 = v18;
      }

      else
      {
        if (v12 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          v13 = v3[1];
          if (v6 < v13 + result)
          {
            goto LABEL_56;
          }

          v3[3] = 9;
          v3[4] = v13 + result;
        }

        else
        {
          if (v12 != 1)
          {
            goto LABEL_56;
          }

          v13 = v3[1];
        }

        if (v6 < (v13 + 1))
        {
          goto LABEL_56;
        }

        v9 = *v13;
        v3[1] = v13 + 1;
      }
    }

    else
    {
      if ((result & 7) > 1)
      {
        if (v12 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          v16 = v3[1] + result;
          if (v6 < v16)
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_56;
          }

          v16 = v3[1] + 4;
          if (v6 < v16)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_3;
      }

      if ((result & 7) != 0)
      {
        if (v12 != 1)
        {
          goto LABEL_56;
        }

        v16 = v3[1] + 8;
        if (v6 < v16)
        {
          goto LABEL_56;
        }

LABEL_3:
        v3[1] = v16;
        goto LABEL_4;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_58;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_32:
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v8 = result != 0;
    goto LABEL_4;
  }

  if (v12 != 2)
  {
    goto LABEL_56;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v15 = v3[1] + result;
    if (v6 < v15)
    {
      goto LABEL_56;
    }

    v3[3] = 24;
    v3[4] = v15;
    goto LABEL_32;
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for BlurStyle(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BlurStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int Image.Interpolation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t Image.interpolation(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for ImageProviderBox<Image.InterpolationProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.InterpolationProvider>, lazy protocol witness table accessor for type Image.InterpolationProvider and conformance Image.InterpolationProvider);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;

  return v4;
}

unint64_t lazy protocol witness table accessor for type Image.InterpolationProvider and conformance Image.InterpolationProvider()
{
  result = lazy protocol witness table cache variable for type Image.InterpolationProvider and conformance Image.InterpolationProvider;
  if (!lazy protocol witness table cache variable for type Image.InterpolationProvider and conformance Image.InterpolationProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.InterpolationProvider and conformance Image.InterpolationProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.InterpolationProvider and conformance Image.InterpolationProvider;
  if (!lazy protocol witness table cache variable for type Image.InterpolationProvider and conformance Image.InterpolationProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.InterpolationProvider and conformance Image.InterpolationProvider);
  }

  return result;
}

uint64_t Image.antialiased(_:)(char a1, uint64_t a2)
{
  type metadata accessor for ImageProviderBox<Image.InterpolationProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.AntialiasedProvider>, lazy protocol witness table accessor for type Image.AntialiasedProvider and conformance Image.AntialiasedProvider);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return v4;
}

void type metadata accessor for ImageProviderBox<Image.InterpolationProvider>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ImageProviderBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Image.AntialiasedProvider and conformance Image.AntialiasedProvider()
{
  result = lazy protocol witness table cache variable for type Image.AntialiasedProvider and conformance Image.AntialiasedProvider;
  if (!lazy protocol witness table cache variable for type Image.AntialiasedProvider and conformance Image.AntialiasedProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.AntialiasedProvider and conformance Image.AntialiasedProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.AntialiasedProvider and conformance Image.AntialiasedProvider;
  if (!lazy protocol witness table cache variable for type Image.AntialiasedProvider and conformance Image.AntialiasedProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.AntialiasedProvider and conformance Image.AntialiasedProvider);
  }

  return result;
}

void protocol witness for ImageProvider.resolve(in:) in conformance Image.InterpolationProvider(uint64_t a1@<X8>)
{
  v3 = v1[8];
  (*(**v1 + 80))();
  *(a1 + 106) = v3;
  Image.Resolved.image.didset();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Image.InterpolationProvider(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a1[8];
  v3 = *(a2 + 8);
  return (*a1 == *a2 || ((*(**a1 + 96))() & 1) != 0) && v2 == v3;
}

void protocol witness for ImageProvider.resolve(in:) in conformance Image.AntialiasedProvider(uint64_t a1@<X8>)
{
  v3 = v1[8];
  (*(**v1 + 80))();
  *(a1 + 105) = v3;
  Image.Resolved.image.didset();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Image.AntialiasedProvider(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a1[8];
  v3 = *(a2 + 8);
  if (*a1 == *a2 || ((*(**a1 + 96))() & 1) != 0)
  {
    return v2 ^ v3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t Image.Interpolation.init(protobufValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type Image.Interpolation and conformance Image.Interpolation()
{
  result = lazy protocol witness table cache variable for type Image.Interpolation and conformance Image.Interpolation;
  if (!lazy protocol witness table cache variable for type Image.Interpolation and conformance Image.Interpolation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.Interpolation and conformance Image.Interpolation);
  }

  return result;
}

uint64_t assignWithCopy for Image.AntialiasedProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for Image.AntialiasedProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for Image.AntialiasedProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Image.AntialiasedProvider and conformance Image.AntialiasedProvider();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Image.InterpolationProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Image.InterpolationProvider and conformance Image.InterpolationProvider();
  *(a1 + 8) = result;
  return result;
}

id _ShapeStyle_ResolverMode.bundle.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t _ShapeStyle_ResolverMode.init(foregroundLevels:options:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = 0;
  *(a3 + 8) = result;
  *(a3 + 10) = v3;
  return result;
}

_BYTE *_ShapeStyle_ResolverMode.formUnion(_:)(_BYTE *result)
{
  v2 = *(result + 4);
  v3 = result[10];
  v4 = *v1;
  if (!*v1)
  {
    v4 = *result;
    result = *result;
  }

  *v1 = v4;
  v5 = *(v1 + 8);
  if (v2 > v5)
  {
    LOWORD(v5) = v2;
  }

  *(v1 + 8) = v5;
  *(v1 + 10) |= v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options()
{
  result = lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_ResolverMode.Options and conformance _ShapeStyle_ResolverMode.Options);
  }

  return result;
}

uint64_t assignWithCopy for _ShapeStyle_ResolverMode(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_ResolverMode(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_ResolverMode(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 11))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for _ShapeStyle_ResolverMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for ShapeStyleResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithTake for ShapeStyleResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t outlined init with copy of AnimatorState<_AnyAnimatableData>.Fork(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(void))
{
  type metadata accessor for AnimatorState<_AnyAnimatableData>.Fork(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for AnimatorState<_AnyAnimatableData>.Fork(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for AnimatorState.Fork();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of AnimatorState<_AnyAnimatableData>.Fork(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  type metadata accessor for AnimatorState<_AnyAnimatableData>.Fork(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 _TransformEffect.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 _TransformEffect.transform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

void __swiftcall _TransformEffect.init(transform:)(SwiftUI::_TransformEffect *__return_ptr retstr, CGAffineTransform *transform)
{
  v2 = *&transform->c;
  *&retstr->transform.a = *&transform->a;
  *&retstr->transform.c = v2;
  *&retstr->transform.tx = *&transform->tx;
}

__n128 _TransformEffect.effectValue(size:)@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  *(a1 + 40) = 0;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance _TransformEffect@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  *(a1 + 40) = 0;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

uint64_t View.transformEffect(_:)(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return View.modifier<A>(_:)(v4, a2, &type metadata for _TransformEffect);
}

uint64_t VisualEffect.transformEffect(_:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v4 = *(a1 + 24);
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = a1[3];
  return a4(v6);
}

uint64_t VisualEffect.transformEffect(_:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect();
  return VisualEffect.geometryEffect<A>(_:)(v9, a2, &type metadata for _TransformEffect, a3, a4);
}

unint64_t instantiation function for generic protocol witness table for _TransformEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for GeometryVisualEffect<_TransformEffect>()
{
  if (!lazy cache variable for type metadata for GeometryVisualEffect<_TransformEffect>)
  {
    lazy protocol witness table accessor for type _TransformEffect and conformance _TransformEffect();
    v0 = type metadata accessor for GeometryVisualEffect();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryVisualEffect<_TransformEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GeometryVisualEffect<_TransformEffect> and conformance GeometryVisualEffect<A>()
{
  result = lazy protocol witness table cache variable for type GeometryVisualEffect<_TransformEffect> and conformance GeometryVisualEffect<A>;
  if (!lazy protocol witness table cache variable for type GeometryVisualEffect<_TransformEffect> and conformance GeometryVisualEffect<A>)
  {
    type metadata accessor for GeometryVisualEffect<_TransformEffect>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryVisualEffect<_TransformEffect> and conformance GeometryVisualEffect<A>);
  }

  return result;
}

uint64_t static AnyEquatable.== infix(_:_:)(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return 1;
  }

  else
  {
    return (*(**a1 + 88))() & 1;
  }
}

__n128 AnyEquatable.init(hash:)@<Q0>(__n128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1].n128_u32[0];
  type metadata accessor for HashEquatableBox();
  v5 = swift_allocObject();
  result = *a1;
  *(v5 + 16) = *a1;
  *(v5 + 32) = v4;
  *a2 = v5;
  return result;
}

void AnyEquatableBox.hash.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
}

__n128 HashEquatableBox.hash.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u32[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u32[0] = v2;
  a1[1].n128_u8[4] = 0;
  return result;
}

uint64_t Material.ResolvedMaterial.intelligenceLightSourceLayer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 12);
  v6 = v4 > 2 && v3 > 6;
  v7 = v6;
  if (v6)
  {
    v8 = 7;
    v9 = 3;
  }

  else
  {
    outlined copy of Material.ID(v3, v4);
    v8 = v3;
    v9 = v4;
  }

  outlined consume of Material.ID(v8, v9);
  outlined consume of Material.ID(7, 3u);
  *(a1 + 36) = 1065353216;
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v10 = 256;
  if (!v7)
  {
    v10 = 0;
  }

  v11 = static GraphicsBlendMode.normal;
  v12 = byte_1ED52F818;
  *(a1 + 40) = static GraphicsBlendMode.normal;
  *(a1 + 48) = v12;
  *a1 = v10 & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 3;

  return outlined copy of GraphicsBlendMode(v11, v12);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IntelligenceLightSourceLayer()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance IntelligenceLightSourceLayer()
{
  v1 = v0[1];
  MEMORY[0x193AC11A0](*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntelligenceLightSourceLayer()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for IntelligenceLightSourceLayer(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

unint64_t lazy protocol witness table accessor for type IntelligenceLightSourceLayer and conformance IntelligenceLightSourceLayer()
{
  result = lazy protocol witness table cache variable for type IntelligenceLightSourceLayer and conformance IntelligenceLightSourceLayer;
  if (!lazy protocol witness table cache variable for type IntelligenceLightSourceLayer and conformance IntelligenceLightSourceLayer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntelligenceLightSourceLayer and conformance IntelligenceLightSourceLayer);
  }

  return result;
}

int64_t ProtobufEncoder.cgFloatField(_:_:defaultValue:)(int64_t result, uint64_t a2, char a3, double a4)
{
  v5 = a4;
  if ((a3 & 1) != 0 || *&a2 != a4)
  {
    v6 = fabs(a4);
    v7 = 5;
    if (v6 >= 65536.0)
    {
      v7 = 1;
    }

    ProtobufEncoder.encodeVarint(_:)(v7 | (8 * result));
    if (v6 < 65536.0)
    {
      v8 = v4[1];
      result = v8 + 4;
      if (!__OFADD__(v8, 4))
      {
        *&v5 = v5;
        if (v4[2] >= result)
        {
          v4[1] = result;
          *(*v4 + v8) = LODWORD(v5);
          return result;
        }

        goto LABEL_16;
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = LODWORD(v5);
      return result;
    }

    v9 = v4[1];
    result = v9 + 8;
    if (__OFADD__(v9, 8))
    {
      goto LABEL_15;
    }

    if (v4[2] < result)
    {
      result = ProtobufEncoder.growBufferSlow(to:)(result);
    }

    else
    {
      v4[1] = result;
      result = *v4 + v9;
    }

    *result = v5;
  }

  return result;
}

void ProtobufEncoder.enumField<A, B>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a8;
  v24 = a7;
  v26 = a2;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = *(a5 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (*(a6 + 16))(a4, a6, v18);
  (*(v13 + 16))(v15, a3, v12);
  if ((*(v16 + 48))(v15, 1, a5) == 1)
  {
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    (*(v16 + 32))(v20, v15, a5);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v16 + 8))(v20, a5);
    if (v22)
    {
      return;
    }
  }

  v23 = (*(v25 + 8))(a5);
  ProtobufEncoder.encodeVarint(_:)(8 * v21);
  ProtobufEncoder.encodeVarint(_:)(v23);
}

int64_t ProtobufEncoder.messageField<A, B>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (*(a6 + 16))(a4, a6);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * v11) | 2);
    return ProtobufEncoder.encodeMessage<A>(_:)(a2, a5, a8);
  }

  return result;
}

int64_t ProtobufEncoder.messageField<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(a5 + 16))(a3, a5);
  ProtobufEncoder.encodeVarint(_:)((8 * v9) | 2);
  return ProtobufEncoder.encodeMessage<A>(_:)(a2, a4, a6);
}

int64_t ProtobufEncoder.cgFloatField<A>(_:_:defaultValue:)(double a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  result = (*(a6 + 16))(a5, a6);
  if ((a4 & 1) != 0 || *&a3 != a1)
  {
    v11 = fabs(a1);
    v12 = 5;
    if (v11 >= 65536.0)
    {
      v12 = 1;
    }

    ProtobufEncoder.encodeVarint(_:)(v12 | (8 * result));
    if (v11 < 65536.0)
    {
      v13 = v6[1];
      result = v13 + 4;
      if (!__OFADD__(v13, 4))
      {
        *&a1 = a1;
        if (v6[2] >= result)
        {
          v6[1] = result;
          *(*v6 + v13) = LODWORD(a1);
          return result;
        }

        goto LABEL_15;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = LODWORD(a1);
      return result;
    }

    v14 = v6[1];
    result = v14 + 8;
    if (__OFADD__(v14, 8))
    {
      goto LABEL_14;
    }

    if (v6[2] < result)
    {
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = a1;
    }

    else
    {
      v6[1] = result;
      *(*v6 + v14) = a1;
    }
  }

  return result;
}

void ProtobufEncoder.enumField<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a5 + 16))(a3, a5);
  v9 = (*(a6 + 8))(a4, a6);
  ProtobufEncoder.encodeVarint(_:)(8 * v8);

  ProtobufEncoder.encodeVarint(_:)(v9);
}

uint64_t ProtobufEncoder.stringField<A>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for String.Encoding();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a7 + 16))(a6, a7, v13);
  v17 = result;
  if (a2 || a3 != 0xE000000000000000)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      ProtobufEncoder.encodeVarint(_:)((8 * v17) | 2);
      static String.Encoding.utf8.getter();
      v18 = String.data(using:allowLossyConversion:)();
      v20 = v19;
      (*(v12 + 8))(v15, v11);
      if (v20 >> 60 == 15)
      {
        lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
        swift_allocError();
        return swift_willThrow();
      }

      else
      {
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v18, v20);
        return outlined consume of Data?(v18, v20);
      }
    }
  }

  return result;
}

int64_t ProtobufEncoder.messageField<A>(_:_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v9 = (*(a5 + 16))(a4, a5);
  ProtobufEncoder.encodeVarint(_:)((8 * v9) | 2);
  v10 = *(v5 + 8);
  v11 = *(v5 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
    v11 = result;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  *(v11 + 16) = v14 + 1;
  *(v11 + 8 * v14 + 32) = v10;
  *(v7 + 24) = v11;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    *(v7 + 8) = v10 + 1;
    result = a2(v7);
    if (!v6)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

void ProtobufEncoder.BOOLField<A>(_:_:defaultValue:)(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = (*(a5 + 16))(a4, a5);
  if (v7 == 2 || ((a3 ^ a2) & 1) != 0)
  {
    ProtobufEncoder.encodeVarint(_:)(8 * v8);

    ProtobufEncoder.encodeVarint(_:)(a2 & 1);
  }
}

int64_t ProtobufEncoder.doubleField<A>(_:_:defaultValue:)(double a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  result = (*(a6 + 16))(a5, a6);
  if ((a4 & 1) != 0 || *&a3 != a1)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * result) | 1);
    v11 = v6[1];
    result = v11 + 8;
    if (__OFADD__(v11, 8))
    {
      __break(1u);
    }

    else if (v6[2] >= result)
    {
      v6[1] = result;
      *(*v6 + v11) = a1;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = a1;
  }

  return result;
}

int64_t ProtobufEncoder.floatField<A>(_:_:defaultValue:)(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 16))(a4, a5);
  if ((a3 & 0x100000000) != 0 || *&a3 != a1)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * result) | 5);
    v9 = v5[1];
    result = v9 + 4;
    if (__OFADD__(v9, 4))
    {
      __break(1u);
    }

    else if (v5[2] >= result)
    {
      v5[1] = result;
      *(*v5 + v9) = a1;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = a1;
  }

  return result;
}

void ProtobufEncoder.dataField(_:_:)(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 && a3 != a2)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);

    ProtobufEncoder.encodeData(_:)(a2, a3);
  }
}

void ProtobufEncoder.dataField(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v5)
    {
      if (a2 == a2 >> 32)
      {
        return;
      }
    }

    else if ((a3 & 0xFF000000000000) == 0)
    {
      return;
    }

LABEL_9:
    ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(a2, a3);
    return;
  }

  if (v5 == 2 && *(a2 + 16) != *(a2 + 24))
  {
    goto LABEL_9;
  }
}

Swift::Void __swiftcall ProtobufEncoder.doubleField(_:_:defaultValue:)(Swift::UInt _, Swift::Double a2, Swift::Double_optional defaultValue)
{
  if ((v3 & 1) != 0 || *&defaultValue.is_nil != a2)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * _) | 1);
    v6 = v4[1];
    v7 = v6 + 8;
    if (__OFADD__(v6, 8))
    {
      __break(1u);
    }

    else if (v4[2] >= v7)
    {
      v4[1] = v7;
      v8 = (*v4 + v6);
LABEL_6:
      *v8 = a2;
      return;
    }

    v8 = ProtobufEncoder.growBufferSlow(to:)(v7);
    goto LABEL_6;
  }
}

Swift::Void __swiftcall ProtobufEncoder.encodeFloat(_:)(Swift::Float a1)
{
  v2 = v1[1];
  v3 = v2 + 4;
  if (__OFADD__(v2, 4))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1[2] < v3)
  {
LABEL_6:
    v5 = a1;
    v4 = ProtobufEncoder.growBufferSlow(to:)(v3);
    a1 = v5;
    goto LABEL_4;
  }

  v1[1] = v3;
  v4 = (*v1 + v2);
LABEL_4:
  *v4 = a1;
}

int64_t ProtobufEncoder.packedField<A>(_:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = (*(a5 + 16))(a4, a5);
  ProtobufEncoder.encodeVarint(_:)((8 * v8) | 2);
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + 8 * v13 + 32) = v9;
  *(v6 + 24) = v10;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    *(v6 + 8) = v9 + 1;
    a2(v6);

    return ProtobufEncoder.endLengthDelimited()();
  }

  return result;
}

void ProtobufEncoder.enumField<A>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a5;
  v21 = a1;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a3, v9, v15);
  if ((*(v13 + 48))(v12, 1, a4) == 1)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v13 + 32))(v17, v12, a4);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v13 + 8))(v17, a4);
    if (v18)
    {
      return;
    }
  }

  v19 = (*(a6 + 8))(a4, a6);
  ProtobufEncoder.encodeVarint(_:)(8 * v21);
  ProtobufEncoder.encodeVarint(_:)(v19);
}

void ProtobufEncoder.uintField(_:_:defaultValue:)(uint64_t a1, Swift::UInt a2, uint64_t a3, char a4)
{
  if ((a4 & 1) != 0 || a2 != a3)
  {
    ProtobufEncoder.encodeVarint(_:)(8 * a1);

    ProtobufEncoder.encodeVarint(_:)(a2);
  }
}

Swift::Int ProtobufEncoder.EncodingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](0);
  return Hasher._finalize()();
}

uint64_t ProtobufEncoder.userInfo.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

Swift::Void __swiftcall ProtobufEncoder.BOOLField(_:_:defaultValue:)(Swift::UInt _, Swift::Bool a2, Swift::Bool_optional defaultValue)
{
  if (defaultValue.value == 2 || ((defaultValue.value ^ a2) & 1) != 0)
  {
    ProtobufEncoder.encodeVarint(_:)(8 * _);

    ProtobufEncoder.encodeVarint(_:)(a2);
  }
}

Swift::Void __swiftcall ProtobufEncoder.encodeVarint(_:)(Swift::UInt a1)
{
  if (a1 > 0x7F)
  {
    v3 = (147 * (70 - __clz(a1))) >> 10;
    v2 = v1[1];
    v4 = __OFADD__(v2, v3);
    v5 = v2 + v3;
    if (!v4)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1[1];
  if (v2 < v1[2])
  {
    *(*v1 + v2) = a1;
    v1[1] = v2 + 1;
    return;
  }

  v5 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v1[2] < v5)
  {
LABEL_14:
    v10 = a1;
    v6 = ProtobufEncoder.growBufferSlow(to:)(v5);
    a1 = v10;
    goto LABEL_7;
  }

  v1[1] = v5;
  v6 = (*v1 + v2);
LABEL_7:
  LOBYTE(v7) = a1 & 0x7F;
  if (a1 >= 0x80)
  {
    do
    {
      v8 = v7 | 0x80;
      v7 = (a1 >> 7) & 0x7F;
      *v6++ = v8;
      v9 = a1 >= 0x4000;
      a1 >>= 7;
    }

    while (v9);
  }

  *v6 = v7;
}

void ProtobufEncoder.enumField<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8))(a3, a4);
  ProtobufEncoder.encodeVarint(_:)(8 * a1);

  ProtobufEncoder.encodeVarint(_:)(v5);
}

void ProtobufEncoder.intField(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) != 0 || a2 != a3)
  {
    ProtobufEncoder.encodeVarint(_:)(8 * a1);

    ProtobufEncoder.encodeVarint(_:)((2 * a2) ^ (a2 >> 63));
  }
}

Swift::Void __swiftcall ProtobufEncoder.fixed32Field(_:_:defaultValue:)(Swift::UInt _, Swift::UInt32 a2, Swift::UInt32_optional defaultValue)
{
  if ((*&defaultValue.value & 0x100000000) != 0 || defaultValue.value != a2)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * _) | 5);
    v5 = v3[1];
    v6 = v5 + 4;
    if (__OFADD__(v5, 4))
    {
      __break(1u);
    }

    else if (v3[2] >= v6)
    {
      v3[1] = v6;
      v7 = (*v3 + v5);
LABEL_6:
      *v7 = a2;
      return;
    }

    v7 = ProtobufEncoder.growBufferSlow(to:)(v6);
    goto LABEL_6;
  }
}

Swift::Void __swiftcall ProtobufEncoder.encodeFixed32(_:)(Swift::UInt32 a1)
{
  v2 = v1[1];
  v3 = v2 + 4;
  if (__OFADD__(v2, 4))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1[2] < v3)
  {
LABEL_6:
    v5 = a1;
    v4 = ProtobufEncoder.growBufferSlow(to:)(v2 + 4);
    a1 = v5;
    goto LABEL_4;
  }

  v1[1] = v3;
  v4 = (*v1 + v2);
LABEL_4:
  *v4 = a1;
}

Swift::Void __swiftcall ProtobufEncoder.fixed64Field(_:_:defaultValue:)(Swift::UInt _, Swift::UInt64 a2, Swift::UInt64_optional defaultValue)
{
  if (defaultValue.is_nil || a2 != defaultValue.value)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * _) | 1);
    v5 = v3[1];
    v6 = v5 + 8;
    if (__OFADD__(v5, 8))
    {
      __break(1u);
    }

    else if (v3[2] >= v6)
    {
      v3[1] = v6;
      v7 = (*v3 + v5);
LABEL_6:
      *v7 = a2;
      return;
    }

    v7 = ProtobufEncoder.growBufferSlow(to:)(v6);
    goto LABEL_6;
  }
}

Swift::Void __swiftcall ProtobufEncoder.encodeFixed64(_:)(Swift::UInt64 a1)
{
  v2 = v1[1];
  v3 = v2 + 8;
  if (__OFADD__(v2, 8))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1[2] < v3)
  {
LABEL_6:
    v5 = a1;
    v4 = ProtobufEncoder.growBufferSlow(to:)(v2 + 8);
    a1 = v5;
    goto LABEL_4;
  }

  v1[1] = v3;
  v4 = (*v1 + v2);
LABEL_4:
  *v4 = a1;
}

Swift::Void __swiftcall ProtobufEncoder.floatField(_:_:defaultValue:)(Swift::UInt _, Swift::Float a2, Swift::Float_optional *defaultValue)
{
  if ((defaultValue & 0x100000000) != 0 || *&defaultValue != a2)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * _) | 5);
    v5 = v3[1];
    v6 = v5 + 4;
    if (__OFADD__(v5, 4))
    {
      __break(1u);
    }

    else if (v3[2] >= v6)
    {
      v3[1] = v6;
      v7 = (*v3 + v5);
LABEL_6:
      *v7 = a2;
      return;
    }

    v7 = ProtobufEncoder.growBufferSlow(to:)(v6);
    goto LABEL_6;
  }
}

void ProtobufEncoder.encodeData(_:)(_BYTE *a1, _BYTE *a2)
{
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  ProtobufEncoder.encodeVarint(_:)(v5);
  if (!a1 || a2 == a1)
  {
    return;
  }

  v7 = v2[1];
  v5 = v7 + v4;
  if (__OFADD__(v7, v4))
  {
    goto LABEL_15;
  }

  if (v2[2] < v5)
  {
LABEL_16:
    v8 = ProtobufEncoder.growBufferSlow(to:)(v5);
    goto LABEL_11;
  }

  v2[1] = v5;
  v8 = (*v2 + v7);
LABEL_11:

  memcpy(v8, a1, v4);
}

int64_t ProtobufEncoder.packedField(_:_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = v2;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + 8 * v9 + 32) = v5;
  *(v3 + 24) = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v5 + 1;
    a2(v3);

    return ProtobufEncoder.endLengthDelimited()();
  }

  return result;
}

int64_t ProtobufEncoder.endLengthDelimited()()
{
  v2 = v0[3];
  if (*(v2 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v4 = *(v2 + 16);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  v2 = result;
  v4 = *(result + 16);
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_4:
  v5 = v4 - 1;
  v6 = *(v2 + 8 * v5 + 32);
  *(v2 + 16) = v5;
  v0[3] = v2;
  v4 = v0[1];
  v2 = v4 - (v6 + 1);
  if (__OFSUB__(v4, v6 + 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v2 > 127)
  {
    v1 = (147 * (70 - __clz(v2))) >> 10;
    goto LABEL_9;
  }

  if (v4 < v0[2])
  {
    *(*v0 + v6) = v2;
    return result;
  }

LABEL_20:
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_25;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  for (i = ProtobufEncoder.growBufferSlow(to:)(result); ; i = *v0 + v4)
  {
    v4 = -(v2 + 1);
    if (!__OFSUB__(0, v2 + 1))
    {
      break;
    }

    __break(1u);
LABEL_25:
    v1 = 1;
LABEL_9:
    result = v4 + v1 - 1;
    if (__OFADD__(v4, v1 - 1))
    {
      goto LABEL_22;
    }

    if (v0[2] < result)
    {
      goto LABEL_23;
    }

    v0[1] = result;
  }

  v8 = (i - (v2 + 1));
  result = memmove(&v8[v1], (i - v2), v2);
  LOBYTE(v9) = v2 & 0x7F;
  if (v2 >= 128)
  {
    do
    {
      v10 = v9 | 0x80;
      v9 = (v2 >> 7) & 0x7F;
      *v8++ = v10;
      v11 = v2 >= 0x4000;
      v2 = v2 >> 7;
    }

    while (v11);
  }

  *v8 = v9;
  return result;
}

int64_t ProtobufEncoder.messageField(_:_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v6 = *(v2 + 8);
  v7 = *(v2 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v10 + 1;
  *(v7 + 8 * v10 + 32) = v6;
  *(v4 + 24) = v7;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    *(v4 + 8) = v6 + 1;
    result = a2(v4);
    if (!v3)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

int64_t ProtobufEncoder.messageField<A>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
    return ProtobufEncoder.encodeMessage<A>(_:)(a2, a4, a6);
  }

  return result;
}

int64_t ProtobufEncoder.encodeMessage<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  *(v8 + 8 * v11 + 32) = v7;
  *(v3 + 24) = v8;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v7 + 1;
    result = (*(a3 + 8))(v3, a2, a3);
    if (!v4)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufEncoder.stringField(_:_:defaultValue:)(Swift::UInt _, Swift::String a2, Swift::String_optional defaultValue)
{
  object = defaultValue.value._object;
  countAndFlagsBits = defaultValue.value._countAndFlagsBits;
  v5 = a2._object;
  v6 = a2._countAndFlagsBits;
  v8 = type metadata accessor for String.Encoding();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!object || (v6 != countAndFlagsBits || v5 != object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * _) | 2);
    static String.Encoding.utf8.getter();
    v12 = String.data(using:allowLossyConversion:)();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    if (v14 >> 60 == 15)
    {
      lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v12, v14);
      outlined consume of Data?(v12, v14);
    }
  }
}

uint64_t ProtobufEncoder.codableField<A>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    return ProtobufEncoder.codableField<A>(_:_:)(a1, a2, a4);
  }

  return result;
}

uint64_t ProtobufEncoder.codableField<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);

  v6 = ProtobufEncoder.binaryPlistData<A>(for:)(a2, a3);
  if (v3)
  {
  }

  else
  {
    v9 = v6;
    v10 = v7;

    specialized Data._Representation.withUnsafeBytes<A>(_:)(v9, v10);
    return outlined consume of Data._Representation(v9, v10);
  }
}

uint64_t ProtobufEncoder.codableWithConfigurationField<A>(_:_:configuration:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    return ProtobufEncoder.codableWithConfigurationField<A>(_:_:configuration:)(a1, a2, a3, a5);
  }

  return result;
}

uint64_t ProtobufEncoder.codableWithConfigurationField<A>(_:_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);

  v8 = ProtobufEncoder.binaryPlistData<A>(for:configuration:)(a2, a3, a4);
  if (v4)
  {
  }

  else
  {
    v11 = v8;
    v12 = v9;

    specialized Data._Representation.withUnsafeBytes<A>(_:)(v11, v12);
    return outlined consume of Data._Representation(v11, v12);
  }
}

Swift::Void __swiftcall ProtobufEncoder.emptyField(_:)(Swift::UInt a1)
{
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  *&v3[8 * v5 + 32] = v2;
  *(v1 + 24) = v3;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = v2 + 1;

    ProtobufEncoder.endLengthDelimited()();
  }
}

void ProtobufEncoder.uintField<A>(_:_:defaultValue:)(uint64_t a1, Swift::UInt a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(a6 + 16))(a5, a6);
  if ((a4 & 1) != 0 || a2 != a3)
  {
    ProtobufEncoder.encodeVarint(_:)(8 * v9);

    ProtobufEncoder.encodeVarint(_:)(a2);
  }
}

void ProtobufEncoder.intField<A>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(a6 + 16))(a5, a6);
  if ((a4 & 1) != 0 || a2 != a3)
  {
    ProtobufEncoder.encodeVarint(_:)(8 * v9);

    ProtobufEncoder.encodeVarint(_:)((2 * a2) ^ (a2 >> 63));
  }
}

int64_t ProtobufEncoder.fixed32Field<A>(_:_:defaultValue:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 16))(a4, a5);
  if ((a3 & 0x100000000) != 0 || a3 != a2)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * result) | 5);
    v9 = v5[1];
    result = v9 + 4;
    if (__OFADD__(v9, 4))
    {
      __break(1u);
    }

    else if (v5[2] >= result)
    {
      v5[1] = result;
      *(*v5 + v9) = a2;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = a2;
  }

  return result;
}

int64_t ProtobufEncoder.fixed64Field<A>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  result = (*(a6 + 16))(a5, a6);
  if ((a4 & 1) != 0 || a2 != a3)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * result) | 1);
    v11 = v6[1];
    result = v11 + 8;
    if (__OFADD__(v11, 8))
    {
      __break(1u);
    }

    else if (v6[2] >= result)
    {
      v6[1] = result;
      *(*v6 + v11) = a2;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = a2;
  }

  return result;
}

void ProtobufEncoder.dataField<A>(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a5 + 16))(a4, a5);
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return;
    }

    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
LABEL_8:
    if (v9 == v10)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v8)
  {
    v9 = a2;
    v10 = a2 >> 32;
    goto LABEL_8;
  }

  if ((a3 & 0xFF000000000000) != 0)
  {
LABEL_9:
    ProtobufEncoder.encodeVarint(_:)((8 * v7) | 2);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(a2, a3);
  }
}

void ProtobufEncoder.dataField<A>(_:_:)(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a5 + 16))(a4, a5);
  if (a2 && a3 != a2)
  {
    ProtobufEncoder.encodeVarint(_:)((8 * v7) | 2);

    ProtobufEncoder.encodeData(_:)(a2, a3);
  }
}

uint64_t ProtobufEncoder.codableField<A, B>(_:_:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 16))(a4, a6);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    return ProtobufEncoder.codableField<A>(_:_:)(v8, a2, a5);
  }

  return result;
}

uint64_t ProtobufEncoder.codableWithConfigurationField<A, B>(_:_:configuration:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (*(a7 + 16))(a5, a7);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    return ProtobufEncoder.codableWithConfigurationField<A>(_:_:configuration:)(v10, a2, a3, a6);
  }

  return result;
}

Swift::Void __swiftcall ProtobufEncoder.encodeBool(_:)(Swift::Bool a1)
{
  v2 = v1[1];
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1[2] < v3)
  {
LABEL_6:
    v5 = a1;
    v4 = ProtobufEncoder.growBufferSlow(to:)(v2 + 1);
    a1 = v5;
    goto LABEL_4;
  }

  v1[1] = v3;
  v4 = (*v1 + v2);
LABEL_4:
  *v4 = a1;
}

uint64_t ProtobufEncoder.growBufferSlow(to:)(int64_t a1)
{
  v2 = a1;
  if (a1 <= 128)
  {
    a1 = 128;
  }

  v3 = malloc_good_size(a1);
  v4 = realloc(*v1, v3);
  if (v4)
  {
    v5 = *(v1 + 8);
    *v1 = v4;
    *(v1 + 8) = v2;
    *(v1 + 16) = v3;
    return v4 + v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized static ProtobufEncoder.encoding(_:)(void (*a1)(void **, double))
{
  v3 = type metadata accessor for Data.Deallocator();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC8];
  a1(&v13, v5);
  if (v1)
  {
    free(v13);
    v8 = v16;
  }

  else
  {
    if (v13)
    {
      v9 = v14;
      v10 = v13;
      (*(v4 + 104))(v7, *MEMORY[0x1E6969000], v3);
      v8 = specialized Data.init(bytesNoCopy:count:deallocator:)(v10, v9, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

uint64_t initializeWithCopy for ProtobufEncoder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void *assignWithCopy for ProtobufEncoder(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for ProtobufEncoder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    **(a3 + 24) = a1;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_7:
    _StringGuts._slowWithCString<A>(_:)();
  }

  **(a3 + 24) = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
}

SwiftUI::CustomEventCategory_optional __swiftcall CustomEventCategory.init(rawValue:)(SwiftUI::CustomEventCategory_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value > (SwiftUI_CustomEventCategory_action|0x40))
  {
    if (rawValue.value > (SwiftUI_CustomEventCategory_unknownDefault|SwiftUI_CustomEventCategory_instantiation|0x40))
    {
      if (rawValue.value == (SwiftUI_CustomEventCategory_unknownDefault|SwiftUI_CustomEventCategory_dynamicProperties|0x40))
      {
        *v1 = SwiftUI_CustomEventCategory_observable;
        return rawValue;
      }

      if (rawValue.value == 84)
      {
        *v1 = SwiftUI_CustomEventCategory_transaction;
        return rawValue;
      }
    }

    else
    {
      if (rawValue.value == 68)
      {
        *v1 = SwiftUI_CustomEventCategory_dynamicProperties;
        return rawValue;
      }

      if (rawValue.value == (SwiftUI_CustomEventCategory_dynamicProperties|0x40))
      {
        *v1 = SwiftUI_CustomEventCategory_graph;
        return rawValue;
      }
    }

    goto LABEL_19;
  }

  if (rawValue.value > 0x41u)
  {
    if (rawValue.value == 66)
    {
      *v1 = SwiftUI_CustomEventCategory_animation;
      return rawValue;
    }

    if (rawValue.value == (SwiftUI_CustomEventCategory_action|0x40))
    {
      *v1 = SwiftUI_CustomEventCategory_instantiation;
      return rawValue;
    }

    goto LABEL_19;
  }

  if (rawValue.value)
  {
    if (rawValue.value == 65)
    {
      *v1 = SwiftUI_CustomEventCategory_action;
      return rawValue;
    }

LABEL_19:
    value = SwiftUI_CustomEventCategory_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomEventCategory()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x4443424741544F00uLL >> (8 * *v0));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomEventCategory()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x4443424741544F00uLL >> (8 * *v0));
  return Hasher._finalize()();
}

uint64_t static CustomEventTrace.register(graph:)(void *a1)
{
  type metadata accessor for CustomEventTrace.Recorder();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = swift_slowAlloc();
  *(v2 + 24) = v4;
  bzero(v4, 7uLL);
  *v4 = 1598440771;

  static CustomEventTrace.recorder = v2;
}

uint64_t static CustomEventTrace.setEnabledCategory(_:enabled:)(char *a1, char a2)
{
  v3 = *a1;
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  v4 = static CustomEventTrace.enabledCategories;
  result = swift_isUniquelyReferenced_nonNull_native();
  static CustomEventTrace.enabledCategories = v4;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  v6 = qword_18DDD2898[v3];
  if (v6 >= *(v4 + 2))
  {
    __break(1u);
  }

  else
  {
    *(v4 + v6 + 32) = a2 & 1;
    static CustomEventTrace.enabledCategories = v4;
  }

  return result;
}

char *static CustomEventTrace.trace<A>(_:_:value:)(char *result, char a2)
{
  v2 = *result;
  if (one-time initialization token for enabledCategories != -1)
  {
    v14 = a2;
    result = swift_once();
    a2 = v14;
  }

  v3 = 0x4443424741544F00uLL >> (8 * v2);
  if (*(static CustomEventTrace.enabledCategories + 2) <= v3)
  {
    __break(1u);
  }

  else if (*(static CustomEventTrace.enabledCategories + v3 + 32) == 1)
  {
    v4 = static CustomEventTrace.recorder;
    if (static CustomEventTrace.recorder)
    {
      v5 = *(static CustomEventTrace.recorder + 24);
      *(v5 + 4) = v3;
      *(v5 + 5) = a2;
      v6 = *(v4 + 16);
      MEMORY[0x1EEE9AC00](result);
      v15[2] = v7;
      v15[3] = v6;
      v15[4] = v8;
      v9 = v7;
      v11 = v10;

      v12 = v6;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, partial apply for closure #1 in AGGraphRef.addTraceEvent<A>(_:value:), v15, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v13);
    }
  }

  return result;
}

uint64_t CustomEventTrace.Recorder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static CustomEventTrace.getNextTraceID(id:)(atomic_uint *a1)
{
  v1 = *a1 >> 1;
  atomic_fetch_add_explicit(a1, 2u, memory_order_relaxed);
  return v1 + 1;
}

uint64_t static CustomEventTrace.observableFireWithTransaction(transaction:key:attribute:)()
{
  v0 = one-time initialization token for enabledCategories;

  if (v0 != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x50uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 111) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17999;
    type metadata accessor for (UInt32, AnyKeyPath?, AGAttribute)();
    AGGraphAddTraceEvent();
  }

  else
  {
  }
}

SwiftUI::CustomEventTrace::TransactionEventType_optional __swiftcall CustomEventTrace.TransactionEventType.init(rawValue:)(SwiftUI::CustomEventTrace::TransactionEventType_optional rawValue)
{
  if (rawValue.value > 0x44u)
  {
    if (rawValue.value == (SwiftUI_CustomEventTrace_TransactionEventType_continueAsContinuation|0x40))
    {
      *v1 = 1;
      return rawValue;
    }

    if (rawValue.value != 78)
    {
      if (rawValue.value == 81)
      {
        *v1 = 3;
        return rawValue;
      }

      goto LABEL_12;
    }

    *v1 = 4;
  }

  else
  {
    if (rawValue.value == 65)
    {
      *v1 = 2;
      return rawValue;
    }

    if (rawValue.value != 66)
    {
      if (rawValue.value == (SwiftUI_CustomEventTrace_TransactionEventType_enqueue|0x40))
      {
        *v1 = 5;
        return rawValue;
      }

LABEL_12:
      *v1 = 6;
      return rawValue;
    }

    *v1 = 0;
  }

  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomEventTrace.TransactionEventType()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x434E51414542uLL >> (8 * *v0));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomEventTrace.TransactionEventType()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x434E51414542uLL >> (8 * *v0));
  return Hasher._finalize()();
}

uint64_t static CustomEventTrace.transactionBegin(_:)(uint64_t a1)
{

  return static CustomEventTrace.transactionBegin(_:)(a1, 66);
}

uint64_t static CustomEventTrace.transactionEnd(_:)(uint64_t a1)
{

  return static CustomEventTrace.transactionBegin(_:)(a1, 69);
}

uint64_t static CustomEventTrace.transactionAppend(to:)(uint64_t a1)
{

  return static CustomEventTrace.transactionBegin(_:)(a1, 65);
}

uint64_t static CustomEventTrace.transactionEnqueue(_:)(uint64_t a1)
{

  return static CustomEventTrace.transactionBegin(_:)(a1, 81);
}

uint64_t static CustomEventTrace.transactionContinueAsNewTransaction(_:)(uint64_t a1)
{

  return static CustomEventTrace.transactionBegin(_:)(a1, 78);
}

uint64_t static CustomEventTrace.transactionBegin(_:)(uint64_t result, char a2)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v3 = result;
    v4 = a2;
    swift_once();
    a2 = v4;
    result = v3;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 116) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      v2 = *(static CustomEventTrace.recorder + 24);
      *(v2 + 4) = 84;
      *(v2 + 5) = a2;
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t static CustomEventTrace.transactionContinueAsContinuation(_:)(uint64_t result)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 116) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 17236;
      type metadata accessor for GraphHost();
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

SwiftUI::CustomEventTrace::ActionEventType::Reason_optional __swiftcall CustomEventTrace.ActionEventType.Reason.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue - 65 > 0x1D)
  {
    *v1 = 17;
  }

  else
  {
    *v1 = byte_18DDD28D8[rawValue - 65];
  }

  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomEventTrace.ActionEventType.Reason()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_18DDD28F8[*v0]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomEventTrace.ActionEventType.Reason()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_18DDD28F8[*v0]);
  return Hasher._finalize()();
}

SwiftUI::CustomEventTrace::ActionEventType_optional __swiftcall CustomEventTrace.ActionEventType.init(rawValue:)(SwiftUI::CustomEventTrace::ActionEventType_optional rawValue)
{
  if (rawValue.value > (SwiftUI_CustomEventTrace_ActionEventType_unknownDefault|SwiftUI_CustomEventTrace_ActionEventType_finish|0x40))
  {
    if (rawValue.value != (SwiftUI_CustomEventTrace_ActionEventType_unknownDefault|SwiftUI_CustomEventTrace_ActionEventType_gestureMetadata|0x40))
    {
      if (rawValue.value == 83)
      {
        *v1 = 1;
        return rawValue;
      }

      goto LABEL_8;
    }

    *v1 = 3;
  }

  else
  {
    if (rawValue.value != (SwiftUI_CustomEventTrace_ActionEventType_unknownDefault|SwiftUI_CustomEventTrace_ActionEventType_start|0x40))
    {
      if (rawValue.value == (SwiftUI_CustomEventTrace_ActionEventType_unknownDefault|SwiftUI_CustomEventTrace_ActionEventType_finish|0x40))
      {
        *v1 = 2;
        return rawValue;
      }

LABEL_8:
      *v1 = 4;
      return rawValue;
    }

    *v1 = 0;
  }

  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomEventTrace.ActionEventType()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x47465345u >> (8 * *v0));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomEventTrace.ActionEventType()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x47465345u >> (8 * *v0));
  return Hasher._finalize()();
}

uint64_t static CustomEventTrace.enqueueAction(_:_:)(uint64_t result)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 97) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 17729;
      type metadata accessor for (UInt32, UInt32?)();
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t static CustomEventTrace.startAction(_:_:)(uint64_t result)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 97) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 21313;
      type metadata accessor for (UInt32, UInt32?)();
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t static CustomEventTrace.finishAction(_:_:)(uint64_t result)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 97) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 17985;
      type metadata accessor for (UInt32, UInt32?)();
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t static CustomEventTrace.additionalInfo(_:info:)(uint64_t result)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 97) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 18241;
      type metadata accessor for (UInt32, AGAttribute?)();
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

void static CustomEventTrace.setNeedsUpdate(values:graph:)(uint64_t a1, void *a2)
{
  v2 = one-time initialization token for enabledCategories;
  v3 = a2;
  if (v2 != -1)
  {
    v5 = v3;
    swift_once();
    v3 = v5;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x48uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 103) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 20039;
    v4 = v3;
    type metadata accessor for (ViewGraphRootValues, AGAttribute)(0, &lazy cache variable for type metadata for (ViewGraphRootValues, AGGraphRef), type metadata accessor for AGGraphRef);
    AGGraphAddTraceEvent();
  }

  else
  {
  }
}

SwiftUI::CustomEventTrace::AnimationEventType_optional __swiftcall CustomEventTrace.AnimationEventType.init(rawValue:)(SwiftUI::CustomEventTrace::AnimationEventType_optional rawValue)
{
  if (rawValue.value <= SwiftUI_CustomEventTrace_AnimationEventType_unknownDefault)
  {
    v2 = 0x5040302010006uLL >> (8 * rawValue.value);
  }

  else
  {
    v2 = 6;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomEventTrace.AnimationEventType()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomEventTrace.AnimationEventType()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0 + 1);
  return Hasher._finalize()();
}

uint64_t static CustomEventTrace.animationBegin(attribute:propertyType:function:)(uint64_t a1, uint64_t a2, __int128 *a3)
{

  return static CustomEventTrace.animationBegin(attribute:propertyType:function:)(a1, a2, a3, 1);
}

uint64_t static CustomEventTrace.animationEnd(_:)(uint64_t a1)
{

  return static CustomEventTrace.animationEnd(_:)(a1, 2);
}

uint64_t static CustomEventTrace.animationAttrUpdate(_:)(uint64_t a1)
{

  return static CustomEventTrace.animationEnd(_:)(a1, 3);
}

uint64_t static CustomEventTrace.animationEnd(_:)(uint64_t result, char a2)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v3 = result;
    v4 = a2;
    swift_once();
    a2 = v4;
    result = v3;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      v2 = *(static CustomEventTrace.recorder + 24);
      *(v2 + 4) = 66;
      *(v2 + 5) = a2;
      type metadata accessor for AnyKeyPath?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute);
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t static CustomEventTrace.animationScheduleTick(attribute:time:)(uint64_t result)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
      type metadata accessor for (AGAttribute?, Double)();
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t static CustomEventTrace.animationTick(onMain:time:)(uint64_t result)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1346;
      type metadata accessor for (Bool, Double)();
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t static CustomEventTrace.animationRetarget(attribute:propertyType:function:)(uint64_t a1, uint64_t a2, __int128 *a3)
{

  return static CustomEventTrace.animationBegin(attribute:propertyType:function:)(a1, a2, a3, 6);
}

uint64_t static CustomEventTrace.animationBegin(attribute:propertyType:function:)(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 4);
  v8 = *(a3 + 40);
  v18 = 0x7FF8000000000000;
  v19 = 0x7FF8000000000000;
  v16 = 0x7FF8000000000000;
  v17 = 0x3FF0000000000000;
  v9 = a3[1];
  v20 = *a3;
  v21 = v9;
  v22 = v7;
  LOBYTE(v23) = v8;
  result = static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v20, &v19, &v18, &v17, &v16);
  v12 = v18;
  v11 = v19;
  v14 = v16;
  v13 = v17;
  if (one-time initialization token for enabledCategories != -1)
  {
    result = swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      v15 = *(static CustomEventTrace.recorder + 24);
      *(v15 + 4) = 66;
      *(v15 + 5) = a4;
      LODWORD(v20) = a1;
      BYTE4(v20) = BYTE4(a1) & 1;
      *(&v20 + 1) = a2;
      *&v21 = v11;
      *(&v21 + 1) = v12;
      v22 = v13;
      v23 = v14;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

SwiftUI::CustomEventTrace::InstantiationEventType::Kind_optional __swiftcall CustomEventTrace.InstantiationEventType.Kind.init(rawValue:)(SwiftUI::CustomEventTrace::InstantiationEventType::Kind_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= SwiftUI_CustomEventTrace_InstantiationEventType_Kind_unknownDefault)
  {
    value = SwiftUI_CustomEventTrace_InstantiationEventType_Kind_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

SwiftUI::CustomEventTrace::InstantiationEventType_optional __swiftcall CustomEventTrace.InstantiationEventType.init(rawValue:)(SwiftUI::CustomEventTrace::InstantiationEventType_optional rawValue)
{
  v2 = (rawValue.value - 65);
  if (v2 >= 6)
  {
    LOBYTE(v2) = 6;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomEventTrace.InstantiationEventType()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0 + 65);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomEventTrace.InstantiationEventType()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0 + 65);
  return Hasher._finalize()();
}

void static CustomEventTrace.recordGraphHostRoot(_:_:newRoot:_:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  *&v14[33] = *MEMORY[0x1E69E9840];
  (*(*a4 + 240))(v14);
  v7 = v14[0];
  v8 = one-time initialization token for enabledCategories;
  v13 = a1;
  v9 = a2;
  v10 = a3;
  if (v8 != -1)
  {
    v12 = v10;
    swift_once();
    v10 = v12;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 16707;
    v14[1] = v7;
    *&v14[9] = a1;
    *&v14[17] = v9;
    *&v14[25] = v10;
    v11 = v10;
    type metadata accessor for (Int8, AGGraphRef?, AGSubgraphRef, AGSubgraphRef)();
    AGGraphAddTraceEvent();
  }

  else
  {
  }
}

uint64_t static CustomEventTrace.recordNamedProperty<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 17987;
    v2 = a2;
    type metadata accessor for (ViewGraphRootValues, AGAttribute)(0, &lazy cache variable for type metadata for (ViewGraphRootValues, AGAttribute), type metadata accessor for AGAttribute);
    AGGraphAddTraceEvent();
    return v2;
  }

  return a2;
}

uint64_t static CustomEventTrace.instantiate<A>(root:closure:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{

  return static CustomEventTrace.instantiate<A>(root:closure:)(a1, a2, a3, a4, 66, 67);
}

uint64_t static CustomEventTrace.uninstantiate<A>(root:closure:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{

  return static CustomEventTrace.instantiate<A>(root:closure:)(a1, a2, a3, a4, 68, 69);
}

uint64_t static CustomEventTrace.instantiate<A>(root:closure:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = a1;
  if (one-time initialization token for enabledCategories != -1)
  {
    v11 = a2;
    v12 = a5;
    a1 = swift_once();
    a5 = v12;
    a2 = v11;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 99) == 1 && static CustomEventTrace.recorder)
  {
    v8 = *(static CustomEventTrace.recorder + 24);
    *(v8 + 4) = 67;
    *(v8 + 5) = a5;
    v9 = a2;
    type metadata accessor for AGSubgraphRef(0);
    a1 = AGGraphAddTraceEvent();
    a2 = v9;
  }

  a2(a1, a2);
  return static CustomEventTrace.instantiateBegin(_:)(v7, a6);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomEventTrace.ObservableEventType(uint64_t a1, uint64_t a2, Swift::UInt8 a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomEventTrace.ObservableEventType(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt8 a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a4);
  return Hasher._finalize()();
}

void static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(uint64_t isStackAllocationSafe, void *a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *isStackAllocationSafe;
  v5 = *(isStackAllocationSafe + 8);
  v6 = *(isStackAllocationSafe + 12);
  if (one-time initialization token for enabledCategories != -1)
  {
    v3 = a2;
    v18 = a3;
    isStackAllocationSafe = swift_once();
    LODWORD(a2) = v3;
    a3 = v18;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
LABEL_25:
    v20 = a3;
    v21 = a2;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (!isStackAllocationSafe)
    {
      v19 = swift_slowAlloc();
      closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v19, v6, v4, v5 | (v6 << 32), v21 & 1, v20 & 1, 7);
      if (v3)
      {

        MEMORY[0x193AC4820](v19, -1, -1);
        __break(1u);
      }

      JUMPOUT(0x193AC4820);
    }

    goto LABEL_7;
  }

  if (*(static CustomEventTrace.enabledCategories + 100) != 1)
  {
    return;
  }

  if ((v6 & 0x80000000) != 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v3 = 0;
  if (v6 > 128)
  {
    goto LABEL_25;
  }

LABEL_7:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v10 = &v20 - v9;
  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_8:
  v14 = -v12;
  while ((v6 + v14) | v11)
  {
    if (!v4)
    {
      goto LABEL_33;
    }

    v16 = v4 + v11;
    if (v6 + v14 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 += *(v16 + 8);
    }

    v15 = *(v16 + 12);
    --v14;
    if (v15 < 0)
    {
      *&v10[8 * v13] = v15 & 0x7FFFFFFF;
      v12 = -v14;
      if (!__OFADD__(v13++, 1))
      {
        goto LABEL_8;
      }

      __break(1u);
      break;
    }
  }

  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*(static CustomEventTrace.enabledCategories + 100) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
      v22 = v10;
      v23 = v13;
      v24 = v7 & 1;
      v25 = v8 & 1;
      type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
      AGGraphAddTraceEvent();
    }
  }
}

uint64_t closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
LABEL_2:
  v11 = -v9;
  while ((HIDWORD(a4) + v11) | v8)
  {
    if (!a3)
    {
      goto LABEL_22;
    }

    v13 = a3 + v8;
    if (HIDWORD(a4) + v11 == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 += *(v13 + 8);
    }

    v12 = *(v13 + 12);
    --v11;
    if (v12 < 0)
    {
      *(result + 8 * v10) = v12 & 0x7FFFFFFF;
      v9 = -v11;
      if (!__OFADD__(v10++, 1))
      {
        goto LABEL_2;
      }

      __break(1u);
      break;
    }
  }

  if (v10 < 0)
  {
    __break(1u);
  }

  else if (one-time initialization token for enabledCategories == -1)
  {
    goto LABEL_14;
  }

  v17 = result;
  swift_once();
  result = v17;
LABEL_14:
  v15 = 0x4443424741544F00uLL >> (8 * a7);
  if (*(static CustomEventTrace.enabledCategories + 2) <= v15)
  {
    __break(1u);
LABEL_22:
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + v15 + 32) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      v16 = *(static CustomEventTrace.recorder + 24);
      *(v16 + 4) = v15;
      *(v16 + 5) = 65;
      type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

void type metadata accessor for (UInt32, AnyKeyPath?, AGAttribute)()
{
  if (!lazy cache variable for type metadata for (UInt32, AnyKeyPath?, AGAttribute))
  {
    type metadata accessor for AnyKeyPath?(255, &lazy cache variable for type metadata for AnyKeyPath?, MEMORY[0x1E69E6928]);
    type metadata accessor for AGAttribute(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (UInt32, AnyKeyPath?, AGAttribute));
    }
  }
}

void type metadata accessor for (UInt32, AGAttribute?)()
{
  if (!lazy cache variable for type metadata for (UInt32, AGAttribute?))
  {
    type metadata accessor for AnyKeyPath?(255, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UInt32, AGAttribute?));
    }
  }
}

void type metadata accessor for (ViewGraphRootValues, AGAttribute)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)()
{
  if (!lazy cache variable for type metadata for (AGAttribute?, Any.Type, Double, Double, Double, Double))
  {
    type metadata accessor for AnyKeyPath?(255, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute);
    type metadata accessor for Any.Type();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (AGAttribute?, Any.Type, Double, Double, Double, Double));
    }
  }
}

void type metadata accessor for (AGAttribute?, Double)()
{
  if (!lazy cache variable for type metadata for (AGAttribute?, Double))
  {
    type metadata accessor for AnyKeyPath?(255, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AGAttribute?, Double));
    }
  }
}

void type metadata accessor for (Bool, Double)()
{
  if (!lazy cache variable for type metadata for (Bool, Double))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Bool, Double));
    }
  }
}

void type metadata accessor for (Int8, AGGraphRef?, AGSubgraphRef, AGSubgraphRef)()
{
  if (!lazy cache variable for type metadata for (Int8, AGGraphRef?, AGSubgraphRef, AGSubgraphRef))
  {
    type metadata accessor for AnyKeyPath?(255, &lazy cache variable for type metadata for AGGraphRef?, type metadata accessor for AGGraphRef);
    type metadata accessor for AGSubgraphRef(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (Int8, AGGraphRef?, AGSubgraphRef, AGSubgraphRef));
    }
  }
}

void type metadata accessor for AnyKeyPath?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type CustomEventCategory and conformance CustomEventCategory()
{
  result = lazy protocol witness table cache variable for type CustomEventCategory and conformance CustomEventCategory;
  if (!lazy protocol witness table cache variable for type CustomEventCategory and conformance CustomEventCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomEventCategory and conformance CustomEventCategory);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomEventTrace.ObservableEventType and conformance CustomEventTrace.ObservableEventType()
{
  result = lazy protocol witness table cache variable for type CustomEventTrace.ObservableEventType and conformance CustomEventTrace.ObservableEventType;
  if (!lazy protocol witness table cache variable for type CustomEventTrace.ObservableEventType and conformance CustomEventTrace.ObservableEventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomEventTrace.ObservableEventType and conformance CustomEventTrace.ObservableEventType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomEventTrace.TransactionEventType and conformance CustomEventTrace.TransactionEventType()
{
  result = lazy protocol witness table cache variable for type CustomEventTrace.TransactionEventType and conformance CustomEventTrace.TransactionEventType;
  if (!lazy protocol witness table cache variable for type CustomEventTrace.TransactionEventType and conformance CustomEventTrace.TransactionEventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomEventTrace.TransactionEventType and conformance CustomEventTrace.TransactionEventType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomEventTrace.ActionEventType.Reason and conformance CustomEventTrace.ActionEventType.Reason()
{
  result = lazy protocol witness table cache variable for type CustomEventTrace.ActionEventType.Reason and conformance CustomEventTrace.ActionEventType.Reason;
  if (!lazy protocol witness table cache variable for type CustomEventTrace.ActionEventType.Reason and conformance CustomEventTrace.ActionEventType.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomEventTrace.ActionEventType.Reason and conformance CustomEventTrace.ActionEventType.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomEventTrace.ActionEventType and conformance CustomEventTrace.ActionEventType()
{
  result = lazy protocol witness table cache variable for type CustomEventTrace.ActionEventType and conformance CustomEventTrace.ActionEventType;
  if (!lazy protocol witness table cache variable for type CustomEventTrace.ActionEventType and conformance CustomEventTrace.ActionEventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomEventTrace.ActionEventType and conformance CustomEventTrace.ActionEventType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomEventTrace.GraphEventType and conformance CustomEventTrace.GraphEventType()
{
  result = lazy protocol witness table cache variable for type CustomEventTrace.GraphEventType and conformance CustomEventTrace.GraphEventType;
  if (!lazy protocol witness table cache variable for type CustomEventTrace.GraphEventType and conformance CustomEventTrace.GraphEventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomEventTrace.GraphEventType and conformance CustomEventTrace.GraphEventType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomEventTrace.AnimationEventType and conformance CustomEventTrace.AnimationEventType()
{
  result = lazy protocol witness table cache variable for type CustomEventTrace.AnimationEventType and conformance CustomEventTrace.AnimationEventType;
  if (!lazy protocol witness table cache variable for type CustomEventTrace.AnimationEventType and conformance CustomEventTrace.AnimationEventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomEventTrace.AnimationEventType and conformance CustomEventTrace.AnimationEventType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomEventTrace.InstantiationEventType.Kind and conformance CustomEventTrace.InstantiationEventType.Kind()
{
  result = lazy protocol witness table cache variable for type CustomEventTrace.InstantiationEventType.Kind and conformance CustomEventTrace.InstantiationEventType.Kind;
  if (!lazy protocol witness table cache variable for type CustomEventTrace.InstantiationEventType.Kind and conformance CustomEventTrace.InstantiationEventType.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomEventTrace.InstantiationEventType.Kind and conformance CustomEventTrace.InstantiationEventType.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomEventTrace.InstantiationEventType and conformance CustomEventTrace.InstantiationEventType()
{
  result = lazy protocol witness table cache variable for type CustomEventTrace.InstantiationEventType and conformance CustomEventTrace.InstantiationEventType;
  if (!lazy protocol witness table cache variable for type CustomEventTrace.InstantiationEventType and conformance CustomEventTrace.InstantiationEventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomEventTrace.InstantiationEventType and conformance CustomEventTrace.InstantiationEventType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomEventTrace.DynamicPropertyEventType and conformance CustomEventTrace.DynamicPropertyEventType()
{
  result = lazy protocol witness table cache variable for type CustomEventTrace.DynamicPropertyEventType and conformance CustomEventTrace.DynamicPropertyEventType;
  if (!lazy protocol witness table cache variable for type CustomEventTrace.DynamicPropertyEventType and conformance CustomEventTrace.DynamicPropertyEventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomEventTrace.DynamicPropertyEventType and conformance CustomEventTrace.DynamicPropertyEventType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomEventTrace.ActionEventType.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CustomEventTrace.ActionEventType.Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CustomEventTrace.TransactionEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
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
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}