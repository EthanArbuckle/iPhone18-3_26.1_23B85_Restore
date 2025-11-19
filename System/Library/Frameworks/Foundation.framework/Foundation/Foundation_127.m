uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

unint64_t lazy protocol witness table accessor for type BigString and conformance BigString()
{
  result = lazy protocol witness table cache variable for type BigString and conformance BigString;
  if (!lazy protocol witness table cache variable for type BigString and conformance BigString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BigString and conformance BigString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BigString and conformance BigString;
  if (!lazy protocol witness table cache variable for type BigString and conformance BigString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BigString and conformance BigString);
  }

  return result;
}

uint64_t _s10Foundation16AttributedStringV22MarkdownSourcePositionVSg_SnyAC5IndexVGtSgWOg(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t partial apply for closure #3 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)()
{
  return closure #3 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)();
}

{
  return BigString.UTF16View.count.getter();
}

uint64_t __DataStorage.__allocating_init(immutableReference:offset:)(void *a1, uint64_t a2, SEL *a3, uint64_t a4, uint64_t a5)
{
  v8 = [a1 *a3];
  v9 = [a1 length];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 40) = a2;
  *(result + 64) = 0;
  *(result + 16) = v8;
  *(result + 24) = v9;
  *(result + 48) = a5;
  *(result + 56) = v10;
  return result;
}

id __NSSwiftData.init(contentsOfFile:error:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  *&v3[OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing] = 0;
  v5 = &v3[OBJC_IVAR____TtC10Foundation13__NSSwiftData__range];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  if (a2)
  {
    v6 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v6 = 0;
  }

  v12[0] = 0;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for __NSSwiftData();
  v7 = objc_msgSendSuper2(&v11, *a3, v6, v12);

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    if (v12[0])
    {
      v12[0];
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v9 = _nilObjCError;
    }

    swift_willThrow();
  }

  return v7;
}

id @objc __NSSwiftData.init(contentsOfFile:error:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return __NSSwiftData.init(contentsOfFile:error:)(v6, v7, a5);
}

id __NSSwiftData.init(base64Encoded:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing] = 0;
  v5 = &v3[OBJC_IVAR____TtC10Foundation13__NSSwiftData__range];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = String._bridgeToObjectiveCImpl()();

  v9.receiver = v3;
  v9.super_class = type metadata accessor for __NSSwiftData();
  v7 = objc_msgSendSuper2(&v9, sel_initWithBase64EncodedString_options_, v6, a3);
  swift_unknownObjectRelease();
  if (v7)
  {
  }

  return v7;
}

id __NSSwiftData.init(base64Encoded:options:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v23 = *MEMORY[0x1E69E9840];
  *&v3[OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing] = 0;
  v8 = &v3[OBJC_IVAR____TtC10Foundation13__NSSwiftData__range];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v16 = a1;
      v17 = a2;
      v18 = BYTE2(a2);
      v19 = BYTE3(a2);
      v20 = BYTE4(a2);
      v21 = BYTE5(a2);
      v10 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v16 length:BYTE6(a2)];
      goto LABEL_9;
    }

    a1 = a1;
    v11 = v7 >> 32;
    if (v7 >> 32 < v7)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v9 == 2)
  {
    a1 = *(a1 + 16);
    v11 = *(v7 + 24);
LABEL_7:
    v10 = __DataStorage.bridgedReference(_:)(a1, v11);
    goto LABEL_9;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v12 = v10;
  v13 = type metadata accessor for __NSSwiftData();
  v22.receiver = v4;
  v22.super_class = v13;
  v14 = objc_msgSendSuper2(&v22, sel_initWithBase64EncodedData_options_, v12, a3);
  outlined consume of Data._Representation(v7, a2);

  if (v14)
  {
  }

  return v14;
}

id @objc __NSSwiftData.init(bytes:length:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  *&a1[OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing] = 0;
  v8 = &a1[OBJC_IVAR____TtC10Foundation13__NSSwiftData__range];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for __NSSwiftData();
  return objc_msgSendSuper2(&v10, *a5, a3, a4);
}

id __NSSwiftData.init(bytesNoCopy:length:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing] = 0;
  v8 = &v4[OBJC_IVAR____TtC10Foundation13__NSSwiftData__range];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  if (a3)
  {
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
    v13[3] = &block_descriptor_19;
    v9 = _Block_copy(v13);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for __NSSwiftData();
  v14.receiver = v4;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, sel_initWithBytesNoCopy_length_deallocator_, a1, a2, v9);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(a3);
  _Block_release(v9);
  return v11;
}

id __NSSwiftData.init(contentsOfFile:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  *&v3[OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing] = 0;
  v5 = &v3[OBJC_IVAR____TtC10Foundation13__NSSwiftData__range];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = String._bridgeToObjectiveCImpl()();

  v12[0] = 0;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for __NSSwiftData();
  v7 = objc_msgSendSuper2(&v11, sel_initWithContentsOfFile_options_error_, v6, a3, v12);
  swift_unknownObjectRelease();
  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    if (v12[0])
    {
      v12[0];
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v9 = _nilObjCError;
    }

    swift_willThrow();
  }

  return v7;
}

id __NSSwiftData.init(contentsOf:options:)(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  *&v2[OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing] = 0;
  v5 = &v2[OBJC_IVAR____TtC10Foundation13__NSSwiftData__range];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  ObjectType = swift_getObjectType();
  v7 = (*(v4 + 432))(ObjectType, v4);
  swift_unknownObjectRelease();
  v13[0] = 0;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for __NSSwiftData();
  v8 = objc_msgSendSuper2(&v12, sel_initWithContentsOfURL_options_error_, v7, a2, v13);

  if (v8)
  {
    v9 = v13[0];
  }

  else
  {
    if (v13[0])
    {
      v13[0];
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v10 = _nilObjCError;
    }

    swift_willThrow();
  }

  return v8;
}

id __NSSwiftData.init(contentsOfMappedFile:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  *&v3[OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing] = 0;
  v5 = &v3[OBJC_IVAR____TtC10Foundation13__NSSwiftData__range];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = String._bridgeToObjectiveCImpl()();

  v9.receiver = v3;
  v9.super_class = type metadata accessor for __NSSwiftData();
  v7 = objc_msgSendSuper2(&v9, *a3, v6);
  swift_unknownObjectRelease();
  if (v7)
  {
  }

  return v7;
}

id __NSSwiftData.init(contentsOf:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  *&v1[OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing] = 0;
  v3 = &v1[OBJC_IVAR____TtC10Foundation13__NSSwiftData__range];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  ObjectType = swift_getObjectType();
  v5 = (*(v2 + 432))(ObjectType, v2);
  swift_unknownObjectRelease();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for __NSSwiftData();
  v6 = objc_msgSendSuper2(&v8, sel_initWithContentsOfURL_, v5);

  if (v6)
  {
  }

  return v6;
}

id __NSSwiftData.init(data:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v21 = *MEMORY[0x1E69E9840];
  *&v2[OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing] = 0;
  v6 = &v2[OBJC_IVAR____TtC10Foundation13__NSSwiftData__range];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
      goto LABEL_9;
    }

    a1 = *(a1 + 16);
    v9 = *(v5 + 24);
    goto LABEL_7;
  }

  if (v7)
  {
    a1 = a1;
    v9 = v5 >> 32;
    if (v5 >> 32 < v5)
    {
      __break(1u);
    }

LABEL_7:
    v8 = __DataStorage.bridgedReference(_:)(a1, v9);
    goto LABEL_9;
  }

  v14 = a1;
  v15 = a2;
  v16 = BYTE2(a2);
  v17 = BYTE3(a2);
  v18 = BYTE4(a2);
  v19 = BYTE5(a2);
  v8 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v14 length:BYTE6(a2)];
LABEL_9:
  v10 = v8;
  v11 = type metadata accessor for __NSSwiftData();
  v20.receiver = v3;
  v20.super_class = v11;
  v12 = objc_msgSendSuper2(&v20, sel_initWithData_, v10);
  outlined consume of Data._Representation(v5, a2);

  return v12;
}

id __NSSwiftData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for __NSSwiftData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static Data._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  outlined consume of Data?(*a2, *(a2 + 8));
  result = specialized Data.init(referencing:)(a1);
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

void protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance Data(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = specialized Data.init(referencing:)(v3);
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xC000000000000000;
  }

  *a2 = v4;
  a2[1] = v6;
}

NSData __swiftcall Data.InlineSlice.bridgedReference()()
{
  isa = result.super.isa;
  result.super.isa = SLODWORD(result.super.isa);
  if (isa >> 32 >= SLODWORD(result.super.isa))
  {
    return __DataStorage.bridgedReference(_:)(SLODWORD(result.super.isa), isa >> 32);
  }

  __break(1u);
  return result;
}

uint64_t NSData._toCustomAnyHashable()()
{
  v1 = v0;
  specialized Data.init(referencing:)(v1);

  lazy protocol witness table accessor for type Data and conformance Data();
  return AnyHashable.init<A>(_:)();
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSData()
{
  v1 = *v0;
  specialized Data.init(referencing:)(v1);

  lazy protocol witness table accessor for type Data and conformance Data();
  AnyHashable.init<A>(_:)();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t AsyncCharacterSequence.AsyncIterator.remaining.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AsyncUnicodeScalarSequence.AsyncIterator();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AsyncCharacterSequence.AsyncIterator.remaining.setter(uint64_t a1)
{
  v3 = type metadata accessor for AsyncUnicodeScalarSequence.AsyncIterator();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AsyncCharacterSequence.AsyncIterator.accumulator.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t AsyncCharacterSequence.AsyncIterator.accumulator.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AsyncCharacterSequence.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;

  return MEMORY[0x1EEE6DFA0](AsyncCharacterSequence.AsyncIterator.next(), 0, 0);
}

uint64_t AsyncCharacterSequence.AsyncIterator.next()()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = *(v1 + 16);
  *(v0 + 56) = *(v1 + 24);
  *(v0 + 160) = *(type metadata accessor for AsyncUnicodeScalarSequence.AsyncIterator() + 36);
  v2 = 1;
  while (1)
  {
    v7 = (*(v0 + 40) + *(v0 + 160));
    if (v7[1])
    {
      goto LABEL_15;
    }

    v8 = *v7;
    *v7 = 256;
    if ((v8 & 0xE0) == 0xC0)
    {
      goto LABEL_18;
    }

    if ((v8 & 0xF0) == 0xE0)
    {
      v2 = 2;
LABEL_18:
      *(v0 + 168) = v8;
      *(v0 + 169) = 0;
      *(v0 + 171) = 0;
      *(v0 + 64) = v2;
      *(v0 + 72) = 0;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v21 = swift_task_alloc();
      *(v0 + 80) = v21;
      *v21 = v0;
      v21[1] = AsyncCharacterSequence.AsyncIterator.next();
      v16 = v0 + 176;
      goto LABEL_19;
    }

    if ((v8 & 0xF8) == 0xF0)
    {
      v2 = 3;
      goto LABEL_18;
    }

    if ((v8 & 0x80) == 0)
    {
      *(v0 + 168) = v8;
      *(v0 + 169) = 0;
      *(v0 + 171) = 0;
      v9 = static String._fromUTF8Repairing(_:)();
      v11 = specialized Collection.first.getter(v9, v10);

      if ((v11 & 0x100000000) != 0)
      {
        break;
      }
    }

    v3 = (*(v0 + 40) + *(*(v0 + 32) + 36));
    v4 = v3[1];
    *(v0 + 16) = *v3;
    *(v0 + 24) = v4;
    String.UnicodeScalarView.append(_:)();
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    *v3 = v5;
    v3[1] = v6;
    if (String.count.getter() >= 2)
    {
      v23 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v23 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        v16 = specialized Collection.first.getter(v5, v6);
        if (!v17)
        {
          __break(1u);
          return MEMORY[0x1EEE6D8C8](v16, v17, v22);
        }

        goto LABEL_26;
      }

      __break(1u);
LABEL_32:
      __break(1u);
    }
  }

  v12 = (*(v0 + 40) + *(*(v0 + 32) + 36));
  v13 = *v12;
  v14 = v12[1];
  if (String.count.getter() < 1)
  {
    v24 = 0;
    v25 = 0;
    goto LABEL_27;
  }

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_32;
  }

  v16 = specialized Collection.first.getter(v13, v14);
  if (v17)
  {
LABEL_26:
    v24 = v16;
    v25 = v17;
    specialized RangeReplaceableCollection.removeFirst(_:)(1);
LABEL_27:
    v26 = *(v0 + 8);

    return v26(v24, v25);
  }

  __break(1u);
LABEL_15:
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 96) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 104) = AssociatedConformanceWitness;
  v20 = swift_task_alloc();
  *(v0 + 112) = v20;
  *v20 = v0;
  v20[1] = AsyncCharacterSequence.AsyncIterator.next();
  v16 = v0 + 172;
LABEL_19:
  v17 = AssociatedTypeWitness;
  v22 = AssociatedConformanceWitness;

  return MEMORY[0x1EEE6D8C8](v16, v17, v22);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = AsyncCharacterSequence.AsyncIterator.next();
  }

  else
  {
    v2 = AsyncCharacterSequence.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 176);
  if ((*(v0 + 177) & 1) == 0)
  {
    if ((v1 & 0xC0) == 0x80)
    {
      v2 = *(v0 + 64);
      v3 = *(v0 + 72) + 1;
      *(v0 + 168 + v3) = v1;
      if (v3 != v2)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v4 = (*(v0 + 40) + *(v0 + 160));
      *v4 = v1;
      v4[1] = 0;
    }
  }

  v5 = static String._fromUTF8Repairing(_:)();
  v7 = specialized Collection.first.getter(v5, v6);

  if ((v7 & 0x100000000) != 0)
  {
LABEL_23:
    v21 = (*(v0 + 40) + *(*(v0 + 32) + 36));
    v23 = *v21;
    v22 = v21[1];
    if (String.count.getter() >= 1)
    {
      v24 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v24 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (!v24)
      {
        __break(1u);
        goto LABEL_47;
      }

      v25 = specialized Collection.first.getter(v23, v22);
      if (v26)
      {
        goto LABEL_34;
      }

      __break(1u);
    }

    v27 = 0;
    v28 = 0;
    goto LABEL_35;
  }

  v8 = 1;
  while (1)
  {
    v9 = (*(v0 + 40) + *(*(v0 + 32) + 36));
    v10 = v9[1];
    *(v0 + 16) = *v9;
    *(v0 + 24) = v10;
    String.UnicodeScalarView.append(_:)();
    v11 = *(v0 + 16);
    v12 = *(v0 + 24);
    *v9 = v11;
    v9[1] = v12;
    if (String.count.getter() > 1)
    {
      goto LABEL_30;
    }

    v13 = (*(v0 + 40) + *(v0 + 160));
    if (v13[1])
    {
LABEL_38:
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      *(v0 + 96) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      *(v0 + 104) = AssociatedConformanceWitness;
      v35 = swift_task_alloc();
      *(v0 + 112) = v35;
      *v35 = v0;
      v35[1] = AsyncCharacterSequence.AsyncIterator.next();
      v25 = v0 + 172;
      v26 = AssociatedTypeWitness;
      v30 = AssociatedConformanceWitness;
      goto LABEL_43;
    }

    v14 = *v13;
    *v13 = 256;
    if ((v14 & 0xE0) == 0xC0)
    {
      goto LABEL_41;
    }

    if ((v14 & 0xF0) == 0xE0)
    {
LABEL_39:
      v8 = 2;
      goto LABEL_41;
    }

    if ((v14 & 0xF8) == 0xF0)
    {
LABEL_40:
      v8 = 3;
LABEL_41:
      v3 = 0;
      *(v0 + 64) = v8;
      *(v0 + 168) = v14;
      *(v0 + 169) = 0;
      *(v0 + 171) = 0;
LABEL_42:
      *(v0 + 72) = v3;
      v36 = swift_getAssociatedTypeWitness();
      v37 = swift_getAssociatedConformanceWitness();
      v38 = swift_task_alloc();
      *(v0 + 80) = v38;
      *v38 = v0;
      v38[1] = AsyncCharacterSequence.AsyncIterator.next();
      v25 = v0 + 176;
      v26 = v36;
      v30 = v37;
LABEL_43:

      return MEMORY[0x1EEE6D8C8](v25, v26, v30);
    }

    if (v14 < 0)
    {
      break;
    }

LABEL_14:
    *(v0 + 168) = v14;
    *(v0 + 169) = 0;
    *(v0 + 171) = 0;
    v15 = static String._fromUTF8Repairing(_:)();
    v17 = specialized Collection.first.getter(v15, v16);

    if ((v17 & 0x100000000) != 0)
    {
      goto LABEL_23;
    }
  }

  while (1)
  {
    v18 = (*(v0 + 40) + *(*(v0 + 32) + 36));
    v19 = v18[1];
    *(v0 + 16) = *v18;
    *(v0 + 24) = v19;
    String.UnicodeScalarView.append(_:)();
    v11 = *(v0 + 16);
    v12 = *(v0 + 24);
    *v18 = v11;
    v18[1] = v12;
    if (String.count.getter() >= 2)
    {
      break;
    }

    v20 = (*(v0 + 40) + *(v0 + 160));
    if (v20[1])
    {
      goto LABEL_38;
    }

    v14 = *v20;
    *v20 = 256;
    if ((v14 & 0xE0) == 0xC0)
    {
      goto LABEL_41;
    }

    if ((v14 & 0xF0) == 0xE0)
    {
      goto LABEL_39;
    }

    if ((v14 & 0xF8) == 0xF0)
    {
      goto LABEL_40;
    }

    if ((v14 & 0x80) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_30:
  v29 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v29 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
LABEL_47:
    __break(1u);
  }

  v25 = specialized Collection.first.getter(v11, v12);
  if (!v26)
  {
    __break(1u);
    return MEMORY[0x1EEE6D8C8](v25, v26, v30);
  }

LABEL_34:
  v27 = v25;
  v28 = v26;
  specialized RangeReplaceableCollection.removeFirst(_:)(1);
LABEL_35:
  v31 = *(v0 + 8);

  return v31(v27, v28);
}

{
  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = AsyncCharacterSequence.AsyncIterator.next();
  }

  else
  {
    v2 = AsyncCharacterSequence.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 172);
  if (*(v0 + 173))
  {
LABEL_2:
    v2 = (*(v0 + 40) + *(*(v0 + 32) + 36));
    v4 = *v2;
    v3 = v2[1];
    if (String.count.getter() < 1)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_19;
    }

    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = specialized Collection.first.getter(v4, v3);
      if (!v7)
      {
        __break(1u);
        return MEMORY[0x1EEE6D8C8](v6, v7, v8);
      }

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_43;
  }

  if ((*(v0 + 172) & 0x80) != 0)
  {
    if ((v1 & 0xE0) == 0xC0)
    {
      v23 = 1;
    }

    else if ((v1 & 0xF0) == 0xE0)
    {
      v23 = 2;
    }

    else
    {
      if ((v1 & 0xF8) != 0xF0)
      {
        goto LABEL_9;
      }

      v23 = 3;
    }

    *(v0 + 164) = v1;
    *(v0 + 165) = 0;
    *(v0 + 167) = 0;
    *(v0 + 128) = v23;
    *(v0 + 136) = 0;
    v31 = swift_task_alloc();
    *(v0 + 144) = v31;
    *v31 = v0;
    v31[1] = AsyncCharacterSequence.AsyncIterator.next();
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v6 = v0 + 174;
    goto LABEL_38;
  }

LABEL_9:
  v11 = 1;
  while (1)
  {
    v12 = (*(v0 + 40) + *(*(v0 + 32) + 36));
    v13 = v12[1];
    *(v0 + 16) = *v12;
    *(v0 + 24) = v13;
    String.UnicodeScalarView.append(_:)();
    v14 = *(v0 + 16);
    v15 = *(v0 + 24);
    *v12 = v14;
    v12[1] = v15;
    if (String.count.getter() >= 2)
    {
      v24 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v24 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        v6 = specialized Collection.first.getter(v14, v15);
        if (!v7)
        {
          __break(1u);
LABEL_31:
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          *(v0 + 96) = AssociatedTypeWitness;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          *(v0 + 104) = AssociatedConformanceWitness;
          v27 = swift_task_alloc();
          *(v0 + 112) = v27;
          *v27 = v0;
          v27[1] = AsyncCharacterSequence.AsyncIterator.next();
          v6 = v0 + 172;
          v7 = AssociatedTypeWitness;
          v8 = AssociatedConformanceWitness;
          goto LABEL_38;
        }

LABEL_7:
        v9 = v6;
        v10 = v7;
        specialized RangeReplaceableCollection.removeFirst(_:)(1);
LABEL_19:
        v21 = *(v0 + 8);

        return v21(v9, v10);
      }

LABEL_43:
      __break(1u);
    }

    v16 = (*(v0 + 40) + *(v0 + 160));
    if (v16[1])
    {
      goto LABEL_31;
    }

    v17 = *v16;
    *v16 = 256;
    if ((v17 & 0xE0) == 0xC0)
    {
      goto LABEL_34;
    }

    if ((v17 & 0xF0) == 0xE0)
    {
      v11 = 2;
      goto LABEL_34;
    }

    if ((v17 & 0xF8) == 0xF0)
    {
      break;
    }

    if ((v17 & 0x80) == 0)
    {
      *(v0 + 168) = v17;
      *(v0 + 169) = 0;
      *(v0 + 171) = 0;
      v18 = static String._fromUTF8Repairing(_:)();
      v20 = specialized Collection.first.getter(v18, v19);

      if ((v20 & 0x100000000) != 0)
      {
        goto LABEL_2;
      }
    }
  }

  v11 = 3;
LABEL_34:
  *(v0 + 168) = v17;
  *(v0 + 169) = 0;
  *(v0 + 171) = 0;
  *(v0 + 64) = v11;
  *(v0 + 72) = 0;
  v28 = swift_getAssociatedTypeWitness();
  v29 = swift_getAssociatedConformanceWitness();
  v30 = swift_task_alloc();
  *(v0 + 80) = v30;
  *v30 = v0;
  v30[1] = AsyncCharacterSequence.AsyncIterator.next();
  v6 = v0 + 176;
  v7 = v28;
  v8 = v29;
LABEL_38:

  return MEMORY[0x1EEE6D8C8](v6, v7, v8);
}

