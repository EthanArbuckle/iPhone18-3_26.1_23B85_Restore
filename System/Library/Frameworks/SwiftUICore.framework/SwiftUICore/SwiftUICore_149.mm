unint64_t type metadata accessor for ContiguousBytes()
{
  result = lazy cache variable for type metadata for ContiguousBytes;
  if (!lazy cache variable for type metadata for ContiguousBytes)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ContiguousBytes);
  }

  return result;
}

uint64_t outlined destroy of ContiguousBytes?(uint64_t a1)
{
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for ContiguousBytes?, type metadata accessor for ContiguousBytes, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

unint64_t lazy protocol witness table accessor for type CodableCGImage.Error and conformance CodableCGImage.Error()
{
  result = lazy protocol witness table cache variable for type CodableCGImage.Error and conformance CodableCGImage.Error;
  if (!lazy protocol witness table cache variable for type CodableCGImage.Error and conformance CodableCGImage.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableCGImage.Error and conformance CodableCGImage.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableCGImage.Error and conformance CodableCGImage.Error;
  if (!lazy protocol witness table cache variable for type CodableCGImage.Error and conformance CodableCGImage.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableCGImage.Error and conformance CodableCGImage.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RBShader and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type RBShader and conformance NSObject;
  if (!lazy protocol witness table cache variable for type RBShader and conformance NSObject)
  {
    type metadata accessor for CAMediaTimingFunction(255, &lazy cache variable for type metadata for RBShader);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBShader and conformance NSObject);
  }

  return result;
}

uint64_t _ValueActionModifier.action.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t _ValueActionModifier.sendAction(old:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5, v11);
  v14 = *(v9 + 48);
  if (v14(v8, 1, a2) == 1)
  {
    (*(v9 + 16))(v13, v2, a2);
    if (v14(v8, 1, a2) != 1)
    {
      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    (*(v9 + 32))(v13, v8, a2);
  }

  v15 = *&v13[*(a2 + 36)];
  v16 = *(v9 + 8);

  v16(v13, a2);
  v15(v2);
}

uint64_t _ValueActionModifier.init(value:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  result = a6(0, a4, a5);
  v14 = (a7 + *(result + 36));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t key path getter for _ValueActionModifier.action : <A>_ValueActionModifier<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v10 = *(a1 + *(a4(0, *(a2 + a3 - 16), *(a2 + a3 - 8)) + 36));
  v8 = swift_allocObject();
  *(v8 + 16) = v11;
  *(v8 + 32) = v10;
  *a6 = a5;
  a6[1] = v8;
}

uint64_t key path setter for _ValueActionModifier.action : <A>_ValueActionModifier<A>(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void, void), uint64_t a7)
{
  v13 = *(a3 + a4 - 16);
  v14 = *a1;
  v10 = swift_allocObject();
  *(v10 + 16) = v13;
  *(v10 + 32) = v14;
  v11 = (a2 + *(a6(0, v13, *(&v13 + 1)) + 36));

  *v11 = a7;
  v11[1] = v10;
  return result;
}

uint64_t _ValueActionModifier.action.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t static _ValueActionModifier3._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[1] = a4;
  v24 = a3;
  v23[0] = a6;
  v45 = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  v12 = type metadata accessor for ValueActionDispatcher3();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - v14;
  v16 = *a1;
  v43 = *a2;
  v44 = *(a2 + 2);
  LODWORD(a1) = *(a2 + 6);
  v17 = *(a2 + 7);
  v18 = a2[3];
  v39 = a2[2];
  v40 = v18;
  v41 = a2[4];
  v42 = *(a2 + 20);
  (*(*(a5 - 8) + 56))(v11, 1, 1, a5);
  default argument 8 of ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)(&v31);
  v25 = v31;
  v26 = DWORD2(v31);
  v27 = BYTE12(v31);
  ValueActionDispatcher3.init(modifier:phase:transaction:oldValue:lastResetSeed:cycleDetector:)(v16, a1, v17, v11, 0, &v25, v15);
  v29 = v12;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, closure #1 in Attribute.init<A>(_:)partial apply, v28, v12, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  (*(v13 + 8))(v15, v12);
  v21 = AGGraphSetFlags();
  v31 = v43;
  v32 = v44;
  v33 = a1;
  v34 = v17;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  return v24(v21, &v31);
}

uint64_t ValueActionDispatcher3.init(modifier:phase:transaction:oldValue:lastResetSeed:cycleDetector:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v11 = *(a6 + 2);
  v12 = *(a6 + 12);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v13 = type metadata accessor for ValueActionDispatcher3();
  v14 = v13[11];
  v15 = type metadata accessor for Optional();
  v16 = *a6;
  result = (*(*(v15 - 8) + 32))(&a7[v14], a4, v15);
  *&a7[v13[12]] = a5;
  v18 = &a7[v13[13]];
  *v18 = v16;
  *(v18 + 2) = v11;
  v18[12] = v12;
  return result;
}

uint64_t static _ValueActionModifier3._makeViewList(modifier:inputs:body:)@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[1] = a4;
  v24 = a3;
  v23[0] = a6;
  v34 = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  v12 = type metadata accessor for ValueActionDispatcher3();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v23 - v15;
  LODWORD(a1) = *a1;
  v17 = *(a2 + 24);
  v18 = *(a2 + 28);
  (*(*(a5 - 8) + 56))(v11, 1, 1, a5, v14);
  default argument 8 of ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)(&v28);
  v25 = v28;
  v26 = v29;
  v27 = v30;
  ValueActionDispatcher3.init(modifier:phase:transaction:oldValue:lastResetSeed:cycleDetector:)(a1, v17, v18, v11, 0, &v25, v16);
  v32 = v12;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, closure #1 in Attribute.init<A>(_:)partial apply, v31, v12, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  (*(v13 + 8))(v16, v12);
  v21 = AGGraphSetFlags();
  return v24(v21, a2);
}

