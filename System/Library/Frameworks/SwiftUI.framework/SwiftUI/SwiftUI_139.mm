uint64_t CodableAccessibilityAction.encode(to:)(void *a1)
{
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityAction.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys, &unk_1EFFE9430, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = v9;
  v27 = *(v1 + 40);
  v19 = *(v1 + 48);
  v16 = *(v1 + 64);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined consume of CodableAccessibilityAction.ActionKind(v7, v8, v10, outlined copy of Text.ResolvedMessage);
  lazy protocol witness table accessor for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = v7;
  v23 = v8;
  v24 = v10;
  v11 = v4;
  v28 = 0;
  lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind and conformance CodableAccessibilityAction.ActionKind();
  v12 = v20;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v12)
  {
    outlined consume of CodableAccessibilityAction.ActionKind(v22, v23, v24, outlined consume of AccessibilityText.Storage);
    return (*(v21 + 8))(v6, v4);
  }

  else
  {
    v14 = v21;
    outlined consume of CodableAccessibilityAction.ActionKind(v22, v23, v24, outlined consume of AccessibilityText.Storage);
    v22 = v18;
    v23 = v17;
    LOBYTE(v24) = v27;
    v25 = v19;
    v26 = v16;
    v28 = 1;
    lazy protocol witness table accessor for type AppIntentAction and conformance AppIntentAction();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v14 + 8))(v6, v11);
  }
}

uint64_t CodableAccessibilityAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityAction.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys, &unk_1EFFE9430, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v52;
  LOBYTE(v25) = 0;
  lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind and conformance CodableAccessibilityAction.ActionKind();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v30;
  v12 = v31;
  v24 = v32;
  v42 = 1;
  lazy protocol witness table accessor for type AppIntentAction and conformance AppIntentAction();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v9 + 8))(v8, v5);
  v13 = v44;
  v21 = v43;
  v14 = v45;
  v22 = *(&v46 + 1);
  v23 = v46;
  v15 = v47;
  v49 = v45;
  v16 = v11;
  *&v25 = v11;
  *(&v25 + 1) = v12;
  LOWORD(v11) = v24;
  LOWORD(v26) = v24;
  *(&v26 + 2) = v50;
  WORD3(v26) = v51;
  *(&v26 + 1) = v43;
  *&v27 = v44;
  BYTE8(v27) = v45;
  HIDWORD(v27) = *&v48[3];
  *(&v27 + 9) = *v48;
  v28 = v46;
  v29 = v47;
  v17 = v27;
  v18 = v46;
  *(v10 + 64) = v47;
  *(v10 + 32) = v17;
  *(v10 + 48) = v18;
  v19 = v26;
  *v10 = v25;
  *(v10 + 16) = v19;
  outlined init with copy of CodableAccessibilityAction(&v25, &v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v30 = v16;
  v31 = v12;
  v32 = v11;
  v33 = v50;
  v34 = v51;
  v35 = v21;
  v36 = v13;
  v37 = v14;
  *v38 = *v48;
  *&v38[3] = *&v48[3];
  v39 = v23;
  v40 = v22;
  v41 = v15;
  return outlined destroy of CodableAccessibilityAction(&v30);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityAction.ActionKind.CodingKeys()
{
  v1 = *v0;
  v2 = 0x746C7561666564;
  v3 = 0x6574656C6564;
  v4 = 0x756E654D776F6873;
  if (v1 != 4)
  {
    v4 = 0x6D6F74737563;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657061637365;
  if (v1 != 1)
  {
    v5 = 0x706154636967616DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityAction.ActionKind.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized CodableAccessibilityAction.ActionKind.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityAction.ActionKind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.CodingKeys and conformance CodableAccessibilityAction.ActionKind.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityAction.ActionKind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.CodingKeys and conformance CodableAccessibilityAction.ActionKind.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.CustomCodingKeys and conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.CustomCodingKeys and conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityAction.ActionKind.DefaultCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.DefaultCodingKeys and conformance CodableAccessibilityAction.ActionKind.DefaultCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityAction.ActionKind.DefaultCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.DefaultCodingKeys and conformance CodableAccessibilityAction.ActionKind.DefaultCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityAction.ActionKind.DeleteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.DeleteCodingKeys and conformance CodableAccessibilityAction.ActionKind.DeleteCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityAction.ActionKind.DeleteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.DeleteCodingKeys and conformance CodableAccessibilityAction.ActionKind.DeleteCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityAction.ActionKind.EscapeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.EscapeCodingKeys and conformance CodableAccessibilityAction.ActionKind.EscapeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityAction.ActionKind.EscapeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.EscapeCodingKeys and conformance CodableAccessibilityAction.ActionKind.EscapeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityAction.ActionKind.MagicTapCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.MagicTapCodingKeys and conformance CodableAccessibilityAction.ActionKind.MagicTapCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityAction.ActionKind.MagicTapCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.MagicTapCodingKeys and conformance CodableAccessibilityAction.ActionKind.MagicTapCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys and conformance CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys and conformance CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityAction.CodingKeys()
{
  if (*v0)
  {
    return 0x746E65746E69;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityAction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E69 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double AccessibilityAppIntentHandler.asCustomAction(category:fallbackLabel:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(v6 + 24);
  v9 = *(v6 + 32);
  v10 = *(v6 + 40);
  v11 = *(v6 + 48);
  v24 = a1[1];
  v25 = *a1;
  v22 = a1[3];
  v23 = a1[2];
  v20 = *(v6 + 72);
  v21 = *(v6 + 144);
  v26 = *(v6 + 56);
  if (v8 >= 5)
  {
    v12 = *(v6 + 8);
    v14 = *(v6 + 16);
    v13 = *v6;
    outlined copy of Text.Storage(*v6, v12, *(v6 + 16) & 1);
  }

  else
  {
    v8 = *(v6 + 136);
    if (v8)
    {
      v13 = *(v6 + 112);
      v12 = *(v6 + 120);
      v14 = *(v6 + 128);
      outlined copy of Text?(v13, v12, v14, *(v6 + 136));
    }

    else
    {
      if (!a5)
      {
        result = 0.0;
        *(a6 + 25) = 0u;
        *a6 = 0u;
        *(a6 + 16) = 0u;
        return result;
      }

      LOBYTE(v14) = a4;
      v12 = a3;
      v13 = a2;
      outlined copy of Text?(a2, a3, a4, a5);
      v8 = a5;
    }
  }

  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
  *(a6 + 24) = v15;
  *(a6 + 32) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  v16 = swift_allocObject();
  *a6 = v16;
  *(v16 + 16) = v13;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14 & 1;
  *(v16 + 40) = v8;
  *(v16 + 48) = v9;
  *(v16 + 56) = v10;
  *(v16 + 64) = v11;
  *(v16 + 72) = v26;
  *(v16 + 88) = v20;
  *(v16 + 96) = v25;
  *(v16 + 104) = v24;
  *(v16 + 112) = v23;
  *(v16 + 120) = v22;
  *(v16 + 128) = 0u;
  *(v16 + 144) = 0u;
  *(v16 + 160) = v21;
  *(v16 + 168) = 1;
  *(a6 + 40) = 1;
  outlined copy of Environment<AppIntentExecutor?>.Content(v9, v10, v11);
  v17 = v26;

  outlined copy of AccessibilityActionCategory?(v25, v24, v23, v22);

  return result;
}

uint64_t AccessibilityAppIntentHandler.asCombinedAction(name:properties:child:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(v5 + 32);
  v10 = *(v5 + 40);
  v11 = *(v5 + 48);
  v43 = *(v5 + 56);
  v12 = *(v5 + 72);
  v13 = *(v5 + 80);
  v14 = *(v5 + 88);
  v15 = *(v5 + 96);
  v16 = *(v5 + 104);
  v17 = *(v5 + 144);
  v38 = v10;
  v39 = v9;
  outlined copy of Environment<AppIntentExecutor?>.Content(v9, v10, v11);
  v18 = v43;
  v37 = v12;

  v36 = v13;
  v19 = v13;
  v20 = v14;
  v21 = v14;
  v22 = v15;
  v23 = v15;
  v24 = v16;
  v25 = v16;
  v26 = a3;
  outlined copy of AccessibilityActionCategory?(v19, v21, v23, v25);
  v27 = a1;
  v28 = a1;
  v29 = a2;
  outlined copy of Text.Storage(v28, a2, a3 & 1);
  v30 = a4;

  v40 = v17;
  if (!v17)
  {
    v31 = v24;
    v32 = AccessibilityProperties.images.getter();
    if (*(v32 + 16))
    {
      v40 = *(v32 + 32);
    }

    else
    {

      v40 = 0;
    }

    v24 = v31;
    v26 = a3;
    v30 = a4;
  }

  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
  *(a5 + 24) = v33;
  *(a5 + 32) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  v34 = swift_allocObject();
  *a5 = v34;
  *(v34 + 16) = v27;
  *(v34 + 24) = v29;
  *(v34 + 32) = v26 & 1;
  *(v34 + 40) = v30;
  *(v34 + 48) = v39;
  *(v34 + 56) = v38;
  *(v34 + 64) = v11;
  *(v34 + 72) = v43;
  *(v34 + 88) = v37;
  *(v34 + 96) = v36;
  *(v34 + 104) = v20;
  *(v34 + 112) = v22;
  *(v34 + 120) = v24;
  *(v34 + 128) = 0u;
  *(v34 + 144) = 0u;
  *(v34 + 160) = v40;
  *(v34 + 168) = 1;
  *(a5 + 40) = 1;
}

uint64_t AccessibilityAppIntentHandler.matches<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v10[2] = v2[2];
  v10[3] = v5;
  v10[4] = v2[4];
  v6 = v2[1];
  v10[0] = *v2;
  v10[1] = v6;
  outlined init with copy of AccessibilityAppIntentAction(v10, v11);
  LOBYTE(a2) = AccessibilityAppIntentAction.matches<A>(_:)(a1, a2);
  v7 = v2[3];
  v11[2] = v2[2];
  v11[3] = v7;
  v11[4] = v2[4];
  v8 = v2[1];
  v11[0] = *v2;
  v11[1] = v8;
  outlined destroy of AccessibilityAppIntentAction(v11);
  return a2 & 1;
}

uint64_t protocol witness for AccessibilityActionHandler.action.getter in conformance AccessibilityAppIntentHandler@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of AccessibilityAppIntentAction(v8, &v7);
}

uint64_t protocol witness for AccessibilityActionHandler.category.getter in conformance AccessibilityAppIntentHandler@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of AccessibilityActionCategory?(v2, v3, v4, v5);
}

uint64_t protocol witness for AccessibilityActionHandler.label.getter in conformance AccessibilityAppIntentHandler()
{
  v1 = v0[14];
  outlined copy of Text?(v1, v0[15], v0[16], v0[17]);
  return v1;
}

uint64_t protocol witness for AccessibilityActionHandler.perform(value:) in conformance AccessibilityAppIntentHandler@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for MainActor();
  static Semantics.v7.getter();
  result = static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
  *a1 = 2;
  return result;
}

double protocol witness for AccessibilityActionHandler.asCodableAction(in:) in conformance AccessibilityAppIntentHandler@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v2;
  v9[4] = *(v1 + 64);
  v3 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v3;
  if (*(v1 + 152) == 1)
  {
    outlined init with copy of AccessibilityAppIntentAction(v9, v8);
    AccessibilityAppIntentAction.asCodableAction(in:)(a1);
    v5 = *(v1 + 48);
    v8[2] = *(v1 + 32);
    v8[3] = v5;
    v8[4] = *(v1 + 64);
    v6 = *(v1 + 16);
    v8[0] = *v1;
    v8[1] = v6;
    outlined destroy of AccessibilityAppIntentAction(v8);
  }

  else
  {
    *(a1 + 64) = 0;
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t View.accessibilityAction(_:lnAction:perform:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  KeyPath = swift_getKeyPath();
  _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAppIntentAction>, &type metadata for AccessibilityAppIntentAction, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18CD63400;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  *(v14 + 48) = v11;
  *(v14 + 56) = v12;
  *(v14 + 64) = KeyPath;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  *(v14 + 88) = a2;
  *(v14 + 96) = a3;
  *(v14 + 104) = a4;
  type metadata accessor for MutableBox<[AccessibilityAppIntentAction]>();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v20 = v15;
  outlined copy of AccessibilityActionKind.ActionKind(v9, v10, v11, v12);
  v16 = a2;

  MEMORY[0x18D00A570](&v20, a5, &type metadata for AccessibilityArchivableAttachmentModifier, a6);
}

uint64_t View.accessibilityAction(named:lnAction:perform:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = a3 & 1;
  KeyPath = swift_getKeyPath();
  _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAppIntentAction>, &type metadata for AccessibilityAppIntentAction, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18CD63400;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = v16;
  *(v18 + 56) = a4;
  *(v18 + 64) = KeyPath;
  *(v18 + 72) = 0;
  *(v18 + 80) = 0;
  *(v18 + 88) = a5;
  *(v18 + 96) = a6;
  *(v18 + 104) = a7;
  type metadata accessor for MutableBox<[AccessibilityAppIntentAction]>();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v23 = v19;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  v20 = a5;

  MEMORY[0x18D00A570](&v23, a8, &type metadata for AccessibilityArchivableAttachmentModifier, a9);
}

uint64_t ModifiedContent<>.accessibilityAction(_:lnAction:perform:)@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a1[1];
  v14[0] = *a1;
  v14[1] = v11;
  KeyPath = swift_getKeyPath();
  v16 = 0;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v12 = a2;

  ModifiedContent<>.append(kind:intent:)(v14, &KeyPath, a5, a6);
}

uint64_t ModifiedContent<>.append(kind:intent:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = *(v4 + *(a3 + 36));
  swift_beginAccess();
  v26 = *(a2 + 16);
  v12 = a2[1];
  v25 = *a2;
  v13 = *(a2 + 3);
  v27 = v25;
  v28 = v12;
  v29 = a2[2];
  v14 = *(v11 + 16);

  outlined copy of AccessibilityActionKind.ActionKind(v7, v8, v9, v10);
  outlined init with copy of Environment<AppIntentExecutor?>(&v25, v24);
  v15 = v13;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 16) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    *(v11 + 16) = v14;
  }

  v18 = *(v14 + 2);
  v17 = *(v14 + 3);
  if (v18 >= v17 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v14);
  }

  *(v14 + 2) = v18 + 1;
  v19 = &v14[80 * v18];
  *(v19 + 4) = v7;
  *(v19 + 5) = v8;
  *(v19 + 6) = v9;
  *(v19 + 7) = v10;
  v20 = v27;
  v21 = v29;
  *(v19 + 5) = v28;
  *(v19 + 6) = v21;
  *(v19 + 4) = v20;
  *(v11 + 16) = v14;
  swift_endAccess();

  return (*(*(a3 - 8) + 16))(a4, v4, a3);
}

uint64_t ModifiedContent<>.accessibilityAction(named:lnAction:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v21[0] = a1;
  v21[1] = a2;
  v17 = a3 & 1;
  v21[2] = a3 & 1;
  v21[3] = a4;
  KeyPath = swift_getKeyPath();
  v23 = 0;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  v18 = a5;

  ModifiedContent<>.append(kind:intent:)(v21, &KeyPath, a8, a9);

  return outlined consume of AccessibilityActionKind.ActionKind(a1, a2, v17, a4);
}

uint64_t static AccessibilityArchivableAttachmentModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    return a3();
  }

  swift_beginAccess();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type AccessibilityArchivableAttachmentModifier.ArchivableTransform and conformance AccessibilityArchivableAttachmentModifier.ArchivableTransform();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier();
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

uint64_t AccessibilityArchivableAttachmentModifier.ArchivableTransform.value.getter()
{
  AGGraphGetValue();

  v0 = EnvironmentValues.accessibilityEnabled.getter();

  if ((v0 & 1) == 0)
  {
    return swift_getKeyPath();
  }

  v1 = *AGGraphGetValue();
  swift_beginAccess();
  v2 = *(*(v1 + 16) + 16);

  v28 = v2;
  if (v2)
  {
    v4 = 0;
    v29 = MEMORY[0x1E69E7CC0];
    v30 = result;
    v5 = result + 104;
    v24 = result + 104;
    do
    {
      v6 = (v5 + 80 * v4);
      v7 = v28 - v4;
      while (1)
      {
        if (v4 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v31 = v7;
        v8 = *(v6 - 9);
        v9 = *(v6 - 8);
        v10 = *(v6 - 7);
        v11 = *(v6 - 6);
        v12 = *(v6 - 5);
        v13 = *(v6 - 4);
        v14 = *(v6 - 24);
        v32 = *(v6 - 1);
        v15 = *v6;
        outlined copy of AccessibilityActionKind.ActionKind(v8, v9, v10, v11);
        v33 = v12;
        outlined copy of Environment<AppIntentExecutor?>.Content(v12, v13, v14);
        v16 = v32;

        Value = AGGraphGetValue();
        if (v11 < 5)
        {
          v26 = 0;
          v27 = 0;
          v18 = 255 - v11;
          goto LABEL_12;
        }

        v34 = *Value;

        outlined copy of AccessibilityActionKind.ActionKind(v8, v9, v10, v11);
        AccessibilityText.init(_:environment:idiom:)();
        if (v37 != 0xFF)
        {
          break;
        }

        outlined consume of AccessibilityActionKind.ActionKind(v8, v9, v10, v11);
        outlined consume of Environment<AppIntentExecutor?>.Content(v33, v13, v14);

        v6 += 10;
        ++v4;
        v7 = v31 - 1;
        result = v30;
        if (v31 == 1)
        {
          goto LABEL_20;
        }
      }

      v26 = v35;
      v27 = v36;
      v18 = v37 & 0x101;
LABEL_12:
      v25 = v18;
      outlined copy of Environment<AppIntentExecutor?>.Content(v33, v13, v14);
      v19 = v16;

      outlined consume of AccessibilityActionKind.ActionKind(v8, v9, v10, v11);
      outlined consume of Environment<AppIntentExecutor?>.Content(v33, v13, v14);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = v29;
      }

      else
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
      }

      ++v4;
      *(v20 + 2) = v22 + 1;
      v29 = v20;
      v23 = &v20[72 * v22];
      *(v23 + 4) = v26;
      *(v23 + 5) = v27;
      *(v23 + 24) = v25;
      *(v23 + 50) = v34;
      *(v23 + 27) = WORD2(v34);
      *(v23 + 7) = v33;
      *(v23 + 8) = v13;
      v23[72] = v14;
      *(v23 + 19) = *(&v35 + 3);
      *(v23 + 73) = v35;
      *(v23 + 5) = v32;
      *(v23 + 12) = v15;
      result = v30;
      v5 = v24;
    }

    while (v31 != 1);
  }

LABEL_20:

  return swift_getKeyPath();
}

uint64_t protocol witness for Rule.value.getter in conformance AccessibilityArchivableAttachmentModifier.ArchivableTransform@<X0>(uint64_t a1@<X8>)
{
  result = AccessibilityArchivableAttachmentModifier.ArchivableTransform.value.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double CodableAccessibilityActionList.actions.getter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4)
  {
    v42 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v6 = v42;
    v7 = (a4 + 32);
    do
    {
      v37 = v6;
      v8 = v7[3];
      v45 = v7[2];
      v46 = v8;
      v47 = *(v7 + 8);
      v9 = v7[1];
      v43 = *v7;
      v44 = v9;
      if (a3)
      {
        v40 = a1;
        v41 = a2;
        outlined init with copy of CodableAccessibilityAction(&v43, &v38);
        outlined init with copy of CodableAccessibilityAction(&v43, &v38);
        outlined copy of Environment<AppIntentExecutor?>.Content(a1, a2, 1);
      }

      else
      {
        outlined init with copy of CodableAccessibilityAction(&v43, &v38);
        outlined init with copy of CodableAccessibilityAction(&v43, &v38);
        outlined copy of Environment<AppIntentExecutor?>.Content(a1, a2, 0);
        v10 = static os_log_type_t.fault.getter();
        v11 = static Log.runtimeIssuesLog.getter();
        if (os_log_type_enabled(v11, v10))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *&v38 = v13;
          *v12 = 136315138;
          *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x800000018CD3F1C0, &v38);
          _os_log_impl(&dword_18BD4A000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x18D0110E0](v13, -1, -1);
          MEMORY[0x18D0110E0](v12, -1, -1);
        }

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<AppIntentExecutor?>.Content(a1, a2, 0);
      }

      v14 = v40;
      v15 = v41;
      if (v44 <= 0xFAu)
      {
        v38 = v43;
        v39 = v44;
        v16 = AccessibilityText.text.getter();
        v17 = v20;
        v19 = v21;
        v18 = v22 & 1;
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 4 - (v44 + 5);
      }

      v23 = swift_allocObject();
      *(v23 + 16) = v14;
      *(v23 + 24) = v15;
      v24 = v46;
      *(v23 + 64) = v45;
      *(v23 + 80) = v24;
      *(v23 + 96) = v47;
      v25 = v44;
      *(v23 + 32) = v43;
      *(v23 + 48) = v25;
      v26 = AccessibilityActionHandlerSeed++;
      type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>();
      v28 = v27;
      v29 = swift_allocObject();
      outlined destroy of CodableAccessibilityAction(&v43);
      *(v29 + 16) = v16;
      *(v29 + 24) = v17;
      *(v29 + 32) = v18;
      *(v29 + 40) = v19;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      *(v29 + 72) = 2;
      *(v29 + 80) = 0u;
      *(v29 + 96) = 0u;
      *(v29 + 112) = 0;
      *(v29 + 120) = partial apply for closure #1 in AnyAccessibilityAction.init(_:appIntentExecutor:);
      *(v29 + 128) = v23;
      *(v29 + 136) = v26;
      v6 = v37;
      v31 = *(v37 + 16);
      v30 = *(v37 + 24);
      v42 = v37;
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v6 = v42;
      }

      *(v6 + 16) = v31 + 1;
      v32 = v6 + 48 * v31;
      *(v32 + 32) = v29;
      result = *&v38;
      *(v32 + 40) = v38;
      *(v32 + 56) = v28;
      *(v32 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
      *(v32 + 72) = 0;
      v7 = (v7 + 72);
      --v4;
    }

    while (v4);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CodableAccessibilityActionList.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CodableAccessibilityActionList.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CodableAccessibilityActionList.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance CodableAccessibilityActionList.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityActionList.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityActionList.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityActionList.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityActionList.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance CodableAccessibilityActionList@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized CodableAccessibilityActionList.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t ArchivableAccessibilityActionModifier.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v15 = a5;
  HIDWORD(v14) = a4;
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ArchivableAccessibilityActionModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys, &unk_1EFFE9270, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = a3;
  v18 = BYTE4(v14) & 1;
  v19 = v15;
  lazy protocol witness table accessor for type CodableAccessibilityActionList and conformance CodableAccessibilityActionList();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivableAccessibilityActionModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivableAccessibilityActionModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ArchivableAccessibilityActionModifier()
{
  CodableAccessibilityActionList.actions.getter(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.init<A>(_:_:)();
  return AccessibilityAttachment.init(properties:)();
}

void *protocol witness for Decodable.init(from:) in conformance ArchivableAccessibilityActionModifier@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized ArchivableAccessibilityActionModifier.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 24) = v7;
  }

  return result;
}

void type metadata accessor for MutableBox<[AccessibilityAppIntentAction]>()
{
  if (!lazy cache variable for type metadata for MutableBox<[AccessibilityAppIntentAction]>)
  {
    _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(255, &lazy cache variable for type metadata for [AccessibilityAppIntentAction], &type metadata for AccessibilityAppIntentAction, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for MutableBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MutableBox<[AccessibilityAppIntentAction]>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityArchivableAttachmentModifier.ArchivableTransform and conformance AccessibilityArchivableAttachmentModifier.ArchivableTransform()
{
  result = lazy protocol witness table cache variable for type AccessibilityArchivableAttachmentModifier.ArchivableTransform and conformance AccessibilityArchivableAttachmentModifier.ArchivableTransform;
  if (!lazy protocol witness table cache variable for type AccessibilityArchivableAttachmentModifier.ArchivableTransform and conformance AccessibilityArchivableAttachmentModifier.ArchivableTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityArchivableAttachmentModifier.ArchivableTransform and conformance AccessibilityArchivableAttachmentModifier.ArchivableTransform);
  }

  return result;
}

uint64_t destroy for AccessibilityAppIntentAction(uint64_t a1)
{
  if (*(a1 + 24) >= 5uLL)
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  outlined consume of Environment<AppIntentExecutor?>.Content(*(a1 + 32), *(a1 + 40), *(a1 + 48));
}

uint64_t initializeWithCopy for AccessibilityAppIntentAction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 >= 5)
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v7, v8);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v4;
  }

  else
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  outlined copy of Environment<AppIntentExecutor?>.Content(v9, v10, v11);
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  v12 = *(a2 + 72);
  v13 = *(a2 + 56);
  *(a1 + 56) = v13;
  *(a1 + 72) = v12;
  v14 = v13;

  return a1;
}