{
  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = AsyncCharacterSequence.AsyncIterator.next();
  }

  else
  {
    v2 = AsyncCharacterSequence.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 174);
  if ((*(v0 + 175) & 1) == 0)
  {
    if ((v1 & 0xC0) == 0x80)
    {
      v2 = *(v0 + 128);
      v3 = *(v0 + 136) + 1;
      *(v0 + 164 + v3) = v1;
      if (v3 != v2)
      {
        *(v0 + 136) = v3;
        v4 = swift_task_alloc();
        *(v0 + 144) = v4;
        *v4 = v0;
        v4[1] = AsyncCharacterSequence.AsyncIterator.next();
        v5 = *(v0 + 96);
        v6 = *(v0 + 104);
        v7 = v0 + 174;
        goto LABEL_35;
      }
    }

    else
    {
      v8 = (*(v0 + 40) + *(v0 + 160));
      *v8 = v1;
      v8[1] = 0;
    }
  }

  v9 = static String._fromUTF8Repairing(_:)();
  v11 = specialized Collection.first.getter(v9, v10);

  if ((v11 & 0x100000000) != 0)
  {
LABEL_15:
    v22 = (*(v0 + 40) + *(*(v0 + 32) + 36));
    v24 = *v22;
    v23 = v22[1];
    if (String.count.getter() >= 1)
    {
      v25 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v25 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (!v25)
      {
        __break(1u);
        goto LABEL_39;
      }

      v7 = specialized Collection.first.getter(v24, v23);
      if (v5)
      {
LABEL_26:
        v26 = v7;
        v27 = v5;
        specialized RangeReplaceableCollection.removeFirst(_:)(1);
        goto LABEL_27;
      }

      __break(1u);
    }

    v26 = 0;
    v27 = 0;
LABEL_27:
    v29 = *(v0 + 8);

    return v29(v26, v27);
  }

  v12 = 1;
  while (1)
  {
    v13 = (*(v0 + 40) + *(*(v0 + 32) + 36));
    v14 = v13[1];
    *(v0 + 16) = *v13;
    *(v0 + 24) = v14;
    String.UnicodeScalarView.append(_:)();
    v15 = *(v0 + 16);
    v16 = *(v0 + 24);
    *v13 = v15;
    v13[1] = v16;
    if (String.count.getter() >= 2)
    {
      v28 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v28 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v7 = specialized Collection.first.getter(v15, v16);
        if (!v5)
        {
          __break(1u);
          return MEMORY[0x1EEE6D8C8](v7, v5, v6);
        }

        goto LABEL_26;
      }

LABEL_39:
      __break(1u);
    }

    v17 = (*(v0 + 40) + *(v0 + 160));
    if (v17[1])
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      *(v0 + 96) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      *(v0 + 104) = AssociatedConformanceWitness;
      v33 = swift_task_alloc();
      *(v0 + 112) = v33;
      *v33 = v0;
      v33[1] = AsyncCharacterSequence.AsyncIterator.next();
      v7 = v0 + 172;
      goto LABEL_34;
    }

    v18 = *v17;
    *v17 = 256;
    if ((v18 & 0xE0) == 0xC0)
    {
      goto LABEL_33;
    }

    if ((v18 & 0xF0) == 0xE0)
    {
      v12 = 2;
      goto LABEL_33;
    }

    if ((v18 & 0xF8) == 0xF0)
    {
      break;
    }

    if ((v18 & 0x80) == 0)
    {
      *(v0 + 168) = v18;
      *(v0 + 169) = 0;
      *(v0 + 171) = 0;
      v19 = static String._fromUTF8Repairing(_:)();
      v21 = specialized Collection.first.getter(v19, v20);

      if ((v21 & 0x100000000) != 0)
      {
        goto LABEL_15;
      }
    }
  }

  v12 = 3;
LABEL_33:
  *(v0 + 168) = v18;
  *(v0 + 169) = 0;
  *(v0 + 171) = 0;
  *(v0 + 64) = v12;
  *(v0 + 72) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = swift_task_alloc();
  *(v0 + 80) = v34;
  *v34 = v0;
  v34[1] = AsyncCharacterSequence.AsyncIterator.next();
  v7 = v0 + 176;
LABEL_34:
  v5 = AssociatedTypeWitness;
  v6 = AssociatedConformanceWitness;
LABEL_35:

  return MEMORY[0x1EEE6D8C8](v7, v5, v6);
}

{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCharacterSequence<A>.AsyncIterator(uint64_t a1, uint64_t a2)
{
  v3[5] = v2;
  v3[6] = a2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCharacterSequence<A>.AsyncIterator, 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCharacterSequence<A>.AsyncIterator()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v0 + 56) = *(v1 + 16);
  *(v0 + 64) = *(v1 + 24);
  v3 = type metadata accessor for AsyncUnicodeScalarSequence.AsyncIterator();
  *(v0 + 72) = v3;
  v4 = *(v3 + 36);
  *(v0 + 120) = v4;
  v5 = (v2 + v4);
  if (v5[1])
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *v8 = v0;
    v8[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCharacterSequence<A>.AsyncIterator;

    return MEMORY[0x1EEE6D8C8](v0 + 124, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v9 = *v5;
    *v5 = 256;
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCharacterSequence<A>.AsyncIterator;
    v11 = *(v0 + 72);

    return AsyncUnicodeScalarSequence.AsyncIterator._nextComplexScalar(_:)(v9, v11);
  }
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = AsyncLineSequence.AsyncIterator.next();
  }

  else
  {
    v2 = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCharacterSequence<A>.AsyncIterator;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  if ((*(v0 + 104) & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

  v1 = (*(v0 + 40) + *(*(v0 + 48) + 36));
  v2 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 24) = v2;
  String.UnicodeScalarView.append(_:)();
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  *v1 = v4;
  v1[1] = v3;
  v5 = String.count.getter();
  if (v5 >= 2)
  {
    v8 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v8 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {
      goto LABEL_26;
    }

    v5 = specialized Collection.first.getter(v4, v3);
    if (v6)
    {
LABEL_13:
      v13 = v5;
      v14 = v6;
      specialized RangeReplaceableCollection.removeFirst(_:)(1);
LABEL_19:
      v19 = *(v0 + 32);
      *v19 = v13;
      v19[1] = v14;
      v20 = *(v0 + 8);

      return v20();
    }

    __break(1u);
LABEL_8:
    v9 = (*(v0 + 40) + *(*(v0 + 48) + 36));
    v10 = *v9;
    v11 = v9[1];
    v5 = String.count.getter();
    if (v5 < 1)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_19;
    }

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v5 = specialized Collection.first.getter(v10, v11);
      if (v6)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return MEMORY[0x1EEE6D8C8](v5, v6, v7);
  }

  v15 = (*(v0 + 40) + *(v0 + 120));
  if (v15[1])
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = swift_task_alloc();
    *(v0 + 88) = v18;
    *v18 = v0;
    v18[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCharacterSequence<A>.AsyncIterator;
    v5 = v0 + 124;
    v6 = AssociatedTypeWitness;
    v7 = AssociatedConformanceWitness;

    return MEMORY[0x1EEE6D8C8](v5, v6, v7);
  }

  v22 = *v15;
  *v15 = 256;
  v23 = swift_task_alloc();
  *(v0 + 80) = v23;
  *v23 = v0;
  v23[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCharacterSequence<A>.AsyncIterator;
  v24 = *(v0 + 72);

  return AsyncUnicodeScalarSequence.AsyncIterator._nextComplexScalar(_:)(v22, v24);
}

{
  v1 = v0 + 124;
  LOBYTE(v2) = *(v0 + 124);
  if (*(v0 + 125))
  {
    v3 = (*(v0 + 40) + *(*(v0 + 48) + 36));
    v1 = *v3;
    v2 = v3[1];
    v4 = String.count.getter();
    if (v4 <= 0)
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_16;
    }

    v7 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v7 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {
      __break(1u);
      goto LABEL_29;
    }

    v4 = specialized Collection.first.getter(v1, v2);
    if (v5)
    {
LABEL_14:
      v14 = v4;
      v15 = v5;
      specialized RangeReplaceableCollection.removeFirst(_:)(1);
LABEL_16:
      v16 = *(v0 + 32);
      *v16 = v14;
      v16[1] = v15;
      v17 = *(v0 + 8);

      return v17();
    }

    __break(1u);
  }

  if ((v2 & 0x80) != 0)
  {
    v19 = swift_task_alloc();
    *(v0 + 112) = v19;
    *v19 = v0;
    v19[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCharacterSequence<A>.AsyncIterator;
    v20 = *(v0 + 72);
    v21 = v2;
  }

  else
  {
    v8 = (*(v0 + 40) + *(*(v0 + 48) + 36));
    v9 = v8[1];
    *(v0 + 16) = *v8;
    *(v0 + 24) = v9;
    String.UnicodeScalarView.append(_:)();
    v10 = v8;
    v11 = *(v0 + 16);
    v12 = *(v0 + 24);
    *v10 = v11;
    v10[1] = v12;
    v4 = String.count.getter();
    if (v4 > 1)
    {
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v4 = specialized Collection.first.getter(v11, v12);
        if (v5)
        {
          goto LABEL_14;
        }

        goto LABEL_30;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return MEMORY[0x1EEE6D8C8](v4, v5, v6);
    }

    v22 = (*(v0 + 40) + *(v0 + 120));
    if (v22[1])
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v25 = swift_task_alloc();
      *(v0 + 88) = v25;
      *v25 = v0;
      v25[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCharacterSequence<A>.AsyncIterator;
      v4 = v1;
      v5 = AssociatedTypeWitness;
      v6 = AssociatedConformanceWitness;

      return MEMORY[0x1EEE6D8C8](v4, v5, v6);
    }

    v26 = *v22;
    *v22 = 256;
    v27 = swift_task_alloc();
    *(v0 + 80) = v27;
    *v27 = v0;
    v27[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCharacterSequence<A>.AsyncIterator;
    v20 = *(v0 + 72);
    v21 = v26;
  }

  return AsyncUnicodeScalarSequence.AsyncIterator._nextComplexScalar(_:)(v21, v20);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCharacterSequence<A>.AsyncIterator(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 104) = a1;

    return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCharacterSequence<A>.AsyncIterator, 0, 0);
  }
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 104) = a1;

    return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCharacterSequence<A>.AsyncIterator, 0, 0);
  }
}

uint64_t AsyncCharacterSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  *(a2 + *(type metadata accessor for AsyncUnicodeScalarSequence.AsyncIterator() + 36)) = 256;
  result = type metadata accessor for AsyncCharacterSequence.AsyncIterator();
  v7 = (a2 + *(result + 36));
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  return result;
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance AsyncCharacterSequence<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AsyncCharacterSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t type metadata completion function for AsyncCharacterSequence()
{
  result = type metadata accessor for AsyncUnicodeScalarSequence();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AsyncCharacterSequence.AsyncIterator()
{
  result = type metadata accessor for AsyncUnicodeScalarSequence.AsyncIterator();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsyncCharacterSequence.AsyncIterator(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + 9) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v7 + 1;
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
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *(((a1 + v8 + 9) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      v17 = *(v5 + 48);

      return v17(a1);
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void storeEnumTagSinglePayload for AsyncCharacterSequence.AsyncIterator(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((v8 + 9) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 9) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v9 + 1;
  }

  else
  {
    v11 = 2;
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

  if (v9 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v9)
  {
    if (((v8 + 9) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((v8 + 9) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v9 + a2;
      bzero(a1, v10);
      *a1 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *&a1[v10] = v15;
      }

      else
      {
        *&a1[v10] = v15;
      }
    }

    else if (v14)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v10] = 0;
LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!v14)
  {
    goto LABEL_35;
  }

  a1[v10] = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  v17 = v8 + 2;
  if (v7 < 0x7FFFFFFF)
  {
    v21 = (&a1[v17 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v21 = a2 & 0x7FFFFFFF;
      v21[1] = 0;
    }

    else
    {
      v21[1] = (a2 - 1);
    }
  }

  else if (v7 >= a2)
  {
    v22 = *(v6 + 56);

    v22(a1, a2);
  }

  else
  {
    if (v17 <= 3)
    {
      v18 = ~(-1 << (8 * v17));
    }

    else
    {
      v18 = -1;
    }

    if (v17)
    {
      v19 = v18 & (~v7 + a2);
      if (v17 <= 3)
      {
        v20 = v17;
      }

      else
      {
        v20 = 4;
      }

      bzero(a1, v17);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else
        {
          *a1 = v19;
        }
      }

      else if (v20 == 1)
      {
        *a1 = v19;
      }

      else
      {
        *a1 = v19;
      }
    }
  }
}

id NSProgress.estimatedTimeRemaining.getter()
{
  result = [v0 estimatedTimeRemaining];
  v2 = result;
  if (result)
  {
    [result doubleValue];
    v4 = v3;

    return v4;
  }

  return result;
}

void key path getter for NSProgress.estimatedTimeRemaining : NSProgress(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 estimatedTimeRemaining];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v4 == 0;
}

void key path setter for NSProgress.estimatedTimeRemaining : NSProgress(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {

    [v2 setEstimatedTimeRemaining_];
  }

  else
  {
    v3 = [objc_allocWithZone(NSNumber) initWithDouble_];
    [v2 setEstimatedTimeRemaining_];
  }
}

void NSProgress.estimatedTimeRemaining.setter(uint64_t a1, char a2)
{
  if (a2)
  {

    [v2 setEstimatedTimeRemaining_];
  }

  else
  {
    v3 = [objc_allocWithZone(NSNumber) initWithDouble_];
    [v2 setEstimatedTimeRemaining_];
  }
}

void (*NSProgress.estimatedTimeRemaining.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 estimatedTimeRemaining];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v4 == 0;
  return NSProgress.estimatedTimeRemaining.modify;
}

void NSProgress.estimatedTimeRemaining.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);

    [v2 setEstimatedTimeRemaining_];
  }

  else
  {
    v3 = [objc_allocWithZone(NSNumber) initWithDouble_];
    [v1 setEstimatedTimeRemaining_];
  }
}

void (*NSProgress.throughput.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  v3 = [v1 throughput];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4 == 0;
  return NSProgress.throughput.modify;
}

void (*NSProgress.fileTotalCount.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  v3 = [v1 fileTotalCount];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4 == 0;
  return NSProgress.fileTotalCount.modify;
}

id NSProgress.throughput.getter(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = v2;
  if (!v2)
  {
    return 0;
  }

  v4 = [v2 integerValue];

  return v4;
}

void key path getter for NSProgress.throughput : NSProgress(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  *(a3 + 8) = v5 == 0;
}

void key path setter for NSProgress.throughput : NSProgress(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v7 = *a5;

    [v6 v7];
  }

  else
  {
    v8 = [objc_allocWithZone(NSNumber) initWithInteger_];
    [v6 *a5];
  }
}

void NSProgress.throughput.setter(uint64_t a1, char a2, SEL *a3)
{
  if (a2)
  {
    v5 = *a3;

    [v3 v5];
  }

  else
  {
    v6 = [objc_allocWithZone(NSNumber) initWithInteger_];
    [v3 *a3];
  }
}

void (*NSProgress.fileCompletedCount.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  v3 = [v1 fileCompletedCount];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4 == 0;
  return NSProgress.fileCompletedCount.modify;
}

void NSProgress.throughput.modify(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(a1 + 16);
  if (*(a1 + 8))
  {
    v5 = *a3;
    v6 = *(a1 + 16);

    [v6 v5];
  }

  else
  {
    v7 = [objc_allocWithZone(NSNumber) initWithInteger_];
    [v4 *a3];
  }
}

id protocol witness for ExpressibleByDictionaryLiteral.init(dictionaryLiteral:) in conformance NSDictionary@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  result = NSDictionary.init(dictionaryLiteral:)(a1);
  *a2 = result;
  return result;
}

uint64_t closure #1 in static Dictionary._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a2;
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v26 - v22;
  outlined init with copy of Any(v24, v29);
  swift_dynamicCast();
  outlined init with copy of Any(v27, v28);
  result = swift_dynamicCast();
  if (*(*a4 + 16) >= a4[1])
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 16))(v20, v23, a5);
    (*(v10 + 16))(v12, v15, a6);
    _NativeDictionary._unsafeInsertNew(key:value:)();
    (*(v10 + 8))(v15, a6);
    return (*(v17 + 8))(v23, a5);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v10[3] = swift_getObjectType();
  v10[0] = a2;
  v9[3] = swift_getObjectType();
  v9[0] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7(v10, v9, a4);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t NSDictionary._toCustomAnyHashable()()
{
  v2 = 0;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZs11AnyHashableV_AITt1g5(v0, &v2);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVABGMd);
    lazy protocol witness table accessor for type [AnyHashable : AnyHashable] and conformance <> [A : B]();
    return AnyHashable.init<A>(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSDictionary()
{
  v1 = *v0;
  v2 = 0;
  _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZs11AnyHashableV_AITt1g5(v1, &v2);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVABGMd);
    lazy protocol witness table accessor for type [AnyHashable : AnyHashable] and conformance <> [A : B]();
    AnyHashable.init<A>(_:)();
  }

  else
  {
    __break(1u);
  }
}

_OWORD *NSDictionary.Iterator.deinit()
{
  v1 = v0[12];
  v8[10] = v0[11];
  v8[11] = v1;
  v9[0] = v0[13];
  *(v9 + 9) = *(v0 + 217);
  v2 = v0[8];
  v8[6] = v0[7];
  v8[7] = v2;
  v3 = v0[10];
  v8[8] = v0[9];
  v8[9] = v3;
  v4 = v0[4];
  v8[2] = v0[3];
  v8[3] = v4;
  v5 = v0[6];
  v8[4] = v0[5];
  v8[5] = v5;
  v6 = v0[2];
  v8[0] = v0[1];
  v8[1] = v6;
  outlined destroy of NSFastEnumerationIterator(v8);
  return v0;
}

void protocol witness for Sequence.makeIterator() in conformance NSDictionary(void *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for NSDictionary.Iterator();
  v4 = swift_allocObject();
  v5 = swift_unknownObjectRetain();
  NSFastEnumerationIterator.init(_:)(v5, v12);
  v6 = v12[11];
  v4[11] = v12[10];
  v4[12] = v6;
  v4[13] = v13[0];
  *(v4 + 217) = *(v13 + 9);
  v7 = v12[7];
  v4[7] = v12[6];
  v4[8] = v7;
  v8 = v12[9];
  v4[9] = v12[8];
  v4[10] = v8;
  v9 = v12[3];
  v4[3] = v12[2];
  v4[4] = v9;
  v10 = v12[5];
  v4[5] = v12[4];
  v4[6] = v10;
  v11 = v12[1];
  v4[1] = v12[0];
  v4[2] = v11;

  *a1 = v4;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance NSDictionary()
{
  v1 = *v0;
  v2 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);

  return v2;
}

id NSDictionary.init(dictionary:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 __swiftInitWithDictionary_NSDictionary_];
}

