BOOL ContextMenuPreviewDestinationModifier.Transform.isDisabled.getter(uint64_t a1)
{
  outlined init with copy of NavigationAuthority?(v1 + *(a1 + 84), v5);
  v3 = v6;
  _s7SwiftUI4PathVSgWOhTm_0(v5, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  return v3 == 1 || *(v1 + *(a1 + 80) + 8) == 6;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContextMenuPreviewDestinationModifier<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

void ContextMenuPreviewResponder.preview.didset(uint64_t a1)
{
  v2 = v1;
  v4 = (*v2 + class metadata base offset for ContextMenuPreviewResponder);
  v5 = *v4;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v14 = *&v2[v4[3]];
  if (v14)
  {
    v15 = v4[2];
    swift_beginAccess();
    (*(v7 + 16))(v9, &v2[v15], v6);
    v16 = *(v10 + 48);
    if (v16(v9, 1, v5) == 1)
    {
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v10 + 32))(v13, v9, v5);
      if (v16(a1, 1, v5) != 1)
      {
        v17 = v14;
        specialized UIHostingController.rootView.setter(v13);
        MEMORY[0x1EEE9AC00](v18);
        *(&v19 - 2) = v17;
        static Update.ensure<A>(_:)();
      }

      (*(v10 + 8))(v13, v5);
    }
  }
}

void closure #1 in ContextMenuPreviewResponder.preview.didset(void *a1)
{
  [a1 preferredContentSize];
  v2 = v1;
  v4 = v3;
  v5 = specialized UIHostingController.host.getter();
  type metadata accessor for _UIHostingView();
  v6 = v5;
  swift_getWitnessTable();
  v7 = ViewRendererHost.idealSize()();

  UIHostingController.idealSizeDidChange(from:to:)(__PAIR128__(v4, v2), v7);
}

uint64_t ContextMenuPreviewResponder.previewHost.getter()
{
  v1 = v0;
  v2 = (*v0 + class metadata base offset for ContextMenuPreviewResponder);
  v3 = *v2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = *(v0 + v2[3]);
  v9 = v8;
  if (v8)
  {
LABEL_9:
    v24 = v8;
    return v9;
  }

  v26 = v2[3];
  v10 = v2[2];
  swift_beginAccess();
  (*(v5 + 16))(v7, v0 + v10, v4);
  v11 = *(v3 - 8);
  result = (*(v11 + 48))(v7, 1, v3);
  if (result != 1)
  {
    type metadata accessor for UIHostingController();
    v9 = specialized UIHostingController.__allocating_init(rootView:)(v7);
    (*(v11 + 8))(v7, v3);
    UIViewSnapshotResponder.contentPath.getter(v34);
    if (v35 != 255)
    {
      v36 = v34[0];
      v37 = v34[1];
      v38 = v35;
      Path.roundedRect()();
      if (v33 == 2 || (v13 = v32, v14 = v31, v15 = v30, v16 = v29, v17 = v28, v18 = v27, v19 = v33 & 1, v33 &= 1u, (FixedRoundedRect.isUniform.getter() & 1) == 0))
      {
        _s7SwiftUI4PathVSgWOhTm_0(v34, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
      }

      else
      {
        v20 = [specialized UIHostingController.host.getter() layer];
        v27 = v18;
        v28 = v17;
        v29 = v16;
        v30 = v15;
        v31 = v14;
        v32 = v13;
        v33 = v19;
        FixedRoundedRect.cornerSize.getter();
        [v20 setCornerRadius_];
        _s7SwiftUI4PathVSgWOhTm_0(v34, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
      }
    }

    v27 = 3;
    v21 = UIHostingController.sizingOptions.setter(&v27);
    MEMORY[0x1EEE9AC00](v21);
    *(&v25 - 2) = v9;
    static Update.ensure<A>(_:)();
    v22 = *(v0 + v26);
    *(v1 + v26) = v9;
    v23 = v9;

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void closure #1 in ContextMenuPreviewResponder.previewHost.getter()
{
  v0 = specialized UIHostingController.host.getter();
  type metadata accessor for _UIHostingView();
  v1 = v0;
  swift_getWitnessTable();
  v2 = ViewRendererHost.idealSize()();

  UIHostingController.idealSizeDidChange(from:to:)(0, v2);
}

uint64_t (*ContextMenuPreviewResponder.previewProvider.getter())()
{
  v1 = (*v0 + class metadata base offset for ContextMenuPreviewResponder);
  v2 = *v1;
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = v1[2];
  swift_beginAccess();
  (*(v4 + 16))(v6, &v0[v7], v3);
  LODWORD(v2) = (*(*(v2 - 8) + 48))(v6, 1, v2);
  (*(v4 + 8))(v6, v3);
  result = 0;
  if (v2 != 1)
  {

    return partial apply for closure #1 in ContextMenuPreviewResponder.previewProvider.getter;
  }

  return result;
}

uint64_t ContextMenuPreviewResponder.init(inputs:space:itemList:displayList:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  (*(*(*(*v2 + class metadata base offset for ContextMenuPreviewResponder) - 8) + 56))(v2 + *(*v2 + class metadata base offset for ContextMenuPreviewResponder + 16), 1, 1);
  *(v2 + *(*v2 + class metadata base offset for ContextMenuPreviewResponder + 24)) = 0;
  *(v2 + 308) = 0;
  *(v2 + 316) = 1;
  *(v2 + 320) = 0;
  *(v2 + 296) = 0;
  *(v2 + 304) = 0;
  v4 = AGCreateWeakAttribute();
  *(v2 + 288) = 0;
  *(v2 + 296) = v4;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0;
  *(v2 + 264) = 1;
  *(v2 + 268) = 0;
  *(v2 + 280) = 0;
  *(v2 + 216) = v3;
  *(v2 + 268) = AGCreateWeakAttribute();
  return DefaultLayoutViewResponder.init(inputs:)();
}

void ContextMenuPreviewResponder.__ivar_destroyer()
{
  v1 = *(*v0 + class metadata base offset for ContextMenuPreviewResponder + 16);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *&v0[*(*v0 + class metadata base offset for ContextMenuPreviewResponder + 24)];
}

char *ContextMenuPreviewResponder.deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();
  v1 = *(*v0 + class metadata base offset for ContextMenuPreviewResponder + 16);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return v0;
}

uint64_t ContextMenuPreviewResponder.__deallocating_deinit()
{
  ContextMenuPreviewResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t initializeBufferWithCopyOfBuffer for ContextMenuPreviewAction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ContextMenuPreviewAction(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ContextMenuPreviewAction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ContextMenuPreviewAction(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of ContextMenuPreviewAction(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for ContextMenuPreviewAction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of ContextMenuPreviewAction(v4, v5, v6);
  return a1;
}

uint64_t type metadata completion function for ContextMenuPreviewModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ContextMenuPreviewModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(a3 + 24) - 8;
  v8 = *v7;
  v9 = *(*v7 + 80);
  v10 = *(v5 + 64) + v9;
  v11 = *(*v7 + 64);
  if ((v9 | v6) > 7 || ((*(*v7 + 80) | *(v5 + 80)) & 0x100000) != 0 || ((((((-18 - v6) | v6) - v10) | v9) - v11) | 7) > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    v15 = v14 + (((v9 | v6) & 0xF8 ^ 0x1F8) & ((v9 | v6) + 16));
  }

  else
  {
    v30 = *(a3 + 24);
    *a1 = *a2;
    v16 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
    v17 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
    v18 = *v17;
    v19 = *(v17 + 8);
    v29 = v4;
    outlined copy of Environment<Bool>.Content(*v17, v19);
    *v16 = v18;
    *(v16 + 8) = v19;
    (*(v5 + 16))((v16 + v6 + 9) & ~v6, (v17 + v6 + 9) & ~v6, v29);
    v20 = (((v16 + v6 + 9) & ~v6) + v10) & ~v9;
    v21 = (((v17 + v6 + 9) & ~v6) + v10) & ~v9;
    (*(v8 + 16))(v20, v21, v30);
    *(v20 + v11) = *(v21 + v11);
    v22 = (v20 + v11) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v21 + v11) & 0xFFFFFFFFFFFFFFF8;
    v24 = *(v23 + 24);
    if ((v24 & 0x7E) != 0)
    {
      v25 = *(v23 + 8);
      *(v22 + 24) = *(v23 + 24);
      *(v22 + 8) = v25;
    }

    else
    {
      v26 = *(v23 + 8);
      v27 = *(v23 + 16);
      outlined copy of ContextMenuPreviewAction(v26, v27, *(v23 + 24));
      *(v22 + 8) = v26;
      *(v22 + 16) = v27;
      *(v22 + 24) = v24;
    }

    return a1;
  }

  return v15;
}

uint64_t destroy for ContextMenuPreviewModifier(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Bool>.Content(*v3, *(v3 + 8));
  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (v3 + *(v4 + 80) + 9) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = *(v5 + 56);
  v8 = *(*(a2 + 24) - 8);
  v9 = v8 + 8;
  v10 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  result = (*(v8 + 8))(v10);
  v12 = (v10 + *(v9 + 56)) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 24);
  if ((v13 & 0x7E) == 0)
  {
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);

    return outlined consume of ContextMenuPreviewAction(v14, v15, v13);
  }

  return result;
}

_DWORD *initializeWithCopy for ContextMenuPreviewModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;
  v8 = *(v6 + 8);
  outlined copy of Environment<Bool>.Content(*v6, v8);
  *v5 = v7;
  *(v5 + 8) = v8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = (v11 + 9 + v5) & ~v11;
  v13 = (v11 + 9 + v6) & ~v11;
  (*(v9 + 16))(v12, v13);
  v14 = *(*(a3 + 24) - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = *(v10 + 48) + v16;
  v18 = (v17 + v12) & ~v16;
  v19 = (v17 + v13) & ~v16;
  (*(v14 + 16))(v18, v19);
  v20 = *(v15 + 48);
  v21 = v20 + v18;
  v22 = v20 + v19;
  *v21 = *v22;
  v23 = v21 & 0xFFFFFFFFFFFFFFF8;
  v24 = v22 & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v24 + 24);
  if ((v25 & 0x7E) != 0)
  {
    v26 = *(v24 + 8);
    *(v23 + 24) = *(v24 + 24);
    *(v23 + 8) = v26;
  }

  else
  {
    v27 = *(v24 + 8);
    v28 = *(v24 + 16);
    outlined copy of ContextMenuPreviewAction(v27, v28, *(v24 + 24));
    *(v23 + 8) = v27;
    *(v23 + 16) = v28;
    *(v23 + 24) = v25;
  }

  return a1;
}

_DWORD *assignWithCopy for ContextMenuPreviewModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;
  v8 = *(v6 + 8);
  outlined copy of Environment<Bool>.Content(*v6, v8);
  v9 = *v5;
  v10 = *(v5 + 8);
  *v5 = v7;
  *(v5 + 8) = v8;
  outlined consume of Environment<Bool>.Content(v9, v10);
  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 24;
  v13 = *(v11 + 80);
  v14 = (v13 + 9 + v5) & ~v13;
  v15 = (v13 + 9 + v6) & ~v13;
  (*(v11 + 24))(v14, v15);
  v16 = *(*(a3 + 24) - 8);
  v17 = v16 + 24;
  v18 = *(v16 + 80);
  v19 = *(v12 + 40) + v18;
  v20 = (v19 + v14) & ~v18;
  v21 = (v19 + v15) & ~v18;
  (*(v16 + 24))(v20, v21);
  v22 = *(v17 + 40);
  v23 = v22 + v20;
  v24 = v22 + v21;
  *v23 = *v24;
  v25 = v23 & 0xFFFFFFFFFFFFFFF8;
  v26 = v24 & 0xFFFFFFFFFFFFFFF8;
  v27 = *((v24 & 0xFFFFFFFFFFFFFFF8) + 24);
  if ((*((v23 & 0xFFFFFFFFFFFFFFF8) + 24) & 0x7E) == 0)
  {
    if ((v27 & 0x7E) == 0)
    {
      v32 = *(v26 + 8);
      v33 = *(v26 + 16);
      outlined copy of ContextMenuPreviewAction(v32, v33, v27);
      v34 = *(v25 + 8);
      v35 = *(v25 + 16);
      *(v25 + 8) = v32;
      *(v25 + 16) = v33;
      v36 = *(v25 + 24);
      *(v25 + 24) = v27;
      outlined consume of ContextMenuPreviewAction(v34, v35, v36);
      return a1;
    }

    outlined consume of ContextMenuPreviewAction(*(v25 + 8), *(v25 + 16), *((v23 & 0xFFFFFFFFFFFFFFF8) + 24));
    goto LABEL_6;
  }

  if ((v27 & 0x7E) != 0)
  {
LABEL_6:
    v30 = *(v26 + 8);
    *(v25 + 24) = *(v26 + 24);
    *(v25 + 8) = v30;
    return a1;
  }

  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  outlined copy of ContextMenuPreviewAction(v28, v29, v27);
  *(v25 + 8) = v28;
  *(v25 + 16) = v29;
  *(v25 + 24) = v27;
  return a1;
}

_DWORD *initializeWithTake for ContextMenuPreviewModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;
  *(v5 + 8) = *(v6 + 8);
  *v5 = v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v10 + 9 + v5) & ~v10;
  v12 = (v10 + 9 + v6) & ~v10;
  (*(v8 + 32))(v11, v12);
  v13 = *(v9 + 32);
  v14 = *(*(a3 + 24) - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 32))(v18, v19);
  v20 = *(v15 + 32);
  v21 = v20 + v18;
  v22 = v20 + v19;
  *v21 = *v22;
  v21 &= 0xFFFFFFFFFFFFFFF8;
  v22 &= 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 24);
  *(v21 + 8) = *(v22 + 8);
  *(v21 + 24) = v23;
  return a1;
}

_DWORD *assignWithTake for ContextMenuPreviewModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v6 + 8);
  v8 = *v5;
  v9 = *(v5 + 8);
  *v5 = *v6;
  *(v5 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v12 + 9 + v5) & ~v12;
  v14 = (v12 + 9 + v6) & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v11 + 24);
  v16 = *(*(a3 + 24) - 8);
  v17 = v16 + 40;
  v18 = *(v16 + 80);
  v19 = v15 + v18;
  v20 = (v19 + v13) & ~v18;
  v21 = (v19 + v14) & ~v18;
  (*(v16 + 40))(v20, v21);
  v22 = *(v17 + 24);
  v23 = v22 + v20;
  v24 = v22 + v21;
  *v23 = *v24;
  v25 = v23 & 0xFFFFFFFFFFFFFFF8;
  v26 = v24 & 0xFFFFFFFFFFFFFFF8;
  v27 = *((v23 & 0xFFFFFFFFFFFFFFF8) + 24);
  if ((v27 & 0x7E) == 0)
  {
    v28 = *(v26 + 24);
    v29 = *(v25 + 8);
    v30 = *(v25 + 16);
    if ((v28 & 0x7E) == 0)
    {
      *(v25 + 8) = *(v26 + 8);
      *(v25 + 24) = v28;
      outlined consume of ContextMenuPreviewAction(v29, v30, v27);
      return a1;
    }

    outlined consume of ContextMenuPreviewAction(v29, v30, v27);
  }

  v31 = *(v26 + 8);
  *(v25 + 24) = *(v26 + 24);
  *(v25 + 8) = v31;
  return a1;
}

