uint64_t assignWithCopy for AppIntentExecutingLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v10, v11);
  v12 = *v7;
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  outlined consume of Environment<AppIntentExecutor?>.Content(v12, v13, v14);
  v15 = *(v8 + 24);
  v16 = *(v7 + 24);
  *(v7 + 24) = v15;
  v17 = v15;

  v18 = *(v8 + 40);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = v18;

  return a1;
}

uint64_t initializeWithTake for AppIntentExecutingLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v8[1];
  v9 = v8[2];
  *v7 = *v8;
  v7[1] = v10;
  v7[2] = v9;
  return a1;
}

uint64_t assignWithTake for AppIntentExecutingLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v6) = *(v8 + 16);
  v9 = *v7;
  v10 = *(v7 + 8);
  v11 = *(v7 + 16);
  *v7 = *v8;
  *(v7 + 16) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v9, v10, v11);
  v12 = *(v7 + 24);
  *(v7 + 24) = *(v8 + 24);

  *(v7 + 32) = *(v8 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for AppIntentExecutingLocation(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for AppIntentExecutingLocation(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD0)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 48);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
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
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v19 + 40) = 0;
      result = 0.0;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t (*protocol witness for Location.wasRead.modify in conformance AppIntentExecutingLocation<A>(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 16) = 1;
  return protocol witness for Location.wasRead.modify in conformance AppIntentExecutingLocation<A>;
}

uint64_t static AppIntentExecutingLocation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a2;
  v21 = 3;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in compareValues<A>(_:_:options:), v18, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
  if (v26 != 1)
  {
    return 0;
  }

  v10 = *(type metadata accessor for AppIntentExecutingLocation() + 28);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 16);
  v13 = *(a1 + v10 + 40);
  v14 = (a2 + v10);
  v15 = *(v14 + 16);
  v16 = *(v14 + 5);
  v26 = *v11;
  v27 = v12;
  v28 = *(v11 + 24);
  v29 = v13;
  v22 = *v14;
  v23 = v15;
  v24 = *(v14 + 24);
  v25 = v16;
  return AGCompareValues();
}

uint64_t specialized AppIntentExecutingLocation.set(_:transaction:)()
{
  type metadata accessor for MainActor();
  static Semantics.v7.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

void UIKitKeyPressResponder.pressesBegan(_:with:)(uint64_t a1, void *a2, char a3, SEL *a4)
{
  LOBYTE(v6) = a3;
  if (a2)
  {
    v9 = one-time initialization token for monitor;
    v10 = a2;
    if (v9 != -1)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v11 = static DefaultModifierKeySource.monitor;
      v12 = specialized EventModifiers.init(_:)([v10 modifierFlags]);
      v13 = *(v11 + 24);
      *(v11 + 24) = v12;
      if (v12 == v13)
      {
        break;
      }

      v24 = v10;
      v25 = v6;
      v26 = v4;
      v27 = a4;
      v14 = *(v11 + 16);
      v15 = 1 << *(v14 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v6 = v16 & *(v14 + 64);
      a4 = ((v15 + 63) >> 6);

      v17 = 0;
      while (v6)
      {
        v18 = v17;
LABEL_12:
        v19 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v20 = *(v14 + 56) + ((v18 << 10) | (16 * v19));
        v10 = *v20;
        v4 = *(v20 + 8);
        v28 = *(v11 + 24);

        (v10)(&v28);
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= a4)
        {

          v4 = v26;
          a4 = v27;
          LOBYTE(v6) = v25;
          v10 = v24;
          goto LABEL_15;
        }

        v6 = *(v14 + 64 + 8 * v18);
        ++v17;
        if (v6)
        {
          v17 = v18;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_20:
      swift_once();
    }

LABEL_15:
  }

  LOBYTE(v28) = v6;
  UIKitKeyPressResponder.sendPresses(_:phase:)(a1, &v28);
  if ((v21 & 1) == 0)
  {
    type metadata accessor for UIPress();
    lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, type metadata accessor for UIPress);
    isa = Set._bridgeToObjectiveC()().super.isa;
    v23 = type metadata accessor for UIKitKeyPressResponder();
    v29.receiver = v4;
    v29.super_class = v23;
    objc_msgSendSuper2(&v29, *a4, isa, a2);
  }
}

uint64_t @objc UIKitKeyPressResponder.pressesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, SEL *a6)
{
  type metadata accessor for UIPress();
  lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, type metadata accessor for UIPress);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  v12 = a1;
  UIKitKeyPressResponder.pressesBegan(_:with:)(v10, a4, a5, a6);
}

void UIKitKeyPressResponder.sendPresses(_:phase:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v57 = Strong;
  v58 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v55 = v2;
  v54 = v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for UIPress();
    lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, type metadata accessor for UIPress);
    Set.Iterator.init(_cocoa:)();
    a1 = v70;
    v6 = v71;
    v7 = v72;
    v8 = v73;
    v9 = v74;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v56 = v7;
  v13 = (v7 + 64) >> 6;
LABEL_9:
  v14 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
  while (a1 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18 || (*&v61 = v18, type metadata accessor for UIPress(), swift_dynamicCast(), v17 = *&v68[0], v14 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate, !*&v68[0]))
    {
LABEL_30:
      outlined consume of Set<UIPress>.Iterator._Variant();
      v45 = v58;
      if (v58[2])
      {
        v46 = EventBindingManager.send(_:)();
        v47 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI7EventIDV_SD4KeysVyAfD0D4Type_p_GTt0g5(v45);
        _sSh2eeoiySbShyxG_ABtFZ7SwiftUI7EventIDV_Tt1g5(v46, v47);
      }

      else
      {
      }

      return;
    }

LABEL_19:
    v19 = [v17 v14[49]];
    if (v19)
    {
      v20 = v19;
      [v17 timestamp];
      v22 = v21;
      v23 = specialized EventModifiers.init(_:)([v20 modifierFlags]);
      v24 = [v20 charactersIgnoringModifiers];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v25;

      if (one-time initialization token for keyInputToKeyEquivalentMap != -1)
      {
        swift_once();
      }

      rawValue = keyInputToKeyEquivalentMap._rawValue;
      v27 = *(keyInputToKeyEquivalentMap._rawValue + 2);
      v49 = v23;
      if (v27)
      {
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v53);
        if (v29)
        {
          v30 = (rawValue[7] + 16 * v28);
          v31 = v30[1];
          v51 = *v30;

          v53 = v31;
        }
      }

      v32 = [v20 characters];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v33;

      if (rawValue[2])
      {
        v48 = rawValue;
        v34 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v52);
        if (v35)
        {
          v36 = (v48[7] + 16 * v34);
          v37 = v36[1];
          v50 = *v36;

          v52 = v37;
        }
      }

      v60[0] = [v20 keyCode];
      type metadata accessor for UIKeyboardHIDUsage(0);
      lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type UIKeyboardHIDUsage and conformance UIKeyboardHIDUsage, type metadata accessor for UIKeyboardHIDUsage);
      AnyHashable.init<A>(_:)();

      LOBYTE(v61) = v54;
      *(&v61 + 1) = v22;
      *&v62 = 0;
      *(&v62 + 1) = v49;
      *&v63 = v51;
      *(&v63 + 1) = v53;
      *&v64 = v50;
      *(&v64 + 1) = v52;
      v68[4] = v65;
      v68[5] = v66;
      v69 = v67;
      v68[0] = v61;
      v68[1] = v62;
      v68[2] = v63;
      v68[3] = v64;
      swift_beginAccess();
      v53 = KeyEvent.Tracker.serial(for:)(v68);
      swift_endAccess();
      *(&v62 + 1) = &type metadata for KeyEvent;
      *&v63 = lazy protocol witness table accessor for type KeyEvent and conformance KeyEvent();
      *&v61 = swift_allocObject();
      outlined init with copy of KeyEvent(v68, v61 + 16);
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v61, v60);
      v38 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v38;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(v60, v60[3]);
      v58 = &v48;
      v41 = MEMORY[0x1EEE9AC00](v40);
      v43 = &v48 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 16))(v43, v41);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, &type metadata for KeyEvent, v53, isUniquelyReferenced_nonNull_native, &v59);

      outlined destroy of KeyEvent(v68);
      __swift_destroy_boxed_opaque_existential_1(v60);
      v58 = v59;
      goto LABEL_9;
    }
  }

  v15 = v8;
  v16 = v9;
  if (v9)
  {
LABEL_15:
    v9 = (v16 - 1) & v16;
    v17 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_30;
    }

    v16 = *(v6 + 8 * v8);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

id UIKitKeyPressResponder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitKeyPressResponder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v34 = &type metadata for KeyEvent;
  v35 = lazy protocol witness table accessor for type KeyEvent and conformance KeyEvent();
  v10 = swift_allocObject();
  *&v33 = v10;
  v11 = *(a1 + 80);
  *(v10 + 80) = *(a1 + 64);
  *(v10 + 96) = v11;
  *(v10 + 112) = *(a1 + 96);
  v12 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v12;
  v13 = *(a1 + 48);
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = v13;
  v14 = *a5;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a4 & 1) != 0)
  {
LABEL_7:
    v22 = *a5;
    if (v20)
    {
LABEL_8:
      v23 = v22[7] + 40 * v16;
      __swift_destroy_boxed_opaque_existential_1(v23);
      return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a5;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v33, &type metadata for KeyEvent);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, v30, v22);
  return __swift_destroy_boxed_opaque_existential_1(&v33);
}

unint64_t type metadata accessor for UIPress()
{
  result = lazy cache variable for type metadata for UIPress;
  if (!lazy cache variable for type metadata for UIPress)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIPress);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UIPress and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type WindowLevel and conformance WindowLevel()
{
  result = lazy protocol witness table cache variable for type WindowLevel and conformance WindowLevel;
  if (!lazy protocol witness table cache variable for type WindowLevel and conformance WindowLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowLevel and conformance WindowLevel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WindowLevel.Storage and conformance WindowLevel.Storage()
{
  result = lazy protocol witness table cache variable for type WindowLevel.Storage and conformance WindowLevel.Storage;
  if (!lazy protocol witness table cache variable for type WindowLevel.Storage and conformance WindowLevel.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowLevel.Storage and conformance WindowLevel.Storage);
  }

  return result;
}

void specialized runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a3;
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v22 - v10;
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18C0A9F94(a1, v15);
  outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(a2, v11, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_18C0AA238(v15, v18 + v16);
  outlined init with take of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(v11, v18 + v17, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  v19 = (v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v22[0];
  v19[1] = a4;
  v20 = static TestingSceneDelegate.connectCallback;
  static TestingSceneDelegate.connectCallback = partial apply for specialized closure #1 in runTestingApp<A, B>(rootView:comparisonView:didLaunch:);
  qword_1EAB0A0A0 = v18;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v20);
  type metadata accessor for TestingAppDelegate();
  v21 = MEMORY[0x18D00E850]();
  closure #1 in KitRendererCommon(_:)(v21);
}

void specialized runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v16[-v9];
  outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(a1, &v16[-v9], &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  outlined init with take of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(v10, v12 + v11, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  v13 = (v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = a2;
  v13[1] = a3;
  v14 = static TestingSceneDelegate.connectCallback;
  static TestingSceneDelegate.connectCallback = partial apply for specialized closure #1 in runTestingApp<A, B>(rootView:comparisonView:didLaunch:);
  qword_1EAB0A0A0 = v12;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v14);
  type metadata accessor for TestingAppDelegate();
  v15 = MEMORY[0x18D00E850]();
  closure #1 in KitRendererCommon(_:)(v15);
}

void _TestApp.run()()
{
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v23[-v1 - 16];
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = static CommandLine.arguments.getter();
  *&v27 = 0x746E616D65732D2DLL;
  *(&v27 + 1) = 0xEB00000000736369;
  v24 = &v27;
  v7 = specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v23, v6);
  v9 = v8;

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = __OFADD__(v7, 1);
  v11 = v7 + 1;
  if (!v10)
  {
    v12 = *(static CommandLine.arguments.getter() + 16);

    if (v11 == v12)
    {
LABEL_9:
      v14._countAndFlagsBits = 0x74736574616CLL;
      v14._object = 0xE600000000000000;
      _TestApp.setSemantics(_:)(v14);
      goto LABEL_11;
    }

    v13 = static CommandLine.arguments.getter();
    if ((v11 & 0x8000000000000000) != 0)
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    if (v11 < *(v13 + 16))
    {
      v15 = v13 + 16 * v11;
      v16 = *(v15 + 32);
      v17 = *(v15 + 40);

      v18._countAndFlagsBits = v16;
      v18._object = v17;
      _TestApp.setSemantics(_:)(v18);

LABEL_11:
      v19 = MEMORY[0x18D00C850](0x6E614C656C707041, 0xEE00736567617567);
      isa = Array._bridgeToObjectiveC()().super.isa;
      CFPreferencesSetAppValue(v19, isa, *MEMORY[0x1E695E8A8]);

      _CTClearFontFallbacksCache();
      static Color.Resolved.legacyInterpolation.setter();
      _TestApp.RootView.init()();
      v25 = v27;
      v26 = v28;
      lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView();
      View.truePreference<A>(_:)();

      static _TestApp.rootViewIdentifier.getter();
      _TestApp.RootView.init()();
      v22 = v27;
      v21 = v28;
      static _TestApp.comparisonViewIdentifier.getter();
      *v2 = v22;
      v2[1] = v21;
      specialized runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(v5, v2, closure #1 in _TestApp.run(), 0);
    }

    __break(1u);
  }

  __break(1u);
  goto LABEL_8;
}

unint64_t lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView()
{
  result = lazy protocol witness table cache variable for type _TestApp.RootView and conformance _TestApp.RootView;
  if (!lazy protocol witness table cache variable for type _TestApp.RootView and conformance _TestApp.RootView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TestApp.RootView and conformance _TestApp.RootView);
  }

  return result;
}

void type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>()
{
  if (!lazy cache variable for type metadata for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>)
  {
    type metadata accessor for <<opaque return type of View.truePreference<A>(_:)>>.0();
    type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(255, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
    lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for TestIDView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>);
    }
  }
}

void type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

uint64_t closure #1 in _TestApp.run()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  static _TestApp.host.setter();
  swift_unknownObjectRetain();
  static _TestApp.comparisonHost.setter();
  static _TestApp.defaultEnvironment.getter();
  static _TestApp.environmentOverride.setter();
  ObjectType = swift_getObjectType();
  static _TestApp.defaultEnvironment.getter();
  v9 = v10;
  (*(a2 + 64))(&v9, ObjectType, a2);
  v7 = swift_getObjectType();
  static _TestApp.defaultEnvironment.getter();
  v9 = v10;
  return (*(a4 + 64))(&v9, v7, a4);
}

uint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;

    v9 = a1(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

void specialized closure #1 in runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t, id, uint64_t), uint64_t a6)
{
  v33 = a6;
  v34 = a5;
  v32 = a4;
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoreTesting.isRunning.setter();
  sub_18C0A9F94(a3, v14);
  type metadata accessor for UIHostingController<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for UIHostingController<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for UIHostingController);
  v16 = objc_allocWithZone(v15);
  v17 = specialized UIHostingController.init(rootView:)(v14);
  v18 = *&v17[direct field offset for UIHostingController.host];
  [a1 setRootViewController_];
  [a1 makeKeyAndVisible];
  v19 = lazy protocol witness table accessor for type TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>);
  v20 = static TestingAppDelegate.testHost;
  static TestingAppDelegate.testHost = v18;
  qword_1EAB0A070 = v19;
  v21 = v18;

  outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(v32, v11, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  type metadata accessor for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, type metadata accessor for UIHostingController);
  v23 = objc_allocWithZone(v22);
  v24 = specialized UIHostingController.init(rootView:)(v11);
  v25 = *&v24[direct field offset for UIHostingController.host];
  [a2 setRootViewController_];
  [a2 setHidden_];
  [a2 setHidden_];
  v26 = lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>, type metadata accessor for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>);
  v27 = static TestingAppDelegate.comparisonHost;
  static TestingAppDelegate.comparisonHost = v25;
  unk_1EAB0A080 = v26;
  v28 = v25;

  v29 = v21;
  v30 = v28;
  v34(v29, v19, v30, v26);
}

void specialized closure #1 in runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(void *a1, void *a2, uint64_t a3, void (*a4)(id, uint64_t, id, uint64_t))
{
  v27 = a4;
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  static CoreTesting.isRunning.setter();
  outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(a3, v9, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  type metadata accessor for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for UIHostingController);
  v11 = objc_allocWithZone(v10);
  v12 = specialized UIHostingController.init(rootView:)(v9);
  v13 = *&v12[direct field offset for UIHostingController.host];
  [a1 setRootViewController_];
  [a1 makeKeyAndVisible];
  v14 = lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>);
  v15 = static TestingAppDelegate.testHost;
  static TestingAppDelegate.testHost = v13;
  qword_1EAB0A070 = v14;
  v16 = v13;

  type metadata accessor for UIHostingController<EmptyView>(0, &lazy cache variable for type metadata for UIHostingController<EmptyView>, type metadata accessor for UIHostingController);
  v18 = objc_allocWithZone(v17);
  v19 = specialized UIHostingController.init(rootView:)();
  v20 = *&v19[direct field offset for UIHostingController.host];
  [a2 setRootViewController_];
  [a2 setHidden_];
  [a2 setHidden_];
  v21 = lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, type metadata accessor for UIHostingController<EmptyView>);
  v22 = static TestingAppDelegate.comparisonHost;
  static TestingAppDelegate.comparisonHost = v20;
  unk_1EAB0A080 = v21;
  v23 = v20;

  v24 = v16;
  v25 = v23;
  v27(v24, v14, v25, v21);
}

uint64_t partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(255, a3);
    lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView();
    swift_getOpaqueTypeConformance2();
    v4 = type metadata accessor for TestIDView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void partial apply for specialized closure #1 in runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(void *a1, void *a2)
{
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  specialized closure #1 in runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(a1, a2, v2 + v7, v8);
}