int64_t NSDictionary.init(dictionary:)(void *a1)
{
  result = [a1 count];
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    v4 = result;
    v5 = 8 * result;
    if (8 * result + 0x4000000000000000 >= 0)
    {
      v6 = swift_slowAlloc();
      [a1 _getObjects_andKeys_count_];
      v7 = [v1 initWithObjects:v6 forKeys:v6 + v5 count:v4];
      MEMORY[0x1865D2690](v6, -1, -1);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t NSDictionary.customMirror.getter()
{
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  lazy protocol witness table accessor for type NSObject and conformance NSObject();
  swift_unknownObjectRetain();
  if (!static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)())
  {
    [v0 copyWithZone_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo8NSObjectCyXlGMd);
  return Mirror.init(reflecting:)();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  v2 = specialized RawRepresentable<>._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 *a1)
{
  Hasher.init(_seed:)();
  memcpy(__dst, a1, sizeof(__dst));
  v2 = a1[352];
  Locale.Components.hash(into:)(v6);
  MEMORY[0x1865CD060](v2);
  String.hash(into:)();
  String.hash(into:)();
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  if ((a3 & 0x100000000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a3);
  }

  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(HIDWORD(a4));
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, unsigned int a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](a1);
  Hasher._combine(_:)(a2 & 1);
  MEMORY[0x1865CD060]((a2 >> 8) & 1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 0x101, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v6, a1);
  specialized Set.hash(into:)(v6, a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, int a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3 & 1);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = qword_1812E7150[a1];
    while (qword_1812E7150[*(*(v2 + 48) + v4)] != v6)
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRelease_n();
      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v6 = *a1;
    v5 = a1[1];
    v21 = a1[3];
    v22 = a1[2];
    v7 = a1[4];
    v8 = a1[5];
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 48 * v4);
      v12 = v10[2];
      v11 = v10[3];
      v13 = v10[4];
      v14 = v10[5];
      v15 = *v10 == v6 && v10[1] == v5;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v16 = v12 == v22 && v11 == v21;
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v17 = v13 == v7 && v14 == v8;
          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v19;
    }

    while (((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 *__src, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = __src[352];
    memcpy(__dst, __src, 0x160uLL);
    v8 = *(__src + 45);
    v9 = *(__src + 46);
    v10 = *(__src + 47);
    v11 = *(__src + 48);
    do
    {
      v12 = *(v2 + 48) + 392 * v4;
      memcpy(v18, v12, sizeof(v18));
      memcpy(v17, v12, sizeof(v17));
      memcpy(__srca, __dst, sizeof(__srca));
      outlined init with copy of ICUDateIntervalFormatter.Signature(v18, v15);
      outlined init with copy of Locale.Components(v18, v15);
      outlined init with copy of Locale.Components(__dst, v15);
      LOBYTE(v12) = specialized static Locale.Components.== infix(_:_:)(v17, __srca);
      memcpy(v19, __srca, sizeof(v19));
      outlined destroy of Locale.Components(v19);
      memcpy(v20, v17, sizeof(v20));
      outlined destroy of Locale.Components(v20);
      if (v12 & 1) != 0 && LOBYTE(v18[44]) == v6 && (v18[45] == v8 && v18[46] == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        if (v18[47] == v10 && v18[48] == v11)
        {
          outlined destroy of ICUDateIntervalFormatter.Signature(v18);
          return v4;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined destroy of ICUDateIntervalFormatter.Signature(v18);
        if (v13)
        {
          return v4;
        }
      }

      else
      {
        outlined destroy of ICUDateIntervalFormatter.Signature(v18);
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v27 = a3;
    v28 = HIDWORD(a4);
    v11 = ~v7;
    v25 = (a3 & 0x100000000) == 0;
    v12 = *(v5 + 48);
    v26 = a4;
    do
    {
      v16 = v12 + 32 * v8;
      v17 = *(v16 + 16);
      v18 = *(v16 + 20);
      v20 = *(v16 + 24);
      v19 = *(v16 + 28);
      if (*v16 != a1 || *(v16 + 8) != a2)
      {
        v22 = v6;
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v6 = v22;
        LODWORD(a4) = v26;
        a3 = v27;
        if ((v23 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      if (v18)
      {
        if ((a3 & 0x100000000) == 0)
        {
          goto LABEL_12;
        }

        v14 = v20 == a4;
      }

      else
      {
        v13 = v25;
        if (v17 != a3)
        {
          v13 = 0;
        }

        v14 = v13 && v20 == a4;
      }

      if (v14 && v19 == v28)
      {
        return v8;
      }

LABEL_12:
      v8 = (v8 + 1) & v11;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    v16 = a1[48];
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    v24 = *(a1 + 1);
    v23 = v8;
    do
    {
      v9 = (*(v2 + 48) + 56 * v4);
      if (*v9 == v6)
      {
        v10 = *(v9 + 1);
        v11 = *(v9 + 1);
        v18 = *(v9 + 2);
        v12 = v9[48];
        if (v10)
        {
          if (!v7)
          {
            goto LABEL_4;
          }

          v17 = *(v9 + 1);
          v13 = _sSh2eeoiySbShyxG_ABtFZs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt1g5(v10, v7);
          v11 = v17;
          if ((v13 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if (v7)
        {
          goto LABEL_4;
        }

        v21 = v24;
        v22 = v11;

        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain();
        outlined init with copy of Calendar(&v24, v20);
        v14 = specialized static Calendar.== infix(_:_:)(&v22, &v21);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v14)
        {
          v21 = v23;
          v22 = v18;
          swift_unknownObjectRetain();
          outlined init with copy of Locale(&v23, v20);
          v19 = specialized static Locale.== infix(_:_:)(&v22, &v21);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          if ((v19 & 1) != 0 && ((v12 ^ v16) & 1) == 0)
          {
            return v4;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      if (specialized Sequence<>.elementsEqual<A>(_:)(a1, a2, *(*(v3 + 48) + 16 * v5), *(*(v3 + 48) + 16 * v5 + 8)))
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      if (!((*(*(v3 + 48) + 16 * result) != a1) | (*(*(v3 + 48) + 16 * result + 8) ^ a2) & 1 | (*(*(v3 + 48) + 16 * result + 9) ^ ((a2 & 0x100) >> 8)) & 1))
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *v13 == a1 && *(v13 + 8) == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v14 ^ a3) & 1) == 0)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

char *_sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_Si_SSTt3g5Tf4xxnn_n(char *result, uint64_t a2, id a3, uint64_t a4)
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
      v8 = a4;
      do
      {
        if (v8 > a4)
        {
          __break(1u);
          goto LABEL_13;
        }

        --v8;
        swift_unknownObjectRetain();
        result = swift_dynamicCast();
        *v7 = v12;
        v7 -= 8;
      }

      while (v8);
      v9 = a2 + 8 * a4 - 8;
      v10 = (a2 + 16 * a4 - 8);
      v11 = a4;
      while (v11 <= a4)
      {
        --v11;
        v9 -= 8;
        swift_unknownObjectRetain();
        result = swift_dynamicCast();
        *(v10 - 1) = v12;
        *v10 = v13;
        v10 -= 2;
        if (!v11)
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

id _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_s11AnyHashableV_AKTt3g5Tf4xxnn_n(id result, uint64_t a2, id a3, uint64_t a4)
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

      v7 = v6 + 8 * a4 - 8;
      v8 = v6 + 40 * a4 - 40;
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
        *(v8 + 32) = v15;
        *v8 = v13;
        *(v8 + 16) = v14;
        v8 -= 40;
      }

      while (v9);
      v10 = a2 + 8 * a4 - 8;
      v11 = a2 + 40 * a4 - 40;
      v12 = a4;
      while (v12 <= a4)
      {
        --v12;
        v10 -= 8;
        swift_unknownObjectRetain();
        result = swift_dynamicCast();
        *(v11 + 32) = v15;
        *v11 = v13;
        *(v11 + 16) = v14;
        v11 -= 40;
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

void __swiftcall URLError.init(_nsError:)(Foundation::URLError *__return_ptr retstr, NSError *_nsError)
{
  v4 = [(NSError *)_nsError domain];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  isTaggedPointer = _objc_isTaggedPointer(v4);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
LABEL_7:
    LOBYTE(v35) = 0;
    if (__CFStringIsCF())
    {

      v10 = 0;
      v12 = 0xE000000000000000;
      goto LABEL_22;
    }

    v13 = v8;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v10 = v14;
      v12 = v15;

      goto LABEL_22;
    }

    if ([(NSString *)v13 length])
    {
      v10 = String.init(_cocoaString:)();
      v12 = v19;
      goto LABEL_21;
    }

LABEL_20:
    v10 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_22;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v12 = v11;

      goto LABEL_22;
    }

    goto LABEL_7;
  }

  v16 = [(NSString *)v8 UTF8String];
  if (!v16)
  {
LABEL_47:
    __break(1u);
    return;
  }

  v17 = String.init(utf8String:)(v16);
  if (!v18)
  {
    __break(1u);
LABEL_14:
    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [(NSString *)v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v10 = v35;
      v12 = v36;
      goto LABEL_21;
    }
  }

  v10 = v17;
  v12 = v18;

LABEL_21:
LABEL_22:
  v20 = _objc_isTaggedPointer(@"NSURLErrorDomain");
  v21 = @"NSURLErrorDomain";
  v22 = v21;
  if (!v20)
  {
    goto LABEL_27;
  }

  v23 = _objc_getTaggedPointerTag(v21);
  if (!v23)
  {
    goto LABEL_34;
  }

  if (v23 != 22)
  {
    if (v23 == 2)
    {
      MEMORY[0x1EEE9AC00](v23);
      v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v26 = v25;

      goto LABEL_40;
    }

LABEL_27:
    if (__CFStringIsCF())
    {
      v24 = 0;

      v26 = 0xE000000000000000;
    }

    else
    {
      v27 = v22;
      v28 = String.init(_nativeStorage:)();
      if (v29)
      {
        v24 = v28;
        v26 = v29;
      }

      else if ([(__CFString *)v27 length])
      {
        v24 = String.init(_cocoaString:)();
        v26 = v33;
      }

      else
      {

        v24 = 0;
        v26 = 0xE000000000000000;
      }
    }

    goto LABEL_40;
  }

  v30 = [(__CFString *)v22 UTF8String];
  if (!v30)
  {
    __break(1u);
    goto LABEL_47;
  }

  v31 = String.init(utf8String:)(v30);
  if (v32)
  {
LABEL_35:
    v24 = v31;
    v26 = v32;

    goto LABEL_40;
  }

  __break(1u);
LABEL_34:
  _CFIndirectTaggedPointerStringGetContents();
  v31 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v32)
  {
    goto LABEL_35;
  }

  [(__CFString *)v22 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v24 = v35;
  v26 = v36;
LABEL_40:
  if (v10 == v24 && v12 == v26)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      __break(1u);
    }
  }

  retstr->_nsError.super.isa = _nsError;
}

id static URLError.errorDomain.getter()
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSURLErrorDomain");
  v1 = @"NSURLErrorDomain";
  v2 = v1;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v1);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          return v4;
        }

        goto LABEL_6;
      }

      result = [(__CFString *)v2 UTF8String];
      if (result)
      {
        result = String.init(utf8String:)(result);
        if (v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    _CFIndirectTaggedPointerStringGetContents();
    result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      return v13;
    }

LABEL_13:
    v11 = result;

    return v11;
  }

LABEL_6:
  if (__CFStringIsCF())
  {

    return 0;
  }

  v6 = v2;
  v7 = String.init(_nativeStorage:)();
  if (v8)
  {
    v9 = v7;

    return v9;
  }

  if (![(__CFString *)v6 length])
  {

    return 0;
  }

  return String.init(_cocoaString:)();
}

uint64_t protocol witness for _BridgedStoredNSError.init(_nsError:) in conformance URLError@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(v4);
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSURLErrorDomain") && v7 == v8)
  {
    goto LABEL_7;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_7:
  }

  *a2 = a1;
  return result;
}

Foundation::URLError::BackgroundTaskCancelledReason_optional __swiftcall URLError.BackgroundTaskCancelledReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Foundation::URLError::NetworkUnavailableReason_optional __swiftcall URLError.NetworkUnavailableReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t URLError.failingURL.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = [_swift_stdlib_bridgeErrorToNSError() userInfo];
  swift_unknownObjectRelease();
  if (v4)
  {
    swift_unknownObjectRetain();
    v5 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (v5)
    {
      v6 = v5;
LABEL_19:

      goto LABEL_22;
    }

    v7 = [v4 count];
    if (v7)
    {
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v6 = static _DictionaryStorage.allocate(capacity:)();
      v9 = *(v6 + 48);
      v10 = *(v6 + 56);

      result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v9, v10, v4, v8);
      if (result < 0 || v8 < result)
      {
LABEL_54:
        __break(1u);
        return result;
      }

      *(v6 + 16) = result;
      if (!result)
      {
LABEL_18:

        goto LABEL_19;
      }

      v12 = result - 1;
      v13 = v6 + 64;
      while (1)
      {
        while (1)
        {
          if ((*(v13 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12))
          {
            goto LABEL_10;
          }

          v18 = (*(v6 + 48) + 16 * v12);
          v19 = *v18;
          v20 = v18[1];

          v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
          v23 = v22;

          if ((v23 & 1) == 0)
          {
            break;
          }

          v24 = *(v6 + 48) + 16 * v12;

          outlined destroy of String(v24);
          result = __swift_destroy_boxed_opaque_existential_1(*(v6 + 56) + 32 * v12);
          v25 = *(v6 + 16);
          v26 = __OFSUB__(v25, 1);
          v27 = v25 - 1;
          if (v26)
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          *(v6 + 16) = v27;

LABEL_10:
          if (--v12 < 0)
          {
            goto LABEL_18;
          }
        }

        *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        if (v12 < v21)
        {
          *(*(v6 + 48) + 16 * v21) = *(*(v6 + 48) + 16 * v12);
          v14 = *(v6 + 56);
          v15 = (v14 + 32 * v12);
          v16 = v15[1];
          v17 = (v14 + 32 * v21);
          *v17 = *v15;
          v17[1] = v16;
          goto LABEL_10;
        }

        if (v21 == v12)
        {
          goto LABEL_10;
        }

        v28 = *(v6 + 48);
        v29 = (v28 + 16 * v21);
        v30 = (v28 + 16 * v12);
        v31 = *v29;
        v32 = v29[1];
        v33 = v30[1];
        *v29 = *v30;
        v29[1] = v33;
        *v30 = v31;
        v30[1] = v32;
        v34 = *(v6 + 56);
        v35 = (v34 + 32 * v21);
        v36 = (v34 + 32 * v12);
        outlined init with take of Any(v35, &v65);
        outlined init with take of Any(v36, v35);
        outlined init with take of Any(&v65, v36);
        if (v12 < 0)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC8];
LABEL_22:
  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v37 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC8];
  }

  v38 = 1 << *(v6 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & *(v6 + 64);
  v41 = (v38 + 63) >> 6;
  v42 = v37 + 64;

  v43 = 0;
  while (v40)
  {
LABEL_36:
    v47 = __clz(__rbit64(v40)) | (v43 << 6);
    v48 = (*(v6 + 48) + 16 * v47);
    v50 = *v48;
    v49 = v48[1];
    outlined init with copy of Any(*(v6 + 56) + 32 * v47, v72);
    *&v71 = v50;
    *(&v71 + 1) = v49;
    v69[2] = v71;
    v70[0] = v72[0];
    v70[1] = v72[1];
    v69[0] = v71;

    swift_dynamicCast();
    outlined init with take of Any(v70, v64);
    v65 = v61;
    v66 = v62;
    v67 = v63;
    outlined init with take of Any(v64, v68);
    v61 = v65;
    v62 = v66;
    v63 = v67;
    outlined init with take of Any(v68, v69);
    result = AnyHashable._rawHashValue(seed:)(*(v37 + 40));
    v51 = -1 << *(v37 + 32);
    v52 = result & ~v51;
    v53 = v52 >> 6;
    if (((-1 << v52) & ~*(v42 + 8 * (v52 >> 6))) == 0)
    {
      v54 = 0;
      v55 = (63 - v51) >> 6;
      while (++v53 != v55 || (v54 & 1) == 0)
      {
        v56 = v53 == v55;
        if (v53 == v55)
        {
          v53 = 0;
        }

        v54 |= v56;
        v57 = *(v42 + 8 * v53);
        if (v57 != -1)
        {
          v44 = __clz(__rbit64(~v57)) + (v53 << 6);
          goto LABEL_30;
        }
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v44 = __clz(__rbit64((-1 << v52) & ~*(v42 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    v40 &= v40 - 1;
    *(v42 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
    v45 = *(v37 + 48) + 40 * v44;
    *v45 = v61;
    *(v45 + 16) = v62;
    *(v45 + 32) = v63;
    result = outlined init with take of Any(v69, (*(v37 + 56) + 32 * v44));
    ++*(v37 + 16);
  }

  while (1)
  {
    v46 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v46 >= v41)
    {
      break;
    }

    v40 = *(v6 + 64 + 8 * v46);
    ++v43;
    if (v40)
    {
      v43 = v46;
      goto LABEL_36;
    }
  }

  type metadata accessor for NSString();
  lazy protocol witness table accessor for type NSString and conformance NSObject();
  v58 = @"NSErrorFailingURLKey";
  AnyHashable.init<A>(_:)();
  if (*(v37 + 16) && (v59 = specialized __RawDictionaryStorage.find<A>(_:)(&v65), (v60 & 1) != 0))
  {
    outlined init with copy of Any(*(v37 + 56) + 32 * v59, v73);
    outlined destroy of AnyHashable(&v65);

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a1 = 0;
      a1[1] = 0;
    }
  }

  else
  {

    result = outlined destroy of AnyHashable(&v65);
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t URLError.failureURLString.getter()
{
  v1 = *v0;
  v2 = [_swift_stdlib_bridgeErrorToNSError() userInfo];
  swift_unknownObjectRelease();
  if (!v2)
  {
LABEL_22:
    v4 = MEMORY[0x1E69E7CC8];
    if (*(MEMORY[0x1E69E7CC8] + 16))
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  swift_unknownObjectRetain();
  v3 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v3)
  {
    v4 = v3;
    goto LABEL_19;
  }

  v5 = [v2 count];
  if (!v5)
  {

    goto LABEL_22;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v4 = static _DictionaryStorage.allocate(capacity:)();
  v7 = *(v4 + 48);
  v8 = *(v4 + 56);

  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v7, v8, v2, v6);
  if (result < 0 || v6 < result)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  *(v4 + 16) = result;
  if (result)
  {
    v10 = result - 1;
    v11 = v4 + 64;
    do
    {
      while (1)
      {
        if ((*(v11 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10))
        {
          goto LABEL_10;
        }

        v16 = (*(v4 + 48) + 16 * v10);
        v17 = *v16;
        v18 = v16[1];

        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          break;
        }

        v22 = *(v4 + 48) + 16 * v10;

        outlined destroy of String(v22);
        result = __swift_destroy_boxed_opaque_existential_1(*(v4 + 56) + 32 * v10);
        v23 = *(v4 + 16);
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v24)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        *(v4 + 16) = v25;

LABEL_10:
        if (--v10 < 0)
        {
          goto LABEL_18;
        }
      }

      *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (v10 < v19)
      {
        *(*(v4 + 48) + 16 * v19) = *(*(v4 + 48) + 16 * v10);
        v12 = *(v4 + 56);
        v13 = (v12 + 32 * v10);
        v14 = v13[1];
        v15 = (v12 + 32 * v19);
        *v15 = *v13;
        v15[1] = v14;
        goto LABEL_10;
      }

      if (v19 == v10)
      {
        goto LABEL_10;
      }

      v26 = *(v4 + 48);
      v27 = (v26 + 16 * v19);
      v28 = (v26 + 16 * v10);
      v29 = *v27;
      v30 = v27[1];
      v31 = v28[1];
      *v27 = *v28;
      v27[1] = v31;
      *v28 = v29;
      v28[1] = v30;
      v32 = *(v4 + 56);
      v33 = (v32 + 32 * v19);
      v34 = (v32 + 32 * v10);
      outlined init with take of Any(v33, &v63);
      outlined init with take of Any(v34, v33);
      outlined init with take of Any(&v63, v34);
    }

    while ((v10 & 0x8000000000000000) == 0);
  }

LABEL_18:

LABEL_19:

  if (*(v4 + 16))
  {
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v35 = static _DictionaryStorage.allocate(capacity:)();
    goto LABEL_24;
  }

LABEL_23:
  v35 = MEMORY[0x1E69E7CC8];
LABEL_24:
  v36 = 1 << *(v4 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & *(v4 + 64);
  v39 = (v36 + 63) >> 6;
  v40 = v35 + 64;

  v41 = 0;
  while (v38)
  {
LABEL_35:
    v45 = __clz(__rbit64(v38)) | (v41 << 6);
    v46 = (*(v4 + 48) + 16 * v45);
    v48 = *v46;
    v47 = v46[1];
    outlined init with copy of Any(*(v4 + 56) + 32 * v45, v70);
    *&v69 = v48;
    *(&v69 + 1) = v47;
    v67[2] = v69;
    v68[0] = v70[0];
    v68[1] = v70[1];
    v67[0] = v69;

    swift_dynamicCast();
    outlined init with take of Any(v68, v62);
    v63 = v59;
    v64 = v60;
    v65 = v61;
    outlined init with take of Any(v62, v66);
    v59 = v63;
    v60 = v64;
    v61 = v65;
    outlined init with take of Any(v66, v67);
    result = AnyHashable._rawHashValue(seed:)(*(v35 + 40));
    v49 = -1 << *(v35 + 32);
    v50 = result & ~v49;
    v51 = v50 >> 6;
    if (((-1 << v50) & ~*(v40 + 8 * (v50 >> 6))) == 0)
    {
      v52 = 0;
      v53 = (63 - v49) >> 6;
      while (++v51 != v53 || (v52 & 1) == 0)
      {
        v54 = v51 == v53;
        if (v51 == v53)
        {
          v51 = 0;
        }

        v52 |= v54;
        v55 = *(v40 + 8 * v51);
        if (v55 != -1)
        {
          v42 = __clz(__rbit64(~v55)) + (v51 << 6);
          goto LABEL_29;
        }
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v42 = __clz(__rbit64((-1 << v50) & ~*(v40 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    v38 &= v38 - 1;
    *(v40 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v43 = *(v35 + 48) + 40 * v42;
    *v43 = v59;
    *(v43 + 16) = v60;
    *(v43 + 32) = v61;
    result = outlined init with take of Any(v67, (*(v35 + 56) + 32 * v42));
    ++*(v35 + 16);
  }

  while (1)
  {
    v44 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v44 >= v39)
    {
      break;
    }

    v38 = *(v4 + 64 + 8 * v44);
    ++v41;
    if (v38)
    {
      v41 = v44;
      goto LABEL_35;
    }
  }

  *&v59 = @"NSErrorFailingURLStringKey";
  type metadata accessor for NSString();
  lazy protocol witness table accessor for type NSString and conformance NSObject();
  v56 = @"NSErrorFailingURLStringKey";
  AnyHashable.init<A>(_:)();
  if (*(v35 + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(&v63), (v58 & 1) != 0))
  {
    outlined init with copy of Any(*(v35 + 56) + 32 * v57, &v59);
    outlined destroy of AnyHashable(&v63);

    if (swift_dynamicCast())
    {
      return v69;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    outlined destroy of AnyHashable(&v63);
    return 0;
  }
}

uint64_t URLError.failureURLPeerTrust.getter()
{
  v1 = *v0;
  v2 = [_swift_stdlib_bridgeErrorToNSError() userInfo];
  swift_unknownObjectRelease();
  if (!v2)
  {
LABEL_22:
    v4 = MEMORY[0x1E69E7CC8];
    if (*(MEMORY[0x1E69E7CC8] + 16))
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  swift_unknownObjectRetain();
  v3 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v3)
  {
    v4 = v3;
    goto LABEL_19;
  }

  v5 = [v2 count];
  if (!v5)
  {

    goto LABEL_22;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v4 = static _DictionaryStorage.allocate(capacity:)();
  v7 = *(v4 + 48);
  v8 = *(v4 + 56);

  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v7, v8, v2, v6);
  if (result < 0 || v6 < result)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  *(v4 + 16) = result;
  if (result)
  {
    v10 = result - 1;
    v11 = v4 + 64;
    do
    {
      while (1)
      {
        if ((*(v11 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10))
        {
          goto LABEL_10;
        }

        v16 = (*(v4 + 48) + 16 * v10);
        v17 = *v16;
        v18 = v16[1];

        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          break;
        }

        v22 = *(v4 + 48) + 16 * v10;

        outlined destroy of String(v22);
        result = __swift_destroy_boxed_opaque_existential_1(*(v4 + 56) + 32 * v10);
        v23 = *(v4 + 16);
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v24)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        *(v4 + 16) = v25;

LABEL_10:
        if (--v10 < 0)
        {
          goto LABEL_18;
        }
      }

      *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (v10 < v19)
      {
        *(*(v4 + 48) + 16 * v19) = *(*(v4 + 48) + 16 * v10);
        v12 = *(v4 + 56);
        v13 = (v12 + 32 * v10);
        v14 = v13[1];
        v15 = (v12 + 32 * v19);
        *v15 = *v13;
        v15[1] = v14;
        goto LABEL_10;
      }

      if (v19 == v10)
      {
        goto LABEL_10;
      }

      v26 = *(v4 + 48);
      v27 = (v26 + 16 * v19);
      v28 = (v26 + 16 * v10);
      v29 = *v27;
      v30 = v27[1];
      v31 = v28[1];
      *v27 = *v28;
      v27[1] = v31;
      *v28 = v29;
      v28[1] = v30;
      v32 = *(v4 + 56);
      v33 = (v32 + 32 * v19);
      v34 = (v32 + 32 * v10);
      outlined init with take of Any(v33, &v63);
      outlined init with take of Any(v34, v33);
      outlined init with take of Any(&v63, v34);
    }

    while ((v10 & 0x8000000000000000) == 0);
  }

LABEL_18:

LABEL_19:

  if (*(v4 + 16))
  {
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v35 = static _DictionaryStorage.allocate(capacity:)();
    goto LABEL_24;
  }

LABEL_23:
  v35 = MEMORY[0x1E69E7CC8];
LABEL_24:
  v36 = 1 << *(v4 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & *(v4 + 64);
  v39 = (v36 + 63) >> 6;
  v40 = v35 + 64;

  v41 = 0;
  while (v38)
  {
LABEL_35:
    v45 = __clz(__rbit64(v38)) | (v41 << 6);
    v46 = (*(v4 + 48) + 16 * v45);
    v48 = *v46;
    v47 = v46[1];
    outlined init with copy of Any(*(v4 + 56) + 32 * v45, v70);
    *&v69 = v48;
    *(&v69 + 1) = v47;
    v67[2] = v69;
    v68[0] = v70[0];
    v68[1] = v70[1];
    v67[0] = v69;

    swift_dynamicCast();
    outlined init with take of Any(v68, v62);
    v63 = v59;
    v64 = v60;
    v65 = v61;
    outlined init with take of Any(v62, v66);
    v59 = v63;
    v60 = v64;
    v61 = v65;
    outlined init with take of Any(v66, v67);
    result = AnyHashable._rawHashValue(seed:)(*(v35 + 40));
    v49 = -1 << *(v35 + 32);
    v50 = result & ~v49;
    v51 = v50 >> 6;
    if (((-1 << v50) & ~*(v40 + 8 * (v50 >> 6))) == 0)
    {
      v52 = 0;
      v53 = (63 - v49) >> 6;
      while (++v51 != v53 || (v52 & 1) == 0)
      {
        v54 = v51 == v53;
        if (v51 == v53)
        {
          v51 = 0;
        }

        v52 |= v54;
        v55 = *(v40 + 8 * v51);
        if (v55 != -1)
        {
          v42 = __clz(__rbit64(~v55)) + (v51 << 6);
          goto LABEL_29;
        }
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v42 = __clz(__rbit64((-1 << v50) & ~*(v40 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    v38 &= v38 - 1;
    *(v40 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v43 = *(v35 + 48) + 40 * v42;
    *v43 = v59;
    *(v43 + 16) = v60;
    *(v43 + 32) = v61;
    result = outlined init with take of Any(v67, (*(v35 + 56) + 32 * v42));
    ++*(v35 + 16);
  }

  while (1)
  {
    v44 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v44 >= v39)
    {
      break;
    }

    v38 = *(v4 + 64 + 8 * v44);
    ++v41;
    if (v38)
    {
      v41 = v44;
      goto LABEL_35;
    }
  }

  *&v59 = @"NSURLErrorFailingURLPeerTrustErrorKey";
  type metadata accessor for NSString();
  lazy protocol witness table accessor for type NSString and conformance NSObject();
  v56 = @"NSURLErrorFailingURLPeerTrustErrorKey";
  AnyHashable.init<A>(_:)();
  if (*(v35 + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(&v63), (v58 & 1) != 0))
  {
    outlined init with copy of Any(*(v35 + 56) + 32 * v57, &v69);
    outlined destroy of AnyHashable(&v63);

    outlined init with take of Any(&v69, &v59);
    outlined init with take of Any(&v59, &v63);
    type metadata accessor for SecTrustRef(0);
    swift_dynamicCast();
    return v69;
  }

  else
  {

    outlined destroy of AnyHashable(&v63);
    return 0;
  }
}

uint64_t URLError.backgroundTaskCancelledReason.getter@<X0>(char *a1@<X8>)
{
  v93 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = [_swift_stdlib_bridgeErrorToNSError() userInfo];
  swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_21;
  }

  swift_unknownObjectRetain();
  v5 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (!v5)
  {
    v7 = [v4 count];
    if (v7)
    {
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v6 = static _DictionaryStorage.allocate(capacity:)();
      v9 = *(v6 + 48);
      v10 = *(v6 + 56);

      v11 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v9, v10, v4, v8);
      if (v11 < 0 || v8 < v11)
      {
        goto LABEL_86;
      }

      *(v6 + 16) = v11;
      if (!v11)
      {
LABEL_18:

        goto LABEL_19;
      }

      v12 = v11 - 1;
      v13 = v6 + 64;
      while (1)
      {
        while (1)
        {
          if ((*(v13 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12))
          {
            goto LABEL_10;
          }

          v18 = (*(v6 + 48) + 16 * v12);
          v19 = *v18;
          v20 = v18[1];

          v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
          v23 = v22;

          if ((v23 & 1) == 0)
          {
            break;
          }

          v24 = *(v6 + 48) + 16 * v12;

          outlined destroy of String(v24);
          __swift_destroy_boxed_opaque_existential_1(*(v6 + 56) + 32 * v12);
          v25 = *(v6 + 16);
          v26 = __OFSUB__(v25, 1);
          v27 = v25 - 1;
          if (v26)
          {
            goto LABEL_85;
          }

          *(v6 + 16) = v27;

LABEL_10:
          if (--v12 < 0)
          {
            goto LABEL_18;
          }
        }

        *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        if (v12 < v21)
        {
          *(*(v6 + 48) + 16 * v21) = *(*(v6 + 48) + 16 * v12);
          v14 = *(v6 + 56);
          v15 = (v14 + 32 * v12);
          v16 = v15[1];
          v17 = (v14 + 32 * v21);
          *v17 = *v15;
          v17[1] = v16;
          goto LABEL_10;
        }

        if (v21 == v12)
        {
          goto LABEL_10;
        }

        v28 = *(v6 + 48);
        v29 = (v28 + 16 * v21);
        v30 = (v28 + 16 * v12);
        v31 = *v29;
        v32 = v29[1];
        v33 = v30[1];
        *v29 = *v30;
        v29[1] = v33;
        *v30 = v31;
        v30[1] = v32;
        v34 = *(v6 + 56);
        v35 = (v34 + 32 * v21);
        v36 = (v34 + 32 * v12);
        outlined init with take of Any(v35, &v83);
        outlined init with take of Any(v36, v35);
        outlined init with take of Any(&v83, v36);
        if (v12 < 0)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_21:
    v6 = MEMORY[0x1E69E7CC8];
    goto LABEL_22;
  }

  v6 = v5;
LABEL_19:

LABEL_22:
  v78 = a1;
  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v37 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC8];
  }

  v38 = 1 << *(v6 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & *(v6 + 64);
  v41 = (v38 + 63) >> 6;
  v42 = v37 + 64;

  v43 = 0;
LABEL_31:
  if (v40)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v46 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
    }

    if (v46 >= v41)
    {
      break;
    }

    v40 = *(v6 + 64 + 8 * v46);
    ++v43;
    if (v40)
    {
      v43 = v46;
LABEL_36:
      v47 = __clz(__rbit64(v40)) | (v43 << 6);
      v48 = (*(v6 + 48) + 16 * v47);
      v50 = *v48;
      v49 = v48[1];
      outlined init with copy of Any(*(v6 + 56) + 32 * v47, v91);
      *&v90 = v50;
      *(&v90 + 1) = v49;
      v88 = v90;
      v89[0] = v91[0];
      v89[1] = v91[1];
      v87[0] = v90;

      swift_dynamicCast();
      outlined init with take of Any(v89, v82);
      v83 = v79;
      v84 = v80;
      v85 = v81;
      outlined init with take of Any(v82, v86);
      v79 = v83;
      v80 = v84;
      v81 = v85;
      outlined init with take of Any(v86, v87);
      v51 = AnyHashable._rawHashValue(seed:)(*(v37 + 40));
      v52 = -1 << *(v37 + 32);
      v53 = v51 & ~v52;
      v54 = v53 >> 6;
      if (((-1 << v53) & ~*(v42 + 8 * (v53 >> 6))) != 0)
      {
        v44 = __clz(__rbit64((-1 << v53) & ~*(v42 + 8 * (v53 >> 6)))) | v53 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v55 = 0;
        v56 = (63 - v52) >> 6;
        do
        {
          if (++v54 == v56 && (v55 & 1) != 0)
          {
            goto LABEL_84;
          }

          v57 = v54 == v56;
          if (v54 == v56)
          {
            v54 = 0;
          }

          v55 |= v57;
          v58 = *(v42 + 8 * v54);
        }

        while (v58 == -1);
        v44 = __clz(__rbit64(~v58)) + (v54 << 6);
      }

      v40 &= v40 - 1;
      *(v42 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      v45 = *(v37 + 48) + 40 * v44;
      *v45 = v79;
      *(v45 + 16) = v80;
      *(v45 + 32) = v81;
      outlined init with take of Any(v87, (*(v37 + 56) + 32 * v44));
      ++*(v37 + 16);
      goto LABEL_31;
    }
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSURLErrorBackgroundTaskCancelledReasonKey");
  v60 = @"NSURLErrorBackgroundTaskCancelledReasonKey";
  v61 = v60;
  if ((isTaggedPointer & 1) == 0)
  {
    goto LABEL_50;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v60);
  if (!TaggedPointerTag)
  {
    goto LABEL_60;
  }

  if (TaggedPointerTag == 22)
  {
    result = [(__CFString *)v61 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v68 = String.init(utf8String:)(result);
    if (v69)
    {
LABEL_70:
      v63 = v68;

      goto LABEL_74;
    }

    __break(1u);
LABEL_60:
    LOWORD(v90) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v68 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v70)
    {
      [(__CFString *)v61 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v63 = v79;
      goto LABEL_74;
    }

    goto LABEL_70;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_50:
    *&v83 = 0;
    LOBYTE(v90) = 0;
    LOBYTE(v88) = 0;
    if (__CFStringIsCF())
    {
      v63 = v83;
      if (!v83)
      {

        goto LABEL_74;
      }

      if (v88 == 1)
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        v71 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_73:
        v63 = v71;
        goto LABEL_74;
      }

      if (v90)
      {
        v72 = [(__CFString *)v61 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v72);
        v68 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v74 = HIBYTE(v73) & 0xF;
        if ((v73 & 0x2000000000000000) == 0)
        {
          v74 = v68 & 0xFFFFFFFFFFFFLL;
        }

        if (v74)
        {
          goto LABEL_70;
        }
      }
    }

    else
    {
      v64 = v61;
      v65 = String.init(_nativeStorage:)();
      if (v66)
      {
        v63 = v65;

        goto LABEL_74;
      }

      *&v83 = [(__CFString *)v64 length];
      if (!v83)
      {

        v63 = 0;
        goto LABEL_74;
      }
    }

    v71 = String.init(_cocoaString:)();
    goto LABEL_73;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v63 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_74:
  AnyHashable.init<A>(_:)();
  if (!*(v37 + 16) || (v75 = specialized __RawDictionaryStorage.find<A>(_:)(&v83), (v76 & 1) == 0))
  {

    result = outlined destroy of AnyHashable(&v83);
    goto LABEL_81;
  }

  outlined init with copy of Any(*(v37 + 56) + 32 * v75, v92);
  outlined destroy of AnyHashable(&v83);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_81:
    v77 = 3;
    goto LABEL_82;
  }

  v77 = v63;
  if (v63 >= 3)
  {
    v77 = 3;
  }

LABEL_82:
  *v78 = v77;
  return result;
}

uint64_t URLError.networkUnavailableReason.getter@<X0>(char *a1@<X8>)
{
  v93 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = [_swift_stdlib_bridgeErrorToNSError() userInfo];
  swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_21;
  }

  swift_unknownObjectRetain();
  v5 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (!v5)
  {
    v7 = [v4 count];
    if (v7)
    {
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v6 = static _DictionaryStorage.allocate(capacity:)();
      v9 = *(v6 + 48);
      v10 = *(v6 + 56);

      v11 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v9, v10, v4, v8);
      if (v11 < 0 || v8 < v11)
      {
        goto LABEL_86;
      }

      *(v6 + 16) = v11;
      if (!v11)
      {
LABEL_18:

        goto LABEL_19;
      }

      v12 = v11 - 1;
      v13 = v6 + 64;
      while (1)
      {
        while (1)
        {
          if ((*(v13 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12))
          {
            goto LABEL_10;
          }

          v18 = (*(v6 + 48) + 16 * v12);
          v19 = *v18;
          v20 = v18[1];

          v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
          v23 = v22;

          if ((v23 & 1) == 0)
          {
            break;
          }

          v24 = *(v6 + 48) + 16 * v12;

          outlined destroy of String(v24);
          __swift_destroy_boxed_opaque_existential_1(*(v6 + 56) + 32 * v12);
          v25 = *(v6 + 16);
          v26 = __OFSUB__(v25, 1);
          v27 = v25 - 1;
          if (v26)
          {
            goto LABEL_85;
          }

          *(v6 + 16) = v27;

LABEL_10:
          if (--v12 < 0)
          {
            goto LABEL_18;
          }
        }

        *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        if (v12 < v21)
        {
          *(*(v6 + 48) + 16 * v21) = *(*(v6 + 48) + 16 * v12);
          v14 = *(v6 + 56);
          v15 = (v14 + 32 * v12);
          v16 = v15[1];
          v17 = (v14 + 32 * v21);
          *v17 = *v15;
          v17[1] = v16;
          goto LABEL_10;
        }

        if (v21 == v12)
        {
          goto LABEL_10;
        }

        v28 = *(v6 + 48);
        v29 = (v28 + 16 * v21);
        v30 = (v28 + 16 * v12);
        v31 = *v29;
        v32 = v29[1];
        v33 = v30[1];
        *v29 = *v30;
        v29[1] = v33;
        *v30 = v31;
        v30[1] = v32;
        v34 = *(v6 + 56);
        v35 = (v34 + 32 * v21);
        v36 = (v34 + 32 * v12);
        outlined init with take of Any(v35, &v83);
        outlined init with take of Any(v36, v35);
        outlined init with take of Any(&v83, v36);
        if (v12 < 0)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_21:
    v6 = MEMORY[0x1E69E7CC8];
    goto LABEL_22;
  }

  v6 = v5;
LABEL_19:

LABEL_22:
  v78 = a1;
  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v37 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC8];
  }

  v38 = 1 << *(v6 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & *(v6 + 64);
  v41 = (v38 + 63) >> 6;
  v42 = v37 + 64;

  v43 = 0;
LABEL_31:
  if (v40)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v46 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
    }

    if (v46 >= v41)
    {
      break;
    }

    v40 = *(v6 + 64 + 8 * v46);
    ++v43;
    if (v40)
    {
      v43 = v46;
LABEL_36:
      v47 = __clz(__rbit64(v40)) | (v43 << 6);
      v48 = (*(v6 + 48) + 16 * v47);
      v50 = *v48;
      v49 = v48[1];
      outlined init with copy of Any(*(v6 + 56) + 32 * v47, v91);
      *&v90 = v50;
      *(&v90 + 1) = v49;
      v88 = v90;
      v89[0] = v91[0];
      v89[1] = v91[1];
      v87[0] = v90;

      swift_dynamicCast();
      outlined init with take of Any(v89, v82);
      v83 = v79;
      v84 = v80;
      v85 = v81;
      outlined init with take of Any(v82, v86);
      v79 = v83;
      v80 = v84;
      v81 = v85;
      outlined init with take of Any(v86, v87);
      v51 = AnyHashable._rawHashValue(seed:)(*(v37 + 40));
      v52 = -1 << *(v37 + 32);
      v53 = v51 & ~v52;
      v54 = v53 >> 6;
      if (((-1 << v53) & ~*(v42 + 8 * (v53 >> 6))) != 0)
      {
        v44 = __clz(__rbit64((-1 << v53) & ~*(v42 + 8 * (v53 >> 6)))) | v53 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v55 = 0;
        v56 = (63 - v52) >> 6;
        do
        {
          if (++v54 == v56 && (v55 & 1) != 0)
          {
            goto LABEL_84;
          }

          v57 = v54 == v56;
          if (v54 == v56)
          {
            v54 = 0;
          }

          v55 |= v57;
          v58 = *(v42 + 8 * v54);
        }

        while (v58 == -1);
        v44 = __clz(__rbit64(~v58)) + (v54 << 6);
      }

      v40 &= v40 - 1;
      *(v42 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      v45 = *(v37 + 48) + 40 * v44;
      *v45 = v79;
      *(v45 + 16) = v80;
      *(v45 + 32) = v81;
      outlined init with take of Any(v87, (*(v37 + 56) + 32 * v44));
      ++*(v37 + 16);
      goto LABEL_31;
    }
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSURLErrorNetworkUnavailableReasonKey");
  v60 = @"NSURLErrorNetworkUnavailableReasonKey";
  v61 = v60;
  if ((isTaggedPointer & 1) == 0)
  {
    goto LABEL_50;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v60);
  if (!TaggedPointerTag)
  {
    goto LABEL_60;
  }

  if (TaggedPointerTag == 22)
  {
    result = [(__CFString *)v61 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v68 = String.init(utf8String:)(result);
    if (v69)
    {
LABEL_70:
      v63 = v68;

      goto LABEL_74;
    }

    __break(1u);
LABEL_60:
    LOWORD(v90) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v68 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v70)
    {
      [(__CFString *)v61 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v63 = v79;
      goto LABEL_74;
    }

    goto LABEL_70;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_50:
    *&v83 = 0;
    LOBYTE(v90) = 0;
    LOBYTE(v88) = 0;
    if (__CFStringIsCF())
    {
      v63 = v83;
      if (!v83)
      {

        goto LABEL_74;
      }

      if (v88 == 1)
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        v71 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_73:
        v63 = v71;
        goto LABEL_74;
      }

      if (v90)
      {
        v72 = [(__CFString *)v61 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v72);
        v68 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v74 = HIBYTE(v73) & 0xF;
        if ((v73 & 0x2000000000000000) == 0)
        {
          v74 = v68 & 0xFFFFFFFFFFFFLL;
        }

        if (v74)
        {
          goto LABEL_70;
        }
      }
    }

    else
    {
      v64 = v61;
      v65 = String.init(_nativeStorage:)();
      if (v66)
      {
        v63 = v65;

        goto LABEL_74;
      }

      *&v83 = [(__CFString *)v64 length];
      if (!v83)
      {

        v63 = 0;
        goto LABEL_74;
      }
    }

    v71 = String.init(_cocoaString:)();
    goto LABEL_73;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v63 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_74:
  AnyHashable.init<A>(_:)();
  if (!*(v37 + 16) || (v75 = specialized __RawDictionaryStorage.find<A>(_:)(&v83), (v76 & 1) == 0))
  {

    result = outlined destroy of AnyHashable(&v83);
    goto LABEL_81;
  }

  outlined init with copy of Any(*(v37 + 56) + 32 * v75, v92);
  outlined destroy of AnyHashable(&v83);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_81:
    v77 = 4;
    goto LABEL_82;
  }

  v77 = v63;
  if (v63 >= 4)
  {
    v77 = 4;
  }

LABEL_82:
  *v78 = v77;
  return result;
}

id URLError.downloadTaskResumeData.getter()
{
  v0 = MEMORY[0x1E695ABB0];

  return URLError.downloadTaskResumeData.getter(v0);
}

id URLError.uploadTaskResumeData.getter()
{
  v0 = MEMORY[0x1E695ABE0];

  return URLError.downloadTaskResumeData.getter(v0);
}

id URLError.downloadTaskResumeData.getter(unint64_t *a1)
{
  v94 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = [_swift_stdlib_bridgeErrorToNSError() userInfo];
  swift_unknownObjectRelease();
  if (!v3)
  {
    goto LABEL_21;
  }

  swift_unknownObjectRetain();
  v4 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (!v4)
  {
    v6 = [v3 count];
    if (v6)
    {
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v5 = static _DictionaryStorage.allocate(capacity:)();
      v8 = *(v5 + 48);
      v9 = *(v5 + 56);

      v10 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v8, v9, v3, v7);
      if (v10 < 0 || v7 < v10)
      {
        goto LABEL_86;
      }

      *(v5 + 16) = v10;
      if (!v10)
      {
LABEL_18:

        goto LABEL_19;
      }

      v11 = v10 - 1;
      v12 = v5 + 64;
      while (1)
      {
        while (1)
        {
          if ((*(v12 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
          {
            goto LABEL_10;
          }

          v17 = (*(v5 + 48) + 16 * v11);
          v18 = *v17;
          v19 = v17[1];

          v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
          v22 = v21;

          if ((v22 & 1) == 0)
          {
            break;
          }

          v23 = *(v5 + 48) + 16 * v11;

          outlined destroy of String(v23);
          __swift_destroy_boxed_opaque_existential_1(*(v5 + 56) + 32 * v11);
          v24 = *(v5 + 16);
          v25 = __OFSUB__(v24, 1);
          v26 = v24 - 1;
          if (v25)
          {
            goto LABEL_85;
          }

          *(v5 + 16) = v26;

LABEL_10:
          if (--v11 < 0)
          {
            goto LABEL_18;
          }
        }

        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        if (v11 < v20)
        {
          *(*(v5 + 48) + 16 * v20) = *(*(v5 + 48) + 16 * v11);
          v13 = *(v5 + 56);
          v14 = (v13 + 32 * v11);
          v15 = v14[1];
          v16 = (v13 + 32 * v20);
          *v16 = *v14;
          v16[1] = v15;
          goto LABEL_10;
        }

        if (v20 == v11)
        {
          goto LABEL_10;
        }

        v27 = *(v5 + 48);
        v28 = (v27 + 16 * v20);
        v29 = (v27 + 16 * v11);
        v30 = *v28;
        v31 = v28[1];
        v32 = v29[1];
        *v28 = *v29;
        v28[1] = v32;
        *v29 = v30;
        v29[1] = v31;
        v33 = *(v5 + 56);
        v34 = (v33 + 32 * v20);
        v35 = (v33 + 32 * v11);
        outlined init with take of Any(v34, &v85);
        outlined init with take of Any(v35, v34);
        outlined init with take of Any(&v85, v35);
        if (v11 < 0)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_21:
    v5 = MEMORY[0x1E69E7CC8];
    goto LABEL_22;
  }

  v5 = v4;
LABEL_19:

LABEL_22:
  if (*(v5 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v36 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC8];
  }

  v37 = 1 << *(v5 + 32);
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & *(v5 + 64);
  v40 = (v37 + 63) >> 6;
  v41 = v36 + 64;

  v42 = 0;
LABEL_31:
  if (v39)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v45 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
    }

    if (v45 >= v40)
    {
      break;
    }

    v39 = *(v5 + 64 + 8 * v45);
    ++v42;
    if (v39)
    {
      v42 = v45;
LABEL_36:
      v46 = __clz(__rbit64(v39)) | (v42 << 6);
      v47 = (*(v5 + 48) + 16 * v46);
      v49 = *v47;
      v48 = v47[1];
      outlined init with copy of Any(*(v5 + 56) + 32 * v46, v93);
      *&v92 = v49;
      *(&v92 + 1) = v48;
      v90 = v92;
      v91[0] = v93[0];
      v91[1] = v93[1];
      v89[0] = v92;

      swift_dynamicCast();
      outlined init with take of Any(v91, v84);
      v85 = v81;
      v86 = v82;
      v87 = v83;
      outlined init with take of Any(v84, v88);
      v81 = v85;
      v82 = v86;
      v83 = v87;
      outlined init with take of Any(v88, v89);
      v50 = AnyHashable._rawHashValue(seed:)(*(v36 + 40));
      v51 = -1 << *(v36 + 32);
      v52 = v50 & ~v51;
      v53 = v52 >> 6;
      if (((-1 << v52) & ~*(v41 + 8 * (v52 >> 6))) != 0)
      {
        v43 = __clz(__rbit64((-1 << v52) & ~*(v41 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v54 = 0;
        v55 = (63 - v51) >> 6;
        do
        {
          if (++v53 == v55 && (v54 & 1) != 0)
          {
            goto LABEL_84;
          }

          v56 = v53 == v55;
          if (v53 == v55)
          {
            v53 = 0;
          }

          v54 |= v56;
          v57 = *(v41 + 8 * v53);
        }

        while (v57 == -1);
        v43 = __clz(__rbit64(~v57)) + (v53 << 6);
      }

      v39 &= v39 - 1;
      *(v41 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v44 = *(v36 + 48) + 40 * v43;
      *v44 = v81;
      *(v44 + 16) = v82;
      *(v44 + 32) = v83;
      outlined init with take of Any(v89, (*(v36 + 56) + 32 * v43));
      ++*(v36 + 16);
      goto LABEL_31;
    }
  }

  v58 = *a1;
  isTaggedPointer = _objc_isTaggedPointer(*a1);
  v60 = v58;
  v61 = v60;
  if ((isTaggedPointer & 1) == 0)
  {
    goto LABEL_50;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v60);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_61;
    case 0x16:
      result = [v61 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v71 = String.init(utf8String:)(result);
      if (v72)
      {
LABEL_62:
        v63 = v71;
        v65 = v72;

        goto LABEL_77;
      }

      __break(1u);
LABEL_61:
      LOWORD(v92) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v71 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v72)
      {
        [v61 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v65 = *(&v81 + 1);
        v63 = v81;
        goto LABEL_77;
      }

      goto LABEL_62;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v63 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v65 = v64;

      goto LABEL_77;
  }

LABEL_50:
  LOBYTE(v81) = 0;
  *&v85 = 0;
  LOBYTE(v92) = 0;
  LOBYTE(v90) = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v67 = v61;
    v68 = String.init(_nativeStorage:)();
    if (v69)
    {
      v63 = v68;
      v65 = v69;

      goto LABEL_77;
    }

    *&v85 = [v67 length];
    if (v85)
    {
      goto LABEL_75;
    }

LABEL_57:
    v63 = 0;
    v65 = 0xE000000000000000;
    goto LABEL_77;
  }

  if (!v85)
  {

    goto LABEL_57;
  }

  if (v90 == 1)
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    v75 = String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_76;
  }

  if (v92)
  {
    if (v81 != 1)
    {
      IsCF = [v61 lengthOfBytesUsingEncoding_];
    }

    MEMORY[0x1EEE9AC00](IsCF);
    v73 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v65 = v74;
    v77 = HIBYTE(v74) & 0xF;
    if ((v74 & 0x2000000000000000) == 0)
    {
      v77 = v73 & 0xFFFFFFFFFFFFLL;
    }

    if (v77)
    {
      v63 = v73;

      goto LABEL_77;
    }
  }

LABEL_75:
  v75 = String.init(_cocoaString:)();
LABEL_76:
  v63 = v75;
  v65 = v76;
LABEL_77:
  *&v81 = v63;
  *(&v81 + 1) = v65;
  AnyHashable.init<A>(_:)();
  if (*(v36 + 16) && (v78 = specialized __RawDictionaryStorage.find<A>(_:)(&v85), (v79 & 1) != 0))
  {
    outlined init with copy of Any(*(v36 + 56) + 32 * v78, &v81);
    outlined destroy of AnyHashable(&v85);

    if (swift_dynamicCast())
    {
      return v92;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    outlined destroy of AnyHashable(&v85);
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type URLError.Code and conformance URLError.Code()
{
  result = lazy protocol witness table cache variable for type URLError.Code and conformance URLError.Code;
  if (!lazy protocol witness table cache variable for type URLError.Code and conformance URLError.Code)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLError.Code and conformance URLError.Code);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLError.Code and conformance URLError.Code;
  if (!lazy protocol witness table cache variable for type URLError.Code and conformance URLError.Code)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLError.Code and conformance URLError.Code);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLError.Code and conformance URLError.Code;
  if (!lazy protocol witness table cache variable for type URLError.Code and conformance URLError.Code)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLError.Code and conformance URLError.Code);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for URLError.Code(uint64_t a1)
{
  result = lazy protocol witness table accessor for type URLError.Code and conformance URLError.Code();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for URLError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type URLError and conformance URLError();
  a1[2] = lazy protocol witness table accessor for type URLError and conformance URLError();
  result = lazy protocol witness table accessor for type URLError and conformance URLError();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type URLError.BackgroundTaskCancelledReason and conformance URLError.BackgroundTaskCancelledReason()
{
  result = lazy protocol witness table cache variable for type URLError.BackgroundTaskCancelledReason and conformance URLError.BackgroundTaskCancelledReason;
  if (!lazy protocol witness table cache variable for type URLError.BackgroundTaskCancelledReason and conformance URLError.BackgroundTaskCancelledReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLError.BackgroundTaskCancelledReason and conformance URLError.BackgroundTaskCancelledReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URLError.NetworkUnavailableReason and conformance URLError.NetworkUnavailableReason()
{
  result = lazy protocol witness table cache variable for type URLError.NetworkUnavailableReason and conformance URLError.NetworkUnavailableReason;
  if (!lazy protocol witness table cache variable for type URLError.NetworkUnavailableReason and conformance URLError.NetworkUnavailableReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLError.NetworkUnavailableReason and conformance URLError.NetworkUnavailableReason);
  }

  return result;
}

uint64_t AttributedString.init<A>(localized:including:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = a1[5];
  *&v23[16] = a1[4];
  v24 = v9;
  v25 = *(a1 + 12);
  v10 = a1[1];
  v20 = *a1;
  v21 = v10;
  v11 = a1[3];
  v22 = a1[2];
  *v23 = v11;
  v19 = 1;
  v26 = 0uLL;
  LOWORD(v27) = 1;
  *(&v27 + 1) = 0;
  LOWORD(v28[0]) = 256;
  memset(v28 + 8, 0, 17);
  specialized LocalizedStringResource._withExtensionForBundle<A>(_:)(partial apply for closure #1 in AttributedString.init<A>(localized:options:including:), v16);
  v12 = *&v16[0];
  if (*&v16[0])
  {
    outlined destroy of AttributedString.LocalizationOptions(&v26);
    result = outlined destroy of LocalizedStringResource(&v20);
  }

  else
  {
    v29 = v21;
    v30 = v22;
    v17[2] = v21;
    v18 = v22;
    v16[0] = v26;
    v16[1] = v27;
    v17[0] = v28[0];
    *(v17 + 9) = *(v28 + 9);
    v31 = *&v23[8];
    v15 = *&v23[8];
    outlined init with copy of String.LocalizationValue(&v29, v14);
    outlined init with copy of Locale(&v31, v14);
    String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(v14, 0, 0, v16, 0, 0, 0, &v15, a2, 0, a3, a4);
    outlined destroy of LocalizedStringResource(&v20);
    swift_unknownObjectRelease();

    result = outlined destroy of AttributedString.LocalizationOptions(&v26);
    v12 = v14[0];
  }

  *a5 = v12;
  return result;
}

unint64_t specialized ListFormatStyle.format(_:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v55[1] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v8 = (*(a4 + 64))(ObjectType, a4);
  v9 = v8;
  v11 = v10;
  v12 = (a2 >> 8) & 1;
  if (one-time initialization token for cache != -1)
  {
    v8 = swift_once();
  }

  v14 = static ICUListFormatter.cache;
  v13 = qword_1EA822138;
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock((v13 + 24));
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v13 + 16, v55);
  os_unfair_lock_unlock((v13 + 24));
  v15 = v55[0];
  if (!v55[0])
  {
    type metadata accessor for ICUListFormatter();
    result = swift_allocObject();
    LODWORD(v55[0]) = 0;
    if (a2 > 2u)
    {
      __break(1u);
    }

    else
    {
      v15 = result;
      v53 = a1;
      LOBYTE(a1) = String.utf8CString.getter();
      v17 = ulistfmt_openForType();

      if (!v17)
      {
        goto LABEL_47;
      }

      if (SLODWORD(v55[0]) <= 0)
      {
        *(v15 + 16) = v17;
        os_unfair_lock_lock((v13 + 24));
        if (v14 >= *(*(v13 + 16) + 16))
        {
        }

        else
        {
          *(v13 + 16) = MEMORY[0x1E69E7CC8];
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55[0] = *(v13 + 16);
        v14 = v55[0];
        result = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11, v12, a2);
        v20 = *(v14 + 16);
        v21 = (v19 & 1) == 0;
        v22 = __OFADD__(v20, v21);
        v23 = v20 + v21;
        if (!v22)
        {
          LOBYTE(a1) = v19;
          if (*(v14 + 24) < v23)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
            v24 = v55[0];
            result = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11, v12, a2);
            if ((a1 & 1) == (v25 & 1))
            {
              goto LABEL_17;
            }

            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v24 = v14;
LABEL_17:
            if (a1)
            {
LABEL_18:
              *(*(v24 + 56) + 8 * result) = v15;

LABEL_39:
              *(v13 + 16) = v24;
              os_unfair_lock_unlock((v13 + 24));

              a1 = v53;
              goto LABEL_40;
            }

LABEL_38:
            specialized _NativeDictionary._insert(at:key:value:)(result, v9, v11, v12, a2, v15, v24);

            goto LABEL_39;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        v50 = result;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16ICUListFormatterC9SignatureVAEGMd);
        v26 = static _DictionaryStorage.copy(original:)();
        v24 = v26;
        if (!*(v14 + 16))
        {
LABEL_37:

          result = v50;
          if (a1)
          {
            goto LABEL_18;
          }

          goto LABEL_38;
        }

        result = v26 + 64;
        v27 = ((1 << *(v24 + 32)) + 63) >> 6;
        v51 = (v14 + 64);
        if (v24 != v14 || result >= v14 + 64 + 8 * v27)
        {
          result = memmove(result, v51, 8 * v27);
        }

        v28 = 0;
        *(v24 + 16) = *(v14 + 16);
        v29 = 1 << *(v14 + 32);
        v30 = -1;
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        v49 = (v29 + 63) >> 6;
        v31 = v30 & *(v14 + 64);
        if (v31)
        {
          do
          {
            v32 = __clz(__rbit64(v31));
            v52 = (v31 - 1) & v31;
LABEL_35:
            v35 = v32 | (v28 << 6);
            v36 = *(v14 + 48) + 32 * v35;
            v37 = *(v36 + 8);
            v38 = *(*(v14 + 56) + 8 * v35);
            v39 = *(v24 + 48) + 32 * v35;
            v40 = *(v36 + 16);
            *v39 = *v36;
            *(v39 + 8) = v37;
            *(v39 + 16) = v40;
            *(*(v24 + 56) + 8 * v35) = v38;

            v31 = v52;
          }

          while (v52);
        }

        v33 = v28;
        while (1)
        {
          v28 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v28 >= v49)
          {
            goto LABEL_37;
          }

          v34 = *(v51 + v28);
          ++v33;
          if (v34)
          {
            v32 = __clz(__rbit64(v34));
            v52 = (v34 - 1) & v34;
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_40:
  v41 = *(a1 + 16);
  v54._rawValue = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
  if (v41)
  {
    v42 = (a1 + 40);
    do
    {
      v44 = *(v42 - 1);
      v43 = *v42;
      v46 = *(v54._rawValue + 2);
      v45 = *(v54._rawValue + 3);

      if (v46 >= v45 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
      }

      *(v54._rawValue + 2) = v46 + 1;
      v47 = v54._rawValue + 16 * v46;
      *(v47 + 4) = v44;
      *(v47 + 5) = v43;
      v42 += 2;
      --v41;
    }

    while (v41);
  }

  countAndFlagsBits = ICUListFormatter.format(strings:)(v54)._countAndFlagsBits;

  return countAndFlagsBits;
}

void specialized closure #2 in PropertyListDecoder._decode<A>(_:from:format:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(_OWORD *__return_ptr, id *)@<X3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v140 = *MEMORY[0x1E69E9840];
  v134 = a1;
  v135 = a2;
  *&v136 = a1;
  *(&v136 + 1) = a1;
  v137 = &a1[a2];
  v138 = MEMORY[0x1E69E7CC0];
  v139 = 0;
  XMLPlistScanner.scanXMLPropertyList()();
  if (v6)
  {

    v126 = v6;
    v15 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if (!swift_dynamicCast())
    {
      goto LABEL_165;
    }

    v121 = v129;
    v120 = v130;
    v118 = v131;
    v119 = v132;
    v16 = v133;
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v20 = swift_allocObject();
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v22 = @"NSDebugDescription";
    v23 = v22;
    if (!isTaggedPointer)
    {
LABEL_10:
      LOBYTE(v122) = 0;
      v134 = 0;
      LOBYTE(v124) = 0;
      v125 = 0;
      if (__CFStringIsCF())
      {

LABEL_14:
        v25 = 0;
        v27 = 0xE000000000000000;
        goto LABEL_28;
      }

      v29 = v23;
      v30 = String.init(_nativeStorage:)();
      if (v31)
      {
        v25 = v30;
        v27 = v31;

        goto LABEL_28;
      }

      v134 = [(os_unfair_lock_s *)v29 length];
      if (!v134)
      {

        goto LABEL_14;
      }

      v25 = String.init(_cocoaString:)();
      v27 = v39;
LABEL_28:
      v20[4] = v25;
      v20[5] = v27;
      v117 = v16;
      if (v16 <= 2)
      {
        if (!v16)
        {
          if (!v120)
          {
            v45 = 0x8000000181484E80;
            v44 = 0xD00000000000001ALL;
            goto LABEL_52;
          }

          v134 = 0xD00000000000001BLL;
          v135 = 0x8000000181484EA0;
          MEMORY[0x1865CB0E0](v121);
          goto LABEL_51;
        }

        if (v16 != 1)
        {
          _StringGuts.grow(_:)(33);

          v134 = 0xD000000000000013;
          v135 = 0x8000000181484E40;
          XMLPlistTag.tagName.getter(v121);
          v46 = StaticString.description.getter();
          MEMORY[0x1865CB0E0](v46);

          v47 = 0x6E696C206E6F203ELL;
          v48 = 0xEA00000000002065;
LABEL_48:
          MEMORY[0x1865CB0E0](v47, v48);
          v49 = &v141;
          goto LABEL_49;
        }

        _StringGuts.grow(_:)(24);

        v134 = 0xD000000000000016;
        v135 = 0x8000000181484E60;
      }

      else
      {
        if (v16 > 4)
        {
          if (v16 == 5)
          {

            v44 = v121;
            v45 = v43;
          }

          else
          {
            v45 = 0x8000000181484DA0;
            v44 = 0xD00000000000002CLL;
          }

LABEL_52:
          v20[9] = MEMORY[0x1E69E6158];
          v20[6] = v44;
          v20[7] = v45;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
          v51 = static _DictionaryStorage.allocate(capacity:)();
          outlined init with copy of FloatingPointRoundingRule?((v20 + 4), &v134, &_sSS_yptMd);
          swift_setDeallocating();

          outlined destroy of TermOfAddress?((v20 + 4), &_sSS_yptMd);
          swift_deallocClassInstance();
          v52 = v134;
          v53 = v135;
          v54 = specialized __RawDictionaryStorage.find<A>(_:)(v134, v135);
          v56 = v55;

          if (v56)
          {
            __break(1u);
          }

          else
          {
            v51[(v54 >> 6) + 8] |= 1 << v54;
            v57 = (v51[6] + 16 * v54);
            *v57 = v52;
            v57[1] = v53;
            outlined init with take of Any(&v136, (v51[7] + 32 * v54));
            v58 = v51[2];
            v59 = __OFADD__(v58, 1);
            v60 = v58 + 1;
            if (!v59)
            {
              v51[2] = v60;
              v23 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
              v61 = @"NSCocoaErrorDomain";
              v62 = v61;
              if (!v23)
              {
LABEL_59:
                LOBYTE(v122) = 0;
                v134 = 0;
                LOBYTE(v124) = 0;
                v125 = 0;
                IsCF = __CFStringIsCF();
                if (!IsCF)
                {
                  v65 = v62;
                  String.init(_nativeStorage:)();
                  if (v66 || (v134 = [(__CFString *)v65 length]) == 0)
                  {

                    goto LABEL_87;
                  }

                  goto LABEL_86;
                }

                if (v134)
                {
                  if (v125 == 1)
                  {
                    if (v122)
                    {
                      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                    }

                    else
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    }

                    String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_87:
                    v73 = objc_allocWithZone(NSError);
                    v74 = String._bridgeToObjectiveCImpl()();

                    v75 = [v73 initWithDomain:v74 code:3840 userInfo:_NativeDictionary.bridged()()];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    v76 = [v75 domain];
                    v116 = v17;
                    if (!v76)
                    {
                      goto LABEL_101;
                    }

                    v77 = v76;
                    v78 = _objc_isTaggedPointer(v76);
                    v79 = v77;
                    v80 = v79;
                    if ((v78 & 1) == 0)
                    {
LABEL_93:
                      LOBYTE(v122) = 0;
                      v134 = 0;
                      LOBYTE(v124) = 0;
                      v125 = 0;
                      v85 = __CFStringIsCF();
                      if (v85)
                      {
                        if (v134)
                        {
                          if (v125 == 1)
                          {
                            if (v122)
                            {
                              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                            }

                            else
                            {
                              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                            }

                            v92 = String.init<A>(_immortalCocoaString:count:encoding:)();
                            goto LABEL_123;
                          }

                          if (v124)
                          {
                            if (v122 != 1)
                            {
                              v85 = [v80 lengthOfBytesUsingEncoding_];
                            }

                            MEMORY[0x1EEE9AC00](v85);
                            v94 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                            v84 = v95;
                            v96 = HIBYTE(v95) & 0xF;
                            if ((v95 & 0x2000000000000000) == 0)
                            {
                              v96 = v94 & 0xFFFFFFFFFFFFLL;
                            }

                            if (v96)
                            {
                              v82 = v94;
                              goto LABEL_107;
                            }
                          }

LABEL_122:
                          v92 = String.init(_cocoaString:)();
LABEL_123:
                          v82 = v92;
                          v84 = v93;
                          goto LABEL_124;
                        }
                      }

                      else
                      {
                        v86 = v80;
                        v87 = String.init(_nativeStorage:)();
                        if (v88)
                        {
                          v82 = v87;
                          v84 = v88;

                          goto LABEL_125;
                        }

                        v134 = [v86 length];
                        if (v134)
                        {
                          goto LABEL_122;
                        }
                      }

LABEL_101:
                      v82 = 0;
                      v84 = 0xE000000000000000;
                      goto LABEL_125;
                    }

                    TaggedPointerTag = _objc_getTaggedPointerTag(v79);
                    if (TaggedPointerTag)
                    {
                      if (TaggedPointerTag != 22)
                      {
                        if (TaggedPointerTag == 2)
                        {
                          MEMORY[0x1EEE9AC00](TaggedPointerTag);
                          v82 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v84 = v83;

LABEL_125:
                          v97 = v62;
                          v98 = v97;
                          if (!v23)
                          {
                            goto LABEL_130;
                          }

                          v99 = _objc_getTaggedPointerTag(v97);
                          if (!v99)
                          {
                            goto LABEL_142;
                          }

                          if (v99 != 22)
                          {
                            if (v99 == 2)
                            {
                              MEMORY[0x1EEE9AC00](v99);
                              v100 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                              v102 = v101;

                              goto LABEL_160;
                            }

LABEL_130:
                            LOBYTE(v122) = 0;
                            v134 = 0;
                            LOBYTE(v124) = 0;
                            v125 = 0;
                            v103 = __CFStringIsCF();
                            if (v103)
                            {
                              if (v134)
                              {
                                if (v125 == 1)
                                {
                                  if (v122)
                                  {
                                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                                  }

                                  else
                                  {
                                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                                  }

                                  v110 = String.init<A>(_immortalCocoaString:count:encoding:)();
                                  goto LABEL_159;
                                }

                                if (v124)
                                {
                                  if (v122 != 1)
                                  {
                                    v103 = [(__CFString *)v98 lengthOfBytesUsingEncoding:4];
                                  }

                                  MEMORY[0x1EEE9AC00](v103);
                                  v112 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                  v102 = v113;
                                  v114 = HIBYTE(v113) & 0xF;
                                  if ((v113 & 0x2000000000000000) == 0)
                                  {
                                    v114 = v112 & 0xFFFFFFFFFFFFLL;
                                  }

                                  if (v114)
                                  {
                                    v100 = v112;

                                    goto LABEL_160;
                                  }
                                }

LABEL_158:
                                v110 = String.init(_cocoaString:)();
LABEL_159:
                                v100 = v110;
                                v102 = v111;
LABEL_160:
                                if (v82 == v100 && v84 == v102)
                                {

                                  outlined consume of XMLPlistError(v121, v120, v118, v119, v117);
LABEL_164:
                                  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
                                  (*(*(v116 - 8) + 104))(v19, *MEMORY[0x1E69E6B00]);
                                  swift_willThrow();
LABEL_165:

                                  return;
                                }

                                v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                outlined consume of XMLPlistError(v121, v120, v118, v119, v117);
                                if (v115)
                                {
                                  goto LABEL_164;
                                }

LABEL_168:
                                __break(1u);
                              }
                            }

                            else
                            {
                              v104 = v98;
                              v105 = String.init(_nativeStorage:)();
                              if (v106)
                              {
                                v100 = v105;
                                v102 = v106;

                                goto LABEL_160;
                              }

                              v134 = [(__CFString *)v104 length];
                              if (v134)
                              {
                                goto LABEL_158;
                              }
                            }

                            v100 = 0;
                            v102 = 0xE000000000000000;
                            goto LABEL_160;
                          }

                          v107 = [(__CFString *)v98 UTF8String];
                          if (v107)
                          {
                            v108 = String.init(utf8String:)(v107);
                            if (v109)
                            {
                              goto LABEL_143;
                            }

                            __break(1u);
LABEL_142:
                            v124 = 0;
                            _CFIndirectTaggedPointerStringGetContents();
                            v108 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                            if (!v109)
                            {
                              [(__CFString *)v98 mutableCopy];
                              _bridgeAnyObjectToAny(_:)();

                              swift_unknownObjectRelease();
                              swift_dynamicCast();
                              v100 = v122;
                              v102 = v123;
                              goto LABEL_160;
                            }

LABEL_143:
                            v100 = v108;
                            v102 = v109;

                            goto LABEL_160;
                          }

                          goto LABEL_171;
                        }

                        goto LABEL_93;
                      }

                      v89 = [v80 UTF8String];
                      if (!v89)
                      {
LABEL_172:
                        __break(1u);
                        os_unfair_lock_unlock(v23 + 10);
                        __break(1u);
                        return;
                      }

                      v90 = String.init(utf8String:)(v89);
                      if (v91)
                      {
LABEL_106:
                        v82 = v90;
                        v84 = v91;
LABEL_107:

LABEL_124:
                        goto LABEL_125;
                      }

                      __break(1u);
                    }

                    v124 = 0;
                    _CFIndirectTaggedPointerStringGetContents();
                    v90 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v91)
                    {
                      [v80 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v82 = v122;
                      v84 = v123;
                      goto LABEL_124;
                    }

                    goto LABEL_106;
                  }

                  if (v124)
                  {
                    if (v122 != 1)
                    {
                      IsCF = [(__CFString *)v62 lengthOfBytesUsingEncoding:4];
                    }

                    MEMORY[0x1EEE9AC00](IsCF);
                    v70 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v72 = HIBYTE(v71) & 0xF;
                    if ((v71 & 0x2000000000000000) == 0)
                    {
                      v72 = v70 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v72)
                    {
                      goto LABEL_84;
                    }
                  }

LABEL_86:
                  String.init(_cocoaString:)();
                  goto LABEL_87;
                }

LABEL_84:

                goto LABEL_87;
              }

              v63 = _objc_getTaggedPointerTag(v61);
              if (!v63)
              {
LABEL_70:
                v124 = 0;
                _CFIndirectTaggedPointerStringGetContents();
                _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v69)
                {
                  [(__CFString *)v62 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  goto LABEL_87;
                }

                goto LABEL_84;
              }

              if (v63 != 22)
              {
                if (v63 == 2)
                {
                  MEMORY[0x1EEE9AC00](v63);
                  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                  goto LABEL_87;
                }

                goto LABEL_59;
              }

              v67 = [(__CFString *)v62 UTF8String];
              if (v67)
              {
                String.init(utf8String:)(v67);
                if (v68)
                {
                  goto LABEL_84;
                }

                __break(1u);
                goto LABEL_70;
              }

LABEL_170:
              __break(1u);
LABEL_171:
              __break(1u);
              goto LABEL_172;
            }
          }

          __break(1u);
          goto LABEL_168;
        }

        if (v16 == 3)
        {
          if (v119)
          {
            v134 = 0;
            v135 = 0xE000000000000000;
            _StringGuts.grow(_:)(47);
            MEMORY[0x1865CB0E0](0xD000000000000021, 0x8000000181484E10);
            static String._uncheckedFromUTF8(_:)();
            Character.write<A>(to:)();

            MEMORY[0x1865CB0E0](0x656E696C206E6F20, 0xE900000000000020);
            v122 = v120;
            v40 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1865CB0E0](v40);

            MEMORY[0x1865CB0E0](32, 0xE100000000000000);

            v41 = v118;
            v42 = v119;
LABEL_50:
            MEMORY[0x1865CB0E0](v41, v42);

LABEL_51:
            v44 = v134;
            v45 = v135;
            goto LABEL_52;
          }

          v134 = 0;
          v135 = 0xE000000000000000;
          _StringGuts.grow(_:)(46);
          MEMORY[0x1865CB0E0](0xD000000000000021, 0x8000000181484E10);
          v50 = (v121 + 1);
          if ((v121 & 0x80) != 0)
          {
            v50 = (((v121 & 0x3F) << 8) | (v121 >> 6)) + 33217;
          }

          v122 = (v50 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v50) >> 3))));
          static String._uncheckedFromUTF8(_:)();
          Character.write<A>(to:)();

          v47 = 0x656E696C206E6F20;
          v48 = 0xE900000000000020;
          goto LABEL_48;
        }

        v134 = 0;
        v135 = 0xE000000000000000;
        _StringGuts.grow(_:)(56);
        MEMORY[0x1865CB0E0](0xD000000000000036, 0x8000000181484DD0);
      }

      v49 = &v142;
LABEL_49:
      v122 = *(v49 - 32);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      goto LABEL_50;
    }

    v24 = _objc_getTaggedPointerTag(v22);
    if (v24)
    {
      if (v24 != 22)
      {
        if (v24 == 2)
        {
          MEMORY[0x1EEE9AC00](v24);
          v25 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v27 = v26;

          goto LABEL_28;
        }

        goto LABEL_10;
      }

      v32 = [(os_unfair_lock_s *)v23 UTF8String];
      if (!v32)
      {
        __break(1u);
        goto LABEL_170;
      }

      v33 = String.init(utf8String:)(v32);
      if (v34)
      {
LABEL_19:
        v25 = v33;
        v27 = v34;

        goto LABEL_28;
      }

      __break(1u);
    }

    v124 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v33 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v34)
    {
      [(os_unfair_lock_s *)v23 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v25 = v122;
      v27 = v123;
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  v12 = v11;

  v13 = *(a3 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13_PlistDecoderCyAA23_XMLPlistDecodingFormatVGMd);
  swift_allocObject();

  v28 = specialized _PlistDecoder.init(referencing:options:codingPathNode:)(v12, v13, 0x8000000000000000);

  *(&v136 + 1) = v14;
  v137 = &protocol witness table for _PlistDecoder<A>;
  v134 = v28;

  a4(v127, &v134);
  __swift_destroy_boxed_opaque_existential_1(&v134);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || !swift_isUniquelyReferenced_nonNull_native())
  {
    v35 = *(*(v28 + 3) + 24);

    os_unfair_lock_lock((v35 + 40));
    closure #1 in XMLPlistMap.copyInBuffer()((v35 + 16));
    os_unfair_lock_unlock((v35 + 40));
  }

  *a5 = 100;
  v36 = v127[5];
  *(a6 + 64) = v127[4];
  *(a6 + 80) = v36;
  *(a6 + 96) = v128;
  v37 = v127[1];
  *a6 = v127[0];
  *(a6 + 16) = v37;
  v38 = v127[3];
  *(a6 + 32) = v127[2];
  *(a6 + 48) = v38;
}

void specialized closure #3 in PropertyListDecoder._decode<A>(_:from:format:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(__int128 *))
{
  v143 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1865CB200]() < 1)
  {
    lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
    v12 = swift_allocError();
    *v13 = 0xD000000000000031;
    v13[1] = 0x8000000181484CD0;
    swift_willThrow();
    goto LABEL_48;
  }

  v135 = a1;
  v136 = a2;
  v137 = xmmword_1812477A0;
  swift_bridgeObjectRetain_n();
  if ((advanceToNonSpace(_:)(&v135) & 1) == 0)
  {

    *(&v139 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
    *&v138 = MEMORY[0x1E69E7CC8];
LABEL_43:

    outlined init with take of Any(&v138, v142);
    outlined init with copy of Any(v142, &v138);
    v31 = *(a3 + 16);
    v32 = type metadata accessor for __PlistDictionaryDecoder();
    swift_allocObject();

    v33 = __PlistDictionaryDecoder.init(referencing:at:options:)(&v138, MEMORY[0x1E69E7CC0], v31);
    *a4 = 1;
    *(&v139 + 1) = v32;
    v140 = &protocol witness table for __PlistDictionaryDecoder;
    *&v138 = v33;

    a5(&v138);
    __swift_destroy_boxed_opaque_existential_1(v142);

    __swift_destroy_boxed_opaque_existential_1(&v138);
    return;
  }

  if ((advanceToNonSpace(_:)(&v135) & 1) == 0)
  {
    lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
    v14 = swift_allocError();
    *v15 = 0xD000000000000022;
    v15[1] = 0x8000000181484B30;
    goto LABEL_13;
  }

  v9 = specialized _ParseInfo.currChar.getter(a1, a2, v137);
  _ParseInfo.advance()();
  if (v9 <= 0x27u)
  {
    if (v9 != 34 && v9 != 39)
    {
LABEL_24:
      v124 = isValidUnquotedStringCharacter(_:)(v9);
      _ParseInfo.retreat()();
      if (v124)
      {
        v16 = parseUnquotedPlistString(_:)(&v135);
        if (!v17)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }

      _StringGuts.grow(_:)(38);

      *&v131 = 0xD000000000000018;
      *(&v131 + 1) = 0x8000000181484B60;
      lazy protocol witness table accessor for type UInt16 and conformance UInt16();
      v28 = String.init<A>(_:radix:uppercase:)();
      MEMORY[0x1865CB0E0](v28);

      MEMORY[0x1865CB0E0](0x6E696C2074612027, 0xEA00000000002065);
      *&v129 = specialized lineNumberStrings(_:)(a1, a2, v137);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v29);

      lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
      v14 = swift_allocError();
      *v30 = 0xD000000000000018;
      v30[1] = 0x8000000181484B60;
LABEL_13:
      *(&v137 + 1) = v14;
LABEL_14:
      v133 = 0u;
      v134 = 0u;
      goto LABEL_27;
    }

    v16 = parseQuotedPlistString(_:quote:)(&v135, v9);
    if (v17)
    {
LABEL_18:
      v18 = MEMORY[0x1E69E6158];
LABEL_23:
      *(&v134 + 1) = v18;
      *&v133 = v16;
      *(&v133 + 1) = v17;
      goto LABEL_27;
    }
  }

  else
  {
    if (v9 == 40)
    {
      v19 = parsePlistArray(_:depth:)(&v135, 0);
      if (v19)
      {
        v20 = v19;
        *(&v134 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
        *&v133 = v20;
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v9 != 60)
    {
      if (v9 == 123)
      {
        v10 = parsePlistDict(_:depth:)(&v135);
        if (v10)
        {
          v11 = v10;
          *(&v134 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
          *&v133 = v11;
          goto LABEL_27;
        }

        goto LABEL_14;
      }

      goto LABEL_24;
    }

    v16 = parsePlistData(_:)(&v135);
    if (v17 >> 60 != 15)
    {
      v18 = &type metadata for Data;
      goto LABEL_23;
    }
  }

LABEL_26:
  v133 = 0u;
  v134 = 0u;
LABEL_27:
  outlined init with copy of FloatingPointRoundingRule?(&v133, &v131, &_sypSgMd);
  if (v132)
  {
    outlined destroy of TermOfAddress?(&v131, &_sypSgMd);
    if (advanceToNonSpace(_:)(&v135))
    {
      outlined init with copy of FloatingPointRoundingRule?(&v133, &v131, &_sypSgMd);
      if (v132)
      {
        if (swift_dynamicCast())
        {

          v135 = a1;
          v136 = a2;
          v137 = xmmword_1812477A0;
          v21 = parsePlistDictContent(_:depth:)(&v135, 0);
          if (v21)
          {
            v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
          }

          else
          {
            v22 = 0;
          }

          outlined destroy of TermOfAddress?(&v133, &_sypSgMd);
          v133 = v21;
          *&v134 = 0;
          *(&v134 + 1) = v22;
          goto LABEL_41;
        }
      }

      else
      {

        outlined destroy of TermOfAddress?(&v131, &_sypSgMd);
      }

      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *&v131 = 0xD000000000000019;
      *(&v131 + 1) = 0x8000000181484D80;
      v23 = *(&v137 + 1);
      *&v129 = specialized lineNumberStrings(_:)(v135, v136, v137);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v24);

      v25 = v131;
      lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
      v26 = swift_allocError();
      *v27 = v25;
      outlined destroy of TermOfAddress?(&v133, &_sypSgMd);

      *(&v137 + 1) = v26;
      v133 = 0u;
      v134 = 0u;
    }

    else
    {
    }
  }

  else
  {

    outlined destroy of TermOfAddress?(&v131, &_sypSgMd);
  }

LABEL_41:
  outlined init with copy of FloatingPointRoundingRule?(&v133, &v129, &_sypSgMd);
  if (v130)
  {
    outlined destroy of TermOfAddress?(&v133, &_sypSgMd);
    outlined init with take of Any(&v129, &v131);
    outlined init with take of Any(&v131, &v138);
    goto LABEL_43;
  }

  outlined destroy of TermOfAddress?(&v129, &_sypSgMd);
  v34 = *(&v137 + 1);
  if (*(&v137 + 1))
  {
    v12 = *(&v137 + 1);
  }

  else
  {
    *&v131 = 0;
    *(&v131 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    *&v131 = 0xD000000000000030;
    *(&v131 + 1) = 0x8000000181484D40;
    *&v129 = specialized lineNumberStrings(_:)(v135, v136, v137);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v35);

    v36 = v131;
    lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
    v12 = swift_allocError();
    v34 = 0;
    *v37 = v36;
  }

  swift_willThrow();
  v38 = v34;
  outlined destroy of TermOfAddress?(&v133, &_sypSgMd);

LABEL_48:
  *&v131 = v12;
  v39 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (!swift_dynamicCast())
  {
LABEL_179:

    return;
  }

  v40 = v135;
  v128 = v136;
  v41 = type metadata accessor for DecodingError();
  swift_allocError();
  v43 = v42;
  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v45 = @"NSDebugDescription";
  v46 = v45;
  v125 = v43;
  v126 = v41;
  if (!isTaggedPointer)
  {
    goto LABEL_54;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v45);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_64;
    case 0x16:
      v55 = [(__CFString *)v46 UTF8String];
      if (!v55)
      {
        __break(1u);
        goto LABEL_184;
      }

      v56 = String.init(utf8String:)(v55);
      if (v57)
      {
        goto LABEL_65;
      }

      __break(1u);
LABEL_64:
      LOWORD(v129) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v56 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v57)
      {
        [(__CFString *)v46 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v50 = *(&v133 + 1);
        v48 = v133;
        goto LABEL_80;
      }

LABEL_65:
      v48 = v56;
      v50 = v57;
LABEL_66:

      goto LABEL_80;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v48 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v50 = v49;

      goto LABEL_80;
  }

LABEL_54:
  LOBYTE(v133) = 0;
  *&v138 = 0;
  LOBYTE(v129) = 0;
  IsCF = __CFStringIsCF();
  if (IsCF)
  {
    if (v138)
    {
      if (v129)
      {
        if (v133 != 1)
        {
          IsCF = [(__CFString *)v46 lengthOfBytesUsingEncoding:4];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v58 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v50 = v59;
        v60 = HIBYTE(v59) & 0xF;
        if ((v59 & 0x2000000000000000) == 0)
        {
          v60 = v58 & 0xFFFFFFFFFFFFLL;
        }

        if (v60)
        {
          v48 = v58;
          goto LABEL_66;
        }
      }

      goto LABEL_79;
    }

LABEL_60:
    v48 = 0;
    v50 = 0xE000000000000000;
    goto LABEL_80;
  }

  v52 = v46;
  v53 = String.init(_nativeStorage:)();
  if (v54)
  {
    v48 = v53;
    v50 = v54;

    goto LABEL_80;
  }

  *&v138 = [(__CFString *)v52 length];
  if (!v138)
  {

    goto LABEL_60;
  }

LABEL_79:
  v48 = String.init(_cocoaString:)();
  v50 = v61;
LABEL_80:
  v141[0] = v48;
  v141[1] = v50;
  v141[5] = MEMORY[0x1E69E6158];
  v141[2] = v40;
  v141[3] = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v62 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of FloatingPointRoundingRule?(v141, &v138, &_sSS_yptMd);

  outlined destroy of TermOfAddress?(v141, &_sSS_yptMd);
  v63 = v138;
  v64 = specialized __RawDictionaryStorage.find<A>(_:)(v138, *(&v138 + 1));
  v66 = v65;

  if (v66)
  {
    __break(1u);
    goto LABEL_181;
  }

  v62[(v64 >> 6) + 8] |= 1 << v64;
  *(v62[6] + 16 * v64) = v63;
  outlined init with take of Any(&v139, (v62[7] + 32 * v64));
  v67 = v62[2];
  v68 = __OFADD__(v67, 1);
  v69 = v67 + 1;
  if (v68)
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v62[2] = v69;
  v70 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v71 = @"NSCocoaErrorDomain";
  v72 = v71;
  if (!v70)
  {
    goto LABEL_87;
  }

  v73 = _objc_getTaggedPointerTag(v71);
  switch(v73)
  {
    case 0:
LABEL_96:
      LOWORD(v129) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v79)
      {
        [(__CFString *)v72 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_111;
      }

      goto LABEL_108;
    case 0x16:
      v77 = [(__CFString *)v72 UTF8String];
      if (v77)
      {
        String.init(utf8String:)(v77);
        if (v78)
        {
          goto LABEL_108;
        }

        __break(1u);
        goto LABEL_96;
      }

LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
      goto LABEL_186;
    case 2:
      MEMORY[0x1EEE9AC00](v73);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_111;
  }

LABEL_87:
  LOBYTE(v133) = 0;
  *&v138 = 0;
  LOBYTE(v129) = 0;
  v74 = __CFStringIsCF();
  if (!v74)
  {
    v75 = v72;
    String.init(_nativeStorage:)();
    if (v76 || (*&v138 = [(__CFString *)v75 length], !v138))
    {

      goto LABEL_111;
    }

    goto LABEL_110;
  }

  if (!v138)
  {
LABEL_108:

    goto LABEL_111;
  }

  if (v129)
  {
    if (v133 != 1)
    {
      v74 = [(__CFString *)v72 lengthOfBytesUsingEncoding:4];
    }

    MEMORY[0x1EEE9AC00](v74);
    v80 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v82 = HIBYTE(v81) & 0xF;
    if ((v81 & 0x2000000000000000) == 0)
    {
      v82 = v80 & 0xFFFFFFFFFFFFLL;
    }

    if (v82)
    {
      goto LABEL_108;
    }
  }

LABEL_110:
  String.init(_cocoaString:)();
LABEL_111:
  v83 = objc_allocWithZone(NSError);
  v84 = String._bridgeToObjectiveCImpl()();

  v85 = [v83 initWithDomain:v84 code:3840 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v86 = [v85 domain];
  if (!v86)
  {
    goto LABEL_123;
  }

  v87 = v86;
  v88 = _objc_isTaggedPointer(v86);
  v89 = v87;
  v90 = v89;
  if ((v88 & 1) == 0)
  {
LABEL_117:
    LOBYTE(v133) = 0;
    *&v138 = 0;
    LOBYTE(v129) = 0;
    v95 = __CFStringIsCF();
    if (v95)
    {
      if (v138)
      {
        if (v129)
        {
          if (v133 != 1)
          {
            v95 = [v90 lengthOfBytesUsingEncoding_];
          }

          MEMORY[0x1EEE9AC00](v95);
          v102 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v94 = v103;
          v104 = HIBYTE(v103) & 0xF;
          if ((v103 & 0x2000000000000000) == 0)
          {
            v104 = v102 & 0xFFFFFFFFFFFFLL;
          }

          if (v104)
          {
            v92 = v102;
            goto LABEL_129;
          }
        }

LABEL_142:
        v92 = String.init(_cocoaString:)();
        v94 = v105;
        goto LABEL_143;
      }
    }

    else
    {
      v96 = v90;
      v97 = String.init(_nativeStorage:)();
      if (v98)
      {
        v92 = v97;
        v94 = v98;

        goto LABEL_144;
      }

      *&v138 = [v96 length];
      if (v138)
      {
        goto LABEL_142;
      }
    }

LABEL_123:
    v92 = 0;
    v94 = 0xE000000000000000;
    goto LABEL_144;
  }

  v91 = _objc_getTaggedPointerTag(v89);
  if (!v91)
  {
    goto LABEL_127;
  }

  if (v91 != 22)
  {
    if (v91 == 2)
    {
      MEMORY[0x1EEE9AC00](v91);
      v92 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v94 = v93;

LABEL_144:
      v106 = v72;
      v107 = v106;
      if (!v70)
      {
        goto LABEL_149;
      }

      v108 = _objc_getTaggedPointerTag(v106);
      if (!v108)
      {
        goto LABEL_159;
      }

      if (v108 != 22)
      {
        if (v108 == 2)
        {
          MEMORY[0x1EEE9AC00](v108);
          v109 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v111 = v110;

          goto LABEL_174;
        }

LABEL_149:
        LOBYTE(v133) = 0;
        *&v138 = 0;
        LOBYTE(v129) = 0;
        v112 = __CFStringIsCF();
        if (v112)
        {
          if (v138)
          {
            if (v129)
            {
              if (v133 != 1)
              {
                v112 = [(__CFString *)v107 lengthOfBytesUsingEncoding:4];
              }

              MEMORY[0x1EEE9AC00](v112);
              v119 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v111 = v120;
              v121 = HIBYTE(v120) & 0xF;
              if ((v120 & 0x2000000000000000) == 0)
              {
                v121 = v119 & 0xFFFFFFFFFFFFLL;
              }

              if (v121)
              {
                v109 = v119;

                goto LABEL_174;
              }
            }

LABEL_173:
            v109 = String.init(_cocoaString:)();
            v111 = v122;
LABEL_174:
            if (v92 == v109 && v94 == v111)
            {

LABEL_178:
              DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
              (*(*(v126 - 8) + 104))(v125, *MEMORY[0x1E69E6B00]);
              swift_willThrow();
              goto LABEL_179;
            }

            v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v123)
            {
              goto LABEL_178;
            }

LABEL_182:
            __break(1u);
          }
        }

        else
        {
          v113 = v107;
          v114 = String.init(_nativeStorage:)();
          if (v115)
          {
            v109 = v114;
            v111 = v115;

            goto LABEL_174;
          }

          *&v138 = [(__CFString *)v113 length];
          if (v138)
          {
            goto LABEL_173;
          }
        }

        v109 = 0;
        v111 = 0xE000000000000000;
        goto LABEL_174;
      }

      v116 = [(__CFString *)v107 UTF8String];
      if (v116)
      {
        v117 = String.init(utf8String:)(v116);
        if (v118)
        {
          goto LABEL_160;
        }

        __break(1u);
LABEL_159:
        LOWORD(v129) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v117 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v118)
        {
          [(__CFString *)v107 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v111 = *(&v133 + 1);
          v109 = v133;
          goto LABEL_174;
        }

LABEL_160:
        v109 = v117;
        v111 = v118;

        goto LABEL_174;
      }

      goto LABEL_185;
    }

    goto LABEL_117;
  }

  v99 = [v90 UTF8String];
  if (v99)
  {
    v100 = String.init(utf8String:)(v99);
    if (v101)
    {
LABEL_128:
      v92 = v100;
      v94 = v101;
LABEL_129:

LABEL_143:
      goto LABEL_144;
    }

    __break(1u);
LABEL_127:
    LOWORD(v129) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v100 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v101)
    {
      [v90 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v94 = *(&v133 + 1);
      v92 = v133;
      goto LABEL_143;
    }

    goto LABEL_128;
  }

LABEL_186:
  __break(1u);
}

uint64_t AttributedString.init(localized:)@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[5];
  v85 = a1[4];
  v86 = v2;
  v87 = *(a1 + 12);
  v3 = a1[1];
  v81 = *a1;
  v82 = v3;
  v4 = a1[3];
  v83 = a1[2];
  v84 = v4;
  v74 = 1;
  v75 = 0uLL;
  LOWORD(v76) = 1;
  *(&v76 + 1) = 0;
  LOWORD(v77) = 256;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  if (!v87)
  {
    outlined init with copy of AttributedString.LocalizationOptions(&v75, v69);
    outlined init with copy of LocalizedStringResource(&v81, v69);
    if (one-time initialization token for localizedStringLogger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, localizedStringLogger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_14;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_18075C000, v11, v12, "LocalizedStringResource did not contain a sandbox extension token. Proceeding to lookup localized string without consuming a sandbox extension.", v13, 2u);
    v14 = v13;
    goto LABEL_13;
  }

  v5 = v86;
  ObjectType = swift_getObjectType();
  v7 = *(v86 + 296);
  outlined init with copy of AttributedString.LocalizationOptions(&v75, v69);
  outlined init with copy of LocalizedStringResource(&v81, v69);
  v7(v69, closure #1 in LocalizedStringResource._withExtensionForBundle<A>(_:), 0, MEMORY[0x1E69E72F0], ObjectType, v5);
  if (!LODWORD(v69[0]))
  {
    if (one-time initialization token for localizedStringLogger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, localizedStringLogger);
    v11 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v11, v16))
    {
      goto LABEL_14;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_18075C000, v11, v16, "LocalizedStringResource contained a sandbox extension token but sandbox check passed without consuming the token. Proceeding to lookup localized string without consuming a sandbox extension.", v17, 2u);
    v14 = v17;
LABEL_13:
    MEMORY[0x1865D2690](v14, -1, -1);
LABEL_14:

    goto LABEL_15;
  }

  String.utf8CString.getter();
  v8 = sandbox_extension_consume();

  if (v8 != -1)
  {
    v9 = 0;
    goto LABEL_16;
  }

  if (one-time initialization token for localizedStringLogger != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, localizedStringLogger);
  outlined init with copy of LocalizedStringResource(&v81, v69);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  outlined destroy of LocalizedStringResource(&v81);
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v69[0] = v38;
    *v37 = 136315394;
    v39 = (*(v5 + 240))(ObjectType, v5);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v69);

    *(v37 + 4) = v41;
    *(v37 + 12) = 1026;
    *(v37 + 14) = MEMORY[0x1865CA7A0](v42);
    _os_log_impl(&dword_18075C000, v35, v36, "Unable to consume sandbox extension for path '%s' (errno: %{public}d)", v37, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1865D2690](v38, -1, -1);
    MEMORY[0x1865D2690](v37, -1, -1);
  }

LABEL_15:
  v9 = 1;
LABEL_16:
  v18 = v86;
  v19 = objc_allocWithZone(NSBundle);
  v20 = swift_getObjectType();
  v21 = *(v18 + 432);
  swift_unknownObjectRetain_n();
  v22 = v21(v20, v18);
  v23 = [v19 initWithURL_];
  swift_unknownObjectRelease();

  if (v23)
  {
    v24 = v79;
    v66 = v75;
    v67 = v76;
    v68 = v77;
    if (v79)
    {
      v25 = v78;
      outlined init with copy of AttributedString.LocalizationOptions(&v75, v69);
      goto LABEL_39;
    }

    outlined init with copy of AttributedString.LocalizationOptions(&v75, v69);
    v27 = [v23 localizations];
    if (!v27)
    {
      v27 = _ContiguousArrayBuffer._asCocoaArray()();
    }

    v28 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_181218E20;
    v30 = v85;
    v31 = swift_getObjectType();
    *(v29 + 32) = (*(v30 + 64))(v31, v30);
    *(v29 + 40) = v32;
    v33 = [v28 preferredLocalizationsFromArray:v27 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];

    swift_unknownObjectRelease();
    if (v33)
    {
      type metadata accessor for __SwiftDeferredNSArray();
      if (swift_dynamicCastClass())
      {
      }

      else
      {
        v44 = v33;
      }

      v45 = swift_dynamicCastClass();
      if (v45)
      {
        v43 = v45;

        if (*(v43 + 2))
        {
          goto LABEL_36;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        [v33 copy];
        v46 = _bridgeCocoaArray<A>(_:)();
        swift_unknownObjectRelease();
        v43 = specialized _arrayForceCast<A, B>(_:)(v46);

        if (*(v43 + 2))
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_36:
        v25 = *(v43 + 4);
        v24 = *(v43 + 5);

        goto LABEL_39;
      }
    }

    v25 = 0;
    v24 = 0;
LABEL_39:
    v59 = v25;
    v69[0] = v66;
    v58 = v82;
    v47 = v81;
    v69[1] = v67;
    v70 = v68;
    v71 = v25;
    v72 = v24;
    v73 = 1;
    v48 = v83;
    v49 = v84;
    v50 = v85;
    v51 = v23;
    _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(v47, *(&v47 + 1), v69, *(&v48 + 1), v49, v23, *(&v49 + 1), v50, 1u, v58, *(&v58 + 1), v48);

    v26 = *&v61[0];
    v61[0] = v66;
    v61[1] = v67;
    v62 = v68;
    v63 = v59;
    v64 = v24;
    v65 = 1;
    outlined destroy of AttributedString.LocalizationOptions(v61);
    swift_unknownObjectRelease();
    if (v9)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  swift_unknownObjectRelease();
  v26 = 0;
  if ((v9 & 1) == 0)
  {
LABEL_40:
    sandbox_extension_release();
  }

LABEL_41:
  outlined destroy of AttributedString.LocalizationOptions(&v75);
  outlined destroy of LocalizedStringResource(&v81);
  if (v26)
  {
    outlined destroy of AttributedString.LocalizationOptions(&v75);
    result = outlined destroy of LocalizedStringResource(&v81);
  }

  else
  {
    v54 = *(&v82 + 1);
    v53 = v82;
    v55 = v83;
    v56 = *(&v84 + 1);
    v57 = v85;

    swift_unknownObjectRetain();
    _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(0, 0, &v75, 0, 0, 0, v56, v57, 0, v53, v54, v55);
    outlined destroy of LocalizedStringResource(&v81);

    swift_unknownObjectRelease();
    result = outlined destroy of AttributedString.LocalizationOptions(&v75);
    v26 = *&v61[0];
  }

  *a2 = v26;
  return result;
}

uint64_t String.LocalizationOptions.replacements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationOptions._PluralizationNumber.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationOptions._PluralizationNumber.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t String.LocalizationOptions._PluralizationNumber.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE19LocalizationOptionsV20_PluralizationNumberO10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type String.LocalizationOptions._PluralizationNumber.CodingKeys and conformance String.LocalizationOptions._PluralizationNumber.CodingKeys();
  v15 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v9;
    v31 = v7;
    v36 = v11;
    v17 = v34;
    v18 = v35;
    v19 = KeyedDecodingContainer.allKeys.getter();
    v20 = (2 * *(v19 + 16)) | 1;
    v38 = v19;
    v39 = v19 + 32;
    v40 = 0;
    v41 = v20;
    v21 = specialized Collection<>.popFirst()();
    if (v21 == 2 || v40 != v41 >> 1)
    {
      v23 = type metadata accessor for DecodingError();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v25 = &type metadata for String.LocalizationOptions._PluralizationNumber;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v21;
      if (v21)
      {
        v43 = 1;
        lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v22 = v36;
        (*(v17 + 8))(v6, v33);
        (*(v22 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v28 = 0;
      }

      else
      {
        v43 = 0;
        lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v27 = v36;
        v29 = v31;
        v28 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v32 + 8))(v16, v29);
        (*(v27 + 8))(v13, v10);
        swift_unknownObjectRelease();
      }

      *v18 = v28;
      *(v18 + 8) = v42 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void String.LocalizationOptions._pluralizationNumber.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t String.LocalizationOptions._pluralizationNumber.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  *(v1 + 17) = v3;
  return result;
}

uint64_t String.LocalizationOptions._localization.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t String.LocalizationOptions._localization.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void String.LocalizationOptions.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance String.LocalizationValue.Placeholder.CodingKeys()
{
  v1 = *v0;
  v2 = 7630441;
  v3 = 0x74616F6C66;
  v4 = 0x656C62756F64;
  if (v1 != 3)
  {
    v4 = 0x7463656A626FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1953393013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance String.LocalizationValue.Placeholder.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized String.LocalizationValue.Placeholder.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.Placeholder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.Placeholder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t String.LocalizationValue.Placeholder.encode(to:)(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v3 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v5 = &v12 - v4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV11PlaceholderO10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMd);
  v6 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v8 = &v12 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v9 <= 1)
  {
    if (v9)
    {
      v16 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (v9 == 2)
    {
      v17 = 2;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      goto LABEL_11;
    }

    if (v9 == 3)
    {
      v18 = 3;
    }

    else
    {
      v19 = 4;
    }
  }

  lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
LABEL_11:
  v10 = v14;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v13);
  return (*(v6 + 8))(v8, v10);
}

Swift::Int String.LocalizationValue.Placeholder.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t String.LocalizationValue.Placeholder.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV11PlaceholderO10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMd);
  v45 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type String.LocalizationValue.Placeholder.CodingKeys and conformance String.LocalizationValue.Placeholder.CodingKeys();
  v20 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v21 = v15;
    v49 = 0;
    v22 = v46;
    v23 = v47;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = (2 * *(v24 + 16)) | 1;
    v50 = v24;
    v51 = v24 + 32;
    v52 = 0;
    v53 = v25;
    v26 = specialized Collection<>.popFirst()();
    v27 = v18;
    if (v26 == 5 || v52 != v53 >> 1)
    {
      v29 = type metadata accessor for DecodingError();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v31 = &type metadata for String.LocalizationValue.Placeholder;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v45 + 8))(v27, v16);
    }

    else
    {
      v54 = v26;
      if (v26 <= 1u)
      {
        v34 = v16;
        v35 = v43;
        if (v26)
        {
          v55 = 1;
          lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
          v36 = v12;
        }

        else
        {
          v55 = 0;
          lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
          v36 = v21;
        }

        v40 = v49;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v41 = v45;
        if (!v40)
        {
          (*(v23 + 8))(v36, v44);
          (*(v41 + 8))(v27, v34);
          swift_unknownObjectRelease();
          v32 = v48;
          goto LABEL_25;
        }

        (*(v45 + 8))(v27, v34);
      }

      else
      {
        v28 = v44;
        if (v26 != 2)
        {
          if (v26 == 3)
          {
            v55 = 3;
            lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
            v22 = v6;
          }

          else
          {
            v55 = 4;
            lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
          }

          v38 = v49;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v39 = v45;
          if (v38)
          {
            (*(v45 + 8))(v18, v16);
            swift_unknownObjectRelease();
            v32 = v48;
            return __swift_destroy_boxed_opaque_existential_1(v32);
          }

          (*(v23 + 8))(v22, v28);
          (*(v39 + 8))(v18, v16);
          swift_unknownObjectRelease();
          v32 = v48;
          v35 = v43;
LABEL_25:
          *v35 = v54;
          return __swift_destroy_boxed_opaque_existential_1(v32);
        }

        v55 = 2;
        lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
        v37 = v49;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v37)
        {
          (*(v23 + 8))(v9, v28);
          (*(v45 + 8))(v18, v16);
          swift_unknownObjectRelease();
          v32 = v48;
          v35 = v43;
          goto LABEL_25;
        }

        (*(v45 + 8))(v18, v16);
      }
    }

    swift_unknownObjectRelease();
  }

  v32 = v48;
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t String.LocalizationValue.init(key:arguments:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[1] = result;
  a4[2] = a2;
  *a4 = a3;
  return result;
}

__n128 String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  MEMORY[0x1865CB0E0](16421, 0xE200000000000000);
  *(&v24 + 1) = a2;
  *&v25 = swift_getWitnessTable();
  *&v23 = a1;
  v6 = one-time initialization token for cache;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v20 = static LocaleCache.cache;
  v21 = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  _convertObjectToSendableArgument(_:locale:)(&v23, &v20);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v23);
  v8 = v22;
  v9 = __swift_project_boxed_opaque_existential_1(&v20, v22);
  *(&v24 + 1) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v23);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v9, v8);
  v28[24] = 0;
  __swift_destroy_boxed_opaque_existential_1(&v20);
  v11 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[112 * v13];
  v15 = v23;
  v16 = v25;
  *(v14 + 3) = v24;
  *(v14 + 4) = v16;
  *(v14 + 2) = v15;
  result = v26;
  v18 = v27;
  v19 = *v28;
  *(v14 + 121) = *&v28[9];
  *(v14 + 6) = v18;
  *(v14 + 7) = v19;
  *(v14 + 5) = result;
  *v3 = v11;
  return result;
}

unint64_t _convertObjectToSendableArgument(_:locale:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of Hashable & Sendable(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd);
  v4 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
  if (swift_dynamicCast())
  {
    v5 = v16;
    a2[3] = v4;
    v6 = &lazy protocol witness table cache variable for type NSNumber and conformance NSObject;
    v7 = &lazy cache variable for type metadata for NSNumber;
  }

  else
  {
    outlined init with copy of Hashable & Sendable(a1, v17);
    v8 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSDate);
    if (swift_dynamicCast())
    {
      v5 = v16;
      a2[3] = v8;
      v6 = &lazy protocol witness table cache variable for type NSDate and conformance NSObject;
      v7 = &lazy cache variable for type metadata for NSDate;
    }

    else
    {
      outlined init with copy of Hashable & Sendable(a1, v17);
      v9 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSURL);
      if (!swift_dynamicCast())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v12 = outlined init with copy of Hashable & Sendable(a1, inited + 32);
        MEMORY[0x1EEE9AC00](v12);
        swift_unknownObjectRetain();
        v13 = specialized withVaList<A>(_:_:)(inited, partial apply for closure #1 in String.init(format:locale:arguments:));
        v15 = v14;
        swift_unknownObjectRelease();
        swift_setDeallocating();
        swift_arrayDestroy();
        a2[3] = MEMORY[0x1E69E6158];
        result = lazy protocol witness table accessor for type String and conformance String();
        a2[4] = result;
        *a2 = v13;
        a2[1] = v15;
        return result;
      }

      v5 = v16;
      a2[3] = v9;
      v6 = &lazy protocol witness table cache variable for type NSURL and conformance NSObject;
      v7 = &lazy cache variable for type metadata for NSURL;
    }
  }

  result = lazy protocol witness table accessor for type NSNumber and conformance NSObject(v6, v7);
  a2[4] = result;
  *a2 = v5;
  return result;
}

uint64_t String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 1684827173;
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    v7 = 0xE200000000000000;
    v6 = 25637;
  }

  else
  {
    v6 = 1970039845;
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
LABEL_3:
      v7 = 0xE400000000000000;
      goto LABEL_4;
    }

    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      v7 = 0xE200000000000000;
      v6 = 29989;
    }

    else if (swift_dynamicCastMetatype())
    {
      v7 = 0xE200000000000000;
      v6 = 26149;
    }

    else
    {
      v6 = 6712357;
      v7 = 0xE300000000000000;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        v6 = 16421;
        v7 = 0xE200000000000000;
      }
    }
  }

LABEL_4:
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)(a1, v6, v7, a2, a3);
}

__n128 String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  MEMORY[0x1865CB0E0](a2, a3);
  v9 = *(a5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v22);
  v9(a4, a5);
  v10 = AssociatedTypeWitness;
  v11 = __swift_project_boxed_opaque_existential_1(v22, AssociatedTypeWitness);
  *(&v26 + 1) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v25);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v11, v10);
  v30[24] = 0;
  __swift_destroy_boxed_opaque_existential_1(v22);
  v13 = *v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[112 * v15];
  v17 = v25;
  v18 = v27;
  *(v16 + 3) = v26;
  *(v16 + 4) = v18;
  *(v16 + 2) = v17;
  result = v28;
  v20 = v29;
  v21 = *v30;
  *(v16 + 121) = *&v30[9];
  *(v16 + 6) = v20;
  *(v16 + 7) = v21;
  *(v16 + 5) = result;
  *v6 = v13;
  return result;
}

uint64_t String.LocalizationValue.StringInterpolation.appendInterpolation(placeholder:)(char *a1)
{
  v1 = *a1;
  if (v1 <= 1)
  {
    if (*a1)
    {
      if (v1 == 1)
      {
        v2 = 0xE400000000000000;
        v3 = 1970039845;
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    v2 = 0xE400000000000000;
    v3 = 1684827173;
  }

  else if (v1 == 2)
  {
    v2 = 0xE200000000000000;
    v3 = 26149;
  }

  else
  {
    if (v1 != 3)
    {
LABEL_8:
      v2 = 0xE200000000000000;
      v3 = 16421;
      goto LABEL_12;
    }

    v2 = 0xE300000000000000;
    v3 = 6712357;
  }

LABEL_12:
  String.LocalizationValue.StringInterpolation.appendInterpolation(placeholder:specifier:)(a1, v3, v2);
}

__n128 String.LocalizationValue.StringInterpolation.appendInterpolation(placeholder:specifier:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *a1;
  MEMORY[0x1865CB0E0](a2, a3);
  v6 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[112 * v8];
  v9[32] = v5;
  *(v9 + 65) = v13;
  *(v9 + 49) = v12;
  *(v9 + 33) = v11;
  result = v14;
  *(v9 + 16) = *&v16[15];
  *(v9 + 113) = *v16;
  *(v9 + 97) = v15;
  *(v9 + 81) = v14;
  v9[136] = 6;
  *v4 = v6;
  return result;
}

double String.LocalizationValue.StringInterpolation.appendInterpolation<A, B>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&result = String.LocalizationValue.StringInterpolation.appendInterpolation<A, B>(_:format:)(a1, a2, a3, a4, a5, a6, String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:), 2).n128_u64[0];
  return result;
}

{
  *&result = String.LocalizationValue.StringInterpolation.appendInterpolation<A, B>(_:format:)(a1, a2, a3, a4, a5, a6, String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper.init<A, B>(_:format:), 3).n128_u64[0];
  return result;
}

__n128 String.LocalizationValue.StringInterpolation.appendInterpolation<A, B>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(_OWORD *__return_ptr, char *, char *, uint64_t, uint64_t, uint64_t, uint64_t), int a8)
{
  v47 = a8;
  v45 = a6;
  v46 = a7;
  v43 = a2;
  v44 = a5;
  v40 = *(a4 - 8);
  v11 = v40;
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v39 - v23;
  MEMORY[0x1865CB0E0](16421, 0xE200000000000000, v22);
  v25 = *(v17 + 16);
  v25(v24, a1, a3);
  v26 = *(v11 + 16);
  v26(v15, v43, a4);
  v25(v20, v24, a3);
  v27 = v42;
  v26(v42, v15, a4);
  v46(v48, v20, v27, a3, a4, v44, v45);
  (*(v40 + 8))(v15, a4);
  v28 = a3;
  v29 = v41;
  (*(v17 + 8))(v24, v28);
  v49[24] = v47;
  v30 = *v29;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30);
  }

  *(v30 + 2) = v32 + 1;
  v33 = &v30[112 * v32];
  v34 = v48[0];
  v35 = v48[2];
  *(v33 + 3) = v48[1];
  *(v33 + 4) = v35;
  *(v33 + 2) = v34;
  result = v48[3];
  v37 = v48[4];
  v38 = *v49;
  *(v33 + 121) = *&v49[9];
  *(v33 + 6) = v37;
  *(v33 + 7) = v38;
  *(v33 + 5) = result;
  *v29 = v30;
  return result;
}