uint64_t getEnumTagSinglePayload for ContextMenuPreviewModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_31;
  }

  v14 = ((((v10 + v11 + ((v9 + 17) & ~v9)) & ~v11) + *(*(v6 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 25;
  v15 = (a2 - v13 + 255) >> 8;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v14];
      if (*&a1[v14])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = *&a1[v14];
      if (v19)
      {
        goto LABEL_27;
      }
    }

LABEL_31:
    v23 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
    if (v12 > 0xFE)
    {
      v25 = (v23 + v9 + 9) & ~v9;
      if (v5 == v13)
      {
        return (*(v4 + 48))(v25);
      }

      else
      {
        return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
      }
    }

    else
    {
      v24 = *(v23 + 8);
      if (v24 > 1)
      {
        return (v24 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  if (!v18)
  {
    goto LABEL_31;
  }

  v19 = a1[v14];
  if (!a1[v14])
  {
    goto LABEL_31;
  }

LABEL_27:
  v21 = (v19 - 1) << (8 * v14);
  if (v14 <= 3)
  {
    v22 = *a1;
  }

  else
  {
    v21 = 0;
    v22 = *a1;
  }

  return v13 + (v22 | v21) + 1;
}

void storeEnumTagSinglePayload for ContextMenuPreviewModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((((v11 + v12 + ((v10 + 17) & ~v10)) & ~v12) + *(*(v8 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v14 >= a3)
  {
    v19 = 0;
    if (v14 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = (a3 - v14 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v14 >= a2)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        v22 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
        if (v13 > 0xFE)
        {
          v23 = (v22 + v10 + 9) & ~v10;
          if (v7 == v14)
          {
            v24 = *(v6 + 56);

            v24(v23);
          }

          else
          {
            v25 = *(v9 + 56);
            v26 = (v23 + v11 + v12) & ~v12;

            v25(v26);
          }
        }

        else if (a2 > 0xFE)
        {
          *(v22 + 8) = 0;
          *v22 = a2 - 255;
        }

        else
        {
          *(v22 + 8) = -a2;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }
  }

  v20 = ~v14 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_30:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for StaticIf();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for ContextMenuPreviewDestinationModifier.Transform()
{
  result = type metadata accessor for ContextMenuPreviewDestinationModifier();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ContextMenuPreviewDestinationModifier.Transform(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(*(a3[4] - 8) + 80);
  v4 = *(*(a3[3] - 8) + 80);
  v5 = *(*(a3[2] - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  v7 = ((v4 | v3) | v5) & 0xF8 | 7u;
  v8 = (v7 + 16) & ~v7;

  return v6 + v8;
}

uint64_t destroy for ContextMenuPreviewDestinationModifier.Transform(uint64_t a1, void *a2)
{
  v3 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = a2[3];
  v5 = *(a2[2] - 8);
  v6 = v5 + 8;
  v7 = *(v4 - 8);
  v8 = a2[4];
  v9 = *(v8 - 8);
  v10 = (*(v7 + 80) | *(v9 + 80) | *(v5 + 80));
  v11 = *(v7 + 80);
  v12 = *(v9 + 80);
  v13 = (v3 + v10 + 16) & ~v10;
  (*(v5 + 8))(v13);
  v14 = *(v6 + 56) + v11;
  (*(v7 + 8))((v14 + v13) & ~v11, v4);
  v15 = *(v7 + 64) + v12;
  result = (*(v9 + 8))((v15 + ((v14 + v13) & ~v11)) & ~v12, v8);
  v17 = *(((((((v13 + ((v15 + (v14 & ~v11)) & ~v12) + *(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if (v17 - 1 < 0)
  {
    swift_weakDestroy();
  }

  return result;
}

void *initializeWithCopy for ContextMenuPreviewDestinationModifier.Transform(void *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  v3 = a2 + 15;
  *a1 = v4;
  v5 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFF8);
  *(v5 + 8) = *((v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  v6 = a3[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v10 = a3[4];
  v33 = a3[3];
  v11 = *(v33 - 8);
  v12 = *(v11 + 80);
  v13 = *(v10 - 8);
  v14 = *(v13 + 80);
  v15 = (*(v11 + 80) | *(v13 + 80) | *(v7 + 80));
  v16 = (v15 + 16 + v5) & ~v15;
  v17 = (v15 + 16 + (v3 & 0xFFFFFFFFFFFFFFF8)) & ~v15;

  v8(v16, v17, v6);
  v18 = *(v9 + 48) + v12;
  (*(v11 + 16))((v18 + v16) & ~v12, (v18 + v17) & ~v12, v33);
  v19 = *(v11 + 64) + v14;
  (*(v13 + 16))((v19 + ((v18 + v16) & ~v12)) & ~v14, (v19 + ((v18 + v17) & ~v12)) & ~v14, v10);
  v20 = *(v13 + 64) + ((v19 + (v18 & ~v12)) & ~v14) + 7;
  v21 = v20 + v16;
  v22 = ((v20 + v17) & 0xFFFFFFFFFFFFFFF8);
  v21 &= 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = *v24;
  *(v23 + 16) = *(v24 + 16);
  *v23 = v25;
  v26 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v24 + 31) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v27 + 8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  if (v28 - 1 < 0)
  {
    swift_weakCopyInit();
    *(v26 + 8) = *(v27 + 8);
    *(v26 + 16) = *(v27 + 16);
  }

  else
  {
    v29 = *v27;
    *(v26 + 16) = *(v27 + 16);
    *v26 = v29;
  }

  v30 = (v26 + 27) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v27 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v30 = *v31;
  *(v30 + 8) = *(v31 + 8);
  return a1;
}

void *assignWithCopy for ContextMenuPreviewDestinationModifier.Transform(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v4 = *v5;
  *(v4 + 8) = *(v5 + 8);

  v6 = a3[3];
  v7 = *(a3[2] - 8);
  v8 = v7 + 24;
  v9 = *(v6 - 8);
  v10 = *(v9 + 80);
  v34 = a3[4];
  v11 = *(v34 - 8);
  v12 = *(v11 + 80);
  v13 = (*(v9 + 80) | *(v11 + 80) | *(v7 + 80));
  v14 = (v13 + 16 + v4) & ~v13;
  v15 = (v13 + 16 + v5) & ~v13;
  (*(v7 + 24))(v14, v15);
  v16 = *(v8 + 40) + v10;
  (*(v9 + 24))((v16 + v14) & ~v10, (v16 + v15) & ~v10, v6);
  v17 = *(v9 + 64) + v12;
  (*(v11 + 24))((v17 + ((v16 + v14) & ~v10)) & ~v12, (v17 + ((v16 + v15) & ~v10)) & ~v12, v34);
  v18 = *(v11 + 64) + ((v17 + (v16 & ~v10)) & ~v12) + 7;
  v19 = ((v18 + v14) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  *(v21 + 16) = *(v22 + 16);
  *v21 = v23;
  v24 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v24 + 8);
  if (v26 >= 0xFFFFFFFF)
  {
    LODWORD(v26) = -1;
  }

  v27 = v26 - 1;
  v28 = *(v25 + 8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  v29 = v28 - 1;
  if (v27 < 0)
  {
    if (v29 < 0)
    {
      swift_weakCopyAssign();
      *(v24 + 8) = *(v25 + 8);

      *(v24 + 16) = *(v25 + 16);

      goto LABEL_11;
    }

    swift_weakDestroy();

    goto LABEL_10;
  }

  if ((v29 & 0x80000000) == 0)
  {
LABEL_10:
    v30 = *v25;
    *(v24 + 16) = *(v25 + 16);
    *v24 = v30;
    goto LABEL_11;
  }

  swift_weakCopyInit();
  *(v24 + 8) = *(v25 + 8);
  *(v24 + 16) = *(v25 + 16);

LABEL_11:
  v31 = (v24 + 27) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v25 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v31 = *v32;
  *(v31 + 4) = *(v32 + 4);
  *(v31 + 8) = *(v32 + 8);
  return a1;
}

void *initializeWithTake for ContextMenuPreviewDestinationModifier.Transform(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v3 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v4 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v3 = *v4;
  v5 = *(a3[2] - 8);
  v6 = v5 + 32;
  v7 = a3[4];
  v30 = a3[3];
  v8 = *(v30 - 8);
  v9 = *(v8 + 80);
  v10 = *(v7 - 8);
  v11 = *(v10 + 80);
  v12 = (*(v8 + 80) | *(v10 + 80) | *(v5 + 80));
  v13 = (v3 + v12 + 16) & ~v12;
  v14 = (v4 + v12 + 16) & ~v12;
  (*(v5 + 32))(v13, v14, a3[2]);
  v15 = *(v6 + 32) + v9;
  (*(v8 + 32))((v15 + v13) & ~v9, (v15 + v14) & ~v9, v30);
  v16 = *(v8 + 64) + v11;
  (*(v10 + 32))((v16 + ((v15 + v13) & ~v9)) & ~v11, (v16 + ((v15 + v14) & ~v9)) & ~v11, v7);
  v17 = *(v10 + 64) + ((v16 + (v15 & ~v9)) & ~v11) + 7;
  v18 = ((v17 + v13) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  *(v20 + 16) = *(v21 + 16);
  *v20 = v22;
  v23 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v24 + 8);
  if (*(v24 + 8) >= 0xFFFFFFFFuLL)
  {
    v25 = -1;
  }

  if (v25 - 1 < 0)
  {
    v23 = swift_weakTakeInit();
    *(v23 + 8) = *(v24 + 8);
  }

  else
  {
    v26 = *v24;
    *(v23 + 16) = *(v24 + 16);
    *v23 = v26;
  }

  v27 = (v23 + 27) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v24 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v27 = *v28;
  *(v27 + 8) = *(v28 + 8);
  return a1;
}

void *assignWithTake for ContextMenuPreviewDestinationModifier.Transform(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v4 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v4 = *v5;
  *(v4 + 8) = *(v5 + 8);

  v6 = a3[3];
  v7 = *(a3[2] - 8);
  v8 = v7 + 40;
  v9 = *(v6 - 8);
  v10 = *(v9 + 80);
  v34 = a3[4];
  v11 = *(v34 - 8);
  v12 = *(v11 + 80);
  v13 = (*(v9 + 80) | *(v11 + 80) | *(v7 + 80));
  v14 = (v13 + 16 + v4) & ~v13;
  v15 = (v13 + 16 + v5) & ~v13;
  (*(v7 + 40))(v14, v15);
  v16 = *(v8 + 24) + v10;
  (*(v9 + 40))((v16 + v14) & ~v10, (v16 + v15) & ~v10, v6);
  v17 = *(v9 + 64) + v12;
  (*(v11 + 40))((v17 + ((v16 + v14) & ~v10)) & ~v12, (v17 + ((v16 + v15) & ~v10)) & ~v12, v34);
  v18 = *(v11 + 64) + ((v17 + (v16 & ~v10)) & ~v12) + 7;
  v19 = ((v18 + v14) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  *(v21 + 16) = *(v22 + 16);
  *v21 = v23;
  v24 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v24 + 8);
  if (*(v24 + 8) >= 0xFFFFFFFFuLL)
  {
    v26 = -1;
  }

  v27 = v26 - 1;
  v28 = *(v25 + 8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  v29 = v28 - 1;
  if (v27 < 0)
  {
    if (v29 < 0)
    {
      swift_weakTakeAssign();
      *(v24 + 8) = *(v25 + 8);

      *(v24 + 16) = *(v25 + 16);

      goto LABEL_11;
    }

    swift_weakDestroy();

    goto LABEL_10;
  }

  if ((v29 & 0x80000000) == 0)
  {
LABEL_10:
    v30 = *v25;
    *(v24 + 16) = *(v25 + 16);
    *v24 = v30;
    goto LABEL_11;
  }

  swift_weakTakeInit();
  *(v24 + 8) = *(v25 + 8);
LABEL_11:
  v31 = (v24 + 27) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v25 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v31 = *v32;
  *(v31 + 4) = *(v32 + 4);
  *(v31 + 8) = *(v32 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContextMenuPreviewDestinationModifier.Transform(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  if (*(v11 + 84) <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v11 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v8 + 80);
  v15 = *(v11 + 80);
  v16 = (*(v8 + 80) | *(v5 + 80) | *(v11 + 80));
  v17 = *(*(a3[2] - 8) + 64) + v14;
  v18 = *(*(a3[3] - 8) + 64) + v15;
  if (v13 < a2)
  {
    v19 = ((((((((*(*(v7 - 8) + 64) + ((v18 + (v17 & ~v14)) & ~v15) + ((v16 + 24) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 9;
    v20 = (a2 - v13 + 255) >> 8;
    if (v19 <= 3)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *&a1[v19];
        if (!*&a1[v19])
        {
          goto LABEL_34;
        }
      }

      else
      {
        v24 = *&a1[v19];
        if (!v24)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      if (!v23)
      {
        goto LABEL_34;
      }

      v24 = a1[v19];
      if (!a1[v19])
      {
        goto LABEL_34;
      }
    }

    v26 = (v24 - 1) << (8 * v19);
    if (v19 <= 3)
    {
      v27 = *a1;
    }

    else
    {
      v26 = 0;
      v27 = *a1;
    }

    v30 = v13 + (v27 | v26);
    return (v30 + 1);
  }

LABEL_34:
  v28 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v12 <= 0x7FFFFFFE)
  {
    v29 = *(v28 + 8);
    if (v29 >= 0xFFFFFFFF)
    {
      LODWORD(v29) = -1;
    }

    v30 = v29 - 1;
    if (v30 < 0)
    {
      v30 = -1;
    }

    return (v30 + 1);
  }

  v31 = (v28 + v16 + 16) & ~v16;
  if (v6 == v12)
  {
    v32 = *(v5 + 48);

    return v32(v31);
  }

  else
  {
    v33 = (v17 + v31) & ~v14;
    if (v9 == v12)
    {
      v34 = *(v8 + 48);
      v35 = *(v8 + 84);
      v36 = a3[3];
    }

    else
    {
      v34 = *(v11 + 48);
      v33 = (v18 + v33) & ~v15;
      v35 = *(v11 + 84);
      v36 = a3[4];
    }

    return v34(v33, v35, v36);
  }
}

void storeEnumTagSinglePayload for ContextMenuPreviewDestinationModifier.Transform(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = a4[3];
  v9 = a4[4];
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v7)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v10 + 80);
  v15 = *(v13 + 80);
  if (*(v13 + 84) <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v14 | *(v6 + 80) | v15);
  v19 = *(*(a4[2] - 8) + 64) + *(v10 + 80);
  v20 = *(*(v8 - 8) + 64) + *(v13 + 80);
  v21 = ((v20 + (v19 & ~*(v10 + 80))) & ~*(v13 + 80)) + *(*(v9 - 8) + 64);
  v22 = ((((((((((v18 + 24) & ~v18) + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 >= a3)
  {
    v25 = 0;
    if (v17 >= a2)
    {
      goto LABEL_22;
    }

LABEL_27:
    v26 = ~v17 + a2;
    bzero(a1, ((((((((((v18 + 24) & ~v18) + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v22 <= 3)
    {
      v27 = (v26 >> 8) + 1;
    }

    else
    {
      v27 = 1;
    }

    if (v22 <= 3)
    {
      *a1 = v26;
      if (v25 > 1)
      {
LABEL_32:
        if (v25 == 2)
        {
          *&a1[v22] = v27;
        }

        else
        {
          *&a1[v22] = v27;
        }

        return;
      }
    }

    else
    {
      *a1 = v26;
      if (v25 > 1)
      {
        goto LABEL_32;
      }
    }

    if (v25)
    {
      a1[v22] = v27;
    }

    return;
  }

  v23 = (a3 - v17 + 255) >> 8;
  if (v22 <= 3)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = 2;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 < 2)
  {
    v25 = 0;
  }

  if (v17 < a2)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v22] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v25)
  {
    goto LABEL_36;
  }

  a1[v22] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v28 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v16 <= 0x7FFFFFFE)
  {
    if (a2 > 0x7FFFFFFE)
    {
      *v28 = a2 - 0x7FFFFFFF;
      v28[1] = 0;
    }

    else
    {
      v28[1] = a2;
    }

    return;
  }

  v29 = (v28 + v18 + 16) & ~v18;
  if (v16 < a2)
  {
    if (v21 <= 3)
    {
      v30 = ~(-1 << (8 * v21));
    }

    else
    {
      v30 = -1;
    }

    if (v21)
    {
      v31 = v30 & (~v16 + a2);
      if (v21 <= 3)
      {
        v32 = v21;
      }

      else
      {
        v32 = 4;
      }

      bzero(((v28 + v18 + 16) & ~v18), v21);
      if (v32 > 2)
      {
        if (v32 == 3)
        {
          *v29 = v31;
          *(v29 + 2) = BYTE2(v31);
        }

        else
        {
          *v29 = v31;
        }
      }

      else if (v32 == 1)
      {
        *v29 = v31;
      }

      else
      {
        *v29 = v31;
      }
    }

    return;
  }

  if (v7 == v16)
  {
    v33 = *(v6 + 56);
    v34 = (v28 + v18 + 16) & ~v18;

LABEL_62:
    v33(v34);
    return;
  }

  v35 = (v19 + v29) & ~v14;
  if (v11 != v16)
  {
    v33 = *(v13 + 56);
    v34 = (v20 + v35) & ~v15;

    goto LABEL_62;
  }

  v36 = *(v10 + 56);

  v36(v35);
}

uint64_t type metadata completion function for ContextMenuPreviewModifierCore()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ContextMenuPreviewModifierCore(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64);
  v11 = ((((((v5 + v8) & ~v8) + v10) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (v3 + v9) & v16;
    v19 = (a2 + v9) & v16;
    (*(v7 + 16))(v18, v19, v6);
    *(v18 + v10) = *(v19 + v10);
    v20 = (v18 + v10) & 0xFFFFFFFFFFFFFFFCLL;
    v21 = (v19 + v10) & 0xFFFFFFFFFFFFFFFCLL;
    *(v20 + 4) = *(v21 + 4);
    v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = *(v23 + 16);
    if ((v24 & 0x7E) != 0)
    {
      v25 = *v23;
      *(v22 + 16) = *(v23 + 16);
      *v22 = v25;
    }

    else
    {
      v26 = *v23;
      v27 = *(v23 + 8);
      outlined copy of ContextMenuPreviewAction(*v23, v27, *(v23 + 16));
      *v22 = v26;
      *(v22 + 8) = v27;
      *(v22 + 16) = v24;
    }
  }

  return v3;
}

uint64_t destroy for ContextMenuPreviewModifierCore(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  result = (*(v6 + 8))(v8);
  v10 = (((v8 + *(v7 + 56)) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 16);
  if ((v11 & 0x7E) == 0)
  {
    v12 = *v10;
    v13 = *(v10 + 8);

    return outlined consume of ContextMenuPreviewAction(v12, v13, v11);
  }

  return result;
}

uint64_t initializeWithCopy for ContextMenuPreviewModifierCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  v14 = *(v9 + 48);
  v15 = v14 + v12;
  v16 = v14 + v13;
  *v15 = *v16;
  v15 &= 0xFFFFFFFFFFFFFFFCLL;
  v16 &= 0xFFFFFFFFFFFFFFFCLL;
  *(v15 + 4) = *(v16 + 4);
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 16);
  if ((v19 & 0x7E) != 0)
  {
    v20 = *v18;
    *(v17 + 16) = *(v18 + 16);
    *v17 = v20;
  }

  else
  {
    v21 = *v18;
    v22 = *(v18 + 8);
    outlined copy of ContextMenuPreviewAction(*v18, v22, *(v18 + 16));
    *v17 = v21;
    *(v17 + 8) = v22;
    *(v17 + 16) = v19;
  }

  return a1;
}

uint64_t assignWithCopy for ContextMenuPreviewModifierCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40);
  v15 = v14 + v12;
  v16 = v14 + v13;
  *v15 = *v16;
  v15 &= 0xFFFFFFFFFFFFFFFCLL;
  v16 &= 0xFFFFFFFFFFFFFFFCLL;
  *(v15 + 4) = *(v16 + 4);
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 16);
  if ((*(v17 + 16) & 0x7E) == 0)
  {
    if ((v19 & 0x7E) == 0)
    {
      v24 = *v18;
      v25 = *(v18 + 8);
      outlined copy of ContextMenuPreviewAction(v24, v25, v19);
      v26 = *v17;
      v27 = *(v17 + 8);
      *v17 = v24;
      *(v17 + 8) = v25;
      v28 = *(v17 + 16);
      *(v17 + 16) = v19;
      outlined consume of ContextMenuPreviewAction(v26, v27, v28);
      return a1;
    }

    outlined consume of ContextMenuPreviewAction(*v17, *(v17 + 8), *(v17 + 16));
    goto LABEL_6;
  }

  if ((v19 & 0x7E) != 0)
  {
LABEL_6:
    v22 = *v18;
    *(v17 + 16) = *(v18 + 16);
    *v17 = v22;
    return a1;
  }

  v20 = *v18;
  v21 = *(v18 + 8);
  outlined copy of ContextMenuPreviewAction(v20, v21, v19);
  *v17 = v20;
  *(v17 + 8) = v21;
  *(v17 + 16) = v19;
  return a1;
}

uint64_t initializeWithTake for ContextMenuPreviewModifierCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  v14 = *(v9 + 32);
  v15 = v14 + v12;
  v16 = v14 + v13;
  *v15 = *v16;
  v15 &= 0xFFFFFFFFFFFFFFFCLL;
  v16 &= 0xFFFFFFFFFFFFFFFCLL;
  *(v15 + 4) = *(v16 + 4);
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 16);
  *v17 = *v18;
  *(v17 + 16) = v19;
  return a1;
}

uint64_t assignWithTake for ContextMenuPreviewModifierCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24);
  v15 = v14 + v12;
  v16 = v14 + v13;
  *v15 = *v16;
  v15 &= 0xFFFFFFFFFFFFFFFCLL;
  v16 &= 0xFFFFFFFFFFFFFFFCLL;
  *(v15 + 4) = *(v16 + 4);
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v17 + 16);
  if ((v19 & 0x7E) == 0)
  {
    v20 = *(v18 + 16);
    v21 = *v17;
    v22 = *(v17 + 8);
    if ((v20 & 0x7E) == 0)
    {
      *v17 = *v18;
      *(v17 + 16) = v20;
      outlined consume of ContextMenuPreviewAction(v21, v22, v19);
      return a1;
    }

    outlined consume of ContextMenuPreviewAction(v21, v22, v19);
  }

  v23 = *v18;
  *(v17 + 16) = *(v18 + 16);
  *v17 = v23;
  return a1;
}

uint64_t getEnumTagSinglePayload for ContextMenuPreviewModifierCore(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v13 = (((((v12 & ~v9) + v10) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  v14 = (a2 - v11 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (*&a1[v13])
      {
        goto LABEL_22;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (v18)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_29;
  }

  if (!v17 || (v18 = a1[v13]) == 0)
  {
LABEL_29:
    if (v5 == v11)
    {
      return (*(v4 + 48))();
    }

    v22 = &a1[v12] & ~v9;
    if (v8 == v11)
    {
      return (*(v7 + 48))(v22, v8, v6);
    }

    v23 = *(v22 + v10);
    if (v23 >= 2)
    {
      return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_22:
  v19 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v20 = *a1;
  }

  else
  {
    v19 = 0;
    v20 = *a1;
  }

  return v11 + (v20 | v19) + 1;
}

void storeEnumTagSinglePayload for ContextMenuPreviewModifierCore(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  v14 = v10 + v11;
  v15 = ((((((v10 + v11) & ~v11) + v12) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v13 >= a3)
  {
    v19 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = (a3 - v13 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v13)
      {
        v22 = *(v6 + 56);

        v22();
      }

      else
      {
        v23 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v24 = *(v8 + 56);

          v24(v23);
        }

        else
        {
          *(v23 + v12) = a2 + 1;
        }
      }

      return;
    }
  }

  v20 = ~v13 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_29:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

uint64_t _s7SwiftUI4PathVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for Path?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t initializeWithCopy for ContextMenuPreviewResponderFilter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t specialized ContextMenuPreviewResponder.preview.setter(uint64_t a1)
{
  v3 = *v1 + class metadata base offset for ContextMenuPreviewResponder;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *(v3 + 16);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v1[v8], a1, v4);
  swift_endAccess();
  ContextMenuPreviewResponder.preview.didset(v7);
  return (*(v5 + 8))(v7, v4);
}

void type metadata accessor for Path?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t destroy for SectionedIdentifierAccumulator()
{
}

uint64_t initializeWithCopy for SectionedIdentifierAccumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for SectionedIdentifierAccumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for SectionedIdentifierAccumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t SectionedIdentifierAccumulator.visit(view:traits:)(char *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *a2;
  v32 = *a2;
  v7 = &v32;
  if (ViewTraitCollection.groupDepth.getter())
  {
    goto LABEL_17;
  }

  v32 = v6;
  if (ViewTraitCollection.isSectioned.getter())
  {
    *(v4 + 32) = 1;
    *(v4 + 48) = 0;
    v32 = v6;
    v8 = ViewTraitCollection.isEmptyView.getter();
    v3 = *(v4 + 56);
    v9 = *(v4 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v10 = v8 ^ 1;
    v11 = *(v9 + 2);
    v12 = *(v9 + 3);
    v13 = v11 + 1;
    if (v11 >= v12 >> 1)
    {
      v24 = v9;
      v25 = v10;
      v26 = v11;
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v11 + 1, 1, v24);
      v11 = v26;
      v10 = v25;
      v9 = v27;
    }

    *(v9 + 2) = v13;
    v14 = &v9[16 * v11];
    *(v14 + 4) = v3;
    v14[40] = 0;
    v14[41] = v10 & 1;
  }

  else
  {
    if (*(v4 + 48))
    {
      goto LABEL_15;
    }

    *(v4 + 48) = 1;
    v3 = *(v4 + 56);
    v9 = *(v4 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v15 = *(v9 + 2);
    v16 = *(v9 + 3);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v28 = v9;
      v29 = *(v9 + 2);
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v15 + 1, 1, v28);
      v15 = v29;
      v9 = v30;
    }

    *(v9 + 2) = v17;
    v18 = &v9[16 * v15];
    *(v18 + 4) = v3;
    *(v18 + 20) = 1;
  }

  *(v4 + 8) = v9;
LABEL_15:
  v32 = v6;
  v7 = &v32;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v31 == 1)
  {
    v7 = (v4 + 40);
    specialized Set._Variant.insert(_:)(&v32, *(*(v4 + 8) + 16) - 1);
  }

LABEL_17:
  if (*(v4 + 16))
  {
    v32 = v6;
    v7 = &v32;
    if (ViewTraitCollection.isSectionFooter.getter())
    {
      v7 = (v4 + 16);
      specialized Set._Variant.insert(_:)(&v32, *(*(v4 + 8) + 16) - 1);
    }
  }

  if (*v4 == 1)
  {
    v19 = *(a1 + 9);
    if (v19 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v19 <= 0x7FFFFFFF)
    {
      LODWORD(v3) = *(a1 + 15);
      v7 = *(a1 + 8);
      a1 = *(v4 + 24);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_24:
        v21 = *(a1 + 2);
        v20 = *(a1 + 3);
        if (v21 >= v20 >> 1)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, a1);
        }

        *(a1 + 2) = v21 + 1;
        v22 = &a1[16 * v21];
        *(v22 + 8) = v19;
        *(v22 + 9) = v3;
        *(v22 + 5) = v7;
        *(v4 + 24) = a1;
        goto LABEL_27;
      }

LABEL_30:
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 2) + 1, 1, a1);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_27:
  ++*(v4 + 56);
  return 1;
}

void View.supportedVolumeViewpoints(_:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  View.supportedVolumeViewpoints(_:)();
}

uint64_t Button<>.init(_:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_7(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  outlined init with copy of ButtonAction(&a1[v4], &a2[*(v5 + 36)], type metadata accessor for ButtonAction);
  return _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_4(a1, type metadata accessor for PrimitiveButtonStyleConfiguration);
}

Swift::Void __swiftcall ButtonAction.callAsFunction()()
{
  v1 = v0;
  v2 = type metadata accessor for LinkDestination();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for ButtonAction();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of ButtonAction(v1, v7, type metadata accessor for ButtonAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of LinkDestination(v7, v4);
      type metadata accessor for MainActor();
      v9 = static Semantics.v7.getter();
      MEMORY[0x1EEE9AC00](v9);
      v15 = 812;
      v16 = MEMORY[0x1E69E7CA8] + 8;
      static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
      _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_4(v4, MEMORY[0x1E697E828]);
    }

    else
    {
      v13 = *(v7 + 1);
      v18 = *v7;
      v19 = v13;
      v20 = *(v7 + 2);
      type metadata accessor for MainActor();
      v14 = static Semantics.v7.getter();
      MEMORY[0x1EEE9AC00](v14);
      static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
      v21 = v18;
      v22 = v19;
      _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_4(&v21, type metadata accessor for Environment<AppIntentExecutor?>);
    }
  }

  else
  {
    v11 = *v7;
    v10 = *(v7 + 1);
    v12 = type metadata accessor for MainActor();
    MEMORY[0x1EEE9AC00](v12);
    v15 = v11;
    v16 = v10;
    specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #1 in closure #2 in UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:), &v17[-32]);
  }
}

uint64_t Button.init(destination:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 4;
  v6 = type metadata accessor for Button();
  outlined init with copy of ButtonAction(a1, &a3[*(v6 + 36)], MEMORY[0x1E697E828]);
  type metadata accessor for ButtonAction();
  v7 = swift_storeEnumTagMultiPayload();
  a2(v7);
  return _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_4(a1, MEMORY[0x1E697E828]);
}

__n128 Button.init<>(_:action:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  *a4 = 4;
  type metadata accessor for Button<Label<Text, Image>>();
  v12 = v11;
  v13 = &a4[*(v11 + 36)];
  *v13 = a2;
  v13[1] = a3;
  type metadata accessor for ButtonAction();
  v16 = *(a1 + 3);
  swift_storeEnumTagMultiPayload();
  v14 = &a4[*(v12 + 40)];
  *v14 = v8;
  *(v14 + 1) = v9;
  v14[16] = v10;
  result = v16;
  *(v14 + 24) = v16;
  return result;
}

uint64_t closure #1 in Button.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for StaticIf();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  type metadata accessor for Button();
  v17 = 0;
  View.defaultButtonScrollEdgeEffectTag(style:)();
  v11 = lazy protocol witness table accessor for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature();
  v16[3] = a3;
  v16[4] = &protocol witness table for ScrollEdgeEffectTagModifier;
  WitnessTable = swift_getWitnessTable();
  v16[0] = v11;
  v16[1] = WitnessTable;
  v16[2] = a3;
  v13 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v7, v4, v13);
  v14 = *(v5 + 8);
  v14(v7, v4);
  static ViewBuilder.buildExpression<A>(_:)(v10, v4, v13);
  return (v14)(v10, v4);
}

uint64_t Button<>.init(_:action:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, _BYTE *a3@<X8>)
{
  *a3 = 4;
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_7(0, &lazy cache variable for type metadata for Button<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Button);
  v7 = v6;
  v8 = &a3[*(v6 + 36)];
  *v8 = a1;
  v8[1] = a2;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  v9 = &a3[*(v7 + 40)];
  result = Text.init(_:tableName:bundle:comment:)();
  *v9 = result;
  *(v9 + 1) = v11;
  v9[16] = v12 & 1;
  *(v9 + 3) = v13;
  return result;
}

uint64_t Button<>.init(_:image:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v37 = a2;
  v38 = a5;
  v34 = a4;
  v35 = a1;
  LODWORD(v36) = a3;
  v11 = type metadata accessor for ImageResource();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v32 - v15;
  *a8 = 4;
  type metadata accessor for Button<Label<Text, Image>>();
  v18 = v17;
  v19 = &a8[*(v17 + 36)];
  *v19 = a6;
  v19[1] = a7;
  v32[1] = a7;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  v20 = &a8[*(v18 + 40)];
  v21 = *(v12 + 16);
  v21(v16, v38, v11);

  v22 = Text.init(_:tableName:bundle:comment:)();
  v36 = v23;
  v25 = v24;
  v39 = v26 & 1;
  v21(v33, v16, v11);
  v27 = Image.init(_:)();
  v28 = *(v12 + 8);
  v28(v16, v11);

  v29 = v39;
  v30 = v36;
  *v20 = v22;
  *(v20 + 1) = v30;
  v20[16] = v29;
  *(v20 + 3) = v25;
  *(v20 + 4) = v27;
  return (v28)(v38, v11);
}

uint64_t Button<>.init<A>(_:image:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = 4;
  type metadata accessor for Button<Label<Text, Image>>();
  v13 = v12;
  v14 = &a6[*(v12 + 36)];
  *v14 = a3;
  v14[1] = a4;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  closure #1 in Button<>.init<A>(_:image:action:)(a1, a2, a5, &a6[*(v13 + 40)]);
  v15 = type metadata accessor for ImageResource();
  (*(*(v15 - 8) + 8))(a2, v15);
  v16 = *(*(a5 - 8) + 8);

  return v16(a1, a5);
}

uint64_t Button<>.init(_:role:action:)@<X0>(_BYTE *a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_7(0, &lazy cache variable for type metadata for Button<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Button);
  v8 = v7;
  v9 = &a4[*(v7 + 36)];
  *v9 = a2;
  v9[1] = a3;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  v10 = &a4[*(v8 + 40)];
  result = Text.init(_:tableName:bundle:comment:)();
  *v10 = result;
  *(v10 + 1) = v12;
  v10[16] = v13 & 1;
  *(v10 + 3) = v14;
  return result;
}

uint64_t Button<>.init<A>(_:role:action:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = *a2;
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_7(0, &lazy cache variable for type metadata for Button<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Button);
  v12 = v11;
  v13 = &a6[*(v11 + 36)];
  *v13 = a3;
  v13[1] = a4;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  closure #1 in Button<>.init<A>(_:action:)(a1, &a6[*(v12 + 40)]);
  v14 = *(*(a5 - 8) + 8);

  return v14(a1, a5);
}

uint64_t Button<>.init(_:image:role:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v39 = a2;
  v40 = a5;
  v36 = a4;
  v37 = a1;
  LODWORD(v38) = a3;
  v13 = type metadata accessor for ImageResource();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v35 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v34 - v17;
  *a9 = *a6;
  type metadata accessor for Button<Label<Text, Image>>();
  v20 = v19;
  v21 = &a9[*(v19 + 36)];
  *v21 = a7;
  v21[1] = a8;
  v34[1] = a8;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  v22 = &a9[*(v20 + 40)];
  v23 = *(v14 + 16);
  v23(v18, v40, v13);

  v24 = Text.init(_:tableName:bundle:comment:)();
  v38 = v25;
  v27 = v26;
  v41 = v28 & 1;
  v23(v35, v18, v13);
  v29 = Image.init(_:)();
  v30 = *(v14 + 8);
  v30(v18, v13);

  v31 = v41;
  v32 = v38;
  *v22 = v24;
  *(v22 + 1) = v32;
  v22[16] = v31;
  *(v22 + 3) = v27;
  *(v22 + 4) = v29;
  return (v30)(v40, v13);
}

uint64_t Button<>.init<A>(_:image:role:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = *a3;
  type metadata accessor for Button<Label<Text, Image>>();
  v14 = v13;
  v15 = &a7[*(v13 + 36)];
  *v15 = a4;
  v15[1] = a5;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  closure #1 in Button<>.init<A>(_:image:action:)(a1, a2, a6, &a7[*(v14 + 40)]);
  v16 = type metadata accessor for ImageResource();
  (*(*(v16 - 8) + 8))(a2, v16);
  v17 = *(*(a6 - 8) + 8);

  return v17(a1, a6);
}

double closure #1 in Button<>.init<A>(_:image:action:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ImageResource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1, a3, v13);
  (*(v9 + 16))(v11, a2, v8);
  Label<>.init<A>(_:image:)(v15, v11, a3, &v20);
  v17 = v21;
  result = *&v20;
  v19 = v22;
  *a4 = v20;
  *(a4 + 16) = v17;
  *(a4 + 24) = v19;
  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultButtonLabel and conformance DefaultButtonLabel()
{
  result = lazy protocol witness table cache variable for type DefaultButtonLabel and conformance DefaultButtonLabel;
  if (!lazy protocol witness table cache variable for type DefaultButtonLabel and conformance DefaultButtonLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultButtonLabel and conformance DefaultButtonLabel);
  }

  return result;
}

uint64_t Button<>.init(role:action:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *a1;
  *a4 = *a1;
  type metadata accessor for Button<DefaultButtonLabel>(0, &lazy cache variable for type metadata for Button<DefaultButtonLabel>, lazy protocol witness table accessor for type DefaultButtonLabel and conformance DefaultButtonLabel, &type metadata for DefaultButtonLabel, type metadata accessor for Button);
  v9 = v8;
  v10 = &a4[*(v8 + 36)];
  *v10 = a2;
  *(v10 + 1) = a3;
  type metadata accessor for ButtonAction();
  result = swift_storeEnumTagMultiPayload();
  a4[*(v9 + 40)] = v7;
  return result;
}

uint64_t Button.init(role:lnAction:perform:label:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, _BYTE *a6@<X8>)
{
  v11 = *a1;
  KeyPath = swift_getKeyPath();
  *a6 = v11;
  v13 = &a6[*(type metadata accessor for Button() + 36)];
  *v13 = KeyPath;
  *(v13 + 1) = 0;
  v13[16] = 0;
  *(v13 + 3) = a2;
  *(v13 + 4) = a3;
  *(v13 + 5) = a4;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  v14 = a2;

  a5(v15);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsDefaultButtonLabel()
{
  lazy protocol witness table accessor for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t DefaultButtonLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = *v1;
  v3 = v20;
  DefaultButtonLabel.contents.getter(v15);
  v4 = v15[0];
  v5 = v15[1];
  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v19;

  outlined copy of Text.Storage(v4, v5, v6);
  specialized Image.init(systemName:)(v8, v9);
  v11 = v10;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    goto LABEL_8;
  }

  if (v3)
  {
    v13 = 1;
LABEL_8:
    v12 = (v13 << 8) | 1;
    goto LABEL_9;
  }

  v12 = 2;
LABEL_9:
  outlined consume of Text.Storage(v4, v5, v6);

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v11;
  *(a1 + 40) = 0;
  *(a1 + 48) = v12;
  return result;
}

uint64_t DefaultButtonLabel.contents.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      LocalizedStringKey.init(stringLiteral:)();
      v3 = 0xE90000000000006BLL;
      v4 = 0x72616D6B63656863;
      goto LABEL_9;
    }

    v3 = 0xE500000000000000;
    LocalizedStringKey.init(stringLiteral:)();
LABEL_8:
    v4 = 0x6B72616D78;
    goto LABEL_9;
  }

  if (*v1)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v3 = 0xE500000000000000;
    goto LABEL_8;
  }

  LocalizedStringKey.init(stringLiteral:)();
  v3 = 0xE500000000000000;
  v4 = 0x6873617274;
LABEL_9:
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for Button(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8;
  v10 = v8 | 7;
  v11 = *(v7 + 64);
  v12 = v11 + ((v9 + 75) & ~v9);
  if ((v12 + 1) > 0x30)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 48;
  }

  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = (*(v15 + 80) | v8) & 0x100000;
  if ((v10 | v16) == 7 && v17 == 0 && ((((-2 - v10) | v10) + ~v13 - v16) | v16) - *(v15 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v21 = a1 & 0xFFFFFFFFFFFFFFF8;
    v22 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 8);
    v23 = a2 & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 8);
    v25 = *(v23 + 8 + v13);
    v26 = v25 - 3;
    if (v25 < 3)
    {
      goto LABEL_28;
    }

    if (v13 <= 3)
    {
      v27 = v13;
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = *v24;
        if (v13 >= 4)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v27 == 3)
        {
          v28 = *(v23 + 8) | (*(v23 + 10) << 16);
          if (v13 < 4)
          {
            goto LABEL_27;
          }

LABEL_25:
          v25 = v28 + 3;
          goto LABEL_28;
        }

        v28 = *v24;
        if (v13 >= 4)
        {
          goto LABEL_25;
        }
      }

LABEL_27:
      v25 = (v28 | (v26 << (8 * v13))) + 3;
LABEL_28:
      if (v25 == 2)
      {
        v38 = *v24;
        v39 = *(v24 + 1);
        v40 = *(v24 + 16);
        outlined copy of Environment<AppIntentExecutor?>.Content(*v24, v39, v40);
        *v22 = v38;
        *((a1 & 0xFFFFFFFFFFFFFFF8) + 16) = v39;
        *((a1 & 0xFFFFFFFFFFFFFFF8) + 24) = v40;
        v41 = *(v24 + 3);
        *((a1 & 0xFFFFFFFFFFFFFFF8) + 32) = v41;
        v42 = *(v24 + 5);
        *((a1 & 0xFFFFFFFFFFFFFFF8) + 40) = *(v24 + 4);
        *((a1 & 0xFFFFFFFFFFFFFFF8) + 48) = v42;
        *(v22 + v13) = 2;
        v43 = v41;
      }

      else
      {
        if (v25 == 1)
        {
          v48 = *(v23 + 16);
          v50 = *(v23 + 8);
          v46 = *(v23 + 24);
          v56 = v14;
          v29 = *(v23 + 32);
          v51 = *(v23 + 42);
          v30 = *(v23 + 40);
          v54 = v11;
          v55 = v6;
          v53 = v7;
          outlined copy of Environment<OpenURLAction>.Content(v50, v48, v46, v29, v30, v51);
          *(v21 + 8) = v50;
          *(v21 + 16) = v48;
          *(v21 + 24) = v46;
          *(v21 + 32) = v29;
          *(v21 + 40) = v30;
          *(v21 + 42) = v51;
          v31 = (v21 + 50) & 0xFFFFFFFFFFFFFFF8;
          v32 = (v23 + 50) & 0xFFFFFFFFFFFFFFF8;
          v33 = *(v32 + 8);
          v34 = *(v32 + 24);
          v47 = *(v32 + 16);
          v49 = *v32;
          v52 = *(v32 + 34);
          LOWORD(v50) = *(v32 + 32);
          outlined copy of Environment<OpenURLAction>.Content(*v32, v33, v47, v34, v50, v52);
          *v31 = v49;
          *(v31 + 8) = v33;
          *(v31 + 16) = v47;
          *(v31 + 24) = v34;
          v22 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 8);
          v14 = v56;
          v35 = v32 + v9;
          *(v31 + 32) = v50;
          *(v31 + 34) = v52;
          v36 = (v31 + v9 + 35) & ~v9;
          v37 = (v35 + 35) & ~v9;
          (*(v53 + 16))(v36, v37, v55);
          *(v36 + v54) = *(v37 + v54);
          *(v22 + v13) = 1;
LABEL_34:
          (*(v15 + 16))((v22 + v13 + v16 + 1) & ~v16, (v24 + v13 + v16 + 1) & ~v16, v14);
          return a1;
        }

        v44 = *(v23 + 16);
        *v22 = *v24;
        *((a1 & 0xFFFFFFFFFFFFFFF8) + 16) = v44;
        *(v22 + v13) = 0;
      }

      goto LABEL_34;
    }

    if (!v27)
    {
      goto LABEL_28;
    }

    v28 = *v24;
    if (v13 < 4)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v20 = *a2;
  *a1 = *a2;
  a1 = v20 + (((v10 | v16) + 16) & ~(v10 | v16));

  return a1;
}

_BYTE *assignWithTake for Button(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v9 | 7) + 1;
  v11 = (&a1[v10] & ~(v9 | 7));
  v12 = (&a2[v10] & ~(v9 | 7));
  if (v11 == v12)
  {
    v13 = ((v9 + 75) & ~v9) + *(v7 + 64);
    if ((v13 + 1) > 0x30)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 48;
    }

    goto LABEL_47;
  }

  v15 = v6;
  v16 = ((v9 + 75) & ~v9) + *(v7 + 64);
  if ((v16 + 1) > 0x30)
  {
    v14 = v16 + 1;
  }

  else
  {
    v14 = 48;
  }

  v17 = v11[v14];
  v18 = v17 - 3;
  if (v17 >= 3)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        goto LABEL_22;
      }

      v20 = *v11;
    }

    else if (v19 == 2)
    {
      v20 = *v11;
    }

    else if (v19 == 3)
    {
      v20 = *v11 | (v11[2] << 16);
    }

    else
    {
      v20 = *v11;
    }

    v21 = (v20 | (v18 << (8 * v14))) + 3;
    v17 = v20 + 3;
    if (v14 < 4)
    {
      v17 = v21;
    }
  }

LABEL_22:
  v22 = ~v9;
  v42 = *(v7 + 64);
  if (v17 == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v11, *(v11 + 1), v11[16]);
  }

  else if (v17 == 1)
  {
    outlined consume of Environment<OpenURLAction>.Content(*v11, *(v11 + 1), *(v11 + 2), *(v11 + 3), *(v11 + 16), v11[34]);
    v23 = (v11 + 42) & 0xFFFFFFFFFFFFFFF8;
    outlined consume of Environment<OpenURLAction>.Content(*v23, *(v23 + 8), *(v23 + 16), *(v23 + 24), *(v23 + 32), *(v23 + 34));
    (*(v8 + 8))((v9 + v23 + 35) & v22, v15);
    goto LABEL_27;
  }

LABEL_27:
  v24 = v12[v14];
  v25 = v24 - 3;
  if (v24 >= 3)
  {
    if (v14 <= 3)
    {
      v26 = v14;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *v12;
      }

      else if (v26 == 3)
      {
        v27 = *v12 | (v12[2] << 16);
      }

      else
      {
        v27 = *v12;
      }

LABEL_39:
      v28 = (v27 | (v25 << (8 * v14))) + 3;
      v24 = v27 + 3;
      if (v14 < 4)
      {
        v24 = v28;
      }

      goto LABEL_41;
    }

    if (v26)
    {
      v27 = *v12;
      goto LABEL_39;
    }
  }

LABEL_41:
  if (v24 == 2)
  {
    v38 = *v12;
    v39 = *(v12 + 2);
    *(v11 + 1) = *(v12 + 1);
    *(v11 + 2) = v39;
    *v11 = v38;
    v37 = 2;
  }

  else
  {
    if (v24 != 1)
    {
      *v11 = *v12;
      v11[v14] = 0;
      goto LABEL_47;
    }

    v29 = *v12;
    v30 = *(v12 + 1);
    *(v11 + 31) = *(v12 + 31);
    *v11 = v29;
    *(v11 + 1) = v30;
    v31 = (v11 + 42) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v12 + 42) & 0xFFFFFFFFFFFFFFF8;
    v33 = *v32;
    v34 = *(v32 + 16);
    *(v31 + 31) = *(v32 + 31);
    *v31 = v33;
    *(v31 + 16) = v34;
    v35 = (v9 + 35 + v31) & v22;
    v36 = (v9 + 35 + v32) & v22;
    (*(v8 + 32))(v35, v36, v15);
    *(v42 + v35) = *(v42 + v36);
    v37 = 1;
  }

  v11[v14] = v37;
LABEL_47:
  v40 = *(*(a3 + 16) - 8);
  (*(v40 + 40))(&v11[v14 + 1 + *(v40 + 80)] & ~*(v40 + 80), &v12[v14 + 1 + *(v40 + 80)] & ~*(v40 + 80));
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>();
    lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>, lazy protocol witness table accessor for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>();
    type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>)
  {
    type metadata accessor for Label<Text, Image>();
    type metadata accessor for Button<DefaultButtonLabel>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsDefaultButtonLabel>, lazy protocol witness table accessor for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel, &type metadata for IsDefaultButtonLabel, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>);
    }
  }
}

void type metadata accessor for Button<DefaultButtonLabel>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>>();
    _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_4(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, type metadata accessor for Label<Text, Image>);
    lazy protocol witness table accessor for type ViewInputFlagModifier<IsDefaultButtonLabel> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, ViewInputFlagModifier<IsDefaultButtonLabel>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<IsDefaultButtonLabel> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<IsDefaultButtonLabel> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<IsDefaultButtonLabel> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for Button<DefaultButtonLabel>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsDefaultButtonLabel>, lazy protocol witness table accessor for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel, &type metadata for IsDefaultButtonLabel, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<IsDefaultButtonLabel> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t initializeBufferWithCopyOfBuffer for ButtonAction(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    a1 = v24 + ((v5 + 16) & ~v5);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v25 = *a2;
      v26 = *(a2 + 8);
      v27 = *(a2 + 16);
      outlined copy of Environment<AppIntentExecutor?>.Content(*a2, v26, v27);
      *a1 = v25;
      *(a1 + 8) = v26;
      *(a1 + 16) = v27;
      v28 = *(a2 + 40);
      v29 = *(a2 + 24);
      *(a1 + 24) = v29;
      *(a1 + 40) = v28;
      v30 = v29;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v7 = *a2;
      v8 = *(a2 + 8);
      v9 = *(a2 + 16);
      v10 = *(a2 + 24);
      v11 = *(a2 + 34);
      v12 = *(a2 + 32);
      outlined copy of Environment<OpenURLAction>.Content(*a2, v8, v9, v10, v12, v11);
      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      *(a1 + 24) = v10;
      *(a1 + 32) = v12;
      *(a1 + 34) = v11;
      v13 = *(a2 + 40);
      v14 = *(a2 + 48);
      v15 = *(a2 + 56);
      v16 = *(a2 + 64);
      v17 = *(a2 + 74);
      v18 = *(a2 + 72);
      outlined copy of Environment<OpenURLAction>.Content(v13, v14, v15, v16, v18, v17);
      *(a1 + 40) = v13;
      *(a1 + 48) = v14;
      *(a1 + 56) = v15;
      *(a1 + 64) = v16;
      *(a1 + 72) = v18;
      *(a1 + 74) = v17;
      v19 = *(type metadata accessor for LinkDestination() + 24);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = type metadata accessor for URL();
      (*(*(v22 - 8) + 16))(v20, v21, v22);
      v23 = type metadata accessor for LinkDestination.Configuration();
      *(v20 + *(v23 + 20)) = *(v21 + *(v23 + 20));
    }

    else
    {
      v31 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v31;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t assignWithCopy for ButtonAction(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_4(a1, type metadata accessor for ButtonAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v22 = *a2;
      v23 = *(a2 + 8);
      v24 = *(a2 + 16);
      outlined copy of Environment<AppIntentExecutor?>.Content(*a2, v23, v24);
      *a1 = v22;
      *(a1 + 8) = v23;
      *(a1 + 16) = v24;
      v25 = *(a2 + 24);
      *(a1 + 24) = v25;
      v26 = *(a2 + 32);
      v27 = *(a2 + 40);
      *(a1 + 32) = v26;
      *(a1 + 40) = v27;
      v28 = v25;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      v8 = *(a2 + 24);
      v9 = *(a2 + 34);
      v10 = *(a2 + 32);
      outlined copy of Environment<OpenURLAction>.Content(*a2, v6, v7, v8, v10, v9);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      *(a1 + 24) = v8;
      *(a1 + 32) = v10;
      *(a1 + 34) = v9;
      v11 = *(a2 + 40);
      v12 = *(a2 + 48);
      v13 = *(a2 + 56);
      v14 = *(a2 + 64);
      v15 = *(a2 + 74);
      v16 = *(a2 + 72);
      outlined copy of Environment<OpenURLAction>.Content(v11, v12, v13, v14, v16, v15);
      *(a1 + 40) = v11;
      *(a1 + 48) = v12;
      *(a1 + 56) = v13;
      *(a1 + 64) = v14;
      *(a1 + 72) = v16;
      *(a1 + 74) = v15;
      v17 = *(type metadata accessor for LinkDestination() + 24);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = type metadata accessor for URL();
      (*(*(v20 - 8) + 16))(v18, v19, v20);
      v21 = type metadata accessor for LinkDestination.Configuration();
      *(v18 + *(v21 + 20)) = *(v19 + *(v21 + 20));
    }

    else
    {
      v29 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v29;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for ButtonAction(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    *(a1 + 31) = *(a2 + 31);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 71) = *(a2 + 71);
    v7 = *(type metadata accessor for LinkDestination() + 24);
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 32))(v8, v9, v10);
    v11 = type metadata accessor for LinkDestination.Configuration();
    v8[*(v11 + 20)] = v9[*(v11 + 20)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v13 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v13);
  }
}

char *assignWithTake for ButtonAction(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_4(a1, type metadata accessor for ButtonAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    *(a1 + 31) = *(a2 + 31);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 71) = *(a2 + 71);
    v7 = *(type metadata accessor for LinkDestination() + 24);
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 32))(v8, v9, v10);
    v11 = type metadata accessor for LinkDestination.Configuration();
    v8[*(v11 + 20)] = v9[*(v11 + 20)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t type metadata accessor for TestableSubgraph()
{
  result = type metadata singleton initialization cache for TestableSubgraph;
  if (!type metadata singleton initialization cache for TestableSubgraph)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in View.withChildrenForTest<A>(environment:options:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v13[0] = a2;
  *(&v13[0] + 1) = a3;
  v15 = a4;

  specialized TestableViewContent.init(_:environment:options:)(a1, v13, &v15, a7, a9, v14);
  type metadata accessor for TestableViewContent();
  TestableViewContent.children.getter(v13);
  a5(v13);

  return outlined destroy of _VariadicView_Children(v13);
}

uint64_t TestableViewContent.children.getter@<X0>(void *a1@<X8>)
{
  TestableViewContent.list.getter();
  v3 = *(*(v1 + 24) + 16);
  result = default argument 2 of _VariadicView_Children.init(_:contentSubgraph:transform:)();
  a1[5] = v3;
  a1[6] = v5;
  a1[7] = v6;
  return result;
}

uint64_t closure #1 in TestableViewContent.init(_:environment:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v21 = a4;
  v12 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in Attribute.init(value:), v20, v7, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  LODWORD(a1) = v28[0];
  v14 = *(a2 + 16);
  swift_beginAccess();
  v15 = *(v14 + 88);
  v29[0] = *(v14 + 72);
  v29[1] = v15;
  v29[2] = *(v14 + 104);
  v16 = *(v14 + 88);
  v22 = *(v14 + 72);
  v23 = v16;
  v24 = *(v14 + 104);
  *&v30[0] = a3;
  outlined init with copy of _GraphInputs(v29, v28);
  _ViewListInputs.init(_:options:)();
  _GraphValue.init(_:)();
  static View.makeDebuggableViewList(view:inputs:)();
  v22 = 0uLL;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type TransactionWrapper and conformance TransactionWrapper();
  LODWORD(a3) = Attribute.init<A>(body:value:flags:update:)();
  outlined init with copy of _ViewListInputs(v28, &v22);
  _ViewListCountInputs.init(_:)();
  v24 = v30[2];
  v25 = v30[3];
  v26 = v30[4];
  v22 = v30[0];
  v23 = v30[1];
  v17 = (*(a5 + 40))(&v22, v7, a5);
  LOBYTE(v14) = v18;
  *a6 = a1;
  LODWORD(v7) = _ViewListOutputs.makeAttribute(inputs:)();
  outlined destroy of _ViewListCountInputs(v30);
  outlined destroy of _ViewListOutputs(v27);
  result = outlined destroy of _ViewListInputs(v28);
  *(a6 + 4) = v7;
  *(a6 + 8) = a3;
  *(a6 + 12) = 0;
  *(a6 + 16) = v17;
  *(a6 + 24) = v14 & 1;
  return result;
}

uint64_t TestableViewContent.list.getter()
{
  type metadata accessor for ViewList();
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value, v2);
  _ViewList_Subgraph.wrapping(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t TransactionWrapper.updateValue()()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  if (!*v0)
  {
LABEL_5:
    __break(1u);
  }

  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_5;
  }

  TransactionID.init<A>(context:)();
  v1(v4, &v3);
  AGGraphSetOutputValue();
  __swift_destroy_boxed_opaque_existential_1(v4);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v1);
  *v0 = 0;
  *(v0 + 8) = 0;
  return result;
}

void specialized TestableViewContent.init(_:environment:options:)(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v22 = *a2;
  type metadata accessor for EmptyViewRendererHost();
  swift_allocObject();
  v11 = EmptyViewRendererHost.init(environment:)();
  v12 = *(v11 + 16);
  swift_beginAccess();
  if (*(v12 + 16))
  {
    v13 = AGSubgraphCreate();
    type metadata accessor for TestableSubgraph();
    v14 = swift_allocObject();
    *(v14 + 32) = v11;
    *(v14 + 24) = 1;
    *(v14 + 16) = v13;
    swift_beginAccess();

    AGSubgraphAddChild();
    v15 = v13;
    AGGraphClearUpdate();
    v16 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in TestableViewContent.init(_:environment:options:)(a1, v11, v10, a4, a5, &v22);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    v17 = DWORD2(v22);
    v18 = BYTE12(v22);
    v19 = v23;
    v20 = v24;
    v21 = v22;
    LOBYTE(v22) = BYTE12(v22);
    v25 = v24;
    *a6 = v21;
    *(a6 + 8) = v17;
    *(a6 + 12) = v18;
    *(a6 + 16) = v11;
    *(a6 + 24) = v14;
    *(a6 + 32) = v19;
    *(a6 + 40) = v20;
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type TransactionWrapper and conformance TransactionWrapper()
{
  result = lazy protocol witness table cache variable for type TransactionWrapper and conformance TransactionWrapper;
  if (!lazy protocol witness table cache variable for type TransactionWrapper and conformance TransactionWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionWrapper and conformance TransactionWrapper);
  }

  return result;
}

uint64_t initializeWithCopy for TestableViewContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for TestableViewContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v5 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  return a1;
}

uint64_t assignWithTake for TestableViewContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for TestableViewContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for TestableViewContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PushDestination.init(destination:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static PushDestination._makeDestinations(content:inputs:resolved:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  type metadata accessor for PushDestination();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  closure #1 in static PushDestination._makeDestinations(content:inputs:resolved:)(1, a4, a5, a6, a7);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  Destination = type metadata accessor for PushDestination.MakeDestination();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<NavigationDestinationResolverBase>(0, &lazy cache variable for type metadata for Attribute<NavigationDestinationResolverBase>, type metadata accessor for NavigationDestinationResolverBase, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&OffsetAttribute2, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_39, v23, Destination, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  v15 = AGCreateWeakAttribute();
  v26 = v11;
  LODWORD(v27) = v12;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = v15;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t closure #1 in static PushDestination._makeDestinations(content:inputs:resolved:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v9[2] = type metadata accessor for PushDestination();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, FunctionTypeMetadata1, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11;
}

uint64_t implicit closure #1 in static PushDestination._makeDestinations(content:inputs:resolved:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v10 = type metadata accessor for PushDestination.PreferenceTransform();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<NavigationDestinationResolverBase>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, closure #1 in Attribute.init<A>(_:)partial apply, v9, v10, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v12;
}

uint64_t PushDestination.MakeDestination.value.getter()
{
  type metadata accessor for NavigationDestinationResolver();
  swift_getFunctionTypeMetadata1();
  Value = AGGraphGetValue();
  v1 = NavigationDestinationResolver.__allocating_init(transform:)(*Value, Value[1]);

  return v1;
}

uint64_t PushDestination.PreferenceTransform.destination.getter()
{
  type metadata accessor for NavigationDestinationResolverBase();
  result = AGGraphGetWeakValue();
  if (result)
  {
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance PushDestination<A, B>.MakeDestination@<X0>(uint64_t *a1@<X8>)
{
  result = PushDestination.MakeDestination.value.getter();
  *a1 = result;
  return result;
}

uint64_t (*PushDestination.PreferenceTransform.value.getter())(uint64_t a1)
{
  v0 = PushDestination.PreferenceTransform.destination.getter();
  *(swift_allocObject() + 16) = v0;
  return partial apply for closure #1 in PushDestination.PreferenceTransform.value.getter;
}

uint64_t closure #1 in PushDestination.PreferenceTransform.value.getter(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;

    MEMORY[0x18D00CC30](v3);
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance PushDestination<A, B>.PreferenceTransform@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v2 = PushDestination.PreferenceTransform.value.getter();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
  a1[1] = result;
  return result;
}

void type metadata accessor for Attribute<NavigationDestinationResolverBase>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v13 = v8;
      v14 = v9;
      outlined copy of ResponderBasedHitTestTracing(v8, v9);
      v10 = a1(&v13);
      outlined consume of ResponderBasedHitTestTracing(v8, v9);
      if (v3)
      {
        break;
      }

      v7 += 16;
      v11 = v6-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;

      v10 = a1(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

{
  v17 = a1;
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = (a3 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 8);
      v10 = *v6;
      v14[0] = v7;
      v14[1] = v8;
      v15 = v9;
      v16 = v10;
      outlined copy of Text.Storage(v7, v8, v9);

      v11 = v17(v14);
      outlined consume of Text.Storage(v7, v8, v9);

      if (v3)
      {
        break;
      }

      v12 = v5-- == 0;
      v6 += 4;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  type metadata accessor for (AnyToken?, Range<AttributedString.Index>)();
  v30 = v3;
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _ContiguousArrayStorage<Range<Int>>(0, &lazy cache variable for type metadata for (AnyToken?, Range<AttributedString.Index>)?, type metadata accessor for (AnyToken?, Range<AttributedString.Index>), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v25 - v7;
  v25[0] = MEMORY[0x1E6968768];
  _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_1(0, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.AnyTokenAttribute, MEMORY[0x1E6968768]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v25 - v12;
  v14 = MEMORY[0x1E6968758];
  _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_1(0, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>.Iterator, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.AnyTokenAttribute, MEMORY[0x1E6968758]);
  v16 = v15;
  v26 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v25 - v18;
  (*(v11 + 16))(v13, v25[1], v10, v17);
  lazy protocol witness table accessor for type AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>.Iterator and conformance AttributedString.Runs.AttributesSlice1<A>.Iterator(&lazy protocol witness table cache variable for type AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute> and conformance AttributedString.Runs.AttributesSlice1<A>, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>, v25[0]);
  dispatch thunk of Sequence.makeIterator()();
  lazy protocol witness table accessor for type AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>.Iterator and conformance AttributedString.Runs.AttributesSlice1<A>.Iterator(&lazy protocol witness table cache variable for type AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>.Iterator and conformance AttributedString.Runs.AttributesSlice1<A>.Iterator, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>.Iterator, v14);
  v20 = (v27 + 48);
  do
  {
    dispatch thunk of IteratorProtocol.next()();
    v21 = (*v20)(v8, 1, v30);
    if (v21 == 1)
    {
      break;
    }

    outlined init with take of (AnyToken?, Range<AttributedString.Index>)(v8, v5);
    v22 = v28(v5);
    if (v2)
    {
      outlined destroy of (AnyToken?, Range<AttributedString.Index>)(v5, type metadata accessor for (AnyToken?, Range<AttributedString.Index>));
      break;
    }

    v23 = v22;
    outlined destroy of (AnyToken?, Range<AttributedString.Index>)(v5, type metadata accessor for (AnyToken?, Range<AttributedString.Index>));
  }

  while ((v23 & 1) == 0);
  (*(v26 + 8))(v19, v16);
  return v21 != 1;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 56;
    do
    {
      v3 = *(v2 - 24);
      v4 = *(v2 - 16);
      v5 = *(v2 - 8);

      outlined copy of Text.Storage(v3, v4, v5);
      v6 = AccessibilityProperties.label.modify();
      if (*v7)
      {
        AccessibilityLabelStorage.removing(_:)();
      }

      v6(v8, 0);
      outlined consume of Text.Storage(v3, v4, v5);

      v2 += 32;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t AccessibilityChildBehavior.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessibilityChildBehaviorBox();
  (*(v6 + 16))(v8, a1, a2);
  v9 = AccessibilityChildBehaviorBox.__allocating_init(_:)(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t AccessibilityChildBehaviorBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 136) - 8) + 32))(v2 + *(*v2 + 152), a1);
  return v2;
}

Swift::Int AccessibilityChildBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 112))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityChildBehavior()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 112))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityChildBehavior()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 112))(v3);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehavior and conformance AccessibilityChildBehavior()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior and conformance AccessibilityChildBehavior;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior and conformance AccessibilityChildBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior and conformance AccessibilityChildBehavior);
  }

  return result;
}

uint64_t one-time initialization function for automation()
{
  _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_1(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Automation>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation, &type metadata for AccessibilityChildBehavior.Automation, type metadata accessor for AccessibilityChildBehaviorBox);
  result = swift_allocObject();
  static AccessibilityChildBehavior.automation = result;
  return result;
}

uint64_t protocol witness for AccessibilityChildBehaviorProvider.initialAttachment(for:) in conformance AccessibilityChildBehavior.Ignore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AccessibilityProperties.init()();
  v6[14] = a4;
  v7 = 0;
  static AccessibilityAttachment.properties(_:)();
  return outlined destroy of AccessibilityProperties(v6);
}