{
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>();
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = v6 + *(*(v5 - 8) + 64);
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
  v9 = *(v8 - 8);
  v10 = (v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  specialized closure #1 in runTestingApp<A, B>(rootView:comparisonView:didLaunch:)(a1, a2, v2 + v6, v2 + v10, v12, v13);
}

void type metadata accessor for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(255, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for UIHostingController<EmptyView>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined init with copy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for UIHostingController<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>();
    v7 = v6;
    v8 = lazy protocol witness table accessor for type TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>, type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t (*)()))
{
  result = *a1;
  if (!result)
  {
    a3(255, a2, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for UIHostingController<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(255, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance OrnamentDynamicScaleBehavior.UpdateBehavior()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior()
{
  result = lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior;
  if (!lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior;
  if (!lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior;
  if (!lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior;
  if (!lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.UpdateBehavior and conformance OrnamentDynamicScaleBehavior.UpdateBehavior);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrnamentDynamicScaleBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
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

uint64_t getEnumTagSinglePayload for OrnamentDynamicScaleBehavior.UpdateBehavior(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for OrnamentDynamicScaleBehavior.UpdateBehavior(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

void type metadata accessor for _PreferenceWritingModifier<OrnamentScalingBehaviorKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<OrnamentScalingBehaviorKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<OrnamentScalingBehaviorKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<OrnamentScalingBehaviorKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<OrnamentScalingBehaviorKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<OrnamentScalingBehaviorKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<OrnamentScalingBehaviorKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<OrnamentScalingBehaviorKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OrnamentDynamicScaleBehavior.Variant.Storage and conformance OrnamentDynamicScaleBehavior.Variant.Storage()
{
  result = lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.Variant.Storage and conformance OrnamentDynamicScaleBehavior.Variant.Storage;
  if (!lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.Variant.Storage and conformance OrnamentDynamicScaleBehavior.Variant.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrnamentDynamicScaleBehavior.Variant.Storage and conformance OrnamentDynamicScaleBehavior.Variant.Storage);
  }

  return result;
}

uint64_t PlatformSceneCache.removeHost(_:id:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 16);
  if (!*(v10 + 16))
  {
    return swift_endAccess();
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
  if ((v12 & 1) == 0)
  {
    return swift_endAccess();
  }

  v22 = *(*(v10 + 56) + 8 * v11);
  swift_endAccess();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v20 = a1;
  v13 = *(v22 + 16);

  if (v13)
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v19);
    if (v14)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(v19, v21);
      v15 = v22;
      if (*(v22 + 16))
      {
        swift_beginAccess();
        outlined copy of SceneID(a2, a3, a4 & 1);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v5 + 16);
        *(v5 + 16) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
        outlined consume of SceneID(a2, a3, a4 & 1);
        *(v5 + 16) = v18;
        swift_endAccess();
      }

      else
      {
        swift_beginAccess();
        specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, a4 & 1);
        swift_endAccess();
      }
    }
  }

  outlined destroy of HashableWeakBox<UIViewController>(v19);
}

uint64_t PlatformSceneCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t View.avKitOnCaptureButtonPress(isEnabled:perform:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;

  View.transformPreference<A>(_:_:)();
}

uint64_t closure #1 in View.avKitOnCaptureButtonPress(isEnabled:perform:)(uint64_t (**a1)(), char a2, uint64_t (*a3)(uint64_t a1, uint64_t a2), uint64_t a4)
{
  v8 = *a1;
  if (*a1)
  {
    v9 = a1[1];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v11 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed AVKitPressableCaptureButton, @in_guaranteed AVKitPressableCaptureButton.Phase) -> (@out ());
    if ((a2 & 1) == 0)
    {
      a3 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed AVKitPressableCaptureButton, @in_guaranteed AVKitPressableCaptureButton.Phase) -> (@out ());
      a4 = v10;
LABEL_6:
      result = swift_allocObject();
      *(result + 16) = a3;
      *(result + 24) = a4;
      v12 = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewList_ID.Canonical, @inout Bool) -> ();
      goto LABEL_7;
    }

LABEL_5:
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v11);

    goto LABEL_6;
  }

  v11 = 0;
  v12 = 0;
  result = 0;
  if (a2)
  {
    goto LABEL_5;
  }

LABEL_7:
  *a1 = v12;
  a1[1] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AVKitPressableCaptureButton.Phase and conformance AVKitPressableCaptureButton.Phase()
{
  result = lazy protocol witness table cache variable for type AVKitPressableCaptureButton.Phase and conformance AVKitPressableCaptureButton.Phase;
  if (!lazy protocol witness table cache variable for type AVKitPressableCaptureButton.Phase and conformance AVKitPressableCaptureButton.Phase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AVKitPressableCaptureButton.Phase and conformance AVKitPressableCaptureButton.Phase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AVKitPressableCaptureButton and conformance AVKitPressableCaptureButton()
{
  result = lazy protocol witness table cache variable for type AVKitPressableCaptureButton and conformance AVKitPressableCaptureButton;
  if (!lazy protocol witness table cache variable for type AVKitPressableCaptureButton and conformance AVKitPressableCaptureButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AVKitPressableCaptureButton and conformance AVKitPressableCaptureButton);
  }

  return result;
}

void type metadata accessor for _PreferenceTransformModifier<AVKitCaptureButtonPreference>()
{
  if (!lazy cache variable for type metadata for _PreferenceTransformModifier<AVKitCaptureButtonPreference>)
  {
    v0 = type metadata accessor for _PreferenceTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceTransformModifier<AVKitCaptureButtonPreference>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<AVKitCaptureButtonPreference> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<AVKitCaptureButtonPreference> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<AVKitCaptureButtonPreference> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for _PreferenceTransformModifier<AVKitCaptureButtonPreference>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<AVKitCaptureButtonPreference> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AVKitPressableCaptureButton.Guts and conformance AVKitPressableCaptureButton.Guts()
{
  result = lazy protocol witness table cache variable for type AVKitPressableCaptureButton.Guts and conformance AVKitPressableCaptureButton.Guts;
  if (!lazy protocol witness table cache variable for type AVKitPressableCaptureButton.Guts and conformance AVKitPressableCaptureButton.Guts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AVKitPressableCaptureButton.Guts and conformance AVKitPressableCaptureButton.Guts);
  }

  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance AVKitCaptureButtonPreference(void *result, void *(*a2)(void *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (*result)
  {
    v4 = result[1];
  }

  else
  {
    result = a2(v5);
    v3 = v5[0];
    v4 = v5[1];
  }

  *v2 = v3;
  v2[1] = v4;
  return result;
}

uint64_t AttributedSubstring.transformingEquivalentAttributes(from:to:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributedSubstring();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1, v3, v9);
  AttributedString.init(_:)();
  AttributedString.transformingUIKitAttributedForSwiftUI()(a1);
  return (*(v8 + 8))(v11, v7);
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute);
  }

  return result;
}

uint64_t outlined init with copy of AttributedString.AdaptiveImageGlyph?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AttributedString.AdaptiveImageGlyph?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.UnderlineColorAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineColorAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineColorAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineColorAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineColorAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.StrikethroughColorAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.StrikethroughColorAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.StrikethroughColorAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.StrikethroughColorAttribute and conformance AttributeScopes.UIKitAttributes.StrikethroughColorAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute);
  }

  return result;
}

double static AccessibilityActionCategory.default.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void static AccessibilityActionCategory.edit.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
}

uint64_t AccessibilityActionCategory.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3 & 1;
  a5[3] = a4;
  return result;
}

uint64_t AccessibilityActionCategory.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4 & 1;
  a1[3] = v5;
  return result;
}

uint64_t AccessibilityActionCategory.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v7);
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  a3[1] = v11;
  a3[2] = v13 & 1;
  a3[3] = v15;
  return result;
}

uint64_t static AccessibilityActionCategory.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 == 1)
      {
        return 1;
      }
    }

    else if (v3 >= 2 && (static Text.== infix(_:_:)() & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AccessibilityActionCategory(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else if (v3 < 2 || (static Text.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return !v3;
}

uint64_t View.accessibilityActions<A>(category:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v22 = a5;
  v20 = a2;
  v21 = a4;
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v17(v9);
  v18 = swift_allocObject();
  v18[2] = v13;
  v18[3] = v14;
  v18[4] = v15;
  v18[5] = v16;
  outlined copy of AccessibilityActionCategory.Category(v13, v14, v15, v16);
  View.accessibilityAttachment<A>(content:_:)(v11, partial apply for closure #1 in View.accessibilityActions<A>(category:_:), v18, v20, a3, v21, v22, a6);

  return (*(v8 + 8))(v11, a3);
}

void *closure #1 in View.accessibilityActions<A>(category:_:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v22 = a4;
  *(&v22 + 1) = a5;
  AccessibilityAttachment.init()();
  AccessibilityAttachment.Tree.attachment.getter(__dst);
  outlined destroy of AccessibilityAttachment.Tree(a1);
  if (!*(&__dst[17] + 1))
  {
    outlined destroy of AnyAccessibilityValue?(__dst, &lazy cache variable for type metadata for AccessibilityAttachment?);
    memset(__src, 0, sizeof(__src));
    goto LABEL_12;
  }

  AccessibilityAttachment.mergedProperties.getter(__src);
  outlined destroy of AccessibilityAttachment(__dst);
  if (!*(&__src[17] + 1))
  {
LABEL_12:
    outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for AccessibilityProperties?);
    goto LABEL_15;
  }

  memcpy(__dst, __src, sizeof(__dst));
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  v8 = *&__src[0];
  v9 = *(*&__src[0] + 16);
  if (v9)
  {
    v27 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v27;
    v11 = v8 + 32;
    do
    {
      v12 = v24;
      outlined init with copy of AnyAccessibilityAction(v11, v24);
      v13 = v25;
      v14 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      *&__src[0] = a2;
      *(&__src[0] + 1) = a3;
      __src[1] = v22;
      (*(v14 + 64))(v23, __src, 0, 0, 0, 0, v13, v14);
      if (v23[3])
      {
        outlined destroy of AnyAccessibilityAction(v24);
        v12 = v23;
      }

      v15 = v12[1];
      __src[0] = *v12;
      __src[1] = v15;
      *(&__src[1] + 9) = *(v12 + 25);
      v27 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v10 = v27;
      }

      *(v10 + 16) = v17 + 1;
      v18 = (v10 + 48 * v17);
      v19 = __src[0];
      v20 = __src[1];
      *(v18 + 57) = *(&__src[1] + 9);
      v18[2] = v19;
      v18[3] = v20;
      v11 += 48;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  *&__src[0] = v10;
  AccessibilityProperties.subscript.setter();
  outlined destroy of AccessibilityProperties(__dst);
LABEL_15:
  result = memcpy(a1, v30, 0x128uLL);
  a1[296] = 0;
  return result;
}

uint64_t outlined copy of AccessibilityActionCategory.Category(uint64_t result, uint64_t a2, char a3, unint64_t a4)
{
  if (a4 >= 2)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t destroy for AccessibilityActionCategory(uint64_t result)
{
  if (*(result + 24) >= 2uLL)
  {
    outlined consume of Text.Storage(*result, *(result + 8), *(result + 16));
  }

  return result;
}

_OWORD *initializeWithCopy for AccessibilityActionCategory(_OWORD *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 >= 2)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v7 = result;
    outlined copy of Text.Storage(*a2, v5, v6);
    *v7 = v4;
    *(v7 + 1) = v5;
    *(v7 + 16) = v6;
    *(v7 + 3) = v2;

    return v7;
  }

  else
  {
    v3 = *(a2 + 16);
    *result = *a2;
    result[1] = v3;
  }

  return result;
}

uint64_t assignWithCopy for AccessibilityActionCategory(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24) >= 2uLL)
  {
    if (v4 >= 2)
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

  else if (v4 >= 2)
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

  return a1;
}

uint64_t assignWithTake for AccessibilityActionCategory(uint64_t result, uint64_t a2)
{
  if (*(result + 24) >= 2uLL)
  {
    v3 = *(a2 + 24);
    if (v3 >= 2)
    {
      v7 = *(a2 + 16);
      v8 = *result;
      v9 = *(result + 8);
      v10 = *(result + 16);
      *result = *a2;
      *(result + 16) = v7;
      v11 = result;
      outlined consume of Text.Storage(v8, v9, v10);
      *(v11 + 24) = v3;

      return v11;
    }

    else
    {
      v4 = result;
      outlined destroy of Text(result);
      v6 = *(a2 + 16);
      *v4 = *a2;
      v4[1] = v6;
      return v4;
    }
  }

  else
  {
    v2 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityActionCategory(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityActionCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t destroy for AccessibilityActionCategory.Category(uint64_t result)
{
  if (*(result + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*result, *(result + 8), *(result + 16));
  }

  return result;
}

__n128 initializeWithCopy for AccessibilityActionCategory.Category(uint64_t a1, uint64_t *a2)
{
  v2 = a2[3];
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    v8 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v8;
  }

  else
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v4, v5);
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v2;
  }

  return result;
}

uint64_t assignWithCopy for AccessibilityActionCategory.Category(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      v11 = *a2;
      v12 = *(a2 + 8);
      v13 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v12, v13);
      *a1 = v11;
      *(a1 + 8) = v12;
      *(a1 + 16) = v13;
      *(a1 + 24) = *(a2 + 24);

      return a1;
    }

LABEL_7:
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

    goto LABEL_7;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  outlined consume of Text.Storage(v8, v9, v10);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for AccessibilityActionCategory.Category(uint64_t result, uint64_t a2)
{
  if (*(result + 24) < 0xFFFFFFFFuLL)
  {
    v8 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v8;
  }

  else
  {
    v2 = *(a2 + 24);
    if (v2 < 0xFFFFFFFF)
    {
      v7 = result;
      outlined consume of Text.Storage(*result, *(result + 8), *(result + 16));

      v10 = *(a2 + 16);
      *v7 = *a2;
      *(v7 + 16) = v10;
    }

    else
    {
      v3 = *(a2 + 16);
      v4 = *result;
      v5 = *(result + 8);
      v6 = *(result + 16);
      *result = *a2;
      *(result + 16) = v3;
      v7 = result;
      outlined consume of Text.Storage(v4, v5, v6);
      *(v7 + 24) = v2;
    }

    return v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityActionCategory.Category(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AccessibilityActionCategory.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for AccessibilityActionCategory.Category(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = (a2 - 1);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AccessibilityActionCategory.Category(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return static Text.== infix(_:_:)();
}

uint64_t ActionSheet.init(title:message:buttons:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

__n128 protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ActionSheet.Presentation.Key(__int128 *a1, void (*a2)(__int128 *__return_ptr))
{
  if (*(a1 + 3))
  {
    v3 = a1[9];
    v21 = a1[8];
    v22 = v3;
    v23 = *(a1 + 20);
    v4 = a1[5];
    v17 = a1[4];
    v18 = v4;
    v5 = a1[7];
    v19 = a1[6];
    v20 = v5;
    v6 = a1[1];
    v13 = *a1;
    v14 = v6;
    v7 = a1[3];
    v15 = a1[2];
    v16 = v7;
  }

  else
  {
    a2(&v13);
  }

  v8 = v22;
  a1[8] = v21;
  a1[9] = v8;
  *(a1 + 20) = v23;
  v9 = v18;
  a1[4] = v17;
  a1[5] = v9;
  v10 = v20;
  a1[6] = v19;
  a1[7] = v10;
  v11 = v14;
  *a1 = v13;
  a1[1] = v11;
  result = v16;
  a1[2] = v15;
  a1[3] = result;
  return result;
}

uint64_t closure #1 in View.presentationCommon(_:onDismiss:id:)(uint64_t a1, int *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  result = outlined destroy of AnyHashable?(a1, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
  v21 = *(a3 + 3);
  if (v21)
  {
    v22 = *a2;
    v23 = *(a3 + 8);
    v24 = a3[3];
    v47 = a3[2];
    v48 = v24;
    v45 = *a3;
    v46 = *(a3 + 16);
    v44 = v21;
    v49 = v23;
    v25 = MEMORY[0x1E69E6720];
    _ss11AnyHashableVSgWOcTm_0(a6, v40, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    v26 = *(a3 + 2);
    v34 = *a3;
    *&v35 = v26;
    *(&v35 + 1) = v21;
    v28 = v48;
    v36 = v47;
    v27 = v47;
    v37 = v48;
    *&v38 = v23;
    *(&v38 + 1) = a4;
    *&v39 = a5;
    DWORD2(v39) = v22;
    *(&v41 + 1) = a7;
    *&v42 = a8;
    *(&v42 + 1) = a9;
    v43 = a10;
    v29 = v39;
    *(a1 + 64) = v38;
    *(a1 + 80) = v29;
    *(a1 + 32) = v27;
    *(a1 + 48) = v28;
    *(a1 + 160) = v43;
    v30 = v42;
    *(a1 + 128) = v41;
    *(a1 + 144) = v30;
    v31 = v40[1];
    *(a1 + 96) = v40[0];
    *(a1 + 112) = v31;
    v32 = v35;
    *a1 = v34;
    *(a1 + 16) = v32;
    outlined init with copy of Text.Storage(&v45, &v34);
    v33 = MEMORY[0x1E69E62F8];
    _ss11AnyHashableVSgWOcTm_0(&v44, &v34, &lazy cache variable for type metadata for [Text.Modifier], MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    _ss11AnyHashableVSgWOcTm_0(&v47, &v34, &lazy cache variable for type metadata for Text?, MEMORY[0x1E6981148], v25);
    _ss11AnyHashableVSgWOcTm_0(&v49, &v34, &lazy cache variable for type metadata for [Alert.Button], &type metadata for Alert.Button, v33);
    return outlined copy of AppIntentExecutor?(a4);
  }

  else
  {
    *(a1 + 160) = 0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t View.actionSheet<A>(item:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a7;
  v38 = a4;
  v40 = a2;
  v41 = a3;
  v43 = a8;
  v12 = type metadata accessor for Optional();
  v13 = type metadata accessor for Binding();
  v42 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v35 - v14;
  v45 = *(v12 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  v35 = a1;
  v36 = &v35 - v17;
  MEMORY[0x18D00ACC0](v16);
  v47[2] = a4;
  v47[3] = a5;
  v19 = a6;
  v47[4] = a6;
  v47[5] = v44;
  v47[6] = v40;
  v47[7] = v41;
  v37 = v12;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.actionSheet<A>(item:content:), v47, MEMORY[0x1E69E73E0], &type metadata for ActionSheet, v20, v54);
  v21 = *(v45 + 8);
  v45 += 8;
  v40 = v21;
  v41 = 0;
  v21(v18, v12);
  v51 = v54[2];
  v52 = v54[3];
  v53 = v55;
  v49 = v54[0];
  v50 = v54[1];
  v22 = v42;
  v23 = v39;
  v24 = v13;
  (*(v42 + 16))(v39, a1, v13);
  v25 = v22;
  v26 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v27 = swift_allocObject();
  v28 = v38;
  *(v27 + 2) = v38;
  *(v27 + 3) = a5;
  v29 = v44;
  *(v27 + 4) = v19;
  *(v27 + 5) = v29;
  (*(v25 + 32))(&v27[v26], v23, v24);
  v30 = v36;
  MEMORY[0x18D00ACC0](v24);
  v46[2] = v28;
  v46[3] = a5;
  v46[4] = v19;
  v46[5] = v29;
  v31 = MEMORY[0x1E69E69B8];
  v32 = v37;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #3 in View.actionSheet<A>(item:content:), v46, MEMORY[0x1E69E73E0], MEMORY[0x1E69E69B8], v33, v48);
  v40(v30, v32);
  View.presentationCommon(_:onDismiss:id:)(&v49, partial apply for closure #2 in View.actionSheet<A>(item:content:), v27, v48, v28, v19);

  outlined destroy of AnyHashable?(v48, &lazy cache variable for type metadata for AnyHashable?, v31);
  v56[2] = v51;
  v56[3] = v52;
  v57 = v53;
  v56[0] = v49;
  v56[1] = v50;
  return outlined destroy of AnyHashable?(v56, &lazy cache variable for type metadata for ActionSheet?, &type metadata for ActionSheet);
}

uint64_t closure #2 in View.actionSheet<A>(item:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(*(a3 - 8) + 56))(&v10 - v7, 1, 1, a3, v6);
  type metadata accessor for Binding();
  specialized Binding.wrappedValue.setter();
  return (*(v5 + 8))(v8, v4);
}

uint64_t partial apply for closure #2 in View.actionSheet<A>(item:content:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for Optional();
  v3 = *(type metadata accessor for Binding() - 8);
  v4 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return closure #2 in View.actionSheet<A>(item:content:)(v4, v1, v2);
}

uint64_t closure #3 in View.actionSheet<A>(item:content:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v5 - v2;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  _convertToAnyHashable<A>(_:)();
  return (*(v1 + 8))(v3, AssociatedTypeWitness);
}

uint64_t View.actionSheet(isPresented:content:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(__int128 *__return_ptr, void *, __n128, __n128, __n128, __n128), uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v28 = a1;
  *(&v28 + 1) = a2;
  LOBYTE(v29) = a3;
  v12 = a3 & 1;
  type metadata accessor for AnyHashable?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v13 = MEMORY[0x18D00ACC0](&v23);
  v14 = 0;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  if (v23 == 1)
  {
    a4(&v28, v13, 0, 0, 0, 0);
    v15 = v28;
    v16 = v29;
    v17 = v30;
    v18 = v31;
    v14 = v32;
  }

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v27 = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = v12;
  v22 = 0;
  memset(v21, 0, sizeof(v21));

  View.presentationCommon(_:onDismiss:id:)(&v23, partial apply for closure #1 in View.actionSheet(isPresented:content:), v19, v21, a6, a7);

  outlined destroy of AnyHashable?(v21, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  v30 = v25;
  v31 = v26;
  v32 = v27;
  v28 = v23;
  v29 = v24;
  return outlined destroy of AnyHashable?(&v28, &lazy cache variable for type metadata for ActionSheet?, &type metadata for ActionSheet);
}

uint64_t destroy for ActionSheet(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  if (*(a1 + 56))
  {
    outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  }
}

uint64_t initializeWithCopy for ActionSheet(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 56);

  if (v7)
  {
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
    *(a1 + 56) = v7;
  }

  else
  {
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
  }

  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for ActionSheet(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = *(a2 + 40);
      v13 = *(a2 + 48);
      outlined copy of Text.Storage(v11, v12, v13);
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      *(a1 + 32) = v11;
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
      outlined consume of Text.Storage(v14, v15, v16);
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      outlined destroy of Text(a1 + 32);
      v20 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v20;
    }
  }

  else if (v10)
  {
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    v19 = *(a2 + 48);
    outlined copy of Text.Storage(v17, v18, v19);
    *(a1 + 32) = v17;
    *(a1 + 40) = v18;
    *(a1 + 48) = v19;
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    v21 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v21;
  }

  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithTake for ActionSheet(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  if (!*(a1 + 56))
  {
    goto LABEL_5;
  }

  v8 = *(a2 + 56);
  if (!v8)
  {
    outlined destroy of Text(a1 + 32);
LABEL_5:
    v13 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v13;
    goto LABEL_6;
  }

  v9 = *(a2 + 48);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  outlined consume of Text.Storage(v10, v11, v12);
  *(a1 + 56) = v8;

LABEL_6:
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

void type metadata accessor for AlertTransformModifier<ActionSheet.Presentation.Key>()
{
  if (!lazy cache variable for type metadata for AlertTransformModifier<ActionSheet.Presentation.Key>)
  {
    v0 = type metadata accessor for AlertTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AlertTransformModifier<ActionSheet.Presentation.Key>);
    }
  }
}

uint64_t destroy for ActionSheet.Presentation(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  if (*(a1 + 56))
  {
    outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  }

  if (*(a1 + 72))
  {
  }

  if (*(a1 + 120))
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 96);
  }

  return result;
}

uint64_t initializeWithCopy for ActionSheet.Presentation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 56);

  if (v7)
  {
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
    *(a1 + 56) = v7;
  }

  else
  {
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
  }

  v12 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);

  if (v12)
  {
    v13 = *(a2 + 80);
    *(a1 + 72) = v12;
    *(a1 + 80) = v13;
  }

  else
  {
    *(a1 + 72) = *(a2 + 72);
  }

  *(a1 + 88) = *(a2 + 88);
  v14 = *(a2 + 120);
  if (v14)
  {
    v15 = *(a2 + 128);
    *(a1 + 120) = v14;
    *(a1 + 128) = v15;
    (**(v14 - 8))(a1 + 96, a2 + 96);
  }

  else
  {
    v16 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v16;
    *(a1 + 128) = *(a2 + 128);
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t assignWithCopy for ActionSheet.Presentation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = *(a2 + 40);
      v13 = *(a2 + 48);
      outlined copy of Text.Storage(v11, v12, v13);
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      *(a1 + 32) = v11;
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
      outlined consume of Text.Storage(v14, v15, v16);
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      outlined destroy of Text(a1 + 32);
      v20 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v20;
    }
  }

  else if (v10)
  {
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    v19 = *(a2 + 48);
    outlined copy of Text.Storage(v17, v18, v19);
    *(a1 + 32) = v17;
    *(a1 + 40) = v18;
    *(a1 + 48) = v19;
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    v21 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v21;
  }

  *(a1 + 64) = *(a2 + 64);

  v22 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (v22)
    {
      v23 = *(a2 + 80);
      *(a1 + 72) = v22;
      *(a1 + 80) = v23;

      goto LABEL_15;
    }
  }

  else if (v22)
  {
    v24 = *(a2 + 80);
    *(a1 + 72) = v22;
    *(a1 + 80) = v24;

    goto LABEL_15;
  }

  *(a1 + 72) = *(a2 + 72);
LABEL_15:
  *(a1 + 88) = *(a2 + 88);
  v25 = *(a2 + 120);
  if (*(a1 + 120))
  {
    v26 = (a1 + 96);
    if (v25)
    {
      __swift_assign_boxed_opaque_existential_1(v26, (a2 + 96));
    }

    else
    {
      outlined destroy of AnyHashable(v26);
      v27 = *(a2 + 128);
      v28 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v28;
      *(a1 + 128) = v27;
    }
  }

  else if (v25)
  {
    *(a1 + 120) = v25;
    *(a1 + 128) = *(a2 + 128);
    (**(v25 - 8))(a1 + 96, a2 + 96);
  }

  else
  {
    v29 = *(a2 + 96);
    v30 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 96) = v29;
    *(a1 + 112) = v30;
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t assignWithTake for ActionSheet.Presentation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  if (*(a1 + 56))
  {
    v8 = *(a2 + 56);
    if (v8)
    {
      v9 = *(a2 + 48);
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(a1 + 56) = v8;

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 32);
  }

  v13 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v13;
LABEL_6:
  *(a1 + 64) = *(a2 + 64);

  v14 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (v14)
    {
      v15 = *(a2 + 80);
      *(a1 + 72) = v14;
      *(a1 + 80) = v15;

      goto LABEL_13;
    }
  }

  else if (v14)
  {
    v16 = *(a2 + 80);
    *(a1 + 72) = v14;
    *(a1 + 80) = v16;
    goto LABEL_13;
  }

  *(a1 + 72) = *(a2 + 72);