uint64_t ValueActionDispatcher3.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ValueActionModifier3();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t ValueActionDispatcher3.updateValue()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v46 = v11;
  v47 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = *(a1 + 24);
  v49 = &v40 - v14;
  v50 = v13;
  v15 = type metadata accessor for _ValueActionModifier3();
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v40 - v18;
  Value = AGGraphGetValue();
  v20 = *(a1 + 48);
  if (*(v2 + v20) != *Value >> 1)
  {
    *(v2 + v20) = *AGGraphGetValue() >> 1;
    v21 = *(a1 + 44);
    (*(v6 + 8))(v2 + v21, v5);
    (*(v9 + 56))(v2 + v21, 1, 1, v4);
    v22 = v2 + *(a1 + 52);
    *(v22 + 4) = 0xFFFFFFFFLL;
    *(v22 + 12) = 0;
  }

  v23 = v53;
  ValueActionDispatcher3.modifier.getter(v53);
  v24 = *(a1 + 44);
  (*(v6 + 16))(v8, v2 + v24, v5);
  if ((*(v9 + 48))(v8, 1, v4) != 1)
  {
    v43 = v24;
    v44 = v6;
    v45 = v5;
    v25 = v49;
    v42 = *(v9 + 32);
    v42(v49, v8, v4);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      (*(v9 + 8))(v25, v4);
    }

    else
    {
      v26 = v2 + *(a1 + 52);
      AGGraphClearUpdate();
      v27 = *AGGraphGetValue();
      AGGraphSetUpdate();
      if (*(v26 + 4) == v27)
      {
        v28 = *(v26 + 8);
        if (!v28 || (v29 = v28 - 1, (*(v26 + 8) = v29) == 0))
        {
          if (*(v26 + 12) == 1)
          {
            (*(v9 + 8))(v25, v4);
          }

          else
          {
            v54[0] = 0;
            v54[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(44);

            v54[0] = 0;
            v54[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(23);

            strcpy(v54, "onChange(of: ");
            HIWORD(v54[1]) = -4864;
            v39 = _typeName(_:qualified:)();
            MEMORY[0x193ABEDD0](v39);

            MEMORY[0x193ABEDD0](0x6E6F697463612029, 0xE800000000000000);
            MEMORY[0x193ABEDD0](0xD00000000000002ALL, 0x800000018DD75B90);
            specialized static Log.externalWarning(_:)(v54[0], v54[1]);

            (*(v9 + 8))(v25, v4);
            *(v26 + 12) = 1;
          }

          v6 = v44;
          v5 = v45;
          v23 = v53;
          goto LABEL_15;
        }
      }

      else
      {
        *(v26 + 4) = v27;
        *(v26 + 8) = 2;
      }

      AGGraphClearUpdate();
      closure #1 in ValueActionDispatcher3.updateValue()(v2, v54);
      AGGraphSetUpdate();
      v41 = v54[0];
      LOBYTE(v54[0]) = 1;
      v30 = v25;
      v31 = v51;
      (*(v51 + 16))(v48, v53, v52);
      v32 = v47;
      (*(v9 + 16))(v47, v30, v4);
      v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v34 = (v16 + *(v9 + 80) + v33) & ~*(v9 + 80);
      v35 = (v46 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      v37 = v50;
      *(v36 + 16) = v4;
      *(v36 + 24) = v37;
      (*(v31 + 32))(v36 + v33, v48, v52);
      v42((v36 + v34), v32, v4);
      *(v36 + v35) = v41;

      static Update.enqueueAction(reason:_:)(v54, partial apply for closure #2 in ValueActionDispatcher3.updateValue(), v36);

      v23 = v53;

      (*(v9 + 8))(v49, v4);
    }

    v6 = v44;
    v5 = v45;
LABEL_15:
    v24 = v43;
    goto LABEL_16;
  }

  (*(v6 + 8))(v8, v5);
LABEL_16:
  (*(v6 + 8))(v2 + v24, v5);
  (*(v9 + 16))(v2 + v24, v23, v4);
  (*(v51 + 8))(v23, v52);
  return (*(v9 + 56))(v2 + v24, 0, 1, v4);
}

uint64_t closure #1 in ValueActionDispatcher3.updateValue()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ValueActionDispatcher3();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = *AGGraphGetValue();
  v10 = *(v5 + 8);

  result = v10(v8, v4);
  *a2 = v9;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ValueActionDispatcher3<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t *initializeBufferWithCopyOfBuffer for ValueActionDispatcher(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v9 + 3;
  v11 = ((((v9 + 3 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 13;
  v12 = v7 & 0x100000;
  if (v8 > 7 || v12 != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v8 & 0xFC ^ 0x1FC) & (v8 + 16)));
  }

  else
  {
    *a1 = *a2;
    v16 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + v8 + 4) & ~v8);
    v19 = ((v17 + v8 + 4) & ~v8);
    if ((*(v5 + 48))((v17 + v8 + 4) & ~v8, 1, v4))
    {
      memcpy(v18, v19, v9);
    }

    else
    {
      (*(v6 + 16))(v18, v19, v4);
      (*(v6 + 56))(v18, 0, 1, v4);
    }

    v20 = ((v18 + v10) & 0xFFFFFFFFFFFFFFFCLL);
    v21 = ((v19 + v10) & 0xFFFFFFFFFFFFFFFCLL);
    *v20 = *v21;
    v22 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v23 = *v22;
    v24 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *(v24 + 5) = *(v22 + 5);
    *v24 = v23;
  }

  return v3;
}

_DWORD *assignWithCopy for ValueActionDispatcher(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  v11 = *(v7 + 48);
  v12 = v11(v9, 1, v6);
  v13 = v11(v10, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 16))(v9, v10, v6);
      (*(v7 + 56))(v9, 0, 1, v6);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 24))(v9, v10, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v9, v6);
    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v7 + 84))
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  v18 = ((v9 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = ((v10 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v18 = *v19;
  v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v20 = *v21;
  *(v20 + 4) = *(v21 + 4);
  *(v20 + 8) = *(v21 + 8);
  *(v20 + 12) = *(v21 + 12);
  return a1;
}

_DWORD *initializeWithTake for ValueActionDispatcher(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  if ((*(v7 + 48))(v10, 1, v6))
  {
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(v9, v10, v13);
  }

  else
  {
    (*(v7 + 32))(v9, v10, v6);
    v15 = *(v7 + 56);
    v14 = v7 + 56;
    v15(v9, 0, 1, v6);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  v17 = ((v9 + v16 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v10 + v16 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = *v19;
  v21 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *(v21 + 5) = *(v19 + 5);
  *v21 = v20;
  return a1;
}

_DWORD *assignWithTake for ValueActionDispatcher(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  v11 = *(v7 + 48);
  v12 = v11(v9, 1, v6);
  v13 = v11(v10, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 32))(v9, v10, v6);
      (*(v7 + 56))(v9, 0, 1, v6);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 40))(v9, v10, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v9, v6);
    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v7 + 84))
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  v18 = ((v9 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = ((v10 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v18 = *v19;
  v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v20 = *v21;
  *(v20 + 4) = *(v21 + 4);
  *(v20 + 8) = *(v21 + 8);
  *(v20 + 12) = *(v21 + 12);
  return a1;
}

uint64_t getEnumTagSinglePayload for ValueActionDispatcher(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v9 + 3;
  if (v7 >= a2)
  {
    goto LABEL_32;
  }

  v11 = ((((v10 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 13;
  v12 = (a2 - v7 + 255) >> 8;
  if (v11 <= 3)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 2;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *&a1[v11];
      if (*&a1[v11])
      {
        goto LABEL_25;
      }
    }

    else
    {
      v16 = *&a1[v11];
      if (v16)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_32;
  }

  if (!v15 || (v16 = a1[v11]) == 0)
  {
LABEL_32:
    v19 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8;
    if (v6 >= 0xFE)
    {
      v20 = (*(v4 + 48))(v19);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    v22 = *(((((v10 + v19) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 12);
    if (v22 >= 2)
    {
      return ((v22 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_25:
  v17 = (v16 - 1) << (8 * v11);
  if (v11 <= 3)
  {
    v18 = *a1;
  }

  else
  {
    v17 = 0;
    v18 = *a1;
  }

  return v7 + (v18 | v17) + 1;
}

void storeEnumTagSinglePayload for ValueActionDispatcher(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((((v12 + 3 + ((v11 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 13;
  if (v10 < a3)
  {
    v14 = (a3 - v10 + 255) >> 8;
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
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      v19 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v11 + 4) & ~v11);
      if (v9 < 0xFE)
      {
        v23 = ((&v19[v12 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (a2 > 0xFE)
        {
          *(v23 + 12) = 0;
          *(v23 + 8) = 0;
          *v23 = a2 - 255;
        }

        else
        {
          *(v23 + 12) = a2 + 1;
        }
      }

      else if (v9 >= a2)
      {
        v24 = *(v7 + 56);
        v25 = a2 + 1;
        v26 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v11 + 4) & ~v11;

        v24(v26, v25);
      }

      else
      {
        if (v12 <= 3)
        {
          v20 = ~(-1 << (8 * v12));
        }

        else
        {
          v20 = -1;
        }

        if (v12)
        {
          v21 = v20 & (~v9 + a2);
          if (v12 <= 3)
          {
            v22 = v12;
          }

          else
          {
            v22 = 4;
          }

          bzero(v19, v12);
          if (v22 > 2)
          {
            if (v22 == 3)
            {
              *v19 = v21;
              v19[2] = BYTE2(v21);
            }

            else
            {
              *v19 = v21;
            }
          }

          else if (v22 == 1)
          {
            *v19 = v21;
          }

          else
          {
            *v19 = v21;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v17 = ~v10 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v13] = v18;
  }
}

uint64_t get_witness_table_7SwiftUI4ViewRzSQRd__r__lAA15ModifiedContentVyxAA20_ValueActionModifierVyqd__GGAaBHPxAaBHD1__AgA0cH0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for ValueActionDispatcher3()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ValueActionDispatcher3(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v9 + 3;
  v11 = ((((v9 + 3 + ((v7 + 12) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 13;
  v12 = v7 & 0x100000;
  if (v8 > 7 || v12 != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v8 & 0xFC ^ 0x1FC) & (v8 + 16)));
  }

  else
  {
    *a1 = *a2;
    v16 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v18 = *v19;
    v20 = ((v18 + v8 + 4) & ~v8);
    v21 = ((v19 + v8 + 4) & ~v8);
    if ((*(v5 + 48))((v19 + v8 + 4) & ~v8, 1, v4))
    {
      memcpy(v20, v21, v9);
    }

    else
    {
      (*(v6 + 16))(v20, v21, v4);
      (*(v6 + 56))(v20, 0, 1, v4);
    }

    v22 = ((v20 + v10) & 0xFFFFFFFFFFFFFFFCLL);
    v23 = ((v21 + v10) & 0xFFFFFFFFFFFFFFFCLL);
    *v22 = *v23;
    v24 = ((v23 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v25 = *v24;
    v26 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *(v26 + 5) = *(v24 + 5);
    *v26 = v25;
  }

  return v3;
}

uint64_t destroy for ValueActionDispatcher3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v7 = *(v2 - 8);
  v3 = *(v7 + 80);
  v4 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v3 + 4;
  result = (*(v7 + 48))(v4 & ~v3, 1, v2);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(v4 & ~v3, v2);
  }

  return result;
}

_DWORD *initializeWithCopy for ValueActionDispatcher3(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v7 + v11 + 4) & ~v11);
  v13 = ((v8 + v11 + 4) & ~v11);
  if ((*(v10 + 48))(v13, 1, v9))
  {
    v14 = *(v10 + 84);
    v15 = *(v10 + 64);
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v12, v13, v16);
  }

  else
  {
    (*(v10 + 16))(v12, v13, v9);
    v18 = *(v10 + 56);
    v17 = v10 + 56;
    v18(v12, 0, 1, v9);
    v14 = *(v17 + 28);
    v15 = *(v17 + 8);
  }

  if (v14)
  {
    v19 = v15;
  }

  else
  {
    v19 = v15 + 1;
  }

  v20 = ((v12 + v19 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v21 = ((v13 + v19 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v21;
  v22 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v23 = *v22;
  v24 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *(v24 + 5) = *(v22 + 5);
  *v24 = v23;
  return a1;
}

_DWORD *assignWithCopy for ValueActionDispatcher3(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v7 + v11 + 4) & ~v11);
  v13 = ((v8 + v11 + 4) & ~v11);
  v14 = *(v10 + 48);
  v15 = v14(v12, 1, v9);
  v16 = v14(v13, 1, v9);
  if (v15)
  {
    if (!v16)
    {
      (*(v10 + 16))(v12, v13, v9);
      (*(v10 + 56))(v12, 0, 1, v9);
      goto LABEL_12;
    }

    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v10 + 24))(v12, v13, v9);
      goto LABEL_12;
    }

    (*(v10 + 8))(v12, v9);
    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy(v12, v13, v19);
LABEL_12:
  if (*(v10 + 84))
  {
    v20 = *(v10 + 64);
  }

  else
  {
    v20 = *(v10 + 64) + 1;
  }

  v21 = ((v12 + v20 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v22 = ((v13 + v20 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v21 = *v22;
  v23 = (v21 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v24 = (v22 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v23 = *v24;
  *(v23 + 4) = *(v24 + 4);
  *(v23 + 8) = *(v24 + 8);
  *(v23 + 12) = *(v24 + 12);
  return a1;
}

_DWORD *initializeWithTake for ValueActionDispatcher3(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v7 + v11 + 4) & ~v11);
  v13 = ((v8 + v11 + 4) & ~v11);
  if ((*(v10 + 48))(v13, 1, v9))
  {
    v14 = *(v10 + 84);
    v15 = *(v10 + 64);
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v12, v13, v16);
  }

  else
  {
    (*(v10 + 32))(v12, v13, v9);
    v18 = *(v10 + 56);
    v17 = v10 + 56;
    v18(v12, 0, 1, v9);
    v14 = *(v17 + 28);
    v15 = *(v17 + 8);
  }

  if (v14)
  {
    v19 = v15;
  }

  else
  {
    v19 = v15 + 1;
  }

  v20 = ((v12 + v19 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v21 = ((v13 + v19 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v21;
  v22 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v23 = *v22;
  v24 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *(v24 + 5) = *(v22 + 5);
  *v24 = v23;
  return a1;
}

_DWORD *assignWithTake for ValueActionDispatcher3(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v7 + v11 + 4) & ~v11);
  v13 = ((v8 + v11 + 4) & ~v11);
  v14 = *(v10 + 48);
  v15 = v14(v12, 1, v9);
  v16 = v14(v13, 1, v9);
  if (v15)
  {
    if (!v16)
    {
      (*(v10 + 32))(v12, v13, v9);
      (*(v10 + 56))(v12, 0, 1, v9);
      goto LABEL_12;
    }

    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v10 + 40))(v12, v13, v9);
      goto LABEL_12;
    }

    (*(v10 + 8))(v12, v9);
    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy(v12, v13, v19);
LABEL_12:
  if (*(v10 + 84))
  {
    v20 = *(v10 + 64);
  }

  else
  {
    v20 = *(v10 + 64) + 1;
  }

  v21 = ((v12 + v20 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v22 = ((v13 + v20 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v21 = *v22;
  v23 = (v21 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v24 = (v22 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v23 = *v24;
  *(v23 + 4) = *(v24 + 4);
  *(v23 + 8) = *(v24 + 8);
  *(v23 + 12) = *(v24 + 12);
  return a1;
}

uint64_t getEnumTagSinglePayload for ValueActionDispatcher3(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v9 + 3;
  if (v7 >= a2)
  {
    goto LABEL_32;
  }

  v11 = ((((v10 + ((v8 + 12) & ~v8)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 13;
  v12 = (a2 - v7 + 255) >> 8;
  if (v11 <= 3)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 2;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *&a1[v11];
      if (*&a1[v11])
      {
        goto LABEL_25;
      }
    }

    else
    {
      v16 = *&a1[v11];
      if (v16)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_32;
  }

  if (!v15 || (v16 = a1[v11]) == 0)
  {
LABEL_32:
    v19 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8;
    if (v6 >= 0xFE)
    {
      v20 = (*(v4 + 48))(v19);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    v22 = *(((((v10 + v19) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 12);
    if (v22 >= 2)
    {
      return ((v22 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_25:
  v17 = (v16 - 1) << (8 * v11);
  if (v11 <= 3)
  {
    v18 = *a1;
  }

  else
  {
    v17 = 0;
    v18 = *a1;
  }

  return v7 + (v18 | v17) + 1;
}

void storeEnumTagSinglePayload for ValueActionDispatcher3(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((((v12 + 3 + ((v11 + 12) & ~v11)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 13;
  if (v10 < a3)
  {
    v14 = (a3 - v10 + 255) >> 8;
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
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      v19 = ((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v11 + 4) & ~v11);
      if (v9 < 0xFE)
      {
        v23 = ((&v19[v12 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (a2 > 0xFE)
        {
          *(v23 + 12) = 0;
          *(v23 + 8) = 0;
          *v23 = a2 - 255;
        }

        else
        {
          *(v23 + 12) = a2 + 1;
        }
      }

      else if (v9 >= a2)
      {
        v24 = *(v7 + 56);
        v25 = a2 + 1;
        v26 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v11 + 4) & ~v11;

        v24(v26, v25);
      }

      else
      {
        if (v12 <= 3)
        {
          v20 = ~(-1 << (8 * v12));
        }

        else
        {
          v20 = -1;
        }

        if (v12)
        {
          v21 = v20 & (~v9 + a2);
          if (v12 <= 3)
          {
            v22 = v12;
          }

          else
          {
            v22 = 4;
          }

          bzero(v19, v12);
          if (v22 > 2)
          {
            if (v22 == 3)
            {
              *v19 = v21;
              v19[2] = BYTE2(v21);
            }

            else
            {
              *v19 = v21;
            }
          }

          else if (v22 == 1)
          {
            *v19 = v21;
          }

          else
          {
            *v19 = v21;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v17 = ~v10 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v13] = v18;
  }
}

uint64_t instantiation function for generic protocol witness table for ValueActionDispatcher3<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #2 in ValueActionDispatcher3.updateValue()()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for _ValueActionModifier3();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  return (*(v0 + v4 + *(v2 + 36)))(v0 + ((v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)));
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed A, @in_guaranteed Transaction) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v6 = a3;
  return v4(a1, a2, &v6);
}

uint64_t AnimationState.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized AnimationState.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*AnimationState.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  AnimationState.subscript.getter(v17, v18, a4, a5);
  return AnimationState.subscript.modify;
}

void AnimationState.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);
    specialized AnimationState.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized AnimationState.subscript.setter((*a1)[8], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall Transaction.disableAnimations()()
{
  v1.value = *v0;

  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v2);
  if (!v3 || v3[9])
  {
    type metadata accessor for TypedElement<TransactionPropertyKey<AnimationKey>>();
    *(swift_allocObject() + 72) = 0;
    type metadata accessor for TransactionPropertyKey<AnimationKey>();
    *v0 = PropertyList.Element.init(keyType:before:after:)(v4, 0, v1.value);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v0, 1);
}

uint64_t key path setter for Transaction.animation : Transaction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2, v3);
}

void (*Transaction.animation.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = *v1;
  v4[4] = *v1;
  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v5);
  if (v6)
  {
  }

  *v4 = v6;
  return Transaction.animation.modify;
}

void Transaction.animation.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;

  v5 = v3[3];
  if (a2)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v5, v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v3[3], v4);
  }

  free(v3);
}

uint64_t (*Transaction._animationFrameInterval.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  *(v4 + 40) = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v5);
  *(v4 + 48) = 0;
  *v4 = v6;
  *(v4 + 8) = v7 & 1;
  return Transaction._animationFrameInterval.modify;
}

uint64_t (*Transaction._animationReason.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v5);
  *(v4 + 40) = v6;
  v4 += 40;
  *(v4 - 8) = 0;
  *(v4 + 4) = BYTE4(v6) & 1;
  return Transaction._animationReason.modify;
}

void (*Transaction.disablesAnimations.modify(uint64_t *a1))(uint64_t ***a1)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v5);
  if (v6)
  {
    v7 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 32) = v7;
  return Transaction.disablesAnimations.modify;
}

void Transaction.disablesAnimations.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v1[2], v2);

  free(v1);
}

uint64_t key path setter for Transaction.disablesAnimations : Transaction(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t *))
{
  v7 = *a1;

  a5(a2, v7, &v9);
}

void (*Transaction.disablesContentTransitions.modify(uint64_t *a1))(uint64_t ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return Transaction.disablesContentTransitions.modify;
}

void Transaction.disablesContentTransitions.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v1[2], v2);

  free(v1);
}

uint64_t closure #1 in Transaction.animationIgnoringTransitionPhase.getter(uint64_t *a1, _BYTE *a2, uint64_t *a3)
{
  result = *a1;
  if (result)
  {
    *a3 = result;

    *a2 = 1;
  }

  return result;
}

uint64_t key path setter for Transaction._animationFrameInterval : Transaction(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2, v3, v4);
}

uint64_t (*Transaction.animationFrameInterval.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  *(v4 + 40) = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v5);
  *(v4 + 48) = 0;
  *v4 = v6;
  *(v4 + 8) = v7 & 1;
  return Transaction.animationFrameInterval.modify;
}

void Transaction._animationFrameInterval.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v1[4], v2, v3);

  free(v1);
}

uint64_t key path setter for Transaction._animationReason : Transaction(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 4);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2, v3 | (v4 << 32));
}

uint64_t (*Transaction.animationReason.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v5);
  *(v4 + 40) = v6;
  v4 += 40;
  *(v4 - 8) = 0;
  *(v4 + 4) = BYTE4(v6) & 1;
  return Transaction.animationReason.modify;
}

void Transaction._animationReason.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 10);
  v3 = *(*a1 + 44);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v1[2], v2 | (v3 << 32));

  free(v1);
}

void type metadata accessor for TransactionPropertyKey<AnimationKey>()
{
  if (!lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>)
  {
    v0 = type metadata accessor for TransactionPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>);
    }
  }
}

void *keypath_get_4Tm_0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t keypath_get_6Tm_0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t EventBindingBridge.__allocating_init(eventBindingManager:)()
{
  v0 = swift_allocObject();
  swift_weakInit();
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  swift_weakAssign();

  return v0;
}

uint64_t EventBindingBridge.init(eventBindingManager:)()
{
  swift_weakInit();
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  swift_weakAssign();

  return v0;
}

uint64_t EventBindingBridge.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_weakInit();
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t EventBindingBridge.init()()
{
  swift_weakInit();
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t EventBindingBridge.send(_:source:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);

  swift_beginAccess();
  v8 = 0;
  v9 = (v5 + 63) >> 6;
  v10 = MEMORY[0x1E69E7CC8];
  v92 = v3;
  v90 = v4;
  if (!v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v8;
LABEL_16:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    outlined init with copy of AnyTrackedValue(*(a1 + 56) + 40 * v16, v100);
    *&v101 = v18;
    *(&v101 + 1) = v19;
    outlined init with take of AnyTrackedValue(v100, &v102);
LABEL_17:
    v105 = v101;
    v106[0] = v102;
    v106[1] = v103;
    v107 = v104;
    v20 = v101;
    if (!v101)
    {
      break;
    }

    v21 = *(&v105 + 1);
    outlined init with take of AnyTrackedValue(v106, &v101);
    outlined init with copy of AnyTrackedValue(&v101, v100);
    outlined init with copy of AnyTrackedValue(v100, v96);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for NonGestureEventType);
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(v94, v99);
      outlined init with copy of AnyTrackedValue(v99, v96);
      v23 = v97;
      v22 = v98;
      __swift_project_boxed_opaque_existential_1(v96, v97);
      (*(*(v22 + 8) + 8))(v94, v23);
      v25 = v97;
      v24 = v98;
      __swift_project_boxed_opaque_existential_1(v96, v97);
      (*(*(v24 + 8) + 16))(v94, v25);
      v27 = v97;
      v26 = v98;
      __swift_project_boxed_opaque_existential_1(v96, v97);
      (*(*(v26 + 8) + 24))(v94, v27);
      __swift_destroy_boxed_opaque_existential_1(v99);
      __swift_destroy_boxed_opaque_existential_1(v100);

      __swift_destroy_boxed_opaque_existential_1(v96);

      outlined init with copy of AnyTrackedValue(&v101, v100);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99[0] = v10;
      v29 = v21;
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
      v32 = v10[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_75;
      }

      v35 = v30;
      if (v10[3] >= v34)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v29);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_82;
        }

        v31 = v36;
      }

      v3 = v92;
      v10 = v99[0];
      if (v35)
      {
        v11 = *(v99[0] + 56) + 40 * v31;
        __swift_destroy_boxed_opaque_existential_1(v11);
        outlined init with take of AnyTrackedValue(v100, v11);
      }

      else
      {
        *(v99[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
        v57 = (v10[6] + 16 * v31);
        *v57 = v20;
        v57[1] = v29;
        outlined init with take of AnyTrackedValue(v100, v10[7] + 40 * v31);
        v58 = v10[2];
        v50 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v50)
        {
          goto LABEL_77;
        }

        v10[2] = v59;
      }

      __swift_destroy_boxed_opaque_existential_1(&v101);
      v4 = v90;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v100);
      v95 = 0;
      memset(v94, 0, sizeof(v94));
      outlined destroy of NonGestureEventType?(v94);
      v38 = *(v3 + 24);
      v93 = v21;
      if (*(v38 + 16) && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21), (v40 & 1) != 0))
      {
        v41 = *(*(v38 + 56) + 16 * v39 + 8) ^ 1;
      }

      else
      {
        v42 = *(&v102 + 1);
        v43 = v103;
        __swift_project_boxed_opaque_existential_1(&v101, *(&v102 + 1));
        (*(v43 + 8))(v100, v42, v43);
        if (LOBYTE(v100[0]) == 1)
        {
          swift_beginAccess();
          v44 = swift_isUniquelyReferenced_nonNull_native();
          v99[0] = *(v3 + 24);
          v45 = v99[0];
          *(v3 + 24) = 0x8000000000000000;
          v46 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v93);
          v48 = *(v45 + 16);
          v49 = (v47 & 1) == 0;
          v50 = __OFADD__(v48, v49);
          v51 = v48 + v49;
          if (v50)
          {
            goto LABEL_78;
          }

          v52 = v47;
          if (*(v45 + 24) >= v51)
          {
            if ((v44 & 1) == 0)
            {
              v85 = v46;
              specialized _NativeDictionary.copy()();
              v46 = v85;
            }

            v53 = v93;
            v55 = v99[0];
            if (v52)
            {
              goto LABEL_31;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, v44);
            v53 = v93;
            v46 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v93);
            if ((v52 & 1) != (v54 & 1))
            {
              goto LABEL_82;
            }

            v55 = v99[0];
            if (v52)
            {
LABEL_31:
              v56 = v55[7] + 16 * v46;
              *v56 = a2;
              *(v56 + 8) = 0;
LABEL_52:
              *(v3 + 24) = v55;
              swift_endAccess();
LABEL_53:
              outlined init with copy of AnyTrackedValue(&v101, v100);
              v71 = swift_isUniquelyReferenced_nonNull_native();
              v99[0] = v10;
              v72 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v93);
              v74 = v10[2];
              v75 = (v73 & 1) == 0;
              v50 = __OFADD__(v74, v75);
              v76 = v74 + v75;
              if (v50)
              {
                goto LABEL_76;
              }

              v77 = v73;
              if (v10[3] >= v76)
              {
                if ((v71 & 1) == 0)
                {
                  v84 = v72;
                  specialized _NativeDictionary.copy()();
                  v72 = v84;
                }

                v3 = v92;
                v78 = v93;
                v10 = v99[0];
                if ((v77 & 1) == 0)
                {
                  goto LABEL_57;
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v76, v71);
                v78 = v93;
                v72 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v93);
                if ((v77 & 1) != (v79 & 1))
                {
LABEL_82:
                  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return result;
                }

                v3 = v92;
                v10 = v99[0];
                if ((v77 & 1) == 0)
                {
LABEL_57:
                  v10[(v72 >> 6) + 8] |= 1 << v72;
                  v80 = (v10[6] + 16 * v72);
                  *v80 = v20;
                  v80[1] = v78;
                  outlined init with take of AnyTrackedValue(v100, v10[7] + 40 * v72);
                  v81 = v10[2];
                  v50 = __OFADD__(v81, 1);
                  v82 = v81 + 1;
                  if (v50)
                  {
                    goto LABEL_79;
                  }

                  v10[2] = v82;
                  goto LABEL_63;
                }
              }

              v83 = v10[7] + 40 * v72;
              __swift_destroy_boxed_opaque_existential_1(v83);
              outlined init with take of AnyTrackedValue(v100, v83);
LABEL_63:
              v4 = v90;
              goto LABEL_64;
            }
          }

          v55[(v46 >> 6) + 8] |= 1 << v46;
          v67 = (v55[6] + 16 * v46);
          *v67 = v20;
          v67[1] = v53;
          v68 = v55[7] + 16 * v46;
          *v68 = a2;
          *(v68 + 8) = 0;
          v69 = v55[2];
          v50 = __OFADD__(v69, 1);
          v70 = v69 + 1;
          if (v50)
          {
            goto LABEL_80;
          }

          v55[2] = v70;
          goto LABEL_52;
        }

        v41 = 1;
      }

      v60 = *(&v102 + 1);
      v61 = v103;
      __swift_project_boxed_opaque_existential_1(&v101, *(&v102 + 1));
      (*(v61 + 8))(v100, v60, v61);
      if (LOBYTE(v100[0]) != 1)
      {
        swift_beginAccess();
        v62 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v93);
        if (v63)
        {
          v64 = v62;
          v65 = swift_isUniquelyReferenced_nonNull_native();
          v66 = *(v92 + 24);
          v99[0] = v66;
          *(v92 + 24) = 0x8000000000000000;
          if (!v65)
          {
            specialized _NativeDictionary.copy()();
            v66 = v99[0];
          }

          specialized _NativeDictionary._delete(at:)(v64, v66);
          *(v92 + 24) = v66;
        }

        swift_endAccess();
      }

      if (v41)
      {
        goto LABEL_53;
      }

      v3 = v92;
LABEL_64:
      __swift_destroy_boxed_opaque_existential_1(&v101);
      if (!v7)
      {
LABEL_8:
        if (v9 <= v8 + 1)
        {
          v13 = v8 + 1;
        }

        else
        {
          v13 = v9;
        }

        v14 = v13 - 1;
        while (1)
        {
          v12 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v12 >= v9)
          {
            v7 = 0;
            v104 = 0;
            v102 = 0u;
            v103 = 0u;
            v8 = v14;
            v101 = 0u;
            goto LABEL_17;
          }

          v7 = *(v4 + 8 * v12);
          ++v8;
          if (v7)
          {
            v8 = v12;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        swift_once();
        goto LABEL_69;
      }
    }
  }

  if (!v10[2] || (swift_beginAccess(), !swift_weakLoadStrong()))
  {

    return MEMORY[0x1E69E7CD0];
  }

  swift_weakInit();
  if (one-time initialization token for _lock != -1)
  {
    goto LABEL_81;
  }

LABEL_69:
  v86 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v87 = EventBindingManager.sendDownstream(_:)(v10);
  }

  else
  {
    v87 = MEMORY[0x1E69E7CD0];
  }

  static Update.end()();
  _MovableLockUnlock(v86);
  swift_weakDestroy();

  return v87;
}

uint64_t EventBindingBridge.reset(eventSource:resetForwardedEventDispatchers:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_beginAccess();
  v6 = *(v3 + 24);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v26 = 0;
  for (i = 0; v9; result = swift_endAccess())
  {
LABEL_11:
    while (1)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = v14 | (i << 6);
      v16 = *(v6 + 56);
      if (*(v16 + 16 * v15) == a1)
      {
        break;
      }

      v26 |= *(v16 + 16 * v15 + 8) ^ 1;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v17 = (*(v6 + 48) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
    swift_beginAccess();
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18);
    if (v21)
    {
      v22 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v4 + 24);
      *(v4 + 24) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
      }

      specialized _NativeDictionary._delete(at:)(v22, v24);
      *(v4 + 24) = v24;
    }
  }

  while (1)
  {
LABEL_7:
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_11;
    }
  }

  if ((v26 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      EventBindingManager.reset(resetForwardedEventDispatchers:)(a3 & 1);
    }
  }

  return result;
}

uint64_t EventBindingBridge.resetEvents()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 24);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + 24) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v35 = *(v0 + 24);

  v10 = 0;
  while (v8)
  {
LABEL_11:
    v13 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
    v14 = (*(v35 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v36 = *(*(v35 + 56) + v13);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v1 + 24);
    v19 = v1;
    *(v1 + 24) = 0x8000000000000000;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v18[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_23;
    }

    v26 = v21;
    if (v18[3] < v25)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v28 = v18;
      if (v26)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v33 = v20;
    specialized _NativeDictionary.copy()();
    v20 = v33;
    v28 = v18;
    if (v26)
    {
LABEL_4:
      v11 = v28[7] + 16 * v20;
      *v11 = v36;
      *(v11 + 8) = 1;
      goto LABEL_5;
    }

LABEL_17:
    v28[(v20 >> 6) + 8] |= 1 << v20;
    v29 = (v28[6] + 16 * v20);
    *v29 = v15;
    v29[1] = v16;
    v30 = v28[7] + 16 * v20;
    *v30 = v36;
    *(v30 + 8) = 1;
    v31 = v28[2];
    v24 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v24)
    {
      goto LABEL_24;
    }

    v28[2] = v32;
LABEL_5:
    v8 &= v8 - 1;
    v1 = v19;
    *(v19 + 24) = v28;
    swift_endAccess();
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v4 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t EventBindingBridge.deinit()
{
  swift_weakDestroy();

  return v0;
}

uint64_t EventBindingBridge.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t EventBindingBridge.didBind(to:id:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v5 = *a2;
  v4 = a2[1];
  v12 = (*(*v2 + 160))();
  v6 = *(v12 + 16);
  if (v6)
  {
    v7 = (v12 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v14[1] = v4;
      v15 = v3;
      v14[0] = v5;
      v10 = *(v8 + 40);
      swift_unknownObjectRetain();
      v10(&v15, v14, v13, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }
}

uint64_t specialized EventBindingBridge.didUpdate(phase:in:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v11 = (*(*v1 + 160))();
  v4 = *(v11 + 16);
  if (v4)
  {
    v5 = (v11 + 40);
    do
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v12[0] = v2;
      v12[1] = v3;
      v8 = *(v6 + 24);
      swift_unknownObjectRetain();
      v8(v12, v1, ObjectType, v6);
      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  if (v3 == 2 || (v3 == 3 ? (v10 = v2 == 0) : (v10 = 0), v10))
  {

    return EventBindingBridge.resetEvents()();
  }

  return result;
}

uint64_t specialized EventBindingBridge.didUpdate(gestureCategory:in:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = (*(*v1 + 160))();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v10 = v2;
      v8 = *(v6 + 32);
      swift_unknownObjectRetain();
      v8(&v10, v1, ObjectType, v6);
      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

uint64_t CUIDesignLibraryCacheKey.init(name:in:allowsBlendMode:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  if (a2[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA021CUIDesignLibraryCacheJ0V5PropsVG_Tt1g5(v7, v14);
  }

  else
  {
    v13[0] = *a2;
    v13[1] = 0;

    static CUIDesignLibraryCacheKey.Props.value(in:)(v13, v14);
  }

  v9 = v14[0];
  v10 = v14[1];
  v11 = v14[2];
  v12 = v15;
  if (!(a3 & 1 | (v15 != 1)))
  {
    v12 = 2;
  }

  *a4 = a1;
  *(a4 + 8) = v9;
  *(a4 + 9) = v10;
  *(a4 + 10) = v11;
  *(a4 + 16) = v12;
  return result;
}

float CUIDesignLibraryCacheKey.Entry.color.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 CUIDesignLibraryCacheKey.Entry.color.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = a1[1].n128_u32[0];
  return result;
}

float CUIDesignLibraryCacheKey.Entry.init(color:blendMode:)@<S0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = result;
  *(a3 + 20) = v3;
  return result;
}

uint64_t CUIDesignLibraryCacheKey.Entry.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 16);
  v6 = *(v0 + 20);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  Hasher._combine(_:)(LODWORD(v7));
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  Hasher._combine(_:)(LODWORD(v8));
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  Hasher._combine(_:)(LODWORD(v9));
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  Hasher._combine(_:)(LODWORD(v10));
  return MEMORY[0x193AC11A0](v6);
}

Swift::Int CUIDesignLibraryCacheKey.Entry.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 16);
  v6 = *(v0 + 20);
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v1;
  }

  Hasher._combine(_:)(LODWORD(v7));
  if (v2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v2;
  }

  Hasher._combine(_:)(LODWORD(v8));
  if (v3 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v3;
  }

  Hasher._combine(_:)(LODWORD(v9));
  if (v4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v4;
  }

  Hasher._combine(_:)(LODWORD(v10));
  if (v5 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v5;
  }

  Hasher._combine(_:)(LODWORD(v11));
  MEMORY[0x193AC11A0](v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CUIDesignLibraryCacheKey.Entry()
{
  Hasher.init(_seed:)();
  CUIDesignLibraryCacheKey.Entry.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CUIDesignLibraryCacheKey.Props.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *(v0 + 1);
  MEMORY[0x193AC11A0](*v0);
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  return MEMORY[0x193AC11A0](v3);
}

Swift::Int CUIDesignLibraryCacheKey.Props.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  MEMORY[0x193AC11A0](v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CUIDesignLibraryCacheKey.Props()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  MEMORY[0x193AC11A0](v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CUIDesignLibraryCacheKey.Props()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *(v0 + 1);
  MEMORY[0x193AC11A0](*v0);
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  return MEMORY[0x193AC11A0](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CUIDesignLibraryCacheKey.Props()
{
  Hasher.init(_seed:)();
  v1 = v0[1];
  v2 = v0[2];
  v3 = *(v0 + 1);
  MEMORY[0x193AC11A0](*v0);
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  return Hasher._finalize()();
}

void CUIDesignLibraryCacheKey.props.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 9);
  v3 = *(v1 + 10);
  v4 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v4;
}

uint64_t CUIDesignLibraryCacheKey.props.setter(uint64_t result)
{
  v2 = *(result + 1);
  v3 = *(result + 2);
  v4 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 9) = v2;
  *(v1 + 10) = v3;
  *(v1 + 16) = v4;
  return result;
}

BOOL static CUIDesignLibraryCacheKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 8) == *(a2 + 8) && ((*(a1 + 9) ^ *(a2 + 9)) & 1) == 0 && ((*(a1 + 10) ^ *(a2 + 10)) & 1) == 0)
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

uint64_t CUIDesignLibraryCacheKey.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 10);
  v4 = *(v0 + 16);
  MEMORY[0x193AC11A0](*v0);
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  return MEMORY[0x193AC11A0](v4);
}