uint64_t protocol witness for AccessibilityChildBehaviorProvider.initialAttachment(for:) in conformance AccessibilityChildBehavior.Contain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AccessibilityProperties.init()();
  v8 = a4;
  v9 = 0;
  outlined init with copy of AccessibilityProperties(v7, &v6);
  AccessibilityAttachment.init(properties:)();
  return outlined destroy of AccessibilityProperties(v7);
}

uint64_t AccessibilityChildBehavior.Automatic.initialAttachment(for:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter() == 1)
    {
      goto LABEL_4;
    }

    if (!__CocoaSet.count.getter())
    {
      v3 = 0x100000001;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    v3 = 0x100000001;
LABEL_11:
    AccessibilityProperties.init()();
    v4[14] = v3;
    v5 = 0;
    static AccessibilityAttachment.properties(_:)();
    return outlined destroy of AccessibilityProperties(v4);
  }

  if (v1 != 1)
  {
LABEL_10:
    v3 = 0x300000003;
    goto LABEL_11;
  }

LABEL_4:

  return AccessibilityAttachment.init()();
}

BOOL protocol witness for AccessibilityChildBehaviorProvider.willCreateNode(for:) in conformance AccessibilityChildBehavior.Automatic(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 != 1;
}

void protocol witness for AccessibilityChildBehaviorProvider.visibility(for:nodes:) in conformance AccessibilityChildBehavior.Ignore(unint64_t a1@<X1>, void *a2@<X8>)
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v6 = a1;
  v7 = __CocoaSet.count.getter();
  a1 = v6;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x18D00E9C0](0);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);