LABEL_13:
  *(a1 + 88) = *(a2 + 88);
  if (*(a1 + 120))
  {
    if (*(a2 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 96);
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 96);
    }
  }

  v17 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v17;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t _ConditionalContent<>.init(storage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static _ConditionalContent<>._makeContent(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = a2[3];
  v40 = a2[2];
  v41 = v13;
  v42 = a2[4];
  v43 = *(a2 + 20);
  v14 = a2[1];
  v38 = *a2;
  v39 = v14;
  *&v51 = v13;
  DWORD2(v51) = DWORD2(v13);

  PreferencesInputs.makeIndirectOutputs()();

  v15 = v59;
  v16 = DWORD2(v59);
  v46 = v40;
  v47 = v41;
  v48 = v42;
  LODWORD(v49) = v43;
  v44 = v38;
  v45 = v39;
  *(&v49 + 1) = v59;
  v50 = DWORD2(v59);
  LODWORD(v30) = v12;
  outlined init with copy of _TableColumnInputs(&v38, &v59);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _GraphValue();

  _GraphValue.value.getter();
  v63 = v48;
  v64 = v49;
  LODWORD(v65) = v50;
  v59 = v44;
  v60 = v45;
  v61 = v46;
  v62 = v47;
  *&v51 = a3;
  *(&v51 + 1) = a4;
  *&v52 = a5;
  *(&v52 + 1) = a6;
  v17 = type metadata accessor for _ConditionalContent<>.TableColumnProvider();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v51, &v44, v17);
  WitnessTable = swift_getWitnessTable();
  _ConditionalContent.Container.init(content:provider:)();
  v34 = v55;
  v35 = v56;
  v36 = v57;
  v37 = v58;
  v30 = v51;
  v31 = v52;
  v32 = v53;
  v33 = v54;
  v27 = type metadata accessor for _ConditionalContent.Info();
  *&v59 = a3;
  *(&v59 + 1) = a4;
  *&v60 = v17;
  *(&v60 + 1) = WitnessTable;
  v20 = type metadata accessor for _ConditionalContent.Container();
  v28 = v20;
  v29 = swift_getWitnessTable();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v59, &v51, v20);
  v22 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v30, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v26, v20, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  v63 = v34;
  v64 = v35;
  v65 = v36;
  v66 = v37;
  v59 = v30;
  v60 = v31;
  v61 = v32;
  v62 = v33;
  v24 = *(v21 + 8);
  v24(&v59, v20);
  *&v30 = v15;
  DWORD2(v30) = v16;

  PreferencesOutputs.setIndirectDependency(_:)();
  v24(&v51, v20);
  (*(v18 + 8))(&v44, v17);

  *a7 = v15;
  *(a7 + 8) = v16;
  return result;
}

uint64_t static _ConditionalContent<>._tableColumnCount(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[3];
  v19 = a1[2];
  v20 = v8;
  v21 = a1[4];
  v22 = *(a1 + 20);
  v9 = a1[1];
  v17 = *a1;
  v18 = v9;
  result = (*(a4 + 72))(&v17);
  if ((v11 & 1) == 0)
  {
    v12 = a1[3];
    v19 = a1[2];
    v20 = v12;
    v21 = a1[4];
    v22 = *(a1 + 20);
    v13 = a1[1];
    v17 = *a1;
    v18 = v13;
    v14 = result;
    v15 = result != (*(a5 + 72))(&v17, a3, a5);
    if ((v16 | v15))
    {
      return 0;
    }

    else
    {
      return v14;
    }
  }

  return result;
}

uint64_t _ConditionalContent<>.TableColumnProvider.detachOutputs()()
{

  PreferencesOutputs.detachIndirectOutputs()();
}

uint64_t _ConditionalContent<>.TableColumnProvider.attachOutputs(to:)()
{

  PreferencesOutputs.attachIndirectOutputs(to:)();
}

__n128 _ConditionalContent<>.TableColumnProvider.makeChildInputs()@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 48);
  v19 = *(v1 + 32);
  v5 = v19;
  v20 = v4;
  v21 = *(v1 + 64);
  v6 = v21;
  v22 = *(v1 + 80);
  v7 = v22;
  *(a1 + 32) = v19;
  *(a1 + 48) = v4;
  *(a1 + 64) = v6;
  v8 = *(v1 + 16);
  v18[0] = *v1;
  v10 = v18[0];
  v9 = v18[0];
  v18[1] = v8;
  *(a1 + 80) = v7;
  *a1 = v9;
  *(a1 + 16) = v8;
  v23[1] = v3;
  v23[2] = v5;
  v23[0] = v10;
  v11 = v3;
  swift_beginAccess();
  v12 = v11[3];
  v24[1] = v11[2];
  v24[2] = v12;
  v13 = v11[5];
  v24[3] = v11[4];
  v24[4] = v13;
  v24[0] = v11[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v14 = swift_allocObject();
  memmove((v14 + 16), v11 + 1, 0x50uLL);
  outlined init with copy of _TableColumnInputs(v18, v17);
  outlined init with copy of _GraphInputs(v23, v17);
  outlined init with copy of CachedEnvironment(v24, v17);

  v15 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v15;
  v17[2] = *(v1 + 32);
  outlined destroy of _GraphInputs(v17);
  *a1 = *v1;
  *(a1 + 16) = v14;
  result = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(v1 + 40);
  return result;
}

uint64_t _ConditionalContent<>.TableColumnProvider.makeTrueOutputs(child:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v3;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v4 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v4;
  v5 = *(a3 + 16);
  v6 = *(a3 + 32);
  _GraphValue.init(_:)();
  return (*(v6 + 64))(v10, v8, v5, v6);
}

uint64_t _ConditionalContent<>.TableColumnProvider.makeFalseOutputs(child:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v3;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v4 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v4;
  v5 = *(a3 + 24);
  v6 = *(a3 + 40);
  _GraphValue.init(_:)();
  return (*(v6 + 64))(v10, v8, v5, v6);
}

uint64_t protocol witness for ConditionalContentProvider.inputs.getter in conformance _ConditionalContent<A, B><>.TableColumnProvider@<X0>(uint64_t a1@<X8>)
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
  return outlined init with copy of _TableColumnInputs(v9, v8);
}

uint64_t protocol witness for ConditionalContentProvider.outputs.getter in conformance _ConditionalContent<A, B><>.TableColumnProvider@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
}

uint64_t Optional<A>.ChildTableColumn.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v23 = type metadata accessor for EmptyTableColumnContent();
  v9 = type metadata accessor for _ConditionalContent.Storage();
  v10 = type metadata accessor for Optional();
  v21 = *(v10 - 8);
  v22 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  Optional<A>.ChildTableColumn.content.getter(v8);
  v26 = a1;
  v27 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Optional<A>.ChildTableColumn.value.getter, v25, MEMORY[0x1E69E73E0], v9, v17, v12);
  (*(v6 + 8))(v8, v5);
  v18 = *(v13 + 48);
  if (v18(v12, 1, v9) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v18(v12, 1, v9) != 1)
    {
      (*(v21 + 8))(v12, v22);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v12, v9);
  }

  swift_checkMetadataState();
  swift_getWitnessTable();
  v19 = type metadata accessor for _ConditionalContent.Storage();
  return (*(*(v19 - 8) + 32))(v24, v16, v19);
}

uint64_t closure #1 in Optional<A>.ChildTableColumn.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for EmptyTableColumnContent();
  type metadata accessor for _ConditionalContent.Storage();
  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance A?<A>.ChildTableColumn@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for EmptyTableColumnContent();
  v2 = type metadata accessor for _ConditionalContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance A?<A>.ChildTableColumn(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t static Optional<A>._makeContent(content:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  v13[4] = *(a1 + 64);
  v14 = *(a1 + 80);
  v8 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v8;
  type metadata accessor for Optional();
  type metadata accessor for _GraphValue();
  v12[1] = _GraphValue.value.getter();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for EmptyTableColumnContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional<A>.ChildTableColumn();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  WitnessTable = swift_getWitnessTable();
  return static _ConditionalContent<>._makeContent(content:inputs:)(v12, v13, a2, v9, a3, WitnessTable, a4);
}

uint64_t static Optional<A>._tableColumnCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v6[4] = *(a1 + 64);
  v7 = *(a1 + 80);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  (*(a3 + 72))(v6);
  return 0;
}

uint64_t static EmptyTableColumnContent._makeContent(content:inputs:)()
{
  PreferencesOutputs.init()();

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t implicit closure #1 in static EmptyTableColumnContent._makeContent(content:inputs:)()
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[3] = type metadata accessor for EmptyTableColumnContent.EmptyTableColumnList();
  v2[4] = &protocol witness table for EmptyTableColumnContent<A>.EmptyTableColumnList;
  type metadata accessor for TableColumnList();
  v0 = Attribute.init<A>(body:value:flags:update:)();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t instantiation function for generic protocol witness table for <> _ConditionalContent<A, B>(uint64_t a1)
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

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <A> A?(uint64_t a1)
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

uint64_t instantiation function for generic protocol witness table for EmptyTableColumnContent<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t destroy for _ConditionalContent<>.TableColumnProvider()
{
}

uint64_t initializeWithCopy for _ConditionalContent<>.TableColumnProvider(uint64_t a1, uint64_t a2)
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
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithCopy for _ConditionalContent<>.TableColumnProvider(uint64_t a1, uint64_t a2)
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
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

__n128 __swift_memcpy100_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for _ConditionalContent<>.TableColumnProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ConditionalContent<>.TableColumnProvider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 100))
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

uint64_t storeEnumTagSinglePayload for _ConditionalContent<>.TableColumnProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 100) = 1;
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

    *(result + 100) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t type metadata accessor for TableColumnList()
{
  result = lazy cache variable for type metadata for TableColumnList;
  if (!lazy cache variable for type metadata for TableColumnList)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TableColumnList);
  }

  return result;
}

void protocol witness for ControlGroupStyle.makeBody(configuration:) in conformance ListControlGroupStyle(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>>();
    lazy protocol witness table accessor for type Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>();
    lazy protocol witness table accessor for type _TraitWritingModifier<UseCompactSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>>)
  {
    type metadata accessor for Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>();
    type metadata accessor for _TraitWritingModifier<UseCompactSectionSpacingTraitKey>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>>);
    }
  }
}

void type metadata accessor for Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>()
{
  if (!lazy cache variable for type metadata for Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>)
  {
    v0 = type metadata accessor for Section();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>);
    }
  }
}

void type metadata accessor for _TraitWritingModifier<UseCompactSectionSpacingTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<UseCompactSectionSpacingTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<UseCompactSectionSpacingTraitKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>)
  {
    type metadata accessor for Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<UseCompactSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<UseCompactSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<UseCompactSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<UseCompactSectionSpacingTraitKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<UseCompactSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t assignWithCopy for NavigationState.Base(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 448);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4)
    {
      if (v4 == 2)
      {

        v5 = *(a1 + 24);
        if (v5)
        {
          if (v5 == 1)
          {
            goto LABEL_38;
          }
        }

        if (*(a1 + 40))
        {
        }

        if (*(a1 + 64))
        {

LABEL_37:
        }
      }

      else
      {
        if (*(a1 + 48))
        {
        }

        if (*(a1 + 104))
        {
        }

        v6 = *(a1 + 208);
        if (*(a1 + 240))
        {
          if (v6 != 255)
          {
            if (v6)
            {

              if (*(a1 + 152))
              {
                __swift_destroy_boxed_opaque_existential_1(a1 + 128);
              }

              if (*(a1 + 176) != 1)
              {
              }
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(a1 + 120);
            }
          }
        }

        else
        {
          if (v6 != 255)
          {
            if (v6)
            {

              if (*(a1 + 152))
              {
                __swift_destroy_boxed_opaque_existential_1(a1 + 128);
              }

              if (*(a1 + 176) != 1)
              {
              }
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(a1 + 120);
            }
          }
        }

        if (*(a1 + 360))
        {

          goto LABEL_37;
        }
      }
    }

LABEL_38:
    v7 = *(a2 + 448);
    if (v7 >= 3)
    {
      v7 = *a2 + 3;
    }

    if (v7 != 2)
    {
      if (v7 == 1)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 2);
        v8 = a2[1];
        *(a1 + 32) = *(a2 + 4);
        *(a1 + 16) = v8;
        if (*(a2 + 6))
        {
          *(a1 + 40) = *(a2 + 10);
          *(a1 + 48) = *(a2 + 6);
          *(a1 + 56) = *(a2 + 7);
          *(a1 + 64) = *(a2 + 8);
          *(a1 + 72) = *(a2 + 9);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 22);
        }

        else
        {
          v15 = *(a2 + 40);
          v16 = *(a2 + 56);
          v17 = *(a2 + 72);
          *(a1 + 88) = *(a2 + 22);
          *(a1 + 72) = v17;
          *(a1 + 56) = v16;
          *(a1 + 40) = v15;
        }

        *(a1 + 92) = *(a2 + 23);
        if (*(a2 + 13))
        {
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 13);
          *(a1 + 112) = *(a2 + 14);
        }

        else
        {
          v18 = a2[6];
          *(a1 + 112) = *(a2 + 14);
          *(a1 + 96) = v18;
        }

        v19 = *(a2 + 208);
        if (a2[15])
        {
          if (v19 == 255)
          {
            v22 = *(a2 + 120);
            *(a1 + 136) = *(a2 + 136);
            *(a1 + 120) = v22;
            v23 = *(a2 + 152);
            v24 = *(a2 + 168);
            v25 = *(a2 + 184);
            *(a1 + 193) = *(a2 + 193);
            *(a1 + 184) = v25;
            *(a1 + 168) = v24;
            *(a1 + 152) = v23;
          }

          else if (v19)
          {
            *(a1 + 120) = *(a2 + 15);
            v20 = *(a2 + 19);

            if (v20)
            {
              *(a1 + 152) = v20;
              *(a1 + 160) = *(a2 + 20);
              (**(v20 - 8))(a1 + 128, (a2 + 8), v20);
            }

            else
            {
              v36 = a2[8];
              v37 = a2[9];
              *(a1 + 160) = *(a2 + 20);
              *(a1 + 128) = v36;
              *(a1 + 144) = v37;
            }

            if (*(a2 + 22) == 1)
            {
              *(a1 + 168) = *(a2 + 168);
            }

            else
            {
              *(a1 + 168) = *(a2 + 42);
              *(a1 + 172) = *(a2 + 43);
              *(a1 + 176) = *(a2 + 22);
            }

            *(a1 + 184) = *(a2 + 23);
            v38 = *(a2 + 25);
            *(a1 + 192) = *(a2 + 24);
            *(a1 + 200) = v38;
            *(a1 + 208) = 1;
          }

          else
          {
            v34 = *(a2 + 18);
            *(a1 + 144) = v34;
            *(a1 + 152) = *(a2 + 19);
            (**(v34 - 8))(a1 + 120, a2 + 120);
            *(a1 + 208) = 0;
          }

          *(a1 + 240) = 1;
        }

        else
        {
          if (v19 == 255)
          {
            v26 = *(a2 + 120);
            *(a1 + 136) = *(a2 + 136);
            *(a1 + 120) = v26;
            v27 = *(a2 + 152);
            v28 = *(a2 + 168);
            v29 = *(a2 + 184);
            *(a1 + 193) = *(a2 + 193);
            *(a1 + 184) = v29;
            *(a1 + 168) = v28;
            *(a1 + 152) = v27;
          }

          else if (v19)
          {
            *(a1 + 120) = *(a2 + 15);
            v21 = *(a2 + 19);

            if (v21)
            {
              *(a1 + 152) = v21;
              *(a1 + 160) = *(a2 + 20);
              (**(v21 - 8))(a1 + 128, (a2 + 8), v21);
            }

            else
            {
              v39 = a2[8];
              v40 = a2[9];
              *(a1 + 160) = *(a2 + 20);
              *(a1 + 128) = v39;
              *(a1 + 144) = v40;
            }

            if (*(a2 + 22) == 1)
            {
              *(a1 + 168) = *(a2 + 168);
            }

            else
            {
              *(a1 + 168) = *(a2 + 42);
              *(a1 + 172) = *(a2 + 43);
              *(a1 + 176) = *(a2 + 22);
            }

            *(a1 + 184) = *(a2 + 23);
            v41 = *(a2 + 25);
            *(a1 + 192) = *(a2 + 24);
            *(a1 + 200) = v41;
            *(a1 + 208) = 1;
          }

          else
          {
            v35 = *(a2 + 18);
            *(a1 + 144) = v35;
            *(a1 + 152) = *(a2 + 19);
            (**(v35 - 8))(a1 + 120, a2 + 120);
            *(a1 + 208) = 0;
          }

          *(a1 + 216) = *(a2 + 27);
          *(a1 + 224) = *(a2 + 28);
          *(a1 + 232) = *(a2 + 29);
          *(a1 + 240) = 0;
        }

        *(a1 + 248) = *(a2 + 31);
        *(a1 + 256) = *(a2 + 32);
        *(a1 + 264) = *(a2 + 33);
        *(a1 + 272) = *(a2 + 34);
        *(a1 + 280) = *(a2 + 35);
        *(a1 + 288) = *(a2 + 36);
        *(a1 + 296) = *(a2 + 37);
        *(a1 + 304) = *(a2 + 38);
        v42 = *(a2 + 312);
        *(a1 + 328) = *(a2 + 41);
        *(a1 + 312) = v42;
        *(a1 + 336) = *(a2 + 84);
        *(a1 + 340) = *(a2 + 85);
        *(a1 + 344) = *(a2 + 43);
        *(a1 + 352) = *(a2 + 352);
        *(a1 + 353) = *(a2 + 353);
        v43 = *(a2 + 45);

        if (v43)
        {
          *(a1 + 360) = v43;
          *(a1 + 368) = *(a2 + 46);
          *(a1 + 376) = *(a2 + 47);
          *(a1 + 384) = *(a2 + 48);
          *(a1 + 392) = *(a2 + 49);
          *(a1 + 400) = *(a2 + 50);
          *(a1 + 408) = *(a2 + 51);
          *(a1 + 416) = *(a2 + 52);
          v44 = *(a2 + 424);
          *(a1 + 440) = *(a2 + 55);
          *(a1 + 424) = v44;
        }

        else
        {
          v45 = *(a2 + 376);
          *(a1 + 360) = *(a2 + 360);
          *(a1 + 376) = v45;
          v46 = *(a2 + 392);
          v47 = *(a2 + 408);
          v48 = *(a2 + 424);
          *(a1 + 440) = *(a2 + 55);
          *(a1 + 408) = v47;
          *(a1 + 424) = v48;
          *(a1 + 392) = v46;
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
        v14 = *a2;
        *(a1 + 16) = *(a2 + 2);
        *a1 = v14;
      }

      goto LABEL_90;
    }

    *a1 = *a2;
    v9 = *(a2 + 3);

    if (v9 == 1)
    {
      *(a1 + 8) = *(a2 + 8);
      v10 = *(a2 + 24);
      v11 = *(a2 + 40);
      v12 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 36);
      *(a1 + 40) = v11;
      *(a1 + 56) = v12;
      *(a1 + 24) = v10;