uint64_t assignWithCopy for AccessibilityAppIntentAction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24) >= 5uLL)
  {
    if (v4 >= 5)
    {
      v10 = *a2;
      v11 = *(a2 + 8);
      v12 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v11, v12);
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      *a1 = v10;
      *(a1 + 8) = v11;
      *(a1 + 16) = v12;
      outlined consume of Text.Storage(v13, v14, v15);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Text(a1);
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
    }
  }

  else if (v4 >= 5)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v8, v9);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  outlined copy of Environment<AppIntentExecutor?>.Content(v16, v17, v18);
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  outlined consume of Environment<AppIntentExecutor?>.Content(v19, v20, v21);
  v22 = *(a2 + 56);
  v23 = *(a1 + 56);
  *(a1 + 56) = v22;
  v24 = v22;

  v25 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v25;

  return a1;
}

uint64_t assignWithTake for AccessibilityAppIntentAction(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) >= 5uLL)
  {
    v4 = *(a2 + 24);
    if (v4 >= 5)
    {
      v6 = *(a2 + 16);
      v7 = *a1;
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      outlined consume of Text.Storage(v7, v8, v9);
      *(a1 + 24) = v4;

      goto LABEL_6;
    }

    outlined destroy of Text(a1);
  }

  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
LABEL_6:
  v10 = *(a2 + 48);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v10;
  outlined consume of Environment<AppIntentExecutor?>.Content(v11, v12, v13);
  v14 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityAppIntentAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityAppIntentAction(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t destroy for AccessibilityAppIntentHandler(uint64_t a1)
{
  if (*(a1 + 24) >= 5uLL)
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  outlined consume of Environment<AppIntentExecutor?>.Content(*(a1 + 32), *(a1 + 40), *(a1 + 48));

  if (*(a1 + 104) >= 3uLL)
  {
    outlined consume of Text.Storage(*(a1 + 80), *(a1 + 88), *(a1 + 96));
  }

  if (*(a1 + 136))
  {
    outlined consume of Text.Storage(*(a1 + 112), *(a1 + 120), *(a1 + 128));
  }
}

uint64_t initializeWithCopy for AccessibilityAppIntentHandler(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 >= 5)
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v7, v8);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v4;
  }

  else
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  outlined copy of Environment<AppIntentExecutor?>.Content(v9, v10, v11);
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  v12 = *(a2 + 72);
  v13 = *(a2 + 56);
  *(a1 + 56) = v13;
  *(a1 + 72) = v12;
  v14 = *(a2 + 104);
  v15 = v13;

  if (v14 <= 2)
  {
    v16 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v16;
    v17 = *(a2 + 136);
    if (!v17)
    {
LABEL_9:
      v24 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v24;
      goto LABEL_10;
    }
  }

  else
  {
    v21 = *(a2 + 80);
    v22 = *(a2 + 88);
    v23 = *(a2 + 96);
    outlined copy of Text.Storage(v21, v22, v23);
    *(a1 + 80) = v21;
    *(a1 + 88) = v22;
    *(a1 + 96) = v23;
    *(a1 + 104) = v14;

    v17 = *(a2 + 136);
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  v18 = *(a2 + 112);
  v19 = *(a2 + 120);
  v20 = *(a2 + 128);
  outlined copy of Text.Storage(v18, v19, v20);
  *(a1 + 112) = v18;
  *(a1 + 120) = v19;
  *(a1 + 128) = v20;
  *(a1 + 136) = v17;

LABEL_10:
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);

  return a1;
}

uint64_t assignWithCopy for AccessibilityAppIntentHandler(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24) >= 5uLL)
  {
    if (v4 >= 5)
    {
      v10 = *a2;
      v11 = *(a2 + 8);
      v12 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v11, v12);
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      *a1 = v10;
      *(a1 + 8) = v11;
      *(a1 + 16) = v12;
      outlined consume of Text.Storage(v13, v14, v15);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Text(a1);
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
    }
  }

  else if (v4 >= 5)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v8, v9);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  outlined copy of Environment<AppIntentExecutor?>.Content(v16, v17, v18);
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  outlined consume of Environment<AppIntentExecutor?>.Content(v19, v20, v21);
  v22 = *(a2 + 56);
  v23 = *(a1 + 56);
  *(a1 + 56) = v22;
  v24 = v22;

  v25 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v25;

  v26 = *(a1 + 104);
  v27 = *(a2 + 104);
  if (v26 == 2)
  {
    if (v27 <= 2)
    {
LABEL_10:
      v28 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v28;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v27 == 2)
  {
    outlined destroy of AccessibilityActionCategory(a1 + 80);
LABEL_13:
    v29 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v29;
    goto LABEL_20;
  }

  if (v26 < 2)
  {
    if (v27 < 2)
    {
      goto LABEL_10;
    }

LABEL_16:
    v30 = *(a2 + 80);
    v31 = *(a2 + 88);
    v32 = *(a2 + 96);
    outlined copy of Text.Storage(v30, v31, v32);
    *(a1 + 80) = v30;
    *(a1 + 88) = v31;
    *(a1 + 96) = v32;
    *(a1 + 104) = *(a2 + 104);

    goto LABEL_20;
  }

  if (v27 < 2)
  {
    outlined destroy of Text(a1 + 80);
    goto LABEL_13;
  }

  v33 = *(a2 + 80);
  v34 = *(a2 + 88);
  v35 = *(a2 + 96);
  outlined copy of Text.Storage(v33, v34, v35);
  v36 = *(a1 + 80);
  v37 = *(a1 + 88);
  v38 = *(a1 + 96);
  *(a1 + 80) = v33;
  *(a1 + 88) = v34;
  *(a1 + 96) = v35;
  outlined consume of Text.Storage(v36, v37, v38);
  *(a1 + 104) = *(a2 + 104);

LABEL_20:
  v39 = *(a2 + 136);
  if (*(a1 + 136))
  {
    if (v39)
    {
      v40 = *(a2 + 112);
      v41 = *(a2 + 120);
      v42 = *(a2 + 128);
      outlined copy of Text.Storage(v40, v41, v42);
      v43 = *(a1 + 112);
      v44 = *(a1 + 120);
      v45 = *(a1 + 128);
      *(a1 + 112) = v40;
      *(a1 + 120) = v41;
      *(a1 + 128) = v42;
      outlined consume of Text.Storage(v43, v44, v45);
      *(a1 + 136) = *(a2 + 136);
    }

    else
    {
      outlined destroy of Text(a1 + 112);
      v49 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v49;
    }
  }

  else if (v39)
  {
    v46 = *(a2 + 112);
    v47 = *(a2 + 120);
    v48 = *(a2 + 128);
    outlined copy of Text.Storage(v46, v47, v48);
    *(a1 + 112) = v46;
    *(a1 + 120) = v47;
    *(a1 + 128) = v48;
    *(a1 + 136) = *(a2 + 136);
  }

  else
  {
    v50 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v50;
  }

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t assignWithTake for AccessibilityAppIntentHandler(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) < 5uLL)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 24);
  if (v4 < 5)
  {
    outlined destroy of Text(a1);
LABEL_4:
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    goto LABEL_6;
  }

  v6 = *(a2 + 16);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = v4;

LABEL_6:
  v10 = *(a2 + 48);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v10;
  outlined consume of Environment<AppIntentExecutor?>.Content(v11, v12, v13);
  v14 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  v15 = *(a1 + 104);
  if (v15 != 2)
  {
    v16 = *(a2 + 104);
    if (v16 == 2)
    {
      outlined destroy of AccessibilityActionCategory(a1 + 80);
    }

    else if (v15 >= 2)
    {
      if (v16 >= 2)
      {
        v25 = *(a2 + 96);
        v26 = *(a1 + 80);
        v27 = *(a1 + 88);
        v28 = *(a1 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v25;
        outlined consume of Text.Storage(v26, v27, v28);
        *(a1 + 104) = v16;

        if (!*(a1 + 136))
        {
          goto LABEL_16;
        }

        goto LABEL_13;
      }

      outlined destroy of Text(a1 + 80);
    }
  }

  v17 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v17;
  if (!*(a1 + 136))
  {
LABEL_16:
    v23 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v23;
    goto LABEL_17;
  }

LABEL_13:
  v18 = *(a2 + 136);
  if (!v18)
  {
    outlined destroy of Text(a1 + 112);
    goto LABEL_16;
  }

  v19 = *(a2 + 128);
  v20 = *(a1 + 112);
  v21 = *(a1 + 120);
  v22 = *(a1 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v19;
  outlined consume of Text.Storage(v20, v21, v22);
  *(a1 + 136) = v18;

LABEL_17:
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityAppIntentHandler(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityAppIntentHandler(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityAppIntentHandler(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityAppIntentAction(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityAppIntentAction and conformance AccessibilityAppIntentAction();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityAppIntentAction and conformance AccessibilityAppIntentAction()
{
  result = lazy protocol witness table cache variable for type AccessibilityAppIntentAction and conformance AccessibilityAppIntentAction;
  if (!lazy protocol witness table cache variable for type AccessibilityAppIntentAction and conformance AccessibilityAppIntentAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAppIntentAction and conformance AccessibilityAppIntentAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityAppIntentAction and conformance AccessibilityAppIntentAction;
  if (!lazy protocol witness table cache variable for type AccessibilityAppIntentAction and conformance AccessibilityAppIntentAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAppIntentAction and conformance AccessibilityAppIntentAction);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ArchivableAccessibilityActionModifier(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier();
  a1[2] = lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier();
  result = lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier();
  a1[3] = result;
  return result;
}

uint64_t outlined copy of AccessibilityActionCategory?(uint64_t result, uint64_t a2, char a3, unint64_t a4)
{
  if (a4 != 2)
  {
    return outlined copy of AccessibilityActionCategory.Category(result, a2, a3, a4);
  }

  return result;
}

uint64_t specialized static AccessibilityAppIntentAction.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[7];
  v9 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v13 = a2[7];
  if (v7 > 1)
  {
    switch(v7)
    {
      case 2:
        outlined consume of AccessibilityActionKind.ActionKind(v4, v5, v6, 2uLL);
        if (v11 != 2)
        {
          return 0;
        }

        goto LABEL_19;
      case 3:
        outlined consume of AccessibilityActionKind.ActionKind(v4, v5, v6, 3uLL);
        if (v11 != 3)
        {
          return 0;
        }

        goto LABEL_19;
      case 4:
        outlined consume of AccessibilityActionKind.ActionKind(v4, v5, v6, 4uLL);
        if (v11 != 4)
        {
          return 0;
        }

LABEL_19:
        type metadata accessor for NSObject();
        v17 = v8;
        v18 = v13;
        v19 = static NSObject.== infix(_:_:)();

        return v19 & 1;
    }

    goto LABEL_17;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      outlined consume of AccessibilityActionKind.ActionKind(v4, v5, v6, 1uLL);
      if (v11 != 1)
      {
        return 0;
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v11 < 5)
    {
      return 0;
    }

    v14 = v4;
    v15 = a1[1];
    v16 = a1[2];
    outlined copy of AccessibilityActionKind.ActionKind(*a2, a2[1], a2[2], a2[3]);
    outlined copy of AccessibilityActionKind.ActionKind(v14, v15, v16, v7);
    v21 = static Text.== infix(_:_:)();
    outlined consume of AccessibilityActionKind.ActionKind(v9, v10, v12, v11);
    outlined consume of AccessibilityActionKind.ActionKind(v14, v15, v16, v7);
    if ((v21 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_19;
  }

  outlined consume of AccessibilityActionKind.ActionKind(v4, v5, v6, 0);
  if (!v11)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t specialized static AccessibilityAppIntentHandler.== infix(_:_:)(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v51 = *(a1 + 32);
  v52 = v3;
  v4 = *(a1 + 16);
  v50[0] = *a1;
  v50[1] = v4;
  v5 = a2[2];
  v6 = *a2;
  v55 = a2[1];
  v56 = v5;
  v7 = a2[2];
  v8 = a2[4];
  v57 = a2[3];
  v58 = v8;
  v9 = *a2;
  v10 = *(a1 + 48);
  v53 = *(a1 + 64);
  v54 = v9;
  v46 = v2;
  v47 = v51;
  v11 = *(a1 + 64);
  v48 = v10;
  v49 = v11;
  v42 = v7;
  v43 = v57;
  v44 = a2[4];
  v45 = v50[0];
  v13 = *(a1 + 80);
  v12 = *(a1 + 88);
  v15 = *(a1 + 96);
  v14 = *(a1 + 104);
  v33 = *(a1 + 144);
  v34 = *(a1 + 128);
  v16 = *(a2 + 10);
  v17 = *(a2 + 11);
  v18 = *(a2 + 12);
  v19 = *(a2 + 13);
  v37 = *(a2 + 14);
  v38 = *(a1 + 136);
  v36 = *(a2 + 15);
  v35 = *(a2 + 16);
  v39 = *(a2 + 17);
  v32 = *(a2 + 18);
  v30 = *(a2 + 152);
  v31 = *(a1 + 152);
  v40 = v6;
  v41 = v55;
  outlined init with copy of AccessibilityAppIntentAction(v50, v60);
  outlined init with copy of AccessibilityAppIntentAction(&v54, v60);
  v20 = specialized static AccessibilityAppIntentAction.== infix(_:_:)(&v45, &v40);
  v59[2] = v42;
  v59[3] = v43;
  v59[4] = v44;
  v59[0] = v40;
  v59[1] = v41;
  outlined destroy of AccessibilityAppIntentAction(v59);
  v60[2] = v47;
  v60[3] = v48;
  v60[4] = v49;
  v60[0] = v45;
  v60[1] = v46;
  outlined destroy of AccessibilityAppIntentAction(v60);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  if (v14 == 2)
  {
    outlined copy of AccessibilityActionCategory?(v13, v12, v15, 2uLL);
    if (v19 == 2)
    {
      v14 = 2;
      outlined copy of AccessibilityActionCategory?(v16, v17, v18, 2uLL);
LABEL_15:
      outlined consume of AccessibilityActionCategory?(v13, v12, v15, v14);
      goto LABEL_16;
    }

    outlined copy of AccessibilityActionCategory?(v16, v17, v18, v19);
    goto LABEL_8;
  }

  if (v19 == 2)
  {
    outlined copy of AccessibilityActionCategory?(v13, v12, v15, v14);
    outlined copy of AccessibilityActionCategory?(v16, v17, v18, 2uLL);
    outlined copy of AccessibilityActionCategory?(v13, v12, v15, v14);
    outlined consume of AccessibilityActionCategory.Category(v13, v12, v15, v14);
LABEL_8:
    outlined consume of AccessibilityActionCategory?(v13, v12, v15, v14);
    v21 = v16;
    v22 = v17;
    v23 = v18;
    v24 = v19;
LABEL_28:
    outlined consume of AccessibilityActionCategory?(v21, v22, v23, v24);
    return 0;
  }

  if (!v14)
  {
    outlined copy of AccessibilityActionCategory?(v13, v12, v15, 0);
    v25 = 0;
    if (!v19)
    {
      goto LABEL_14;
    }

LABEL_27:
    outlined copy of AccessibilityActionCategory?(v16, v17, v18, v19);
    outlined copy of AccessibilityActionCategory?(v13, v12, v15, v25);
    outlined consume of AccessibilityActionCategory?(v16, v17, v18, v19);
    outlined consume of AccessibilityActionCategory.Category(v13, v12, v15, v14);
    v21 = v13;
    v22 = v12;
    v23 = v15;
    v24 = v14;
    goto LABEL_28;
  }

  if (v14 == 1)
  {
    v25 = 1;
    outlined copy of AccessibilityActionCategory?(v13, v12, v15, 1uLL);
    if (v19 != 1)
    {
      goto LABEL_27;
    }

LABEL_14:
    outlined copy of AccessibilityActionCategory?(v16, v17, v18, v14);
    outlined copy of AccessibilityActionCategory?(v13, v12, v15, v14);
    outlined consume of AccessibilityActionCategory?(v16, v17, v18, v14);
    outlined consume of AccessibilityActionCategory.Category(v13, v12, v15, v14);
    goto LABEL_15;
  }

  if (v19 < 2)
  {
    outlined copy of AccessibilityActionCategory?(v13, v12, v15, v14);
    v25 = v14;
    goto LABEL_27;
  }

  outlined copy of AccessibilityActionCategory?(v13, v12, v15, v14);
  outlined copy of AccessibilityActionCategory?(v16, v17, v18, v19);
  outlined copy of AccessibilityActionCategory?(v13, v12, v15, v14);
  LOBYTE(v45) = v18 & 1;
  v29 = static Text.== infix(_:_:)();
  outlined consume of AccessibilityActionCategory?(v16, v17, v18, v19);
  outlined consume of AccessibilityActionCategory.Category(v13, v12, v15, v14);
  outlined consume of AccessibilityActionCategory?(v13, v12, v15, v14);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if (v38)
  {
    if (!v39)
    {
      return 0;
    }

    outlined copy of Text.Storage(v37, v36, v35 & 1);

    LOBYTE(v45) = v34 & 1;
    v26 = static Text.== infix(_:_:)();
    outlined consume of Text.Storage(v37, v36, v35 & 1);

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  if (v33)
  {
    if (v32)
    {

      v27 = static Image.== infix(_:_:)();

      if (v27)
      {
        return v31 ^ v30 ^ 1u;
      }
    }
  }

  else if (!v32)
  {
    return v31 ^ v30 ^ 1u;
  }

  return 0;
}

uint64_t specialized CodableAccessibilityActionList.init(from:)(void *a1)
{
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityActionList.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys, &type metadata for CodableAccessibilityActionList.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  KeyPath = swift_getKeyPath();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v8 = v10;
    _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(0, &lazy cache variable for type metadata for [CodableAccessibilityAction], &type metadata for CodableAccessibilityAction, MEMORY[0x1E69E62F8]);
    _sSay7SwiftUI26CodableAccessibilityActionVGSayxGSesSeRzlWlTm_0(&lazy protocol witness table cache variable for type [CodableAccessibilityAction] and conformance <A> [A], lazy protocol witness table accessor for type CodableAccessibilityAction and conformance CodableAccessibilityAction);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v6, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return KeyPath;
  }
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys);
  }

  return result;
}

void *specialized ArchivableAccessibilityActionModifier.init(from:)(void *a1)
{
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivableAccessibilityActionModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys, &unk_1EFFE9270, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys();
  v9 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    lazy protocol witness table accessor for type CodableAccessibilityActionList and conformance CodableAccessibilityActionList();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    v9 = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t specialized CodableAccessibilityActionList.encode(to:)(void *a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityActionList.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys, &type metadata for CodableAccessibilityActionList.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityActionList.CodingKeys and conformance CodableAccessibilityActionList.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[1] = a2;
  _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(0, &lazy cache variable for type metadata for [CodableAccessibilityAction], &type metadata for CodableAccessibilityAction, MEMORY[0x1E69E62F8]);
  _sSay7SwiftUI26CodableAccessibilityActionVGSayxGSesSeRzlWlTm_0(&lazy protocol witness table cache variable for type [CodableAccessibilityAction] and conformance <A> [A], lazy protocol witness table accessor for type CodableAccessibilityAction and conformance CodableAccessibilityAction);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t _sSay7SwiftUI26CodableAccessibilityActionVGSayxGSesSeRzlWlTm_0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(255, &lazy cache variable for type metadata for [CodableAccessibilityAction], &type metadata for CodableAccessibilityAction, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAccessibilityActionModifier.CodingKeys and conformance ArchivableAccessibilityActionModifier.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityActionList and conformance CodableAccessibilityActionList()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityActionList and conformance CodableAccessibilityActionList;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityActionList and conformance CodableAccessibilityActionList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityActionList and conformance CodableAccessibilityActionList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityActionList and conformance CodableAccessibilityActionList;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityActionList and conformance CodableAccessibilityActionList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityActionList and conformance CodableAccessibilityActionList);
  }

  return result;
}

uint64_t outlined destroy of (AccessibilityAppIntentAction?, AccessibilityAppIntentAction?)(uint64_t a1)
{
  type metadata accessor for (AccessibilityAppIntentAction?, AccessibilityAppIntentAction?)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (AccessibilityAppIntentAction?, AccessibilityAppIntentAction?)()
{
  if (!lazy cache variable for type metadata for (AccessibilityAppIntentAction?, AccessibilityAppIntentAction?))
  {
    _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(255, &lazy cache variable for type metadata for AccessibilityAppIntentAction?, &type metadata for AccessibilityAppIntentAction, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AccessibilityAppIntentAction?, AccessibilityAppIntentAction?));
    }
  }
}

void type metadata accessor for Environment<AppIntentExecutor?>()
{
  if (!lazy cache variable for type metadata for Environment<AppIntentExecutor?>)
  {
    _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(255, &lazy cache variable for type metadata for AppIntentExecutor?, &type metadata for AppIntentExecutor, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<AppIntentExecutor?>);
    }
  }
}

uint64_t outlined init with copy of AccessibilityAppIntentAction?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t destroy for CodableAccessibilityAction(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != 251 && (v2 & 0xFC | 2) != 0xFE)
  {
    outlined consume of AccessibilityText.Storage(*a1, *(a1 + 8), v2 & 1);
  }

  outlined consume of Environment<AppIntentExecutor?>.Content(*(a1 + 24), *(a1 + 32), *(a1 + 40));
}

uint64_t initializeWithCopy for CodableAccessibilityAction(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  if (*(a2 + 8) == 251 || (v4 & 0xFC | 2) == 0xFE)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 8);
  }

  else
  {
    v12 = v4 >> 8;
    v13 = *a2;
    v14 = a2[1];
    v15 = v4 & 1;
    outlined copy of Text.ResolvedMessage(*a2, v14, v4 & 1);
    *a1 = v13;
    *(a1 + 8) = v14;
    *(a1 + 16) = v15;
    *(a1 + 17) = v12;
  }

  v5 = a2[3];
  v6 = a2[4];
  v7 = *(a2 + 40);
  outlined copy of Environment<AppIntentExecutor?>.Content(v5, v6, v7);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = a2[8];
  v9 = *(a2 + 3);
  *(a1 + 48) = v9;
  *(a1 + 64) = v8;
  v10 = v9;

  return a1;
}

uint64_t assignWithCopy for CodableAccessibilityAction(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  if (v4 != 251 && (v4 & 0xFC | 2) != 0xFE)
  {
    v18 = *(a2 + 8);
    if (v18 == 251 || (v18 & 0xFC | 2) == 0xFE)
    {
      outlined destroy of AccessibilityText(a1);
      v19 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 16) = v19;
      goto LABEL_6;
    }

    v23 = *a2;
    v24 = a2[1];
    v25 = v18 & 1;
    outlined copy of Text.ResolvedMessage(*a2, v24, v18 & 1);
    v26 = *a1;
    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    *a1 = v23;
    *(a1 + 8) = v24;
    *(a1 + 16) = v25;
    outlined consume of AccessibilityText.Storage(v26, v27, v28);
LABEL_11:
    *(a1 + 17) = *(a2 + 17);
    goto LABEL_6;
  }

  v5 = *(a2 + 8);
  if (v5 != 251 && (v5 & 0xFC | 2) != 0xFE)
  {
    v20 = *a2;
    v21 = a2[1];
    v22 = v5 & 1;
    outlined copy of Text.ResolvedMessage(*a2, v21, v5 & 1);
    *a1 = v20;
    *(a1 + 8) = v21;
    *(a1 + 16) = v22;
    goto LABEL_11;
  }

  v6 = *a2;
  *(a1 + 16) = *(a2 + 8);
  *a1 = v6;
LABEL_6:
  v7 = a2[3];
  v8 = a2[4];
  v9 = *(a2 + 40);
  outlined copy of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  outlined consume of Environment<AppIntentExecutor?>.Content(v10, v11, v12);
  v13 = a2[6];
  v14 = *(a1 + 48);
  *(a1 + 48) = v13;
  v15 = v13;

  v16 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v16;

  return a1;
}

uint64_t assignWithTake for CodableAccessibilityAction(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 == 251 || (v3 & 0xFC | 2) == 0xFE)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v11 = *(a2 + 16);
    if (v11 == 251 || (v11 & 0xFC | 2) == 0xFE)
    {
      v12 = a1;
      outlined destroy of AccessibilityText(a1);
      a1 = v12;
      *v12 = *a2;
      *(v12 + 16) = *(a2 + 16);
    }

    else
    {
      v14 = *a1;
      v13 = *(a1 + 8);
      *a1 = *a2;
      *(a1 + 16) = v11 & 1;
      v15 = a1;
      outlined consume of AccessibilityText.Storage(v14, v13, v3 & 1);
      a1 = v15;
      *(v15 + 17) = HIBYTE(v11) & 1;
    }
  }

  v4 = *(a2 + 40);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v4;
  v8 = a1;
  outlined consume of Environment<AppIntentExecutor?>.Content(v6, v5, v7);
  v9 = *(v8 + 48);
  *(v8 + 48) = *(a2 + 48);

  *(v8 + 56) = *(a2 + 56);

  return v8;
}