LABEL_6:
    v4 = v3;
    AccessibilityNode.visibility.getter(&v8);

    v5 = v8;
LABEL_9:
    *a2 = v5;
    return;
  }

  __break(1u);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned __int8 a5, char a6, char a7, uint64_t *a8)
{
  v142 = MEMORY[0x1E69E7CC0];
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v122 = a4;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v9 + 1 < v8)
      {
        v13 = *(*a3 + 8 * v12);
        v14 = 8 * v9;
        v15 = (*a3 + 8 * v9);
        v17 = *v15;
        v16 = v15 + 2;
        v141 = a5;
        v140 = a7;
        v18 = v13;
        v19 = v17;
        v20 = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v18, v19, &v141, a6 & 1, &v140, a8);

        v129 = v11;
        v21 = v11 + 2;
        while (v8 != v21)
        {
          v23 = *(v16 - 1);
          v22 = *v16;
          v141 = a5;
          v140 = a7;
          v24 = v22;
          v25 = v23;
          v26 = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v24, v25, &v141, a6 & 1, &v140, a8);

          ++v21;
          ++v16;
          if (v20 != v26)
          {
            v8 = v21 - 1;
            break;
          }
        }

        a4 = v122;
        v11 = v129;
        if (v20)
        {
          if (v8 < v129)
          {
            goto LABEL_142;
          }

          if (v129 < v8)
          {
            v27 = 8 * v8 - 8;
            v28 = v8;
            v29 = v129;
            do
            {
              if (v29 != --v28)
              {
                v30 = *a3;
                if (!*a3)
                {
                  goto LABEL_147;
                }

                v31 = *(v30 + v14);
                *(v30 + v14) = *(v30 + v27);
                *(v30 + v27) = v31;
              }

              ++v29;
              v27 -= 8;
              v14 += 8;
            }

            while (v29 < v28);
          }
        }

        v12 = v8;
      }

      v32 = a3[1];
      if (v12 < v32)
      {
        if (__OFSUB__(v12, v11))
        {
          goto LABEL_141;
        }

        if (v12 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_143;
          }

          if (v11 + a4 >= v32)
          {
            v33 = a3[1];
          }

          else
          {
            v33 = (v11 + a4);
          }

          if (v33 < v11)
          {
            goto LABEL_144;
          }

          if (v12 != v33)
          {
            v34 = *a3;
            v35 = v11;
            v36 = *a3 + 8 * v12 - 8;
            v130 = v35;
            v132 = v10;
            v37 = v35 - v12;
            __src = v33;
            do
            {
              v38 = v12;
              v39 = *(v34 + 8 * v12);
              v40 = v37;
              v41 = v36;
              do
              {
                v42 = *v41;
                v141 = a5;
                v140 = a7;
                v43 = v39;
                v44 = v42;
                v45 = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v43, v44, &v141, a6 & 1, &v140, a8);

                if (!v45)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_145;
                }

                v46 = *v41;
                v39 = *(v41 + 8);
                *v41 = v39;
                *(v41 + 8) = v46;
                v41 -= 8;
              }

              while (!__CFADD__(v40++, 1));
              v12 = v38 + 1;
              v36 += 8;
              --v37;
            }

            while ((v38 + 1) != __src);
            v12 = __src;
            v11 = v130;
            v10 = v132;
          }
        }
      }

      if (v12 < v11)
      {
        goto LABEL_140;
      }

      v123 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v49 = *(v10 + 2);
      v48 = *(v10 + 3);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v10);
      }

      *(v10 + 2) = v50;
      v51 = &v10[16 * v49];
      *(v51 + 4) = v11;
      *(v51 + 5) = v123;
      v142 = v10;
      v52 = *a1;
      if (!*a1)
      {
        goto LABEL_148;
      }

      if (v49)
      {
        break;
      }