LABEL_71:
      v13 = 2;
LABEL_90:
      *(a1 + 448) = v13;
      return a1;
    }

    *(a1 + 8) = *(a2 + 1);
    if (*(a2 + 3))
    {
      *(a1 + 16) = *(a2 + 2);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      v30 = a2[1];
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = v30;
    }

    *(a1 + 33) = *(a2 + 33);
    v31 = *(a2 + 5);
    if (v31)
    {
      v32 = *(a2 + 6);
      *(a1 + 40) = v31;
      *(a1 + 48) = v32;

      if (*(a2 + 8))
      {
LABEL_67:
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 72) = *(a2 + 72);

LABEL_70:
        *(a1 + 73) = *(a2 + 73);
        goto LABEL_71;
      }
    }

    else
    {
      *(a1 + 40) = *(a2 + 40);
      if (*(a2 + 8))
      {
        goto LABEL_67;
      }
    }

    v33 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v33;
    goto LABEL_70;
  }

  return a1;
}

unsigned __int8 *assignWithTake for NavigationState.Base(unsigned __int8 *__dst, unsigned __int8 *__src)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v4 = __dst[448];
  if (v4 >= 3)
  {
    v4 = *__dst + 3;
  }

  if (v4)
  {
    if (v4 != 2)
    {
      if (*(__dst + 6))
      {
      }

      if (*(__dst + 13))
      {
      }

      v6 = __dst[208];
      if (__dst[240])
      {
        if (v6 != 255)
        {
          if (v6)
          {

            if (*(__dst + 19))
            {
              __swift_destroy_boxed_opaque_existential_1((__dst + 128));
            }

            if (*(__dst + 22) != 1)
            {
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1((__dst + 120));
          }
        }
      }

      else
      {
        if (v6 != 255)
        {
          if (v6)
          {

            if (*(__dst + 19))
            {
              __swift_destroy_boxed_opaque_existential_1((__dst + 128));
            }

            if (*(__dst + 22) != 1)
            {
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1((__dst + 120));
          }
        }
      }

      if (!*(__dst + 45))
      {
        goto LABEL_38;
      }

LABEL_37:

      goto LABEL_38;
    }

    v5 = *(__dst + 3);
    if (!v5)
    {
LABEL_9:
      if (*(__dst + 5))
      {
      }

      if (!*(__dst + 8))
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (v5 != 1)
    {

      goto LABEL_9;
    }
  }

LABEL_38:
  v7 = __src[448];
  if (v7 >= 3)
  {
    v7 = *__src + 3;
  }

  if (v7 == 2)
  {
    v8 = *(__src + 3);
    *(__dst + 2) = *(__src + 2);
    *(__dst + 3) = v8;
    *(__dst + 58) = *(__src + 58);
    v9 = *(__src + 1);
    *__dst = *__src;
    *(__dst + 1) = v9;
  }

  else if (v7 == 1)
  {
    memcpy(__dst, __src, 0x1C0uLL);
    LOBYTE(v7) = 1;
  }

  else
  {
    LOBYTE(v7) = 0;
    *__dst = *__src;
    *(__dst + 2) = *(__src + 2);
  }

  __dst[448] = v7;
  return __dst;
}

uint64_t getEnumTag for NavigationState.Base(uint64_t a1)
{
  result = *(a1 + 448);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for NavigationState.Base(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 416) = 0u;
    *(result + 432) = 0u;
    *(result + 384) = 0u;
    *(result + 400) = 0u;
    *(result + 352) = 0u;
    *(result + 368) = 0u;
    *(result + 320) = 0u;
    *(result + 336) = 0u;
    *(result + 288) = 0u;
    *(result + 304) = 0u;
    *(result + 256) = 0u;
    *(result + 272) = 0u;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
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
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
  }

  *(result + 448) = a2;
  return result;
}

uint64_t assignWithCopy for NavigationState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v4)
    {
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);

      *(a1 + 48) = *(a2 + 48);

      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = *(a2 + 64);

      *(a1 + 72) = *(a2 + 72);

      *(a1 + 80) = *(a2 + 80);
    }

    else
    {
      outlined destroy of NavigationListState(a1 + 32);
      v6 = *(a2 + 48);
      v5 = *(a2 + 64);
      v7 = *(a2 + 32);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 48) = v6;
      *(a1 + 64) = v5;
      *(a1 + 32) = v7;
    }
  }

  else if (v4)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    v8 = *(a2 + 32);
    v9 = *(a2 + 48);
    v10 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
    *(a1 + 32) = v8;
  }

  v11 = *(a1 + 104);
  v12 = *(a2 + 104);
  if (v11 != 1)
  {
    if (v12 == 1)
    {
      outlined destroy of NavigationSplitViewState(a1 + 88);
      *(a1 + 88) = *(a2 + 88);
      v16 = *(a2 + 120);
      v17 = *(a2 + 136);
      v18 = *(a2 + 152);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 152) = v18;
      *(a1 + 136) = v17;
      *(a1 + 120) = v16;
      return a1;
    }

    *(a1 + 88) = *(a2 + 88);
    *(a1 + 92) = *(a2 + 92);
    v19 = *(a2 + 104);
    if (v11)
    {
      if (v19)
      {
        *(a1 + 96) = *(a2 + 96);

        *(a1 + 104) = *(a2 + 104);

        *(a1 + 112) = *(a2 + 112);
      }

      else
      {
        outlined destroy of Binding<NavigationSplitViewColumn>(a1 + 96, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E6981948]);
        v23 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = v23;
      }
    }

    else if (v19)
    {
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
    }

    else
    {
      v24 = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 96) = v24;
    }

    v25 = *(a1 + 120);
    *(a1 + 113) = *(a2 + 113);
    v26 = *(a2 + 120);
    if (v25)
    {
      if (v26)
      {
        v27 = *(a2 + 128);
        *(a1 + 120) = v26;
        *(a1 + 128) = v27;

        goto LABEL_35;
      }
    }

    else if (v26)
    {
      v28 = *(a2 + 128);
      *(a1 + 120) = v26;
      *(a1 + 128) = v28;

      goto LABEL_35;
    }

    *(a1 + 120) = *(a2 + 120);
LABEL_35:
    v29 = *(a2 + 144);
    if (*(a1 + 144))
    {
      if (v29)
      {
        *(a1 + 136) = *(a2 + 136);

        *(a1 + 144) = *(a2 + 144);

        *(a1 + 152) = *(a2 + 152);
      }

      else
      {
        outlined destroy of Binding<NavigationSplitViewColumn>(a1 + 136, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E6981948]);
        v31 = *(a2 + 152);
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 152) = v31;
      }

      goto LABEL_41;
    }

    if (v29)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

  if (v12 != 1)
  {
    *(a1 + 88) = *(a2 + 88);
    if (*(a2 + 104))
    {
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
    }

    else
    {
      v20 = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 96) = v20;
    }

    *(a1 + 113) = *(a2 + 113);
    v21 = *(a2 + 120);
    if (v21)
    {
      v22 = *(a2 + 128);
      *(a1 + 120) = v21;
      *(a1 + 128) = v22;
    }

    else
    {
      *(a1 + 120) = *(a2 + 120);
    }

    if (*(a2 + 144))
    {
LABEL_25:
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);

LABEL_41:
      *(a1 + 153) = *(a2 + 153);
      return a1;
    }

LABEL_39:
    v30 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v30;
    goto LABEL_41;
  }

  *(a1 + 88) = *(a2 + 88);
  v13 = *(a2 + 104);
  v14 = *(a2 + 120);
  v15 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v15;
  *(a1 + 120) = v14;
  *(a1 + 104) = v13;
  return a1;
}

__n128 __swift_memcpy154_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t assignWithTake for NavigationState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  if (*(a1 + 40))
  {
    v4 = *(a2 + 40);
    if (v4)
    {
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v4;

      *(a1 + 48) = *(a2 + 48);

      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = *(a2 + 64);

      *(a1 + 72) = *(a2 + 72);

      *(a1 + 80) = *(a2 + 80);
      goto LABEL_6;
    }

    outlined destroy of NavigationListState(a1 + 32);
  }

  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
LABEL_6:
  v6 = *(a1 + 104);
  if (v6 != 1)
  {
    v7 = *(a2 + 104);
    if (v7 == 1)
    {
      outlined destroy of NavigationSplitViewState(a1 + 88);
      goto LABEL_9;
    }

    *(a1 + 88) = *(a2 + 88);
    if (v6)
    {
      if (v7)
      {
        *(a1 + 96) = *(a2 + 96);

        *(a1 + 104) = v7;

        *(a1 + 112) = *(a2 + 112);
        goto LABEL_15;
      }

      outlined destroy of Binding<NavigationSplitViewColumn>(a1 + 96, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E6981948]);
    }

    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
LABEL_15:
    v8 = *(a2 + 120);
    v9 = *(a1 + 120);
    *(a1 + 113) = *(a2 + 113);
    if (v9)
    {
      if (v8)
      {
        v10 = *(a2 + 128);
        *(a1 + 120) = v8;
        *(a1 + 128) = v10;

        if (!*(a1 + 144))
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    else if (v8)
    {
      v11 = *(a2 + 128);
      *(a1 + 120) = v8;
      *(a1 + 128) = v11;
      if (!*(a1 + 144))
      {
        goto LABEL_27;
      }

LABEL_24:
      v12 = *(a2 + 144);
      if (v12)
      {
        *(a1 + 136) = *(a2 + 136);

        *(a1 + 144) = v12;

        *(a1 + 152) = *(a2 + 152);
LABEL_28:
        *(a1 + 153) = *(a2 + 153);
        return a1;
      }

      outlined destroy of Binding<NavigationSplitViewColumn>(a1 + 136, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E6981948]);
LABEL_27:
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      goto LABEL_28;
    }

    *(a1 + 120) = *(a2 + 120);
    if (!*(a1 + 144))
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_9:
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t NavigationState.pendingPopCount(in:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of NavigationColumnState(*(v4 + 56) + 360 * v5, v9);
  if (v10)
  {
    v7 = *(v11 + 16);
  }

  else
  {
    v7 = 0;
  }

  outlined destroy of NavigationColumnState(v9);
  return v7;
}

uint64_t NavigationState.StackContent.topKey.getter()
{
  result = outlined init with copy of NavigationState.Base(v0, __src);
  if (!v24)
  {
    return __src[0];
  }

  if (v24 == 1)
  {
    outlined consume of ResolvedNavigationDestinations?(__src[45]);
    memcpy(__dst, __src, 0x163uLL);
LABEL_65:
    v2 = __dst[2];
    outlined destroy of NavigationColumnState(__dst);
    return v2;
  }

  v3 = __src[0];
  v26 = __src[9];
  v25[2] = *&__src[5];
  v25[3] = *&__src[7];
  v25[0] = *&__src[1];
  v25[1] = *&__src[3];
  v4 = *(__src[0] + 16);
  if (v4)
  {
    v5 = 360 * v4;
    v6 = *(__src[0] + 16);
    while (1)
    {
      if (v6 > *(v3 + 16))
      {
        goto LABEL_68;
      }

      v7 = v6 - 1;
      outlined init with copy of NavigationColumnState(v3 + v5 - 328, __dst);
      if (LOBYTE(__dst[3]) > 2u)
      {
        if (LOBYTE(__dst[3]) != 5)
        {
          goto LABEL_63;
        }

        goto LABEL_8;
      }

      if (LOBYTE(__dst[3]) == 1)
      {
        break;
      }

      if (LOBYTE(__dst[3]) != 2)
      {
        goto LABEL_63;
      }

      v8 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v25, __dst, v6 - 1, v3);
      result = outlined destroy of NavigationColumnState(__dst);
      if (v8)
      {
        goto LABEL_64;
      }

LABEL_9:
      v5 -= 360;
      v6 = v7;
      if (!v7)
      {
        goto LABEL_67;
      }
    }

    result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v25, __dst, v6 - 1, v3);
    if (result)
    {
      goto LABEL_63;
    }

    if (v6 >= v4)
    {
      goto LABEL_8;
    }

    if (v6 >= *(v3 + 16))
    {
      goto LABEL_69;
    }

    outlined init with copy of NavigationColumnState(v3 + v5 + 32, v20);
    if (v21 > 2u)
    {
      if (v21 != 5)
      {
        goto LABEL_62;
      }

LABEL_44:
      outlined destroy of NavigationColumnState(v20);
LABEL_8:
      result = outlined destroy of NavigationColumnState(__dst);
      goto LABEL_9;
    }

    if (v21 != 1)
    {
      if (v21 != 2)
      {
        goto LABEL_62;
      }

      v9 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v25, v20, v6, v3) ^ 1;
LABEL_50:
      outlined destroy of NavigationColumnState(v20);
      result = outlined destroy of NavigationColumnState(__dst);
      if ((v9 & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_9;
    }

    result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v25, v20, v6, v3);
    if (result)
    {
LABEL_62:
      outlined destroy of NavigationColumnState(v20);
LABEL_63:
      outlined destroy of NavigationColumnState(__dst);
LABEL_64:
      outlined init with copy of NavigationColumnState(v3 + v5 - 328, __dst);
      outlined destroy of Binding<NavigationSplitViewColumn>(v25, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

      goto LABEL_65;
    }

    if (v6 + 1 >= v4)
    {
      goto LABEL_44;
    }

    if (v6 + 1 >= *(v3 + 16))
    {
      goto LABEL_70;
    }

    outlined init with copy of NavigationColumnState(v3 + v5 + 392, v18);
    if (v19 > 2u)
    {
      if (v19 - 3 >= 2)
      {
LABEL_47:
        v9 = 1;
        goto LABEL_49;
      }
    }

    else if (v19)
    {
      v10 = v6 + 1;
      if (v19 != 1)
      {
        v9 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v25, v18, v10, v3) ^ 1;
        goto LABEL_49;
      }

      if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v25, v18, v10, v3) & 1) == 0)
      {
        if (v6 + 2 < *(v3 + 16))
        {
          outlined init with copy of NavigationColumnState(v3 + v5 + 752, v16);
          if (v17 > 2u)
          {
            if (v17 - 3 >= 2)
            {
LABEL_54:
              v9 = 1;
              goto LABEL_56;
            }
          }

          else if (v17)
          {
            v11 = v6 + 2;
            if (v17 != 1)
            {
              v9 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v25, v16, v11, v3) ^ 1;
              goto LABEL_56;
            }

            if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v25, v16, v11, v3) & 1) == 0)
            {
              if (v6 + 3 < *(v3 + 16))
              {
                v13 = *(v3 + 16);
                outlined init with copy of NavigationColumnState(v3 + v5 + 1112, v14);
                if (v15 > 2u)
                {
                  if (v15 - 3 >= 2)
                  {
                    goto LABEL_59;
                  }
                }

                else if (v15)
                {
                  v12 = v6 + 3;
                  if (v15 != 1)
                  {
                    v9 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v25, v14, v12, v3) ^ 1;
                    goto LABEL_61;
                  }

                  if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v25, v14, v12, v3) & 1) == 0)
                  {
                    if (v6 + 4 < v13)
                    {
                      v9 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v6 + 4, v3, v25);
LABEL_61:
                      outlined destroy of NavigationColumnState(v14);
                      goto LABEL_56;
                    }

LABEL_59:
                    v9 = 1;
                    goto LABEL_61;
                  }
                }

                v9 = 0;
                goto LABEL_61;
              }

              goto LABEL_54;
            }
          }

          v9 = 0;
LABEL_56:
          outlined destroy of NavigationColumnState(v16);
          goto LABEL_49;
        }

        goto LABEL_47;
      }
    }

    v9 = 0;
LABEL_49:
    outlined destroy of NavigationColumnState(v18);
    goto LABEL_50;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t NavigationState.StackContent.animationSeed.getter@<X0>(uint64_t a1@<X8>)
{
  result = outlined init with copy of NavigationState.Base(v1, __src);
  if (v20)
  {
    if (v20 == 1)
    {
      outlined consume of ResolvedNavigationDestinations?(__src[45]);
      memcpy(__dst, __src, 0x163uLL);
      v4 = __dst[42];
      result = outlined destroy of NavigationColumnState(__dst);
      *a1 = v4;
      return result;
    }

    v5 = __src[0];
    outlined consume of NavigationSplitViewState?(__src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = v5 + 32;
      while (1)
      {
        outlined init with copy of NavigationColumnState(v9, __dst);
        v10 = LODWORD(__dst[42]);
        v11 = HIDWORD(__dst[42]);
        outlined destroy of NavigationColumnState(__dst);
        if (v8 == 0xFFFFFFFFLL || !v10)
        {
          goto LABEL_16;
        }

        if (v8)
        {
          break;
        }

        v8 = v10;
        if (v7 != 0xFFFFFFFFLL)
        {
LABEL_17:
          if (v11)
          {
            if (!v7 || v11 == 0xFFFFFFFFLL)
            {
              v7 = v11;
            }

            else
            {
              v15 = (v11 | (v7 << 32)) + ~(v11 << 32);
              v16 = (v15 ^ (v15 >> 22)) + ~((v15 ^ (v15 >> 22)) << 13);
              v17 = (9 * (v16 ^ (v16 >> 8))) ^ ((9 * (v16 ^ (v16 >> 8))) >> 15);
              v7 = ((v17 + ~(v17 << 27)) >> 31) ^ (v17 + ~(v17 << 27));
            }
          }
        }

LABEL_8:
        v9 += 360;
        if (!--v6)
        {

          goto LABEL_25;
        }
      }

      if (v10 != 0xFFFFFFFFLL)
      {
        v12 = (v10 | (v8 << 32)) + ~(v10 << 32);
        v13 = (v12 ^ (v12 >> 22)) + ~((v12 ^ (v12 >> 22)) << 13);
        v14 = (9 * (v13 ^ (v13 >> 8))) ^ ((9 * (v13 ^ (v13 >> 8))) >> 15);
        v8 = ((v14 + ~(v14 << 27)) >> 31) ^ (v14 + ~(v14 << 27));
        if (v7 != 0xFFFFFFFFLL)
        {
          goto LABEL_17;
        }

        goto LABEL_8;
      }

      v8 = 0xFFFFFFFFLL;
LABEL_16:
      if (v7 != 0xFFFFFFFFLL)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    LODWORD(v7) = 0;
    LODWORD(v8) = 0;
LABEL_25:
    *a1 = v8;
    *(a1 + 4) = v7;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

BOOL NavigationState.StackContent.shouldAnimate(from:)(uint64_t a1)
{
  NavigationState.StackContent.animationSeed.getter(&v7);
  v2 = v7;
  outlined init with copy of NavigationState.Base?(a1, v6, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (v6[448] == 255)
  {
    outlined destroy of Binding<NavigationSplitViewColumn>(v6, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent, MEMORY[0x1E69E6720]);
    return !v2;
  }

  NavigationState.StackContent.animationSeed.getter(&v5);
  v3 = v5;
  outlined destroy of NavigationState.StackContent(v6);
  result = 0;
  if (v2 != -1 && v3 != -1 && v2 == v3)
  {
    return 1;
  }

  return result;
}

uint64_t NavigationState.StackContent.Key.debugDescription.getter(uint64_t a1, unsigned __int8 a2)
{
  _StringGuts.grow(_:)(38);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v3);

  MEMORY[0x18D00C9B0](0x3A6E6D756C6F6320, 0xE900000000000020);
  v4 = 0xE700000000000000;
  v5 = 0x72616265646973;
  v6 = 0xE500000000000000;
  v7 = 0x6B63617473;
  v8 = 0xE900000000000064;
  v9 = 0x657370616C6C6F63;
  if (a2 != 4)
  {
    v9 = 0x6F74636570736E69;
    v8 = 0xE900000000000072;
  }

  if (a2 != 3)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0xE700000000000000;
  v11 = 0x746E65746E6F63;
  if (a2 != 1)
  {
    v11 = 0x6C6961746564;
    v10 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = v11;
    v4 = v10;
  }

  if (a2 <= 2u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (a2 <= 2u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x18D00C9B0](v12, v13);

  MEMORY[0x18D00C9B0](0x436E6D756C6F6320, 0xEE00203A746E756FLL);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v14);

  MEMORY[0x18D00C9B0](62, 0xE100000000000000);
  return 0x203A64693C79654BLL;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NavigationState.StackContent.Key()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  MEMORY[0x18D00F6F0](v2);
  MEMORY[0x18D00F6F0](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NavigationState.StackContent.Key()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x18D00F6F0](*v0);
  MEMORY[0x18D00F6F0](v1);
  return MEMORY[0x18D00F6F0](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NavigationState.StackContent.Key()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  MEMORY[0x18D00F6F0](v2);
  MEMORY[0x18D00F6F0](v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance NavigationState.StackContent.ChangeKind(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v3 > 2)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 2;
  }

  else if (v2)
  {
    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t NavigationState.StackContent.Views.ViewsSequence.startIndex.getter()
{
  result = outlined init with copy of NavigationState.Base(v0, __src);
  if (!v25)
  {
    return 0;
  }

  if (v25 == 1)
  {
    outlined consume of ResolvedNavigationDestinations?(__src[45]);
    memcpy(__dst, __src, 0x163uLL);
    outlined destroy of NavigationColumnState(__dst);
    return 0;
  }

  v3 = __src[0];
  v27 = __src[9];
  v26[2] = *&__src[5];
  v26[3] = *&__src[7];
  v26[0] = *&__src[1];
  v26[1] = *&__src[3];
  v4 = *(__src[0] + 16);
  if (!v4)
  {
LABEL_62:
    outlined destroy of Binding<NavigationSplitViewColumn>(v26, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

    return 0;
  }

  v2 = 0;
  v5 = __src[0] + 1472;
  while (v2 < *(v3 + 16))
  {
    v6 = v2 + 1;
    outlined init with copy of NavigationColumnState(v5 - 1440, __dst);
    outlined init with copy of NavigationColumnState(v5 - 1440, v21);
    if (v22 > 2u)
    {
      if (v22 != 5)
      {
        goto LABEL_64;
      }

      goto LABEL_9;
    }

    if (v22 == 1)
    {
      result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v26, v21, v2, v3);
      if (result)
      {
        goto LABEL_64;
      }

      if (v6 >= v4)
      {
        goto LABEL_9;
      }

      if (v6 >= *(v3 + 16))
      {
        goto LABEL_67;
      }

      outlined init with copy of NavigationColumnState(v5 - 1080, v19);
      if (v20 > 2u)
      {
        if (v20 != 5)
        {
          goto LABEL_63;
        }

LABEL_44:
        outlined destroy of NavigationColumnState(v19);
LABEL_9:
        outlined destroy of NavigationColumnState(v21);
        goto LABEL_10;
      }

      if (v20 != 1)
      {
        if (v20 != 2)
        {
          goto LABEL_63;
        }

        v8 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v26, v19, v2 + 1, v3) ^ 1;
LABEL_50:
        outlined destroy of NavigationColumnState(v19);
        outlined destroy of NavigationColumnState(v21);
        if ((v8 & 1) == 0)
        {
          goto LABEL_65;
        }

        goto LABEL_10;
      }

      if (specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v26, v19, v2 + 1, v3))
      {
LABEL_63:
        outlined destroy of NavigationColumnState(v19);
LABEL_64:
        outlined destroy of NavigationColumnState(v21);
LABEL_65:
        outlined destroy of NavigationColumnState(__dst);

        outlined destroy of Binding<NavigationSplitViewColumn>(v26, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
        return v2;
      }

      if (v2 + 2 >= *(v3 + 16))
      {
        goto LABEL_44;
      }

      outlined init with copy of NavigationColumnState(v5 - 720, v17);
      if (v18 > 2u)
      {
        if (v18 - 3 >= 2)
        {
          goto LABEL_47;
        }
      }

      else if (v18)
      {
        v9 = v2 + 2;
        if (v18 != 1)
        {
          v8 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v26, v17, v9, v3) ^ 1;
          goto LABEL_49;
        }

        if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v26, v17, v9, v3) & 1) == 0)
        {
          if (v2 + 3 < *(v3 + 16))
          {
            outlined init with copy of NavigationColumnState(v5 - 360, v15);
            if (v16 > 2u)
            {
              if (v16 - 3 >= 2)
              {
                goto LABEL_54;
              }
            }

            else if (v16)
            {
              v10 = v2 + 3;
              if (v16 != 1)
              {
                v8 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v26, v15, v10, v3) ^ 1;
                goto LABEL_56;
              }

              if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v26, v15, v10, v3) & 1) == 0)
              {
                v11 = *(v3 + 16);
                if (v2 + 4 < v11)
                {
                  outlined init with copy of NavigationColumnState(v5, v13);
                  if (v14 > 2u)
                  {
                    if (v14 - 3 >= 2)
                    {
                      goto LABEL_59;
                    }
                  }

                  else if (v14)
                  {
                    v12 = v2 + 4;
                    if (v14 != 1)
                    {
                      v8 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v26, v13, v12, v3) ^ 1;
                      goto LABEL_61;
                    }

                    if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v26, v13, v12, v3) & 1) == 0)
                    {
                      if (v2 + 5 < v11)
                      {
                        v8 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v2 + 5, v3, v26);
                        goto LABEL_61;
                      }

LABEL_59:
                      v8 = 1;
LABEL_61:
                      outlined destroy of NavigationColumnState(v13);
LABEL_56:
                      outlined destroy of NavigationColumnState(v15);
LABEL_49:
                      outlined destroy of NavigationColumnState(v17);
                      goto LABEL_50;
                    }
                  }

                  v8 = 0;
                  goto LABEL_61;
                }