uint64_t assignWithCopy for ArchivableAccessibilityActionModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for ArchivableAccessibilityActionModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Environment<AppIntentExecutor?>.Content(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ArchivableAccessibilityActionModifier>, ArchivedAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ArchivableAccessibilityActionModifier>, ArchivedAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ArchivableAccessibilityActionModifier>, ArchivedAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableAccessibilityActionModifier>, ArchivedAttachmentModifier>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ArchivableAccessibilityActionModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ArchivableAccessibilityActionModifier>, ArchivedAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableAccessibilityActionModifier>, ArchivedAttachmentModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ArchivableAccessibilityActionModifier>, ArchivedAttachmentModifier>)
  {
    type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ArchivableAccessibilityActionModifier>, lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier, &type metadata for ArchivableAccessibilityActionModifier, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ArchivableAccessibilityActionModifier>, ArchivedAttachmentModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ArchivableAccessibilityActionModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableAccessibilityActionModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableAccessibilityActionModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ArchivableAccessibilityActionModifier>, lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier, &type metadata for ArchivableAccessibilityActionModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableAccessibilityActionModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.CodingKeys and conformance CodableAccessibilityAction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind and conformance CodableAccessibilityAction.ActionKind()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind and conformance CodableAccessibilityAction.ActionKind;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind and conformance CodableAccessibilityAction.ActionKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind and conformance CodableAccessibilityAction.ActionKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind and conformance CodableAccessibilityAction.ActionKind;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind and conformance CodableAccessibilityAction.ActionKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind and conformance CodableAccessibilityAction.ActionKind);
  }

  return result;
}

uint64_t outlined consume of CodableAccessibilityAction.ActionKind(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a3 != 251 && (a3 & 0xFC | 2) != 0xFE)
  {
    return a4(result, a2, a3 & 1);
  }

  return result;
}

void destroy for CodableAccessibilityAction.ActionKind(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 1)
  {
    outlined consume of AccessibilityText.Storage(*a1, *(a1 + 8), v1 & 1);
  }
}

__n128 initializeBufferWithCopyOfBuffer for CodableAccessibilityAction.ActionKind(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 16);
  if (v2 > 1)
  {
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 8);
  }

  else
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = v2 & 1;
    outlined copy of Text.ResolvedMessage(*a2, v4, v2 & 1);
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 17) = *(a2 + 17);
  }

  return result;
}

uint64_t assignWithCopy for CodableAccessibilityAction.ActionKind(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v5 <= 1)
    {
      v12 = *a2;
      v13 = *(a2 + 1);
      v14 = v5 & 1;
      outlined copy of Text.ResolvedMessage(*a2, v13, v5 & 1);
      *a1 = v12;
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      goto LABEL_6;
    }

LABEL_8:
    v15 = *a2;
    *(a1 + 16) = *(a2 + 8);
    *a1 = v15;
    return a1;
  }

  if (v5 > 1)
  {
    outlined consume of AccessibilityText.Storage(*a1, *(a1 + 8), v4 & 1);
    goto LABEL_8;
  }

  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = v5 & 1;
  outlined copy of Text.ResolvedMessage(*a2, v7, v5 & 1);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  outlined consume of AccessibilityText.Storage(v9, v10, v11);
LABEL_6:
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t assignWithTake for CodableAccessibilityAction.ActionKind(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3 > 1)
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
    if (v4 > 1)
    {
      v7 = result;
      outlined consume of AccessibilityText.Storage(*result, *(result + 8), v3 & 1);
      *v7 = *a2;
      *(v7 + 16) = *(a2 + 16);
    }

    else
    {
      v6 = *result;
      v5 = *(result + 8);
      *result = *a2;
      *(result + 16) = v4 & 1;
      v7 = result;
      outlined consume of AccessibilityText.Storage(v6, v5, v3 & 1);
      *(v7 + 17) = *(a2 + 17);
    }

    return v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityAction.ActionKind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 18))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 6)
  {
    return v4 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CodableAccessibilityAction.ActionKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = -5 - a2;
    }
  }

  return result;
}

uint64_t getEnumTag for CodableAccessibilityAction.ActionKind(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for CodableAccessibilityAction.ActionKind(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.CustomCodingKeys and conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CustomCodingKeys and conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CustomCodingKeys and conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CustomCodingKeys and conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CustomCodingKeys and conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CustomCodingKeys and conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CustomCodingKeys and conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CustomCodingKeys and conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CustomCodingKeys and conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CustomCodingKeys and conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CustomCodingKeys and conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CustomCodingKeys and conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CustomCodingKeys and conformance CodableAccessibilityAction.ActionKind.CustomCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys and conformance CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys and conformance CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys and conformance CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys and conformance CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys and conformance CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys and conformance CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys and conformance CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys and conformance CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys and conformance CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys and conformance CodableAccessibilityAction.ActionKind.ShowMenuCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.DeleteCodingKeys and conformance CodableAccessibilityAction.ActionKind.DeleteCodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DeleteCodingKeys and conformance CodableAccessibilityAction.ActionKind.DeleteCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DeleteCodingKeys and conformance CodableAccessibilityAction.ActionKind.DeleteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DeleteCodingKeys and conformance CodableAccessibilityAction.ActionKind.DeleteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DeleteCodingKeys and conformance CodableAccessibilityAction.ActionKind.DeleteCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DeleteCodingKeys and conformance CodableAccessibilityAction.ActionKind.DeleteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DeleteCodingKeys and conformance CodableAccessibilityAction.ActionKind.DeleteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DeleteCodingKeys and conformance CodableAccessibilityAction.ActionKind.DeleteCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DeleteCodingKeys and conformance CodableAccessibilityAction.ActionKind.DeleteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DeleteCodingKeys and conformance CodableAccessibilityAction.ActionKind.DeleteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.MagicTapCodingKeys and conformance CodableAccessibilityAction.ActionKind.MagicTapCodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.MagicTapCodingKeys and conformance CodableAccessibilityAction.ActionKind.MagicTapCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.MagicTapCodingKeys and conformance CodableAccessibilityAction.ActionKind.MagicTapCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.MagicTapCodingKeys and conformance CodableAccessibilityAction.ActionKind.MagicTapCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.MagicTapCodingKeys and conformance CodableAccessibilityAction.ActionKind.MagicTapCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.MagicTapCodingKeys and conformance CodableAccessibilityAction.ActionKind.MagicTapCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.MagicTapCodingKeys and conformance CodableAccessibilityAction.ActionKind.MagicTapCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.MagicTapCodingKeys and conformance CodableAccessibilityAction.ActionKind.MagicTapCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.MagicTapCodingKeys and conformance CodableAccessibilityAction.ActionKind.MagicTapCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.MagicTapCodingKeys and conformance CodableAccessibilityAction.ActionKind.MagicTapCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.EscapeCodingKeys and conformance CodableAccessibilityAction.ActionKind.EscapeCodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.EscapeCodingKeys and conformance CodableAccessibilityAction.ActionKind.EscapeCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.EscapeCodingKeys and conformance CodableAccessibilityAction.ActionKind.EscapeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.EscapeCodingKeys and conformance CodableAccessibilityAction.ActionKind.EscapeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.EscapeCodingKeys and conformance CodableAccessibilityAction.ActionKind.EscapeCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.EscapeCodingKeys and conformance CodableAccessibilityAction.ActionKind.EscapeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.EscapeCodingKeys and conformance CodableAccessibilityAction.ActionKind.EscapeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.EscapeCodingKeys and conformance CodableAccessibilityAction.ActionKind.EscapeCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.EscapeCodingKeys and conformance CodableAccessibilityAction.ActionKind.EscapeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.EscapeCodingKeys and conformance CodableAccessibilityAction.ActionKind.EscapeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.DefaultCodingKeys and conformance CodableAccessibilityAction.ActionKind.DefaultCodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DefaultCodingKeys and conformance CodableAccessibilityAction.ActionKind.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DefaultCodingKeys and conformance CodableAccessibilityAction.ActionKind.DefaultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DefaultCodingKeys and conformance CodableAccessibilityAction.ActionKind.DefaultCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DefaultCodingKeys and conformance CodableAccessibilityAction.ActionKind.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DefaultCodingKeys and conformance CodableAccessibilityAction.ActionKind.DefaultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DefaultCodingKeys and conformance CodableAccessibilityAction.ActionKind.DefaultCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DefaultCodingKeys and conformance CodableAccessibilityAction.ActionKind.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DefaultCodingKeys and conformance CodableAccessibilityAction.ActionKind.DefaultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.DefaultCodingKeys and conformance CodableAccessibilityAction.ActionKind.DefaultCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityAction.ActionKind.CodingKeys and conformance CodableAccessibilityAction.ActionKind.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CodingKeys and conformance CodableAccessibilityAction.ActionKind.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CodingKeys and conformance CodableAccessibilityAction.ActionKind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CodingKeys and conformance CodableAccessibilityAction.ActionKind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CodingKeys and conformance CodableAccessibilityAction.ActionKind.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CodingKeys and conformance CodableAccessibilityAction.ActionKind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CodingKeys and conformance CodableAccessibilityAction.ActionKind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CodingKeys and conformance CodableAccessibilityAction.ActionKind.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CodingKeys and conformance CodableAccessibilityAction.ActionKind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CodingKeys and conformance CodableAccessibilityAction.ActionKind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CodingKeys and conformance CodableAccessibilityAction.ActionKind.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CodingKeys and conformance CodableAccessibilityAction.ActionKind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityAction.ActionKind.CodingKeys and conformance CodableAccessibilityAction.ActionKind.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText()
{
  result = lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText;
  if (!lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText;
  if (!lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText);
  }

  return result;
}

void type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t specialized CodableAccessibilityAction.ActionKind.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657061637365 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706154636967616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756E654D776F6873 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t AccessoryLinearGauge.init(configuration:gradient:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 9);
  v8 = *(a1 + 10);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = v15;
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *(a3 + 48) = v10;
  *(a3 + 56) = v11;
  *(a3 + 64) = v12;
  *(a3 + 72) = v13;
  *(a3 + 80) = v14;
  *(a3 + 88) = v15;
  *(a3 + 120) = swift_getKeyPath();
  *(a3 + 128) = 0;
  *(a3 + 136) = swift_getKeyPath();
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = swift_getKeyPath();
  *(a3 + 168) = 0;
  *(a3 + 176) = swift_getKeyPath();
  *(a3 + 184) = 0;
  *(a3 + 192) = swift_getKeyPath();
  *(a3 + 200) = 0;
  result = swift_getKeyPath();
  *(a3 + 208) = result;
  *(a3 + 216) = 0;
  *(a3 + 96) = v5;
  *(a3 + 104) = v6;
  *(a3 + 105) = v7;
  *(a3 + 106) = v8;
  *(a3 + 112) = a2;
  return result;
}

uint64_t AccessoryLinearGauge.effectiveTint.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  if (*(v0 + 112))
  {
    v3 = *(v0 + 112);
    goto LABEL_3;
  }

  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  if (specialized Environment.wrappedValue.getter(v12, v13))
  {
    AnyShapeStyle.as<A>(type:)();

    v3 = v14[0];
    if (v14[0])
    {
LABEL_3:

      specialized Environment.wrappedValue.getter(v1, v2, v14);
      if (LOBYTE(v14[0]) == 1)
      {
        v4 = Gradient.reversed.getter();

        v3 = v4;
      }

      static UnitPoint.leading.getter();
      v6 = v5;
      v8 = v7;
      static UnitPoint.trailing.getter();
      v14[0] = v3;
      v14[1] = v6;
      v14[2] = v8;
      v14[3] = v9;
      v14[4] = v10;
      return AnyShapeStyle.init<A>(_:)();
    }
  }

  result = specialized Environment.wrappedValue.getter(v12, v13);
  if (!result)
  {
    v14[0] = static Color.primary.getter();
    return AnyShapeStyle.init<A>(_:)();
  }

  return result;
}

uint64_t AccessoryLinearGauge.effectiveDotTint.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  if (specialized Environment.wrappedValue.getter(*(v0 + 176), *(v0 + 184) & 1))
  {
    return AnyShapeStyle.init<A>(_:)();
  }

  if (specialized Environment.wrappedValue.getter(v4, v5, v6 & 1))
  {

    return AnyShapeStyle.init<A>(_:)();
  }

  if (v1 || specialized Environment.wrappedValue.getter(v2, v3 & 1) && (AnyShapeStyle.as<A>(type:)(), , v8))
  {

    Gradient.color(at:)();

    return AnyShapeStyle.init<A>(_:)();
  }

  return AccessoryLinearGauge.effectiveTint.getter();
}

double AccessoryLinearGauge.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[11];
  v34 = v1[10];
  v35 = v3;
  v36[0] = v1[12];
  *(v36 + 9) = *(v1 + 201);
  v4 = v1[7];
  v30 = v1[6];
  v31 = v4;
  v5 = v1[9];
  v32 = v1[8];
  v33 = v5;
  v6 = v1[3];
  v27[1] = v1[2];
  v28 = v6;
  v7 = v1[5];
  v29[0] = v1[4];
  v29[1] = v7;
  v8 = v1[1];
  v26 = *v1;
  v27[0] = v8;
  v9 = static VerticalAlignment.center.getter();
  closure #1 in AccessoryLinearGauge.body.getter(&v26, &v20);
  v39 = *&v21[16];
  v40 = v22;
  v41 = v23;
  v37 = v20;
  v38 = *v21;
  v42[2] = *&v21[16];
  v42[3] = v22;
  v43 = v23;
  v42[0] = v20;
  v42[1] = *v21;
  outlined init with copy of TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>(&v37, &v18, type metadata accessor for TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>);
  outlined destroy of TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>(v42, type metadata accessor for TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>);
  *&v24[23] = v38;
  *&v24[39] = v39;
  *&v24[55] = v40;
  v24[71] = v41;
  *&v24[7] = v37;
  v20 = v26;
  *v21 = v27[0];
  *&v21[9] = *(v27 + 9);
  type metadata accessor for ScaledMetric<CGFloat>();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v25[7] = v20;
  *&v25[23] = *v21;
  *&v25[39] = *&v21[16];
  v18 = v28;
  v19[0] = v29[0];
  *(v19 + 9) = *(v29 + 9);
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.semibold.getter();
  LOBYTE(v18) = 2;
  v10 = static Font.system(size:weight:design:)();
  KeyPath = swift_getKeyPath();
  v12 = static VerticalAlignment.center.getter();
  v13 = *v24;
  *(a1 + 33) = *&v24[16];
  v14 = *&v24[48];
  *(a1 + 49) = *&v24[32];
  *(a1 + 65) = v14;
  *(a1 + 17) = v13;
  *(a1 + 136) = *&v25[47];
  *(a1 + 144) = KeyPath;
  *(a1 + 121) = *&v25[32];
  result = *&v25[16];
  v16 = *v25;
  *(a1 + 105) = *&v25[16];
  v17 = BYTE8(v30) & 1;
  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 81) = *&v24[64];
  *(a1 + 89) = v16;
  *(a1 + 152) = v10;
  *(a1 + 160) = v12;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 177) = v17;
  return result;
}

uint64_t closure #1 in AccessoryLinearGauge.body.getter@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[105];
  v5 = a1[106];
  if (v4)
  {
    v6 = a1[104] & 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = static Alignment.center.getter();
  v9 = v8;
  closure #1 in closure #1 in AccessoryLinearGauge.body.getter(a1, &v28);
  v10 = v28;
  v11 = v29;
  v12 = v30;
  v13 = v31;
  v14 = HIBYTE(v31);
  v15 = v32;
  v16 = v33;
  v23 = v4 & 1;
  *&v24 = v7;
  *(&v24 + 1) = v9;
  LOBYTE(v25) = v28;
  *(&v25 + 1) = v29;
  LODWORD(v26) = v30;
  WORD2(v26) = v31;
  *(&v26 + 1) = v32;
  v27 = v33;
  *&v22[54] = v33;
  *&v22[38] = v26;
  *&v22[22] = v25;
  *&v22[6] = v24;
  v21[56] = v5 & 1;
  *a2 = v6;
  *(a2 + 1) = v4 & 1;
  v17 = *v22;
  v18 = *&v22[16];
  v19 = *&v22[32];
  *(a2 + 48) = *&v22[46];
  *(a2 + 34) = v19;
  *(a2 + 18) = v18;
  *(a2 + 2) = v17;
  *(a2 + 64) = v5 & 1;
  v28 = v7;
  v29 = v9;
  LOBYTE(v30) = v10;
  v32 = v11;
  LODWORD(v33) = v12;
  BYTE4(v33) = v13;
  BYTE5(v33) = v14;
  v34 = v15;
  v35 = v16;
  outlined init with copy of TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>(&v24, v21, type metadata accessor for ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>);
  return outlined destroy of TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>(&v28, type metadata accessor for ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>);
}

uint64_t closure #1 in closure #1 in AccessoryLinearGauge.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (specialized Environment.wrappedValue.getter(*(a1 + 136), *(a1 + 144), *(a1 + 152)))
  {
    v5 = v4;

    *&v23[0] = v5;
    v6 = AnyShapeStyle.init<A>(_:)();
  }

  else
  {
    v7 = *(a1 + 176);
    v23[10] = *(a1 + 160);
    v23[11] = v7;
    v24[0] = *(a1 + 192);
    *(v24 + 9) = *(a1 + 201);
    v8 = *(a1 + 112);
    v23[6] = *(a1 + 96);
    v23[7] = v8;
    v9 = *(a1 + 144);
    v23[8] = *(a1 + 128);
    v23[9] = v9;
    v10 = *(a1 + 48);
    v23[2] = *(a1 + 32);
    v23[3] = v10;
    v11 = *(a1 + 80);
    v23[4] = *(a1 + 64);
    v23[5] = v11;
    v12 = *(a1 + 16);
    v23[0] = *a1;
    v23[1] = v12;
    v6 = AccessoryLinearGauge.effectiveTint.getter();
  }

  v13 = v6;
  specialized Environment.wrappedValue.getter(*(a1 + 192), *(a1 + 200), v23);
  if (v23[0] & 2) != 0 && (specialized Environment.wrappedValue.getter(*(a1 + 208), *(a1 + 216)))
  {
    v14 = 0.3;
  }

  else
  {
    v14 = 1.0;
  }

  v15 = swift_allocObject();
  v16 = *(a1 + 176);
  v15[11] = *(a1 + 160);
  v15[12] = v16;
  v15[13] = *(a1 + 192);
  *(v15 + 217) = *(a1 + 201);
  v17 = *(a1 + 112);
  v15[7] = *(a1 + 96);
  v15[8] = v17;
  v18 = *(a1 + 144);
  v15[9] = *(a1 + 128);
  v15[10] = v18;
  v19 = *(a1 + 48);
  v15[3] = *(a1 + 32);
  v15[4] = v19;
  v20 = *(a1 + 80);
  v15[5] = *(a1 + 64);
  v15[6] = v20;
  v21 = *(a1 + 16);
  v15[1] = *a1;
  v15[2] = v21;
  *a2 = 1;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 20) = 256;
  *(a2 + 24) = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in AccessoryLinearGauge.body.getter;
  *(a2 + 32) = v15;
  return outlined init with copy of AccessoryLinearGauge(a1, v23);
}

__n128 AccessoryLinearGauge.content(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = v3[11];
  v63 = v3[10];
  v64 = v6;
  *v65 = v3[12];
  *&v65[9] = *(v3 + 201);
  v7 = v3[7];
  v59 = v3[6];
  v60 = v7;
  v8 = v3[9];
  v61 = v3[8];
  v62 = v8;
  v9 = v3[3];
  v58[2] = v3[2];
  v58[3] = v9;
  v10 = v3[5];
  v58[4] = v3[4];
  v58[5] = v10;
  v11 = v3[1];
  v58[0] = *v3;
  v58[1] = v11;
  v12 = *&v59;
  specialized Environment.wrappedValue.getter(*v65, v65[8], &v47);
  if (v47 & 2) != 0 && (specialized Environment.wrappedValue.getter(*&v65[16], v65[24]))
  {
    v12 = 0.0;
  }

  v13 = *(a1 + 16);
  v47 = *a1;
  v48 = v13;
  v49 = *(a1 + 32);
  v50.n128_u32[0] = *(a1 + 48);
  GeometryProxy.size.getter();
  v15 = v14;
  v16 = v3[1];
  v37 = *v3;
  *v38 = v16;
  *&v38[9] = *(v3 + 25);
  type metadata accessor for ScaledMetric<CGFloat>();
  ScaledMetric.wrappedValue.getter();
  v17 = static Alignment.center.getter();
  v19 = v18;
  closure #1 in AccessoryLinearGauge.content(_:)(v58, &v26, COERCE_UNSIGNED_INT64(v12 * (v15 - *&v26)));
  v44 = v34;
  v45 = v35;
  v46 = v36;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v37 = v26;
  *v38 = v27;
  *&v38[16] = v28;
  v39 = v29;
  v55 = v34;
  v56 = v35;
  v57 = v36;
  v51 = v30;
  v52 = v31;
  v53 = v32;
  v54 = v33;
  v47 = v26;
  v48 = v27;
  v49 = v28;
  v50 = v29;
  outlined init with copy of TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>(&v37, &v25, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>);
  outlined destroy of TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>(&v47, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>);
  *a2 = v17;
  *(a2 + 8) = v19;
  v20 = v45;
  *(a2 + 144) = v44;
  *(a2 + 160) = v20;
  *(a2 + 176) = v46;
  v21 = v41;
  *(a2 + 80) = v40;
  *(a2 + 96) = v21;
  v22 = v43;
  *(a2 + 112) = v42;
  *(a2 + 128) = v22;
  v23 = *v38;
  *(a2 + 16) = v37;
  *(a2 + 32) = v23;
  result = v39;
  *(a2 + 48) = *&v38[16];
  *(a2 + 64) = result;
  return result;
}

uint64_t closure #1 in AccessoryLinearGauge.content(_:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>, unint64_t a3@<D0>)
{
  static Color.black.getter();
  v6 = *(a1 + 24);
  v7 = *(a1 + 200);
  specialized Environment.wrappedValue.getter(v6, v7, &v49);
  if ((v49 & 2) != 0)
  {
    specialized Environment.wrappedValue.getter(*(a1 + 26), *(a1 + 216));
  }

  v22 = Color.opacity(_:)();

  v8 = a1[1];
  v64 = *a1;
  v65[0] = v8;
  *(v65 + 9) = *(a1 + 25);
  v9 = a1[1];
  v49 = *a1;
  *v50 = v9;
  *&v50[9] = *(a1 + 25);
  type metadata accessor for ScaledMetric<CGFloat>();
  ScaledMetric.wrappedValue.getter();
  v49 = v64;
  *v50 = v65[0];
  *&v50[9] = *(v65 + 9);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v62[3] = *&v62[27];
  *&v62[11] = *&v62[35];
  *&v62[19] = *&v62[43];
  v10 = a1[11];
  v58 = a1[10];
  v59 = v10;
  v60[0] = a1[12];
  *(v60 + 9) = *(a1 + 201);
  v11 = a1[7];
  v54 = a1[6];
  v55 = v11;
  v12 = a1[9];
  v56 = a1[8];
  v57 = v12;
  v13 = a1[3];
  *&v50[16] = a1[2];
  v51 = v13;
  v14 = a1[5];
  v52 = a1[4];
  v53 = v14;
  v15 = a1[1];
  v49 = *a1;
  *v50 = v15;
  v16 = AccessoryLinearGauge.effectiveDotTint.getter();
  specialized Environment.wrappedValue.getter(v6, v7, &v43);
  if ((v43 & 2) == 0 || (v17 = 0.0, (specialized Environment.wrappedValue.getter(*(a1 + 26), *(a1 + 216)) & 1) == 0))
  {
    v17 = 1.0;
  }

  v43 = v64;
  *v44 = v65[0];
  *&v44[9] = *(v65 + 9);
  ScaledMetric.wrappedValue.getter();
  v43 = v64;
  *v44 = v65[0];
  *&v44[9] = *(v65 + 9);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v61[2] = *&v62[51];
  *&v61[18] = *&v62[59];
  *&v61[34] = v63;
  *&v30 = 0xC010000000000000;
  *(&v30 + 1) = v22;
  *v31 = 256;
  *&v31[2] = *v62;
  *&v31[18] = *&v62[8];
  *&v31[34] = *&v62[16];
  *&v31[48] = *&v62[23];
  *&v31[56] = a3;
  *&v31[64] = 0;
  v31[72] = 18;
  v23 = *&v31[16];
  v24 = *&v31[32];
  *v32 = v16;
  *&v32[8] = v17;
  *&v32[12] = 256;
  v18 = *&v61[16];
  *&v32[46] = *&v61[32];
  v19 = *v61;
  *&v32[30] = *&v61[16];
  *&v32[14] = *v61;
  *v25 = *&v31[48];
  *&v25[9] = *&v31[57];
  *&v32[62] = HIWORD(v63);
  v33 = a3;
  v26 = *v32;
  v27 = *&v32[16];
  v29 = *&v32[48];
  v28 = *&v32[32];
  v20 = *v31;
  *a2 = v30;
  a2[1] = v20;
  a2[4] = *v25;
  a2[5] = *&v25[16];
  a2[2] = v23;
  a2[3] = v24;
  a2[9] = v29;
  a2[10] = a3;
  a2[7] = v27;
  a2[8] = v28;
  a2[6] = v26;
  v34 = v16;
  v35 = v17;
  v36 = 256;
  v37 = v19;
  v38 = v18;
  v39 = *&v61[32];
  v40 = *&v61[48];
  v41 = a3;
  v42 = 0;
  outlined init with copy of TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>(&v30, &v43, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>);
  outlined init with copy of TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>(v32, &v43, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>);
  outlined destroy of TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>(&v34, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>);
  *&v43 = 0xC010000000000000;
  *(&v43 + 1) = v22;
  *v44 = 256;
  *&v44[2] = *v62;
  *&v44[18] = *&v62[8];
  *v45 = *&v62[16];
  *&v45[14] = *&v62[23];
  v46 = a3;
  v47 = 0;
  v48 = 18;
  return outlined destroy of TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>(&v43, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>);
}

double AccessoryLinearGaugeStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 10);
  v13 = *a1;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  AccessoryLinearGauge.init(configuration:gradient:)(&v13, 0, v17);
  v6 = v17[11];
  a2[10] = v17[10];
  a2[11] = v6;
  a2[12] = v18[0];
  *(a2 + 201) = *(v18 + 9);
  v7 = v17[7];
  a2[6] = v17[6];
  a2[7] = v7;
  v8 = v17[9];
  a2[8] = v17[8];
  a2[9] = v8;
  v9 = v17[3];
  a2[2] = v17[2];
  a2[3] = v9;
  v10 = v17[5];
  a2[4] = v17[4];
  a2[5] = v10;
  result = *v17;
  v12 = v17[1];
  *a2 = v17[0];
  a2[1] = v12;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessoryLinearGauge and conformance AccessoryLinearGauge()
{
  result = lazy protocol witness table cache variable for type AccessoryLinearGauge and conformance AccessoryLinearGauge;
  if (!lazy protocol witness table cache variable for type AccessoryLinearGauge and conformance AccessoryLinearGauge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessoryLinearGauge and conformance AccessoryLinearGauge);
  }

  return result;
}

uint64_t destroy for AccessoryLinearGauge(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<Selector?>.Content(*(a1 + 48), *(a1 + 56));
  outlined consume of Environment<Selector?>.Content(*(a1 + 64), *(a1 + 72));

  outlined consume of Environment<AnyShapeStyle?>.Content(*(a1 + 120), *(a1 + 128));
  outlined consume of Environment<(Color, Color)?>.Content(*(a1 + 136), *(a1 + 144), *(a1 + 152));
  outlined consume of Environment<Selector?>.Content(*(a1 + 160), *(a1 + 168));
  outlined consume of Environment<AnyShapeStyle?>.Content(*(a1 + 176), *(a1 + 184));
  outlined consume of Environment<Selector?>.Content(*(a1 + 192), *(a1 + 200));
  v2 = *(a1 + 208);
  v3 = *(a1 + 216);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for AccessoryLinearGauge(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 40) = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  v10 = *(v2 + 64);
  v11 = *(v2 + 72);
  outlined copy of Environment<Selector?>.Content(v10, v11);
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = *(v2 + 80);
  *(a1 + 88) = *(v2 + 88);
  *(a1 + 96) = *(v2 + 96);
  *(a1 + 103) = *(v2 + 103);
  v12 = *(v2 + 120);
  *(a1 + 112) = *(v2 + 112);
  v13 = *(v2 + 128);

  outlined copy of Environment<Color?>.Content(v12, v13);
  *(a1 + 120) = v12;
  *(a1 + 128) = v13;
  v14 = *(v2 + 136);
  v15 = *(v2 + 144);
  v16 = *(v2 + 152);
  outlined copy of Environment<(Color, Color)?>.Content(v14, v15, v16);
  *(a1 + 136) = v14;
  *(a1 + 144) = v15;
  *(a1 + 152) = v16;
  v17 = *(v2 + 160);
  LOBYTE(v15) = *(v2 + 168);
  outlined copy of Environment<Selector?>.Content(v17, v15);
  *(a1 + 160) = v17;
  *(a1 + 168) = v15;
  v18 = *(v2 + 176);
  LOBYTE(v15) = *(v2 + 184);
  outlined copy of Environment<Color?>.Content(v18, v15);
  *(a1 + 176) = v18;
  *(a1 + 184) = v15;
  v19 = *(v2 + 192);
  LOBYTE(v15) = *(v2 + 200);
  outlined copy of Environment<Selector?>.Content(v19, v15);
  *(a1 + 192) = v19;
  *(a1 + 200) = v15;
  v20 = *(v2 + 208);
  LOBYTE(v2) = *(v2 + 216);
  outlined copy of Environment<Selector?>.Content(v20, v2);
  *(a1 + 208) = v20;
  *(a1 + 216) = v2;
  return a1;
}

uint64_t assignWithCopy for AccessoryLinearGauge(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 40) = *(v2 + 40);
  v12 = *(v2 + 48);
  v13 = *(v2 + 56);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  v16 = *(v2 + 64);
  v17 = *(v2 + 72);
  outlined copy of Environment<Selector?>.Content(v16, v17);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  *(a1 + 64) = v16;
  *(a1 + 72) = v17;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  *(a1 + 80) = *(v2 + 80);
  *(a1 + 88) = *(v2 + 88);
  *(a1 + 96) = *(v2 + 96);
  *(a1 + 104) = *(v2 + 104);
  *(a1 + 105) = *(v2 + 105);
  *(a1 + 106) = *(v2 + 106);
  *(a1 + 112) = *(v2 + 112);

  v20 = *(v2 + 120);
  v21 = *(v2 + 128);
  outlined copy of Environment<Color?>.Content(v20, v21);
  v22 = *(a1 + 120);
  v23 = *(a1 + 128);
  *(a1 + 120) = v20;
  *(a1 + 128) = v21;
  outlined consume of Environment<AnyShapeStyle?>.Content(v22, v23);
  v24 = *(v2 + 136);
  v25 = *(v2 + 144);
  v26 = *(v2 + 152);
  outlined copy of Environment<(Color, Color)?>.Content(v24, v25, v26);
  v27 = *(a1 + 136);
  v28 = *(a1 + 144);
  v29 = *(a1 + 152);
  *(a1 + 136) = v24;
  *(a1 + 144) = v25;
  *(a1 + 152) = v26;
  outlined consume of Environment<(Color, Color)?>.Content(v27, v28, v29);
  v30 = *(v2 + 160);
  LOBYTE(v25) = *(v2 + 168);
  outlined copy of Environment<Selector?>.Content(v30, v25);
  v31 = *(a1 + 160);
  v32 = *(a1 + 168);
  *(a1 + 160) = v30;
  *(a1 + 168) = v25;
  outlined consume of Environment<Selector?>.Content(v31, v32);
  v33 = *(v2 + 176);
  LOBYTE(v25) = *(v2 + 184);
  outlined copy of Environment<Color?>.Content(v33, v25);
  v34 = *(a1 + 176);
  v35 = *(a1 + 184);
  *(a1 + 176) = v33;
  *(a1 + 184) = v25;
  outlined consume of Environment<AnyShapeStyle?>.Content(v34, v35);
  v36 = *(v2 + 192);
  LOBYTE(v25) = *(v2 + 200);
  outlined copy of Environment<Selector?>.Content(v36, v25);
  v37 = *(a1 + 192);
  v38 = *(a1 + 200);
  *(a1 + 192) = v36;
  *(a1 + 200) = v25;
  outlined consume of Environment<Selector?>.Content(v37, v38);
  v39 = *(v2 + 208);
  LOBYTE(v2) = *(v2 + 216);
  outlined copy of Environment<Selector?>.Content(v39, v2);
  v40 = *(a1 + 208);
  v41 = *(a1 + 216);
  *(a1 + 208) = v39;
  *(a1 + 216) = v2;
  outlined consume of Environment<Selector?>.Content(v40, v41);
  return a1;
}

uint64_t assignWithTake for AccessoryLinearGauge(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = *(a2 + 40);
  v11 = *(a2 + 56);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v14 = *(a2 + 72);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  *(a1 + 64) = a2[8];
  *(a1 + 72) = v14;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  *(a1 + 80) = a2[10];
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = a2[12];
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 112) = a2[14];

  v17 = *(a2 + 128);
  v18 = *(a1 + 120);
  v19 = *(a1 + 128);
  *(a1 + 120) = a2[15];
  *(a1 + 128) = v17;
  outlined consume of Environment<AnyShapeStyle?>.Content(v18, v19);
  v20 = *(a2 + 152);
  v21 = *(a1 + 136);
  v22 = *(a1 + 144);
  v23 = *(a1 + 152);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 152) = v20;
  outlined consume of Environment<(Color, Color)?>.Content(v21, v22, v23);
  v24 = *(a2 + 168);
  v25 = *(a1 + 160);
  v26 = *(a1 + 168);
  *(a1 + 160) = a2[20];
  *(a1 + 168) = v24;
  outlined consume of Environment<Selector?>.Content(v25, v26);
  v27 = *(a2 + 184);
  v28 = *(a1 + 176);
  v29 = *(a1 + 184);
  *(a1 + 176) = a2[22];
  *(a1 + 184) = v27;
  outlined consume of Environment<AnyShapeStyle?>.Content(v28, v29);
  v30 = *(a2 + 200);
  v31 = *(a1 + 192);
  v32 = *(a1 + 200);
  *(a1 + 192) = a2[24];
  *(a1 + 200) = v30;
  outlined consume of Environment<Selector?>.Content(v31, v32);
  v33 = *(a2 + 216);
  v34 = *(a1 + 208);
  v35 = *(a1 + 216);
  *(a1 + 208) = a2[26];
  *(a1 + 216) = v33;
  outlined consume of Environment<Selector?>.Content(v34, v35);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessoryLinearGauge(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 217))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 112);
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

uint64_t storeEnumTagSinglePayload for AccessoryLinearGauge(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 216) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 217) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 217) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2;
    }
  }

  return result;
}

void type metadata accessor for (_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)()
{
  if (!lazy cache variable for type metadata for (_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>))
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>();
    type metadata accessor for ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>(255);
    type metadata accessor for ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>(255, &lazy cache variable for type metadata for ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>, &lazy cache variable for type metadata for GaugeStyleConfiguration.MaximumValueLabel?);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>));
    }
  }
}

void type metadata accessor for _ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>)
  {
    type metadata accessor for ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>(255, &lazy cache variable for type metadata for ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, &type metadata for GaugeStyleConfiguration.MinimumValueLabel, MEMORY[0x1E6980900], MEMORY[0x1E697E830]);
    type metadata accessor for ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>(255, &lazy cache variable for type metadata for ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>, &lazy cache variable for type metadata for GaugeStyleConfiguration.CurrentValueLabel?);
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>, _FrameLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>()
{
  if (!lazy cache variable for type metadata for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_3(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>);
    v0 = type metadata accessor for ZStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>)
  {
    type metadata accessor for _ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>(255, &lazy cache variable for type metadata for _ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, lazy protocol witness table accessor for type Capsule and conformance Capsule);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>()
{
  if (!lazy cache variable for type metadata for GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)
  {
    type metadata accessor for ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_3(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>> and conformance ZStack<A>, type metadata accessor for ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>);
    v0 = type metadata accessor for GeometryReader();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>);
    }
  }
}

void type metadata accessor for ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>()
{
  if (!lazy cache variable for type metadata for ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_3(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>);
    v0 = type metadata accessor for ZStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for (ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)(255, a3, a4, a5);
    v6 = type metadata accessor for TupleView();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for (ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void type metadata accessor for _ShapeView<Circle._Inset, Color>()
{
  if (!lazy cache variable for type metadata for _ShapeView<Circle._Inset, Color>)
  {
    lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<Circle._Inset, Color>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>)
  {
    type metadata accessor for _ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>(255, &lazy cache variable for type metadata for _ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, lazy protocol witness table accessor for type Circle and conformance Circle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>);
    }
  }
}

void type metadata accessor for _ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>(255, &lazy cache variable for type metadata for _OpacityShapeStyle<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E697F5B0]);
    a3();
    lazy protocol witness table accessor for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>();
    v5 = type metadata accessor for _ShapeView();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for AnyAccessibilityValue?(255, a3);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined init with copy of TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void type metadata accessor for HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>)
  {
    type metadata accessor for TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_3(&lazy protocol witness table cache variable for type TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)> and conformance TupleView<A>, type metadata accessor for TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>);
    }
  }
}

void type metadata accessor for TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for TupleView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>>(255);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_3(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Font?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>, _FrameLayout>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_3(&lazy protocol witness table cache variable for type HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<GaugeStyleConfiguration.MinimumValueLabel, _ForegroundLayerViewModifier>, ModifiedContent<GaugeStyleConfiguration.CurrentValueLabel?, _ForegroundLayerViewModifier>>, ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, _OpacityShapeStyle<AnyShapeStyle>>, _ForegroundLayerViewModifier>, GeometryReader<ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle._Inset, Color>, _FrameLayout>, _OffsetEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Circle, _OpacityShapeStyle<AnyShapeStyle>>, _FrameLayout>, _OffsetEffect>)>>>)>>, _CompositingGroupEffect>, ModifiedContent<GaugeStyleConfiguration.MaximumValueLabel?, _ForegroundLayerViewModifier>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

__n128 WindowGroup.init<A, B>(id:presenting:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, unint64_t a12)
{
  WindowGroup.init<A, B>(id:for:content:)(a1, a2, a3, a4, a5, a6, a7, a8, v16, a10, __PAIR128__(a12, a11));
  v13 = v16[5];
  *(a9 + 64) = v16[4];
  *(a9 + 80) = v13;
  *(a9 + 96) = v16[6];
  v14 = v16[1];
  *a9 = v16[0];
  *(a9 + 16) = v14;
  result = v16[3];
  *(a9 + 32) = v16[2];
  *(a9 + 48) = result;
  return result;
}

uint64_t WindowGroup.init<A, B>(_:id:for:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, __int128 a13)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a11;
  *(v15 + 32) = a12;
  *(v15 + 48) = a13;
  *(v15 + 64) = a8;
  *(v15 + 72) = a10;
  v30 = a11;
  v31 = a12;
  v32 = a13;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init(_:id:makeContent:)(a1, a2, a3 & 1, a4, a5, a6, partial apply for closure #1 in WindowGroup.init<A, B>(_:id:for:content:), v15, &v30);
  v16 = v36;
  v17 = v33;
  *(a9 + 32) = v32;
  *(a9 + 48) = v17;
  *(a9 + 64) = v34;
  v18 = v35;
  v19 = v31;
  *a9 = v30;
  *(a9 + 16) = v19;
  *(a9 + 80) = v18;
  *(a9 + 88) = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = a11;
  *(v20 + 24) = a12;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v21 + 24) = v20;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v16);
  *(a9 + 96) = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable)partial apply;
  *(a9 + 104) = v21;
  return result;
}

uint64_t WindowGroup.init<A, B>(_:id:for:content:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, __int128 a7, __int128 a8, __int128 a9)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a7;
  *(v11 + 32) = a8;
  *(v11 + 48) = a9;
  *(v11 + 64) = a4;
  *(v11 + 72) = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init(_:id:makeContent:)(a1, a2, partial apply for closure #1 in WindowGroup.init<A, B>(_:id:for:content:), v11, &v22);
  v12 = v28;
  v13 = v25;
  *(a5 + 32) = v24;
  *(a5 + 48) = v13;
  *(a5 + 64) = v26;
  v14 = v27;
  v15 = v23;
  *a5 = v22;
  *(a5 + 16) = v15;
  *(a5 + 80) = v14;
  *(a5 + 88) = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = a7;
  *(v16 + 24) = a8;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v17 + 24) = v16;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v12);
  *(a5 + 96) = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable)partial apply;
  *(a5 + 104) = v17;
  return result;
}

__n128 WindowGroup.init<A, B>(_:id:presenting:content:)@<Q0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, __int128 a8, __int128 a9, uint64_t a10)
{
  *&v14[40] = a10;
  *&v14[8] = a8;
  *&v14[24] = a9;
  *v14 = a7;
  WindowGroup.init<A, B>(_:id:for:content:)(a1, a2, a3, a4, v15, a6, *v14, *&v14[16], *&v14[32]);
  v11 = v15[5];
  *(a5 + 64) = v15[4];
  *(a5 + 80) = v11;
  *(a5 + 96) = v15[6];
  v12 = v15[1];
  *a5 = v15[0];
  *(a5 + 16) = v12;
  result = v15[3];
  *(a5 + 32) = v15[2];
  *(a5 + 48) = result;
  return result;
}

uint64_t WindowGroup.init<A, B, C>(_:id:for:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{
  v40 = a4;
  v41 = a8;
  v35 = a5;
  v36 = a6;
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v34 = a13;
  v16 = *(a7 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  v20 = swift_allocObject();
  v21 = v41;
  *(v20 + 16) = a7;
  *(v20 + 24) = v21;
  *(v20 + 32) = a10;
  *(v20 + 40) = a11;
  v22 = v34;
  *(v20 + 48) = a12;
  *(v20 + 56) = v22;
  *(v20 + 64) = a14;
  v23 = v36;
  *(v20 + 80) = v35;
  *(v20 + 88) = v23;
  *&v42 = v21;
  *(&v42 + 1) = a10;
  *&v43 = a12;
  *(&v43 + 1) = v22;
  v24 = v22;
  v44 = a14;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init<A>(_:id:makeContent:)(v19, v38, v39, partial apply for closure #1 in WindowGroup.init<A, B, C>(_:id:for:content:), v20, a7, &v42);
  (*(v16 + 8))(v37, a7);
  v25 = v48;
  v26 = v45;
  *(a9 + 32) = v44;
  *(a9 + 48) = v26;
  *(a9 + 64) = v46;
  v27 = v47;
  v28 = v43;
  *a9 = v42;
  *(a9 + 16) = v28;
  v29 = v40;
  *(a9 + 80) = v27;
  *(a9 + 88) = v29;
  v30 = swift_allocObject();
  v30[2] = v41;
  v30[3] = a12;
  v30[4] = v24;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v31 + 24) = v30;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v25);
  *(a9 + 96) = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable)partial apply;
  *(a9 + 104) = v31;
  return result;
}

uint64_t WindowGroup.init<A, B>(for:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a8;
  v18[7] = a10;
  v18[8] = a2;
  v18[9] = a3;
  *&v27 = a4;
  *(&v27 + 1) = a5;
  *&v28 = a6;
  *(&v28 + 1) = a7;
  *&v29 = a8;
  *(&v29 + 1) = a10;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init(makeContent:)(partial apply for closure #1 in WindowGroup.init<A, B>(_:id:for:content:), v18, &v27);
  v19 = v33;
  v20 = v30;
  *(a9 + 32) = v29;
  *(a9 + 48) = v20;
  *(a9 + 64) = v31;
  v21 = v32;
  v22 = v28;
  *a9 = v27;
  *(a9 + 16) = v22;
  *(a9 + 80) = v21;
  *(a9 + 88) = a1;
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a6;
  v23[4] = a7;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v24 + 24) = v23;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v19);
  *(a9 + 96) = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable)partial apply;
  *(a9 + 104) = v24;
  return result;
}

__n128 WindowGroup.init<A, B>(presenting:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  WindowGroup.init<A, B>(for:content:)(a1, a2, a3, a4, a5, a6, a7, a8, v14, a10);
  v11 = v14[5];
  *(a9 + 64) = v14[4];
  *(a9 + 80) = v11;
  *(a9 + 96) = v14[6];
  v12 = v14[1];
  *a9 = v14[0];
  *(a9 + 16) = v12;
  result = v14[3];
  *(a9 + 32) = v14[2];
  *(a9 + 48) = result;
  return result;
}

uint64_t WindowGroup.init<A, B>(_:for:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __int128 a12)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a8;
  *(v16 + 24) = a10;
  *(v16 + 32) = a11;
  *(v16 + 48) = a12;
  *(v16 + 64) = a6;
  *(v16 + 72) = a7;
  *&v29 = a8;
  *(&v29 + 1) = a10;
  v30 = a11;
  v31 = a12;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init(_:makeContent:)(a1, a2, a3 & 1, a4, partial apply for closure #1 in WindowGroup.init<A, B>(_:id:for:content:), v16, &v29);
  v17 = v35;
  v18 = v32;
  *(a9 + 32) = v31;
  *(a9 + 48) = v18;
  *(a9 + 64) = v33;
  v19 = v34;
  v20 = v30;
  *a9 = v29;
  *(a9 + 16) = v20;
  *(a9 + 80) = v19;
  *(a9 + 88) = a5;
  v21 = swift_allocObject();
  *(v21 + 16) = a8;
  *(v21 + 24) = a11;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v22 + 24) = v21;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v17);
  *(a9 + 96) = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable)partial apply;
  *(a9 + 104) = v22;
  return result;
}

__n128 WindowGroup.init<A, B>(_:presenting:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  *&v17[24] = a13;
  *v17 = a11;
  *&v17[8] = a12;
  WindowGroup.init<A, B>(_:for:content:)(a1, a2, a3 & 1, a4, a5, a6, a7, a8, v18, a10, *v17, *&v17[16]);
  v14 = v18[5];
  *(a9 + 64) = v18[4];
  *(a9 + 80) = v14;
  *(a9 + 96) = v18[6];
  v15 = v18[1];
  *a9 = v18[0];
  *(a9 + 16) = v15;
  result = v18[3];
  *(a9 + 32) = v18[2];
  *(a9 + 48) = result;
  return result;
}

uint64_t WindowGroup.init<A, B>(_:for:content:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, __int128 a7, __int128 a8)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a6;
  *(v12 + 32) = a7;
  *(v12 + 48) = a8;
  *(v12 + 64) = a2;
  *(v12 + 72) = a3;
  *&v21 = a4;
  *(&v21 + 1) = a6;
  v22 = a7;
  v23 = a8;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init(_:makeContent:)(partial apply for closure #1 in WindowGroup.init<A, B>(_:id:for:content:), v12, &v21);
  v13 = v27;
  v14 = v24;
  *(a5 + 32) = v23;
  *(a5 + 48) = v14;
  *(a5 + 64) = v25;
  v15 = v26;
  v16 = v22;
  *a5 = v21;
  *(a5 + 16) = v16;
  *(a5 + 80) = v15;
  *(a5 + 88) = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v18 + 24) = v17;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v13);
  *(a5 + 96) = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable)partial apply;
  *(a5 + 104) = v18;
  return result;
}

uint64_t closure #1 in WindowGroup.init<A, B>(id:for:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = 0uLL;
  *&v12 = a1;
  *(&v12 + 1) = a2;
  *&v9 = a3;
  *(&v9 + 1) = a4;
  *&v10 = a5;
  *(&v10 + 1) = a6;
  v6 = type metadata accessor for PresentedWindowContent();
  static ViewBuilder.buildExpression<A>(_:)(&v11, v6, &protocol witness table for PresentedWindowContent<A, B>);
  v7 = v11;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7);

  v11 = v9;
  v12 = v10;
  static ViewBuilder.buildExpression<A>(_:)(&v11, v6, &protocol witness table for PresentedWindowContent<A, B>);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v11);
}

__n128 WindowGroup.init<A, B>(_:presenting:content:)@<Q0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, __int128 a8, uint64_t a9)
{
  *&v13[24] = a9;
  *v13 = a7;
  *&v13[8] = a8;
  WindowGroup.init<A, B>(_:for:content:)(a1, a2, a3, a4, v14, a6, *v13, *&v13[16]);
  v10 = v14[5];
  *(a5 + 64) = v14[4];
  *(a5 + 80) = v10;
  *(a5 + 96) = v14[6];
  v11 = v14[1];
  *a5 = v14[0];
  *(a5 + 16) = v11;
  result = v14[3];
  *(a5 + 32) = v14[2];
  *(a5 + 48) = result;
  return result;
}