LABEL_3:
      v8 = a3[1];
      a4 = v122;
      v9 = v123;
      if (v123 >= v8)
      {
        goto LABEL_124;
      }
    }

    __srca = *a1;
    while (1)
    {
      v53 = v50 - 1;
      if (v50 >= 4)
      {
        break;
      }

      if (v50 == 3)
      {
        v54 = *(v10 + 4);
        v55 = *(v10 + 5);
        v64 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        v57 = v64;
LABEL_57:
        if (v57)
        {
          goto LABEL_131;
        }

        v70 = &v10[16 * v50];
        v72 = *v70;
        v71 = *(v70 + 1);
        v73 = __OFSUB__(v71, v72);
        v74 = v71 - v72;
        v75 = v73;
        if (v73)
        {
          goto LABEL_134;
        }

        v76 = &v10[16 * v53 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_137;
        }

        if (__OFADD__(v74, v79))
        {
          goto LABEL_138;
        }

        if (v74 + v79 >= v56)
        {
          if (v56 < v79)
          {
            v53 = v50 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_71;
      }

      v80 = &v10[16 * v50];
      v82 = *v80;
      v81 = *(v80 + 1);
      v64 = __OFSUB__(v81, v82);
      v74 = v81 - v82;
      v75 = v64;
LABEL_71:
      if (v75)
      {
        goto LABEL_133;
      }

      v83 = &v10[16 * v53];
      v85 = *(v83 + 4);
      v84 = *(v83 + 5);
      v64 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v64)
      {
        goto LABEL_136;
      }

      if (v86 < v74)
      {
        goto LABEL_3;
      }

LABEL_78:
      if (v53 - 1 >= v50)
      {
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        return;
      }

      v91 = *a3;
      if (!*a3)
      {
        goto LABEL_146;
      }

      v131 = v53;
      v133 = v10;
      v126 = v53 - 1;
      v92 = *&v10[16 * v53 + 16];
      v93 = *&v10[16 * v53 + 32];
      v127 = *&v10[16 * v53 + 40];
      v128 = v92;
      v94 = 8 * v92;
      v95 = (v91 + 8 * v92);
      v96 = 8 * v93;
      v97 = (v91 + 8 * v93);
      v98 = (v91 + 8 * v127);
      v99 = 8 * v93 - 8 * v92;
      v100 = 8 * v127 - 8 * v93;
      if (v99 >= v100)
      {
        if (v97 != v52 || v98 <= v52)
        {
          memmove(v52, (v91 + 8 * v93), 8 * v127 - 8 * v93);
        }

        v101 = &v52[v100];
        if (v100 < 1 || v96 <= v94)
        {
          v102 = __srca;
          v118 = v97;
        }

        else
        {
          do
          {
            __dst = v97;
            v110 = (v97 - 8);
            v98 -= 8;
            v111 = v101;
            while (1)
            {
              v112 = v98 + 8;
              v113 = *(v111 - 1);
              v111 -= 8;
              v97 = v110;
              v114 = *v110;
              v141 = a5;
              v140 = a7;
              v115 = v113;
              v116 = v114;
              v117 = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v115, v116, &v141, a6 & 1, &v140, a8);

              if (v117)
              {
                break;
              }

              if (v112 != v101)
              {
                *v98 = *v111;
              }

              v98 -= 8;
              v101 = v111;
              v110 = v97;
              if (v111 <= __srca)
              {
                v101 = v111;
                v102 = __srca;
                v118 = __dst;
                goto LABEL_115;
              }
            }

            v118 = v97;
            if (v112 != __dst)
            {
              *v98 = *v97;
            }

            v102 = __srca;
          }

          while (v101 > __srca && v95 < v97);
        }
      }

      else
      {
        if (v95 != v52 || v97 <= v52)
        {
          memmove(v52, (v91 + 8 * v92), 8 * v93 - 8 * v92);
        }

        v101 = &v52[v99];
        if (v99 >= 1 && 8 * v127 > v96)
        {
          v102 = __srca;
          while (1)
          {
            v103 = *v97;
            v104 = *v102;
            v141 = a5;
            v140 = a7;
            v105 = v103;
            v106 = v104;
            v107 = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v105, v106, &v141, a6 & 1, &v140, a8);

            if (!v107)
            {
              break;
            }

            v108 = v97;
            v109 = v95 == v97;
            v97 += 8;
            if (!v109)
            {
              goto LABEL_92;
            }

LABEL_93:
            v95 += 8;
            if (v102 >= v101 || v97 >= v98)
            {
              goto LABEL_112;
            }
          }

          v108 = v102;
          v109 = v95 == v102++;
          if (v109)
          {
            goto LABEL_93;
          }

LABEL_92:
          *v95 = *v108;
          goto LABEL_93;
        }

        v102 = __srca;
LABEL_112:
        v118 = v95;
      }

LABEL_115:
      if (v118 != v102 || v118 >= (v102 + ((v101 - v102 + (v101 - v102 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
      {
        memmove(v118, v102, 8 * ((v101 - v102) / 8));
      }

      v119 = v133;
      v52 = __srca;
      if (v127 < v128)
      {
        goto LABEL_127;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = specialized _ArrayBuffer._consumeAndCreateNew()(v133);
      }

      if (v131 > *(v119 + 2))
      {
        goto LABEL_128;
      }

      v120 = &v119[16 * v126];
      *(v120 + 4) = v128;
      *(v120 + 5) = v127;
      v142 = v119;
      specialized Array.remove(at:)(v131);
      v10 = v142;
      v50 = *(v142 + 2);
      if (v50 <= 1)
      {
        goto LABEL_3;
      }
    }

    v58 = &v10[16 * v50 + 32];
    v59 = *(v58 - 64);
    v60 = *(v58 - 56);
    v64 = __OFSUB__(v60, v59);
    v61 = v60 - v59;
    if (v64)
    {
      goto LABEL_129;
    }

    v63 = *(v58 - 48);
    v62 = *(v58 - 40);
    v64 = __OFSUB__(v62, v63);
    v56 = v62 - v63;
    v57 = v64;
    if (v64)
    {
      goto LABEL_130;
    }

    v65 = &v10[16 * v50];
    v67 = *v65;
    v66 = *(v65 + 1);
    v64 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v64)
    {
      goto LABEL_132;
    }

    v64 = __OFADD__(v56, v68);
    v69 = v56 + v68;
    if (v64)
    {
      goto LABEL_135;
    }

    if (v69 >= v61)
    {
      v87 = &v10[16 * v53 + 32];
      v89 = *v87;
      v88 = *(v87 + 1);
      v64 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v64)
      {
        goto LABEL_139;
      }

      if (v56 < v90)
      {
        v53 = v50 - 2;
      }

      goto LABEL_78;
    }

    goto LABEL_57;
  }

LABEL_124:
  if (!*a1)
  {
    goto LABEL_149;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v142, *a1, a3, a5, a6 & 1, a7, a8);
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, char *a2, uint64_t *a3, unsigned __int8 a4, char a5, char a6, uint64_t *a7)
{
  v7 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_56;
  }

  while (1)
  {
    *a1 = v7;
    v9 = *(v7 + 2);
    if (v9 < 2)
    {
      return 1;
    }

    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        __break(1u);
        return result;
      }

      v47 = v9;
      v48 = v7;
      v11 = *&v7[16 * v9];
      v46 = v9 - 1;
      v13 = &v7[16 * v9 + 16];
      v12 = *v13;
      v49 = *(v13 + 1);
      v50 = v11;
      v14 = 8 * v11;
      v15 = (v10 + 8 * v11);
      v16 = 8 * *v13;
      v7 = (v10 + v16);
      v17 = (v10 + 8 * v49);
      v18 = v16 - 8 * v11;
      v19 = 8 * v49 - v16;
      if (v18 >= v19)
      {
        v25 = a2;
        if (v7 != a2 || v17 <= a2)
        {
          memmove(a2, (v10 + 8 * v12), 8 * v49 - 8 * v12);
          v25 = a2;
        }

        v22 = v25 + v19;
        if (v19 < 1 || v16 <= v14)
        {
          v24 = v50;
        }

        else
        {
LABEL_34:
          v43 = v7;
          v34 = (v7 - 8);
          v17 -= 8;
          v35 = v22;
          do
          {
            v36 = v17 + 8;
            v37 = *(v35 - 1);
            v35 -= 8;
            v7 = v34;
            v38 = *v34;
            v59 = a4;
            v58 = a6;
            v39 = v37;
            v40 = v38;
            v41 = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v39, v40, &v59, a5 & 1, &v58, a7);

            if (v41)
            {
              if (v36 != v43)
              {
                *v17 = *v7;
              }

              v25 = a2;
              if (v22 <= a2 || v15 >= v7)
              {
                v24 = v50;
                goto LABEL_45;
              }

              goto LABEL_34;
            }

            if (v36 != v22)
            {
              *v17 = *v35;
            }

            v17 -= 8;
            v22 = v35;
            v25 = a2;
            v34 = v7;
          }

          while (v35 > a2);
          v22 = v35;
          v24 = v50;
          v7 = v43;
        }
      }

      else
      {
        v20 = a2;
        if (v15 != a2 || v7 <= a2)
        {
          memmove(a2, (v10 + 8 * v11), 8 * v12 - 8 * v11);
          v20 = a2;
        }

        v22 = v20 + v18;
        v23 = v18 < 1 || 8 * v49 <= v16;
        v24 = v50;
        v25 = v20;
        if (!v23)
        {
          while (1)
          {
            v26 = *v7;
            v27 = *v25;
            v57 = a4;
            v56 = a6;
            v28 = v26;
            v29 = v27;
            LOBYTE(v27) = specialized static AccessibilityCore.sorted(lhs:rhs:with:explicitPriorityOnly:parentVisibility:cache:)(v28, v29, &v57, a5 & 1, &v56, a7);

            if ((v27 & 1) == 0)
            {
              break;
            }

            v30 = v7;
            v31 = v15 == v7;
            v7 += 8;
            if (!v31)
            {
              goto LABEL_19;
            }

LABEL_20:
            v15 += 8;
            if (v25 >= v22 || v7 >= v17)
            {
              goto LABEL_22;
            }
          }

          v30 = v25;
          v31 = v15 == v25++;
          if (v31)
          {
            goto LABEL_20;
          }

LABEL_19:
          *v15 = *v30;
          goto LABEL_20;
        }

LABEL_22:
        v7 = v15;
      }

LABEL_45:
      if (v7 != v25 || v7 >= v25 + ((v22 - v25 + (v22 - v25 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8))
      {
        memmove(v7, v25, 8 * ((v22 - v25) / 8));
      }

      if (v49 < v24)
      {
        break;
      }

      v7 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v48);
      }

      if ((v47 - 2) >= *(v7 + 2))
      {
        goto LABEL_55;
      }

      v42 = &v7[16 * v47];
      *v42 = v24;
      *(v42 + 1) = v49;
      *a1 = v7;
      result = specialized Array.remove(at:)(v46);
      v7 = *a1;
      v9 = *(*a1 + 2);
      if (v9 <= 1)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
  }
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized Array._copyToContiguousArray()(unint64_t a1)
{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo6UIViewC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo6UIViewC_Tt1g5, specialized Array._copyContents(initializing:));
}

void type metadata accessor for _ContiguousArrayStorage<Range<Int>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type AttributedString.Runs.AttributesSlice1<AttributeScopes.SwiftUIAttributes.AnyTokenAttribute>.Iterator and conformance AttributedString.Runs.AttributesSlice1<A>.Iterator(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_1(255, a2, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute, &type metadata for AttributeScopes.SwiftUIAttributes.AnyTokenAttribute, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of (AnyToken?, Range<AttributedString.Index>)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (AnyToken?, Range<AttributedString.Index>)();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id outlined copy of ResponderBasedHitTestTracing(id result, char a2)
{
  switch(a2)
  {
    case 2:
      return swift_unknownObjectRetain();
    case 1:

    case 0:
      return result;
  }

  return result;
}

void outlined consume of ResponderBasedHitTestTracing(id a1, char a2)
{
  switch(a2)
  {
    case 2:
      swift_unknownObjectRelease();
      break;
    case 1:

      break;
    case 0:

      break;
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Combine.Options and conformance AccessibilityChildBehavior.Combine.Options);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityChildBehavior.Automation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityChildBehavior.Automation and conformance AccessibilityChildBehavior.Automation();
  *(a1 + 8) = result;
  return result;
}

BOOL specialized AccessibilityChildBehavior.Contain.willCreateNode(for:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v11 = a1;
    v12 = __CocoaSet.count.getter();
    a1 = v11;
    if (v12 != 1)
    {
      return 1;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    return 1;
  }

  v1 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = MEMORY[0x18D00E9C0](0);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v2 = a1;
    v3 = *(a1 + 32);
  }

  v4 = v3;
  AccessibilityNode.visibility.getter(v13);

  if ((v13[0] & 2) != 0)
  {
    return 0;
  }

  if ((v13[0] & 0x41) == 1)
  {
    if (v1)
    {
      v5 = MEMORY[0x18D00E9C0](0, v2);
    }

    else
    {
      v5 = *(v2 + 32);
    }

    v7 = v5;
    v8 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
    swift_beginAccess();
    v9 = *&v7[v8];

    if (!(v9 >> 62))
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:

      return v10 == 0;
    }

LABEL_20:
    v10 = __CocoaSet.count.getter();
    goto LABEL_14;
  }

  return 1;
}

void _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityChildBehavior.Automatic(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityChildBehavior.Automatic and conformance AccessibilityChildBehavior.Automatic();
  *(a1 + 8) = result;
  return result;
}