LABEL_54:
                v8 = 1;
                goto LABEL_56;
              }
            }

            v8 = 0;
            goto LABEL_56;
          }

LABEL_47:
          v8 = 1;
          goto LABEL_49;
        }
      }

      v8 = 0;
      goto LABEL_49;
    }

    if (v22 != 2)
    {
      goto LABEL_64;
    }

    v7 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v26, v21, v2, v3);
    outlined destroy of NavigationColumnState(v21);
    if (v7)
    {
      goto LABEL_65;
    }

LABEL_10:
    result = outlined destroy of NavigationColumnState(__dst);
    v5 += 360;
    ++v2;
    if (v4 == v6)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

uint64_t NavigationState.StackContent.Views.ViewsSequence.index(after:)(unint64_t a1, char a2, uint64_t a3, char a4, uint64_t *a5)
{
  v6 = v5;
  result = outlined init with copy of NavigationState.Base(v6, __src);
  if (!v41)
  {
    return 0;
  }

  if (v41 == 1)
  {
    outlined consume of ResolvedNavigationDestinations?(__src[45]);
    memcpy(__dst, __src, 0x163uLL);
    v13 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:for:)(a1, a2 & 1, a3, a4, __dst, a5[2], a5[3], a5[4], a5[5]);
    v15 = ~v14;
    outlined destroy of NavigationColumnState(__dst);
    if (v15)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  v17 = __src[0];
  v42[2] = *&__src[5];
  v42[3] = *&__src[7];
  v43 = __src[9];
  v42[0] = *&__src[1];
  v42[1] = *&__src[3];
  if ((a2 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_79;
    }

    if (*(__src[0] + 16) <= a1)
    {
LABEL_80:
      __break(1u);
    }

    else
    {
      outlined init with copy of NavigationColumnState(__src[0] + 360 * a1 + 32, __dst);
      v16 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:for:)(a1, 0, a3, a4, __dst, a5[2], a5[3], a5[4], a5[5]);
      v19 = ~v18;
      result = outlined destroy of NavigationColumnState(__dst);
      if (v19)
      {
        outlined destroy of Binding<NavigationSplitViewColumn>(v42, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

        return v16;
      }

      v20 = *(v17 + 16);
      if (v20 > a1)
      {
        if (a1 + 1 == v20)
        {

LABEL_16:
          outlined destroy of Binding<NavigationSplitViewColumn>(v42, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
          swift_bridgeObjectRelease_n();
          return 0;
        }

        v21 = a1 + 6;
        v22 = 360 * a1;
        while (1)
        {
          v16 = v21 - 5;
          if ((v21 - 5) >= v20)
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          result = outlined init with copy of NavigationColumnState(v17 + v22 + 392, __dst);
          if (v16 >= *(v17 + 16))
          {
            goto LABEL_78;
          }

          outlined init with copy of NavigationColumnState(v17 + v22 + 392, v37);
          if (v38 > 2u)
          {
            if (v38 != 5)
            {
              goto LABEL_75;
            }

            goto LABEL_19;
          }

          if (v38 == 1)
          {
            break;
          }

          if (v38 != 2)
          {
            goto LABEL_75;
          }

          v23 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v37, v21 - 5, v17);
          outlined destroy of NavigationColumnState(v37);
          if (v23)
          {
            goto LABEL_76;
          }

LABEL_20:
          result = outlined destroy of NavigationColumnState(__dst);
          ++v21;
          v22 += 360;
          if (1 - v20 + v21 == 6)
          {
            goto LABEL_16;
          }
        }

        result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v37, v21 - 5, v17);
        if (result)
        {
          goto LABEL_75;
        }

        if ((v21 - 4) >= v20)
        {
          goto LABEL_19;
        }

        if (v21 - 4 >= *(v17 + 16))
        {
          goto LABEL_82;
        }

        outlined init with copy of NavigationColumnState(v17 + v22 + 752, v35);
        if (v36 > 2u)
        {
          if (v36 != 5)
          {
            goto LABEL_74;
          }

LABEL_56:
          outlined destroy of NavigationColumnState(v35);
LABEL_19:
          outlined destroy of NavigationColumnState(v37);
          goto LABEL_20;
        }

        if (v36 != 1)
        {
          if (v36 != 2)
          {
            goto LABEL_74;
          }

          v24 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v35, v21 - 4, v17) ^ 1;
LABEL_62:
          outlined destroy of NavigationColumnState(v35);
          outlined destroy of NavigationColumnState(v37);
          if ((v24 & 1) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_20;
        }

        result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v35, v21 - 4, v17);
        if (result)
        {
LABEL_74:
          outlined destroy of NavigationColumnState(v35);
LABEL_75:
          outlined destroy of NavigationColumnState(v37);
LABEL_76:
          outlined destroy of NavigationColumnState(__dst);

          outlined destroy of Binding<NavigationSplitViewColumn>(v42, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

          return v16;
        }

        if (v21 - 3 >= v20)
        {
          goto LABEL_56;
        }

        if (v21 - 3 >= *(v17 + 16))
        {
          goto LABEL_83;
        }

        outlined init with copy of NavigationColumnState(v17 + v22 + 1112, v33);
        if (v34 > 2u)
        {
          if (v34 - 3 >= 2)
          {
LABEL_59:
            v24 = 1;
            goto LABEL_61;
          }
        }

        else if (v34)
        {
          v25 = v21 - 3;
          if (v34 != 1)
          {
            v24 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v33, v25, v17) ^ 1;
            goto LABEL_61;
          }

          if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v33, v25, v17) & 1) == 0)
          {
            if (v21 - 2 < *(v17 + 16))
            {
              outlined init with copy of NavigationColumnState(v17 + v22 + 1472, v31);
              if (v32 > 2u)
              {
                if (v32 - 3 >= 2)
                {
LABEL_66:
                  v24 = 1;
                  goto LABEL_68;
                }
              }

              else if (v32)
              {
                v26 = v21 - 2;
                if (v32 != 1)
                {
                  v24 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v31, v26, v17) ^ 1;
                  goto LABEL_68;
                }

                if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v31, v26, v17) & 1) == 0)
                {
                  v27 = *(v17 + 16);
                  if (v21 - 1 < v27)
                  {
                    outlined init with copy of NavigationColumnState(v17 + v22 + 1832, v29);
                    if (v30 > 2u)
                    {
                      if (v30 - 3 >= 2)
                      {
                        goto LABEL_71;
                      }
                    }

                    else if (v30)
                    {
                      v28 = v21 - 1;
                      if (v30 != 1)
                      {
                        v24 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v29, v28, v17) ^ 1;
                        goto LABEL_73;
                      }

                      if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v29, v28, v17) & 1) == 0)
                      {
                        if (v21 < v27)
                        {
                          v24 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v21, v17, v42);
LABEL_73:
                          outlined destroy of NavigationColumnState(v29);
                          goto LABEL_68;
                        }

LABEL_71:
                        v24 = 1;
                        goto LABEL_73;
                      }
                    }

                    v24 = 0;
                    goto LABEL_73;
                  }

                  goto LABEL_66;
                }
              }

              v24 = 0;
LABEL_68:
              outlined destroy of NavigationColumnState(v31);
              goto LABEL_61;
            }

            goto LABEL_59;
          }
        }

        v24 = 0;
LABEL_61:
        outlined destroy of NavigationColumnState(v33);
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t NavigationState.StackContent.Views.ViewsSequence.index(before:)(unint64_t a1, char a2, uint64_t a3, char a4, uint64_t *a5)
{
  result = outlined init with copy of NavigationState.Base(v5, __src);
  if (!v39)
  {
    return NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  }

  if (v39 != 1)
  {
    v14 = __src[0];
    v40[2] = *&__src[5];
    v40[3] = *&__src[7];
    v41 = __src[9];
    v40[0] = *&__src[1];
    v40[1] = *&__src[3];
    if (a2)
    {
      a1 = *(__src[0] + 16);
    }

    else
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_77;
      }

      if (*(__src[0] + 16) <= a1)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      outlined init with copy of NavigationColumnState(__src[0] + 360 * a1 + 32, __dst);
      v13 = specialized NavigationState.StackContent.Views.ViewsSequence.index(before:for:)(a1, 0, a3, a4, __dst, a5[2], a5[3], a5[4], a5[5]);
      v17 = ~v16;
      result = outlined destroy of NavigationColumnState(__dst);
      if (v17)
      {
        outlined destroy of Binding<NavigationSplitViewColumn>(v40, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

        return v13;
      }
    }

    if (!a1)
    {
LABEL_74:

      v13 = NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
      outlined destroy of Binding<NavigationSplitViewColumn>(v40, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      return v13;
    }

    v18 = a1 - 1;
    v19 = 360 * a1;
    while (1)
    {
      if (v18 >= *(v14 + 16))
      {
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      outlined init with copy of NavigationColumnState(v14 + v19 - 328, __dst);
      if (__dst[24] > 2u)
      {
        if (__dst[24] - 3 >= 2)
        {
          goto LABEL_18;
        }
      }

      else if (__dst[24])
      {
        if (__dst[24] != 1)
        {
          v28 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v40, __dst, v18, v14);
          result = outlined destroy of NavigationColumnState(__dst);
          if ((v28 & 1) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_50;
        }

        if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v40, __dst, v18, v14) & 1) == 0)
        {
          v20 = *(v14 + 16);
          if (v18 + 1 >= v20)
          {
            goto LABEL_18;
          }

          outlined init with copy of NavigationColumnState(v14 + v19 + 32, v35);
          if (v36 > 2u)
          {
            if (v36 - 3 >= 2)
            {
LABEL_17:
              outlined destroy of NavigationColumnState(v35);
LABEL_18:
              result = outlined destroy of NavigationColumnState(__dst);
              goto LABEL_19;
            }
          }

          else if (v36)
          {
            v21 = v18 + 1;
            if (v36 != 1)
            {
              v25 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v40, v35, v21, v14) ^ 1;
              goto LABEL_57;
            }

            result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v40, v35, v21, v14);
            if ((result & 1) == 0)
            {
              if (v18 + 2 >= v20)
              {
                goto LABEL_17;
              }

              if (v18 + 2 >= *(v14 + 16))
              {
                goto LABEL_79;
              }

              outlined init with copy of NavigationColumnState(v14 + v19 + 392, v33);
              if (v34 > 2u)
              {
                if (v34 - 3 >= 2)
                {
                  goto LABEL_61;
                }
              }

              else if (v34)
              {
                v22 = v18 + 2;
                if (v34 != 1)
                {
                  v25 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v40, v33, v22, v14) ^ 1;
                  goto LABEL_63;
                }

                if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v40, v33, v22, v14) & 1) == 0)
                {
                  if (v18 + 3 < *(v14 + 16))
                  {
                    outlined init with copy of NavigationColumnState(v14 + v19 + 752, v31);
                    if (v32 > 2u)
                    {
                      if (v32 - 3 >= 2)
                      {
                        goto LABEL_66;
                      }
                    }

                    else if (v32)
                    {
                      v23 = v18 + 3;
                      if (v32 != 1)
                      {
                        v25 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v40, v31, v23, v14) ^ 1;
                        goto LABEL_68;
                      }

                      if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v40, v31, v23, v14) & 1) == 0)
                      {
                        if (v18 + 4 < *(v14 + 16))
                        {
                          outlined init with copy of NavigationColumnState(v14 + v19 + 1112, v29);
                          if (v30 > 2u)
                          {
                            if (v30 - 3 >= 2)
                            {
                              goto LABEL_71;
                            }
                          }

                          else if (v30)
                          {
                            v24 = v18 + 4;
                            if (v30 != 1)
                            {
                              v25 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v40, v29, v24, v14) ^ 1;
                              goto LABEL_73;
                            }

                            if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v40, v29, v24, v14) & 1) == 0)
                            {
                              if (v18 + 5 < *(v14 + 16))
                              {
                                v25 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v18 + 5, v14, v40);
                                goto LABEL_73;
                              }

LABEL_71:
                              v25 = 1;
LABEL_73:
                              outlined destroy of NavigationColumnState(v29);
LABEL_68:
                              outlined destroy of NavigationColumnState(v31);
LABEL_63:
                              outlined destroy of NavigationColumnState(v33);
LABEL_57:
                              outlined destroy of NavigationColumnState(v35);
                              result = outlined destroy of NavigationColumnState(__dst);
                              if (v25)
                              {
                                goto LABEL_19;
                              }

                              goto LABEL_50;
                            }
                          }

                          v25 = 0;
                          goto LABEL_73;
                        }

LABEL_66:
                        v25 = 1;
                        goto LABEL_68;
                      }
                    }

                    v25 = 0;
                    goto LABEL_68;
                  }

LABEL_61:
                  v25 = 1;
                  goto LABEL_63;
                }
              }

              v25 = 0;
              goto LABEL_63;
            }
          }

          outlined destroy of NavigationColumnState(v35);
        }
      }

      outlined destroy of NavigationColumnState(__dst);
LABEL_50:
      outlined init with copy of NavigationColumnState(v14 + v19 - 328, __dst);
      v13 = specialized NavigationState.StackContent.Views.ViewsSequence.lastIndex(for:stateIndex:)(__dst, v18);
      v27 = ~v26;
      result = outlined destroy of NavigationColumnState(__dst);
      if (v27)
      {
        outlined destroy of Binding<NavigationSplitViewColumn>(v40, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

        return v13;
      }

LABEL_19:
      --v18;
      v19 -= 360;
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_74;
      }
    }
  }

  outlined consume of ResolvedNavigationDestinations?(__src[45]);
  outlined init with copy of NavigationColumnState(__src, __dst);
  if (a2)
  {
    result = specialized NavigationState.StackContent.Views.ViewsSequence.lastIndex(for:stateIndex:)(__dst, 0);
    if (v12 != -1)
    {
      v13 = result;
      outlined destroy of NavigationColumnState(__dst);
      outlined destroy of NavigationColumnState(__src);
      return v13;
    }

    goto LABEL_80;
  }

  outlined destroy of NavigationColumnState(__dst);
  memcpy(__dst, __src, 0x163uLL);
  result = specialized NavigationState.StackContent.Views.ViewsSequence.index(before:for:)(a1, 0, a3, a4, __dst, a5[2], a5[3], a5[4], a5[5]);
  if (v15 != -1)
  {
    v13 = result;
    outlined destroy of NavigationColumnState(__dst);
    return v13;
  }

LABEL_81:
  __break(1u);
  return result;
}

void NavigationState.StackContent.Views.ViewsSequence.subscript.getter(unint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v13 = outlined init with copy of NavigationState.Base(v6, v21);
  if (!v24)
  {
    NavigationState.StackContent.Views.ViewsSequence.nonReplacedRoot(stateIndex:baseDepth:key:isStacked:)(0, 0, v21[0], v21[1], v21[2], a5, a6);
    return;
  }

  if (v24 != 1)
  {
    v14 = v21[0];
    v25[2] = *&v21[5];
    v25[3] = *&v21[7];
    v26 = v21[9];
    v25[0] = *&v21[1];
    v25[1] = *&v21[3];
    if (a2)
    {
LABEL_17:
      __break(1u);
LABEL_18:
      LODWORD(v19) = 0;
      v18 = 894;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v21[0] + 16) >= a1)
    {
      v20[0] = v21[0];
      MEMORY[0x1EEE9AC00](v13);
      v18 = v20;
      v19 = v25;
      v15 = specialized Sequence.reduce<A>(_:_:)(0, partial apply for specialized closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:), &v17, 0, a1);
      if (*(v14 + 16) > a1)
      {
        v16 = v15;
        outlined init with copy of NavigationColumnState(v14 + 360 * a1 + 32, v20);

        NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)(a1, 0, a3, a4, v20, v16, a5, a6);
        outlined destroy of Binding<NavigationSplitViewColumn>(v25, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
        goto LABEL_12;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v23;
  v17 = v22;
  outlined consume of ResolvedNavigationDestinations?(v21[45]);
  memcpy(v20, v21, 0x163uLL);
  if ((a2 & 1) != 0 || a1)
  {
    goto LABEL_18;
  }

  NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)(0, 0, a3, a4, v20, 0, a5, a6);
LABEL_12:
  outlined destroy of NavigationColumnState(v20);
}