Swift::Int CUIDesignLibraryCacheKey.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  MEMORY[0x193AC11A0](v4);
  MEMORY[0x193AC11A0](v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CUIDesignLibraryCacheKey()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  MEMORY[0x193AC11A0](v4);
  MEMORY[0x193AC11A0](v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CUIDesignLibraryCacheKey()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 10);
  v4 = *(v0 + 16);
  MEMORY[0x193AC11A0](*v0);
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  return MEMORY[0x193AC11A0](v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CUIDesignLibraryCacheKey()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 10);
  v4 = *(v0 + 16);
  MEMORY[0x193AC11A0](*v0);
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](v3);
  MEMORY[0x193AC11A0](v4);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CUIDesignLibraryCacheKey(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v16 = v2;
  v17 = v3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 10);
  v6 = *(a2 + 9);
  v7 = *(a2 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 10);
  v10 = *(a1 + 9);
  v14[0] = *(a1 + 8);
  v14[1] = v10;
  v14[2] = v9;
  v15 = v8;
  v12[0] = v7;
  v12[1] = v6;
  v12[2] = v5;
  v13 = v4;
  return specialized static CUIDesignLibraryCacheKey.Props.== infix(_:_:)(v14, v12);
}

unint64_t lazy protocol witness table accessor for type CUIDesignLibraryCacheKey.Entry and conformance CUIDesignLibraryCacheKey.Entry()
{
  result = lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey.Entry and conformance CUIDesignLibraryCacheKey.Entry;
  if (!lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey.Entry and conformance CUIDesignLibraryCacheKey.Entry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey.Entry and conformance CUIDesignLibraryCacheKey.Entry);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUIDesignLibraryCacheKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CUIDesignLibraryCacheKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUIDesignLibraryCacheKey.Entry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEC && *(a1 + 21))
  {
    return (*a1 + 236);
  }

  v3 = *(a1 + 20);
  v4 = v3 >= 0x15;
  v5 = v3 - 21;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CUIDesignLibraryCacheKey.Entry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEB)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 236;
    *(result + 8) = 0;
    if (a3 >= 0xEC)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEC)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 20;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUIDesignLibraryCacheKey.Props(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void _s7SwiftUI4ViewPAAE9bodyErrors5NeverOyFAA27_TextBaselineRelativeSpacerV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD7F560);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI4ViewPAAE9bodyErrors5NeverOyFAA17ConditionalSpacerV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD7F540);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized View.bodyError()()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0x73694C776569565FLL, 0xEE00776569565F74);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7F480);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD7F4C0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD7F460);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _StringGuts.grow(_:)(34);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI4ViewPAAE9bodyErrors5NeverOyFAA016DebugReplaceableC0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD7F520);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI4ViewPAAE9bodyErrors5NeverOyFAA09MountableC7OutputsV016DisplayListProxyC0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD7F500);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI4ViewPAAE9bodyErrors5NeverOyFAA017StyledTextContentC0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD7F4E0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI4ViewPAAE9bodyErrors5NeverOyFAA26_BackdropEffectPlaceholderV_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD7F4A0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized View.bodyError()(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](a1, 0xE700000000000000);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI4ViewPAAE9bodyErrors5NeverOyFAA5ImageVAAE8ResolvedV_Ttg5Tm(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](a1, a2);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void protocol witness for View.body.getter in conformance <A> Group<A>()
{
  protocol witness for View.body.getter in conformance <A> Group<A>();
}

{
  swift_getWitnessTable();
  specialized PrimitiveView.body.getter();
}

void protocol witness for View.body.getter in conformance <> _VariadicView.Tree<A, B>()
{
  protocol witness for View.body.getter in conformance <> _VariadicView.Tree<A, B>();
}

{
  swift_getWitnessTable();
  specialized PrimitiveView.body.getter();
}

uint64_t specialized closure #1 in static View.makeImplicitRoot(view:inputs:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  v13 = a1[2];
  v14 = v3;
  v15 = a1[4];
  v16 = *(a1 + 20);
  v4 = a1[1];
  v11 = *a1;
  v12 = v4;
  _ViewInputs.implicitRootBodyInputs.getter(v10);
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  v6 = ShouldRecordTree;
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  AGGraphCreateOffsetAttribute2();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEach<Slice<SubviewsCollection>, Subview.ID, Subview>();
  lazy protocol witness table accessor for type SubviewsCollectionSlice.Child and conformance SubviewsCollectionSlice.Child();
  v7 = Attribute.init<A>(body:value:flags:update:)();
  if (v6)
  {
    v8 = v7;
    AGSubgraphBeginTreeElement();
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZs5SliceVyAA18SubviewsCollectionVG_AA7SubviewV2IDVAVTt2B5(v8, v10, a2);
    AGSubgraphEndTreeElement();
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZs5SliceVyAA18SubviewsCollectionVG_AA7SubviewV2IDVAVTt2B5(v7, v10, a2);
  }

  return outlined destroy of _ViewListInputs(v10);
}

{
  v3 = a1[3];
  v9 = a1[2];
  v10 = v3;
  v11 = a1[4];
  v12 = *(a1 + 20);
  v4 = a1[1];
  v7 = *a1;
  v8 = v4;
  _ViewInputs.implicitRootBodyInputs.getter(v6);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    off_1EE4AC518(v6, a2);
    AGSubgraphEndTreeElement();
  }

  else
  {
    off_1EE4AC518(v6, a2);
  }

  return outlined destroy of _ViewListInputs(v6);
}

{
  v3 = a1[3];
  v9 = a1[2];
  v10 = v3;
  v11 = a1[4];
  v12 = *(a1 + 20);
  v4 = a1[1];
  v7 = *a1;
  v8 = v4;
  _ViewInputs.implicitRootBodyInputs.getter(v6);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    static SubviewsCollection._makeViewList(view:inputs:)(v6, a2);
    AGSubgraphEndTreeElement();
  }

  else
  {
    static SubviewsCollection._makeViewList(view:inputs:)(v6, a2);
  }

  return outlined destroy of _ViewListInputs(v6);
}

uint64_t static ViewDescriptor.typeCache.getter()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static ViewDescriptor.typeCache.setter(void *a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ViewDescriptor.typeCache = a1;
}

uint64_t (*static ViewDescriptor.typeCache.modify())()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DisplayList.GraphicsRenderer.platformViewMode.modify;
}

uint64_t key path getter for static ViewDescriptor.typeCache : ViewDescriptor.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static ViewDescriptor.typeCache;
}

uint64_t key path setter for static ViewDescriptor.typeCache : ViewDescriptor.Type(void **a1)
{
  v1 = *a1;
  v2 = one-time initialization token for typeCache;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ViewDescriptor.typeCache = v1;
}

uint64_t static ViewDescriptor.insertConditionalType(key:value:)(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if (one-time initialization token for conditionalCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = static ViewDescriptor.conditionalCache;
  static ViewDescriptor.conditionalCache = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v4, v5, a1, isUniquelyReferenced_nonNull_native);
  static ViewDescriptor.conditionalCache = v8;
  return swift_endAccess();
}

uint64_t protocol witness for static TupleDescriptor.typeCache.getter in conformance ViewDescriptor()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for static TupleDescriptor.typeCache.setter in conformance ViewDescriptor(void *a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static ViewDescriptor.typeCache = a1;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance ViewDescriptor())()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance EnableScrollPrefetchFeature;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance _VariadicView_Children@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v7;
  v11[4] = *(a2 + 64);
  v12 = *(a2 + 80);
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  static _ViewOutputs.multiView(inputs:body:)(v11, a3, v9, a4);
}

uint64_t partial apply for specialized closure #1 in static View.makeImplicitRoot(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  return specialized closure #1 in static View.makeImplicitRoot(view:inputs:)(v5, a2);
}

{
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  return specialized closure #1 in static View.makeImplicitRoot(view:inputs:)(v5, a2);
}

{
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  return specialized closure #1 in static View.makeImplicitRoot(view:inputs:)(v5, a2);
}

uint64_t static AnimatablePair.zero.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  return AnimatablePair.init(_:_:)(v10, v7, a1, a2, a3);
}

uint64_t AnimatablePair.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 16))(a1, v3);
  v6 = *(*(*(a3 + 24) - 8) + 16);
  v7 = v3 + *(a3 + 52);

  return v6(a2, v7);
}

uint64_t KeyedAnimatableArray.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t KeyedAnimatableArray.extract<A>(into:key:set:)(uint64_t *a1, void (*a2)(char *), uint64_t a3, void (*a4)(unint64_t, char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v66 = a5;
  v65 = a4;
  v78 = a2;
  v79 = a3;
  v11 = *(*(a6 + 24) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v63 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(v13 + 16);
  v14 = v88;
  v89 = v15;
  v64 = v15;
  v85 = *(v13 + 32);
  v90 = v85;
  v16 = type metadata accessor for KeyedAnimatableArray.Element();
  v84 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v59 - v19;
  v67 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v59 - v28;
  v30 = *v8;
  v31 = a1;
  v32 = MEMORY[0x193ABF270](*a1, a7, v27);
  v87 = v16;
  result = MEMORY[0x193ABF270](v30, v16);
  v80 = result;
  v76 = v32;
  if (v32 >= 1 && v80 >= 1)
  {
    v34 = 0;
    v35 = v11;
    v36 = 0;
    v73 = (v22 + 16);
    v74 = (v67 + 8);
    v72 = (v84 + 8);
    v71 = v85;
    *&v85 = v22 + 8;
    v61 = (v35 + 16);
    v60 = (v35 + 8);
    v86 = v30;
    v75 = v14;
    v70 = v31;
    v69 = v25;
    v68 = v29;
    v59 = a7;
    do
    {
      v37 = v77;
      v84 = v34;
      Array.subscript.getter();
      v78(v37);
      (*v74)(v37, a7);
      v38 = v81;
      v83 = v36;
      v39 = v87;
      Array.subscript.getter();
      v40 = a7;
      v41 = *v73;
      (*v73)(v25, v38, v14);
      v42 = *v72;
      (*v72)(v38, v39);
      LOBYTE(v39) = dispatch thunk of static Equatable.== infix(_:_:)();
      v82 = *v85;
      v82(v25, v14);
      if (v39)
      {
        v43 = v62;
        v44 = v83;
        v45 = v87;
        Array.subscript.getter();
        v46 = &v43[*(v45 + 52)];
        v47 = v63;
        v48 = v64;
        (*v61)(v63, v46, v64);
        v42(v43, v87);
        type metadata accessor for Array();
        v49 = v70;
        Array._makeMutableAndUnique()();
        v50 = *v49;
        v51 = v84;
        Array._checkSubscript_mutating(_:)(v84);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v53 = v50 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v53 = v50;
        }

        v65(v53 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v51, v47);
        (*v60)(v47, v48);
        result = (v82)(v68, v14);
        v34 = v51 + 1;
        a7 = v40;
        v25 = v69;
        v36 = v44 + 1;
      }

      else
      {
        v54 = v81;
        v36 = v83;
        v55 = v87;
        Array.subscript.getter();
        v25 = v69;
        v41(v69, v54, v14);
        v42(v54, v55);
        v56 = v68;
        v57 = dispatch thunk of static Comparable.< infix(_:_:)();
        v58 = v82;
        v82(v25, v14);
        result = v58(v56, v14);
        if ((v57 & 1) == 0)
        {
          ++v36;
        }

        v34 = v84;
        if (v57)
        {
          v34 = v84 + 1;
        }

        a7 = v59;
      }

      v14 = v75;
    }

    while (v34 < v76 && v36 < v80);
  }

  return result;
}

uint64_t Array<A>.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10[5] = a1;
  v10[2] = a2;
  v10[3] = a3;
  v5 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in Array<A>.animatableData.getter, v10, v5, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
  *a4 = result;
  return result;
}

uint64_t Array<A>.animatableData.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v19 - v9;
  v11 = MEMORY[0x193ABF270](*v3, v6, v8);

  v13 = MEMORY[0x193ABF270](v12, AssociatedTypeWitness);

  if (v13 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v15)
    {
      v16 = 0;
      v21 = a2;
      v22 = a3;
      v17 = *(a3 + 32);
      v19 = AssociatedTypeWitness;
      v20 = v17;
      do
      {
        v18 = v15;

        Array.subscript.getter();

        Array._makeMutableAndUnique()();
        Array._checkSubscript_mutating(_:)(v16);
        _swift_isClassOrObjCExistentialType();
        v20(v10, v6, v22);
        v15 = v18;
        ++v16;
      }

      while (v18 != v16);
    }
  }

  return result;
}

uint64_t static AnimatablePair.-= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, void))
{
  a7(a1, a2, a3, *(a5 + 8));
  v12 = type metadata accessor for AnimatablePair();
  return (a7)(a1 + *(v12 + 52), a2 + *(v12 + 52), a4, *(a6 + 8));
}

Swift::Void __swiftcall AnimatablePair.scale(by:)(Swift::Double by)
{
  v2 = v1;
  (*(*(v1 + 32) + 16))(*(v1 + 16));
  (*(*(v2 + 40) + 16))(*(v2 + 24), by);
}