double NSObject.platformAccessibilityFrame.getter()
{
  [v0 accessibilityFrame];
  x = v12.origin.x;
  if (CGRectIsEmpty(v12))
  {
    v2 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
    v3 = NSClassFromString(v2);

    if (!v3)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = v5;
        v7 = v0;
        [v6 frame];
        x = v8;
        v9 = [v6 window];
        if (v9)
        {
          v10 = v9;
          [v6 bounds];
          [v10 convertRect:v6 fromCoordinateSpace:?];
          x = v11;
        }

        else
        {
        }
      }
    }
  }

  return x;
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t a1, unsigned int a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    v35 = v2 & 0xFFFFFFFFFFFFFF8;
    v36 = v2 & 0xC000000000000001;
    v34 = v2 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v31 = i;
    v32 = v2;
    while (1)
    {
      if (v36)
      {
        v6 = MEMORY[0x18D00E9C0](v4, v2);
      }

      else
      {
        if (v4 >= *(v35 + 16))
        {
          goto LABEL_44;
        }

        v6 = *(v34 + 8 * v4);
      }

      v7 = v6;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        break;
      }

      AccessibilityNode.visibility.getter(v38);
      if ((v38[0] & 0x10) != 0)
      {
        v9 = specialized static AccessibilityCore.queryChildren(element:options:)(v7, a2);
      }

      else
      {
        type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_18CD69590;
        *(v9 + 32) = v7;
      }

      v10 = v9 >> 62;
      if (v9 >> 62)
      {
        v11 = __CocoaSet.count.getter();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v5 >> 62;
      if (v5 >> 62)
      {
        v28 = __CocoaSet.count.getter();
        v14 = v28 + v11;
        if (__OFADD__(v28, v11))
        {
LABEL_42:
          __break(1u);
          break;
        }
      }

      else
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_42;
        }
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v12)
        {
          goto LABEL_24;
        }

LABEL_23:
        __CocoaSet.count.getter();
        goto LABEL_24;
      }

      if (v12)
      {
        goto LABEL_23;
      }

      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = v5;
        goto LABEL_25;
      }

LABEL_24:
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v39 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v10)
      {
        v19 = v15;
        v20 = __CocoaSet.count.getter();
        v15 = v19;
        v18 = v20;
        if (v20)
        {
LABEL_29:
          if (((v17 >> 1) - v16) < v11)
          {
            goto LABEL_46;
          }

          v37 = v4;
          v21 = v15 + 8 * v16 + 32;
          v33 = v15;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_48;
            }

            type metadata accessor for [AccessibilityNode](0);
            lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A]();
            for (j = 0; j != v18; ++j)
            {
              v23 = specialized protocol witness for Collection.subscript.read in conformance [A](v38, j, v9);
              v25 = *v24;
              (v23)(v38, 0);
              *(v21 + 8 * j) = v25;
            }
          }

          else
          {
            type metadata accessor for AccessibilityNode();
            swift_arrayInitWithCopy();
          }

          v4 = v37;
          i = v31;
          v2 = v32;
          v5 = v39;
          if (v11 >= 1)
          {
            v26 = *(v33 + 16);
            v8 = __OFADD__(v26, v11);
            v27 = v26 + v11;
            if (v8)
            {
              goto LABEL_47;
            }

            *(v33 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_29;
        }
      }

      v5 = v39;
      if (v11 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      if (v4 == i)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t specialized Array.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    __CocoaSet.count.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

uint64_t PlatformItemList.Item.Accessibility.resolvedPlainTextLabel.getter()
{
  if (!v0[3])
  {
    return 0;
  }

  v1 = v0[37];
  v8 = v0[36];
  v9 = v1;
  v6 = 0;
  v7 = 0;

  MEMORY[0x18D005BE0](&v5, v2);
  v3 = static AccessibilityCore.textsResolvedToPlainText(_:in:options:idiom:separator:)();

  return v3;
}

uint64_t Array<A>.representedElements(options:)(char a1, unint64_t a2)
{
  if (!AXIsVoiceControlMakingRequest() || (a1 & 1) != 0)
  {
    if (a2 >> 62)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v36 = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v8 < 0)
      {
        __break(1u);
LABEL_57:
        __break(1u);
        return result;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = 0;
        do
        {
          v10 = v9 + 1;
          MEMORY[0x18D00E9C0]();
          AccessibilityNode.representedElement.getter();
          swift_unknownObjectRelease();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v9 = v10;
        }

        while (v8 != v10);
      }

      else
      {
        v11 = (a2 + 32);
        do
        {
          v12 = *v11++;
          v13 = v12;
          AccessibilityNode.representedElement.getter();

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v8;
        }

        while (v8);
      }

      return v36;
    }
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
    if (a2 >> 62)
    {
      v31 = __CocoaSet.count.getter();
      specialized Array.reserveCapacity(_:)(v31);
      result = __CocoaSet.count.getter();
      v5 = result;
      if (result)
      {
LABEL_5:
        if (v5 >= 1)
        {
          v6 = 0;
          v7 = a2 + 32;
          while (1)
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x18D00E9C0](v6, a2);
            }

            else
            {
              v15 = *(v7 + 8 * v6);
            }

            v16 = v15;
            v17 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
            swift_beginAccess();
            v18 = *&v16[v17];
            if (v18 >> 62)
            {
              v14 = __CocoaSet.count.getter();
              if (v14)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v14)
              {
                goto LABEL_19;
              }
            }

            LOBYTE(v33) = 4;
            AccessibilityNode.impliedVisibility(consideringParent:with:)(v14, &v33, &v34);
            if (v34)
            {
LABEL_19:
              AccessibilityNode.representedElement.getter();
              MEMORY[0x18D00CC30]();
              if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              goto LABEL_21;
            }

            v19 = AccessibilityNode.linkRotor.getter();
            if (!v19)
            {
              goto LABEL_32;
            }

            v20 = v19;
            v21 = &v16[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment];
            v22 = *&v16[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8];
            v34 = *&v16[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment];
            v35 = v22;

            EnvironmentValues.redactionReasons.getter();

            if ((v33 & 2) != 0)
            {
              v23 = *(v21 + 1);
              v34 = *v21;
              v35 = v23;

              v24 = EnvironmentValues.sensitiveContent.getter();

              if (v24)
              {
                break;
              }
            }

            UIKitAccessibilityLinkRotorBridge.update()();
            v26 = OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_elements;
            swift_beginAccess();
            v25 = *&v20[v26];
            if (v25 >> 62)
            {
              type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();

              v30 = _bridgeCocoaArray<A>(_:)();

              v25 = v30;
            }

            else
            {
              v27 = v25 & 0xFFFFFFFFFFFFFF8;
              swift_bridgeObjectRetain_n();
              dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
              type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
              if (swift_dynamicCastMetatype() || (v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
              {
              }

              else
              {
                v32 = v7;
                v29 = v27 + 32;
                while (swift_dynamicCastObjCProtocolConditional())
                {
                  v29 += 8;
                  if (!--v28)
                  {

                    goto LABEL_44;
                  }
                }

                v25 = v27 | 1;
LABEL_44:
                v7 = v32;
              }
            }

            if (!(v25 >> 62))
            {
LABEL_33:
              if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_34;
              }

              goto LABEL_47;
            }

LABEL_46:
            if (__CocoaSet.count.getter())
            {
LABEL_34:
              specialized Array.append<A>(contentsOf:)(v25);
              goto LABEL_48;
            }

LABEL_47:

LABEL_48:
            AccessibilityNode.representedElement.getter();
            MEMORY[0x18D00CC30]();
            if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

LABEL_21:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v6;

            if (v6 == v5)
            {
              return v37;
            }
          }

LABEL_32:
          v25 = MEMORY[0x1E69E7CC0];
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
            goto LABEL_33;
          }

          goto LABEL_46;
        }

        goto LABEL_57;
      }
    }

    else
    {
      result = specialized Array.reserveCapacity(_:)(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_5;
      }
    }

    return v37;
  }

  return result;
}

Swift::Void __swiftcall AccessibilityCoreNotification.post()()
{
  v2 = v1;
  v3 = v0;
  (*(v1 + 16))(v14);
  v4 = (*(v2 + 8))(v3, v2);
  _sypSgWOcTm_3(v14, v12, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v11 = 0;
  }

  UIAccessibilityPostNotification(v4, v11);
  swift_unknownObjectRelease();
  outlined destroy of AccessibilityCore.Notification.Info(v14);
}

char *PlatformAccessibilityElementProtocol<>.elementResolvingNode.getter()
{
  v1 = v0;
  type metadata accessor for AccessibilityNode();
  v2 = swift_dynamicCastClass();
  result = v1;
  v4 = result;
  if (v2)
  {
    v5 = AccessibilityNode.representedElement.getter();

    return v5;
  }

  return result;
}

uint64_t ViewRendererHost.containsAccessibilityElement(_:)(void *a1)
{
  type metadata accessor for AccessibilityNode();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
  }

  else
  {
    v4 = [a1 accessibilityNodeForPlatformElement];
    if (!v4)
    {
LABEL_6:
      ObjectType = swift_getObjectType();
      MEMORY[0x1EEE9AC00](ObjectType);
      PlatformAccessibilityElementProtocol<>.traverseAncestors(_:)(partial apply for closure #1 in ViewRendererHost.containsAccessibilityElement(_:));
      return 0;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_6;
  }

  swift_unknownObjectRelease();
  if (Strong != v1)
  {
    goto LABEL_6;
  }

  return 1;
}

uint64_t Array<A>.merge(with:options:)(unint64_t a1, char a2, unint64_t a3)
{
  v4 = a3;
  if ((a2 & 2) == 0)
  {
    v24 = a1;

    specialized Array.append<A>(contentsOf:)(v5);
    return v24;
  }

  if (!(a3 >> 62))
  {
    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_32:

    v24 = specialized Array._copyToContiguousArray()(v20);
    specialized MutableCollection<>.sort(by:)(&v24);
    return v24;
  }

LABEL_31:
  v18 = a1;
  v19 = __CocoaSet.count.getter();
  a1 = v18;
  if (!v19)
  {
    goto LABEL_32;
  }

LABEL_5:
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_36:

    return v4;
  }

  v22 = a1;
  v23 = __CocoaSet.count.getter();
  a1 = v22;
  if (!v23)
  {
    goto LABEL_36;
  }

LABEL_7:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = a1;
    v7 = MEMORY[0x18D00E9C0](0, v4);
LABEL_10:
    v8 = v7;
    v24 = v6;
    v9 = v6;

    v10 = v8;
    MEMORY[0x18D00CC30]();
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized MutableCollection<>.sort(by:)(&v24);
    v11 = v24;
    if (v24 >> 62)
    {
      a1 = __CocoaSet.count.getter();
      v12 = a1;
      if (a1)
      {
LABEL_14:
        v3 = 0;
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x18D00E9C0](v3, v11);
          }

          else
          {
            if (v3 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v13 = *(v11 + 8 * v3 + 32);
          }

          v14 = v13;

          v15 = v3 + 1;
          v16 = __OFADD__(v3, 1);
          if (v14 == v10)
          {
            break;
          }

          if (v16)
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          ++v3;
          if (v15 == v12)
          {
            goto LABEL_25;
          }
        }

        if (v16)
        {
          goto LABEL_41;
        }

        if (v15 >= v3)
        {

          specialized Array.replaceSubrange<A>(_:with:)(v3, v3 + 1, v4);

          return v24;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v12 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_14;
      }
    }

LABEL_25:

    specialized Array.append<A>(contentsOf:)(v17);

    return v9;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = a1;
    v7 = *(v4 + 32);
    goto LABEL_10;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);

  __break(1u);
  return result;
}

id @objc NSObject.accessibilityNodeForPlatformElement.getter(void *a1)
{
  v1 = a1;
  v2 = NSObject.accessibilityNodeForPlatformElement.getter();

  return v2;
}

uint64_t NSObject.accessibilityNodeForPlatformElement.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &accessibilityNodeForPlatformElementKey);
  swift_endAccess();
  if (v1 && (_bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), outlined init with take of Any(v4, v5), outlined init with take of Any(v5, v4), type metadata accessor for AccessibilityNode(), (swift_dynamicCast() & 1) != 0))
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void @objc NSObject.accessibilityNodeForPlatformElement.setter(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v5 = a3;
  v6 = a1;
  objc_setAssociatedObject(v6, &accessibilityNodeForPlatformElementKey, v5, 0);
  swift_endAccess();
}

uint64_t destroy for PlatformItemList.Item.Accessibility(uint64_t a1)
{

  v2 = *(a1 + 88);
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 64);
  }

LABEL_5:
  if (*(a1 + 240) != 1)
  {
  }
}

uint64_t initializeWithCopy for PlatformItemList.Item.Accessibility(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_7;
    }

    v8 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v8;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
  }

  *(a1 + 104) = *(a2 + 104);

LABEL_7:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 240);
  if (v9 == 1)
  {
    v10 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v10;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v11 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v11;
    v12 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v12;
    v13 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v13;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v14 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v14;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v9;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  v15 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v15;
  *(a1 + 296) = *(a2 + 296);

  return a1;
}

uint64_t assignWithCopy for PlatformItemList.Item.Accessibility(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a1 + 88);
  v6 = *(a2 + 88);
  if (v5 == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(a2 + 64);
        v8 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v8;
        *(a1 + 64) = v7;
        goto LABEL_18;
      }

      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v12 = *(a2 + 64);
      v13 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v12;
      *(a1 + 80) = v13;
    }

    *(a1 + 104) = *(a2 + 104);
  }

  else if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
    v10 = *(a2 + 80);
    v9 = *(a2 + 96);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v10;
    *(a1 + 96) = v9;
  }

  else
  {
    if (v5)
    {
      v11 = (a1 + 64);
      if (v6)
      {
        __swift_assign_boxed_opaque_existential_1(v11, (a2 + 64));
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(v11);
        v14 = *(a2 + 96);
        v15 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v15;
        *(a1 + 96) = v14;
      }
    }

    else if (v6)
    {
      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v16 = *(a2 + 64);
      v17 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v16;
      *(a1 + 80) = v17;
    }

    *(a1 + 104) = *(a2 + 104);
  }

LABEL_18:
  v18 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v18;
  v19 = *(a2 + 240);
  if (*(a1 + 240) == 1)
  {
    if (v19 == 1)
    {
      v20 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v20;
      v21 = *(a2 + 160);
      v22 = *(a2 + 176);
      v23 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v23;
      *(a1 + 160) = v21;
      *(a1 + 176) = v22;
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      v26 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 240) = v25;
      *(a1 + 256) = v26;
      *(a1 + 224) = v24;
    }

    else
    {
      v34 = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 128) = v34;
      v35 = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 144) = v35;
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 154) = *(a2 + 154);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v36 = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 248) = v36;
      *(a1 + 272) = *(a2 + 272);
    }
  }

  else if (v19 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
    v27 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v27;
    v28 = *(a2 + 208);
    v30 = *(a2 + 160);
    v29 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v28;
    *(a1 + 160) = v30;
    *(a1 + 176) = v29;
    v32 = *(a2 + 240);
    v31 = *(a2 + 256);
    v33 = *(a2 + 224);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 240) = v32;
    *(a1 + 256) = v31;
    *(a1 + 224) = v33;
  }

  else
  {
    v37 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v37;
    v38 = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 144) = v38;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 154) = *(a2 + 154);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 209) = *(a2 + 209);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);

    v39 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = v39;
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

  return a1;
}

uint64_t assignWithTake for PlatformItemList.Item.Accessibility(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 88);
  if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
LABEL_4:
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_10;
  }

  if (v5)
  {
    v8 = a1 + 64;
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v8);
    }
  }

  v9 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v9;
  v10 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v10;

LABEL_10:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 240) != 1)
  {
    v11 = *(a2 + 240);
    if (v11 != 1)
    {
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      v16 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v16;
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v11;

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = *(a2 + 272);
      goto LABEL_15;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
  }

  v12 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v12;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  v13 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v13;
  v14 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v14;
  v15 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v15;
LABEL_15:
  *(a1 + 280) = *(a2 + 280);

  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

  return a1;
}

uint64_t storeEnumTagSinglePayload for PlatformItemList.Item.Accessibility(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v96 = v5;
        v10 = *(*a3 + 8 * v7);
        v11 = 8 * v9;
        v12 = (*a3 + 8 * v9);
        v14 = *v12;
        v13 = v12 + 2;
        swift_getObjectType();
        v15 = v10;
        v16 = v14;
        v102 = PlatformAccessibilityElementProtocol<>.compareGeometry(to:)(v16);

        v98 = v9;
        v17 = v9 + 2;
        while (v6 != v17)
        {
          v18 = v6;
          v20 = *(v13 - 1);
          v19 = *v13;
          swift_getObjectType();
          v21 = v19;
          v22 = v20;
          v23 = PlatformAccessibilityElementProtocol<>.compareGeometry(to:)(v22);

          v6 = v18;
          ++v17;
          ++v13;
          if ((v102 == -1) == (v23 != -1))
          {
            v6 = v17 - 1;
            break;
          }
        }

        if (v102 == -1)
        {
          v9 = v98;
          if (v6 < v98)
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            return;
          }

          if (v98 < v6)
          {
            v24 = 8 * v6 - 8;
            v25 = v6;
            v26 = v98;
            do
            {
              if (v26 != --v25)
              {
                v28 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v27 = *(v28 + v11);
                *(v28 + v11) = *(v28 + v24);
                *(v28 + v24) = v27;
              }

              ++v26;
              v24 -= 8;
              v11 += 8;
            }

            while (v26 < v25);
          }

          v7 = v6;
          v5 = v96;
        }

        else
        {
          v7 = v6;
          v5 = v96;
          v9 = v98;
        }
      }

      v29 = a3[1];
      if (v7 < v29)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_117;
        }

        if (v7 - v9 < a4)
        {
          v30 = (v9 + a4);
          if (__OFADD__(v9, a4))
          {
            goto LABEL_118;
          }

          if (v30 >= v29)
          {
            v30 = a3[1];
          }

          if (v30 < v9)
          {
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (v7 != v30)
          {
            v97 = v5;
            v99 = v9;
            v31 = *a3;
            v32 = *a3 + 8 * v7 - 8;
            v33 = v9 - v7;
            v101 = v30;
            do
            {
              v103 = v7;
              v34 = *(v31 + 8 * v7);
              v35 = v33;
              v36 = v32;
              do
              {
                v37 = *v36;
                swift_getObjectType();
                v38 = v34;
                v39 = v37;
                v40 = PlatformAccessibilityElementProtocol<>.compareGeometry(to:)(v39);

                if (v40 != -1)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_122;
                }

                v41 = *v36;
                v34 = *(v36 + 8);
                *v36 = v34;
                *(v36 + 8) = v41;
                v36 -= 8;
              }

              while (!__CFADD__(v35++, 1));
              v7 = v103 + 1;
              v32 += 8;
              --v33;
            }

            while ((v103 + 1) != v101);
            v7 = v101;
            v5 = v97;
            v9 = v99;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v44 = *(v8 + 2);
      v43 = *(v8 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v8);
      }

      *(v8 + 2) = v45;
      v46 = &v8[16 * v44];
      *(v46 + 4) = v9;
      *(v46 + 5) = v7;
      v47 = *a1;
      if (!*a1)
      {
        goto LABEL_126;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v49 = *(v8 + 4);
            v50 = *(v8 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_57:
            if (v52)
            {
              goto LABEL_105;
            }

            v65 = &v8[16 * v45];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_108;
            }

            v71 = &v8[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_112;
            }

            if (v69 + v74 >= v51)
            {
              if (v51 < v74)
              {
                v48 = v45 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v75 = &v8[16 * v45];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_71:
          if (v70)
          {
            goto LABEL_107;
          }

          v78 = &v8[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_110;
          }

          if (v81 < v69)
          {
            goto LABEL_3;
          }

LABEL_78:
          v86 = v48 - 1;
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (!*a3)
          {
            goto LABEL_123;
          }

          v87 = *&v8[16 * v86 + 32];
          v88 = *&v8[16 * v48 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v87), (*a3 + 8 * *&v8[16 * v48 + 32]), (*a3 + 8 * v88), v47);
          if (v5)
          {
            goto LABEL_98;
          }

          if (v88 < v87)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          }

          if (v86 >= *(v8 + 2))
          {
            goto LABEL_102;
          }

          v89 = &v8[16 * v86];
          *(v89 + 4) = v87;
          *(v89 + 5) = v88;
          specialized Array.remove(at:)(v48);
          v45 = *(v8 + 2);
          if (v45 <= 1)
          {
            goto LABEL_3;
          }
        }

        v53 = &v8[16 * v45 + 32];
        v54 = *(v53 - 64);
        v55 = *(v53 - 56);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_103;
        }

        v58 = *(v53 - 48);
        v57 = *(v53 - 40);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_104;
        }

        v60 = &v8[16 * v45];
        v62 = *v60;
        v61 = *(v60 + 1);
        v59 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v59)
        {
          goto LABEL_106;
        }

        v59 = __OFADD__(v51, v63);
        v64 = v51 + v63;
        if (v59)
        {
          goto LABEL_109;
        }

        if (v64 >= v56)
        {
          v82 = &v8[16 * v48 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v59 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v59)
          {
            goto LABEL_113;
          }

          if (v51 < v85)
          {
            v48 = v45 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_88;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_127;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_120:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  }

  v90 = v5;
  v91 = *(v8 + 2);
  if (v91 >= 2)
  {
    while (*a3)
    {
      v5 = v91 - 1;
      v92 = *&v8[16 * v91];
      v93 = *&v8[16 * v91 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v92), (*a3 + 8 * *&v8[16 * v91 + 16]), (*a3 + 8 * v93), v7);
      if (v90)
      {
        goto LABEL_98;
      }

      if (v93 < v92)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      }

      if (v91 - 2 >= *(v8 + 2))
      {
        goto LABEL_115;
      }

      v94 = &v8[16 * v91];
      *v94 = v92;
      *(v94 + 1) = v93;
      specialized Array.remove(at:)(v5);
      v91 = *(v8 + 2);
      if (v91 <= 1)
      {
        goto LABEL_98;
      }
    }

    goto LABEL_124;
  }