uint64_t NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v17 = outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v106);
  if (!a4)
  {
    if ((v113 & 1) == 0)
    {
      v37 = v110;

      v38 = a3 + 1;
      if (!__OFADD__(a3, 1))
      {
        v39 = *(a5 + 248);
        v40 = *(a5 + 296);
        v41 = *(a5 + 264);
        v116 = *(a5 + 280);
        v117 = v40;
        v42 = *(a5 + 296);
        v118 = *(a5 + 312);
        v43 = *(a5 + 264);
        v114 = v39;
        v115 = v43;
        v119 = *(a5 + 328);
        v100 = v116;
        v101 = v42;
        v102 = *(a5 + 312);
        v103 = *(a5 + 328);
        v98 = *(a5 + 248);
        v99 = v41;
        v44 = a6 + v38;
        if (!__OFADD__(a6, v38))
        {
          v45 = *(a5 + 32);
          v46 = a8;
          v47 = *(a5 + 24);
          v48 = *(a5 + 16);
          v51 = v8 + 456;
          v49 = *(v8 + 456);
          v50 = *(v51 + 8);
          *&v120 = a3 + 1;
          *(&v120 + 1) = v48;
          LOBYTE(v121) = v47;
          *(&v121 + 1) = v45;
          v122 = v44;
          v123 = 1;
          outlined init with copy of ResolvedNavigationDestinations(&v114, &v91);
          v52 = AnyNavigationPath.view<A>(basedOn:applying:index:apparentPosition:)(v104, &v98, v49, v50, a3, &v120, v37, a7[3], a7[5]);
          v93 = v100;
          v94 = v101;
          v95 = v102;
          v96 = v103;
          v91 = v98;
          v92 = v99;
          outlined destroy of ResolvedNavigationDestinations(&v91);
          if (v47 >= 3)
          {
            LOBYTE(v47) = 3;
          }

          v53 = __swift_project_boxed_opaque_existential_1(v104, v104[3]);
          v54 = MEMORY[0x1EEE9AC00](v53);
          (*(v56 + 16))(v84 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v54);
          AnyHashable.init<A>(_:)();

          *(v46 + 88) = 0;
          *v46 = v52;
          *(v46 + 8) = v47;
          *(v46 + 16) = v38;
          __swift_destroy_boxed_opaque_existential_1(v104);
          return outlined destroy of Binding<NavigationSplitViewColumn>(v106, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
        }

        goto LABEL_45;
      }

      goto LABEL_43;
    }

LABEL_53:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a4 == 1)
  {
    if ((v113 & 1) == 0)
    {
      v18 = v8;
      v19 = v110;
      v20 = v111;
      v21 = v112;
      v22 = (*(*v110 + 88))(v17);
      v23 = v22 + 1;
      if (!__OFADD__(v22, 1))
      {
        v24 = v23 + a3;
        if (!__OFADD__(v23, a3))
        {
          if ((a3 & 0x8000000000000000) == 0)
          {
            if (*(v20 + 16) > a3)
            {
              v25 = a6 + v24;
              if (!__OFADD__(a6, v24))
              {
                v84[1] = v21;
                v85 = v19;
                v86 = a8;
                v26 = *(a5 + 32);
                v27 = *(a5 + 24);
                v28 = v20 + 88 * a3;
                v29 = *(a5 + 16);
                v30 = *(v28 + 32);
                *&v114 = v24;
                *(&v114 + 1) = v29;
                LOBYTE(v115) = v27;
                *(&v115 + 1) = v26;
                *&v116 = v25;
                BYTE8(v116) = 1;
                v31 = *(v18 + 456);
                v32 = *(v18 + 464);
                v33 = a7[3];
                v34 = a7[5];
                v84[0] = v24;

                v35 = AnyNavigationLinkPresentedView.view<A>(at:applying:)(&v114, v31, v32, v30, v33, v34);

                if (*(v20 + 16) > a3)
                {
                  if (v27 >= 3)
                  {
                    LOBYTE(v27) = 3;
                  }

                  outlined init with copy of NavigationViewDestinationView(v28 + 32, &v91);

                  v36 = v86;
                  outlined init with copy of NavigationLinkSelectionIdentifier(&v91 + 8, v86 + 24);
                  outlined destroy of NavigationViewDestinationView(&v91);
                  *(v86 + 88) = 1;
                  *v36 = v35;
                  *(v36 + 8) = v27;
                  *(v36 + 16) = v84[0];
                  return outlined destroy of Binding<NavigationSplitViewColumn>(v106, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
                }

                goto LABEL_49;
              }

LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        goto LABEL_44;
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    goto LABEL_53;
  }

  if (!v113)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v106, &v91);

    if (v97 != 255)
    {
      if ((v97 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_32:
      v86 = a8;
      v116 = v93;
      v117 = v94;
      v118 = v95;
      v119 = v96;
      v114 = v91;
      v115 = v92;
      outlined destroy of NavigationColumnState.ColumnContent(v106);
      v71 = v114;
      v72 = *(a5 + 16);
      v73 = *(a5 + 24);
      v74 = *(a5 + 32);
      outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v105);
      v75 = v111;
      if ((v111 & 1) == 0)
      {
      }

      outlined destroy of Binding<NavigationSplitViewColumn>(v105, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      v105[0] = 0;
      v105[1] = v72;
      v106[0] = v73;
      v107 = v74;
      v108 = a6;
      v109 = v75 ^ 1;
      v76 = NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)(v72, v73, v74, a7);
      v78 = v77;
      v79 = type metadata accessor for ModifiedContent();
      v87 = a7[5];
      v88 = &protocol witness table for ReplacedRootDismissModifier;
      WitnessTable = swift_getWitnessTable();
      v81 = AnyNavigationLinkPresentedView.view<A>(at:applying:)(v105, v76, v78, v71, v79, WitnessTable);

      if (v73 >= 3)
      {
        v82 = 3;
      }

      else
      {
        v82 = v73;
      }

      v83 = v86;
      outlined init with copy of NavigationLinkSelectionIdentifier(&v114 + 8, v86 + 24);
      result = outlined destroy of NavigationViewDestinationView(&v114);
      *(v86 + 88) = 1;
      *v83 = v81;
      *(v83 + 8) = v82;
      *(v83 + 16) = 0;
      return result;
    }

    if (a2)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_41:
    NavigationState.StackContent.Views.ViewsSequence.nonReplacedRoot(stateIndex:baseDepth:key:isStacked:)(a1, a6, *(a5 + 16), *(a5 + 24), *(a5 + 32), a7, a8);
    return outlined destroy of NavigationColumnState.ColumnContent(v106);
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v106, &v91);
  if (v97 == 255)
  {
    if (a2)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    goto LABEL_41;
  }

  if (v97)
  {
    goto LABEL_32;
  }

LABEL_23:
  v120 = v91;
  v121 = v92;
  v122 = v93;
  v86 = a8;
  outlined destroy of NavigationColumnState.ColumnContent(v106);
  if (a2)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  NavigationState.StackContent.Views.ViewsSequence.destinations(before:)(a1, &v91);
  v58 = *(a5 + 16);
  v59 = *(a5 + 24);
  v60 = *(a5 + 32);
  v85 = NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)(v58, *(a5 + 24), v60, a7);
  v62 = v61;
  outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v105);
  v63 = v111;
  if ((v111 & 1) == 0)
  {
  }

  outlined destroy of Binding<NavigationSplitViewColumn>(v105, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  *&v98 = 0;
  *(&v98 + 1) = v58;
  LOBYTE(v99) = v59;
  *(&v99 + 1) = v60;
  *&v100 = a6;
  BYTE8(v100) = v63 ^ 1;
  v64 = type metadata accessor for ModifiedContent();
  v89 = a7[5];
  v90 = &protocol witness table for ReplacedRootDismissModifier;
  v65 = swift_getWitnessTable();
  v66 = AnyNavigationLinkPresentedValue.view<A>(basedOn:applying:apparentPosition:)(&v91, v85, v62, &v98, v64, v65);
  v116 = v93;
  v117 = v94;
  v118 = v95;
  v119 = v96;
  v114 = v91;
  v115 = v92;
  outlined destroy of ResolvedNavigationDestinations(&v114);

  if (v59 >= 3)
  {
    v67 = 3;
  }

  else
  {
    v67 = v59;
  }

  v68 = *(&v121 + 1);
  v69 = v122;
  __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
  v70 = v86;
  (*(v69 + 24))(v68, v69);
  result = outlined destroy of AnyNavigationLinkPresentedValue(&v120);
  *(v86 + 88) = 0;
  *v70 = v66;
  *(v70 + 8) = v67;
  *(v70 + 16) = 0;
  return result;
}

double NavigationState.StackContent.Views.ViewsSequence.nonReplacedRoot(stateIndex:baseDepth:key:isStacked:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, void *a6@<X6>, uint64_t a7@<X8>)
{
  v25 = a2;
  v26 = a5;
  v13 = a4;
  v14 = type metadata accessor for _VariadicView.Tree();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  NavigationState.StackContent.Views.ViewsSequence.formattedRoot(_:)(a1);
  v29[0] = 0;
  v29[1] = a3;
  v30 = a4;
  v31 = v26;
  v32 = v25;
  v33 = v13 == 3;
  v19 = *(v7 + 456);
  v18 = *(v7 + 464);
  v21 = a6[3];
  v20 = a6[4];
  v27 = MEMORY[0x1E697E2E8];
  v28 = v20;
  if (v13 >= 3)
  {
    LOBYTE(v13) = 3;
  }

  WitnessTable = swift_getWitnessTable();
  v23 = specialized static ResolvedNavigationDestinations.prepareToPresent<A, B>(view:at:shouldUpdateDestinations:applying:)(v17, v29, v19, v18, v14, v21, WitnessTable, a6[5]);
  (*(v15 + 8))(v17, v14);
  result = 0.0;
  *(a7 + 72) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 40) = 0u;
  *(a7 + 24) = 0u;
  *(a7 + 88) = 2;
  *a7 = v23;
  *(a7 + 8) = v13;
  *(a7 + 16) = 0;
  return result;
}

uint64_t (*NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  (*(*(a4 - 8) + 16))(v12, v4, a4);
  v9 = swift_allocObject();
  v10 = *(a4 + 32);
  *(v9 + 16) = *(a4 + 16);
  *(v9 + 32) = v10;
  memcpy((v9 + 48), v12, 0x1E0uLL);
  *(v9 + 528) = a1;
  *(v9 + 536) = a2;
  *(v9 + 544) = a3;
  return partial apply for closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:);
}

uint64_t NavigationState.StackContent.Views.ViewsSequence.destinations(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  outlined init with copy of NavigationState.Base(v3, v29);
  if (v30 == 1)
  {
    outlined init with copy of NavigationState.Base(v29, v27);
    v13[3] = *&v28[48];
    v13[4] = *&v28[64];
    v14 = *&v28[80];
    v13[0] = *v28;
    v13[1] = *&v28[16];
    v13[2] = *&v28[32];
    if (!*v28)
    {
LABEL_12:
      outlined destroy of NavigationColumnState(v27);
      goto LABEL_14;
    }

    if (!a1)
    {
      *a2 = *&v13[0];
      v6 = *&v28[8];
      *(a2 + 24) = *&v28[24];
      v7 = *&v28[56];
      *(a2 + 40) = *&v28[40];
      *(a2 + 56) = v7;
      *(a2 + 72) = *&v28[72];
      *(a2 + 8) = v6;
      outlined destroy of NavigationColumnState(v27);
      return outlined destroy of NavigationState.Base(v29);
    }

LABEL_11:
    outlined destroy of Binding<NavigationSplitViewColumn>(v13, &lazy cache variable for type metadata for ResolvedNavigationDestinations?, &type metadata for ResolvedNavigationDestinations, MEMORY[0x1E69E6720]);
    goto LABEL_12;
  }

  if (v30 == 2)
  {
    outlined init with copy of NavigationState.Base(v29, v27);
    v8 = v27[0];
    outlined consume of NavigationSplitViewState?(v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8]);
    if (a1 < 1)
    {

      goto LABEL_14;
    }

    if (*(v8 + 16) >= a1)
    {
      outlined init with copy of NavigationColumnState(v8 + 360 * a1 - 328, v13);

      v23 = v17;
      v24 = v18;
      v25 = v19;
      v26 = v20;
      v21 = v15;
      v22 = v16;
      outlined init with copy of ResolvedNavigationDestinations(&v21, v12);
      outlined destroy of NavigationColumnState(v13);
      v9 = v24;
      *(a2 + 32) = v23;
      *(a2 + 48) = v9;
      *(a2 + 64) = v25;
      *(a2 + 80) = v26;
      v10 = v22;
      *a2 = v21;
      *(a2 + 16) = v10;
      return outlined destroy of NavigationState.Base(v29);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t NavigationState.StackContent.Views.ViewsSequence.formattedRoot(_:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  static HorizontalAlignment.center.getter();
  Array.subscript.getter();
  return _VariadicView.Tree.init(root:content:)();
}

uint64_t closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a7 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 456))(v14);
  v20 = a3;
  v21 = a4;
  v22 = a5;
  MEMORY[0x18D003AC0](&v20, a7, &type metadata for ReplacedRootDismissModifier, a9);
  return (*(v13 + 8))(v16, a7);
}

uint64_t static NavigationState.StackContent.Views.ViewsSequence.Index.< infix(_:_:)(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if (a6)
  {
    return (a2 ^ 1) & 1;
  }

  if (a2)
  {
    return 0;
  }

  if (a1 < a5)
  {
    return 1;
  }

  if (a5 < a1)
  {
    return 0;
  }

  if (a4)
  {
    v10 = a8 == 1 && a3 < a7;
    v12 = a8 != 2 || a7 != 0;
    if (a4 == 1)
    {
      return v10;
    }

    else
    {
      return v12;
    }
  }

  else if (a8)
  {
    return a8 == 1;
  }

  else
  {
    return a3 < a7;
  }
}

BOOL static NavigationState.StackContent.Views.ViewsSequence.Index.Kind.< infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v5 = a4 == 1 && a1 < a3;
    v7 = a4 != 2 || a3 != 0;
    if (a2 == 1)
    {
      return v5;
    }

    else
    {
      return v7;
    }
  }

  else if (a4)
  {
    return a4 == 1;
  }

  else
  {
    return a1 < a3;
  }
}

uint64_t static NavigationState.StackContent.Views.ViewsSequence.Index.Kind.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        return 0;
      }

      return a1 == a3;
    }

    if (a4 == 2 && !a3)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return a1 == a3;
  }

  return 0;
}

BOOL static NavigationState.StackContent.Views.ViewsSequence.Index.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (a4)
    {
      if (a4 != 1)
      {
        return a8 == 2 && !a7;
      }

      if (a8 != 1)
      {
        return 0;
      }
    }

    else if (a8)
    {
      return 0;
    }

    return a3 == a7;
  }

  result = 0;
  if ((a6 & 1) == 0 && a1 == a5)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>@<X0>(uint64_t a1@<X8>)
{
  result = NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>@<X0>(uint64_t a1@<X8>)
{
  result = specialized NavigationState.StackContent.Views.ViewsSequence.endIndex.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(uint64_t **a1, uint64_t a2, void *a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = NavigationState.StackContent.Views.ViewsSequence.subscript.read(v6, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), a3);
  return protocol witness for Collection.subscript.read in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>;
}

void (*NavigationState.StackContent.Views.ViewsSequence.subscript.read(uint64_t *a1, unint64_t a2, char a3, unint64_t a4, char a5, void *a6))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x59uLL);
  }

  *a1 = v12;
  NavigationState.StackContent.Views.ViewsSequence.subscript.getter(a2, a3 & 1, a4, a5, a6, v12);
  return NavigationState.StackContent.Views.ViewsSequence.subscript.read;
}

void NavigationState.StackContent.Views.ViewsSequence.subscript.read(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of NavigationState.StackContent.PositionedView(*a1);

  free(v1);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:)();
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE68B98](a1, a2, a3, a4, WitnessTable);
}

void protocol witness for Collection.distance(from:to:) in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>()
{
  swift_getWitnessTable();

  JUMPOUT(0x18D00C6C0);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void, void, void, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  result = a3(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void, void, uint64_t))
{
  result = a4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2);
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  v6 = NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = (*(v5 + 8))(v2, a1);
  *(a2 + 480) = v6;
  *(a2 + 488) = v8 & 1;
  *(a2 + 496) = v10;
  *(a2 + 504) = v12;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = specialized Collection._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t NavigationState.ListKey.description.getter()
{
  _StringGuts.grow(_:)(50);
  MEMORY[0x18D00C9B0](0x3A79654B7473694CLL, 0xEE00203A64695B20);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD3DDC0);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x18D00C9B0](v1, v2);

  MEMORY[0x18D00C9B0](0x6B636174735B205DLL, 0xED0000203A79654BLL);
  v3 = *(v0 + 16);
  if (v3 == 6)
  {
    v4 = 0xEB0000000079654BLL;
    v5 = 0x6B63617453206F4ELL;
  }

  else
  {
    v5 = NavigationState.StackContent.Key.debugDescription.getter(*(v0 + 8), v3);
    v4 = v6;
  }

  MEMORY[0x18D00C9B0](v5, v4);

  return 0;
}

Swift::Int NavigationState.ListKey.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v2);
  if (v3 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](v1);
    MEMORY[0x18D00F6F0](v3);
    MEMORY[0x18D00F6F0](v4);
  }

  Hasher._combine(_:)(v0[4] & 1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance NavigationState.ListKey()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  MEMORY[0x18D00F6F0](*v0);
  if (v2 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](v1);
    MEMORY[0x18D00F6F0](v2);
    MEMORY[0x18D00F6F0](v3);
  }

  Hasher._combine(_:)(v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NavigationState.ListKey()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v2);
  if (v3 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](v1);
    MEMORY[0x18D00F6F0](v3);
    MEMORY[0x18D00F6F0](v4);
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NavigationState.ListKey(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == 6)
  {
    if (v3 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == 6)
    {
      return 0;
    }

    v4 = (v3 ^ v2);
    v5 = *(a1 + 8) == *(a2 + 8) && v4 == 0;
    if (!v5 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  return *(a1 + 32) ^ *(a2 + 32) ^ 1u;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  outlined init with copy of ToolbarPlacement.Role(a2, v5);
  v5[13] = specialized Dictionary._Variant.asNative.modify(v5 + 5);
  v5[14] = specialized _NativeDictionary.subscript.modify(v5 + 9, v5, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xD0uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  outlined init with copy of IdentifiedDocumentGroupConfiguration(a2, v5);
  v5[24] = specialized Dictionary._Variant.asNative.modify(v5 + 16);
  v5[25] = specialized _NativeDictionary.subscript.modify(v5 + 20, v5, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = specialized Dictionary._Variant.asNative.modify(v9);
  v9[9] = specialized _NativeDictionary.subscript.modify(v9 + 4, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, unint64_t a2, unint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = specialized Dictionary._Variant.asNative.modify(v7);
  v7[9] = specialized _NativeDictionary.subscript.modify(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = specialized Dictionary._Variant.asNative.modify(v5);
  v5[9] = specialized _NativeDictionary.subscript.modify(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[8] = specialized Dictionary._Variant.asNative.modify(v11);
  v11[9] = specialized _NativeDictionary.subscript.modify(v11 + 4, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, Swift::UInt32 a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = specialized Dictionary._Variant.asNative.modify(v5);
  v5[9] = specialized _NativeDictionary.subscript.modify(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x1F8uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 480) = a2;
  *(v8 + 488) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 73) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 496) = v11;
  if (v17)
  {
    memmove((v9 + 160), (*(*v4 + 56) + 80 * v11), 0x49uLL);
  }

  else
  {
    *(v9 + 160) = xmmword_18CD633F0;
    *(v9 + 176) = 0u;
    *(v9 + 192) = 0u;
    *(v9 + 208) = 0u;
    *(v9 + 217) = 0u;
  }

  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 240);
  v4 = (*a1 + 320);
  v5 = *(*a1 + 176);
  v2[15] = *(*a1 + 160);
  v2[16] = v5;
  v6 = v2[13];
  v2[17] = v2[12];
  v2[18] = v6;
  *(v3 + 57) = *(v2 + 217);
  v7 = *(v2 + 31);
  if (a2)
  {
    if (v7 != 1)
    {
      v8 = *(v2 + 61);
      v9 = *(v2 + 62);
      if ((*(v2 + 73) & 1) == 0)
      {
        v10 = *v8;
        outlined init with copy of ToolbarPlacement.Role(*(v2 + 60), v4);
        v11 = v3[3];
        v2[2] = v3[2];
        v2[3] = v11;
        *(v2 + 57) = *(v3 + 57);
        v12 = v3[1];
        *v2 = *v3;
        v2[1] = v12;
        v13 = v9;
        v14 = v4;
        v15 = v2;
LABEL_11:
        specialized _NativeDictionary._insert(at:key:value:)(v13, v14, v15, v10);
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if (v7 != 1)
  {
    v8 = *(v2 + 61);
    v9 = *(v2 + 62);
    if ((*(v2 + 73) & 1) == 0)
    {
      v10 = *v8;
      outlined init with copy of ToolbarPlacement.Role(*(v2 + 60), v4);
      v18 = v3[3];
      v2[7] = v3[2];
      v2[8] = v18;
      *(v2 + 137) = *(v3 + 57);
      v19 = v3[1];
      v2[5] = *v3;
      v2[6] = v19;
      v15 = v2 + 5;
      v13 = v9;
      v14 = v4;
      goto LABEL_11;
    }

LABEL_9:
    memmove((*(*v8 + 56) + 80 * v9), v2 + 10, 0x49uLL);
    goto LABEL_12;
  }

  if (*(v2 + 73))
  {
    v16 = *(v2 + 62);
    v17 = **(v2 + 61);
    outlined destroy of ToolbarPlacement.Role(*(v17 + 48) + 40 * v16);
    specialized _NativeDictionary._delete(at:)(v16, v17);
  }

LABEL_12:
  v20 = v2[13];
  v4[2] = v2[12];
  v4[3] = v20;
  *(v4 + 57) = *(v2 + 217);
  v21 = v2[11];
  *v4 = v2[10];
  v4[1] = v21;
  outlined init with copy of NavigationState.Base?(v3, (v2 + 25), &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration);
  outlined destroy of Binding<NavigationSplitViewColumn>(v4, &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration, MEMORY[0x1E69E6720]);

  free(v2);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, char a5))(uint64_t *a1)
{
  v6 = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x28uLL);
  }

  v13 = v12;
  *a1 = v12;
  *(v12 + 8) = a3;
  *(v12 + 16) = v5;
  *(v12 + 34) = a4;
  *v12 = a2;
  v14 = *v5;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
  *(v13 + 35) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a5 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v13 + 24) = v15;
  if (v21)
  {
    v25 = *(*(*v6 + 56) + 2 * v15);
  }

  else
  {
    v25 = 3;
  }

  *(v13 + 32) = v25;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, unint64_t a2, unint64_t a3, char a4))(void ***a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 48) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  v23 = 0uLL;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 16 * v13);
  }

  *v11 = v23;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = **a1;
  v4 = *(*a1 + 48);
  v5 = (*a1)[1];
  if (v3)
  {
    v6 = v1[5];
    v7 = *v1[4];
    if (v4)
    {
      *(v7[7] + 16 * v6) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v6, v1[2], v1[3], v3, v5, v7);
    }
  }

  else if ((*a1)[6])
  {
    specialized _NativeDictionary._delete(at:)(v1[5], *v1[4]);
  }

  v8 = *v1;
  outlined copy of DisplayList.AccessibilityUpdater.CacheValue?(v3);
  outlined consume of DisplayList.AccessibilityUpdater.CacheValue?(v8);

  free(v1);
}