void static KeyedAnimatableArray.-= infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v48 - v14;
  v73 = v13;
  v67 = v13;
  v68 = v15;
  v65 = v16;
  v66 = v17;
  v74 = v16;
  v75 = v15;
  v76 = v17;
  v18 = type metadata accessor for KeyedAnimatableArray.Element();
  v62 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v63 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - v22;
  if ((a2[1] & 1) == 0)
  {
    v24 = *a2;
    if (v5[1])
    {

      *v5 = v24;
      *(v5 + 8) = 0;

      v73 = v67;
      v74 = v65;
      v75 = v68;
      v76 = v66;
      type metadata accessor for KeyedAnimatableArray();
      KeyedAnimatableArray.scale(by:)(-1.0);
    }

    else
    {
      v25 = MEMORY[0x193ABF270](*v5, v18, v21);
      v26 = MEMORY[0x193ABF270](v24, v18);
      v27 = 0;
      if (v25 >= 1 && v26 >= 1)
      {
        v27 = 0;
        v28 = 0;
        v60 = (v9 + 16);
        v58 = (v9 + 8);
        v50 = (v6 + 16);
        v49 = (v6 + 8);
        v51 = v26;
        v59 = v5;
        v55 = (v62 + 8);
        v57 = v23;
        v54 = v24;
        do
        {
          v56 = v25;
          while (1)
          {
            v71 = v27;
            v52 = *v5;
            Array.subscript.getter();
            v29 = *v60;
            v30 = v67;
            (*v60)(v72, v23, v67);
            v31 = *v55;
            (*v55)(v23, v18);
            v32 = v63;
            v70 = v28;
            Array.subscript.getter();
            v33 = v64;
            v53 = v29;
            v29(v64, v32, v30);
            v69 = v31;
            v31(v32, v18);
            v34 = v72;
            LOBYTE(v32) = dispatch thunk of static Equatable.== infix(_:_:)();
            v5 = v59;
            v35 = *v58;
            (*v58)(v33, v30);
            v35(v34, v30);
            if ((v32 & 1) == 0)
            {
              break;
            }

            v23 = v57;
            v36 = v70;
            Array.subscript.getter();
            v37 = v61;
            v38 = v65;
            (*v50)(v61, &v23[*(v18 + 52)], v65);
            v69(v23, v18);
            type metadata accessor for Array();
            Array._makeMutableAndUnique()();
            v39 = v71;
            Array._checkSubscript_mutating(_:)(v71);
            dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
            (*v49)(v37, v38);
            v25 = v56;
            v27 = v39 + 1;
            if (v39 + 1 < v56)
            {
              v28 = v36 + 1;
              if (v36 + 1 < v51)
              {
                continue;
              }
            }

            goto LABEL_17;
          }

          v40 = v57;
          Array.subscript.getter();
          v41 = v67;
          v42 = v53;
          v53(v72, v40, v67);
          v43 = v69;
          v69(v40, v18);
          v44 = v63;
          Array.subscript.getter();
          v45 = v64;
          v42(v64, v44, v41);
          v43(v44, v18);
          v46 = v72;
          LOBYTE(v44) = dispatch thunk of static Comparable.< infix(_:_:)();
          v35(v45, v41);
          v35(v46, v41);
          if (v44)
          {
            v28 = v70;
            type metadata accessor for Array();
            v23 = v57;
            v47 = v71;
            v5 = v59;
            Array.remove(at:)();
            v69(v23, v18);
            v25 = v56 - 1;
            v27 = v47;
          }

          else
          {
            v27 = v71;
            v28 = v70 + 1;
            v5 = v59;
            v25 = v56;
            v23 = v57;
          }
        }

        while (v27 < v25 && v28 < v51);
      }

LABEL_17:
      if (v25 < v27)
      {
        __break(1u);
      }

      else
      {
        v73 = v27;
        v74 = v25;
        type metadata accessor for Array();
        swift_getWitnessTable();
        RangeReplaceableCollection.removeSubrange(_:)();
      }
    }
  }
}

Swift::Void __swiftcall KeyedAnimatableArray.scale(by:)(Swift::Double by)
{
  v3 = *(v1 + 40);
  v7 = *(v1 + 16);
  v5 = *(v1 + 24);
  type metadata accessor for KeyedAnimatableArray.Element();
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  v4 = v7;
  if (v7 != v5)
  {
    if (v5 < v7)
    {
      __break(1u);
    }

    else if (v7 < v5)
    {
      v6 = *(v3 + 16);
      do
      {
        Array._makeMutableAndUnique()();
        Array._checkSubscript_mutating(_:)(v4);
        v6(v5, v3, by);
        ++v4;
      }

      while (v5 != v4);
      return;
    }

    __break(1u);
  }
}

void static KeyedAnimatableArray.+= infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v48 - v14;
  v73 = v13;
  v67 = v13;
  v68 = v15;
  v62 = v16;
  v63 = v17;
  v74 = v16;
  v75 = v15;
  v76 = v17;
  v18 = type metadata accessor for KeyedAnimatableArray.Element();
  v64 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - v22;
  if ((a2[1] & 1) == 0)
  {
    v24 = *a2;
    if (v5[1])
    {

      *v5 = v24;
      *(v5 + 8) = 0;
    }

    else
    {
      v25 = MEMORY[0x193ABF270](*v5, v18, v21);
      v26 = MEMORY[0x193ABF270](v24, v18);
      v27 = 0;
      if (v25 >= 1 && v26 >= 1)
      {
        v27 = 0;
        v28 = 0;
        v60 = (v9 + 16);
        v58 = (v9 + 8);
        v50 = (v6 + 16);
        v49 = (v6 + 8);
        v51 = v26;
        v59 = v5;
        v55 = (v64 + 8);
        v57 = v23;
        v54 = v24;
        do
        {
          v56 = v25;
          while (1)
          {
            v71 = v27;
            v52 = *v5;
            Array.subscript.getter();
            v29 = *v60;
            v30 = v67;
            (*v60)(v72, v23, v67);
            v31 = *v55;
            (*v55)(v23, v18);
            v32 = v65;
            v70 = v28;
            Array.subscript.getter();
            v33 = v66;
            v53 = v29;
            v29(v66, v32, v30);
            v69 = v31;
            v31(v32, v18);
            v34 = v72;
            LOBYTE(v32) = dispatch thunk of static Equatable.== infix(_:_:)();
            v5 = v59;
            v35 = *v58;
            (*v58)(v33, v30);
            v35(v34, v30);
            if ((v32 & 1) == 0)
            {
              break;
            }

            v23 = v57;
            v36 = v70;
            Array.subscript.getter();
            v37 = v61;
            v38 = v62;
            (*v50)(v61, &v23[*(v18 + 52)], v62);
            v69(v23, v18);
            type metadata accessor for Array();
            Array._makeMutableAndUnique()();
            v39 = v71;
            Array._checkSubscript_mutating(_:)(v71);
            dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
            (*v49)(v37, v38);
            v25 = v56;
            v27 = v39 + 1;
            if (v39 + 1 < v56)
            {
              v28 = v36 + 1;
              if (v36 + 1 < v51)
              {
                continue;
              }
            }

            goto LABEL_17;
          }

          v40 = v57;
          Array.subscript.getter();
          v41 = v67;
          v42 = v53;
          v53(v72, v40, v67);
          v43 = v69;
          v69(v40, v18);
          v44 = v65;
          Array.subscript.getter();
          v45 = v66;
          v42(v66, v44, v41);
          v43(v44, v18);
          v46 = v72;
          LOBYTE(v44) = dispatch thunk of static Comparable.< infix(_:_:)();
          v35(v45, v41);
          v35(v46, v41);
          if (v44)
          {
            v28 = v70;
            type metadata accessor for Array();
            v23 = v57;
            v47 = v71;
            v5 = v59;
            Array.remove(at:)();
            v69(v23, v18);
            v25 = v56 - 1;
            v27 = v47;
          }

          else
          {
            v27 = v71;
            v28 = v70 + 1;
            v5 = v59;
            v25 = v56;
            v23 = v57;
          }
        }

        while (v27 < v25 && v28 < v51);
      }

LABEL_17:
      if (v25 < v27)
      {
        __break(1u);
      }

      else
      {
        v73 = v27;
        v74 = v25;
        type metadata accessor for Array();
        swift_getWitnessTable();
        RangeReplaceableCollection.removeSubrange(_:)();
      }
    }
  }
}

uint64_t key path getter for AnimatablePair.subscript() : <A, B>AnimatablePair<A, B>AB@<X0>(uint64_t a1@<X8>)
{
  v2 = *(swift_getTupleTypeMetadata2() + 48);
  v3 = type metadata accessor for AnimatablePair();
  return AnimatablePair.subscript.getter(a1, a1 + v2, v3);
}

uint64_t key path setter for AnimatablePair.subscript() : <A, B>AnimatablePair<A, B>AB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 8);
  v15 = *(a3 + a4 - 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v15 - v9;
  (*(v11 + 16))(&v15 - v9, a1, TupleTypeMetadata2, v8);
  v12 = *(TupleTypeMetadata2 + 48);
  v16 = v5;
  v17 = v15;
  v18 = v6;
  v13 = type metadata accessor for AnimatablePair();
  return AnimatablePair.subscript.setter(v10, &v10[v12], v13);
}

uint64_t AnimatablePair.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  v16 = *(v7 - 8);
  (*(v16 + 32))(&v20 - v14, a1, v7, v13);
  v17 = *(v6 - 8);
  (*(v17 + 32))(&v15[*(TupleTypeMetadata2 + 48)], v21, v6);
  (*(v9 + 32))(v11, v15, TupleTypeMetadata2);
  v18 = *(TupleTypeMetadata2 + 48);
  (*(v16 + 40))(v3, v11, v7);
  return (*(v17 + 40))(v3 + *(a3 + 52), &v11[v18], v6);
}

void (*AnimatablePair.subscript.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[2] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v7[3] = v11;
  v12 = *(v11 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v7[5] = v13;
  v15 = *(TupleTypeMetadata2 + 48);
  *(v7 + 12) = v15;
  (*(*(v9 - 8) + 16))();
  (*(*(v8 - 8) + 16))(v14 + v15, v2 + *(a2 + 52), v8);
  return AnimatablePair.subscript.modify;
}

void AnimatablePair.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  if (a2)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v7 = *v2;
    (*(v6 + 16))(*(v2 + 32), *(v2 + 40), v5);
    AnimatablePair.subscript.setter(v4, v4 + *(v5 + 48), v7);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    AnimatablePair.subscript.setter(*(v2 + 40), v3 + *(v2 + 48), *v2);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t static AnimatablePair.- infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t, void)@<X6>, uint64_t a8@<X8>)
{
  v25 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21(v18);
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v22 = type metadata accessor for AnimatablePair();
  a7(a1 + *(v22 + 52), a2 + *(v22 + 52), a4, *(a6 + 8));
  return AnimatablePair.init(_:_:)(v20, v16, a3, a4, v25);
}

uint64_t protocol witness for static AdditiveArithmetic.zero.getter in conformance AnimatablePair<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  return AnimatablePair.init(_:_:)(v9, v5, v7, v3, a2);
}

uint64_t AnimatableArray.elements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static AnimatableArray.zero.getter@<X0>(uint64_t *a1@<X8>)
{
  result = static Array._allocateUninitialized(_:)();
  *a1 = result;
  return result;
}

uint64_t static AnimatableArray.+= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t, char *, uint64_t, void))
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v13;
  v17 = MEMORY[0x193ABF270](*v15, v16, v10);
  result = MEMORY[0x193ABF270](v14, a3);
  if (result >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = result;
  }

  if (v19 < 0)
  {
    __break(1u);
  }

  else
  {
    v29 = a4;
    if (v19)
    {
      v20 = a5;
      v21 = 0;
      v28 = v9 + 8;
      do
      {
        v22 = v21 + 1;
        v23 = v19;
        Array.subscript.getter();
        type metadata accessor for Array();
        v24 = v20;
        Array._makeMutableAndUnique()();
        v25 = *a1;
        Array._checkSubscript_mutating(_:)(v21);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v27 = v25 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v27 = v25;
        }

        v24(v27 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v12, a3, *(v29 + 8));
        v20 = v24;
        result = (*(v9 + 8))(v12, a3);
        v19 = v23;
        ++v21;
      }

      while (v23 != v22);
    }
  }

  return result;
}

uint64_t static AnimatableArray.+ infix(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void *, uint64_t *, uint64_t, uint64_t)@<X4>, void *a6@<X8>)
{
  v10 = *a2;
  *a6 = *a1;
  v12 = v10;

  return a5(a6, &v12, a3, a4);
}

Swift::Void __swiftcall AnimatableArray.scale(by:)(Swift::Double by)
{
  v2 = v1;
  v4 = *(v1 + 16);
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  v5 = v8;
  if (v8 != v9)
  {
    if (v9 < v8)
    {
      __break(1u);
    }

    else if (v8 < v9)
    {
      v6 = *(v2 + 24);
      v7 = *(v6 + 16);
      do
      {
        Array._makeMutableAndUnique()();
        Array._checkSubscript_mutating(_:)(v5);
        _swift_isClassOrObjCExistentialType();
        v7(v4, v6, by);
        ++v5;
      }

      while (v9 != v5);
      return;
    }

    __break(1u);
  }
}

double AnimatableArray.magnitudeSquared.getter()
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  Sequence.reduce<A>(_:_:)();

  return v1;
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance AnimatableArray<A>@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void *, uint64_t *, uint64_t, uint64_t)@<X4>, void *a5@<X8>)
{
  v7 = *a2;
  *a5 = *a1;
  v11 = v7;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);

  return a4(a5, &v11, v8, v9);
}

uint64_t key path setter for Array<A>.animatableData : <A>[A](uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v7 = *a1;
  v5 = type metadata accessor for Array();

  return Array<A>.animatableData.setter(&v7, v5, v4);
}

uint64_t (*Array<A>.animatableData.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  Array<A>.animatableData.getter(*v3, *(a2 + 16), a3, a1);
  return Array<A>.animatableData.modify;
}

uint64_t Array<A>.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[1];
  if (a2)
  {
    v5 = *a1;

    Array<A>.animatableData.setter(&v5, v3, v2);
  }

  else
  {
    v5 = *a1;
    return Array<A>.animatableData.setter(&v5, v3, v2);
  }
}

uint64_t static KeyedAnimatableArray.Element.== infix(_:_:)()
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    type metadata accessor for KeyedAnimatableArray.Element();
    v0 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t KeyedAnimatableArray.elements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static KeyedAnimatableArray.zero.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for KeyedAnimatableArray.Element();
  result = static Array._allocateUninitialized(_:)();
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

uint64_t static KeyedAnimatableArray.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v14 = *(a1 + 8);
  v15 = *a2;
  v16 = *(a2 + 8);
  *a8 = *a1;
  *(a8 + 8) = v14;
  v18 = v15;
  v19 = v16;

  return a7(a8, &v18, a3, a4, a5, a6);
}

double KeyedAnimatableArray.magnitudeSquared.getter(uint64_t a1)
{
  v1 = *(a1 + 16);

  type metadata accessor for KeyedAnimatableArray.Element();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.reduce<A>(_:_:)();

  return v1;
}

uint64_t static KeyedAnimatableArray.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  type metadata accessor for KeyedAnimatableArray.Element();
  swift_getWitnessTable();
  return static Array<A>.== infix(_:_:)() & ~(v2 ^ v3) & 1;
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance KeyedAnimatableArray<A, B>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *a2;
  v9 = *(a2 + 8);
  *a5 = *a1;
  *(a5 + 8) = v7;
  v15 = v8;
  v16 = v9;
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[4];
  v13 = a3[5];

  return a4(a5, &v15, v10, v11, v12, v13);
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

double partial apply for closure #1 in AnimatableArray.magnitudeSquared.getter@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  result = v4 + (*(*(v2 + 24) + 24))(*(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

double partial apply for closure #1 in KeyedAnimatableArray.magnitudeSquared.getter@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *(v2 + 40);
  v5 = *a1;
  v7 = *(v2 + 24);
  type metadata accessor for KeyedAnimatableArray.Element();
  result = v5 + (*(v4 + 24))(v7, v4);
  *a2 = result;
  return result;
}

__n128 _GestureInputs.init(_:viewSubgraph:events:time:resetSeed:inheritedPhase:gesturePreferenceKeys:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  *(a8 + 116) = a6;
  *(a8 + 120) = 0;
  v8 = *(a1 + 48);
  *(a8 + 32) = *(a1 + 32);
  *(a8 + 48) = v8;
  *(a8 + 64) = *(a1 + 64);
  v9 = *(a1 + 80);
  result = *a1;
  v11 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v11;
  *(a8 + 80) = v9;
  *(a8 + 84) = a4;
  *(a8 + 112) = a5;
  v12 = MEMORY[0x1E69E7CC0];
  *(a8 + 88) = a2;
  *(a8 + 96) = v12;
  *(a8 + 104) = a7;
  *(a8 + 108) = a3;
  return result;
}

unint64_t _GestureOutputs.debugData.getter()
{
  LODWORD(v1) = *(v0 + 4);
  v2 = v1 == *MEMORY[0x1E698D3F8];
  if (v1 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  return v1 | (v2 << 32);
}

uint64_t _GestureOutputs.init(phase:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *MEMORY[0x1E698D3F8];
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *a2 = result;
  *(a2 + 4) = v2;
  return result;
}

void _s7SwiftUI16PrimitiveGesturePAAE4bodys5NeverOvgAA03TapD0V_Ttg5()
{
  _StringGuts.grow(_:)(32);

  MEMORY[0x193ABEDD0](0x7574736547706154, 0xEA00000000006572);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI16PrimitiveGesturePAAE4bodys5NeverOvgAA013DefaultLayoutD0V_Ttg5()
{
  _StringGuts.grow(_:)(32);

  MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD7F6E0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _GestureInputs.animatedPosition()()
{
  v5 = *v0;
  v1 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 40);
  v9[0] = *(v0 + 56);
  *(v9 + 12) = *(v0 + 68);
  AGGraphClearUpdate();
  v2 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v6 = v1;
  swift_beginAccess();
  v3 = CachedEnvironment.animatedPosition(for:)(&v5);
  swift_endAccess();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  return v3;
}

uint64_t _GestureInputs.transform.getter()
{
  memset(v3, 0, sizeof(v3));
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(v3, &type metadata for ViewTransform, 0);

  AGGraphClearUpdate();
  v0 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  outlined destroy of ViewTransform(v3);
  return IndirectAttribute2;
}

uint64_t _GestureInputs.position.getter()
{
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  specialized GraphHost.intern<A>(_:for:id:)(v0, 0);

  AGGraphClearUpdate();
  v1 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  return IndirectAttribute2;
}

uint64_t _GestureInputs.size.getter()
{
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0);

  AGGraphClearUpdate();
  v0 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  return IndirectAttribute2;
}

uint64_t _GestureOutputs.debugData.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *(v1 + 4) = v2;
  return result;
}

uint64_t _GestureOutputs.withPhase<A>(_:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 4);
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a2 = a1;
  *(a2 + 4) = v4;

  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t _s7SwiftUI7GesturePAA4Body_5ValueQZAERtzrlE05_makeC07gesture6inputsAA01_C7OutputsVyAGGAA06_GraphE0VyxG_AA01_C6InputsVtFZAA08DistanceC0V_Tt2B5@<X0>(int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(&type metadata for DistanceGesture, &v25);
  v6 = v25;
  v7 = v26;
  v8 = DWORD1(v26);
  v9 = a2[5];
  v29 = a2[4];
  v30 = v9;
  v31[0] = a2[6];
  *(v31 + 12) = *(a2 + 108);
  v10 = a2[1];
  v25 = *a2;
  v26 = v10;
  v11 = a2[3];
  v27 = a2[2];
  v28 = v11;
  outlined init with copy of _GestureInputs(a2, &v18);
  LOBYTE(v18) = v7;
  specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v25, v6, *(&v6 + 1), v7 | (v8 << 32), a1, &v18);
  v12 = *(&v18 + 1);
  v13 = v19;
  v14 = BYTE8(v19);
  _s7SwiftUI15ModifierGestureV05_makeD07gesture6inputsAA01_D7OutputsVy5ValueQzGAA06_GraphI0VyACyxq_GG_AA01_D6InputsVtFZAA014StateContainerD0VyAA08DistanceD0V0L4TypeVAA12SpatialEventV12CoreGraphics7CGFloatVG_AA0Q8ListenerVyAYGTt2B5(a2, &v18);
  v15 = v18;
  v17 = v19;
  if (v14)
  {
    v22 = v29;
    v23 = v30;
    v24[0] = v31[0];
    *(v24 + 12) = *(v31 + 12);
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    outlined destroy of _GestureInputs(&v18);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  else
  {
    LOBYTE(v18) = v7;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v6, *(&v6 + 1), v7, v12, v13);
    outlined consume of DynamicPropertyCache.Fields.Layout();
    v22 = v29;
    v23 = v30;
    v24[0] = v31[0];
    *(v24 + 12) = *(v31 + 12);
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    result = outlined destroy of _GestureInputs(&v18);
  }

  *a3 = v15;
  *(a3 + 16) = v17;
  return result;
}