LABEL_98:
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 < 8)
    {
LABEL_10:
      v15 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v13;
      v19 = *v4;
      swift_getObjectType();
      v20 = v18;
      v21 = v19;
      v22 = PlatformAccessibilityElementProtocol<>.compareGeometry(to:)(v21);

      if (v22 != -1)
      {
        break;
      }

      v16 = v13;
      v17 = v6 == v13++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v6;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v4;
    v17 = v6 == v4++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v23 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v23;
  }

  v15 = a2;
  v14 = &v4[v12];
  if (v10 >= 8 && a2 > v6)
  {
    v36 = v4;
LABEL_25:
    v35 = v15;
    v24 = v15 - 1;
    --v5;
    v25 = v14;
    do
    {
      v26 = v5 + 1;
      v27 = *--v25;
      v28 = v24;
      v29 = *v24;
      swift_getObjectType();
      v30 = v27;
      v31 = v29;
      v32 = PlatformAccessibilityElementProtocol<>.compareGeometry(to:)(v31);

      if (v32 == -1)
      {
        v33 = v28;
        if (v26 != v35)
        {
          *v5 = *v28;
        }

        v4 = v36;
        if (v14 <= v36 || (v15 = v33, v33 <= v6))
        {
          v15 = v33;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v26 != v14)
      {
        *v5 = *v25;
      }

      --v5;
      v14 = v25;
      v24 = v28;
    }

    while (v25 > v36);
    v14 = v25;
    v15 = v35;
    v4 = v36;
  }

LABEL_36:
  if (v15 != v4 || v15 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v15, v4, 8 * (v14 - v4));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 >= v11 >> 4)
  {
    if (a4 != a2 || &a2[2 * v12] <= a4)
    {
      v24 = a2;
      memmove(a4, a2, 16 * v12);
      a2 = v24;
    }

    v23 = a2;
    v14 = &v4[2 * v12];
    if (v10 >= 16 && a2 > v6)
    {
      v38 = v4;
LABEL_26:
      __dst = v23;
      v25 = v23 - 2;
      v5 -= 2;
      v26 = v14;
      do
      {
        v27 = v5 + 2;
        v28 = *(v26 - 2);
        v26 -= 2;
        v29 = v25;
        v30 = *v25;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        [v28 frame];
        v32 = v31;
        [v30 frame];
        v34 = v33;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v32 < v34)
        {
          v35 = v29;
          if (v27 != __dst)
          {
            *v5 = *v29;
          }

          v4 = v38;
          if (v14 <= v38 || (v23 = v35, v35 <= v6))
          {
            v23 = v35;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v27 != v14)
        {
          *v5 = *v26;
        }

        v5 -= 2;
        v14 = v26;
        v25 = v29;
      }

      while (v26 > v38);
      v14 = v26;
      v23 = __dst;
      v4 = v38;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[2 * v9] <= a4)
    {
      memmove(a4, __src, 16 * v9);
    }

    v14 = &v4[2 * v9];
    if (v7 >= 16 && v13 < v5)
    {
      while (1)
      {
        v15 = *v13;
        v16 = *v4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        [v15 frame];
        v18 = v17;
        [v16 frame];
        v20 = v19;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v18 >= v20)
        {
          break;
        }

        v21 = v13;
        v22 = v6 == v13;
        v13 += 2;
        if (!v22)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 += 2;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v21 = v4;
      v22 = v6 == v4;
      v4 += 2;
      if (v22)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v21;
      goto LABEL_17;
    }

LABEL_19:
    v23 = v6;
  }

LABEL_37:
  if (v23 != v4 || v23 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v23, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t specialized static AccessibilityCore.queryFilter(elements:options:)(unint64_t a1, int a2)
{
  LODWORD(v3) = a2;
  v4 = a1;
  if ((a2 & 8) != 0)
  {
    v4 = Array<A>.sortedSupplementaryItems()(a1);
  }

  else
  {
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
      v24 = __CocoaSet.count.getter();
      if (!v24)
      {
LABEL_52:

        if ((v3 & 4) == 0)
        {
          return v5;
        }

LABEL_53:
        v29 = specialized Sequence.flatMap<A>(_:)(v5, v3);

        return v29;
      }
    }

    else
    {
      v24 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_52;
      }
    }

    v25 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x18D00E9C0](v25, v4);
      }

      else
      {
        if (v25 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v26 = *(v4 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v5 = v26;
      AccessibilityNode.automationVisibility.getter(__src);
      if ((__src[0] & 4) != 0 || (__src[0] & 8) != 0 && (__src[0] & 0x400000000) == 0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v2 = *(__dst[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = __dst;
        specialized ContiguousArray._endMutation()();
      }

      ++v25;
      if (v28 == v24)
      {
        v5 = __dst[0];
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v2 = specialized Collection<>.filterVisible(_:)(0, 0, v4);

  v43 = v5;
  if (v2 >> 62)
  {
LABEL_59:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

  v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
LABEL_7:
    v31 = v3;
    v7 = 0;
    v3 = v2 & 0xC000000000000001;
    v8 = v2 & 0xFFFFFFFFFFFFFF8;
    v35 = v6;
    v36 = v2 + 32;
    v32 = v2;
    v33 = v2 & 0xFFFFFFFFFFFFFF8;
    v34 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v3)
      {
        v9 = MEMORY[0x18D00E9C0](v7, v2);
      }

      else
      {
        if (v7 >= *(v8 + 16))
        {
          goto LABEL_58;
        }

        v9 = *(v36 + 8 * v7);
      }

      v10 = v9;
      if (__OFADD__(v7++, 1))
      {
        goto LABEL_57;
      }

      v12 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
      swift_beginAccess();
      _sypSgWOcTm_3(&v10[v12], __src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
      if (__src[35])
      {
        memcpy(__dst, __src, 0x128uLL);
        outlined init with copy of AccessibilityProperties(__dst, __src);
        outlined destroy of AccessibilityAttachment(__dst);
        v5 = __src[5];
        v13 = LOBYTE(__src[7]);
        outlined destroy of AccessibilityProperties(__src);
        if (v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = v5;
        }

        if ((v14 & 0x4000) != 0)
        {
          goto LABEL_27;
        }

LABEL_8:

        if (v7 == v6)
        {
          goto LABEL_48;
        }
      }

      else
      {
        outlined destroy of AccessibilityAttachment?(__src);
        v15 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
        swift_beginAccess();
        v5 = *&v10[v15];
        v16 = *(v5 + 16);
        if (v16)
        {

          v17 = 0;
          v2 = 0;
          v18 = v5 + 320 * v16 - 288;
          while (v16 <= *(v5 + 16))
          {
            outlined init with copy of AccessibilityAttachmentStorage(v18, __dst);
            outlined init with copy of AccessibilityAttachment(__dst, __src);
            outlined destroy of AccessibilityAttachmentStorage(__dst);
            outlined init with copy of AccessibilityProperties(__src, v37);
            outlined destroy of AccessibilityAttachment(__src);
            v19 = v38;
            v20 = v39;
            v21 = v40;
            outlined destroy of AccessibilityProperties(v37);
            if ((v21 & 1) == 0)
            {
              v22 = v19 & ~v2;
              v23 = v2 | ~v20;
              v2 |= v20;
              v17 = v23 & v17 | v22;
            }

            v18 -= 320;
            if (!--v16)
            {

              v2 = v32;
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_48:
          v5 = v43;
          LODWORD(v3) = v31;
          break;
        }

        v17 = 0;
LABEL_26:
        v3 = v34;
        v6 = v35;
        v8 = v33;
        if ((v17 & 0x4000) == 0)
        {
          goto LABEL_8;
        }

LABEL_27:
        v5 = &v43;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v7 == v6)
        {
          goto LABEL_48;
        }
      }
    }
  }

LABEL_49:
  if ((v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_52;
    }
  }

  else if (*(v5 + 16))
  {
    goto LABEL_52;
  }

  v5 = v2;
  if ((v3 & 4) != 0)
  {
    goto LABEL_53;
  }

  return v5;
}

unint64_t specialized static AccessibilityCore.queryChildren(element:options:)(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = 2;
    v6 = 2;
  }

  else
  {
    LOBYTE(v14) = 4;
    AccessibilityNode.impliedVisibility(consideringParent:with:)(1, &v14, v15);
    v4 = v15[0];
    v5 = MEMORY[0x1E69E7CC0];
    if (v15[0] > 1u)
    {
      v6 = v15[0];
      if (v15[0] != 2)
      {
        return v5;
      }
    }

    else
    {
      if (!v15[0])
      {
        return v5;
      }

      *v15 = *(a1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
      EnvironmentValues.layoutDirection.getter();
      v4 = v14;
      v6 = 1;
    }
  }

  v7 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
  if ((a2 & 2) != 0)
  {
    swift_beginAccess();
    v9 = *(a1 + v7);
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI22AccessibilitySortCache33_53F8EA6FDE2098E3B48F956069C295B7LLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (v9 >> 62)
    {
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    type metadata accessor for [ObjectIdentifier : AccessibilitySortCache]();

    Dictionary.reserveCapacity(_:)(v10);

    v13 = specialized Array._copyToContiguousArray()(v11);
    specialized MutableCollection<>.sort(by:)(&v13, v4, 0, v6, &v14);

    v8 = v13;
  }

  else
  {
    swift_beginAccess();
    v8 = *(a1 + v7);
  }

  v5 = specialized static AccessibilityCore.queryFilter(elements:options:)(v8, a2);

  return v5;
}

BOOL partial apply for closure #1 in ViewRendererHost.containsAccessibilityElement(_:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (v2 == a1)
  {
    **(v1 + 40) = 1;
  }

  return v2 != a1;
}

uint64_t assignWithCopy for AccessibilityCore.Notification.ScreenChanged(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for AccessibilityCore.Notification.ScreenChanged(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

void **assignWithCopy for AccessibilityCore.Notification.LayoutChanged(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  v5 = v4;

  return a1;
}

void **assignWithTake for AccessibilityCore.Notification.LayoutChanged(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

void CompositorContent.onWorldRecenter(action:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  CompositorContent.onWorldRecenter(action:)();
}

void CompositorContent.onChange<A>(of:initial:_:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  CompositorContent.onChange<A>(of:initial:_:)();
}

unint64_t lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier()
{
  result = lazy protocol witness table cache variable for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier;
  if (!lazy protocol witness table cache variable for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HostingViewTransparentBackgroundReason and conformance HostingViewTransparentBackgroundReason()
{
  result = lazy protocol witness table cache variable for type HostingViewTransparentBackgroundReason and conformance HostingViewTransparentBackgroundReason;
  if (!lazy protocol witness table cache variable for type HostingViewTransparentBackgroundReason and conformance HostingViewTransparentBackgroundReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostingViewTransparentBackgroundReason and conformance HostingViewTransparentBackgroundReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HostingViewTransparentBackgroundReason and conformance HostingViewTransparentBackgroundReason;
  if (!lazy protocol witness table cache variable for type HostingViewTransparentBackgroundReason and conformance HostingViewTransparentBackgroundReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostingViewTransparentBackgroundReason and conformance HostingViewTransparentBackgroundReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HostingViewTransparentBackgroundReason and conformance HostingViewTransparentBackgroundReason;
  if (!lazy protocol witness table cache variable for type HostingViewTransparentBackgroundReason and conformance HostingViewTransparentBackgroundReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostingViewTransparentBackgroundReason and conformance HostingViewTransparentBackgroundReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HostingViewTransparentBackgroundReason and conformance HostingViewTransparentBackgroundReason;
  if (!lazy protocol witness table cache variable for type HostingViewTransparentBackgroundReason and conformance HostingViewTransparentBackgroundReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostingViewTransparentBackgroundReason and conformance HostingViewTransparentBackgroundReason);
  }

  return result;
}

uint64_t HostingViewTransparentBackgroundReason.description.getter(char a1)
{
  if (a1)
  {
    MEMORY[0x18D00C9B0](0x2C746C7561666564, 0xE900000000000020);
  }

  if ((a1 & 2) != 0)
  {
    MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD5D150);
    if ((a1 & 4) == 0)
    {
LABEL_5:
      if ((a1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_5;
  }

  MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD5D130);
  if ((a1 & 8) == 0)
  {
LABEL_6:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD5D0F0);
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_12:
  MEMORY[0x18D00C9B0](0xD000000000000017, 0x800000018CD5D110);
  if ((a1 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((a1 & 0x20) != 0)
  {
LABEL_8:
    MEMORY[0x18D00C9B0](0xD000000000000014, 0x800000018CD5D0D0);
  }

LABEL_9:
  MEMORY[0x18D00C9B0]();

  MEMORY[0x18D00C9B0](93, 0xE100000000000000);
  return 91;
}

uint64_t specialized RangeReplaceableCollection<>.removeLast(_:)(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      if ((v2 & 0x2000000000000000) != 0)
      {
        v3 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v3 = *v1 & 0xFFFFFFFFFFFFLL;
      }

      v4 = String.index(_:offsetBy:limitedBy:)();
      if (v5)
      {
        goto LABEL_14;
      }

      if (4 * v3 >= v4 >> 14)
      {

        return MEMORY[0x1EEE68E00]();
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x1EEE68E00]();
  }

  return result;
}

uint64_t View.platformItemLabelTrait<A, B>(for:_:)()
{
  type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return View.platformItemTrait<A, B, C>(for:strategy:source:)();
}

uint64_t static SwiftUIPlatformItemsDefinition.combineAccessibilityProperites(_:)(uint64_t a1)
{
  outlined init with copy of AccessibilityProperties(a1, v4);
  outlined init with copy of AccessibilityProperties(a1 + 288, v3);
  outlined init with copy of AccessibilityProperties(v4, v5);
  AccessibilityProperties.merge(with:)(v3);
  outlined destroy of AccessibilityProperties(v3);
  outlined destroy of AccessibilityProperties(v4);
  return outlined assign with take of AccessibilityProperties(v5, a1 + 576);
}

uint64_t static SwiftUIPlatformItemsDefinition.makePlatformImage(_:)(__int128 *a1)
{
  v1 = a1[5];
  v28 = a1[4];
  v29[0] = v1;
  *(v29 + 12) = *(a1 + 92);
  v2 = a1[1];
  v24 = *a1;
  v25 = v2;
  v3 = a1[3];
  v26 = a1[2];
  v27 = v3;
  if (*(a1 + 18))
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    return swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    v5 = a1[25];
    v22[12] = a1[24];
    v22[13] = v5;
    v23 = a1[26];
    v6 = a1[21];
    v22[8] = a1[20];
    v22[9] = v6;
    v7 = a1[23];
    v22[10] = a1[22];
    v22[11] = v7;
    v8 = a1[17];
    v22[4] = a1[16];
    v22[5] = v8;
    v9 = a1[19];
    v22[6] = a1[18];
    v22[7] = v9;
    v10 = a1[13];
    v22[0] = a1[12];
    v22[1] = v10;
    v11 = a1[15];
    v22[2] = a1[14];
    v22[3] = v11;
    if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(v22) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(&v23 + 1);
      if (*(&v23 + 1))
      {
      }
    }

    v18 = v28;
    *v19 = v29[0];
    *&v19[12] = *(v29 + 12);
    v14 = v24;
    v15 = v25;
    v16 = v26;
    v17 = v27;
    outlined init with copy of GraphicsImage(&v24, v20);
    v13 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v12);

    v20[4] = v18;
    v21[0] = *v19;
    *(v21 + 12) = *&v19[12];
    v20[0] = v14;
    v20[1] = v15;
    v20[2] = v16;
    v20[3] = v17;
    outlined destroy of GraphicsImage(v20);
    return v13;
  }
}

void closure #1 in View.platformItemLabelTrait<A, B>(for:_:)(void (*a1)(double)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v25 = a4;
  v6 = *(a2 - 8);
  v19 = a1;
  v20 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>();
  v9 = type metadata accessor for ModifiedContent();
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for ModifiedContent();
  v22 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v13 = type metadata accessor for ModifiedContent();
  v24 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v21 = &v19 - v16;
  v19(v15);
  lazy protocol witness table accessor for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon();
  View.input<A>(_:)();
  (*(v20 + 8))(v8, a2);
  if (one-time initialization token for combine != -1)
  {
    swift_once();
  }

  v30 = static AccessibilityChildBehavior.combine;
  v17 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>();
  v28 = a3;
  v29 = v17;

  WitnessTable = swift_getWitnessTable();
  View._accessibilityElement(children:)(&v30, v9, WitnessTable);

  (*(v23 + 8))(v11, v9);
  v26 = WitnessTable;
  v27 = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable();
  View.accessibilityApplyDetachedProperties()();
}

uint64_t protocol witness for static Feature.isEnabled.getter in conformance VisualizeViews()
{
  lazy protocol witness table accessor for type VisualizeViews and conformance VisualizeViews();

  return static UserDefaultKeyedFeature.isEnabled.getter();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance VisualizeViews()
{
  lazy protocol witness table accessor for type VisualizeViews and conformance VisualizeViews();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance VisualizeViews@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type VisualizeViews and conformance VisualizeViews();
  result = (*(v4 + 16))(a1, v4);
  *a2 = result & 1;
  return result;
}

void *DebugOverlayModifier.body(content:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = static Alignment.center.getter();
  v6 = v5;
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  closure #1 in closure #1 in DebugOverlayModifier.body(content:)(__src);
  memcpy(__dst, __src, 0x1B3uLL);
  memcpy(v12, __src, 0x1B3uLL);
  outlined init with copy of TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>(__dst, v14, type metadata accessor for TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>);
  outlined destroy of TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>(v12, type metadata accessor for TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>);
  memcpy(v15, __dst, 0x1B3uLL);
  v13[0] = v7;
  v13[1] = v8;
  memcpy(&v13[2], __dst, 0x1B3uLL);
  BYTE3(v13[56]) = 0;
  v13[57] = v4;
  v13[58] = v6;
  memcpy(__src, v13, sizeof(__src));
  v14[0] = v7;
  v14[1] = v8;
  v15[435] = 0;
  v16 = v4;
  v17 = v6;
  outlined init with copy of TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>(v13, &v10, type metadata accessor for _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>>);
  outlined destroy of TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>(v14, type metadata accessor for _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>>);
  return memcpy(a1, __src, 0x1D8uLL);
}

uint64_t closure #1 in closure #1 in DebugOverlayModifier.body(content:)@<X0>(void *a1@<X8>)
{
  DebugOverlayModifier.border.getter(&v20);
  DebugOverlayModifier.label.getter(&v36);
  v16 = v32;
  v17 = v33;
  v18 = v34;
  v12 = v28;
  v13 = v29;
  v14 = v30;
  v15 = v31;
  v8 = v24;
  v9 = v25;
  v10 = v26;
  v11 = v27;
  v4 = v20;
  v5 = v21;
  v6 = v22;
  v7 = v23;
  v51[8] = v44;
  v51[9] = v45;
  v52[0] = v46[0];
  *(v52 + 11) = *(v46 + 11);
  v51[4] = v40;
  v51[5] = v41;
  v51[6] = v42;
  v51[7] = v43;
  v51[0] = v36;
  v51[1] = v37;
  v51[2] = v38;
  v51[3] = v39;
  v47[12] = v32;
  v47[13] = v33;
  v47[14] = v34;
  v47[8] = v28;
  v47[9] = v29;
  v47[10] = v30;
  v47[11] = v31;
  v47[4] = v24;
  v47[5] = v25;
  v47[6] = v26;
  v47[7] = v27;
  v47[0] = v20;
  v47[1] = v21;
  v47[2] = v22;
  v47[3] = v23;
  v3[12] = v32;
  v3[13] = v33;
  v3[14] = v34;
  v3[8] = v28;
  v3[9] = v29;
  v3[10] = v30;
  v3[11] = v31;
  v3[4] = v24;
  v3[5] = v25;
  v3[6] = v26;
  v3[7] = v27;
  v3[0] = v20;
  v3[1] = v21;
  v3[2] = v22;
  v3[3] = v23;
  v49[8] = v44;
  v49[9] = v45;
  v50[0] = v46[0];
  *(v50 + 11) = *(v46 + 11);
  v49[4] = v40;
  v49[5] = v41;
  v49[6] = v42;
  v49[7] = v43;
  v49[0] = v36;
  v49[1] = v37;
  v49[2] = v38;
  v49[3] = v39;
  *(&v3[24] + 8) = v45;
  *(&v3[25] + 8) = v46[0];
  *(&v3[26] + 3) = *(v46 + 11);
  *(&v3[20] + 8) = v41;
  *(&v3[21] + 8) = v42;
  *(&v3[22] + 8) = v43;
  *(&v3[23] + 8) = v44;
  *(&v3[16] + 8) = v37;
  *(&v3[17] + 8) = v38;
  *(&v3[18] + 8) = v39;
  *(&v3[19] + 8) = v40;
  v19 = v35;
  v48 = v35;
  *&v3[15] = v35;
  *(&v3[15] + 8) = v36;
  memcpy(a1, v3, 0x1B3uLL);
  outlined init with copy of TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>(v47, v53, type metadata accessor for ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>);
  outlined init with copy of TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>(v49, v53, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>);
  outlined destroy of TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>(v51, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>);
  v53[12] = v16;
  v53[13] = v17;
  v53[14] = v18;
  v54 = v19;
  v53[8] = v12;
  v53[9] = v13;
  v53[10] = v14;
  v53[11] = v15;
  v53[4] = v8;
  v53[5] = v9;
  v53[6] = v10;
  v53[7] = v11;
  v53[0] = v4;
  v53[1] = v5;
  v53[2] = v6;
  v53[3] = v7;
  return outlined destroy of TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>(v53, type metadata accessor for ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>);
}

__n128 DebugOverlayModifier.border.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = static Color.clear.getter();
  v4 = *(v1 + 16);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  *&v14[7] = v15;
  *&v14[23] = v16;
  *&v14[39] = v17;

  v5 = static Alignment.center.getter();
  v7 = v6;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  __asm { FMOV            V0.2D, #4.0 }

  *a1 = _Q0;
  *(a1 + 16) = 1;
  *(a1 + 17) = *v14;
  *(a1 + 33) = *&v14[16];
  *(a1 + 48) = *&v14[31];
  *(a1 + 64) = v4;
  *(a1 + 72) = 256;
  *(a1 + 80) = _Q0;
  *(a1 + 96) = 1;
  *(a1 + 104) = v3;
  *(a1 + 112) = 256;
  *(a1 + 120) = v5;
  *(a1 + 128) = v7;
  *(a1 + 168) = v20;
  *(a1 + 152) = v19;
  *(a1 + 136) = v18;
  result = v21;
  *(a1 + 232) = v24;
  *(a1 + 216) = v23;
  *(a1 + 200) = v22;
  *(a1 + 184) = v21;
  return result;
}

uint64_t DebugOverlayModifier.label.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v42 = *v1;
  v43 = v3;
  lazy protocol witness table accessor for type String and conformance String();

  v4 = Text.init<A>(_:)();
  v31 = v5;
  v32 = v4;
  v7 = v6;
  v30 = v8;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = v7 & 1;
  LOBYTE(v42) = v7 & 1;
  LOBYTE(v40) = 0;
  v33[0] = 4;
  v12 = static Font.system(size:weight:design:)();
  v13 = swift_getKeyPath();
  v14 = static Color.white.getter();
  LOBYTE(v3) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v38 = 0;
  v39 = v1[2];
  v23 = v39;
  DebugOverlayModifier.labelBackgroundShape.getter(&v34);
  v24 = v34;
  v26 = v35;
  v25 = v36;
  v27 = v37;
  *&v40 = v23;
  *(&v40 + 1) = v34;
  *v41 = v35;
  *&v41[16] = v36;
  v41[24] = v37;
  *&v41[25] = 256;
  *a1 = v32;
  *(a1 + 8) = v31;
  *(a1 + 16) = v11;
  *(a1 + 24) = v30;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v10;
  *(a1 + 64) = 1;
  *(a1 + 72) = v13;
  *(a1 + 80) = v12;
  *(a1 + 88) = v14;
  *(a1 + 96) = v3;
  *(a1 + 104) = v16;
  *(a1 + 112) = v18;
  *(a1 + 120) = v20;
  *(a1 + 128) = v22;
  *(a1 + 136) = 0;
  *(a1 + 171) = *&v41[11];
  v28 = *v41;
  *(a1 + 144) = v40;
  *(a1 + 160) = v28;
  v42 = v23;
  v43 = v24;
  v44 = v26;
  v45 = v25;
  v46 = v27;
  v47 = 256;
  outlined init with copy of Color(&v39, v33);
  outlined init with copy of TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>(&v40, v33, type metadata accessor for _BackgroundShapeModifier<Color, UnevenRoundedRectangle>);
  return outlined destroy of TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>(&v42, type metadata accessor for _BackgroundShapeModifier<Color, UnevenRoundedRectangle>);
}

void DebugOverlayModifier.labelBackgroundShape.getter(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (static Alignment.topLeading.getter() == v4 && v5 == v3)
  {
    goto LABEL_19;
  }

  if (static Alignment.top.getter() != v4 || v11 != v3)
  {
    if (static Alignment.topTrailing.getter() == v4 && v13 == v3)
    {
      v6.n128_u64[0] = 0;
      v7.n128_u64[0] = 4.0;
LABEL_16:
      v8.n128_u64[0] = 0;
      v9.n128_u64[0] = 4.0;
      goto LABEL_22;
    }

    if (static Alignment.trailing.getter() == v4 && v14 == v3)
    {
      v6.n128_u64[0] = 4.0;
      v7.n128_u64[0] = 0;
      goto LABEL_16;
    }

    if (static Alignment.bottomTrailing.getter() != v4 || v15 != v3)
    {
      if (static Alignment.bottom.getter() == v4 && v19 == v3)
      {
        v6.n128_u64[0] = 4.0;
        v7.n128_u64[0] = 4.0;
        v8.n128_u64[0] = 0;
        goto LABEL_21;
      }

      if (static Alignment.bottomLeading.getter() == v4 && v20 == v3 || static Alignment.leading.getter() == v4 && v21 == v3)
      {
        v6.n128_u64[0] = 0;
        v7.n128_u64[0] = 4.0;
        goto LABEL_20;
      }
    }

LABEL_19:
    v6.n128_u64[0] = 4.0;
    v7.n128_u64[0] = 0;
LABEL_20:
    v8.n128_u64[0] = 4.0;
LABEL_21:
    v9.n128_u64[0] = 0;
    goto LABEL_22;
  }

  v6.n128_u64[0] = 0;
  v7.n128_u64[0] = 0;
  v8.n128_u64[0] = 4.0;
  v9.n128_u64[0] = 4.0;
LABEL_22:
  *a1 = MEMORY[0x18D007BB0](v6, v7, v8, v9);
  *(a1 + 8) = v16;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = 1;
}

uint64_t ButtonStyleDebugOverlayModifier.color.getter(ValueMetadata *a1)
{
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  if (a1 == &type metadata for PlainButtonStyle)
  {

    return static Color.red.getter();
  }

  if (!AnyButtonStyleType.isTopLevelStyle.getter(a1))
  {
    type metadata accessor for PrimitiveButtonStyle.Type();
    String.init<A>(reflecting:)();
    v3 = specialized Sequence<>.starts<A>(with:)();

    if (v3)
    {
      return static Color.mint.getter();
    }

    return static Color.red.getter();
  }

  return static Color.blue.getter();
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ButtonStyleDebugOverlayModifier@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  lazy protocol witness table accessor for type AnyButtonStyleType and conformance AnyButtonStyleType();
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  v6 = v5;
  v7 = ButtonStyleDebugOverlayModifier.color.getter(v3);
  result = static Alignment.topLeading.getter();
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = result;
  a1[4] = v9;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyButtonStyleType and conformance AnyButtonStyleType()
{
  result = lazy protocol witness table cache variable for type AnyButtonStyleType and conformance AnyButtonStyleType;
  if (!lazy protocol witness table cache variable for type AnyButtonStyleType and conformance AnyButtonStyleType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyButtonStyleType and conformance AnyButtonStyleType);
  }

  return result;
}

uint64_t destroy for DebugOverlayModifier()
{
}

uint64_t initializeWithCopy for DebugOverlayModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *assignWithCopy for DebugOverlayModifier(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1;
}

uint64_t assignWithTake for DebugOverlayModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ButtonStyleDebugOverlayModifier>, DebugOverlayModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ButtonStyleDebugOverlayModifier>, DebugOverlayModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ButtonStyleDebugOverlayModifier>, DebugOverlayModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ButtonStyleDebugOverlayModifier>, DebugOverlayModifier>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ButtonStyleDebugOverlayModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonStyleDebugOverlayModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<ButtonStyleDebugOverlayModifier>, lazy protocol witness table accessor for type ButtonStyleDebugOverlayModifier and conformance ButtonStyleDebugOverlayModifier);
    lazy protocol witness table accessor for type DebugOverlayModifier and conformance DebugOverlayModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ButtonStyleDebugOverlayModifier>, DebugOverlayModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ButtonStyleDebugOverlayModifier>, DebugOverlayModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ButtonStyleDebugOverlayModifier>, DebugOverlayModifier>)
  {
    type metadata accessor for _ViewModifier_Content<ButtonStyleDebugOverlayModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ButtonStyleDebugOverlayModifier>, lazy protocol witness table accessor for type ButtonStyleDebugOverlayModifier and conformance ButtonStyleDebugOverlayModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ButtonStyleDebugOverlayModifier>, DebugOverlayModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DebugOverlayModifier and conformance DebugOverlayModifier()
{
  result = lazy protocol witness table cache variable for type DebugOverlayModifier and conformance DebugOverlayModifier;
  if (!lazy protocol witness table cache variable for type DebugOverlayModifier and conformance DebugOverlayModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DebugOverlayModifier and conformance DebugOverlayModifier);
  }

  return result;
}

void type metadata accessor for TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>()
{
  if (!lazy cache variable for type metadata for TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>)
  {
    type metadata accessor for (ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)();
    v0 = type metadata accessor for TupleView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>);
    }
  }
}

void type metadata accessor for (ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>))
  {
    type metadata accessor for ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>(255);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>));
    }
  }
}

void type metadata accessor for ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>()
{
  if (!lazy cache variable for type metadata for StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>)
  {
    type metadata accessor for _ShapeView<RoundedRectangle, Color>();
    lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
    lazy protocol witness table accessor for type _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>> and conformance _OverlayModifier<A>(&lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<RoundedRectangle, Color>);
    v0 = type metadata accessor for StrokeShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, type metadata accessor for _ForegroundStyleModifier<Color>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_7(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>)
  {
    type metadata accessor for ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>();
    _sSiSgMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.TruncationMode>, MEMORY[0x1E6980FC0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_7(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>);
    }
  }
}

void _sSiSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _ForegroundStyleModifier<Color>()
{
  if (!lazy cache variable for type metadata for _ForegroundStyleModifier<Color>)
  {
    v0 = type metadata accessor for _ForegroundStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ForegroundStyleModifier<Color>);
    }
  }
}