{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 65);
  if (v2)
  {
    v6 = v1[7];
    if (v5)
    {
      v7 = (*(*v1[6] + 56) + 24 * v6);
      *v7 = v2;
      v7[1] = v3;
      v7[2] = v4;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v6, v1[3], v1[4], v1[5], *(v1 + 64), v2, v3, v4, *v1[6]);
    }
  }

  else if (*(*a1 + 65))
  {
    v8 = v1[7];
    v9 = *v1[6];
    outlined destroy of KeyboardShortcut(*(v9 + 48) + 32 * v8);
    specialized _NativeDictionary._delete(at:)(v8, v9);
  }

  v10 = *v1;
  outlined copy of KeyboardShortcutBridge.Shortcut?(v2);
  outlined consume of KeyboardShortcutBridge.Shortcut?(v10);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(char **a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xA0uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 136) = a2;
  *(v8 + 144) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 33) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 152) = v11;
  if (v17)
  {
    v21 = *(*v4 + 56) + 16 * v11;
    v22 = *v21;
    v23 = *(v21 + 8) | (*(v21 + 9) << 8);
  }

  else
  {
    v22 = 0;
    v23 = 768;
  }

  *(v9 + 120) = v22;
  *(v9 + 128) = v23;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 15);
  v4 = *(*a1 + 64);
  v5 = v4 & 0xFF00;
  v6 = (*a1)[33];
  if (a2)
  {
    if (v5 != 768)
    {
      v7 = *(v2 + 19);
      v8 = **(v2 + 18);
      if ((v6 & 1) == 0)
      {
        v9 = *(v2 + 17);
        specialized _NativeDictionary._insert(at:key:value:)(v7, v9, v3, v4 & 0xFF01, v8);
        v10 = *v9;
        v11 = *(v9 + 16);
        v2[32] = *(v9 + 32);
        *v2 = v10;
        *(v2 + 1) = v11;
        v12 = (v2 + 80);
        v13 = v2;
LABEL_11:
        outlined init with copy of TableColumnCustomizationID.Base(v13, v12);
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if (v5 != 768)
  {
    v7 = *(v2 + 19);
    v8 = **(v2 + 18);
    if ((v6 & 1) == 0)
    {
      v17 = *(v2 + 17);
      specialized _NativeDictionary._insert(at:key:value:)(v7, v17, v3, v4 & 0xFF01, v8);
      v18 = *v17;
      v19 = *(v17 + 16);
      v2[72] = *(v17 + 32);
      *(v2 + 56) = v19;
      *(v2 + 40) = v18;
      v13 = (v2 + 40);
      v12 = (v2 + 80);
      goto LABEL_11;
    }

LABEL_9:
    v16 = v8[7] + 16 * v7;
    *v16 = v3;
    *(v16 + 8) = v4 & 1;
    *(v16 + 9) = HIBYTE(v4);
    goto LABEL_12;
  }

  if ((*a1)[33])
  {
    v14 = *(v2 + 19);
    v15 = **(v2 + 18);
    outlined destroy of TableColumnCustomizationID(*(v15 + 48) + 40 * v14);
    specialized _NativeDictionary._delete(at:)(v14, v15);
  }

LABEL_12:

  free(v2);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, char a6))(void ***a1)
{
  v7 = v6;
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x48uLL);
  }

  v15 = v14;
  *a1 = v14;
  *(v14 + 64) = a5;
  *(v14 + 40) = a4;
  *(v14 + 48) = v6;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v16 = *v6;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a5);
  *(v15 + 65) = v17 & 1;
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_12;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, a6 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a5);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_12;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_12:
  *(v15 + 56) = v18;
  if (v22)
  {
    v26 = *(*v7 + 56) + 24 * v18;
    v27 = *v26;
    v28 = *(v26 + 16);
  }

  else
  {
    v28 = 0;
    v27 = 0uLL;
  }

  *v15 = v27;
  *(v15 + 16) = v28;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, Swift::UInt32 a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x238uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 552) = v3;
  *(v8 + 180) = a2;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 178) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 560) = v11;
  if (v17)
  {
    outlined init with take of ConfirmationDialog(*(*v4 + 56) + 184 * v11, v9);
  }

  else
  {
    *(v9 + 176) = 0;
    *(v9 + 144) = 0u;
    *(v9 + 160) = 0u;
    *(v9 + 112) = 0u;
    *(v9 + 128) = 0u;
    *(v9 + 80) = 0u;
    *(v9 + 96) = 0u;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *v9 = 0u;
  }

  return _NativeDictionary.subscript.modifyspecialized ;
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xA0uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 136) = a2;
  *(v8 + 144) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 121) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 152) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *(v9 + 128) = v21;
  return _NativeDictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.index(before:for:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    goto LABEL_23;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v21);
  v22 = a3;
  v23 = a4;
  if (a4)
  {
    if (a4 != 1)
    {
LABEL_14:
      v20[0] = a6;
      v20[1] = a7;
      v20[2] = a8;
      v20[3] = a9;
      type metadata accessor for NavigationState.StackContent.Views.ViewsSequence.Index.Kind();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(TupleTypeMetadata2 - 8) + 8))(v21, TupleTypeMetadata2);
      return 0;
    }

    if (!__OFSUB__(a3, 1))
    {
      if (((a3 - 1) & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

      if (v21[120])
      {
        goto LABEL_14;
      }

      outlined init with copy of NavigationColumnState.ColumnContent(v21, v20);
      v16 = v20[12];

      if (a3)
      {

        outlined destroy of Binding<NavigationSplitViewColumn>(v20, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
        goto LABEL_14;
      }

      if ((*(*v16 + 80))(v17))
      {

LABEL_19:
        outlined destroy of Binding<NavigationSplitViewColumn>(v20, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
LABEL_9:
        outlined destroy of NavigationColumnState.ColumnContent(v21);
        return a1;
      }

      v19 = (*(*v16 + 88))();

      if (!__OFSUB__(v19, 1))
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!__OFSUB__(a3, 1))
  {
    if (((a3 - 1) & 0x8000000000000000) == 0 || !a3)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.lastIndex(for:stateIndex:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of NavigationColumnState.ColumnContent(a1 + 120, v7);
  if (v8)
  {
    goto LABEL_7;
  }

  v3 = v7[12];
  if (*(v7[13] + 16))
  {

LABEL_7:
    outlined destroy of Binding<NavigationSplitViewColumn>(v7, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    return a2;
  }

  if ((*(*v3 + 80))(v4))
  {

    goto LABEL_7;
  }

  v5 = (*(*v3 + 88))();

  if (!__OFSUB__(v5, 1))
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  outlined init with copy of NavigationColumnState.ColumnContent(a1 + 120, v7);
  if (v8)
  {
    goto LABEL_7;
  }

  v3 = v7[12];
  if (*(v7[13] + 16))
  {

LABEL_7:
    outlined destroy of NavigationState?(v7, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
    return a2;
  }

  if ((*(*v3 + 80))(v4))
  {

    goto LABEL_7;
  }

  v5 = (*(*v3 + 88))();

  if (!__OFSUB__(v5, 1))
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.index(after:for:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v27);
  v28 = a3;
  v29 = a4;
  if (v27[120])
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v27, v24);
    outlined destroy of Binding<NavigationSplitViewColumn>(v24, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    if (a4 != 2 || a3)
    {
      v24[0] = a6;
      v24[1] = a7;
      v24[2] = a8;
      v24[3] = a9;
      type metadata accessor for NavigationState.StackContent.Views.ViewsSequence.Index.Kind();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(TupleTypeMetadata2 - 8) + 8))(v27, TupleTypeMetadata2);
      return 0;
    }

    goto LABEL_16;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v27, v24);
  result = v25;
  v17 = v26;
  if (!a4)
  {
    v20 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_20;
    }

    v21 = (*(*v25 + 88))();

    if (v20 >= v21)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (a4 != 1)
  {
    v22 = (*(*v25 + 80))();

    if (v22)
    {
LABEL_14:
      v23 = *(v17 + 16);

      if (!v23)
      {
        goto LABEL_15;
      }

LABEL_18:
      outlined destroy of Binding<NavigationSplitViewColumn>(v24, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      outlined destroy of NavigationColumnState.ColumnContent(v27);
      return a1;
    }

LABEL_17:

    goto LABEL_18;
  }

  v18 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v19 = *(v17 + 16);

    if (v18 < v19)
    {
      goto LABEL_18;
    }

LABEL_15:
    outlined destroy of Binding<NavigationSplitViewColumn>(v24, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
LABEL_16:
    outlined destroy of NavigationColumnState.ColumnContent(v27);
    return 0;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *outlined copy of DisplayList.AccessibilityUpdater.CacheValue?(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void *outlined consume of DisplayList.AccessibilityUpdater.CacheValue?(void *result)
{
  if (result)
  {
  }

  return result;
}

void *outlined copy of KeyboardShortcutBridge.Shortcut?(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void *outlined consume of KeyboardShortcutBridge.Shortcut?(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationState.StackContent.Views.ViewsSequence.Index.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationState.StackContent.Views.ViewsSequence.Index.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for NavigationState.StackContent.Views.ViewsSequence.Index.Kind(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for NavigationState.StackContent.Views.ViewsSequence.Index.Kind(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t assignWithCopy for NavigationState.StackContent.PositionedView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  if (a1 != a2)
  {
    outlined destroy of NavigationStackViewSource(a1 + 24);
    if (*(a2 + 88) == 1)
    {
      v5 = *(a2 + 48);
      if (v5)
      {
        *(a1 + 48) = v5;
        *(a1 + 56) = *(a2 + 56);
        (**(v5 - 8))(a1 + 24, a2 + 24);
      }

      else
      {
        v9 = *(a2 + 24);
        v10 = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 40) = v10;
        *(a1 + 24) = v9;
      }

      if (*(a2 + 72) == 1)
      {
        *(a1 + 64) = *(a2 + 64);
      }

      else
      {
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 68) = *(a2 + 68);
        *(a1 + 72) = *(a2 + 72);
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = 1;
    }

    else if (*(a2 + 88))
    {
      *(a1 + 24) = *(a2 + 24);
      v6 = *(a2 + 40);
      v7 = *(a2 + 56);
      v8 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v8;
      *(a1 + 56) = v7;
      *(a1 + 40) = v6;
    }

    else
    {
      v4 = *(a2 + 48);
      *(a1 + 48) = v4;
      *(a1 + 56) = *(a2 + 56);
      (**(v4 - 8))(a1 + 24, a2 + 24);
      *(a1 + 88) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for NavigationState.StackContent.PositionedView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  if (a1 != a2)
  {
    outlined destroy of NavigationStackViewSource(a1 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 24) = *(a2 + 24);
  }

  return a1;
}

void *assignWithCopy for NavigationState.StackContent.Views.ViewsSequence(void *a1, void *a2)
{
  if (a1 == a2)
  {
    goto LABEL_53;
  }

  outlined destroy of NavigationState.Base(a1);
  v4 = *(a2 + 448);
  if (v4 == 2)
  {
    *a1 = *a2;
    v6 = a2[3];

    if (v6 == 1)
    {
      *(a1 + 1) = *(a2 + 1);
      v7 = *(a2 + 3);
      v8 = *(a2 + 5);
      v9 = *(a2 + 7);
      *(a1 + 36) = *(a2 + 36);
      *(a1 + 5) = v8;
      *(a1 + 7) = v9;
      *(a1 + 3) = v7;
LABEL_33:
      v29 = 2;
LABEL_52:
      *(a1 + 448) = v29;
      goto LABEL_53;
    }

    a1[1] = a2[1];
    if (a2[3])
    {
      a1[2] = a2[2];
      a1[3] = a2[3];
      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      v25 = *(a2 + 1);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 1) = v25;
    }

    *(a1 + 33) = *(a2 + 33);
    v26 = a2[5];
    if (v26)
    {
      v27 = a2[6];
      a1[5] = v26;
      a1[6] = v27;

      if (a2[8])
      {
LABEL_29:
        a1[7] = a2[7];
        a1[8] = a2[8];
        *(a1 + 72) = *(a2 + 72);

LABEL_32:
        *(a1 + 73) = *(a2 + 73);
        goto LABEL_33;
      }
    }

    else
    {
      *(a1 + 5) = *(a2 + 5);
      if (a2[8])
      {
        goto LABEL_29;
      }
    }

    v28 = *(a2 + 7);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 7) = v28;
    goto LABEL_32;
  }

  if (v4 == 1)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v5 = *(a2 + 1);
    a1[4] = a2[4];
    *(a1 + 1) = v5;
    if (a2[6])
    {
      *(a1 + 10) = *(a2 + 10);
      a1[6] = a2[6];
      a1[7] = a2[7];
      a1[8] = a2[8];
      a1[9] = a2[9];
      a1[10] = a2[10];
      *(a1 + 22) = *(a2 + 22);
    }

    else
    {
      v10 = *(a2 + 5);
      v11 = *(a2 + 7);
      v12 = *(a2 + 9);
      *(a1 + 22) = *(a2 + 22);
      *(a1 + 9) = v12;
      *(a1 + 7) = v11;
      *(a1 + 5) = v10;
    }

    *(a1 + 23) = *(a2 + 23);
    if (a2[13])
    {
      a1[12] = a2[12];
      a1[13] = a2[13];
      a1[14] = a2[14];
    }

    else
    {
      v13 = *(a2 + 6);
      a1[14] = a2[14];
      *(a1 + 6) = v13;
    }

    v14 = *(a2 + 208);
    if (a2[30])
    {
      if (v14 == 255)
      {
        v17 = *(a2 + 15);
        *(a1 + 17) = *(a2 + 17);
        *(a1 + 15) = v17;
        v18 = *(a2 + 19);
        v19 = *(a2 + 21);
        v20 = *(a2 + 23);
        *(a1 + 193) = *(a2 + 193);
        *(a1 + 23) = v20;
        *(a1 + 21) = v19;
        *(a1 + 19) = v18;
      }

      else if (v14)
      {
        a1[15] = a2[15];
        v15 = a2[19];

        if (v15)
        {
          a1[19] = v15;
          a1[20] = a2[20];
          (**(v15 - 8))((a1 + 16), (a2 + 16), v15);
        }

        else
        {
          v32 = *(a2 + 8);
          v33 = *(a2 + 9);
          a1[20] = a2[20];
          *(a1 + 8) = v32;
          *(a1 + 9) = v33;
        }

        if (a2[22] == 1)
        {
          *(a1 + 21) = *(a2 + 21);
        }

        else
        {
          *(a1 + 42) = *(a2 + 42);
          *(a1 + 43) = *(a2 + 43);
          a1[22] = a2[22];
        }

        a1[23] = a2[23];
        v34 = a2[25];
        a1[24] = a2[24];
        a1[25] = v34;
        *(a1 + 208) = 1;
      }

      else
      {
        v30 = a2[18];
        a1[18] = v30;
        a1[19] = a2[19];
        (**(v30 - 8))((a1 + 15), (a2 + 15));
        *(a1 + 208) = 0;
      }

      *(a1 + 240) = 1;
    }

    else
    {
      if (v14 == 255)
      {
        v21 = *(a2 + 15);
        *(a1 + 17) = *(a2 + 17);
        *(a1 + 15) = v21;
        v22 = *(a2 + 19);
        v23 = *(a2 + 21);
        v24 = *(a2 + 23);
        *(a1 + 193) = *(a2 + 193);
        *(a1 + 23) = v24;
        *(a1 + 21) = v23;
        *(a1 + 19) = v22;
      }

      else if (v14)
      {
        a1[15] = a2[15];
        v16 = a2[19];

        if (v16)
        {
          a1[19] = v16;
          a1[20] = a2[20];
          (**(v16 - 8))((a1 + 16), (a2 + 16), v16);
        }

        else
        {
          v35 = *(a2 + 8);
          v36 = *(a2 + 9);
          a1[20] = a2[20];
          *(a1 + 8) = v35;
          *(a1 + 9) = v36;
        }

        if (a2[22] == 1)
        {
          *(a1 + 21) = *(a2 + 21);
        }

        else
        {
          *(a1 + 42) = *(a2 + 42);
          *(a1 + 43) = *(a2 + 43);
          a1[22] = a2[22];
        }

        a1[23] = a2[23];
        v37 = a2[25];
        a1[24] = a2[24];
        a1[25] = v37;
        *(a1 + 208) = 1;
      }

      else
      {
        v31 = a2[18];
        a1[18] = v31;
        a1[19] = a2[19];
        (**(v31 - 8))((a1 + 15), (a2 + 15));
        *(a1 + 208) = 0;
      }

      a1[27] = a2[27];
      a1[28] = a2[28];
      a1[29] = a2[29];
      *(a1 + 240) = 0;
    }

    a1[31] = a2[31];
    a1[32] = a2[32];
    a1[33] = a2[33];
    a1[34] = a2[34];
    a1[35] = a2[35];
    a1[36] = a2[36];
    a1[37] = a2[37];
    a1[38] = a2[38];
    v38 = *(a2 + 39);
    a1[41] = a2[41];
    *(a1 + 39) = v38;
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 85) = *(a2 + 85);
    a1[43] = a2[43];
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 353) = *(a2 + 353);
    v39 = a2[45];

    if (v39)
    {
      a1[45] = v39;
      a1[46] = a2[46];
      a1[47] = a2[47];
      a1[48] = a2[48];
      a1[49] = a2[49];
      a1[50] = a2[50];
      a1[51] = a2[51];
      a1[52] = a2[52];
      v40 = *(a2 + 53);
      a1[55] = a2[55];
      *(a1 + 53) = v40;
    }

    else
    {
      v41 = *(a2 + 47);
      *(a1 + 45) = *(a2 + 45);
      *(a1 + 47) = v41;
      v42 = *(a2 + 49);
      v43 = *(a2 + 51);
      v44 = *(a2 + 53);
      a1[55] = a2[55];
      *(a1 + 51) = v43;
      *(a1 + 53) = v44;
      *(a1 + 49) = v42;
    }

    v29 = 1;
    goto LABEL_52;
  }

  memcpy(a1, a2, 0x1C1uLL);
LABEL_53:
  v45 = a2[58];
  a1[57] = a2[57];
  a1[58] = v45;

  a1[59] = a2[59];

  return a1;
}

uint64_t assignWithTake for NavigationState.StackContent.Views.ViewsSequence(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationState.Base(a1);
    memcpy(a1, a2, 0x1C1uLL);
  }

  *(a1 + 456) = *(a2 + 456);

  *(a1 + 472) = *(a2 + 472);

  return a1;
}

char *assignWithCopy for NavigationState.StackContent(char *a1, char *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of NavigationState.Base(a1);
  v4 = a2[448];
  if (v4 == 2)
  {
    *a1 = *a2;
    v6 = *(a2 + 3);

    if (v6 == 1)
    {
      *(a1 + 8) = *(a2 + 8);
      v7 = *(a2 + 24);
      v8 = *(a2 + 40);
      v9 = *(a2 + 56);
      *(a1 + 36) = *(a2 + 36);
      *(a1 + 40) = v8;
      *(a1 + 56) = v9;
      *(a1 + 24) = v7;
LABEL_35:
      v30 = 2;
LABEL_54:
      a1[448] = v30;
      return a1;
    }

    *(a1 + 1) = *(a2 + 1);
    if (*(a2 + 3))
    {
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = *(a2 + 3);
      a1[32] = a2[32];
    }

    else
    {
      v26 = *(a2 + 1);
      a1[32] = a2[32];
      *(a1 + 1) = v26;
    }

    a1[33] = a2[33];
    v27 = *(a2 + 5);
    if (v27)
    {
      v28 = *(a2 + 6);
      *(a1 + 5) = v27;
      *(a1 + 6) = v28;

      if (*(a2 + 8))
      {
LABEL_31:
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = *(a2 + 8);
        a1[72] = a2[72];

LABEL_34:
        a1[73] = a2[73];
        goto LABEL_35;
      }
    }

    else
    {
      *(a1 + 40) = *(a2 + 40);
      if (*(a2 + 8))
      {
        goto LABEL_31;
      }
    }

    v29 = *(a2 + 56);
    a1[72] = a2[72];
    *(a1 + 56) = v29;
    goto LABEL_34;
  }

  if (v4 == 1)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v5 = *(a2 + 1);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 1) = v5;
    if (*(a2 + 6))
    {
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 22) = *(a2 + 22);
    }

    else
    {
      v11 = *(a2 + 40);
      v12 = *(a2 + 56);
      v13 = *(a2 + 72);
      *(a1 + 22) = *(a2 + 22);
      *(a1 + 72) = v13;
      *(a1 + 56) = v12;
      *(a1 + 40) = v11;
    }

    *(a1 + 23) = *(a2 + 23);
    if (*(a2 + 13))
    {
      *(a1 + 12) = *(a2 + 12);
      *(a1 + 13) = *(a2 + 13);
      *(a1 + 14) = *(a2 + 14);
    }

    else
    {
      v14 = *(a2 + 6);
      *(a1 + 14) = *(a2 + 14);
      *(a1 + 6) = v14;
    }

    v15 = a2[208];
    if (a2[240])
    {
      if (v15 == 255)
      {
        v18 = *(a2 + 120);
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 120) = v18;
        v19 = *(a2 + 152);
        v20 = *(a2 + 168);
        v21 = *(a2 + 184);
        *(a1 + 193) = *(a2 + 193);
        *(a1 + 184) = v21;
        *(a1 + 168) = v20;
        *(a1 + 152) = v19;
      }

      else if (v15)
      {
        *(a1 + 15) = *(a2 + 15);
        v16 = *(a2 + 19);

        if (v16)
        {
          *(a1 + 19) = v16;
          *(a1 + 20) = *(a2 + 20);
          (**(v16 - 8))((a1 + 128), (a2 + 128), v16);
        }

        else
        {
          v33 = *(a2 + 8);
          v34 = *(a2 + 9);
          *(a1 + 20) = *(a2 + 20);
          *(a1 + 8) = v33;
          *(a1 + 9) = v34;
        }

        if (*(a2 + 22) == 1)
        {
          *(a1 + 168) = *(a2 + 168);
        }

        else
        {
          *(a1 + 42) = *(a2 + 42);
          *(a1 + 43) = *(a2 + 43);
          *(a1 + 22) = *(a2 + 22);
        }

        *(a1 + 23) = *(a2 + 23);
        v35 = *(a2 + 25);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 25) = v35;
        a1[208] = 1;
      }

      else
      {
        v31 = *(a2 + 18);
        *(a1 + 18) = v31;
        *(a1 + 19) = *(a2 + 19);
        (**(v31 - 8))((a1 + 120), (a2 + 120));
        a1[208] = 0;
      }

      a1[240] = 1;
    }

    else
    {
      if (v15 == 255)
      {
        v22 = *(a2 + 120);
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 120) = v22;
        v23 = *(a2 + 152);
        v24 = *(a2 + 168);
        v25 = *(a2 + 184);
        *(a1 + 193) = *(a2 + 193);
        *(a1 + 184) = v25;
        *(a1 + 168) = v24;
        *(a1 + 152) = v23;
      }

      else if (v15)
      {
        *(a1 + 15) = *(a2 + 15);
        v17 = *(a2 + 19);

        if (v17)
        {
          *(a1 + 19) = v17;
          *(a1 + 20) = *(a2 + 20);
          (**(v17 - 8))((a1 + 128), (a2 + 128), v17);
        }

        else
        {
          v36 = *(a2 + 8);
          v37 = *(a2 + 9);
          *(a1 + 20) = *(a2 + 20);
          *(a1 + 8) = v36;
          *(a1 + 9) = v37;
        }

        if (*(a2 + 22) == 1)
        {
          *(a1 + 168) = *(a2 + 168);
        }

        else
        {
          *(a1 + 42) = *(a2 + 42);
          *(a1 + 43) = *(a2 + 43);
          *(a1 + 22) = *(a2 + 22);
        }

        *(a1 + 23) = *(a2 + 23);
        v38 = *(a2 + 25);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 25) = v38;
        a1[208] = 1;
      }

      else
      {
        v32 = *(a2 + 18);
        *(a1 + 18) = v32;
        *(a1 + 19) = *(a2 + 19);
        (**(v32 - 8))((a1 + 120), (a2 + 120));
        a1[208] = 0;
      }

      *(a1 + 27) = *(a2 + 27);
      *(a1 + 28) = *(a2 + 28);
      *(a1 + 29) = *(a2 + 29);
      a1[240] = 0;
    }

    *(a1 + 31) = *(a2 + 31);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 33) = *(a2 + 33);
    *(a1 + 34) = *(a2 + 34);
    *(a1 + 35) = *(a2 + 35);
    *(a1 + 36) = *(a2 + 36);
    *(a1 + 37) = *(a2 + 37);
    *(a1 + 38) = *(a2 + 38);
    v39 = *(a2 + 312);
    *(a1 + 41) = *(a2 + 41);
    *(a1 + 312) = v39;
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 85) = *(a2 + 85);
    *(a1 + 43) = *(a2 + 43);
    a1[352] = a2[352];
    *(a1 + 353) = *(a2 + 353);
    v40 = *(a2 + 45);

    if (v40)
    {
      *(a1 + 45) = v40;
      *(a1 + 46) = *(a2 + 46);
      *(a1 + 47) = *(a2 + 47);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 49) = *(a2 + 49);
      *(a1 + 50) = *(a2 + 50);
      *(a1 + 51) = *(a2 + 51);
      *(a1 + 52) = *(a2 + 52);
      v41 = *(a2 + 424);
      *(a1 + 55) = *(a2 + 55);
      *(a1 + 424) = v41;
    }

    else
    {
      v42 = *(a2 + 376);
      *(a1 + 360) = *(a2 + 360);
      *(a1 + 376) = v42;
      v43 = *(a2 + 392);
      v44 = *(a2 + 408);
      v45 = *(a2 + 424);
      *(a1 + 55) = *(a2 + 55);
      *(a1 + 408) = v44;
      *(a1 + 424) = v45;
      *(a1 + 392) = v43;
    }

    v30 = 1;
    goto LABEL_54;
  }

  return memcpy(a1, a2, 0x1C1uLL);
}