uint64_t WindowGroup.init<A, B, C>(_:for:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12)
{
  v39 = a2;
  v40 = a6;
  v36 = a3;
  v37 = a4;
  v38 = a1;
  v16 = *(a5 - 8);
  v35 = a11;
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  v20 = swift_allocObject();
  v21 = v40;
  *(v20 + 16) = a5;
  *(v20 + 24) = v21;
  *(v20 + 32) = a7;
  *(v20 + 40) = a8;
  v22 = v35;
  v23 = v36;
  *(v20 + 48) = a10;
  *(v20 + 56) = v22;
  *(v20 + 64) = a12;
  v24 = v37;
  *(v20 + 80) = v23;
  *(v20 + 88) = v24;
  *&v41 = v21;
  *(&v41 + 1) = a7;
  *&v42 = a10;
  *(&v42 + 1) = v22;
  v25 = v22;
  v43 = a12;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init<A>(_:makeContent:)(v19, partial apply for closure #1 in WindowGroup.init<A, B, C>(_:for:content:), v20, a5, &v41);
  (*(v16 + 8))(v38, a5);
  v26 = v47;
  v27 = v44;
  *(a9 + 32) = v43;
  *(a9 + 48) = v27;
  *(a9 + 64) = v45;
  v28 = v46;
  v29 = v42;
  *a9 = v41;
  *(a9 + 16) = v29;
  v30 = v39;
  *(a9 + 80) = v28;
  *(a9 + 88) = v30;
  v31 = swift_allocObject();
  v31[2] = v40;
  v31[3] = a10;
  v31[4] = v25;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v32 + 24) = v31;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v26);
  *(a9 + 96) = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable)partial apply;
  *(a9 + 104) = v32;
  return result;
}

uint64_t closure #1 in WindowGroup.init<A, B, C>(_:id:for:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = 0uLL;
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v11 = a4;
  *(&v11 + 1) = a5;
  *&v12 = a7;
  *(&v12 + 1) = a8;
  v8 = type metadata accessor for PresentedWindowContent();
  static ViewBuilder.buildExpression<A>(_:)(&v13, v8, &protocol witness table for PresentedWindowContent<A, B>);
  v9 = v13;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v9);

  v13 = v11;
  v14 = v12;
  static ViewBuilder.buildExpression<A>(_:)(&v13, v8, &protocol witness table for PresentedWindowContent<A, B>);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v13);
}

__n128 WindowGroup.init<A, B, C>(_:presenting:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11)
{
  v27 = a7;
  v28 = a8;
  v26 = a6;
  v25 = a10;
  v17 = *(a5 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v21, v18);
  WindowGroup.init<A, B, C>(_:for:content:)(v20, a2, a3, a4, a5, v26, v27, v28, v29, v25, *(&v25 + 1), a11);
  (*(v17 + 8))(a1, a5);
  v22 = v29[5];
  *(a9 + 64) = v29[4];
  *(a9 + 80) = v22;
  *(a9 + 96) = v29[6];
  v23 = v29[1];
  *a9 = v29[0];
  *(a9 + 16) = v23;
  result = v29[3];
  *(a9 + 32) = v29[2];
  *(a9 + 48) = result;
  return result;
}

uint64_t WindowGroup.init<A, B>(id:for:content:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __int128 a12)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a8;
  *(v16 + 24) = a10;
  *(v16 + 32) = a11;
  *(v16 + 48) = a12;
  *(v16 + 64) = a4;
  *(v16 + 72) = a5;
  *(v16 + 80) = a6;
  *(v16 + 88) = a7;
  *&v30 = a8;
  *(&v30 + 1) = a10;
  v17 = a8;
  v31 = a11;
  v32 = a12;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init(id:makeContent:)(a1, a2, partial apply for closure #1 in WindowGroup.init<A, B>(id:for:content:defaultValue:), v16, &v30);
  v18 = v36;
  v19 = v33;
  *(a9 + 32) = v32;
  *(a9 + 48) = v19;
  *(a9 + 64) = v34;
  v20 = v35;
  v21 = v31;
  *a9 = v30;
  *(a9 + 16) = v21;
  *(a9 + 80) = v20;
  *(a9 + 88) = a3;
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  *(v22 + 24) = a11;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v23 + 24) = v22;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v18);
  *(a9 + 96) = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable)partial apply;
  *(a9 + 104) = v23;
  return result;
}

__n128 WindowGroup.init<A, B>(id:presenting:content:defaultValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  *&v17[24] = a13;
  *v17 = a11;
  *&v17[8] = a12;
  WindowGroup.init<A, B>(id:for:content:defaultValue:)(a1, a2, a3, a4, a5, a6, a7, a8, v18, a10, *v17, *&v17[16]);
  v14 = v18[5];
  *(a9 + 64) = v18[4];
  *(a9 + 80) = v14;
  *(a9 + 96) = v18[6];
  v15 = v18[1];
  *a9 = v18[0];
  *(a9 + 16) = v15;
  result = v18[3];
  *(a9 + 32) = v18[2];
  *(a9 + 48) = result;
  return result;
}

uint64_t WindowGroup.init<A, B>(_:id:for:content:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a12;
  *(v16 + 32) = a13;
  *(v16 + 48) = a14;
  *(v16 + 64) = a8;
  *(v16 + 72) = a10;
  *(v16 + 88) = a11;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init(_:id:makeContent:)(a1, a2, a3 & 1, a4, a5, a6, partial apply for closure #1 in WindowGroup.init<A, B>(_:id:for:content:defaultValue:), v16, &v31);
  v17 = v37;
  v18 = v34;
  *(a9 + 32) = v33;
  *(a9 + 48) = v18;
  *(a9 + 64) = v35;
  v19 = v36;
  v20 = v32;
  *a9 = v31;
  *(a9 + 16) = v20;
  *(a9 + 80) = v19;
  *(a9 + 88) = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = a12;
  *(v21 + 24) = a13;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v22 + 24) = v21;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v17);
  *(a9 + 96) = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable)partial apply;
  *(a9 + 104) = v22;
  return result;
}

__n128 WindowGroup.init<A, B>(_:id:presenting:content:defaultValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15)
{
  *&v19[40] = a15;
  *&v19[8] = a13;
  *&v19[24] = a14;
  *v19 = a12;
  WindowGroup.init<A, B>(_:id:for:content:defaultValue:)(a1, a2, a3 & 1, a4, a5, a6, a7, a8, v20, a10, a11, *v19, *&v19[16], *&v19[32]);
  v16 = v20[5];
  *(a9 + 64) = v20[4];
  *(a9 + 80) = v16;
  *(a9 + 96) = v20[6];
  v17 = v20[1];
  *a9 = v20[0];
  *(a9 + 16) = v17;
  result = v20[3];
  *(a9 + 32) = v20[2];
  *(a9 + 48) = result;
  return result;
}

uint64_t WindowGroup.init<A, B>(_:id:for:content:defaultValue:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, __int128 a6, uint64_t a7, __int128 a8, __int128 a9, __int128 a10)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a8;
  *(v12 + 32) = a9;
  *(v12 + 48) = a10;
  *(v12 + 64) = a4;
  *(v12 + 72) = a6;
  *(v12 + 88) = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init(_:id:makeContent:)(a1, a2, partial apply for closure #1 in WindowGroup.init<A, B>(_:id:for:content:defaultValue:), v12, &v23);
  v13 = v29;
  v14 = v26;
  *(a5 + 32) = v25;
  *(a5 + 48) = v14;
  *(a5 + 64) = v27;
  v15 = v28;
  v16 = v24;
  *a5 = v23;
  *(a5 + 16) = v16;
  *(a5 + 80) = v15;
  *(a5 + 88) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = a8;
  *(v17 + 24) = a9;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v18 + 24) = v17;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v13);
  *(a5 + 96) = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable)partial apply;
  *(a5 + 104) = v18;
  return result;
}

__n128 WindowGroup.init<A, B>(_:id:presenting:content:defaultValue:)@<Q0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, __int128 a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  *&v15[40] = a11;
  *&v15[8] = a9;
  *&v15[24] = a10;
  *v15 = a8;
  WindowGroup.init<A, B>(_:id:for:content:defaultValue:)(a1, a2, a3, a4, v16, a6, a7, *v15, *&v15[16], *&v15[32]);
  v12 = v16[5];
  *(a5 + 64) = v16[4];
  *(a5 + 80) = v12;
  *(a5 + 96) = v16[6];
  v13 = v16[1];
  *a5 = v16[0];
  *(a5 + 16) = v13;
  result = v16[3];
  *(a5 + 32) = v16[2];
  *(a5 + 48) = result;
  return result;
}

uint64_t WindowGroup.init<A, B, C>(_:id:for:content:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  v40 = a7;
  v41 = a8;
  v38 = a6;
  v37 = a5;
  v44 = a3;
  v45 = a4;
  v43 = a2;
  v39 = a1;
  v36 = a14;
  v35 = a13;
  v16 = *(a10 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  v20 = swift_allocObject();
  *(v20 + 16) = a10;
  *(v20 + 24) = a11;
  v42 = a11;
  *(v20 + 32) = *(&a11 + 1);
  *(v20 + 40) = a12;
  v21 = v35;
  v22 = v36;
  *(v20 + 48) = v35;
  *(v20 + 56) = v22;
  *(v20 + 64) = a15;
  v23 = v38;
  *(v20 + 80) = v37;
  *(v20 + 88) = v23;
  v24 = v41;
  *(v20 + 96) = v40;
  *(v20 + 104) = v24;
  v46 = a11;
  *&v47 = v21;
  *(&v47 + 1) = v22;
  v25 = v21;
  v26 = v22;
  v48 = a15;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init<A>(_:id:makeContent:)(v19, v43, v44, partial apply for closure #1 in WindowGroup.init<A, B, C>(_:id:for:content:defaultValue:), v20, a10, &v46);
  (*(v16 + 8))(v39, a10);
  v27 = v52;
  v28 = v49;
  *(a9 + 32) = v48;
  *(a9 + 48) = v28;
  *(a9 + 64) = v50;
  v29 = v51;
  v30 = v47;
  *a9 = v46;
  *(a9 + 16) = v30;
  v31 = v45;
  *(a9 + 80) = v29;
  *(a9 + 88) = v31;
  v32 = swift_allocObject();
  v32[2] = v42;
  v32[3] = v25;
  v32[4] = v26;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v33 + 24) = v32;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v27);
  *(a9 + 96) = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable)partial apply;
  *(a9 + 104) = v33;
  return result;
}

__n128 WindowGroup.init<A, B, C>(_:id:presenting:content:defaultValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14)
{
  v32 = a7;
  v33 = a8;
  v31 = a6;
  v29 = a12;
  v30 = a11;
  v28 = a13;
  v20 = *(a10 - 8);
  v21 = MEMORY[0x1EEE9AC00](a1);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, a1, a10, v21);
  *(&v27 + 1) = a14;
  *&v27 = *(&v28 + 1);
  WindowGroup.init<A, B, C>(_:id:for:content:defaultValue:)(v23, a2, a3, a4, a5, v31, v32, v33, v34, a10, v30, v29, *(&v29 + 1), v28, v27);
  (*(v20 + 8))(a1, a10);
  v24 = v34[5];
  *(a9 + 64) = v34[4];
  *(a9 + 80) = v24;
  *(a9 + 96) = v34[6];
  v25 = v34[1];
  *a9 = v34[0];
  *(a9 + 16) = v25;
  result = v34[3];
  *(a9 + 32) = v34[2];
  *(a9 + 48) = result;
  return result;
}

uint64_t WindowGroup.init<A, B>(for:content:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  *(v17 + 32) = a8;
  *(v17 + 40) = a10;
  *(v17 + 48) = a11;
  *(v17 + 64) = a2;
  *(v17 + 72) = a3;
  *(v17 + 80) = a4;
  *(v17 + 88) = a5;
  *&v29 = a6;
  *(&v29 + 1) = a7;
  *&v30 = a8;
  *(&v30 + 1) = a10;
  v18 = a8;
  v31 = a11;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init(makeContent:)(partial apply for closure #1 in WindowGroup.init<A, B>(_:id:for:content:defaultValue:), v17, &v29);
  v19 = v35;
  v20 = v32;
  *(a9 + 32) = v31;
  *(a9 + 48) = v20;
  *(a9 + 64) = v33;
  v21 = v34;
  v22 = v30;
  *a9 = v29;
  *(a9 + 16) = v22;
  *(a9 + 80) = v21;
  *(a9 + 88) = a1;
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = v18;
  v23[4] = a10;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v24 + 24) = v23;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v19);
  *(a9 + 96) = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable)partial apply;
  *(a9 + 104) = v24;
  return result;
}

__n128 WindowGroup.init<A, B>(presenting:content:defaultValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, unint64_t a12)
{
  WindowGroup.init<A, B>(for:content:defaultValue:)(a1, a2, a3, a4, a5, a6, a7, a8, v16, a10, __PAIR128__(a12, a11));
  v13 = v16[5];
  *(a9 + 64) = v16[4];
  *(a9 + 80) = v13;
  *(a9 + 96) = v16[6];
  v14 = v16[1];
  *a9 = v16[0];
  *(a9 + 16) = v14;
  result = v16[3];
  *(a9 + 32) = v16[2];
  *(a9 + 48) = result;
  return result;
}

uint64_t WindowGroup.init<A, B>(_:for:content:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, __int128 a13)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a11;
  *(v15 + 32) = a12;
  *(v15 + 48) = a13;
  *(v15 + 64) = a6;
  *(v15 + 72) = a7;
  *(v15 + 80) = a8;
  *(v15 + 88) = a10;
  v30 = a11;
  v31 = a12;
  v32 = a13;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init(_:makeContent:)(a1, a2, a3 & 1, a4, partial apply for closure #1 in WindowGroup.init<A, B>(_:id:for:content:defaultValue:), v15, &v30);
  v16 = v36;
  v17 = v33;
  *(a9 + 32) = v32;
  *(a9 + 48) = v17;
  *(a9 + 64) = v34;
  v18 = v35;
  v19 = v31;
  *a9 = v30;
  *(a9 + 16) = v19;
  *(a9 + 80) = v18;
  *(a9 + 88) = a5;
  v20 = swift_allocObject();
  *(v20 + 16) = a11;
  *(v20 + 24) = a12;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v21 + 24) = v20;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v16);
  *(a9 + 96) = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable)partial apply;
  *(a9 + 104) = v21;
  return result;
}

__n128 WindowGroup.init<A, B>(_:id:presenting:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(_OWORD *__return_ptr, uint64_t, uint64_t, void))
{
  a12(v16, a1, a2, a3 & 1);
  v13 = v16[5];
  *(a4 + 64) = v16[4];
  *(a4 + 80) = v13;
  *(a4 + 96) = v16[6];
  v14 = v16[1];
  *a4 = v16[0];
  *(a4 + 16) = v14;
  result = v16[3];
  *(a4 + 32) = v16[2];
  *(a4 + 48) = result;
  return result;
}

uint64_t WindowGroup.init<A, B>(_:for:content:defaultValue:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, __int128 a7, __int128 a8, __int128 a9)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a7;
  *(v11 + 32) = a8;
  *(v11 + 48) = a9;
  *(v11 + 64) = a2;
  *(v11 + 72) = a3;
  *(v11 + 80) = a4;
  *(v11 + 88) = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init(_:makeContent:)(partial apply for closure #1 in WindowGroup.init<A, B>(_:id:for:content:defaultValue:), v11, &v22);
  v12 = v28;
  v13 = v25;
  *(a5 + 32) = v24;
  *(a5 + 48) = v13;
  *(a5 + 64) = v26;
  v14 = v27;
  v15 = v23;
  *a5 = v22;
  *(a5 + 16) = v15;
  *(a5 + 80) = v14;
  *(a5 + 88) = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = a7;
  *(v16 + 24) = a8;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v17 + 24) = v16;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v12);
  *(a5 + 96) = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable)partial apply;
  *(a5 + 104) = v17;
  return result;
}

uint64_t closure #1 in WindowGroup.init<A, B>(id:for:content:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = a8;
  v17[6] = a9;
  v17[7] = a10;
  v17[8] = a1;
  v17[9] = a2;

  *&v23 = a3;
  *(&v23 + 1) = a4;
  *&v24 = partial apply for implicit closure #1 in PresentedWindowContent.init(content:defaultValue:);
  *(&v24 + 1) = v17;
  *&v21 = a5;
  *(&v21 + 1) = a6;
  *&v22 = a7;
  *(&v22 + 1) = a8;
  v18 = type metadata accessor for PresentedWindowContent();
  static ViewBuilder.buildExpression<A>(_:)(&v23, v18, &protocol witness table for PresentedWindowContent<A, B>);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v23);

  v23 = v21;
  v24 = v22;
  static ViewBuilder.buildExpression<A>(_:)(&v23, v18, &protocol witness table for PresentedWindowContent<A, B>);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v23);
}

__n128 WindowGroup.init<A, B>(_:presenting:content:defaultValue:)@<Q0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, __int128 a8, __int128 a9, uint64_t a10)
{
  *&v14[40] = a10;
  *&v14[8] = a8;
  *&v14[24] = a9;
  *v14 = a7;
  WindowGroup.init<A, B>(_:for:content:defaultValue:)(a1, a2, a3, a4, v15, a6, *v14, *&v14[16], *&v14[32]);
  v11 = v15[5];
  *(a5 + 64) = v15[4];
  *(a5 + 80) = v11;
  *(a5 + 96) = v15[6];
  v12 = v15[1];
  *a5 = v15[0];
  *(a5 + 16) = v12;
  result = v15[3];
  *(a5 + 32) = v15[2];
  *(a5 + 48) = result;
  return result;
}

uint64_t WindowGroup.init<A, B, C>(_:for:content:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{
  v41 = a2;
  v42 = a8;
  v39 = a5;
  v40 = a6;
  v36 = a3;
  v37 = a4;
  v38 = a1;
  v35 = a13;
  v16 = *(a7 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  v20 = swift_allocObject();
  v21 = v42;
  *(v20 + 16) = a7;
  *(v20 + 24) = v21;
  *(v20 + 32) = a10;
  *(v20 + 40) = a11;
  v22 = v35;
  *(v20 + 48) = a12;
  *(v20 + 56) = v22;
  *(v20 + 64) = a14;
  v23 = v37;
  *(v20 + 80) = v36;
  *(v20 + 88) = v23;
  v24 = v40;
  *(v20 + 96) = v39;
  *(v20 + 104) = v24;
  *&v43 = v21;
  *(&v43 + 1) = a10;
  *&v44 = a12;
  *(&v44 + 1) = v22;
  v25 = v22;
  v45 = a14;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init<A>(_:makeContent:)(v19, partial apply for closure #1 in WindowGroup.init<A, B, C>(_:for:content:defaultValue:), v20, a7, &v43);
  (*(v16 + 8))(v38, a7);
  v26 = v49;
  v27 = v46;
  *(a9 + 32) = v45;
  *(a9 + 48) = v27;
  *(a9 + 64) = v47;
  v28 = v48;
  v29 = v44;
  *a9 = v43;
  *(a9 + 16) = v29;
  v30 = v41;
  *(a9 + 80) = v28;
  *(a9 + 88) = v30;
  v31 = swift_allocObject();
  v31[2] = v42;
  v31[3] = a12;
  v31[4] = v25;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v32 + 24) = v31;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v26);
  *(a9 + 96) = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable)partial apply;
  *(a9 + 104) = v32;
  return result;
}

uint64_t closure #1 in WindowGroup.init<A, B, C>(_:id:for:content:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;
  *(v16 + 32) = a9;
  *(v16 + 48) = a10;
  *(v16 + 56) = a11;
  *(v16 + 64) = a1;
  *(v16 + 72) = a2;

  *&v21 = a3;
  *(&v21 + 1) = a4;
  *&v22 = partial apply for implicit closure #1 in PresentedWindowContent.init(content:defaultValue:);
  *(&v22 + 1) = v16;
  *&v20 = a6;
  *(&v20 + 1) = a7;
  v17 = type metadata accessor for PresentedWindowContent();
  static ViewBuilder.buildExpression<A>(_:)(&v21, v17, &protocol witness table for PresentedWindowContent<A, B>);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v21);

  v21 = v20;
  v22 = a9;
  static ViewBuilder.buildExpression<A>(_:)(&v21, v17, &protocol witness table for PresentedWindowContent<A, B>);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v21);
}

uint64_t objectdestroy_75Tm()
{

  return swift_deallocObject();
}

__n128 WindowGroup.init<A, B, C>(_:id:presenting:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, void (*a14)(_OWORD *__return_ptr, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, uint64_t, uint64_t))
{
  v32 = a6;
  v33 = a8;
  v30 = a14;
  v31 = a5;
  v29 = a10;
  v28 = a11;
  v20 = *(a7 - 8);
  v21 = MEMORY[0x1EEE9AC00](a1);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, a1, v24, v21);
  v30(v34, v23, a2, a3, a4, v31, v32, a7, v33, v29, *(&v29 + 1), v28, *(&v28 + 1), a12, a13);
  (*(v20 + 8))(a1, a7);
  v25 = v34[5];
  *(a9 + 64) = v34[4];
  *(a9 + 80) = v25;
  *(a9 + 96) = v34[6];
  v26 = v34[1];
  *a9 = v34[0];
  *(a9 + 16) = v26;
  result = v34[3];
  *(a9 + 32) = v34[2];
  *(a9 + 48) = result;
  return result;
}

uint64_t implicit closure #1 in PresentedWindowContent.init(content:defaultValue:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[2] = a7;
  v20[3] = a8;
  v20[0] = a5;
  v20[1] = a6;
  type metadata accessor for Optional();
  v10 = type metadata accessor for Binding();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v20 - v16;
  (*(v11 + 16))(v20 - v16, a1, v10, v15);
  type metadata accessor for Optional();
  v18 = type metadata accessor for Binding();
  (*(*(v18 - 8) + 32))(v13, v17, v18);
  closure #1 in implicit closure #1 in PresentedWindowContent.init(content:defaultValue:)(v13, a2);
  return (*(v11 + 8))(v13, v10);
}

uint64_t closure #1 in implicit closure #1 in PresentedWindowContent.init(content:defaultValue:)(uint64_t a1, void (*a2)(char *))
{
  v12 = a2;
  type metadata accessor for Optional();
  v2 = type metadata accessor for Binding();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Binding();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  Binding.projectedValue.getter();
  type metadata accessor for BindingOperations.ForceUnwrapping();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  (*(v3 + 8))(v5, v2);
  v12(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t static PresentedWindowContent._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a9;
  v32 = a2;
  v44 = *MEMORY[0x1E69E9840];
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - v17;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  Child = type metadata accessor for PresentedWindowContent.MakeChild();
  v20 = *(Child - 8);
  v29 = Child;
  v30 = v20;
  MEMORY[0x1EEE9AC00](Child);
  v22 = &v29 - v21;
  v33 = *a1;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  type metadata accessor for PresentedWindowContent();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  closure #1 in static PresentedWindowContent._makeViewList(view:inputs:)(1, a3, a4, a5, a6, a7, a8);
  LODWORD(a1) = AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type PresentedSceneValueInput and conformance PresentedSceneValueInput();
  PropertyList.subscript.getter();
  v23 = v38;
  (*(*(a3 - 8) + 56))(v18, 1, 1, a3);
  PresentedWindowContent.MakeChild.init(windowContentProvider:presentedValue:defaultValue:)(a1, v23, v18, v22);
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v24 = type metadata accessor for PresentedWindowContent.Child();
  v25 = v29;
  v35 = v24;
  v36 = v29;
  WitnessTable = swift_getWitnessTable();
  v26 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v22, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v34, v25, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
  (*(v30 + 8))(v22, v25);
  _GraphValue.init(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t closure #1 in static PresentedWindowContent._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[2] = type metadata accessor for PresentedWindowContent();
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v18 = type metadata accessor for PresentedWindowContent.WindowContentProvider();
  v14 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v17, v18, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  return v19;
}

uint64_t PresentedWindowContent.MakeChild.init(windowContentProvider:presentedValue:defaultValue:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for PresentedWindowContent.MakeChild() + 72);
  v7 = type metadata accessor for Optional();
  return (*(*(v7 - 8) + 32))(&a4[v6], a3, v7);
}

uint64_t PresentedWindowContent.MakeChild.windowContentProvider.getter()
{
  type metadata accessor for PresentedWindowContent.WindowContentProvider();
  v0 = *AGGraphGetValue();
  outlined copy of AppIntentExecutor?(v0);

  return v0;
}

uint64_t PresentedWindowContent.MakeChild.updateValue()(uint64_t a1)
{
  v95 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v91 = *(a1 + 16);
  v4 = v91;
  *(&v91 + 1) = v3;
  *&v92 = v5;
  *(&v92 + 1) = v6;
  v93 = v7;
  v94 = v8;
  v9 = type metadata accessor for PresentedWindowContent.Child();
  v79 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v78 = v68 - v10;
  v81 = type metadata accessor for Optional();
  v82 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = v68 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v71 = v68 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v83 = v68 - v17;
  v85 = v4;
  *&v91 = v4;
  *(&v91 + 1) = v3;
  v77 = v3;
  v76 = v5;
  *&v92 = v5;
  *(&v92 + 1) = v6;
  v75 = v6;
  v74 = v7;
  v93 = v7;
  v94 = v8;
  v18 = v1;
  v73 = v8;
  type metadata accessor for PresentedWindowContent.WindowContentProvider();
  Value = AGGraphGetValue();
  v21 = v20;
  v23 = *Value;
  v22 = Value[1];
  v24 = Value[3];
  v84 = v18;
  if (*(v18 + 4) == *MEMORY[0x1E698D3F8])
  {
    outlined copy of AppIntentExecutor?(v23);

    v25 = 0;
    v26 = 0;
    v27 = 0uLL;
    v28 = 0uLL;
  }

  else
  {
    type metadata accessor for AnyHashable?();
    outlined copy of AppIntentExecutor?(v23);

    v29 = AGGraphGetValue();
    v25 = v30;
    outlined init with copy of AnyHashable?(v29, &v91);
    LOBYTE(v94) = v25 & 1;
    v27 = v91;
    v28 = v92;
    v26 = v93;
  }

  v91 = v27;
  v92 = v28;
  v93 = v26;
  OutputValue = AGGraphGetOutputValue();
  v32 = v85;
  if (OutputValue && (v21 & 1) == 0 && (v25 & 1) == 0)
  {
    outlined destroy of AnyHashable?(&v91);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v23);
  }

  outlined init with copy of AnyHashable?(&v91, &v86);
  v70 = v23;
  v69 = v9;
  v68[1] = v24;
  if (!*(&v87 + 1))
  {
    v68[0] = v22;
    outlined destroy of AnyHashable?(&v86);
    v44 = v81;
    v45 = v82;
    goto LABEL_13;
  }

  v89[0] = v86;
  v89[1] = v87;
  v90 = v88;
  AnyHashable.base.getter();
  outlined destroy of AnyHashable(v89);
  v34 = v71;
  v35 = swift_dynamicCast();
  v36 = *(*(v32 - 8) + 56);
  if ((v35 & 1) == 0)
  {
    v68[0] = v22;
    v36(v34, 1, 1, v32);
    v45 = v82;
    v44 = v81;
    (*(v82 + 8))(v34, v81);
LABEL_13:
    v46 = v32;
    v47 = *(a1 + 72);
    v42 = *(v45 + 16);
    v48 = v72;
    v42(v72, v84 + v47, v44);
    v49 = *(v46 - 8);
    LODWORD(v46) = (*(v49 + 48))(v48, 1, v46);
    (*(v45 + 8))(v48, v44);
    if (v46 == 1)
    {
      v72 = v42;
      v50 = v70;
      if (v70)
      {

        v52 = v80;
        v50(v51);
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v50);
        v41 = v85;
        (*(v49 + 56))(v52, 0, 1, v85);
        v40 = v82;
        v53 = v84;
        v43 = v81;
        (*(v82 + 40))(v84 + v47, v52, v81);
        v54 = v53 + v47;
        v39 = v83;
        v42 = v72;
        (v72)(v83, v54, v43);
      }

      else
      {
        v39 = v83;
        v41 = v85;
        (*(v49 + 56))(v83, 1, 1, v85);
        v43 = v81;
        v40 = v82;
        v42 = v72;
      }
    }

    else
    {
      v39 = v83;
      v42(v83, v84 + v47, v44);
      v43 = v44;
      v40 = v82;
      v41 = v85;
    }

    goto LABEL_18;
  }

  v37 = *(v32 - 8);
  v36(v34, 0, 1, v32);
  v38 = v83;
  (*(v37 + 32))(v83, v34, v32);
  v36(v38, 0, 1, v32);
  v39 = v38;
  v40 = v82;
  v41 = v32;
  v42 = *(v82 + 16);
  v43 = v81;