__n128 String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *a2;
  MEMORY[0x1865CB0E0](16421, 0xE200000000000000);
  v6 = *v2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[112 * v8];
  *(v9 + 4) = v4;
  *(v9 + 5) = v5;
  *(v9 + 3) = v11;
  *(v9 + 4) = v12;
  result = v13;
  *(v9 + 16) = v16;
  *(v9 + 6) = v14;
  *(v9 + 7) = v15;
  *(v9 + 5) = v13;
  v9[136] = 1;
  *v3 = v6;
  return result;
}

__n128 String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  MEMORY[0x1865CB0E0](16421, 0xE200000000000000);
  (*(a3 + 8))(v16, a2, a3);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[112 * v9];
  v11 = v16[0];
  v12 = v16[2];
  *(v10 + 3) = v16[1];
  *(v10 + 4) = v12;
  *(v10 + 2) = v11;
  result = v16[3];
  v14 = v16[4];
  v15 = v16[5];
  *(v10 + 16) = v17;
  *(v10 + 6) = v14;
  *(v10 + 7) = v15;
  *(v10 + 5) = result;
  v10[136] = 4;
  *v4 = v7;
  return result;
}

uint64_t String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:format:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v40[-v7];
  v8 = swift_getAssociatedTypeWitness();
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40[-v9];
  v47 = *a2;
  v11 = a2[1];
  v48 = *(a2 + 8);
  v12 = v5;
  MEMORY[0x1865CB0E0](16421, 0xE200000000000000);
  v13 = dispatch thunk of Collection.count.getter();
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v15 = v13;
    v44 = v8;
    v64 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
    v14 = v64;
    v43 = v10;
    result = dispatch thunk of Collection.startIndex.getter();
    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    v41 = v11;
    v42 = v5;
    v50 = *(v54 + 8);
    v51 = v54 + 8;
    v49 = (v45 + 16);
    v17 = (v45 + 8);
    v18 = v15 - 1;
    v19 = v43;
    while (1)
    {
      v20 = dispatch thunk of Collection.subscript.read();
      v21 = v52;
      v22 = AssociatedTypeWitness;
      (*v49)(v52);
      v20(&v55, 0);
      v50(&v57, v22, v54);
      (*v17)(v21, v22);
      v64 = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v14 = v64;
      }

      *(v14 + 16) = v24 + 1;
      v25 = v14 + 104 * v24;
      v26 = v57;
      v27 = v59;
      *(v25 + 48) = v58;
      *(v25 + 64) = v27;
      *(v25 + 32) = v26;
      v28 = v60;
      v29 = v61;
      v30 = v62;
      *(v25 + 128) = v63;
      *(v25 + 96) = v29;
      *(v25 + 112) = v30;
      *(v25 + 80) = v28;
      dispatch thunk of Collection.formIndex(after:)();
      if (!v18)
      {
        break;
      }

      --v18;
    }

    (*(v46 + 8))(v19, v44);
    v12 = v42;
    v31 = v47;
    LOBYTE(v11) = v41;
  }

  else
  {
    v31 = v47;
  }

  v32 = *v12;
  swift_unknownObjectRetain();
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 16) + 1, 1, v32);
    v32 = result;
  }

  v34 = *(v32 + 16);
  v33 = *(v32 + 24);
  if (v34 >= v33 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
    v32 = result;
  }

  *(v32 + 16) = v34 + 1;
  v35 = v32 + 112 * v34;
  *(v35 + 32) = v14;
  *(v35 + 40) = v31;
  *(v35 + 41) = v11;
  v36 = v56;
  *(v35 + 42) = v55;
  *(v35 + 46) = v36;
  *(v35 + 48) = v48;
  *(v35 + 64) = v57;
  v37 = v58;
  v38 = v59;
  v39 = v60;
  *(v35 + 128) = v61;
  *(v35 + 96) = v38;
  *(v35 + 112) = v39;
  *(v35 + 80) = v37;
  *(v35 + 136) = 5;
  *v12 = v32;
  return result;
}