uint64_t initializeWithCopy for NavigationState.RequestResults(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of ResolvedNavigationDestinations.ChangeRequest(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  if (*(a2 + 160) >> 2 == 0x7FFFFFFFLL)
  {
    memcpy((a1 + 24), (a2 + 24), 0x139uLL);
  }

  else
  {
    switch(*(a2 + 120))
    {
      case 0:
        v8 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v8;
        *(a1 + 120) = 0;
        goto LABEL_60;
      case 1:
        v24 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v24;
        v25 = *(a2 + 48);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = v25;
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 120) = 1;

        goto LABEL_60;
      case 2:
        v17 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v17;
        v18 = *(a2 + 64);
        *(a1 + 64) = v18;
        v19 = v18;
        v20 = **(v18 - 8);

        v20(a1 + 40, a2 + 40, v19);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 120) = 2;
        break;
      case 3:
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 120) = 3;

        break;
      case 4:
        v33 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v33;
        *(a1 + 40) = *(a2 + 40);
        v16 = 4;
        goto LABEL_24;
      case 5:
        v21 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v21;
        *(a1 + 40) = *(a2 + 40);
        v16 = 5;
        goto LABEL_24;
      case 6:
        v26 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v26;
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 120) = 6;

        goto LABEL_60;
      case 0xA:
        v27 = *(a2 + 48);
        *(a1 + 48) = v27;
        (**(v27 - 8))(a1 + 24, a2 + 24);
        v28 = *(a2 + 72);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v28;
        *(a1 + 80) = *(a2 + 80);
        v16 = 10;
        goto LABEL_24;
      case 0xB:
        v36 = *(a2 + 48);
        *(a1 + 48) = v36;
        (**(v36 - 8))(a1 + 24, a2 + 24);
        *(a1 + 120) = 11;
        break;
      case 0xC:
        *(a1 + 24) = *(a2 + 24);
        v34 = *(a2 + 56);

        if (v34)
        {
          v35 = *(a2 + 64);
          *(a1 + 56) = v34;
          *(a1 + 64) = v35;
          (**(v34 - 8))(a1 + 32, a2 + 32, v34);
        }

        else
        {
          v50 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v50;
          *(a1 + 64) = *(a2 + 64);
        }

        v51 = *(a2 + 80);
        if (v51 == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 80) = v51;
        }

        v52 = *(a2 + 96);
        v53 = *(a2 + 104);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v52;
        *(a1 + 104) = v53;
        v40 = 12;
        goto LABEL_59;
      case 0xD:
        *(a1 + 24) = *(a2 + 24);
        v12 = *(a2 + 56);

        if (v12)
        {
          v13 = *(a2 + 64);
          *(a1 + 56) = v12;
          *(a1 + 64) = v13;
          (**(v12 - 8))(a1 + 32, a2 + 32, v12);
        }

        else
        {
          v41 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v41;
          *(a1 + 64) = *(a2 + 64);
        }

        v42 = *(a2 + 80);
        if (v42 == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 80) = v42;
        }

        v43 = *(a2 + 96);
        v44 = *(a2 + 104);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v43;
        *(a1 + 104) = v44;
        *(a1 + 112) = *(a2 + 112);
        v40 = 13;
        goto LABEL_59;
      case 0xE:
        *(a1 + 24) = *(a2 + 24);
        v22 = *(a2 + 56);

        if (v22)
        {
          v23 = *(a2 + 64);
          *(a1 + 56) = v22;
          *(a1 + 64) = v23;
          (**(v22 - 8))(a1 + 32, a2 + 32, v22);
        }

        else
        {
          v45 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v45;
          *(a1 + 64) = *(a2 + 64);
        }

        v46 = *(a2 + 80);
        if (v46 == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 80) = v46;
        }

        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 120) = 14;
        break;
      case 0x11:
        v14 = *(a2 + 48);
        *(a1 + 48) = v14;
        (**(v14 - 8))(a1 + 24, a2 + 24);
        *(a1 + 64) = *(a2 + 64);
        v15 = *(a2 + 80);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = v15;
        *(a1 + 88) = *(a2 + 88);
        v16 = 17;
LABEL_24:
        *(a1 + 120) = v16;

        goto LABEL_60;
      case 0x12:
        v9 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v9;
        v10 = *(a2 + 64);

        if (v10)
        {
          v11 = *(a2 + 72);
          *(a1 + 64) = v10;
          *(a1 + 72) = v11;
          (**(v10 - 8))(a1 + 40, a2 + 40, v10);
        }

        else
        {
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 72) = *(a2 + 72);
        }

        v37 = *(a2 + 88);
        if (v37 == 1)
        {
          *(a1 + 80) = *(a2 + 80);
        }

        else
        {
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 88) = v37;
        }

        v38 = *(a2 + 104);
        v39 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = v38;
        *(a1 + 112) = v39;
        v40 = 18;
LABEL_59:
        *(a1 + 120) = v40;
LABEL_60:

        break;
      case 0x13:
        v29 = *(a2 + 48);
        if (v29)
        {
          v30 = *(a2 + 56);
          *(a1 + 48) = v29;
          *(a1 + 56) = v30;
          (**(v29 - 8))(a1 + 24, a2 + 24);
        }

        else
        {
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
        }

        v47 = *(a2 + 72);
        if (v47 == 1)
        {
          *(a1 + 64) = *(a2 + 64);
        }

        else
        {
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 72) = v47;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 120) = 19;
        break;
      case 0x15:
        v31 = *(a2 + 24);
        if (v31)
        {
          v32 = *(a2 + 32);
          *(a1 + 24) = v31;
          *(a1 + 32) = v32;
        }

        else
        {
          *(a1 + 24) = *(a2 + 24);
        }

        v48 = *(a2 + 40);
        if (v48)
        {
          v49 = *(a2 + 48);
          *(a1 + 40) = v48;
          *(a1 + 48) = v49;
        }

        else
        {
          *(a1 + 40) = *(a2 + 40);
        }

        *(a1 + 120) = 21;
        break;
      default:
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        break;
    }

    v54 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v54;
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    v55 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v55;
    *(a1 + 224) = *(a2 + 224);
    v56 = *(a2 + 336);

    switch(v56)
    {
      case 0:
        v57 = *(a2 + 248);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = v57;
        *(a1 + 336) = 0;

        break;
      case 1:
        v68 = *(a2 + 248);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = v68;
        v69 = *(a2 + 264);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = v69;
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 336) = 1;

        break;
      case 2:
        v73 = *(a2 + 248);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = v73;
        v75 = *(a2 + 280);
        v74 = *(a2 + 288);
        *(a1 + 280) = v75;
        *(a1 + 288) = v74;
        v76 = **(v75 - 8);

        v76(a1 + 256, a2 + 256, v75);
        v77 = *(a2 + 304);
        *(a1 + 296) = *(a2 + 296);
        *(a1 + 304) = v77;
        *(a1 + 336) = 2;
        break;
      case 3:
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 264) = *(a2 + 264);
        *(a1 + 336) = 3;

        break;
      case 4:
        v65 = *(a2 + 248);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = v65;
        *(a1 + 256) = *(a2 + 256);
        v66 = 4;
        goto LABEL_81;
      case 5:
        v67 = *(a2 + 248);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = v67;
        *(a1 + 256) = *(a2 + 256);
        v66 = 5;
        goto LABEL_81;
      case 6:
        v88 = *(a2 + 248);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = v88;
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 336) = 6;

        break;
      case 10:
        v70 = *(a2 + 264);
        v71 = *(a2 + 272);
        *(a1 + 264) = v70;
        *(a1 + 272) = v71;
        (**(v70 - 8))(a1 + 240, a2 + 240);
        v72 = *(a2 + 288);
        *(a1 + 280) = *(a2 + 280);
        *(a1 + 288) = v72;
        *(a1 + 296) = *(a2 + 296);
        v66 = 10;
        goto LABEL_81;
      case 11:
        v89 = *(a2 + 264);
        v90 = *(a2 + 272);
        *(a1 + 264) = v89;
        *(a1 + 272) = v90;
        (**(v89 - 8))(a1 + 240, a2 + 240);
        *(a1 + 336) = 11;
        break;
      case 12:
        *(a1 + 240) = *(a2 + 240);
        v63 = *(a2 + 272);

        if (v63)
        {
          v64 = *(a2 + 280);
          *(a1 + 272) = v63;
          *(a1 + 280) = v64;
          (**(v63 - 8))(a1 + 248, a2 + 248, v63);
        }

        else
        {
          v96 = *(a2 + 264);
          *(a1 + 248) = *(a2 + 248);
          *(a1 + 264) = v96;
          *(a1 + 280) = *(a2 + 280);
        }

        v97 = *(a2 + 296);
        if (v97 == 1)
        {
          *(a1 + 288) = *(a2 + 288);
        }

        else
        {
          *(a1 + 288) = *(a2 + 288);
          *(a1 + 296) = v97;
        }

        v98 = *(a2 + 312);
        v99 = *(a2 + 320);
        *(a1 + 304) = *(a2 + 304);
        *(a1 + 312) = v98;
        *(a1 + 320) = v99;
        v100 = 12;
        goto LABEL_111;
      case 13:
        *(a1 + 240) = *(a2 + 240);
        v78 = *(a2 + 272);

        if (v78)
        {
          v79 = *(a2 + 280);
          *(a1 + 272) = v78;
          *(a1 + 280) = v79;
          (**(v78 - 8))(a1 + 248, a2 + 248, v78);
        }

        else
        {
          v101 = *(a2 + 264);
          *(a1 + 248) = *(a2 + 248);
          *(a1 + 264) = v101;
          *(a1 + 280) = *(a2 + 280);
        }

        v102 = *(a2 + 296);
        if (v102 == 1)
        {
          *(a1 + 288) = *(a2 + 288);
        }

        else
        {
          *(a1 + 288) = *(a2 + 288);
          *(a1 + 296) = v102;
        }

        v103 = *(a2 + 312);
        v104 = *(a2 + 320);
        *(a1 + 304) = *(a2 + 304);
        *(a1 + 312) = v103;
        *(a1 + 320) = v104;
        *(a1 + 328) = *(a2 + 328);
        v100 = 13;
        goto LABEL_111;
      case 14:
        *(a1 + 240) = *(a2 + 240);
        v80 = *(a2 + 272);

        if (v80)
        {
          v81 = *(a2 + 280);
          *(a1 + 272) = v80;
          *(a1 + 280) = v81;
          (**(v80 - 8))(a1 + 248, a2 + 248, v80);
        }

        else
        {
          v105 = *(a2 + 264);
          *(a1 + 248) = *(a2 + 248);
          *(a1 + 264) = v105;
          *(a1 + 280) = *(a2 + 280);
        }

        v106 = *(a2 + 296);
        if (v106 == 1)
        {
          *(a1 + 288) = *(a2 + 288);
        }

        else
        {
          *(a1 + 288) = *(a2 + 288);
          *(a1 + 296) = v106;
        }

        *(a1 + 304) = *(a2 + 304);
        *(a1 + 312) = *(a2 + 312);
        *(a1 + 336) = 14;
        break;
      case 17:
        v85 = *(a2 + 264);
        v86 = *(a2 + 272);
        *(a1 + 264) = v85;
        *(a1 + 272) = v86;
        (**(v85 - 8))(a1 + 240, a2 + 240);
        *(a1 + 280) = *(a2 + 280);
        v87 = *(a2 + 296);
        *(a1 + 288) = *(a2 + 288);
        *(a1 + 296) = v87;
        *(a1 + 304) = *(a2 + 304);
        v66 = 17;
LABEL_81:
        *(a1 + 336) = v66;

        break;
      case 18:
        v82 = *(a2 + 248);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = v82;
        v83 = *(a2 + 280);

        if (v83)
        {
          v84 = *(a2 + 288);
          *(a1 + 280) = v83;
          *(a1 + 288) = v84;
          (**(v83 - 8))(a1 + 256, a2 + 256, v83);
        }

        else
        {
          v107 = *(a2 + 272);
          *(a1 + 256) = *(a2 + 256);
          *(a1 + 272) = v107;
          *(a1 + 288) = *(a2 + 288);
        }

        v108 = (a2 + 296);
        v109 = *(a2 + 304);
        if (v109 == 1)
        {
          *(a1 + 296) = *v108;
        }

        else
        {
          *(a1 + 296) = *v108;
          *(a1 + 304) = v109;
        }

        v110 = *(a2 + 320);
        v111 = *(a2 + 328);
        *(a1 + 312) = *(a2 + 312);
        *(a1 + 320) = v110;
        *(a1 + 328) = v111;
        v100 = 18;
LABEL_111:
        *(a1 + 336) = v100;

        break;
      case 19:
        v61 = *(a2 + 264);
        if (v61)
        {
          v62 = *(a2 + 272);
          *(a1 + 264) = v61;
          *(a1 + 272) = v62;
          (**(v61 - 8))(a1 + 240, a2 + 240);
        }

        else
        {
          v93 = *(a2 + 256);
          *(a1 + 240) = *(a2 + 240);
          *(a1 + 256) = v93;
          *(a1 + 272) = *(a2 + 272);
        }

        v94 = (a2 + 280);
        v95 = *(a2 + 288);
        if (v95 == 1)
        {
          *(a1 + 280) = *v94;
        }

        else
        {
          *(a1 + 280) = *v94;
          *(a1 + 288) = v95;
        }

        *(a1 + 296) = *(a2 + 296);
        *(a1 + 336) = 19;
        break;
      case 21:
        v91 = *(a2 + 240);
        if (v91)
        {
          v92 = *(a2 + 248);
          *(a1 + 240) = v91;
          *(a1 + 248) = v92;
        }

        else
        {
          *(a1 + 240) = *(a2 + 240);
        }

        v112 = *(a2 + 256);
        if (v112)
        {
          v113 = *(a2 + 264);
          *(a1 + 256) = v112;
          *(a1 + 264) = v113;
        }

        else
        {
          *(a1 + 256) = *(a2 + 256);
        }

        *(a1 + 336) = 21;
        break;
      default:
        v58 = *(a2 + 320);
        *(a1 + 304) = *(a2 + 304);
        *(a1 + 320) = v58;
        *(a1 + 336) = *(a2 + 336);
        v59 = *(a2 + 256);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 256) = v59;
        v60 = *(a2 + 288);
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 288) = v60;
        break;
    }
  }

  *(a1 + 340) = *(a2 + 340);
  return a1;
}