void type metadata accessor for _BackgroundShapeModifier<Color, UnevenRoundedRectangle>()
{
  if (!lazy cache variable for type metadata for _BackgroundShapeModifier<Color, UnevenRoundedRectangle>)
  {
    lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle();
    v0 = type metadata accessor for _BackgroundShapeModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BackgroundShapeModifier<Color, UnevenRoundedRectangle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle()
{
  result = lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle;
  if (!lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle);
  }

  return result;
}

void type metadata accessor for _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>>()
{
  if (!lazy cache variable for type metadata for _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>>)
  {
    type metadata accessor for ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>, type metadata accessor for ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for _OverlayModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>>);
    }
  }
}

void type metadata accessor for ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>()
{
  if (!lazy cache variable for type metadata for ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>();
    lazy protocol witness table accessor for type _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>> and conformance _OverlayModifier<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>);
    v0 = type metadata accessor for ZStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>, type metadata accessor for ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>);
    lazy protocol witness table accessor for type _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>> and conformance _OverlayModifier<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>> and conformance ZStack<A>, type metadata accessor for ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>> and conformance _OverlayModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<DebugOverlayModifier>, _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DebugOverlayModifier>, _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DebugOverlayModifier>, _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<DebugOverlayModifier>, _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ButtonStyleDebugOverlayModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<DebugOverlayModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<DebugOverlayModifier>, lazy protocol witness table accessor for type DebugOverlayModifier and conformance DebugOverlayModifier);
    lazy protocol witness table accessor for type _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>> and conformance _OverlayModifier<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>> and conformance _OverlayModifier<A>, type metadata accessor for _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DebugOverlayModifier>, _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<DebugOverlayModifier>, _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<DebugOverlayModifier>, _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>>>)
  {
    type metadata accessor for _ViewModifier_Content<ButtonStyleDebugOverlayModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<DebugOverlayModifier>, lazy protocol witness table accessor for type DebugOverlayModifier and conformance DebugOverlayModifier);
    type metadata accessor for _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<DebugOverlayModifier>, _OverlayModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<StrokeShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, _PaddingLayout>, _BackgroundShapeModifier<Color, UnevenRoundedRectangle>>)>>, _AllowsHitTestingModifier>>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<ButtonStyleDebugOverlayModifier>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _ViewModifier_Content();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ButtonStyleDebugOverlayModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ViewModifier_Content<ButtonStyleDebugOverlayModifier>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _PreferenceWritingModifier<ToolbarRoleKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<ToolbarRoleKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<ToolbarRoleKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<ToolbarRoleKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<ToolbarRoleKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<ToolbarRoleKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<ToolbarRoleKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<ToolbarRoleKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarRole.Role and conformance ToolbarRole.Role()
{
  result = lazy protocol witness table cache variable for type ToolbarRole.Role and conformance ToolbarRole.Role;
  if (!lazy protocol witness table cache variable for type ToolbarRole.Role and conformance ToolbarRole.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarRole.Role and conformance ToolbarRole.Role);
  }

  return result;
}

unsigned __int8 *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ToolbarRoleKey(unsigned __int8 *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (v3 == 3)
  {
    result = a2(&v4);
    LOBYTE(v3) = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t initializeWithCopy for InspectorDimmingView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for InspectorDimmingView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for InspectorDimmingView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

id InspectorDimmingView.body.getter(char a1, uint64_t a2, uint64_t a3, char a4)
{
  result = [objc_opt_self() _dimmingViewColor];
  if (result)
  {
    type metadata accessor for UIKitPlatformColorDefinition();
    Color.init(_platformColor:definition:)();
    static Edge.Set.all.getter();
    if (a1 == 1)
    {
      type metadata accessor for Binding<Bool>();
      MEMORY[0x18D00ACC0](&v10);
    }

    lazy protocol witness table accessor for type OpacityTransition and conformance OpacityTransition();
    AnyTransition.init<A>(_:)();
    static Animation.easeInOut(duration:)();
    type metadata accessor for Binding<Bool>();
    MEMORY[0x18D00ACC0](&v10);
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    *(v9 + 32) = a3;
    *(v9 + 40) = a4 & 1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>);

    View.onTapGesture(count:perform:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in InspectorDimmingView.body.getter()
{
  static Animation.easeInOut(duration:)();
  withAnimation<A>(_:_:)();
}

__n128 InspectorColumnSeparator.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() opaqueSeparatorColor];
  type metadata accessor for UIKitPlatformColorDefinition();
  v3 = Color.init(_platformColor:definition:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v6[6] = v7;
  *&v6[22] = v8;
  *&v6[38] = v9;
  v4 = static Edge.Set.vertical.getter();
  *a1 = v3;
  *(a1 + 8) = 256;
  *(a1 + 10) = *v6;
  *(a1 + 26) = *&v6[16];
  result = *&v6[32];
  *(a1 + 42) = *&v6[32];
  *(a1 + 56) = *(&v9 + 1);
  *(a1 + 64) = 1;
  *(a1 + 72) = v4;
  return result;
}

double InspectorSeparatorShadow.body.getter@<D0>(uint64_t a1@<X8>)
{
  static Color.black.getter();
  v2 = Color.opacity(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v2;
  *(a1 + 8) = 0x4012000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  result = *&v6;
  *(a1 + 64) = v6;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>();
    type metadata accessor for ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>();
    type metadata accessor for ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, MEMORY[0x1E697F528], MEMORY[0x1E697F518], MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>)
  {
    type metadata accessor for ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>(255, &lazy cache variable for type metadata for ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>);
    }
  }
}

void type metadata accessor for ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>(255, &lazy cache variable for type metadata for ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShadowView<Rectangle>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShadowView<Rectangle>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShadowView<Rectangle>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Rectangle, Color>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ShadowView<Rectangle>, _FrameLayout>, type metadata accessor for _ShadowView<Rectangle>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShadowView<Rectangle>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ShadowView<Rectangle>()
{
  if (!lazy cache variable for type metadata for _ShadowView<Rectangle>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v0 = type metadata accessor for _ShadowView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShadowView<Rectangle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _FrameLayout>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _FrameLayout>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _FrameLayout>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Rectangle, Color>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _FrameLayout>, _SafeAreaRegionsIgnoringLayout>, type metadata accessor for ModifiedContent<_ShapeView<Rectangle, Color>, _FrameLayout>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Rectangle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ShapeView<Rectangle, Color>, _FrameLayout>, lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _FrameLayout>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ShapeView<Rectangle, Color>, _FrameLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>()
{
  result = lazy protocol witness table cache variable for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>;
  if (!lazy protocol witness table cache variable for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>)
  {
    type metadata accessor for _ShapeView<Rectangle, Color>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>);
  }

  return result;
}