void _s7SwiftUI7GesturePAA4Body_5ValueQZAERtzrlE05_makeC07gesture6inputsAA01_C7OutputsVyAGGAA06_GraphE0VyxG_AA01_C6InputsVtFZs5NeverO_Tt2B5(uint64_t a1, uint64_t a2)
{
  static DynamicPropertyCache.fields(of:)(MEMORY[0x1E69E73E0], v3);
  v3[16] = 0;
  v3[17] = 0xE000000000000000;
  outlined init with copy of _GestureInputs(a2, v3);
  _StringGuts.grow(_:)(29);

  v3[0] = 0x726576654ELL;
  v3[1] = 0xE500000000000000;
  MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD77760);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static Gesture<>._makeGesture(gesture:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[5];
  v51 = a2[4];
  v52 = v7;
  *v53 = a2[6];
  *&v53[12] = *(a2 + 108);
  v8 = a2[1];
  v47 = *a2;
  v48 = v8;
  v9 = a2[3];
  v49 = a2[2];
  v50 = v9;
  static DynamicPropertyCache.fields(of:)(a3, &v40);
  v10 = v40;
  v11 = v41;
  v12 = DWORD1(v41);
  v44 = v51;
  v45 = v52;
  v46[0] = *v53;
  *(v46 + 12) = *&v53[12];
  v40 = v47;
  v41 = v48;
  v42 = v49;
  v43 = v50;
  v24 = v12;
  v25 = v6;
  LODWORD(v29) = v6;
  v37 = v10;
  v27 = v11;
  LOBYTE(v38) = v11;
  v39 = v12;
  outlined init with copy of _GestureInputs(&v47, &v30);
  v13 = type metadata accessor for GestureBodyAccessor();
  WitnessTable = swift_getWitnessTable();
  BodyAccessor.makeBody(container:inputs:fields:)(&v28, &v30, &v29, &v40, &v37, v13, WitnessTable);
  v23 = v30;
  v26 = v31;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = v51;
  v35 = v52;
  v36[0] = *v53;
  *(v36 + 12) = *&v53[12];
  v30 = v47;
  v31 = v48;
  v32 = v49;
  v33 = v50;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v37, &v28, &v30, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((v53[24] & 8) != 0 && (!swift_conformsToProtocol2() || !AssociatedTypeWitness))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    LOBYTE(v29) = v17;
    v34 = v51;
    v35 = v52;
    v36[0] = *v53;
    *(v36 + 12) = *&v53[12];
    v30 = v47;
    v31 = v48;
    v32 = v49;
    v33 = v50;
    swift_getAssociatedTypeWitness();
    type metadata accessor for _GestureOutputs();
    v18 = DWORD1(v37) == *MEMORY[0x1E698D3F8];
    if (DWORD1(v37) == *MEMORY[0x1E698D3F8])
    {
      v19 = 0;
    }

    else
    {
      v19 = DWORD1(v37);
    }

    LOBYTE(v28) = 1;
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(AssociatedTypeWitness, &v29, 0x100000000, &v30, v19 | (v18 << 32), 0x100000000);
  }

  v20 = v37;
  v21 = v38;
  if ((v26 & 1) == 0)
  {
    v29 = v23;
    v28 = v25;
    v37 = v10;
    LOBYTE(v38) = v27;
    v39 = v24;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v28, &v37, a3);
  }

  v34 = v44;
  v35 = v45;
  v36[0] = v46[0];
  *(v36 + 12) = *(v46 + 12);
  v30 = v40;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  outlined destroy of _GestureInputs(&v30);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a4 = v20;
  *(a4 + 16) = v21;
  return result;
}

uint64_t _GestureInputs.makeDefaultOutputs<A>()@<X0>(uint64_t a1@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 120);
  v6 = type metadata accessor for GesturePhase();
  swift_getWitnessTable();
  DefaultRule.init()(&v17);
  v15 = v17;
  v21 = v6;
  v7 = type metadata accessor for DefaultRule();
  v22 = v7;
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v15, partial apply for closure #1 in Attribute.init<A>(_:), v20, v7, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  v10 = v19;
  v11 = *MEMORY[0x1E698D3F8];
  if ((v5 & 8) != 0)
  {
    v17 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for DefaultRule<GestureDebug.Data>();
    lazy protocol witness table accessor for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>();
    v11 = Attribute.init<A>(body:value:flags:update:)();
  }

  v15 = v3;
  v16 = v4;

  PreferencesInputs.makeIndirectOutputs()(&v17);

  v12 = v17;
  v13 = v18;

  *a1 = v10;
  *(a1 + 4) = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
  return result;
}

void _GestureInputs.mergeViewInputs(_:viewSubgraph:)(__int128 *a1, void *a2)
{
  v4 = a1[3];
  v19 = a1[2];
  v20 = v4;
  v21 = a1[4];
  v22 = *(a1 + 20);
  v5 = a1[1];
  v17 = *a1;
  v18 = v5;
  v6 = *(v2 + 48);
  v23[2] = *(v2 + 32);
  v23[3] = v6;
  v23[4] = *(v2 + 64);
  v24 = *(v2 + 80);
  v7 = *(v2 + 16);
  v23[0] = *v2;
  v23[1] = v7;
  outlined init with copy of _ViewInputs(&v17, v16);
  outlined destroy of _ViewInputs(v23);
  v8 = v18;
  v9 = v20;
  *(v2 + 32) = v19;
  *(v2 + 48) = v9;
  *(v2 + 64) = v21;
  *(v2 + 80) = v22;
  v10 = v18;
  *v2 = v17;
  *(v2 + 16) = v10;
  swift_beginAccess();
  v11 = v8[3];
  v16[1] = v8[2];
  v12 = v8[4];
  v13 = v8[5];
  v16[2] = v11;
  v16[3] = v12;
  v16[4] = v13;
  v16[0] = v8[1];
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_6(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v14 = swift_allocObject();
  memmove((v14 + 16), v8 + 1, 0x50uLL);
  outlined init with copy of CachedEnvironment(v16, v15);

  *(v2 + 16) = v14;
  objc_storeStrong((v2 + 88), a2);
}

uint64_t _GestureOutputs.overrideDefaultValues(_:)(uint64_t a1)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(v1 + 4);
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  type metadata accessor for GesturePhase();
  swift_getWitnessTable();
  LOBYTE(v13) = 0;
  v8 = Attribute.overrideDefaultValue<A>(_:type:)();
  if (v5 != *MEMORY[0x1E698D3F8] && v2 != *MEMORY[0x1E698D3F8])
  {
    MEMORY[0x1EEE9AC00](v8);
    type metadata accessor for DefaultRule<GestureDebug.Data>();
    MEMORY[0x1EEE9AC00](v9);
    AGGraphMutateAttribute();
  }

  v13 = v6;
  v14 = v7;
  v11 = v3;
  v12 = v4;

  PreferencesOutputs.attachIndirectOutputs(to:)(&v11);
}

uint64_t protocol witness for static Gesture._makeGesture(gesture:inputs:) in conformance DistanceGesture@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a2[5];
  v8[4] = a2[4];
  v8[5] = v4;
  v9[0] = a2[6];
  *(v9 + 12) = *(a2 + 108);
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  v6 = a2[3];
  v8[2] = a2[2];
  v8[3] = v6;
  return _s7SwiftUI7GesturePAA4Body_5ValueQZAERtzrlE05_makeC07gesture6inputsAA01_C7OutputsVyAGGAA06_GraphE0VyxG_AA01_C6InputsVtFZAA08DistanceC0V_Tt2B5(v3, v8, a3);
}

uint64_t _GestureInputs.intern<A>(_:id:)(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  specialized static GraphHost.currentHost.getter();
  v9 = v5;
  v6 = default argument 1 of GraphHost.intern<A>(_:for:id:)(a3);
  v7 = GraphHost.intern<A>(_:for:id:)(a1, v6, &v9, a3);

  return v7;
}

uint64_t _GestureInputs.makeIndirectOutputs<A>()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GesturePhase();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  v9 = *(v1 + 120);
  static GesturePhase.defaultValue.getter();
  LOBYTE(v19[0]) = 0;
  _GestureInputs.intern<A>(_:id:)(v6, v19, v3);
  (*(v4 + 8))(v6, v3);
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  v11 = *MEMORY[0x1E698D3F8];
  if ((v9 & 8) != 0)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v19[6] = xmmword_1EAB1D4A8;
    v19[7] = xmmword_1EAB1D4B8;
    v19[8] = xmmword_1EAB1D4C8;
    v19[2] = xmmword_1EAB1D468;
    v19[3] = xmmword_1EAB1D478;
    v19[4] = xmmword_1EAB1D488;
    v19[5] = xmmword_1EAB1D498;
    v19[0] = static GestureDebug.Data.defaultValue;
    v19[1] = xmmword_1EAB1D458;
    specialized static GraphHost.currentHost.getter();
    specialized GraphHost.intern<A>(_:for:id:)(v19, &type metadata for GestureDebug.Data, 0);

    v11 = AGGraphCreateIndirectAttribute2();
  }

  v15[2] = v7;
  v16 = v8;

  PreferencesInputs.makeIndirectOutputs()(&v17);

  v12 = v17;
  v13 = v18;

  *a1 = IndirectAttribute2;
  *(a1 + 4) = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
  return result;
}

uint64_t _GestureOutputs.setIndirectDependency(_:)()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *MEMORY[0x1E698D3F8];
  result = AGGraphSetIndirectDependency();
  if (v1 != v3)
  {
    result = AGGraphSetIndirectDependency();
  }

  v5 = *(v2 + 16);
  if (v5)
  {

    v6 = 48;
    do
    {
      AGGraphSetIndirectDependency();
      v6 += 24;
      --v5;
    }

    while (v5);
  }

  return result;
}

Swift::Void __swiftcall _GestureInputs.copyCaches()()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = v1[3];
  v7[1] = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v7[0] = v1[1];
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_6(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v5 = swift_allocObject();
  memmove((v5 + 16), v1 + 1, 0x50uLL);
  outlined init with copy of CachedEnvironment(v7, v6);

  *(v0 + 16) = v5;
}

uint64_t _GestureOutputs.attachIndirectOutputs(_:)(uint64_t a1)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(v1 + 4);
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  AGGraphSetIndirectAttribute();
  if (v5 != *MEMORY[0x1E698D3F8] && v2 != *MEMORY[0x1E698D3F8])
  {
    AGGraphSetIndirectAttribute();
  }

  v11 = v6;
  v12 = v7;
  v9 = v3;
  v10 = v4;

  PreferencesOutputs.attachIndirectOutputs(to:)(&v9);
}

Swift::Void __swiftcall _GestureOutputs.detachIndirectOutputs()()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *MEMORY[0x1E698D3F8];
  AGGraphSetIndirectAttribute();
  if (v1 != v3)
  {
    AGGraphSetIndirectAttribute();
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 48;
    do
    {
      v5 += 24;
      AGGraphSetIndirectAttribute();
      --v4;
    }

    while (v4);
  }
}

uint64_t _GestureInputs.failedPhase.getter()
{
  specialized static GraphHost.currentHost.getter();
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_6(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
  v1 = specialized GraphHost.intern<A>(_:for:id:)(768, v0, 4);

  return v1;
}

uint64_t specialized closure #1 in Attribute.overrideDefaultValue<A>(_:type:)(uint64_t *a1)
{
  result = AGCreateWeakAttribute();
  *a1 = result;
  return result;
}

double static PubliclyPrimitiveGesture.makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 80);
  v34 = *(a2 + 64);
  v35 = v5;
  v36 = *(a2 + 96);
  v37 = *(a2 + 112);
  v6 = *(a2 + 16);
  v30 = *a2;
  v31 = v6;
  v7 = *(a2 + 48);
  v32 = *(a2 + 32);
  v33 = v7;
  v8 = *(a2 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  KeyPath = swift_getKeyPath();
  v29 = v4;
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(KeyPath, &v26);

  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v25 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v27, &v26, &v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((v8 & 8) != 0 && (!swift_conformsToProtocol2() || !AssociatedTypeWitness))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    LOBYTE(v26) = v12;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    v17 = v30;
    v18 = v31;
    v19 = v32;
    v20 = v33;
    v25 = v8;
    swift_getAssociatedTypeWitness();
    type metadata accessor for _GestureOutputs();
    if (HIDWORD(v27[0]) == *MEMORY[0x1E698D3F8])
    {
      v13 = 0;
    }

    else
    {
      v13 = HIDWORD(v27[0]);
    }

    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(AssociatedTypeWitness, &v26, 0x100000000, &v17, v13 | ((HIDWORD(v27[0]) == *MEMORY[0x1E698D3F8]) << 32), 0x100000000);
  }

  v14 = v27[1];
  v15 = v28;
  result = *v27;
  *a3 = v27[0];
  *(a3 + 8) = v14;
  *(a3 + 16) = v15;
  return result;
}

void protocol witness for static Gesture._makeGesture(gesture:inputs:) in conformance Never(unsigned int *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[5];
  v6[4] = a2[4];
  v6[5] = v3;
  v7[0] = a2[6];
  *(v7 + 12) = *(a2 + 108);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = a2[3];
  v6[2] = a2[2];
  v6[3] = v5;
  _s7SwiftUI7GesturePAA4Body_5ValueQZAERtzrlE05_makeC07gesture6inputsAA01_C7OutputsVyAGGAA06_GraphE0VyxG_AA01_C6InputsVtFZs5NeverO_Tt2B5(v2, v6);
}

uint64_t GestureBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for UncheckedSendable();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17[-v14];
  (*(v8 + 16))(v10, a1, a3, v13);
  UncheckedSendable.init(_:)(v10, a3, v15);
  if (a2)
  {
    closure #1 in GestureBodyAccessor.updateBody(of:changed:)(v15, a3, a4);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t closure #1 in GestureBodyAccessor.updateBody(of:changed:)(char *a1, uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v64 = v6;
  v65 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v66 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = v52 - v10;
  v56 = a3;
  v58 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v52 - v11;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v13 = static Signpost.bodyInvoke;
    v14 = word_1ED539040;
    v15 = HIBYTE(word_1ED539040);
    v16 = byte_1ED539042;
    v17 = static os_signpost_type_t.begin.getter();
    v77 = v13;
    v78 = v14;
    v79 = v15;
    v80 = v16;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v67 = *(&v13 + 1);
    LODWORD(v68) = v17;
    v52[1] = a1;
    v53 = v12;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18DDAB4C0;
    v19 = AGTypeID.description.getter();
    v21 = v20;
    v22 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v23 = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 64) = v23;
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v24 = specialized static Tracing.libraryName(defining:)();
    *(v18 + 96) = v22;
    *(v18 + 104) = v23;
    *(v18 + 72) = v24;
    *(v18 + 80) = v25;
    v69 = v18;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v15)
    {
      v76 = v68;
      v74 = _signpostLog;
      v75 = &dword_18D018000;
      *&v77 = v13;
      *(&v77 + 1) = v67;
      v78 = v14;
      v71 = "%{public}@.body [in %{public}@]";
      v72 = 31;
      v73 = 2;
      v70 = v69;
      v26 = v57;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v65 + 8))(v26, v64);
LABEL_34:

      v12 = v53;
      break;
    }

    if (v13 == 20)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }

    v28 = bswap32(v13) | (4 * WORD1(v13));
    v29 = v68;
    v30 = v65 + 16;
    v59 = *(v65 + 16);
    v31 = v59(v66, v57, v64);
    v32 = 0;
    LOBYTE(v71) = 1;
    v68 = v27;
    v65 = v30;
    v62 = 16 * v27;
    v63 = (v30 - 8);
    v61 = v69 + 32;
    v60 = *(&v13 + 1);
LABEL_11:
    v67 = v52;
    MEMORY[0x1EEE9AC00](v31);
    a1 = v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = a1 + 8;
    v35 = v68;
    v36 = a1 + 8;
    do
    {
      *(v36 - 1) = 0;
      *v36 = 0;
      v36 += 16;
      --v35;
    }

    while (v35);
    v12 = (v61 + 40 * v32);
    v37 = v68;
    while (1)
    {
      v38 = *(v69 + 16);
      if (v32 == v38)
      {
        LOBYTE(v71) = 0;
LABEL_19:
        v41 = v60;
        if (v60 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (a1[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a1[24] == 1)
        {
          kdebug_trace_string();
        }

        if (a1[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v41 != 20 && a1[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v42 = v64;
        v43 = *v63;
        v44 = v66;
        (*v63)(v66, v64);
        v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
        v31 = v59(v44, v45, v42);
        if ((v71 & 1) == 0)
        {
          v46 = v64;
          v43(v66, v64);
          v43(v57, v46);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v32 >= v38)
      {
        break;
      }

      ++v32;
      outlined init with copy of AnyTrackedValue(v12, &v77);
      v39 = v81;
      __swift_project_boxed_opaque_existential_1(&v77, v81);
      *(v34 - 1) = CVarArg.kdebugValue(_:)(v28 | v29, v39);
      *v34 = v40 & 1;
      v34 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v77);
      v12 += 40;
      if (!--v37)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v47 = v12;
  (*(v56 + 40))(v58, v56);
  AGGraphSetUpdate();
  v48 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  MEMORY[0x1EEE9AC00](v48);
  v52[-2] = type metadata accessor for GestureBodyAccessor();
  v52[-1] = swift_getWitnessTable();
  v49 = AssociatedTypeWitness;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v47, partial apply for closure #2 in BodyAccessor.setBody(_:), &v52[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v50);
  return (*(v54 + 8))(v47, v49);
}

uint64_t _GestureInputs.viewInputs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
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

__n128 _GestureInputs.viewInputs.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v8[4] = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  outlined destroy of _ViewInputs(v8);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  return result;
}

uint64_t _GestureInputs.preferences.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
}

uint64_t _GestureInputs.preferences.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  return result;
}

uint64_t _GestureInputs.mapEnvironment<A>(id:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = v3[5];
  v13[4] = v3[4];
  v13[5] = v7;
  v14[0] = v3[6];
  *(v14 + 12) = *(v3 + 108);
  v8 = v3[1];
  v13[0] = *v3;
  v13[1] = v8;
  v9 = v3[3];
  v13[2] = v3[2];
  v13[3] = v9;
  AGGraphClearUpdate();
  v10 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in _GestureInputs.mapEnvironment<A>(id:_:)(v13, v6, a2, a3, &v12);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  return v12;
}

uint64_t closure #1 in _GestureInputs.mapEnvironment<A>(id:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v8 = *(a1 + 48);
  v9 = *(a1 + 16);
  v22 = *(a1 + 32);
  v23 = v8;
  v10 = *(a1 + 48);
  v24 = *(a1 + 64);
  v11 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v11;
  v17 = v22;
  v18 = v10;
  v19 = *(a1 + 64);
  v25 = *(a1 + 80);
  v20 = *(a1 + 80);
  v15 = v21[0];
  v16 = v9;
  v14 = a2;
  outlined init with copy of _ViewInputs(v21, v26);
  v12 = _ViewInputs.mapEnvironment<A>(id:_:)(&v14, a3, a4);
  v26[2] = v17;
  v26[3] = v18;
  v26[4] = v19;
  v27 = v20;
  v26[0] = v15;
  v26[1] = v16;
  result = outlined destroy of _ViewInputs(v26);
  *a5 = v12;
  return result;
}

uint64_t _GestureInputs.environment.getter()
{
  EnvironmentValues.init()(v5);
  v1 = v5[0];
  v0 = v5[1];
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(v1, v0, &type metadata for EnvironmentValues, 0);

  AGGraphClearUpdate();
  v2 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  swift_beginAccess();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();

  return IndirectAttribute2;
}

uint64_t _GestureOutputs.preferences.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t _GestureOutputs.preferences.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

unint64_t key path getter for _GestureOutputs.debugData : <A>_GestureOutputs<A>@<X0>(uint64_t a1@<X8>)
{
  result = _GestureOutputs.debugData.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t (*_GestureOutputs.debugData.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 4);
  v3 = *MEMORY[0x1E698D3F8];
  *(a1 + 16) = *MEMORY[0x1E698D3F8];
  v4 = v2 == v3;
  if (v2 == v3)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v5 = v4;
  *(a1 + 12) = v5;
  return _GestureOutputs.debugData.modify;
}

uint64_t _GestureOutputs.debugData.modify(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    v1 = *(result + 16);
  }

  *(*result + 4) = v1;
  return result;
}