char *protocol witness for StringInterpolationProtocol.init(literalCapacity:interpolationCount:) in conformance String.LocalizationValue.StringInterpolation@<X0>(char *result@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  a3[1] = 0;
  a3[2] = 0xE000000000000000;
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = __OFADD__(result, 2 * a2);
    result += 2 * a2;
    if (!v5)
    {
      MEMORY[0x1865CAED0](result);
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2 & ~(a2 >> 63), 0, MEMORY[0x1E69E7CC0]);
      *a3 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t static String.LocalizationValue.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS10FoundationE17LocalizationValueV14FormatArgumentV_Tt1g5(*a1) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance String.LocalizationValue(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS10FoundationE17LocalizationValueV14FormatArgumentV_Tt1g5(*a1) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

__n128 protocol witness for ExpressibleByStringInterpolation.init(stringInterpolation:) in conformance String.LocalizationValue@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  return result;
}

id String.init(localized:table:bundle:localization:locale:comment:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v93 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v12 = *a7;
  v11 = a7[1];
  v86 = MEMORY[0x1E69E7CC0];
  v87 = 0;

  swift_unknownObjectRetain();
  v82 = v11;
  v80 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(v10, &v86, v12, v11);

  swift_unknownObjectRelease();
  if (a4)
  {
    v13 = a4;
    if (a6)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_181218E20;
      *(v14 + 32) = a5;
      *(v14 + 40) = a6;
      v15 = a4;

      goto LABEL_6;
    }
  }

  else
  {
    v13 = [objc_opt_self() mainBundle];
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v16 = a4;
  v14 = 0;
LABEL_6:
  v17 = String._bridgeToObjectiveCImpl()();

  v18 = String._bridgeToObjectiveCImpl()();
  if (a3)
  {
    v19 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v19 = 0;
  }

  if (v14)
  {
    v14 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  v20 = [v13 _localizedStringForKey_value_table_localizations_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (!v20)
  {

    v27 = 0;
    v24 = v80;
    goto LABEL_34;
  }

  isTaggedPointer = _objc_isTaggedPointer(v20);
  v22 = v20;
  v23 = v22;
  v24 = v80;
  if ((isTaggedPointer & 1) == 0)
  {
LABEL_17:
    LOBYTE(v92) = 0;
    v86 = 0;
    LOBYTE(v84[0]) = 0;
    if (__CFStringIsCF())
    {
      v27 = v86;
      if (!v86)
      {

        goto LABEL_34;
      }
    }

    else
    {
      v28 = v23;
      v29 = String.init(_nativeStorage:)();
      if (v30)
      {
        v31 = v29;

        v27 = v31;
        goto LABEL_34;
      }

      v86 = [v28 length];
      if (!v86)
      {

        v27 = 0;
        goto LABEL_34;
      }
    }

    v27 = String.init(_cocoaString:)();

LABEL_34:
    v35 = *(v24 + 16);
    if (v35)
    {
      goto LABEL_35;
    }

LABEL_32:

    swift_unknownObjectRelease();

    goto LABEL_97;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v22);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v26 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        v27 = v26;
        goto LABEL_34;
      }

      goto LABEL_17;
    }

    result = [v23 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v33)
      {
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_103;
  }

  LOWORD(v84[0]) = 0;
  _CFIndirectTaggedPointerStringGetContents();
  result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v34)
  {
LABEL_28:
    v27 = result;

    goto LABEL_34;
  }

  [v23 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v27 = v92;

  v35 = *(v80 + 16);
  if (!v35)
  {
    goto LABEL_32;
  }

LABEL_35:
  v78 = a4;
  v83 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
  v36 = v24 + 32;
  do
  {
    outlined init with copy of String.LocalizationValue.FormatArgument(v36, &v86);
    _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(&v92, v84, 0, v12, v82);
    outlined destroy of String.LocalizationValue.FormatArgument(&v86);
    outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v84[0], v84[1], v85);
    v38 = *(v83 + 16);
    v37 = *(v83 + 24);
    if (v38 >= v37 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
    }

    *(v83 + 16) = v38 + 1;
    outlined init with take of Equatable(&v92, v83 + 32 + 40 * v38);
    v36 += 112;
    --v35;
  }

  while (v35);

  type metadata accessor for __VaListBuilder();
  v39 = swift_allocObject();
  v39[2] = 8;
  v39[3] = 0;
  v40 = v39 + 3;
  v39[4] = 0;
  v39[5] = 0;
  v41 = *(v83 + 16);
  v81 = a6;

  swift_unknownObjectRetain();

  if (!v41)
  {
LABEL_64:
    v57 = __VaListBuilder.va_list()();
    v58 = objc_opt_self();
    v59 = String._bridgeToObjectiveCImpl()();
    ObjectType = swift_getObjectType();
    v61 = (*(v82 + 488))(ObjectType);
    v86 = 0;
    v87 = 0;
    v88 = 256;
    v89 = a5;
    v90 = v81;
    v91 = 0;
    v62 = String.LocalizationOptions._nsOptions.getter();
    v63 = [v58 _stringWithFormat_locale_options_arguments_];

    swift_unknownObjectRelease();
    LODWORD(v59) = _objc_isTaggedPointer(v63);
    v64 = v63;
    v43 = v64;
    v41 = v78;
    if (!v59)
    {
      goto LABEL_69;
    }

    v65 = _objc_getTaggedPointerTag(v64);
    if (!v65)
    {
      goto LABEL_79;
    }

    if (v65 != 22)
    {
      if (v65 == 2)
      {
        MEMORY[0x1EEE9AC00](v65);
        v66 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        v27 = v66;
        goto LABEL_96;
      }

LABEL_69:
      LOBYTE(v92) = 0;
      v86 = 0;
      LOBYTE(v84[0]) = 0;
      IsCF = __CFStringIsCF();
      if (IsCF)
      {
        v27 = v86;
        if (!v86)
        {
          goto LABEL_75;
        }

        if (v84[0])
        {
          if (v92 != 1)
          {
            IsCF = [v43 lengthOfBytesUsingEncoding_];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v75 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v77 = HIBYTE(v76) & 0xF;
          if ((v76 & 0x2000000000000000) == 0)
          {
            v77 = v75 & 0xFFFFFFFFFFFFLL;
          }

          if (v77)
          {
            v27 = v75;
            goto LABEL_81;
          }
        }
      }

      else
      {
        v68 = v43;
        v69 = String.init(_nativeStorage:)();
        if (v70)
        {
          v71 = v69;

          v27 = v71;
          goto LABEL_96;
        }

        v86 = [v68 length];
        if (!v86)
        {

          v27 = 0;
          goto LABEL_96;
        }
      }

      v27 = String.init(_cocoaString:)();
      goto LABEL_95;
    }

    result = [v43 UTF8String];
    if (result)
    {
      v72 = String.init(utf8String:)(result);
      if (v73)
      {
LABEL_80:
        v27 = v72;
LABEL_81:

LABEL_95:
        goto LABEL_96;
      }

      __break(1u);
LABEL_79:
      LOWORD(v84[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v72 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v74)
      {
        [v43 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v27 = v92;
        goto LABEL_95;
      }

      goto LABEL_80;
    }

LABEL_103:
    __break(1u);
    return result;
  }

  v42 = 0;
  while (1)
  {
    v43 = __swift_project_boxed_opaque_existential_1((v83 + 32 + 40 * v42), *(v83 + 32 + 40 * v42 + 24));
    v44 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v45 = *v40;
    v46 = *(v44 + 16);
    v47 = __OFADD__(*v40, v46);
    v48 = *v40 + v46;
    if (v47)
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
    }

    v27 = v39[4];
    if (v27 >= v48)
    {
      goto LABEL_56;
    }

    if (v27 + 0x4000000000000000 < 0)
    {
      goto LABEL_99;
    }

    v43 = v39[5];
    if (2 * v27 > v48)
    {
      v48 = 2 * v27;
    }

    v39[4] = v48;
    if ((v48 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_100;
    }

    v49 = v44;
    v50 = swift_slowAlloc();
    v51 = v50;
    v39[5] = v50;
    if (v43)
    {
      if (v50 != v43 || v50 >= &v43[v45])
      {
        memmove(v50, v43, 8 * v45);
      }

      v43 = v39;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v44 = v49;
LABEL_56:
      v51 = v39[5];
      if (!v51)
      {
        goto LABEL_63;
      }

      goto LABEL_57;
    }

    v44 = v49;
    if (!v51)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_57:
    v53 = *(v44 + 16);
    if (v53)
    {
      break;
    }

LABEL_41:

    if (++v42 == v41)
    {
      goto LABEL_64;
    }
  }

  v54 = (v44 + 32);
  v55 = *v40;
  while (1)
  {
    v56 = *v54++;
    v51[v55] = v56;
    v55 = *v40 + 1;
    if (__OFADD__(*v40, 1))
    {
      break;
    }

    *v40 = v55;
    if (!--v53)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_75:

LABEL_96:

  swift_bridgeObjectRelease_n();
  swift_unknownObjectRelease_n();

LABEL_97:

  return v27;
}

id String.init(localized:options:table:bundle:locale:comment:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v116 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *a2;
  v92 = *(a2 + 8);
  v91 = *(a2 + 16);
  v94 = *(a2 + 17);
  v9 = *(a2 + 32);
  v97 = *(a2 + 24);
  v96 = *(a2 + 40);
  v10 = *a6;
  v11 = a6[1];
  if (*a2)
  {
    v12 = *a2;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v108 = v12;
  v109 = 0;

  swift_unknownObjectRetain();
  v101 = v8;

  v104 = v11;
  v99 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(v7, &v108, v10, v11);

  swift_unknownObjectRelease();
  if (a5)
  {
    v102 = a5;
  }

  else
  {
    v102 = [objc_opt_self() mainBundle];
  }

  v103 = v10;
  v93 = a5;
  if (!v9)
  {
    v20 = a5;
    v21 = 0;
    goto LABEL_22;
  }

  if ((v96 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_181218E20;
    *(v21 + 32) = v97;
    *(v21 + 40) = v9;
    v22 = a5;

    goto LABEL_22;
  }

  v13 = a5;

  v14 = [v102 localizations];
  v15 = v9;
  if (!v14)
  {
    v14 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_181218E20;
  *(v17 + 32) = v97;
  *(v17 + 40) = v15;
  v18 = v15;
  v19 = [v16 preferredLocalizationsFromArray:v14 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];

  swift_unknownObjectRelease();
  if (!v19)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v9 = v18;
    goto LABEL_22;
  }

  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
  }

  else
  {
    v23 = v19;
  }

  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v21 = v24;

    goto LABEL_20;
  }

  swift_unknownObjectRelease();
  [v19 copy];
  v25 = _bridgeCocoaArray<A>(_:)();
  swift_unknownObjectRelease();
  v21 = specialized _arrayForceCast<A, B>(_:)(v25);

  v9 = v18;
LABEL_22:
  v26 = String._bridgeToObjectiveCImpl()();

  v27 = String._bridgeToObjectiveCImpl()();
  if (a4)
  {
    v28 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v28 = 0;
  }

  if (v21)
  {
    v21 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  v29 = [v102 _localizedStringForKey_value_table_localizations_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (!v29)
  {

    v95 = 0;
    v36 = 0xE000000000000000;
    v33 = v103;
    goto LABEL_37;
  }

  isTaggedPointer = _objc_isTaggedPointer(v29);
  v31 = v29;
  v32 = v31;
  v33 = v103;
  if ((isTaggedPointer & 1) == 0)
  {
    goto LABEL_33;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v31);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v95 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v36 = v35;

        goto LABEL_37;
      }

LABEL_33:
      LOBYTE(v115) = 0;
      v108 = 0;
      LOBYTE(v106[0]) = 0;
      if (__CFStringIsCF())
      {
        if (!v108)
        {
          goto LABEL_88;
        }

        v84 = v99;
      }

      else
      {
        v70 = v32;
        v71 = String.init(_nativeStorage:)();
        if (v72)
        {
          v36 = v72;
          v95 = v71;

          goto LABEL_37;
        }

        v108 = [v70 length];
        v84 = v99;
        if (!v108)
        {

          v95 = 0;
          v36 = 0xE000000000000000;
          goto LABEL_38;
        }
      }

      v95 = String.init(_cocoaString:)();
      v36 = v90;
      goto LABEL_119;
    }

    result = [v32 UTF8String];
    if (!result)
    {
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v95 = String.init(utf8String:)(result);
    v84 = v99;
    if (v77)
    {
LABEL_94:
      v36 = v77;

      goto LABEL_38;
    }

    __break(1u);
  }

  LOWORD(v106[0]) = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v95 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  v84 = v99;
  if (v77)
  {
    goto LABEL_94;
  }

  [v32 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  v84 = v99;
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v36 = *(&v115 + 1);
  v95 = v115;
LABEL_119:

  while (1)
  {
LABEL_38:
    v37 = *(v84 + 16);
    if (!v37)
    {
LABEL_69:
      if ((v94 & 1) != 0 || (v98 = v9, String._bridgeToObjectiveCImpl()(), v69 = _CFStringGetFormatSpecifierConfiguration(), swift_unknownObjectRelease(), !v69))
      {

        swift_unknownObjectRelease();
        v67 = v95;
LABEL_124:

        return v67;
      }

      v37 = *(v84 + 16);
      if (!v37)
      {

        v32 = MEMORY[0x1E69E7CC0];
        goto LABEL_44;
      }
    }

    v98 = v9;
    v105 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
    v32 = v105;
    v38 = v84 + 32;
    do
    {
      outlined init with copy of String.LocalizationValue.FormatArgument(v38, &v108);
      _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(&v115, v106, 0, v33, v104);
      outlined destroy of String.LocalizationValue.FormatArgument(&v108);
      outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v106[0], v106[1], v107);
      v40 = v105[2];
      v39 = v105[3];
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
      }

      v105[2] = v40 + 1;
      outlined init with take of Equatable(&v115, &v105[5 * v40 + 4]);
      v38 += 112;
      --v37;
    }

    while (v37);

LABEL_44:
    type metadata accessor for __VaListBuilder();
    v33 = swift_allocObject();
    v33[2] = 8;
    v33[3] = 0;
    v9 = v33 + 3;
    v33[4] = 0;
    v33[5] = 0;
    v84 = v32[2];
    v102 = v36;
    if (!v84)
    {
      break;
    }

    a5 = v32 + 4;

    swift_unknownObjectRetain();

    v36 = 0;
    while (1)
    {
      __swift_project_boxed_opaque_existential_1(a5 + 5 * v36, *(a5 + 5 * v36 + 3));
      v41 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v42 = *v9;
      v43 = *(v41 + 16);
      v44 = __OFADD__(*v9, v43);
      v45 = *v9 + v43;
      if (v44)
      {
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
      }

      v46 = v33[4];
      if (v46 >= v45)
      {
        goto LABEL_61;
      }

      if (v46 + 0x4000000000000000 < 0)
      {
        goto LABEL_126;
      }

      v47 = v33[5];
      if (2 * v46 > v45)
      {
        v45 = 2 * v46;
      }

      v33[4] = v45;
      if ((v45 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_127;
      }

      v48 = v41;
      v49 = swift_slowAlloc();
      v50 = v49;
      v33[5] = v49;
      if (v47)
      {
        if (v49 != v47 || v49 >= &v47[8 * v42])
        {
          memmove(v49, v47, 8 * v42);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v41 = v48;
LABEL_61:
        v50 = v33[5];
        if (!v50)
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      }

      v41 = v48;
      if (!v50)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_62:
      v52 = *(v41 + 16);
      if (v52)
      {
        break;
      }

LABEL_46:

      if (++v36 == v84)
      {
        goto LABEL_72;
      }
    }

    v53 = (v41 + 32);
    v54 = *v9;
    while (1)
    {
      v55 = *v53++;
      *&v50[8 * v54] = v55;
      v54 = *v9 + 1;
      if (__OFADD__(*v9, 1))
      {
        break;
      }

      *v9 = v54;
      if (!--v52)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_88:

    v95 = 0;
    v36 = 0xE000000000000000;
LABEL_37:
    v84 = v99;
  }

  swift_unknownObjectRetain();

LABEL_72:
  v56 = __VaListBuilder.va_list()();
  v57 = objc_opt_self();
  v58 = String._bridgeToObjectiveCImpl()();
  ObjectType = swift_getObjectType();
  v60 = (*(v104 + 488))(ObjectType);
  v108 = v101;
  v109 = v92;
  v110 = v91;
  v111 = v94;
  v112 = v97;
  v113 = v98;
  v114 = v96;
  v61 = String.LocalizationOptions._nsOptions.getter();
  v62 = [v57 _stringWithFormat_locale_options_arguments_];

  swift_unknownObjectRelease();
  LODWORD(v58) = _objc_isTaggedPointer(v62);
  v63 = v62;
  v64 = v63;
  if (!v58)
  {
    goto LABEL_77;
  }

  v65 = _objc_getTaggedPointerTag(v63);
  if (!v65)
  {
    LOWORD(v106[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v79 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v80)
    {
      [v64 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v85 = v115;

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v67 = v85;
      a5 = v93;
      goto LABEL_124;
    }

    v67 = v79;

    a5 = v93;
LABEL_123:

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease_n();
    swift_bridgeObjectRelease_n();

    goto LABEL_124;
  }

  if (v65 != 22)
  {
    if (v65 == 2)
    {
      MEMORY[0x1EEE9AC00](v65);
      v66 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      v67 = v66;
      a5 = v93;
      goto LABEL_123;
    }

LABEL_77:
    LOBYTE(v115) = 0;
    v108 = 0;
    LOBYTE(v106[0]) = 0;
    IsCF = __CFStringIsCF();
    if (!IsCF)
    {
      v73 = v64;
      v74 = String.init(_nativeStorage:)();
      a5 = v93;
      if (v75)
      {
        v67 = v74;

        goto LABEL_123;
      }

      v108 = [v73 length];
      if (!v108)
      {

        v67 = 0;
        goto LABEL_123;
      }

      goto LABEL_121;
    }

    v67 = v108;
    a5 = v93;
    if (!v108)
    {

      goto LABEL_123;
    }

    if ((v106[0] & 1) == 0)
    {
      goto LABEL_121;
    }

    if (v115 == 1)
    {
      MEMORY[0x1EEE9AC00](IsCF);
      v81 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v83 = HIBYTE(v82) & 0xF;
      if ((v82 & 0x2000000000000000) == 0)
      {
        v83 = v81 & 0xFFFFFFFFFFFFLL;
      }

      if (v83)
      {
        v67 = v81;

        goto LABEL_123;
      }

LABEL_120:

LABEL_121:
      v67 = String.init(_cocoaString:)();
LABEL_122:

      goto LABEL_123;
    }

    v86 = [v64 lengthOfBytesUsingEncoding_];
    MEMORY[0x1EEE9AC00](v86);
    v87 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v89 = HIBYTE(v88) & 0xF;
    if ((v88 & 0x2000000000000000) == 0)
    {
      v89 = v87 & 0xFFFFFFFFFFFFLL;
    }

    if (!v89)
    {
      goto LABEL_120;
    }

    v67 = v87;
LABEL_98:

    goto LABEL_122;
  }

  result = [v64 UTF8String];
  if (!result)
  {
    goto LABEL_129;
  }

  result = String.init(utf8String:)(result);
  a5 = v93;
  if (v78)
  {
    v67 = result;
    goto LABEL_98;
  }

LABEL_130:
  __break(1u);
  return result;
}