LABEL_18:
  v55 = v80;
  v42(v80, v39, v43);
  v56 = PresentedWindowContent.MakeChild.windowContentProvider.getter();
  v58 = v57;
  v60 = v59;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v56);
  v61 = v43;
  v62 = v78;
  v63 = PresentedWindowContent.Child.init(presentedValue:content:)(v55, v58, v60, v41, v77, v76, v75, v74, v78, v73);
  MEMORY[0x1EEE9AC00](v63);
  v66 = a1;
  WitnessTable = swift_getWitnessTable();
  v64 = v69;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v62, partial apply for closure #1 in StatefulRule.value.setter, &v68[-4], v69, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v65);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v70);

  (*(v79 + 8))(v62, v64);
  (*(v40 + 8))(v83, v61);
  return outlined destroy of AnyHashable?(&v91);
}

uint64_t PresentedWindowContent.Child.init(presentedValue:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v24 = a8;
  v26 = a2;
  v27 = a3;
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  (*(v17 + 16))(&v24 - v19, a1, v16, v18);
  v25 = "ivableAttachmentModifier.";
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = v24;
  v35 = a10;
  v21 = *(type metadata accessor for PresentedWindowContent.Child() + 68);
  v29 = a6;
  swift_getWitnessTable();
  v28 = a7;
  swift_getWitnessTable();
  SceneStorage<A>.init(wrappedValue:_:)(v20, 0xD000000000000025, v25 | 0x8000000000000000, v16, &a9[v21]);
  result = (*(v17 + 8))(a1, v16);
  v23 = v27;
  *a9 = v26;
  *(a9 + 1) = v23;
  return result;
}

uint64_t PresentedWindowContent.Child.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v38 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v29 - v5;
  v30 = v4;
  v35 = type metadata accessor for Binding();
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v29 - v6;
  v31 = *(a1 + 24);
  v39 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _PreferenceWritingModifier<PresentedSceneValueKey>();
  v10 = type metadata accessor for ModifiedContent();
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v29 - v13;
  v14 = *v2;
  v15 = type metadata accessor for SceneStorage();
  SceneStorage.projectedValue.getter(v15);
  v14(v7);
  (*(v34 + 8))(v7, v35);
  v16 = v36;
  SceneStorage.wrappedValue.getter(v15, v36);
  v17 = v31;
  v44 = v38;
  v45 = v31;
  v46 = *(a1 + 32);
  v18 = *(a1 + 56);
  v47 = *(a1 + 48);
  v48 = v18;
  v19 = v30;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in PresentedWindowContent.Child.body.getter, v43, MEMORY[0x1E69E73E0], MEMORY[0x1E69E69B8], v20, v51);
  (*(v41 + 8))(v16, v19);
  v21 = v33;
  v22 = v32;
  View.preference<A>(key:value:)();
  outlined destroy of AnyHashable?(v51);
  (*(v39 + 8))(v22, v17);
  v23 = lazy protocol witness table accessor for type _PreferenceWritingModifier<PresentedSceneValueKey> and conformance _PreferenceWritingModifier<A>();
  v49 = v18;
  v50 = v23;
  WitnessTable = swift_getWitnessTable();
  v25 = v37;
  v26 = v21;
  static ViewBuilder.buildExpression<A>(_:)(v21, v10, WitnessTable);
  v27 = *(v40 + 8);
  v27(v26, v10);
  static ViewBuilder.buildExpression<A>(_:)(v25, v10, WitnessTable);
  return (v27)(v25, v10);
}

uint64_t closure #1 in PresentedWindowContent.Child.body.getter(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return AnyHashable.init<A>(_:)();
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PresentedWindowContent<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE59E8](a1, a2, a3, WitnessTable);
}

uint64_t closure #1 in standardDecoder<A>(forType:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
  }

  outlined init with copy of AnyHashable?(v3, v2);
  type metadata accessor for AnyHashable?();
  lazy protocol witness table accessor for type AnyHashable? and conformance <A> A?();
  AnyHashable.init<A>(_:)();

  return outlined destroy of AnyHashable?(v3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PresentedSceneValueInputModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type PresentedSceneValueInputModifier and conformance PresentedSceneValueInputModifier();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, v10);
}

double protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance PresentedSceneValueKey(__int128 *a1, void (*a2)(__int128 *__return_ptr))
{
  if (*(a1 + 3))
  {
    v3 = a1[1];
    v6 = *a1;
    v7 = v3;
    v8 = *(a1 + 4);
  }

  else
  {
    a2(&v6);
  }

  result = *&v6;
  v5 = v7;
  *a1 = v6;
  a1[1] = v5;
  *(a1 + 4) = v8;
  return result;
}