unint64_t _GestureOutputs.subscript.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = (v2 + 32);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 3;
    v6 = *v3;
    v3 += 3;
    if (v6 == a1)
    {
      v7 = *(v5 - 2);
      return v7 | ((v4 == 0) << 32);
    }
  }

  v7 = 0;
  return v7 | ((v4 == 0) << 32);
}

unint64_t (*_GestureOutputs.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v4 = *(v3 + 8);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 3;
    v8 = *v5;
    v5 += 3;
    if (v8 == a2)
    {
      v9 = *(v7 - 2);
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:
  *(a1 + 24) = v9;
  *(a1 + 28) = v6 == 0;
  return _GestureOutputs.subscript.modify;
}

void (*_GestureOutputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(ValueMetadata ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a5;
  v10[3] = v5;
  *v10 = a2;
  v10[1] = a4;
  v12 = PreferencesOutputs.subscript.getter(a2, a4, a5);
  *(v11 + 8) = v12;
  *(v11 + 36) = BYTE4(v12) & 1;
  return _GestureOutputs.subscript.modify;
}

void _GestureOutputs.subscript.modify(ValueMetadata ***a1)
{
  v1 = *a1;
  PreferencesOutputs.subscript.setter(*(*a1 + 8) | (*(*a1 + 36) << 32), **a1, (*a1)[1], (*a1)[2]);

  free(v1);
}

uint64_t _GestureOutputs.forEachPreference(_:)(uint64_t result)
{
  v2 = *(v1 + 8);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;

    v5 = (v2 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 6;
      v4(v6, v7, v8);
      --v3;
    }

    while (v3);
  }

  return result;
}

void *static GestureCategory.Key.reduce(value:nextValue:)(void *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 |= v4;
  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance GestureCategory.Key(void *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 |= v4;
  return result;
}

uint64_t (*static GestureDescriptor.typeCache.modify())()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DisplayList.GraphicsRenderer.platformViewMode.modify;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance GestureDescriptor())()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance EnableScrollPrefetchFeature;
}

uint64_t static GestureDescriptor.typeCache.getter(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static GestureDescriptor.typeCache.setter(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static GestureModifierDescriptor.typeCache.modify())()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance EnableScrollPrefetchFeature;
}

uint64_t key path getter for static GestureDescriptor.typeCache : GestureDescriptor.Type@<X0>(void *a1@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = *a2;
}

uint64_t key path setter for static GestureDescriptor.typeCache : GestureDescriptor.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = *a1;
  v8 = *a5;

  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v7;
}

uint64_t protocol witness for static TupleDescriptor.typeCache.getter in conformance GestureDescriptor(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for static TupleDescriptor.typeCache.setter in conformance GestureDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a5 = a1;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance GestureModifierDescriptor())()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance EnableScrollPrefetchFeature;
}

void specialized PrimitiveGesture.body.getter()
{
  _StringGuts.grow(_:)(32);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>()
{
  result = lazy protocol witness table cache variable for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>;
  if (!lazy protocol witness table cache variable for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>)
  {
    type metadata accessor for DefaultRule<GestureDebug.Data>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultRule<GestureDebug.Data> and conformance DefaultRule<A>);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Attribute.overrideDefaultValue<A>(_:type:)(uint64_t *a1)
{
  result = AGCreateWeakAttribute();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase()
{
  result = lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase;
  if (!lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase;
  if (!lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase;
  if (!lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase;
  if (!lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GestureInputs.InheritedPhase and conformance _GestureInputs.InheritedPhase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GestureInputs.Options and conformance _GestureInputs.Options()
{
  result = lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options;
  if (!lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options;
  if (!lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options;
  if (!lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options;
  if (!lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GestureInputs.Options and conformance _GestureInputs.Options);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GestureCategory and conformance GestureCategory()
{
  result = lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory;
  if (!lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory;
  if (!lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory;
  if (!lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory;
  if (!lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GestureCategory and conformance GestureCategory);
  }

  return result;
}

uint64_t destroy for _GestureInputs(uint64_t a1)
{
}

uint64_t initializeWithCopy for _GestureInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 88);
  v4 = *(a2 + 96);
  *(a1 + 88) = v5;
  *(a1 + 96) = v4;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);

  v6 = v5;

  return a1;
}

uint64_t assignWithCopy for _GestureInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  v4 = *(a2 + 88);
  v5 = *(a1 + 88);
  *(a1 + 88) = v4;
  v6 = v4;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t assignWithTake for _GestureInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t getEnumTagSinglePayload for _GestureInputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 124))
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

uint64_t storeEnumTagSinglePayload for _GestureInputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 124) = 1;
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

    *(result + 124) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _GestureOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for _GestureOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for _GestureOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

float Color.Resolved.init(_:)(void *a1)
{
  LODWORD(result) = specialized Color.Resolved.init(failableCGColor:)(a1);
  if (v2)
  {
    return 0.0;
  }

  return result;
}

unint64_t Color.ResolvedHDR.init(cgColor:)(void *a1)
{
  v1 = a1;
  v2 = specialized Color.Resolved.init(failableCGColor:)(v1);
  if (v3)
  {

    return 0;
  }

  else
  {
    v5 = v2;
    CGColorGetContentHeadroom();

    return v5;
  }
}

float CGColorRef.resolve(in:)()
{
  LODWORD(result) = specialized Color.Resolved.init(failableCGColor:)(v0);
  if (v2)
  {
    return 0.0;
  }

  return result;
}

unint64_t CGColorRef.resolveHDR(in:)@<X0>(uint64_t a1@<X8>)
{
  result = specialized Color.Resolved.init(failableCGColor:)(v1);
  if (v5)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    v8 = 0;
    LODWORD(v9) = 0;
    v10 = NAN;
  }

  else
  {
    v6 = result;
    v8 = v4;
    v7 = HIDWORD(result);
    v9 = HIDWORD(v4);
    result = CGColorGetContentHeadroom();
    if (v10 == 0.0)
    {
      v10 = NAN;
    }
  }

  *a1 = v6;
  *(a1 + 4) = v7;
  *(a1 + 8) = v8;
  *(a1 + 12) = v9;
  *(a1 + 16) = v10;
  return result;
}

float protocol witness for ColorProvider.resolve(in:) in conformance CGColorRef()
{
  LODWORD(v1) = specialized Color.Resolved.init(failableCGColor:)(*v0);
  result = 0.0;
  if ((v3 & 1) == 0)
  {
    return v1;
  }

  return result;
}

id protocol witness for ColorProvider.staticColor.getter in conformance CGColorRef()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

CGGradientRef ResolvedGradient.cgGradient.getter()
{
  v1 = *v0;
  if (one-time initialization token for srgbExtended != -1)
  {
    swift_once();
  }

  v2 = static Color.Resolved.srgbExtended;
  v3 = *(v1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v4 = (v1 + 44);
    v5 = v3;
    do
    {
      specialized ObjectCache.subscript.getter(*(v4 - 3), *(v4 - 2), *(v4 - 1), *v4);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 12;
      --v5;
    }

    while (v5);
  }

  type metadata accessor for CGColorRef(0);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v7 = v14;
    v8 = (v1 + 48);
    v9 = *(v14 + 16);
    do
    {
      v10 = *v8;
      v11 = *(v14 + 24);
      if (v9 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v9 + 1, 1);
      }

      *(v14 + 16) = v9 + 1;
      *(v14 + 8 * v9 + 32) = v10;
      v8 += 6;
      ++v9;
      --v3;
    }

    while (v3);
  }

  v12 = CGGradientCreateWithColors(v2, v6.super.isa, (v7 + 32));

  return v12;
}

SwiftUI::RecessedMaterialBlurSetting __swiftcall RecessedMaterialBlurSetting.init(rawValue:)(Swift::Int rawValue)
{
  result.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall LayoutComputer.ignoresAutomaticPadding()()
{
  v1 = *v0;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    return (*(*v1 + 96))() & 1;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
    return (*(*v1 + 96))() & 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized LayoutEngine.lengthThatFits(_:in:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 24);
  v10 = one-time initialization token for lockAssertionsAreEnabled;

  if (v10 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v12 = a1;
    v13 = a2 & 1;
    v14 = a3;
    v15 = a4 & 1;
    (*(*v9 + 120))(&v12);
  }

  return result;
}

double protocol witness for LayoutEngine.lengthThatFits(_:in:) in conformance ConcentricLayoutComputer.Engine(uint64_t *a1, char a2)
{
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v8 = *a1;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  ConcentricLayoutComputer.Engine.sizeThatFits(_:)(&v8);
  if (a2)
  {
    return v7;
  }

  return result;
}

SwiftUI::Spacing __swiftcall LayoutComputer.spacing()()
{
  v1 = *v0;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    return (*(*v1 + 112))();
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
    return (*(*v1 + 112))();
  }

  result.minima._rawValue = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t LayoutComputer.lengthThatFits(_:in:)(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = *v2;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v10 = v4;
    v11 = v5;
    v12 = v6;
    v13 = v7;
    return (*(*v8 + 128))(&v10, a2 & 1);
  }

  return result;
}

Swift::Double __swiftcall LayoutComputer.layoutPriority()()
{
  v1 = *v0;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    (*(*v1 + 88))();
  }

  return result;
}

Swift::Bool __swiftcall LayoutComputer.requiresSpacingProjection()()
{
  v1 = *v0;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    return (*(*v1 + 104))() & 1;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
    return (*(*v1 + 104))() & 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t LayoutComputer.childPlacement(at:placementContext:)(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 6);
  v8 = *v2;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    v14 = a1[1];
    v16 = *a1;
    v12 = *a2;
    swift_once();
    v5 = v12;
    v4 = v14;
    v3 = v16;
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  v11 = v5;
  v13 = v4;
  v15 = v3;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  v4 = v13;
  v3 = v15;
  v5 = v11;
  if (!IsOwner)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v20[0] = v3;
    v20[1] = v4;
    v17 = v5;
    v18 = v6;
    v19 = v7;
    return (*(*v8 + 160))(v20, &v17);
  }

  return result;
}

uint64_t LayoutComputer.childPlacement(at:)(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    v8 = a1[1];
    v10 = *a1;
    swift_once();
    v3 = v8;
    v2 = v10;
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  v7 = v3;
  v9 = v2;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  v3 = v7;
  v2 = v9;
  if (!IsOwner)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v11[0] = v2;
    v11[1] = v3;
    return (*(*v4 + 152))(v11);
  }

  return result;
}

uint64_t LayoutComputer.childGeometries(at:origin:)(__int128 *a1, __n128 a2, __n128 a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v3;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    v11 = a3.n128_u64[0];
    v12 = a2.n128_u64[0];
    v14 = a1[1];
    v16 = *a1;
    swift_once();
    v5 = v14;
    v4 = v16;
    a2.n128_u64[0] = v12;
    a3.n128_u64[0] = v11;
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  v13 = v5;
  v15 = v4;
  v7 = a2.n128_u64[0];
  v8 = a3.n128_u64[0];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  a3.n128_u64[0] = v8;
  a2.n128_u64[0] = v7;
  v5 = v13;
  v4 = v15;
  if (!IsOwner)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v17[0] = v4;
    v17[1] = v5;
    return (*(*v6 + 136))(v17, a2, a3);
  }

  return result;
}

double LayoutComputer.DefaultEngine.sizeThatFits(_:)(uint64_t a1)
{
  result = *a1;
  if (*(a1 + 8))
  {
    return 10.0;
  }

  return result;
}

double protocol witness for LayoutEngine.lengthThatFits(_:in:) in conformance LayoutComputer.DefaultEngine(uint64_t a1, char a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  if (*(a1 + 8))
  {
    result = 10.0;
  }

  if (*(a1 + 24))
  {
    v3 = 10.0;
  }

  if (a2)
  {
    return v3;
  }

  return result;
}

uint64_t static LayoutComputer.defaultValue.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *(&static LayoutComputer.defaultValue + 1);
  *a1 = static LayoutComputer.defaultValue;
  a1[1] = v2;
}

uint64_t protocol witness for static Defaultable.defaultValue.getter in conformance LayoutComputer@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *(&static LayoutComputer.defaultValue + 1);
  *a1 = static LayoutComputer.defaultValue;
  a1[1] = v2;
}

uint64_t LayoutEngineBox.ignoresAutomaticPadding()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v1 + *(v2 + 192), v3, v5);
  LOBYTE(v2) = (*(*(v2 + 184) + 16))(v3);
  (*(v4 + 8))(v7, v3);
  return v2 & 1;
}

char *TracingLayoutEngineBox.init(_:)(char *a1)
{
  v2 = v1;
  v49 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = type metadata accessor for String.Encoding();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v4[26];
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = &v2[v4[28]];
  *v16 = 0;
  v16[4] = 1;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v18 = CurrentAttribute == *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    v19 = 0;
  }

  else
  {
    v19 = CurrentAttribute;
  }

  *v16 = v19;
  v16[4] = v18;
  v20 = *(v9 + 16);
  v20(v15, a1, v8);
  (*(*(*(*v2 + 176) - 8) + 32))(&v2[*(*v2 + 192)], v15);
  v20(v12, &v2[*(*v2 + 192)], v8);
  v21 = v4[27];
  v22 = *(v21 + 88);

  v23 = v22(v8, v21);
  v25 = v24;
  v26 = *(v9 + 8);
  v26(v12, v8);
  if (v25)
  {
    v44 = v23;
    v45 = a1;
    v27 = &v2[*(*v2 + 224)];
    v28 = *v27;
    v29 = v27[4];
    swift_beginAccess();
    v30 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      if (v29)
      {
        v31 = 0;
      }

      else
      {
        v31 = v28;
      }

      v42 = v31;
      swift_beginAccess();
      v32 = one-time initialization token for contentDescription;
      v43 = v30[2];

      if (v32 != -1)
      {
        swift_once();
      }

      v41 = static AGNamedTraceEventID.contentDescription;
      static String.Encoding.utf8.getter();
      v33 = String.data(using:allowLossyConversion:)();
      v35 = v34;

      (*(v46 + 8))(v7, v47);
      v48 = v42;
      if (v35 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
      }

      v38 = v45;
      v39 = v43;
      AGGraphAddNamedTraceEvent();

      outlined consume of Data?(v33, v35);

      v37 = v38;
    }

    else
    {

      v37 = v45;
    }

    v26(v37, v8);
  }

  else
  {
    v26(a1, v8);
  }

  return v2;
}

uint64_t TracingLayoutEngineBox.sizeThatFits(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = (v1 + *(*v1 + 224));
  v7 = *v6;
  v8 = *(v6 + 4);
  result = swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    v10 = v2;
    v11 = v3;
    v12 = v4;
    v13 = v5;

    LayoutTrace.Recorder.traceSizeThatFits(_:proposal:_:)(v7 | (v8 << 32), &v10, partial apply for closure #1 in TracingLayoutEngineBox.sizeThatFits(_:));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TracingLayoutEngineBox.lengthThatFits(_:in:)(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = (v2 + *(*v2 + 224));
  v8 = *v7;
  v9 = *(v7 + 4);
  v10 = a2 & 1;
  result = swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    v12 = v3;
    v13 = v4;
    v14 = v5;
    v15 = v6;

    LayoutTrace.Recorder.traceLengthThatFits(_:proposal:in:_:)(v8 | (v9 << 32), &v12, v10, partial apply for closure #1 in TracingLayoutEngineBox.lengthThatFits(_:in:));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TracingLayoutEngineBox.childGeometries(at:origin:)(uint64_t *a1, double a2, double a3)
{
  v34[18] = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = (v3 + *(*v3 + 224));
  v11 = *v10;
  v12 = *(v10 + 4);
  swift_beginAccess();
  v13 = static LayoutTrace.recorder;
  if (!static LayoutTrace.recorder)
  {
    __break(1u);
  }

  swift_beginAccess();
  if (*(v13 + 24) == 1)
  {
  }

  else
  {
    *(v13 + 24) = 1;
    swift_beginAccess();
    v14 = *(v13 + 2);
    v15 = one-time initialization token for update;

    v16 = v14;
    if (v15 != -1)
    {
      swift_once();
    }

    AGGraphAddNamedTraceEvent();

    LOBYTE(v34[0]) = 17;

    static Update.enqueueAction(reason:_:)(v34, partial apply for closure #1 in LayoutTrace.Recorder.activateFrameIfNeeded(), v13);
  }

  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v11;
  }

  v34[0] = v6;
  v34[1] = v7;
  v34[2] = v8;
  v34[3] = v9;
  *&v34[4] = a2;
  *&v34[5] = a3;
  v18 = _s7SwiftUI15ProtobufEncoderV8encodingy10Foundation4DataVxKAA0C16EncodableMessageRzlFZAA20BeginChildGeometriesV_Tt0B5();
  v20 = v19;
  swift_beginAccess();
  v21 = one-time initialization token for childGeometries;
  v22 = *(v13 + 2);
  if (v21 != -1)
  {
    swift_once();
  }

  LODWORD(v33[0]) = v17;
  outlined copy of Data._Representation(v18, v20);
  isa = Data._bridgeToObjectiveC()().super.isa;
  AGGraphAddNamedTraceEvent();

  outlined consume of Data._Representation(v18, v20);
  v24 = *v3;
  v33[0] = v6;
  v33[1] = v7;
  v33[2] = v8;
  v33[3] = v9;
  v25 = (*(*(v24 + 184) + 56))(v33, *(v24 + 176), a2, a3);

  v33[0] = specialized EndChildGeometries.init(_:)(v26);
  MEMORY[0x1EEE9AC00](v33[0]);
  v27 = specialized static ProtobufEncoder.encoding(_:)(_s7SwiftUI15ProtobufEncoderV8encodingy10Foundation4DataVxKAA0C16EncodableMessageRzlFZyACzKXEfU_AA18EndChildGeometriesV_TG5TA_0);
  v29 = v28;

  v30 = *(v13 + 2);
  outlined copy of Data._Representation(v27, v29);
  v31 = Data._bridgeToObjectiveC()().super.isa;
  AGGraphAddNamedTraceEvent();

  outlined consume of Data._Representation(v27, v29);
  outlined consume of Data._Representation(v27, v29);
  outlined consume of Data._Representation(v18, v20);

  return v25;
}

uint64_t TracingLayoutEngineBox.explicitAlignment(_:at:)(unint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = (v2 + *(*v2 + 224));
  v9 = *v8;
  v10 = *(v8 + 4);
  result = swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    v13[0] = v4;
    v13[1] = v5;
    v13[2] = v6;
    v13[3] = v7;

    v12 = LayoutTrace.Recorder.traceExplicitAlignment(_:alignment:at:body:)(v9 | (v10 << 32), a1, v13, partial apply for closure #1 in TracingLayoutEngineBox.explicitAlignment(_:at:));

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double protocol witness for LayoutEngine.lengthThatFits(_:in:) in conformance InsetLayoutComputer.Engine(uint64_t *a1, char a2)
{
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v8 = *a1;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  InsetLayoutComputer.Engine.sizeThatFits(_:)(&v8);
  if (a2)
  {
    return v7;
  }

  return result;
}

uint64_t partial apply for closure #1 in TracingLayoutEngineBox.explicitAlignment(_:at:)()
{
  v1 = *(v0 + 24);
  v2 = **(v0 + 16);
  v3 = *(v0 + 48);
  v5[0] = *(v0 + 32);
  v5[1] = v3;
  return (*(*(v2 + 184) + 64))(v1, v5, *(v2 + 176));
}

uint64_t partial apply for closure #1 in TracingLayoutEngineBox.lengthThatFits(_:in:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 49);
  v5 = **(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  return (*(*(v5 + 184) + 48))(&v7, v4, *(v5 + 176));
}

uint64_t partial apply for closure #1 in TracingLayoutEngineBox.sizeThatFits(_:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = **(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v1;
  v8 = v2;
  v9 = v3;
  return (*(*(v4 + 184) + 40))(&v6, *(v4 + 176));
}

uint64_t lazy protocol witness table accessor for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ScalePulseModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v71 = a2;
  swift_getWitnessTable();
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = type metadata accessor for ModifiedContent();
  v60 = type metadata accessor for ModifiedContent();
  v61 = type metadata accessor for ModifiedContent();
  v62 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(a1 + 24);
  v63 = *(a1 + 16);
  v64 = v8;
  v66 = v7;
  v68 = type metadata accessor for ScheduledAnimationModifier();
  v65 = type metadata accessor for ModifiedContent();
  v70 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v58 - v11;
  v12 = v3 + *(a1 + 52);
  v13 = *v12;
  v15 = *(v12 + 8);
  v14 = *(v12 + 16);
  v17 = *(v12 + 24);
  v16 = *(v12 + 32);
  v18 = *(v12 + 40);
  v19 = *(v12 + 48);
  if (v19)
  {
    v20 = one-time initialization token for sharedGraph;

    if (v20 != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v22 = *v19;
    if (!Counter)
    {
      (*(v22 + 120))(&v102);

      v15 = v103;
      v14 = v104;
      v17 = v105;
      v59 = v106;
      goto LABEL_8;
    }

    (*(v22 + 104))(1);
  }

  LOBYTE(v102) = v13;
  v103 = v15;
  v104 = v14;
  v105 = v17;
  v106 = v16;
  v107 = v18;
  v59 = v16;
LABEL_8:
  v23 = *(a1 + 44);
  v24 = v3 + *(a1 + 48);
  v26 = *(v24 + 16);
  v25 = *(v24 + 24);
  v27 = *(v24 + 8);
  v28 = sqrt(*v24);
  v29 = *(v3 + v23);
  v30 = *(v3 + v23 + 8);
  *&v101[0] = v15;
  *(&v101[0] + 1) = 0x3FF0000000000000;
  *&v101[1] = v29;
  *(&v101[1] + 1) = v30;
  *&v101[2] = v28;
  *(&v101[2] + 1) = 0x3FF0000000000000;
  v31 = sqrt(v27);
  v101[3] = v26;
  View.modifier<A>(_:)(v101, v5, &type metadata for ScalePulseEffect);
  v108 = v79;
  v109 = v80;
  v110 = v81;
  v111 = v82;
  v99 = &protocol witness table for _ViewModifier_Content<A>;
  v100 = &protocol witness table for ScalePulseEffect;
  WitnessTable = swift_getWitnessTable();
  *&v101[0] = v17;
  *(&v101[0] + 1) = 0x3FF0000000000000;
  *&v101[1] = v29;
  *(&v101[1] + 1) = v30;
  *&v101[2] = v28;
  *(&v101[2] + 1) = 0x3FF0000000000000;
  v101[3] = v26;
  View.modifier<A>(_:)(v101, v6, &type metadata for ScalePulseEffect);
  v83 = v76[4];
  v84 = v76[5];
  v85 = v76[6];
  v86 = v76[7];
  v79 = v76[0];
  v80 = v76[1];
  v81 = v76[2];
  v82 = v76[3];
  v97 = WitnessTable;
  v98 = &protocol witness table for ScalePulseEffect;
  v33 = v60;
  v34 = swift_getWitnessTable();
  *&v108 = 0x3FF0000000000000;
  *(&v108 + 1) = v14;
  *&v109 = v29;
  *(&v109 + 1) = v30;
  *&v110 = 0x3FF0000000000000;
  *(&v110 + 1) = v31;
  *&v111 = 0;
  *(&v111 + 1) = v25;
  View.modifier<A>(_:)(&v108, v33, &type metadata for ScalePulseEffect);
  v87 = v101[8];
  v88 = v101[9];
  v89 = v101[10];
  v90 = v101[11];
  v83 = v101[4];
  v84 = v101[5];
  v85 = v101[6];
  v86 = v101[7];
  v79 = v101[0];
  v80 = v101[1];
  v81 = v101[2];
  v82 = v101[3];
  v95 = v34;
  v96 = &protocol witness table for ScalePulseEffect;
  v35 = v61;
  v36 = swift_getWitnessTable();
  *&v108 = 0x3FF0000000000000;
  *(&v108 + 1) = v59;
  *&v109 = v29;
  *(&v109 + 1) = v30;
  *&v110 = 0x3FF0000000000000;
  *(&v110 + 1) = v31;
  *&v111 = 0;
  *(&v111 + 1) = v25;
  View.modifier<A>(_:)(&v108, v35, &type metadata for ScalePulseEffect);
  v91 = v76[12];
  v92 = v76[13];
  v93 = v76[14];
  v94 = v76[15];
  v87 = v76[8];
  v88 = v76[9];
  v89 = v76[10];
  v90 = v76[11];
  v83 = v76[4];
  v84 = v76[5];
  v85 = v76[6];
  v86 = v76[7];
  v79 = v76[0];
  v80 = v76[1];
  v81 = v76[2];
  v82 = v76[3];
  v37 = ScalePulseModifier.blurRadius.getter(a1);
  v77 = v36;
  v78 = &protocol witness table for ScalePulseEffect;
  v38 = v62;
  v39 = swift_getWitnessTable();
  View.blur(radius:opaque:)(0, v38, v37);
  memcpy(v76, v101, 0x109uLL);
  v40 = *(a1 + 36);
  v41 = v3;
  v42 = v3;
  v43 = v63;
  v44 = implicit closure #1 in ScalePulseModifier.body(content:)(v41, v63, v64);
  v46 = v45;
  v74 = v39;
  v75 = &protocol witness table for _BlurEffect;
  v47 = v66;
  v48 = swift_getWitnessTable();
  v49 = v42;
  v50 = v42 + v40;
  v51 = v67;
  View.scheduledAnimation<A>(value:resetValue:delay:animation:)(v49, v50, v44, v46, v47, v43, v48, v67, 0.0);

  v52 = swift_getWitnessTable();
  v72 = v48;
  v73 = v52;
  v53 = v65;
  v54 = swift_getWitnessTable();
  v55 = v69;
  static ViewBuilder.buildExpression<A>(_:)(v51, v53, v54);
  v56 = *(v70 + 8);
  v56(v51, v53);
  static ViewBuilder.buildExpression<A>(_:)(v55, v53, v54);
  return (v56)(v55, v53);
}

double ScalePulseModifier.blurRadius.getter(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + *(a1 + 52);
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  if (v6)
  {
    v7 = one-time initialization token for sharedGraph;

    if (v7 != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v9 = *v6;
    if (Counter)
    {
      (*(v9 + 104))(1);
    }

    else
    {
      (*(v9 + 120))(v11);

      v5 = *&v11[5];
    }
  }

  return v5 * *(v2 + *(a1 + 48) + 120);
}

void *implicit closure #1 in ScalePulseModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScalePulseModifier();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in ScalePulseModifier.body(content:);
}

uint64_t implicit closure #2 in implicit closure #1 in ScalePulseModifier.body(content:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for ScalePulseModifier();
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return ScalePulseModifier.animate()(v2);
}

uint64_t ScalePulseModifier.animate()(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for ContinuousClock();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[25] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[26] = v5;
  v2[27] = v4;

  return MEMORY[0x1EEE6DFA0](ScalePulseModifier.animate(), v5, v4);
}

uint64_t ScalePulseModifier.animate()()
{
  v37 = v0;
  v1 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  if (v6)
  {
    v33 = *(v1 + 24);
    v34 = *(v1 + 8);
    v7 = one-time initialization token for sharedGraph;

    if (v7 != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v9 = *v6;
    if (Counter)
    {
      (*(v9 + 104))(1);

      v4 = v33;
      v3 = v34;
    }

    else
    {
      (*(v9 + 120))();

      v2 = *(v0 + 16);
      v3 = *(v0 + 24);
      v4 = *(v0 + 40);
      v5 = *(v0 + 56);
    }
  }

  *(v0 + 64) = v2 ^ 1;
  *(v0 + 72) = v3;
  *(v0 + 88) = v4;
  *(v0 + 104) = v5;
  if (v6)
  {
    (*(*v6 + 128))(v0 + 64, 0);
  }

  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v12 = *(v11 + 48);
  *(v0 + 304) = v12;
  v13 = v10 + v12;
  v14 = *(v10 + v12 + 48);
  v35 = *(v10 + v12 + 32);
  v36 = v14;
  v15 = specialized static Animation.spring(_:blendDuration:)(&v35, 0.0);
  v16 = swift_task_alloc();
  v17 = *(v11 + 16);
  *(v0 + 224) = v17;
  v16[2] = v17;
  v18 = *(v11 + 24);
  *(v0 + 232) = v18;
  v16[3] = v18;
  v16[4] = v10;
  *&v35 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v35, v15);

  specialized closure #1 in withTransaction<A>(_:_:)(v19, partial apply for closure #1 in ScalePulseModifier.animate());
  v21 = *(v0 + 152);
  v20 = *(v0 + 160);

  v22 = *(v20 + *(v21 + 40));
  *(v0 + 308) = v22;
  if (v22)
  {
    v23 = *(v0 + 160);
    v24 = *(v13 + 144);
    v35 = *(v13 + 128);
    v36 = v24;
    v25 = specialized static Animation.spring(_:blendDuration:)(&v35, 0.0);
    v26 = swift_task_alloc();
    v26[2] = v17;
    v26[3] = v18;
    v26[4] = v23;
    *&v35 = 0;

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v35, v25);

    specialized closure #1 in withTransaction<A>(_:_:)(v27, partial apply for closure #2 in ScalePulseModifier.animate());
  }

  *(v0 + 240) = *(v13 + 80);
  v28 = static Duration.seconds(_:)();
  v30 = v29;
  static Clock<>.continuous.getter();
  v31 = swift_task_alloc();
  *(v0 + 248) = v31;
  *v31 = v0;
  v31[1] = ScalePulseModifier.animate();

  return specialized Clock.sleep(for:tolerance:)(v28, v30, 0, 0, 1);
}

{
  v2 = *v1;
  v2[32] = v0;

  v3 = v2[24];
  v4 = v2[22];
  v5 = v2[21];
  if (v0)
  {

    v6 = *(v4 + 8);
    v2[34] = v6;
    v6(v3, v5);
    v7 = v2[26];
    v8 = v2[27];
    v9 = ScalePulseModifier.animate();
  }

  else
  {
    v10 = *(v4 + 8);
    v2[33] = v10;
    v10(v3, v5);
    v7 = v2[26];
    v8 = v2[27];
    v9 = ScalePulseModifier.animate();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  v16 = v0;
  v1 = *(v0 + 256);
  *(v0 + 280) = *(v0 + 264);
  v2 = *(v0 + 160);
  v3 = v2 + *(v0 + 304);
  v4 = *(v3 + 56);
  v15 = *(v3 + 72);
  v13 = *(v0 + 224);
  v14 = v4;
  v5 = specialized static Animation.spring(_:blendDuration:)(&v14, 0.0);
  v6 = swift_task_alloc();
  *(v6 + 16) = v13;
  *(v6 + 32) = v2;
  *&v14 = 0;

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v14, v5);
  if (!v1)
  {

    specialized closure #1 in withTransaction<A>(_:_:)(v8, partial apply for closure #3 in ScalePulseModifier.animate());

    v9 = static Duration.seconds(_:)();
    v11 = v10;
    static Clock<>.continuous.getter();
    v12 = swift_task_alloc();
    *(v0 + 288) = v12;
    *v12 = v0;
    v12[1] = ScalePulseModifier.animate();

    return specialized Clock.sleep(for:tolerance:)(v9, v11, 0, 0, 1);
  }

  return result;
}

{
  v15 = v0;
  *(v0 + 280) = *(v0 + 272);
  v1 = *(v0 + 160);
  v2 = v1 + *(v0 + 304);
  v3 = *(v2 + 56);
  v14 = *(v2 + 72);
  v12 = *(v0 + 224);
  v13 = v3;
  v4 = specialized static Animation.spring(_:blendDuration:)(&v13, 0.0);
  v5 = swift_task_alloc();
  *(v5 + 16) = v12;
  *(v5 + 32) = v1;
  *&v13 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v13, v4);

  specialized closure #1 in withTransaction<A>(_:_:)(v6, partial apply for closure #3 in ScalePulseModifier.animate());

  v7 = static Duration.seconds(_:)();
  v9 = v8;
  static Clock<>.continuous.getter();
  v10 = swift_task_alloc();
  *(v0 + 288) = v10;
  *v10 = v0;
  v10[1] = ScalePulseModifier.animate();

  return specialized Clock.sleep(for:tolerance:)(v7, v9, 0, 0, 1);
}

{
  v2 = *v1;
  v2[37] = v0;

  v3 = v2[35];
  v4 = v2[23];
  v5 = v2[21];
  if (v0)
  {

    v3(v4, v5);
    v6 = v2[26];
    v7 = v2[27];
    v8 = ScalePulseModifier.animate();
  }

  else
  {
    v3(v4, v5);
    v6 = v2[26];
    v7 = v2[27];
    v8 = ScalePulseModifier.animate();
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

{
  v21 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 160);
  v3 = v2 + *(v0 + 304);
  v17 = *(v0 + 224);

  v4 = *(v3 + 104);
  v19 = *(v3 + 88);
  v20 = v4;
  v5 = specialized static Animation.spring(_:blendDuration:)(&v19, 0.0);
  v6 = swift_task_alloc();
  *(v6 + 16) = v17;
  *(v6 + 32) = v2;
  *&v19 = 0;

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v19, v5);
  if (!v1)
  {

    specialized closure #1 in withTransaction<A>(_:_:)(v8, partial apply for closure #4 in ScalePulseModifier.animate());
    v9 = *(v0 + 308);

    if (v9)
    {
      v10 = *(v0 + 160);
      v11 = v10 + *(v0 + 304);
      v12 = *(v11 + 128);
      v20 = *(v11 + 144);
      v18 = *(v0 + 224);
      v19 = v12;
      v13 = specialized static Animation.spring(_:blendDuration:)(&v19, 0.0);
      v14 = swift_task_alloc();
      *(v14 + 16) = v18;
      *(v14 + 32) = v10;
      *&v19 = 0;

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v19, v13);

      specialized closure #1 in withTransaction<A>(_:_:)(v15, partial apply for closure #5 in ScalePulseModifier.animate());
    }

    v16 = *(v0 + 8);

    return v16();
  }

  return result;
}

{
  v20 = v0;
  v1 = *(v0 + 160);
  v2 = v1 + *(v0 + 304);
  v16 = *(v0 + 224);

  v3 = *(v2 + 104);
  v18 = *(v2 + 88);
  v19 = v3;
  v4 = specialized static Animation.spring(_:blendDuration:)(&v18, 0.0);
  v5 = swift_task_alloc();
  *(v5 + 16) = v16;
  *(v5 + 32) = v1;
  *&v18 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v18, v4);

  specialized closure #1 in withTransaction<A>(_:_:)(v6, partial apply for closure #4 in ScalePulseModifier.animate());
  v7 = *(v0 + 308);

  if (v7)
  {
    v8 = *(v0 + 160);
    v9 = v8 + *(v0 + 304);
    v10 = *(v9 + 128);
    v19 = *(v9 + 144);
    v17 = *(v0 + 224);
    v18 = v10;
    v11 = specialized static Animation.spring(_:blendDuration:)(&v18, 0.0);
    v12 = swift_task_alloc();
    *(v12 + 16) = v17;
    *(v12 + 32) = v8;
    *&v18 = 0;

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v18, v11);

    specialized closure #1 in withTransaction<A>(_:_:)(v13, partial apply for closure #5 in ScalePulseModifier.animate());
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t closure #1 in ScalePulseModifier.animate()(uint64_t a1)
{
  result = type metadata accessor for ScalePulseModifier();
  v3 = a1 + *(result + 52);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 32);
  v37 = v6;
  v38 = *(v3 + 16);
  v7 = *(v3 + 48);
  v36 = v5;
  if (v7)
  {
    v8 = one-time initialization token for sharedGraph;

    if (v8 != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v10 = *v7;
    if (Counter)
    {
      (*(v10 + 104))(1);

      if (v4)
      {
LABEL_6:
        v11 = one-time initialization token for sharedGraph;

        if (v11 != -1)
        {
          swift_once();
        }

        v12 = AGGraphGetCounter();
        v13 = *v7;
        if (v12)
        {
          (*(v13 + 104))(1);

          v14 = v4;
          v16 = v37;
          v15 = v38;
        }

        else
        {
          (*(v13 + 120))(&v39);

          v14 = v39;
          v15 = *&v40[8];
          v16 = v41;
        }

        goto LABEL_19;
      }
    }

    else
    {
      (*(v10 + 120))(&v39);

      if (v39)
      {
        goto LABEL_6;
      }
    }

    v17 = one-time initialization token for sharedGraph;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = AGGraphGetCounter();
    v19 = *v7;
    if (v18)
    {
      (*(v19 + 104))(1);

      v21 = v37;
      v20 = v38;
      v5 = v36;
      v22 = v4;
    }

    else
    {
      (*(v19 + 120))(&v39);

      v22 = v39;
      v20 = *&v40[8];
      v5 = *v40;
      v21 = v41;
    }
  }

  else
  {
    if (*v3)
    {
      v14 = 1;
      v15 = v38;
      v16 = v6;
LABEL_19:
      LOBYTE(v39) = v14;
      *v40 = 0x3FF0000000000000;
      *&v40[8] = v15;
      v41 = v16;
      if (!v7)
      {
        return result;
      }

      (*(*v7 + 128))(&v39, 0);
      v23 = one-time initialization token for sharedGraph;

      if (v23 != -1)
      {
        swift_once();
      }

      v24 = AGGraphGetCounter();
      v25 = *v7;
      if (v24)
      {
        (*(v25 + 104))(1);

        v26 = v37;
        v27 = *(&v38 + 1);
        v28 = *(&v37 + 1);
        v29 = v36;
      }

      else
      {
        (*(v25 + 120))(&v39);

        v4 = v39;
        v29 = *v40;
        v27 = *&v40[16];
        v28 = *(&v41 + 1);
        v26 = v41;
      }

      LOBYTE(v39) = v4;
      *v40 = v29;
      *&v40[8] = 0x3FF0000000000000;
      *&v40[16] = v27;
      *&v41 = v26;
      *(&v41 + 1) = v28;
      return (*(*v7 + 128))(&v39, 0);
    }

    v22 = 0;
    v20 = v38;
    v21 = v6;
  }

  LOBYTE(v39) = v22;
  *v40 = v5;
  *&v40[8] = v20;
  *&v40[16] = 0x3FF0000000000000;
  v41 = v21;
  if (!v7)
  {
    return result;
  }

  (*(*v7 + 128))(&v39, 0);
  v30 = one-time initialization token for sharedGraph;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = AGGraphGetCounter();
  v32 = *v7;
  if (v31)
  {
    (*(v32 + 104))(1);

    v33 = *(&v38 + 1);
    v34 = *(&v37 + 1);
    v35 = vdupq_lane_s64(v38, 0);
    v35.i64[0] = v36;
  }

  else
  {
    (*(v32 + 120))(&v39);

    v4 = v39;
    v35 = *v40;
    v33 = *&v40[16];
    v34 = *(&v41 + 1);
  }

  LOBYTE(v39) = v4;
  *v40 = v35;
  *&v40[16] = v33;
  *&v41 = 0x3FF0000000000000;
  *(&v41 + 1) = v34;
  return (*(*v7 + 128))(&v39, 0);
}