uint64_t type metadata completion function for PresentedWindowContent.Child()
{
  type metadata accessor for Optional();
  result = type metadata accessor for SceneStorage();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for PresentedWindowContent.Child(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = (v8 & 0xF8 ^ 0x1F8) & (v8 + 16);
  if (*(v5 + 84))
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = *(v5 + 64) + 1;
  }

  v11 = v9 + ((((v10 + ((v7 + 32) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v7 & 0x100000;
  v13 = *a2;
  if (v8 > 7 || v12 != 0 || v11 > 0x18)
  {
    *a1 = v13;
    v3 = (v13 + v9);
  }

  else
  {
    v16 = a2[1];
    *v3 = v13;
    v3[1] = v16;
    v17 = ((v3 + 23) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    v17[1] = v18[1];
    v19 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v18 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    v19[1] = v20[1];
    v21 = *(v5 + 48);

    if (v21(v20 + 2, 1, v4))
    {
      memcpy(v19 + 2, v20 + 2, v10);
    }

    else
    {
      (*(v6 + 16))(v19 + 2, v20 + 2, v4);
      (*(v6 + 56))(v19 + 2, 0, 1, v4);
    }

    v22 = ((v19 + v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v20 + v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v23;
    *((v22 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t destroy for PresentedWindowContent.Child(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  v7 = (v6 + ((((a1 + (v6 | 7) + 16) & ~(v6 | 7)) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6;
  if (!(*(v5 + 48))(v7, 1, v4))
  {
    (*(v5 + 8))(v7, v4);
  }
}

void *initializeWithCopy for PresentedWindowContent.Child(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = (v8 | 7) + 16;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v11 = ((a2 + v9) & ~(v8 | 7));
  *v10 = *v11;
  v10[1] = v11[1];
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = ((v12 + v8 + 16) & ~v8);
  v15 = ((v13 + v8 + 16) & ~v8);
  v16 = *(v6 + 48);

  if (v16(v15, 1, v5))
  {
    v17 = *(v7 + 84);
    v18 = *(v7 + 64);
    if (v17)
    {
      v19 = *(v7 + 64);
    }

    else
    {
      v19 = v18 + 1;
    }

    memcpy(v14, v15, v19);
  }

  else
  {
    (*(v7 + 16))(v14, v15, v5);
    v21 = *(v7 + 56);
    v20 = v7 + 56;
    v21(v14, 0, 1, v5);
    v17 = *(v20 + 28);
    v18 = *(v20 + 8);
  }

  if (v17)
  {
    v22 = v18;
  }

  else
  {
    v22 = v18 + 1;
  }

  v23 = ((v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  *((v23 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void *assignWithCopy for PresentedWindowContent.Child(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + 16;
  v11 = ((a1 + v10) & ~(v9 | 7));
  v12 = ((a2 + v10) & ~(v9 | 7));
  *v11 = *v12;
  v11[1] = v12[1];

  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v13[1] = v14[1];

  v15 = ((v13 + v9 + 16) & ~v9);
  v16 = ((v14 + v9 + 16) & ~v9);
  v17 = *(v8 + 48);
  LODWORD(v13) = v17(v15, 1, v7);
  v18 = v17(v16, 1, v7);
  if (v13)
  {
    if (!v18)
    {
      (*(v8 + 16))(v15, v16, v7);
      (*(v8 + 56))(v15, 0, 1, v7);
      goto LABEL_12;
    }

    v19 = *(v8 + 84);
    v20 = *(v8 + 64);
  }

  else
  {
    if (!v18)
    {
      (*(v8 + 24))(v15, v16, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v15, v7);
    v19 = *(v8 + 84);
    v20 = *(v8 + 64);
  }

  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + 1;
  }

  memcpy(v15, v16, v21);
LABEL_12:
  if (*(v8 + 84))
  {
    v22 = *(v8 + 64);
  }

  else
  {
    v22 = *(v8 + 64) + 1;
  }

  v23 = v15 + v22 + 7;
  v24 = v16 + v22 + 7;
  v25 = (v24 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v23 & 0xFFFFFFFFFFFFFFF8) = *(v24 & 0xFFFFFFFFFFFFFFF8);
  v26 = (v23 & 0xFFFFFFFFFFFFFFF8) + 15;

  *(v26 & 0xFFFFFFFFFFFFFFF8) = *(v25 & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_OWORD *initializeWithTake for PresentedWindowContent.Child(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = (v7 | 7) + 16;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v10 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v10;
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = ((v11 + v7 + 16) & ~v7);
  v14 = ((v12 + v7 + 16) & ~v7);
  if ((*(v5 + 48))(v14, 1, v4))
  {
    v15 = *(v6 + 84);
    v16 = *(v6 + 64);
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 + 1;
    }

    memcpy(v13, v14, v17);
  }

  else
  {
    (*(v6 + 32))(v13, v14, v4);
    v19 = *(v6 + 56);
    v18 = v6 + 56;
    v19(v13, 0, 1, v4);
    v15 = *(v18 + 28);
    v16 = *(v18 + 8);
  }

  if (v15)
  {
    v20 = v16;
  }

  else
  {
    v20 = v16 + 1;
  }

  v21 = ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  *((v21 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_OWORD *assignWithTake for PresentedWindowContent.Child(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 16;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v11 = ((a2 + v9) & ~(v8 | 7));
  *v10 = *v11;
  v10[1] = v11[1];

  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v12[1] = v13[1];

  v14 = ((v12 + v8 + 16) & ~v8);
  v15 = ((v13 + v8 + 16) & ~v8);
  v16 = *(v7 + 48);
  LODWORD(v12) = v16(v14, 1, v6);
  v17 = v16(v15, 1, v6);
  if (v12)
  {
    if (!v17)
    {
      (*(v7 + 32))(v14, v15, v6);
      (*(v7 + 56))(v14, 0, 1, v6);
      goto LABEL_12;
    }

    v18 = *(v7 + 84);
    v19 = *(v7 + 64);
  }

  else
  {
    if (!v17)
    {
      (*(v7 + 40))(v14, v15, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v14, v6);
    v18 = *(v7 + 84);
    v19 = *(v7 + 64);
  }

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  memcpy(v14, v15, v20);
LABEL_12:
  if (*(v7 + 84))
  {
    v21 = *(v7 + 64);
  }

  else
  {
    v21 = *(v7 + 64) + 1;
  }

  v22 = v14 + v21 + 7;
  v23 = ((v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  *(v22 & 0xFFFFFFFFFFFFFFF8) = *v23;
  v24 = (v22 & 0xFFFFFFFFFFFFFFF8) + 15;

  *(v24 & 0xFFFFFFFFFFFFFFF8) = *((v23 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for PresentedWindowContent.Child(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 80);
  if (v6)
  {
    v11 = 7;
  }

  else
  {
    v11 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v10 | 7;
  v13 = v10 + 16;
  if (v9 >= a2)
  {
    goto LABEL_36;
  }

  v14 = (v13 & ~v12) + ((((v11 + *(*(*(a3 + 16) - 8) + 64) + ((v10 + 32) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = a2 - v9;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
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

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_36;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v14)) == 0)
  {
LABEL_36:
    if (v9 == 0x7FFFFFFF)
    {
      v23 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      return (v23 + 1);
    }

    else
    {
      v24 = (*(v5 + 48))((v13 + ((((a1 + v12 + 16) & ~v12) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v10);
      if (v24 >= 2)
      {
        return v24 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    LODWORD(v16) = *a1;
  }

  return v9 + (v16 | v22) + 1;
}

void *storeEnumTagSinglePayload for PresentedWindowContent.Child(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (v8 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v6 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v12;
  }

  v13 = ((v11 + 16) & ~(v11 | 7)) + ((((((v11 + 32) & ~v11) + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 < a3)
  {
    v14 = a3 - v10;
    if (((v11 + 16) & ~(v11 | 7)) + ((((((v11 + 32) & ~v11) + v12 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == -8)
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
      v5 = v16;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v10)
  {
    if (v13)
    {
      v17 = 1;
    }

    else
    {
      v17 = a2 - v10;
    }

    if (v13)
    {
      v18 = ~v10 + a2;
      v19 = result;
      bzero(result, v13);
      result = v19;
      *v19 = v18;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v13) = v17;
      }

      else
      {
        *(result + v13) = v17;
      }
    }

    else if (v5)
    {
      *(result + v13) = v17;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v13) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_41;
    }

    *(result + v13) = 0;
  }

  else if (v5)
  {
    *(result + v13) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return result;
  }

LABEL_41:
  if (v10 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *result = a2 & 0x7FFFFFFF;
      result[1] = 0;
    }

    else
    {
      *result = a2 - 1;
    }
  }

  else
  {
    v20 = *(v6 + 56);
    v21 = (v11 + 16 + ((((result + (v11 | 7) + 16) & ~(v11 | 7)) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11;
    v22 = a2 + 1;

    return v20(v21, v22);
  }

  return result;
}

uint64_t type metadata completion function for PresentedWindowContent.MakeChild()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t outlined destroy of AnyHashable?(uint64_t a1)
{
  type metadata accessor for AnyHashable?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _PreferenceWritingModifier<PresentedSceneValueKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<PresentedSceneValueKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<PresentedSceneValueKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<PresentedSceneValueKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<PresentedSceneValueKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<PresentedSceneValueKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<PresentedSceneValueKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<PresentedSceneValueKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyHashable? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type AnyHashable? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AnyHashable? and conformance <A> A?)
  {
    type metadata accessor for AnyHashable?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyHashable? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>>, MenuStyleModifier<PlatformFallbackMenuStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>>, MenuStyleModifier<PlatformFallbackMenuStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>>, MenuStyleModifier<PlatformFallbackMenuStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>>, MenuStyleModifier<PlatformFallbackMenuStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>>, MenuStyleModifier<PlatformFallbackMenuStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

uint64_t PlatformFallbackMenuStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = 2;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = 0;
  *(a2 + 56) = v8;
  *(a2 + 64) = 0;
  *(a2 + 72) = v9;
  *(a2 + 80) = 0;
  *(a2 + 88) = v10;
  *(a2 + 96) = 0;
  outlined copy of AppIntentExecutor?(v3);

  return outlined copy of AppIntentExecutor?(v5);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>>, MenuStyleModifier<BorderlessButtonMenuStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>>, MenuStyleModifier<BorderlessButtonMenuStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>>, MenuStyleModifier<BorderlessButtonMenuStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>>, MenuStyleModifier<BorderlessButtonMenuStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>>, lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>>, MenuStyleModifier<BorderlessButtonMenuStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>>, MenuStyleModifier<BorderlessButtonMenuStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>>, MenuStyleModifier<BorderlessButtonMenuStyle>>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>>(255);
    type metadata accessor for MenuStyleModifier<ToolbarMenuStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<BorderlessButtonMenuStyle>, lazy protocol witness table accessor for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>>, MenuStyleModifier<BorderlessButtonMenuStyle>>);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>();
    type metadata accessor for MenuStyleModifier<ToolbarMenuStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<ButtonMenuStyle>, lazy protocol witness table accessor for type ButtonMenuStyle and conformance ButtonMenuStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<ToolbarMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    lazy protocol witness table accessor for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>(&lazy protocol witness table cache variable for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>, type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>, type metadata accessor for _SemanticFeature<Semantics_v4>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4>, MenuStyleModifier<ButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t StaticIf<>.init(_:then:else:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v7(v6);
  a4(v8);
  return StaticIf.init(_trueBody:_falseBody:)();
}

uint64_t StaticIf<>.init<>(_:then:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return StaticIf.init(_trueBody:_falseBody:)();
}

uint64_t StaticIf<>.init(_:then:else:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v11(v10);
  a4(v12);
  StaticIf.init(_trueBody:_falseBody:)();
  return (*(*(a6 - 8) + 8))(a1, a6);
}

uint64_t StaticIf<>.init<>(_:then:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7(v6);
  StaticIf.init(_trueBody:_falseBody:)();
  return (*(*(a4 - 8) + 8))(a1, a4);
}

void *static StaticIf<>._makeToolbar(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = a2[1];
  v17 = a2[3];
  v37 = a2[2];
  v38[0] = v17;
  *(v38 + 12) = *(a2 + 60);
  v18 = a2[1];
  v35 = *a2;
  v36 = v18;
  v26 = v35;
  v27 = v16;
  v19 = *a1;
  v28 = v37;
  v20 = *(a6 + 8);
  outlined init with copy of _GraphInputs(&v35, v39);
  v21 = v20(&v26, a3, a6);
  v39[0] = v26;
  v39[1] = v27;
  v39[2] = v28;
  v22 = outlined destroy of _GraphInputs(v39);
  MEMORY[0x1EEE9AC00](v22);
  v31 = v19;
  type metadata accessor for StaticIf();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v28 = v37;
  v29[0] = v38[0];
  *(v29 + 12) = *(v38 + 12);
  v27 = v36;
  v26 = v35;
  if (v21)
  {
    result = (*(a7 + 32))(&v32, v30, &v26, a4, a7);
  }

  else
  {
    result = (*(a8 + 32))(&v32, v30, &v26, a5, a8);
  }

  v24 = v33;
  v25 = v34;
  *a9 = v32;
  *(a9 + 8) = v24;
  *(a9 + 16) = v25;
  return result;
}

uint64_t closure #1 in static StaticIf<>._makeToolbar(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = type metadata accessor for StaticIf();
  v8[3] = a3;
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v8, a3, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t closure #2 in static StaticIf<>._makeToolbar(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for StaticIf();
  v7 = *(v6 + 44);
  v11[2] = v6;
  v11[3] = a4;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, a4, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t instantiation function for generic protocol witness table for <> StaticIf<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t CustomizableToolbarContent.matchedTransitionSource<A>(id:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v9, v7);
  MatchedTransitionIdentifier.init<A>(id:namespace:)(v9, a3, v12);
  ToolbarContent.modifier<A>(_:)(v12, a2, &type metadata for MatchedTransitionSourceModifier, a4);
  return outlined destroy of AccessibilityRelationshipScope.Key(v12);
}

uint64_t MatchedTransitionIdentifier.init<A>(id:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  *(a3 + 40) = v9;
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  AnyHashable.init<A>(_:)();
  return (*(v6 + 8))(a1, a2);
}

uint64_t ToolbarContent.matchedTransitionSource<A>(id:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v9, v7);
  MatchedTransitionIdentifier.init<A>(id:namespace:)(v9, a3, v12);
  ToolbarContent.modifier<A>(_:)(v12, a2, &type metadata for MatchedTransitionSourceModifier, a4);
  return outlined destroy of AccessibilityRelationshipScope.Key(v12);
}

uint64_t static MatchedTransitionSourceModifier._makeToolbar(content:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *))
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = a2[3];
  v21 = a2[2];
  v22[0] = v5;
  *(v22 + 12) = *(a2 + 60);
  v6 = a2[1];
  v20[0] = *a2;
  v20[1] = v6;
  v7 = a2[3];
  v18 = v21;
  v19[0] = v7;
  *(v19 + 12) = *(a2 + 60);
  v8 = *a1;
  v9 = v6;
  v16 = v20[0];
  v17 = v4;
  swift_beginAccess();
  LODWORD(v25[0]) = *(v9 + 16);
  DWORD1(v25[0]) = v8;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ToolbarInputs(v20, v27);
  lazy protocol witness table accessor for type MatchedTransitionSourceModifier.ChildEnvironment and conformance MatchedTransitionSourceModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v23[2] = v18;
  v24[0] = v19[0];
  *(v24 + 12) = *(v19 + 12);
  v23[0] = v16;
  v23[1] = v17;
  v14 = v18;
  v15[0] = v19[0];
  *(v15 + 12) = *(v19 + 12);
  v12 = v16;
  v13 = v17;
  v10 = outlined init with copy of _ToolbarInputs(v23, v27);
  a3(v10, &v12);
  v25[2] = v14;
  v26[0] = v15[0];
  *(v26 + 12) = *(v15 + 12);
  v25[0] = v12;
  v25[1] = v13;
  outlined destroy of _ToolbarInputs(v25);
  v27[2] = v18;
  v28[0] = v19[0];
  *(v28 + 12) = *(v19 + 12);
  v27[0] = v16;
  v27[1] = v17;
  return outlined destroy of _ToolbarInputs(v27);
}

uint64_t MatchedTransitionSourceModifier.ChildEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  v4 = AGGraphGetValue();
  outlined init with copy of MatchedTransitionSourceModifier(v4, v7);
  v8[0] = v7[0];
  v8[1] = v7[1];
  v8[2] = v7[2];
  outlined init with copy of MatchedTransitionIdentifier?(v8, &v6);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier>);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of MatchedTransitionIdentifier?(v8);
}

uint64_t specialized implicit closure #1 in _GraphInputs.toolbarMatchedTransitionIdentifier.getter(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier>);

    PropertyList.subscript.getter();
  }
}

unint64_t lazy protocol witness table accessor for type MatchedTransitionSourceModifier.ChildEnvironment and conformance MatchedTransitionSourceModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceModifier.ChildEnvironment and conformance MatchedTransitionSourceModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceModifier.ChildEnvironment and conformance MatchedTransitionSourceModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceModifier.ChildEnvironment and conformance MatchedTransitionSourceModifier.ChildEnvironment);
  }

  return result;
}

void type metadata accessor for MatchedTransitionIdentifier?()
{
  if (!lazy cache variable for type metadata for MatchedTransitionIdentifier?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MatchedTransitionIdentifier?);
    }
  }
}

uint64_t outlined destroy of MatchedTransitionIdentifier?(uint64_t a1)
{
  type metadata accessor for MatchedTransitionIdentifier?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UISceneAdaptor.init(id:role:content:)@<X0>(uint64_t a1@<X6>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v6 = StaticString.description.getter();
  v8 = v7;
  v9 = StaticString.description.getter();
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = 0;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  v11 = type metadata accessor for UISceneAdaptor();
  v12 = *(*(a2 - 8) + 32);
  v13 = a3 + *(v11 + 40);

  return v12(v13, a1, a2);
}

uint64_t UISceneAdaptor.init(id:role:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = 0;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  v10 = type metadata accessor for UISceneAdaptor();
  v11 = *(*(a6 - 8) + 32);
  v12 = a7 + *(v10 + 40);

  return v11(v12, a5, a6);
}

uint64_t UISceneAdaptor.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  outlined copy of SceneID(*v1, v4, v5);
  outlined copy of UISceneAdaptorConfiguration.Kind(v6, v7);
  specialized ResolvedUISceneAdaptor.init(id:kind:content:)(v3, v4, v5, v6, v7, &v21);
  v26 = *&v22[24];
  v25 = *&v22[8];
  v23 = v21;
  v24 = v22[0];
  v14 = v21;
  v15 = *v22;
  v16 = *&v22[16];
  v8 = type metadata accessor for ResolvedUISceneAdaptor();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v14, v8, &v17);
  outlined destroy of SceneID(&v23);
  outlined destroy of UISceneAdaptorConfiguration.Kind(&v25);
  outlined destroy of AnyView(&v26);
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v12 = v20;
  v14 = v17;
  LOBYTE(v15) = v18;
  *(&v15 + 1) = v19;
  v16 = v20;
  static SceneBuilder.buildBlock<A>(_:)(&v14, v8, a1);
  outlined consume of SceneID(v9, *(&v9 + 1), v10);
  outlined consume of UISceneAdaptorConfiguration.Kind(v11, v12);
}

uint64_t ResolvedUISceneAdaptor.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v35[0] = *v1;
  v35[1] = v3;
  v36 = v4;
  v34[0] = v5;
  v34[1] = v6;
  v32 = v7;
  v33 = v7;
  v28 = v4 & 1;
  v31[0] = v5;
  v31[1] = v6;
  v29[0] = v35[0];
  v29[1] = v3;
  v30 = v4 & 1;
  v16 = v35[0];
  v17 = v3;
  v18 = v4 & 1;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v8 = type metadata accessor for ResolvedUISceneAdaptor.RootViewScene();
  static ViewBuilder.buildExpression<A>(_:)(&v16, v8, &v22);
  outlined init with copy of SceneID(v35, v15);
  outlined init with copy of UISceneAdaptorConfiguration.Kind(v34, v15);
  outlined init with copy of AnyView(&v33, v15);
  outlined destroy of SceneID(v29);
  outlined destroy of UISceneAdaptorConfiguration.Kind(v31);
  outlined destroy of AnyView(&v32);
  v9 = v22;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v13 = v26;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  static SceneBuilder.buildBlock<A>(_:)(&v16, v8, a1);
  outlined consume of SceneID(v9, v10, v11);
  outlined consume of UISceneAdaptorConfiguration.Kind(v12, v13);
}

uint64_t static ResolvedUISceneAdaptor.RootViewScene._makeScene(scene:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *(a2 + 16);
  v8 = *(a2 + 48);
  v16 = *(a2 + 56);
  PreferencesOutputs.init()();
  v21 = a3;
  v22 = a4;
  LODWORD(v23) = v6;
  type metadata accessor for ResolvedUISceneAdaptor.RootViewScene();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  swift_beginAccess();
  v9 = *(v7 + 16);
  lazy protocol witness table accessor for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput();
  PropertyList.subscript.getter();
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v23 = __PAIR64__(v9, v17);
  List = type metadata accessor for ResolvedUISceneAdaptor.RootViewScene.MakeList();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<EnvironmentValues>(0, &lazy cache variable for type metadata for Attribute<SceneList>, &type metadata for SceneList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v23, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_30, v18, List, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  v23 = v8;
  LODWORD(v24) = v16;

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  outlined consume of SceneList.Namespace(v10, v11, v12);
}

uint64_t closure #1 in static ResolvedUISceneAdaptor.RootViewScene._makeScene(scene:inputs:)(uint64_t a1)
{
  v5[2] = type metadata accessor for ResolvedUISceneAdaptor.RootViewScene();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_17, v5, &type metadata for UISceneAdaptorConfiguration, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5[5];
}

uint64_t ResolvedUISceneAdaptor.RootViewScene.MakeList.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v7 = *(Value + 32);
  v8 = *(Value + 40);
  outlined copy of SceneID(*Value, v4, v5);
  outlined copy of UISceneAdaptorConfiguration.Kind(v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
}

double ResolvedUISceneAdaptor.RootViewScene.MakeList.value.getter@<D0>(uint64_t *a1@<X8>)
{
  ResolvedUISceneAdaptor.RootViewScene.MakeList.configuration.getter(v20);
  ResolvedUISceneAdaptor.RootViewScene.MakeList.configuration.getter(&v21);
  v26 = v23;
  outlined destroy of UISceneAdaptorConfiguration.Kind(&v26);
  v25 = v24;
  outlined destroy of AnyView(&v25);
  DisplayList.Version.init(forUpdate:)();
  v2 = v16[2];
  _DiscreteSymbolEffectModifier.EffectEnvironment.environment.getter(v16);
  v3 = v16[0];
  v4 = v16[1];
  v5 = MEMORY[0x1E69E7CC0];
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_Say7SwiftUI28AnyConnectionOptionActionBoxCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *&v19[7] = v21;
  v19[23] = v22;
  v18 = 1;
  v17 = 1;
  EnvironmentValues.init()();
  type metadata accessor for Attribute<EnvironmentValues>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SceneList.Item>, &type metadata for SceneList.Item, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v8 = v20[4];
  v9 = v20[6];
  v10 = v20[7];
  *(v7 + 112) = v20[5];
  *(v7 + 128) = v9;
  *(v7 + 144) = v10;
  v11 = v20[0];
  v12 = v20[1];
  *(v7 + 16) = xmmword_18CD63400;
  *(v7 + 32) = v11;
  v13 = v20[2];
  v14 = v20[3];
  *(v7 + 48) = v12;
  *(v7 + 64) = v13;
  *(v7 + 80) = v14;
  *(v7 + 96) = v8;
  *(v7 + 160) = 5;
  *(v7 + 161) = *v19;
  *(v7 + 177) = *&v19[16];
  *(v7 + 192) = v2;
  *(v7 + 200) = v3;
  *(v7 + 208) = v4;
  *(v7 + 216) = 0;
  result = 0.0;
  *(v7 + 224) = 0u;
  *(v7 + 240) = 0u;
  *(v7 + 256) = 0u;
  *(v7 + 272) = 0u;
  *(v7 + 288) = 0u;
  *(v7 + 304) = 0u;
  *(v7 + 320) = 0u;
  *(v7 + 336) = 0u;
  *(v7 + 352) = 0u;
  *(v7 + 368) = 0u;
  *(v7 + 384) = 0u;
  *(v7 + 400) = 0u;
  *(v7 + 416) = 0u;
  *(v7 + 432) = 0u;
  *(v7 + 448) = 0u;
  *(v7 + 464) = 0u;
  *(v7 + 480) = 0u;
  *(v7 + 496) = 0u;
  *(v7 + 505) = 0u;
  *(v7 + 528) = 0u;
  *(v7 + 544) = v18;
  *(v7 + 552) = 0u;
  *(v7 + 568) = v17;
  *(v7 + 569) = 0;
  *(v7 + 576) = v5;
  *(v7 + 584) = v6;
  *(v7 + 592) = 0;
  *a1 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UISceneAdaptorConfiguration.Kind(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return !v4;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t closure #1 in Scene.safeAreaDisabled()(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    v3 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
    }

    if (v2 > *(v1 + 16))
    {
      __break(1u);
    }

    else
    {
      v4 = 216;
      do
      {
        if ((*(v1 + v4) & 2) == 0)
        {
          *(v1 + v4) |= 2u;
        }

        v4 += 568;
        --v2;
      }

      while (v2);
      *v3 = v1;
    }
  }

  return result;
}

uint64_t specialized ResolvedUISceneAdaptor.init(id:kind:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v16, v12);
  result = AnyView.init<A>(_:)();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = result;
  return result;
}

uint64_t outlined copy of UISceneAdaptorConfiguration.Kind(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t type metadata completion function for UISceneAdaptor()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for UISceneAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-41 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    outlined copy of SceneID(*a2, v11, v12);
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    v14 = a1 & 0xFFFFFFFFFFFFFFF8;
    v15 = a2 & 0xFFFFFFFFFFFFFFF8;
    if (*((a2 & 0xFFFFFFFFFFFFFFF8) + 32) < 0xFFFFFFFFuLL)
    {
      *(v14 + 24) = *(v15 + 24);
    }

    else
    {
      *(v14 + 24) = *(v15 + 24);
      *(v14 + 32) = *(v15 + 32);
    }

    (*(v5 + 16))(v14 + 40, v15 + 40, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  return a1;
}

uint64_t destroy for UISceneAdaptor(uint64_t a1, uint64_t a2)
{
  outlined consume of SceneID(*a1, *(a1 + 8), *(a1 + 16));
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (*(v4 + 32) >= 0xFFFFFFFFuLL)
  {
  }

  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (v4 + *(v5 + 80) + 40) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t initializeWithCopy for UISceneAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  outlined copy of SceneID(*a2, v7, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v9 = a1 & 0xFFFFFFFFFFFFFFF8;
  v10 = a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(v10 + 32) < 0xFFFFFFFFuLL)
  {
    *(v9 + 24) = *(v10 + 24);
  }

  else
  {
    *(v9 + 24) = *(v10 + 24);
    *(v9 + 32) = *(v10 + 32);
  }

  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 16))((v9 + *(v11 + 80) + 40) & ~*(v11 + 80), (v10 + *(v11 + 80) + 40) & ~*(v11 + 80));
  return a1;
}

uint64_t assignWithCopy for UISceneAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  outlined copy of SceneID(*a2, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  outlined consume of SceneID(v9, v10, v11);
  v12 = a1 & 0xFFFFFFFFFFFFFFF8;
  v13 = a2 & 0xFFFFFFFFFFFFFFF8;
  v14 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  if (*((a1 & 0xFFFFFFFFFFFFFFF8) + 32) < 0xFFFFFFFFuLL)
  {
    if (v14 >= 0xFFFFFFFF)
    {
      *(v12 + 24) = *(v13 + 24);
      *(v12 + 32) = *(v13 + 32);

      goto LABEL_8;
    }

LABEL_7:
    *(v12 + 24) = *(v13 + 24);
    goto LABEL_8;
  }

  if (v14 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *(v12 + 24) = *(v13 + 24);
  *(v12 + 32) = *(v13 + 32);

LABEL_8:
  v15 = *(*(a3 + 16) - 8);
  (*(v15 + 24))((v12 + *(v15 + 80) + 40) & ~*(v15 + 80), (v13 + *(v15 + 80) + 40) & ~*(v15 + 80));
  return a1;
}

uint64_t initializeWithTake for UISceneAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))(((a1 & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 40) & ~*(v4 + 80), ((a2 & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 40) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithTake for UISceneAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  outlined consume of SceneID(v7, v8, v9);
  v10 = a1 & 0xFFFFFFFFFFFFFFF8;
  v11 = a2 & 0xFFFFFFFFFFFFFFF8;
  if (*((a1 & 0xFFFFFFFFFFFFFFF8) + 32) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*(v11 + 32) < 0xFFFFFFFFuLL)
  {

LABEL_5:
    *(v10 + 24) = *(v11 + 24);
    goto LABEL_6;
  }

  *(v10 + 24) = *(v11 + 24);
  *(v10 + 32) = *(v11 + 32);

LABEL_6:
  v12 = *(*(a3 + 16) - 8);
  (*(v12 + 40))((v10 + *(v12 + 80) + 40) & ~*(v12 + 80), (v11 + *(v12 + 80) + 40) & ~*(v12 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for UISceneAdaptor(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFC)
  {
    v7 = 2147483644;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = a1 & 0xFFFFFFFFFFFFFFF8;
      if (v5 > 0x7FFFFFFC)
      {
        return (*(v4 + 48))((v15 + v6 + 40) & ~v6);
      }

      v16 = *(v15 + 32);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      v17 = v16 + 1;
      v18 = v16 - 2;
      if (v17 >= 4)
      {
        return v18;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for UISceneAdaptor(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFC)
  {
    v8 = 2147483644;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (v7 >= 0x7FFFFFFD)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 40) & ~v9);
  }

  else if (a2 >= 0x7FFFFFFD)
  {
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 24) = a2 - 2147483645;
  }

  else
  {
    *(v19 + 32) = a2 + 2;
  }
}

uint64_t getEnumTagSinglePayload for UISceneAdaptorConfiguration.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UISceneAdaptorConfiguration.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t outlined init with copy of UISceneAdaptorConfiguration.Kind(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 < 0xFFFFFFFF)
  {
    *a2 = *a1;
  }

  else
  {
    *a2 = *a1;
    *(a2 + 8) = v4;
  }

  return a2;
}

uint64_t destroy for UISceneAdaptorConfiguration(uint64_t a1)
{
  outlined consume of SceneID(*a1, *(a1 + 8), *(a1 + 16));
  if (*(a1 + 32) >= 3uLL)
  {
  }
}

uint64_t initializeWithCopy for UISceneAdaptorConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of SceneID(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 32);
  if (v7 >= 3)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v7;
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
  }

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for UISceneAdaptorConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of SceneID(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of SceneID(v7, v8, v9);
  v10 = *(a2 + 32);
  if (*(a1 + 32) >= 3uLL)
  {
    if (v10 >= 3)
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);

      goto LABEL_8;
    }

    outlined destroy of String(a1 + 24);
    goto LABEL_6;
  }

  if (v10 < 3)
  {
LABEL_6:
    *(a1 + 24) = *(a2 + 24);
    goto LABEL_8;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

LABEL_8:
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for UISceneAdaptorConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of SceneID(v5, v6, v7);
  if (*(a1 + 32) >= 3uLL)
  {
    v8 = *(a2 + 32);
    if (v8 >= 3)
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v8;

      goto LABEL_6;
    }

    outlined destroy of String(a1 + 24);
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_6:
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for UISceneAdaptorConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UISceneAdaptorConfiguration(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t LeadingTrailingLabeledContentStyle.makeBody(configuration:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = static VerticalAlignment.center.getter();
  v10 = 1;
  closure #1 in LeadingTrailingLabeledContentStyle.makeBody(configuration:)(a2, a3 & 1, &v19);
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v16 = v24[0];
  v11 = v19;
  v12 = v20;
  v18 = v24[0];
  v17[2] = v21;
  v17[3] = v22;
  v17[4] = v23;
  v17[0] = v19;
  v17[1] = v20;
  outlined init with copy of TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>(&v11, &v7);
  outlined destroy of TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>(v17);
  *&v9[39] = v13;
  *&v9[55] = v14;
  *&v9[71] = v15;
  v9[87] = v16;
  *&v9[7] = v11;
  *&v9[23] = v12;
  *&v8[33] = *&v9[32];
  *&v8[49] = *&v9[48];
  *&v8[65] = *&v9[64];
  v7 = v5;
  v8[0] = v10;
  *&v8[81] = *&v9[80];
  *&v8[17] = *&v9[16];
  *&v8[1] = *v9;
  Spacing.init()();
  type metadata accessor for HStack<TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>>();
  lazy protocol witness table accessor for type AccessibilityAdaptiveStack<TupleView<(LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance AccessibilityAdaptiveStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>>);
  View.spacing(_:)();

  v22 = *&v8[32];
  v23 = *&v8[48];
  v24[0] = *&v8[64];
  *(v24 + 9) = *&v8[73];
  v19 = v7;
  v20 = *v8;
  v21 = *&v8[16];
  return outlined destroy of HStack<TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>>(&v19);
}

__n128 closure #1 in LeadingTrailingLabeledContentStyle.makeBody(configuration:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = static HorizontalAlignment.leading.getter();
  static VerticalAlignment.center.getter();
  static Color.secondary.getter();
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_2(0, &lazy cache variable for type metadata for HStack<LabeledContentStyleConfiguration.Content>, &type metadata for LabeledContentStyleConfiguration.Content, &protocol witness table for LabeledContentStyleConfiguration.Content, MEMORY[0x1E69817F0]);
  lazy protocol witness table accessor for type HStack<LabeledContentStyleConfiguration.Content> and conformance HStack<A>();
  View.defaultForegroundColor(_:)();

  result = v8;
  *a3 = v6;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2 & 1;
  *(a3 + 17) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = v8;
  *(a3 + 56) = v9;
  *(a3 + 64) = v10;
  *(a3 + 72) = v11;
  *(a3 + 80) = 0;
  return result;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>(0, &lazy cache variable for type metadata for TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>, type metadata accessor for (ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>));
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>))
  {
    type metadata accessor for ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>(255, &lazy cache variable for type metadata for ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>);
    type metadata accessor for ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>, type metadata accessor for ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>));
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_2(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
    type metadata accessor for VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>()
{
  if (!lazy cache variable for type metadata for VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_2(255, &lazy cache variable for type metadata for LabelGroup<LabeledContentStyleConfiguration.Label>, &type metadata for LabeledContentStyleConfiguration.Label, &protocol witness table for LabeledContentStyleConfiguration.Label, type metadata accessor for LabelGroup);
    lazy protocol witness table accessor for type LabelGroup<LabeledContentStyleConfiguration.Label> and conformance LabelGroup<A>();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LabelGroup<LabeledContentStyleConfiguration.Label> and conformance LabelGroup<A>()
{
  result = lazy protocol witness table cache variable for type LabelGroup<LabeledContentStyleConfiguration.Label> and conformance LabelGroup<A>;
  if (!lazy protocol witness table cache variable for type LabelGroup<LabeledContentStyleConfiguration.Label> and conformance LabelGroup<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_2(255, &lazy cache variable for type metadata for LabelGroup<LabeledContentStyleConfiguration.Label>, &type metadata for LabeledContentStyleConfiguration.Label, &protocol witness table for LabeledContentStyleConfiguration.Label, type metadata accessor for LabelGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabelGroup<LabeledContentStyleConfiguration.Label> and conformance LabelGroup<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_2(255, &lazy cache variable for type metadata for HStack<LabeledContentStyleConfiguration.Content>, &type metadata for LabeledContentStyleConfiguration.Content, &protocol witness table for LabeledContentStyleConfiguration.Content, MEMORY[0x1E69817F0]);
    type metadata accessor for _EnvironmentKeyWritingModifier<Color?>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t outlined destroy of TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>(uint64_t a1)
{
  type metadata accessor for TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>(0, &lazy cache variable for type metadata for TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>, type metadata accessor for (ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>));
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for HStack<TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>, type metadata accessor for (ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>));
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)> and conformance TupleView<A>, &lazy cache variable for type metadata for TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>, type metadata accessor for (ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>));
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AccessibilityAdaptiveStack<TupleView<(LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance AccessibilityAdaptiveStack<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>>(uint64_t a1)
{
  type metadata accessor for HStack<TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type HStack<LabeledContentStyleConfiguration.Content> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<LabeledContentStyleConfiguration.Content> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<LabeledContentStyleConfiguration.Content> and conformance HStack<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_2(255, &lazy cache variable for type metadata for HStack<LabeledContentStyleConfiguration.Content>, &type metadata for LabeledContentStyleConfiguration.Content, &protocol witness table for LabeledContentStyleConfiguration.Content, MEMORY[0x1E69817F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<LabeledContentStyleConfiguration.Content> and conformance HStack<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AdaptiveLeadingTrailingLabeledContentStyle.Body and conformance AdaptiveLeadingTrailingLabeledContentStyle.Body()
{
  result = lazy protocol witness table cache variable for type AdaptiveLeadingTrailingLabeledContentStyle.Body and conformance AdaptiveLeadingTrailingLabeledContentStyle.Body;
  if (!lazy protocol witness table cache variable for type AdaptiveLeadingTrailingLabeledContentStyle.Body and conformance AdaptiveLeadingTrailingLabeledContentStyle.Body)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdaptiveLeadingTrailingLabeledContentStyle.Body and conformance AdaptiveLeadingTrailingLabeledContentStyle.Body);
  }

  return result;
}

uint64_t AdaptiveLeadingTrailingLabeledContentStyle.Body.body.getter()
{
  v1 = *v0;
  v2 = v0[1];
  static HorizontalAlignment.leading.getter();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 17) = v2;
  static VerticalAlignment.center.getter();
  swift_getKeyPath();
  Spacing.init()();
  type metadata accessor for AccessibilityAdaptiveStack<TupleView<(LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>)>>();
  lazy protocol witness table accessor for type AccessibilityAdaptiveStack<TupleView<(LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance AccessibilityAdaptiveStack<A>(&lazy protocol witness table cache variable for type AccessibilityAdaptiveStack<TupleView<(LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance AccessibilityAdaptiveStack<A>, type metadata accessor for AccessibilityAdaptiveStack<TupleView<(LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>)>>);
  View.spacing(_:)();
}

uint64_t closure #1 in AdaptiveLeadingTrailingLabeledContentStyle.Body.body.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1 ^ 1;
  static Color.secondary.getter();
  View.defaultForegroundColor(_:)();

  *a2 = 0;
  *(a2 + 8) = v4;
  *(a2 + 9) = a1;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

_BYTE *protocol witness for LabeledContentStyle.makeBody(configuration:) in conformance AdaptiveLeadingTrailingLabeledContentStyle@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  *a2 = *result;
  a2[1] = v3;
  return result;
}

void type metadata accessor for AccessibilityAdaptiveStack<TupleView<(LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>)>>()
{
  if (!lazy cache variable for type metadata for AccessibilityAdaptiveStack<TupleView<(LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>(255, &lazy cache variable for type metadata for TupleView<(LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>)>, type metadata accessor for (LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>));
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>)> and conformance TupleView<A>, &lazy cache variable for type metadata for TupleView<(LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>)>, type metadata accessor for (LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>));
    v0 = type metadata accessor for AccessibilityAdaptiveStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityAdaptiveStack<TupleView<(LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>)>>);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for TupleView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for (LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>)()
{
  if (!lazy cache variable for type metadata for (LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>))
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for Spacer?);
    type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>));
    }
  }
}

void type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Color?>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)> and conformance TupleView<A>(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TupleView<(ModifiedContent<StaticIf<_SemanticFeature<Semantics_v4>, VStack<LabelGroup<LabeledContentStyleConfiguration.Label>>, LabeledContentStyleConfiguration.Label>, ScrollEdgeEffectTagModifier>, Spacer, ModifiedContent<ModifiedContent<HStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>, ScrollEdgeEffectTagModifier>)>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdaptiveLeadingTrailingLabeledContentStyle.Body(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
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

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE7spacingyQrAA7SpacingVFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyAA8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v4VGAA6VStackVyAA10LabelGroupVyAA07LabeledI18StyleConfigurationV0Q0VGGA_GAA27ScrollEdgeEffectTagModifier33_E3F58C7F0A240A3E3386675EDAD155EBLLVG_AA6SpacerVALyALyAHyAY0I0VGAA022_EnvironmentKeyWritingZ0VyAA5ColorVSgGGA5_GtGG_Qo_HOTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(255);
  lazy protocol witness table accessor for type AccessibilityAdaptiveStack<TupleView<(LabeledContentStyleConfiguration.Label, Spacer?, ModifiedContent<LabeledContentStyleConfiguration.Content, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance AccessibilityAdaptiveStack<A>(a3, a4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t static _AnimatableView._makeView(view:inputs:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 48);
  v10 = *(a2 + 32);
  v11 = v3;
  v12 = *(a2 + 64);
  v4 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v4;
  v6 = v9[0];
  v7 = v2;
  v13 = *(a2 + 80);
  v8 = v10;
  outlined init with copy of _GraphInputs(v9, v14);
  static Animatable.makeAnimatable(value:inputs:)();
  v14[0] = v6;
  v14[1] = v7;
  v14[2] = v8;
  outlined destroy of _GraphInputs(v14);
  _GraphValue.init(_:)();
  return static View.makeView(view:inputs:)();
}

uint64_t static _AnimatableView._makeViewList(view:inputs:)(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v9[0] = *a2;
  v9[1] = v2;
  v4 = *a2;
  v3 = a2[1];
  v9[2] = a2[2];
  v6 = v4;
  v7 = v3;
  v8 = a2[2];
  outlined init with copy of _GraphInputs(v9, v10);
  static Animatable.makeAnimatable(value:inputs:)();
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  _GraphValue.init(_:)();
  return static View.makeViewList(view:inputs:)();
}

uint64_t static AnimatableModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 48);
  v10 = *(a2 + 32);
  v11 = v3;
  v12 = *(a2 + 64);
  v4 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v4;
  v6 = v9[0];
  v7 = v2;
  v13 = *(a2 + 80);
  v8 = v10;
  outlined init with copy of _GraphInputs(v9, v14);
  static Animatable.makeAnimatable(value:inputs:)();
  v14[0] = v6;
  v14[1] = v7;
  v14[2] = v8;
  outlined destroy of _GraphInputs(v14);
  _GraphValue.init(_:)();
  return static ViewModifier.makeView(modifier:inputs:body:)();
}

uint64_t static AnimatableModifier._makeViewList(modifier:inputs:body:)(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v9[0] = *a2;
  v9[1] = v2;
  v4 = *a2;
  v3 = a2[1];
  v9[2] = a2[2];
  v6 = v4;
  v7 = v3;
  v8 = a2[2];
  outlined init with copy of _GraphInputs(v9, v10);
  static Animatable.makeAnimatable(value:inputs:)();
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  _GraphValue.init(_:)();
  return static ViewModifier.makeViewList(modifier:inputs:body:)();
}

uint64_t type metadata completion function for ModifiedTabContent()
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

uint64_t instantiation function for generic protocol witness table for <> ModifiedTabContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t TabContent.modifier<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return ModifiedTabContent.init(content:modifier:)(v14, v10, a2, a3, a4);
}

uint64_t ModifiedTabContent.init(content:modifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ModifiedTabContent();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a2, a4);
}

uint64_t ModifiedTabContent<>._identifiedView.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v15 - v9;
  (*(a2 + 56))(v5, a2, v8);
  v11 = *(a1 + 36);
  v12 = *(a1 + 24);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  MEMORY[0x18D00A570](v2 + v11, AssociatedTypeWitness, v12, AssociatedConformanceWitness);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t AccessibilityNode.customRotors(in:)(uint64_t *a1)
{
  v2 = v1;
  v3 = a1[1];
  v15 = *a1;
  AccessibilityNode.attachment.getter(v19);
  outlined init with copy of AccessibilityProperties(v19, v21);
  outlined destroy of AccessibilityAttachment(v19);
  lazy protocol witness table accessor for type AccessibilityProperties.RotorInfoKey and conformance AccessibilityProperties.RotorInfoKey();
  AccessibilityProperties.subscript.getter();
  result = outlined destroy of AccessibilityProperties(v21);
  v5 = *&v19[0];
  v6 = *(*&v19[0] + 16);
  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v18 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v9 = (v7 << 6) | 0x20;
    v10 = v7;
    while (v10 < *(v5 + 16))
    {
      v11 = *(v5 + v9);
      v12 = *(v5 + v9 + 16);
      v13 = *(v5 + v9 + 32);
      *(v20 + 9) = *(v5 + v9 + 41);
      v19[1] = v12;
      v20[0] = v13;
      v19[0] = v11;
      v7 = v10 + 1;
      v21[0] = *(v5 + v9);
      v21[1] = *(v5 + v9 + 16);
      v22[0] = *(v5 + v9 + 32);
      *(v22 + 9) = *(v5 + v9 + 41);
      v17[0] = v15;
      v17[1] = v3;
      outlined init with copy of AccessibilityRotorInfo(v19, v16);
      v14 = AccessibilityRotorInfo.resolve(in:for:)(v17, v2);
      result = outlined destroy of AccessibilityRotorInfo(v19);
      if (v14)
      {
        MEMORY[0x18D00CC30](result);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v18;
        if (v6 - 1 == v10)
        {
LABEL_11:

          return v8;
        }

        goto LABEL_3;
      }

      v9 += 64;
      ++v10;
      if (v6 == v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

Swift::Void __swiftcall UIKitAccessibilityLinkRotorBridge.update()()
{
  isEscapingClosureAtFileLocation = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v3 = Strong;
  AccessibilityNode.attachment.getter(v25);
  outlined init with copy of AccessibilityProperties(v25, v26);
  outlined destroy of AccessibilityAttachment(v25);
  v4 = v27;

  outlined destroy of AccessibilityProperties(v26);
  LODWORD(v25[0]) = 18;
  if (one-time initialization token for comma != -1)
  {
    swift_once();
  }

  v5 = specialized AccessibilityNode.resolvedAttributedTexts(_:options:separator:)(v4);

  if (!v5)
  {

LABEL_8:
    v8 = OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_elements;
    swift_beginAccess();
    *(isEscapingClosureAtFileLocation + v8) = MEMORY[0x1E69E7CC0];

    return;
  }

  v6 = v5;
  v7 = NSObject.hashValue.getter();

  if (v7 == *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_paragraphHash))
  {
  }

  else
  {
    *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_paragraphHash) = v7;
    v9 = OBJC_IVAR____TtC7SwiftUI33UIKitAccessibilityLinkRotorBridge_elements;
    swift_beginAccess();
    v10 = *(isEscapingClosureAtFileLocation + v9);
    if ((v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0 || (isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(), v10 = *(isEscapingClosureAtFileLocation + v9), (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
    {
      if (v10 >> 62)
      {
        goto LABEL_20;
      }

      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_17;
    }

    if (v10 >> 62)
    {
LABEL_24:
      v23 = __CocoaSet.count.getter();
      if (v23 < 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v12 = v23;
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    specialized Array.replaceSubrange<A>(_:with:)(0, v12);
    while (1)
    {
      swift_endAccess();
      v14 = static NSAttributedStringKey.kitLink.getter();
      v9 = NSAttributedString.range.getter();
      v16 = v15;
      v17 = swift_allocObject();
      *(v17 + 16) = isEscapingClosureAtFileLocation;
      *(v17 + 24) = v3;
      v18 = swift_allocObject();
      *(v18 + 16) = partial apply for closure #1 in UIKitAccessibilityLinkRotorBridge.update();
      *(v18 + 24) = v17;
      v25[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      v25[5] = v18;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 1107296256;
      v25[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      v25[3] = &block_descriptor_59;
      v19 = _Block_copy(v25);
      v20 = isEscapingClosureAtFileLocation;
      v21 = v3;

      [v6 enumerateAttribute:v14 inRange:v9 options:v16 usingBlock:{0, v19}];

      _Block_release(v19);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_20:
      v22 = __CocoaSet.count.getter();
      v23 = __CocoaSet.count.getter();
      if (v23 < 0)
      {
        goto LABEL_26;
      }

      v24 = __CocoaSet.count.getter();
      if (v22 < 0 || (v13 = v22, v24 < v22))
      {
        __break(1u);
        goto LABEL_24;
      }

LABEL_17:
      *(isEscapingClosureAtFileLocation + v9) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo6UIViewC_Tt1g5(0, v13);
    }
  }
}

uint64_t View.accessibilityRotor<A>(_:entries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  v23 = a6;
  v19 = a4;
  v20 = a5;
  v21 = a7;
  v22 = a8;
  v11 = type metadata accessor for AccessibilityRotorModifier();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  v15 = a3 & 1;
  v25 = 1;
  v24 = 1;
  outlined copy of Text.Storage(a1, a2, a3 & 1);
  v16 = v19;

  *v14 = a1;
  *(v14 + 1) = a2;
  *(v14 + 2) = v15;
  *(v14 + 3) = v16;
  *(v14 + 4) = 0;
  v14[40] = 1;
  *(v14 + 6) = 0;
  v14[56] = 1;
  v20(v17);

  MEMORY[0x18D00A570](v14, v23, v11, v22);
  return (*(v12 + 8))(v14, v11);
}

uint64_t View.accessibilityRotor<A>(_:entries:)(unsigned __int8 *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a6;
  v9 = type metadata accessor for AccessibilityRotorModifier();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *a1;
  v18 = 1;
  v17 = 1;

  *v12 = v13;
  *(v12 + 8) = xmmword_18CD6C650;
  *(v12 + 3) = 0;
  *(v12 + 4) = 0;
  v12[40] = 1;
  *(v12 + 6) = 0;
  v12[56] = 1;
  a2(v14);

  MEMORY[0x18D00A570](v12, a4, v9, v16);
  return (*(v10 + 8))(v12, v9);
}

uint64_t View.accessibilityRotor<A>(_:entries:entryLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a8;
  v14[4] = a10;
  v14[5] = a5;
  v14[6] = a6;
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AccessibilityRotorEntry();

  swift_getWitnessTable();
  type metadata accessor for ForEach();
  swift_getWitnessTable();
  View.accessibilityRotor<A>(_:entries:)(a1, a2, a3 & 1, a4, partial apply for closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:), a7, a9, a8);
}

uint64_t partial apply for closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:)@<X0>(void *a1@<X8>)
{
  return partial apply for closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:)(partial apply for closure #1 in closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:), a1);
}

{
  return partial apply for closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:)(partial apply for closure #1 in closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:), a1);
}

uint64_t View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15 = swift_allocObject();
  v15[2] = a8;
  v15[3] = a10;
  v15[4] = a11;
  v15[5] = a5;
  v15[6] = a6;
  v15[7] = a7;
  type metadata accessor for Array();
  type metadata accessor for AccessibilityRotorEntry();

  swift_getWitnessTable();
  type metadata accessor for ForEach();
  swift_getWitnessTable();
  View.accessibilityRotor<A>(_:entries:)(a1, a2, a3 & 1, a4, partial apply for closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:), a8, a9, a10);
}

uint64_t partial apply for closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)@<X0>(void *a1@<X8>)
{
  return partial apply for closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)(partial apply for closure #1 in closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:), a1);
}

{
  return partial apply for closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)(partial apply for closure #1 in closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:), a1);
}

uint64_t View.accessibilityRotor<A>(_:entries:entryLabel:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *a1;
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a2;
  v11[6] = a3;
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AccessibilityRotorEntry();

  swift_getWitnessTable();
  v12 = type metadata accessor for ForEach();
  swift_getWitnessTable();
  View.accessibilityRotor<A>(_:entries:)(&v14, partial apply for closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:), v11, a4, v12, a5);
}

uint64_t closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X8>)
{
  *&v30 = a1;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a2;
  v14 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for AccessibilityRotorEntry();

  WitnessTable = swift_getWitnessTable();
  ForEach<>.init(_:content:)(&v30, a6, v13, v14, AssociatedTypeWitness, v17, WitnessTable, &protocol witness table for AccessibilityRotorEntry<A>, a5);
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  *&v30 = v14;
  *(&v30 + 1) = AssociatedTypeWitness;
  v31 = v17;
  *&v32 = WitnessTable;
  *(&v32 + 1) = AssociatedConformanceWitness;
  v19 = type metadata accessor for ForEach();
  v20 = swift_getWitnessTable();
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)(&v30, &v22, v19, v20);

  v26 = v30;
  v27 = v31;
  v28 = v32;
  v29 = v33;
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)(a7, &v26, v19, v20);
}

uint64_t closure #1 in closure #1 in View.accessibilityRotor<A>(_:entries:entryLabel:)@<X0>(void *a1@<X1>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v18 = a3;
  v17[0] = *(*a1 + *MEMORY[0x1E69E77B0]);
  v17[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = v17 - v4;
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for AccessibilityRotorEntry();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v17 - v11);
  swift_getAtKeyPath();
  v14 = v19;
  v13 = v20;
  dispatch thunk of Identifiable.id.getter();
  AccessibilityRotorEntry.init(_:id:textRange:prepare:)(v14, v13, 0, MEMORY[0x1E69E7CC0], v5, 0, 0, 1, v9, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, 0, AssociatedTypeWitness);
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)(v12, v9, v6, &protocol witness table for AccessibilityRotorEntry<A>);
  v15 = *(v7 + 8);
  v15(v9, v6);
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)(v18, v12, v6, &protocol witness table for AccessibilityRotorEntry<A>);
  return (v15)(v12, v6);
}

uint64_t View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *a1;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;
  type metadata accessor for Array();
  type metadata accessor for AccessibilityRotorEntry();

  swift_getWitnessTable();
  v14 = type metadata accessor for ForEach();
  swift_getWitnessTable();
  View.accessibilityRotor<A>(_:entries:)(&v16, partial apply for closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:), v13, a5, v14, a6);
}

uint64_t closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v15 = *a2;
  *&v33 = a1;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a3;
  v16[6] = a2;
  v17 = v15 + *MEMORY[0x1E69E77B0];
  v18 = type metadata accessor for Array();
  v19 = *(v17 + 8);
  v20 = type metadata accessor for AccessibilityRotorEntry();
  swift_retain_n();

  WitnessTable = swift_getWitnessTable();
  ForEach<>.init(_:id:content:)(&v33, a2, a7, v16, v18, v20, WitnessTable);
  v25 = v29;
  v26 = v30;
  v27 = v31;
  v28 = v32;
  *&v33 = v18;
  *(&v33 + 1) = v19;
  v34 = v20;
  *&v35 = WitnessTable;
  *(&v35 + 1) = a6;
  v22 = type metadata accessor for ForEach();
  v23 = swift_getWitnessTable();
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)(&v33, &v25, v22, v23);

  v29 = v33;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)(a8, &v29, v22, v23);
}

uint64_t objectdestroy_2Tm_3()
{

  return swift_deallocObject();
}

uint64_t closure #1 in closure #1 in View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v18[1] = a3;
  v19 = a4;
  v4 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v18 - v5;
  v7 = type metadata accessor for AccessibilityRotorEntry();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v18 - v12);
  swift_getAtKeyPath();
  v15 = v20;
  v14 = v21;
  swift_getAtKeyPath();
  AccessibilityRotorEntry.init(_:id:textRange:prepare:)(v15, v14, 0, MEMORY[0x1E69E7CC0], v6, 0, 0, 1, v10, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, 0, v4);
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)(v13, v10, v7, &protocol witness table for AccessibilityRotorEntry<A>);
  v16 = *(v8 + 8);
  v16(v10, v7);
  static AccessibilityRotorContentBuilder.buildExpression<A>(_:)(v19, v13, v7, &protocol witness table for AccessibilityRotorEntry<A>);
  return (v16)(v13, v7);
}

uint64_t View.accessibilityRotor(_:textRanges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(swift_allocObject() + 16) = a5;
  type metadata accessor for ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>();
  lazy protocol witness table accessor for type ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>> and conformance <> ForEach<A, B, C>();

  View.accessibilityRotor<A>(_:entries:)(a1, a2, a3 & 1, a4, partial apply for closure #1 in View.accessibilityRotor(_:textRanges:), a6, a8, a7);
}

double partial apply for closure #1 in View.accessibilityRotor(_:textRanges:)@<D0>(uint64_t a1@<X8>)
{
  *&result = closure #1 in View.accessibilityRotor(_:textRanges:)(*(v1 + 16), a1).n128_u64[0];
  return result;
}

{
  *&result = closure #1 in View.accessibilityRotor(_:textRanges:)(*(v1 + 16), a1).n128_u64[0];
  return result;
}

void type metadata accessor for ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>()
{
  if (!lazy cache variable for type metadata for ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>)
  {
    _sSnySiGMaTm_2(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    _sSnySiGMaTm_2(255, &lazy cache variable for type metadata for AccessibilityRotorEntry<Never>, MEMORY[0x1E69E73E0], MEMORY[0x1E69E73F0], type metadata accessor for AccessibilityRotorEntry);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>> and conformance <> ForEach<A, B, C>)
  {
    type metadata accessor for ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t View.accessibilityRotor(_:textRanges:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  type metadata accessor for ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>();
  v9 = v8;
  lazy protocol witness table accessor for type ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>> and conformance <> ForEach<A, B, C>();

  View.accessibilityRotor<A>(_:entries:)(&v11, partial apply for closure #1 in View.accessibilityRotor(_:textRanges:), v7, a3, v9, a4);
}

__n128 closure #1 in View.accessibilityRotor(_:textRanges:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  _sSnySiGMaTm_2(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  _sSnySiGMaTm_2(0, &lazy cache variable for type metadata for AccessibilityRotorEntry<Never>, MEMORY[0x1E69E73E0], MEMORY[0x1E69E73F0], type metadata accessor for AccessibilityRotorEntry);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();

  ForEach.init(_:idGenerator:content:)();
  result = v7;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

unint64_t *closure #1 in closure #1 in View.accessibilityRotor(_:textRanges:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(a2 + 16))
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = *(a2 + 16 * v3 + 32);
    *(a3 + 48) = 1;
    *(a3 + 56) = 0;
    *(a3 + 64) = 2;
    *(a3 + 72) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    *(a3 + 80) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t View.accessibilityRotor<A>(_:entries:)@<X0>(void (*a1)(uint64_t)@<X4>, uint64_t a2@<X6>, uint64_t a3@<X8>, uint64_t a4)
{

  v7 = Text.init(_:tableName:bundle:comment:)();
  v9 = v8;
  v11 = v10;
  View.accessibilityRotor<A>(_:entries:)(v7, v8, v10 & 1, v12, a1, a2, a3, a4);
  outlined consume of Text.Storage(v7, v9, v11 & 1);
}

uint64_t View.accessibilityRotor<A, B>(_:entries:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v20[1] = a4;
  v10 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  View.accessibilityRotor<A>(_:entries:)(v13, v14, v16 & 1, v18, a2, a3, a6, a5);
  outlined consume of Text.Storage(v13, v15, v17 & 1);
}

uint64_t View.accessibilityRotor<A>(_:entries:entryLabel:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6)
{

  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  View.accessibilityRotor<A>(_:entries:entryLabel:)(v11, v12, v14 & 1, v16, a1, a2, a3, a4, a5, a6);
  outlined consume of Text.Storage(v11, v13, v15 & 1);
}

uint64_t View.accessibilityRotor<A, B>(_:entries:entryLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  (*(v15 + 16))(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  View.accessibilityRotor<A>(_:entries:entryLabel:)(v16, v17, v19 & 1, v21, a2, a3, a4, a5, a7, a6);
  outlined consume of Text.Storage(v16, v18, v20 & 1);
}

uint64_t View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{

  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)(v11, v12, v14 & 1, v16, a1, a2, a3, a4, a5, a6, a7);
  outlined consume of Text.Storage(v11, v13, v15 & 1);
}

uint64_t View.accessibilityRotor<A, B, C>(_:entries:entryID:entryLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  v24 = a5;
  v13 = MEMORY[0x1EEE9AC00](a1);
  (*(v15 + 16))(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  View.accessibilityRotor<A, B>(_:entries:entryID:entryLabel:)(v16, v17, v19 & 1, v21, a2, a3, a4, v24, a7, a6, a8);
  outlined consume of Text.Storage(v16, v18, v20 & 1);
}

uint64_t View.accessibilityRotor(_:textRanges:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  View.accessibilityRotor(_:textRanges:)(v8, v9, v11 & 1, v13, a1, a2, a3, a4);
  outlined consume of Text.Storage(v8, v10, v12 & 1);
}

uint64_t View.accessibilityRotor<A>(_:textRanges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  View.accessibilityRotor(_:textRanges:)(v12, v13, v15 & 1, v17, a2, a3, a4, a5);
  outlined consume of Text.Storage(v12, v14, v16 & 1);
}

uint64_t AccessibilityRotorInfo.Designation.uniqueID(in:)()
{
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
    v3 = 0;
    MEMORY[0x18D00C9B0](0x5F6D6574737973, 0xE700000000000000);
    _print_unlocked<A, B>(_:_:)();
  }

  else
  {
    v1 = Text.resolveString(in:with:idiom:)();
    v3 = 0x5F72657375;
    MEMORY[0x18D00C9B0](v1);
  }

  return v3;
}

uint64_t AccessibilityRotorModifier.initialAttachment(for:)()
{
  _s14AttributeGraph0A0Vy7SwiftUI21AccessibilityNodeListVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityRotorInfo>, &type metadata for AccessibilityRotorInfo, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  v3 = v0[1];
  v8[0] = *v0;
  v2 = v8[0];
  v8[1] = v3;
  v9[0] = v0[2];
  v4 = v9[0];
  *(v9 + 9) = *(v0 + 41);
  v5 = *(v9 + 9);
  v1[1] = xmmword_18CD63400;
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  *(v1 + 73) = v5;
  outlined init with copy of AccessibilityRotorInfo(v8, v7);
  lazy protocol witness table accessor for type AccessibilityProperties.RotorInfoKey and conformance AccessibilityProperties.RotorInfoKey();
  AccessibilityProperties.init<A>(_:_:)();
  static AccessibilityAttachment.properties(_:)();
  return outlined destroy of AccessibilityProperties(v7);
}

uint64_t static AccessibilityRotorModifier.makeAccessibilityViewModifier(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a2[3];
  v55 = a2[2];
  v56 = v11;
  v57 = a2[4];
  v58 = *(a2 + 20);
  v12 = a2[1];
  v53 = *a2;
  v54 = v12;
  *&v48 = v11;
  DWORD2(v48) = DWORD2(v11);
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    return a3();
  }

  *&v39[32] = v55;
  *&v39[48] = v56;
  *&v39[64] = v57;
  *v39 = v53;
  *&v39[80] = v58;
  *&v39[16] = v54;
  LOBYTE(v42[0]) = 1;
  outlined init with copy of _ViewInputs(&v53, &v48);
  PropertyList.subscript.setter();
  v40[2] = *&v39[32];
  v40[3] = *&v39[48];
  v40[4] = *&v39[64];
  v41 = *&v39[80];
  v40[0] = *v39;
  v40[1] = *&v39[16];
  v50[0] = *&v39[32];
  v50[1] = *&v39[48];
  v51 = *&v39[64];
  v52 = *&v39[80];
  v48 = *v39;
  v49 = *&v39[16];
  v13 = outlined init with copy of _ViewInputs(v40, v42);
  (a3)(v13, &v48);
  v42[2] = v50[0];
  v42[3] = v50[1];
  v42[4] = v51;
  v43 = v52;
  v42[0] = v48;
  v42[1] = v49;
  outlined destroy of _ViewInputs(v42);
  v44[0] = *v39;
  v44[1] = *&v39[16];
  v44[2] = *&v39[32];
  v45 = *v39;
  v46 = *&v39[16];
  *v47 = *&v39[32];
  *&v47[16] = *&v39[48];
  *&v47[24] = *&v39[56];
  LODWORD(v34) = v10;
  outlined init with copy of _GraphInputs(v44, &v48);
  type metadata accessor for AccessibilityRotorModifier();
  type metadata accessor for _GraphValue();

  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v48 = v45;
  v49 = v46;
  v50[0] = *v47;
  *(v50 + 12) = *&v47[12];
  (*(a5 + 24))(&v34, v32, &v48, a4, a5);
  v14 = v10;
  v15 = v34;
  v16 = AGMakeUniqueID();
  LODWORD(v48) = v14;
  _GraphValue.value.getter();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  *(&v48 + 1) = v16;
  LODWORD(v48) = OffsetAttribute2;
  LODWORD(v49) = v15;
  type metadata accessor for AccessibilityRotorModifier.Attachment();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v50[0] = *&v39[32];
  v50[1] = *&v39[48];
  v51 = *&v39[64];
  v52 = *&v39[80];
  v48 = *v39;
  v49 = *&v39[16];
  _s7SwiftUI25AccessibilityViewModifierPAAE04makeC19PropertiesTransform8modifier6inputs7outputs14AttributeGraph0L0VyAA0C8NodeListVGSgAA01_M5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10AttachmentE0V_Tt2B5(v34, &v48, *a6, a6[1]);
  PreferencesOutputs.subscript.setter();
  v36 = *&v39[24];
  v37 = *&v39[40];
  v38[0] = *&v39[56];
  *(v38 + 12) = *&v39[68];
  v35 = *&v39[8];
  v34 = *v39;
  v18 = _ViewInputs.accessibilityEnabled.getter();
  v19 = *(a6 + 2);
  *&v32[0] = *a6;
  DWORD2(v32[0]) = v19;
  v20 = PreferencesOutputs.subscript.getter();
  v21 = *MEMORY[0x1E698D3F8];
  v31 = a6;
  if ((v20 & 0x100000000) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  type metadata accessor for AccessibilityRelationshipScope();
  lazy protocol witness table accessor for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope();
  v23 = PropertyList.subscript.getter();
  v24 = *&v32[0];
  *&v32[0] = __PAIR64__(v22, v18);
  *(&v32[0] + 1) = v24;
  MEMORY[0x1EEE9AC00](v23);
  v29 = type metadata accessor for AccessibilityRotorModifier.RelationshipScope();
  WitnessTable = swift_getWitnessTable();
  _s14AttributeGraph0A0Vy7SwiftUI21AccessibilityNodeListVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<AccessibilityNodeList>, &type metadata for AccessibilityNodeList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v32, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_31, &v28, v29, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
  LOBYTE(v32[0]) = 0;
  PreferencesOutputs.subscript.setter();

  outlined destroy of _AccessibilityRotorEntryInputs(&v45);
  v32[2] = *&v39[32];
  v32[3] = *&v39[48];
  v32[4] = *&v39[64];
  v33 = *&v39[80];
  v32[0] = *v39;
  v32[1] = *&v39[16];
  return outlined destroy of _ViewInputs(v32);
}