uint64_t closure #3 in ScalePulseModifier.animate()(uint64_t a1)
{
  result = type metadata accessor for ScalePulseModifier();
  v3 = a1 + *(result + 52);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 24);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  if (!v8)
  {
    if (*v3)
    {
      v4 = 1;
      goto LABEL_19;
    }

    v4 = 0;
LABEL_22:
    LOBYTE(v20) = v4;
    v21 = v5;
    v22 = v6;
    v23 = v7;
    if (!v8)
    {
      return result;
    }

    return (*(*v8 + 128))(&v20, 0);
  }

  v18 = *(v3 + 8);
  v19 = *(v3 + 24);
  v9 = one-time initialization token for sharedGraph;

  if (v9 != -1)
  {
    swift_once();
  }

  Counter = AGGraphGetCounter();
  v11 = *v8;
  if (!Counter)
  {
    (*(v11 + 120))(&v20);

    if (v20)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  (*(v11 + 104))(1);

  if ((v4 & 1) == 0)
  {
LABEL_13:
    v15 = one-time initialization token for sharedGraph;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = AGGraphGetCounter();
    v17 = *v8;
    if (v16)
    {
      (*(v17 + 104))(1);

      *&v5 = v18;
      v6 = v19;
    }

    else
    {
      (*(v17 + 120))(&v20);

      v4 = v20;
      *&v5 = v21;
      v6 = v22;
      v7 = v23;
    }

    goto LABEL_22;
  }

LABEL_6:
  v12 = one-time initialization token for sharedGraph;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = AGGraphGetCounter();
  v14 = *v8;
  if (v13)
  {
    (*(v14 + 104))(1);

    v5 = v18;
    *&v6 = v19;
  }

  else
  {
    (*(v14 + 120))(&v20);

    v4 = v20;
    v5 = v21;
    *&v6 = v22;
    v7 = v23;
  }

LABEL_19:
  LOBYTE(v20) = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  if (v8)
  {
    return (*(*v8 + 128))(&v20, 0);
  }

  return result;
}

uint64_t closure #4 in ScalePulseModifier.animate()(uint64_t a1)
{
  result = type metadata accessor for ScalePulseModifier();
  v3 = a1 + *(result + 52);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 48);
  if (!v8)
  {
    if (*v3)
    {
      v4 = 1;
      goto LABEL_19;
    }

    v4 = 0;
    v18 = *(v3 + 16);
LABEL_22:
    LOBYTE(v21) = v4;
    *&v22 = 0;
    *(&v22 + 1) = v18;
    v23 = v6;
    v24 = v7;
    if (!v8)
    {
      return result;
    }

    return (*(*v8 + 128))(&v21, 0);
  }

  v19 = *(v3 + 8);
  v20 = *(v3 + 32);
  v9 = one-time initialization token for sharedGraph;

  if (v9 != -1)
  {
    swift_once();
  }

  Counter = AGGraphGetCounter();
  v11 = *v8;
  if (!Counter)
  {
    (*(v11 + 120))(&v21);

    if (v21)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  (*(v11 + 104))(1);

  if ((v4 & 1) == 0)
  {
LABEL_13:
    v15 = one-time initialization token for sharedGraph;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = AGGraphGetCounter();
    v17 = *v8;
    if (v16)
    {
      (*(v17 + 104))(1);

      v7 = v20;
      v18 = *(&v19 + 1);
    }

    else
    {
      (*(v17 + 120))(&v21);

      v4 = v21;
      v18 = *(&v22 + 1);
      v6 = v23;
      v7 = v24;
    }

    goto LABEL_22;
  }

LABEL_6:
  v12 = one-time initialization token for sharedGraph;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = AGGraphGetCounter();
  v14 = *v8;
  if (v13)
  {
    (*(v14 + 104))(1);

    v5 = v19;
    v7 = v20;
  }

  else
  {
    (*(v14 + 120))(&v21);

    v4 = v21;
    v5 = v22;
    v7 = v24;
  }

LABEL_19:
  LOBYTE(v21) = v4;
  v22 = v5;
  v23 = 0;
  v24 = v7;
  if (v8)
  {
    return (*(*v8 + 128))(&v21, 0);
  }

  return result;
}

uint64_t closure #2 in ScalePulseModifier.animate()(uint64_t a1, double a2)
{
  result = type metadata accessor for ScalePulseModifier();
  v5 = (a1 + *(result + 52));
  v6 = *(v5 + 6);
  if (v6)
  {
    v7 = *v5;
    v13 = *(v5 + 8);
    v14 = *(v5 + 24);
    v8 = one-time initialization token for sharedGraph;

    if (v8 != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v10 = *v6;
    if (Counter)
    {
      (*(v10 + 104))(1);

      v12 = v13;
      v11 = v14;
    }

    else
    {
      (*(v10 + 120))(&v15);

      v7 = v15;
      v11 = v17;
      v12 = v16;
    }

    LOBYTE(v15) = v7;
    v17 = v11;
    v16 = v12;
    v18 = a2;
    return (*(*v6 + 128))(&v15, 0);
  }

  return result;
}

void ScalePulseEffect.effectValue(size:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = v3[4];
  v6 = v3[5];
  if (a2 > 0.0)
  {
    v7 = sqrt((v3[6] + a2) / a2);
    if (v7 < 0.0)
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v7 >= v5)
    {
      v7 = v3[4];
    }

    if (v5 >= 0.0)
    {
      v5 = v7;
    }

    else
    {
      v5 = 0.0;
    }
  }

  if (a3 <= 0.0)
  {
    v9 = v3[5];
LABEL_15:
    _ScaleEffect.effectValue(size:)(v12, a2, a3, 1.0 / v5 + *v3 * (v5 - 1.0 / v5), 1.0 / v9 + v3[1] * (v9 - 1.0 / v9), v3[2], v3[3]);
    v10 = v12[3];
    *(a1 + 32) = v12[2];
    *(a1 + 48) = v10;
    *(a1 + 64) = v13;
    v11 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v11;
    return;
  }

  v8 = sqrt((v3[7] + a3) / a3);
  if (v8 >= 0.0)
  {
    v9 = 0.0;
    if (v6 >= 0.0)
    {
      if (v8 >= v6)
      {
        v9 = v3[5];
      }

      else
      {
        v9 = v8;
      }
    }

    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance ScalePulseEffect@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  ScalePulseEffect.effectValue(size:)(v9, a2, a3);
  v7 = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = v7;
  *(a1 + 64) = v10;
  result = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = result;
  return result;
}

__n128 protocol witness for Animatable.animatableData.getter in conformance ScalePulseEffect@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = vmulq_f64(*(v1 + 16), vdupq_n_s64(0x4060000000000000uLL));
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 protocol witness for Animatable.animatableData.setter in conformance ScalePulseEffect(uint64_t a1)
{
  result = *a1;
  v3 = vmulq_f64(*(a1 + 16), vdupq_n_s64(0x3F80000000000000uLL));
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

__n128 (*protocol witness for Animatable.animatableData.modify in conformance ScalePulseEffect(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = vmulq_f64(*(v1 + 16), vdupq_n_s64(0x4060000000000000uLL));
  *v3 = *v1;
  *(v3 + 16) = v4;
  return protocol witness for Animatable.animatableData.modify in conformance ScalePulseEffect;
}

__n128 protocol witness for Animatable.animatableData.modify in conformance ScalePulseEffect(void **a1)
{
  v1 = *a1;
  v2 = *(v1 + 4);
  v3 = vmulq_f64(*(v1 + 1), vdupq_n_s64(0x3F80000000000000uLL));
  *v2 = *v1;
  v2[1] = v3;
  free(v1);
  return result;
}

uint64_t specialized getter of ePoint #1 in static ScalePulseEffect.shouldFinishEarly(in:)(uint64_t result)
{
  v1 = result;
  if (*(result + 8))
  {
    EnvironmentValues.pixelLength.getter();
    v3 = v2;
    result = swift_beginAccess();
    *v1 = v3;
    *(v1 + 8) = 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ScalePulseEffect(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect();
  result = lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect();
  *(a1 + 16) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type ScalePulseEffect and conformance ScalePulseEffect();
  *(a1 + 8) = result;
  return result;
}

BOOL specialized static ScalePulseEffect.shouldFinishEarly(in:)(__int128 *a1)
{
  v1 = a1[1];
  v9 = *a1;
  v10 = v1;
  v2 = a1[3];
  v11 = a1[2];
  v12 = v2;
  v13 = a1[4];
  v3 = v10;
  v4 = v2;
  v7 = 0.0;
  v8 = 1;
  if (fabs(*&v9 * *&v9 + *&v11 * *&v11) >= 0.0001)
  {
    return 0;
  }

  if (fabs(*(&v9 + 1) * *(&v9 + 1) + *(&v11 + 1) * *(&v11 + 1)) >= 0.0001)
  {
    return 0;
  }

  specialized getter of ePoint #1 in static ScalePulseEffect.shouldFinishEarly(in:)(&v7);
  return fabs(*&v3 * *&v3 + *&v4 * *&v4) < v5 * v5 && fabs(*(&v3 + 1) * *(&v3 + 1) + *(&v4 + 1) * *(&v4 + 1)) < v7 * v7;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in ScalePulseModifier.body(content:)()
{
  type metadata accessor for ScalePulseModifier();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return implicit closure #2 in implicit closure #1 in ScalePulseModifier.body(content:)();
}

uint64_t getEnumTagSinglePayload for ScalePulseState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScalePulseState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for ScalePulseModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ScalePulseModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((((((((v6 + v7) & ~v7) + v6) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 159) & 0xFFFFFFFFFFFFFFF8) + 56 > 0x18)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v12 = ~v7;
    v13 = *(v5 + 16);
    v13(a1, a2, v4);
    v15 = (v3 + v8) & v12;
    v16 = (a2 + v8) & v12;
    v13(v15, v16, v4);
    *(v15 + v6) = *(v16 + v6);
    v17 = (v15 + v6) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v16 + v6) & 0xFFFFFFFFFFFFFFF8;
    *(v17 + 8) = *(v18 + 8);
    v19 = (v17 + 31) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
    v21 = *(v20 + 16);
    *v19 = *v20;
    *(v19 + 16) = v21;
    v22 = *(v20 + 80);
    v24 = *(v20 + 32);
    v23 = *(v20 + 48);
    *(v19 + 64) = *(v20 + 64);
    *(v19 + 80) = v22;
    *(v19 + 32) = v24;
    *(v19 + 48) = v23;
    v26 = *(v20 + 112);
    v25 = *(v20 + 128);
    v27 = *(v20 + 96);
    *(v19 + 144) = *(v20 + 144);
    *(v19 + 112) = v26;
    *(v19 + 128) = v25;
    *(v19 + 96) = v27;
    v28 = (v19 + 159) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v20 + 159) & 0xFFFFFFFFFFFFFFF8;
    v31 = *(v29 + 16);
    v30 = *(v29 + 32);
    *v28 = *v29;
    *(v28 + 16) = v31;
    *(v28 + 32) = v30;
    *(v28 + 48) = *(v29 + 48);
  }

  return v3;
}

uint64_t destroy for ScalePulseModifier(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(a1, v3);
  v5((*(v4 + 64) + a1 + *(v4 + 80)) & ~*(v4 + 80), v3);
}

uint64_t initializeWithCopy for ScalePulseModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  *(v10 + v8) = *(v11 + v8);
  v12 = (v10 + v8) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v8) & 0xFFFFFFFFFFFFFFF8;
  *(v12 + 8) = *(v13 + 8);
  v14 = (v12 + 31) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 31) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 16);
  *v14 = *v15;
  *(v14 + 16) = v16;
  v17 = *(v15 + 80);
  v19 = *(v15 + 32);
  v18 = *(v15 + 48);
  *(v14 + 64) = *(v15 + 64);
  *(v14 + 80) = v17;
  *(v14 + 32) = v19;
  *(v14 + 48) = v18;
  v21 = *(v15 + 112);
  v20 = *(v15 + 128);
  v22 = *(v15 + 96);
  *(v14 + 144) = *(v15 + 144);
  *(v14 + 112) = v21;
  *(v14 + 128) = v20;
  *(v14 + 96) = v22;
  v23 = (v14 + 159) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v15 + 159) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v24 + 16);
  v25 = *(v24 + 32);
  *v23 = *v24;
  *(v23 + 16) = v26;
  *(v23 + 32) = v25;
  *(v23 + 48) = *(v24 + 48);

  return a1;
}

uint64_t assignWithCopy for ScalePulseModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  *(v10 + v8) = *(v11 + v8);
  v12 = (v10 + v8) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v8) & 0xFFFFFFFFFFFFFFF8;
  *(v12 + 8) = *(v13 + 8);
  *(v12 + 16) = *(v13 + 16);
  v14 = ((v12 + 31) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  v14[2] = v15[2];
  v14[3] = v15[3];
  v14[4] = v15[4];
  v14[5] = v15[5];
  v14[6] = v15[6];
  v14[7] = v15[7];
  v14[8] = v15[8];
  v14[9] = v15[9];
  v14[10] = v15[10];
  v14[11] = v15[11];
  v14[12] = v15[12];
  v14[13] = v15[13];
  v14[14] = v15[14];
  v14[15] = v15[15];
  v14[16] = v15[16];
  v14[17] = v15[17];
  v14[18] = v15[18];
  v16 = (v14 + 159) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 159) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  *(v16 + 16) = *(v17 + 16);
  *(v16 + 24) = *(v17 + 24);
  *(v16 + 32) = *(v17 + 32);
  *(v16 + 40) = *(v17 + 40);
  *(v16 + 48) = *(v17 + 48);

  return a1;
}

uint64_t initializeWithTake for ScalePulseModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  *(v10 + v8) = *(v11 + v8);
  v12 = (v10 + v8) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v8) & 0xFFFFFFFFFFFFFFF8;
  *(v12 + 8) = *(v13 + 8);
  v14 = (v12 + 31) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 31) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 16);
  *v14 = *v15;
  *(v14 + 16) = v16;
  v17 = *(v15 + 80);
  v19 = *(v15 + 32);
  v18 = *(v15 + 48);
  *(v14 + 64) = *(v15 + 64);
  *(v14 + 80) = v17;
  *(v14 + 32) = v19;
  *(v14 + 48) = v18;
  v21 = *(v15 + 112);
  v20 = *(v15 + 128);
  v22 = *(v15 + 96);
  *(v14 + 144) = *(v15 + 144);
  *(v14 + 112) = v21;
  *(v14 + 128) = v20;
  *(v14 + 96) = v22;
  v23 = (v14 + 159) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v15 + 159) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v24 + 16);
  v25 = *(v24 + 32);
  v27 = *v24;
  *(v23 + 48) = *(v24 + 48);
  *(v23 + 16) = v26;
  *(v23 + 32) = v25;
  *v23 = v27;
  return a1;
}

uint64_t assignWithTake for ScalePulseModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  *(v10 + v8) = *(v11 + v8);
  v12 = (v10 + v8) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v8) & 0xFFFFFFFFFFFFFFF8;
  *(v12 + 8) = *(v13 + 8);
  *(v12 + 16) = *(v13 + 16);
  v14 = ((v12 + 31) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  v14[2] = v15[2];
  v14[3] = v15[3];
  v14[4] = v15[4];
  v14[5] = v15[5];
  v14[6] = v15[6];
  v14[7] = v15[7];
  v14[8] = v15[8];
  v14[9] = v15[9];
  v14[10] = v15[10];
  v14[11] = v15[11];
  v14[12] = v15[12];
  v14[13] = v15[13];
  v14[14] = v15[14];
  v14[15] = v15[15];
  v14[16] = v15[16];
  v14[17] = v15[17];
  v14[18] = v15[18];
  v16 = (v14 + 159) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 159) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  *(v16 + 16) = *(v17 + 16);
  *(v16 + 24) = *(v17 + 24);
  *(v16 + 32) = *(v17 + 32);
  *(v16 + 40) = *(v17 + 40);
  *(v16 + 48) = *(v17 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for ScalePulseModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v10 = (((((((v9 & ~v8) + v6) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 159) & 0xFFFFFFFFFFFFFFF8) + 56;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v19 = *(((((((((a1 + v9) & ~v8) + v6) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 159) & 0xFFFFFFFFFFFFFFF8) + 48);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    v20 = v19 - 1;
    if (v20 < 0)
    {
      v20 = -1;
    }

    return (v20 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

double storeEnumTagSinglePayload for ScalePulseModifier(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = ((((((((v8 + v9) & ~v9) + v8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 159) & 0xFFFFFFFFFFFFFFF8) + 56;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((((((v8 + v9) & ~v9) + v8) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 159) & 0xFFFFFFF8) == 0xFFFFFFC8)
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

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(a1 + v10) = 0;
      }

      else if (v14)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v21 = (((((((a1 + v8 + v9) & ~v9) + v8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 159) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          result = 0.0;
          *(v21 + 40) = 0u;
          *(v21 + 24) = 0u;
          *(v21 + 8) = 0u;
          *v21 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v21 + 48) = a2;
        }
      }

      else
      {
        v20 = *(v5 + 56);

        v20();
      }

      return result;
    }
  }

  if (((((((((v8 + v9) & ~v9) + v8) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 159) & 0xFFFFFFF8) == 0xFFFFFFC8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((((v8 + v9) & ~v9) + v8) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 159) & 0xFFFFFFF8) != 0xFFFFFFC8)
  {
    v17 = ~v7 + a2;
    v18 = a1;
    bzero(a1, ((((((((v8 + v9) & ~v9) + v8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 159) & 0xFFFFFFFFFFFFFFF8) + 56);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v10) = v16;
    }

    else
    {
      *(a1 + v10) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v10) = v16;
  }

  return result;
}

uint64_t static DynamicView.makeDynamicView(metadata:view:inputs:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v31 = a1;
  v33 = a6;
  v50 = *MEMORY[0x1E69E9840];
  v29 = a4;
  v30 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v27 - v9;
  v11 = type metadata accessor for DynamicViewContainer();
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = *(a3 + 48);
  v15 = *(a3 + 16);
  v46 = *(a3 + 32);
  v47 = v14;
  v16 = *(a3 + 48);
  v48 = *(a3 + 64);
  v17 = *(a3 + 16);
  v44 = *a3;
  v45 = v17;
  v40 = v46;
  v41 = v16;
  v42 = *(a3 + 64);
  LODWORD(a2) = *a2;
  v49 = *(a3 + 80);
  v43 = *(a3 + 80);
  v38 = v44;
  v39 = v15;
  _ViewInputs.makeIndirectOutputs()(&v34);
  v18 = v34;
  v19 = v35;
  v20 = v36;
  (*(v8 + 16))(v10, v31, AssociatedTypeWitness);
  v40 = v46;
  v41 = v47;
  v42 = v48;
  v43 = v49;
  v38 = v44;
  v39 = v45;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  DynamicViewContainer.init(metadata:view:inputs:outputs:)(v10, a2, &v38, &v34, v13);
  v37[2] = type metadata accessor for DynamicViewContainer.Value();
  v37[3] = v11;
  v37[4] = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(&v44, &v38);
  v21 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v37, v11, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  (*(v32 + 8))(v13, v11);
  result = AGGraphSetFlags();
  v24 = *(v18 + 16);
  if (v24)
  {
    v25 = v18 + 48;
    do
    {
      v25 += 24;
      result = AGGraphSetIndirectDependency();
      --v24;
    }

    while (v24);
  }

  if (v20 != *MEMORY[0x1E698D3F8])
  {
    result = AGGraphSetIndirectDependency();
  }

  v26 = v33;
  *v33 = v18;
  *(v26 + 2) = v19;
  *(v26 + 3) = v20;
  return result;
}